
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
    dac_pdmo,
    dac_pdmo_enb,
    bdatr);
//
// 12 bit delta-sigma D/A converter unit
//		(c) 2023	1YEN Toru
//
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
  output dac_pdmo;
  output dac_pdmo_enb;
  output [15:0]bdatr;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_dacu_n;
  wire [11:0]\^bdatr ;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire dac_pdmo;
  wire dac_pdmo_enb;
  wire dac_pdmo_i_1_n_0;
  wire dac_pdmo_i_2_n_0;
  wire \dacctl[7]_i_1_n_0 ;
  wire \dacctl[7]_i_3_n_0 ;
  wire [11:0]dacdat;
  wire \dctl/dacctl_reg_n_0_[0] ;
  wire \dctl/dacctl_reg_n_0_[1] ;
  wire \dctl/dacctl_reg_n_0_[2] ;
  wire \dctl/dacctl_reg_n_0_[3] ;
  wire \dctl/rd_dacctl0 ;
  wire \dctl/rd_dacdat0 ;
  wire \dctl/wr_dacctl ;
  wire [2:0]dctl_bitw_0;
  wire [12:0]delt_0;
  wire delt_0_carry__0_i_1_n_0;
  wire delt_0_carry__0_i_2_n_0;
  wire delt_0_carry__0_i_3_n_0;
  wire delt_0_carry__0_i_4_n_0;
  wire delt_0_carry__0_i_5_n_0;
  wire delt_0_carry__1_i_10_n_0;
  wire delt_0_carry__1_i_11_n_0;
  wire delt_0_carry__1_i_12_n_0;
  wire delt_0_carry__1_i_1_n_0;
  wire delt_0_carry__1_i_2_n_0;
  wire delt_0_carry__1_i_3_n_0;
  wire delt_0_carry__1_i_4_n_0;
  wire delt_0_carry__1_i_5_n_0;
  wire delt_0_carry__1_i_6_n_0;
  wire delt_0_carry__1_i_7_n_0;
  wire delt_0_carry__1_i_8_n_0;
  wire delt_0_carry__1_i_9_n_0;
  wire delt_0_carry__2_i_1_n_0;
  wire delt_0_carry__2_i_2_n_0;
  wire delt_0_carry__2_i_3_n_0;
  wire delt_0_carry_i_1_n_0;
  wire delt_0_carry_i_2_n_0;
  wire delt_0_carry_i_3_n_0;
  wire delt_0_carry_i_4_n_0;
  wire \dlsg/delt_0_carry__0_n_0 ;
  wire \dlsg/delt_0_carry__0_n_1 ;
  wire \dlsg/delt_0_carry__0_n_2 ;
  wire \dlsg/delt_0_carry__0_n_3 ;
  wire \dlsg/delt_0_carry__1_n_0 ;
  wire \dlsg/delt_0_carry__1_n_1 ;
  wire \dlsg/delt_0_carry__1_n_2 ;
  wire \dlsg/delt_0_carry__1_n_3 ;
  wire \dlsg/delt_0_carry_n_0 ;
  wire \dlsg/delt_0_carry_n_1 ;
  wire \dlsg/delt_0_carry_n_2 ;
  wire \dlsg/delt_0_carry_n_3 ;
  wire \dlsg/prescl0 ;
  wire [3:0]\dlsg/prescl_reg ;
  wire \dlsg/ps_ovfl ;
  wire [3:0]p_0_in;
  wire rd_dacctl;
  wire rd_dacctl_i_1_n_0;
  wire rd_dacdat;
  wire rd_dacdat_i_1_n_0;
  wire rst_n;
  wire [12:0]sgma;
  wire \sgma[12]_i_1_n_0 ;
  wire \sgma[12]_i_2_n_0 ;
  wire wr_dacdat;

  assign bdatr[15] = \<const0> ;
  assign bdatr[14] = \<const0> ;
  assign bdatr[13] = \<const0> ;
  assign bdatr[12] = \<const0> ;
  assign bdatr[11:0] = \^bdatr [11:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[0]_INST_0 
       (.I0(\dctl/dacctl_reg_n_0_[0] ),
        .I1(rd_dacctl),
        .I2(rd_dacdat),
        .I3(dacdat[0]),
        .O(\^bdatr [0]));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatr[10]_INST_0 
       (.I0(dacdat[10]),
        .I1(rd_dacdat),
        .I2(rd_dacctl),
        .O(\^bdatr [10]));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatr[11]_INST_0 
       (.I0(dacdat[11]),
        .I1(rd_dacdat),
        .I2(rd_dacctl),
        .O(\^bdatr [11]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[1]_INST_0 
       (.I0(\dctl/dacctl_reg_n_0_[1] ),
        .I1(rd_dacctl),
        .I2(rd_dacdat),
        .I3(dacdat[1]),
        .O(\^bdatr [1]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[2]_INST_0 
       (.I0(\dctl/dacctl_reg_n_0_[2] ),
        .I1(rd_dacctl),
        .I2(rd_dacdat),
        .I3(dacdat[2]),
        .O(\^bdatr [2]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[3]_INST_0 
       (.I0(\dctl/dacctl_reg_n_0_[3] ),
        .I1(rd_dacctl),
        .I2(rd_dacdat),
        .I3(dacdat[3]),
        .O(\^bdatr [3]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[4]_INST_0 
       (.I0(dctl_bitw_0[0]),
        .I1(rd_dacctl),
        .I2(rd_dacdat),
        .I3(dacdat[4]),
        .O(\^bdatr [4]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[5]_INST_0 
       (.I0(dctl_bitw_0[1]),
        .I1(rd_dacctl),
        .I2(rd_dacdat),
        .I3(dacdat[5]),
        .O(\^bdatr [5]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[6]_INST_0 
       (.I0(dctl_bitw_0[2]),
        .I1(rd_dacctl),
        .I2(rd_dacdat),
        .I3(dacdat[6]),
        .O(\^bdatr [6]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[7]_INST_0 
       (.I0(dac_pdmo_enb),
        .I1(rd_dacctl),
        .I2(rd_dacdat),
        .I3(dacdat[7]),
        .O(\^bdatr [7]));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatr[8]_INST_0 
       (.I0(dacdat[8]),
        .I1(rd_dacdat),
        .I2(rd_dacctl),
        .O(\^bdatr [8]));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatr[9]_INST_0 
       (.I0(dacdat[9]),
        .I1(rd_dacdat),
        .I2(rd_dacctl),
        .O(\^bdatr [9]));
  LUT6 #(
    .INIT(64'h8800888088888880)) 
    dac_pdmo_i_1
       (.I0(rst_n),
        .I1(dac_pdmo_enb),
        .I2(dac_pdmo),
        .I3(dac_pdmo_i_2_n_0),
        .I4(\dlsg/ps_ovfl ),
        .I5(delt_0[12]),
        .O(dac_pdmo_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    dac_pdmo_i_2
       (.I0(dctl_bitw_0[0]),
        .I1(dctl_bitw_0[2]),
        .I2(dctl_bitw_0[1]),
        .O(dac_pdmo_i_2_n_0));
  LUT3 #(
    .INIT(8'h84)) 
    dac_pdmo_i_3
       (.I0(\dlsg/prescl_reg [3]),
        .I1(\sgma[12]_i_2_n_0 ),
        .I2(\dctl/dacctl_reg_n_0_[3] ),
        .O(\dlsg/ps_ovfl ));
  LUT1 #(
    .INIT(2'h1)) 
    \dacctl[7]_i_1 
       (.I0(rst_n),
        .O(\dacctl[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \dacctl[7]_i_2 
       (.I0(badr[1]),
        .I1(\dacctl[7]_i_3_n_0 ),
        .I2(bcs_dacu_n),
        .O(\dctl/wr_dacctl ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \dacctl[7]_i_3 
       (.I0(badr[3]),
        .I1(brdy),
        .I2(bcmdw),
        .I3(badr[2]),
        .I4(badr[0]),
        .O(\dacctl[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \dacdat[11]_i_1 
       (.I0(badr[1]),
        .I1(\dacctl[7]_i_3_n_0 ),
        .I2(bcs_dacu_n),
        .O(wr_dacdat));
  FDRE \dctl/dacctl_reg[0] 
       (.C(clk),
        .CE(\dctl/wr_dacctl ),
        .D(bdatw[0]),
        .Q(\dctl/dacctl_reg_n_0_[0] ),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dctl/dacctl_reg[1] 
       (.C(clk),
        .CE(\dctl/wr_dacctl ),
        .D(bdatw[1]),
        .Q(\dctl/dacctl_reg_n_0_[1] ),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dctl/dacctl_reg[2] 
       (.C(clk),
        .CE(\dctl/wr_dacctl ),
        .D(bdatw[2]),
        .Q(\dctl/dacctl_reg_n_0_[2] ),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dctl/dacctl_reg[3] 
       (.C(clk),
        .CE(\dctl/wr_dacctl ),
        .D(bdatw[3]),
        .Q(\dctl/dacctl_reg_n_0_[3] ),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dctl/dacctl_reg[4] 
       (.C(clk),
        .CE(\dctl/wr_dacctl ),
        .D(bdatw[4]),
        .Q(dctl_bitw_0[0]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dctl/dacctl_reg[5] 
       (.C(clk),
        .CE(\dctl/wr_dacctl ),
        .D(bdatw[5]),
        .Q(dctl_bitw_0[1]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dctl/dacctl_reg[6] 
       (.C(clk),
        .CE(\dctl/wr_dacctl ),
        .D(bdatw[6]),
        .Q(dctl_bitw_0[2]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dctl/dacctl_reg[7] 
       (.C(clk),
        .CE(\dctl/wr_dacctl ),
        .D(bdatw[7]),
        .Q(dac_pdmo_enb),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dctl/rd_dacctl_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(rd_dacctl_i_1_n_0),
        .Q(rd_dacctl),
        .R(\<const0> ));
  FDRE \dctl/rd_dacdat_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(rd_dacdat_i_1_n_0),
        .Q(rd_dacdat),
        .R(\<const0> ));
  FDRE \ddat/dacdat_reg[0] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[0]),
        .Q(dacdat[0]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \ddat/dacdat_reg[10] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[10]),
        .Q(dacdat[10]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \ddat/dacdat_reg[11] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[11]),
        .Q(dacdat[11]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \ddat/dacdat_reg[1] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[1]),
        .Q(dacdat[1]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \ddat/dacdat_reg[2] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[2]),
        .Q(dacdat[2]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \ddat/dacdat_reg[3] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[3]),
        .Q(dacdat[3]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \ddat/dacdat_reg[4] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[4]),
        .Q(dacdat[4]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \ddat/dacdat_reg[5] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[5]),
        .Q(dacdat[5]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \ddat/dacdat_reg[6] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[6]),
        .Q(dacdat[6]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \ddat/dacdat_reg[7] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[7]),
        .Q(dacdat[7]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \ddat/dacdat_reg[8] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[8]),
        .Q(dacdat[8]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \ddat/dacdat_reg[9] 
       (.C(clk),
        .CE(wr_dacdat),
        .D(bdatw[9]),
        .Q(dacdat[9]),
        .R(\dacctl[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7EFF)) 
    delt_0_carry__0_i_1
       (.I0(dctl_bitw_0[0]),
        .I1(dctl_bitw_0[2]),
        .I2(dctl_bitw_0[1]),
        .I3(dac_pdmo),
        .O(delt_0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h1550D55FEAAF2AA0)) 
    delt_0_carry__0_i_2
       (.I0(dacdat[7]),
        .I1(dctl_bitw_0[0]),
        .I2(dctl_bitw_0[1]),
        .I3(dctl_bitw_0[2]),
        .I4(dac_pdmo),
        .I5(sgma[7]),
        .O(delt_0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h40017FFDBFFE8002)) 
    delt_0_carry__0_i_3
       (.I0(dac_pdmo),
        .I1(dctl_bitw_0[1]),
        .I2(dctl_bitw_0[0]),
        .I3(dctl_bitw_0[2]),
        .I4(dacdat[6]),
        .I5(sgma[6]),
        .O(delt_0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry__0_i_4
       (.I0(sgma[5]),
        .I1(dacdat[5]),
        .O(delt_0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry__0_i_5
       (.I0(sgma[4]),
        .I1(dacdat[4]),
        .O(delt_0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hCFCCF4CCCCCCC4CC)) 
    delt_0_carry__1_i_1
       (.I0(dac_pdmo),
        .I1(sgma[10]),
        .I2(dctl_bitw_0[0]),
        .I3(dctl_bitw_0[2]),
        .I4(dctl_bitw_0[1]),
        .I5(dacdat[10]),
        .O(delt_0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h599A555559955555)) 
    delt_0_carry__1_i_10
       (.I0(sgma[10]),
        .I1(dacdat[10]),
        .I2(dctl_bitw_0[1]),
        .I3(dctl_bitw_0[0]),
        .I4(dctl_bitw_0[2]),
        .I5(dac_pdmo),
        .O(delt_0_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'h59A5995559559955)) 
    delt_0_carry__1_i_11
       (.I0(sgma[9]),
        .I1(dacdat[9]),
        .I2(dctl_bitw_0[1]),
        .I3(dctl_bitw_0[2]),
        .I4(dctl_bitw_0[0]),
        .I5(dac_pdmo),
        .O(delt_0_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'h599599A559959955)) 
    delt_0_carry__1_i_12
       (.I0(sgma[8]),
        .I1(dacdat[8]),
        .I2(dctl_bitw_0[1]),
        .I3(dctl_bitw_0[2]),
        .I4(dctl_bitw_0[0]),
        .I5(dac_pdmo),
        .O(delt_0_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'hC4FCFCFCC4CCCCCC)) 
    delt_0_carry__1_i_2
       (.I0(dac_pdmo),
        .I1(sgma[9]),
        .I2(dctl_bitw_0[2]),
        .I3(dctl_bitw_0[1]),
        .I4(dctl_bitw_0[0]),
        .I5(dacdat[9]),
        .O(delt_0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hCFFCF4FCCCCCC4CC)) 
    delt_0_carry__1_i_3
       (.I0(dac_pdmo),
        .I1(sgma[8]),
        .I2(dctl_bitw_0[2]),
        .I3(dctl_bitw_0[1]),
        .I4(dctl_bitw_0[0]),
        .I5(dacdat[8]),
        .O(delt_0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hCFF4FFFCCCC4CCCC)) 
    delt_0_carry__1_i_4
       (.I0(dac_pdmo),
        .I1(sgma[7]),
        .I2(dctl_bitw_0[2]),
        .I3(dctl_bitw_0[1]),
        .I4(dctl_bitw_0[0]),
        .I5(dacdat[7]),
        .O(delt_0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry__1_i_5
       (.I0(delt_0_carry__1_i_1_n_0),
        .I1(delt_0_carry__1_i_9_n_0),
        .O(delt_0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry__1_i_6
       (.I0(delt_0_carry__1_i_2_n_0),
        .I1(delt_0_carry__1_i_10_n_0),
        .O(delt_0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry__1_i_7
       (.I0(delt_0_carry__1_i_3_n_0),
        .I1(delt_0_carry__1_i_11_n_0),
        .O(delt_0_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry__1_i_8
       (.I0(delt_0_carry__1_i_4_n_0),
        .I1(delt_0_carry__1_i_12_n_0),
        .O(delt_0_carry__1_i_8_n_0));
  LUT6 #(
    .INIT(64'h55A5555599555555)) 
    delt_0_carry__1_i_9
       (.I0(sgma[11]),
        .I1(dac_pdmo),
        .I2(dacdat[11]),
        .I3(dctl_bitw_0[0]),
        .I4(dctl_bitw_0[2]),
        .I5(dctl_bitw_0[1]),
        .O(delt_0_carry__1_i_9_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    delt_0_carry__2_i_1
       (.I0(delt_0_carry__2_i_2_n_0),
        .I1(sgma[12]),
        .I2(delt_0_carry__2_i_3_n_0),
        .O(delt_0_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAA36AA22AAAAAA)) 
    delt_0_carry__2_i_2
       (.I0(sgma[11]),
        .I1(dac_pdmo),
        .I2(dacdat[11]),
        .I3(dctl_bitw_0[2]),
        .I4(dctl_bitw_0[0]),
        .I5(dctl_bitw_0[1]),
        .O(delt_0_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h55C95555DD555555)) 
    delt_0_carry__2_i_3
       (.I0(sgma[11]),
        .I1(dac_pdmo),
        .I2(dacdat[11]),
        .I3(dctl_bitw_0[0]),
        .I4(dctl_bitw_0[2]),
        .I5(dctl_bitw_0[1]),
        .O(delt_0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry_i_1
       (.I0(sgma[3]),
        .I1(dacdat[3]),
        .O(delt_0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry_i_2
       (.I0(sgma[2]),
        .I1(dacdat[2]),
        .O(delt_0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry_i_3
       (.I0(sgma[1]),
        .I1(dacdat[1]),
        .O(delt_0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    delt_0_carry_i_4
       (.I0(sgma[0]),
        .I1(dacdat[0]),
        .O(delt_0_carry_i_4_n_0));
  FDRE \dlsg/dac_pdmo_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(dac_pdmo_i_1_n_0),
        .Q(dac_pdmo),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dlsg/delt_0_carry 
       (.CI(\<const0> ),
        .CO({\dlsg/delt_0_carry_n_0 ,\dlsg/delt_0_carry_n_1 ,\dlsg/delt_0_carry_n_2 ,\dlsg/delt_0_carry_n_3 }),
        .CYINIT(\<const0> ),
        .DI(sgma[3:0]),
        .O(delt_0[3:0]),
        .S({delt_0_carry_i_1_n_0,delt_0_carry_i_2_n_0,delt_0_carry_i_3_n_0,delt_0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dlsg/delt_0_carry__0 
       (.CI(\dlsg/delt_0_carry_n_0 ),
        .CO({\dlsg/delt_0_carry__0_n_0 ,\dlsg/delt_0_carry__0_n_1 ,\dlsg/delt_0_carry__0_n_2 ,\dlsg/delt_0_carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({delt_0_carry__0_i_1_n_0,sgma[6:4]}),
        .O(delt_0[7:4]),
        .S({delt_0_carry__0_i_2_n_0,delt_0_carry__0_i_3_n_0,delt_0_carry__0_i_4_n_0,delt_0_carry__0_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dlsg/delt_0_carry__1 
       (.CI(\dlsg/delt_0_carry__0_n_0 ),
        .CO({\dlsg/delt_0_carry__1_n_0 ,\dlsg/delt_0_carry__1_n_1 ,\dlsg/delt_0_carry__1_n_2 ,\dlsg/delt_0_carry__1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({delt_0_carry__1_i_1_n_0,delt_0_carry__1_i_2_n_0,delt_0_carry__1_i_3_n_0,delt_0_carry__1_i_4_n_0}),
        .O(delt_0[11:8]),
        .S({delt_0_carry__1_i_5_n_0,delt_0_carry__1_i_6_n_0,delt_0_carry__1_i_7_n_0,delt_0_carry__1_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dlsg/delt_0_carry__2 
       (.CI(\dlsg/delt_0_carry__1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(delt_0[12]),
        .S({\<const0> ,\<const0> ,\<const0> ,delt_0_carry__2_i_1_n_0}));
  FDRE \dlsg/prescl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[0]),
        .Q(\dlsg/prescl_reg [0]),
        .R(\dlsg/prescl0 ));
  FDRE \dlsg/prescl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[1]),
        .Q(\dlsg/prescl_reg [1]),
        .R(\dlsg/prescl0 ));
  FDRE \dlsg/prescl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[2]),
        .Q(\dlsg/prescl_reg [2]),
        .R(\dlsg/prescl0 ));
  FDRE \dlsg/prescl_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[3]),
        .Q(\dlsg/prescl_reg [3]),
        .R(\dlsg/prescl0 ));
  FDRE \dlsg/sgma_reg[0] 
       (.C(clk),
        .CE(\sgma[12]_i_1_n_0 ),
        .D(delt_0[0]),
        .Q(sgma[0]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dlsg/sgma_reg[10] 
       (.C(clk),
        .CE(\sgma[12]_i_1_n_0 ),
        .D(delt_0[10]),
        .Q(sgma[10]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dlsg/sgma_reg[11] 
       (.C(clk),
        .CE(\sgma[12]_i_1_n_0 ),
        .D(delt_0[11]),
        .Q(sgma[11]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dlsg/sgma_reg[12] 
       (.C(clk),
        .CE(\sgma[12]_i_1_n_0 ),
        .D(delt_0[12]),
        .Q(sgma[12]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dlsg/sgma_reg[1] 
       (.C(clk),
        .CE(\sgma[12]_i_1_n_0 ),
        .D(delt_0[1]),
        .Q(sgma[1]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dlsg/sgma_reg[2] 
       (.C(clk),
        .CE(\sgma[12]_i_1_n_0 ),
        .D(delt_0[2]),
        .Q(sgma[2]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dlsg/sgma_reg[3] 
       (.C(clk),
        .CE(\sgma[12]_i_1_n_0 ),
        .D(delt_0[3]),
        .Q(sgma[3]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dlsg/sgma_reg[4] 
       (.C(clk),
        .CE(\sgma[12]_i_1_n_0 ),
        .D(delt_0[4]),
        .Q(sgma[4]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dlsg/sgma_reg[5] 
       (.C(clk),
        .CE(\sgma[12]_i_1_n_0 ),
        .D(delt_0[5]),
        .Q(sgma[5]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dlsg/sgma_reg[6] 
       (.C(clk),
        .CE(\sgma[12]_i_1_n_0 ),
        .D(delt_0[6]),
        .Q(sgma[6]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dlsg/sgma_reg[7] 
       (.C(clk),
        .CE(\sgma[12]_i_1_n_0 ),
        .D(delt_0[7]),
        .Q(sgma[7]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dlsg/sgma_reg[8] 
       (.C(clk),
        .CE(\sgma[12]_i_1_n_0 ),
        .D(delt_0[8]),
        .Q(sgma[8]),
        .R(\dacctl[7]_i_1_n_0 ));
  FDRE \dlsg/sgma_reg[9] 
       (.C(clk),
        .CE(\sgma[12]_i_1_n_0 ),
        .D(delt_0[9]),
        .Q(sgma[9]),
        .R(\dacctl[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \prescl[0]_i_1 
       (.I0(\dlsg/prescl_reg [0]),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \prescl[1]_i_1 
       (.I0(\dlsg/prescl_reg [1]),
        .I1(\dlsg/prescl_reg [0]),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \prescl[2]_i_1 
       (.I0(\dlsg/prescl_reg [2]),
        .I1(\dlsg/prescl_reg [1]),
        .I2(\dlsg/prescl_reg [0]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hD575FFFF)) 
    \prescl[3]_i_1 
       (.I0(dac_pdmo_enb),
        .I1(\dlsg/prescl_reg [3]),
        .I2(\sgma[12]_i_2_n_0 ),
        .I3(\dctl/dacctl_reg_n_0_[3] ),
        .I4(rst_n),
        .O(\dlsg/prescl0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \prescl[3]_i_2 
       (.I0(\dlsg/prescl_reg [3]),
        .I1(\dlsg/prescl_reg [1]),
        .I2(\dlsg/prescl_reg [0]),
        .I3(\dlsg/prescl_reg [2]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hE200)) 
    rd_dacctl_i_1
       (.I0(rd_dacctl),
        .I1(brdy),
        .I2(\dctl/rd_dacctl0 ),
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
        .O(\dctl/rd_dacctl0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    rd_dacdat_i_1
       (.I0(rd_dacdat),
        .I1(brdy),
        .I2(\dctl/rd_dacdat0 ),
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
        .O(\dctl/rd_dacdat0 ));
  LUT4 #(
    .INIT(16'h8400)) 
    \sgma[12]_i_1 
       (.I0(\dctl/dacctl_reg_n_0_[3] ),
        .I1(\sgma[12]_i_2_n_0 ),
        .I2(\dlsg/prescl_reg [3]),
        .I3(dac_pdmo_enb),
        .O(\sgma[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    \sgma[12]_i_2 
       (.I0(\dlsg/prescl_reg [2]),
        .I1(\dlsg/prescl_reg [1]),
        .I2(\dctl/dacctl_reg_n_0_[0] ),
        .I3(\dlsg/prescl_reg [0]),
        .I4(\dctl/dacctl_reg_n_0_[1] ),
        .I5(\dctl/dacctl_reg_n_0_[2] ),
        .O(\sgma[12]_i_2_n_0 ));
endmodule
