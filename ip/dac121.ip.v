
(* STRUCTURAL_NETLIST = "yes" *)
module dac121
   (clk,
    rst_n,
    brdy,
    bcmdw,
    bcmdr,
    bcs_dacu_n,
    badr,
    bdatw,
    dac_pdm_out,
    dac_pdm_enb,
    bdatr);
//
// 12 bit delta-sigma D/A converter unit
//		(c) 2023	1YEN Toru
//
//
//	2025/09/13	ver.1.04
//		rename dac_pdmo to dac_pdm_out
//
//	2023/11/25	ver.1.02
//		corresponding to Xilinx Vivado
//
//	2023/01/21	ver.1.00
//		12 bit delta-sigma DAC, 1 channel, digital front end
//
  input clk;
  input rst_n;
  input brdy;
  input bcmdw;
  input bcmdr;
  input bcs_dacu_n;
  input [3:0]badr;
  input [15:0]bdatw;
  output dac_pdm_out;
  output dac_pdm_enb;
  output [15:0]bdatr;

  wire \<const0> ;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_dacu_n;
  wire [11:0]\^bdatr ;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire dac_pdm_enb;
  wire dac_pdm_out;
  wire [11:0]dacdat;
  wire dctl_n_0;
  wire dctl_n_10;
  wire dctl_n_11;
  wire dctl_n_12;
  wire dctl_n_13;
  wire dctl_n_14;
  wire dctl_n_27;
  wire dctl_n_28;
  wire dctl_n_29;
  wire dctl_n_3;
  wire dctl_n_30;
  wire dctl_n_31;
  wire dctl_n_32;
  wire dctl_n_4;
  wire dctl_n_5;
  wire dctl_n_6;
  wire dctl_n_7;
  wire dctl_n_8;
  wire dctl_n_9;
  wire dlsg_n_10;
  wire dlsg_n_9;
  wire prescl0;
  wire [3:3]prescl_reg;
  wire rst_n;
  wire [12:6]sgma;

  assign bdatr[15] = \<const0> ;
  assign bdatr[14] = \<const0> ;
  assign bdatr[13] = \<const0> ;
  assign bdatr[12] = \<const0> ;
  assign bdatr[11:0] = \^bdatr [11:0];
  GND GND
       (.G(\<const0> ));
  dac_dctl dctl
       (.DI({dctl_n_8,dctl_n_9,dctl_n_10,dctl_n_11}),
        .E(dctl_n_7),
        .Q({dac_pdm_enb,dctl_n_3,dctl_n_4,dctl_n_5,dctl_n_6}),
        .S(dctl_n_13),
        .SR(prescl0),
        .badr(badr),
        .badr_3_sp_1(dctl_n_0),
        .bcmdr(bcmdr),
        .bcmdw(bcmdw),
        .bcs_dacu_n(bcs_dacu_n),
        .bdatr(\^bdatr ),
        .\bdatr[11] (dacdat),
        .bdatw(bdatw[7:0]),
        .brdy(brdy),
        .clk(clk),
        .dac_pdm_out_reg({dctl_n_29,dctl_n_30,dctl_n_31,dctl_n_32}),
        .\dacctl_reg[4]_0 (dctl_n_12),
        .\dacctl_reg[4]_1 (dctl_n_14),
        .\dacctl_reg[7]_0 (dlsg_n_10),
        .\dacdat_reg[7] ({dctl_n_27,dctl_n_28}),
        .\prescl_reg[3] (prescl_reg),
        .\prescl_reg[3]_0 (dlsg_n_9),
        .rst_n(rst_n),
        .\sgma_reg[12] (sgma),
        .\sgma_reg[7] (dac_pdm_out));
  dac_data ddat
       (.Q(dacdat),
        .SR(dlsg_n_10),
        .badr(badr[1]),
        .bcs_dacu_n(bcs_dacu_n),
        .bdatw(bdatw[11:0]),
        .clk(clk),
        .\dacdat_reg[0]_0 (dctl_n_0));
  dac_dltsgm dlsg
       (.DI({dctl_n_8,dctl_n_9,dctl_n_10,dctl_n_11}),
        .E(dctl_n_7),
        .Q(sgma),
        .S(dctl_n_13),
        .SR(dlsg_n_10),
        .clk(clk),
        .dac_pdm_out(dac_pdm_out),
        .dac_pdm_out_reg_0({dac_pdm_enb,dctl_n_3,dctl_n_4,dctl_n_5,dctl_n_6}),
        .dac_pdm_out_reg_1(dctl_n_14),
        .\prescl_reg[2]_0 (dlsg_n_9),
        .\prescl_reg[3]_0 (prescl_reg),
        .\prescl_reg[3]_1 (prescl0),
        .rst_n(rst_n),
        .\sgma_reg[11]_0 ({dctl_n_29,dctl_n_30,dctl_n_31,dctl_n_32}),
        .\sgma_reg[7]_0 (dctl_n_12),
        .\sgma_reg[7]_1 ({dctl_n_27,dctl_n_28}),
        .\sgma_reg[7]_2 (dacdat[5:0]));
endmodule

module dac_data
   (Q,
    badr,
    \dacdat_reg[0]_0 ,
    bcs_dacu_n,
    SR,
    bdatw,
    clk);
  output [11:0]Q;
  input [0:0]badr;
  input \dacdat_reg[0]_0 ;
  input bcs_dacu_n;
  input [0:0]SR;
  input [11:0]bdatw;
  input clk;

  wire [11:0]Q;
  wire [0:0]SR;
  wire [0:0]badr;
  wire bcs_dacu_n;
  wire [11:0]bdatw;
  wire clk;
  wire \dacdat_reg[0]_0 ;
  wire wr_dacdat;

  LUT3 #(
    .INIT(8'h08)) 
    \dacdat[11]_i_1 
       (.I0(badr),
        .I1(\dacdat_reg[0]_0 ),
        .I2(bcs_dacu_n),
        .O(wr_dacdat));
  FDRE \dacdat_reg[0] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \dacdat_reg[10] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \dacdat_reg[11] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \dacdat_reg[1] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \dacdat_reg[2] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \dacdat_reg[3] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \dacdat_reg[4] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \dacdat_reg[5] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \dacdat_reg[6] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \dacdat_reg[7] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \dacdat_reg[8] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \dacdat_reg[9] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

module dac_dctl
   (.badr_3_sp_1(badr_3_sn_1),
    SR,
    Q,
    E,
    DI,
    \dacctl_reg[4]_0 ,
    S,
    \dacctl_reg[4]_1 ,
    bdatr,
    \dacdat_reg[7] ,
    dac_pdm_out_reg,
    clk,
    badr,
    bcs_dacu_n,
    brdy,
    bcmdw,
    bcmdr,
    \prescl_reg[3] ,
    \prescl_reg[3]_0 ,
    rst_n,
    \sgma_reg[12] ,
    \bdatr[11] ,
    \sgma_reg[7] ,
    \dacctl_reg[7]_0 ,
    bdatw);
  output [0:0]SR;
  output [4:0]Q;
  output [0:0]E;
  output [3:0]DI;
  output [0:0]\dacctl_reg[4]_0 ;
  output [0:0]S;
  output \dacctl_reg[4]_1 ;
  output [11:0]bdatr;
  output [1:0]\dacdat_reg[7] ;
  output [3:0]dac_pdm_out_reg;
  input clk;
  input [3:0]badr;
  input bcs_dacu_n;
  input brdy;
  input bcmdw;
  input bcmdr;
  input [0:0]\prescl_reg[3] ;
  input \prescl_reg[3]_0 ;
  input rst_n;
  input [6:0]\sgma_reg[12] ;
  input [11:0]\bdatr[11] ;
  input \sgma_reg[7] ;
  input [0:0]\dacctl_reg[7]_0 ;
  input [7:0]bdatw;
  output badr_3_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]DI;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [3:0]badr;
  wire badr_3_sn_1;
  wire bcmdr;
  wire bcmdw;
  wire bcs_dacu_n;
  wire [11:0]bdatr;
  wire [11:0]\bdatr[11] ;
  wire [7:0]bdatw;
  wire brdy;
  wire clk;
  wire [3:0]dac_pdm_out_reg;
  wire [0:0]\dacctl_reg[4]_0 ;
  wire \dacctl_reg[4]_1 ;
  wire [0:0]\dacctl_reg[7]_0 ;
  wire [1:0]\dacdat_reg[7] ;
  wire [2:0]dctl_bitw_0;
  wire delt_0_carry__1_i_10_n_0;
  wire delt_0_carry__1_i_11_n_0;
  wire delt_0_carry__1_i_12_n_0;
  wire delt_0_carry__1_i_9_n_0;
  wire delt_0_carry__2_i_2_n_0;
  wire delt_0_carry__2_i_3_n_0;
  wire [0:0]\prescl_reg[3] ;
  wire \prescl_reg[3]_0 ;
  wire rd_dacctl;
  wire rd_dacctl0;
  wire rd_dacctl_i_1_n_0;
  wire rd_dacdat;
  wire rd_dacdat0;
  wire rd_dacdat_i_1_n_0;
  wire rst_n;
  wire [6:0]\sgma_reg[12] ;
  wire \sgma_reg[7] ;
  wire wr_dacctl;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[0]_INST_0 
       (.I0(Q[0]),
        .I1(rd_dacctl),
        .I2(rd_dacdat),
        .I3(\bdatr[11] [0]),
        .O(bdatr[0]));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatr[10]_INST_0 
       (.I0(\bdatr[11] [10]),
        .I1(rd_dacdat),
        .I2(rd_dacctl),
        .O(bdatr[10]));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatr[11]_INST_0 
       (.I0(\bdatr[11] [11]),
        .I1(rd_dacdat),
        .I2(rd_dacctl),
        .O(bdatr[11]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[1]_INST_0 
       (.I0(Q[1]),
        .I1(rd_dacctl),
        .I2(rd_dacdat),
        .I3(\bdatr[11] [1]),
        .O(bdatr[1]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[2]_INST_0 
       (.I0(Q[2]),
        .I1(rd_dacctl),
        .I2(rd_dacdat),
        .I3(\bdatr[11] [2]),
        .O(bdatr[2]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[3]_INST_0 
       (.I0(Q[3]),
        .I1(rd_dacctl),
        .I2(rd_dacdat),
        .I3(\bdatr[11] [3]),
        .O(bdatr[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[4]_INST_0 
       (.I0(dctl_bitw_0[0]),
        .I1(rd_dacctl),
        .I2(rd_dacdat),
        .I3(\bdatr[11] [4]),
        .O(bdatr[4]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[5]_INST_0 
       (.I0(dctl_bitw_0[1]),
        .I1(rd_dacctl),
        .I2(rd_dacdat),
        .I3(\bdatr[11] [5]),
        .O(bdatr[5]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[6]_INST_0 
       (.I0(dctl_bitw_0[2]),
        .I1(rd_dacctl),
        .I2(rd_dacdat),
        .I3(\bdatr[11] [6]),
        .O(bdatr[6]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[7]_INST_0 
       (.I0(Q[4]),
        .I1(rd_dacctl),
        .I2(rd_dacdat),
        .I3(\bdatr[11] [7]),
        .O(bdatr[7]));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatr[8]_INST_0 
       (.I0(\bdatr[11] [8]),
        .I1(rd_dacdat),
        .I2(rd_dacctl),
        .O(bdatr[8]));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatr[9]_INST_0 
       (.I0(\bdatr[11] [9]),
        .I1(rd_dacdat),
        .I2(rd_dacctl),
        .O(bdatr[9]));
  LUT3 #(
    .INIT(8'h80)) 
    dac_pdm_out_i_2
       (.I0(dctl_bitw_0[0]),
        .I1(dctl_bitw_0[2]),
        .I2(dctl_bitw_0[1]),
        .O(\dacctl_reg[4]_1 ));
  LUT3 #(
    .INIT(8'h04)) 
    \dacctl[7]_i_2 
       (.I0(badr[1]),
        .I1(badr_3_sn_1),
        .I2(bcs_dacu_n),
        .O(wr_dacctl));
  LUT5 #(
    .INIT(32'h00000040)) 
    \dacctl[7]_i_3 
       (.I0(badr[3]),
        .I1(brdy),
        .I2(bcmdw),
        .I3(badr[2]),
        .I4(badr[0]),
        .O(badr_3_sn_1));
  FDRE \dacctl_reg[0] 
       (.C(clk),
        .CE(wr_dacctl),
        .D(bdatw[0]),
        .Q(Q[0]),
        .R(\dacctl_reg[7]_0 ));
  FDRE \dacctl_reg[1] 
       (.C(clk),
        .CE(wr_dacctl),
        .D(bdatw[1]),
        .Q(Q[1]),
        .R(\dacctl_reg[7]_0 ));
  FDRE \dacctl_reg[2] 
       (.C(clk),
        .CE(wr_dacctl),
        .D(bdatw[2]),
        .Q(Q[2]),
        .R(\dacctl_reg[7]_0 ));
  FDRE \dacctl_reg[3] 
       (.C(clk),
        .CE(wr_dacctl),
        .D(bdatw[3]),
        .Q(Q[3]),
        .R(\dacctl_reg[7]_0 ));
  FDRE \dacctl_reg[4] 
       (.C(clk),
        .CE(wr_dacctl),
        .D(bdatw[4]),
        .Q(dctl_bitw_0[0]),
        .R(\dacctl_reg[7]_0 ));
  FDRE \dacctl_reg[5] 
       (.C(clk),
        .CE(wr_dacctl),
        .D(bdatw[5]),
        .Q(dctl_bitw_0[1]),
        .R(\dacctl_reg[7]_0 ));
  FDRE \dacctl_reg[6] 
       (.C(clk),
        .CE(wr_dacctl),
        .D(bdatw[6]),
        .Q(dctl_bitw_0[2]),
        .R(\dacctl_reg[7]_0 ));
  FDRE \dacctl_reg[7] 
       (.C(clk),
        .CE(wr_dacctl),
        .D(bdatw[7]),
        .Q(Q[4]),
        .R(\dacctl_reg[7]_0 ));
  LUT4 #(
    .INIT(16'h7EFF)) 
    delt_0_carry__0_i_1
       (.I0(dctl_bitw_0[0]),
        .I1(dctl_bitw_0[2]),
        .I2(dctl_bitw_0[1]),
        .I3(\sgma_reg[7] ),
        .O(\dacctl_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h1550D55FEAAF2AA0)) 
    delt_0_carry__0_i_2
       (.I0(\bdatr[11] [7]),
        .I1(dctl_bitw_0[0]),
        .I2(dctl_bitw_0[1]),
        .I3(dctl_bitw_0[2]),
        .I4(\sgma_reg[7] ),
        .I5(\sgma_reg[12] [1]),
        .O(\dacdat_reg[7] [1]));
  LUT6 #(
    .INIT(64'h40017FFDBFFE8002)) 
    delt_0_carry__0_i_3
       (.I0(\sgma_reg[7] ),
        .I1(dctl_bitw_0[1]),
        .I2(dctl_bitw_0[0]),
        .I3(dctl_bitw_0[2]),
        .I4(\bdatr[11] [6]),
        .I5(\sgma_reg[12] [0]),
        .O(\dacdat_reg[7] [0]));
  LUT6 #(
    .INIT(64'hCFCCF4CCCCCCC4CC)) 
    delt_0_carry__1_i_1
       (.I0(\sgma_reg[7] ),
        .I1(\sgma_reg[12] [4]),
        .I2(dctl_bitw_0[0]),
        .I3(dctl_bitw_0[2]),
        .I4(dctl_bitw_0[1]),
        .I5(\bdatr[11] [10]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'h599A555559955555)) 
    delt_0_carry__1_i_10
       (.I0(\sgma_reg[12] [4]),
        .I1(\bdatr[11] [10]),
        .I2(dctl_bitw_0[1]),
        .I3(dctl_bitw_0[0]),
        .I4(dctl_bitw_0[2]),
        .I5(\sgma_reg[7] ),
        .O(delt_0_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'h59A5995559559955)) 
    delt_0_carry__1_i_11
       (.I0(\sgma_reg[12] [3]),
        .I1(\bdatr[11] [9]),
        .I2(dctl_bitw_0[1]),
        .I3(dctl_bitw_0[2]),
        .I4(dctl_bitw_0[0]),
        .I5(\sgma_reg[7] ),
        .O(delt_0_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'h599599A559959955)) 
    delt_0_carry__1_i_12
       (.I0(\sgma_reg[12] [2]),
        .I1(\bdatr[11] [8]),
        .I2(dctl_bitw_0[1]),
        .I3(dctl_bitw_0[2]),
        .I4(dctl_bitw_0[0]),
        .I5(\sgma_reg[7] ),
        .O(delt_0_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'hC4FCFCFCC4CCCCCC)) 
    delt_0_carry__1_i_2
       (.I0(\sgma_reg[7] ),
        .I1(\sgma_reg[12] [3]),
        .I2(dctl_bitw_0[2]),
        .I3(dctl_bitw_0[1]),
        .I4(dctl_bitw_0[0]),
        .I5(\bdatr[11] [9]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hCFFCF4FCCCCCC4CC)) 
    delt_0_carry__1_i_3
       (.I0(\sgma_reg[7] ),
        .I1(\sgma_reg[12] [2]),
        .I2(dctl_bitw_0[2]),
        .I3(dctl_bitw_0[1]),
        .I4(dctl_bitw_0[0]),
        .I5(\bdatr[11] [8]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hCFF4FFFCCCC4CCCC)) 
    delt_0_carry__1_i_4
       (.I0(\sgma_reg[7] ),
        .I1(\sgma_reg[12] [1]),
        .I2(dctl_bitw_0[2]),
        .I3(dctl_bitw_0[1]),
        .I4(dctl_bitw_0[0]),
        .I5(\bdatr[11] [7]),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry__1_i_5
       (.I0(DI[3]),
        .I1(delt_0_carry__1_i_9_n_0),
        .O(dac_pdm_out_reg[3]));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry__1_i_6
       (.I0(DI[2]),
        .I1(delt_0_carry__1_i_10_n_0),
        .O(dac_pdm_out_reg[2]));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry__1_i_7
       (.I0(DI[1]),
        .I1(delt_0_carry__1_i_11_n_0),
        .O(dac_pdm_out_reg[1]));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry__1_i_8
       (.I0(DI[0]),
        .I1(delt_0_carry__1_i_12_n_0),
        .O(dac_pdm_out_reg[0]));
  LUT6 #(
    .INIT(64'h55A5555599555555)) 
    delt_0_carry__1_i_9
       (.I0(\sgma_reg[12] [5]),
        .I1(\sgma_reg[7] ),
        .I2(\bdatr[11] [11]),
        .I3(dctl_bitw_0[0]),
        .I4(dctl_bitw_0[2]),
        .I5(dctl_bitw_0[1]),
        .O(delt_0_carry__1_i_9_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    delt_0_carry__2_i_1
       (.I0(delt_0_carry__2_i_2_n_0),
        .I1(\sgma_reg[12] [6]),
        .I2(delt_0_carry__2_i_3_n_0),
        .O(S));
  LUT6 #(
    .INIT(64'hAAAA36AA22AAAAAA)) 
    delt_0_carry__2_i_2
       (.I0(\sgma_reg[12] [5]),
        .I1(\sgma_reg[7] ),
        .I2(\bdatr[11] [11]),
        .I3(dctl_bitw_0[2]),
        .I4(dctl_bitw_0[0]),
        .I5(dctl_bitw_0[1]),
        .O(delt_0_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h55C95555DD555555)) 
    delt_0_carry__2_i_3
       (.I0(\sgma_reg[12] [5]),
        .I1(\sgma_reg[7] ),
        .I2(\bdatr[11] [11]),
        .I3(dctl_bitw_0[0]),
        .I4(dctl_bitw_0[2]),
        .I5(dctl_bitw_0[1]),
        .O(delt_0_carry__2_i_3_n_0));
  LUT5 #(
    .INIT(32'hD575FFFF)) 
    \prescl[3]_i_1 
       (.I0(Q[4]),
        .I1(\prescl_reg[3] ),
        .I2(\prescl_reg[3]_0 ),
        .I3(Q[3]),
        .I4(rst_n),
        .O(SR));
  LUT4 #(
    .INIT(16'hE200)) 
    rd_dacctl_i_1
       (.I0(rd_dacctl),
        .I1(brdy),
        .I2(rd_dacctl0),
        .I3(rst_n),
        .O(rd_dacctl_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    rd_dacctl_i_2
       (.I0(bcs_dacu_n),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(badr[1]),
        .I5(bcmdr),
        .O(rd_dacctl0));
  FDRE rd_dacctl_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rd_dacctl_i_1_n_0),
        .Q(rd_dacctl),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'hE200)) 
    rd_dacdat_i_1
       (.I0(rd_dacdat),
        .I1(brdy),
        .I2(rd_dacdat0),
        .I3(rst_n),
        .O(rd_dacdat_i_1_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    rd_dacdat_i_2
       (.I0(bcs_dacu_n),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(badr[1]),
        .I5(bcmdr),
        .O(rd_dacdat0));
  FDRE rd_dacdat_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rd_dacdat_i_1_n_0),
        .Q(rd_dacdat),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h8400)) 
    \sgma[12]_i_1 
       (.I0(Q[3]),
        .I1(\prescl_reg[3]_0 ),
        .I2(\prescl_reg[3] ),
        .I3(Q[4]),
        .O(E));
endmodule

module dac_dltsgm
   (Q,
    dac_pdm_out,
    \prescl_reg[3]_0 ,
    \prescl_reg[2]_0 ,
    SR,
    \sgma_reg[7]_0 ,
    \sgma_reg[7]_1 ,
    DI,
    \sgma_reg[11]_0 ,
    S,
    clk,
    rst_n,
    dac_pdm_out_reg_0,
    dac_pdm_out_reg_1,
    \sgma_reg[7]_2 ,
    E,
    \prescl_reg[3]_1 );
  output [6:0]Q;
  output dac_pdm_out;
  output [0:0]\prescl_reg[3]_0 ;
  output \prescl_reg[2]_0 ;
  output [0:0]SR;
  input [0:0]\sgma_reg[7]_0 ;
  input [1:0]\sgma_reg[7]_1 ;
  input [3:0]DI;
  input [3:0]\sgma_reg[11]_0 ;
  input [0:0]S;
  input clk;
  input rst_n;
  input [4:0]dac_pdm_out_reg_0;
  input dac_pdm_out_reg_1;
  input [5:0]\sgma_reg[7]_2 ;
  input [0:0]E;
  input [0:0]\prescl_reg[3]_1 ;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]DI;
  wire [0:0]E;
  wire [6:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire clk;
  wire dac_pdm_out;
  wire dac_pdm_out_i_1_n_0;
  wire [4:0]dac_pdm_out_reg_0;
  wire dac_pdm_out_reg_1;
  wire [12:0]delt_0;
  wire delt_0_carry__0_i_4_n_0;
  wire delt_0_carry__0_i_5_n_0;
  wire delt_0_carry__0_n_0;
  wire delt_0_carry__0_n_1;
  wire delt_0_carry__0_n_2;
  wire delt_0_carry__0_n_3;
  wire delt_0_carry__1_n_0;
  wire delt_0_carry__1_n_1;
  wire delt_0_carry__1_n_2;
  wire delt_0_carry__1_n_3;
  wire delt_0_carry_i_1_n_0;
  wire delt_0_carry_i_2_n_0;
  wire delt_0_carry_i_3_n_0;
  wire delt_0_carry_i_4_n_0;
  wire delt_0_carry_n_0;
  wire delt_0_carry_n_1;
  wire delt_0_carry_n_2;
  wire delt_0_carry_n_3;
  wire [3:0]p_0_in;
  wire [2:0]prescl_reg;
  wire \prescl_reg[2]_0 ;
  wire [0:0]\prescl_reg[3]_0 ;
  wire [0:0]\prescl_reg[3]_1 ;
  wire ps_ovfl;
  wire rst_n;
  wire [5:0]sgma;
  wire [3:0]\sgma_reg[11]_0 ;
  wire [0:0]\sgma_reg[7]_0 ;
  wire [1:0]\sgma_reg[7]_1 ;
  wire [5:0]\sgma_reg[7]_2 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h8800888088888880)) 
    dac_pdm_out_i_1
       (.I0(rst_n),
        .I1(dac_pdm_out_reg_0[4]),
        .I2(dac_pdm_out),
        .I3(dac_pdm_out_reg_1),
        .I4(ps_ovfl),
        .I5(delt_0[12]),
        .O(dac_pdm_out_i_1_n_0));
  LUT3 #(
    .INIT(8'h84)) 
    dac_pdm_out_i_3
       (.I0(\prescl_reg[3]_0 ),
        .I1(\prescl_reg[2]_0 ),
        .I2(dac_pdm_out_reg_0[3]),
        .O(ps_ovfl));
  FDRE dac_pdm_out_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(dac_pdm_out_i_1_n_0),
        .Q(dac_pdm_out),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \dacctl[7]_i_1 
       (.I0(rst_n),
        .O(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delt_0_carry
       (.CI(\<const0> ),
        .CO({delt_0_carry_n_0,delt_0_carry_n_1,delt_0_carry_n_2,delt_0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI(sgma[3:0]),
        .O(delt_0[3:0]),
        .S({delt_0_carry_i_1_n_0,delt_0_carry_i_2_n_0,delt_0_carry_i_3_n_0,delt_0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delt_0_carry__0
       (.CI(delt_0_carry_n_0),
        .CO({delt_0_carry__0_n_0,delt_0_carry__0_n_1,delt_0_carry__0_n_2,delt_0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\sgma_reg[7]_0 ,Q[0],sgma[5:4]}),
        .O(delt_0[7:4]),
        .S({\sgma_reg[7]_1 ,delt_0_carry__0_i_4_n_0,delt_0_carry__0_i_5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry__0_i_4
       (.I0(sgma[5]),
        .I1(\sgma_reg[7]_2 [5]),
        .O(delt_0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry__0_i_5
       (.I0(sgma[4]),
        .I1(\sgma_reg[7]_2 [4]),
        .O(delt_0_carry__0_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delt_0_carry__1
       (.CI(delt_0_carry__0_n_0),
        .CO({delt_0_carry__1_n_0,delt_0_carry__1_n_1,delt_0_carry__1_n_2,delt_0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(DI),
        .O(delt_0[11:8]),
        .S(\sgma_reg[11]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delt_0_carry__2
       (.CI(delt_0_carry__1_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(delt_0[12]),
        .S({\<const0> ,\<const0> ,\<const0> ,S}));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry_i_1
       (.I0(sgma[3]),
        .I1(\sgma_reg[7]_2 [3]),
        .O(delt_0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry_i_2
       (.I0(sgma[2]),
        .I1(\sgma_reg[7]_2 [2]),
        .O(delt_0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry_i_3
       (.I0(sgma[1]),
        .I1(\sgma_reg[7]_2 [1]),
        .O(delt_0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry_i_4
       (.I0(sgma[0]),
        .I1(\sgma_reg[7]_2 [0]),
        .O(delt_0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \prescl[0]_i_1 
       (.I0(prescl_reg[0]),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \prescl[1]_i_1 
       (.I0(prescl_reg[1]),
        .I1(prescl_reg[0]),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \prescl[2]_i_1 
       (.I0(prescl_reg[2]),
        .I1(prescl_reg[1]),
        .I2(prescl_reg[0]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \prescl[3]_i_2 
       (.I0(\prescl_reg[3]_0 ),
        .I1(prescl_reg[1]),
        .I2(prescl_reg[0]),
        .I3(prescl_reg[2]),
        .O(p_0_in[3]));
  FDRE \prescl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[0]),
        .Q(prescl_reg[0]),
        .R(\prescl_reg[3]_1 ));
  FDRE \prescl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[1]),
        .Q(prescl_reg[1]),
        .R(\prescl_reg[3]_1 ));
  FDRE \prescl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[2]),
        .Q(prescl_reg[2]),
        .R(\prescl_reg[3]_1 ));
  FDRE \prescl_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[3]),
        .Q(\prescl_reg[3]_0 ),
        .R(\prescl_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    \sgma[12]_i_2 
       (.I0(prescl_reg[2]),
        .I1(prescl_reg[1]),
        .I2(dac_pdm_out_reg_0[0]),
        .I3(prescl_reg[0]),
        .I4(dac_pdm_out_reg_0[1]),
        .I5(dac_pdm_out_reg_0[2]),
        .O(\prescl_reg[2]_0 ));
  FDRE \sgma_reg[0] 
       (.C(clk),
        .CE(E),
        .D(delt_0[0]),
        .Q(sgma[0]),
        .R(SR));
  FDRE \sgma_reg[10] 
       (.C(clk),
        .CE(E),
        .D(delt_0[10]),
        .Q(Q[4]),
        .R(SR));
  FDRE \sgma_reg[11] 
       (.C(clk),
        .CE(E),
        .D(delt_0[11]),
        .Q(Q[5]),
        .R(SR));
  FDRE \sgma_reg[12] 
       (.C(clk),
        .CE(E),
        .D(delt_0[12]),
        .Q(Q[6]),
        .R(SR));
  FDRE \sgma_reg[1] 
       (.C(clk),
        .CE(E),
        .D(delt_0[1]),
        .Q(sgma[1]),
        .R(SR));
  FDRE \sgma_reg[2] 
       (.C(clk),
        .CE(E),
        .D(delt_0[2]),
        .Q(sgma[2]),
        .R(SR));
  FDRE \sgma_reg[3] 
       (.C(clk),
        .CE(E),
        .D(delt_0[3]),
        .Q(sgma[3]),
        .R(SR));
  FDRE \sgma_reg[4] 
       (.C(clk),
        .CE(E),
        .D(delt_0[4]),
        .Q(sgma[4]),
        .R(SR));
  FDRE \sgma_reg[5] 
       (.C(clk),
        .CE(E),
        .D(delt_0[5]),
        .Q(sgma[5]),
        .R(SR));
  FDRE \sgma_reg[6] 
       (.C(clk),
        .CE(E),
        .D(delt_0[6]),
        .Q(Q[0]),
        .R(SR));
  FDRE \sgma_reg[7] 
       (.C(clk),
        .CE(E),
        .D(delt_0[7]),
        .Q(Q[1]),
        .R(SR));
  FDRE \sgma_reg[8] 
       (.C(clk),
        .CE(E),
        .D(delt_0[8]),
        .Q(Q[2]),
        .R(SR));
  FDRE \sgma_reg[9] 
       (.C(clk),
        .CE(E),
        .D(delt_0[9]),
        .Q(Q[3]),
        .R(SR));
endmodule
