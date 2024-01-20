
(* STRUCTURAL_NETLIST = "yes" *)
module adcx122
   (clk,
    rst_n,
    brdy,
    bcmdr,
    bcmdw,
    bcs_adcx_n,
    badr,
    bdatw,
    bdatr,
    adcx_busy,
    adcx_eoc,
    adcx_eos,
    adcx_drp_rdy,
    adcx_drp_do,
    adcx_drp_den,
    adcx_drp_dwe,
    adcx_drp_adr,
    adcx_drp_di);
//
// 12 bit A/D converter unit
//		(c) 2024	1YEN Toru
//
//
//	2024/01/20	ver.1.00
//		12 bit SAR ADC, 2 channel
//		Xilinx Artix-7 XADC for Cmod A7 FPGA board
//
  input clk;
  input rst_n;
  input brdy;
  input bcmdr;
  input bcmdw;
  input bcs_adcx_n;
  input [3:0]badr;
  input [15:0]bdatw;
  output [15:0]bdatr;
  input adcx_busy;
  input adcx_eoc;
  input adcx_eos;
  input adcx_drp_rdy;
  input [15:0]adcx_drp_do;
  output adcx_drp_den;
  output adcx_drp_dwe;
  output [6:0]adcx_drp_adr;
  output [15:0]adcx_drp_di;

  wire \<const0> ;
  wire \<const1> ;
  wire adcx_busy;
  wire [6:0]adcx_drp_adr;
  wire adcx_drp_den;
  wire [15:0]adcx_drp_di;
  wire [15:0]adcx_drp_do;
  wire adcx_drp_dwe;
  wire adcx_drp_enb;
  wire adcx_drp_enb_i_1_n_0;
  wire adcx_drp_rdy;
  wire adcx_eoc;
  wire adcx_eos;
  wire adcxadrr;
  wire \adcxadrr_reg_n_0_[0] ;
  wire \adcxadrr_reg_n_0_[1] ;
  wire \adcxadrr_reg_n_0_[2] ;
  wire \adcxadrr_reg_n_0_[3] ;
  wire \adcxadrr_reg_n_0_[4] ;
  wire \adcxadrr_reg_n_0_[5] ;
  wire \adcxadrr_reg_n_0_[6] ;
  wire adcxadrw;
  wire \adcxadrw[6]_i_2_n_0 ;
  wire \adcxadrw_reg_n_0_[0] ;
  wire \adcxadrw_reg_n_0_[1] ;
  wire \adcxadrw_reg_n_0_[2] ;
  wire \adcxadrw_reg_n_0_[3] ;
  wire \adcxadrw_reg_n_0_[4] ;
  wire \adcxadrw_reg_n_0_[5] ;
  wire \adcxadrw_reg_n_0_[6] ;
  wire [15:0]adcxain0;
  wire [15:0]adcxain1;
  wire [15:0]adcxdatr;
  wire \adcxdatw_reg_n_0_[0] ;
  wire \adcxdatw_reg_n_0_[10] ;
  wire \adcxdatw_reg_n_0_[11] ;
  wire \adcxdatw_reg_n_0_[12] ;
  wire \adcxdatw_reg_n_0_[13] ;
  wire \adcxdatw_reg_n_0_[14] ;
  wire \adcxdatw_reg_n_0_[15] ;
  wire \adcxdatw_reg_n_0_[1] ;
  wire \adcxdatw_reg_n_0_[2] ;
  wire \adcxdatw_reg_n_0_[3] ;
  wire \adcxdatw_reg_n_0_[4] ;
  wire \adcxdatw_reg_n_0_[5] ;
  wire \adcxdatw_reg_n_0_[6] ;
  wire \adcxdatw_reg_n_0_[7] ;
  wire \adcxdatw_reg_n_0_[8] ;
  wire \adcxdatw_reg_n_0_[9] ;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_adcx_n;
  wire [15:0]bdatr;
  wire \bdatr[10]_INST_0_i_1_n_0 ;
  wire \bdatr[10]_INST_0_i_2_n_0 ;
  wire \bdatr[11]_INST_0_i_1_n_0 ;
  wire \bdatr[11]_INST_0_i_2_n_0 ;
  wire \bdatr[12]_INST_0_i_1_n_0 ;
  wire \bdatr[12]_INST_0_i_2_n_0 ;
  wire \bdatr[13]_INST_0_i_1_n_0 ;
  wire \bdatr[13]_INST_0_i_2_n_0 ;
  wire \bdatr[14]_INST_0_i_1_n_0 ;
  wire \bdatr[14]_INST_0_i_2_n_0 ;
  wire \bdatr[15]_INST_0_i_1_n_0 ;
  wire \bdatr[15]_INST_0_i_2_n_0 ;
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
  wire \bdatr[6]_INST_0_i_1_n_0 ;
  wire \bdatr[6]_INST_0_i_2_n_0 ;
  wire \bdatr[7]_INST_0_i_1_n_0 ;
  wire \bdatr[7]_INST_0_i_3_n_0 ;
  wire \bdatr[8]_INST_0_i_1_n_0 ;
  wire \bdatr[8]_INST_0_i_2_n_0 ;
  wire \bdatr[9]_INST_0_i_1_n_0 ;
  wire \bdatr[9]_INST_0_i_2_n_0 ;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire ctrl_n_1;
  wire ctrl_n_10;
  wire ctrl_n_11;
  wire ctrl_n_12;
  wire ctrl_n_13;
  wire ctrl_n_14;
  wire ctrl_n_15;
  wire ctrl_n_16;
  wire ctrl_n_17;
  wire ctrl_n_18;
  wire ctrl_n_19;
  wire ctrl_n_20;
  wire ctrl_n_21;
  wire ctrl_n_22;
  wire ctrl_n_23;
  wire ctrl_n_24;
  wire ctrl_n_3;
  wire ctrl_n_4;
  wire ctrl_n_48;
  wire ctrl_n_49;
  wire ctrl_n_5;
  wire ctrl_n_50;
  wire ctrl_n_51;
  wire ctrl_n_52;
  wire ctrl_n_53;
  wire ctrl_n_54;
  wire ctrl_n_55;
  wire ctrl_n_56;
  wire ctrl_n_57;
  wire ctrl_n_58;
  wire ctrl_n_59;
  wire ctrl_n_6;
  wire ctrl_n_60;
  wire ctrl_n_61;
  wire ctrl_n_62;
  wire ctrl_n_63;
  wire ctrl_n_65;
  wire ctrl_n_66;
  wire ctrl_n_67;
  wire ctrl_n_68;
  wire ctrl_n_69;
  wire ctrl_n_70;
  wire ctrl_n_71;
  wire ctrl_n_72;
  wire ctrl_n_73;
  wire ctrl_n_74;
  wire ctrl_n_75;
  wire ctrl_n_76;
  wire ctrl_n_77;
  wire ctrl_n_78;
  wire ctrl_n_79;
  wire ctrl_n_80;
  wire ctrl_n_81;
  wire ctrl_n_9;
  wire flag_eoc;
  wire flag_eoc_i_1_n_0;
  wire flag_eos;
  wire flag_eos_i_1_n_0;
  wire kick_drp_rd;
  wire kick_drp_wr;
  wire p_0_in9_out;
  wire p_10_in;
  wire [15:0]p_1_in;
  wire rd_adcxadrr;
  wire rd_adcxadrr0;
  wire rd_adcxadrr1;
  wire rd_adcxadrw;
  wire rd_adcxadrw0;
  wire rd_adcxain0;
  wire rd_adcxain00;
  wire rd_adcxain1;
  wire rd_adcxain10;
  wire rd_adcxctl;
  wire rd_adcxctl0;
  wire rd_adcxdatr;
  wire rd_adcxdatr0;
  wire rd_adcxdatw;
  wire rd_adcxdatw0;
  wire rst_n;
  wire wr_adcxadrr;
  wire wr_adcxctl;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hBF80)) 
    adcx_drp_enb_i_1
       (.I0(bdatw[3]),
        .I1(brdy),
        .I2(wr_adcxctl),
        .I3(adcx_drp_enb),
        .O(adcx_drp_enb_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    adcx_drp_enb_i_2
       (.I0(p_10_in),
        .I1(badr[0]),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[2]),
        .O(wr_adcxctl));
  FDRE adcx_drp_enb_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(adcx_drp_enb_i_1_n_0),
        .Q(adcx_drp_enb),
        .R(ctrl_n_1));
  LUT5 #(
    .INIT(32'h00800000)) 
    \adcxadrr[6]_i_1 
       (.I0(adcx_drp_enb),
        .I1(rd_adcxadrr1),
        .I2(brdy),
        .I3(bcs_adcx_n),
        .I4(bcmdw),
        .O(adcxadrr));
  LUT4 #(
    .INIT(16'h0010)) 
    \adcxadrr[6]_i_2 
       (.I0(badr[2]),
        .I1(badr[1]),
        .I2(badr[3]),
        .I3(badr[0]),
        .O(rd_adcxadrr1));
  FDRE \adcxadrr_reg[0] 
       (.C(clk),
        .CE(adcxadrr),
        .D(bdatw[0]),
        .Q(\adcxadrr_reg_n_0_[0] ),
        .R(ctrl_n_1));
  FDRE \adcxadrr_reg[1] 
       (.C(clk),
        .CE(adcxadrr),
        .D(bdatw[1]),
        .Q(\adcxadrr_reg_n_0_[1] ),
        .R(ctrl_n_1));
  FDRE \adcxadrr_reg[2] 
       (.C(clk),
        .CE(adcxadrr),
        .D(bdatw[2]),
        .Q(\adcxadrr_reg_n_0_[2] ),
        .R(ctrl_n_1));
  FDRE \adcxadrr_reg[3] 
       (.C(clk),
        .CE(adcxadrr),
        .D(bdatw[3]),
        .Q(\adcxadrr_reg_n_0_[3] ),
        .R(ctrl_n_1));
  FDRE \adcxadrr_reg[4] 
       (.C(clk),
        .CE(adcxadrr),
        .D(bdatw[4]),
        .Q(\adcxadrr_reg_n_0_[4] ),
        .R(ctrl_n_1));
  FDRE \adcxadrr_reg[5] 
       (.C(clk),
        .CE(adcxadrr),
        .D(bdatw[5]),
        .Q(\adcxadrr_reg_n_0_[5] ),
        .R(ctrl_n_1));
  FDRE \adcxadrr_reg[6] 
       (.C(clk),
        .CE(adcxadrr),
        .D(bdatw[6]),
        .Q(\adcxadrr_reg_n_0_[6] ),
        .R(ctrl_n_1));
  LUT5 #(
    .INIT(32'h20000000)) 
    \adcxadrw[6]_i_1 
       (.I0(brdy),
        .I1(bcs_adcx_n),
        .I2(bcmdw),
        .I3(\adcxadrw[6]_i_2_n_0 ),
        .I4(adcx_drp_enb),
        .O(adcxadrw));
  LUT4 #(
    .INIT(16'h1000)) 
    \adcxadrw[6]_i_2 
       (.I0(badr[1]),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[3]),
        .O(\adcxadrw[6]_i_2_n_0 ));
  FDRE \adcxadrw_reg[0] 
       (.C(clk),
        .CE(adcxadrw),
        .D(bdatw[0]),
        .Q(\adcxadrw_reg_n_0_[0] ),
        .R(ctrl_n_1));
  FDRE \adcxadrw_reg[1] 
       (.C(clk),
        .CE(adcxadrw),
        .D(bdatw[1]),
        .Q(\adcxadrw_reg_n_0_[1] ),
        .R(ctrl_n_1));
  FDRE \adcxadrw_reg[2] 
       (.C(clk),
        .CE(adcxadrw),
        .D(bdatw[2]),
        .Q(\adcxadrw_reg_n_0_[2] ),
        .R(ctrl_n_1));
  FDRE \adcxadrw_reg[3] 
       (.C(clk),
        .CE(adcxadrw),
        .D(bdatw[3]),
        .Q(\adcxadrw_reg_n_0_[3] ),
        .R(ctrl_n_1));
  FDRE \adcxadrw_reg[4] 
       (.C(clk),
        .CE(adcxadrw),
        .D(bdatw[4]),
        .Q(\adcxadrw_reg_n_0_[4] ),
        .R(ctrl_n_1));
  FDRE \adcxadrw_reg[5] 
       (.C(clk),
        .CE(adcxadrw),
        .D(bdatw[5]),
        .Q(\adcxadrw_reg_n_0_[5] ),
        .R(ctrl_n_1));
  FDRE \adcxadrw_reg[6] 
       (.C(clk),
        .CE(adcxadrw),
        .D(bdatw[6]),
        .Q(\adcxadrw_reg_n_0_[6] ),
        .R(ctrl_n_1));
  FDRE \adcxain0_reg[0] 
       (.C(clk),
        .CE(ctrl_n_4),
        .D(p_1_in[0]),
        .Q(adcxain0[0]),
        .R(\<const0> ));
  FDRE \adcxain0_reg[10] 
       (.C(clk),
        .CE(ctrl_n_4),
        .D(p_1_in[10]),
        .Q(adcxain0[10]),
        .R(\<const0> ));
  FDRE \adcxain0_reg[11] 
       (.C(clk),
        .CE(ctrl_n_4),
        .D(p_1_in[11]),
        .Q(adcxain0[11]),
        .R(\<const0> ));
  FDRE \adcxain0_reg[12] 
       (.C(clk),
        .CE(ctrl_n_4),
        .D(p_1_in[12]),
        .Q(adcxain0[12]),
        .R(\<const0> ));
  FDRE \adcxain0_reg[13] 
       (.C(clk),
        .CE(ctrl_n_4),
        .D(p_1_in[13]),
        .Q(adcxain0[13]),
        .R(\<const0> ));
  FDRE \adcxain0_reg[14] 
       (.C(clk),
        .CE(ctrl_n_4),
        .D(p_1_in[14]),
        .Q(adcxain0[14]),
        .R(\<const0> ));
  FDRE \adcxain0_reg[15] 
       (.C(clk),
        .CE(ctrl_n_4),
        .D(p_1_in[15]),
        .Q(adcxain0[15]),
        .R(\<const0> ));
  FDRE \adcxain0_reg[1] 
       (.C(clk),
        .CE(ctrl_n_4),
        .D(p_1_in[1]),
        .Q(adcxain0[1]),
        .R(\<const0> ));
  FDRE \adcxain0_reg[2] 
       (.C(clk),
        .CE(ctrl_n_4),
        .D(p_1_in[2]),
        .Q(adcxain0[2]),
        .R(\<const0> ));
  FDRE \adcxain0_reg[3] 
       (.C(clk),
        .CE(ctrl_n_4),
        .D(p_1_in[3]),
        .Q(adcxain0[3]),
        .R(\<const0> ));
  FDRE \adcxain0_reg[4] 
       (.C(clk),
        .CE(ctrl_n_4),
        .D(p_1_in[4]),
        .Q(adcxain0[4]),
        .R(\<const0> ));
  FDRE \adcxain0_reg[5] 
       (.C(clk),
        .CE(ctrl_n_4),
        .D(p_1_in[5]),
        .Q(adcxain0[5]),
        .R(\<const0> ));
  FDRE \adcxain0_reg[6] 
       (.C(clk),
        .CE(ctrl_n_4),
        .D(p_1_in[6]),
        .Q(adcxain0[6]),
        .R(\<const0> ));
  FDRE \adcxain0_reg[7] 
       (.C(clk),
        .CE(ctrl_n_4),
        .D(p_1_in[7]),
        .Q(adcxain0[7]),
        .R(\<const0> ));
  FDRE \adcxain0_reg[8] 
       (.C(clk),
        .CE(ctrl_n_4),
        .D(p_1_in[8]),
        .Q(adcxain0[8]),
        .R(\<const0> ));
  FDRE \adcxain0_reg[9] 
       (.C(clk),
        .CE(ctrl_n_4),
        .D(p_1_in[9]),
        .Q(adcxain0[9]),
        .R(\<const0> ));
  FDRE \adcxain1_reg[0] 
       (.C(clk),
        .CE(ctrl_n_5),
        .D(ctrl_n_63),
        .Q(adcxain1[0]),
        .R(\<const0> ));
  FDRE \adcxain1_reg[10] 
       (.C(clk),
        .CE(ctrl_n_5),
        .D(ctrl_n_53),
        .Q(adcxain1[10]),
        .R(\<const0> ));
  FDRE \adcxain1_reg[11] 
       (.C(clk),
        .CE(ctrl_n_5),
        .D(ctrl_n_52),
        .Q(adcxain1[11]),
        .R(\<const0> ));
  FDRE \adcxain1_reg[12] 
       (.C(clk),
        .CE(ctrl_n_5),
        .D(ctrl_n_51),
        .Q(adcxain1[12]),
        .R(\<const0> ));
  FDRE \adcxain1_reg[13] 
       (.C(clk),
        .CE(ctrl_n_5),
        .D(ctrl_n_50),
        .Q(adcxain1[13]),
        .R(\<const0> ));
  FDRE \adcxain1_reg[14] 
       (.C(clk),
        .CE(ctrl_n_5),
        .D(ctrl_n_49),
        .Q(adcxain1[14]),
        .R(\<const0> ));
  FDRE \adcxain1_reg[15] 
       (.C(clk),
        .CE(ctrl_n_5),
        .D(ctrl_n_48),
        .Q(adcxain1[15]),
        .R(\<const0> ));
  FDRE \adcxain1_reg[1] 
       (.C(clk),
        .CE(ctrl_n_5),
        .D(ctrl_n_62),
        .Q(adcxain1[1]),
        .R(\<const0> ));
  FDRE \adcxain1_reg[2] 
       (.C(clk),
        .CE(ctrl_n_5),
        .D(ctrl_n_61),
        .Q(adcxain1[2]),
        .R(\<const0> ));
  FDRE \adcxain1_reg[3] 
       (.C(clk),
        .CE(ctrl_n_5),
        .D(ctrl_n_60),
        .Q(adcxain1[3]),
        .R(\<const0> ));
  FDRE \adcxain1_reg[4] 
       (.C(clk),
        .CE(ctrl_n_5),
        .D(ctrl_n_59),
        .Q(adcxain1[4]),
        .R(\<const0> ));
  FDRE \adcxain1_reg[5] 
       (.C(clk),
        .CE(ctrl_n_5),
        .D(ctrl_n_58),
        .Q(adcxain1[5]),
        .R(\<const0> ));
  FDRE \adcxain1_reg[6] 
       (.C(clk),
        .CE(ctrl_n_5),
        .D(ctrl_n_57),
        .Q(adcxain1[6]),
        .R(\<const0> ));
  FDRE \adcxain1_reg[7] 
       (.C(clk),
        .CE(ctrl_n_5),
        .D(ctrl_n_56),
        .Q(adcxain1[7]),
        .R(\<const0> ));
  FDRE \adcxain1_reg[8] 
       (.C(clk),
        .CE(ctrl_n_5),
        .D(ctrl_n_55),
        .Q(adcxain1[8]),
        .R(\<const0> ));
  FDRE \adcxain1_reg[9] 
       (.C(clk),
        .CE(ctrl_n_5),
        .D(ctrl_n_54),
        .Q(adcxain1[9]),
        .R(\<const0> ));
  FDRE \adcxdatr_reg[0] 
       (.C(clk),
        .CE(ctrl_n_3),
        .D(ctrl_n_81),
        .Q(adcxdatr[0]),
        .R(\<const0> ));
  FDRE \adcxdatr_reg[10] 
       (.C(clk),
        .CE(ctrl_n_3),
        .D(ctrl_n_71),
        .Q(adcxdatr[10]),
        .R(\<const0> ));
  FDRE \adcxdatr_reg[11] 
       (.C(clk),
        .CE(ctrl_n_3),
        .D(ctrl_n_70),
        .Q(adcxdatr[11]),
        .R(\<const0> ));
  FDRE \adcxdatr_reg[12] 
       (.C(clk),
        .CE(ctrl_n_3),
        .D(ctrl_n_69),
        .Q(adcxdatr[12]),
        .R(\<const0> ));
  FDRE \adcxdatr_reg[13] 
       (.C(clk),
        .CE(ctrl_n_3),
        .D(ctrl_n_68),
        .Q(adcxdatr[13]),
        .R(\<const0> ));
  FDRE \adcxdatr_reg[14] 
       (.C(clk),
        .CE(ctrl_n_3),
        .D(ctrl_n_67),
        .Q(adcxdatr[14]),
        .R(\<const0> ));
  FDRE \adcxdatr_reg[15] 
       (.C(clk),
        .CE(ctrl_n_3),
        .D(ctrl_n_66),
        .Q(adcxdatr[15]),
        .R(\<const0> ));
  FDRE \adcxdatr_reg[1] 
       (.C(clk),
        .CE(ctrl_n_3),
        .D(ctrl_n_80),
        .Q(adcxdatr[1]),
        .R(\<const0> ));
  FDRE \adcxdatr_reg[2] 
       (.C(clk),
        .CE(ctrl_n_3),
        .D(ctrl_n_79),
        .Q(adcxdatr[2]),
        .R(\<const0> ));
  FDRE \adcxdatr_reg[3] 
       (.C(clk),
        .CE(ctrl_n_3),
        .D(ctrl_n_78),
        .Q(adcxdatr[3]),
        .R(\<const0> ));
  FDRE \adcxdatr_reg[4] 
       (.C(clk),
        .CE(ctrl_n_3),
        .D(ctrl_n_77),
        .Q(adcxdatr[4]),
        .R(\<const0> ));
  FDRE \adcxdatr_reg[5] 
       (.C(clk),
        .CE(ctrl_n_3),
        .D(ctrl_n_76),
        .Q(adcxdatr[5]),
        .R(\<const0> ));
  FDRE \adcxdatr_reg[6] 
       (.C(clk),
        .CE(ctrl_n_3),
        .D(ctrl_n_75),
        .Q(adcxdatr[6]),
        .R(\<const0> ));
  FDRE \adcxdatr_reg[7] 
       (.C(clk),
        .CE(ctrl_n_3),
        .D(ctrl_n_74),
        .Q(adcxdatr[7]),
        .R(\<const0> ));
  FDRE \adcxdatr_reg[8] 
       (.C(clk),
        .CE(ctrl_n_3),
        .D(ctrl_n_73),
        .Q(adcxdatr[8]),
        .R(\<const0> ));
  FDRE \adcxdatr_reg[9] 
       (.C(clk),
        .CE(ctrl_n_3),
        .D(ctrl_n_72),
        .Q(adcxdatr[9]),
        .R(\<const0> ));
  FDRE \adcxdatw_reg[0] 
       (.C(clk),
        .CE(ctrl_n_6),
        .D(ctrl_n_24),
        .Q(\adcxdatw_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \adcxdatw_reg[10] 
       (.C(clk),
        .CE(ctrl_n_6),
        .D(ctrl_n_14),
        .Q(\adcxdatw_reg_n_0_[10] ),
        .R(\<const0> ));
  FDRE \adcxdatw_reg[11] 
       (.C(clk),
        .CE(ctrl_n_6),
        .D(ctrl_n_13),
        .Q(\adcxdatw_reg_n_0_[11] ),
        .R(\<const0> ));
  FDRE \adcxdatw_reg[12] 
       (.C(clk),
        .CE(ctrl_n_6),
        .D(ctrl_n_12),
        .Q(\adcxdatw_reg_n_0_[12] ),
        .R(\<const0> ));
  FDRE \adcxdatw_reg[13] 
       (.C(clk),
        .CE(ctrl_n_6),
        .D(ctrl_n_11),
        .Q(\adcxdatw_reg_n_0_[13] ),
        .R(\<const0> ));
  FDRE \adcxdatw_reg[14] 
       (.C(clk),
        .CE(ctrl_n_6),
        .D(ctrl_n_10),
        .Q(\adcxdatw_reg_n_0_[14] ),
        .R(\<const0> ));
  FDRE \adcxdatw_reg[15] 
       (.C(clk),
        .CE(ctrl_n_6),
        .D(ctrl_n_9),
        .Q(\adcxdatw_reg_n_0_[15] ),
        .R(\<const0> ));
  FDRE \adcxdatw_reg[1] 
       (.C(clk),
        .CE(ctrl_n_6),
        .D(ctrl_n_23),
        .Q(\adcxdatw_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE \adcxdatw_reg[2] 
       (.C(clk),
        .CE(ctrl_n_6),
        .D(ctrl_n_22),
        .Q(\adcxdatw_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE \adcxdatw_reg[3] 
       (.C(clk),
        .CE(ctrl_n_6),
        .D(ctrl_n_21),
        .Q(\adcxdatw_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE \adcxdatw_reg[4] 
       (.C(clk),
        .CE(ctrl_n_6),
        .D(ctrl_n_20),
        .Q(\adcxdatw_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE \adcxdatw_reg[5] 
       (.C(clk),
        .CE(ctrl_n_6),
        .D(ctrl_n_19),
        .Q(\adcxdatw_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE \adcxdatw_reg[6] 
       (.C(clk),
        .CE(ctrl_n_6),
        .D(ctrl_n_18),
        .Q(\adcxdatw_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE \adcxdatw_reg[7] 
       (.C(clk),
        .CE(ctrl_n_6),
        .D(ctrl_n_17),
        .Q(\adcxdatw_reg_n_0_[7] ),
        .R(\<const0> ));
  FDRE \adcxdatw_reg[8] 
       (.C(clk),
        .CE(ctrl_n_6),
        .D(ctrl_n_16),
        .Q(\adcxdatw_reg_n_0_[8] ),
        .R(\<const0> ));
  FDRE \adcxdatw_reg[9] 
       (.C(clk),
        .CE(ctrl_n_6),
        .D(ctrl_n_15),
        .Q(\adcxdatw_reg_n_0_[9] ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \bdatr[10]_INST_0 
       (.I0(rd_adcxctl),
        .I1(\bdatr[10]_INST_0_i_1_n_0 ),
        .I2(rd_adcxain0),
        .I3(rd_adcxadrr),
        .I4(rd_adcxain1),
        .I5(\bdatr[10]_INST_0_i_2_n_0 ),
        .O(bdatr[10]));
  LUT5 #(
    .INIT(32'hA0A0ACA0)) 
    \bdatr[10]_INST_0_i_1 
       (.I0(adcxdatr[10]),
        .I1(\adcxdatw_reg_n_0_[10] ),
        .I2(rd_adcxdatr),
        .I3(rd_adcxdatw),
        .I4(rd_adcxadrw),
        .O(\bdatr[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \bdatr[10]_INST_0_i_2 
       (.I0(rd_adcxain1),
        .I1(rd_adcxain0),
        .I2(adcxain1[10]),
        .I3(adcxain0[10]),
        .I4(rd_adcxctl),
        .O(\bdatr[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \bdatr[11]_INST_0 
       (.I0(rd_adcxctl),
        .I1(\bdatr[11]_INST_0_i_1_n_0 ),
        .I2(rd_adcxain0),
        .I3(rd_adcxadrr),
        .I4(rd_adcxain1),
        .I5(\bdatr[11]_INST_0_i_2_n_0 ),
        .O(bdatr[11]));
  LUT5 #(
    .INIT(32'hA0A0ACA0)) 
    \bdatr[11]_INST_0_i_1 
       (.I0(adcxdatr[11]),
        .I1(\adcxdatw_reg_n_0_[11] ),
        .I2(rd_adcxdatr),
        .I3(rd_adcxdatw),
        .I4(rd_adcxadrw),
        .O(\bdatr[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \bdatr[11]_INST_0_i_2 
       (.I0(rd_adcxain1),
        .I1(rd_adcxain0),
        .I2(adcxain1[11]),
        .I3(adcxain0[11]),
        .I4(rd_adcxctl),
        .O(\bdatr[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \bdatr[12]_INST_0 
       (.I0(rd_adcxctl),
        .I1(\bdatr[12]_INST_0_i_1_n_0 ),
        .I2(rd_adcxain0),
        .I3(rd_adcxadrr),
        .I4(rd_adcxain1),
        .I5(\bdatr[12]_INST_0_i_2_n_0 ),
        .O(bdatr[12]));
  LUT5 #(
    .INIT(32'hA0A0ACA0)) 
    \bdatr[12]_INST_0_i_1 
       (.I0(adcxdatr[12]),
        .I1(\adcxdatw_reg_n_0_[12] ),
        .I2(rd_adcxdatr),
        .I3(rd_adcxdatw),
        .I4(rd_adcxadrw),
        .O(\bdatr[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \bdatr[12]_INST_0_i_2 
       (.I0(rd_adcxain1),
        .I1(rd_adcxain0),
        .I2(adcxain1[12]),
        .I3(adcxain0[12]),
        .I4(rd_adcxctl),
        .O(\bdatr[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \bdatr[13]_INST_0 
       (.I0(rd_adcxctl),
        .I1(\bdatr[13]_INST_0_i_1_n_0 ),
        .I2(rd_adcxain0),
        .I3(rd_adcxadrr),
        .I4(rd_adcxain1),
        .I5(\bdatr[13]_INST_0_i_2_n_0 ),
        .O(bdatr[13]));
  LUT5 #(
    .INIT(32'hA0A0ACA0)) 
    \bdatr[13]_INST_0_i_1 
       (.I0(adcxdatr[13]),
        .I1(\adcxdatw_reg_n_0_[13] ),
        .I2(rd_adcxdatr),
        .I3(rd_adcxdatw),
        .I4(rd_adcxadrw),
        .O(\bdatr[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \bdatr[13]_INST_0_i_2 
       (.I0(rd_adcxain1),
        .I1(rd_adcxain0),
        .I2(adcxain1[13]),
        .I3(adcxain0[13]),
        .I4(rd_adcxctl),
        .O(\bdatr[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \bdatr[14]_INST_0 
       (.I0(rd_adcxctl),
        .I1(\bdatr[14]_INST_0_i_1_n_0 ),
        .I2(rd_adcxain0),
        .I3(rd_adcxadrr),
        .I4(rd_adcxain1),
        .I5(\bdatr[14]_INST_0_i_2_n_0 ),
        .O(bdatr[14]));
  LUT5 #(
    .INIT(32'hA0A0ACA0)) 
    \bdatr[14]_INST_0_i_1 
       (.I0(adcxdatr[14]),
        .I1(\adcxdatw_reg_n_0_[14] ),
        .I2(rd_adcxdatr),
        .I3(rd_adcxdatw),
        .I4(rd_adcxadrw),
        .O(\bdatr[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \bdatr[14]_INST_0_i_2 
       (.I0(rd_adcxain1),
        .I1(rd_adcxain0),
        .I2(adcxain1[14]),
        .I3(adcxain0[14]),
        .I4(rd_adcxctl),
        .O(\bdatr[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \bdatr[15]_INST_0 
       (.I0(rd_adcxctl),
        .I1(\bdatr[15]_INST_0_i_1_n_0 ),
        .I2(rd_adcxain0),
        .I3(rd_adcxadrr),
        .I4(rd_adcxain1),
        .I5(\bdatr[15]_INST_0_i_2_n_0 ),
        .O(bdatr[15]));
  LUT5 #(
    .INIT(32'hA0A0ACA0)) 
    \bdatr[15]_INST_0_i_1 
       (.I0(adcxdatr[15]),
        .I1(\adcxdatw_reg_n_0_[15] ),
        .I2(rd_adcxdatr),
        .I3(rd_adcxdatw),
        .I4(rd_adcxadrw),
        .O(\bdatr[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \bdatr[15]_INST_0_i_2 
       (.I0(rd_adcxain1),
        .I1(rd_adcxain0),
        .I2(adcxain1[15]),
        .I3(adcxain0[15]),
        .I4(rd_adcxctl),
        .O(\bdatr[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00000002)) 
    \bdatr[1]_INST_0 
       (.I0(\bdatr[1]_INST_0_i_1_n_0 ),
        .I1(rd_adcxain0),
        .I2(rd_adcxadrr),
        .I3(rd_adcxain1),
        .I4(rd_adcxctl),
        .I5(\bdatr[1]_INST_0_i_2_n_0 ),
        .O(bdatr[1]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(adcxdatr[1]),
        .I1(\adcxdatw_reg_n_0_[1] ),
        .I2(\adcxadrw_reg_n_0_[1] ),
        .I3(rd_adcxdatr),
        .I4(rd_adcxdatw),
        .I5(rd_adcxadrw),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \bdatr[1]_INST_0_i_2 
       (.I0(adcxain0[1]),
        .I1(\adcxadrr_reg_n_0_[1] ),
        .I2(adcxain1[1]),
        .I3(rd_adcxain0),
        .I4(rd_adcxadrr),
        .I5(rd_adcxain1),
        .O(\bdatr[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00000002)) 
    \bdatr[2]_INST_0 
       (.I0(\bdatr[2]_INST_0_i_1_n_0 ),
        .I1(rd_adcxain0),
        .I2(rd_adcxadrr),
        .I3(rd_adcxain1),
        .I4(rd_adcxctl),
        .I5(\bdatr[2]_INST_0_i_2_n_0 ),
        .O(bdatr[2]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(adcxdatr[2]),
        .I1(\adcxdatw_reg_n_0_[2] ),
        .I2(\adcxadrw_reg_n_0_[2] ),
        .I3(rd_adcxdatr),
        .I4(rd_adcxdatw),
        .I5(rd_adcxadrw),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \bdatr[2]_INST_0_i_2 
       (.I0(adcxain0[2]),
        .I1(\adcxadrr_reg_n_0_[2] ),
        .I2(adcxain1[2]),
        .I3(rd_adcxain0),
        .I4(rd_adcxadrr),
        .I5(rd_adcxain1),
        .O(\bdatr[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBA00BA)) 
    \bdatr[3]_INST_0 
       (.I0(\bdatr[3]_INST_0_i_1_n_0 ),
        .I1(ctrl_n_65),
        .I2(\bdatr[3]_INST_0_i_2_n_0 ),
        .I3(rd_adcxctl),
        .I4(adcx_drp_enb),
        .O(bdatr[3]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(adcxain0[3]),
        .I1(\adcxadrr_reg_n_0_[3] ),
        .I2(adcxain1[3]),
        .I3(rd_adcxain0),
        .I4(rd_adcxadrr),
        .I5(rd_adcxain1),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \bdatr[3]_INST_0_i_2 
       (.I0(adcxdatr[3]),
        .I1(\adcxdatw_reg_n_0_[3] ),
        .I2(\adcxadrw_reg_n_0_[3] ),
        .I3(rd_adcxdatr),
        .I4(rd_adcxdatw),
        .I5(rd_adcxadrw),
        .O(\bdatr[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00000002)) 
    \bdatr[4]_INST_0 
       (.I0(\bdatr[4]_INST_0_i_1_n_0 ),
        .I1(rd_adcxain0),
        .I2(rd_adcxadrr),
        .I3(rd_adcxain1),
        .I4(rd_adcxctl),
        .I5(\bdatr[4]_INST_0_i_2_n_0 ),
        .O(bdatr[4]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(adcxdatr[4]),
        .I1(\adcxdatw_reg_n_0_[4] ),
        .I2(\adcxadrw_reg_n_0_[4] ),
        .I3(rd_adcxdatr),
        .I4(rd_adcxdatw),
        .I5(rd_adcxadrw),
        .O(\bdatr[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \bdatr[4]_INST_0_i_2 
       (.I0(adcxain0[4]),
        .I1(\adcxadrr_reg_n_0_[4] ),
        .I2(adcxain1[4]),
        .I3(rd_adcxain0),
        .I4(rd_adcxadrr),
        .I5(rd_adcxain1),
        .O(\bdatr[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBA00BA)) 
    \bdatr[5]_INST_0 
       (.I0(\bdatr[5]_INST_0_i_1_n_0 ),
        .I1(ctrl_n_65),
        .I2(\bdatr[5]_INST_0_i_2_n_0 ),
        .I3(rd_adcxctl),
        .I4(flag_eoc),
        .O(bdatr[5]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(adcxain0[5]),
        .I1(\adcxadrr_reg_n_0_[5] ),
        .I2(adcxain1[5]),
        .I3(rd_adcxain0),
        .I4(rd_adcxadrr),
        .I5(rd_adcxain1),
        .O(\bdatr[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \bdatr[5]_INST_0_i_2 
       (.I0(adcxdatr[5]),
        .I1(\adcxdatw_reg_n_0_[5] ),
        .I2(\adcxadrw_reg_n_0_[5] ),
        .I3(rd_adcxdatr),
        .I4(rd_adcxdatw),
        .I5(rd_adcxadrw),
        .O(\bdatr[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBA00BA)) 
    \bdatr[6]_INST_0 
       (.I0(\bdatr[6]_INST_0_i_1_n_0 ),
        .I1(ctrl_n_65),
        .I2(\bdatr[6]_INST_0_i_2_n_0 ),
        .I3(rd_adcxctl),
        .I4(flag_eos),
        .O(bdatr[6]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \bdatr[6]_INST_0_i_1 
       (.I0(adcxain0[6]),
        .I1(\adcxadrr_reg_n_0_[6] ),
        .I2(adcxain1[6]),
        .I3(rd_adcxain0),
        .I4(rd_adcxadrr),
        .I5(rd_adcxain1),
        .O(\bdatr[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \bdatr[6]_INST_0_i_2 
       (.I0(adcxdatr[6]),
        .I1(\adcxdatw_reg_n_0_[6] ),
        .I2(\adcxadrw_reg_n_0_[6] ),
        .I3(rd_adcxdatr),
        .I4(rd_adcxdatw),
        .I5(rd_adcxadrw),
        .O(\bdatr[6]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBAAABA)) 
    \bdatr[7]_INST_0 
       (.I0(\bdatr[7]_INST_0_i_1_n_0 ),
        .I1(ctrl_n_65),
        .I2(\bdatr[7]_INST_0_i_3_n_0 ),
        .I3(rd_adcxctl),
        .I4(adcx_busy),
        .O(bdatr[7]));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(rd_adcxain1),
        .I1(rd_adcxain0),
        .I2(adcxain1[7]),
        .I3(adcxain0[7]),
        .I4(rd_adcxctl),
        .O(\bdatr[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0ACA0)) 
    \bdatr[7]_INST_0_i_3 
       (.I0(adcxdatr[7]),
        .I1(\adcxdatw_reg_n_0_[7] ),
        .I2(rd_adcxdatr),
        .I3(rd_adcxdatw),
        .I4(rd_adcxadrw),
        .O(\bdatr[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \bdatr[8]_INST_0 
       (.I0(rd_adcxctl),
        .I1(\bdatr[8]_INST_0_i_1_n_0 ),
        .I2(rd_adcxain0),
        .I3(rd_adcxadrr),
        .I4(rd_adcxain1),
        .I5(\bdatr[8]_INST_0_i_2_n_0 ),
        .O(bdatr[8]));
  LUT5 #(
    .INIT(32'hA0A0ACA0)) 
    \bdatr[8]_INST_0_i_1 
       (.I0(adcxdatr[8]),
        .I1(\adcxdatw_reg_n_0_[8] ),
        .I2(rd_adcxdatr),
        .I3(rd_adcxdatw),
        .I4(rd_adcxadrw),
        .O(\bdatr[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \bdatr[8]_INST_0_i_2 
       (.I0(rd_adcxain1),
        .I1(rd_adcxain0),
        .I2(adcxain1[8]),
        .I3(adcxain0[8]),
        .I4(rd_adcxctl),
        .O(\bdatr[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \bdatr[9]_INST_0 
       (.I0(rd_adcxctl),
        .I1(\bdatr[9]_INST_0_i_1_n_0 ),
        .I2(rd_adcxain0),
        .I3(rd_adcxadrr),
        .I4(rd_adcxain1),
        .I5(\bdatr[9]_INST_0_i_2_n_0 ),
        .O(bdatr[9]));
  LUT5 #(
    .INIT(32'hA0A0ACA0)) 
    \bdatr[9]_INST_0_i_1 
       (.I0(adcxdatr[9]),
        .I1(\adcxdatw_reg_n_0_[9] ),
        .I2(rd_adcxdatr),
        .I3(rd_adcxdatw),
        .I4(rd_adcxadrw),
        .O(\bdatr[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \bdatr[9]_INST_0_i_2 
       (.I0(rd_adcxain1),
        .I1(rd_adcxain0),
        .I2(adcxain1[9]),
        .I3(adcxain0[9]),
        .I4(rd_adcxctl),
        .O(\bdatr[9]_INST_0_i_2_n_0 ));
  adcx_drp_fsm ctrl
       (.D({ctrl_n_9,ctrl_n_10,ctrl_n_11,ctrl_n_12,ctrl_n_13,ctrl_n_14,ctrl_n_15,ctrl_n_16,ctrl_n_17,ctrl_n_18,ctrl_n_19,ctrl_n_20,ctrl_n_21,ctrl_n_22,ctrl_n_23,ctrl_n_24}),
        .E(ctrl_n_3),
        .Q({\adcxadrr_reg_n_0_[6] ,\adcxadrr_reg_n_0_[5] ,\adcxadrr_reg_n_0_[4] ,\adcxadrr_reg_n_0_[3] ,\adcxadrr_reg_n_0_[2] ,\adcxadrr_reg_n_0_[1] ,\adcxadrr_reg_n_0_[0] }),
        .adcx_drp_adr(adcx_drp_adr),
        .\adcx_drp_adr[6] ({\adcxadrw_reg_n_0_[6] ,\adcxadrw_reg_n_0_[5] ,\adcxadrw_reg_n_0_[4] ,\adcxadrw_reg_n_0_[3] ,\adcxadrw_reg_n_0_[2] ,\adcxadrw_reg_n_0_[1] ,\adcxadrw_reg_n_0_[0] }),
        .adcx_drp_den(adcx_drp_den),
        .adcx_drp_di(adcx_drp_di),
        .\adcx_drp_di[15] ({\adcxdatw_reg_n_0_[15] ,\adcxdatw_reg_n_0_[14] ,\adcxdatw_reg_n_0_[13] ,\adcxdatw_reg_n_0_[12] ,\adcxdatw_reg_n_0_[11] ,\adcxdatw_reg_n_0_[10] ,\adcxdatw_reg_n_0_[9] ,\adcxdatw_reg_n_0_[8] ,\adcxdatw_reg_n_0_[7] ,\adcxdatw_reg_n_0_[6] ,\adcxdatw_reg_n_0_[5] ,\adcxdatw_reg_n_0_[4] ,\adcxdatw_reg_n_0_[3] ,\adcxdatw_reg_n_0_[2] ,\adcxdatw_reg_n_0_[1] ,\adcxdatw_reg_n_0_[0] }),
        .adcx_drp_do(adcx_drp_do),
        .\adcx_drp_do[15] (p_1_in),
        .\adcx_drp_do[15]_0 ({ctrl_n_48,ctrl_n_49,ctrl_n_50,ctrl_n_51,ctrl_n_52,ctrl_n_53,ctrl_n_54,ctrl_n_55,ctrl_n_56,ctrl_n_57,ctrl_n_58,ctrl_n_59,ctrl_n_60,ctrl_n_61,ctrl_n_62,ctrl_n_63}),
        .\adcx_drp_do[15]_1 ({ctrl_n_66,ctrl_n_67,ctrl_n_68,ctrl_n_69,ctrl_n_70,ctrl_n_71,ctrl_n_72,ctrl_n_73,ctrl_n_74,ctrl_n_75,ctrl_n_76,ctrl_n_77,ctrl_n_78,ctrl_n_79,ctrl_n_80,ctrl_n_81}),
        .adcx_drp_dwe(adcx_drp_dwe),
        .adcx_drp_enb(adcx_drp_enb),
        .adcx_drp_rdy(adcx_drp_rdy),
        .adcx_drp_rdy_0(ctrl_n_4),
        .adcx_drp_rdy_1(ctrl_n_6),
        .adcx_eos(adcx_eos),
        .badr(badr),
        .bcmdw(bcmdw),
        .bcs_adcx_n(bcs_adcx_n),
        .bdatr(bdatr[0]),
        .\bdatr[0] (adcxdatr[0]),
        .\bdatr[0]_0 (adcxain0[0]),
        .\bdatr[0]_1 (adcxain1[0]),
        .bdatw(bdatw),
        .brdy(brdy),
        .clk(clk),
        .kick_drp_rd(kick_drp_rd),
        .kick_drp_wr(kick_drp_wr),
        .p_0_in9_out(p_0_in9_out),
        .p_10_in(p_10_in),
        .rd_adcxadrr(rd_adcxadrr),
        .rd_adcxadrw(rd_adcxadrw),
        .rd_adcxain0(rd_adcxain0),
        .rd_adcxain1(rd_adcxain1),
        .rd_adcxain1_reg(ctrl_n_65),
        .rd_adcxctl(rd_adcxctl),
        .rd_adcxdatr(rd_adcxdatr),
        .rd_adcxdatw(rd_adcxdatw),
        .rst_n(rst_n),
        .rst_n_0(ctrl_n_1),
        .\stat_reg[0]_0 (ctrl_n_5));
  LUT6 #(
    .INIT(64'hFFFFFFFF7F000000)) 
    flag_eoc_i_1
       (.I0(wr_adcxctl),
        .I1(bdatw[4]),
        .I2(brdy),
        .I3(rst_n),
        .I4(flag_eoc),
        .I5(adcx_eoc),
        .O(flag_eoc_i_1_n_0));
  FDRE flag_eoc_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(flag_eoc_i_1_n_0),
        .Q(flag_eoc),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7F000000)) 
    flag_eos_i_1
       (.I0(wr_adcxctl),
        .I1(bdatw[5]),
        .I2(brdy),
        .I3(rst_n),
        .I4(flag_eos),
        .I5(adcx_eos),
        .O(flag_eos_i_1_n_0));
  FDRE flag_eos_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(flag_eos_i_1_n_0),
        .Q(flag_eos),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    kick_drp_rd_i_1
       (.I0(p_10_in),
        .I1(badr[2]),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[0]),
        .I5(adcx_drp_enb),
        .O(wr_adcxadrr));
  FDRE kick_drp_rd_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(wr_adcxadrr),
        .Q(kick_drp_rd),
        .R(ctrl_n_1));
  FDRE kick_drp_wr_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in9_out),
        .Q(kick_drp_wr),
        .R(ctrl_n_1));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    rd_adcxadrr_i_1
       (.I0(bcs_adcx_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[3]),
        .I4(badr[1]),
        .I5(badr[2]),
        .O(rd_adcxadrr0));
  FDRE rd_adcxadrr_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_adcxadrr0),
        .Q(rd_adcxadrr),
        .R(ctrl_n_1));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    rd_adcxadrw_i_1
       (.I0(bcs_adcx_n),
        .I1(bcmdr),
        .I2(badr[3]),
        .I3(badr[2]),
        .I4(badr[0]),
        .I5(badr[1]),
        .O(rd_adcxadrw0));
  FDRE rd_adcxadrw_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_adcxadrw0),
        .Q(rd_adcxadrw),
        .R(ctrl_n_1));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    rd_adcxain0_i_1
       (.I0(bcs_adcx_n),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[2]),
        .I4(badr[0]),
        .I5(badr[3]),
        .O(rd_adcxain00));
  FDRE rd_adcxain0_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_adcxain00),
        .Q(rd_adcxain0),
        .R(ctrl_n_1));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    rd_adcxain1_i_1
       (.I0(bcs_adcx_n),
        .I1(bcmdr),
        .I2(badr[2]),
        .I3(badr[1]),
        .I4(badr[0]),
        .I5(badr[3]),
        .O(rd_adcxain10));
  FDRE rd_adcxain1_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_adcxain10),
        .Q(rd_adcxain1),
        .R(ctrl_n_1));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    rd_adcxctl_i_1
       (.I0(bcs_adcx_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[3]),
        .I5(badr[2]),
        .O(rd_adcxctl0));
  FDRE rd_adcxctl_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_adcxctl0),
        .Q(rd_adcxctl),
        .R(ctrl_n_1));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    rd_adcxdatr_i_1
       (.I0(bcs_adcx_n),
        .I1(bcmdr),
        .I2(badr[3]),
        .I3(badr[1]),
        .I4(badr[2]),
        .I5(badr[0]),
        .O(rd_adcxdatr0));
  FDRE rd_adcxdatr_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_adcxdatr0),
        .Q(rd_adcxdatr),
        .R(ctrl_n_1));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    rd_adcxdatw_i_1
       (.I0(bcs_adcx_n),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[2]),
        .I5(badr[0]),
        .O(rd_adcxdatw0));
  FDRE rd_adcxdatw_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_adcxdatw0),
        .Q(rd_adcxdatw),
        .R(ctrl_n_1));
endmodule

module adcx_drp_fsm
   (adcx_drp_den,
    rst_n_0,
    adcx_drp_dwe,
    E,
    adcx_drp_rdy_0,
    \stat_reg[0]_0 ,
    adcx_drp_rdy_1,
    p_0_in9_out,
    p_10_in,
    D,
    adcx_drp_adr,
    \adcx_drp_do[15] ,
    \adcx_drp_do[15]_0 ,
    bdatr,
    rd_adcxain1_reg,
    \adcx_drp_do[15]_1 ,
    adcx_drp_di,
    clk,
    adcx_drp_rdy,
    rst_n,
    brdy,
    badr,
    adcx_drp_enb,
    bcs_adcx_n,
    bcmdw,
    adcx_drp_do,
    bdatw,
    Q,
    \adcx_drp_adr[6] ,
    adcx_eos,
    kick_drp_rd,
    rd_adcxctl,
    kick_drp_wr,
    \bdatr[0] ,
    \adcx_drp_di[15] ,
    rd_adcxdatr,
    rd_adcxdatw,
    rd_adcxadrw,
    \bdatr[0]_0 ,
    \bdatr[0]_1 ,
    rd_adcxain0,
    rd_adcxadrr,
    rd_adcxain1);
  output adcx_drp_den;
  output rst_n_0;
  output adcx_drp_dwe;
  output [0:0]E;
  output [0:0]adcx_drp_rdy_0;
  output [0:0]\stat_reg[0]_0 ;
  output [0:0]adcx_drp_rdy_1;
  output p_0_in9_out;
  output p_10_in;
  output [15:0]D;
  output [6:0]adcx_drp_adr;
  output [15:0]\adcx_drp_do[15] ;
  output [15:0]\adcx_drp_do[15]_0 ;
  output [0:0]bdatr;
  output rd_adcxain1_reg;
  output [15:0]\adcx_drp_do[15]_1 ;
  output [15:0]adcx_drp_di;
  input clk;
  input adcx_drp_rdy;
  input rst_n;
  input brdy;
  input [3:0]badr;
  input adcx_drp_enb;
  input bcs_adcx_n;
  input bcmdw;
  input [15:0]adcx_drp_do;
  input [15:0]bdatw;
  input [6:0]Q;
  input [6:0]\adcx_drp_adr[6] ;
  input adcx_eos;
  input kick_drp_rd;
  input rd_adcxctl;
  input kick_drp_wr;
  input [0:0]\bdatr[0] ;
  input [15:0]\adcx_drp_di[15] ;
  input rd_adcxdatr;
  input rd_adcxdatw;
  input rd_adcxadrw;
  input [0:0]\bdatr[0]_0 ;
  input [0:0]\bdatr[0]_1 ;
  input rd_adcxain0;
  input rd_adcxadrr;
  input rd_adcxain1;

  wire \<const1> ;
  wire [15:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire [6:0]adcx_drp_adr;
  wire \adcx_drp_adr[4]_INST_0_i_1_n_0 ;
  wire [6:0]\adcx_drp_adr[6] ;
  wire adcx_drp_den;
  wire adcx_drp_den_i_3_n_0;
  wire adcx_drp_den_t;
  wire [15:0]adcx_drp_di;
  wire [15:0]\adcx_drp_di[15] ;
  wire [15:0]adcx_drp_do;
  wire [15:0]\adcx_drp_do[15] ;
  wire [15:0]\adcx_drp_do[15]_0 ;
  wire [15:0]\adcx_drp_do[15]_1 ;
  wire adcx_drp_dwe;
  wire adcx_drp_dwe_i_1_n_0;
  wire adcx_drp_enb;
  wire adcx_drp_rdy;
  wire [0:0]adcx_drp_rdy_0;
  wire [0:0]adcx_drp_rdy_1;
  wire adcx_eos;
  wire [3:0]badr;
  wire bcmdw;
  wire bcs_adcx_n;
  wire [0:0]bdatr;
  wire [0:0]\bdatr[0] ;
  wire [0:0]\bdatr[0]_0 ;
  wire [0:0]\bdatr[0]_1 ;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[0]_INST_0_i_2_n_0 ;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire flag_bsy__8;
  wire flag_wr;
  wire kick_drp_rd;
  wire kick_drp_wr;
  wire p_0_in9_out;
  wire p_10_in;
  wire rd_adcxadrr;
  wire rd_adcxadrw;
  wire rd_adcxain0;
  wire rd_adcxain1;
  wire rd_adcxain1_reg;
  wire rd_adcxctl;
  wire rd_adcxdatr;
  wire rd_adcxdatw;
  wire rst_n;
  wire rst_n_0;
  wire [2:0]stat;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire [2:0]stat_nx;
  wire [0:0]\stat_reg[0]_0 ;

  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h03080008)) 
    \adcx_drp_adr[0]_INST_0 
       (.I0(Q[0]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(\adcx_drp_adr[6] [0]),
        .O(adcx_drp_adr[0]));
  LUT5 #(
    .INIT(32'h03080008)) 
    \adcx_drp_adr[1]_INST_0 
       (.I0(Q[1]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(\adcx_drp_adr[6] [1]),
        .O(adcx_drp_adr[1]));
  LUT6 #(
    .INIT(64'hAAAFAFCAAAA0AFCA)) 
    \adcx_drp_adr[2]_INST_0 
       (.I0(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I1(\adcx_drp_adr[6] [2]),
        .I2(stat[0]),
        .I3(stat[2]),
        .I4(stat[1]),
        .I5(Q[2]),
        .O(adcx_drp_adr[2]));
  LUT6 #(
    .INIT(64'h000A00C0000A0FC0)) 
    \adcx_drp_adr[3]_INST_0 
       (.I0(Q[3]),
        .I1(\adcx_drp_adr[6] [3]),
        .I2(stat[0]),
        .I3(stat[2]),
        .I4(stat[1]),
        .I5(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .O(adcx_drp_adr[3]));
  LUT6 #(
    .INIT(64'hAAAFAFCAAAA0AFCA)) 
    \adcx_drp_adr[4]_INST_0 
       (.I0(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I1(\adcx_drp_adr[6] [4]),
        .I2(stat[0]),
        .I3(stat[2]),
        .I4(stat[1]),
        .I5(Q[4]),
        .O(adcx_drp_adr[4]));
  LUT5 #(
    .INIT(32'h0000CC10)) 
    \adcx_drp_adr[4]_INST_0_i_1 
       (.I0(adcx_drp_enb),
        .I1(stat[1]),
        .I2(adcx_eos),
        .I3(stat[0]),
        .I4(stat[2]),
        .O(\adcx_drp_adr[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03080008)) 
    \adcx_drp_adr[5]_INST_0 
       (.I0(Q[5]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(\adcx_drp_adr[6] [5]),
        .O(adcx_drp_adr[5]));
  LUT5 #(
    .INIT(32'h03080008)) 
    \adcx_drp_adr[6]_INST_0 
       (.I0(Q[6]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(\adcx_drp_adr[6] [6]),
        .O(adcx_drp_adr[6]));
  LUT1 #(
    .INIT(2'h1)) 
    adcx_drp_den_i_1
       (.I0(rst_n),
        .O(rst_n_0));
  LUT5 #(
    .INIT(32'h51010101)) 
    adcx_drp_den_i_2
       (.I0(stat[2]),
        .I1(adcx_drp_den_i_3_n_0),
        .I2(stat[0]),
        .I3(stat[1]),
        .I4(adcx_drp_rdy),
        .O(adcx_drp_den_t));
  LUT5 #(
    .INIT(32'hABAAABFF)) 
    adcx_drp_den_i_3
       (.I0(stat[1]),
        .I1(kick_drp_wr),
        .I2(kick_drp_rd),
        .I3(adcx_drp_enb),
        .I4(adcx_eos),
        .O(adcx_drp_den_i_3_n_0));
  FDRE adcx_drp_den_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(adcx_drp_den_t),
        .Q(adcx_drp_den),
        .R(rst_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    \adcx_drp_di[0]_INST_0 
       (.I0(stat[1]),
        .I1(stat[2]),
        .I2(stat[0]),
        .I3(\adcx_drp_di[15] [0]),
        .O(adcx_drp_di[0]));
  LUT4 #(
    .INIT(16'h1000)) 
    \adcx_drp_di[10]_INST_0 
       (.I0(stat[1]),
        .I1(stat[2]),
        .I2(stat[0]),
        .I3(\adcx_drp_di[15] [10]),
        .O(adcx_drp_di[10]));
  LUT4 #(
    .INIT(16'h1000)) 
    \adcx_drp_di[11]_INST_0 
       (.I0(stat[1]),
        .I1(stat[2]),
        .I2(stat[0]),
        .I3(\adcx_drp_di[15] [11]),
        .O(adcx_drp_di[11]));
  LUT4 #(
    .INIT(16'h1000)) 
    \adcx_drp_di[12]_INST_0 
       (.I0(stat[1]),
        .I1(stat[2]),
        .I2(stat[0]),
        .I3(\adcx_drp_di[15] [12]),
        .O(adcx_drp_di[12]));
  LUT4 #(
    .INIT(16'h1000)) 
    \adcx_drp_di[13]_INST_0 
       (.I0(stat[1]),
        .I1(stat[2]),
        .I2(stat[0]),
        .I3(\adcx_drp_di[15] [13]),
        .O(adcx_drp_di[13]));
  LUT4 #(
    .INIT(16'h1000)) 
    \adcx_drp_di[14]_INST_0 
       (.I0(stat[1]),
        .I1(stat[2]),
        .I2(stat[0]),
        .I3(\adcx_drp_di[15] [14]),
        .O(adcx_drp_di[14]));
  LUT4 #(
    .INIT(16'h1000)) 
    \adcx_drp_di[15]_INST_0 
       (.I0(stat[1]),
        .I1(stat[2]),
        .I2(stat[0]),
        .I3(\adcx_drp_di[15] [15]),
        .O(adcx_drp_di[15]));
  LUT4 #(
    .INIT(16'h1000)) 
    \adcx_drp_di[1]_INST_0 
       (.I0(stat[1]),
        .I1(stat[2]),
        .I2(stat[0]),
        .I3(\adcx_drp_di[15] [1]),
        .O(adcx_drp_di[1]));
  LUT4 #(
    .INIT(16'h1000)) 
    \adcx_drp_di[2]_INST_0 
       (.I0(stat[1]),
        .I1(stat[2]),
        .I2(stat[0]),
        .I3(\adcx_drp_di[15] [2]),
        .O(adcx_drp_di[2]));
  LUT4 #(
    .INIT(16'h1000)) 
    \adcx_drp_di[3]_INST_0 
       (.I0(stat[1]),
        .I1(stat[2]),
        .I2(stat[0]),
        .I3(\adcx_drp_di[15] [3]),
        .O(adcx_drp_di[3]));
  LUT4 #(
    .INIT(16'h1000)) 
    \adcx_drp_di[4]_INST_0 
       (.I0(stat[1]),
        .I1(stat[2]),
        .I2(stat[0]),
        .I3(\adcx_drp_di[15] [4]),
        .O(adcx_drp_di[4]));
  LUT4 #(
    .INIT(16'h1000)) 
    \adcx_drp_di[5]_INST_0 
       (.I0(stat[1]),
        .I1(stat[2]),
        .I2(stat[0]),
        .I3(\adcx_drp_di[15] [5]),
        .O(adcx_drp_di[5]));
  LUT4 #(
    .INIT(16'h1000)) 
    \adcx_drp_di[6]_INST_0 
       (.I0(stat[1]),
        .I1(stat[2]),
        .I2(stat[0]),
        .I3(\adcx_drp_di[15] [6]),
        .O(adcx_drp_di[6]));
  LUT4 #(
    .INIT(16'h1000)) 
    \adcx_drp_di[7]_INST_0 
       (.I0(stat[1]),
        .I1(stat[2]),
        .I2(stat[0]),
        .I3(\adcx_drp_di[15] [7]),
        .O(adcx_drp_di[7]));
  LUT4 #(
    .INIT(16'h1000)) 
    \adcx_drp_di[8]_INST_0 
       (.I0(stat[1]),
        .I1(stat[2]),
        .I2(stat[0]),
        .I3(\adcx_drp_di[15] [8]),
        .O(adcx_drp_di[8]));
  LUT4 #(
    .INIT(16'h1000)) 
    \adcx_drp_di[9]_INST_0 
       (.I0(stat[1]),
        .I1(stat[2]),
        .I2(stat[0]),
        .I3(\adcx_drp_di[15] [9]),
        .O(adcx_drp_di[9]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    adcx_drp_dwe_i_1
       (.I0(stat[2]),
        .I1(stat[1]),
        .I2(adcx_drp_enb),
        .I3(kick_drp_wr),
        .I4(stat[0]),
        .I5(kick_drp_rd),
        .O(adcx_drp_dwe_i_1_n_0));
  FDRE adcx_drp_dwe_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(adcx_drp_dwe_i_1_n_0),
        .Q(adcx_drp_dwe),
        .R(rst_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \adcxain0[0]_i_1 
       (.I0(adcx_drp_do[0]),
        .I1(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .O(\adcx_drp_do[15] [0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \adcxain0[10]_i_1 
       (.I0(adcx_drp_do[10]),
        .I1(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .O(\adcx_drp_do[15] [10]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \adcxain0[11]_i_1 
       (.I0(adcx_drp_do[11]),
        .I1(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .O(\adcx_drp_do[15] [11]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \adcxain0[12]_i_1 
       (.I0(adcx_drp_do[12]),
        .I1(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .O(\adcx_drp_do[15] [12]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \adcxain0[13]_i_1 
       (.I0(adcx_drp_do[13]),
        .I1(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .O(\adcx_drp_do[15] [13]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \adcxain0[14]_i_1 
       (.I0(adcx_drp_do[14]),
        .I1(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .O(\adcx_drp_do[15] [14]));
  LUT3 #(
    .INIT(8'h8F)) 
    \adcxain0[15]_i_1 
       (.I0(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I1(adcx_drp_rdy),
        .I2(rst_n),
        .O(adcx_drp_rdy_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \adcxain0[15]_i_2 
       (.I0(adcx_drp_do[15]),
        .I1(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .O(\adcx_drp_do[15] [15]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \adcxain0[1]_i_1 
       (.I0(adcx_drp_do[1]),
        .I1(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .O(\adcx_drp_do[15] [1]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \adcxain0[2]_i_1 
       (.I0(adcx_drp_do[2]),
        .I1(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .O(\adcx_drp_do[15] [2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \adcxain0[3]_i_1 
       (.I0(adcx_drp_do[3]),
        .I1(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .O(\adcx_drp_do[15] [3]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \adcxain0[4]_i_1 
       (.I0(adcx_drp_do[4]),
        .I1(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .O(\adcx_drp_do[15] [4]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \adcxain0[5]_i_1 
       (.I0(adcx_drp_do[5]),
        .I1(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .O(\adcx_drp_do[15] [5]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \adcxain0[6]_i_1 
       (.I0(adcx_drp_do[6]),
        .I1(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .O(\adcx_drp_do[15] [6]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \adcxain0[7]_i_1 
       (.I0(adcx_drp_do[7]),
        .I1(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .O(\adcx_drp_do[15] [7]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \adcxain0[8]_i_1 
       (.I0(adcx_drp_do[8]),
        .I1(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .O(\adcx_drp_do[15] [8]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \adcxain0[9]_i_1 
       (.I0(adcx_drp_do[9]),
        .I1(\adcx_drp_adr[4]_INST_0_i_1_n_0 ),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .O(\adcx_drp_do[15] [9]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxain1[0]_i_1 
       (.I0(adcx_drp_do[0]),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_0 [0]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxain1[10]_i_1 
       (.I0(adcx_drp_do[10]),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_0 [10]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxain1[11]_i_1 
       (.I0(adcx_drp_do[11]),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_0 [11]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxain1[12]_i_1 
       (.I0(adcx_drp_do[12]),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_0 [12]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxain1[13]_i_1 
       (.I0(adcx_drp_do[13]),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_0 [13]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxain1[14]_i_1 
       (.I0(adcx_drp_do[14]),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_0 [14]));
  LUT5 #(
    .INIT(32'h1000FFFF)) 
    \adcxain1[15]_i_1 
       (.I0(stat[0]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(adcx_drp_rdy),
        .I4(rst_n),
        .O(\stat_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxain1[15]_i_2 
       (.I0(adcx_drp_do[15]),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_0 [15]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxain1[1]_i_1 
       (.I0(adcx_drp_do[1]),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxain1[2]_i_1 
       (.I0(adcx_drp_do[2]),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxain1[3]_i_1 
       (.I0(adcx_drp_do[3]),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxain1[4]_i_1 
       (.I0(adcx_drp_do[4]),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_0 [4]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxain1[5]_i_1 
       (.I0(adcx_drp_do[5]),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_0 [5]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxain1[6]_i_1 
       (.I0(adcx_drp_do[6]),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_0 [6]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxain1[7]_i_1 
       (.I0(adcx_drp_do[7]),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_0 [7]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxain1[8]_i_1 
       (.I0(adcx_drp_do[8]),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_0 [8]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxain1[9]_i_1 
       (.I0(adcx_drp_do[9]),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_0 [9]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxdatr[0]_i_1 
       (.I0(adcx_drp_do[0]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_1 [0]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxdatr[10]_i_1 
       (.I0(adcx_drp_do[10]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_1 [10]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxdatr[11]_i_1 
       (.I0(adcx_drp_do[11]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_1 [11]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxdatr[12]_i_1 
       (.I0(adcx_drp_do[12]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_1 [12]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxdatr[13]_i_1 
       (.I0(adcx_drp_do[13]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_1 [13]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxdatr[14]_i_1 
       (.I0(adcx_drp_do[14]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_1 [14]));
  LUT5 #(
    .INIT(32'h1000FFFF)) 
    \adcxdatr[15]_i_1 
       (.I0(stat[0]),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(adcx_drp_rdy),
        .I4(rst_n),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxdatr[15]_i_2 
       (.I0(adcx_drp_do[15]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_1 [15]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxdatr[1]_i_1 
       (.I0(adcx_drp_do[1]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_1 [1]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxdatr[2]_i_1 
       (.I0(adcx_drp_do[2]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_1 [2]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxdatr[3]_i_1 
       (.I0(adcx_drp_do[3]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_1 [3]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxdatr[4]_i_1 
       (.I0(adcx_drp_do[4]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_1 [4]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxdatr[5]_i_1 
       (.I0(adcx_drp_do[5]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_1 [5]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxdatr[6]_i_1 
       (.I0(adcx_drp_do[6]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_1 [6]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxdatr[7]_i_1 
       (.I0(adcx_drp_do[7]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_1 [7]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxdatr[8]_i_1 
       (.I0(adcx_drp_do[8]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_1 [8]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \adcxdatr[9]_i_1 
       (.I0(adcx_drp_do[9]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(adcx_drp_rdy),
        .I5(rst_n),
        .O(\adcx_drp_do[15]_1 [9]));
  LUT5 #(
    .INIT(32'hBF808080)) 
    \adcxdatw[0]_i_1 
       (.I0(adcx_drp_do[0]),
        .I1(flag_wr),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .I4(bdatw[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hBF808080)) 
    \adcxdatw[10]_i_1 
       (.I0(adcx_drp_do[10]),
        .I1(flag_wr),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .I4(bdatw[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hBF808080)) 
    \adcxdatw[11]_i_1 
       (.I0(adcx_drp_do[11]),
        .I1(flag_wr),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .I4(bdatw[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hBF808080)) 
    \adcxdatw[12]_i_1 
       (.I0(adcx_drp_do[12]),
        .I1(flag_wr),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .I4(bdatw[12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hBF808080)) 
    \adcxdatw[13]_i_1 
       (.I0(adcx_drp_do[13]),
        .I1(flag_wr),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .I4(bdatw[13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hBF808080)) 
    \adcxdatw[14]_i_1 
       (.I0(adcx_drp_do[14]),
        .I1(flag_wr),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .I4(bdatw[14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hF888FFFF)) 
    \adcxdatw[15]_i_1 
       (.I0(flag_wr),
        .I1(adcx_drp_rdy),
        .I2(p_0_in9_out),
        .I3(brdy),
        .I4(rst_n),
        .O(adcx_drp_rdy_1));
  LUT5 #(
    .INIT(32'hBF808080)) 
    \adcxdatw[15]_i_2 
       (.I0(adcx_drp_do[15]),
        .I1(flag_wr),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .I4(bdatw[15]),
        .O(D[15]));
  LUT3 #(
    .INIT(8'h02)) 
    \adcxdatw[15]_i_3 
       (.I0(stat[0]),
        .I1(stat[2]),
        .I2(stat[1]),
        .O(flag_wr));
  LUT5 #(
    .INIT(32'hBF808080)) 
    \adcxdatw[1]_i_1 
       (.I0(adcx_drp_do[1]),
        .I1(flag_wr),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .I4(bdatw[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hBF808080)) 
    \adcxdatw[2]_i_1 
       (.I0(adcx_drp_do[2]),
        .I1(flag_wr),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .I4(bdatw[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hBF808080)) 
    \adcxdatw[3]_i_1 
       (.I0(adcx_drp_do[3]),
        .I1(flag_wr),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .I4(bdatw[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hBF808080)) 
    \adcxdatw[4]_i_1 
       (.I0(adcx_drp_do[4]),
        .I1(flag_wr),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .I4(bdatw[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hBF808080)) 
    \adcxdatw[5]_i_1 
       (.I0(adcx_drp_do[5]),
        .I1(flag_wr),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .I4(bdatw[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hBF808080)) 
    \adcxdatw[6]_i_1 
       (.I0(adcx_drp_do[6]),
        .I1(flag_wr),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .I4(bdatw[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hBF808080)) 
    \adcxdatw[7]_i_1 
       (.I0(adcx_drp_do[7]),
        .I1(flag_wr),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .I4(bdatw[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hBF808080)) 
    \adcxdatw[8]_i_1 
       (.I0(adcx_drp_do[8]),
        .I1(flag_wr),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .I4(bdatw[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hBF808080)) 
    \adcxdatw[9]_i_1 
       (.I0(adcx_drp_do[9]),
        .I1(flag_wr),
        .I2(adcx_drp_rdy),
        .I3(rst_n),
        .I4(bdatw[9]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hFFBA00BA)) 
    \bdatr[0]_INST_0 
       (.I0(\bdatr[0]_INST_0_i_1_n_0 ),
        .I1(rd_adcxain1_reg),
        .I2(\bdatr[0]_INST_0_i_2_n_0 ),
        .I3(rd_adcxctl),
        .I4(flag_bsy__8),
        .O(bdatr));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(\bdatr[0]_0 ),
        .I1(Q[0]),
        .I2(\bdatr[0]_1 ),
        .I3(rd_adcxain0),
        .I4(rd_adcxadrr),
        .I5(rd_adcxain1),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \bdatr[0]_INST_0_i_2 
       (.I0(\bdatr[0] ),
        .I1(\adcx_drp_di[15] [0]),
        .I2(\adcx_drp_adr[6] [0]),
        .I3(rd_adcxdatr),
        .I4(rd_adcxdatw),
        .I5(rd_adcxadrw),
        .O(\bdatr[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555777655557777)) 
    \bdatr[0]_INST_0_i_3 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(kick_drp_wr),
        .I3(kick_drp_rd),
        .I4(stat[1]),
        .I5(adcx_drp_enb),
        .O(flag_bsy__8));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatr[7]_INST_0_i_2 
       (.I0(rd_adcxain1),
        .I1(rd_adcxadrr),
        .I2(rd_adcxain0),
        .O(rd_adcxain1_reg));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    kick_drp_wr_i_1
       (.I0(p_10_in),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(badr[1]),
        .I5(adcx_drp_enb),
        .O(p_0_in9_out));
  LUT3 #(
    .INIT(8'h20)) 
    kick_drp_wr_i_2
       (.I0(brdy),
        .I1(bcs_adcx_n),
        .I2(bcmdw),
        .O(p_10_in));
  LUT4 #(
    .INIT(16'h0151)) 
    \stat[0]_i_1 
       (.I0(stat[2]),
        .I1(\stat[0]_i_2_n_0 ),
        .I2(stat[0]),
        .I3(adcx_drp_rdy),
        .O(stat_nx[0]));
  LUT5 #(
    .INIT(32'hFBABFBFB)) 
    \stat[0]_i_2 
       (.I0(stat[1]),
        .I1(adcx_eos),
        .I2(adcx_drp_enb),
        .I3(kick_drp_rd),
        .I4(kick_drp_wr),
        .O(\stat[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[1]_i_1 
       (.I0(stat[2]),
        .I1(\stat[1]_i_2_n_0 ),
        .O(stat_nx[1]));
  LUT6 #(
    .INIT(64'hB8B8B8BBBBBBB8BB)) 
    \stat[1]_i_2 
       (.I0(adcx_drp_rdy),
        .I1(stat[1]),
        .I2(stat[0]),
        .I3(adcx_eos),
        .I4(adcx_drp_enb),
        .I5(kick_drp_rd),
        .O(\stat[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4002)) 
    \stat[2]_i_1 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(adcx_drp_rdy),
        .O(stat_nx[2]));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[0]),
        .Q(stat[0]),
        .R(rst_n_0));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[1]),
        .Q(stat[1]),
        .R(rst_n_0));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[2]),
        .Q(stat[2]),
        .R(rst_n_0));
endmodule
