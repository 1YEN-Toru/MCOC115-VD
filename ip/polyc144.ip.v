
module poly_ctrl
   (rd_polyintm,
    rd_polyintr,
    bdatr,
    poly_pirq,
    \polyctl_reg[7]_0 ,
    pctl_serr_rst,
    psem_rst_n,
    rd_polysmph2_rg_reg_0,
    brdy,
    clk,
    bcs_poly_n,
    bcmdr,
    badr,
    p_14_in,
    psem_serr,
    Q,
    \poly_pirq[14] ,
    .poly_pirq_12_sp_1(poly_pirq_12_sn_1),
    \poly_pirq[12]_0 ,
    .poly_pirq_8_sp_1(poly_pirq_8_sn_1),
    \poly_pirq[8]_0 ,
    .poly_pirq_4_sp_1(poly_pirq_4_sn_1),
    \poly_pirq[4]_0 ,
    rst_n,
    \poly_pirq[14]_0 ,
    \poly_pirq[14]_1 ,
    .poly_pirq_2_sp_1(poly_pirq_2_sn_1),
    \poly_pirq[2]_0 ,
    .poly_pirq_6_sp_1(poly_pirq_6_sn_1),
    \poly_pirq[6]_0 ,
    .poly_pirq_10_sp_1(poly_pirq_10_sn_1),
    \poly_pirq[10]_0 ,
    .poly_pirq_13_sp_1(poly_pirq_13_sn_1),
    \poly_pirq[13]_0 ,
    .poly_pirq_1_sp_1(poly_pirq_1_sn_1),
    \poly_pirq[1]_0 ,
    .poly_pirq_5_sp_1(poly_pirq_5_sn_1),
    \poly_pirq[5]_0 ,
    .poly_pirq_9_sp_1(poly_pirq_9_sn_1),
    \poly_pirq[9]_0 ,
    .poly_pirq_11_sp_1(poly_pirq_11_sn_1),
    \poly_pirq[11]_0 ,
    .poly_pirq_3_sp_1(poly_pirq_3_sn_1),
    \poly_pirq[3]_0 ,
    .poly_pirq_7_sp_1(poly_pirq_7_sn_1),
    \poly_pirq[7]_0 ,
    .bdatr_1_sp_1(bdatr_1_sn_1),
    poly_n_core,
    \bdatr[1]_0 ,
    .bdatr_2_sp_1(bdatr_2_sn_1),
    \bdatr[2]_0 ,
    .bdatr_3_sp_1(bdatr_3_sn_1),
    \bdatr[3]_0 ,
    \bdatr[3]_1 ,
    \bdatr[3]_2 ,
    \bdatr[2]_1 ,
    \bdatr[2]_2 ,
    \bdatr[1]_1 ,
    \bdatr[1]_2 ,
    .bdatr_0_sp_1(bdatr_0_sn_1),
    \bdatr[0]_0 ,
    \bdatr[0]_1 ,
    \bdatr[0]_2 ,
    bdatw);
  output rd_polyintm;
  output rd_polyintr;
  output [6:0]bdatr;
  output [14:1]poly_pirq;
  output \polyctl_reg[7]_0 ;
  output pctl_serr_rst;
  output psem_rst_n;
  input rd_polysmph2_rg_reg_0;
  input brdy;
  input clk;
  input bcs_poly_n;
  input bcmdr;
  input [3:0]badr;
  input p_14_in;
  input psem_serr;
  input [13:0]Q;
  input [13:0]\poly_pirq[14] ;
  input \poly_pirq[12]_0 ;
  input \poly_pirq[8]_0 ;
  input \poly_pirq[4]_0 ;
  input rst_n;
  input \poly_pirq[14]_0 ;
  input \poly_pirq[14]_1 ;
  input \poly_pirq[2]_0 ;
  input \poly_pirq[6]_0 ;
  input \poly_pirq[10]_0 ;
  input \poly_pirq[13]_0 ;
  input \poly_pirq[1]_0 ;
  input \poly_pirq[5]_0 ;
  input \poly_pirq[9]_0 ;
  input \poly_pirq[11]_0 ;
  input \poly_pirq[3]_0 ;
  input \poly_pirq[7]_0 ;
  input [3:0]poly_n_core;
  input \bdatr[1]_0 ;
  input \bdatr[2]_0 ;
  input \bdatr[3]_0 ;
  input \bdatr[3]_1 ;
  input \bdatr[3]_2 ;
  input \bdatr[2]_1 ;
  input \bdatr[2]_2 ;
  input \bdatr[1]_1 ;
  input \bdatr[1]_2 ;
  input \bdatr[0]_0 ;
  input \bdatr[0]_1 ;
  input \bdatr[0]_2 ;
  input [2:0]bdatw;
  input poly_pirq_12_sn_1;
  input poly_pirq_8_sn_1;
  input poly_pirq_4_sn_1;
  input poly_pirq_2_sn_1;
  input poly_pirq_6_sn_1;
  input poly_pirq_10_sn_1;
  input poly_pirq_13_sn_1;
  input poly_pirq_1_sn_1;
  input poly_pirq_5_sn_1;
  input poly_pirq_9_sn_1;
  input poly_pirq_11_sn_1;
  input poly_pirq_3_sn_1;
  input poly_pirq_7_sn_1;
  input bdatr_1_sn_1;
  input bdatr_2_sn_1;
  input bdatr_3_sn_1;
  input bdatr_0_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [13:0]Q;
  wire [3:0]badr;
  wire bcmdr;
  wire bcs_poly_n;
  wire [6:0]bdatr;
  wire \bdatr[0]_0 ;
  wire \bdatr[0]_1 ;
  wire \bdatr[0]_2 ;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_0 ;
  wire \bdatr[1]_1 ;
  wire \bdatr[1]_2 ;
  wire \bdatr[1]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_2_n_0 ;
  wire \bdatr[2]_0 ;
  wire \bdatr[2]_1 ;
  wire \bdatr[2]_2 ;
  wire \bdatr[2]_INST_0_i_1_n_0 ;
  wire \bdatr[2]_INST_0_i_2_n_0 ;
  wire \bdatr[3]_0 ;
  wire \bdatr[3]_1 ;
  wire \bdatr[3]_2 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_2_n_0 ;
  wire \bdatr[3]_INST_0_i_3_n_0 ;
  wire bdatr_0_sn_1;
  wire bdatr_1_sn_1;
  wire bdatr_2_sn_1;
  wire bdatr_3_sn_1;
  wire [2:0]bdatw;
  wire brdy;
  wire clk;
  wire p_14_in;
  wire pctl_pcie;
  wire pctl_psie;
  wire pctl_serr_rst;
  wire [3:0]poly_n_core;
  wire [14:1]poly_pirq;
  wire \poly_pirq[10]_0 ;
  wire \poly_pirq[11]_0 ;
  wire \poly_pirq[12]_0 ;
  wire \poly_pirq[13]_0 ;
  wire [13:0]\poly_pirq[14] ;
  wire \poly_pirq[14]_0 ;
  wire \poly_pirq[14]_1 ;
  wire \poly_pirq[1]_0 ;
  wire \poly_pirq[2]_0 ;
  wire \poly_pirq[3]_0 ;
  wire \poly_pirq[4]_0 ;
  wire \poly_pirq[5]_0 ;
  wire \poly_pirq[6]_0 ;
  wire \poly_pirq[7]_0 ;
  wire \poly_pirq[8]_0 ;
  wire \poly_pirq[9]_0 ;
  wire poly_pirq_10_sn_1;
  wire poly_pirq_11_sn_1;
  wire poly_pirq_12_sn_1;
  wire poly_pirq_13_sn_1;
  wire poly_pirq_1_sn_1;
  wire poly_pirq_2_sn_1;
  wire poly_pirq_3_sn_1;
  wire poly_pirq_4_sn_1;
  wire poly_pirq_5_sn_1;
  wire poly_pirq_6_sn_1;
  wire poly_pirq_7_sn_1;
  wire poly_pirq_8_sn_1;
  wire poly_pirq_9_sn_1;
  wire \polyctl[4]_i_1_n_0 ;
  wire \polyctl[5]_i_1_n_0 ;
  wire \polyctl[7]_i_1_n_0 ;
  wire \polyctl_reg[7]_0 ;
  wire psem_rst_n;
  wire psem_serr;
  wire rd_polyctl;
  wire rd_polyctl0;
  wire rd_polyintm;
  wire rd_polyintm_rg0;
  wire rd_polyintr;
  wire rd_polyintr_rg0;
  wire rd_polysmph;
  wire rd_polysmph0_rg0;
  wire rd_polysmph1_rg0;
  wire rd_polysmph1_rg_reg_n_0;
  wire rd_polysmph2_rg0;
  wire rd_polysmph2_rg_reg_0;
  wire rd_polysmph2_rg_reg_n_0;
  wire rd_polysmph3_rg0;
  wire rd_polysmph3_rg_reg_n_0;
  wire rst_n;
  wire wr_polyctl__0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatr[0]_INST_0 
       (.I0(\bdatr[0]_INST_0_i_1_n_0 ),
        .I1(rd_polysmph2_rg_reg_n_0),
        .I2(bdatr_0_sn_1),
        .I3(rd_polysmph1_rg_reg_n_0),
        .I4(\bdatr[0]_0 ),
        .O(bdatr[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(rd_polyctl),
        .I1(poly_n_core[0]),
        .I2(rd_polysmph3_rg_reg_n_0),
        .I3(\bdatr[0]_1 ),
        .I4(\bdatr[0]_2 ),
        .I5(rd_polysmph),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatr[1]_INST_0 
       (.I0(\bdatr[1]_INST_0_i_1_n_0 ),
        .I1(\poly_pirq[14] [0]),
        .I2(rd_polyintr),
        .I3(bdatr_1_sn_1),
        .I4(rd_polysmph),
        .I5(\bdatr[1]_INST_0_i_2_n_0 ),
        .O(bdatr[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(\bdatr[1]_1 ),
        .I1(rd_polysmph1_rg_reg_n_0),
        .I2(\bdatr[1]_2 ),
        .I3(rd_polysmph2_rg_reg_n_0),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[1]_INST_0_i_2 
       (.I0(poly_n_core[1]),
        .I1(rd_polyctl),
        .I2(rd_polysmph3_rg_reg_n_0),
        .I3(\bdatr[1]_0 ),
        .I4(Q[0]),
        .I5(\bdatr[3]_INST_0_i_3_n_0 ),
        .O(\bdatr[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatr[2]_INST_0 
       (.I0(\bdatr[2]_INST_0_i_1_n_0 ),
        .I1(\poly_pirq[14] [1]),
        .I2(rd_polyintr),
        .I3(bdatr_2_sn_1),
        .I4(rd_polysmph),
        .I5(\bdatr[2]_INST_0_i_2_n_0 ),
        .O(bdatr[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(\bdatr[2]_1 ),
        .I1(rd_polysmph1_rg_reg_n_0),
        .I2(\bdatr[2]_2 ),
        .I3(rd_polysmph2_rg_reg_n_0),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[2]_INST_0_i_2 
       (.I0(poly_n_core[2]),
        .I1(rd_polyctl),
        .I2(rd_polysmph3_rg_reg_n_0),
        .I3(\bdatr[2]_0 ),
        .I4(Q[1]),
        .I5(\bdatr[3]_INST_0_i_3_n_0 ),
        .O(\bdatr[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatr[3]_INST_0 
       (.I0(\bdatr[3]_INST_0_i_1_n_0 ),
        .I1(\poly_pirq[14] [2]),
        .I2(rd_polyintr),
        .I3(bdatr_3_sn_1),
        .I4(rd_polysmph),
        .I5(\bdatr[3]_INST_0_i_2_n_0 ),
        .O(bdatr[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(\bdatr[3]_1 ),
        .I1(rd_polysmph1_rg_reg_n_0),
        .I2(\bdatr[3]_2 ),
        .I3(rd_polysmph2_rg_reg_n_0),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[3]_INST_0_i_2 
       (.I0(poly_n_core[3]),
        .I1(rd_polyctl),
        .I2(rd_polysmph3_rg_reg_n_0),
        .I3(\bdatr[3]_0 ),
        .I4(Q[2]),
        .I5(\bdatr[3]_INST_0_i_3_n_0 ),
        .O(\bdatr[3]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatr[3]_INST_0_i_3 
       (.I0(rd_polyintm),
        .I1(rd_polyintr),
        .O(\bdatr[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F8F8FF888888)) 
    \bdatr[4]_INST_0 
       (.I0(rd_polyctl),
        .I1(pctl_psie),
        .I2(\poly_pirq[14] [3]),
        .I3(Q[3]),
        .I4(rd_polyintm),
        .I5(rd_polyintr),
        .O(bdatr[4]));
  LUT6 #(
    .INIT(64'hF8F8F8F8FF888888)) 
    \bdatr[5]_INST_0 
       (.I0(rd_polyctl),
        .I1(pctl_pcie),
        .I2(\poly_pirq[14] [4]),
        .I3(Q[4]),
        .I4(rd_polyintm),
        .I5(rd_polyintr),
        .O(bdatr[5]));
  LUT6 #(
    .INIT(64'hFFFF8888F888F888)) 
    \bdatr[7]_INST_0 
       (.I0(rd_polyctl),
        .I1(psem_serr),
        .I2(rd_polyintm),
        .I3(Q[6]),
        .I4(\poly_pirq[14] [6]),
        .I5(rd_polyintr),
        .O(bdatr[6]));
  LUT2 #(
    .INIT(4'hB)) 
    empty_rd_i_1__2
       (.I0(pctl_serr_rst),
        .I1(rst_n),
        .O(\polyctl_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h00FF00E000E000E0)) 
    \poly_pirq[10]_INST_0 
       (.I0(poly_pirq_10_sn_1),
        .I1(\poly_pirq[10]_0 ),
        .I2(pctl_psie),
        .I3(Q[9]),
        .I4(\poly_pirq[14] [9]),
        .I5(pctl_pcie),
        .O(poly_pirq[10]));
  LUT6 #(
    .INIT(64'h00FF00E000E000E0)) 
    \poly_pirq[11]_INST_0 
       (.I0(poly_pirq_11_sn_1),
        .I1(\poly_pirq[11]_0 ),
        .I2(pctl_psie),
        .I3(Q[10]),
        .I4(\poly_pirq[14] [10]),
        .I5(pctl_pcie),
        .O(poly_pirq[11]));
  LUT6 #(
    .INIT(64'h00FF00E000E000E0)) 
    \poly_pirq[12]_INST_0 
       (.I0(poly_pirq_12_sn_1),
        .I1(\poly_pirq[12]_0 ),
        .I2(pctl_psie),
        .I3(Q[11]),
        .I4(\poly_pirq[14] [11]),
        .I5(pctl_pcie),
        .O(poly_pirq[12]));
  LUT6 #(
    .INIT(64'h00FF00E000E000E0)) 
    \poly_pirq[13]_INST_0 
       (.I0(poly_pirq_13_sn_1),
        .I1(\poly_pirq[13]_0 ),
        .I2(pctl_psie),
        .I3(Q[12]),
        .I4(\poly_pirq[14] [12]),
        .I5(pctl_pcie),
        .O(poly_pirq[13]));
  LUT6 #(
    .INIT(64'h00FF00E000E000E0)) 
    \poly_pirq[14]_INST_0 
       (.I0(\poly_pirq[14]_0 ),
        .I1(\poly_pirq[14]_1 ),
        .I2(pctl_psie),
        .I3(Q[13]),
        .I4(\poly_pirq[14] [13]),
        .I5(pctl_pcie),
        .O(poly_pirq[14]));
  LUT6 #(
    .INIT(64'h00FF00E000E000E0)) 
    \poly_pirq[1]_INST_0 
       (.I0(poly_pirq_1_sn_1),
        .I1(\poly_pirq[1]_0 ),
        .I2(pctl_psie),
        .I3(Q[0]),
        .I4(\poly_pirq[14] [0]),
        .I5(pctl_pcie),
        .O(poly_pirq[1]));
  LUT6 #(
    .INIT(64'h00FF00E000E000E0)) 
    \poly_pirq[2]_INST_0 
       (.I0(poly_pirq_2_sn_1),
        .I1(\poly_pirq[2]_0 ),
        .I2(pctl_psie),
        .I3(Q[1]),
        .I4(\poly_pirq[14] [1]),
        .I5(pctl_pcie),
        .O(poly_pirq[2]));
  LUT6 #(
    .INIT(64'h00FF00E000E000E0)) 
    \poly_pirq[3]_INST_0 
       (.I0(poly_pirq_3_sn_1),
        .I1(\poly_pirq[3]_0 ),
        .I2(pctl_psie),
        .I3(Q[2]),
        .I4(\poly_pirq[14] [2]),
        .I5(pctl_pcie),
        .O(poly_pirq[3]));
  LUT6 #(
    .INIT(64'h00FF00E000E000E0)) 
    \poly_pirq[4]_INST_0 
       (.I0(poly_pirq_4_sn_1),
        .I1(\poly_pirq[4]_0 ),
        .I2(pctl_psie),
        .I3(Q[3]),
        .I4(\poly_pirq[14] [3]),
        .I5(pctl_pcie),
        .O(poly_pirq[4]));
  LUT6 #(
    .INIT(64'h00FF00E000E000E0)) 
    \poly_pirq[5]_INST_0 
       (.I0(poly_pirq_5_sn_1),
        .I1(\poly_pirq[5]_0 ),
        .I2(pctl_psie),
        .I3(Q[4]),
        .I4(\poly_pirq[14] [4]),
        .I5(pctl_pcie),
        .O(poly_pirq[5]));
  LUT6 #(
    .INIT(64'h00FF00E000E000E0)) 
    \poly_pirq[6]_INST_0 
       (.I0(poly_pirq_6_sn_1),
        .I1(\poly_pirq[6]_0 ),
        .I2(pctl_psie),
        .I3(Q[5]),
        .I4(\poly_pirq[14] [5]),
        .I5(pctl_pcie),
        .O(poly_pirq[6]));
  LUT6 #(
    .INIT(64'h00FF00E000E000E0)) 
    \poly_pirq[7]_INST_0 
       (.I0(poly_pirq_7_sn_1),
        .I1(\poly_pirq[7]_0 ),
        .I2(pctl_psie),
        .I3(Q[6]),
        .I4(\poly_pirq[14] [6]),
        .I5(pctl_pcie),
        .O(poly_pirq[7]));
  LUT6 #(
    .INIT(64'h00FF00E000E000E0)) 
    \poly_pirq[8]_INST_0 
       (.I0(poly_pirq_8_sn_1),
        .I1(\poly_pirq[8]_0 ),
        .I2(pctl_psie),
        .I3(Q[7]),
        .I4(\poly_pirq[14] [7]),
        .I5(pctl_pcie),
        .O(poly_pirq[8]));
  LUT6 #(
    .INIT(64'h00FF00E000E000E0)) 
    \poly_pirq[9]_INST_0 
       (.I0(poly_pirq_9_sn_1),
        .I1(\poly_pirq[9]_0 ),
        .I2(pctl_psie),
        .I3(Q[8]),
        .I4(\poly_pirq[14] [8]),
        .I5(pctl_pcie),
        .O(poly_pirq[9]));
  LUT4 #(
    .INIT(16'hE200)) 
    \polyctl[4]_i_1 
       (.I0(pctl_psie),
        .I1(wr_polyctl__0),
        .I2(bdatw[0]),
        .I3(rst_n),
        .O(\polyctl[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \polyctl[5]_i_1 
       (.I0(pctl_pcie),
        .I1(wr_polyctl__0),
        .I2(bdatw[1]),
        .I3(rst_n),
        .O(\polyctl[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8080000)) 
    \polyctl[7]_i_1 
       (.I0(pctl_serr_rst),
        .I1(psem_serr),
        .I2(wr_polyctl__0),
        .I3(bdatw[2]),
        .I4(rst_n),
        .O(\polyctl[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \polyctl[7]_i_2 
       (.I0(p_14_in),
        .I1(badr[2]),
        .I2(badr[3]),
        .I3(badr[0]),
        .I4(badr[1]),
        .O(wr_polyctl__0));
  FDRE \polyctl_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\polyctl[4]_i_1_n_0 ),
        .Q(pctl_psie),
        .R(\<const0> ));
  FDRE \polyctl_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\polyctl[5]_i_1_n_0 ),
        .Q(pctl_pcie),
        .R(\<const0> ));
  FDRE \polyctl_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\polyctl[7]_i_1_n_0 ),
        .Q(pctl_serr_rst),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h2)) 
    \polysmph[3]_i_4__2 
       (.I0(rst_n),
        .I1(pctl_serr_rst),
        .O(psem_rst_n));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    rd_polyctl_i_2
       (.I0(bcs_poly_n),
        .I1(bcmdr),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(badr[0]),
        .I5(badr[1]),
        .O(rd_polyctl0));
  FDRE rd_polyctl_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_polyctl0),
        .Q(rd_polyctl),
        .R(rd_polysmph2_rg_reg_0));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    rd_polyintm_rg_i_1
       (.I0(bcs_poly_n),
        .I1(bcmdr),
        .I2(badr[2]),
        .I3(badr[0]),
        .I4(badr[1]),
        .I5(badr[3]),
        .O(rd_polyintm_rg0));
  FDRE rd_polyintm_rg_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_polyintm_rg0),
        .Q(rd_polyintm),
        .R(rd_polysmph2_rg_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    rd_polyintr_rg_i_1
       (.I0(bcs_poly_n),
        .I1(bcmdr),
        .I2(badr[2]),
        .I3(badr[0]),
        .I4(badr[1]),
        .I5(badr[3]),
        .O(rd_polyintr_rg0));
  FDRE rd_polyintr_rg_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_polyintr_rg0),
        .Q(rd_polyintr),
        .R(rd_polysmph2_rg_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    rd_polysmph0_rg_i_1
       (.I0(bcs_poly_n),
        .I1(bcmdr),
        .I2(badr[3]),
        .I3(badr[2]),
        .I4(badr[0]),
        .I5(badr[1]),
        .O(rd_polysmph0_rg0));
  FDRE rd_polysmph0_rg_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_polysmph0_rg0),
        .Q(rd_polysmph),
        .R(rd_polysmph2_rg_reg_0));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    rd_polysmph1_rg_i_1
       (.I0(bcs_poly_n),
        .I1(bcmdr),
        .I2(badr[3]),
        .I3(badr[2]),
        .I4(badr[1]),
        .I5(badr[0]),
        .O(rd_polysmph1_rg0));
  FDRE rd_polysmph1_rg_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_polysmph1_rg0),
        .Q(rd_polysmph1_rg_reg_n_0),
        .R(rd_polysmph2_rg_reg_0));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    rd_polysmph2_rg_i_1
       (.I0(bcs_poly_n),
        .I1(bcmdr),
        .I2(badr[2]),
        .I3(badr[0]),
        .I4(badr[3]),
        .I5(badr[1]),
        .O(rd_polysmph2_rg0));
  FDRE rd_polysmph2_rg_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_polysmph2_rg0),
        .Q(rd_polysmph2_rg_reg_n_0),
        .R(rd_polysmph2_rg_reg_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    rd_polysmph3_rg_i_1
       (.I0(bcs_poly_n),
        .I1(bcmdr),
        .I2(badr[2]),
        .I3(badr[0]),
        .I4(badr[1]),
        .I5(badr[3]),
        .O(rd_polysmph3_rg0));
  FDRE rd_polysmph3_rg_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_polysmph3_rg0),
        .Q(rd_polysmph3_rg_reg_n_0),
        .R(rd_polysmph2_rg_reg_0));
endmodule

module poly_fifo4s16
   (plff_empty,
    plff_full_0,
    rd_polysmph3_rg1__0,
    psem_serr,
    plff_read,
    D,
    rst_n_0,
    \mem_rd_reg[3] ,
    \ptr_wr_reg[0] ,
    clk,
    \mem_rd_reg[0] ,
    badr,
    \mem_rd_reg[1] ,
    bdatw,
    p_14_in,
    \polyctl_reg[7] ,
    \polyctl_reg[7]_0 ,
    \polyctl_reg[7]_1 ,
    psem_occupy__2_1,
    Q,
    psem_occupy__2,
    plff_full,
    \bdatr[7]_INST_0_i_1 ,
    \polysmph_reg[3] ,
    rst_n,
    pctl_serr_rst,
    psem_read);
  output plff_empty;
  output plff_full_0;
  output rd_polysmph3_rg1__0;
  output psem_serr;
  output plff_read;
  output [0:0]D;
  output rst_n_0;
  output [3:0]\mem_rd_reg[3] ;
  input \ptr_wr_reg[0] ;
  input clk;
  input \mem_rd_reg[0] ;
  input [3:0]badr;
  input \mem_rd_reg[1] ;
  input [7:0]bdatw;
  input p_14_in;
  input \polyctl_reg[7] ;
  input \polyctl_reg[7]_0 ;
  input \polyctl_reg[7]_1 ;
  input psem_occupy__2_1;
  input [1:0]Q;
  input psem_occupy__2;
  input plff_full;
  input [0:0]\bdatr[7]_INST_0_i_1 ;
  input \polysmph_reg[3] ;
  input rst_n;
  input pctl_serr_rst;
  input psem_read;

  wire [0:0]D;
  wire [1:0]Q;
  wire [3:0]badr;
  wire [0:0]\bdatr[7]_INST_0_i_1 ;
  wire [7:0]bdatw;
  wire clk;
  wire frdc_n_1;
  wire frdc_n_2;
  wire frdc_n_3;
  wire frdc_n_4;
  wire frdc_n_5;
  wire fwrc_n_1;
  wire fwrc_n_2;
  wire fwrc_n_3;
  wire fwrc_n_4;
  wire fwrc_n_5;
  wire fwrc_n_8;
  wire \mem_rd_reg[0] ;
  wire \mem_rd_reg[1] ;
  wire [3:0]\mem_rd_reg[3] ;
  wire p_14_in;
  wire pctl_serr_rst;
  wire plff_empty;
  wire plff_full;
  wire plff_full_0;
  wire plff_read;
  wire \polyctl_reg[7] ;
  wire \polyctl_reg[7]_0 ;
  wire \polyctl_reg[7]_1 ;
  wire \polysmph_reg[3] ;
  wire psem_occupy__2;
  wire psem_occupy__2_1;
  wire psem_read;
  wire psem_serr;
  wire \ptr_wr_reg[0] ;
  wire rd_polysmph3_rg1__0;
  wire rst_n;
  wire rst_n_0;

  poly_fifo4s16_frdc frdc
       (.D(D),
        .Q({frdc_n_1,frdc_n_2,frdc_n_3,frdc_n_4}),
        .clk(clk),
        .empty_rd_reg_0(fwrc_n_8),
        .plff_empty(plff_empty),
        .psem_occupy__2_1(psem_occupy__2_1),
        .\ptr_rd_reg[0]_0 (\mem_rd_reg[0] ),
        .\ptr_rd_reg[1]_0 (frdc_n_5),
        .\ptr_rd_reg[3]_0 (\ptr_wr_reg[0] ),
        .\stat_reg[0] (plff_full_0),
        .\stat_reg[0]_0 (Q));
  poly_fifo4s16_fwrc fwrc
       (.I33(fwrc_n_5),
        .Q({frdc_n_1,frdc_n_2,frdc_n_3,frdc_n_4}),
        .badr(badr),
        .\bdatr[7]_INST_0_i_1_0 (\bdatr[7]_INST_0_i_1 ),
        .bdatw(bdatw[7:4]),
        .clk(clk),
        .empty_rd_reg(frdc_n_5),
        .empty_rd_reg_0(\mem_rd_reg[0] ),
        .full_wr_reg_0(plff_full_0),
        .\mem_rd_reg[1] (\mem_rd_reg[1] ),
        .p_14_in(p_14_in),
        .plff_empty(plff_empty),
        .plff_full(plff_full),
        .plff_read(plff_read),
        .\polyctl_reg[7] (\polyctl_reg[7] ),
        .\polyctl_reg[7]_0 (\polyctl_reg[7]_0 ),
        .\polyctl_reg[7]_1 (\polyctl_reg[7]_1 ),
        .psem_occupy__2(psem_occupy__2),
        .psem_occupy__2_1(psem_occupy__2_1),
        .psem_read_reg(Q),
        .psem_serr(psem_serr),
        .\ptr_wr_reg[0]_0 (\ptr_wr_reg[0] ),
        .\ptr_wr_reg[2]_0 (fwrc_n_8),
        .\ptr_wr_reg[3]_0 ({fwrc_n_1,fwrc_n_2,fwrc_n_3,fwrc_n_4}),
        .rd_polysmph3_rg1__0(rd_polysmph3_rg1__0));
  poly_fifo4s16_lram lram
       (.I33(fwrc_n_5),
        .I34({fwrc_n_1,fwrc_n_2,fwrc_n_3,fwrc_n_4}),
        .Q({frdc_n_1,frdc_n_2,frdc_n_3,frdc_n_4}),
        .badr(badr),
        .bdatw(bdatw[3:0]),
        .clk(clk),
        .\mem_rd_reg[0]_0 (\mem_rd_reg[0] ),
        .\mem_rd_reg[1]_0 (\mem_rd_reg[1] ),
        .\mem_rd_reg[3]_0 (\mem_rd_reg[3] ),
        .pctl_serr_rst(pctl_serr_rst),
        .\polysmph_reg[3] (\polysmph_reg[3] ),
        .psem_occupy__2_1(psem_occupy__2_1),
        .psem_read(psem_read),
        .rst_n(rst_n),
        .rst_n_0(rst_n_0));
endmodule

(* ORIG_REF_NAME = "poly_fifo4s16" *) 
module poly_fifo4s16_13
   (plff_empty,
    full_wr_reg,
    .bdatw_6_sp_1(bdatw_6_sn_1),
    rd_polysmph0_rg1__2,
    plff_read,
    D,
    rst_n_0,
    \mem_rd_reg[3] ,
    \ptr_wr_reg[0] ,
    clk,
    \mem_rd_reg[0] ,
    badr,
    bdatw,
    p_14_in,
    \polysmph_reg[3] ,
    Q,
    \polysmph_reg[3]_0 ,
    rst_n,
    pctl_serr_rst,
    psem_read);
  output plff_empty;
  output full_wr_reg;
  output rd_polysmph0_rg1__2;
  output plff_read;
  output [0:0]D;
  output rst_n_0;
  output [3:0]\mem_rd_reg[3] ;
  input \ptr_wr_reg[0] ;
  input clk;
  input \mem_rd_reg[0] ;
  input [3:0]badr;
  input [7:0]bdatw;
  input p_14_in;
  input \polysmph_reg[3] ;
  input [1:0]Q;
  input \polysmph_reg[3]_0 ;
  input rst_n;
  input pctl_serr_rst;
  input psem_read;
  output bdatw_6_sn_1;

  wire [0:0]D;
  wire [1:0]Q;
  wire [3:0]adr_rd;
  wire [3:0]adr_wr;
  wire [3:0]badr;
  wire [7:0]bdatw;
  wire bdatw_6_sn_1;
  wire clk;
  wire frdc_n_5;
  wire full_wr_reg;
  wire fwrc_n_5;
  wire fwrc_n_7;
  wire \mem_rd_reg[0] ;
  wire [3:0]\mem_rd_reg[3] ;
  wire p_14_in;
  wire pctl_serr_rst;
  wire plff_empty;
  wire plff_read;
  wire \polysmph_reg[3] ;
  wire \polysmph_reg[3]_0 ;
  wire psem_read;
  wire \ptr_wr_reg[0] ;
  wire rd_polysmph0_rg1__2;
  wire rst_n;
  wire rst_n_0;

  poly_fifo4s16_frdc_15 frdc
       (.D(D),
        .Q(adr_rd),
        .clk(clk),
        .empty_rd_reg_0(fwrc_n_7),
        .plff_empty(plff_empty),
        .\ptr_rd_reg[0]_0 (\mem_rd_reg[0] ),
        .\ptr_rd_reg[1]_0 (frdc_n_5),
        .\ptr_rd_reg[3]_0 (\ptr_wr_reg[0] ),
        .\stat_reg[0] (\polysmph_reg[3] ),
        .\stat_reg[0]_0 (full_wr_reg),
        .\stat_reg[0]_1 (Q));
  poly_fifo4s16_fwrc_16 fwrc
       (.I22(fwrc_n_5),
        .Q(adr_rd),
        .badr(badr),
        .bdatw(bdatw[7:4]),
        .clk(clk),
        .empty_rd_reg(frdc_n_5),
        .empty_rd_reg_0(\mem_rd_reg[0] ),
        .full_wr_reg_0(full_wr_reg),
        .\mem_rd_reg[1] (bdatw_6_sn_1),
        .p_14_in(p_14_in),
        .plff_empty(plff_empty),
        .plff_read(plff_read),
        .psem_read_reg(\polysmph_reg[3] ),
        .psem_read_reg_0(Q),
        .\ptr_wr_reg[0]_0 (\ptr_wr_reg[0] ),
        .\ptr_wr_reg[2]_0 (fwrc_n_7),
        .\ptr_wr_reg[3]_0 (adr_wr),
        .rd_polysmph0_rg1__2(rd_polysmph0_rg1__2));
  poly_fifo4s16_lram_17 lram
       (.I22(fwrc_n_5),
        .I23(adr_wr),
        .Q(adr_rd),
        .badr(badr),
        .bdatw(bdatw),
        .bdatw_6_sp_1(bdatw_6_sn_1),
        .clk(clk),
        .\mem_rd_reg[0]_0 (\mem_rd_reg[0] ),
        .\mem_rd_reg[3]_0 (\mem_rd_reg[3] ),
        .p_14_in(p_14_in),
        .pctl_serr_rst(pctl_serr_rst),
        .\polysmph_reg[3] (\polysmph_reg[3]_0 ),
        .\polysmph_reg[3]_0 (\polysmph_reg[3] ),
        .psem_read(psem_read),
        .rst_n(rst_n),
        .rst_n_0(rst_n_0));
endmodule

(* ORIG_REF_NAME = "poly_fifo4s16" *) 
module poly_fifo4s16_3
   (plff_empty,
    full_wr_reg,
    rd_polysmph2_rg1__2,
    plff_read,
    D,
    rst_n_0,
    \mem_rd_reg[3] ,
    \ptr_wr_reg[0] ,
    clk,
    \mem_rd_reg[0] ,
    badr,
    \mem_rd_reg[1] ,
    bdatw,
    p_14_in,
    \polysmph_reg[3] ,
    Q,
    \polysmph_reg[3]_0 ,
    rst_n,
    pctl_serr_rst,
    psem_read);
  output plff_empty;
  output full_wr_reg;
  output rd_polysmph2_rg1__2;
  output plff_read;
  output [0:0]D;
  output rst_n_0;
  output [3:0]\mem_rd_reg[3] ;
  input \ptr_wr_reg[0] ;
  input clk;
  input \mem_rd_reg[0] ;
  input [3:0]badr;
  input \mem_rd_reg[1] ;
  input [7:0]bdatw;
  input p_14_in;
  input \polysmph_reg[3] ;
  input [1:0]Q;
  input \polysmph_reg[3]_0 ;
  input rst_n;
  input pctl_serr_rst;
  input psem_read;

  wire [0:0]D;
  wire [1:0]Q;
  wire [3:0]badr;
  wire [7:0]bdatw;
  wire clk;
  wire frdc_n_1;
  wire frdc_n_2;
  wire frdc_n_3;
  wire frdc_n_4;
  wire frdc_n_5;
  wire full_wr_reg;
  wire fwrc_n_1;
  wire fwrc_n_2;
  wire fwrc_n_3;
  wire fwrc_n_4;
  wire fwrc_n_5;
  wire fwrc_n_7;
  wire \mem_rd_reg[0] ;
  wire \mem_rd_reg[1] ;
  wire [3:0]\mem_rd_reg[3] ;
  wire p_14_in;
  wire pctl_serr_rst;
  wire plff_empty;
  wire plff_read;
  wire \polysmph_reg[3] ;
  wire \polysmph_reg[3]_0 ;
  wire psem_read;
  wire \ptr_wr_reg[0] ;
  wire rd_polysmph2_rg1__2;
  wire rst_n;
  wire rst_n_0;

  poly_fifo4s16_frdc_5 frdc
       (.D(D),
        .Q({frdc_n_1,frdc_n_2,frdc_n_3,frdc_n_4}),
        .clk(clk),
        .empty_rd_reg_0(fwrc_n_7),
        .plff_empty(plff_empty),
        .\ptr_rd_reg[0]_0 (\mem_rd_reg[0] ),
        .\ptr_rd_reg[1]_0 (frdc_n_5),
        .\ptr_rd_reg[3]_0 (\ptr_wr_reg[0] ),
        .\stat_reg[0] (\polysmph_reg[3] ),
        .\stat_reg[0]_0 (full_wr_reg),
        .\stat_reg[0]_1 (Q));
  poly_fifo4s16_fwrc_6 fwrc
       (.I29(fwrc_n_5),
        .Q({frdc_n_1,frdc_n_2,frdc_n_3,frdc_n_4}),
        .badr(badr),
        .bdatw(bdatw[7:4]),
        .clk(clk),
        .empty_rd_reg(frdc_n_5),
        .empty_rd_reg_0(\mem_rd_reg[0] ),
        .full_wr_reg_0(full_wr_reg),
        .\mem_rd_reg[1] (\mem_rd_reg[1] ),
        .p_14_in(p_14_in),
        .plff_empty(plff_empty),
        .plff_read(plff_read),
        .psem_read_reg(\polysmph_reg[3] ),
        .psem_read_reg_0(Q),
        .\ptr_wr_reg[0]_0 (\ptr_wr_reg[0] ),
        .\ptr_wr_reg[2]_0 (fwrc_n_7),
        .\ptr_wr_reg[3]_0 ({fwrc_n_1,fwrc_n_2,fwrc_n_3,fwrc_n_4}),
        .rd_polysmph2_rg1__2(rd_polysmph2_rg1__2));
  poly_fifo4s16_lram_7 lram
       (.I29(fwrc_n_5),
        .I30({fwrc_n_1,fwrc_n_2,fwrc_n_3,fwrc_n_4}),
        .Q({frdc_n_1,frdc_n_2,frdc_n_3,frdc_n_4}),
        .badr(badr),
        .bdatw(bdatw[3:0]),
        .clk(clk),
        .\mem_rd_reg[0]_0 (\mem_rd_reg[0] ),
        .\mem_rd_reg[1]_0 (\mem_rd_reg[1] ),
        .\mem_rd_reg[3]_0 (\mem_rd_reg[3] ),
        .pctl_serr_rst(pctl_serr_rst),
        .\polysmph_reg[3] (\polysmph_reg[3]_0 ),
        .\polysmph_reg[3]_0 (\polysmph_reg[3] ),
        .psem_read(psem_read),
        .rst_n(rst_n),
        .rst_n_0(rst_n_0));
endmodule

(* ORIG_REF_NAME = "poly_fifo4s16" *) 
module poly_fifo4s16_8
   (plff_empty,
    plff_full_0,
    rd_polysmph1_rg1__1,
    plff_read,
    full_wr_reg,
    D,
    rst_n_0,
    \mem_rd_reg[3] ,
    \ptr_wr_reg[0] ,
    clk,
    \mem_rd_reg[0] ,
    badr,
    \mem_rd_reg[1] ,
    bdatw,
    p_14_in,
    psem_occupy__2_1,
    Q,
    psem_occupy__2,
    plff_full,
    \bdatr[7]_INST_0_i_1 ,
    \polysmph_reg[3] ,
    rst_n,
    pctl_serr_rst,
    psem_read);
  output plff_empty;
  output plff_full_0;
  output rd_polysmph1_rg1__1;
  output plff_read;
  output full_wr_reg;
  output [0:0]D;
  output rst_n_0;
  output [3:0]\mem_rd_reg[3] ;
  input \ptr_wr_reg[0] ;
  input clk;
  input \mem_rd_reg[0] ;
  input [3:0]badr;
  input \mem_rd_reg[1] ;
  input [7:0]bdatw;
  input p_14_in;
  input psem_occupy__2_1;
  input [1:0]Q;
  input psem_occupy__2;
  input plff_full;
  input [0:0]\bdatr[7]_INST_0_i_1 ;
  input \polysmph_reg[3] ;
  input rst_n;
  input pctl_serr_rst;
  input psem_read;

  wire [0:0]D;
  wire [1:0]Q;
  wire [3:0]badr;
  wire [0:0]\bdatr[7]_INST_0_i_1 ;
  wire [7:0]bdatw;
  wire clk;
  wire frdc_n_1;
  wire frdc_n_2;
  wire frdc_n_3;
  wire frdc_n_4;
  wire frdc_n_5;
  wire full_wr_reg;
  wire fwrc_n_1;
  wire fwrc_n_2;
  wire fwrc_n_3;
  wire fwrc_n_4;
  wire fwrc_n_5;
  wire fwrc_n_7;
  wire \mem_rd_reg[0] ;
  wire \mem_rd_reg[1] ;
  wire [3:0]\mem_rd_reg[3] ;
  wire p_14_in;
  wire pctl_serr_rst;
  wire plff_empty;
  wire plff_full;
  wire plff_full_0;
  wire plff_read;
  wire \polysmph_reg[3] ;
  wire psem_occupy__2;
  wire psem_occupy__2_1;
  wire psem_read;
  wire \ptr_wr_reg[0] ;
  wire rd_polysmph1_rg1__1;
  wire rst_n;
  wire rst_n_0;

  poly_fifo4s16_frdc_10 frdc
       (.D(D),
        .Q({frdc_n_1,frdc_n_2,frdc_n_3,frdc_n_4}),
        .clk(clk),
        .empty_rd_reg_0(fwrc_n_7),
        .plff_empty(plff_empty),
        .psem_occupy__2_1(psem_occupy__2_1),
        .\ptr_rd_reg[0]_0 (\mem_rd_reg[0] ),
        .\ptr_rd_reg[1]_0 (frdc_n_5),
        .\ptr_rd_reg[3]_0 (\ptr_wr_reg[0] ),
        .\stat_reg[0] (plff_full_0),
        .\stat_reg[0]_0 (Q));
  poly_fifo4s16_fwrc_11 fwrc
       (.I25(fwrc_n_5),
        .Q({frdc_n_1,frdc_n_2,frdc_n_3,frdc_n_4}),
        .badr(badr),
        .\bdatr[7]_INST_0_i_1 (\bdatr[7]_INST_0_i_1 ),
        .bdatw(bdatw[7:4]),
        .clk(clk),
        .empty_rd_reg(frdc_n_5),
        .empty_rd_reg_0(\mem_rd_reg[0] ),
        .full_wr_reg_0(plff_full_0),
        .full_wr_reg_1(full_wr_reg),
        .\mem_rd_reg[1] (\mem_rd_reg[1] ),
        .p_14_in(p_14_in),
        .plff_empty(plff_empty),
        .plff_full(plff_full),
        .plff_read(plff_read),
        .psem_occupy__2(psem_occupy__2),
        .psem_occupy__2_1(psem_occupy__2_1),
        .psem_read_reg(Q),
        .\ptr_wr_reg[0]_0 (\ptr_wr_reg[0] ),
        .\ptr_wr_reg[2]_0 (fwrc_n_7),
        .\ptr_wr_reg[3]_0 ({fwrc_n_1,fwrc_n_2,fwrc_n_3,fwrc_n_4}),
        .rd_polysmph1_rg1__1(rd_polysmph1_rg1__1));
  poly_fifo4s16_lram_12 lram
       (.I25(fwrc_n_5),
        .I26({fwrc_n_1,fwrc_n_2,fwrc_n_3,fwrc_n_4}),
        .Q({frdc_n_1,frdc_n_2,frdc_n_3,frdc_n_4}),
        .badr(badr),
        .bdatw(bdatw[3:0]),
        .clk(clk),
        .\mem_rd_reg[0]_0 (\mem_rd_reg[0] ),
        .\mem_rd_reg[1]_0 (\mem_rd_reg[1] ),
        .\mem_rd_reg[3]_0 (\mem_rd_reg[3] ),
        .pctl_serr_rst(pctl_serr_rst),
        .\polysmph_reg[3] (\polysmph_reg[3] ),
        .psem_occupy__2_1(psem_occupy__2_1),
        .psem_read(psem_read),
        .rst_n(rst_n),
        .rst_n_0(rst_n_0));
endmodule

module poly_fifo4s16_frdc
   (plff_empty,
    Q,
    \ptr_rd_reg[1]_0 ,
    D,
    \ptr_rd_reg[3]_0 ,
    empty_rd_reg_0,
    clk,
    \ptr_rd_reg[0]_0 ,
    psem_occupy__2_1,
    \stat_reg[0] ,
    \stat_reg[0]_0 );
  output plff_empty;
  output [3:0]Q;
  output \ptr_rd_reg[1]_0 ;
  output [0:0]D;
  input \ptr_rd_reg[3]_0 ;
  input empty_rd_reg_0;
  input clk;
  input \ptr_rd_reg[0]_0 ;
  input psem_occupy__2_1;
  input \stat_reg[0] ;
  input [1:0]\stat_reg[0]_0 ;

  wire \<const1> ;
  wire [0:0]D;
  wire [3:0]Q;
  wire clk;
  wire empty_rd_reg_0;
  wire plff_empty;
  wire psem_occupy__2_1;
  wire \ptr_rd[0]_i_1__0_n_0 ;
  wire \ptr_rd[1]_i_1__0_n_0 ;
  wire \ptr_rd[2]_i_1__0_n_0 ;
  wire \ptr_rd[3]_i_1__0_n_0 ;
  wire \ptr_rd_reg[0]_0 ;
  wire \ptr_rd_reg[1]_0 ;
  wire \ptr_rd_reg[3]_0 ;
  wire \stat_reg[0] ;
  wire [1:0]\stat_reg[0]_0 ;

  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h80)) 
    empty_rd_i_3__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\ptr_rd_reg[0]_0 ),
        .O(\ptr_rd_reg[1]_0 ));
  FDSE empty_rd_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(empty_rd_reg_0),
        .Q(plff_empty),
        .S(\ptr_rd_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ptr_rd[0]_i_1__0 
       (.I0(Q[0]),
        .I1(\ptr_rd_reg[0]_0 ),
        .O(\ptr_rd[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \ptr_rd[1]_i_1__0 
       (.I0(Q[0]),
        .I1(\ptr_rd_reg[0]_0 ),
        .I2(Q[1]),
        .O(\ptr_rd[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \ptr_rd[2]_i_1__0 
       (.I0(\ptr_rd_reg[0]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\ptr_rd[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ptr_rd[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\ptr_rd_reg[0]_0 ),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\ptr_rd[3]_i_1__0_n_0 ));
  FDRE \ptr_rd_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_rd[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(\ptr_rd_reg[3]_0 ));
  FDRE \ptr_rd_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_rd[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\ptr_rd_reg[3]_0 ));
  FDRE \ptr_rd_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_rd[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\ptr_rd_reg[3]_0 ));
  FDRE \ptr_rd_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_rd[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\ptr_rd_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h0DFF0005)) 
    \stat[0]_i_1__0 
       (.I0(plff_empty),
        .I1(psem_occupy__2_1),
        .I2(\stat_reg[0] ),
        .I3(\stat_reg[0]_0 [1]),
        .I4(\stat_reg[0]_0 [0]),
        .O(D));
endmodule

(* ORIG_REF_NAME = "poly_fifo4s16_frdc" *) 
module poly_fifo4s16_frdc_10
   (plff_empty,
    Q,
    \ptr_rd_reg[1]_0 ,
    D,
    \ptr_rd_reg[3]_0 ,
    empty_rd_reg_0,
    clk,
    \ptr_rd_reg[0]_0 ,
    psem_occupy__2_1,
    \stat_reg[0] ,
    \stat_reg[0]_0 );
  output plff_empty;
  output [3:0]Q;
  output \ptr_rd_reg[1]_0 ;
  output [0:0]D;
  input \ptr_rd_reg[3]_0 ;
  input empty_rd_reg_0;
  input clk;
  input \ptr_rd_reg[0]_0 ;
  input psem_occupy__2_1;
  input \stat_reg[0] ;
  input [1:0]\stat_reg[0]_0 ;

  wire \<const1> ;
  wire [0:0]D;
  wire [3:0]Q;
  wire clk;
  wire empty_rd_reg_0;
  wire plff_empty;
  wire psem_occupy__2_1;
  wire \ptr_rd[0]_i_1__2_n_0 ;
  wire \ptr_rd[1]_i_1__2_n_0 ;
  wire \ptr_rd[2]_i_1__2_n_0 ;
  wire \ptr_rd[3]_i_1__2_n_0 ;
  wire \ptr_rd_reg[0]_0 ;
  wire \ptr_rd_reg[1]_0 ;
  wire \ptr_rd_reg[3]_0 ;
  wire \stat_reg[0] ;
  wire [1:0]\stat_reg[0]_0 ;

  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h80)) 
    empty_rd_i_3__2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\ptr_rd_reg[0]_0 ),
        .O(\ptr_rd_reg[1]_0 ));
  FDSE empty_rd_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(empty_rd_reg_0),
        .Q(plff_empty),
        .S(\ptr_rd_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ptr_rd[0]_i_1__2 
       (.I0(Q[0]),
        .I1(\ptr_rd_reg[0]_0 ),
        .O(\ptr_rd[0]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \ptr_rd[1]_i_1__2 
       (.I0(Q[0]),
        .I1(\ptr_rd_reg[0]_0 ),
        .I2(Q[1]),
        .O(\ptr_rd[1]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \ptr_rd[2]_i_1__2 
       (.I0(\ptr_rd_reg[0]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\ptr_rd[2]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ptr_rd[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\ptr_rd_reg[0]_0 ),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\ptr_rd[3]_i_1__2_n_0 ));
  FDRE \ptr_rd_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_rd[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .R(\ptr_rd_reg[3]_0 ));
  FDRE \ptr_rd_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_rd[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\ptr_rd_reg[3]_0 ));
  FDRE \ptr_rd_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_rd[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\ptr_rd_reg[3]_0 ));
  FDRE \ptr_rd_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_rd[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\ptr_rd_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h0DFF0005)) 
    \stat[0]_i_1__2 
       (.I0(plff_empty),
        .I1(psem_occupy__2_1),
        .I2(\stat_reg[0] ),
        .I3(\stat_reg[0]_0 [1]),
        .I4(\stat_reg[0]_0 [0]),
        .O(D));
endmodule

(* ORIG_REF_NAME = "poly_fifo4s16_frdc" *) 
module poly_fifo4s16_frdc_15
   (plff_empty,
    Q,
    \ptr_rd_reg[1]_0 ,
    D,
    \ptr_rd_reg[3]_0 ,
    empty_rd_reg_0,
    clk,
    \ptr_rd_reg[0]_0 ,
    \stat_reg[0] ,
    \stat_reg[0]_0 ,
    \stat_reg[0]_1 );
  output plff_empty;
  output [3:0]Q;
  output \ptr_rd_reg[1]_0 ;
  output [0:0]D;
  input \ptr_rd_reg[3]_0 ;
  input empty_rd_reg_0;
  input clk;
  input \ptr_rd_reg[0]_0 ;
  input \stat_reg[0] ;
  input \stat_reg[0]_0 ;
  input [1:0]\stat_reg[0]_1 ;

  wire \<const1> ;
  wire [0:0]D;
  wire [3:0]Q;
  wire clk;
  wire empty_rd_reg_0;
  wire plff_empty;
  wire [3:0]ptr_rd0;
  wire \ptr_rd_reg[0]_0 ;
  wire \ptr_rd_reg[1]_0 ;
  wire \ptr_rd_reg[3]_0 ;
  wire \stat_reg[0] ;
  wire \stat_reg[0]_0 ;
  wire [1:0]\stat_reg[0]_1 ;

  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h80)) 
    empty_rd_i_4
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\ptr_rd_reg[0]_0 ),
        .O(\ptr_rd_reg[1]_0 ));
  FDSE empty_rd_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(empty_rd_reg_0),
        .Q(plff_empty),
        .S(\ptr_rd_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ptr_rd[0]_i_1 
       (.I0(Q[0]),
        .I1(\ptr_rd_reg[0]_0 ),
        .O(ptr_rd0[0]));
  LUT3 #(
    .INIT(8'h78)) 
    \ptr_rd[1]_i_1 
       (.I0(Q[0]),
        .I1(\ptr_rd_reg[0]_0 ),
        .I2(Q[1]),
        .O(ptr_rd0[1]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \ptr_rd[2]_i_1 
       (.I0(\ptr_rd_reg[0]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(ptr_rd0[2]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ptr_rd[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\ptr_rd_reg[0]_0 ),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(ptr_rd0[3]));
  FDRE \ptr_rd_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ptr_rd0[0]),
        .Q(Q[0]),
        .R(\ptr_rd_reg[3]_0 ));
  FDRE \ptr_rd_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ptr_rd0[1]),
        .Q(Q[1]),
        .R(\ptr_rd_reg[3]_0 ));
  FDRE \ptr_rd_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ptr_rd0[2]),
        .Q(Q[2]),
        .R(\ptr_rd_reg[3]_0 ));
  FDRE \ptr_rd_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ptr_rd0[3]),
        .Q(Q[3]),
        .R(\ptr_rd_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h0DFF0005)) 
    \stat[0]_i_1 
       (.I0(plff_empty),
        .I1(\stat_reg[0] ),
        .I2(\stat_reg[0]_0 ),
        .I3(\stat_reg[0]_1 [1]),
        .I4(\stat_reg[0]_1 [0]),
        .O(D));
endmodule

(* ORIG_REF_NAME = "poly_fifo4s16_frdc" *) 
module poly_fifo4s16_frdc_5
   (plff_empty,
    Q,
    \ptr_rd_reg[1]_0 ,
    D,
    \ptr_rd_reg[3]_0 ,
    empty_rd_reg_0,
    clk,
    \ptr_rd_reg[0]_0 ,
    \stat_reg[0] ,
    \stat_reg[0]_0 ,
    \stat_reg[0]_1 );
  output plff_empty;
  output [3:0]Q;
  output \ptr_rd_reg[1]_0 ;
  output [0:0]D;
  input \ptr_rd_reg[3]_0 ;
  input empty_rd_reg_0;
  input clk;
  input \ptr_rd_reg[0]_0 ;
  input \stat_reg[0] ;
  input \stat_reg[0]_0 ;
  input [1:0]\stat_reg[0]_1 ;

  wire \<const1> ;
  wire [0:0]D;
  wire [3:0]Q;
  wire clk;
  wire empty_rd_reg_0;
  wire plff_empty;
  wire \ptr_rd[0]_i_1__1_n_0 ;
  wire \ptr_rd[1]_i_1__1_n_0 ;
  wire \ptr_rd[2]_i_1__1_n_0 ;
  wire \ptr_rd[3]_i_1__1_n_0 ;
  wire \ptr_rd_reg[0]_0 ;
  wire \ptr_rd_reg[1]_0 ;
  wire \ptr_rd_reg[3]_0 ;
  wire \stat_reg[0] ;
  wire \stat_reg[0]_0 ;
  wire [1:0]\stat_reg[0]_1 ;

  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h80)) 
    empty_rd_i_3__1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\ptr_rd_reg[0]_0 ),
        .O(\ptr_rd_reg[1]_0 ));
  FDSE empty_rd_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(empty_rd_reg_0),
        .Q(plff_empty),
        .S(\ptr_rd_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ptr_rd[0]_i_1__1 
       (.I0(Q[0]),
        .I1(\ptr_rd_reg[0]_0 ),
        .O(\ptr_rd[0]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \ptr_rd[1]_i_1__1 
       (.I0(Q[0]),
        .I1(\ptr_rd_reg[0]_0 ),
        .I2(Q[1]),
        .O(\ptr_rd[1]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \ptr_rd[2]_i_1__1 
       (.I0(\ptr_rd_reg[0]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\ptr_rd[2]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ptr_rd[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\ptr_rd_reg[0]_0 ),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\ptr_rd[3]_i_1__1_n_0 ));
  FDRE \ptr_rd_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_rd[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\ptr_rd_reg[3]_0 ));
  FDRE \ptr_rd_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_rd[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\ptr_rd_reg[3]_0 ));
  FDRE \ptr_rd_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_rd[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\ptr_rd_reg[3]_0 ));
  FDRE \ptr_rd_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_rd[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\ptr_rd_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h0DFF0005)) 
    \stat[0]_i_1__1 
       (.I0(plff_empty),
        .I1(\stat_reg[0] ),
        .I2(\stat_reg[0]_0 ),
        .I3(\stat_reg[0]_1 [1]),
        .I4(\stat_reg[0]_1 [0]),
        .O(D));
endmodule

module poly_fifo4s16_fwrc
   (full_wr_reg_0,
    \ptr_wr_reg[3]_0 ,
    I33,
    rd_polysmph3_rg1__0,
    psem_serr,
    \ptr_wr_reg[2]_0 ,
    plff_read,
    \ptr_wr_reg[0]_0 ,
    clk,
    Q,
    badr,
    \mem_rd_reg[1] ,
    p_14_in,
    bdatw,
    \polyctl_reg[7] ,
    \polyctl_reg[7]_0 ,
    \polyctl_reg[7]_1 ,
    empty_rd_reg,
    empty_rd_reg_0,
    psem_occupy__2_1,
    psem_read_reg,
    plff_empty,
    psem_occupy__2,
    plff_full,
    \bdatr[7]_INST_0_i_1_0 );
  output full_wr_reg_0;
  output [3:0]\ptr_wr_reg[3]_0 ;
  output I33;
  output rd_polysmph3_rg1__0;
  output psem_serr;
  output \ptr_wr_reg[2]_0 ;
  output plff_read;
  input \ptr_wr_reg[0]_0 ;
  input clk;
  input [3:0]Q;
  input [3:0]badr;
  input \mem_rd_reg[1] ;
  input p_14_in;
  input [3:0]bdatw;
  input \polyctl_reg[7] ;
  input \polyctl_reg[7]_0 ;
  input \polyctl_reg[7]_1 ;
  input empty_rd_reg;
  input empty_rd_reg_0;
  input psem_occupy__2_1;
  input [1:0]psem_read_reg;
  input plff_empty;
  input psem_occupy__2;
  input plff_full;
  input [0:0]\bdatr[7]_INST_0_i_1_0 ;

  wire \<const1> ;
  wire I33;
  wire [3:0]Q;
  wire [3:0]badr;
  wire [0:0]\bdatr[7]_INST_0_i_1_0 ;
  wire \bdatr[7]_INST_0_i_2_n_0 ;
  wire [3:0]bdatw;
  wire clk;
  wire empty_rd_i_2__0_n_0;
  wire empty_rd_reg;
  wire empty_rd_reg_0;
  wire full_wr_i_1_n_0;
  wire full_wr_i_2_n_0;
  wire full_wr_i_3_n_0;
  wire full_wr_reg_0;
  wire \mem_rd_reg[1] ;
  wire p_14_in;
  wire plff_empty;
  wire plff_full;
  wire plff_read;
  wire plff_writ__0;
  wire \polyctl_reg[7] ;
  wire \polyctl_reg[7]_0 ;
  wire \polyctl_reg[7]_1 ;
  wire psem_occupy__2;
  wire psem_occupy__2_1;
  wire [1:0]psem_read_reg;
  wire psem_serr;
  wire \ptr_wr[0]_i_1_n_0 ;
  wire \ptr_wr[1]_i_1_n_0 ;
  wire \ptr_wr[2]_i_1_n_0 ;
  wire \ptr_wr[3]_i_1_n_0 ;
  wire \ptr_wr_reg[0]_0 ;
  wire \ptr_wr_reg[2]_0 ;
  wire [3:0]\ptr_wr_reg[3]_0 ;
  wire rd_polysmph3_rg1__0;

  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(\bdatr[7]_INST_0_i_2_n_0 ),
        .I1(\polyctl_reg[7] ),
        .I2(\polyctl_reg[7]_0 ),
        .I3(\polyctl_reg[7]_1 ),
        .O(psem_serr));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \bdatr[7]_INST_0_i_2 
       (.I0(psem_occupy__2_1),
        .I1(full_wr_reg_0),
        .I2(psem_read_reg[1]),
        .I3(psem_occupy__2),
        .I4(plff_full),
        .I5(\bdatr[7]_INST_0_i_1_0 ),
        .O(\bdatr[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0480804040080804)) 
    empty_rd_i_1
       (.I0(\ptr_wr_reg[3]_0 [2]),
        .I1(empty_rd_i_2__0_n_0),
        .I2(\ptr_wr_reg[3]_0 [3]),
        .I3(empty_rd_reg),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\ptr_wr_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h06909009)) 
    empty_rd_i_2__0
       (.I0(\ptr_wr_reg[3]_0 [1]),
        .I1(Q[1]),
        .I2(\ptr_wr_reg[3]_0 [0]),
        .I3(Q[0]),
        .I4(empty_rd_reg_0),
        .O(empty_rd_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0014410041000041)) 
    full_wr_i_1
       (.I0(full_wr_i_2_n_0),
        .I1(\ptr_wr[3]_i_1_n_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(full_wr_i_3_n_0),
        .I5(\ptr_wr[2]_i_1_n_0 ),
        .O(full_wr_i_1_n_0));
  LUT6 #(
    .INIT(64'hEF75DFBABAEF75DF)) 
    full_wr_i_2
       (.I0(\ptr_wr_reg[3]_0 [1]),
        .I1(full_wr_reg_0),
        .I2(plff_writ__0),
        .I3(\ptr_wr_reg[3]_0 [0]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(full_wr_i_2_n_0));
  LUT6 #(
    .INIT(64'hF35DF7FF55045D55)) 
    full_wr_i_3
       (.I0(Q[1]),
        .I1(plff_writ__0),
        .I2(full_wr_reg_0),
        .I3(\ptr_wr_reg[3]_0 [0]),
        .I4(Q[0]),
        .I5(\ptr_wr_reg[3]_0 [1]),
        .O(full_wr_i_3_n_0));
  FDRE full_wr_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(full_wr_i_1_n_0),
        .Q(full_wr_reg_0),
        .R(\ptr_wr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    mem_reg_0_15_0_3_i_1
       (.I0(badr[3]),
        .I1(badr[1]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(\mem_rd_reg[1] ),
        .I5(full_wr_reg_0),
        .O(I33));
  LUT4 #(
    .INIT(16'h0800)) 
    \polysmph[3]_i_5 
       (.I0(badr[3]),
        .I1(badr[1]),
        .I2(badr[0]),
        .I3(badr[2]),
        .O(rd_polysmph3_rg1__0));
  LUT5 #(
    .INIT(32'h00100003)) 
    psem_read_i_1__0
       (.I0(psem_occupy__2_1),
        .I1(full_wr_reg_0),
        .I2(psem_read_reg[1]),
        .I3(plff_empty),
        .I4(psem_read_reg[0]),
        .O(plff_read));
  LUT3 #(
    .INIT(8'h9A)) 
    \ptr_wr[0]_i_1 
       (.I0(\ptr_wr_reg[3]_0 [0]),
        .I1(full_wr_reg_0),
        .I2(plff_writ__0),
        .O(\ptr_wr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \ptr_wr[1]_i_1 
       (.I0(\ptr_wr_reg[3]_0 [0]),
        .I1(plff_writ__0),
        .I2(full_wr_reg_0),
        .I3(\ptr_wr_reg[3]_0 [1]),
        .O(\ptr_wr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \ptr_wr[2]_i_1 
       (.I0(full_wr_reg_0),
        .I1(plff_writ__0),
        .I2(\ptr_wr_reg[3]_0 [0]),
        .I3(\ptr_wr_reg[3]_0 [1]),
        .I4(\ptr_wr_reg[3]_0 [2]),
        .O(\ptr_wr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \ptr_wr[3]_i_1 
       (.I0(\ptr_wr_reg[3]_0 [1]),
        .I1(\ptr_wr_reg[3]_0 [0]),
        .I2(plff_writ__0),
        .I3(full_wr_reg_0),
        .I4(\ptr_wr_reg[3]_0 [2]),
        .I5(\ptr_wr_reg[3]_0 [3]),
        .O(\ptr_wr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \ptr_wr[3]_i_2 
       (.I0(p_14_in),
        .I1(bdatw[1]),
        .I2(bdatw[0]),
        .I3(bdatw[3]),
        .I4(bdatw[2]),
        .I5(rd_polysmph3_rg1__0),
        .O(plff_writ__0));
  FDRE \ptr_wr_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_wr[0]_i_1_n_0 ),
        .Q(\ptr_wr_reg[3]_0 [0]),
        .R(\ptr_wr_reg[0]_0 ));
  FDRE \ptr_wr_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_wr[1]_i_1_n_0 ),
        .Q(\ptr_wr_reg[3]_0 [1]),
        .R(\ptr_wr_reg[0]_0 ));
  FDRE \ptr_wr_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_wr[2]_i_1_n_0 ),
        .Q(\ptr_wr_reg[3]_0 [2]),
        .R(\ptr_wr_reg[0]_0 ));
  FDRE \ptr_wr_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_wr[3]_i_1_n_0 ),
        .Q(\ptr_wr_reg[3]_0 [3]),
        .R(\ptr_wr_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "poly_fifo4s16_fwrc" *) 
module poly_fifo4s16_fwrc_11
   (full_wr_reg_0,
    \ptr_wr_reg[3]_0 ,
    I25,
    rd_polysmph1_rg1__1,
    \ptr_wr_reg[2]_0 ,
    plff_read,
    full_wr_reg_1,
    \ptr_wr_reg[0]_0 ,
    clk,
    Q,
    badr,
    \mem_rd_reg[1] ,
    p_14_in,
    bdatw,
    empty_rd_reg,
    empty_rd_reg_0,
    psem_occupy__2_1,
    psem_read_reg,
    plff_empty,
    psem_occupy__2,
    plff_full,
    \bdatr[7]_INST_0_i_1 );
  output full_wr_reg_0;
  output [3:0]\ptr_wr_reg[3]_0 ;
  output I25;
  output rd_polysmph1_rg1__1;
  output \ptr_wr_reg[2]_0 ;
  output plff_read;
  output full_wr_reg_1;
  input \ptr_wr_reg[0]_0 ;
  input clk;
  input [3:0]Q;
  input [3:0]badr;
  input \mem_rd_reg[1] ;
  input p_14_in;
  input [3:0]bdatw;
  input empty_rd_reg;
  input empty_rd_reg_0;
  input psem_occupy__2_1;
  input [1:0]psem_read_reg;
  input plff_empty;
  input psem_occupy__2;
  input plff_full;
  input [0:0]\bdatr[7]_INST_0_i_1 ;

  wire \<const1> ;
  wire I25;
  wire [3:0]Q;
  wire [3:0]badr;
  wire [0:0]\bdatr[7]_INST_0_i_1 ;
  wire [3:0]bdatw;
  wire clk;
  wire empty_rd_i_2__2_n_0;
  wire empty_rd_reg;
  wire empty_rd_reg_0;
  wire full_wr_i_1__1_n_0;
  wire full_wr_i_2__1_n_0;
  wire full_wr_i_3__1_n_0;
  wire full_wr_reg_0;
  wire full_wr_reg_1;
  wire \mem_rd_reg[1] ;
  wire p_14_in;
  wire plff_empty;
  wire plff_full;
  wire plff_read;
  wire plff_writ__0;
  wire psem_occupy__2;
  wire psem_occupy__2_1;
  wire [1:0]psem_read_reg;
  wire \ptr_wr[0]_i_1__1_n_0 ;
  wire \ptr_wr[1]_i_1__1_n_0 ;
  wire \ptr_wr[2]_i_1__1_n_0 ;
  wire \ptr_wr[3]_i_1__1_n_0 ;
  wire \ptr_wr_reg[0]_0 ;
  wire \ptr_wr_reg[2]_0 ;
  wire [3:0]\ptr_wr_reg[3]_0 ;
  wire rd_polysmph1_rg1__1;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \bdatr[7]_INST_0_i_3 
       (.I0(psem_occupy__2_1),
        .I1(full_wr_reg_0),
        .I2(psem_read_reg[1]),
        .I3(psem_occupy__2),
        .I4(plff_full),
        .I5(\bdatr[7]_INST_0_i_1 ),
        .O(full_wr_reg_1));
  LUT6 #(
    .INIT(64'h0480804040080804)) 
    empty_rd_i_1__1
       (.I0(\ptr_wr_reg[3]_0 [2]),
        .I1(empty_rd_i_2__2_n_0),
        .I2(\ptr_wr_reg[3]_0 [3]),
        .I3(empty_rd_reg),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\ptr_wr_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h06909009)) 
    empty_rd_i_2__2
       (.I0(\ptr_wr_reg[3]_0 [1]),
        .I1(Q[1]),
        .I2(\ptr_wr_reg[3]_0 [0]),
        .I3(Q[0]),
        .I4(empty_rd_reg_0),
        .O(empty_rd_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h0014410041000041)) 
    full_wr_i_1__1
       (.I0(full_wr_i_2__1_n_0),
        .I1(\ptr_wr[3]_i_1__1_n_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(full_wr_i_3__1_n_0),
        .I5(\ptr_wr[2]_i_1__1_n_0 ),
        .O(full_wr_i_1__1_n_0));
  LUT6 #(
    .INIT(64'hEF75DFBABAEF75DF)) 
    full_wr_i_2__1
       (.I0(\ptr_wr_reg[3]_0 [1]),
        .I1(full_wr_reg_0),
        .I2(plff_writ__0),
        .I3(\ptr_wr_reg[3]_0 [0]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(full_wr_i_2__1_n_0));
  LUT6 #(
    .INIT(64'hF35DF7FF55045D55)) 
    full_wr_i_3__1
       (.I0(Q[1]),
        .I1(plff_writ__0),
        .I2(full_wr_reg_0),
        .I3(\ptr_wr_reg[3]_0 [0]),
        .I4(Q[0]),
        .I5(\ptr_wr_reg[3]_0 [1]),
        .O(full_wr_i_3__1_n_0));
  FDRE full_wr_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(full_wr_i_1__1_n_0),
        .Q(full_wr_reg_0),
        .R(\ptr_wr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    mem_reg_0_15_0_3_i_1__1
       (.I0(badr[0]),
        .I1(badr[1]),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(\mem_rd_reg[1] ),
        .I5(full_wr_reg_0),
        .O(I25));
  LUT4 #(
    .INIT(16'h0400)) 
    \polysmph[3]_i_5__1 
       (.I0(badr[0]),
        .I1(badr[1]),
        .I2(badr[2]),
        .I3(badr[3]),
        .O(rd_polysmph1_rg1__1));
  LUT5 #(
    .INIT(32'h00100003)) 
    psem_read_i_1__2
       (.I0(psem_occupy__2_1),
        .I1(full_wr_reg_0),
        .I2(psem_read_reg[1]),
        .I3(plff_empty),
        .I4(psem_read_reg[0]),
        .O(plff_read));
  LUT3 #(
    .INIT(8'h9A)) 
    \ptr_wr[0]_i_1__1 
       (.I0(\ptr_wr_reg[3]_0 [0]),
        .I1(full_wr_reg_0),
        .I2(plff_writ__0),
        .O(\ptr_wr[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \ptr_wr[1]_i_1__1 
       (.I0(\ptr_wr_reg[3]_0 [0]),
        .I1(plff_writ__0),
        .I2(full_wr_reg_0),
        .I3(\ptr_wr_reg[3]_0 [1]),
        .O(\ptr_wr[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \ptr_wr[2]_i_1__1 
       (.I0(full_wr_reg_0),
        .I1(plff_writ__0),
        .I2(\ptr_wr_reg[3]_0 [0]),
        .I3(\ptr_wr_reg[3]_0 [1]),
        .I4(\ptr_wr_reg[3]_0 [2]),
        .O(\ptr_wr[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \ptr_wr[3]_i_1__1 
       (.I0(\ptr_wr_reg[3]_0 [1]),
        .I1(\ptr_wr_reg[3]_0 [0]),
        .I2(plff_writ__0),
        .I3(full_wr_reg_0),
        .I4(\ptr_wr_reg[3]_0 [2]),
        .I5(\ptr_wr_reg[3]_0 [3]),
        .O(\ptr_wr[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \ptr_wr[3]_i_2__1 
       (.I0(p_14_in),
        .I1(bdatw[1]),
        .I2(bdatw[0]),
        .I3(bdatw[3]),
        .I4(bdatw[2]),
        .I5(rd_polysmph1_rg1__1),
        .O(plff_writ__0));
  FDRE \ptr_wr_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_wr[0]_i_1__1_n_0 ),
        .Q(\ptr_wr_reg[3]_0 [0]),
        .R(\ptr_wr_reg[0]_0 ));
  FDRE \ptr_wr_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_wr[1]_i_1__1_n_0 ),
        .Q(\ptr_wr_reg[3]_0 [1]),
        .R(\ptr_wr_reg[0]_0 ));
  FDRE \ptr_wr_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_wr[2]_i_1__1_n_0 ),
        .Q(\ptr_wr_reg[3]_0 [2]),
        .R(\ptr_wr_reg[0]_0 ));
  FDRE \ptr_wr_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_wr[3]_i_1__1_n_0 ),
        .Q(\ptr_wr_reg[3]_0 [3]),
        .R(\ptr_wr_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "poly_fifo4s16_fwrc" *) 
module poly_fifo4s16_fwrc_16
   (full_wr_reg_0,
    \ptr_wr_reg[3]_0 ,
    I22,
    rd_polysmph0_rg1__2,
    \ptr_wr_reg[2]_0 ,
    plff_read,
    \ptr_wr_reg[0]_0 ,
    clk,
    Q,
    badr,
    \mem_rd_reg[1] ,
    p_14_in,
    bdatw,
    empty_rd_reg,
    empty_rd_reg_0,
    psem_read_reg,
    psem_read_reg_0,
    plff_empty);
  output full_wr_reg_0;
  output [3:0]\ptr_wr_reg[3]_0 ;
  output I22;
  output rd_polysmph0_rg1__2;
  output \ptr_wr_reg[2]_0 ;
  output plff_read;
  input \ptr_wr_reg[0]_0 ;
  input clk;
  input [3:0]Q;
  input [3:0]badr;
  input \mem_rd_reg[1] ;
  input p_14_in;
  input [3:0]bdatw;
  input empty_rd_reg;
  input empty_rd_reg_0;
  input psem_read_reg;
  input [1:0]psem_read_reg_0;
  input plff_empty;

  wire \<const1> ;
  wire I22;
  wire [3:0]Q;
  wire [3:0]badr;
  wire [3:0]bdatw;
  wire clk;
  wire empty_rd_i_3_n_0;
  wire empty_rd_reg;
  wire empty_rd_reg_0;
  wire full_wr0;
  wire full_wr_i_2__2_n_0;
  wire full_wr_i_3__2_n_0;
  wire full_wr_reg_0;
  wire \mem_rd_reg[1] ;
  wire p_14_in;
  wire plff_empty;
  wire plff_read;
  wire plff_writ__0;
  wire psem_read_reg;
  wire [1:0]psem_read_reg_0;
  wire [3:0]ptr_wr0;
  wire \ptr_wr_reg[0]_0 ;
  wire \ptr_wr_reg[2]_0 ;
  wire [3:0]\ptr_wr_reg[3]_0 ;
  wire rd_polysmph0_rg1__2;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h0480804040080804)) 
    empty_rd_i_2
       (.I0(\ptr_wr_reg[3]_0 [2]),
        .I1(empty_rd_i_3_n_0),
        .I2(\ptr_wr_reg[3]_0 [3]),
        .I3(empty_rd_reg),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\ptr_wr_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h06909009)) 
    empty_rd_i_3
       (.I0(\ptr_wr_reg[3]_0 [1]),
        .I1(Q[1]),
        .I2(\ptr_wr_reg[3]_0 [0]),
        .I3(Q[0]),
        .I4(empty_rd_reg_0),
        .O(empty_rd_i_3_n_0));
  LUT6 #(
    .INIT(64'h0014410041000041)) 
    full_wr_i_1__2
       (.I0(full_wr_i_2__2_n_0),
        .I1(ptr_wr0[3]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(full_wr_i_3__2_n_0),
        .I5(ptr_wr0[2]),
        .O(full_wr0));
  LUT6 #(
    .INIT(64'hEF75DFBABAEF75DF)) 
    full_wr_i_2__2
       (.I0(\ptr_wr_reg[3]_0 [1]),
        .I1(full_wr_reg_0),
        .I2(plff_writ__0),
        .I3(\ptr_wr_reg[3]_0 [0]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(full_wr_i_2__2_n_0));
  LUT6 #(
    .INIT(64'hF35DF7FF55045D55)) 
    full_wr_i_3__2
       (.I0(Q[1]),
        .I1(plff_writ__0),
        .I2(full_wr_reg_0),
        .I3(\ptr_wr_reg[3]_0 [0]),
        .I4(Q[0]),
        .I5(\ptr_wr_reg[3]_0 [1]),
        .O(full_wr_i_3__2_n_0));
  FDRE full_wr_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(full_wr0),
        .Q(full_wr_reg_0),
        .R(\ptr_wr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    mem_reg_0_15_0_3_i_1__2
       (.I0(badr[1]),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(\mem_rd_reg[1] ),
        .I5(full_wr_reg_0),
        .O(I22));
  LUT4 #(
    .INIT(16'h0100)) 
    \polysmph[3]_i_7 
       (.I0(badr[1]),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[3]),
        .O(rd_polysmph0_rg1__2));
  LUT5 #(
    .INIT(32'h00100003)) 
    psem_read_i_1
       (.I0(psem_read_reg),
        .I1(full_wr_reg_0),
        .I2(psem_read_reg_0[1]),
        .I3(plff_empty),
        .I4(psem_read_reg_0[0]),
        .O(plff_read));
  LUT3 #(
    .INIT(8'h9A)) 
    \ptr_wr[0]_i_1__2 
       (.I0(\ptr_wr_reg[3]_0 [0]),
        .I1(full_wr_reg_0),
        .I2(plff_writ__0),
        .O(ptr_wr0[0]));
  LUT4 #(
    .INIT(16'hF708)) 
    \ptr_wr[1]_i_1__2 
       (.I0(\ptr_wr_reg[3]_0 [0]),
        .I1(plff_writ__0),
        .I2(full_wr_reg_0),
        .I3(\ptr_wr_reg[3]_0 [1]),
        .O(ptr_wr0[1]));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \ptr_wr[2]_i_1__2 
       (.I0(full_wr_reg_0),
        .I1(plff_writ__0),
        .I2(\ptr_wr_reg[3]_0 [0]),
        .I3(\ptr_wr_reg[3]_0 [1]),
        .I4(\ptr_wr_reg[3]_0 [2]),
        .O(ptr_wr0[2]));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \ptr_wr[3]_i_1__2 
       (.I0(\ptr_wr_reg[3]_0 [1]),
        .I1(\ptr_wr_reg[3]_0 [0]),
        .I2(plff_writ__0),
        .I3(full_wr_reg_0),
        .I4(\ptr_wr_reg[3]_0 [2]),
        .I5(\ptr_wr_reg[3]_0 [3]),
        .O(ptr_wr0[3]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \ptr_wr[3]_i_2__2 
       (.I0(p_14_in),
        .I1(bdatw[1]),
        .I2(bdatw[0]),
        .I3(bdatw[3]),
        .I4(bdatw[2]),
        .I5(rd_polysmph0_rg1__2),
        .O(plff_writ__0));
  FDRE \ptr_wr_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ptr_wr0[0]),
        .Q(\ptr_wr_reg[3]_0 [0]),
        .R(\ptr_wr_reg[0]_0 ));
  FDRE \ptr_wr_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ptr_wr0[1]),
        .Q(\ptr_wr_reg[3]_0 [1]),
        .R(\ptr_wr_reg[0]_0 ));
  FDRE \ptr_wr_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ptr_wr0[2]),
        .Q(\ptr_wr_reg[3]_0 [2]),
        .R(\ptr_wr_reg[0]_0 ));
  FDRE \ptr_wr_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ptr_wr0[3]),
        .Q(\ptr_wr_reg[3]_0 [3]),
        .R(\ptr_wr_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "poly_fifo4s16_fwrc" *) 
module poly_fifo4s16_fwrc_6
   (full_wr_reg_0,
    \ptr_wr_reg[3]_0 ,
    I29,
    rd_polysmph2_rg1__2,
    \ptr_wr_reg[2]_0 ,
    plff_read,
    \ptr_wr_reg[0]_0 ,
    clk,
    Q,
    badr,
    \mem_rd_reg[1] ,
    p_14_in,
    bdatw,
    empty_rd_reg,
    empty_rd_reg_0,
    psem_read_reg,
    psem_read_reg_0,
    plff_empty);
  output full_wr_reg_0;
  output [3:0]\ptr_wr_reg[3]_0 ;
  output I29;
  output rd_polysmph2_rg1__2;
  output \ptr_wr_reg[2]_0 ;
  output plff_read;
  input \ptr_wr_reg[0]_0 ;
  input clk;
  input [3:0]Q;
  input [3:0]badr;
  input \mem_rd_reg[1] ;
  input p_14_in;
  input [3:0]bdatw;
  input empty_rd_reg;
  input empty_rd_reg_0;
  input psem_read_reg;
  input [1:0]psem_read_reg_0;
  input plff_empty;

  wire \<const1> ;
  wire I29;
  wire [3:0]Q;
  wire [3:0]badr;
  wire [3:0]bdatw;
  wire clk;
  wire empty_rd_i_2__1_n_0;
  wire empty_rd_reg;
  wire empty_rd_reg_0;
  wire full_wr_i_1__0_n_0;
  wire full_wr_i_2__0_n_0;
  wire full_wr_i_3__0_n_0;
  wire full_wr_reg_0;
  wire \mem_rd_reg[1] ;
  wire p_14_in;
  wire plff_empty;
  wire plff_read;
  wire plff_writ__0;
  wire psem_read_reg;
  wire [1:0]psem_read_reg_0;
  wire \ptr_wr[0]_i_1__0_n_0 ;
  wire \ptr_wr[1]_i_1__0_n_0 ;
  wire \ptr_wr[2]_i_1__0_n_0 ;
  wire \ptr_wr[3]_i_1__0_n_0 ;
  wire \ptr_wr_reg[0]_0 ;
  wire \ptr_wr_reg[2]_0 ;
  wire [3:0]\ptr_wr_reg[3]_0 ;
  wire rd_polysmph2_rg1__2;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h0480804040080804)) 
    empty_rd_i_1__0
       (.I0(\ptr_wr_reg[3]_0 [2]),
        .I1(empty_rd_i_2__1_n_0),
        .I2(\ptr_wr_reg[3]_0 [3]),
        .I3(empty_rd_reg),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\ptr_wr_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h06909009)) 
    empty_rd_i_2__1
       (.I0(\ptr_wr_reg[3]_0 [1]),
        .I1(Q[1]),
        .I2(\ptr_wr_reg[3]_0 [0]),
        .I3(Q[0]),
        .I4(empty_rd_reg_0),
        .O(empty_rd_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h0014410041000041)) 
    full_wr_i_1__0
       (.I0(full_wr_i_2__0_n_0),
        .I1(\ptr_wr[3]_i_1__0_n_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(full_wr_i_3__0_n_0),
        .I5(\ptr_wr[2]_i_1__0_n_0 ),
        .O(full_wr_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hEF75DFBABAEF75DF)) 
    full_wr_i_2__0
       (.I0(\ptr_wr_reg[3]_0 [1]),
        .I1(full_wr_reg_0),
        .I2(plff_writ__0),
        .I3(\ptr_wr_reg[3]_0 [0]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(full_wr_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hF35DF7FF55045D55)) 
    full_wr_i_3__0
       (.I0(Q[1]),
        .I1(plff_writ__0),
        .I2(full_wr_reg_0),
        .I3(\ptr_wr_reg[3]_0 [0]),
        .I4(Q[0]),
        .I5(\ptr_wr_reg[3]_0 [1]),
        .O(full_wr_i_3__0_n_0));
  FDRE full_wr_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(full_wr_i_1__0_n_0),
        .Q(full_wr_reg_0),
        .R(\ptr_wr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    mem_reg_0_15_0_3_i_1__0
       (.I0(badr[1]),
        .I1(badr[3]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(\mem_rd_reg[1] ),
        .I5(full_wr_reg_0),
        .O(I29));
  LUT4 #(
    .INIT(16'h0400)) 
    \polysmph[3]_i_5__0 
       (.I0(badr[1]),
        .I1(badr[3]),
        .I2(badr[0]),
        .I3(badr[2]),
        .O(rd_polysmph2_rg1__2));
  LUT5 #(
    .INIT(32'h00100003)) 
    psem_read_i_1__1
       (.I0(psem_read_reg),
        .I1(full_wr_reg_0),
        .I2(psem_read_reg_0[1]),
        .I3(plff_empty),
        .I4(psem_read_reg_0[0]),
        .O(plff_read));
  LUT3 #(
    .INIT(8'h9A)) 
    \ptr_wr[0]_i_1__0 
       (.I0(\ptr_wr_reg[3]_0 [0]),
        .I1(full_wr_reg_0),
        .I2(plff_writ__0),
        .O(\ptr_wr[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \ptr_wr[1]_i_1__0 
       (.I0(\ptr_wr_reg[3]_0 [0]),
        .I1(plff_writ__0),
        .I2(full_wr_reg_0),
        .I3(\ptr_wr_reg[3]_0 [1]),
        .O(\ptr_wr[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \ptr_wr[2]_i_1__0 
       (.I0(full_wr_reg_0),
        .I1(plff_writ__0),
        .I2(\ptr_wr_reg[3]_0 [0]),
        .I3(\ptr_wr_reg[3]_0 [1]),
        .I4(\ptr_wr_reg[3]_0 [2]),
        .O(\ptr_wr[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \ptr_wr[3]_i_1__0 
       (.I0(\ptr_wr_reg[3]_0 [1]),
        .I1(\ptr_wr_reg[3]_0 [0]),
        .I2(plff_writ__0),
        .I3(full_wr_reg_0),
        .I4(\ptr_wr_reg[3]_0 [2]),
        .I5(\ptr_wr_reg[3]_0 [3]),
        .O(\ptr_wr[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \ptr_wr[3]_i_2__0 
       (.I0(p_14_in),
        .I1(bdatw[1]),
        .I2(bdatw[0]),
        .I3(bdatw[3]),
        .I4(bdatw[2]),
        .I5(rd_polysmph2_rg1__2),
        .O(plff_writ__0));
  FDRE \ptr_wr_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_wr[0]_i_1__0_n_0 ),
        .Q(\ptr_wr_reg[3]_0 [0]),
        .R(\ptr_wr_reg[0]_0 ));
  FDRE \ptr_wr_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_wr[1]_i_1__0_n_0 ),
        .Q(\ptr_wr_reg[3]_0 [1]),
        .R(\ptr_wr_reg[0]_0 ));
  FDRE \ptr_wr_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_wr[2]_i_1__0_n_0 ),
        .Q(\ptr_wr_reg[3]_0 [2]),
        .R(\ptr_wr_reg[0]_0 ));
  FDRE \ptr_wr_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_wr[3]_i_1__0_n_0 ),
        .Q(\ptr_wr_reg[3]_0 [3]),
        .R(\ptr_wr_reg[0]_0 ));
endmodule

module poly_fifo4s16_lram
   (rst_n_0,
    \mem_rd_reg[3]_0 ,
    \mem_rd_reg[0]_0 ,
    clk,
    badr,
    \mem_rd_reg[1]_0 ,
    bdatw,
    \polysmph_reg[3] ,
    rst_n,
    pctl_serr_rst,
    psem_occupy__2_1,
    psem_read,
    I33,
    Q,
    I34);
  output rst_n_0;
  output [3:0]\mem_rd_reg[3]_0 ;
  input \mem_rd_reg[0]_0 ;
  input clk;
  input [3:0]badr;
  input \mem_rd_reg[1]_0 ;
  input [3:0]bdatw;
  input \polysmph_reg[3] ;
  input rst_n;
  input pctl_serr_rst;
  input psem_occupy__2_1;
  input psem_read;
  input I33;
  input [3:0]Q;
  input [3:0]I34;

  wire \<const0> ;
  wire \<const1> ;
  wire I33;
  wire [3:0]I34;
  wire [3:0]Q;
  wire [3:0]badr;
  wire [3:0]bdatw;
  wire clk;
  wire drv_rd;
  wire \mem_rd_reg[0]_0 ;
  wire \mem_rd_reg[1]_0 ;
  wire [3:0]\mem_rd_reg[3]_0 ;
  wire mem_reg_0_15_0_3_n_0;
  wire mem_reg_0_15_0_3_n_1;
  wire mem_reg_0_15_0_3_n_2;
  wire mem_reg_0_15_0_3_n_3;
  wire pctl_serr_rst;
  wire [3:0]plff_datw;
  wire \polysmph_reg[3] ;
  wire psem_occupy__2_1;
  wire psem_read;
  wire rst_n;
  wire rst_n_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE drv_rd_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(\mem_rd_reg[0]_0 ),
        .Q(drv_rd),
        .R(\<const0> ));
  FDRE \mem_rd_reg[0] 
       (.C(clk),
        .CE(\mem_rd_reg[0]_0 ),
        .D(mem_reg_0_15_0_3_n_1),
        .Q(\mem_rd_reg[3]_0 [0]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[1] 
       (.C(clk),
        .CE(\mem_rd_reg[0]_0 ),
        .D(mem_reg_0_15_0_3_n_0),
        .Q(\mem_rd_reg[3]_0 [1]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[2] 
       (.C(clk),
        .CE(\mem_rd_reg[0]_0 ),
        .D(mem_reg_0_15_0_3_n_3),
        .Q(\mem_rd_reg[3]_0 [2]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[3] 
       (.C(clk),
        .CE(\mem_rd_reg[0]_0 ),
        .D(mem_reg_0_15_0_3_n_2),
        .Q(\mem_rd_reg[3]_0 [3]),
        .R(\<const0> ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "polyc144/psmph3/pfifo/lram/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAM32M mem_reg_0_15_0_3
       (.ADDRA({\<const0> ,Q}),
        .ADDRB({\<const0> ,Q}),
        .ADDRC({\<const0> ,Q}),
        .ADDRD({\<const0> ,I34}),
        .DIA(plff_datw[1:0]),
        .DIB(plff_datw[3:2]),
        .DIC({\<const0> ,\<const0> }),
        .DID({\<const0> ,\<const0> }),
        .DOA({mem_reg_0_15_0_3_n_0,mem_reg_0_15_0_3_n_1}),
        .DOB({mem_reg_0_15_0_3_n_2,mem_reg_0_15_0_3_n_3}),
        .WCLK(clk),
        .WE(I33));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_15_0_3_i_2
       (.I0(badr[3]),
        .I1(badr[1]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(\mem_rd_reg[1]_0 ),
        .I5(bdatw[1]),
        .O(plff_datw[1]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_15_0_3_i_3
       (.I0(badr[3]),
        .I1(badr[1]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(\mem_rd_reg[1]_0 ),
        .I5(bdatw[0]),
        .O(plff_datw[0]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_15_0_3_i_4
       (.I0(badr[3]),
        .I1(badr[1]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(\mem_rd_reg[1]_0 ),
        .I5(bdatw[3]),
        .O(plff_datw[3]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_15_0_3_i_5
       (.I0(badr[3]),
        .I1(badr[1]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(\mem_rd_reg[1]_0 ),
        .I5(bdatw[2]),
        .O(plff_datw[2]));
  LUT6 #(
    .INIT(64'hAAAAA2AAAAAAAAAA)) 
    \polysmph[3]_i_1 
       (.I0(\polysmph_reg[3] ),
        .I1(rst_n),
        .I2(pctl_serr_rst),
        .I3(drv_rd),
        .I4(psem_occupy__2_1),
        .I5(psem_read),
        .O(rst_n_0));
endmodule

(* ORIG_REF_NAME = "poly_fifo4s16_lram" *) 
module poly_fifo4s16_lram_12
   (rst_n_0,
    \mem_rd_reg[3]_0 ,
    \mem_rd_reg[0]_0 ,
    clk,
    badr,
    \mem_rd_reg[1]_0 ,
    bdatw,
    \polysmph_reg[3] ,
    rst_n,
    pctl_serr_rst,
    psem_occupy__2_1,
    psem_read,
    I25,
    Q,
    I26);
  output rst_n_0;
  output [3:0]\mem_rd_reg[3]_0 ;
  input \mem_rd_reg[0]_0 ;
  input clk;
  input [3:0]badr;
  input \mem_rd_reg[1]_0 ;
  input [3:0]bdatw;
  input \polysmph_reg[3] ;
  input rst_n;
  input pctl_serr_rst;
  input psem_occupy__2_1;
  input psem_read;
  input I25;
  input [3:0]Q;
  input [3:0]I26;

  wire \<const0> ;
  wire \<const1> ;
  wire I25;
  wire [3:0]I26;
  wire [3:0]Q;
  wire [3:0]badr;
  wire [3:0]bdatw;
  wire clk;
  wire drv_rd;
  wire \mem_rd_reg[0]_0 ;
  wire \mem_rd_reg[1]_0 ;
  wire [3:0]\mem_rd_reg[3]_0 ;
  wire mem_reg_0_15_0_3_n_0;
  wire mem_reg_0_15_0_3_n_1;
  wire mem_reg_0_15_0_3_n_2;
  wire mem_reg_0_15_0_3_n_3;
  wire pctl_serr_rst;
  wire [3:0]plff_datw;
  wire \polysmph_reg[3] ;
  wire psem_occupy__2_1;
  wire psem_read;
  wire rst_n;
  wire rst_n_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE drv_rd_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(\mem_rd_reg[0]_0 ),
        .Q(drv_rd),
        .R(\<const0> ));
  FDRE \mem_rd_reg[0] 
       (.C(clk),
        .CE(\mem_rd_reg[0]_0 ),
        .D(mem_reg_0_15_0_3_n_1),
        .Q(\mem_rd_reg[3]_0 [0]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[1] 
       (.C(clk),
        .CE(\mem_rd_reg[0]_0 ),
        .D(mem_reg_0_15_0_3_n_0),
        .Q(\mem_rd_reg[3]_0 [1]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[2] 
       (.C(clk),
        .CE(\mem_rd_reg[0]_0 ),
        .D(mem_reg_0_15_0_3_n_3),
        .Q(\mem_rd_reg[3]_0 [2]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[3] 
       (.C(clk),
        .CE(\mem_rd_reg[0]_0 ),
        .D(mem_reg_0_15_0_3_n_2),
        .Q(\mem_rd_reg[3]_0 [3]),
        .R(\<const0> ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "polyc144/psmph1/pfifo/lram/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAM32M mem_reg_0_15_0_3
       (.ADDRA({\<const0> ,Q}),
        .ADDRB({\<const0> ,Q}),
        .ADDRC({\<const0> ,Q}),
        .ADDRD({\<const0> ,I26}),
        .DIA(plff_datw[1:0]),
        .DIB(plff_datw[3:2]),
        .DIC({\<const0> ,\<const0> }),
        .DID({\<const0> ,\<const0> }),
        .DOA({mem_reg_0_15_0_3_n_0,mem_reg_0_15_0_3_n_1}),
        .DOB({mem_reg_0_15_0_3_n_2,mem_reg_0_15_0_3_n_3}),
        .WCLK(clk),
        .WE(I25));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    mem_reg_0_15_0_3_i_2__1
       (.I0(badr[0]),
        .I1(badr[1]),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(\mem_rd_reg[1]_0 ),
        .I5(bdatw[1]),
        .O(plff_datw[1]));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    mem_reg_0_15_0_3_i_3__1
       (.I0(badr[0]),
        .I1(badr[1]),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(\mem_rd_reg[1]_0 ),
        .I5(bdatw[0]),
        .O(plff_datw[0]));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    mem_reg_0_15_0_3_i_4__1
       (.I0(badr[0]),
        .I1(badr[1]),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(\mem_rd_reg[1]_0 ),
        .I5(bdatw[3]),
        .O(plff_datw[3]));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    mem_reg_0_15_0_3_i_5__1
       (.I0(badr[0]),
        .I1(badr[1]),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(\mem_rd_reg[1]_0 ),
        .I5(bdatw[2]),
        .O(plff_datw[2]));
  LUT6 #(
    .INIT(64'hAAAAA2AAAAAAAAAA)) 
    \polysmph[3]_i_1__1 
       (.I0(\polysmph_reg[3] ),
        .I1(rst_n),
        .I2(pctl_serr_rst),
        .I3(drv_rd),
        .I4(psem_occupy__2_1),
        .I5(psem_read),
        .O(rst_n_0));
endmodule

(* ORIG_REF_NAME = "poly_fifo4s16_lram" *) 
module poly_fifo4s16_lram_17
   (.bdatw_6_sp_1(bdatw_6_sn_1),
    rst_n_0,
    \mem_rd_reg[3]_0 ,
    \mem_rd_reg[0]_0 ,
    clk,
    badr,
    bdatw,
    p_14_in,
    \polysmph_reg[3] ,
    rst_n,
    pctl_serr_rst,
    \polysmph_reg[3]_0 ,
    psem_read,
    I22,
    Q,
    I23);
  output rst_n_0;
  output [3:0]\mem_rd_reg[3]_0 ;
  input \mem_rd_reg[0]_0 ;
  input clk;
  input [3:0]badr;
  input [7:0]bdatw;
  input p_14_in;
  input \polysmph_reg[3] ;
  input rst_n;
  input pctl_serr_rst;
  input \polysmph_reg[3]_0 ;
  input psem_read;
  input I22;
  input [3:0]Q;
  input [3:0]I23;
  output bdatw_6_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire I22;
  wire [3:0]I23;
  wire [3:0]Q;
  wire [3:0]badr;
  wire [7:0]bdatw;
  wire bdatw_6_sn_1;
  wire clk;
  wire drv_rd;
  wire [3:0]mem_rd0;
  wire \mem_rd_reg[0]_0 ;
  wire [3:0]\mem_rd_reg[3]_0 ;
  wire p_14_in;
  wire pctl_serr_rst;
  wire [3:0]plff_datw;
  wire \polysmph_reg[3] ;
  wire \polysmph_reg[3]_0 ;
  wire psem_read;
  wire rst_n;
  wire rst_n_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE drv_rd_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(\mem_rd_reg[0]_0 ),
        .Q(drv_rd),
        .R(\<const0> ));
  FDRE \mem_rd_reg[0] 
       (.C(clk),
        .CE(\mem_rd_reg[0]_0 ),
        .D(mem_rd0[0]),
        .Q(\mem_rd_reg[3]_0 [0]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[1] 
       (.C(clk),
        .CE(\mem_rd_reg[0]_0 ),
        .D(mem_rd0[1]),
        .Q(\mem_rd_reg[3]_0 [1]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[2] 
       (.C(clk),
        .CE(\mem_rd_reg[0]_0 ),
        .D(mem_rd0[2]),
        .Q(\mem_rd_reg[3]_0 [2]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[3] 
       (.C(clk),
        .CE(\mem_rd_reg[0]_0 ),
        .D(mem_rd0[3]),
        .Q(\mem_rd_reg[3]_0 [3]),
        .R(\<const0> ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "polyc144/psmph0/pfifo/lram/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAM32M mem_reg_0_15_0_3
       (.ADDRA({\<const0> ,Q}),
        .ADDRB({\<const0> ,Q}),
        .ADDRC({\<const0> ,Q}),
        .ADDRD({\<const0> ,I23}),
        .DIA(plff_datw[1:0]),
        .DIB(plff_datw[3:2]),
        .DIC({\<const0> ,\<const0> }),
        .DID({\<const0> ,\<const0> }),
        .DOA(mem_rd0[1:0]),
        .DOB(mem_rd0[3:2]),
        .WCLK(clk),
        .WE(I22));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    mem_reg_0_15_0_3_i_2__2
       (.I0(badr[1]),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(bdatw_6_sn_1),
        .I5(bdatw[1]),
        .O(plff_datw[1]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    mem_reg_0_15_0_3_i_3__2
       (.I0(badr[1]),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(bdatw_6_sn_1),
        .I5(bdatw[0]),
        .O(plff_datw[0]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    mem_reg_0_15_0_3_i_4__2
       (.I0(badr[1]),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(bdatw_6_sn_1),
        .I5(bdatw[3]),
        .O(plff_datw[3]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    mem_reg_0_15_0_3_i_5__2
       (.I0(badr[1]),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(bdatw_6_sn_1),
        .I5(bdatw[2]),
        .O(plff_datw[2]));
  LUT5 #(
    .INIT(32'h00100000)) 
    mem_reg_0_15_0_3_i_6
       (.I0(bdatw[6]),
        .I1(bdatw[7]),
        .I2(bdatw[4]),
        .I3(bdatw[5]),
        .I4(p_14_in),
        .O(bdatw_6_sn_1));
  LUT6 #(
    .INIT(64'hAAAAA2AAAAAAAAAA)) 
    \polysmph[3]_i_1__2 
       (.I0(\polysmph_reg[3] ),
        .I1(rst_n),
        .I2(pctl_serr_rst),
        .I3(drv_rd),
        .I4(\polysmph_reg[3]_0 ),
        .I5(psem_read),
        .O(rst_n_0));
endmodule

(* ORIG_REF_NAME = "poly_fifo4s16_lram" *) 
module poly_fifo4s16_lram_7
   (rst_n_0,
    \mem_rd_reg[3]_0 ,
    \mem_rd_reg[0]_0 ,
    clk,
    badr,
    \mem_rd_reg[1]_0 ,
    bdatw,
    \polysmph_reg[3] ,
    rst_n,
    pctl_serr_rst,
    \polysmph_reg[3]_0 ,
    psem_read,
    I29,
    Q,
    I30);
  output rst_n_0;
  output [3:0]\mem_rd_reg[3]_0 ;
  input \mem_rd_reg[0]_0 ;
  input clk;
  input [3:0]badr;
  input \mem_rd_reg[1]_0 ;
  input [3:0]bdatw;
  input \polysmph_reg[3] ;
  input rst_n;
  input pctl_serr_rst;
  input \polysmph_reg[3]_0 ;
  input psem_read;
  input I29;
  input [3:0]Q;
  input [3:0]I30;

  wire \<const0> ;
  wire \<const1> ;
  wire I29;
  wire [3:0]I30;
  wire [3:0]Q;
  wire [3:0]badr;
  wire [3:0]bdatw;
  wire clk;
  wire drv_rd;
  wire \mem_rd_reg[0]_0 ;
  wire \mem_rd_reg[1]_0 ;
  wire [3:0]\mem_rd_reg[3]_0 ;
  wire mem_reg_0_15_0_3_n_0;
  wire mem_reg_0_15_0_3_n_1;
  wire mem_reg_0_15_0_3_n_2;
  wire mem_reg_0_15_0_3_n_3;
  wire pctl_serr_rst;
  wire [3:0]plff_datw;
  wire \polysmph_reg[3] ;
  wire \polysmph_reg[3]_0 ;
  wire psem_read;
  wire rst_n;
  wire rst_n_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE drv_rd_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(\mem_rd_reg[0]_0 ),
        .Q(drv_rd),
        .R(\<const0> ));
  FDRE \mem_rd_reg[0] 
       (.C(clk),
        .CE(\mem_rd_reg[0]_0 ),
        .D(mem_reg_0_15_0_3_n_1),
        .Q(\mem_rd_reg[3]_0 [0]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[1] 
       (.C(clk),
        .CE(\mem_rd_reg[0]_0 ),
        .D(mem_reg_0_15_0_3_n_0),
        .Q(\mem_rd_reg[3]_0 [1]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[2] 
       (.C(clk),
        .CE(\mem_rd_reg[0]_0 ),
        .D(mem_reg_0_15_0_3_n_3),
        .Q(\mem_rd_reg[3]_0 [2]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[3] 
       (.C(clk),
        .CE(\mem_rd_reg[0]_0 ),
        .D(mem_reg_0_15_0_3_n_2),
        .Q(\mem_rd_reg[3]_0 [3]),
        .R(\<const0> ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "polyc144/psmph2/pfifo/lram/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAM32M mem_reg_0_15_0_3
       (.ADDRA({\<const0> ,Q}),
        .ADDRB({\<const0> ,Q}),
        .ADDRC({\<const0> ,Q}),
        .ADDRD({\<const0> ,I30}),
        .DIA(plff_datw[1:0]),
        .DIB(plff_datw[3:2]),
        .DIC({\<const0> ,\<const0> }),
        .DID({\<const0> ,\<const0> }),
        .DOA({mem_reg_0_15_0_3_n_0,mem_reg_0_15_0_3_n_1}),
        .DOB({mem_reg_0_15_0_3_n_2,mem_reg_0_15_0_3_n_3}),
        .WCLK(clk),
        .WE(I29));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    mem_reg_0_15_0_3_i_2__0
       (.I0(badr[1]),
        .I1(badr[3]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(\mem_rd_reg[1]_0 ),
        .I5(bdatw[1]),
        .O(plff_datw[1]));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    mem_reg_0_15_0_3_i_3__0
       (.I0(badr[1]),
        .I1(badr[3]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(\mem_rd_reg[1]_0 ),
        .I5(bdatw[0]),
        .O(plff_datw[0]));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    mem_reg_0_15_0_3_i_4__0
       (.I0(badr[1]),
        .I1(badr[3]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(\mem_rd_reg[1]_0 ),
        .I5(bdatw[3]),
        .O(plff_datw[3]));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    mem_reg_0_15_0_3_i_5__0
       (.I0(badr[1]),
        .I1(badr[3]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(\mem_rd_reg[1]_0 ),
        .I5(bdatw[2]),
        .O(plff_datw[2]));
  LUT6 #(
    .INIT(64'hAAAAA2AAAAAAAAAA)) 
    \polysmph[3]_i_1__0 
       (.I0(\polysmph_reg[3] ),
        .I1(rst_n),
        .I2(pctl_serr_rst),
        .I3(drv_rd),
        .I4(\polysmph_reg[3]_0 ),
        .I5(psem_read),
        .O(rst_n_0));
endmodule

module poly_intr
   (Q,
    p_14_in,
    \polyintr_reg[14]_0 ,
    SR,
    bdatr,
    bdatw,
    badr,
    bcs_poly_n,
    bcmdw,
    brdy,
    rst_n,
    rd_polyintm,
    rd_polyintr,
    clk);
  output [13:0]Q;
  output p_14_in;
  output [13:0]\polyintr_reg[14]_0 ;
  output [0:0]SR;
  output [7:0]bdatr;
  input [7:0]bdatw;
  input [3:0]badr;
  input bcs_poly_n;
  input bcmdw;
  input brdy;
  input rst_n;
  input rd_polyintm;
  input rd_polyintr;
  input clk;

  wire [13:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire bcmdw;
  wire bcs_poly_n;
  wire [7:0]bdatr;
  wire [7:0]bdatw;
  wire brdy;
  wire clk;
  wire p_14_in;
  wire polyintm1__0;
  wire \polyintm[10]_i_1_n_0 ;
  wire \polyintm[11]_i_1_n_0 ;
  wire \polyintm[12]_i_1_n_0 ;
  wire \polyintm[13]_i_1_n_0 ;
  wire \polyintm[14]_i_1_n_0 ;
  wire \polyintm[14]_i_2_n_0 ;
  wire \polyintm[14]_i_3_n_0 ;
  wire \polyintm[1]_i_1_n_0 ;
  wire \polyintm[2]_i_1_n_0 ;
  wire \polyintm[3]_i_1_n_0 ;
  wire \polyintm[4]_i_1_n_0 ;
  wire \polyintm[5]_i_1_n_0 ;
  wire \polyintm[6]_i_1_n_0 ;
  wire \polyintm[7]_i_1_n_0 ;
  wire \polyintm[8]_i_1_n_0 ;
  wire \polyintm[9]_i_1_n_0 ;
  wire polyintr10_out;
  wire polyintr2__1;
  wire \polyintr[10]_i_1_n_0 ;
  wire \polyintr[11]_i_1_n_0 ;
  wire \polyintr[12]_i_1_n_0 ;
  wire \polyintr[13]_i_1_n_0 ;
  wire \polyintr[14]_i_1_n_0 ;
  wire \polyintr[14]_i_2_n_0 ;
  wire \polyintr[14]_i_3_n_0 ;
  wire \polyintr[1]_i_1_n_0 ;
  wire \polyintr[2]_i_1_n_0 ;
  wire \polyintr[3]_i_1_n_0 ;
  wire \polyintr[4]_i_1_n_0 ;
  wire \polyintr[5]_i_1_n_0 ;
  wire \polyintr[6]_i_1_n_0 ;
  wire \polyintr[7]_i_1_n_0 ;
  wire \polyintr[8]_i_1_n_0 ;
  wire \polyintr[9]_i_1_n_0 ;
  wire [13:0]\polyintr_reg[14]_0 ;
  wire rd_polyintm;
  wire rd_polyintr;
  wire rst_n;

  LUT4 #(
    .INIT(16'hAAC0)) 
    \bdatr[10]_INST_0 
       (.I0(\polyintr_reg[14]_0 [9]),
        .I1(Q[9]),
        .I2(rd_polyintm),
        .I3(rd_polyintr),
        .O(bdatr[3]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \bdatr[11]_INST_0 
       (.I0(\polyintr_reg[14]_0 [10]),
        .I1(Q[10]),
        .I2(rd_polyintm),
        .I3(rd_polyintr),
        .O(bdatr[4]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \bdatr[12]_INST_0 
       (.I0(\polyintr_reg[14]_0 [11]),
        .I1(Q[11]),
        .I2(rd_polyintm),
        .I3(rd_polyintr),
        .O(bdatr[5]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \bdatr[13]_INST_0 
       (.I0(\polyintr_reg[14]_0 [12]),
        .I1(Q[12]),
        .I2(rd_polyintm),
        .I3(rd_polyintr),
        .O(bdatr[6]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \bdatr[14]_INST_0 
       (.I0(\polyintr_reg[14]_0 [13]),
        .I1(Q[13]),
        .I2(rd_polyintm),
        .I3(rd_polyintr),
        .O(bdatr[7]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \bdatr[6]_INST_0 
       (.I0(\polyintr_reg[14]_0 [5]),
        .I1(Q[5]),
        .I2(rd_polyintm),
        .I3(rd_polyintr),
        .O(bdatr[0]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \bdatr[8]_INST_0 
       (.I0(\polyintr_reg[14]_0 [7]),
        .I1(Q[7]),
        .I2(rd_polyintm),
        .I3(rd_polyintr),
        .O(bdatr[1]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \bdatr[9]_INST_0 
       (.I0(\polyintr_reg[14]_0 [8]),
        .I1(Q[8]),
        .I2(rd_polyintm),
        .I3(rd_polyintr),
        .O(bdatr[2]));
  LUT3 #(
    .INIT(8'h40)) 
    \polyctl[7]_i_3 
       (.I0(bcs_poly_n),
        .I1(bcmdw),
        .I2(brdy),
        .O(p_14_in));
  LUT6 #(
    .INIT(64'hFFFF0400FBFF0000)) 
    \polyintm[10]_i_1 
       (.I0(bdatw[0]),
        .I1(bdatw[1]),
        .I2(bdatw[2]),
        .I3(bdatw[3]),
        .I4(Q[9]),
        .I5(polyintm1__0),
        .O(\polyintm[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0800F7FF0000)) 
    \polyintm[11]_i_1 
       (.I0(bdatw[1]),
        .I1(bdatw[0]),
        .I2(bdatw[2]),
        .I3(bdatw[3]),
        .I4(Q[10]),
        .I5(polyintm1__0),
        .O(\polyintm[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1000EFFF0000)) 
    \polyintm[12]_i_1 
       (.I0(bdatw[0]),
        .I1(bdatw[1]),
        .I2(bdatw[3]),
        .I3(bdatw[2]),
        .I4(Q[11]),
        .I5(polyintm1__0),
        .O(\polyintm[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4000BFFF0000)) 
    \polyintm[13]_i_1 
       (.I0(bdatw[1]),
        .I1(bdatw[0]),
        .I2(bdatw[3]),
        .I3(bdatw[2]),
        .I4(Q[12]),
        .I5(polyintm1__0),
        .O(\polyintm[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20040000)) 
    \polyintm[14]_i_1 
       (.I0(bdatw[5]),
        .I1(bdatw[4]),
        .I2(bdatw[7]),
        .I3(bdatw[6]),
        .I4(\polyintm[14]_i_3_n_0 ),
        .O(\polyintm[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4000BFFF0000)) 
    \polyintm[14]_i_2 
       (.I0(bdatw[0]),
        .I1(bdatw[1]),
        .I2(bdatw[3]),
        .I3(bdatw[2]),
        .I4(Q[13]),
        .I5(polyintm1__0),
        .O(\polyintm[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \polyintm[14]_i_3 
       (.I0(p_14_in),
        .I1(badr[2]),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[3]),
        .O(\polyintm[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \polyintm[14]_i_4 
       (.I0(badr[3]),
        .I1(badr[1]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(p_14_in),
        .I5(polyintr2__1),
        .O(polyintm1__0));
  LUT4 #(
    .INIT(16'h0004)) 
    \polyintm[14]_i_5 
       (.I0(bdatw[5]),
        .I1(bdatw[4]),
        .I2(bdatw[7]),
        .I3(bdatw[6]),
        .O(polyintr2__1));
  LUT6 #(
    .INIT(64'hFFFF0004FFFB0000)) 
    \polyintm[1]_i_1 
       (.I0(bdatw[1]),
        .I1(bdatw[0]),
        .I2(bdatw[2]),
        .I3(bdatw[3]),
        .I4(Q[0]),
        .I5(polyintm1__0),
        .O(\polyintm[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0004FFFB0000)) 
    \polyintm[2]_i_1 
       (.I0(bdatw[0]),
        .I1(bdatw[1]),
        .I2(bdatw[2]),
        .I3(bdatw[3]),
        .I4(Q[1]),
        .I5(polyintm1__0),
        .O(\polyintm[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0008FFF70000)) 
    \polyintm[3]_i_1 
       (.I0(bdatw[1]),
        .I1(bdatw[0]),
        .I2(bdatw[2]),
        .I3(bdatw[3]),
        .I4(Q[2]),
        .I5(polyintm1__0),
        .O(\polyintm[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0100FEFF0000)) 
    \polyintm[4]_i_1 
       (.I0(bdatw[0]),
        .I1(bdatw[1]),
        .I2(bdatw[3]),
        .I3(bdatw[2]),
        .I4(Q[3]),
        .I5(polyintm1__0),
        .O(\polyintm[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0400FBFF0000)) 
    \polyintm[5]_i_1 
       (.I0(bdatw[1]),
        .I1(bdatw[0]),
        .I2(bdatw[3]),
        .I3(bdatw[2]),
        .I4(Q[4]),
        .I5(polyintm1__0),
        .O(\polyintm[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0400FBFF0000)) 
    \polyintm[6]_i_1 
       (.I0(bdatw[0]),
        .I1(bdatw[1]),
        .I2(bdatw[3]),
        .I3(bdatw[2]),
        .I4(Q[5]),
        .I5(polyintm1__0),
        .O(\polyintm[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0800F7FF0000)) 
    \polyintm[7]_i_1 
       (.I0(bdatw[1]),
        .I1(bdatw[0]),
        .I2(bdatw[3]),
        .I3(bdatw[2]),
        .I4(Q[6]),
        .I5(polyintm1__0),
        .O(\polyintm[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0100FEFF0000)) 
    \polyintm[8]_i_1 
       (.I0(bdatw[0]),
        .I1(bdatw[1]),
        .I2(bdatw[2]),
        .I3(bdatw[3]),
        .I4(Q[7]),
        .I5(polyintm1__0),
        .O(\polyintm[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0400FBFF0000)) 
    \polyintm[9]_i_1 
       (.I0(bdatw[1]),
        .I1(bdatw[0]),
        .I2(bdatw[2]),
        .I3(bdatw[3]),
        .I4(Q[8]),
        .I5(polyintm1__0),
        .O(\polyintm[9]_i_1_n_0 ));
  FDRE \polyintm_reg[10] 
       (.C(clk),
        .CE(\polyintm[14]_i_1_n_0 ),
        .D(\polyintm[10]_i_1_n_0 ),
        .Q(Q[9]),
        .R(SR));
  FDRE \polyintm_reg[11] 
       (.C(clk),
        .CE(\polyintm[14]_i_1_n_0 ),
        .D(\polyintm[11]_i_1_n_0 ),
        .Q(Q[10]),
        .R(SR));
  FDRE \polyintm_reg[12] 
       (.C(clk),
        .CE(\polyintm[14]_i_1_n_0 ),
        .D(\polyintm[12]_i_1_n_0 ),
        .Q(Q[11]),
        .R(SR));
  FDRE \polyintm_reg[13] 
       (.C(clk),
        .CE(\polyintm[14]_i_1_n_0 ),
        .D(\polyintm[13]_i_1_n_0 ),
        .Q(Q[12]),
        .R(SR));
  FDRE \polyintm_reg[14] 
       (.C(clk),
        .CE(\polyintm[14]_i_1_n_0 ),
        .D(\polyintm[14]_i_2_n_0 ),
        .Q(Q[13]),
        .R(SR));
  FDRE \polyintm_reg[1] 
       (.C(clk),
        .CE(\polyintm[14]_i_1_n_0 ),
        .D(\polyintm[1]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \polyintm_reg[2] 
       (.C(clk),
        .CE(\polyintm[14]_i_1_n_0 ),
        .D(\polyintm[2]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \polyintm_reg[3] 
       (.C(clk),
        .CE(\polyintm[14]_i_1_n_0 ),
        .D(\polyintm[3]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \polyintm_reg[4] 
       (.C(clk),
        .CE(\polyintm[14]_i_1_n_0 ),
        .D(\polyintm[4]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \polyintm_reg[5] 
       (.C(clk),
        .CE(\polyintm[14]_i_1_n_0 ),
        .D(\polyintm[5]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \polyintm_reg[6] 
       (.C(clk),
        .CE(\polyintm[14]_i_1_n_0 ),
        .D(\polyintm[6]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \polyintm_reg[7] 
       (.C(clk),
        .CE(\polyintm[14]_i_1_n_0 ),
        .D(\polyintm[7]_i_1_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE \polyintm_reg[8] 
       (.C(clk),
        .CE(\polyintm[14]_i_1_n_0 ),
        .D(\polyintm[8]_i_1_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDRE \polyintm_reg[9] 
       (.C(clk),
        .CE(\polyintm[14]_i_1_n_0 ),
        .D(\polyintm[9]_i_1_n_0 ),
        .Q(Q[8]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFF0400FBFF0000)) 
    \polyintr[10]_i_1 
       (.I0(bdatw[0]),
        .I1(bdatw[1]),
        .I2(bdatw[2]),
        .I3(bdatw[3]),
        .I4(\polyintr_reg[14]_0 [9]),
        .I5(polyintr10_out),
        .O(\polyintr[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0800F7FF0000)) 
    \polyintr[11]_i_1 
       (.I0(bdatw[1]),
        .I1(bdatw[0]),
        .I2(bdatw[2]),
        .I3(bdatw[3]),
        .I4(\polyintr_reg[14]_0 [10]),
        .I5(polyintr10_out),
        .O(\polyintr[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1000EFFF0000)) 
    \polyintr[12]_i_1 
       (.I0(bdatw[0]),
        .I1(bdatw[1]),
        .I2(bdatw[3]),
        .I3(bdatw[2]),
        .I4(\polyintr_reg[14]_0 [11]),
        .I5(polyintr10_out),
        .O(\polyintr[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4000BFFF0000)) 
    \polyintr[13]_i_1 
       (.I0(bdatw[1]),
        .I1(bdatw[0]),
        .I2(bdatw[3]),
        .I3(bdatw[2]),
        .I4(\polyintr_reg[14]_0 [12]),
        .I5(polyintr10_out),
        .O(\polyintr[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20040000)) 
    \polyintr[14]_i_1 
       (.I0(bdatw[5]),
        .I1(bdatw[4]),
        .I2(bdatw[7]),
        .I3(bdatw[6]),
        .I4(\polyintr[14]_i_3_n_0 ),
        .O(\polyintr[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4000BFFF0000)) 
    \polyintr[14]_i_2 
       (.I0(bdatw[0]),
        .I1(bdatw[1]),
        .I2(bdatw[3]),
        .I3(bdatw[2]),
        .I4(\polyintr_reg[14]_0 [13]),
        .I5(polyintr10_out),
        .O(\polyintr[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \polyintr[14]_i_3 
       (.I0(p_14_in),
        .I1(badr[2]),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[3]),
        .O(\polyintr[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \polyintr[14]_i_4 
       (.I0(badr[3]),
        .I1(badr[1]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(p_14_in),
        .I5(polyintr2__1),
        .O(polyintr10_out));
  LUT6 #(
    .INIT(64'hFFFF0004FFFB0000)) 
    \polyintr[1]_i_1 
       (.I0(bdatw[1]),
        .I1(bdatw[0]),
        .I2(bdatw[2]),
        .I3(bdatw[3]),
        .I4(\polyintr_reg[14]_0 [0]),
        .I5(polyintr10_out),
        .O(\polyintr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0004FFFB0000)) 
    \polyintr[2]_i_1 
       (.I0(bdatw[0]),
        .I1(bdatw[1]),
        .I2(bdatw[2]),
        .I3(bdatw[3]),
        .I4(\polyintr_reg[14]_0 [1]),
        .I5(polyintr10_out),
        .O(\polyintr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0008FFF70000)) 
    \polyintr[3]_i_1 
       (.I0(bdatw[1]),
        .I1(bdatw[0]),
        .I2(bdatw[2]),
        .I3(bdatw[3]),
        .I4(\polyintr_reg[14]_0 [2]),
        .I5(polyintr10_out),
        .O(\polyintr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0100FEFF0000)) 
    \polyintr[4]_i_1 
       (.I0(bdatw[0]),
        .I1(bdatw[1]),
        .I2(bdatw[3]),
        .I3(bdatw[2]),
        .I4(\polyintr_reg[14]_0 [3]),
        .I5(polyintr10_out),
        .O(\polyintr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0400FBFF0000)) 
    \polyintr[5]_i_1 
       (.I0(bdatw[1]),
        .I1(bdatw[0]),
        .I2(bdatw[3]),
        .I3(bdatw[2]),
        .I4(\polyintr_reg[14]_0 [4]),
        .I5(polyintr10_out),
        .O(\polyintr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0400FBFF0000)) 
    \polyintr[6]_i_1 
       (.I0(bdatw[0]),
        .I1(bdatw[1]),
        .I2(bdatw[3]),
        .I3(bdatw[2]),
        .I4(\polyintr_reg[14]_0 [5]),
        .I5(polyintr10_out),
        .O(\polyintr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0800F7FF0000)) 
    \polyintr[7]_i_1 
       (.I0(bdatw[1]),
        .I1(bdatw[0]),
        .I2(bdatw[3]),
        .I3(bdatw[2]),
        .I4(\polyintr_reg[14]_0 [6]),
        .I5(polyintr10_out),
        .O(\polyintr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0100FEFF0000)) 
    \polyintr[8]_i_1 
       (.I0(bdatw[0]),
        .I1(bdatw[1]),
        .I2(bdatw[2]),
        .I3(bdatw[3]),
        .I4(\polyintr_reg[14]_0 [7]),
        .I5(polyintr10_out),
        .O(\polyintr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0400FBFF0000)) 
    \polyintr[9]_i_1 
       (.I0(bdatw[1]),
        .I1(bdatw[0]),
        .I2(bdatw[2]),
        .I3(bdatw[3]),
        .I4(\polyintr_reg[14]_0 [8]),
        .I5(polyintr10_out),
        .O(\polyintr[9]_i_1_n_0 ));
  FDRE \polyintr_reg[10] 
       (.C(clk),
        .CE(\polyintr[14]_i_1_n_0 ),
        .D(\polyintr[10]_i_1_n_0 ),
        .Q(\polyintr_reg[14]_0 [9]),
        .R(SR));
  FDRE \polyintr_reg[11] 
       (.C(clk),
        .CE(\polyintr[14]_i_1_n_0 ),
        .D(\polyintr[11]_i_1_n_0 ),
        .Q(\polyintr_reg[14]_0 [10]),
        .R(SR));
  FDRE \polyintr_reg[12] 
       (.C(clk),
        .CE(\polyintr[14]_i_1_n_0 ),
        .D(\polyintr[12]_i_1_n_0 ),
        .Q(\polyintr_reg[14]_0 [11]),
        .R(SR));
  FDRE \polyintr_reg[13] 
       (.C(clk),
        .CE(\polyintr[14]_i_1_n_0 ),
        .D(\polyintr[13]_i_1_n_0 ),
        .Q(\polyintr_reg[14]_0 [12]),
        .R(SR));
  FDRE \polyintr_reg[14] 
       (.C(clk),
        .CE(\polyintr[14]_i_1_n_0 ),
        .D(\polyintr[14]_i_2_n_0 ),
        .Q(\polyintr_reg[14]_0 [13]),
        .R(SR));
  FDRE \polyintr_reg[1] 
       (.C(clk),
        .CE(\polyintr[14]_i_1_n_0 ),
        .D(\polyintr[1]_i_1_n_0 ),
        .Q(\polyintr_reg[14]_0 [0]),
        .R(SR));
  FDRE \polyintr_reg[2] 
       (.C(clk),
        .CE(\polyintr[14]_i_1_n_0 ),
        .D(\polyintr[2]_i_1_n_0 ),
        .Q(\polyintr_reg[14]_0 [1]),
        .R(SR));
  FDRE \polyintr_reg[3] 
       (.C(clk),
        .CE(\polyintr[14]_i_1_n_0 ),
        .D(\polyintr[3]_i_1_n_0 ),
        .Q(\polyintr_reg[14]_0 [2]),
        .R(SR));
  FDRE \polyintr_reg[4] 
       (.C(clk),
        .CE(\polyintr[14]_i_1_n_0 ),
        .D(\polyintr[4]_i_1_n_0 ),
        .Q(\polyintr_reg[14]_0 [3]),
        .R(SR));
  FDRE \polyintr_reg[5] 
       (.C(clk),
        .CE(\polyintr[14]_i_1_n_0 ),
        .D(\polyintr[5]_i_1_n_0 ),
        .Q(\polyintr_reg[14]_0 [4]),
        .R(SR));
  FDRE \polyintr_reg[6] 
       (.C(clk),
        .CE(\polyintr[14]_i_1_n_0 ),
        .D(\polyintr[6]_i_1_n_0 ),
        .Q(\polyintr_reg[14]_0 [5]),
        .R(SR));
  FDRE \polyintr_reg[7] 
       (.C(clk),
        .CE(\polyintr[14]_i_1_n_0 ),
        .D(\polyintr[7]_i_1_n_0 ),
        .Q(\polyintr_reg[14]_0 [6]),
        .R(SR));
  FDRE \polyintr_reg[8] 
       (.C(clk),
        .CE(\polyintr[14]_i_1_n_0 ),
        .D(\polyintr[8]_i_1_n_0 ),
        .Q(\polyintr_reg[14]_0 [7]),
        .R(SR));
  FDRE \polyintr_reg[9] 
       (.C(clk),
        .CE(\polyintr[14]_i_1_n_0 ),
        .D(\polyintr[9]_i_1_n_0 ),
        .Q(\polyintr_reg[14]_0 [8]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    rd_polyctl_i_1
       (.I0(rst_n),
        .O(SR));
endmodule

module poly_smph
   (plff_full,
    psem_occupy__2,
    .bdatw_7_sp_1(bdatw_7_sn_1),
    .bdatw_6_sp_1(bdatw_6_sn_1),
    Q,
    \polysmph_reg[2]_0 ,
    \polysmph_reg[3]_0 ,
    \polysmph_reg[1]_0 ,
    \polysmph_reg[0]_0 ,
    \polysmph_reg[0]_1 ,
    \polysmph_reg[0]_2 ,
    \polysmph_reg[1]_1 ,
    \polysmph_reg[1]_2 ,
    \polysmph_reg[2]_1 ,
    \polysmph_reg[3]_1 ,
    \polysmph_reg[2]_2 ,
    \stat_reg[1] ,
    clk,
    psem_rst_n,
    badr,
    bdatw,
    p_14_in,
    rst_n,
    pctl_serr_rst,
    brdy,
    bcmdw,
    bcs_poly_n);
  output plff_full;
  output psem_occupy__2;
  output [1:0]Q;
  output \polysmph_reg[2]_0 ;
  output \polysmph_reg[3]_0 ;
  output \polysmph_reg[1]_0 ;
  output \polysmph_reg[0]_0 ;
  output \polysmph_reg[0]_1 ;
  output \polysmph_reg[0]_2 ;
  output \polysmph_reg[1]_1 ;
  output \polysmph_reg[1]_2 ;
  output \polysmph_reg[2]_1 ;
  output \polysmph_reg[3]_1 ;
  output \polysmph_reg[2]_2 ;
  input \stat_reg[1] ;
  input clk;
  input psem_rst_n;
  input [3:0]badr;
  input [7:0]bdatw;
  input p_14_in;
  input rst_n;
  input pctl_serr_rst;
  input brdy;
  input bcmdw;
  input bcs_poly_n;
  output bdatw_7_sn_1;
  output bdatw_6_sn_1;

  wire \<const1> ;
  wire [1:0]Q;
  wire [3:0]badr;
  wire bcmdw;
  wire bcs_poly_n;
  wire [7:0]bdatw;
  wire bdatw_6_sn_1;
  wire bdatw_7_sn_1;
  wire brdy;
  wire clk;
  wire [3:0]\lram/mem_rd ;
  wire p_14_in;
  wire pctl_serr_rst;
  wire \pctrl/rd_polysmph0_rg1__2 ;
  wire pfifo_n_6;
  wire pfsm_n_0;
  wire plff_empty;
  wire plff_full;
  wire plff_read;
  wire \polysmph[3]_i_2__2_n_0 ;
  wire \polysmph[3]_i_5__2_n_0 ;
  wire \polysmph[3]_i_8_n_0 ;
  wire \polysmph_reg[0]_0 ;
  wire \polysmph_reg[0]_1 ;
  wire \polysmph_reg[0]_2 ;
  wire \polysmph_reg[1]_0 ;
  wire \polysmph_reg[1]_1 ;
  wire \polysmph_reg[1]_2 ;
  wire \polysmph_reg[2]_0 ;
  wire \polysmph_reg[2]_1 ;
  wire \polysmph_reg[2]_2 ;
  wire \polysmph_reg[3]_0 ;
  wire \polysmph_reg[3]_1 ;
  wire psem_occupy__2;
  wire psem_read;
  wire psem_rst_n;
  wire rst_n;
  wire [0:0]stat_nx;
  wire \stat_reg[1] ;

  VCC VCC
       (.P(\<const1> ));
  poly_fifo4s16_13 pfifo
       (.D(stat_nx),
        .Q(Q),
        .badr(badr),
        .bdatw(bdatw),
        .bdatw_6_sp_1(bdatw_6_sn_1),
        .clk(clk),
        .full_wr_reg(plff_full),
        .\mem_rd_reg[0] (pfsm_n_0),
        .\mem_rd_reg[3] (\lram/mem_rd ),
        .p_14_in(p_14_in),
        .pctl_serr_rst(pctl_serr_rst),
        .plff_empty(plff_empty),
        .plff_read(plff_read),
        .\polysmph_reg[3] (psem_occupy__2),
        .\polysmph_reg[3]_0 (\polysmph[3]_i_2__2_n_0 ),
        .psem_read(psem_read),
        .\ptr_wr_reg[0] (\stat_reg[1] ),
        .rd_polysmph0_rg1__2(\pctrl/rd_polysmph0_rg1__2 ),
        .rst_n(rst_n),
        .rst_n_0(pfifo_n_6));
  poly_smph_fsm_14 pfsm
       (.D(stat_nx),
        .Q(Q),
        .clk(clk),
        .plff_empty(plff_empty),
        .plff_full(plff_full),
        .\polysmph_reg[2] (psem_occupy__2),
        .\stat_reg[0]_0 (pfsm_n_0),
        .\stat_reg[1]_0 (\polysmph_reg[2]_0 ),
        .\stat_reg[1]_1 (\polysmph_reg[3]_0 ),
        .\stat_reg[1]_2 (\polysmph_reg[1]_0 ),
        .\stat_reg[1]_3 (\polysmph_reg[0]_0 ),
        .\stat_reg[1]_4 (\stat_reg[1] ));
  LUT2 #(
    .INIT(4'hB)) 
    \poly_pirq[11]_INST_0_i_6 
       (.I0(\polysmph_reg[2]_0 ),
        .I1(\polysmph_reg[3]_0 ),
        .O(\polysmph_reg[2]_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \poly_pirq[12]_INST_0_i_6 
       (.I0(\polysmph_reg[0]_0 ),
        .I1(\polysmph_reg[1]_0 ),
        .O(\polysmph_reg[0]_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    \poly_pirq[13]_INST_0_i_6 
       (.I0(\polysmph_reg[1]_0 ),
        .I1(\polysmph_reg[0]_0 ),
        .O(\polysmph_reg[1]_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    \poly_pirq[14]_INST_0_i_6 
       (.I0(\polysmph_reg[0]_0 ),
        .I1(\polysmph_reg[1]_0 ),
        .O(\polysmph_reg[0]_2 ));
  LUT2 #(
    .INIT(4'h7)) 
    \poly_pirq[3]_INST_0_i_5 
       (.I0(\polysmph_reg[1]_0 ),
        .I1(\polysmph_reg[0]_0 ),
        .O(\polysmph_reg[1]_2 ));
  LUT2 #(
    .INIT(4'hE)) 
    \poly_pirq[3]_INST_0_i_6 
       (.I0(\polysmph_reg[2]_0 ),
        .I1(\polysmph_reg[3]_0 ),
        .O(\polysmph_reg[2]_2 ));
  LUT2 #(
    .INIT(4'hB)) 
    \poly_pirq[7]_INST_0_i_6 
       (.I0(\polysmph_reg[3]_0 ),
        .I1(\polysmph_reg[2]_0 ),
        .O(\polysmph_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h5DFF5D5D5D5D5D5D)) 
    \polysmph[3]_i_2__2 
       (.I0(psem_rst_n),
        .I1(psem_read),
        .I2(psem_occupy__2),
        .I3(\polysmph[3]_i_5__2_n_0 ),
        .I4(bdatw_7_sn_1),
        .I5(\pctrl/rd_polysmph0_rg1__2 ),
        .O(\polysmph[3]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \polysmph[3]_i_5__2 
       (.I0(\polysmph[3]_i_8_n_0 ),
        .I1(\polysmph_reg[1]_0 ),
        .I2(bdatw[1]),
        .I3(\polysmph_reg[2]_0 ),
        .I4(bdatw[2]),
        .O(\polysmph[3]_i_5__2_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \polysmph[3]_i_6__2 
       (.I0(bdatw[7]),
        .I1(bdatw[6]),
        .I2(brdy),
        .I3(bcmdw),
        .I4(bcs_poly_n),
        .O(bdatw_7_sn_1));
  LUT6 #(
    .INIT(64'hDFFDFFFFFFFFDFFD)) 
    \polysmph[3]_i_8 
       (.I0(bdatw[5]),
        .I1(bdatw[4]),
        .I2(\polysmph_reg[0]_0 ),
        .I3(bdatw[0]),
        .I4(bdatw[3]),
        .I5(\polysmph_reg[3]_0 ),
        .O(\polysmph[3]_i_8_n_0 ));
  FDRE \polysmph_reg[0] 
       (.C(clk),
        .CE(\polysmph[3]_i_2__2_n_0 ),
        .D(\lram/mem_rd [0]),
        .Q(\polysmph_reg[0]_0 ),
        .R(pfifo_n_6));
  FDRE \polysmph_reg[1] 
       (.C(clk),
        .CE(\polysmph[3]_i_2__2_n_0 ),
        .D(\lram/mem_rd [1]),
        .Q(\polysmph_reg[1]_0 ),
        .R(pfifo_n_6));
  FDRE \polysmph_reg[2] 
       (.C(clk),
        .CE(\polysmph[3]_i_2__2_n_0 ),
        .D(\lram/mem_rd [2]),
        .Q(\polysmph_reg[2]_0 ),
        .R(pfifo_n_6));
  FDRE \polysmph_reg[3] 
       (.C(clk),
        .CE(\polysmph[3]_i_2__2_n_0 ),
        .D(\lram/mem_rd [3]),
        .Q(\polysmph_reg[3]_0 ),
        .R(pfifo_n_6));
  FDRE psem_read_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(plff_read),
        .Q(psem_read),
        .R(\stat_reg[1] ));
endmodule

(* ORIG_REF_NAME = "poly_smph" *) 
module poly_smph_0
   (\stat_reg[0] ,
    \polysmph_reg[3]_0 ,
    \polysmph_reg[3]_1 ,
    \polysmph_reg[2]_0 ,
    \polysmph_reg[0]_0 ,
    \polysmph_reg[0]_1 ,
    \polysmph_reg[1]_0 ,
    \polysmph_reg[0]_2 ,
    full_wr_reg,
    \polysmph_reg[2]_1 ,
    \polysmph_reg[0]_3 ,
    \polysmph_reg[0]_4 ,
    \polysmph_reg[3]_2 ,
    \polysmph_reg[3]_3 ,
    \polysmph_reg[2]_2 ,
    \polysmph_reg[1]_1 ,
    \polysmph_reg[1]_2 ,
    \polysmph_reg[1]_3 ,
    \polysmph_reg[1]_4 ,
    \polysmph_reg[1]_5 ,
    \stat_reg[1] ,
    clk,
    psem_rst_n,
    \polysmph_reg[0]_5 ,
    badr,
    \mem_rd_reg[1] ,
    bdatw,
    p_14_in,
    Q,
    plff_full,
    \poly_pirq[12] ,
    \poly_pirq[12]_0 ,
    \poly_pirq[12]_1 ,
    \poly_pirq[8] ,
    \poly_pirq[4] ,
    psem_occupy__2,
    \poly_pirq[2] ,
    \poly_pirq[13] ,
    \poly_pirq[3] ,
    \poly_pirq[3]_0 ,
    \poly_pirq[7] ,
    \poly_pirq[7]_0 ,
    rst_n,
    pctl_serr_rst);
  output \stat_reg[0] ;
  output \polysmph_reg[3]_0 ;
  output \polysmph_reg[3]_1 ;
  output \polysmph_reg[2]_0 ;
  output \polysmph_reg[0]_0 ;
  output \polysmph_reg[0]_1 ;
  output \polysmph_reg[1]_0 ;
  output \polysmph_reg[0]_2 ;
  output full_wr_reg;
  output \polysmph_reg[2]_1 ;
  output \polysmph_reg[0]_3 ;
  output \polysmph_reg[0]_4 ;
  output \polysmph_reg[3]_2 ;
  output \polysmph_reg[3]_3 ;
  output \polysmph_reg[2]_2 ;
  output \polysmph_reg[1]_1 ;
  output \polysmph_reg[1]_2 ;
  output \polysmph_reg[1]_3 ;
  output \polysmph_reg[1]_4 ;
  output \polysmph_reg[1]_5 ;
  input \stat_reg[1] ;
  input clk;
  input psem_rst_n;
  input \polysmph_reg[0]_5 ;
  input [3:0]badr;
  input \mem_rd_reg[1] ;
  input [7:0]bdatw;
  input p_14_in;
  input [1:0]Q;
  input plff_full;
  input \poly_pirq[12] ;
  input \poly_pirq[12]_0 ;
  input \poly_pirq[12]_1 ;
  input \poly_pirq[8] ;
  input \poly_pirq[4] ;
  input psem_occupy__2;
  input \poly_pirq[2] ;
  input \poly_pirq[13] ;
  input \poly_pirq[3] ;
  input \poly_pirq[3]_0 ;
  input \poly_pirq[7] ;
  input \poly_pirq[7]_0 ;
  input rst_n;
  input pctl_serr_rst;

  wire \<const1> ;
  wire [1:0]Q;
  wire [3:0]badr;
  wire [7:0]bdatw;
  wire clk;
  wire full_wr_reg;
  wire [3:0]\lram/mem_rd ;
  wire \mem_rd_reg[1] ;
  wire [4:3]p_0_in;
  wire p_14_in;
  wire pctl_serr_rst;
  wire \pctrl/rd_polysmph1_rg1__1 ;
  wire pfifo_n_6;
  wire pfsm_n_3;
  wire plff_empty;
  wire plff_full;
  wire plff_full_0;
  wire plff_read;
  wire \poly_pirq[11]_INST_0_i_3_n_0 ;
  wire \poly_pirq[12] ;
  wire \poly_pirq[12]_0 ;
  wire \poly_pirq[12]_1 ;
  wire \poly_pirq[12]_INST_0_i_3_n_0 ;
  wire \poly_pirq[13] ;
  wire \poly_pirq[13]_INST_0_i_3_n_0 ;
  wire \poly_pirq[14]_INST_0_i_3_n_0 ;
  wire \poly_pirq[2] ;
  wire \poly_pirq[3] ;
  wire \poly_pirq[3]_0 ;
  wire \poly_pirq[4] ;
  wire \poly_pirq[7] ;
  wire \poly_pirq[7]_0 ;
  wire \poly_pirq[7]_INST_0_i_3_n_0 ;
  wire \poly_pirq[8] ;
  wire \polysmph[3]_i_2__1_n_0 ;
  wire \polysmph[3]_i_4_n_0 ;
  wire \polysmph[3]_i_6_n_0 ;
  wire \polysmph_reg[0]_0 ;
  wire \polysmph_reg[0]_1 ;
  wire \polysmph_reg[0]_2 ;
  wire \polysmph_reg[0]_3 ;
  wire \polysmph_reg[0]_4 ;
  wire \polysmph_reg[0]_5 ;
  wire \polysmph_reg[1]_0 ;
  wire \polysmph_reg[1]_1 ;
  wire \polysmph_reg[1]_2 ;
  wire \polysmph_reg[1]_3 ;
  wire \polysmph_reg[1]_4 ;
  wire \polysmph_reg[1]_5 ;
  wire \polysmph_reg[2]_0 ;
  wire \polysmph_reg[2]_1 ;
  wire \polysmph_reg[2]_2 ;
  wire \polysmph_reg[3]_0 ;
  wire \polysmph_reg[3]_1 ;
  wire \polysmph_reg[3]_2 ;
  wire \polysmph_reg[3]_3 ;
  wire psem_occupy__2;
  wire psem_occupy__2_1;
  wire psem_read;
  wire psem_rst_n;
  wire rst_n;
  wire [0:0]stat_nx;
  wire \stat_reg[0] ;
  wire \stat_reg[1] ;

  VCC VCC
       (.P(\<const1> ));
  poly_fifo4s16_8 pfifo
       (.D(stat_nx),
        .Q(p_0_in),
        .badr(badr),
        .\bdatr[7]_INST_0_i_1 (Q[1]),
        .bdatw(bdatw),
        .clk(clk),
        .full_wr_reg(full_wr_reg),
        .\mem_rd_reg[0] (pfsm_n_3),
        .\mem_rd_reg[1] (\mem_rd_reg[1] ),
        .\mem_rd_reg[3] (\lram/mem_rd ),
        .p_14_in(p_14_in),
        .pctl_serr_rst(pctl_serr_rst),
        .plff_empty(plff_empty),
        .plff_full(plff_full),
        .plff_full_0(plff_full_0),
        .plff_read(plff_read),
        .\polysmph_reg[3] (\polysmph[3]_i_2__1_n_0 ),
        .psem_occupy__2(psem_occupy__2),
        .psem_occupy__2_1(psem_occupy__2_1),
        .psem_read(psem_read),
        .\ptr_wr_reg[0] (\stat_reg[1] ),
        .rd_polysmph1_rg1__1(\pctrl/rd_polysmph1_rg1__1 ),
        .rst_n(rst_n),
        .rst_n_0(pfifo_n_6));
  poly_smph_fsm_9 pfsm
       (.D(stat_nx),
        .Q(p_0_in),
        .\bdatr[7]_INST_0_i_1 (Q),
        .clk(clk),
        .\mem_rd_reg[0] (\polysmph_reg[2]_0 ),
        .\mem_rd_reg[0]_0 (\polysmph_reg[3]_1 ),
        .\mem_rd_reg[0]_1 (\polysmph_reg[1]_0 ),
        .\mem_rd_reg[0]_2 (\polysmph_reg[0]_1 ),
        .plff_empty(plff_empty),
        .plff_full(plff_full),
        .plff_full_0(plff_full_0),
        .psem_occupy__2_1(psem_occupy__2_1),
        .\stat_reg[0]_0 (\stat_reg[0] ),
        .\stat_reg[0]_1 (pfsm_n_3),
        .\stat_reg[1]_0 (\stat_reg[1] ));
  LUT6 #(
    .INIT(64'h040004000400FFFF)) 
    \poly_pirq[10]_INST_0_i_1 
       (.I0(\polysmph_reg[0]_1 ),
        .I1(\polysmph_reg[1]_0 ),
        .I2(\polysmph_reg[2]_0 ),
        .I3(\polysmph_reg[3]_1 ),
        .I4(\poly_pirq[2] ),
        .I5(\poly_pirq[8] ),
        .O(\polysmph_reg[0]_4 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \poly_pirq[11]_INST_0_i_1 
       (.I0(\polysmph_reg[1]_0 ),
        .I1(\polysmph_reg[0]_1 ),
        .I2(\poly_pirq[11]_INST_0_i_3_n_0 ),
        .I3(\poly_pirq[7] ),
        .I4(\poly_pirq[7]_0 ),
        .I5(\poly_pirq[8] ),
        .O(\polysmph_reg[1]_5 ));
  LUT2 #(
    .INIT(4'hB)) 
    \poly_pirq[11]_INST_0_i_3 
       (.I0(\polysmph_reg[2]_0 ),
        .I1(\polysmph_reg[3]_1 ),
        .O(\poly_pirq[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \poly_pirq[12]_INST_0_i_1 
       (.I0(\poly_pirq[12]_INST_0_i_3_n_0 ),
        .I1(\polysmph_reg[3]_1 ),
        .I2(\polysmph_reg[2]_0 ),
        .I3(\poly_pirq[12] ),
        .I4(\poly_pirq[12]_0 ),
        .I5(\poly_pirq[12]_1 ),
        .O(\polysmph_reg[3]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \poly_pirq[12]_INST_0_i_3 
       (.I0(\polysmph_reg[0]_1 ),
        .I1(\polysmph_reg[1]_0 ),
        .O(\poly_pirq[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \poly_pirq[13]_INST_0_i_1 
       (.I0(\poly_pirq[13]_INST_0_i_3_n_0 ),
        .I1(\polysmph_reg[3]_1 ),
        .I2(\polysmph_reg[2]_0 ),
        .I3(\poly_pirq[13] ),
        .I4(\poly_pirq[12]_0 ),
        .I5(\poly_pirq[12]_1 ),
        .O(\polysmph_reg[3]_3 ));
  LUT2 #(
    .INIT(4'hB)) 
    \poly_pirq[13]_INST_0_i_3 
       (.I0(\polysmph_reg[1]_0 ),
        .I1(\polysmph_reg[0]_1 ),
        .O(\poly_pirq[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \poly_pirq[14]_INST_0_i_1 
       (.I0(\poly_pirq[14]_INST_0_i_3_n_0 ),
        .I1(\polysmph_reg[3]_1 ),
        .I2(\polysmph_reg[2]_0 ),
        .I3(\poly_pirq[2] ),
        .I4(\poly_pirq[12]_0 ),
        .I5(\poly_pirq[12]_1 ),
        .O(\polysmph_reg[3]_2 ));
  LUT2 #(
    .INIT(4'hB)) 
    \poly_pirq[14]_INST_0_i_3 
       (.I0(\polysmph_reg[0]_1 ),
        .I1(\polysmph_reg[1]_0 ),
        .O(\poly_pirq[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h01010101010101FF)) 
    \poly_pirq[1]_INST_0_i_1 
       (.I0(\poly_pirq[13]_INST_0_i_3_n_0 ),
        .I1(\polysmph_reg[2]_0 ),
        .I2(\polysmph_reg[3]_1 ),
        .I3(\poly_pirq[13] ),
        .I4(\poly_pirq[12]_1 ),
        .I5(\poly_pirq[12]_0 ),
        .O(\polysmph_reg[2]_2 ));
  LUT6 #(
    .INIT(64'h01010101010101FF)) 
    \poly_pirq[2]_INST_0_i_1 
       (.I0(\poly_pirq[14]_INST_0_i_3_n_0 ),
        .I1(\polysmph_reg[2]_0 ),
        .I2(\polysmph_reg[3]_1 ),
        .I3(\poly_pirq[2] ),
        .I4(\poly_pirq[12]_1 ),
        .I5(\poly_pirq[12]_0 ),
        .O(\polysmph_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h000800080008FFFF)) 
    \poly_pirq[3]_INST_0_i_1 
       (.I0(\polysmph_reg[1]_0 ),
        .I1(\polysmph_reg[0]_1 ),
        .I2(\polysmph_reg[2]_0 ),
        .I3(\polysmph_reg[3]_1 ),
        .I4(\poly_pirq[3] ),
        .I5(\poly_pirq[3]_0 ),
        .O(\polysmph_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h010001000100FFFF)) 
    \poly_pirq[4]_INST_0_i_1 
       (.I0(\polysmph_reg[0]_1 ),
        .I1(\polysmph_reg[1]_0 ),
        .I2(\polysmph_reg[3]_1 ),
        .I3(\polysmph_reg[2]_0 ),
        .I4(\poly_pirq[12] ),
        .I5(\poly_pirq[4] ),
        .O(\polysmph_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h040004000400FFFF)) 
    \poly_pirq[5]_INST_0_i_1 
       (.I0(\polysmph_reg[1]_0 ),
        .I1(\polysmph_reg[0]_1 ),
        .I2(\polysmph_reg[3]_1 ),
        .I3(\polysmph_reg[2]_0 ),
        .I4(\poly_pirq[13] ),
        .I5(\poly_pirq[4] ),
        .O(\polysmph_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h040004000400FFFF)) 
    \poly_pirq[6]_INST_0_i_1 
       (.I0(\polysmph_reg[0]_1 ),
        .I1(\polysmph_reg[1]_0 ),
        .I2(\polysmph_reg[3]_1 ),
        .I3(\polysmph_reg[2]_0 ),
        .I4(\poly_pirq[2] ),
        .I5(\poly_pirq[4] ),
        .O(\polysmph_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \poly_pirq[7]_INST_0_i_1 
       (.I0(\polysmph_reg[1]_0 ),
        .I1(\polysmph_reg[0]_1 ),
        .I2(\poly_pirq[7]_INST_0_i_3_n_0 ),
        .I3(\poly_pirq[7] ),
        .I4(\poly_pirq[7]_0 ),
        .I5(\poly_pirq[4] ),
        .O(\polysmph_reg[1]_4 ));
  LUT2 #(
    .INIT(4'hB)) 
    \poly_pirq[7]_INST_0_i_3 
       (.I0(\polysmph_reg[3]_1 ),
        .I1(\polysmph_reg[2]_0 ),
        .O(\poly_pirq[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h010001000100FFFF)) 
    \poly_pirq[8]_INST_0_i_1 
       (.I0(\polysmph_reg[0]_1 ),
        .I1(\polysmph_reg[1]_0 ),
        .I2(\polysmph_reg[2]_0 ),
        .I3(\polysmph_reg[3]_1 ),
        .I4(\poly_pirq[12] ),
        .I5(\poly_pirq[8] ),
        .O(\polysmph_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h040004000400FFFF)) 
    \poly_pirq[9]_INST_0_i_1 
       (.I0(\polysmph_reg[1]_0 ),
        .I1(\polysmph_reg[0]_1 ),
        .I2(\polysmph_reg[2]_0 ),
        .I3(\polysmph_reg[3]_1 ),
        .I4(\poly_pirq[13] ),
        .I5(\poly_pirq[8] ),
        .O(\polysmph_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h5DFF5D5D5D5D5D5D)) 
    \polysmph[3]_i_2__1 
       (.I0(psem_rst_n),
        .I1(psem_read),
        .I2(psem_occupy__2_1),
        .I3(\polysmph[3]_i_4_n_0 ),
        .I4(\polysmph_reg[0]_5 ),
        .I5(\pctrl/rd_polysmph1_rg1__1 ),
        .O(\polysmph[3]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \polysmph[3]_i_4 
       (.I0(\polysmph[3]_i_6_n_0 ),
        .I1(\polysmph_reg[1]_0 ),
        .I2(bdatw[1]),
        .I3(\polysmph_reg[2]_0 ),
        .I4(bdatw[2]),
        .O(\polysmph[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDFFDFFFFFFFFDFFD)) 
    \polysmph[3]_i_6 
       (.I0(bdatw[5]),
        .I1(bdatw[4]),
        .I2(\polysmph_reg[0]_1 ),
        .I3(bdatw[0]),
        .I4(bdatw[3]),
        .I5(\polysmph_reg[3]_1 ),
        .O(\polysmph[3]_i_6_n_0 ));
  FDRE \polysmph_reg[0] 
       (.C(clk),
        .CE(\polysmph[3]_i_2__1_n_0 ),
        .D(\lram/mem_rd [0]),
        .Q(\polysmph_reg[0]_1 ),
        .R(pfifo_n_6));
  FDRE \polysmph_reg[1] 
       (.C(clk),
        .CE(\polysmph[3]_i_2__1_n_0 ),
        .D(\lram/mem_rd [1]),
        .Q(\polysmph_reg[1]_0 ),
        .R(pfifo_n_6));
  FDRE \polysmph_reg[2] 
       (.C(clk),
        .CE(\polysmph[3]_i_2__1_n_0 ),
        .D(\lram/mem_rd [2]),
        .Q(\polysmph_reg[2]_0 ),
        .R(pfifo_n_6));
  FDRE \polysmph_reg[3] 
       (.C(clk),
        .CE(\polysmph[3]_i_2__1_n_0 ),
        .D(\lram/mem_rd [3]),
        .Q(\polysmph_reg[3]_1 ),
        .R(pfifo_n_6));
  FDRE psem_read_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(plff_read),
        .Q(psem_read),
        .R(\stat_reg[1] ));
endmodule

(* ORIG_REF_NAME = "poly_smph" *) 
module poly_smph_1
   (plff_full,
    psem_occupy__2,
    Q,
    \polysmph_reg[2]_0 ,
    \polysmph_reg[3]_0 ,
    \polysmph_reg[1]_0 ,
    \polysmph_reg[0]_0 ,
    \polysmph_reg[0]_1 ,
    \polysmph_reg[0]_2 ,
    \polysmph_reg[1]_1 ,
    \polysmph_reg[1]_2 ,
    \polysmph_reg[2]_1 ,
    \polysmph_reg[3]_1 ,
    \polysmph_reg[2]_2 ,
    \stat_reg[1] ,
    clk,
    psem_rst_n,
    \polysmph_reg[0]_3 ,
    badr,
    \mem_rd_reg[1] ,
    bdatw,
    p_14_in,
    rst_n,
    pctl_serr_rst);
  output plff_full;
  output psem_occupy__2;
  output [1:0]Q;
  output \polysmph_reg[2]_0 ;
  output \polysmph_reg[3]_0 ;
  output \polysmph_reg[1]_0 ;
  output \polysmph_reg[0]_0 ;
  output \polysmph_reg[0]_1 ;
  output \polysmph_reg[0]_2 ;
  output \polysmph_reg[1]_1 ;
  output \polysmph_reg[1]_2 ;
  output \polysmph_reg[2]_1 ;
  output \polysmph_reg[3]_1 ;
  output \polysmph_reg[2]_2 ;
  input \stat_reg[1] ;
  input clk;
  input psem_rst_n;
  input \polysmph_reg[0]_3 ;
  input [3:0]badr;
  input \mem_rd_reg[1] ;
  input [7:0]bdatw;
  input p_14_in;
  input rst_n;
  input pctl_serr_rst;

  wire \<const1> ;
  wire [1:0]Q;
  wire [3:0]badr;
  wire [7:0]bdatw;
  wire clk;
  wire [3:0]\lram/mem_rd ;
  wire \mem_rd_reg[1] ;
  wire p_14_in;
  wire pctl_serr_rst;
  wire \pctrl/rd_polysmph2_rg1__2 ;
  wire pfifo_n_5;
  wire pfsm_n_0;
  wire plff_empty;
  wire plff_full;
  wire plff_read;
  wire \polysmph[3]_i_2__0_n_0 ;
  wire \polysmph[3]_i_4__0_n_0 ;
  wire \polysmph[3]_i_6__0_n_0 ;
  wire \polysmph_reg[0]_0 ;
  wire \polysmph_reg[0]_1 ;
  wire \polysmph_reg[0]_2 ;
  wire \polysmph_reg[0]_3 ;
  wire \polysmph_reg[1]_0 ;
  wire \polysmph_reg[1]_1 ;
  wire \polysmph_reg[1]_2 ;
  wire \polysmph_reg[2]_0 ;
  wire \polysmph_reg[2]_1 ;
  wire \polysmph_reg[2]_2 ;
  wire \polysmph_reg[3]_0 ;
  wire \polysmph_reg[3]_1 ;
  wire psem_occupy__2;
  wire psem_read;
  wire psem_rst_n;
  wire rst_n;
  wire [0:0]stat_nx;
  wire \stat_reg[1] ;

  VCC VCC
       (.P(\<const1> ));
  poly_fifo4s16_3 pfifo
       (.D(stat_nx),
        .Q(Q),
        .badr(badr),
        .bdatw(bdatw),
        .clk(clk),
        .full_wr_reg(plff_full),
        .\mem_rd_reg[0] (pfsm_n_0),
        .\mem_rd_reg[1] (\mem_rd_reg[1] ),
        .\mem_rd_reg[3] (\lram/mem_rd ),
        .p_14_in(p_14_in),
        .pctl_serr_rst(pctl_serr_rst),
        .plff_empty(plff_empty),
        .plff_read(plff_read),
        .\polysmph_reg[3] (psem_occupy__2),
        .\polysmph_reg[3]_0 (\polysmph[3]_i_2__0_n_0 ),
        .psem_read(psem_read),
        .\ptr_wr_reg[0] (\stat_reg[1] ),
        .rd_polysmph2_rg1__2(\pctrl/rd_polysmph2_rg1__2 ),
        .rst_n(rst_n),
        .rst_n_0(pfifo_n_5));
  poly_smph_fsm_4 pfsm
       (.D(stat_nx),
        .Q(Q),
        .clk(clk),
        .plff_empty(plff_empty),
        .plff_full(plff_full),
        .\polysmph_reg[2] (psem_occupy__2),
        .\stat_reg[0]_0 (pfsm_n_0),
        .\stat_reg[1]_0 (\polysmph_reg[2]_0 ),
        .\stat_reg[1]_1 (\polysmph_reg[3]_0 ),
        .\stat_reg[1]_2 (\polysmph_reg[1]_0 ),
        .\stat_reg[1]_3 (\polysmph_reg[0]_0 ),
        .\stat_reg[1]_4 (\stat_reg[1] ));
  LUT2 #(
    .INIT(4'hB)) 
    \poly_pirq[11]_INST_0_i_4 
       (.I0(\polysmph_reg[2]_0 ),
        .I1(\polysmph_reg[3]_0 ),
        .O(\polysmph_reg[2]_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \poly_pirq[12]_INST_0_i_4 
       (.I0(\polysmph_reg[0]_0 ),
        .I1(\polysmph_reg[1]_0 ),
        .O(\polysmph_reg[0]_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    \poly_pirq[13]_INST_0_i_4 
       (.I0(\polysmph_reg[1]_0 ),
        .I1(\polysmph_reg[0]_0 ),
        .O(\polysmph_reg[1]_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    \poly_pirq[14]_INST_0_i_4 
       (.I0(\polysmph_reg[0]_0 ),
        .I1(\polysmph_reg[1]_0 ),
        .O(\polysmph_reg[0]_2 ));
  LUT2 #(
    .INIT(4'h7)) 
    \poly_pirq[3]_INST_0_i_3 
       (.I0(\polysmph_reg[1]_0 ),
        .I1(\polysmph_reg[0]_0 ),
        .O(\polysmph_reg[1]_2 ));
  LUT2 #(
    .INIT(4'hE)) 
    \poly_pirq[3]_INST_0_i_4 
       (.I0(\polysmph_reg[2]_0 ),
        .I1(\polysmph_reg[3]_0 ),
        .O(\polysmph_reg[2]_2 ));
  LUT2 #(
    .INIT(4'hB)) 
    \poly_pirq[7]_INST_0_i_4 
       (.I0(\polysmph_reg[3]_0 ),
        .I1(\polysmph_reg[2]_0 ),
        .O(\polysmph_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h5DFF5D5D5D5D5D5D)) 
    \polysmph[3]_i_2__0 
       (.I0(psem_rst_n),
        .I1(psem_read),
        .I2(psem_occupy__2),
        .I3(\polysmph[3]_i_4__0_n_0 ),
        .I4(\polysmph_reg[0]_3 ),
        .I5(\pctrl/rd_polysmph2_rg1__2 ),
        .O(\polysmph[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \polysmph[3]_i_4__0 
       (.I0(\polysmph[3]_i_6__0_n_0 ),
        .I1(\polysmph_reg[1]_0 ),
        .I2(bdatw[1]),
        .I3(\polysmph_reg[2]_0 ),
        .I4(bdatw[2]),
        .O(\polysmph[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hDFFDFFFFFFFFDFFD)) 
    \polysmph[3]_i_6__0 
       (.I0(bdatw[5]),
        .I1(bdatw[4]),
        .I2(\polysmph_reg[0]_0 ),
        .I3(bdatw[0]),
        .I4(bdatw[3]),
        .I5(\polysmph_reg[3]_0 ),
        .O(\polysmph[3]_i_6__0_n_0 ));
  FDRE \polysmph_reg[0] 
       (.C(clk),
        .CE(\polysmph[3]_i_2__0_n_0 ),
        .D(\lram/mem_rd [0]),
        .Q(\polysmph_reg[0]_0 ),
        .R(pfifo_n_5));
  FDRE \polysmph_reg[1] 
       (.C(clk),
        .CE(\polysmph[3]_i_2__0_n_0 ),
        .D(\lram/mem_rd [1]),
        .Q(\polysmph_reg[1]_0 ),
        .R(pfifo_n_5));
  FDRE \polysmph_reg[2] 
       (.C(clk),
        .CE(\polysmph[3]_i_2__0_n_0 ),
        .D(\lram/mem_rd [2]),
        .Q(\polysmph_reg[2]_0 ),
        .R(pfifo_n_5));
  FDRE \polysmph_reg[3] 
       (.C(clk),
        .CE(\polysmph[3]_i_2__0_n_0 ),
        .D(\lram/mem_rd [3]),
        .Q(\polysmph_reg[3]_0 ),
        .R(pfifo_n_5));
  FDRE psem_read_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(plff_read),
        .Q(psem_read),
        .R(\stat_reg[1] ));
endmodule

(* ORIG_REF_NAME = "poly_smph" *) 
module poly_smph_2
   (psem_serr,
    \polysmph_reg[3]_0 ,
    \polysmph_reg[3]_1 ,
    \polysmph_reg[2]_0 ,
    \polysmph_reg[0]_0 ,
    \polysmph_reg[0]_1 ,
    \polysmph_reg[1]_0 ,
    \polysmph_reg[0]_2 ,
    \polysmph_reg[2]_1 ,
    \polysmph_reg[0]_3 ,
    \polysmph_reg[0]_4 ,
    \polysmph_reg[3]_2 ,
    \polysmph_reg[3]_3 ,
    \polysmph_reg[2]_2 ,
    \polysmph_reg[1]_1 ,
    \polysmph_reg[1]_2 ,
    \polysmph_reg[1]_3 ,
    \polysmph_reg[1]_4 ,
    \polysmph_reg[1]_5 ,
    \stat_reg[1] ,
    clk,
    psem_rst_n,
    \polysmph_reg[0]_5 ,
    badr,
    \mem_rd_reg[1] ,
    bdatw,
    p_14_in,
    \polyctl_reg[7] ,
    \polyctl_reg[7]_0 ,
    Q,
    plff_full,
    \poly_pirq[12] ,
    \poly_pirq[12]_0 ,
    \poly_pirq[12]_1 ,
    \poly_pirq[8] ,
    \poly_pirq[4] ,
    psem_occupy__2,
    \poly_pirq[2] ,
    \poly_pirq[13] ,
    \poly_pirq[3] ,
    \poly_pirq[3]_0 ,
    \poly_pirq[7] ,
    \poly_pirq[7]_0 ,
    rst_n,
    pctl_serr_rst);
  output psem_serr;
  output \polysmph_reg[3]_0 ;
  output \polysmph_reg[3]_1 ;
  output \polysmph_reg[2]_0 ;
  output \polysmph_reg[0]_0 ;
  output \polysmph_reg[0]_1 ;
  output \polysmph_reg[1]_0 ;
  output \polysmph_reg[0]_2 ;
  output \polysmph_reg[2]_1 ;
  output \polysmph_reg[0]_3 ;
  output \polysmph_reg[0]_4 ;
  output \polysmph_reg[3]_2 ;
  output \polysmph_reg[3]_3 ;
  output \polysmph_reg[2]_2 ;
  output \polysmph_reg[1]_1 ;
  output \polysmph_reg[1]_2 ;
  output \polysmph_reg[1]_3 ;
  output \polysmph_reg[1]_4 ;
  output \polysmph_reg[1]_5 ;
  input \stat_reg[1] ;
  input clk;
  input psem_rst_n;
  input \polysmph_reg[0]_5 ;
  input [3:0]badr;
  input \mem_rd_reg[1] ;
  input [7:0]bdatw;
  input p_14_in;
  input \polyctl_reg[7] ;
  input \polyctl_reg[7]_0 ;
  input [1:0]Q;
  input plff_full;
  input \poly_pirq[12] ;
  input \poly_pirq[12]_0 ;
  input \poly_pirq[12]_1 ;
  input \poly_pirq[8] ;
  input \poly_pirq[4] ;
  input psem_occupy__2;
  input \poly_pirq[2] ;
  input \poly_pirq[13] ;
  input \poly_pirq[3] ;
  input \poly_pirq[3]_0 ;
  input \poly_pirq[7] ;
  input \poly_pirq[7]_0 ;
  input rst_n;
  input pctl_serr_rst;

  wire \<const1> ;
  wire [1:0]Q;
  wire [3:0]badr;
  wire [7:0]bdatw;
  wire clk;
  wire [3:0]\lram/mem_rd ;
  wire \mem_rd_reg[1] ;
  wire [4:3]p_0_in;
  wire p_14_in;
  wire pctl_serr_rst;
  wire \pctrl/rd_polysmph3_rg1__0 ;
  wire pfifo_n_6;
  wire pfsm_n_0;
  wire pfsm_n_3;
  wire plff_empty;
  wire plff_full;
  wire plff_full_0;
  wire plff_read;
  wire \poly_pirq[11]_INST_0_i_5_n_0 ;
  wire \poly_pirq[12] ;
  wire \poly_pirq[12]_0 ;
  wire \poly_pirq[12]_1 ;
  wire \poly_pirq[12]_INST_0_i_5_n_0 ;
  wire \poly_pirq[13] ;
  wire \poly_pirq[13]_INST_0_i_5_n_0 ;
  wire \poly_pirq[14]_INST_0_i_5_n_0 ;
  wire \poly_pirq[2] ;
  wire \poly_pirq[3] ;
  wire \poly_pirq[3]_0 ;
  wire \poly_pirq[4] ;
  wire \poly_pirq[7] ;
  wire \poly_pirq[7]_0 ;
  wire \poly_pirq[7]_INST_0_i_5_n_0 ;
  wire \poly_pirq[8] ;
  wire \polyctl_reg[7] ;
  wire \polyctl_reg[7]_0 ;
  wire \polysmph[3]_i_2_n_0 ;
  wire \polysmph[3]_i_4__1_n_0 ;
  wire \polysmph[3]_i_6__1_n_0 ;
  wire \polysmph_reg[0]_0 ;
  wire \polysmph_reg[0]_1 ;
  wire \polysmph_reg[0]_2 ;
  wire \polysmph_reg[0]_3 ;
  wire \polysmph_reg[0]_4 ;
  wire \polysmph_reg[0]_5 ;
  wire \polysmph_reg[1]_0 ;
  wire \polysmph_reg[1]_1 ;
  wire \polysmph_reg[1]_2 ;
  wire \polysmph_reg[1]_3 ;
  wire \polysmph_reg[1]_4 ;
  wire \polysmph_reg[1]_5 ;
  wire \polysmph_reg[2]_0 ;
  wire \polysmph_reg[2]_1 ;
  wire \polysmph_reg[2]_2 ;
  wire \polysmph_reg[3]_0 ;
  wire \polysmph_reg[3]_1 ;
  wire \polysmph_reg[3]_2 ;
  wire \polysmph_reg[3]_3 ;
  wire psem_occupy__2;
  wire psem_occupy__2_1;
  wire psem_read;
  wire psem_rst_n;
  wire psem_serr;
  wire rst_n;
  wire [0:0]stat_nx;
  wire \stat_reg[1] ;

  VCC VCC
       (.P(\<const1> ));
  poly_fifo4s16 pfifo
       (.D(stat_nx),
        .Q(p_0_in),
        .badr(badr),
        .\bdatr[7]_INST_0_i_1 (Q[1]),
        .bdatw(bdatw),
        .clk(clk),
        .\mem_rd_reg[0] (pfsm_n_3),
        .\mem_rd_reg[1] (\mem_rd_reg[1] ),
        .\mem_rd_reg[3] (\lram/mem_rd ),
        .p_14_in(p_14_in),
        .pctl_serr_rst(pctl_serr_rst),
        .plff_empty(plff_empty),
        .plff_full(plff_full),
        .plff_full_0(plff_full_0),
        .plff_read(plff_read),
        .\polyctl_reg[7] (\polyctl_reg[7] ),
        .\polyctl_reg[7]_0 (pfsm_n_0),
        .\polyctl_reg[7]_1 (\polyctl_reg[7]_0 ),
        .\polysmph_reg[3] (\polysmph[3]_i_2_n_0 ),
        .psem_occupy__2(psem_occupy__2),
        .psem_occupy__2_1(psem_occupy__2_1),
        .psem_read(psem_read),
        .psem_serr(psem_serr),
        .\ptr_wr_reg[0] (\stat_reg[1] ),
        .rd_polysmph3_rg1__0(\pctrl/rd_polysmph3_rg1__0 ),
        .rst_n(rst_n),
        .rst_n_0(pfifo_n_6));
  poly_smph_fsm pfsm
       (.D(stat_nx),
        .Q(p_0_in),
        .\bdatr[7]_INST_0_i_1 (Q),
        .clk(clk),
        .\mem_rd_reg[0] (\polysmph_reg[2]_0 ),
        .\mem_rd_reg[0]_0 (\polysmph_reg[3]_1 ),
        .\mem_rd_reg[0]_1 (\polysmph_reg[1]_0 ),
        .\mem_rd_reg[0]_2 (\polysmph_reg[0]_1 ),
        .plff_empty(plff_empty),
        .plff_full(plff_full),
        .plff_full_0(plff_full_0),
        .psem_occupy__2_1(psem_occupy__2_1),
        .\stat_reg[0]_0 (pfsm_n_0),
        .\stat_reg[0]_1 (pfsm_n_3),
        .\stat_reg[1]_0 (\stat_reg[1] ));
  LUT6 #(
    .INIT(64'h040004000400FFFF)) 
    \poly_pirq[10]_INST_0_i_2 
       (.I0(\polysmph_reg[0]_1 ),
        .I1(\polysmph_reg[1]_0 ),
        .I2(\polysmph_reg[2]_0 ),
        .I3(\polysmph_reg[3]_1 ),
        .I4(\poly_pirq[2] ),
        .I5(\poly_pirq[8] ),
        .O(\polysmph_reg[0]_4 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \poly_pirq[11]_INST_0_i_2 
       (.I0(\polysmph_reg[1]_0 ),
        .I1(\polysmph_reg[0]_1 ),
        .I2(\poly_pirq[11]_INST_0_i_5_n_0 ),
        .I3(\poly_pirq[7] ),
        .I4(\poly_pirq[7]_0 ),
        .I5(\poly_pirq[8] ),
        .O(\polysmph_reg[1]_5 ));
  LUT2 #(
    .INIT(4'hB)) 
    \poly_pirq[11]_INST_0_i_5 
       (.I0(\polysmph_reg[2]_0 ),
        .I1(\polysmph_reg[3]_1 ),
        .O(\poly_pirq[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \poly_pirq[12]_INST_0_i_2 
       (.I0(\poly_pirq[12]_INST_0_i_5_n_0 ),
        .I1(\polysmph_reg[3]_1 ),
        .I2(\polysmph_reg[2]_0 ),
        .I3(\poly_pirq[12] ),
        .I4(\poly_pirq[12]_0 ),
        .I5(\poly_pirq[12]_1 ),
        .O(\polysmph_reg[3]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \poly_pirq[12]_INST_0_i_5 
       (.I0(\polysmph_reg[0]_1 ),
        .I1(\polysmph_reg[1]_0 ),
        .O(\poly_pirq[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \poly_pirq[13]_INST_0_i_2 
       (.I0(\poly_pirq[13]_INST_0_i_5_n_0 ),
        .I1(\polysmph_reg[3]_1 ),
        .I2(\polysmph_reg[2]_0 ),
        .I3(\poly_pirq[13] ),
        .I4(\poly_pirq[12]_0 ),
        .I5(\poly_pirq[12]_1 ),
        .O(\polysmph_reg[3]_3 ));
  LUT2 #(
    .INIT(4'hB)) 
    \poly_pirq[13]_INST_0_i_5 
       (.I0(\polysmph_reg[1]_0 ),
        .I1(\polysmph_reg[0]_1 ),
        .O(\poly_pirq[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \poly_pirq[14]_INST_0_i_2 
       (.I0(\poly_pirq[14]_INST_0_i_5_n_0 ),
        .I1(\polysmph_reg[3]_1 ),
        .I2(\polysmph_reg[2]_0 ),
        .I3(\poly_pirq[2] ),
        .I4(\poly_pirq[12]_0 ),
        .I5(\poly_pirq[12]_1 ),
        .O(\polysmph_reg[3]_2 ));
  LUT2 #(
    .INIT(4'hB)) 
    \poly_pirq[14]_INST_0_i_5 
       (.I0(\polysmph_reg[0]_1 ),
        .I1(\polysmph_reg[1]_0 ),
        .O(\poly_pirq[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h01010101010101FF)) 
    \poly_pirq[1]_INST_0_i_2 
       (.I0(\poly_pirq[13]_INST_0_i_5_n_0 ),
        .I1(\polysmph_reg[2]_0 ),
        .I2(\polysmph_reg[3]_1 ),
        .I3(\poly_pirq[13] ),
        .I4(\poly_pirq[12]_1 ),
        .I5(\poly_pirq[12]_0 ),
        .O(\polysmph_reg[2]_2 ));
  LUT6 #(
    .INIT(64'h01010101010101FF)) 
    \poly_pirq[2]_INST_0_i_2 
       (.I0(\poly_pirq[14]_INST_0_i_5_n_0 ),
        .I1(\polysmph_reg[2]_0 ),
        .I2(\polysmph_reg[3]_1 ),
        .I3(\poly_pirq[2] ),
        .I4(\poly_pirq[12]_1 ),
        .I5(\poly_pirq[12]_0 ),
        .O(\polysmph_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h000800080008FFFF)) 
    \poly_pirq[3]_INST_0_i_2 
       (.I0(\polysmph_reg[1]_0 ),
        .I1(\polysmph_reg[0]_1 ),
        .I2(\polysmph_reg[2]_0 ),
        .I3(\polysmph_reg[3]_1 ),
        .I4(\poly_pirq[3] ),
        .I5(\poly_pirq[3]_0 ),
        .O(\polysmph_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h010001000100FFFF)) 
    \poly_pirq[4]_INST_0_i_2 
       (.I0(\polysmph_reg[0]_1 ),
        .I1(\polysmph_reg[1]_0 ),
        .I2(\polysmph_reg[3]_1 ),
        .I3(\polysmph_reg[2]_0 ),
        .I4(\poly_pirq[12] ),
        .I5(\poly_pirq[4] ),
        .O(\polysmph_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h040004000400FFFF)) 
    \poly_pirq[5]_INST_0_i_2 
       (.I0(\polysmph_reg[1]_0 ),
        .I1(\polysmph_reg[0]_1 ),
        .I2(\polysmph_reg[3]_1 ),
        .I3(\polysmph_reg[2]_0 ),
        .I4(\poly_pirq[13] ),
        .I5(\poly_pirq[4] ),
        .O(\polysmph_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h040004000400FFFF)) 
    \poly_pirq[6]_INST_0_i_2 
       (.I0(\polysmph_reg[0]_1 ),
        .I1(\polysmph_reg[1]_0 ),
        .I2(\polysmph_reg[3]_1 ),
        .I3(\polysmph_reg[2]_0 ),
        .I4(\poly_pirq[2] ),
        .I5(\poly_pirq[4] ),
        .O(\polysmph_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \poly_pirq[7]_INST_0_i_2 
       (.I0(\polysmph_reg[1]_0 ),
        .I1(\polysmph_reg[0]_1 ),
        .I2(\poly_pirq[7]_INST_0_i_5_n_0 ),
        .I3(\poly_pirq[7] ),
        .I4(\poly_pirq[7]_0 ),
        .I5(\poly_pirq[4] ),
        .O(\polysmph_reg[1]_4 ));
  LUT2 #(
    .INIT(4'hB)) 
    \poly_pirq[7]_INST_0_i_5 
       (.I0(\polysmph_reg[3]_1 ),
        .I1(\polysmph_reg[2]_0 ),
        .O(\poly_pirq[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h010001000100FFFF)) 
    \poly_pirq[8]_INST_0_i_2 
       (.I0(\polysmph_reg[0]_1 ),
        .I1(\polysmph_reg[1]_0 ),
        .I2(\polysmph_reg[2]_0 ),
        .I3(\polysmph_reg[3]_1 ),
        .I4(\poly_pirq[12] ),
        .I5(\poly_pirq[8] ),
        .O(\polysmph_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h040004000400FFFF)) 
    \poly_pirq[9]_INST_0_i_2 
       (.I0(\polysmph_reg[1]_0 ),
        .I1(\polysmph_reg[0]_1 ),
        .I2(\polysmph_reg[2]_0 ),
        .I3(\polysmph_reg[3]_1 ),
        .I4(\poly_pirq[13] ),
        .I5(\poly_pirq[8] ),
        .O(\polysmph_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h5DFF5D5D5D5D5D5D)) 
    \polysmph[3]_i_2 
       (.I0(psem_rst_n),
        .I1(psem_read),
        .I2(psem_occupy__2_1),
        .I3(\polysmph[3]_i_4__1_n_0 ),
        .I4(\polysmph_reg[0]_5 ),
        .I5(\pctrl/rd_polysmph3_rg1__0 ),
        .O(\polysmph[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \polysmph[3]_i_4__1 
       (.I0(\polysmph[3]_i_6__1_n_0 ),
        .I1(\polysmph_reg[1]_0 ),
        .I2(bdatw[1]),
        .I3(\polysmph_reg[2]_0 ),
        .I4(bdatw[2]),
        .O(\polysmph[3]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFDFFFFFFFFDFFD)) 
    \polysmph[3]_i_6__1 
       (.I0(bdatw[5]),
        .I1(bdatw[4]),
        .I2(\polysmph_reg[0]_1 ),
        .I3(bdatw[0]),
        .I4(bdatw[3]),
        .I5(\polysmph_reg[3]_1 ),
        .O(\polysmph[3]_i_6__1_n_0 ));
  FDRE \polysmph_reg[0] 
       (.C(clk),
        .CE(\polysmph[3]_i_2_n_0 ),
        .D(\lram/mem_rd [0]),
        .Q(\polysmph_reg[0]_1 ),
        .R(pfifo_n_6));
  FDRE \polysmph_reg[1] 
       (.C(clk),
        .CE(\polysmph[3]_i_2_n_0 ),
        .D(\lram/mem_rd [1]),
        .Q(\polysmph_reg[1]_0 ),
        .R(pfifo_n_6));
  FDRE \polysmph_reg[2] 
       (.C(clk),
        .CE(\polysmph[3]_i_2_n_0 ),
        .D(\lram/mem_rd [2]),
        .Q(\polysmph_reg[2]_0 ),
        .R(pfifo_n_6));
  FDRE \polysmph_reg[3] 
       (.C(clk),
        .CE(\polysmph[3]_i_2_n_0 ),
        .D(\lram/mem_rd [3]),
        .Q(\polysmph_reg[3]_1 ),
        .R(pfifo_n_6));
  FDRE psem_read_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(plff_read),
        .Q(psem_read),
        .R(\stat_reg[1] ));
endmodule

module poly_smph_fsm
   (\stat_reg[0]_0 ,
    Q,
    \stat_reg[0]_1 ,
    psem_occupy__2_1,
    plff_full_0,
    \bdatr[7]_INST_0_i_1 ,
    plff_full,
    plff_empty,
    D,
    \mem_rd_reg[0] ,
    \mem_rd_reg[0]_0 ,
    \mem_rd_reg[0]_1 ,
    \mem_rd_reg[0]_2 ,
    \stat_reg[1]_0 ,
    clk);
  output \stat_reg[0]_0 ;
  output [1:0]Q;
  output \stat_reg[0]_1 ;
  output psem_occupy__2_1;
  input plff_full_0;
  input [1:0]\bdatr[7]_INST_0_i_1 ;
  input plff_full;
  input plff_empty;
  input [0:0]D;
  input \mem_rd_reg[0] ;
  input \mem_rd_reg[0]_0 ;
  input \mem_rd_reg[0]_1 ;
  input \mem_rd_reg[0]_2 ;
  input \stat_reg[1]_0 ;
  input clk;

  wire \<const1> ;
  wire [0:0]D;
  wire [1:0]Q;
  wire [1:0]\bdatr[7]_INST_0_i_1 ;
  wire clk;
  wire \mem_rd_reg[0] ;
  wire \mem_rd_reg[0]_0 ;
  wire \mem_rd_reg[0]_1 ;
  wire \mem_rd_reg[0]_2 ;
  wire plff_empty;
  wire plff_full;
  wire plff_full_0;
  wire psem_occupy__2_1;
  wire [1:1]stat_nx;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[1]_0 ;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h54FF54FF54FF5454)) 
    \bdatr[7]_INST_0_i_4 
       (.I0(Q[0]),
        .I1(plff_full_0),
        .I2(Q[1]),
        .I3(\bdatr[7]_INST_0_i_1 [0]),
        .I4(plff_full),
        .I5(\bdatr[7]_INST_0_i_1 [1]),
        .O(\stat_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00000109)) 
    drv_rd_i_1__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(plff_full_0),
        .I3(psem_occupy__2_1),
        .I4(plff_empty),
        .O(\stat_reg[0]_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \polysmph[3]_i_3__0 
       (.I0(\mem_rd_reg[0] ),
        .I1(\mem_rd_reg[0]_0 ),
        .I2(\mem_rd_reg[0]_1 ),
        .I3(\mem_rd_reg[0]_2 ),
        .O(psem_occupy__2_1));
  LUT4 #(
    .INIT(16'h6FFA)) 
    \stat[1]_i_1__0 
       (.I0(plff_full_0),
        .I1(psem_occupy__2_1),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(stat_nx));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D),
        .Q(Q[0]),
        .R(\stat_reg[1]_0 ));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx),
        .Q(Q[1]),
        .R(\stat_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "poly_smph_fsm" *) 
module poly_smph_fsm_14
   (\stat_reg[0]_0 ,
    Q,
    \polysmph_reg[2] ,
    plff_full,
    plff_empty,
    D,
    \stat_reg[1]_0 ,
    \stat_reg[1]_1 ,
    \stat_reg[1]_2 ,
    \stat_reg[1]_3 ,
    \stat_reg[1]_4 ,
    clk);
  output \stat_reg[0]_0 ;
  output [1:0]Q;
  output \polysmph_reg[2] ;
  input plff_full;
  input plff_empty;
  input [0:0]D;
  input \stat_reg[1]_0 ;
  input \stat_reg[1]_1 ;
  input \stat_reg[1]_2 ;
  input \stat_reg[1]_3 ;
  input \stat_reg[1]_4 ;
  input clk;

  wire \<const1> ;
  wire [0:0]D;
  wire [1:0]Q;
  wire clk;
  wire plff_empty;
  wire plff_full;
  wire \polysmph_reg[2] ;
  wire [1:1]stat_nx;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;
  wire \stat_reg[1]_2 ;
  wire \stat_reg[1]_3 ;
  wire \stat_reg[1]_4 ;

  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h00000109)) 
    drv_rd_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(plff_full),
        .I3(\polysmph_reg[2] ),
        .I4(plff_empty),
        .O(\stat_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \polysmph[3]_i_3 
       (.I0(\stat_reg[1]_0 ),
        .I1(\stat_reg[1]_1 ),
        .I2(\stat_reg[1]_2 ),
        .I3(\stat_reg[1]_3 ),
        .O(\polysmph_reg[2] ));
  LUT4 #(
    .INIT(16'h6FFA)) 
    \stat[1]_i_1 
       (.I0(plff_full),
        .I1(\polysmph_reg[2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(stat_nx));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D),
        .Q(Q[0]),
        .R(\stat_reg[1]_4 ));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx),
        .Q(Q[1]),
        .R(\stat_reg[1]_4 ));
endmodule

(* ORIG_REF_NAME = "poly_smph_fsm" *) 
module poly_smph_fsm_4
   (\stat_reg[0]_0 ,
    Q,
    \polysmph_reg[2] ,
    plff_full,
    plff_empty,
    D,
    \stat_reg[1]_0 ,
    \stat_reg[1]_1 ,
    \stat_reg[1]_2 ,
    \stat_reg[1]_3 ,
    \stat_reg[1]_4 ,
    clk);
  output \stat_reg[0]_0 ;
  output [1:0]Q;
  output \polysmph_reg[2] ;
  input plff_full;
  input plff_empty;
  input [0:0]D;
  input \stat_reg[1]_0 ;
  input \stat_reg[1]_1 ;
  input \stat_reg[1]_2 ;
  input \stat_reg[1]_3 ;
  input \stat_reg[1]_4 ;
  input clk;

  wire \<const1> ;
  wire [0:0]D;
  wire [1:0]Q;
  wire clk;
  wire plff_empty;
  wire plff_full;
  wire \polysmph_reg[2] ;
  wire [1:1]stat_nx;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;
  wire \stat_reg[1]_2 ;
  wire \stat_reg[1]_3 ;
  wire \stat_reg[1]_4 ;

  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h00000109)) 
    drv_rd_i_1__1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(plff_full),
        .I3(\polysmph_reg[2] ),
        .I4(plff_empty),
        .O(\stat_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \polysmph[3]_i_3__1 
       (.I0(\stat_reg[1]_0 ),
        .I1(\stat_reg[1]_1 ),
        .I2(\stat_reg[1]_2 ),
        .I3(\stat_reg[1]_3 ),
        .O(\polysmph_reg[2] ));
  LUT4 #(
    .INIT(16'h6FFA)) 
    \stat[1]_i_1__1 
       (.I0(plff_full),
        .I1(\polysmph_reg[2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(stat_nx));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D),
        .Q(Q[0]),
        .R(\stat_reg[1]_4 ));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx),
        .Q(Q[1]),
        .R(\stat_reg[1]_4 ));
endmodule

(* ORIG_REF_NAME = "poly_smph_fsm" *) 
module poly_smph_fsm_9
   (\stat_reg[0]_0 ,
    Q,
    \stat_reg[0]_1 ,
    psem_occupy__2_1,
    plff_full_0,
    \bdatr[7]_INST_0_i_1 ,
    plff_full,
    plff_empty,
    D,
    \mem_rd_reg[0] ,
    \mem_rd_reg[0]_0 ,
    \mem_rd_reg[0]_1 ,
    \mem_rd_reg[0]_2 ,
    \stat_reg[1]_0 ,
    clk);
  output \stat_reg[0]_0 ;
  output [1:0]Q;
  output \stat_reg[0]_1 ;
  output psem_occupy__2_1;
  input plff_full_0;
  input [1:0]\bdatr[7]_INST_0_i_1 ;
  input plff_full;
  input plff_empty;
  input [0:0]D;
  input \mem_rd_reg[0] ;
  input \mem_rd_reg[0]_0 ;
  input \mem_rd_reg[0]_1 ;
  input \mem_rd_reg[0]_2 ;
  input \stat_reg[1]_0 ;
  input clk;

  wire \<const1> ;
  wire [0:0]D;
  wire [1:0]Q;
  wire [1:0]\bdatr[7]_INST_0_i_1 ;
  wire clk;
  wire \mem_rd_reg[0] ;
  wire \mem_rd_reg[0]_0 ;
  wire \mem_rd_reg[0]_1 ;
  wire \mem_rd_reg[0]_2 ;
  wire plff_empty;
  wire plff_full;
  wire plff_full_0;
  wire psem_occupy__2_1;
  wire [1:1]stat_nx;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[1]_0 ;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h54FF54FF54FF5454)) 
    \bdatr[7]_INST_0_i_5 
       (.I0(Q[0]),
        .I1(plff_full_0),
        .I2(Q[1]),
        .I3(\bdatr[7]_INST_0_i_1 [0]),
        .I4(plff_full),
        .I5(\bdatr[7]_INST_0_i_1 [1]),
        .O(\stat_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00000109)) 
    drv_rd_i_1__2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(plff_full_0),
        .I3(psem_occupy__2_1),
        .I4(plff_empty),
        .O(\stat_reg[0]_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \polysmph[3]_i_3__2 
       (.I0(\mem_rd_reg[0] ),
        .I1(\mem_rd_reg[0]_0 ),
        .I2(\mem_rd_reg[0]_1 ),
        .I3(\mem_rd_reg[0]_2 ),
        .O(psem_occupy__2_1));
  LUT4 #(
    .INIT(16'h6FFA)) 
    \stat[1]_i_1__2 
       (.I0(plff_full_0),
        .I1(psem_occupy__2_1),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(stat_nx));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D),
        .Q(Q[0]),
        .R(\stat_reg[1]_0 ));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx),
        .Q(Q[1]),
        .R(\stat_reg[1]_0 ));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module polyc144
   (clk,
    rst_n,
    brdy,
    bcmdr,
    bcmdw,
    bcs_poly_n,
    badr,
    bdatw,
    poly_n_core,
    .bdatr({\<const0> ,\^bdatr [14],\^bdatr [13],\^bdatr [12],\^bdatr [11],\^bdatr [10],\^bdatr [9],\^bdatr [8],\^bdatr [7],\^bdatr [6],\^bdatr [5],\^bdatr [4],\^bdatr [3],\^bdatr [2],\^bdatr [1],\^bdatr [0]}),
    poly_pirq);
//
// Poly-core controller unit
//		(c) 2025	1YEN Toru
//
//
//	2025/02/22	ver.1.00
//		Inter CPU interrupt 14 cores
//		Semaphore * 4
//
  input clk;
  input rst_n;
  input brdy;
  input bcmdr;
  input bcmdw;
  input bcs_poly_n;
  input [3:0]badr;
  input [15:0]bdatw;
  input [3:0]poly_n_core;
  output [14:1]poly_pirq;
  output \<const0> ;
     output [14:0]\^bdatr ;

  wire \<const0> ;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_poly_n;
  wire [14:0]\^bdatr ;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire p_14_in;
  wire [13:0]p_4_in;
  wire pctl_serr_rst;
  wire pctrl_n_23;
  wire [4:3]\pfsm/p_0_in ;
  wire [4:3]\pfsm/p_0_in_0 ;
  wire pintr_n_29;
  wire plff_full;
  wire plff_full_2;
  wire [3:0]poly_n_core;
  wire [14:1]poly_pirq;
  wire [14:1]polyintr;
  wire psem_occupy__2;
  wire psem_occupy__2_1;
  wire psem_rst_n;
  wire psem_serr;
  wire psmph0_n_10;
  wire psmph0_n_11;
  wire psmph0_n_12;
  wire psmph0_n_13;
  wire psmph0_n_14;
  wire psmph0_n_15;
  wire psmph0_n_16;
  wire psmph0_n_2;
  wire psmph0_n_3;
  wire psmph0_n_6;
  wire psmph0_n_7;
  wire psmph0_n_8;
  wire psmph0_n_9;
  wire psmph1_n_0;
  wire psmph1_n_1;
  wire psmph1_n_10;
  wire psmph1_n_11;
  wire psmph1_n_12;
  wire psmph1_n_13;
  wire psmph1_n_14;
  wire psmph1_n_15;
  wire psmph1_n_16;
  wire psmph1_n_17;
  wire psmph1_n_18;
  wire psmph1_n_19;
  wire psmph1_n_2;
  wire psmph1_n_3;
  wire psmph1_n_4;
  wire psmph1_n_5;
  wire psmph1_n_6;
  wire psmph1_n_7;
  wire psmph1_n_8;
  wire psmph1_n_9;
  wire psmph2_n_10;
  wire psmph2_n_11;
  wire psmph2_n_12;
  wire psmph2_n_13;
  wire psmph2_n_14;
  wire psmph2_n_4;
  wire psmph2_n_5;
  wire psmph2_n_6;
  wire psmph2_n_7;
  wire psmph2_n_8;
  wire psmph2_n_9;
  wire psmph3_n_1;
  wire psmph3_n_10;
  wire psmph3_n_11;
  wire psmph3_n_12;
  wire psmph3_n_13;
  wire psmph3_n_14;
  wire psmph3_n_15;
  wire psmph3_n_16;
  wire psmph3_n_17;
  wire psmph3_n_18;
  wire psmph3_n_2;
  wire psmph3_n_3;
  wire psmph3_n_4;
  wire psmph3_n_5;
  wire psmph3_n_6;
  wire psmph3_n_7;
  wire psmph3_n_8;
  wire psmph3_n_9;
  wire rd_polyintm;
  wire rd_polyintr;
  wire rst_n;

  GND GND
       (.G(\<const0> ));
  poly_ctrl pctrl
       (.Q(p_4_in),
        .badr(badr),
        .bcmdr(bcmdr),
        .bcs_poly_n(bcs_poly_n),
        .bdatr({\^bdatr [7],\^bdatr [5:0]}),
        .\bdatr[0]_0 (psmph1_n_5),
        .\bdatr[0]_1 (psmph3_n_5),
        .\bdatr[0]_2 (psmph0_n_9),
        .\bdatr[1]_0 (psmph3_n_6),
        .\bdatr[1]_1 (psmph1_n_6),
        .\bdatr[1]_2 (psmph2_n_6),
        .\bdatr[2]_0 (psmph3_n_3),
        .\bdatr[2]_1 (psmph1_n_3),
        .\bdatr[2]_2 (psmph2_n_4),
        .\bdatr[3]_0 (psmph3_n_2),
        .\bdatr[3]_1 (psmph1_n_2),
        .\bdatr[3]_2 (psmph2_n_5),
        .bdatr_0_sp_1(psmph2_n_7),
        .bdatr_1_sp_1(psmph0_n_8),
        .bdatr_2_sp_1(psmph0_n_6),
        .bdatr_3_sp_1(psmph0_n_7),
        .bdatw({bdatw[7],bdatw[5:4]}),
        .brdy(brdy),
        .clk(clk),
        .p_14_in(p_14_in),
        .pctl_serr_rst(pctl_serr_rst),
        .poly_n_core(poly_n_core),
        .poly_pirq(poly_pirq),
        .\poly_pirq[10]_0 (psmph3_n_10),
        .\poly_pirq[11]_0 (psmph3_n_18),
        .\poly_pirq[12]_0 (psmph3_n_1),
        .\poly_pirq[13]_0 (psmph3_n_12),
        .\poly_pirq[14] (polyintr),
        .\poly_pirq[14]_0 (psmph1_n_12),
        .\poly_pirq[14]_1 (psmph3_n_11),
        .\poly_pirq[1]_0 (psmph3_n_13),
        .\poly_pirq[2]_0 (psmph3_n_8),
        .\poly_pirq[3]_0 (psmph3_n_16),
        .\poly_pirq[4]_0 (psmph3_n_7),
        .\poly_pirq[5]_0 (psmph3_n_14),
        .\poly_pirq[6]_0 (psmph3_n_9),
        .\poly_pirq[7]_0 (psmph3_n_17),
        .\poly_pirq[8]_0 (psmph3_n_4),
        .\poly_pirq[9]_0 (psmph3_n_15),
        .poly_pirq_10_sp_1(psmph1_n_11),
        .poly_pirq_11_sp_1(psmph1_n_19),
        .poly_pirq_12_sp_1(psmph1_n_1),
        .poly_pirq_13_sp_1(psmph1_n_13),
        .poly_pirq_1_sp_1(psmph1_n_14),
        .poly_pirq_2_sp_1(psmph1_n_9),
        .poly_pirq_3_sp_1(psmph1_n_17),
        .poly_pirq_4_sp_1(psmph1_n_7),
        .poly_pirq_5_sp_1(psmph1_n_15),
        .poly_pirq_6_sp_1(psmph1_n_10),
        .poly_pirq_7_sp_1(psmph1_n_18),
        .poly_pirq_8_sp_1(psmph1_n_4),
        .poly_pirq_9_sp_1(psmph1_n_16),
        .\polyctl_reg[7]_0 (pctrl_n_23),
        .psem_rst_n(psem_rst_n),
        .psem_serr(psem_serr),
        .rd_polyintm(rd_polyintm),
        .rd_polyintr(rd_polyintr),
        .rd_polysmph2_rg_reg_0(pintr_n_29),
        .rst_n(rst_n));
  poly_intr pintr
       (.Q(p_4_in),
        .SR(pintr_n_29),
        .badr(badr),
        .bcmdw(bcmdw),
        .bcs_poly_n(bcs_poly_n),
        .bdatr({\^bdatr [14:8],\^bdatr [6]}),
        .bdatw(bdatw[7:0]),
        .brdy(brdy),
        .clk(clk),
        .p_14_in(p_14_in),
        .\polyintr_reg[14]_0 (polyintr),
        .rd_polyintm(rd_polyintm),
        .rd_polyintr(rd_polyintr),
        .rst_n(rst_n));
  poly_smph psmph0
       (.Q(\pfsm/p_0_in ),
        .badr(badr),
        .bcmdw(bcmdw),
        .bcs_poly_n(bcs_poly_n),
        .bdatw(bdatw[7:0]),
        .bdatw_6_sp_1(psmph0_n_3),
        .bdatw_7_sp_1(psmph0_n_2),
        .brdy(brdy),
        .clk(clk),
        .p_14_in(p_14_in),
        .pctl_serr_rst(pctl_serr_rst),
        .plff_full(plff_full),
        .\polysmph_reg[0]_0 (psmph0_n_9),
        .\polysmph_reg[0]_1 (psmph0_n_10),
        .\polysmph_reg[0]_2 (psmph0_n_11),
        .\polysmph_reg[1]_0 (psmph0_n_8),
        .\polysmph_reg[1]_1 (psmph0_n_12),
        .\polysmph_reg[1]_2 (psmph0_n_13),
        .\polysmph_reg[2]_0 (psmph0_n_6),
        .\polysmph_reg[2]_1 (psmph0_n_14),
        .\polysmph_reg[2]_2 (psmph0_n_16),
        .\polysmph_reg[3]_0 (psmph0_n_7),
        .\polysmph_reg[3]_1 (psmph0_n_15),
        .psem_occupy__2(psem_occupy__2),
        .psem_rst_n(psem_rst_n),
        .rst_n(rst_n),
        .\stat_reg[1] (pctrl_n_23));
  poly_smph_0 psmph1
       (.Q(\pfsm/p_0_in_0 ),
        .badr(badr),
        .bdatw(bdatw[7:0]),
        .clk(clk),
        .full_wr_reg(psmph1_n_8),
        .\mem_rd_reg[1] (psmph0_n_3),
        .p_14_in(p_14_in),
        .pctl_serr_rst(pctl_serr_rst),
        .plff_full(plff_full_2),
        .\poly_pirq[12] (psmph2_n_8),
        .\poly_pirq[12]_0 (psmph2_n_5),
        .\poly_pirq[12]_1 (psmph2_n_4),
        .\poly_pirq[13] (psmph2_n_10),
        .\poly_pirq[2] (psmph2_n_9),
        .\poly_pirq[3] (psmph2_n_11),
        .\poly_pirq[3]_0 (psmph2_n_14),
        .\poly_pirq[4] (psmph2_n_13),
        .\poly_pirq[7] (psmph2_n_6),
        .\poly_pirq[7]_0 (psmph2_n_7),
        .\poly_pirq[8] (psmph2_n_12),
        .\polysmph_reg[0]_0 (psmph1_n_4),
        .\polysmph_reg[0]_1 (psmph1_n_5),
        .\polysmph_reg[0]_2 (psmph1_n_7),
        .\polysmph_reg[0]_3 (psmph1_n_10),
        .\polysmph_reg[0]_4 (psmph1_n_11),
        .\polysmph_reg[0]_5 (psmph0_n_2),
        .\polysmph_reg[1]_0 (psmph1_n_6),
        .\polysmph_reg[1]_1 (psmph1_n_15),
        .\polysmph_reg[1]_2 (psmph1_n_16),
        .\polysmph_reg[1]_3 (psmph1_n_17),
        .\polysmph_reg[1]_4 (psmph1_n_18),
        .\polysmph_reg[1]_5 (psmph1_n_19),
        .\polysmph_reg[2]_0 (psmph1_n_3),
        .\polysmph_reg[2]_1 (psmph1_n_9),
        .\polysmph_reg[2]_2 (psmph1_n_14),
        .\polysmph_reg[3]_0 (psmph1_n_1),
        .\polysmph_reg[3]_1 (psmph1_n_2),
        .\polysmph_reg[3]_2 (psmph1_n_12),
        .\polysmph_reg[3]_3 (psmph1_n_13),
        .psem_occupy__2(psem_occupy__2_1),
        .psem_rst_n(psem_rst_n),
        .rst_n(rst_n),
        .\stat_reg[0] (psmph1_n_0),
        .\stat_reg[1] (pctrl_n_23));
  poly_smph_1 psmph2
       (.Q(\pfsm/p_0_in_0 ),
        .badr(badr),
        .bdatw(bdatw[7:0]),
        .clk(clk),
        .\mem_rd_reg[1] (psmph0_n_3),
        .p_14_in(p_14_in),
        .pctl_serr_rst(pctl_serr_rst),
        .plff_full(plff_full_2),
        .\polysmph_reg[0]_0 (psmph2_n_7),
        .\polysmph_reg[0]_1 (psmph2_n_8),
        .\polysmph_reg[0]_2 (psmph2_n_9),
        .\polysmph_reg[0]_3 (psmph0_n_2),
        .\polysmph_reg[1]_0 (psmph2_n_6),
        .\polysmph_reg[1]_1 (psmph2_n_10),
        .\polysmph_reg[1]_2 (psmph2_n_11),
        .\polysmph_reg[2]_0 (psmph2_n_4),
        .\polysmph_reg[2]_1 (psmph2_n_12),
        .\polysmph_reg[2]_2 (psmph2_n_14),
        .\polysmph_reg[3]_0 (psmph2_n_5),
        .\polysmph_reg[3]_1 (psmph2_n_13),
        .psem_occupy__2(psem_occupy__2_1),
        .psem_rst_n(psem_rst_n),
        .rst_n(rst_n),
        .\stat_reg[1] (pctrl_n_23));
  poly_smph_2 psmph3
       (.Q(\pfsm/p_0_in ),
        .badr(badr),
        .bdatw(bdatw[7:0]),
        .clk(clk),
        .\mem_rd_reg[1] (psmph0_n_3),
        .p_14_in(p_14_in),
        .pctl_serr_rst(pctl_serr_rst),
        .plff_full(plff_full),
        .\poly_pirq[12] (psmph0_n_10),
        .\poly_pirq[12]_0 (psmph0_n_7),
        .\poly_pirq[12]_1 (psmph0_n_6),
        .\poly_pirq[13] (psmph0_n_12),
        .\poly_pirq[2] (psmph0_n_11),
        .\poly_pirq[3] (psmph0_n_13),
        .\poly_pirq[3]_0 (psmph0_n_16),
        .\poly_pirq[4] (psmph0_n_15),
        .\poly_pirq[7] (psmph0_n_8),
        .\poly_pirq[7]_0 (psmph0_n_9),
        .\poly_pirq[8] (psmph0_n_14),
        .\polyctl_reg[7] (psmph1_n_8),
        .\polyctl_reg[7]_0 (psmph1_n_0),
        .\polysmph_reg[0]_0 (psmph3_n_4),
        .\polysmph_reg[0]_1 (psmph3_n_5),
        .\polysmph_reg[0]_2 (psmph3_n_7),
        .\polysmph_reg[0]_3 (psmph3_n_9),
        .\polysmph_reg[0]_4 (psmph3_n_10),
        .\polysmph_reg[0]_5 (psmph0_n_2),
        .\polysmph_reg[1]_0 (psmph3_n_6),
        .\polysmph_reg[1]_1 (psmph3_n_14),
        .\polysmph_reg[1]_2 (psmph3_n_15),
        .\polysmph_reg[1]_3 (psmph3_n_16),
        .\polysmph_reg[1]_4 (psmph3_n_17),
        .\polysmph_reg[1]_5 (psmph3_n_18),
        .\polysmph_reg[2]_0 (psmph3_n_3),
        .\polysmph_reg[2]_1 (psmph3_n_8),
        .\polysmph_reg[2]_2 (psmph3_n_13),
        .\polysmph_reg[3]_0 (psmph3_n_1),
        .\polysmph_reg[3]_1 (psmph3_n_2),
        .\polysmph_reg[3]_2 (psmph3_n_11),
        .\polysmph_reg[3]_3 (psmph3_n_12),
        .psem_occupy__2(psem_occupy__2),
        .psem_rst_n(psem_rst_n),
        .psem_serr(psem_serr),
        .rst_n(rst_n),
        .\stat_reg[1] (pctrl_n_23));
endmodule
