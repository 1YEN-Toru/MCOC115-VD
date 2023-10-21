
module stws_fsm
   (SR,
    E,
    sdat_staf_reg,
    sctl_dtct_sclr_reg,
    Q,
    \stat_reg[4]_0 ,
    sctl_dtct_sclr_reg_0,
    sctl_ack_stat_reg,
    sctl_dtct_sclr_reg_1,
    \synfil_sda_reg[2] ,
    rst_n_0,
    \synfil_sda_reg[2]_0 ,
    \sdat_datr_sft_reg[0] ,
    sctl_dtct_stp_reg,
    sctl_dtct_stp_reg_0,
    sctl_stwsdatr_rd_reg,
    sctl_dtct_sclf_reg,
    sctl_dtct_stp_reg_1,
    \stat_reg[4]_1 ,
    \stat_reg[3]_0 ,
    sctl_dtct_sta,
    clk,
    sctl_lat_rv_t,
    sdat_staf,
    sdat_staf_reg_0,
    sctl_nak_rv,
    sctl_dtct_sclr,
    sctl_read,
    sctl_dtct_stp,
    sctl_sda_o_reg,
    sctl_ack_stat,
    sctl_ack_stat_reg_0,
    mctl_srst,
    rst_n,
    sctl_stwsdatr_rd,
    sctl_read_reg,
    sctl_flg_sstp,
    sctl_flg_ssta,
    sdat_sraf,
    sctl_dtct_sclf,
    stws_scl_o,
    sctl_flg_sadr,
    sctl_sda_o);
  output [0:0]SR;
  output [0:0]E;
  output sdat_staf_reg;
  output [0:0]sctl_dtct_sclr_reg;
  output [0:0]Q;
  output [0:0]\stat_reg[4]_0 ;
  output [0:0]sctl_dtct_sclr_reg_0;
  output [0:0]sctl_ack_stat_reg;
  output sctl_dtct_sclr_reg_1;
  output \synfil_sda_reg[2] ;
  output [0:0]rst_n_0;
  output \synfil_sda_reg[2]_0 ;
  output \sdat_datr_sft_reg[0] ;
  output sctl_dtct_stp_reg;
  output sctl_dtct_stp_reg_0;
  output sctl_stwsdatr_rd_reg;
  output sctl_dtct_sclf_reg;
  output sctl_dtct_stp_reg_1;
  output \stat_reg[4]_1 ;
  output \stat_reg[3]_0 ;
  input sctl_dtct_sta;
  input clk;
  input sctl_lat_rv_t;
  input sdat_staf;
  input [0:0]sdat_staf_reg_0;
  input sctl_nak_rv;
  input sctl_dtct_sclr;
  input sctl_read;
  input sctl_dtct_stp;
  input sctl_sda_o_reg;
  input sctl_ack_stat;
  input [2:0]sctl_ack_stat_reg_0;
  input mctl_srst;
  input rst_n;
  input sctl_stwsdatr_rd;
  input [0:0]sctl_read_reg;
  input sctl_flg_sstp;
  input sctl_flg_ssta;
  input sdat_sraf;
  input sctl_dtct_sclf;
  input stws_scl_o;
  input sctl_flg_sadr;
  input sctl_sda_o;

  wire \<const1> ;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk;
  wire mctl_srst;
  wire [10:7]p_0_in;
  wire rst_n;
  wire [0:0]rst_n_0;
  wire sctl_ack_stat;
  wire [0:0]sctl_ack_stat_reg;
  wire [2:0]sctl_ack_stat_reg_0;
  wire sctl_dtct_sclf;
  wire sctl_dtct_sclf_reg;
  wire sctl_dtct_sclr;
  wire [0:0]sctl_dtct_sclr_reg;
  wire [0:0]sctl_dtct_sclr_reg_0;
  wire sctl_dtct_sclr_reg_1;
  wire sctl_dtct_sta;
  wire sctl_dtct_sta_f;
  wire sctl_dtct_stp;
  wire sctl_dtct_stp_reg;
  wire sctl_dtct_stp_reg_0;
  wire sctl_dtct_stp_reg_1;
  wire sctl_flg_sadr;
  wire sctl_flg_ssta;
  wire sctl_flg_sstp;
  wire sctl_lat_ack;
  wire sctl_lat_ack_i_1_n_0;
  wire sctl_lat_ack_i_2_n_0;
  wire sctl_lat_ad;
  wire sctl_lat_ad_t;
  wire sctl_lat_rv_t;
  wire sctl_nak_rv;
  wire sctl_read;
  wire [0:0]sctl_read_reg;
  wire sctl_scl_ob;
  wire sctl_sda_o;
  wire sctl_sda_o_i_2_n_0;
  wire sctl_sda_o_reg;
  wire sctl_stwsdatr_rd;
  wire sctl_stwsdatr_rd_reg;
  wire \sdat_datr_sft[7]_i_2_n_0 ;
  wire \sdat_datr_sft_reg[0] ;
  wire \sdat_dats_sft[7]_i_3_n_0 ;
  wire sdat_sda_o_i_5_n_0;
  wire sdat_sraf;
  wire sdat_staf;
  wire sdat_staf_reg;
  wire [0:0]sdat_staf_reg_0;
  wire [2:2]stat;
  wire \stat[0]_i_1_n_0 ;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_4_n_0 ;
  wire \stat[0]_i_5_n_0 ;
  wire \stat[0]_i_6_n_0 ;
  wire \stat[0]_i_7_n_0 ;
  wire \stat[1]_i_10_n_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_5_n_0 ;
  wire \stat[1]_i_6_n_0 ;
  wire \stat[3]_i_2_n_0 ;
  wire \stat[3]_i_3_n_0 ;
  wire \stat[3]_i_4_n_0 ;
  wire \stat[4]_i_3_n_0 ;
  wire \stat[4]_i_4_n_0 ;
  wire \stat[4]_i_5_n_0 ;
  wire [4:1]stat_nx;
  wire \stat_reg[3]_0 ;
  wire [0:0]\stat_reg[4]_0 ;
  wire \stat_reg[4]_1 ;
  wire stws_scl_o;
  wire stws_scl_o_i_4_n_0;
  wire \synfil_sda_reg[2] ;
  wire \synfil_sda_reg[2]_0 ;

  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h17FF1700)) 
    sctl_ack_stat_i_1
       (.I0(sctl_ack_stat_reg_0[0]),
        .I1(sctl_ack_stat_reg_0[1]),
        .I2(sctl_ack_stat_reg_0[2]),
        .I3(sctl_lat_ack),
        .I4(sctl_ack_stat),
        .O(\synfil_sda_reg[2]_0 ));
  FDRE sctl_dtct_sta_f_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_dtct_sta),
        .Q(sctl_dtct_sta_f),
        .R(SR));
  LUT5 #(
    .INIT(32'hFF01FF00)) 
    sctl_flg_sadr_i_1
       (.I0(sctl_dtct_stp),
        .I1(sctl_dtct_sta),
        .I2(sctl_stwsdatr_rd),
        .I3(sctl_lat_ad),
        .I4(sctl_flg_sadr),
        .O(sctl_dtct_stp_reg_1));
  LUT5 #(
    .INIT(32'hCCCDCCCC)) 
    sctl_flg_ssta_i_1
       (.I0(sctl_dtct_stp),
        .I1(sctl_dtct_sta),
        .I2(sctl_stwsdatr_rd),
        .I3(sctl_lat_ad),
        .I4(sctl_flg_ssta),
        .O(sctl_dtct_stp_reg_0));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    sctl_flg_sstp_i_1
       (.I0(sctl_dtct_stp),
        .I1(sctl_dtct_sta),
        .I2(sctl_stwsdatr_rd),
        .I3(sctl_lat_ad),
        .I4(sctl_flg_sstp),
        .O(sctl_dtct_stp_reg));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    sctl_lat_ack_i_1
       (.I0(p_0_in[7]),
        .I1(sctl_dtct_sclr),
        .I2(sctl_lat_ack_i_2_n_0),
        .I3(p_0_in[8]),
        .I4(Q),
        .I5(sctl_read),
        .O(sctl_lat_ack_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sctl_lat_ack_i_2
       (.I0(p_0_in[10]),
        .I1(p_0_in[9]),
        .O(sctl_lat_ack_i_2_n_0));
  FDRE sctl_lat_ack_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_lat_ack_i_1_n_0),
        .Q(sctl_lat_ack),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    sctl_lat_ad_i_1
       (.I0(p_0_in[9]),
        .I1(p_0_in[10]),
        .I2(sctl_dtct_sclr),
        .I3(p_0_in[7]),
        .I4(Q),
        .I5(p_0_in[8]),
        .O(sctl_lat_ad_t));
  FDRE sctl_lat_ad_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_lat_ad_t),
        .Q(sctl_lat_ad),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD5FFFF)) 
    sctl_lat_rv_i_6
       (.I0(sctl_dtct_sclr),
        .I1(sctl_read),
        .I2(Q),
        .I3(p_0_in[7]),
        .I4(sctl_lat_ack_i_2_n_0),
        .I5(p_0_in[8]),
        .O(sctl_dtct_sclr_reg_1));
  FDRE sctl_lat_rv_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_lat_rv_t),
        .Q(E),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000E80000000000)) 
    sctl_nak_rv_i_1
       (.I0(sctl_ack_stat_reg_0[0]),
        .I1(sctl_ack_stat_reg_0[1]),
        .I2(sctl_ack_stat_reg_0[2]),
        .I3(sctl_lat_ack),
        .I4(mctl_srst),
        .I5(rst_n),
        .O(\synfil_sda_reg[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    sctl_read_i_1
       (.I0(sctl_read_reg),
        .I1(sctl_lat_ad),
        .I2(sctl_read),
        .O(\sdat_datr_sft_reg[0] ));
  LUT6 #(
    .INIT(64'hFF10FFFFFF100000)) 
    sctl_sda_o_i_1
       (.I0(Q),
        .I1(sctl_sda_o_reg),
        .I2(sctl_dtct_sclr),
        .I3(sctl_sda_o_i_2_n_0),
        .I4(sctl_dtct_sclf),
        .I5(sctl_sda_o),
        .O(\stat_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFBBBFBBBFFFF)) 
    sctl_sda_o_i_2
       (.I0(p_0_in[8]),
        .I1(sctl_lat_ack_i_2_n_0),
        .I2(sctl_read),
        .I3(Q),
        .I4(p_0_in[7]),
        .I5(sctl_dtct_sclr),
        .O(sctl_sda_o_i_2_n_0));
  LUT4 #(
    .INIT(16'h0888)) 
    \sdat_datr_sft[7]_i_1 
       (.I0(\sdat_datr_sft[7]_i_2_n_0 ),
        .I1(sctl_dtct_sclr),
        .I2(sctl_read),
        .I3(Q),
        .O(sctl_dtct_sclr_reg_0));
  LUT6 #(
    .INIT(64'h00001111FFFFAAAE)) 
    \sdat_datr_sft[7]_i_2 
       (.I0(p_0_in[7]),
        .I1(p_0_in[8]),
        .I2(sctl_dtct_stp),
        .I3(sctl_dtct_sta),
        .I4(p_0_in[9]),
        .I5(p_0_in[10]),
        .O(\sdat_datr_sft[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h800A8000)) 
    \sdat_dats[7]_i_1 
       (.I0(\sdat_dats_sft[7]_i_3_n_0 ),
        .I1(sctl_ack_stat),
        .I2(p_0_in[8]),
        .I3(Q),
        .I4(sctl_dtct_sclr),
        .O(sctl_ack_stat_reg));
  LUT6 #(
    .INIT(64'hFAAEAAAEAAAAAAAA)) 
    \sdat_dats_sft[7]_i_1 
       (.I0(SR),
        .I1(sctl_dtct_sclr),
        .I2(Q),
        .I3(p_0_in[8]),
        .I4(sctl_ack_stat),
        .I5(\sdat_dats_sft[7]_i_3_n_0 ),
        .O(sctl_dtct_sclr_reg));
  LUT4 #(
    .INIT(16'h8000)) 
    \sdat_dats_sft[7]_i_2 
       (.I0(Q),
        .I1(sctl_read),
        .I2(\sdat_datr_sft[7]_i_2_n_0 ),
        .I3(sctl_dtct_sclr),
        .O(\stat_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \sdat_dats_sft[7]_i_3 
       (.I0(p_0_in[7]),
        .I1(sctl_read),
        .I2(p_0_in[9]),
        .I3(p_0_in[10]),
        .O(\sdat_dats_sft[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAADFFFFFFFF)) 
    sdat_sda_o_i_2
       (.I0(p_0_in[10]),
        .I1(sctl_dtct_sclr),
        .I2(p_0_in[7]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .I5(sdat_sda_o_i_5_n_0),
        .O(\stat_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    sdat_sda_o_i_5
       (.I0(sctl_read),
        .I1(Q),
        .O(sdat_sda_o_i_5_n_0));
  LUT5 #(
    .INIT(32'hFF55FF54)) 
    sdat_sraf_i_1
       (.I0(sctl_stwsdatr_rd),
        .I1(sctl_flg_sstp),
        .I2(sctl_flg_ssta),
        .I3(E),
        .I4(sdat_sraf),
        .O(sctl_stwsdatr_rd_reg));
  LUT4 #(
    .INIT(16'hFFAE)) 
    sdat_staf_i_1
       (.I0(sctl_dtct_sclr_reg),
        .I1(sdat_staf),
        .I2(sdat_staf_reg_0),
        .I3(sctl_nak_rv),
        .O(sdat_staf_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFF55515555)) 
    \stat[0]_i_1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(\stat[1]_i_3_n_0 ),
        .I2(Q),
        .I3(sctl_sda_o_reg),
        .I4(\stat[4]_i_3_n_0 ),
        .I5(sctl_dtct_sta_f),
        .O(\stat[0]_i_1_n_0 ));
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
       (.I0(Q),
        .I1(sctl_read),
        .I2(p_0_in[8]),
        .I3(sctl_dtct_sclr),
        .I4(p_0_in[7]),
        .O(\stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F8C008C0F8C0F8C)) 
    \stat[0]_i_4 
       (.I0(sctl_read),
        .I1(sctl_dtct_sclr),
        .I2(Q),
        .I3(p_0_in[7]),
        .I4(sctl_dtct_sta),
        .I5(sctl_dtct_stp),
        .O(\stat[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0444)) 
    \stat[0]_i_5 
       (.I0(p_0_in[8]),
        .I1(sctl_dtct_sclr),
        .I2(sctl_read),
        .I3(Q),
        .O(\stat[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0100010000000100)) 
    \stat[0]_i_6 
       (.I0(p_0_in[10]),
        .I1(p_0_in[7]),
        .I2(p_0_in[9]),
        .I3(sctl_dtct_sta),
        .I4(Q),
        .I5(p_0_in[8]),
        .O(\stat[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000BAFF00)) 
    \stat[0]_i_7 
       (.I0(p_0_in[9]),
        .I1(sctl_dtct_stp),
        .I2(p_0_in[8]),
        .I3(p_0_in[7]),
        .I4(sctl_dtct_sclr),
        .I5(p_0_in[10]),
        .O(\stat[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00045555)) 
    \stat[1]_i_1 
       (.I0(\stat[1]_i_2_n_0 ),
        .I1(\stat[1]_i_3_n_0 ),
        .I2(Q),
        .I3(sctl_sda_o_reg),
        .I4(\stat[1]_i_5_n_0 ),
        .I5(\stat[1]_i_6_n_0 ),
        .O(stat_nx[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[1]_i_10 
       (.I0(sctl_dtct_sta),
        .I1(sctl_dtct_stp),
        .O(\stat[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \stat[1]_i_2 
       (.I0(sctl_ack_stat),
        .I1(p_0_in[8]),
        .I2(Q),
        .I3(sctl_read),
        .I4(p_0_in[7]),
        .I5(sctl_lat_ack_i_2_n_0),
        .O(\stat[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[1]_i_3 
       (.I0(sctl_dtct_sclr),
        .I1(p_0_in[7]),
        .O(\stat[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h151555F5FFFF55F5)) 
    \stat[1]_i_5 
       (.I0(p_0_in[8]),
        .I1(sctl_dtct_sclr),
        .I2(p_0_in[7]),
        .I3(\stat[1]_i_10_n_0 ),
        .I4(Q),
        .I5(sctl_read),
        .O(\stat[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000FE0F0E0)) 
    \stat[1]_i_6 
       (.I0(p_0_in[9]),
        .I1(\stat[1]_i_10_n_0 ),
        .I2(p_0_in[8]),
        .I3(p_0_in[7]),
        .I4(sctl_dtct_sclr),
        .I5(p_0_in[10]),
        .O(\stat[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00007F80)) 
    \stat[2]_i_1 
       (.I0(sctl_dtct_sclr),
        .I1(p_0_in[7]),
        .I2(p_0_in[8]),
        .I3(p_0_in[9]),
        .I4(p_0_in[10]),
        .O(stat_nx[2]));
  LUT6 #(
    .INIT(64'h00CFAA000000AA00)) 
    \stat[3]_i_1 
       (.I0(\stat[3]_i_2_n_0 ),
        .I1(\stat[3]_i_3_n_0 ),
        .I2(p_0_in[8]),
        .I3(p_0_in[9]),
        .I4(p_0_in[10]),
        .I5(\stat[3]_i_4_n_0 ),
        .O(stat_nx[3]));
  LUT3 #(
    .INIT(8'h80)) 
    \stat[3]_i_2 
       (.I0(sctl_dtct_sclr),
        .I1(p_0_in[7]),
        .I2(p_0_in[8]),
        .O(\stat[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h888BBBBB)) 
    \stat[3]_i_3 
       (.I0(sctl_read),
        .I1(Q),
        .I2(sctl_dtct_stp),
        .I3(sctl_dtct_sta),
        .I4(p_0_in[7]),
        .O(\stat[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h51BBFBBBFFFFFFFF)) 
    \stat[3]_i_4 
       (.I0(p_0_in[8]),
        .I1(sctl_dtct_sclr),
        .I2(sctl_read),
        .I3(Q),
        .I4(sctl_ack_stat),
        .I5(p_0_in[7]),
        .O(\stat[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \stat[4]_i_1 
       (.I0(sctl_dtct_sta_f),
        .I1(rst_n),
        .I2(mctl_srst),
        .O(stat));
  LUT6 #(
    .INIT(64'hFFFF80FF80808080)) 
    \stat[4]_i_2 
       (.I0(p_0_in[7]),
        .I1(sctl_dtct_sclr),
        .I2(\stat[4]_i_3_n_0 ),
        .I3(\stat[4]_i_4_n_0 ),
        .I4(\stat[4]_i_5_n_0 ),
        .I5(Q),
        .O(stat_nx[4]));
  LUT3 #(
    .INIT(8'h04)) 
    \stat[4]_i_3 
       (.I0(p_0_in[9]),
        .I1(p_0_in[10]),
        .I2(p_0_in[8]),
        .O(\stat[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABBBABBBB)) 
    \stat[4]_i_4 
       (.I0(p_0_in[10]),
        .I1(p_0_in[9]),
        .I2(sctl_dtct_sta),
        .I3(sctl_dtct_stp),
        .I4(p_0_in[8]),
        .I5(p_0_in[7]),
        .O(\stat[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4000404044444444)) 
    \stat[4]_i_5 
       (.I0(p_0_in[9]),
        .I1(p_0_in[10]),
        .I2(sctl_read),
        .I3(sctl_ack_stat),
        .I4(p_0_in[7]),
        .I5(p_0_in[8]),
        .O(\stat[4]_i_5_n_0 ));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\stat[0]_i_1_n_0 ),
        .Q(p_0_in[7]),
        .R(SR));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[1]),
        .Q(p_0_in[8]),
        .R(stat));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[2]),
        .Q(p_0_in[9]),
        .R(stat));
  FDRE \stat_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[3]),
        .Q(p_0_in[10]),
        .R(stat));
  FDRE \stat_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[4]),
        .Q(Q),
        .R(stat));
  LUT2 #(
    .INIT(4'hB)) 
    stws_scl_o_i_1
       (.I0(mctl_srst),
        .I1(rst_n),
        .O(SR));
  LUT3 #(
    .INIT(8'hDC)) 
    stws_scl_o_i_2
       (.I0(sctl_dtct_sclf),
        .I1(sctl_scl_ob),
        .I2(stws_scl_o),
        .O(sctl_dtct_sclf_reg));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    stws_scl_o_i_3
       (.I0(sctl_lat_ack_i_2_n_0),
        .I1(sctl_read),
        .I2(p_0_in[7]),
        .I3(sdat_staf),
        .I4(sctl_dtct_sclr),
        .I5(stws_scl_o_i_4_n_0),
        .O(sctl_scl_ob));
  LUT2 #(
    .INIT(4'h1)) 
    stws_scl_o_i_4
       (.I0(Q),
        .I1(p_0_in[8]),
        .O(stws_scl_o_i_4_n_0));
  LUT4 #(
    .INIT(16'hDFDD)) 
    \stwsdatr[7]_i_1 
       (.I0(rst_n),
        .I1(mctl_srst),
        .I2(E),
        .I3(sctl_stwsdatr_rd),
        .O(rst_n_0));
endmodule

module stws_sadr
   (brdy_0,
    sctl_lat_rv_t,
    \stwsmsk_reg[0]_0 ,
    \stwsmsk_reg[6]_0 ,
    \stwsadr_reg[6]_0 ,
    badr,
    brdy,
    bcmdw,
    bcs_stws_n,
    Q,
    sctl_lat_rv_reg,
    sctl_lat_rv_reg_0,
    SR,
    bdatw,
    clk);
  output brdy_0;
  output sctl_lat_rv_t;
  output \stwsmsk_reg[0]_0 ;
  output [6:0]\stwsmsk_reg[6]_0 ;
  output [6:0]\stwsadr_reg[6]_0 ;
  input [3:0]badr;
  input brdy;
  input bcmdw;
  input bcs_stws_n;
  input [0:0]Q;
  input sctl_lat_rv_reg;
  input [6:0]sctl_lat_rv_reg_0;
  input [0:0]SR;
  input [6:0]bdatw;
  input clk;

  wire [0:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire bcmdw;
  wire bcs_stws_n;
  wire [6:0]bdatw;
  wire brdy;
  wire brdy_0;
  wire clk;
  wire sctl_lat_rv_i_2_n_0;
  wire sctl_lat_rv_i_3_n_0;
  wire sctl_lat_rv_i_4_n_0;
  wire sctl_lat_rv_i_5_n_0;
  wire sctl_lat_rv_reg;
  wire [6:0]sctl_lat_rv_reg_0;
  wire sctl_lat_rv_t;
  wire sctl_stwsadr_wr;
  wire sctl_stwsmsk_wr;
  wire \stat[1]_i_7_n_0 ;
  wire \stat[1]_i_8_n_0 ;
  wire \stat[1]_i_9_n_0 ;
  wire [6:0]\stwsadr_reg[6]_0 ;
  wire \stwsmsk_reg[0]_0 ;
  wire [6:0]\stwsmsk_reg[6]_0 ;

  LUT6 #(
    .INIT(64'h00000000FFFF0004)) 
    sctl_lat_rv_i_1
       (.I0(sctl_lat_rv_i_2_n_0),
        .I1(sctl_lat_rv_i_3_n_0),
        .I2(sctl_lat_rv_i_4_n_0),
        .I3(sctl_lat_rv_i_5_n_0),
        .I4(Q),
        .I5(sctl_lat_rv_reg),
        .O(sctl_lat_rv_t));
  LUT6 #(
    .INIT(64'h141414FF14FF1414)) 
    sctl_lat_rv_i_2
       (.I0(\stwsmsk_reg[6]_0 [0]),
        .I1(\stwsadr_reg[6]_0 [0]),
        .I2(sctl_lat_rv_reg_0[0]),
        .I3(\stwsmsk_reg[6]_0 [1]),
        .I4(\stwsadr_reg[6]_0 [1]),
        .I5(sctl_lat_rv_reg_0[1]),
        .O(sctl_lat_rv_i_2_n_0));
  LUT6 #(
    .INIT(64'hEBEBEB00EB00EBEB)) 
    sctl_lat_rv_i_3
       (.I0(\stwsmsk_reg[6]_0 [6]),
        .I1(\stwsadr_reg[6]_0 [6]),
        .I2(sctl_lat_rv_reg_0[6]),
        .I3(\stwsmsk_reg[6]_0 [2]),
        .I4(\stwsadr_reg[6]_0 [2]),
        .I5(sctl_lat_rv_reg_0[2]),
        .O(sctl_lat_rv_i_3_n_0));
  LUT6 #(
    .INIT(64'h111144441111444F)) 
    sctl_lat_rv_i_4
       (.I0(\stwsmsk_reg[6]_0 [3]),
        .I1(sctl_lat_rv_reg_0[3]),
        .I2(\stat[1]_i_8_n_0 ),
        .I3(\stwsadr_reg[6]_0 [5]),
        .I4(\stwsadr_reg[6]_0 [3]),
        .I5(\stwsadr_reg[6]_0 [4]),
        .O(sctl_lat_rv_i_4_n_0));
  LUT6 #(
    .INIT(64'h141414FF14FF1414)) 
    sctl_lat_rv_i_5
       (.I0(\stwsmsk_reg[6]_0 [5]),
        .I1(\stwsadr_reg[6]_0 [5]),
        .I2(sctl_lat_rv_reg_0[5]),
        .I3(\stwsmsk_reg[6]_0 [4]),
        .I4(\stwsadr_reg[6]_0 [4]),
        .I5(sctl_lat_rv_reg_0[4]),
        .O(sctl_lat_rv_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000004000404)) 
    \stat[1]_i_4 
       (.I0(sctl_lat_rv_i_2_n_0),
        .I1(sctl_lat_rv_i_3_n_0),
        .I2(\stat[1]_i_7_n_0 ),
        .I3(\stat[1]_i_8_n_0 ),
        .I4(\stat[1]_i_9_n_0 ),
        .I5(sctl_lat_rv_i_5_n_0),
        .O(\stwsmsk_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \stat[1]_i_7 
       (.I0(sctl_lat_rv_reg_0[3]),
        .I1(\stwsadr_reg[6]_0 [3]),
        .I2(\stwsmsk_reg[6]_0 [3]),
        .O(\stat[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stat[1]_i_8 
       (.I0(\stwsadr_reg[6]_0 [2]),
        .I1(\stwsadr_reg[6]_0 [0]),
        .I2(\stwsadr_reg[6]_0 [6]),
        .I3(\stwsadr_reg[6]_0 [1]),
        .O(\stat[1]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \stat[1]_i_9 
       (.I0(\stwsadr_reg[6]_0 [5]),
        .I1(\stwsadr_reg[6]_0 [3]),
        .I2(\stwsadr_reg[6]_0 [4]),
        .O(\stat[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \stwsadr[6]_i_1 
       (.I0(brdy_0),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[1]),
        .I4(badr[3]),
        .O(sctl_stwsadr_wr));
  FDRE \stwsadr_reg[0] 
       (.C(clk),
        .CE(sctl_stwsadr_wr),
        .D(bdatw[0]),
        .Q(\stwsadr_reg[6]_0 [0]),
        .R(SR));
  FDRE \stwsadr_reg[1] 
       (.C(clk),
        .CE(sctl_stwsadr_wr),
        .D(bdatw[1]),
        .Q(\stwsadr_reg[6]_0 [1]),
        .R(SR));
  FDRE \stwsadr_reg[2] 
       (.C(clk),
        .CE(sctl_stwsadr_wr),
        .D(bdatw[2]),
        .Q(\stwsadr_reg[6]_0 [2]),
        .R(SR));
  FDRE \stwsadr_reg[3] 
       (.C(clk),
        .CE(sctl_stwsadr_wr),
        .D(bdatw[3]),
        .Q(\stwsadr_reg[6]_0 [3]),
        .R(SR));
  FDRE \stwsadr_reg[4] 
       (.C(clk),
        .CE(sctl_stwsadr_wr),
        .D(bdatw[4]),
        .Q(\stwsadr_reg[6]_0 [4]),
        .R(SR));
  FDRE \stwsadr_reg[5] 
       (.C(clk),
        .CE(sctl_stwsadr_wr),
        .D(bdatw[5]),
        .Q(\stwsadr_reg[6]_0 [5]),
        .R(SR));
  FDRE \stwsadr_reg[6] 
       (.C(clk),
        .CE(sctl_stwsadr_wr),
        .D(bdatw[6]),
        .Q(\stwsadr_reg[6]_0 [6]),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    \stwsdats[7]_i_2 
       (.I0(brdy),
        .I1(bcmdw),
        .I2(bcs_stws_n),
        .O(brdy_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \stwsmsk[6]_i_1 
       (.I0(brdy_0),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(badr[1]),
        .O(sctl_stwsmsk_wr));
  FDRE \stwsmsk_reg[0] 
       (.C(clk),
        .CE(sctl_stwsmsk_wr),
        .D(bdatw[0]),
        .Q(\stwsmsk_reg[6]_0 [0]),
        .R(SR));
  FDRE \stwsmsk_reg[1] 
       (.C(clk),
        .CE(sctl_stwsmsk_wr),
        .D(bdatw[1]),
        .Q(\stwsmsk_reg[6]_0 [1]),
        .R(SR));
  FDRE \stwsmsk_reg[2] 
       (.C(clk),
        .CE(sctl_stwsmsk_wr),
        .D(bdatw[2]),
        .Q(\stwsmsk_reg[6]_0 [2]),
        .R(SR));
  FDRE \stwsmsk_reg[3] 
       (.C(clk),
        .CE(sctl_stwsmsk_wr),
        .D(bdatw[3]),
        .Q(\stwsmsk_reg[6]_0 [3]),
        .R(SR));
  FDRE \stwsmsk_reg[4] 
       (.C(clk),
        .CE(sctl_stwsmsk_wr),
        .D(bdatw[4]),
        .Q(\stwsmsk_reg[6]_0 [4]),
        .R(SR));
  FDRE \stwsmsk_reg[5] 
       (.C(clk),
        .CE(sctl_stwsmsk_wr),
        .D(bdatw[5]),
        .Q(\stwsmsk_reg[6]_0 [5]),
        .R(SR));
  FDRE \stwsmsk_reg[6] 
       (.C(clk),
        .CE(sctl_stwsmsk_wr),
        .D(bdatw[6]),
        .Q(\stwsmsk_reg[6]_0 [6]),
        .R(SR));
endmodule

module stws_sctl
   (SR,
    E,
    sctl_dtct_sclf,
    stws_scl_o,
    sdat_staf_reg,
    sctl_dtct_sclr_reg_0,
    Q,
    \stat_reg[4] ,
    sctl_dtct_sclr_reg_1,
    sctl_ack_stat_reg_0,
    sctl_dtct_sclr_reg_2,
    rst_n_0,
    D,
    bdatr,
    sctl_stae,
    sctl_srae,
    stws_sda_o,
    sctl_stwsdatr_rd_reg_0,
    \stat_reg[3] ,
    clk,
    sctl_lat_rv_t,
    brdy,
    sdat_staf,
    sdat_staf_reg_0,
    rst_n,
    bdatw,
    badr,
    mctl_srst_reg_0,
    bcs_stws_n,
    bcmdr,
    sctl_sda_o_reg_0,
    \bdatr[7] ,
    \bdatr[6] ,
    \bdatr[6]_0 ,
    sdat_sraf,
    sdat_sda_o,
    sctl_read_reg_0,
    stws_sda_i,
    stws_scl_i);
  output [0:0]SR;
  output [0:0]E;
  output sctl_dtct_sclf;
  output stws_scl_o;
  output sdat_staf_reg;
  output [0:0]sctl_dtct_sclr_reg_0;
  output [0:0]Q;
  output [0:0]\stat_reg[4] ;
  output [0:0]sctl_dtct_sclr_reg_1;
  output [0:0]sctl_ack_stat_reg_0;
  output sctl_dtct_sclr_reg_2;
  output [0:0]rst_n_0;
  output [0:0]D;
  output [10:0]bdatr;
  output sctl_stae;
  output sctl_srae;
  output stws_sda_o;
  output sctl_stwsdatr_rd_reg_0;
  output \stat_reg[3] ;
  input clk;
  input sctl_lat_rv_t;
  input brdy;
  input sdat_staf;
  input [0:0]sdat_staf_reg_0;
  input rst_n;
  input [2:0]bdatw;
  input [3:0]badr;
  input mctl_srst_reg_0;
  input bcs_stws_n;
  input bcmdr;
  input sctl_sda_o_reg_0;
  input [7:0]\bdatr[7] ;
  input [6:0]\bdatr[6] ;
  input [6:0]\bdatr[6]_0 ;
  input sdat_sraf;
  input sdat_sda_o;
  input [0:0]sctl_read_reg_0;
  input stws_sda_i;
  input stws_scl_i;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire bcmdr;
  wire bcs_stws_n;
  wire [10:0]bdatr;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[4]_INST_0_i_1_n_0 ;
  wire \bdatr[5]_INST_0_i_1_n_0 ;
  wire [6:0]\bdatr[6] ;
  wire [6:0]\bdatr[6]_0 ;
  wire [7:0]\bdatr[7] ;
  wire [2:0]bdatw;
  wire brdy;
  wire clk;
  wire fsm_n_11;
  wire fsm_n_12;
  wire fsm_n_13;
  wire fsm_n_14;
  wire fsm_n_16;
  wire fsm_n_17;
  wire fsm_n_18;
  wire fsm_n_9;
  wire mctl_srst;
  wire mctl_srst_i_1_n_0;
  wire mctl_srst_reg_0;
  wire [2:0]p_0_in;
  wire p_0_in1_in;
  wire p_0_in4_in;
  wire p_11_in;
  wire p_1_in;
  wire p_2_in;
  wire [0:0]p_2_out__0;
  wire rst_n;
  wire [0:0]rst_n_0;
  wire sctl_ack_stat;
  wire [0:0]sctl_ack_stat_reg_0;
  wire sctl_dtct_sclf;
  wire sctl_dtct_sclf0;
  wire sctl_dtct_sclr;
  wire sctl_dtct_sclr0;
  wire [0:0]sctl_dtct_sclr_reg_0;
  wire [0:0]sctl_dtct_sclr_reg_1;
  wire sctl_dtct_sclr_reg_2;
  wire sctl_dtct_sta;
  wire sctl_dtct_sta0__0;
  wire sctl_dtct_stp;
  wire sctl_dtct_stp0__0;
  wire sctl_flg_sadr;
  wire sctl_flg_ssta;
  wire sctl_flg_sstp;
  wire sctl_lat_rv_t;
  wire sctl_nak_rv;
  wire sctl_read;
  wire [0:0]sctl_read_reg_0;
  wire \sctl_scl_f_reg_n_0_[0] ;
  wire \sctl_scl_f_reg_n_0_[1] ;
  wire \sctl_sda_f_reg_n_0_[0] ;
  wire sctl_sda_o;
  wire sctl_sda_o_reg_0;
  wire sctl_srae;
  wire sctl_stae;
  wire sctl_stwsadr_rd;
  wire sctl_stwsadr_rd0;
  wire sctl_stwsctl_rd;
  wire sctl_stwsctl_rd_i_1_n_0;
  wire sctl_stwsdatr_rd;
  wire sctl_stwsdatr_rd_i_1_n_0;
  wire sctl_stwsdatr_rd_reg_0;
  wire sctl_stwsmsk_rd;
  wire sctl_stwsmsk_rd0;
  wire sdat_sda_o;
  wire sdat_sraf;
  wire sdat_staf;
  wire sdat_staf_reg;
  wire [0:0]sdat_staf_reg_0;
  wire \stat_reg[3] ;
  wire [0:0]\stat_reg[4] ;
  wire stws_scl_i;
  wire stws_scl_o;
  wire stws_sda_i;
  wire stws_sda_o;
  wire \stwsctl[0]_i_1_n_0 ;
  wire \stwsctl[1]_i_1_n_0 ;
  wire \synfil_scl_reg_n_0_[0] ;
  wire \synfil_scl_reg_n_0_[1] ;
  wire [4:0]synfil_sda;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \bdatr[0]_INST_0 
       (.I0(sctl_stwsadr_rd),
        .I1(sctl_stwsmsk_rd),
        .I2(\bdatr[6] [0]),
        .I3(\bdatr[0]_INST_0_i_1_n_0 ),
        .O(bdatr[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(\bdatr[7] [0]),
        .I1(sctl_stwsdatr_rd),
        .I2(sctl_srae),
        .I3(sctl_stwsctl_rd),
        .I4(\bdatr[6]_0 [0]),
        .I5(sctl_stwsadr_rd),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[10]_INST_0 
       (.I0(sctl_flg_ssta),
        .I1(sctl_stwsdatr_rd),
        .O(bdatr[10]));
  LUT4 #(
    .INIT(16'hFF40)) 
    \bdatr[1]_INST_0 
       (.I0(sctl_stwsadr_rd),
        .I1(sctl_stwsmsk_rd),
        .I2(\bdatr[6] [1]),
        .I3(\bdatr[1]_INST_0_i_1_n_0 ),
        .O(bdatr[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(\bdatr[7] [1]),
        .I1(sctl_stwsdatr_rd),
        .I2(sctl_stae),
        .I3(sctl_stwsctl_rd),
        .I4(\bdatr[6]_0 [1]),
        .I5(sctl_stwsadr_rd),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF088F088F088)) 
    \bdatr[2]_INST_0 
       (.I0(sctl_stwsmsk_rd),
        .I1(\bdatr[6] [2]),
        .I2(\bdatr[6]_0 [2]),
        .I3(sctl_stwsadr_rd),
        .I4(sctl_stwsdatr_rd),
        .I5(\bdatr[7] [2]),
        .O(bdatr[2]));
  LUT4 #(
    .INIT(16'hFF40)) 
    \bdatr[3]_INST_0 
       (.I0(sctl_stwsadr_rd),
        .I1(sctl_stwsmsk_rd),
        .I2(\bdatr[6] [3]),
        .I3(\bdatr[3]_INST_0_i_1_n_0 ),
        .O(bdatr[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(\bdatr[7] [3]),
        .I1(sctl_stwsdatr_rd),
        .I2(sctl_ack_stat),
        .I3(sctl_stwsctl_rd),
        .I4(\bdatr[6]_0 [3]),
        .I5(sctl_stwsadr_rd),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \bdatr[4]_INST_0 
       (.I0(sctl_stwsadr_rd),
        .I1(sctl_stwsmsk_rd),
        .I2(\bdatr[6] [4]),
        .I3(\bdatr[4]_INST_0_i_1_n_0 ),
        .O(bdatr[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(\bdatr[7] [4]),
        .I1(sctl_stwsdatr_rd),
        .I2(sdat_sraf),
        .I3(sctl_stwsctl_rd),
        .I4(\bdatr[6]_0 [4]),
        .I5(sctl_stwsadr_rd),
        .O(\bdatr[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \bdatr[5]_INST_0 
       (.I0(sctl_stwsadr_rd),
        .I1(sctl_stwsmsk_rd),
        .I2(\bdatr[6] [5]),
        .I3(\bdatr[5]_INST_0_i_1_n_0 ),
        .O(bdatr[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(\bdatr[7] [5]),
        .I1(sctl_stwsdatr_rd),
        .I2(sdat_staf),
        .I3(sctl_stwsctl_rd),
        .I4(\bdatr[6]_0 [5]),
        .I5(sctl_stwsadr_rd),
        .O(\bdatr[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF088F088F088)) 
    \bdatr[6]_INST_0 
       (.I0(\bdatr[6] [6]),
        .I1(sctl_stwsmsk_rd),
        .I2(\bdatr[6]_0 [6]),
        .I3(sctl_stwsadr_rd),
        .I4(sctl_stwsdatr_rd),
        .I5(\bdatr[7] [6]),
        .O(bdatr[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[7]_INST_0 
       (.I0(sctl_stwsdatr_rd),
        .I1(\bdatr[7] [7]),
        .O(bdatr[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[8]_INST_0 
       (.I0(sctl_flg_sstp),
        .I1(sctl_stwsdatr_rd),
        .O(bdatr[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[9]_INST_0 
       (.I0(sctl_stwsdatr_rd),
        .I1(sctl_flg_sadr),
        .O(bdatr[9]));
  stws_fsm fsm
       (.E(E),
        .Q(Q),
        .SR(SR),
        .clk(clk),
        .mctl_srst(mctl_srst),
        .rst_n(rst_n),
        .rst_n_0(rst_n_0),
        .sctl_ack_stat(sctl_ack_stat),
        .sctl_ack_stat_reg(sctl_ack_stat_reg_0),
        .sctl_ack_stat_reg_0(synfil_sda[4:2]),
        .sctl_dtct_sclf(sctl_dtct_sclf),
        .sctl_dtct_sclf_reg(fsm_n_16),
        .sctl_dtct_sclr(sctl_dtct_sclr),
        .sctl_dtct_sclr_reg(sctl_dtct_sclr_reg_0),
        .sctl_dtct_sclr_reg_0(sctl_dtct_sclr_reg_1),
        .sctl_dtct_sclr_reg_1(sctl_dtct_sclr_reg_2),
        .sctl_dtct_sta(sctl_dtct_sta),
        .sctl_dtct_stp(sctl_dtct_stp),
        .sctl_dtct_stp_reg(fsm_n_13),
        .sctl_dtct_stp_reg_0(fsm_n_14),
        .sctl_dtct_stp_reg_1(fsm_n_17),
        .sctl_flg_sadr(sctl_flg_sadr),
        .sctl_flg_ssta(sctl_flg_ssta),
        .sctl_flg_sstp(sctl_flg_sstp),
        .sctl_lat_rv_t(sctl_lat_rv_t),
        .sctl_nak_rv(sctl_nak_rv),
        .sctl_read(sctl_read),
        .sctl_read_reg(sctl_read_reg_0),
        .sctl_sda_o(sctl_sda_o),
        .sctl_sda_o_reg(sctl_sda_o_reg_0),
        .sctl_stwsdatr_rd(sctl_stwsdatr_rd),
        .sctl_stwsdatr_rd_reg(sctl_stwsdatr_rd_reg_0),
        .\sdat_datr_sft_reg[0] (fsm_n_12),
        .sdat_sraf(sdat_sraf),
        .sdat_staf(sdat_staf),
        .sdat_staf_reg(sdat_staf_reg),
        .sdat_staf_reg_0(sdat_staf_reg_0),
        .\stat_reg[3]_0 (\stat_reg[3] ),
        .\stat_reg[4]_0 (\stat_reg[4] ),
        .\stat_reg[4]_1 (fsm_n_18),
        .stws_scl_o(stws_scl_o),
        .\synfil_sda_reg[2] (fsm_n_9),
        .\synfil_sda_reg[2]_0 (fsm_n_11));
  LUT3 #(
    .INIT(8'hD5)) 
    mctl_srst_i_1
       (.I0(rst_n),
        .I1(p_11_in),
        .I2(bdatw[2]),
        .O(mctl_srst_i_1_n_0));
  FDRE mctl_srst_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_srst_i_1_n_0),
        .Q(mctl_srst),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'hE8)) 
    p_2_out
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .O(p_2_out__0));
  FDRE sctl_ack_stat_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_11),
        .Q(sctl_ack_stat),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    sctl_dtct_sclf_i_1
       (.I0(p_1_in),
        .I1(p_0_in4_in),
        .O(sctl_dtct_sclf0));
  FDRE sctl_dtct_sclf_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_dtct_sclf0),
        .Q(sctl_dtct_sclf),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    sctl_dtct_sclr_i_1
       (.I0(p_0_in4_in),
        .I1(p_1_in),
        .O(sctl_dtct_sclr0));
  FDRE sctl_dtct_sclr_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_dtct_sclr0),
        .Q(sctl_dtct_sclr),
        .R(SR));
  LUT4 #(
    .INIT(16'h0800)) 
    sctl_dtct_sta0
       (.I0(\sctl_scl_f_reg_n_0_[0] ),
        .I1(p_1_in),
        .I2(p_2_in),
        .I3(p_0_in1_in),
        .O(sctl_dtct_sta0__0));
  FDRE sctl_dtct_sta_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_dtct_sta0__0),
        .Q(sctl_dtct_sta),
        .R(SR));
  LUT4 #(
    .INIT(16'h0800)) 
    sctl_dtct_stp0
       (.I0(\sctl_scl_f_reg_n_0_[0] ),
        .I1(p_1_in),
        .I2(p_0_in1_in),
        .I3(p_2_in),
        .O(sctl_dtct_stp0__0));
  FDRE sctl_dtct_stp_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_dtct_stp0__0),
        .Q(sctl_dtct_stp),
        .R(SR));
  FDRE sctl_flg_sadr_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_17),
        .Q(sctl_flg_sadr),
        .R(SR));
  FDRE sctl_flg_ssta_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_14),
        .Q(sctl_flg_ssta),
        .R(SR));
  FDRE sctl_flg_sstp_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_13),
        .Q(sctl_flg_sstp),
        .R(SR));
  FDRE sctl_nak_rv_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_9),
        .Q(sctl_nak_rv),
        .R(\<const0> ));
  FDRE sctl_read_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_12),
        .Q(sctl_read),
        .R(SR));
  FDSE \sctl_scl_f_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_2_out__0),
        .Q(\sctl_scl_f_reg_n_0_[0] ),
        .S(SR));
  FDSE \sctl_scl_f_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl_scl_f_reg_n_0_[0] ),
        .Q(\sctl_scl_f_reg_n_0_[1] ),
        .S(SR));
  FDSE \sctl_scl_f_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl_scl_f_reg_n_0_[1] ),
        .Q(p_0_in4_in),
        .S(SR));
  FDSE \sctl_scl_f_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in4_in),
        .Q(p_1_in),
        .S(SR));
  FDSE \sctl_sda_f_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D),
        .Q(\sctl_sda_f_reg_n_0_[0] ),
        .S(SR));
  FDSE \sctl_sda_f_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sctl_sda_f_reg_n_0_[0] ),
        .Q(p_2_in),
        .S(SR));
  FDSE \sctl_sda_f_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_2_in),
        .Q(p_0_in1_in),
        .S(SR));
  FDSE sctl_sda_o_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_18),
        .Q(sctl_sda_o),
        .S(SR));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    sctl_stwsadr_rd_i_1
       (.I0(bcs_stws_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(badr[1]),
        .I5(badr[3]),
        .O(sctl_stwsadr_rd0));
  FDRE sctl_stwsadr_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(sctl_stwsadr_rd0),
        .Q(sctl_stwsadr_rd),
        .R(SR));
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
  FDRE sctl_stwsctl_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(sctl_stwsctl_rd_i_1_n_0),
        .Q(sctl_stwsctl_rd),
        .R(SR));
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
  FDRE sctl_stwsdatr_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(sctl_stwsdatr_rd_i_1_n_0),
        .Q(sctl_stwsdatr_rd),
        .R(SR));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    sctl_stwsmsk_rd_i_1
       (.I0(bcs_stws_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(badr[3]),
        .I5(badr[1]),
        .O(sctl_stwsmsk_rd0));
  FDRE sctl_stwsmsk_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(sctl_stwsmsk_rd0),
        .Q(sctl_stwsmsk_rd),
        .R(SR));
  LUT3 #(
    .INIT(8'hE8)) 
    \sdat_datr_sft[0]_i_1 
       (.I0(synfil_sda[4]),
        .I1(synfil_sda[3]),
        .I2(synfil_sda[2]),
        .O(D));
  FDSE stws_scl_o_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_16),
        .Q(stws_scl_o),
        .S(SR));
  LUT2 #(
    .INIT(4'h8)) 
    stws_sda_o_INST_0
       (.I0(sctl_sda_o),
        .I1(sdat_sda_o),
        .O(stws_sda_o));
  LUT3 #(
    .INIT(8'hB8)) 
    \stwsctl[0]_i_1 
       (.I0(bdatw[0]),
        .I1(p_11_in),
        .I2(sctl_srae),
        .O(\stwsctl[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \stwsctl[1]_i_1 
       (.I0(bdatw[1]),
        .I1(p_11_in),
        .I2(sctl_stae),
        .O(\stwsctl[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \stwsctl[1]_i_2 
       (.I0(badr[1]),
        .I1(badr[3]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(mctl_srst_reg_0),
        .O(p_11_in));
  FDRE \stwsctl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\stwsctl[0]_i_1_n_0 ),
        .Q(sctl_srae),
        .R(SR));
  FDRE \stwsctl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\stwsctl[1]_i_1_n_0 ),
        .Q(sctl_stae),
        .R(SR));
  FDSE \synfil_scl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stws_scl_i),
        .Q(\synfil_scl_reg_n_0_[0] ),
        .S(SR));
  FDSE \synfil_scl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\synfil_scl_reg_n_0_[0] ),
        .Q(\synfil_scl_reg_n_0_[1] ),
        .S(SR));
  FDSE \synfil_scl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\synfil_scl_reg_n_0_[1] ),
        .Q(p_0_in[0]),
        .S(SR));
  FDSE \synfil_scl_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[0]),
        .Q(p_0_in[1]),
        .S(SR));
  FDSE \synfil_scl_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .S(SR));
  FDSE \synfil_sda_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stws_sda_i),
        .Q(synfil_sda[0]),
        .S(SR));
  FDSE \synfil_sda_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_sda[0]),
        .Q(synfil_sda[1]),
        .S(SR));
  FDSE \synfil_sda_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_sda[1]),
        .Q(synfil_sda[2]),
        .S(SR));
  FDSE \synfil_sda_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_sda[2]),
        .Q(synfil_sda[3]),
        .S(SR));
  FDSE \synfil_sda_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_sda[3]),
        .Q(synfil_sda[4]),
        .S(SR));
endmodule

module stws_sdat
   (sdat_staf,
    sdat_sraf,
    sdat_sda_o,
    E,
    stws_star,
    stws_srar,
    Q,
    \stwsdatr_reg[7]_0 ,
    sdat_staf_reg_0,
    clk,
    SR,
    sdat_sraf_reg_0,
    \stwsdats_reg[7]_0 ,
    badr,
    sctl_stae,
    sctl_srae,
    sdat_sda_o_reg_0,
    sctl_dtct_sclf,
    \sdat_datr_sft_reg[7]_0 ,
    D,
    \sdat_dats_sft_reg[7]_0 ,
    \sdat_dats_sft_reg[7]_1 ,
    bdatw,
    \sdat_dats_reg[7]_0 ,
    \stwsdatr_reg[7]_1 ,
    \stwsdatr_reg[7]_2 );
  output sdat_staf;
  output sdat_sraf;
  output sdat_sda_o;
  output [0:0]E;
  output stws_star;
  output stws_srar;
  output [6:0]Q;
  output [7:0]\stwsdatr_reg[7]_0 ;
  input sdat_staf_reg_0;
  input clk;
  input [0:0]SR;
  input sdat_sraf_reg_0;
  input \stwsdats_reg[7]_0 ;
  input [3:0]badr;
  input sctl_stae;
  input sctl_srae;
  input sdat_sda_o_reg_0;
  input sctl_dtct_sclf;
  input [0:0]\sdat_datr_sft_reg[7]_0 ;
  input [0:0]D;
  input [0:0]\sdat_dats_sft_reg[7]_0 ;
  input [0:0]\sdat_dats_sft_reg[7]_1 ;
  input [7:0]bdatw;
  input [0:0]\sdat_dats_reg[7]_0 ;
  input [0:0]\stwsdatr_reg[7]_1 ;
  input [0:0]\stwsdatr_reg[7]_2 ;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire [7:0]bdatw;
  wire clk;
  wire sctl_dtct_sclf;
  wire sctl_srae;
  wire sctl_stae;
  wire [7:7]sdat_datr_sft__0;
  wire [0:0]\sdat_datr_sft_reg[7]_0 ;
  wire [7:0]sdat_dats;
  wire [0:0]\sdat_dats_reg[7]_0 ;
  wire [7:0]sdat_dats_sft;
  wire [0:0]\sdat_dats_sft_reg[7]_0 ;
  wire [0:0]\sdat_dats_sft_reg[7]_1 ;
  wire sdat_sda_o;
  wire sdat_sda_o_i_1_n_0;
  wire sdat_sda_o_i_3_n_0;
  wire sdat_sda_o_i_4_n_0;
  wire sdat_sda_o_i_6_n_0;
  wire sdat_sda_o_i_7_n_0;
  wire sdat_sda_o_reg_0;
  wire sdat_sraf;
  wire sdat_sraf_reg_0;
  wire sdat_staf;
  wire sdat_staf_reg_0;
  wire stws_srar;
  wire stws_star;
  wire [7:0]\stwsdatr_reg[7]_0 ;
  wire [0:0]\stwsdatr_reg[7]_1 ;
  wire [0:0]\stwsdatr_reg[7]_2 ;
  wire [7:0]stwsdats;
  wire \stwsdats_reg[7]_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \sdat_datr_sft_reg[0] 
       (.C(clk),
        .CE(\sdat_datr_sft_reg[7]_0 ),
        .D(D),
        .Q(Q[0]),
        .R(SR));
  FDRE \sdat_datr_sft_reg[1] 
       (.C(clk),
        .CE(\sdat_datr_sft_reg[7]_0 ),
        .D(Q[0]),
        .Q(Q[1]),
        .R(SR));
  FDRE \sdat_datr_sft_reg[2] 
       (.C(clk),
        .CE(\sdat_datr_sft_reg[7]_0 ),
        .D(Q[1]),
        .Q(Q[2]),
        .R(SR));
  FDRE \sdat_datr_sft_reg[3] 
       (.C(clk),
        .CE(\sdat_datr_sft_reg[7]_0 ),
        .D(Q[2]),
        .Q(Q[3]),
        .R(SR));
  FDRE \sdat_datr_sft_reg[4] 
       (.C(clk),
        .CE(\sdat_datr_sft_reg[7]_0 ),
        .D(Q[3]),
        .Q(Q[4]),
        .R(SR));
  FDRE \sdat_datr_sft_reg[5] 
       (.C(clk),
        .CE(\sdat_datr_sft_reg[7]_0 ),
        .D(Q[4]),
        .Q(Q[5]),
        .R(SR));
  FDRE \sdat_datr_sft_reg[6] 
       (.C(clk),
        .CE(\sdat_datr_sft_reg[7]_0 ),
        .D(Q[5]),
        .Q(Q[6]),
        .R(SR));
  FDRE \sdat_datr_sft_reg[7] 
       (.C(clk),
        .CE(\sdat_datr_sft_reg[7]_0 ),
        .D(Q[6]),
        .Q(sdat_datr_sft__0),
        .R(SR));
  FDRE \sdat_dats_reg[0] 
       (.C(clk),
        .CE(\sdat_dats_reg[7]_0 ),
        .D(stwsdats[0]),
        .Q(sdat_dats[0]),
        .R(SR));
  FDRE \sdat_dats_reg[1] 
       (.C(clk),
        .CE(\sdat_dats_reg[7]_0 ),
        .D(stwsdats[1]),
        .Q(sdat_dats[1]),
        .R(SR));
  FDRE \sdat_dats_reg[2] 
       (.C(clk),
        .CE(\sdat_dats_reg[7]_0 ),
        .D(stwsdats[2]),
        .Q(sdat_dats[2]),
        .R(SR));
  FDRE \sdat_dats_reg[3] 
       (.C(clk),
        .CE(\sdat_dats_reg[7]_0 ),
        .D(stwsdats[3]),
        .Q(sdat_dats[3]),
        .R(SR));
  FDRE \sdat_dats_reg[4] 
       (.C(clk),
        .CE(\sdat_dats_reg[7]_0 ),
        .D(stwsdats[4]),
        .Q(sdat_dats[4]),
        .R(SR));
  FDRE \sdat_dats_reg[5] 
       (.C(clk),
        .CE(\sdat_dats_reg[7]_0 ),
        .D(stwsdats[5]),
        .Q(sdat_dats[5]),
        .R(SR));
  FDRE \sdat_dats_reg[6] 
       (.C(clk),
        .CE(\sdat_dats_reg[7]_0 ),
        .D(stwsdats[6]),
        .Q(sdat_dats[6]),
        .R(SR));
  FDRE \sdat_dats_reg[7] 
       (.C(clk),
        .CE(\sdat_dats_reg[7]_0 ),
        .D(stwsdats[7]),
        .Q(sdat_dats[7]),
        .R(SR));
  FDRE \sdat_dats_sft_reg[0] 
       (.C(clk),
        .CE(\sdat_dats_sft_reg[7]_1 ),
        .D(sdat_dats_sft[1]),
        .Q(sdat_dats_sft[0]),
        .R(\sdat_dats_sft_reg[7]_0 ));
  FDRE \sdat_dats_sft_reg[1] 
       (.C(clk),
        .CE(\sdat_dats_sft_reg[7]_1 ),
        .D(sdat_dats_sft[2]),
        .Q(sdat_dats_sft[1]),
        .R(\sdat_dats_sft_reg[7]_0 ));
  FDRE \sdat_dats_sft_reg[2] 
       (.C(clk),
        .CE(\sdat_dats_sft_reg[7]_1 ),
        .D(sdat_dats_sft[3]),
        .Q(sdat_dats_sft[2]),
        .R(\sdat_dats_sft_reg[7]_0 ));
  FDRE \sdat_dats_sft_reg[3] 
       (.C(clk),
        .CE(\sdat_dats_sft_reg[7]_1 ),
        .D(sdat_dats_sft[4]),
        .Q(sdat_dats_sft[3]),
        .R(\sdat_dats_sft_reg[7]_0 ));
  FDRE \sdat_dats_sft_reg[4] 
       (.C(clk),
        .CE(\sdat_dats_sft_reg[7]_1 ),
        .D(sdat_dats_sft[5]),
        .Q(sdat_dats_sft[4]),
        .R(\sdat_dats_sft_reg[7]_0 ));
  FDRE \sdat_dats_sft_reg[5] 
       (.C(clk),
        .CE(\sdat_dats_sft_reg[7]_1 ),
        .D(sdat_dats_sft[6]),
        .Q(sdat_dats_sft[5]),
        .R(\sdat_dats_sft_reg[7]_0 ));
  FDRE \sdat_dats_sft_reg[6] 
       (.C(clk),
        .CE(\sdat_dats_sft_reg[7]_1 ),
        .D(sdat_dats_sft[7]),
        .Q(sdat_dats_sft[6]),
        .R(\sdat_dats_sft_reg[7]_0 ));
  FDSE \sdat_dats_sft_reg[7] 
       (.C(clk),
        .CE(\sdat_dats_sft_reg[7]_1 ),
        .D(\<const0> ),
        .Q(sdat_dats_sft[7]),
        .S(\sdat_dats_sft_reg[7]_0 ));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    sdat_sda_o_i_1
       (.I0(sdat_sda_o_reg_0),
        .I1(sdat_sda_o_i_3_n_0),
        .I2(sdat_sda_o_i_4_n_0),
        .I3(sctl_dtct_sclf),
        .I4(sdat_sda_o),
        .O(sdat_sda_o_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    sdat_sda_o_i_3
       (.I0(sdat_dats_sft[1]),
        .I1(sdat_dats[1]),
        .I2(sdat_dats_sft[0]),
        .I3(sdat_dats[0]),
        .I4(sdat_sda_o_i_6_n_0),
        .O(sdat_sda_o_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    sdat_sda_o_i_4
       (.I0(sdat_dats_sft[7]),
        .I1(sdat_dats[7]),
        .I2(sdat_dats_sft[6]),
        .I3(sdat_dats[6]),
        .I4(sdat_sda_o_i_7_n_0),
        .O(sdat_sda_o_i_4_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    sdat_sda_o_i_6
       (.I0(sdat_dats[3]),
        .I1(sdat_dats_sft[3]),
        .I2(sdat_dats[2]),
        .I3(sdat_dats_sft[2]),
        .O(sdat_sda_o_i_6_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    sdat_sda_o_i_7
       (.I0(sdat_dats[4]),
        .I1(sdat_dats_sft[4]),
        .I2(sdat_dats[5]),
        .I3(sdat_dats_sft[5]),
        .O(sdat_sda_o_i_7_n_0));
  FDSE sdat_sda_o_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sdat_sda_o_i_1_n_0),
        .Q(sdat_sda_o),
        .S(SR));
  FDRE sdat_sraf_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sdat_sraf_reg_0),
        .Q(sdat_sraf),
        .R(SR));
  FDRE sdat_staf_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sdat_staf_reg_0),
        .Q(sdat_staf),
        .R(\<const0> ));
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
  FDRE \stwsdatr_reg[0] 
       (.C(clk),
        .CE(\stwsdatr_reg[7]_2 ),
        .D(Q[0]),
        .Q(\stwsdatr_reg[7]_0 [0]),
        .R(\stwsdatr_reg[7]_1 ));
  FDRE \stwsdatr_reg[1] 
       (.C(clk),
        .CE(\stwsdatr_reg[7]_2 ),
        .D(Q[1]),
        .Q(\stwsdatr_reg[7]_0 [1]),
        .R(\stwsdatr_reg[7]_1 ));
  FDRE \stwsdatr_reg[2] 
       (.C(clk),
        .CE(\stwsdatr_reg[7]_2 ),
        .D(Q[2]),
        .Q(\stwsdatr_reg[7]_0 [2]),
        .R(\stwsdatr_reg[7]_1 ));
  FDRE \stwsdatr_reg[3] 
       (.C(clk),
        .CE(\stwsdatr_reg[7]_2 ),
        .D(Q[3]),
        .Q(\stwsdatr_reg[7]_0 [3]),
        .R(\stwsdatr_reg[7]_1 ));
  FDRE \stwsdatr_reg[4] 
       (.C(clk),
        .CE(\stwsdatr_reg[7]_2 ),
        .D(Q[4]),
        .Q(\stwsdatr_reg[7]_0 [4]),
        .R(\stwsdatr_reg[7]_1 ));
  FDRE \stwsdatr_reg[5] 
       (.C(clk),
        .CE(\stwsdatr_reg[7]_2 ),
        .D(Q[5]),
        .Q(\stwsdatr_reg[7]_0 [5]),
        .R(\stwsdatr_reg[7]_1 ));
  FDRE \stwsdatr_reg[6] 
       (.C(clk),
        .CE(\stwsdatr_reg[7]_2 ),
        .D(Q[6]),
        .Q(\stwsdatr_reg[7]_0 [6]),
        .R(\stwsdatr_reg[7]_1 ));
  FDRE \stwsdatr_reg[7] 
       (.C(clk),
        .CE(\stwsdatr_reg[7]_2 ),
        .D(sdat_datr_sft__0),
        .Q(\stwsdatr_reg[7]_0 [7]),
        .R(\stwsdatr_reg[7]_1 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \stwsdats[7]_i_1 
       (.I0(\stwsdats_reg[7]_0 ),
        .I1(badr[3]),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(badr[2]),
        .O(E));
  FDRE \stwsdats_reg[0] 
       (.C(clk),
        .CE(E),
        .D(bdatw[0]),
        .Q(stwsdats[0]),
        .R(\sdat_dats_sft_reg[7]_0 ));
  FDRE \stwsdats_reg[1] 
       (.C(clk),
        .CE(E),
        .D(bdatw[1]),
        .Q(stwsdats[1]),
        .R(\sdat_dats_sft_reg[7]_0 ));
  FDRE \stwsdats_reg[2] 
       (.C(clk),
        .CE(E),
        .D(bdatw[2]),
        .Q(stwsdats[2]),
        .R(\sdat_dats_sft_reg[7]_0 ));
  FDRE \stwsdats_reg[3] 
       (.C(clk),
        .CE(E),
        .D(bdatw[3]),
        .Q(stwsdats[3]),
        .R(\sdat_dats_sft_reg[7]_0 ));
  FDRE \stwsdats_reg[4] 
       (.C(clk),
        .CE(E),
        .D(bdatw[4]),
        .Q(stwsdats[4]),
        .R(\sdat_dats_sft_reg[7]_0 ));
  FDRE \stwsdats_reg[5] 
       (.C(clk),
        .CE(E),
        .D(bdatw[5]),
        .Q(stwsdats[5]),
        .R(\sdat_dats_sft_reg[7]_0 ));
  FDRE \stwsdats_reg[6] 
       (.C(clk),
        .CE(E),
        .D(bdatw[6]),
        .Q(stwsdats[6]),
        .R(\sdat_dats_sft_reg[7]_0 ));
  FDRE \stwsdats_reg[7] 
       (.C(clk),
        .CE(E),
        .D(bdatw[7]),
        .Q(stwsdats[7]),
        .R(\sdat_dats_sft_reg[7]_0 ));
endmodule

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
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_stws_n;
  wire [10:0]\^bdatr ;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire [11:11]\fsm/p_0_in ;
  wire \fsm/sctl_lat_rv_t ;
  wire \fsm/sctl_sft_rv ;
  wire \fsm/sctl_sft_sd ;
  wire p_1_in;
  wire rst_n;
  wire sadr_n_0;
  wire sadr_n_2;
  wire sctl_dtct_sclf;
  wire sctl_lat_rv;
  wire sctl_n_0;
  wire sctl_n_10;
  wire sctl_n_11;
  wire sctl_n_27;
  wire sctl_n_28;
  wire sctl_n_4;
  wire sctl_rst_sd;
  wire sctl_sda_s;
  wire sctl_srae;
  wire sctl_stae;
  wire sctl_stwsdats_wr;
  wire [6:0]sdat_datr_sft;
  wire sdat_sda_o;
  wire sdat_sraf;
  wire sdat_staf;
  wire stws_scl_i;
  wire stws_scl_o;
  wire stws_sda_i;
  wire stws_sda_o;
  wire stws_srar;
  wire stws_star;
  wire [6:0]stwsadr;
  wire [7:0]stwsdatr;
  wire [6:0]stwsmsk;

  assign bdatr[15] = \<const0> ;
  assign bdatr[14] = \<const0> ;
  assign bdatr[13] = \<const0> ;
  assign bdatr[12] = \<const0> ;
  assign bdatr[11] = \<const0> ;
  assign bdatr[10:0] = \^bdatr [10:0];
  GND GND
       (.G(\<const0> ));
  stws_sadr sadr
       (.Q(\fsm/p_0_in ),
        .SR(sctl_n_0),
        .badr(badr),
        .bcmdw(bcmdw),
        .bcs_stws_n(bcs_stws_n),
        .bdatw(bdatw[6:0]),
        .brdy(brdy),
        .brdy_0(sadr_n_0),
        .clk(clk),
        .sctl_lat_rv_reg(sctl_n_10),
        .sctl_lat_rv_reg_0(sdat_datr_sft),
        .sctl_lat_rv_t(\fsm/sctl_lat_rv_t ),
        .\stwsadr_reg[6]_0 (stwsadr),
        .\stwsmsk_reg[0]_0 (sadr_n_2),
        .\stwsmsk_reg[6]_0 (stwsmsk));
  stws_sctl sctl
       (.D(sctl_sda_s),
        .E(sctl_lat_rv),
        .Q(\fsm/p_0_in ),
        .SR(sctl_n_0),
        .badr(badr),
        .bcmdr(bcmdr),
        .bcs_stws_n(bcs_stws_n),
        .bdatr(\^bdatr ),
        .\bdatr[6] (stwsmsk),
        .\bdatr[6]_0 (stwsadr),
        .\bdatr[7] (stwsdatr),
        .bdatw({bdatw[15],bdatw[1:0]}),
        .brdy(brdy),
        .clk(clk),
        .mctl_srst_reg_0(sadr_n_0),
        .rst_n(rst_n),
        .rst_n_0(sctl_n_11),
        .sctl_ack_stat_reg_0(sctl_rst_sd),
        .sctl_dtct_sclf(sctl_dtct_sclf),
        .sctl_dtct_sclr_reg_0(p_1_in),
        .sctl_dtct_sclr_reg_1(\fsm/sctl_sft_rv ),
        .sctl_dtct_sclr_reg_2(sctl_n_10),
        .sctl_lat_rv_t(\fsm/sctl_lat_rv_t ),
        .sctl_read_reg_0(sdat_datr_sft[0]),
        .sctl_sda_o_reg_0(sadr_n_2),
        .sctl_srae(sctl_srae),
        .sctl_stae(sctl_stae),
        .sctl_stwsdatr_rd_reg_0(sctl_n_27),
        .sdat_sda_o(sdat_sda_o),
        .sdat_sraf(sdat_sraf),
        .sdat_staf(sdat_staf),
        .sdat_staf_reg(sctl_n_4),
        .sdat_staf_reg_0(sctl_stwsdats_wr),
        .\stat_reg[3] (sctl_n_28),
        .\stat_reg[4] (\fsm/sctl_sft_sd ),
        .stws_scl_i(stws_scl_i),
        .stws_scl_o(stws_scl_o),
        .stws_sda_i(stws_sda_i),
        .stws_sda_o(stws_sda_o));
  stws_sdat sdat
       (.D(sctl_sda_s),
        .E(sctl_stwsdats_wr),
        .Q(sdat_datr_sft),
        .SR(sctl_n_0),
        .badr(badr),
        .bdatw(bdatw[7:0]),
        .clk(clk),
        .sctl_dtct_sclf(sctl_dtct_sclf),
        .sctl_srae(sctl_srae),
        .sctl_stae(sctl_stae),
        .\sdat_datr_sft_reg[7]_0 (\fsm/sctl_sft_rv ),
        .\sdat_dats_reg[7]_0 (sctl_rst_sd),
        .\sdat_dats_sft_reg[7]_0 (p_1_in),
        .\sdat_dats_sft_reg[7]_1 (\fsm/sctl_sft_sd ),
        .sdat_sda_o(sdat_sda_o),
        .sdat_sda_o_reg_0(sctl_n_28),
        .sdat_sraf(sdat_sraf),
        .sdat_sraf_reg_0(sctl_n_27),
        .sdat_staf(sdat_staf),
        .sdat_staf_reg_0(sctl_n_4),
        .stws_srar(stws_srar),
        .stws_star(stws_star),
        .\stwsdatr_reg[7]_0 (stwsdatr),
        .\stwsdatr_reg[7]_1 (sctl_n_11),
        .\stwsdatr_reg[7]_2 (sctl_lat_rv),
        .\stwsdats_reg[7]_0 (sadr_n_0));
endmodule
