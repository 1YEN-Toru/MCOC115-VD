
(* STRUCTURAL_NETLIST = "yes" *)
module stwslv
   (clk,
    rst_n,
    stws_scl_i,
    stws_sda_i,
    bcs_stws_n,
    brdy,
    bcmdr,
    bcmdw,
    badr,
    bdatw,
    stws_scl_o,
    stws_sda_o,
    stws_srar,
    stws_star,
    bdatr);
//
//	Synchronous Two Wire serial Slave Unit
//		(c) 2021	1YEN Toru
//
//
//	2023/10/21	ver.1.02
//		corresponding to Xilinx Vivado
//
//	2021/08/14	ver.1.00
//		i2c like synchronous two wire serial slave
//
  input clk;
  input rst_n;
  input stws_scl_i;
  input stws_sda_i;
  input bcs_stws_n;
  input brdy;
  input bcmdr;
  input bcmdw;
  input [3:0]badr;
  input [15:0]bdatw;
  output stws_scl_o;
  output stws_sda_o;
  output stws_srar;
  output stws_star;
  output [15:0]bdatr;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_stws_n;
  wire [10:0]\^bdatr ;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[4]_INST_0_i_1_n_0 ;
  wire \bdatr[5]_INST_0_i_1_n_0 ;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire mctl_srst_i_1_n_0;
  wire rst_n;
  wire [11:7]\sctl/fsm/p_0_in ;
  wire \sctl/fsm/sctl_dtct_sta_f ;
  wire \sctl/fsm/sctl_lat_ad_t ;
  wire \sctl/fsm/sctl_lat_rv_t ;
  wire \sctl/fsm/sctl_sft_rv ;
  wire \sctl/fsm/sctl_sft_sd ;
  wire [2:2]\sctl/fsm/stat ;
  wire \sctl/fsm/stat[0]_i_1_n_0 ;
  wire [4:1]\sctl/fsm/stat_nx ;
  wire \sctl/mctl_srst ;
  wire [2:0]\sctl/p_0_in ;
  wire \sctl/p_0_in1_in ;
  wire \sctl/p_0_in4_in ;
  wire \sctl/p_11_in ;
  wire \sctl/p_1_in ;
  wire \sctl/p_2_in ;
  wire [0:0]\sctl/p_2_out__0 ;
  wire \sctl/sctl_dtct_sclf0 ;
  wire \sctl/sctl_dtct_sclr0 ;
  wire \sctl/sctl_dtct_sta ;
  wire \sctl/sctl_dtct_sta0__0 ;
  wire \sctl/sctl_dtct_stp ;
  wire \sctl/sctl_dtct_stp0__0 ;
  wire \sctl/sctl_lat_ad ;
  wire \sctl/sctl_scl_f_reg_n_0_[0] ;
  wire \sctl/sctl_scl_f_reg_n_0_[1] ;
  wire \sctl/sctl_scl_ob ;
  wire \sctl/sctl_sda_f_reg_n_0_[0] ;
  wire \sctl/sctl_sda_o ;
  wire \sctl/sctl_stwsadr_rd0 ;
  wire \sctl/sctl_stwsmsk_rd0 ;
  wire \sctl/stwsctl[0]_i_1_n_0 ;
  wire \sctl/stwsctl[1]_i_1_n_0 ;
  wire \sctl/synfil_scl_reg_n_0_[0] ;
  wire \sctl/synfil_scl_reg_n_0_[1] ;
  wire sctl_ack_stat;
  wire sctl_ack_stat_i_1_n_0;
  wire sctl_dtct_sclf;
  wire sctl_dtct_sclr;
  wire sctl_flg_sadr;
  wire sctl_flg_sadr_i_1_n_0;
  wire sctl_flg_ssta;
  wire sctl_flg_ssta_i_1_n_0;
  wire sctl_flg_sstp;
  wire sctl_flg_sstp_i_1_n_0;
  wire sctl_lat_ack;
  wire sctl_lat_ack_i_1_n_0;
  wire sctl_lat_ack_i_2_n_0;
  wire sctl_lat_rv;
  wire sctl_lat_rv_i_2_n_0;
  wire sctl_lat_rv_i_3_n_0;
  wire sctl_lat_rv_i_4_n_0;
  wire sctl_lat_rv_i_5_n_0;
  wire sctl_lat_rv_i_6_n_0;
  wire sctl_nak_rv;
  wire sctl_nak_rv_i_1_n_0;
  wire sctl_read;
  wire sctl_read_i_1_n_0;
  wire sctl_rst_sd;
  wire sctl_sda_o_i_1_n_0;
  wire sctl_sda_o_i_2_n_0;
  wire sctl_sda_s;
  wire sctl_srae;
  wire sctl_stae;
  wire sctl_stwsadr_rd;
  wire sctl_stwsadr_wr;
  wire sctl_stwsctl_rd;
  wire sctl_stwsctl_rd_i_1_n_0;
  wire sctl_stwsdatr_rd;
  wire sctl_stwsdatr_rd_i_1_n_0;
  wire sctl_stwsdats_wr;
  wire sctl_stwsmsk_rd;
  wire sctl_stwsmsk_wr;
  wire \sdat/p_1_in ;
  wire [7:0]\sdat/sdat_dats ;
  wire [7:0]\sdat/sdat_dats_sft ;
  wire [6:0]sdat_datr_sft;
  wire \sdat_datr_sft[7]_i_2_n_0 ;
  wire [7:7]sdat_datr_sft__0;
  wire \sdat_dats_sft[7]_i_3_n_0 ;
  wire sdat_sda_o;
  wire sdat_sda_o_i_1_n_0;
  wire sdat_sda_o_i_2_n_0;
  wire sdat_sda_o_i_3_n_0;
  wire sdat_sda_o_i_4_n_0;
  wire sdat_sda_o_i_5_n_0;
  wire sdat_sda_o_i_6_n_0;
  wire sdat_sda_o_i_7_n_0;
  wire sdat_sraf;
  wire sdat_sraf_i_1_n_0;
  wire sdat_staf;
  wire sdat_staf_i_1_n_0;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_4_n_0 ;
  wire \stat[0]_i_5_n_0 ;
  wire \stat[0]_i_6_n_0 ;
  wire \stat[0]_i_7_n_0 ;
  wire \stat[1]_i_10_n_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_4_n_0 ;
  wire \stat[1]_i_5_n_0 ;
  wire \stat[1]_i_6_n_0 ;
  wire \stat[1]_i_7_n_0 ;
  wire \stat[1]_i_8_n_0 ;
  wire \stat[1]_i_9_n_0 ;
  wire \stat[3]_i_2_n_0 ;
  wire \stat[3]_i_3_n_0 ;
  wire \stat[3]_i_4_n_0 ;
  wire \stat[4]_i_3_n_0 ;
  wire \stat[4]_i_4_n_0 ;
  wire \stat[4]_i_5_n_0 ;
  wire stws_scl_i;
  wire stws_scl_o;
  wire stws_scl_o_i_1_n_0;
  wire stws_scl_o_i_2_n_0;
  wire stws_scl_o_i_4_n_0;
  wire stws_sda_i;
  wire stws_sda_o;
  wire stws_srar;
  wire stws_star;
  wire [6:0]stwsadr;
  wire [7:0]stwsdatr;
  wire \stwsdatr[7]_i_1_n_0 ;
  wire [7:0]stwsdats;
  wire \stwsdats[7]_i_2_n_0 ;
  wire [6:0]stwsmsk;
  wire [4:0]synfil_sda;

  assign bdatr[15] = \<const0> ;
  assign bdatr[14] = \<const0> ;
  assign bdatr[13] = \<const0> ;
  assign bdatr[12] = \<const0> ;
  assign bdatr[11] = \<const0> ;
  assign bdatr[10:0] = \^bdatr [10:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \bdatr[0]_INST_0 
       (.I0(sctl_stwsadr_rd),
        .I1(sctl_stwsmsk_rd),
        .I2(stwsmsk[0]),
        .I3(\bdatr[0]_INST_0_i_1_n_0 ),
        .O(\^bdatr [0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(stwsdatr[0]),
        .I1(sctl_stwsdatr_rd),
        .I2(sctl_srae),
        .I3(sctl_stwsctl_rd),
        .I4(stwsadr[0]),
        .I5(sctl_stwsadr_rd),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[10]_INST_0 
       (.I0(sctl_flg_ssta),
        .I1(sctl_stwsdatr_rd),
        .O(\^bdatr [10]));
  LUT4 #(
    .INIT(16'hFF40)) 
    \bdatr[1]_INST_0 
       (.I0(sctl_stwsadr_rd),
        .I1(sctl_stwsmsk_rd),
        .I2(stwsmsk[1]),
        .I3(\bdatr[1]_INST_0_i_1_n_0 ),
        .O(\^bdatr [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(stwsdatr[1]),
        .I1(sctl_stwsdatr_rd),
        .I2(sctl_stae),
        .I3(sctl_stwsctl_rd),
        .I4(stwsadr[1]),
        .I5(sctl_stwsadr_rd),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF088F088F088)) 
    \bdatr[2]_INST_0 
       (.I0(sctl_stwsmsk_rd),
        .I1(stwsmsk[2]),
        .I2(stwsadr[2]),
        .I3(sctl_stwsadr_rd),
        .I4(sctl_stwsdatr_rd),
        .I5(stwsdatr[2]),
        .O(\^bdatr [2]));
  LUT4 #(
    .INIT(16'hFF40)) 
    \bdatr[3]_INST_0 
       (.I0(sctl_stwsadr_rd),
        .I1(sctl_stwsmsk_rd),
        .I2(stwsmsk[3]),
        .I3(\bdatr[3]_INST_0_i_1_n_0 ),
        .O(\^bdatr [3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(stwsdatr[3]),
        .I1(sctl_stwsdatr_rd),
        .I2(sctl_ack_stat),
        .I3(sctl_stwsctl_rd),
        .I4(stwsadr[3]),
        .I5(sctl_stwsadr_rd),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \bdatr[4]_INST_0 
       (.I0(sctl_stwsadr_rd),
        .I1(sctl_stwsmsk_rd),
        .I2(stwsmsk[4]),
        .I3(\bdatr[4]_INST_0_i_1_n_0 ),
        .O(\^bdatr [4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(stwsdatr[4]),
        .I1(sctl_stwsdatr_rd),
        .I2(sdat_sraf),
        .I3(sctl_stwsctl_rd),
        .I4(stwsadr[4]),
        .I5(sctl_stwsadr_rd),
        .O(\bdatr[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \bdatr[5]_INST_0 
       (.I0(sctl_stwsadr_rd),
        .I1(sctl_stwsmsk_rd),
        .I2(stwsmsk[5]),
        .I3(\bdatr[5]_INST_0_i_1_n_0 ),
        .O(\^bdatr [5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(stwsdatr[5]),
        .I1(sctl_stwsdatr_rd),
        .I2(sdat_staf),
        .I3(sctl_stwsctl_rd),
        .I4(stwsadr[5]),
        .I5(sctl_stwsadr_rd),
        .O(\bdatr[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF088F088F088)) 
    \bdatr[6]_INST_0 
       (.I0(stwsmsk[6]),
        .I1(sctl_stwsmsk_rd),
        .I2(stwsadr[6]),
        .I3(sctl_stwsadr_rd),
        .I4(sctl_stwsdatr_rd),
        .I5(stwsdatr[6]),
        .O(\^bdatr [6]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[7]_INST_0 
       (.I0(sctl_stwsdatr_rd),
        .I1(stwsdatr[7]),
        .O(\^bdatr [7]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[8]_INST_0 
       (.I0(sctl_flg_sstp),
        .I1(sctl_stwsdatr_rd),
        .O(\^bdatr [8]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[9]_INST_0 
       (.I0(sctl_stwsdatr_rd),
        .I1(sctl_flg_sadr),
        .O(\^bdatr [9]));
  LUT3 #(
    .INIT(8'hD5)) 
    mctl_srst_i_1
       (.I0(rst_n),
        .I1(\sctl/p_11_in ),
        .I2(bdatw[15]),
        .O(mctl_srst_i_1_n_0));
  FDRE \sadr/stwsadr_reg[0] 
       (.C(clk),
        .CE(sctl_stwsadr_wr),
        .D(bdatw[0]),
        .Q(stwsadr[0]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sadr/stwsadr_reg[1] 
       (.C(clk),
        .CE(sctl_stwsadr_wr),
        .D(bdatw[1]),
        .Q(stwsadr[1]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sadr/stwsadr_reg[2] 
       (.C(clk),
        .CE(sctl_stwsadr_wr),
        .D(bdatw[2]),
        .Q(stwsadr[2]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sadr/stwsadr_reg[3] 
       (.C(clk),
        .CE(sctl_stwsadr_wr),
        .D(bdatw[3]),
        .Q(stwsadr[3]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sadr/stwsadr_reg[4] 
       (.C(clk),
        .CE(sctl_stwsadr_wr),
        .D(bdatw[4]),
        .Q(stwsadr[4]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sadr/stwsadr_reg[5] 
       (.C(clk),
        .CE(sctl_stwsadr_wr),
        .D(bdatw[5]),
        .Q(stwsadr[5]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sadr/stwsadr_reg[6] 
       (.C(clk),
        .CE(sctl_stwsadr_wr),
        .D(bdatw[6]),
        .Q(stwsadr[6]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sadr/stwsmsk_reg[0] 
       (.C(clk),
        .CE(sctl_stwsmsk_wr),
        .D(bdatw[0]),
        .Q(stwsmsk[0]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sadr/stwsmsk_reg[1] 
       (.C(clk),
        .CE(sctl_stwsmsk_wr),
        .D(bdatw[1]),
        .Q(stwsmsk[1]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sadr/stwsmsk_reg[2] 
       (.C(clk),
        .CE(sctl_stwsmsk_wr),
        .D(bdatw[2]),
        .Q(stwsmsk[2]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sadr/stwsmsk_reg[3] 
       (.C(clk),
        .CE(sctl_stwsmsk_wr),
        .D(bdatw[3]),
        .Q(stwsmsk[3]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sadr/stwsmsk_reg[4] 
       (.C(clk),
        .CE(sctl_stwsmsk_wr),
        .D(bdatw[4]),
        .Q(stwsmsk[4]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sadr/stwsmsk_reg[5] 
       (.C(clk),
        .CE(sctl_stwsmsk_wr),
        .D(bdatw[5]),
        .Q(stwsmsk[5]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sadr/stwsmsk_reg[6] 
       (.C(clk),
        .CE(sctl_stwsmsk_wr),
        .D(bdatw[6]),
        .Q(stwsmsk[6]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sctl/fsm/sctl_dtct_sta_f_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/sctl_dtct_sta ),
        .Q(\sctl/fsm/sctl_dtct_sta_f ),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sctl/fsm/sctl_lat_ack_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_lat_ack_i_1_n_0),
        .Q(sctl_lat_ack),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sctl/fsm/sctl_lat_ad_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/fsm/sctl_lat_ad_t ),
        .Q(\sctl/sctl_lat_ad ),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sctl/fsm/sctl_lat_rv_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/fsm/sctl_lat_rv_t ),
        .Q(sctl_lat_rv),
        .R(stws_scl_o_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF55515555)) 
    \sctl/fsm/stat[0]_i_1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(\stat[1]_i_3_n_0 ),
        .I2(\sctl/fsm/p_0_in [11]),
        .I3(\stat[1]_i_4_n_0 ),
        .I4(\stat[4]_i_3_n_0 ),
        .I5(\sctl/fsm/sctl_dtct_sta_f ),
        .O(\sctl/fsm/stat[0]_i_1_n_0 ));
  FDRE \sctl/fsm/stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/fsm/stat[0]_i_1_n_0 ),
        .Q(\sctl/fsm/p_0_in [7]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sctl/fsm/stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/fsm/stat_nx [1]),
        .Q(\sctl/fsm/p_0_in [8]),
        .R(\sctl/fsm/stat ));
  FDRE \sctl/fsm/stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/fsm/stat_nx [2]),
        .Q(\sctl/fsm/p_0_in [9]),
        .R(\sctl/fsm/stat ));
  FDRE \sctl/fsm/stat_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/fsm/stat_nx [3]),
        .Q(\sctl/fsm/p_0_in [10]),
        .R(\sctl/fsm/stat ));
  FDRE \sctl/fsm/stat_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/fsm/stat_nx [4]),
        .Q(\sctl/fsm/p_0_in [11]),
        .R(\sctl/fsm/stat ));
  FDRE \sctl/mctl_srst_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_srst_i_1_n_0),
        .Q(\sctl/mctl_srst ),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'hE8)) 
    \sctl/p_2_out 
       (.I0(\sctl/p_0_in [0]),
        .I1(\sctl/p_0_in [2]),
        .I2(\sctl/p_0_in [1]),
        .O(\sctl/p_2_out__0 ));
  FDRE \sctl/sctl_ack_stat_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_ack_stat_i_1_n_0),
        .Q(sctl_ack_stat),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sctl/sctl_dtct_sclf_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/sctl_dtct_sclf0 ),
        .Q(sctl_dtct_sclf),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sctl/sctl_dtct_sclr_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/sctl_dtct_sclr0 ),
        .Q(sctl_dtct_sclr),
        .R(stws_scl_o_i_1_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    \sctl/sctl_dtct_sta0 
       (.I0(\sctl/sctl_scl_f_reg_n_0_[0] ),
        .I1(\sctl/p_1_in ),
        .I2(\sctl/p_2_in ),
        .I3(\sctl/p_0_in1_in ),
        .O(\sctl/sctl_dtct_sta0__0 ));
  FDRE \sctl/sctl_dtct_sta_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/sctl_dtct_sta0__0 ),
        .Q(\sctl/sctl_dtct_sta ),
        .R(stws_scl_o_i_1_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    \sctl/sctl_dtct_stp0 
       (.I0(\sctl/sctl_scl_f_reg_n_0_[0] ),
        .I1(\sctl/p_1_in ),
        .I2(\sctl/p_0_in1_in ),
        .I3(\sctl/p_2_in ),
        .O(\sctl/sctl_dtct_stp0__0 ));
  FDRE \sctl/sctl_dtct_stp_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/sctl_dtct_stp0__0 ),
        .Q(\sctl/sctl_dtct_stp ),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sctl/sctl_flg_sadr_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_flg_sadr_i_1_n_0),
        .Q(sctl_flg_sadr),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sctl/sctl_flg_ssta_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_flg_ssta_i_1_n_0),
        .Q(sctl_flg_ssta),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sctl/sctl_flg_sstp_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_flg_sstp_i_1_n_0),
        .Q(sctl_flg_sstp),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sctl/sctl_nak_rv_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_nak_rv_i_1_n_0),
        .Q(sctl_nak_rv),
        .R(\<const0> ));
  FDRE \sctl/sctl_read_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_read_i_1_n_0),
        .Q(sctl_read),
        .R(stws_scl_o_i_1_n_0));
  FDSE \sctl/sctl_scl_f_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/p_2_out__0 ),
        .Q(\sctl/sctl_scl_f_reg_n_0_[0] ),
        .S(stws_scl_o_i_1_n_0));
  FDSE \sctl/sctl_scl_f_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/sctl_scl_f_reg_n_0_[0] ),
        .Q(\sctl/sctl_scl_f_reg_n_0_[1] ),
        .S(stws_scl_o_i_1_n_0));
  FDSE \sctl/sctl_scl_f_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/sctl_scl_f_reg_n_0_[1] ),
        .Q(\sctl/p_0_in4_in ),
        .S(stws_scl_o_i_1_n_0));
  FDSE \sctl/sctl_scl_f_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/p_0_in4_in ),
        .Q(\sctl/p_1_in ),
        .S(stws_scl_o_i_1_n_0));
  FDSE \sctl/sctl_sda_f_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_sda_s),
        .Q(\sctl/sctl_sda_f_reg_n_0_[0] ),
        .S(stws_scl_o_i_1_n_0));
  FDSE \sctl/sctl_sda_f_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/sctl_sda_f_reg_n_0_[0] ),
        .Q(\sctl/p_2_in ),
        .S(stws_scl_o_i_1_n_0));
  FDSE \sctl/sctl_sda_f_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/p_2_in ),
        .Q(\sctl/p_0_in1_in ),
        .S(stws_scl_o_i_1_n_0));
  FDSE \sctl/sctl_sda_o_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_sda_o_i_1_n_0),
        .Q(\sctl/sctl_sda_o ),
        .S(stws_scl_o_i_1_n_0));
  FDRE \sctl/sctl_stwsadr_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\sctl/sctl_stwsadr_rd0 ),
        .Q(sctl_stwsadr_rd),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sctl/sctl_stwsctl_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(sctl_stwsctl_rd_i_1_n_0),
        .Q(sctl_stwsctl_rd),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sctl/sctl_stwsdatr_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(sctl_stwsdatr_rd_i_1_n_0),
        .Q(sctl_stwsdatr_rd),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sctl/sctl_stwsmsk_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\sctl/sctl_stwsmsk_rd0 ),
        .Q(sctl_stwsmsk_rd),
        .R(stws_scl_o_i_1_n_0));
  FDSE \sctl/stws_scl_o_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(stws_scl_o_i_2_n_0),
        .Q(stws_scl_o),
        .S(stws_scl_o_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \sctl/stwsctl[0]_i_1 
       (.I0(bdatw[0]),
        .I1(\sctl/p_11_in ),
        .I2(sctl_srae),
        .O(\sctl/stwsctl[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sctl/stwsctl[1]_i_1 
       (.I0(bdatw[1]),
        .I1(\sctl/p_11_in ),
        .I2(sctl_stae),
        .O(\sctl/stwsctl[1]_i_1_n_0 ));
  FDRE \sctl/stwsctl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/stwsctl[0]_i_1_n_0 ),
        .Q(sctl_srae),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sctl/stwsctl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/stwsctl[1]_i_1_n_0 ),
        .Q(sctl_stae),
        .R(stws_scl_o_i_1_n_0));
  FDSE \sctl/synfil_scl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stws_scl_i),
        .Q(\sctl/synfil_scl_reg_n_0_[0] ),
        .S(stws_scl_o_i_1_n_0));
  FDSE \sctl/synfil_scl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/synfil_scl_reg_n_0_[0] ),
        .Q(\sctl/synfil_scl_reg_n_0_[1] ),
        .S(stws_scl_o_i_1_n_0));
  FDSE \sctl/synfil_scl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/synfil_scl_reg_n_0_[1] ),
        .Q(\sctl/p_0_in [0]),
        .S(stws_scl_o_i_1_n_0));
  FDSE \sctl/synfil_scl_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/p_0_in [0]),
        .Q(\sctl/p_0_in [1]),
        .S(stws_scl_o_i_1_n_0));
  FDSE \sctl/synfil_scl_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl/p_0_in [1]),
        .Q(\sctl/p_0_in [2]),
        .S(stws_scl_o_i_1_n_0));
  FDSE \sctl/synfil_sda_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stws_sda_i),
        .Q(synfil_sda[0]),
        .S(stws_scl_o_i_1_n_0));
  FDSE \sctl/synfil_sda_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_sda[0]),
        .Q(synfil_sda[1]),
        .S(stws_scl_o_i_1_n_0));
  FDSE \sctl/synfil_sda_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_sda[1]),
        .Q(synfil_sda[2]),
        .S(stws_scl_o_i_1_n_0));
  FDSE \sctl/synfil_sda_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_sda[2]),
        .Q(synfil_sda[3]),
        .S(stws_scl_o_i_1_n_0));
  FDSE \sctl/synfil_sda_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_sda[3]),
        .Q(synfil_sda[4]),
        .S(stws_scl_o_i_1_n_0));
  LUT5 #(
    .INIT(32'h17FF1700)) 
    sctl_ack_stat_i_1
       (.I0(synfil_sda[2]),
        .I1(synfil_sda[3]),
        .I2(synfil_sda[4]),
        .I3(sctl_lat_ack),
        .I4(sctl_ack_stat),
        .O(sctl_ack_stat_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sctl_dtct_sclf_i_1
       (.I0(\sctl/p_1_in ),
        .I1(\sctl/p_0_in4_in ),
        .O(\sctl/sctl_dtct_sclf0 ));
  LUT2 #(
    .INIT(4'h2)) 
    sctl_dtct_sclr_i_1
       (.I0(\sctl/p_0_in4_in ),
        .I1(\sctl/p_1_in ),
        .O(\sctl/sctl_dtct_sclr0 ));
  LUT5 #(
    .INIT(32'hFF01FF00)) 
    sctl_flg_sadr_i_1
       (.I0(\sctl/sctl_dtct_stp ),
        .I1(\sctl/sctl_dtct_sta ),
        .I2(sctl_stwsdatr_rd),
        .I3(\sctl/sctl_lat_ad ),
        .I4(sctl_flg_sadr),
        .O(sctl_flg_sadr_i_1_n_0));
  LUT5 #(
    .INIT(32'hCCCDCCCC)) 
    sctl_flg_ssta_i_1
       (.I0(\sctl/sctl_dtct_stp ),
        .I1(\sctl/sctl_dtct_sta ),
        .I2(sctl_stwsdatr_rd),
        .I3(\sctl/sctl_lat_ad ),
        .I4(sctl_flg_ssta),
        .O(sctl_flg_ssta_i_1_n_0));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    sctl_flg_sstp_i_1
       (.I0(\sctl/sctl_dtct_stp ),
        .I1(\sctl/sctl_dtct_sta ),
        .I2(sctl_stwsdatr_rd),
        .I3(\sctl/sctl_lat_ad ),
        .I4(sctl_flg_sstp),
        .O(sctl_flg_sstp_i_1_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    sctl_lat_ack_i_1
       (.I0(\sctl/fsm/p_0_in [7]),
        .I1(sctl_dtct_sclr),
        .I2(sctl_lat_ack_i_2_n_0),
        .I3(\sctl/fsm/p_0_in [8]),
        .I4(\sctl/fsm/p_0_in [11]),
        .I5(sctl_read),
        .O(sctl_lat_ack_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sctl_lat_ack_i_2
       (.I0(\sctl/fsm/p_0_in [10]),
        .I1(\sctl/fsm/p_0_in [9]),
        .O(sctl_lat_ack_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    sctl_lat_ad_i_1
       (.I0(\sctl/fsm/p_0_in [9]),
        .I1(\sctl/fsm/p_0_in [10]),
        .I2(sctl_dtct_sclr),
        .I3(\sctl/fsm/p_0_in [7]),
        .I4(\sctl/fsm/p_0_in [11]),
        .I5(\sctl/fsm/p_0_in [8]),
        .O(\sctl/fsm/sctl_lat_ad_t ));
  LUT6 #(
    .INIT(64'h00000000FFFF0004)) 
    sctl_lat_rv_i_1
       (.I0(sctl_lat_rv_i_2_n_0),
        .I1(sctl_lat_rv_i_3_n_0),
        .I2(sctl_lat_rv_i_4_n_0),
        .I3(sctl_lat_rv_i_5_n_0),
        .I4(\sctl/fsm/p_0_in [11]),
        .I5(sctl_lat_rv_i_6_n_0),
        .O(\sctl/fsm/sctl_lat_rv_t ));
  LUT6 #(
    .INIT(64'h141414FF14FF1414)) 
    sctl_lat_rv_i_2
       (.I0(stwsmsk[0]),
        .I1(stwsadr[0]),
        .I2(sdat_datr_sft[0]),
        .I3(stwsmsk[1]),
        .I4(stwsadr[1]),
        .I5(sdat_datr_sft[1]),
        .O(sctl_lat_rv_i_2_n_0));
  LUT6 #(
    .INIT(64'hEBEBEB00EB00EBEB)) 
    sctl_lat_rv_i_3
       (.I0(stwsmsk[6]),
        .I1(stwsadr[6]),
        .I2(sdat_datr_sft[6]),
        .I3(stwsmsk[2]),
        .I4(stwsadr[2]),
        .I5(sdat_datr_sft[2]),
        .O(sctl_lat_rv_i_3_n_0));
  LUT6 #(
    .INIT(64'h111144441111444F)) 
    sctl_lat_rv_i_4
       (.I0(stwsmsk[3]),
        .I1(sdat_datr_sft[3]),
        .I2(\stat[1]_i_8_n_0 ),
        .I3(stwsadr[5]),
        .I4(stwsadr[3]),
        .I5(stwsadr[4]),
        .O(sctl_lat_rv_i_4_n_0));
  LUT6 #(
    .INIT(64'h141414FF14FF1414)) 
    sctl_lat_rv_i_5
       (.I0(stwsmsk[5]),
        .I1(stwsadr[5]),
        .I2(sdat_datr_sft[5]),
        .I3(stwsmsk[4]),
        .I4(stwsadr[4]),
        .I5(sdat_datr_sft[4]),
        .O(sctl_lat_rv_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD5FFFF)) 
    sctl_lat_rv_i_6
       (.I0(sctl_dtct_sclr),
        .I1(sctl_read),
        .I2(\sctl/fsm/p_0_in [11]),
        .I3(\sctl/fsm/p_0_in [7]),
        .I4(sctl_lat_ack_i_2_n_0),
        .I5(\sctl/fsm/p_0_in [8]),
        .O(sctl_lat_rv_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000E80000000000)) 
    sctl_nak_rv_i_1
       (.I0(synfil_sda[2]),
        .I1(synfil_sda[3]),
        .I2(synfil_sda[4]),
        .I3(sctl_lat_ack),
        .I4(\sctl/mctl_srst ),
        .I5(rst_n),
        .O(sctl_nak_rv_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sctl_read_i_1
       (.I0(sdat_datr_sft[0]),
        .I1(\sctl/sctl_lat_ad ),
        .I2(sctl_read),
        .O(sctl_read_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF10FFFFFF100000)) 
    sctl_sda_o_i_1
       (.I0(\sctl/fsm/p_0_in [11]),
        .I1(\stat[1]_i_4_n_0 ),
        .I2(sctl_dtct_sclr),
        .I3(sctl_sda_o_i_2_n_0),
        .I4(sctl_dtct_sclf),
        .I5(\sctl/sctl_sda_o ),
        .O(sctl_sda_o_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFBBBFBBBFFFF)) 
    sctl_sda_o_i_2
       (.I0(\sctl/fsm/p_0_in [8]),
        .I1(sctl_lat_ack_i_2_n_0),
        .I2(sctl_read),
        .I3(\sctl/fsm/p_0_in [11]),
        .I4(\sctl/fsm/p_0_in [7]),
        .I5(sctl_dtct_sclr),
        .O(sctl_sda_o_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    sctl_stwsadr_rd_i_1
       (.I0(bcs_stws_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(badr[1]),
        .I5(badr[3]),
        .O(\sctl/sctl_stwsadr_rd0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    sctl_stwsctl_rd_i_1
       (.I0(badr[1]),
        .I1(badr[3]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(bcs_stws_n),
        .I5(bcmdr),
        .O(sctl_stwsctl_rd_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    sctl_stwsdatr_rd_i_1
       (.I0(badr[3]),
        .I1(badr[1]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(bcs_stws_n),
        .I5(bcmdr),
        .O(sctl_stwsdatr_rd_i_1_n_0));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    sctl_stwsmsk_rd_i_1
       (.I0(bcs_stws_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(badr[3]),
        .I5(badr[1]),
        .O(\sctl/sctl_stwsmsk_rd0 ));
  FDRE \sdat/sdat_datr_sft_reg[0] 
       (.C(clk),
        .CE(\sctl/fsm/sctl_sft_rv ),
        .D(sctl_sda_s),
        .Q(sdat_datr_sft[0]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sdat/sdat_datr_sft_reg[1] 
       (.C(clk),
        .CE(\sctl/fsm/sctl_sft_rv ),
        .D(sdat_datr_sft[0]),
        .Q(sdat_datr_sft[1]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sdat/sdat_datr_sft_reg[2] 
       (.C(clk),
        .CE(\sctl/fsm/sctl_sft_rv ),
        .D(sdat_datr_sft[1]),
        .Q(sdat_datr_sft[2]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sdat/sdat_datr_sft_reg[3] 
       (.C(clk),
        .CE(\sctl/fsm/sctl_sft_rv ),
        .D(sdat_datr_sft[2]),
        .Q(sdat_datr_sft[3]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sdat/sdat_datr_sft_reg[4] 
       (.C(clk),
        .CE(\sctl/fsm/sctl_sft_rv ),
        .D(sdat_datr_sft[3]),
        .Q(sdat_datr_sft[4]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sdat/sdat_datr_sft_reg[5] 
       (.C(clk),
        .CE(\sctl/fsm/sctl_sft_rv ),
        .D(sdat_datr_sft[4]),
        .Q(sdat_datr_sft[5]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sdat/sdat_datr_sft_reg[6] 
       (.C(clk),
        .CE(\sctl/fsm/sctl_sft_rv ),
        .D(sdat_datr_sft[5]),
        .Q(sdat_datr_sft[6]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sdat/sdat_datr_sft_reg[7] 
       (.C(clk),
        .CE(\sctl/fsm/sctl_sft_rv ),
        .D(sdat_datr_sft[6]),
        .Q(sdat_datr_sft__0),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sdat/sdat_dats_reg[0] 
       (.C(clk),
        .CE(sctl_rst_sd),
        .D(stwsdats[0]),
        .Q(\sdat/sdat_dats [0]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sdat/sdat_dats_reg[1] 
       (.C(clk),
        .CE(sctl_rst_sd),
        .D(stwsdats[1]),
        .Q(\sdat/sdat_dats [1]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sdat/sdat_dats_reg[2] 
       (.C(clk),
        .CE(sctl_rst_sd),
        .D(stwsdats[2]),
        .Q(\sdat/sdat_dats [2]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sdat/sdat_dats_reg[3] 
       (.C(clk),
        .CE(sctl_rst_sd),
        .D(stwsdats[3]),
        .Q(\sdat/sdat_dats [3]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sdat/sdat_dats_reg[4] 
       (.C(clk),
        .CE(sctl_rst_sd),
        .D(stwsdats[4]),
        .Q(\sdat/sdat_dats [4]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sdat/sdat_dats_reg[5] 
       (.C(clk),
        .CE(sctl_rst_sd),
        .D(stwsdats[5]),
        .Q(\sdat/sdat_dats [5]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sdat/sdat_dats_reg[6] 
       (.C(clk),
        .CE(sctl_rst_sd),
        .D(stwsdats[6]),
        .Q(\sdat/sdat_dats [6]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sdat/sdat_dats_reg[7] 
       (.C(clk),
        .CE(sctl_rst_sd),
        .D(stwsdats[7]),
        .Q(\sdat/sdat_dats [7]),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sdat/sdat_dats_sft_reg[0] 
       (.C(clk),
        .CE(\sctl/fsm/sctl_sft_sd ),
        .D(\sdat/sdat_dats_sft [1]),
        .Q(\sdat/sdat_dats_sft [0]),
        .R(\sdat/p_1_in ));
  FDRE \sdat/sdat_dats_sft_reg[1] 
       (.C(clk),
        .CE(\sctl/fsm/sctl_sft_sd ),
        .D(\sdat/sdat_dats_sft [2]),
        .Q(\sdat/sdat_dats_sft [1]),
        .R(\sdat/p_1_in ));
  FDRE \sdat/sdat_dats_sft_reg[2] 
       (.C(clk),
        .CE(\sctl/fsm/sctl_sft_sd ),
        .D(\sdat/sdat_dats_sft [3]),
        .Q(\sdat/sdat_dats_sft [2]),
        .R(\sdat/p_1_in ));
  FDRE \sdat/sdat_dats_sft_reg[3] 
       (.C(clk),
        .CE(\sctl/fsm/sctl_sft_sd ),
        .D(\sdat/sdat_dats_sft [4]),
        .Q(\sdat/sdat_dats_sft [3]),
        .R(\sdat/p_1_in ));
  FDRE \sdat/sdat_dats_sft_reg[4] 
       (.C(clk),
        .CE(\sctl/fsm/sctl_sft_sd ),
        .D(\sdat/sdat_dats_sft [5]),
        .Q(\sdat/sdat_dats_sft [4]),
        .R(\sdat/p_1_in ));
  FDRE \sdat/sdat_dats_sft_reg[5] 
       (.C(clk),
        .CE(\sctl/fsm/sctl_sft_sd ),
        .D(\sdat/sdat_dats_sft [6]),
        .Q(\sdat/sdat_dats_sft [5]),
        .R(\sdat/p_1_in ));
  FDRE \sdat/sdat_dats_sft_reg[6] 
       (.C(clk),
        .CE(\sctl/fsm/sctl_sft_sd ),
        .D(\sdat/sdat_dats_sft [7]),
        .Q(\sdat/sdat_dats_sft [6]),
        .R(\sdat/p_1_in ));
  FDSE \sdat/sdat_dats_sft_reg[7] 
       (.C(clk),
        .CE(\sctl/fsm/sctl_sft_sd ),
        .D(\<const0> ),
        .Q(\sdat/sdat_dats_sft [7]),
        .S(\sdat/p_1_in ));
  FDSE \sdat/sdat_sda_o_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(sdat_sda_o_i_1_n_0),
        .Q(sdat_sda_o),
        .S(stws_scl_o_i_1_n_0));
  FDRE \sdat/sdat_sraf_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(sdat_sraf_i_1_n_0),
        .Q(sdat_sraf),
        .R(stws_scl_o_i_1_n_0));
  FDRE \sdat/sdat_staf_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(sdat_staf_i_1_n_0),
        .Q(sdat_staf),
        .R(\<const0> ));
  FDRE \sdat/stwsdatr_reg[0] 
       (.C(clk),
        .CE(sctl_lat_rv),
        .D(sdat_datr_sft[0]),
        .Q(stwsdatr[0]),
        .R(\stwsdatr[7]_i_1_n_0 ));
  FDRE \sdat/stwsdatr_reg[1] 
       (.C(clk),
        .CE(sctl_lat_rv),
        .D(sdat_datr_sft[1]),
        .Q(stwsdatr[1]),
        .R(\stwsdatr[7]_i_1_n_0 ));
  FDRE \sdat/stwsdatr_reg[2] 
       (.C(clk),
        .CE(sctl_lat_rv),
        .D(sdat_datr_sft[2]),
        .Q(stwsdatr[2]),
        .R(\stwsdatr[7]_i_1_n_0 ));
  FDRE \sdat/stwsdatr_reg[3] 
       (.C(clk),
        .CE(sctl_lat_rv),
        .D(sdat_datr_sft[3]),
        .Q(stwsdatr[3]),
        .R(\stwsdatr[7]_i_1_n_0 ));
  FDRE \sdat/stwsdatr_reg[4] 
       (.C(clk),
        .CE(sctl_lat_rv),
        .D(sdat_datr_sft[4]),
        .Q(stwsdatr[4]),
        .R(\stwsdatr[7]_i_1_n_0 ));
  FDRE \sdat/stwsdatr_reg[5] 
       (.C(clk),
        .CE(sctl_lat_rv),
        .D(sdat_datr_sft[5]),
        .Q(stwsdatr[5]),
        .R(\stwsdatr[7]_i_1_n_0 ));
  FDRE \sdat/stwsdatr_reg[6] 
       (.C(clk),
        .CE(sctl_lat_rv),
        .D(sdat_datr_sft[6]),
        .Q(stwsdatr[6]),
        .R(\stwsdatr[7]_i_1_n_0 ));
  FDRE \sdat/stwsdatr_reg[7] 
       (.C(clk),
        .CE(sctl_lat_rv),
        .D(sdat_datr_sft__0),
        .Q(stwsdatr[7]),
        .R(\stwsdatr[7]_i_1_n_0 ));
  FDRE \sdat/stwsdats_reg[0] 
       (.C(clk),
        .CE(sctl_stwsdats_wr),
        .D(bdatw[0]),
        .Q(stwsdats[0]),
        .R(\sdat/p_1_in ));
  FDRE \sdat/stwsdats_reg[1] 
       (.C(clk),
        .CE(sctl_stwsdats_wr),
        .D(bdatw[1]),
        .Q(stwsdats[1]),
        .R(\sdat/p_1_in ));
  FDRE \sdat/stwsdats_reg[2] 
       (.C(clk),
        .CE(sctl_stwsdats_wr),
        .D(bdatw[2]),
        .Q(stwsdats[2]),
        .R(\sdat/p_1_in ));
  FDRE \sdat/stwsdats_reg[3] 
       (.C(clk),
        .CE(sctl_stwsdats_wr),
        .D(bdatw[3]),
        .Q(stwsdats[3]),
        .R(\sdat/p_1_in ));
  FDRE \sdat/stwsdats_reg[4] 
       (.C(clk),
        .CE(sctl_stwsdats_wr),
        .D(bdatw[4]),
        .Q(stwsdats[4]),
        .R(\sdat/p_1_in ));
  FDRE \sdat/stwsdats_reg[5] 
       (.C(clk),
        .CE(sctl_stwsdats_wr),
        .D(bdatw[5]),
        .Q(stwsdats[5]),
        .R(\sdat/p_1_in ));
  FDRE \sdat/stwsdats_reg[6] 
       (.C(clk),
        .CE(sctl_stwsdats_wr),
        .D(bdatw[6]),
        .Q(stwsdats[6]),
        .R(\sdat/p_1_in ));
  FDRE \sdat/stwsdats_reg[7] 
       (.C(clk),
        .CE(sctl_stwsdats_wr),
        .D(bdatw[7]),
        .Q(stwsdats[7]),
        .R(\sdat/p_1_in ));
  LUT3 #(
    .INIT(8'hE8)) 
    \sdat_datr_sft[0]_i_1 
       (.I0(synfil_sda[4]),
        .I1(synfil_sda[3]),
        .I2(synfil_sda[2]),
        .O(sctl_sda_s));
  LUT4 #(
    .INIT(16'h0888)) 
    \sdat_datr_sft[7]_i_1 
       (.I0(\sdat_datr_sft[7]_i_2_n_0 ),
        .I1(sctl_dtct_sclr),
        .I2(sctl_read),
        .I3(\sctl/fsm/p_0_in [11]),
        .O(\sctl/fsm/sctl_sft_rv ));
  LUT6 #(
    .INIT(64'h00001111FFFFAAAE)) 
    \sdat_datr_sft[7]_i_2 
       (.I0(\sctl/fsm/p_0_in [7]),
        .I1(\sctl/fsm/p_0_in [8]),
        .I2(\sctl/sctl_dtct_stp ),
        .I3(\sctl/sctl_dtct_sta ),
        .I4(\sctl/fsm/p_0_in [9]),
        .I5(\sctl/fsm/p_0_in [10]),
        .O(\sdat_datr_sft[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h800A8000)) 
    \sdat_dats[7]_i_1 
       (.I0(\sdat_dats_sft[7]_i_3_n_0 ),
        .I1(sctl_ack_stat),
        .I2(\sctl/fsm/p_0_in [8]),
        .I3(\sctl/fsm/p_0_in [11]),
        .I4(sctl_dtct_sclr),
        .O(sctl_rst_sd));
  LUT6 #(
    .INIT(64'hFAAEAAAEAAAAAAAA)) 
    \sdat_dats_sft[7]_i_1 
       (.I0(stws_scl_o_i_1_n_0),
        .I1(sctl_dtct_sclr),
        .I2(\sctl/fsm/p_0_in [11]),
        .I3(\sctl/fsm/p_0_in [8]),
        .I4(sctl_ack_stat),
        .I5(\sdat_dats_sft[7]_i_3_n_0 ),
        .O(\sdat/p_1_in ));
  LUT4 #(
    .INIT(16'h8000)) 
    \sdat_dats_sft[7]_i_2 
       (.I0(\sctl/fsm/p_0_in [11]),
        .I1(sctl_read),
        .I2(\sdat_datr_sft[7]_i_2_n_0 ),
        .I3(sctl_dtct_sclr),
        .O(\sctl/fsm/sctl_sft_sd ));
  LUT4 #(
    .INIT(16'h0800)) 
    \sdat_dats_sft[7]_i_3 
       (.I0(\sctl/fsm/p_0_in [7]),
        .I1(sctl_read),
        .I2(\sctl/fsm/p_0_in [9]),
        .I3(\sctl/fsm/p_0_in [10]),
        .O(\sdat_dats_sft[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    sdat_sda_o_i_1
       (.I0(sdat_sda_o_i_2_n_0),
        .I1(sdat_sda_o_i_3_n_0),
        .I2(sdat_sda_o_i_4_n_0),
        .I3(sctl_dtct_sclf),
        .I4(sdat_sda_o),
        .O(sdat_sda_o_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAADFFFFFFFF)) 
    sdat_sda_o_i_2
       (.I0(\sctl/fsm/p_0_in [10]),
        .I1(sctl_dtct_sclr),
        .I2(\sctl/fsm/p_0_in [7]),
        .I3(\sctl/fsm/p_0_in [8]),
        .I4(\sctl/fsm/p_0_in [9]),
        .I5(sdat_sda_o_i_5_n_0),
        .O(sdat_sda_o_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    sdat_sda_o_i_3
       (.I0(\sdat/sdat_dats_sft [1]),
        .I1(\sdat/sdat_dats [1]),
        .I2(\sdat/sdat_dats_sft [0]),
        .I3(\sdat/sdat_dats [0]),
        .I4(sdat_sda_o_i_6_n_0),
        .O(sdat_sda_o_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    sdat_sda_o_i_4
       (.I0(\sdat/sdat_dats_sft [7]),
        .I1(\sdat/sdat_dats [7]),
        .I2(\sdat/sdat_dats_sft [6]),
        .I3(\sdat/sdat_dats [6]),
        .I4(sdat_sda_o_i_7_n_0),
        .O(sdat_sda_o_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sdat_sda_o_i_5
       (.I0(sctl_read),
        .I1(\sctl/fsm/p_0_in [11]),
        .O(sdat_sda_o_i_5_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    sdat_sda_o_i_6
       (.I0(\sdat/sdat_dats [3]),
        .I1(\sdat/sdat_dats_sft [3]),
        .I2(\sdat/sdat_dats [2]),
        .I3(\sdat/sdat_dats_sft [2]),
        .O(sdat_sda_o_i_6_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    sdat_sda_o_i_7
       (.I0(\sdat/sdat_dats [4]),
        .I1(\sdat/sdat_dats_sft [4]),
        .I2(\sdat/sdat_dats [5]),
        .I3(\sdat/sdat_dats_sft [5]),
        .O(sdat_sda_o_i_7_n_0));
  LUT5 #(
    .INIT(32'hFF55FF54)) 
    sdat_sraf_i_1
       (.I0(sctl_stwsdatr_rd),
        .I1(sctl_flg_sstp),
        .I2(sctl_flg_ssta),
        .I3(sctl_lat_rv),
        .I4(sdat_sraf),
        .O(sdat_sraf_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFAE)) 
    sdat_staf_i_1
       (.I0(\sdat/p_1_in ),
        .I1(sdat_staf),
        .I2(sctl_stwsdats_wr),
        .I3(sctl_nak_rv),
        .O(sdat_staf_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000555D)) 
    \stat[0]_i_2 
       (.I0(sctl_lat_ack_i_2_n_0),
        .I1(\stat[0]_i_3_n_0 ),
        .I2(\stat[0]_i_4_n_0 ),
        .I3(\stat[0]_i_5_n_0 ),
        .I4(\stat[0]_i_6_n_0 ),
        .I5(\stat[0]_i_7_n_0 ),
        .O(\stat[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7F707F7F)) 
    \stat[0]_i_3 
       (.I0(\sctl/fsm/p_0_in [11]),
        .I1(sctl_read),
        .I2(\sctl/fsm/p_0_in [8]),
        .I3(sctl_dtct_sclr),
        .I4(\sctl/fsm/p_0_in [7]),
        .O(\stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F8C008C0F8C0F8C)) 
    \stat[0]_i_4 
       (.I0(sctl_read),
        .I1(sctl_dtct_sclr),
        .I2(\sctl/fsm/p_0_in [11]),
        .I3(\sctl/fsm/p_0_in [7]),
        .I4(\sctl/sctl_dtct_sta ),
        .I5(\sctl/sctl_dtct_stp ),
        .O(\stat[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0444)) 
    \stat[0]_i_5 
       (.I0(\sctl/fsm/p_0_in [8]),
        .I1(sctl_dtct_sclr),
        .I2(sctl_read),
        .I3(\sctl/fsm/p_0_in [11]),
        .O(\stat[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0100010000000100)) 
    \stat[0]_i_6 
       (.I0(\sctl/fsm/p_0_in [10]),
        .I1(\sctl/fsm/p_0_in [7]),
        .I2(\sctl/fsm/p_0_in [9]),
        .I3(\sctl/sctl_dtct_sta ),
        .I4(\sctl/fsm/p_0_in [11]),
        .I5(\sctl/fsm/p_0_in [8]),
        .O(\stat[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000BAFF00)) 
    \stat[0]_i_7 
       (.I0(\sctl/fsm/p_0_in [9]),
        .I1(\sctl/sctl_dtct_stp ),
        .I2(\sctl/fsm/p_0_in [8]),
        .I3(\sctl/fsm/p_0_in [7]),
        .I4(sctl_dtct_sclr),
        .I5(\sctl/fsm/p_0_in [10]),
        .O(\stat[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00045555)) 
    \stat[1]_i_1 
       (.I0(\stat[1]_i_2_n_0 ),
        .I1(\stat[1]_i_3_n_0 ),
        .I2(\sctl/fsm/p_0_in [11]),
        .I3(\stat[1]_i_4_n_0 ),
        .I4(\stat[1]_i_5_n_0 ),
        .I5(\stat[1]_i_6_n_0 ),
        .O(\sctl/fsm/stat_nx [1]));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[1]_i_10 
       (.I0(\sctl/sctl_dtct_sta ),
        .I1(\sctl/sctl_dtct_stp ),
        .O(\stat[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \stat[1]_i_2 
       (.I0(sctl_ack_stat),
        .I1(\sctl/fsm/p_0_in [8]),
        .I2(\sctl/fsm/p_0_in [11]),
        .I3(sctl_read),
        .I4(\sctl/fsm/p_0_in [7]),
        .I5(sctl_lat_ack_i_2_n_0),
        .O(\stat[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[1]_i_3 
       (.I0(sctl_dtct_sclr),
        .I1(\sctl/fsm/p_0_in [7]),
        .O(\stat[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000404)) 
    \stat[1]_i_4 
       (.I0(sctl_lat_rv_i_2_n_0),
        .I1(sctl_lat_rv_i_3_n_0),
        .I2(\stat[1]_i_7_n_0 ),
        .I3(\stat[1]_i_8_n_0 ),
        .I4(\stat[1]_i_9_n_0 ),
        .I5(sctl_lat_rv_i_5_n_0),
        .O(\stat[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h151555F5FFFF55F5)) 
    \stat[1]_i_5 
       (.I0(\sctl/fsm/p_0_in [8]),
        .I1(sctl_dtct_sclr),
        .I2(\sctl/fsm/p_0_in [7]),
        .I3(\stat[1]_i_10_n_0 ),
        .I4(\sctl/fsm/p_0_in [11]),
        .I5(sctl_read),
        .O(\stat[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000FE0F0E0)) 
    \stat[1]_i_6 
       (.I0(\sctl/fsm/p_0_in [9]),
        .I1(\stat[1]_i_10_n_0 ),
        .I2(\sctl/fsm/p_0_in [8]),
        .I3(\sctl/fsm/p_0_in [7]),
        .I4(sctl_dtct_sclr),
        .I5(\sctl/fsm/p_0_in [10]),
        .O(\stat[1]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \stat[1]_i_7 
       (.I0(sdat_datr_sft[3]),
        .I1(stwsadr[3]),
        .I2(stwsmsk[3]),
        .O(\stat[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stat[1]_i_8 
       (.I0(stwsadr[2]),
        .I1(stwsadr[0]),
        .I2(stwsadr[6]),
        .I3(stwsadr[1]),
        .O(\stat[1]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \stat[1]_i_9 
       (.I0(stwsadr[5]),
        .I1(stwsadr[3]),
        .I2(stwsadr[4]),
        .O(\stat[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00007F80)) 
    \stat[2]_i_1 
       (.I0(sctl_dtct_sclr),
        .I1(\sctl/fsm/p_0_in [7]),
        .I2(\sctl/fsm/p_0_in [8]),
        .I3(\sctl/fsm/p_0_in [9]),
        .I4(\sctl/fsm/p_0_in [10]),
        .O(\sctl/fsm/stat_nx [2]));
  LUT6 #(
    .INIT(64'h00CFAA000000AA00)) 
    \stat[3]_i_1 
       (.I0(\stat[3]_i_2_n_0 ),
        .I1(\stat[3]_i_3_n_0 ),
        .I2(\sctl/fsm/p_0_in [8]),
        .I3(\sctl/fsm/p_0_in [9]),
        .I4(\sctl/fsm/p_0_in [10]),
        .I5(\stat[3]_i_4_n_0 ),
        .O(\sctl/fsm/stat_nx [3]));
  LUT3 #(
    .INIT(8'h80)) 
    \stat[3]_i_2 
       (.I0(sctl_dtct_sclr),
        .I1(\sctl/fsm/p_0_in [7]),
        .I2(\sctl/fsm/p_0_in [8]),
        .O(\stat[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h888BBBBB)) 
    \stat[3]_i_3 
       (.I0(sctl_read),
        .I1(\sctl/fsm/p_0_in [11]),
        .I2(\sctl/sctl_dtct_stp ),
        .I3(\sctl/sctl_dtct_sta ),
        .I4(\sctl/fsm/p_0_in [7]),
        .O(\stat[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h51BBFBBBFFFFFFFF)) 
    \stat[3]_i_4 
       (.I0(\sctl/fsm/p_0_in [8]),
        .I1(sctl_dtct_sclr),
        .I2(sctl_read),
        .I3(\sctl/fsm/p_0_in [11]),
        .I4(sctl_ack_stat),
        .I5(\sctl/fsm/p_0_in [7]),
        .O(\stat[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \stat[4]_i_1 
       (.I0(\sctl/fsm/sctl_dtct_sta_f ),
        .I1(rst_n),
        .I2(\sctl/mctl_srst ),
        .O(\sctl/fsm/stat ));
  LUT6 #(
    .INIT(64'hFFFF80FF80808080)) 
    \stat[4]_i_2 
       (.I0(\sctl/fsm/p_0_in [7]),
        .I1(sctl_dtct_sclr),
        .I2(\stat[4]_i_3_n_0 ),
        .I3(\stat[4]_i_4_n_0 ),
        .I4(\stat[4]_i_5_n_0 ),
        .I5(\sctl/fsm/p_0_in [11]),
        .O(\sctl/fsm/stat_nx [4]));
  LUT3 #(
    .INIT(8'h04)) 
    \stat[4]_i_3 
       (.I0(\sctl/fsm/p_0_in [9]),
        .I1(\sctl/fsm/p_0_in [10]),
        .I2(\sctl/fsm/p_0_in [8]),
        .O(\stat[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABBBABBBB)) 
    \stat[4]_i_4 
       (.I0(\sctl/fsm/p_0_in [10]),
        .I1(\sctl/fsm/p_0_in [9]),
        .I2(\sctl/sctl_dtct_sta ),
        .I3(\sctl/sctl_dtct_stp ),
        .I4(\sctl/fsm/p_0_in [8]),
        .I5(\sctl/fsm/p_0_in [7]),
        .O(\stat[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4000404044444444)) 
    \stat[4]_i_5 
       (.I0(\sctl/fsm/p_0_in [9]),
        .I1(\sctl/fsm/p_0_in [10]),
        .I2(sctl_read),
        .I3(sctl_ack_stat),
        .I4(\sctl/fsm/p_0_in [7]),
        .I5(\sctl/fsm/p_0_in [8]),
        .O(\stat[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    stws_scl_o_i_1
       (.I0(\sctl/mctl_srst ),
        .I1(rst_n),
        .O(stws_scl_o_i_1_n_0));
  LUT3 #(
    .INIT(8'hDC)) 
    stws_scl_o_i_2
       (.I0(sctl_dtct_sclf),
        .I1(\sctl/sctl_scl_ob ),
        .I2(stws_scl_o),
        .O(stws_scl_o_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    stws_scl_o_i_3
       (.I0(sctl_lat_ack_i_2_n_0),
        .I1(sctl_read),
        .I2(\sctl/fsm/p_0_in [7]),
        .I3(sdat_staf),
        .I4(sctl_dtct_sclr),
        .I5(stws_scl_o_i_4_n_0),
        .O(\sctl/sctl_scl_ob ));
  LUT2 #(
    .INIT(4'h1)) 
    stws_scl_o_i_4
       (.I0(\sctl/fsm/p_0_in [11]),
        .I1(\sctl/fsm/p_0_in [8]),
        .O(stws_scl_o_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    stws_sda_o_INST_0
       (.I0(\sctl/sctl_sda_o ),
        .I1(sdat_sda_o),
        .O(stws_sda_o));
  LUT2 #(
    .INIT(4'h8)) 
    stws_srar_INST_0
       (.I0(sdat_sraf),
        .I1(sctl_srae),
        .O(stws_srar));
  LUT2 #(
    .INIT(4'h8)) 
    stws_star_INST_0
       (.I0(sdat_staf),
        .I1(sctl_stae),
        .O(stws_star));
  LUT5 #(
    .INIT(32'h00200000)) 
    \stwsadr[6]_i_1 
       (.I0(\stwsdats[7]_i_2_n_0 ),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[1]),
        .I4(badr[3]),
        .O(sctl_stwsadr_wr));
  LUT5 #(
    .INIT(32'h00040000)) 
    \stwsctl[1]_i_2 
       (.I0(badr[1]),
        .I1(badr[3]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(\stwsdats[7]_i_2_n_0 ),
        .O(\sctl/p_11_in ));
  LUT4 #(
    .INIT(16'hDFDD)) 
    \stwsdatr[7]_i_1 
       (.I0(rst_n),
        .I1(\sctl/mctl_srst ),
        .I2(sctl_lat_rv),
        .I3(sctl_stwsdatr_rd),
        .O(\stwsdatr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \stwsdats[7]_i_1 
       (.I0(\stwsdats[7]_i_2_n_0 ),
        .I1(badr[3]),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(badr[2]),
        .O(sctl_stwsdats_wr));
  LUT3 #(
    .INIT(8'h08)) 
    \stwsdats[7]_i_2 
       (.I0(brdy),
        .I1(bcmdw),
        .I2(bcs_stws_n),
        .O(\stwsdats[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \stwsmsk[6]_i_1 
       (.I0(\stwsdats[7]_i_2_n_0 ),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(badr[1]),
        .O(sctl_stwsmsk_wr));
endmodule
