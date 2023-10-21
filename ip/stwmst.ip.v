
module stwm_fsm
   (mctl_lat_rv_reg_0,
    rst_n_0,
    mdat_trg_wr_reg,
    \stat_reg[2]_0 ,
    lcnt0,
    mctl_clk_gen,
    rst_n_1,
    stwm_sda_o,
    mctl_dtct_sclf_reg,
    \stat_reg[0]_0 ,
    Q,
    S,
    D,
    stwm_scl_o,
    mdat_rcv_nack_reg,
    mdat_trg_sp_reg,
    mdat_trg_rd_reg,
    mctl_lat_rv_reg_1,
    mctl_dtct_sclr_reg,
    \synfil_sda_reg[3] ,
    mctl_mrst_reg,
    mctl_lat_rv_reg_2,
    \stat_reg[4]_0 ,
    clk,
    rst_n,
    \tcnt_reg[15] ,
    p_16_in,
    bdatw,
    mdat_trg_wr,
    E,
    mctl_bus_err,
    CO,
    mdat_sda_o,
    mctl_lat_rv_reg_3,
    mctl_dtct_sclr,
    mctl_tmr_ovf_carry__0,
    mctl_tmr_ovf_carry__0_0,
    \tcnt_cmp_reg[15] ,
    \stat_reg[3]_0 ,
    \stat_reg[0]_1 ,
    \stat[0]_i_3_0 ,
    \stat_reg[4]_1 ,
    mctl_sda_o_reg_0,
    \stat_reg[1]_0 ,
    mctl_scl_o_reg_0,
    \stat_reg[2]_1 ,
    \tcnt_cmp[15]_i_4_0 ,
    \tcnt_cmp[15]_i_4_1 ,
    mctl_sda_o_reg_1,
    mclk_scl_o,
    mdat_rcv_nack,
    mctl_stwmreqr_wr,
    mdat_trg_sp,
    mdat_trg_rd,
    mctl_stwmdatr_rd,
    mdat_mraf,
    mctl_mtef,
    mctl_ack_stat_reg,
    mctl_ack_stat,
    mctl_bus_err_reg);
  output mctl_lat_rv_reg_0;
  output rst_n_0;
  output mdat_trg_wr_reg;
  output [0:0]\stat_reg[2]_0 ;
  output lcnt0;
  output mctl_clk_gen;
  output rst_n_1;
  output stwm_sda_o;
  output [0:0]mctl_dtct_sclf_reg;
  output \stat_reg[0]_0 ;
  output [3:0]Q;
  output [1:0]S;
  output [14:0]D;
  output stwm_scl_o;
  output mdat_rcv_nack_reg;
  output mdat_trg_sp_reg;
  output mdat_trg_rd_reg;
  output mctl_lat_rv_reg_1;
  output mctl_dtct_sclr_reg;
  output \synfil_sda_reg[3] ;
  output [0:0]mctl_mrst_reg;
  output [0:0]mctl_lat_rv_reg_2;
  output [0:0]\stat_reg[4]_0 ;
  input clk;
  input rst_n;
  input \tcnt_reg[15] ;
  input p_16_in;
  input [4:0]bdatw;
  input mdat_trg_wr;
  input [0:0]E;
  input mctl_bus_err;
  input [0:0]CO;
  input mdat_sda_o;
  input mctl_lat_rv_reg_3;
  input mctl_dtct_sclr;
  input [3:0]mctl_tmr_ovf_carry__0;
  input [3:0]mctl_tmr_ovf_carry__0_0;
  input [14:0]\tcnt_cmp_reg[15] ;
  input \stat_reg[3]_0 ;
  input \stat_reg[0]_1 ;
  input \stat[0]_i_3_0 ;
  input \stat_reg[4]_1 ;
  input mctl_sda_o_reg_0;
  input [0:0]\stat_reg[1]_0 ;
  input mctl_scl_o_reg_0;
  input \stat_reg[2]_1 ;
  input \tcnt_cmp[15]_i_4_0 ;
  input \tcnt_cmp[15]_i_4_1 ;
  input mctl_sda_o_reg_1;
  input mclk_scl_o;
  input mdat_rcv_nack;
  input mctl_stwmreqr_wr;
  input mdat_trg_sp;
  input mdat_trg_rd;
  input mctl_stwmdatr_rd;
  input mdat_mraf;
  input mctl_mtef;
  input [2:0]mctl_ack_stat_reg;
  input mctl_ack_stat;
  input [0:0]mctl_bus_err_reg;

  wire \<const1> ;
  wire [0:0]CO;
  wire [14:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [1:0]S;
  wire [4:0]bdatw;
  wire clk;
  wire lcnt0;
  wire \lcnt[0]_i_6_n_0 ;
  wire \lcnt[0]_i_7_n_0 ;
  wire \lcnt[0]_i_8_n_0 ;
  wire \lcnt[0]_i_9_n_0 ;
  wire mclk_scl_o;
  wire mctl_ack_stat;
  wire [2:0]mctl_ack_stat_reg;
  wire mctl_arb;
  wire mctl_bus_err;
  wire mctl_bus_err_i_2_n_0;
  wire mctl_bus_err_i_4_n_0;
  wire mctl_bus_err_i_5_n_0;
  wire mctl_bus_err_i_6_n_0;
  wire [0:0]mctl_bus_err_reg;
  wire mctl_clk_gen;
  wire [0:0]mctl_dtct_sclf_reg;
  wire mctl_dtct_sclr;
  wire mctl_dtct_sclr_reg;
  wire mctl_lat_ack;
  wire mctl_lat_ack_t;
  wire mctl_lat_rv_reg_0;
  wire mctl_lat_rv_reg_1;
  wire [0:0]mctl_lat_rv_reg_2;
  wire mctl_lat_rv_reg_3;
  wire mctl_lat_rv_t;
  wire [0:0]mctl_mrst_reg;
  wire mctl_mtef;
  wire mctl_scl_o;
  wire mctl_scl_o_i_2_n_0;
  wire mctl_scl_o_i_3_n_0;
  wire mctl_scl_o_reg_0;
  wire mctl_scl_o_t;
  wire mctl_sda_o;
  wire mctl_sda_o_i_2_n_0;
  wire mctl_sda_o_i_3_n_0;
  wire mctl_sda_o_i_4_n_0;
  wire mctl_sda_o_i_6_n_0;
  wire mctl_sda_o_reg_0;
  wire mctl_sda_o_reg_1;
  wire mctl_sda_o_t;
  wire mctl_stp_done;
  wire mctl_stwmdatr_rd;
  wire mctl_stwmreqr_wr;
  wire [2:0]mctl_tmr_0;
  wire [3:0]mctl_tmr_ovf_carry__0;
  wire [3:0]mctl_tmr_ovf_carry__0_0;
  wire \mdat_dats[7]_i_2_n_0 ;
  wire \mdat_dats[7]_i_3_n_0 ;
  wire \mdat_dats[7]_i_4_n_0 ;
  wire mdat_mraf;
  wire mdat_rcv_nack;
  wire mdat_rcv_nack_reg;
  wire mdat_sda_o;
  wire mdat_trg_rd;
  wire mdat_trg_rd_reg;
  wire mdat_trg_sp;
  wire mdat_trg_sp_reg;
  wire mdat_trg_wr;
  wire mdat_trg_wr_reg;
  wire p_16_in;
  wire rst_n;
  wire rst_n_0;
  wire rst_n_1;
  wire [2:2]stat;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_3_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_5_n_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_4_n_0 ;
  wire \stat[1]_i_5_n_0 ;
  wire \stat[2]_i_2_n_0 ;
  wire \stat[2]_i_3_n_0 ;
  wire \stat[3]_i_2_n_0 ;
  wire \stat[3]_i_3_n_0 ;
  wire \stat[3]_i_4_n_0 ;
  wire \stat[3]_i_6_n_0 ;
  wire \stat[4]_i_1_n_0 ;
  wire \stat[4]_i_5_n_0 ;
  wire \stat[4]_i_6_n_0 ;
  wire \stat[4]_i_7_n_0 ;
  wire [4:0]stat_nx;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire [0:0]\stat_reg[1]_0 ;
  wire [0:0]\stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[3]_0 ;
  wire [0:0]\stat_reg[4]_0 ;
  wire \stat_reg[4]_1 ;
  wire \stat_reg[4]_i_4_n_0 ;
  wire stwm_scl_o;
  wire stwm_sda_o;
  wire \synfil_sda_reg[3] ;
  wire \tcnt_cmp[15]_i_10_n_0 ;
  wire \tcnt_cmp[15]_i_11_n_0 ;
  wire \tcnt_cmp[15]_i_12_n_0 ;
  wire \tcnt_cmp[15]_i_13_n_0 ;
  wire \tcnt_cmp[15]_i_14_n_0 ;
  wire \tcnt_cmp[15]_i_15_n_0 ;
  wire \tcnt_cmp[15]_i_16_n_0 ;
  wire \tcnt_cmp[15]_i_17_n_0 ;
  wire \tcnt_cmp[15]_i_4_0 ;
  wire \tcnt_cmp[15]_i_4_1 ;
  wire \tcnt_cmp[15]_i_4_n_0 ;
  wire \tcnt_cmp[15]_i_5_n_0 ;
  wire \tcnt_cmp[15]_i_6_n_0 ;
  wire \tcnt_cmp[15]_i_7_n_0 ;
  wire \tcnt_cmp[15]_i_8_n_0 ;
  wire \tcnt_cmp[6]_i_3_n_0 ;
  wire \tcnt_cmp[6]_i_4_n_0 ;
  wire [14:0]\tcnt_cmp_reg[15] ;
  wire \tcnt_reg[15] ;

  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'hEF)) 
    \lcnt[0]_i_1 
       (.I0(mctl_clk_gen),
        .I1(\tcnt_reg[15] ),
        .I2(rst_n),
        .O(lcnt0));
  LUT6 #(
    .INIT(64'hBBBBBBB8B8B8BBB8)) 
    \lcnt[0]_i_4 
       (.I0(\stat_reg[3]_0 ),
        .I1(\lcnt[0]_i_6_n_0 ),
        .I2(\lcnt[0]_i_7_n_0 ),
        .I3(\lcnt[0]_i_8_n_0 ),
        .I4(Q[0]),
        .I5(\lcnt[0]_i_9_n_0 ),
        .O(mctl_clk_gen));
  LUT6 #(
    .INIT(64'h4400000044000001)) 
    \lcnt[0]_i_6 
       (.I0(stat),
        .I1(Q[0]),
        .I2(mctl_sda_o_reg_0),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\lcnt[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5400)) 
    \lcnt[0]_i_7 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(stat),
        .I3(mctl_lat_rv_reg_3),
        .O(\lcnt[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h40400C0000000C00)) 
    \lcnt[0]_i_8 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(stat),
        .I3(mctl_lat_rv_reg_3),
        .I4(Q[1]),
        .I5(CO),
        .O(\lcnt[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \lcnt[0]_i_9 
       (.I0(mctl_lat_rv_reg_3),
        .I1(Q[2]),
        .O(\lcnt[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h17FFFFFF17000000)) 
    mctl_ack_stat_i_1
       (.I0(mctl_ack_stat_reg[1]),
        .I1(mctl_ack_stat_reg[2]),
        .I2(mctl_ack_stat_reg[0]),
        .I3(mctl_lat_ack),
        .I4(mctl_dtct_sclr),
        .I5(mctl_ack_stat),
        .O(\synfil_sda_reg[3] ));
  LUT5 #(
    .INIT(32'h00080808)) 
    mctl_bus_err_i_1
       (.I0(mctl_bus_err_i_2_n_0),
        .I1(rst_n),
        .I2(\tcnt_reg[15] ),
        .I3(p_16_in),
        .I4(bdatw[4]),
        .O(rst_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00E00000)) 
    mctl_bus_err_i_2
       (.I0(mdat_sda_o),
        .I1(mctl_sda_o),
        .I2(mctl_dtct_sclr),
        .I3(mctl_bus_err_reg),
        .I4(mctl_arb),
        .I5(mctl_bus_err),
        .O(mctl_bus_err_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002000)) 
    mctl_bus_err_i_3
       (.I0(stat),
        .I1(Q[3]),
        .I2(CO),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(mctl_bus_err_i_4_n_0),
        .O(mctl_arb));
  LUT5 #(
    .INIT(32'h1010101F)) 
    mctl_bus_err_i_4
       (.I0(stat),
        .I1(mctl_bus_err_i_5_n_0),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(mctl_bus_err_i_6_n_0),
        .O(mctl_bus_err_i_4_n_0));
  LUT6 #(
    .INIT(64'hBFB0F0FFBFBFFFF0)) 
    mctl_bus_err_i_5
       (.I0(\stat_reg[1]_0 ),
        .I1(mdat_trg_wr),
        .I2(Q[1]),
        .I3(mctl_lat_rv_reg_3),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(mctl_bus_err_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000011111101)) 
    mctl_bus_err_i_6
       (.I0(Q[1]),
        .I1(stat),
        .I2(mdat_trg_wr),
        .I3(mctl_sda_o_reg_0),
        .I4(\stat_reg[1]_0 ),
        .I5(Q[0]),
        .O(mctl_bus_err_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000600)) 
    mctl_lat_ack_i_1
       (.I0(Q[0]),
        .I1(mctl_lat_rv_reg_3),
        .I2(stat),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(mctl_lat_ack_t));
  FDRE mctl_lat_ack_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_lat_ack_t),
        .Q(mctl_lat_ack),
        .R(\stat[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    mctl_lat_rv_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(stat),
        .I4(Q[3]),
        .I5(mctl_lat_rv_reg_3),
        .O(mctl_lat_rv_t));
  FDRE mctl_lat_rv_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_lat_rv_t),
        .Q(mctl_lat_rv_reg_0),
        .R(\stat[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8FFFFFFF8888)) 
    mctl_mtef_i_1
       (.I0(mctl_dtct_sclr),
        .I1(mctl_lat_ack),
        .I2(p_16_in),
        .I3(bdatw[3]),
        .I4(mctl_stp_done),
        .I5(mctl_mtef),
        .O(mctl_dtct_sclr_reg));
  LUT6 #(
    .INIT(64'h0101010101010100)) 
    mctl_scl_o_i_2
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(mctl_scl_o_reg_0),
        .I4(mctl_sda_o_reg_0),
        .I5(Q[3]),
        .O(mctl_scl_o_i_2_n_0));
  LUT5 #(
    .INIT(32'hA8A0A28A)) 
    mctl_scl_o_i_3
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(CO),
        .I4(Q[1]),
        .O(mctl_scl_o_i_3_n_0));
  FDSE mctl_scl_o_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_scl_o_t),
        .Q(mctl_scl_o),
        .S(\stat[4]_i_1_n_0 ));
  MUXF7 mctl_scl_o_reg_i_1
       (.I0(mctl_scl_o_i_2_n_0),
        .I1(mctl_scl_o_i_3_n_0),
        .O(mctl_scl_o_t),
        .S(stat));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    mctl_sda_o_i_1
       (.I0(mctl_sda_o_i_2_n_0),
        .I1(Q[3]),
        .I2(mctl_sda_o_i_3_n_0),
        .I3(Q[2]),
        .I4(mctl_sda_o_i_4_n_0),
        .I5(stat),
        .O(mctl_sda_o_t));
  LUT6 #(
    .INIT(64'hFBFBFBFBFB383B3B)) 
    mctl_sda_o_i_2
       (.I0(mctl_sda_o_reg_1),
        .I1(Q[2]),
        .I2(stat),
        .I3(Q[0]),
        .I4(CO),
        .I5(Q[1]),
        .O(mctl_sda_o_i_2_n_0));
  LUT6 #(
    .INIT(64'hAA51FFFFAA510000)) 
    mctl_sda_o_i_3
       (.I0(Q[1]),
        .I1(CO),
        .I2(mctl_sda_o_reg_0),
        .I3(Q[0]),
        .I4(stat),
        .I5(mctl_sda_o_i_6_n_0),
        .O(mctl_sda_o_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000055544454)) 
    mctl_sda_o_i_4
       (.I0(Q[0]),
        .I1(mctl_sda_o_reg_0),
        .I2(\stat_reg[4]_1 ),
        .I3(mdat_trg_wr),
        .I4(\stat_reg[1]_0 ),
        .I5(Q[1]),
        .O(mctl_sda_o_i_4_n_0));
  LUT5 #(
    .INIT(32'h800F8F00)) 
    mctl_sda_o_i_6
       (.I0(\stat_reg[1]_0 ),
        .I1(mdat_trg_wr),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(mctl_lat_rv_reg_3),
        .O(mctl_sda_o_i_6_n_0));
  FDSE mctl_sda_o_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_sda_o_t),
        .Q(mctl_sda_o),
        .S(\stat[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    mctl_tmr_ovf_carry__0_i_1
       (.I0(mctl_tmr_ovf_carry__0_0[3]),
        .I1(mctl_tmr_ovf_carry__0[3]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mctl_tmr_ovf_carry__0_i_2
       (.I0(mctl_tmr_ovf_carry__0[0]),
        .I1(mctl_tmr_ovf_carry__0_0[0]),
        .I2(mctl_tmr_ovf_carry__0_0[2]),
        .I3(mctl_tmr_ovf_carry__0[2]),
        .I4(mctl_tmr_ovf_carry__0_0[1]),
        .I5(mctl_tmr_ovf_carry__0[1]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h4000000040000040)) 
    \mdat_dats[7]_i_2 
       (.I0(\stat_reg[1]_0 ),
        .I1(mdat_trg_wr),
        .I2(\mdat_dats[7]_i_4_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\mdat_dats[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \mdat_dats[7]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(CO),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(\mdat_dats[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA1)) 
    \mdat_dats[7]_i_4 
       (.I0(Q[0]),
        .I1(mctl_sda_o_reg_0),
        .I2(Q[1]),
        .O(\mdat_dats[7]_i_4_n_0 ));
  MUXF7 \mdat_dats_reg[7]_i_1 
       (.I0(\mdat_dats[7]_i_2_n_0 ),
        .I1(\mdat_dats[7]_i_3_n_0 ),
        .O(\stat_reg[2]_0 ),
        .S(stat));
  LUT6 #(
    .INIT(64'h1010101010101000)) 
    \mdat_dats_sft[7]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(mctl_lat_rv_reg_3),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(stat),
        .O(\stat_reg[4]_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    mdat_mraf_i_1
       (.I0(mctl_lat_rv_reg_0),
        .I1(mctl_stwmdatr_rd),
        .I2(mdat_mraf),
        .O(mctl_lat_rv_reg_1));
  LUT4 #(
    .INIT(16'h1000)) 
    mdat_nak_rv_i_1
       (.I0(\stat_reg[0]_0 ),
        .I1(mctl_lat_rv_reg_3),
        .I2(Q[3]),
        .I3(mctl_dtct_sclr),
        .O(mctl_dtct_sclf_reg));
  LUT4 #(
    .INIT(16'hFE01)) 
    mdat_nak_rv_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(stat),
        .I3(Q[2]),
        .O(\stat_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h0000F222)) 
    mdat_rcv_nack_i_1
       (.I0(mdat_rcv_nack),
        .I1(mctl_lat_rv_reg_0),
        .I2(mctl_stwmreqr_wr),
        .I3(bdatw[1]),
        .I4(\stat[4]_i_1_n_0 ),
        .O(mdat_rcv_nack_reg));
  LUT5 #(
    .INIT(32'h0000F222)) 
    mdat_trg_rd_i_1
       (.I0(mdat_trg_rd),
        .I1(mctl_lat_rv_reg_0),
        .I2(mctl_stwmreqr_wr),
        .I3(bdatw[0]),
        .I4(\stat[4]_i_1_n_0 ),
        .O(mdat_trg_rd_reg));
  LUT5 #(
    .INIT(32'h0000F222)) 
    mdat_trg_sp_i_1
       (.I0(mdat_trg_sp),
        .I1(mctl_stp_done),
        .I2(mctl_stwmreqr_wr),
        .I3(bdatw[2]),
        .I4(\stat[4]_i_1_n_0 ),
        .O(mdat_trg_sp_reg));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    mdat_trg_sp_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(CO),
        .I3(Q[0]),
        .I4(stat),
        .I5(Q[3]),
        .O(mctl_stp_done));
  LUT6 #(
    .INIT(64'h0000000E00000000)) 
    mdat_trg_wr_i_1
       (.I0(mdat_trg_wr),
        .I1(E),
        .I2(mctl_bus_err),
        .I3(\stat_reg[2]_0 ),
        .I4(\tcnt_reg[15] ),
        .I5(rst_n),
        .O(mdat_trg_wr_reg));
  LUT6 #(
    .INIT(64'h8BB8FFFF8BB80000)) 
    \stat[0]_i_1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(mctl_lat_rv_reg_3),
        .I3(Q[0]),
        .I4(stat),
        .I5(\stat[0]_i_3_n_0 ),
        .O(stat_nx[0]));
  LUT5 #(
    .INIT(32'h00666626)) 
    \stat[0]_i_2 
       (.I0(Q[0]),
        .I1(CO),
        .I2(mctl_sda_o_reg_0),
        .I3(Q[3]),
        .I4(Q[1]),
        .O(\stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5F5CFFFF5F5C0000)) 
    \stat[0]_i_3 
       (.I0(mctl_lat_rv_reg_3),
        .I1(mdat_trg_wr),
        .I2(\tcnt_cmp[15]_i_10_n_0 ),
        .I3(\stat_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\stat[0]_i_5_n_0 ),
        .O(\stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCACAACA0CACFACAF)) 
    \stat[0]_i_5 
       (.I0(mctl_lat_rv_reg_3),
        .I1(CO),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\stat[0]_i_3_0 ),
        .O(\stat[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \stat[1]_i_1 
       (.I0(\stat[1]_i_2_n_0 ),
        .I1(\stat[1]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\stat[1]_i_4_n_0 ),
        .I4(\stat[1]_i_5_n_0 ),
        .O(stat_nx[1]));
  LUT5 #(
    .INIT(32'h13205720)) 
    \stat[1]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(mctl_lat_rv_reg_3),
        .I3(Q[1]),
        .I4(CO),
        .O(\stat[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1F1F1F1F1F1F101F)) 
    \stat[1]_i_3 
       (.I0(CO),
        .I1(Q[3]),
        .I2(stat),
        .I3(Q[0]),
        .I4(\stat_reg[4]_1 ),
        .I5(mdat_trg_wr),
        .O(\stat[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \stat[1]_i_4 
       (.I0(Q[0]),
        .I1(mctl_lat_rv_reg_3),
        .I2(stat),
        .I3(CO),
        .O(\stat[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA2AAA)) 
    \stat[1]_i_5 
       (.I0(Q[2]),
        .I1(mdat_trg_wr),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(stat),
        .I5(\stat_reg[1]_0 ),
        .O(\stat[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFF888F8)) 
    \stat[2]_i_1 
       (.I0(\stat[3]_i_2_n_0 ),
        .I1(stat),
        .I2(\stat[2]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(\stat[2]_i_3_n_0 ),
        .O(stat_nx[2]));
  LUT5 #(
    .INIT(32'h33FFC00A)) 
    \stat[2]_i_2 
       (.I0(\stat[3]_i_6_n_0 ),
        .I1(mctl_lat_rv_reg_3),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(stat),
        .O(\stat[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080008000808880)) 
    \stat[2]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\stat_reg[2]_1 ),
        .I3(stat),
        .I4(Q[3]),
        .I5(CO),
        .O(\stat[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFF888F8)) 
    \stat[3]_i_1 
       (.I0(\stat[3]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\stat[3]_i_3_n_0 ),
        .I3(stat),
        .I4(\stat[3]_i_4_n_0 ),
        .O(stat_nx[3]));
  LUT5 #(
    .INIT(32'h33337747)) 
    \stat[3]_i_2 
       (.I0(CO),
        .I1(Q[1]),
        .I2(mctl_sda_o_reg_0),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(\stat[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h44CC44FC)) 
    \stat[3]_i_3 
       (.I0(\stat_reg[3]_0 ),
        .I1(Q[2]),
        .I2(\stat[3]_i_6_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\stat[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080008000808880)) 
    \stat[3]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(mctl_lat_rv_reg_3),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(CO),
        .O(\stat[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \stat[3]_i_6 
       (.I0(CO),
        .I1(Q[3]),
        .I2(\stat_reg[2]_1 ),
        .I3(mctl_sda_o_reg_0),
        .O(\stat[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \stat[4]_i_1 
       (.I0(mctl_bus_err),
        .I1(\tcnt_reg[15] ),
        .I2(rst_n),
        .O(\stat[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFEFFFEF0000)) 
    \stat[4]_i_2 
       (.I0(mdat_trg_wr),
        .I1(Q[3]),
        .I2(\stat_reg[4]_1 ),
        .I3(stat),
        .I4(\stat_reg[4]_i_4_n_0 ),
        .I5(\stat[4]_i_5_n_0 ),
        .O(stat_nx[4]));
  LUT5 #(
    .INIT(32'h02AAA2A2)) 
    \stat[4]_i_5 
       (.I0(Q[3]),
        .I1(CO),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\stat[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h30300000FC300001)) 
    \stat[4]_i_6 
       (.I0(mctl_sda_o_reg_0),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(mdat_trg_wr),
        .O(\stat[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h28202020)) 
    \stat[4]_i_7 
       (.I0(CO),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\stat[4]_i_7_n_0 ));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[0]),
        .Q(Q[0]),
        .R(\stat[4]_i_1_n_0 ));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[1]),
        .Q(Q[1]),
        .R(\stat[4]_i_1_n_0 ));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[2]),
        .Q(stat),
        .R(\stat[4]_i_1_n_0 ));
  FDRE \stat_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[3]),
        .Q(Q[2]),
        .R(\stat[4]_i_1_n_0 ));
  FDRE \stat_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[4]),
        .Q(Q[3]),
        .R(\stat[4]_i_1_n_0 ));
  MUXF7 \stat_reg[4]_i_4 
       (.I0(\stat[4]_i_6_n_0 ),
        .I1(\stat[4]_i_7_n_0 ),
        .O(\stat_reg[4]_i_4_n_0 ),
        .S(stat));
  LUT2 #(
    .INIT(4'hE)) 
    stwm_scl_o_INST_0
       (.I0(mctl_scl_o),
        .I1(mclk_scl_o),
        .O(stwm_scl_o));
  LUT2 #(
    .INIT(4'hE)) 
    stwm_sda_o_INST_0
       (.I0(mctl_sda_o),
        .I1(mdat_sda_o),
        .O(stwm_sda_o));
  LUT4 #(
    .INIT(16'hF4FF)) 
    \stwmdatr[7]_i_1 
       (.I0(mctl_lat_rv_reg_0),
        .I1(mctl_stwmdatr_rd),
        .I2(\tcnt_reg[15] ),
        .I3(rst_n),
        .O(mctl_lat_rv_reg_2));
  LUT3 #(
    .INIT(8'hEF)) 
    \stwmdats[8]_i_1 
       (.I0(\stat_reg[2]_0 ),
        .I1(\tcnt_reg[15] ),
        .I2(rst_n),
        .O(mctl_mrst_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFDDDDDDDF)) 
    \tcnt[0]_i_1 
       (.I0(rst_n),
        .I1(\tcnt_reg[15] ),
        .I2(mctl_tmr_0[1]),
        .I3(mctl_tmr_0[0]),
        .I4(mctl_tmr_0[2]),
        .I5(CO),
        .O(rst_n_1));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[10]_i_1 
       (.I0(mctl_tmr_0[2]),
        .I1(mctl_tmr_0[1]),
        .I2(\tcnt_cmp_reg[15] [9]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(D[9]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[11]_i_1 
       (.I0(mctl_tmr_0[2]),
        .I1(mctl_tmr_0[1]),
        .I2(\tcnt_cmp_reg[15] [10]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(D[10]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[12]_i_1 
       (.I0(mctl_tmr_0[2]),
        .I1(mctl_tmr_0[1]),
        .I2(\tcnt_cmp_reg[15] [11]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(D[11]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[13]_i_1 
       (.I0(mctl_tmr_0[2]),
        .I1(mctl_tmr_0[1]),
        .I2(\tcnt_cmp_reg[15] [12]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(D[12]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[14]_i_1 
       (.I0(mctl_tmr_0[2]),
        .I1(mctl_tmr_0[1]),
        .I2(\tcnt_cmp_reg[15] [13]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(D[13]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[15]_i_1 
       (.I0(mctl_tmr_0[2]),
        .I1(mctl_tmr_0[1]),
        .I2(\tcnt_cmp_reg[15] [14]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(D[14]));
  LUT2 #(
    .INIT(4'h7)) 
    \tcnt_cmp[15]_i_10 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\tcnt_cmp[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000002AAAA0002)) 
    \tcnt_cmp[15]_i_11 
       (.I0(\tcnt_cmp[15]_i_16_n_0 ),
        .I1(\stat_reg[0]_1 ),
        .I2(mdat_trg_wr),
        .I3(mctl_sda_o_reg_0),
        .I4(Q[3]),
        .I5(CO),
        .O(\tcnt_cmp[15]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00008494)) 
    \tcnt_cmp[15]_i_12 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(CO),
        .I3(mctl_sda_o_reg_0),
        .I4(Q[3]),
        .O(\tcnt_cmp[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAEAAFEA)) 
    \tcnt_cmp[15]_i_13 
       (.I0(\tcnt_cmp[6]_i_4_n_0 ),
        .I1(mctl_lat_rv_reg_3),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(CO),
        .I5(\tcnt_cmp[15]_i_17_n_0 ),
        .O(\tcnt_cmp[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h888888B8B8B888B8)) 
    \tcnt_cmp[15]_i_14 
       (.I0(\tcnt_cmp[15]_i_4_0 ),
        .I1(Q[0]),
        .I2(\tcnt_cmp[15]_i_16_n_0 ),
        .I3(\tcnt_cmp[15]_i_4_1 ),
        .I4(Q[3]),
        .I5(CO),
        .O(\tcnt_cmp[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \tcnt_cmp[15]_i_15 
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(\tcnt_cmp[15]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tcnt_cmp[15]_i_16 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\tcnt_cmp[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \tcnt_cmp[15]_i_17 
       (.I0(stat),
        .I1(Q[2]),
        .O(\tcnt_cmp[15]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hAAFEAAAE)) 
    \tcnt_cmp[15]_i_2 
       (.I0(\tcnt_cmp[15]_i_5_n_0 ),
        .I1(\tcnt_cmp[15]_i_6_n_0 ),
        .I2(stat),
        .I3(Q[1]),
        .I4(\tcnt_cmp[15]_i_7_n_0 ),
        .O(mctl_tmr_0[2]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \tcnt_cmp[15]_i_3 
       (.I0(\tcnt_cmp[15]_i_8_n_0 ),
        .I1(stat),
        .I2(\stat_reg[2]_1 ),
        .I3(\tcnt_cmp[15]_i_10_n_0 ),
        .I4(Q[0]),
        .I5(\tcnt_cmp[15]_i_11_n_0 ),
        .O(mctl_tmr_0[1]));
  LUT6 #(
    .INIT(64'h07070FF0F8F80FF0)) 
    \tcnt_cmp[15]_i_4 
       (.I0(Q[2]),
        .I1(\tcnt_cmp[15]_i_12_n_0 ),
        .I2(\tcnt_cmp[15]_i_13_n_0 ),
        .I3(\tcnt_cmp[15]_i_14_n_0 ),
        .I4(stat),
        .I5(\tcnt_cmp[15]_i_8_n_0 ),
        .O(\tcnt_cmp[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \tcnt_cmp[15]_i_5 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(CO),
        .I3(Q[3]),
        .I4(stat),
        .I5(Q[0]),
        .O(\tcnt_cmp[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF400040)) 
    \tcnt_cmp[15]_i_6 
       (.I0(mctl_sda_o_reg_0),
        .I1(mdat_trg_wr),
        .I2(\stat_reg[1]_0 ),
        .I3(Q[3]),
        .I4(CO),
        .I5(\tcnt_cmp[15]_i_15_n_0 ),
        .O(\tcnt_cmp[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8A808AA2)) 
    \tcnt_cmp[15]_i_7 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(CO),
        .I3(Q[0]),
        .I4(mctl_sda_o_reg_0),
        .O(\tcnt_cmp[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0222A808)) 
    \tcnt_cmp[15]_i_8 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(CO),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(\tcnt_cmp[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[1]_i_1 
       (.I0(mctl_tmr_0[2]),
        .I1(mctl_tmr_0[1]),
        .I2(\tcnt_cmp_reg[15] [0]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[2]_i_1 
       (.I0(mctl_tmr_0[2]),
        .I1(mctl_tmr_0[1]),
        .I2(\tcnt_cmp_reg[15] [1]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[3]_i_1 
       (.I0(mctl_tmr_0[2]),
        .I1(mctl_tmr_0[1]),
        .I2(\tcnt_cmp_reg[15] [2]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[4]_i_1 
       (.I0(mctl_tmr_0[2]),
        .I1(mctl_tmr_0[1]),
        .I2(\tcnt_cmp_reg[15] [3]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hFEC3)) 
    \tcnt_cmp[5]_i_1 
       (.I0(\tcnt_cmp_reg[15] [4]),
        .I1(mctl_tmr_0[2]),
        .I2(mctl_tmr_0[1]),
        .I3(mctl_tmr_0[0]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h9973)) 
    \tcnt_cmp[6]_i_1 
       (.I0(mctl_tmr_0[1]),
        .I1(mctl_tmr_0[0]),
        .I2(\tcnt_cmp_reg[15] [5]),
        .I3(mctl_tmr_0[2]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \tcnt_cmp[6]_i_2 
       (.I0(\tcnt_cmp[6]_i_3_n_0 ),
        .I1(\tcnt_cmp[6]_i_4_n_0 ),
        .I2(\tcnt_cmp[15]_i_12_n_0 ),
        .I3(stat),
        .I4(Q[2]),
        .O(mctl_tmr_0[0]));
  LUT6 #(
    .INIT(64'h0044040000000400)) 
    \tcnt_cmp[6]_i_3 
       (.I0(stat),
        .I1(Q[2]),
        .I2(CO),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(mctl_lat_rv_reg_3),
        .O(\tcnt_cmp[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \tcnt_cmp[6]_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(stat),
        .I4(Q[0]),
        .O(\tcnt_cmp[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[7]_i_1 
       (.I0(mctl_tmr_0[2]),
        .I1(mctl_tmr_0[1]),
        .I2(\tcnt_cmp_reg[15] [6]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[8]_i_1 
       (.I0(mctl_tmr_0[2]),
        .I1(mctl_tmr_0[1]),
        .I2(\tcnt_cmp_reg[15] [7]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[9]_i_1 
       (.I0(mctl_tmr_0[2]),
        .I1(mctl_tmr_0[1]),
        .I2(\tcnt_cmp_reg[15] [8]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(D[8]));
endmodule

module stwm_mclk
   (CO,
    \hcnt_reg[15]_0 ,
    mclk_start_cnt,
    mclk_scl_o,
    Q,
    lcnt0,
    lcnt,
    clk,
    hcnt,
    SR,
    rst_n,
    mctl_mrst,
    mctl_clk_gen,
    p_21_in,
    badr,
    bdatw);
  output [0:0]CO;
  output [0:0]\hcnt_reg[15]_0 ;
  output mclk_start_cnt;
  output mclk_scl_o;
  output [14:0]Q;
  input lcnt0;
  input lcnt;
  input clk;
  input hcnt;
  input [0:0]SR;
  input rst_n;
  input mctl_mrst;
  input mctl_clk_gen;
  input p_21_in;
  input [3:0]badr;
  input [14:0]bdatw;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]CO;
  wire [14:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire [14:0]bdatw;
  wire clk;
  wire hcnt;
  wire \hcnt[0]_i_3_n_0 ;
  wire hcnt_ovf_carry__0_i_1_n_0;
  wire hcnt_ovf_carry__0_i_2_n_0;
  wire hcnt_ovf_carry__0_i_3_n_3;
  wire hcnt_ovf_carry__0_n_3;
  wire hcnt_ovf_carry_i_10_n_0;
  wire hcnt_ovf_carry_i_11_n_0;
  wire hcnt_ovf_carry_i_12_n_0;
  wire hcnt_ovf_carry_i_13_n_0;
  wire hcnt_ovf_carry_i_14_n_0;
  wire hcnt_ovf_carry_i_15_n_0;
  wire hcnt_ovf_carry_i_16_n_0;
  wire hcnt_ovf_carry_i_17_n_0;
  wire hcnt_ovf_carry_i_18_n_0;
  wire hcnt_ovf_carry_i_1_n_0;
  wire hcnt_ovf_carry_i_2_n_0;
  wire hcnt_ovf_carry_i_3_n_0;
  wire hcnt_ovf_carry_i_4_n_0;
  wire hcnt_ovf_carry_i_5_n_0;
  wire hcnt_ovf_carry_i_5_n_1;
  wire hcnt_ovf_carry_i_5_n_2;
  wire hcnt_ovf_carry_i_5_n_3;
  wire hcnt_ovf_carry_i_6_n_0;
  wire hcnt_ovf_carry_i_6_n_1;
  wire hcnt_ovf_carry_i_6_n_2;
  wire hcnt_ovf_carry_i_6_n_3;
  wire hcnt_ovf_carry_i_7_n_0;
  wire hcnt_ovf_carry_i_7_n_1;
  wire hcnt_ovf_carry_i_7_n_2;
  wire hcnt_ovf_carry_i_7_n_3;
  wire hcnt_ovf_carry_i_8_n_0;
  wire hcnt_ovf_carry_i_9_n_0;
  wire hcnt_ovf_carry_n_0;
  wire hcnt_ovf_carry_n_1;
  wire hcnt_ovf_carry_n_2;
  wire hcnt_ovf_carry_n_3;
  wire [15:0]hcnt_reg;
  wire \hcnt_reg[0]_i_2_n_0 ;
  wire \hcnt_reg[0]_i_2_n_1 ;
  wire \hcnt_reg[0]_i_2_n_2 ;
  wire \hcnt_reg[0]_i_2_n_3 ;
  wire \hcnt_reg[0]_i_2_n_4 ;
  wire \hcnt_reg[0]_i_2_n_5 ;
  wire \hcnt_reg[0]_i_2_n_6 ;
  wire \hcnt_reg[0]_i_2_n_7 ;
  wire \hcnt_reg[12]_i_1_n_1 ;
  wire \hcnt_reg[12]_i_1_n_2 ;
  wire \hcnt_reg[12]_i_1_n_3 ;
  wire \hcnt_reg[12]_i_1_n_4 ;
  wire \hcnt_reg[12]_i_1_n_5 ;
  wire \hcnt_reg[12]_i_1_n_6 ;
  wire \hcnt_reg[12]_i_1_n_7 ;
  wire [0:0]\hcnt_reg[15]_0 ;
  wire \hcnt_reg[4]_i_1_n_0 ;
  wire \hcnt_reg[4]_i_1_n_1 ;
  wire \hcnt_reg[4]_i_1_n_2 ;
  wire \hcnt_reg[4]_i_1_n_3 ;
  wire \hcnt_reg[4]_i_1_n_4 ;
  wire \hcnt_reg[4]_i_1_n_5 ;
  wire \hcnt_reg[4]_i_1_n_6 ;
  wire \hcnt_reg[4]_i_1_n_7 ;
  wire \hcnt_reg[8]_i_1_n_0 ;
  wire \hcnt_reg[8]_i_1_n_1 ;
  wire \hcnt_reg[8]_i_1_n_2 ;
  wire \hcnt_reg[8]_i_1_n_3 ;
  wire \hcnt_reg[8]_i_1_n_4 ;
  wire \hcnt_reg[8]_i_1_n_5 ;
  wire \hcnt_reg[8]_i_1_n_6 ;
  wire \hcnt_reg[8]_i_1_n_7 ;
  wire lcnt;
  wire lcnt0;
  wire \lcnt[0]_i_5_n_0 ;
  wire lcnt_ovf_carry__0_i_1_n_0;
  wire lcnt_ovf_carry__0_i_2_n_0;
  wire lcnt_ovf_carry__0_i_3_n_2;
  wire lcnt_ovf_carry__0_i_4_n_0;
  wire lcnt_ovf_carry__0_n_3;
  wire lcnt_ovf_carry_i_10_n_0;
  wire lcnt_ovf_carry_i_11_n_0;
  wire lcnt_ovf_carry_i_12_n_0;
  wire lcnt_ovf_carry_i_13_n_0;
  wire lcnt_ovf_carry_i_14_n_0;
  wire lcnt_ovf_carry_i_15_n_0;
  wire lcnt_ovf_carry_i_16_n_0;
  wire lcnt_ovf_carry_i_17_n_0;
  wire lcnt_ovf_carry_i_18_n_0;
  wire lcnt_ovf_carry_i_1_n_0;
  wire lcnt_ovf_carry_i_2_n_0;
  wire lcnt_ovf_carry_i_3_n_0;
  wire lcnt_ovf_carry_i_4_n_0;
  wire lcnt_ovf_carry_i_5_n_0;
  wire lcnt_ovf_carry_i_5_n_1;
  wire lcnt_ovf_carry_i_5_n_2;
  wire lcnt_ovf_carry_i_5_n_3;
  wire lcnt_ovf_carry_i_6_n_0;
  wire lcnt_ovf_carry_i_6_n_1;
  wire lcnt_ovf_carry_i_6_n_2;
  wire lcnt_ovf_carry_i_6_n_3;
  wire lcnt_ovf_carry_i_7_n_0;
  wire lcnt_ovf_carry_i_7_n_1;
  wire lcnt_ovf_carry_i_7_n_2;
  wire lcnt_ovf_carry_i_7_n_3;
  wire lcnt_ovf_carry_i_8_n_0;
  wire lcnt_ovf_carry_i_9_n_0;
  wire lcnt_ovf_carry_n_0;
  wire lcnt_ovf_carry_n_1;
  wire lcnt_ovf_carry_n_2;
  wire lcnt_ovf_carry_n_3;
  wire [15:0]lcnt_reg;
  wire \lcnt_reg[0]_i_3_n_0 ;
  wire \lcnt_reg[0]_i_3_n_1 ;
  wire \lcnt_reg[0]_i_3_n_2 ;
  wire \lcnt_reg[0]_i_3_n_3 ;
  wire \lcnt_reg[0]_i_3_n_4 ;
  wire \lcnt_reg[0]_i_3_n_5 ;
  wire \lcnt_reg[0]_i_3_n_6 ;
  wire \lcnt_reg[0]_i_3_n_7 ;
  wire \lcnt_reg[12]_i_1_n_1 ;
  wire \lcnt_reg[12]_i_1_n_2 ;
  wire \lcnt_reg[12]_i_1_n_3 ;
  wire \lcnt_reg[12]_i_1_n_4 ;
  wire \lcnt_reg[12]_i_1_n_5 ;
  wire \lcnt_reg[12]_i_1_n_6 ;
  wire \lcnt_reg[12]_i_1_n_7 ;
  wire \lcnt_reg[4]_i_1_n_0 ;
  wire \lcnt_reg[4]_i_1_n_1 ;
  wire \lcnt_reg[4]_i_1_n_2 ;
  wire \lcnt_reg[4]_i_1_n_3 ;
  wire \lcnt_reg[4]_i_1_n_4 ;
  wire \lcnt_reg[4]_i_1_n_5 ;
  wire \lcnt_reg[4]_i_1_n_6 ;
  wire \lcnt_reg[4]_i_1_n_7 ;
  wire \lcnt_reg[8]_i_1_n_0 ;
  wire \lcnt_reg[8]_i_1_n_1 ;
  wire \lcnt_reg[8]_i_1_n_2 ;
  wire \lcnt_reg[8]_i_1_n_3 ;
  wire \lcnt_reg[8]_i_1_n_4 ;
  wire \lcnt_reg[8]_i_1_n_5 ;
  wire \lcnt_reg[8]_i_1_n_6 ;
  wire \lcnt_reg[8]_i_1_n_7 ;
  wire mclk_scl_o;
  wire mclk_scl_o_i_1_n_0;
  wire mclk_start_cnt;
  wire mclk_start_cnt_i_1_n_0;
  wire mctl_clk_gen;
  wire mctl_mrst;
  wire mctl_stwmbaud_wr;
  wire p_21_in;
  wire rst_n;
  wire [13:2]tscl_h;
  wire [13:1]tscl_l;
  wire [3:0]NLW_lcnt_ovf_carry__0_i_3_CO_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \hcnt[0]_i_3 
       (.I0(hcnt_reg[0]),
        .O(\hcnt[0]_i_3_n_0 ));
  CARRY4 hcnt_ovf_carry
       (.CI(\<const0> ),
        .CO({hcnt_ovf_carry_n_0,hcnt_ovf_carry_n_1,hcnt_ovf_carry_n_2,hcnt_ovf_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({hcnt_ovf_carry_i_1_n_0,hcnt_ovf_carry_i_2_n_0,hcnt_ovf_carry_i_3_n_0,hcnt_ovf_carry_i_4_n_0}));
  CARRY4 hcnt_ovf_carry__0
       (.CI(hcnt_ovf_carry_n_0),
        .CO({\hcnt_reg[15]_0 ,hcnt_ovf_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,hcnt_ovf_carry__0_i_1_n_0,hcnt_ovf_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    hcnt_ovf_carry__0_i_1
       (.I0(hcnt_ovf_carry__0_i_3_n_3),
        .I1(hcnt_reg[15]),
        .O(hcnt_ovf_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    hcnt_ovf_carry__0_i_2
       (.I0(hcnt_reg[12]),
        .I1(tscl_h[12]),
        .I2(hcnt_ovf_carry__0_i_3_n_3),
        .I3(hcnt_reg[14]),
        .I4(tscl_h[13]),
        .I5(hcnt_reg[13]),
        .O(hcnt_ovf_carry__0_i_2_n_0));
  CARRY4 hcnt_ovf_carry__0_i_3
       (.CI(hcnt_ovf_carry_i_6_n_0),
        .CO(hcnt_ovf_carry__0_i_3_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,\<const0> ,\<const1> }));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hcnt_ovf_carry_i_1
       (.I0(hcnt_reg[9]),
        .I1(tscl_h[9]),
        .I2(tscl_h[11]),
        .I3(hcnt_reg[11]),
        .I4(tscl_h[10]),
        .I5(hcnt_reg[10]),
        .O(hcnt_ovf_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_10
       (.I0(Q[8]),
        .O(hcnt_ovf_carry_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_11
       (.I0(Q[7]),
        .O(hcnt_ovf_carry_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_12
       (.I0(Q[14]),
        .O(hcnt_ovf_carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_13
       (.I0(Q[13]),
        .O(hcnt_ovf_carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_14
       (.I0(Q[12]),
        .O(hcnt_ovf_carry_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_15
       (.I0(Q[11]),
        .O(hcnt_ovf_carry_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_16
       (.I0(Q[6]),
        .O(hcnt_ovf_carry_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_17
       (.I0(Q[5]),
        .O(hcnt_ovf_carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_18
       (.I0(Q[4]),
        .O(hcnt_ovf_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hcnt_ovf_carry_i_2
       (.I0(hcnt_reg[6]),
        .I1(tscl_h[6]),
        .I2(tscl_h[8]),
        .I3(hcnt_reg[8]),
        .I4(tscl_h[7]),
        .I5(hcnt_reg[7]),
        .O(hcnt_ovf_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hcnt_ovf_carry_i_3
       (.I0(hcnt_reg[3]),
        .I1(tscl_h[3]),
        .I2(tscl_h[5]),
        .I3(hcnt_reg[5]),
        .I4(tscl_h[4]),
        .I5(hcnt_reg[4]),
        .O(hcnt_ovf_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hcnt_ovf_carry_i_4
       (.I0(hcnt_reg[0]),
        .I1(Q[1]),
        .I2(tscl_h[2]),
        .I3(hcnt_reg[2]),
        .I4(Q[2]),
        .I5(hcnt_reg[1]),
        .O(hcnt_ovf_carry_i_4_n_0));
  CARRY4 hcnt_ovf_carry_i_5
       (.CI(hcnt_ovf_carry_i_7_n_0),
        .CO({hcnt_ovf_carry_i_5_n_0,hcnt_ovf_carry_i_5_n_1,hcnt_ovf_carry_i_5_n_2,hcnt_ovf_carry_i_5_n_3}),
        .CYINIT(\<const0> ),
        .DI(Q[10:7]),
        .O(tscl_h[9:6]),
        .S({hcnt_ovf_carry_i_8_n_0,hcnt_ovf_carry_i_9_n_0,hcnt_ovf_carry_i_10_n_0,hcnt_ovf_carry_i_11_n_0}));
  CARRY4 hcnt_ovf_carry_i_6
       (.CI(hcnt_ovf_carry_i_5_n_0),
        .CO({hcnt_ovf_carry_i_6_n_0,hcnt_ovf_carry_i_6_n_1,hcnt_ovf_carry_i_6_n_2,hcnt_ovf_carry_i_6_n_3}),
        .CYINIT(\<const0> ),
        .DI(Q[14:11]),
        .O(tscl_h[13:10]),
        .S({hcnt_ovf_carry_i_12_n_0,hcnt_ovf_carry_i_13_n_0,hcnt_ovf_carry_i_14_n_0,hcnt_ovf_carry_i_15_n_0}));
  CARRY4 hcnt_ovf_carry_i_7
       (.CI(\<const0> ),
        .CO({hcnt_ovf_carry_i_7_n_0,hcnt_ovf_carry_i_7_n_1,hcnt_ovf_carry_i_7_n_2,hcnt_ovf_carry_i_7_n_3}),
        .CYINIT(\<const0> ),
        .DI({Q[6:4],\<const0> }),
        .O(tscl_h[5:2]),
        .S({hcnt_ovf_carry_i_16_n_0,hcnt_ovf_carry_i_17_n_0,hcnt_ovf_carry_i_18_n_0,Q[3]}));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_8
       (.I0(Q[10]),
        .O(hcnt_ovf_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_9
       (.I0(Q[9]),
        .O(hcnt_ovf_carry_i_9_n_0));
  FDRE \hcnt_reg[0] 
       (.C(clk),
        .CE(hcnt),
        .D(\hcnt_reg[0]_i_2_n_7 ),
        .Q(hcnt_reg[0]),
        .R(lcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \hcnt_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\hcnt_reg[0]_i_2_n_0 ,\hcnt_reg[0]_i_2_n_1 ,\hcnt_reg[0]_i_2_n_2 ,\hcnt_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\hcnt_reg[0]_i_2_n_4 ,\hcnt_reg[0]_i_2_n_5 ,\hcnt_reg[0]_i_2_n_6 ,\hcnt_reg[0]_i_2_n_7 }),
        .S({hcnt_reg[3:1],\hcnt[0]_i_3_n_0 }));
  FDRE \hcnt_reg[10] 
       (.C(clk),
        .CE(hcnt),
        .D(\hcnt_reg[8]_i_1_n_5 ),
        .Q(hcnt_reg[10]),
        .R(lcnt0));
  FDRE \hcnt_reg[11] 
       (.C(clk),
        .CE(hcnt),
        .D(\hcnt_reg[8]_i_1_n_4 ),
        .Q(hcnt_reg[11]),
        .R(lcnt0));
  FDRE \hcnt_reg[12] 
       (.C(clk),
        .CE(hcnt),
        .D(\hcnt_reg[12]_i_1_n_7 ),
        .Q(hcnt_reg[12]),
        .R(lcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \hcnt_reg[12]_i_1 
       (.CI(\hcnt_reg[8]_i_1_n_0 ),
        .CO({\hcnt_reg[12]_i_1_n_1 ,\hcnt_reg[12]_i_1_n_2 ,\hcnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\hcnt_reg[12]_i_1_n_4 ,\hcnt_reg[12]_i_1_n_5 ,\hcnt_reg[12]_i_1_n_6 ,\hcnt_reg[12]_i_1_n_7 }),
        .S(hcnt_reg[15:12]));
  FDRE \hcnt_reg[13] 
       (.C(clk),
        .CE(hcnt),
        .D(\hcnt_reg[12]_i_1_n_6 ),
        .Q(hcnt_reg[13]),
        .R(lcnt0));
  FDRE \hcnt_reg[14] 
       (.C(clk),
        .CE(hcnt),
        .D(\hcnt_reg[12]_i_1_n_5 ),
        .Q(hcnt_reg[14]),
        .R(lcnt0));
  FDRE \hcnt_reg[15] 
       (.C(clk),
        .CE(hcnt),
        .D(\hcnt_reg[12]_i_1_n_4 ),
        .Q(hcnt_reg[15]),
        .R(lcnt0));
  FDRE \hcnt_reg[1] 
       (.C(clk),
        .CE(hcnt),
        .D(\hcnt_reg[0]_i_2_n_6 ),
        .Q(hcnt_reg[1]),
        .R(lcnt0));
  FDRE \hcnt_reg[2] 
       (.C(clk),
        .CE(hcnt),
        .D(\hcnt_reg[0]_i_2_n_5 ),
        .Q(hcnt_reg[2]),
        .R(lcnt0));
  FDRE \hcnt_reg[3] 
       (.C(clk),
        .CE(hcnt),
        .D(\hcnt_reg[0]_i_2_n_4 ),
        .Q(hcnt_reg[3]),
        .R(lcnt0));
  FDRE \hcnt_reg[4] 
       (.C(clk),
        .CE(hcnt),
        .D(\hcnt_reg[4]_i_1_n_7 ),
        .Q(hcnt_reg[4]),
        .R(lcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \hcnt_reg[4]_i_1 
       (.CI(\hcnt_reg[0]_i_2_n_0 ),
        .CO({\hcnt_reg[4]_i_1_n_0 ,\hcnt_reg[4]_i_1_n_1 ,\hcnt_reg[4]_i_1_n_2 ,\hcnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\hcnt_reg[4]_i_1_n_4 ,\hcnt_reg[4]_i_1_n_5 ,\hcnt_reg[4]_i_1_n_6 ,\hcnt_reg[4]_i_1_n_7 }),
        .S(hcnt_reg[7:4]));
  FDRE \hcnt_reg[5] 
       (.C(clk),
        .CE(hcnt),
        .D(\hcnt_reg[4]_i_1_n_6 ),
        .Q(hcnt_reg[5]),
        .R(lcnt0));
  FDRE \hcnt_reg[6] 
       (.C(clk),
        .CE(hcnt),
        .D(\hcnt_reg[4]_i_1_n_5 ),
        .Q(hcnt_reg[6]),
        .R(lcnt0));
  FDRE \hcnt_reg[7] 
       (.C(clk),
        .CE(hcnt),
        .D(\hcnt_reg[4]_i_1_n_4 ),
        .Q(hcnt_reg[7]),
        .R(lcnt0));
  FDRE \hcnt_reg[8] 
       (.C(clk),
        .CE(hcnt),
        .D(\hcnt_reg[8]_i_1_n_7 ),
        .Q(hcnt_reg[8]),
        .R(lcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \hcnt_reg[8]_i_1 
       (.CI(\hcnt_reg[4]_i_1_n_0 ),
        .CO({\hcnt_reg[8]_i_1_n_0 ,\hcnt_reg[8]_i_1_n_1 ,\hcnt_reg[8]_i_1_n_2 ,\hcnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\hcnt_reg[8]_i_1_n_4 ,\hcnt_reg[8]_i_1_n_5 ,\hcnt_reg[8]_i_1_n_6 ,\hcnt_reg[8]_i_1_n_7 }),
        .S(hcnt_reg[11:8]));
  FDRE \hcnt_reg[9] 
       (.C(clk),
        .CE(hcnt),
        .D(\hcnt_reg[8]_i_1_n_6 ),
        .Q(hcnt_reg[9]),
        .R(lcnt0));
  LUT1 #(
    .INIT(2'h1)) 
    \lcnt[0]_i_5 
       (.I0(lcnt_reg[0]),
        .O(\lcnt[0]_i_5_n_0 ));
  CARRY4 lcnt_ovf_carry
       (.CI(\<const0> ),
        .CO({lcnt_ovf_carry_n_0,lcnt_ovf_carry_n_1,lcnt_ovf_carry_n_2,lcnt_ovf_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({lcnt_ovf_carry_i_1_n_0,lcnt_ovf_carry_i_2_n_0,lcnt_ovf_carry_i_3_n_0,lcnt_ovf_carry_i_4_n_0}));
  CARRY4 lcnt_ovf_carry__0
       (.CI(lcnt_ovf_carry_n_0),
        .CO({CO,lcnt_ovf_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,lcnt_ovf_carry__0_i_1_n_0,lcnt_ovf_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    lcnt_ovf_carry__0_i_1
       (.I0(lcnt_ovf_carry__0_i_3_n_2),
        .I1(lcnt_reg[15]),
        .O(lcnt_ovf_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    lcnt_ovf_carry__0_i_2
       (.I0(lcnt_reg[12]),
        .I1(tscl_l[12]),
        .I2(lcnt_ovf_carry__0_i_3_n_2),
        .I3(lcnt_reg[14]),
        .I4(tscl_l[13]),
        .I5(lcnt_reg[13]),
        .O(lcnt_ovf_carry__0_i_2_n_0));
  CARRY4 lcnt_ovf_carry__0_i_3
       (.CI(lcnt_ovf_carry_i_5_n_0),
        .CO({lcnt_ovf_carry__0_i_3_n_2,NLW_lcnt_ovf_carry__0_i_3_CO_UNCONNECTED[0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,Q[14]}),
        .O(tscl_l[13]),
        .S({\<const0> ,\<const0> ,\<const1> ,lcnt_ovf_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry__0_i_4
       (.I0(Q[14]),
        .O(lcnt_ovf_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lcnt_ovf_carry_i_1
       (.I0(lcnt_reg[9]),
        .I1(tscl_l[9]),
        .I2(tscl_l[11]),
        .I3(lcnt_reg[11]),
        .I4(tscl_l[10]),
        .I5(lcnt_reg[10]),
        .O(lcnt_ovf_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_10
       (.I0(Q[11]),
        .O(lcnt_ovf_carry_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_11
       (.I0(Q[10]),
        .O(lcnt_ovf_carry_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_12
       (.I0(Q[9]),
        .O(lcnt_ovf_carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_13
       (.I0(Q[8]),
        .O(lcnt_ovf_carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_14
       (.I0(Q[7]),
        .O(lcnt_ovf_carry_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_15
       (.I0(Q[6]),
        .O(lcnt_ovf_carry_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_16
       (.I0(Q[5]),
        .O(lcnt_ovf_carry_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_17
       (.I0(Q[4]),
        .O(lcnt_ovf_carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_18
       (.I0(Q[2]),
        .O(lcnt_ovf_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lcnt_ovf_carry_i_2
       (.I0(lcnt_reg[6]),
        .I1(tscl_l[6]),
        .I2(tscl_l[8]),
        .I3(lcnt_reg[8]),
        .I4(tscl_l[7]),
        .I5(lcnt_reg[7]),
        .O(lcnt_ovf_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lcnt_ovf_carry_i_3
       (.I0(lcnt_reg[3]),
        .I1(tscl_l[3]),
        .I2(tscl_l[5]),
        .I3(lcnt_reg[5]),
        .I4(tscl_l[4]),
        .I5(lcnt_reg[4]),
        .O(lcnt_ovf_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    lcnt_ovf_carry_i_4
       (.I0(lcnt_reg[0]),
        .I1(Q[1]),
        .I2(tscl_l[2]),
        .I3(lcnt_reg[2]),
        .I4(tscl_l[1]),
        .I5(lcnt_reg[1]),
        .O(lcnt_ovf_carry_i_4_n_0));
  CARRY4 lcnt_ovf_carry_i_5
       (.CI(lcnt_ovf_carry_i_6_n_0),
        .CO({lcnt_ovf_carry_i_5_n_0,lcnt_ovf_carry_i_5_n_1,lcnt_ovf_carry_i_5_n_2,lcnt_ovf_carry_i_5_n_3}),
        .CYINIT(\<const0> ),
        .DI(Q[13:10]),
        .O(tscl_l[12:9]),
        .S({lcnt_ovf_carry_i_8_n_0,lcnt_ovf_carry_i_9_n_0,lcnt_ovf_carry_i_10_n_0,lcnt_ovf_carry_i_11_n_0}));
  CARRY4 lcnt_ovf_carry_i_6
       (.CI(lcnt_ovf_carry_i_7_n_0),
        .CO({lcnt_ovf_carry_i_6_n_0,lcnt_ovf_carry_i_6_n_1,lcnt_ovf_carry_i_6_n_2,lcnt_ovf_carry_i_6_n_3}),
        .CYINIT(\<const0> ),
        .DI(Q[9:6]),
        .O(tscl_l[8:5]),
        .S({lcnt_ovf_carry_i_12_n_0,lcnt_ovf_carry_i_13_n_0,lcnt_ovf_carry_i_14_n_0,lcnt_ovf_carry_i_15_n_0}));
  CARRY4 lcnt_ovf_carry_i_7
       (.CI(\<const0> ),
        .CO({lcnt_ovf_carry_i_7_n_0,lcnt_ovf_carry_i_7_n_1,lcnt_ovf_carry_i_7_n_2,lcnt_ovf_carry_i_7_n_3}),
        .CYINIT(Q[1]),
        .DI({Q[5:4],\<const0> ,Q[2]}),
        .O(tscl_l[4:1]),
        .S({lcnt_ovf_carry_i_16_n_0,lcnt_ovf_carry_i_17_n_0,Q[3],lcnt_ovf_carry_i_18_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_8
       (.I0(Q[13]),
        .O(lcnt_ovf_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_9
       (.I0(Q[12]),
        .O(lcnt_ovf_carry_i_9_n_0));
  FDRE \lcnt_reg[0] 
       (.C(clk),
        .CE(lcnt),
        .D(\lcnt_reg[0]_i_3_n_7 ),
        .Q(lcnt_reg[0]),
        .R(lcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \lcnt_reg[0]_i_3 
       (.CI(\<const0> ),
        .CO({\lcnt_reg[0]_i_3_n_0 ,\lcnt_reg[0]_i_3_n_1 ,\lcnt_reg[0]_i_3_n_2 ,\lcnt_reg[0]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\lcnt_reg[0]_i_3_n_4 ,\lcnt_reg[0]_i_3_n_5 ,\lcnt_reg[0]_i_3_n_6 ,\lcnt_reg[0]_i_3_n_7 }),
        .S({lcnt_reg[3:1],\lcnt[0]_i_5_n_0 }));
  FDRE \lcnt_reg[10] 
       (.C(clk),
        .CE(lcnt),
        .D(\lcnt_reg[8]_i_1_n_5 ),
        .Q(lcnt_reg[10]),
        .R(lcnt0));
  FDRE \lcnt_reg[11] 
       (.C(clk),
        .CE(lcnt),
        .D(\lcnt_reg[8]_i_1_n_4 ),
        .Q(lcnt_reg[11]),
        .R(lcnt0));
  FDRE \lcnt_reg[12] 
       (.C(clk),
        .CE(lcnt),
        .D(\lcnt_reg[12]_i_1_n_7 ),
        .Q(lcnt_reg[12]),
        .R(lcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \lcnt_reg[12]_i_1 
       (.CI(\lcnt_reg[8]_i_1_n_0 ),
        .CO({\lcnt_reg[12]_i_1_n_1 ,\lcnt_reg[12]_i_1_n_2 ,\lcnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\lcnt_reg[12]_i_1_n_4 ,\lcnt_reg[12]_i_1_n_5 ,\lcnt_reg[12]_i_1_n_6 ,\lcnt_reg[12]_i_1_n_7 }),
        .S(lcnt_reg[15:12]));
  FDRE \lcnt_reg[13] 
       (.C(clk),
        .CE(lcnt),
        .D(\lcnt_reg[12]_i_1_n_6 ),
        .Q(lcnt_reg[13]),
        .R(lcnt0));
  FDRE \lcnt_reg[14] 
       (.C(clk),
        .CE(lcnt),
        .D(\lcnt_reg[12]_i_1_n_5 ),
        .Q(lcnt_reg[14]),
        .R(lcnt0));
  FDRE \lcnt_reg[15] 
       (.C(clk),
        .CE(lcnt),
        .D(\lcnt_reg[12]_i_1_n_4 ),
        .Q(lcnt_reg[15]),
        .R(lcnt0));
  FDRE \lcnt_reg[1] 
       (.C(clk),
        .CE(lcnt),
        .D(\lcnt_reg[0]_i_3_n_6 ),
        .Q(lcnt_reg[1]),
        .R(lcnt0));
  FDRE \lcnt_reg[2] 
       (.C(clk),
        .CE(lcnt),
        .D(\lcnt_reg[0]_i_3_n_5 ),
        .Q(lcnt_reg[2]),
        .R(lcnt0));
  FDRE \lcnt_reg[3] 
       (.C(clk),
        .CE(lcnt),
        .D(\lcnt_reg[0]_i_3_n_4 ),
        .Q(lcnt_reg[3]),
        .R(lcnt0));
  FDRE \lcnt_reg[4] 
       (.C(clk),
        .CE(lcnt),
        .D(\lcnt_reg[4]_i_1_n_7 ),
        .Q(lcnt_reg[4]),
        .R(lcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \lcnt_reg[4]_i_1 
       (.CI(\lcnt_reg[0]_i_3_n_0 ),
        .CO({\lcnt_reg[4]_i_1_n_0 ,\lcnt_reg[4]_i_1_n_1 ,\lcnt_reg[4]_i_1_n_2 ,\lcnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\lcnt_reg[4]_i_1_n_4 ,\lcnt_reg[4]_i_1_n_5 ,\lcnt_reg[4]_i_1_n_6 ,\lcnt_reg[4]_i_1_n_7 }),
        .S(lcnt_reg[7:4]));
  FDRE \lcnt_reg[5] 
       (.C(clk),
        .CE(lcnt),
        .D(\lcnt_reg[4]_i_1_n_6 ),
        .Q(lcnt_reg[5]),
        .R(lcnt0));
  FDRE \lcnt_reg[6] 
       (.C(clk),
        .CE(lcnt),
        .D(\lcnt_reg[4]_i_1_n_5 ),
        .Q(lcnt_reg[6]),
        .R(lcnt0));
  FDRE \lcnt_reg[7] 
       (.C(clk),
        .CE(lcnt),
        .D(\lcnt_reg[4]_i_1_n_4 ),
        .Q(lcnt_reg[7]),
        .R(lcnt0));
  FDRE \lcnt_reg[8] 
       (.C(clk),
        .CE(lcnt),
        .D(\lcnt_reg[8]_i_1_n_7 ),
        .Q(lcnt_reg[8]),
        .R(lcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \lcnt_reg[8]_i_1 
       (.CI(\lcnt_reg[4]_i_1_n_0 ),
        .CO({\lcnt_reg[8]_i_1_n_0 ,\lcnt_reg[8]_i_1_n_1 ,\lcnt_reg[8]_i_1_n_2 ,\lcnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\lcnt_reg[8]_i_1_n_4 ,\lcnt_reg[8]_i_1_n_5 ,\lcnt_reg[8]_i_1_n_6 ,\lcnt_reg[8]_i_1_n_7 }),
        .S(lcnt_reg[11:8]));
  FDRE \lcnt_reg[9] 
       (.C(clk),
        .CE(lcnt),
        .D(\lcnt_reg[8]_i_1_n_6 ),
        .Q(lcnt_reg[9]),
        .R(lcnt0));
  LUT6 #(
    .INIT(64'h00000000000000E0)) 
    mclk_scl_o_i_1
       (.I0(mclk_scl_o),
        .I1(CO),
        .I2(rst_n),
        .I3(mctl_mrst),
        .I4(mctl_clk_gen),
        .I5(\hcnt_reg[15]_0 ),
        .O(mclk_scl_o_i_1_n_0));
  FDRE mclk_scl_o_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mclk_scl_o_i_1_n_0),
        .Q(mclk_scl_o),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'hBA)) 
    mclk_start_cnt_i_1
       (.I0(mctl_clk_gen),
        .I1(CO),
        .I2(mclk_start_cnt),
        .O(mclk_start_cnt_i_1_n_0));
  FDRE mclk_start_cnt_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mclk_start_cnt_i_1_n_0),
        .Q(mclk_start_cnt),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000080)) 
    \stwmbaud[14]_i_1 
       (.I0(p_21_in),
        .I1(badr[1]),
        .I2(badr[2]),
        .I3(badr[0]),
        .I4(badr[3]),
        .O(mctl_stwmbaud_wr));
  FDRE \stwmbaud_reg[0] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \stwmbaud_reg[10] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \stwmbaud_reg[11] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \stwmbaud_reg[12] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \stwmbaud_reg[13] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \stwmbaud_reg[14] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \stwmbaud_reg[1] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \stwmbaud_reg[2] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \stwmbaud_reg[3] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \stwmbaud_reg[4] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \stwmbaud_reg[5] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \stwmbaud_reg[6] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \stwmbaud_reg[7] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \stwmbaud_reg[8] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \stwmbaud_reg[9] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

module stwm_mctl
   (SR,
    mctl_dtct_sclf,
    mctl_lat_rv,
    mctl_mrst,
    mctl_bus_bsy,
    mdat_trg_wr_reg,
    \stat_reg[2] ,
    lcnt0,
    mctl_clk_gen,
    stwm_sda_o,
    mctl_dtct_sclf_reg_0,
    \stat_reg[0] ,
    Q,
    stws_mter,
    stws_mrar,
    lcnt,
    hcnt,
    bdatr,
    D,
    stwm_scl_o,
    mdat_rcv_nack_reg,
    mdat_trg_sp_reg,
    mdat_trg_rd_reg,
    mctl_lat_rv_reg,
    mctl_mrst_reg_0,
    mctl_lat_rv_reg_0,
    \stat_reg[4] ,
    clk,
    brdy,
    rst_n,
    bdatw,
    p_21_in,
    badr,
    mdat_trg_wr,
    E,
    mdat_sda_o,
    bcs_stws_n,
    bcmdr,
    \tcnt_cmp_reg[15]_0 ,
    \stat_reg[3] ,
    \stat_reg[0]_0 ,
    \stat[0]_i_3 ,
    \stat_reg[4]_0 ,
    \stat_reg[1] ,
    mctl_scl_o_reg,
    \stat_reg[2]_0 ,
    \tcnt_cmp[15]_i_4 ,
    \tcnt_cmp[15]_i_4_0 ,
    mdat_mraf,
    mclk_start_cnt,
    CO,
    \hcnt_reg[15] ,
    mdat_trg_rd,
    \bdatr[7] ,
    mdat_rcv_nack,
    mdat_trg_sp,
    mdat_mtaf,
    mctl_sda_o_reg,
    mclk_scl_o,
    mctl_stwmreqr_wr,
    stws_scl_i,
    stws_sda_i);
  output [0:0]SR;
  output mctl_dtct_sclf;
  output mctl_lat_rv;
  output mctl_mrst;
  output mctl_bus_bsy;
  output mdat_trg_wr_reg;
  output [0:0]\stat_reg[2] ;
  output lcnt0;
  output mctl_clk_gen;
  output stwm_sda_o;
  output [0:0]mctl_dtct_sclf_reg_0;
  output \stat_reg[0] ;
  output [3:0]Q;
  output stws_mter;
  output stws_mrar;
  output lcnt;
  output hcnt;
  output [14:0]bdatr;
  output [0:0]D;
  output stwm_scl_o;
  output mdat_rcv_nack_reg;
  output mdat_trg_sp_reg;
  output mdat_trg_rd_reg;
  output mctl_lat_rv_reg;
  output [0:0]mctl_mrst_reg_0;
  output [0:0]mctl_lat_rv_reg_0;
  output [0:0]\stat_reg[4] ;
  input clk;
  input brdy;
  input rst_n;
  input [5:0]bdatw;
  input p_21_in;
  input [3:0]badr;
  input mdat_trg_wr;
  input [0:0]E;
  input mdat_sda_o;
  input bcs_stws_n;
  input bcmdr;
  input [14:0]\tcnt_cmp_reg[15]_0 ;
  input \stat_reg[3] ;
  input \stat_reg[0]_0 ;
  input \stat[0]_i_3 ;
  input \stat_reg[4]_0 ;
  input [0:0]\stat_reg[1] ;
  input mctl_scl_o_reg;
  input \stat_reg[2]_0 ;
  input \tcnt_cmp[15]_i_4 ;
  input \tcnt_cmp[15]_i_4_0 ;
  input mdat_mraf;
  input mclk_start_cnt;
  input [0:0]CO;
  input [0:0]\hcnt_reg[15] ;
  input mdat_trg_rd;
  input [7:0]\bdatr[7] ;
  input mdat_rcv_nack;
  input mdat_trg_sp;
  input mdat_mtaf;
  input mctl_sda_o_reg;
  input mclk_scl_o;
  input mctl_stwmreqr_wr;
  input stws_scl_i;
  input stws_sda_i;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire bcmdr;
  wire bcs_stws_n;
  wire [14:0]bdatr;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[2]_INST_0_i_1_n_0 ;
  wire [7:0]\bdatr[7] ;
  wire [5:0]bdatw;
  wire brdy;
  wire clk;
  wire fsm_n_1;
  wire fsm_n_14;
  wire fsm_n_15;
  wire fsm_n_36;
  wire fsm_n_37;
  wire fsm_n_6;
  wire hcnt;
  wire [0:0]\hcnt_reg[15] ;
  wire lcnt;
  wire lcnt0;
  wire mclk_scl_o;
  wire mclk_start_cnt;
  wire mctl_ack_stat;
  wire mctl_bus_bsy;
  wire mctl_bus_bsy0;
  wire mctl_bus_bsy_i_1_n_0;
  wire mctl_bus_bsy_i_3_n_0;
  wire mctl_bus_err;
  wire mctl_clk_gen;
  wire mctl_dtct_sclf;
  wire mctl_dtct_sclf0;
  wire [0:0]mctl_dtct_sclf_reg_0;
  wire mctl_dtct_sclr;
  wire mctl_dtct_sclr0;
  wire mctl_dtct_sta;
  wire mctl_dtct_sta0__0;
  wire mctl_dtct_stp;
  wire mctl_dtct_stp0__0;
  wire mctl_lat_rv;
  wire mctl_lat_rv_reg;
  wire [0:0]mctl_lat_rv_reg_0;
  wire mctl_mrae;
  wire mctl_mrst;
  wire mctl_mrst_i_1_n_0;
  wire [0:0]mctl_mrst_reg_0;
  wire mctl_mtee;
  wire mctl_mtef;
  wire [1:1]mctl_scl_f;
  wire \mctl_scl_f_reg_n_0_[0] ;
  wire mctl_scl_o_reg;
  wire mctl_scl_s;
  wire \mctl_sda_f_reg_n_0_[0] ;
  wire mctl_sda_o_reg;
  wire mctl_stwmbaud_rd;
  wire mctl_stwmbaud_rd0;
  wire mctl_stwmctl_rd;
  wire mctl_stwmctl_rd0;
  wire mctl_stwmdatr_rd;
  wire mctl_stwmdatr_rd0;
  wire mctl_stwmreqr_rd;
  wire mctl_stwmreqr_rd0;
  wire mctl_stwmreqr_wr;
  wire mctl_tmr_ovf;
  wire mctl_tmr_ovf_carry__0_n_3;
  wire mctl_tmr_ovf_carry_i_1_n_0;
  wire mctl_tmr_ovf_carry_i_2_n_0;
  wire mctl_tmr_ovf_carry_i_3_n_0;
  wire mctl_tmr_ovf_carry_i_4_n_0;
  wire mctl_tmr_ovf_carry_n_0;
  wire mctl_tmr_ovf_carry_n_1;
  wire mctl_tmr_ovf_carry_n_2;
  wire mctl_tmr_ovf_carry_n_3;
  wire mdat_mraf;
  wire mdat_mtaf;
  wire mdat_rcv_nack;
  wire mdat_rcv_nack_reg;
  wire mdat_sda_o;
  wire mdat_trg_rd;
  wire mdat_trg_rd_reg;
  wire mdat_trg_sp;
  wire mdat_trg_sp_reg;
  wire mdat_trg_wr;
  wire mdat_trg_wr_reg;
  wire p_0_in7_in;
  wire p_0_in9_in;
  wire p_16_in;
  wire p_1_in;
  wire p_21_in;
  wire p_2_in;
  wire rst_n;
  wire \stat[0]_i_3 ;
  wire \stat_reg[0] ;
  wire \stat_reg[0]_0 ;
  wire [0:0]\stat_reg[1] ;
  wire [0:0]\stat_reg[2] ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg[3] ;
  wire [0:0]\stat_reg[4] ;
  wire \stat_reg[4]_0 ;
  wire stwm_scl_o;
  wire stwm_sda_o;
  wire \stwmctl[0]_i_1_n_0 ;
  wire \stwmctl[2]_i_1_n_0 ;
  wire stws_mrar;
  wire stws_mter;
  wire stws_scl_i;
  wire stws_sda_i;
  wire [4:0]synfil_scl;
  wire [4:0]synfil_sda;
  wire \tcnt[0]_i_3_n_0 ;
  wire [15:0]tcnt_cmp;
  wire \tcnt_cmp[15]_i_4 ;
  wire \tcnt_cmp[15]_i_4_0 ;
  wire [14:0]\tcnt_cmp_reg[15]_0 ;
  wire [15:1]tcnt_cmp_t;
  wire [15:0]tcnt_reg;
  wire \tcnt_reg[0]_i_2_n_0 ;
  wire \tcnt_reg[0]_i_2_n_1 ;
  wire \tcnt_reg[0]_i_2_n_2 ;
  wire \tcnt_reg[0]_i_2_n_3 ;
  wire \tcnt_reg[0]_i_2_n_4 ;
  wire \tcnt_reg[0]_i_2_n_5 ;
  wire \tcnt_reg[0]_i_2_n_6 ;
  wire \tcnt_reg[0]_i_2_n_7 ;
  wire \tcnt_reg[12]_i_1_n_1 ;
  wire \tcnt_reg[12]_i_1_n_2 ;
  wire \tcnt_reg[12]_i_1_n_3 ;
  wire \tcnt_reg[12]_i_1_n_4 ;
  wire \tcnt_reg[12]_i_1_n_5 ;
  wire \tcnt_reg[12]_i_1_n_6 ;
  wire \tcnt_reg[12]_i_1_n_7 ;
  wire \tcnt_reg[4]_i_1_n_0 ;
  wire \tcnt_reg[4]_i_1_n_1 ;
  wire \tcnt_reg[4]_i_1_n_2 ;
  wire \tcnt_reg[4]_i_1_n_3 ;
  wire \tcnt_reg[4]_i_1_n_4 ;
  wire \tcnt_reg[4]_i_1_n_5 ;
  wire \tcnt_reg[4]_i_1_n_6 ;
  wire \tcnt_reg[4]_i_1_n_7 ;
  wire \tcnt_reg[8]_i_1_n_0 ;
  wire \tcnt_reg[8]_i_1_n_1 ;
  wire \tcnt_reg[8]_i_1_n_2 ;
  wire \tcnt_reg[8]_i_1_n_3 ;
  wire \tcnt_reg[8]_i_1_n_4 ;
  wire \tcnt_reg[8]_i_1_n_5 ;
  wire \tcnt_reg[8]_i_1_n_6 ;
  wire \tcnt_reg[8]_i_1_n_7 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'hF8)) 
    \bdatr[0]_INST_0 
       (.I0(mctl_mrae),
        .I1(mctl_stwmctl_rd),
        .I2(\bdatr[0]_INST_0_i_1_n_0 ),
        .O(bdatr[0]));
  LUT6 #(
    .INIT(64'hFFFFF8888888F888)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(\tcnt_cmp_reg[15]_0 [0]),
        .I1(mctl_stwmbaud_rd),
        .I2(mdat_trg_rd),
        .I3(mctl_stwmreqr_rd),
        .I4(mctl_stwmdatr_rd),
        .I5(\bdatr[7] [0]),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[10]_INST_0 
       (.I0(mctl_stwmbaud_rd),
        .I1(\tcnt_cmp_reg[15]_0 [10]),
        .O(bdatr[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[11]_INST_0 
       (.I0(mctl_stwmbaud_rd),
        .I1(\tcnt_cmp_reg[15]_0 [11]),
        .O(bdatr[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[12]_INST_0 
       (.I0(mctl_stwmbaud_rd),
        .I1(\tcnt_cmp_reg[15]_0 [12]),
        .O(bdatr[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[13]_INST_0 
       (.I0(mctl_stwmbaud_rd),
        .I1(\tcnt_cmp_reg[15]_0 [13]),
        .O(bdatr[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[14]_INST_0 
       (.I0(mctl_stwmbaud_rd),
        .I1(\tcnt_cmp_reg[15]_0 [14]),
        .O(bdatr[14]));
  LUT6 #(
    .INIT(64'hFFFFF8888888F888)) 
    \bdatr[1]_INST_0 
       (.I0(\tcnt_cmp_reg[15]_0 [1]),
        .I1(mctl_stwmbaud_rd),
        .I2(mdat_rcv_nack),
        .I3(mctl_stwmreqr_rd),
        .I4(mctl_stwmdatr_rd),
        .I5(\bdatr[7] [1]),
        .O(bdatr[1]));
  LUT3 #(
    .INIT(8'hF8)) 
    \bdatr[2]_INST_0 
       (.I0(mctl_mtee),
        .I1(mctl_stwmctl_rd),
        .I2(\bdatr[2]_INST_0_i_1_n_0 ),
        .O(bdatr[2]));
  LUT6 #(
    .INIT(64'hFFFFF8888888F888)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(\tcnt_cmp_reg[15]_0 [2]),
        .I1(mctl_stwmbaud_rd),
        .I2(mdat_trg_sp),
        .I3(mctl_stwmreqr_rd),
        .I4(mctl_stwmdatr_rd),
        .I5(\bdatr[7] [2]),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[3]_INST_0 
       (.I0(mctl_ack_stat),
        .I1(mctl_stwmctl_rd),
        .I2(mctl_stwmdatr_rd),
        .I3(\bdatr[7] [3]),
        .I4(mctl_stwmbaud_rd),
        .I5(\tcnt_cmp_reg[15]_0 [3]),
        .O(bdatr[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[4]_INST_0 
       (.I0(mdat_mraf),
        .I1(mctl_stwmctl_rd),
        .I2(mctl_stwmdatr_rd),
        .I3(\bdatr[7] [4]),
        .I4(mctl_stwmbaud_rd),
        .I5(\tcnt_cmp_reg[15]_0 [4]),
        .O(bdatr[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[5]_INST_0 
       (.I0(mdat_mtaf),
        .I1(mctl_stwmctl_rd),
        .I2(mctl_stwmdatr_rd),
        .I3(\bdatr[7] [5]),
        .I4(mctl_stwmbaud_rd),
        .I5(\tcnt_cmp_reg[15]_0 [5]),
        .O(bdatr[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[6]_INST_0 
       (.I0(mctl_mtef),
        .I1(mctl_stwmctl_rd),
        .I2(mctl_stwmdatr_rd),
        .I3(\bdatr[7] [6]),
        .I4(mctl_stwmbaud_rd),
        .I5(\tcnt_cmp_reg[15]_0 [6]),
        .O(bdatr[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[7]_INST_0 
       (.I0(mctl_bus_err),
        .I1(mctl_stwmctl_rd),
        .I2(mctl_stwmdatr_rd),
        .I3(\bdatr[7] [7]),
        .I4(mctl_stwmbaud_rd),
        .I5(\tcnt_cmp_reg[15]_0 [7]),
        .O(bdatr[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[8]_INST_0 
       (.I0(mctl_stwmbaud_rd),
        .I1(\tcnt_cmp_reg[15]_0 [8]),
        .O(bdatr[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[9]_INST_0 
       (.I0(mctl_stwmbaud_rd),
        .I1(\tcnt_cmp_reg[15]_0 [9]),
        .O(bdatr[9]));
  stwm_fsm fsm
       (.CO(mctl_tmr_ovf),
        .D(tcnt_cmp_t),
        .E(E),
        .Q(Q),
        .S({fsm_n_14,fsm_n_15}),
        .bdatw(bdatw[4:0]),
        .clk(clk),
        .lcnt0(lcnt0),
        .mclk_scl_o(mclk_scl_o),
        .mctl_ack_stat(mctl_ack_stat),
        .mctl_ack_stat_reg(synfil_sda[4:2]),
        .mctl_bus_err(mctl_bus_err),
        .mctl_bus_err_reg(D),
        .mctl_clk_gen(mctl_clk_gen),
        .mctl_dtct_sclf_reg(mctl_dtct_sclf_reg_0),
        .mctl_dtct_sclr(mctl_dtct_sclr),
        .mctl_dtct_sclr_reg(fsm_n_36),
        .mctl_lat_rv_reg_0(mctl_lat_rv),
        .mctl_lat_rv_reg_1(mctl_lat_rv_reg),
        .mctl_lat_rv_reg_2(mctl_lat_rv_reg_0),
        .mctl_lat_rv_reg_3(mctl_dtct_sclf),
        .mctl_mrst_reg(mctl_mrst_reg_0),
        .mctl_mtef(mctl_mtef),
        .mctl_scl_o_reg_0(mctl_scl_o_reg),
        .mctl_sda_o_reg_0(mctl_bus_bsy),
        .mctl_sda_o_reg_1(mctl_sda_o_reg),
        .mctl_stwmdatr_rd(mctl_stwmdatr_rd),
        .mctl_stwmreqr_wr(mctl_stwmreqr_wr),
        .mctl_tmr_ovf_carry__0(tcnt_reg[15:12]),
        .mctl_tmr_ovf_carry__0_0(tcnt_cmp[15:12]),
        .mdat_mraf(mdat_mraf),
        .mdat_rcv_nack(mdat_rcv_nack),
        .mdat_rcv_nack_reg(mdat_rcv_nack_reg),
        .mdat_sda_o(mdat_sda_o),
        .mdat_trg_rd(mdat_trg_rd),
        .mdat_trg_rd_reg(mdat_trg_rd_reg),
        .mdat_trg_sp(mdat_trg_sp),
        .mdat_trg_sp_reg(mdat_trg_sp_reg),
        .mdat_trg_wr(mdat_trg_wr),
        .mdat_trg_wr_reg(mdat_trg_wr_reg),
        .p_16_in(p_16_in),
        .rst_n(rst_n),
        .rst_n_0(fsm_n_1),
        .rst_n_1(fsm_n_6),
        .\stat[0]_i_3_0 (\stat[0]_i_3 ),
        .\stat_reg[0]_0 (\stat_reg[0] ),
        .\stat_reg[0]_1 (\stat_reg[0]_0 ),
        .\stat_reg[1]_0 (\stat_reg[1] ),
        .\stat_reg[2]_0 (\stat_reg[2] ),
        .\stat_reg[2]_1 (\stat_reg[2]_0 ),
        .\stat_reg[3]_0 (\stat_reg[3] ),
        .\stat_reg[4]_0 (\stat_reg[4] ),
        .\stat_reg[4]_1 (\stat_reg[4]_0 ),
        .stwm_scl_o(stwm_scl_o),
        .stwm_sda_o(stwm_sda_o),
        .\synfil_sda_reg[3] (fsm_n_37),
        .\tcnt_cmp[15]_i_4_0 (\tcnt_cmp[15]_i_4 ),
        .\tcnt_cmp[15]_i_4_1 (\tcnt_cmp[15]_i_4_0 ),
        .\tcnt_cmp_reg[15] (\tcnt_cmp_reg[15]_0 ),
        .\tcnt_reg[15] (mctl_mrst));
  LUT5 #(
    .INIT(32'h0000E800)) 
    \hcnt[0]_i_1 
       (.I0(synfil_scl[3]),
        .I1(synfil_scl[4]),
        .I2(synfil_scl[2]),
        .I3(CO),
        .I4(\hcnt_reg[15] ),
        .O(hcnt));
  LUT5 #(
    .INIT(32'h00001700)) 
    \lcnt[0]_i_2 
       (.I0(synfil_scl[2]),
        .I1(synfil_scl[4]),
        .I2(synfil_scl[3]),
        .I3(mclk_start_cnt),
        .I4(CO),
        .O(lcnt));
  FDRE mctl_ack_stat_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_37),
        .Q(mctl_ack_stat),
        .R(SR));
  LUT3 #(
    .INIT(8'hBA)) 
    mctl_bus_bsy_i_1
       (.I0(mctl_bus_bsy0),
        .I1(mctl_dtct_stp),
        .I2(mctl_bus_bsy),
        .O(mctl_bus_bsy_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    mctl_bus_bsy_i_2
       (.I0(mctl_dtct_sta),
        .I1(synfil_sda[2]),
        .I2(mctl_bus_bsy_i_3_n_0),
        .I3(synfil_scl[2]),
        .I4(synfil_scl[4]),
        .I5(synfil_scl[3]),
        .O(mctl_bus_bsy0));
  LUT2 #(
    .INIT(4'h7)) 
    mctl_bus_bsy_i_3
       (.I0(synfil_sda[3]),
        .I1(synfil_sda[4]),
        .O(mctl_bus_bsy_i_3_n_0));
  FDRE mctl_bus_bsy_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_bus_bsy_i_1_n_0),
        .Q(mctl_bus_bsy),
        .R(SR));
  FDRE mctl_bus_err_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_1),
        .Q(mctl_bus_err),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h2)) 
    mctl_dtct_sclf_i_1
       (.I0(p_1_in),
        .I1(p_0_in9_in),
        .O(mctl_dtct_sclf0));
  FDRE mctl_dtct_sclf_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_dtct_sclf0),
        .Q(mctl_dtct_sclf),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    mctl_dtct_sclr_i_1
       (.I0(p_0_in9_in),
        .I1(p_1_in),
        .O(mctl_dtct_sclr0));
  FDRE mctl_dtct_sclr_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_dtct_sclr0),
        .Q(mctl_dtct_sclr),
        .R(SR));
  LUT4 #(
    .INIT(16'h0800)) 
    mctl_dtct_sta0
       (.I0(\mctl_scl_f_reg_n_0_[0] ),
        .I1(p_1_in),
        .I2(p_2_in),
        .I3(p_0_in7_in),
        .O(mctl_dtct_sta0__0));
  FDRE mctl_dtct_sta_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_dtct_sta0__0),
        .Q(mctl_dtct_sta),
        .R(SR));
  LUT4 #(
    .INIT(16'h0800)) 
    mctl_dtct_stp0
       (.I0(\mctl_scl_f_reg_n_0_[0] ),
        .I1(p_1_in),
        .I2(p_0_in7_in),
        .I3(p_2_in),
        .O(mctl_dtct_stp0__0));
  FDRE mctl_dtct_stp_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_dtct_stp0__0),
        .Q(mctl_dtct_stp),
        .R(SR));
  LUT3 #(
    .INIT(8'h8F)) 
    mctl_mrst_i_1
       (.I0(bdatw[5]),
        .I1(p_16_in),
        .I2(rst_n),
        .O(mctl_mrst_i_1_n_0));
  FDRE mctl_mrst_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_mrst_i_1_n_0),
        .Q(mctl_mrst),
        .R(\<const0> ));
  FDRE mctl_mtef_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_36),
        .Q(mctl_mtef),
        .R(SR));
  LUT3 #(
    .INIT(8'hE8)) 
    \mctl_scl_f[0]_i_1 
       (.I0(synfil_scl[2]),
        .I1(synfil_scl[4]),
        .I2(synfil_scl[3]),
        .O(mctl_scl_s));
  FDSE \mctl_scl_f_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_scl_s),
        .Q(\mctl_scl_f_reg_n_0_[0] ),
        .S(SR));
  FDSE \mctl_scl_f_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl_scl_f_reg_n_0_[0] ),
        .Q(mctl_scl_f),
        .S(SR));
  FDSE \mctl_scl_f_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_scl_f),
        .Q(p_0_in9_in),
        .S(SR));
  FDSE \mctl_scl_f_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in9_in),
        .Q(p_1_in),
        .S(SR));
  LUT3 #(
    .INIT(8'hE8)) 
    \mctl_sda_f[0]_i_1 
       (.I0(synfil_sda[2]),
        .I1(synfil_sda[4]),
        .I2(synfil_sda[3]),
        .O(D));
  FDSE \mctl_sda_f_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D),
        .Q(\mctl_sda_f_reg_n_0_[0] ),
        .S(SR));
  FDSE \mctl_sda_f_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl_sda_f_reg_n_0_[0] ),
        .Q(p_2_in),
        .S(SR));
  FDSE \mctl_sda_f_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_2_in),
        .Q(p_0_in7_in),
        .S(SR));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    mctl_stwmbaud_rd_i_1
       (.I0(bcs_stws_n),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[2]),
        .I4(badr[0]),
        .I5(badr[3]),
        .O(mctl_stwmbaud_rd0));
  FDRE mctl_stwmbaud_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(mctl_stwmbaud_rd0),
        .Q(mctl_stwmbaud_rd),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    mctl_stwmctl_rd_i_1
       (.I0(bcs_stws_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[3]),
        .I5(badr[2]),
        .O(mctl_stwmctl_rd0));
  FDRE mctl_stwmctl_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(mctl_stwmctl_rd0),
        .Q(mctl_stwmctl_rd),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    mctl_stwmdatr_rd_i_1
       (.I0(bcs_stws_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[3]),
        .I5(badr[2]),
        .O(mctl_stwmdatr_rd0));
  FDRE mctl_stwmdatr_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(mctl_stwmdatr_rd0),
        .Q(mctl_stwmdatr_rd),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    mctl_stwmreqr_rd_i_1
       (.I0(bcs_stws_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(badr[1]),
        .I5(badr[3]),
        .O(mctl_stwmreqr_rd0));
  FDRE mctl_stwmreqr_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(mctl_stwmreqr_rd0),
        .Q(mctl_stwmreqr_rd),
        .R(SR));
  CARRY4 mctl_tmr_ovf_carry
       (.CI(\<const0> ),
        .CO({mctl_tmr_ovf_carry_n_0,mctl_tmr_ovf_carry_n_1,mctl_tmr_ovf_carry_n_2,mctl_tmr_ovf_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({mctl_tmr_ovf_carry_i_1_n_0,mctl_tmr_ovf_carry_i_2_n_0,mctl_tmr_ovf_carry_i_3_n_0,mctl_tmr_ovf_carry_i_4_n_0}));
  CARRY4 mctl_tmr_ovf_carry__0
       (.CI(mctl_tmr_ovf_carry_n_0),
        .CO({mctl_tmr_ovf,mctl_tmr_ovf_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,fsm_n_14,fsm_n_15}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mctl_tmr_ovf_carry_i_1
       (.I0(tcnt_reg[9]),
        .I1(tcnt_cmp[9]),
        .I2(tcnt_cmp[11]),
        .I3(tcnt_reg[11]),
        .I4(tcnt_cmp[10]),
        .I5(tcnt_reg[10]),
        .O(mctl_tmr_ovf_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mctl_tmr_ovf_carry_i_2
       (.I0(tcnt_reg[6]),
        .I1(tcnt_cmp[6]),
        .I2(tcnt_cmp[8]),
        .I3(tcnt_reg[8]),
        .I4(tcnt_cmp[7]),
        .I5(tcnt_reg[7]),
        .O(mctl_tmr_ovf_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mctl_tmr_ovf_carry_i_3
       (.I0(tcnt_reg[3]),
        .I1(tcnt_cmp[3]),
        .I2(tcnt_cmp[5]),
        .I3(tcnt_reg[5]),
        .I4(tcnt_cmp[4]),
        .I5(tcnt_reg[4]),
        .O(mctl_tmr_ovf_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mctl_tmr_ovf_carry_i_4
       (.I0(tcnt_reg[0]),
        .I1(tcnt_cmp[0]),
        .I2(tcnt_cmp[2]),
        .I3(tcnt_reg[2]),
        .I4(tcnt_cmp[1]),
        .I5(tcnt_reg[1]),
        .O(mctl_tmr_ovf_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \stwmctl[0]_i_1 
       (.I0(bdatw[0]),
        .I1(p_16_in),
        .I2(mctl_mrae),
        .O(\stwmctl[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \stwmctl[2]_i_1 
       (.I0(bdatw[2]),
        .I1(p_16_in),
        .I2(mctl_mtee),
        .O(\stwmctl[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \stwmctl[2]_i_2 
       (.I0(p_21_in),
        .I1(badr[0]),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[2]),
        .O(p_16_in));
  FDRE \stwmctl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\stwmctl[0]_i_1_n_0 ),
        .Q(mctl_mrae),
        .R(SR));
  FDRE \stwmctl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\stwmctl[2]_i_1_n_0 ),
        .Q(mctl_mtee),
        .R(SR));
  LUT3 #(
    .INIT(8'hA8)) 
    stws_mrar_INST_0
       (.I0(mctl_mrae),
        .I1(mctl_bus_err),
        .I2(mdat_mraf),
        .O(stws_mrar));
  LUT3 #(
    .INIT(8'hA8)) 
    stws_mter_INST_0
       (.I0(mctl_mtee),
        .I1(mctl_bus_err),
        .I2(mctl_mtef),
        .O(stws_mter));
  LUT2 #(
    .INIT(4'hB)) 
    \synfil_scl[4]_i_1 
       (.I0(mctl_mrst),
        .I1(rst_n),
        .O(SR));
  FDSE \synfil_scl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stws_scl_i),
        .Q(synfil_scl[0]),
        .S(SR));
  FDSE \synfil_scl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_scl[0]),
        .Q(synfil_scl[1]),
        .S(SR));
  FDSE \synfil_scl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_scl[1]),
        .Q(synfil_scl[2]),
        .S(SR));
  FDSE \synfil_scl_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_scl[2]),
        .Q(synfil_scl[3]),
        .S(SR));
  FDSE \synfil_scl_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_scl[3]),
        .Q(synfil_scl[4]),
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
  LUT1 #(
    .INIT(2'h1)) 
    \tcnt[0]_i_3 
       (.I0(tcnt_reg[0]),
        .O(\tcnt[0]_i_3_n_0 ));
  FDSE \tcnt_cmp_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(tcnt_cmp[0]),
        .S(SR));
  FDSE \tcnt_cmp_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[10]),
        .Q(tcnt_cmp[10]),
        .S(SR));
  FDSE \tcnt_cmp_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[11]),
        .Q(tcnt_cmp[11]),
        .S(SR));
  FDSE \tcnt_cmp_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[12]),
        .Q(tcnt_cmp[12]),
        .S(SR));
  FDSE \tcnt_cmp_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[13]),
        .Q(tcnt_cmp[13]),
        .S(SR));
  FDSE \tcnt_cmp_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[14]),
        .Q(tcnt_cmp[14]),
        .S(SR));
  FDSE \tcnt_cmp_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[15]),
        .Q(tcnt_cmp[15]),
        .S(SR));
  FDSE \tcnt_cmp_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[1]),
        .Q(tcnt_cmp[1]),
        .S(SR));
  FDSE \tcnt_cmp_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[2]),
        .Q(tcnt_cmp[2]),
        .S(SR));
  FDSE \tcnt_cmp_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[3]),
        .Q(tcnt_cmp[3]),
        .S(SR));
  FDSE \tcnt_cmp_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[4]),
        .Q(tcnt_cmp[4]),
        .S(SR));
  FDSE \tcnt_cmp_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[5]),
        .Q(tcnt_cmp[5]),
        .S(SR));
  FDSE \tcnt_cmp_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[6]),
        .Q(tcnt_cmp[6]),
        .S(SR));
  FDSE \tcnt_cmp_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[7]),
        .Q(tcnt_cmp[7]),
        .S(SR));
  FDSE \tcnt_cmp_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[8]),
        .Q(tcnt_cmp[8]),
        .S(SR));
  FDSE \tcnt_cmp_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[9]),
        .Q(tcnt_cmp[9]),
        .S(SR));
  FDRE \tcnt_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[0]_i_2_n_7 ),
        .Q(tcnt_reg[0]),
        .R(fsm_n_6));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tcnt_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\tcnt_reg[0]_i_2_n_0 ,\tcnt_reg[0]_i_2_n_1 ,\tcnt_reg[0]_i_2_n_2 ,\tcnt_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\tcnt_reg[0]_i_2_n_4 ,\tcnt_reg[0]_i_2_n_5 ,\tcnt_reg[0]_i_2_n_6 ,\tcnt_reg[0]_i_2_n_7 }),
        .S({tcnt_reg[3:1],\tcnt[0]_i_3_n_0 }));
  FDRE \tcnt_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[8]_i_1_n_5 ),
        .Q(tcnt_reg[10]),
        .R(fsm_n_6));
  FDRE \tcnt_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[8]_i_1_n_4 ),
        .Q(tcnt_reg[11]),
        .R(fsm_n_6));
  FDRE \tcnt_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[12]_i_1_n_7 ),
        .Q(tcnt_reg[12]),
        .R(fsm_n_6));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tcnt_reg[12]_i_1 
       (.CI(\tcnt_reg[8]_i_1_n_0 ),
        .CO({\tcnt_reg[12]_i_1_n_1 ,\tcnt_reg[12]_i_1_n_2 ,\tcnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tcnt_reg[12]_i_1_n_4 ,\tcnt_reg[12]_i_1_n_5 ,\tcnt_reg[12]_i_1_n_6 ,\tcnt_reg[12]_i_1_n_7 }),
        .S(tcnt_reg[15:12]));
  FDRE \tcnt_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[12]_i_1_n_6 ),
        .Q(tcnt_reg[13]),
        .R(fsm_n_6));
  FDRE \tcnt_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[12]_i_1_n_5 ),
        .Q(tcnt_reg[14]),
        .R(fsm_n_6));
  FDRE \tcnt_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[12]_i_1_n_4 ),
        .Q(tcnt_reg[15]),
        .R(fsm_n_6));
  FDRE \tcnt_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[0]_i_2_n_6 ),
        .Q(tcnt_reg[1]),
        .R(fsm_n_6));
  FDRE \tcnt_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[0]_i_2_n_5 ),
        .Q(tcnt_reg[2]),
        .R(fsm_n_6));
  FDRE \tcnt_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[0]_i_2_n_4 ),
        .Q(tcnt_reg[3]),
        .R(fsm_n_6));
  FDRE \tcnt_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[4]_i_1_n_7 ),
        .Q(tcnt_reg[4]),
        .R(fsm_n_6));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tcnt_reg[4]_i_1 
       (.CI(\tcnt_reg[0]_i_2_n_0 ),
        .CO({\tcnt_reg[4]_i_1_n_0 ,\tcnt_reg[4]_i_1_n_1 ,\tcnt_reg[4]_i_1_n_2 ,\tcnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tcnt_reg[4]_i_1_n_4 ,\tcnt_reg[4]_i_1_n_5 ,\tcnt_reg[4]_i_1_n_6 ,\tcnt_reg[4]_i_1_n_7 }),
        .S(tcnt_reg[7:4]));
  FDRE \tcnt_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[4]_i_1_n_6 ),
        .Q(tcnt_reg[5]),
        .R(fsm_n_6));
  FDRE \tcnt_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[4]_i_1_n_5 ),
        .Q(tcnt_reg[6]),
        .R(fsm_n_6));
  FDRE \tcnt_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[4]_i_1_n_4 ),
        .Q(tcnt_reg[7]),
        .R(fsm_n_6));
  FDRE \tcnt_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[8]_i_1_n_7 ),
        .Q(tcnt_reg[8]),
        .R(fsm_n_6));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tcnt_reg[8]_i_1 
       (.CI(\tcnt_reg[4]_i_1_n_0 ),
        .CO({\tcnt_reg[8]_i_1_n_0 ,\tcnt_reg[8]_i_1_n_1 ,\tcnt_reg[8]_i_1_n_2 ,\tcnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tcnt_reg[8]_i_1_n_4 ,\tcnt_reg[8]_i_1_n_5 ,\tcnt_reg[8]_i_1_n_6 ,\tcnt_reg[8]_i_1_n_7 }),
        .S(tcnt_reg[11:8]));
  FDRE \tcnt_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[8]_i_1_n_6 ),
        .Q(tcnt_reg[9]),
        .R(fsm_n_6));
endmodule

module stwm_mdat
   (mdat_rcv_nack,
    mdat_mtaf,
    \badr[0] ,
    mdat_sda_o,
    mdat_trg_sp,
    mdat_trg_rd,
    mdat_trg_wr,
    mdat_mraf,
    p_21_in,
    mctl_stwmreqr_wr,
    \stwmdats_reg[8]_0 ,
    \stwmdats_reg[8]_1 ,
    \stwmdats_reg[8]_2 ,
    mdat_trg_sp_reg_0,
    \stwmdats_reg[8]_3 ,
    mctl_bus_bsy_reg,
    \stwmdats_reg[8]_4 ,
    \stwmdats_reg[8]_5 ,
    mdat_trg_rd_reg_0,
    mdat_trg_rd_reg_1,
    \stwmdatr_reg[7]_0 ,
    SR,
    E,
    clk,
    \mdat_dats_sft_reg[0]_0 ,
    mdat_rcv_nack_reg_0,
    mdat_trg_sp_reg_1,
    mdat_trg_rd_reg_2,
    mdat_trg_wr_reg_0,
    mdat_mraf_reg_0,
    badr,
    mdat_sda_o_reg_0,
    Q,
    brdy,
    bcs_stws_n,
    bcmdw,
    mctl_bus_bsy,
    mctl_dtct_sclf,
    bdatw,
    \mdat_dats_sft_reg[0]_1 ,
    \mdat_dats_reg[7]_0 ,
    D,
    \stwmdatr_reg[0]_0 ,
    \stwmdatr_reg[7]_1 );
  output mdat_rcv_nack;
  output mdat_mtaf;
  output [0:0]\badr[0] ;
  output mdat_sda_o;
  output mdat_trg_sp;
  output mdat_trg_rd;
  output mdat_trg_wr;
  output mdat_mraf;
  output p_21_in;
  output mctl_stwmreqr_wr;
  output \stwmdats_reg[8]_0 ;
  output [0:0]\stwmdats_reg[8]_1 ;
  output \stwmdats_reg[8]_2 ;
  output mdat_trg_sp_reg_0;
  output \stwmdats_reg[8]_3 ;
  output mctl_bus_bsy_reg;
  output \stwmdats_reg[8]_4 ;
  output \stwmdats_reg[8]_5 ;
  output mdat_trg_rd_reg_0;
  output mdat_trg_rd_reg_1;
  output [7:0]\stwmdatr_reg[7]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input clk;
  input [0:0]\mdat_dats_sft_reg[0]_0 ;
  input mdat_rcv_nack_reg_0;
  input mdat_trg_sp_reg_1;
  input mdat_trg_rd_reg_2;
  input mdat_trg_wr_reg_0;
  input mdat_mraf_reg_0;
  input [3:0]badr;
  input mdat_sda_o_reg_0;
  input [3:0]Q;
  input brdy;
  input bcs_stws_n;
  input bcmdw;
  input mctl_bus_bsy;
  input mctl_dtct_sclf;
  input [8:0]bdatw;
  input [0:0]\mdat_dats_sft_reg[0]_1 ;
  input [0:0]\mdat_dats_reg[7]_0 ;
  input [0:0]D;
  input [0:0]\stwmdatr_reg[0]_0 ;
  input [0:0]\stwmdatr_reg[7]_1 ;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire [0:0]\badr[0] ;
  wire bcmdw;
  wire bcs_stws_n;
  wire [8:0]bdatw;
  wire brdy;
  wire clk;
  wire mctl_bus_bsy;
  wire mctl_bus_bsy_reg;
  wire mctl_dtct_sclf;
  wire mctl_stwmreqr_wr;
  wire [7:0]mdat_datr_sft;
  wire [7:0]mdat_dats;
  wire [0:0]\mdat_dats_reg[7]_0 ;
  wire [7:0]mdat_dats_sft;
  wire [0:0]\mdat_dats_sft_reg[0]_0 ;
  wire [0:0]\mdat_dats_sft_reg[0]_1 ;
  wire mdat_mraf;
  wire mdat_mraf_reg_0;
  wire mdat_mtaf;
  wire mdat_nak_rv;
  wire mdat_rcv_nack;
  wire mdat_rcv_nack_reg_0;
  wire mdat_sda_o;
  wire mdat_sda_o0;
  wire mdat_sda_o_i_2_n_0;
  wire mdat_sda_o_i_3_n_0;
  wire mdat_sda_o_i_4_n_0;
  wire mdat_sda_o_reg_0;
  wire mdat_trg_rd;
  wire mdat_trg_rd_reg_0;
  wire mdat_trg_rd_reg_1;
  wire mdat_trg_rd_reg_2;
  wire mdat_trg_sp;
  wire mdat_trg_sp_reg_0;
  wire mdat_trg_sp_reg_1;
  wire mdat_trg_wr;
  wire mdat_trg_wr_reg_0;
  wire p_21_in;
  wire [0:0]\stwmdatr_reg[0]_0 ;
  wire [7:0]\stwmdatr_reg[7]_0 ;
  wire [0:0]\stwmdatr_reg[7]_1 ;
  wire \stwmdats_reg[8]_0 ;
  wire [0:0]\stwmdats_reg[8]_1 ;
  wire \stwmdats_reg[8]_2 ;
  wire \stwmdats_reg[8]_3 ;
  wire \stwmdats_reg[8]_4 ;
  wire \stwmdats_reg[8]_5 ;
  wire \stwmdats_reg_n_0_[0] ;
  wire \stwmdats_reg_n_0_[1] ;
  wire \stwmdats_reg_n_0_[2] ;
  wire \stwmdats_reg_n_0_[3] ;
  wire \stwmdats_reg_n_0_[4] ;
  wire \stwmdats_reg_n_0_[5] ;
  wire \stwmdats_reg_n_0_[6] ;
  wire \stwmdats_reg_n_0_[7] ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h888B)) 
    mctl_scl_o_i_4
       (.I0(\stwmdats_reg[8]_1 ),
        .I1(mdat_trg_wr),
        .I2(mdat_trg_sp),
        .I3(mdat_trg_rd),
        .O(\stwmdats_reg[8]_2 ));
  LUT6 #(
    .INIT(64'h800F80008F0F800F)) 
    mctl_sda_o_i_5
       (.I0(\stwmdats_reg[8]_1 ),
        .I1(mdat_trg_wr),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(mdat_nak_rv),
        .I5(mctl_dtct_sclf),
        .O(\stwmdats_reg[8]_4 ));
  FDRE \mdat_datr_sft_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D),
        .Q(mdat_datr_sft[0]),
        .R(SR));
  FDRE \mdat_datr_sft_reg[1] 
       (.C(clk),
        .CE(E),
        .D(mdat_datr_sft[0]),
        .Q(mdat_datr_sft[1]),
        .R(SR));
  FDRE \mdat_datr_sft_reg[2] 
       (.C(clk),
        .CE(E),
        .D(mdat_datr_sft[1]),
        .Q(mdat_datr_sft[2]),
        .R(SR));
  FDRE \mdat_datr_sft_reg[3] 
       (.C(clk),
        .CE(E),
        .D(mdat_datr_sft[2]),
        .Q(mdat_datr_sft[3]),
        .R(SR));
  FDRE \mdat_datr_sft_reg[4] 
       (.C(clk),
        .CE(E),
        .D(mdat_datr_sft[3]),
        .Q(mdat_datr_sft[4]),
        .R(SR));
  FDRE \mdat_datr_sft_reg[5] 
       (.C(clk),
        .CE(E),
        .D(mdat_datr_sft[4]),
        .Q(mdat_datr_sft[5]),
        .R(SR));
  FDRE \mdat_datr_sft_reg[6] 
       (.C(clk),
        .CE(E),
        .D(mdat_datr_sft[5]),
        .Q(mdat_datr_sft[6]),
        .R(SR));
  FDRE \mdat_datr_sft_reg[7] 
       (.C(clk),
        .CE(E),
        .D(mdat_datr_sft[6]),
        .Q(mdat_datr_sft[7]),
        .R(SR));
  FDRE \mdat_dats_reg[0] 
       (.C(clk),
        .CE(\mdat_dats_reg[7]_0 ),
        .D(\stwmdats_reg_n_0_[0] ),
        .Q(mdat_dats[0]),
        .R(SR));
  FDRE \mdat_dats_reg[1] 
       (.C(clk),
        .CE(\mdat_dats_reg[7]_0 ),
        .D(\stwmdats_reg_n_0_[1] ),
        .Q(mdat_dats[1]),
        .R(SR));
  FDRE \mdat_dats_reg[2] 
       (.C(clk),
        .CE(\mdat_dats_reg[7]_0 ),
        .D(\stwmdats_reg_n_0_[2] ),
        .Q(mdat_dats[2]),
        .R(SR));
  FDRE \mdat_dats_reg[3] 
       (.C(clk),
        .CE(\mdat_dats_reg[7]_0 ),
        .D(\stwmdats_reg_n_0_[3] ),
        .Q(mdat_dats[3]),
        .R(SR));
  FDRE \mdat_dats_reg[4] 
       (.C(clk),
        .CE(\mdat_dats_reg[7]_0 ),
        .D(\stwmdats_reg_n_0_[4] ),
        .Q(mdat_dats[4]),
        .R(SR));
  FDRE \mdat_dats_reg[5] 
       (.C(clk),
        .CE(\mdat_dats_reg[7]_0 ),
        .D(\stwmdats_reg_n_0_[5] ),
        .Q(mdat_dats[5]),
        .R(SR));
  FDRE \mdat_dats_reg[6] 
       (.C(clk),
        .CE(\mdat_dats_reg[7]_0 ),
        .D(\stwmdats_reg_n_0_[6] ),
        .Q(mdat_dats[6]),
        .R(SR));
  FDRE \mdat_dats_reg[7] 
       (.C(clk),
        .CE(\mdat_dats_reg[7]_0 ),
        .D(\stwmdats_reg_n_0_[7] ),
        .Q(mdat_dats[7]),
        .R(SR));
  FDRE \mdat_dats_sft_reg[0] 
       (.C(clk),
        .CE(\mdat_dats_sft_reg[0]_1 ),
        .D(mdat_dats_sft[1]),
        .Q(mdat_dats_sft[0]),
        .R(\mdat_dats_sft_reg[0]_0 ));
  FDRE \mdat_dats_sft_reg[1] 
       (.C(clk),
        .CE(\mdat_dats_sft_reg[0]_1 ),
        .D(mdat_dats_sft[2]),
        .Q(mdat_dats_sft[1]),
        .R(\mdat_dats_sft_reg[0]_0 ));
  FDRE \mdat_dats_sft_reg[2] 
       (.C(clk),
        .CE(\mdat_dats_sft_reg[0]_1 ),
        .D(mdat_dats_sft[3]),
        .Q(mdat_dats_sft[2]),
        .R(\mdat_dats_sft_reg[0]_0 ));
  FDRE \mdat_dats_sft_reg[3] 
       (.C(clk),
        .CE(\mdat_dats_sft_reg[0]_1 ),
        .D(mdat_dats_sft[4]),
        .Q(mdat_dats_sft[3]),
        .R(\mdat_dats_sft_reg[0]_0 ));
  FDRE \mdat_dats_sft_reg[4] 
       (.C(clk),
        .CE(\mdat_dats_sft_reg[0]_1 ),
        .D(mdat_dats_sft[5]),
        .Q(mdat_dats_sft[4]),
        .R(\mdat_dats_sft_reg[0]_0 ));
  FDRE \mdat_dats_sft_reg[5] 
       (.C(clk),
        .CE(\mdat_dats_sft_reg[0]_1 ),
        .D(mdat_dats_sft[6]),
        .Q(mdat_dats_sft[5]),
        .R(\mdat_dats_sft_reg[0]_0 ));
  FDRE \mdat_dats_sft_reg[6] 
       (.C(clk),
        .CE(\mdat_dats_sft_reg[0]_1 ),
        .D(mdat_dats_sft[7]),
        .Q(mdat_dats_sft[6]),
        .R(\mdat_dats_sft_reg[0]_0 ));
  FDSE \mdat_dats_sft_reg[7] 
       (.C(clk),
        .CE(\mdat_dats_sft_reg[0]_1 ),
        .D(\<const0> ),
        .Q(mdat_dats_sft[7]),
        .S(\mdat_dats_sft_reg[0]_0 ));
  FDRE mdat_mraf_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mdat_mraf_reg_0),
        .Q(mdat_mraf),
        .R(SR));
  FDSE mdat_mtaf_reg
       (.C(clk),
        .CE(\badr[0] ),
        .D(\<const0> ),
        .Q(mdat_mtaf),
        .S(\mdat_dats_sft_reg[0]_0 ));
  FDRE mdat_nak_rv_reg
       (.C(clk),
        .CE(E),
        .D(mdat_rcv_nack),
        .Q(mdat_nak_rv),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000020)) 
    mdat_rcv_nack_i_2
       (.I0(p_21_in),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[1]),
        .I4(badr[3]),
        .O(mctl_stwmreqr_wr));
  FDRE mdat_rcv_nack_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mdat_rcv_nack_reg_0),
        .Q(mdat_rcv_nack),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    mdat_sda_o_i_1
       (.I0(mdat_sda_o_i_2_n_0),
        .I1(mdat_dats[0]),
        .I2(mdat_dats_sft[0]),
        .I3(mdat_sda_o_reg_0),
        .I4(Q[3]),
        .O(mdat_sda_o0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    mdat_sda_o_i_2
       (.I0(mdat_sda_o_i_3_n_0),
        .I1(mdat_dats_sft[1]),
        .I2(mdat_dats[1]),
        .I3(mdat_dats_sft[2]),
        .I4(mdat_dats[2]),
        .I5(mdat_sda_o_i_4_n_0),
        .O(mdat_sda_o_i_2_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    mdat_sda_o_i_3
       (.I0(mdat_dats_sft[3]),
        .I1(mdat_dats[3]),
        .I2(mdat_dats_sft[4]),
        .I3(mdat_dats[4]),
        .O(mdat_sda_o_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mdat_sda_o_i_4
       (.I0(mdat_dats[6]),
        .I1(mdat_dats_sft[6]),
        .I2(mdat_dats[5]),
        .I3(mdat_dats_sft[5]),
        .I4(mdat_dats_sft[7]),
        .I5(mdat_dats[7]),
        .O(mdat_sda_o_i_4_n_0));
  FDRE mdat_sda_o_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mdat_sda_o0),
        .Q(mdat_sda_o),
        .R(SR));
  FDRE mdat_trg_rd_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mdat_trg_rd_reg_2),
        .Q(mdat_trg_rd),
        .R(\<const0> ));
  FDRE mdat_trg_sp_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mdat_trg_sp_reg_1),
        .Q(mdat_trg_sp),
        .R(\<const0> ));
  FDRE mdat_trg_wr_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(mdat_trg_wr_reg_0),
        .Q(mdat_trg_wr),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'hB)) 
    \stat[0]_i_4 
       (.I0(mdat_trg_rd),
        .I1(mdat_trg_sp),
        .O(mdat_trg_rd_reg_1));
  LUT5 #(
    .INIT(32'hFFFFFF8B)) 
    \stat[0]_i_6 
       (.I0(\stwmdats_reg[8]_1 ),
        .I1(mdat_trg_wr),
        .I2(mdat_trg_rd),
        .I3(Q[1]),
        .I4(mctl_bus_bsy),
        .O(\stwmdats_reg[8]_5 ));
  LUT3 #(
    .INIT(8'h74)) 
    \stat[3]_i_5 
       (.I0(\stwmdats_reg[8]_1 ),
        .I1(mdat_trg_wr),
        .I2(mdat_trg_rd),
        .O(\stwmdats_reg[8]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[4]_i_3 
       (.I0(mdat_trg_sp),
        .I1(mdat_trg_rd),
        .O(mdat_trg_sp_reg_0));
  FDRE \stwmdatr_reg[0] 
       (.C(clk),
        .CE(\stwmdatr_reg[7]_1 ),
        .D(mdat_datr_sft[0]),
        .Q(\stwmdatr_reg[7]_0 [0]),
        .R(\stwmdatr_reg[0]_0 ));
  FDRE \stwmdatr_reg[1] 
       (.C(clk),
        .CE(\stwmdatr_reg[7]_1 ),
        .D(mdat_datr_sft[1]),
        .Q(\stwmdatr_reg[7]_0 [1]),
        .R(\stwmdatr_reg[0]_0 ));
  FDRE \stwmdatr_reg[2] 
       (.C(clk),
        .CE(\stwmdatr_reg[7]_1 ),
        .D(mdat_datr_sft[2]),
        .Q(\stwmdatr_reg[7]_0 [2]),
        .R(\stwmdatr_reg[0]_0 ));
  FDRE \stwmdatr_reg[3] 
       (.C(clk),
        .CE(\stwmdatr_reg[7]_1 ),
        .D(mdat_datr_sft[3]),
        .Q(\stwmdatr_reg[7]_0 [3]),
        .R(\stwmdatr_reg[0]_0 ));
  FDRE \stwmdatr_reg[4] 
       (.C(clk),
        .CE(\stwmdatr_reg[7]_1 ),
        .D(mdat_datr_sft[4]),
        .Q(\stwmdatr_reg[7]_0 [4]),
        .R(\stwmdatr_reg[0]_0 ));
  FDRE \stwmdatr_reg[5] 
       (.C(clk),
        .CE(\stwmdatr_reg[7]_1 ),
        .D(mdat_datr_sft[5]),
        .Q(\stwmdatr_reg[7]_0 [5]),
        .R(\stwmdatr_reg[0]_0 ));
  FDRE \stwmdatr_reg[6] 
       (.C(clk),
        .CE(\stwmdatr_reg[7]_1 ),
        .D(mdat_datr_sft[6]),
        .Q(\stwmdatr_reg[7]_0 [6]),
        .R(\stwmdatr_reg[0]_0 ));
  FDRE \stwmdatr_reg[7] 
       (.C(clk),
        .CE(\stwmdatr_reg[7]_1 ),
        .D(mdat_datr_sft[7]),
        .Q(\stwmdatr_reg[7]_0 [7]),
        .R(\stwmdatr_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \stwmdats[8]_i_2 
       (.I0(p_21_in),
        .I1(badr[0]),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[2]),
        .O(\badr[0] ));
  LUT3 #(
    .INIT(8'h20)) 
    \stwmdats[8]_i_3 
       (.I0(brdy),
        .I1(bcs_stws_n),
        .I2(bcmdw),
        .O(p_21_in));
  FDRE \stwmdats_reg[0] 
       (.C(clk),
        .CE(\badr[0] ),
        .D(bdatw[0]),
        .Q(\stwmdats_reg_n_0_[0] ),
        .R(\mdat_dats_sft_reg[0]_0 ));
  FDRE \stwmdats_reg[1] 
       (.C(clk),
        .CE(\badr[0] ),
        .D(bdatw[1]),
        .Q(\stwmdats_reg_n_0_[1] ),
        .R(\mdat_dats_sft_reg[0]_0 ));
  FDRE \stwmdats_reg[2] 
       (.C(clk),
        .CE(\badr[0] ),
        .D(bdatw[2]),
        .Q(\stwmdats_reg_n_0_[2] ),
        .R(\mdat_dats_sft_reg[0]_0 ));
  FDRE \stwmdats_reg[3] 
       (.C(clk),
        .CE(\badr[0] ),
        .D(bdatw[3]),
        .Q(\stwmdats_reg_n_0_[3] ),
        .R(\mdat_dats_sft_reg[0]_0 ));
  FDRE \stwmdats_reg[4] 
       (.C(clk),
        .CE(\badr[0] ),
        .D(bdatw[4]),
        .Q(\stwmdats_reg_n_0_[4] ),
        .R(\mdat_dats_sft_reg[0]_0 ));
  FDRE \stwmdats_reg[5] 
       (.C(clk),
        .CE(\badr[0] ),
        .D(bdatw[5]),
        .Q(\stwmdats_reg_n_0_[5] ),
        .R(\mdat_dats_sft_reg[0]_0 ));
  FDRE \stwmdats_reg[6] 
       (.C(clk),
        .CE(\badr[0] ),
        .D(bdatw[6]),
        .Q(\stwmdats_reg_n_0_[6] ),
        .R(\mdat_dats_sft_reg[0]_0 ));
  FDRE \stwmdats_reg[7] 
       (.C(clk),
        .CE(\badr[0] ),
        .D(bdatw[7]),
        .Q(\stwmdats_reg_n_0_[7] ),
        .R(\mdat_dats_sft_reg[0]_0 ));
  FDRE \stwmdats_reg[8] 
       (.C(clk),
        .CE(\badr[0] ),
        .D(bdatw[8]),
        .Q(\stwmdats_reg[8]_1 ),
        .R(\mdat_dats_sft_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hF404000000000000)) 
    \tcnt_cmp[15]_i_18 
       (.I0(mdat_trg_rd),
        .I1(mdat_trg_sp),
        .I2(mdat_trg_wr),
        .I3(\stwmdats_reg[8]_1 ),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(mdat_trg_rd_reg_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \tcnt_cmp[15]_i_19 
       (.I0(mctl_bus_bsy),
        .I1(mdat_trg_wr),
        .I2(mdat_trg_sp),
        .I3(mdat_trg_rd),
        .O(mctl_bus_bsy_reg));
  LUT4 #(
    .INIT(16'h88B8)) 
    \tcnt_cmp[15]_i_9 
       (.I0(\stwmdats_reg[8]_1 ),
        .I1(mdat_trg_wr),
        .I2(mdat_trg_sp),
        .I3(mdat_trg_rd),
        .O(\stwmdats_reg[8]_3 ));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module stwmst
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
    stwm_scl_o,
    stwm_sda_o,
    stws_mter,
    stws_mrar,
    .bdatr({\<const0> ,\^bdatr [14],\^bdatr [13],\^bdatr [12],\^bdatr [11],\^bdatr [10],\^bdatr [9],\^bdatr [8],\^bdatr [7],\^bdatr [6],\^bdatr [5],\^bdatr [4],\^bdatr [3],\^bdatr [2],\^bdatr [1],\^bdatr [0]}));
//
//	Synchronous Two Wire serial Master Unit
//		(c) 2021	1YEN Toru
//
//
//	2021/08/14	ver.1.00
//		i2c like synchronous two wire serial master
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
  output stwm_scl_o;
  output stwm_sda_o;
  output stws_mter;
  output stws_mrar;
  output \<const0> ;
     output [14:0]\^bdatr ;

  wire \<const0> ;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_stws_n;
  wire [14:0]\^bdatr ;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire hcnt;
  wire hcnt_ovf;
  wire lcnt;
  wire lcnt0;
  wire lcnt_ovf;
  wire mclk_scl_o;
  wire mclk_start_cnt;
  wire mctl_bus_bsy;
  wire mctl_clk_gen;
  wire mctl_dtct_sclf;
  wire mctl_lat_rv;
  wire mctl_mrst;
  wire mctl_n_0;
  wire mctl_n_11;
  wire mctl_n_37;
  wire mctl_n_38;
  wire mctl_n_39;
  wire mctl_n_40;
  wire mctl_n_41;
  wire mctl_n_42;
  wire mctl_n_43;
  wire mctl_n_5;
  wire mctl_rst_sd;
  wire mctl_sda_s;
  wire mctl_stwmdats_wr;
  wire mctl_stwmreqr_wr;
  wire mdat_datr_sft0;
  wire mdat_mraf;
  wire mdat_mtaf;
  wire mdat_n_10;
  wire mdat_n_12;
  wire mdat_n_13;
  wire mdat_n_14;
  wire mdat_n_15;
  wire mdat_n_16;
  wire mdat_n_17;
  wire mdat_n_18;
  wire mdat_n_19;
  wire mdat_rcv_nack;
  wire mdat_sda_o;
  wire mdat_trg_rd;
  wire mdat_trg_sp;
  wire mdat_trg_wr;
  wire p_21_in;
  wire rst_n;
  wire sel00;
  wire [4:0]stat;
  wire stwm_scl_o;
  wire stwm_sda_o;
  wire [14:0]stwmbaud;
  wire [7:0]stwmdatr;
  wire stws_mrar;
  wire stws_mter;
  wire stws_scl_i;
  wire stws_sda_i;

  GND GND
       (.G(\<const0> ));
  stwm_mclk mclk
       (.CO(lcnt_ovf),
        .Q(stwmbaud),
        .SR(mctl_n_0),
        .badr(badr),
        .bdatw(bdatw[14:0]),
        .clk(clk),
        .hcnt(hcnt),
        .\hcnt_reg[15]_0 (hcnt_ovf),
        .lcnt(lcnt),
        .lcnt0(lcnt0),
        .mclk_scl_o(mclk_scl_o),
        .mclk_start_cnt(mclk_start_cnt),
        .mctl_clk_gen(mctl_clk_gen),
        .mctl_mrst(mctl_mrst),
        .p_21_in(p_21_in),
        .rst_n(rst_n));
  stwm_mctl mctl
       (.CO(lcnt_ovf),
        .D(mctl_sda_s),
        .E(mctl_stwmdats_wr),
        .Q({stat[4:3],stat[1:0]}),
        .SR(mctl_n_0),
        .badr(badr),
        .bcmdr(bcmdr),
        .bcs_stws_n(bcs_stws_n),
        .bdatr(\^bdatr ),
        .\bdatr[7] (stwmdatr),
        .bdatw({bdatw[15],bdatw[7:6],bdatw[2:0]}),
        .brdy(brdy),
        .clk(clk),
        .hcnt(hcnt),
        .\hcnt_reg[15] (hcnt_ovf),
        .lcnt(lcnt),
        .lcnt0(lcnt0),
        .mclk_scl_o(mclk_scl_o),
        .mclk_start_cnt(mclk_start_cnt),
        .mctl_bus_bsy(mctl_bus_bsy),
        .mctl_clk_gen(mctl_clk_gen),
        .mctl_dtct_sclf(mctl_dtct_sclf),
        .mctl_dtct_sclf_reg_0(mdat_datr_sft0),
        .mctl_lat_rv(mctl_lat_rv),
        .mctl_lat_rv_reg(mctl_n_40),
        .mctl_lat_rv_reg_0(mctl_n_42),
        .mctl_mrst(mctl_mrst),
        .mctl_mrst_reg_0(mctl_n_41),
        .mctl_scl_o_reg(mdat_n_12),
        .mctl_sda_o_reg(mdat_n_16),
        .mctl_stwmreqr_wr(mctl_stwmreqr_wr),
        .mdat_mraf(mdat_mraf),
        .mdat_mtaf(mdat_mtaf),
        .mdat_rcv_nack(mdat_rcv_nack),
        .mdat_rcv_nack_reg(mctl_n_37),
        .mdat_sda_o(mdat_sda_o),
        .mdat_trg_rd(mdat_trg_rd),
        .mdat_trg_rd_reg(mctl_n_39),
        .mdat_trg_sp(mdat_trg_sp),
        .mdat_trg_sp_reg(mctl_n_38),
        .mdat_trg_wr(mdat_trg_wr),
        .mdat_trg_wr_reg(mctl_n_5),
        .p_21_in(p_21_in),
        .rst_n(rst_n),
        .\stat[0]_i_3 (mdat_n_17),
        .\stat_reg[0] (mctl_n_11),
        .\stat_reg[0]_0 (mdat_n_19),
        .\stat_reg[1] (sel00),
        .\stat_reg[2] (mctl_rst_sd),
        .\stat_reg[2]_0 (mdat_n_14),
        .\stat_reg[3] (mdat_n_10),
        .\stat_reg[4] (mctl_n_43),
        .\stat_reg[4]_0 (mdat_n_13),
        .stwm_scl_o(stwm_scl_o),
        .stwm_sda_o(stwm_sda_o),
        .stws_mrar(stws_mrar),
        .stws_mter(stws_mter),
        .stws_scl_i(stws_scl_i),
        .stws_sda_i(stws_sda_i),
        .\tcnt_cmp[15]_i_4 (mdat_n_18),
        .\tcnt_cmp[15]_i_4_0 (mdat_n_15),
        .\tcnt_cmp_reg[15]_0 (stwmbaud));
  stwm_mdat mdat
       (.D(mctl_sda_s),
        .E(mdat_datr_sft0),
        .Q({stat[4:3],stat[1:0]}),
        .SR(mctl_n_0),
        .badr(badr),
        .\badr[0] (mctl_stwmdats_wr),
        .bcmdw(bcmdw),
        .bcs_stws_n(bcs_stws_n),
        .bdatw(bdatw[8:0]),
        .brdy(brdy),
        .clk(clk),
        .mctl_bus_bsy(mctl_bus_bsy),
        .mctl_bus_bsy_reg(mdat_n_15),
        .mctl_dtct_sclf(mctl_dtct_sclf),
        .mctl_stwmreqr_wr(mctl_stwmreqr_wr),
        .\mdat_dats_reg[7]_0 (mctl_rst_sd),
        .\mdat_dats_sft_reg[0]_0 (mctl_n_41),
        .\mdat_dats_sft_reg[0]_1 (mctl_n_43),
        .mdat_mraf(mdat_mraf),
        .mdat_mraf_reg_0(mctl_n_40),
        .mdat_mtaf(mdat_mtaf),
        .mdat_rcv_nack(mdat_rcv_nack),
        .mdat_rcv_nack_reg_0(mctl_n_37),
        .mdat_sda_o(mdat_sda_o),
        .mdat_sda_o_reg_0(mctl_n_11),
        .mdat_trg_rd(mdat_trg_rd),
        .mdat_trg_rd_reg_0(mdat_n_18),
        .mdat_trg_rd_reg_1(mdat_n_19),
        .mdat_trg_rd_reg_2(mctl_n_39),
        .mdat_trg_sp(mdat_trg_sp),
        .mdat_trg_sp_reg_0(mdat_n_13),
        .mdat_trg_sp_reg_1(mctl_n_38),
        .mdat_trg_wr(mdat_trg_wr),
        .mdat_trg_wr_reg_0(mctl_n_5),
        .p_21_in(p_21_in),
        .\stwmdatr_reg[0]_0 (mctl_n_42),
        .\stwmdatr_reg[7]_0 (stwmdatr),
        .\stwmdatr_reg[7]_1 (mctl_lat_rv),
        .\stwmdats_reg[8]_0 (mdat_n_10),
        .\stwmdats_reg[8]_1 (sel00),
        .\stwmdats_reg[8]_2 (mdat_n_12),
        .\stwmdats_reg[8]_3 (mdat_n_14),
        .\stwmdats_reg[8]_4 (mdat_n_16),
        .\stwmdats_reg[8]_5 (mdat_n_17));
endmodule
