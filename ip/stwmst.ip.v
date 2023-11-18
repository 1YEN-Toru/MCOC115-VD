
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
//	2023/10/21	ver.1.02
//		corresponding to Xilinx Vivado
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
  wire \<const1> ;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_stws_n;
  wire [14:0]\^bdatr ;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[2]_INST_0_i_1_n_0 ;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire \hcnt[0]_i_3_n_0 ;
  wire hcnt_ovf_carry__0_i_1_n_0;
  wire hcnt_ovf_carry__0_i_2_n_0;
  wire hcnt_ovf_carry__0_i_3_n_3;
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
  wire \lcnt[0]_i_5_n_0 ;
  wire \lcnt[0]_i_6_n_0 ;
  wire \lcnt[0]_i_7_n_0 ;
  wire \lcnt[0]_i_8_n_0 ;
  wire \lcnt[0]_i_9_n_0 ;
  wire lcnt_ovf_carry__0_i_1_n_0;
  wire lcnt_ovf_carry__0_i_2_n_0;
  wire lcnt_ovf_carry__0_i_3_n_2;
  wire lcnt_ovf_carry__0_i_4_n_0;
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
  wire \mclk/hcnt ;
  wire \mclk/hcnt_ovf ;
  wire \mclk/hcnt_ovf_carry__0_n_3 ;
  wire \mclk/hcnt_ovf_carry_n_0 ;
  wire \mclk/hcnt_ovf_carry_n_1 ;
  wire \mclk/hcnt_ovf_carry_n_2 ;
  wire \mclk/hcnt_ovf_carry_n_3 ;
  wire [15:0]\mclk/hcnt_reg ;
  wire \mclk/lcnt ;
  wire \mclk/lcnt0 ;
  wire \mclk/lcnt_ovf ;
  wire \mclk/lcnt_ovf_carry__0_n_3 ;
  wire \mclk/lcnt_ovf_carry_n_0 ;
  wire \mclk/lcnt_ovf_carry_n_1 ;
  wire \mclk/lcnt_ovf_carry_n_2 ;
  wire \mclk/lcnt_ovf_carry_n_3 ;
  wire [15:0]\mclk/lcnt_reg ;
  wire \mclk/mclk_start_cnt ;
  wire mclk_scl_o;
  wire mclk_scl_o_i_1_n_0;
  wire mclk_start_cnt_i_1_n_0;
  wire \mctl/fsm/mctl_lat_ack_t ;
  wire \mctl/fsm/mctl_lat_rv_t ;
  wire \mctl/fsm/mctl_scl_o_t ;
  wire \mctl/fsm/mctl_sda_o_t ;
  wire [4:0]\mctl/fsm/stat_nx ;
  wire \mctl/mctl_arb ;
  wire \mctl/mctl_bus_bsy0 ;
  wire \mctl/mctl_dtct_sclf0 ;
  wire \mctl/mctl_dtct_sclr0 ;
  wire \mctl/mctl_dtct_sta ;
  wire \mctl/mctl_dtct_sta0__0 ;
  wire \mctl/mctl_dtct_stp ;
  wire \mctl/mctl_dtct_stp0__0 ;
  wire \mctl/mctl_lat_ack ;
  wire \mctl/mctl_mrst ;
  wire \mctl/mctl_mtee ;
  wire \mctl/mctl_mtef ;
  wire \mctl/mctl_scl_f_reg_n_0_[0] ;
  wire \mctl/mctl_scl_o ;
  wire \mctl/mctl_sda_f_reg_n_0_[0] ;
  wire \mctl/mctl_sda_o ;
  wire \mctl/mctl_stwmbaud_rd0 ;
  wire \mctl/mctl_stwmctl_rd0 ;
  wire \mctl/mctl_stwmdatr_rd0 ;
  wire \mctl/mctl_stwmreqr_rd0 ;
  wire [2:0]\mctl/mctl_tmr_0 ;
  wire \mctl/mctl_tmr_ovf ;
  wire \mctl/mctl_tmr_ovf_carry__0_n_3 ;
  wire \mctl/mctl_tmr_ovf_carry_n_0 ;
  wire \mctl/mctl_tmr_ovf_carry_n_1 ;
  wire \mctl/mctl_tmr_ovf_carry_n_2 ;
  wire \mctl/mctl_tmr_ovf_carry_n_3 ;
  wire \mctl/p_0_in7_in ;
  wire \mctl/p_0_in9_in ;
  wire \mctl/p_16_in ;
  wire \mctl/p_1_in ;
  wire \mctl/p_21_in ;
  wire \mctl/p_2_in ;
  wire \mctl/stwmctl[0]_i_1_n_0 ;
  wire \mctl/stwmctl[2]_i_1_n_0 ;
  wire [15:0]\mctl/tcnt_reg ;
  wire mctl_ack_stat;
  wire mctl_ack_stat_i_1_n_0;
  wire mctl_bus_bsy;
  wire mctl_bus_bsy_i_1_n_0;
  wire mctl_bus_bsy_i_3_n_0;
  wire mctl_bus_err;
  wire mctl_bus_err_i_1_n_0;
  wire mctl_bus_err_i_2_n_0;
  wire mctl_bus_err_i_4_n_0;
  wire mctl_bus_err_i_5_n_0;
  wire mctl_bus_err_i_6_n_0;
  wire mctl_clk_gen;
  wire mctl_dtct_sclf;
  wire mctl_dtct_sclr;
  wire mctl_lat_rv;
  wire mctl_mrae;
  wire mctl_mrst_i_1_n_0;
  wire mctl_mtef_i_1_n_0;
  wire mctl_rst_sd;
  wire [1:1]mctl_scl_f;
  wire mctl_scl_o_i_2_n_0;
  wire mctl_scl_o_i_3_n_0;
  wire mctl_scl_o_i_4_n_0;
  wire mctl_scl_s;
  wire mctl_sda_o_i_2_n_0;
  wire mctl_sda_o_i_3_n_0;
  wire mctl_sda_o_i_4_n_0;
  wire mctl_sda_o_i_5_n_0;
  wire mctl_sda_o_i_6_n_0;
  wire mctl_sda_s;
  wire mctl_stp_done;
  wire mctl_stwmbaud_rd;
  wire mctl_stwmbaud_wr;
  wire mctl_stwmctl_rd;
  wire mctl_stwmdatr_rd;
  wire mctl_stwmdats_wr;
  wire mctl_stwmreqr_rd;
  wire mctl_stwmreqr_wr;
  wire mctl_tmr_ovf_carry__0_i_1_n_0;
  wire mctl_tmr_ovf_carry__0_i_2_n_0;
  wire mctl_tmr_ovf_carry_i_1_n_0;
  wire mctl_tmr_ovf_carry_i_2_n_0;
  wire mctl_tmr_ovf_carry_i_3_n_0;
  wire mctl_tmr_ovf_carry_i_4_n_0;
  wire \mdat/mdat_datr_sft0 ;
  wire [7:0]\mdat/mdat_dats ;
  wire [7:0]\mdat/mdat_dats_sft ;
  wire \mdat/mdat_sda_o0 ;
  wire \mdat/stwmdats_reg_n_0_[0] ;
  wire \mdat/stwmdats_reg_n_0_[1] ;
  wire \mdat/stwmdats_reg_n_0_[2] ;
  wire \mdat/stwmdats_reg_n_0_[3] ;
  wire \mdat/stwmdats_reg_n_0_[4] ;
  wire \mdat/stwmdats_reg_n_0_[5] ;
  wire \mdat/stwmdats_reg_n_0_[6] ;
  wire \mdat/stwmdats_reg_n_0_[7] ;
  wire [7:0]mdat_datr_sft;
  wire \mdat_dats[7]_i_2_n_0 ;
  wire \mdat_dats[7]_i_3_n_0 ;
  wire \mdat_dats[7]_i_4_n_0 ;
  wire \mdat_dats_sft[7]_i_1_n_0 ;
  wire mdat_mraf;
  wire mdat_mraf_i_1_n_0;
  wire mdat_mtaf;
  wire mdat_nak_rv;
  wire mdat_nak_rv_i_2_n_0;
  wire mdat_rcv_nack;
  wire mdat_rcv_nack_i_1_n_0;
  wire mdat_sda_o;
  wire mdat_sda_o_i_2_n_0;
  wire mdat_sda_o_i_3_n_0;
  wire mdat_sda_o_i_4_n_0;
  wire mdat_trg_rd;
  wire mdat_trg_rd_i_1_n_0;
  wire mdat_trg_sp;
  wire mdat_trg_sp_i_1_n_0;
  wire mdat_trg_wr;
  wire mdat_trg_wr_i_1_n_0;
  wire rst_n;
  wire sel00;
  wire [4:0]stat;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_4_n_0 ;
  wire \stat[0]_i_5_n_0 ;
  wire \stat[0]_i_6_n_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_4_n_0 ;
  wire \stat[1]_i_5_n_0 ;
  wire \stat[2]_i_2_n_0 ;
  wire \stat[2]_i_3_n_0 ;
  wire \stat[3]_i_2_n_0 ;
  wire \stat[3]_i_3_n_0 ;
  wire \stat[3]_i_4_n_0 ;
  wire \stat[3]_i_5_n_0 ;
  wire \stat[3]_i_6_n_0 ;
  wire \stat[4]_i_1_n_0 ;
  wire \stat[4]_i_3_n_0 ;
  wire \stat[4]_i_5_n_0 ;
  wire \stat[4]_i_6_n_0 ;
  wire \stat[4]_i_7_n_0 ;
  wire \stat_reg[4]_i_4_n_0 ;
  wire stwm_scl_o;
  wire stwm_sda_o;
  wire [14:0]stwmbaud;
  wire [7:0]stwmdatr;
  wire \stwmdatr[7]_i_1_n_0 ;
  wire \stwmdats[8]_i_1_n_0 ;
  wire stws_mrar;
  wire stws_mter;
  wire stws_scl_i;
  wire stws_sda_i;
  wire [4:0]synfil_scl;
  wire \synfil_scl[4]_i_1_n_0 ;
  wire [4:0]synfil_sda;
  wire \tcnt[0]_i_1_n_0 ;
  wire \tcnt[0]_i_3_n_0 ;
  wire [15:0]tcnt_cmp;
  wire \tcnt_cmp[15]_i_10_n_0 ;
  wire \tcnt_cmp[15]_i_11_n_0 ;
  wire \tcnt_cmp[15]_i_12_n_0 ;
  wire \tcnt_cmp[15]_i_13_n_0 ;
  wire \tcnt_cmp[15]_i_14_n_0 ;
  wire \tcnt_cmp[15]_i_15_n_0 ;
  wire \tcnt_cmp[15]_i_16_n_0 ;
  wire \tcnt_cmp[15]_i_17_n_0 ;
  wire \tcnt_cmp[15]_i_18_n_0 ;
  wire \tcnt_cmp[15]_i_19_n_0 ;
  wire \tcnt_cmp[15]_i_4_n_0 ;
  wire \tcnt_cmp[15]_i_5_n_0 ;
  wire \tcnt_cmp[15]_i_6_n_0 ;
  wire \tcnt_cmp[15]_i_7_n_0 ;
  wire \tcnt_cmp[15]_i_8_n_0 ;
  wire \tcnt_cmp[15]_i_9_n_0 ;
  wire \tcnt_cmp[6]_i_3_n_0 ;
  wire \tcnt_cmp[6]_i_4_n_0 ;
  wire [15:1]tcnt_cmp_t;
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
  wire [13:2]tscl_h;
  wire [13:1]tscl_l;
  wire [3:0]NLW_lcnt_ovf_carry__0_i_3_CO_UNCONNECTED;

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
        .O(\^bdatr [0]));
  LUT6 #(
    .INIT(64'hFFFFF8888888F888)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(stwmbaud[0]),
        .I1(mctl_stwmbaud_rd),
        .I2(mdat_trg_rd),
        .I3(mctl_stwmreqr_rd),
        .I4(mctl_stwmdatr_rd),
        .I5(stwmdatr[0]),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[10]_INST_0 
       (.I0(mctl_stwmbaud_rd),
        .I1(stwmbaud[10]),
        .O(\^bdatr [10]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[11]_INST_0 
       (.I0(mctl_stwmbaud_rd),
        .I1(stwmbaud[11]),
        .O(\^bdatr [11]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[12]_INST_0 
       (.I0(mctl_stwmbaud_rd),
        .I1(stwmbaud[12]),
        .O(\^bdatr [12]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[13]_INST_0 
       (.I0(mctl_stwmbaud_rd),
        .I1(stwmbaud[13]),
        .O(\^bdatr [13]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[14]_INST_0 
       (.I0(mctl_stwmbaud_rd),
        .I1(stwmbaud[14]),
        .O(\^bdatr [14]));
  LUT6 #(
    .INIT(64'hFFFFF8888888F888)) 
    \bdatr[1]_INST_0 
       (.I0(stwmbaud[1]),
        .I1(mctl_stwmbaud_rd),
        .I2(mdat_rcv_nack),
        .I3(mctl_stwmreqr_rd),
        .I4(mctl_stwmdatr_rd),
        .I5(stwmdatr[1]),
        .O(\^bdatr [1]));
  LUT3 #(
    .INIT(8'hF8)) 
    \bdatr[2]_INST_0 
       (.I0(\mctl/mctl_mtee ),
        .I1(mctl_stwmctl_rd),
        .I2(\bdatr[2]_INST_0_i_1_n_0 ),
        .O(\^bdatr [2]));
  LUT6 #(
    .INIT(64'hFFFFF8888888F888)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(stwmbaud[2]),
        .I1(mctl_stwmbaud_rd),
        .I2(mdat_trg_sp),
        .I3(mctl_stwmreqr_rd),
        .I4(mctl_stwmdatr_rd),
        .I5(stwmdatr[2]),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[3]_INST_0 
       (.I0(mctl_ack_stat),
        .I1(mctl_stwmctl_rd),
        .I2(mctl_stwmdatr_rd),
        .I3(stwmdatr[3]),
        .I4(mctl_stwmbaud_rd),
        .I5(stwmbaud[3]),
        .O(\^bdatr [3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[4]_INST_0 
       (.I0(mdat_mraf),
        .I1(mctl_stwmctl_rd),
        .I2(mctl_stwmdatr_rd),
        .I3(stwmdatr[4]),
        .I4(mctl_stwmbaud_rd),
        .I5(stwmbaud[4]),
        .O(\^bdatr [4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[5]_INST_0 
       (.I0(mdat_mtaf),
        .I1(mctl_stwmctl_rd),
        .I2(mctl_stwmdatr_rd),
        .I3(stwmdatr[5]),
        .I4(mctl_stwmbaud_rd),
        .I5(stwmbaud[5]),
        .O(\^bdatr [5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[6]_INST_0 
       (.I0(\mctl/mctl_mtef ),
        .I1(mctl_stwmctl_rd),
        .I2(mctl_stwmdatr_rd),
        .I3(stwmdatr[6]),
        .I4(mctl_stwmbaud_rd),
        .I5(stwmbaud[6]),
        .O(\^bdatr [6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[7]_INST_0 
       (.I0(mctl_bus_err),
        .I1(mctl_stwmctl_rd),
        .I2(mctl_stwmdatr_rd),
        .I3(stwmdatr[7]),
        .I4(mctl_stwmbaud_rd),
        .I5(stwmbaud[7]),
        .O(\^bdatr [7]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[8]_INST_0 
       (.I0(mctl_stwmbaud_rd),
        .I1(stwmbaud[8]),
        .O(\^bdatr [8]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[9]_INST_0 
       (.I0(mctl_stwmbaud_rd),
        .I1(stwmbaud[9]),
        .O(\^bdatr [9]));
  LUT5 #(
    .INIT(32'h0000E800)) 
    \hcnt[0]_i_1 
       (.I0(synfil_scl[3]),
        .I1(synfil_scl[4]),
        .I2(synfil_scl[2]),
        .I3(\mclk/lcnt_ovf ),
        .I4(\mclk/hcnt_ovf ),
        .O(\mclk/hcnt ));
  LUT1 #(
    .INIT(2'h1)) 
    \hcnt[0]_i_3 
       (.I0(\mclk/hcnt_reg [0]),
        .O(\hcnt[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    hcnt_ovf_carry__0_i_1
       (.I0(hcnt_ovf_carry__0_i_3_n_3),
        .I1(\mclk/hcnt_reg [15]),
        .O(hcnt_ovf_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    hcnt_ovf_carry__0_i_2
       (.I0(\mclk/hcnt_reg [12]),
        .I1(tscl_h[12]),
        .I2(hcnt_ovf_carry__0_i_3_n_3),
        .I3(\mclk/hcnt_reg [14]),
        .I4(tscl_h[13]),
        .I5(\mclk/hcnt_reg [13]),
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
       (.I0(\mclk/hcnt_reg [9]),
        .I1(tscl_h[9]),
        .I2(tscl_h[11]),
        .I3(\mclk/hcnt_reg [11]),
        .I4(tscl_h[10]),
        .I5(\mclk/hcnt_reg [10]),
        .O(hcnt_ovf_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_10
       (.I0(stwmbaud[8]),
        .O(hcnt_ovf_carry_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_11
       (.I0(stwmbaud[7]),
        .O(hcnt_ovf_carry_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_12
       (.I0(stwmbaud[14]),
        .O(hcnt_ovf_carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_13
       (.I0(stwmbaud[13]),
        .O(hcnt_ovf_carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_14
       (.I0(stwmbaud[12]),
        .O(hcnt_ovf_carry_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_15
       (.I0(stwmbaud[11]),
        .O(hcnt_ovf_carry_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_16
       (.I0(stwmbaud[6]),
        .O(hcnt_ovf_carry_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_17
       (.I0(stwmbaud[5]),
        .O(hcnt_ovf_carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_18
       (.I0(stwmbaud[4]),
        .O(hcnt_ovf_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hcnt_ovf_carry_i_2
       (.I0(\mclk/hcnt_reg [6]),
        .I1(tscl_h[6]),
        .I2(tscl_h[8]),
        .I3(\mclk/hcnt_reg [8]),
        .I4(tscl_h[7]),
        .I5(\mclk/hcnt_reg [7]),
        .O(hcnt_ovf_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hcnt_ovf_carry_i_3
       (.I0(\mclk/hcnt_reg [3]),
        .I1(tscl_h[3]),
        .I2(tscl_h[5]),
        .I3(\mclk/hcnt_reg [5]),
        .I4(tscl_h[4]),
        .I5(\mclk/hcnt_reg [4]),
        .O(hcnt_ovf_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hcnt_ovf_carry_i_4
       (.I0(\mclk/hcnt_reg [0]),
        .I1(stwmbaud[1]),
        .I2(tscl_h[2]),
        .I3(\mclk/hcnt_reg [2]),
        .I4(stwmbaud[2]),
        .I5(\mclk/hcnt_reg [1]),
        .O(hcnt_ovf_carry_i_4_n_0));
  CARRY4 hcnt_ovf_carry_i_5
       (.CI(hcnt_ovf_carry_i_7_n_0),
        .CO({hcnt_ovf_carry_i_5_n_0,hcnt_ovf_carry_i_5_n_1,hcnt_ovf_carry_i_5_n_2,hcnt_ovf_carry_i_5_n_3}),
        .CYINIT(\<const0> ),
        .DI(stwmbaud[10:7]),
        .O(tscl_h[9:6]),
        .S({hcnt_ovf_carry_i_8_n_0,hcnt_ovf_carry_i_9_n_0,hcnt_ovf_carry_i_10_n_0,hcnt_ovf_carry_i_11_n_0}));
  CARRY4 hcnt_ovf_carry_i_6
       (.CI(hcnt_ovf_carry_i_5_n_0),
        .CO({hcnt_ovf_carry_i_6_n_0,hcnt_ovf_carry_i_6_n_1,hcnt_ovf_carry_i_6_n_2,hcnt_ovf_carry_i_6_n_3}),
        .CYINIT(\<const0> ),
        .DI(stwmbaud[14:11]),
        .O(tscl_h[13:10]),
        .S({hcnt_ovf_carry_i_12_n_0,hcnt_ovf_carry_i_13_n_0,hcnt_ovf_carry_i_14_n_0,hcnt_ovf_carry_i_15_n_0}));
  CARRY4 hcnt_ovf_carry_i_7
       (.CI(\<const0> ),
        .CO({hcnt_ovf_carry_i_7_n_0,hcnt_ovf_carry_i_7_n_1,hcnt_ovf_carry_i_7_n_2,hcnt_ovf_carry_i_7_n_3}),
        .CYINIT(\<const0> ),
        .DI({stwmbaud[6:4],\<const0> }),
        .O(tscl_h[5:2]),
        .S({hcnt_ovf_carry_i_16_n_0,hcnt_ovf_carry_i_17_n_0,hcnt_ovf_carry_i_18_n_0,stwmbaud[3]}));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_8
       (.I0(stwmbaud[10]),
        .O(hcnt_ovf_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hcnt_ovf_carry_i_9
       (.I0(stwmbaud[9]),
        .O(hcnt_ovf_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \hcnt_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\hcnt_reg[0]_i_2_n_0 ,\hcnt_reg[0]_i_2_n_1 ,\hcnt_reg[0]_i_2_n_2 ,\hcnt_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\hcnt_reg[0]_i_2_n_4 ,\hcnt_reg[0]_i_2_n_5 ,\hcnt_reg[0]_i_2_n_6 ,\hcnt_reg[0]_i_2_n_7 }),
        .S({\mclk/hcnt_reg [3:1],\hcnt[0]_i_3_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \hcnt_reg[12]_i_1 
       (.CI(\hcnt_reg[8]_i_1_n_0 ),
        .CO({\hcnt_reg[12]_i_1_n_1 ,\hcnt_reg[12]_i_1_n_2 ,\hcnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\hcnt_reg[12]_i_1_n_4 ,\hcnt_reg[12]_i_1_n_5 ,\hcnt_reg[12]_i_1_n_6 ,\hcnt_reg[12]_i_1_n_7 }),
        .S(\mclk/hcnt_reg [15:12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \hcnt_reg[4]_i_1 
       (.CI(\hcnt_reg[0]_i_2_n_0 ),
        .CO({\hcnt_reg[4]_i_1_n_0 ,\hcnt_reg[4]_i_1_n_1 ,\hcnt_reg[4]_i_1_n_2 ,\hcnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\hcnt_reg[4]_i_1_n_4 ,\hcnt_reg[4]_i_1_n_5 ,\hcnt_reg[4]_i_1_n_6 ,\hcnt_reg[4]_i_1_n_7 }),
        .S(\mclk/hcnt_reg [7:4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \hcnt_reg[8]_i_1 
       (.CI(\hcnt_reg[4]_i_1_n_0 ),
        .CO({\hcnt_reg[8]_i_1_n_0 ,\hcnt_reg[8]_i_1_n_1 ,\hcnt_reg[8]_i_1_n_2 ,\hcnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\hcnt_reg[8]_i_1_n_4 ,\hcnt_reg[8]_i_1_n_5 ,\hcnt_reg[8]_i_1_n_6 ,\hcnt_reg[8]_i_1_n_7 }),
        .S(\mclk/hcnt_reg [11:8]));
  LUT3 #(
    .INIT(8'hEF)) 
    \lcnt[0]_i_1 
       (.I0(mctl_clk_gen),
        .I1(\mctl/mctl_mrst ),
        .I2(rst_n),
        .O(\mclk/lcnt0 ));
  LUT5 #(
    .INIT(32'h00001700)) 
    \lcnt[0]_i_2 
       (.I0(synfil_scl[2]),
        .I1(synfil_scl[4]),
        .I2(synfil_scl[3]),
        .I3(\mclk/mclk_start_cnt ),
        .I4(\mclk/lcnt_ovf ),
        .O(\mclk/lcnt ));
  LUT6 #(
    .INIT(64'hBBBBBBB8B8B8BBB8)) 
    \lcnt[0]_i_4 
       (.I0(\stat[3]_i_5_n_0 ),
        .I1(\lcnt[0]_i_6_n_0 ),
        .I2(\lcnt[0]_i_7_n_0 ),
        .I3(\lcnt[0]_i_8_n_0 ),
        .I4(stat[0]),
        .I5(\lcnt[0]_i_9_n_0 ),
        .O(mctl_clk_gen));
  LUT1 #(
    .INIT(2'h1)) 
    \lcnt[0]_i_5 
       (.I0(\mclk/lcnt_reg [0]),
        .O(\lcnt[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4400000044000001)) 
    \lcnt[0]_i_6 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(mctl_bus_bsy),
        .I3(stat[1]),
        .I4(stat[3]),
        .I5(stat[4]),
        .O(\lcnt[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5400)) 
    \lcnt[0]_i_7 
       (.I0(stat[3]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(mctl_dtct_sclf),
        .O(\lcnt[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h40400C0000000C00)) 
    \lcnt[0]_i_8 
       (.I0(stat[4]),
        .I1(stat[3]),
        .I2(stat[2]),
        .I3(mctl_dtct_sclf),
        .I4(stat[1]),
        .I5(\mctl/mctl_tmr_ovf ),
        .O(\lcnt[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \lcnt[0]_i_9 
       (.I0(mctl_dtct_sclf),
        .I1(stat[3]),
        .O(\lcnt[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    lcnt_ovf_carry__0_i_1
       (.I0(lcnt_ovf_carry__0_i_3_n_2),
        .I1(\mclk/lcnt_reg [15]),
        .O(lcnt_ovf_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    lcnt_ovf_carry__0_i_2
       (.I0(\mclk/lcnt_reg [12]),
        .I1(tscl_l[12]),
        .I2(lcnt_ovf_carry__0_i_3_n_2),
        .I3(\mclk/lcnt_reg [14]),
        .I4(tscl_l[13]),
        .I5(\mclk/lcnt_reg [13]),
        .O(lcnt_ovf_carry__0_i_2_n_0));
  CARRY4 lcnt_ovf_carry__0_i_3
       (.CI(lcnt_ovf_carry_i_5_n_0),
        .CO({lcnt_ovf_carry__0_i_3_n_2,NLW_lcnt_ovf_carry__0_i_3_CO_UNCONNECTED[0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,stwmbaud[14]}),
        .O(tscl_l[13]),
        .S({\<const0> ,\<const0> ,\<const1> ,lcnt_ovf_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry__0_i_4
       (.I0(stwmbaud[14]),
        .O(lcnt_ovf_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lcnt_ovf_carry_i_1
       (.I0(\mclk/lcnt_reg [9]),
        .I1(tscl_l[9]),
        .I2(tscl_l[11]),
        .I3(\mclk/lcnt_reg [11]),
        .I4(tscl_l[10]),
        .I5(\mclk/lcnt_reg [10]),
        .O(lcnt_ovf_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_10
       (.I0(stwmbaud[11]),
        .O(lcnt_ovf_carry_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_11
       (.I0(stwmbaud[10]),
        .O(lcnt_ovf_carry_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_12
       (.I0(stwmbaud[9]),
        .O(lcnt_ovf_carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_13
       (.I0(stwmbaud[8]),
        .O(lcnt_ovf_carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_14
       (.I0(stwmbaud[7]),
        .O(lcnt_ovf_carry_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_15
       (.I0(stwmbaud[6]),
        .O(lcnt_ovf_carry_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_16
       (.I0(stwmbaud[5]),
        .O(lcnt_ovf_carry_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_17
       (.I0(stwmbaud[4]),
        .O(lcnt_ovf_carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_18
       (.I0(stwmbaud[2]),
        .O(lcnt_ovf_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lcnt_ovf_carry_i_2
       (.I0(\mclk/lcnt_reg [6]),
        .I1(tscl_l[6]),
        .I2(tscl_l[8]),
        .I3(\mclk/lcnt_reg [8]),
        .I4(tscl_l[7]),
        .I5(\mclk/lcnt_reg [7]),
        .O(lcnt_ovf_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lcnt_ovf_carry_i_3
       (.I0(\mclk/lcnt_reg [3]),
        .I1(tscl_l[3]),
        .I2(tscl_l[5]),
        .I3(\mclk/lcnt_reg [5]),
        .I4(tscl_l[4]),
        .I5(\mclk/lcnt_reg [4]),
        .O(lcnt_ovf_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    lcnt_ovf_carry_i_4
       (.I0(\mclk/lcnt_reg [0]),
        .I1(stwmbaud[1]),
        .I2(tscl_l[2]),
        .I3(\mclk/lcnt_reg [2]),
        .I4(tscl_l[1]),
        .I5(\mclk/lcnt_reg [1]),
        .O(lcnt_ovf_carry_i_4_n_0));
  CARRY4 lcnt_ovf_carry_i_5
       (.CI(lcnt_ovf_carry_i_6_n_0),
        .CO({lcnt_ovf_carry_i_5_n_0,lcnt_ovf_carry_i_5_n_1,lcnt_ovf_carry_i_5_n_2,lcnt_ovf_carry_i_5_n_3}),
        .CYINIT(\<const0> ),
        .DI(stwmbaud[13:10]),
        .O(tscl_l[12:9]),
        .S({lcnt_ovf_carry_i_8_n_0,lcnt_ovf_carry_i_9_n_0,lcnt_ovf_carry_i_10_n_0,lcnt_ovf_carry_i_11_n_0}));
  CARRY4 lcnt_ovf_carry_i_6
       (.CI(lcnt_ovf_carry_i_7_n_0),
        .CO({lcnt_ovf_carry_i_6_n_0,lcnt_ovf_carry_i_6_n_1,lcnt_ovf_carry_i_6_n_2,lcnt_ovf_carry_i_6_n_3}),
        .CYINIT(\<const0> ),
        .DI(stwmbaud[9:6]),
        .O(tscl_l[8:5]),
        .S({lcnt_ovf_carry_i_12_n_0,lcnt_ovf_carry_i_13_n_0,lcnt_ovf_carry_i_14_n_0,lcnt_ovf_carry_i_15_n_0}));
  CARRY4 lcnt_ovf_carry_i_7
       (.CI(\<const0> ),
        .CO({lcnt_ovf_carry_i_7_n_0,lcnt_ovf_carry_i_7_n_1,lcnt_ovf_carry_i_7_n_2,lcnt_ovf_carry_i_7_n_3}),
        .CYINIT(stwmbaud[1]),
        .DI({stwmbaud[5:4],\<const0> ,stwmbaud[2]}),
        .O(tscl_l[4:1]),
        .S({lcnt_ovf_carry_i_16_n_0,lcnt_ovf_carry_i_17_n_0,stwmbaud[3],lcnt_ovf_carry_i_18_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_8
       (.I0(stwmbaud[13]),
        .O(lcnt_ovf_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    lcnt_ovf_carry_i_9
       (.I0(stwmbaud[12]),
        .O(lcnt_ovf_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \lcnt_reg[0]_i_3 
       (.CI(\<const0> ),
        .CO({\lcnt_reg[0]_i_3_n_0 ,\lcnt_reg[0]_i_3_n_1 ,\lcnt_reg[0]_i_3_n_2 ,\lcnt_reg[0]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\lcnt_reg[0]_i_3_n_4 ,\lcnt_reg[0]_i_3_n_5 ,\lcnt_reg[0]_i_3_n_6 ,\lcnt_reg[0]_i_3_n_7 }),
        .S({\mclk/lcnt_reg [3:1],\lcnt[0]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \lcnt_reg[12]_i_1 
       (.CI(\lcnt_reg[8]_i_1_n_0 ),
        .CO({\lcnt_reg[12]_i_1_n_1 ,\lcnt_reg[12]_i_1_n_2 ,\lcnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\lcnt_reg[12]_i_1_n_4 ,\lcnt_reg[12]_i_1_n_5 ,\lcnt_reg[12]_i_1_n_6 ,\lcnt_reg[12]_i_1_n_7 }),
        .S(\mclk/lcnt_reg [15:12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \lcnt_reg[4]_i_1 
       (.CI(\lcnt_reg[0]_i_3_n_0 ),
        .CO({\lcnt_reg[4]_i_1_n_0 ,\lcnt_reg[4]_i_1_n_1 ,\lcnt_reg[4]_i_1_n_2 ,\lcnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\lcnt_reg[4]_i_1_n_4 ,\lcnt_reg[4]_i_1_n_5 ,\lcnt_reg[4]_i_1_n_6 ,\lcnt_reg[4]_i_1_n_7 }),
        .S(\mclk/lcnt_reg [7:4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \lcnt_reg[8]_i_1 
       (.CI(\lcnt_reg[4]_i_1_n_0 ),
        .CO({\lcnt_reg[8]_i_1_n_0 ,\lcnt_reg[8]_i_1_n_1 ,\lcnt_reg[8]_i_1_n_2 ,\lcnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\lcnt_reg[8]_i_1_n_4 ,\lcnt_reg[8]_i_1_n_5 ,\lcnt_reg[8]_i_1_n_6 ,\lcnt_reg[8]_i_1_n_7 }),
        .S(\mclk/lcnt_reg [11:8]));
  CARRY4 \mclk/hcnt_ovf_carry 
       (.CI(\<const0> ),
        .CO({\mclk/hcnt_ovf_carry_n_0 ,\mclk/hcnt_ovf_carry_n_1 ,\mclk/hcnt_ovf_carry_n_2 ,\mclk/hcnt_ovf_carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({hcnt_ovf_carry_i_1_n_0,hcnt_ovf_carry_i_2_n_0,hcnt_ovf_carry_i_3_n_0,hcnt_ovf_carry_i_4_n_0}));
  CARRY4 \mclk/hcnt_ovf_carry__0 
       (.CI(\mclk/hcnt_ovf_carry_n_0 ),
        .CO({\mclk/hcnt_ovf ,\mclk/hcnt_ovf_carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,hcnt_ovf_carry__0_i_1_n_0,hcnt_ovf_carry__0_i_2_n_0}));
  FDRE \mclk/hcnt_reg[0] 
       (.C(clk),
        .CE(\mclk/hcnt ),
        .D(\hcnt_reg[0]_i_2_n_7 ),
        .Q(\mclk/hcnt_reg [0]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/hcnt_reg[10] 
       (.C(clk),
        .CE(\mclk/hcnt ),
        .D(\hcnt_reg[8]_i_1_n_5 ),
        .Q(\mclk/hcnt_reg [10]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/hcnt_reg[11] 
       (.C(clk),
        .CE(\mclk/hcnt ),
        .D(\hcnt_reg[8]_i_1_n_4 ),
        .Q(\mclk/hcnt_reg [11]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/hcnt_reg[12] 
       (.C(clk),
        .CE(\mclk/hcnt ),
        .D(\hcnt_reg[12]_i_1_n_7 ),
        .Q(\mclk/hcnt_reg [12]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/hcnt_reg[13] 
       (.C(clk),
        .CE(\mclk/hcnt ),
        .D(\hcnt_reg[12]_i_1_n_6 ),
        .Q(\mclk/hcnt_reg [13]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/hcnt_reg[14] 
       (.C(clk),
        .CE(\mclk/hcnt ),
        .D(\hcnt_reg[12]_i_1_n_5 ),
        .Q(\mclk/hcnt_reg [14]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/hcnt_reg[15] 
       (.C(clk),
        .CE(\mclk/hcnt ),
        .D(\hcnt_reg[12]_i_1_n_4 ),
        .Q(\mclk/hcnt_reg [15]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/hcnt_reg[1] 
       (.C(clk),
        .CE(\mclk/hcnt ),
        .D(\hcnt_reg[0]_i_2_n_6 ),
        .Q(\mclk/hcnt_reg [1]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/hcnt_reg[2] 
       (.C(clk),
        .CE(\mclk/hcnt ),
        .D(\hcnt_reg[0]_i_2_n_5 ),
        .Q(\mclk/hcnt_reg [2]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/hcnt_reg[3] 
       (.C(clk),
        .CE(\mclk/hcnt ),
        .D(\hcnt_reg[0]_i_2_n_4 ),
        .Q(\mclk/hcnt_reg [3]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/hcnt_reg[4] 
       (.C(clk),
        .CE(\mclk/hcnt ),
        .D(\hcnt_reg[4]_i_1_n_7 ),
        .Q(\mclk/hcnt_reg [4]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/hcnt_reg[5] 
       (.C(clk),
        .CE(\mclk/hcnt ),
        .D(\hcnt_reg[4]_i_1_n_6 ),
        .Q(\mclk/hcnt_reg [5]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/hcnt_reg[6] 
       (.C(clk),
        .CE(\mclk/hcnt ),
        .D(\hcnt_reg[4]_i_1_n_5 ),
        .Q(\mclk/hcnt_reg [6]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/hcnt_reg[7] 
       (.C(clk),
        .CE(\mclk/hcnt ),
        .D(\hcnt_reg[4]_i_1_n_4 ),
        .Q(\mclk/hcnt_reg [7]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/hcnt_reg[8] 
       (.C(clk),
        .CE(\mclk/hcnt ),
        .D(\hcnt_reg[8]_i_1_n_7 ),
        .Q(\mclk/hcnt_reg [8]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/hcnt_reg[9] 
       (.C(clk),
        .CE(\mclk/hcnt ),
        .D(\hcnt_reg[8]_i_1_n_6 ),
        .Q(\mclk/hcnt_reg [9]),
        .R(\mclk/lcnt0 ));
  CARRY4 \mclk/lcnt_ovf_carry 
       (.CI(\<const0> ),
        .CO({\mclk/lcnt_ovf_carry_n_0 ,\mclk/lcnt_ovf_carry_n_1 ,\mclk/lcnt_ovf_carry_n_2 ,\mclk/lcnt_ovf_carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({lcnt_ovf_carry_i_1_n_0,lcnt_ovf_carry_i_2_n_0,lcnt_ovf_carry_i_3_n_0,lcnt_ovf_carry_i_4_n_0}));
  CARRY4 \mclk/lcnt_ovf_carry__0 
       (.CI(\mclk/lcnt_ovf_carry_n_0 ),
        .CO({\mclk/lcnt_ovf ,\mclk/lcnt_ovf_carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,lcnt_ovf_carry__0_i_1_n_0,lcnt_ovf_carry__0_i_2_n_0}));
  FDRE \mclk/lcnt_reg[0] 
       (.C(clk),
        .CE(\mclk/lcnt ),
        .D(\lcnt_reg[0]_i_3_n_7 ),
        .Q(\mclk/lcnt_reg [0]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/lcnt_reg[10] 
       (.C(clk),
        .CE(\mclk/lcnt ),
        .D(\lcnt_reg[8]_i_1_n_5 ),
        .Q(\mclk/lcnt_reg [10]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/lcnt_reg[11] 
       (.C(clk),
        .CE(\mclk/lcnt ),
        .D(\lcnt_reg[8]_i_1_n_4 ),
        .Q(\mclk/lcnt_reg [11]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/lcnt_reg[12] 
       (.C(clk),
        .CE(\mclk/lcnt ),
        .D(\lcnt_reg[12]_i_1_n_7 ),
        .Q(\mclk/lcnt_reg [12]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/lcnt_reg[13] 
       (.C(clk),
        .CE(\mclk/lcnt ),
        .D(\lcnt_reg[12]_i_1_n_6 ),
        .Q(\mclk/lcnt_reg [13]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/lcnt_reg[14] 
       (.C(clk),
        .CE(\mclk/lcnt ),
        .D(\lcnt_reg[12]_i_1_n_5 ),
        .Q(\mclk/lcnt_reg [14]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/lcnt_reg[15] 
       (.C(clk),
        .CE(\mclk/lcnt ),
        .D(\lcnt_reg[12]_i_1_n_4 ),
        .Q(\mclk/lcnt_reg [15]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/lcnt_reg[1] 
       (.C(clk),
        .CE(\mclk/lcnt ),
        .D(\lcnt_reg[0]_i_3_n_6 ),
        .Q(\mclk/lcnt_reg [1]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/lcnt_reg[2] 
       (.C(clk),
        .CE(\mclk/lcnt ),
        .D(\lcnt_reg[0]_i_3_n_5 ),
        .Q(\mclk/lcnt_reg [2]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/lcnt_reg[3] 
       (.C(clk),
        .CE(\mclk/lcnt ),
        .D(\lcnt_reg[0]_i_3_n_4 ),
        .Q(\mclk/lcnt_reg [3]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/lcnt_reg[4] 
       (.C(clk),
        .CE(\mclk/lcnt ),
        .D(\lcnt_reg[4]_i_1_n_7 ),
        .Q(\mclk/lcnt_reg [4]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/lcnt_reg[5] 
       (.C(clk),
        .CE(\mclk/lcnt ),
        .D(\lcnt_reg[4]_i_1_n_6 ),
        .Q(\mclk/lcnt_reg [5]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/lcnt_reg[6] 
       (.C(clk),
        .CE(\mclk/lcnt ),
        .D(\lcnt_reg[4]_i_1_n_5 ),
        .Q(\mclk/lcnt_reg [6]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/lcnt_reg[7] 
       (.C(clk),
        .CE(\mclk/lcnt ),
        .D(\lcnt_reg[4]_i_1_n_4 ),
        .Q(\mclk/lcnt_reg [7]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/lcnt_reg[8] 
       (.C(clk),
        .CE(\mclk/lcnt ),
        .D(\lcnt_reg[8]_i_1_n_7 ),
        .Q(\mclk/lcnt_reg [8]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/lcnt_reg[9] 
       (.C(clk),
        .CE(\mclk/lcnt ),
        .D(\lcnt_reg[8]_i_1_n_6 ),
        .Q(\mclk/lcnt_reg [9]),
        .R(\mclk/lcnt0 ));
  FDRE \mclk/mclk_scl_o_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(mclk_scl_o_i_1_n_0),
        .Q(mclk_scl_o),
        .R(\<const0> ));
  FDRE \mclk/mclk_start_cnt_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(mclk_start_cnt_i_1_n_0),
        .Q(\mclk/mclk_start_cnt ),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mclk/stwmbaud_reg[0] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[0]),
        .Q(stwmbaud[0]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mclk/stwmbaud_reg[10] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[10]),
        .Q(stwmbaud[10]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mclk/stwmbaud_reg[11] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[11]),
        .Q(stwmbaud[11]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mclk/stwmbaud_reg[12] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[12]),
        .Q(stwmbaud[12]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mclk/stwmbaud_reg[13] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[13]),
        .Q(stwmbaud[13]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mclk/stwmbaud_reg[14] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[14]),
        .Q(stwmbaud[14]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mclk/stwmbaud_reg[1] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[1]),
        .Q(stwmbaud[1]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mclk/stwmbaud_reg[2] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[2]),
        .Q(stwmbaud[2]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mclk/stwmbaud_reg[3] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[3]),
        .Q(stwmbaud[3]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mclk/stwmbaud_reg[4] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[4]),
        .Q(stwmbaud[4]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mclk/stwmbaud_reg[5] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[5]),
        .Q(stwmbaud[5]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mclk/stwmbaud_reg[6] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[6]),
        .Q(stwmbaud[6]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mclk/stwmbaud_reg[7] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[7]),
        .Q(stwmbaud[7]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mclk/stwmbaud_reg[8] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[8]),
        .Q(stwmbaud[8]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mclk/stwmbaud_reg[9] 
       (.C(clk),
        .CE(mctl_stwmbaud_wr),
        .D(bdatw[9]),
        .Q(stwmbaud[9]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E0)) 
    mclk_scl_o_i_1
       (.I0(mclk_scl_o),
        .I1(\mclk/lcnt_ovf ),
        .I2(rst_n),
        .I3(\mctl/mctl_mrst ),
        .I4(mctl_clk_gen),
        .I5(\mclk/hcnt_ovf ),
        .O(mclk_scl_o_i_1_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    mclk_start_cnt_i_1
       (.I0(mctl_clk_gen),
        .I1(\mclk/lcnt_ovf ),
        .I2(\mclk/mclk_start_cnt ),
        .O(mclk_start_cnt_i_1_n_0));
  FDRE \mctl/fsm/mctl_lat_ack_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/fsm/mctl_lat_ack_t ),
        .Q(\mctl/mctl_lat_ack ),
        .R(\stat[4]_i_1_n_0 ));
  FDRE \mctl/fsm/mctl_lat_rv_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/fsm/mctl_lat_rv_t ),
        .Q(mctl_lat_rv),
        .R(\stat[4]_i_1_n_0 ));
  FDSE \mctl/fsm/mctl_scl_o_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/fsm/mctl_scl_o_t ),
        .Q(\mctl/mctl_scl_o ),
        .S(\stat[4]_i_1_n_0 ));
  FDSE \mctl/fsm/mctl_sda_o_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/fsm/mctl_sda_o_t ),
        .Q(\mctl/mctl_sda_o ),
        .S(\stat[4]_i_1_n_0 ));
  FDRE \mctl/fsm/stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/fsm/stat_nx [0]),
        .Q(stat[0]),
        .R(\stat[4]_i_1_n_0 ));
  FDRE \mctl/fsm/stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/fsm/stat_nx [1]),
        .Q(stat[1]),
        .R(\stat[4]_i_1_n_0 ));
  FDRE \mctl/fsm/stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/fsm/stat_nx [2]),
        .Q(stat[2]),
        .R(\stat[4]_i_1_n_0 ));
  FDRE \mctl/fsm/stat_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/fsm/stat_nx [3]),
        .Q(stat[3]),
        .R(\stat[4]_i_1_n_0 ));
  FDRE \mctl/fsm/stat_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/fsm/stat_nx [4]),
        .Q(stat[4]),
        .R(\stat[4]_i_1_n_0 ));
  FDRE \mctl/mctl_ack_stat_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_ack_stat_i_1_n_0),
        .Q(mctl_ack_stat),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mctl/mctl_bus_bsy_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_bus_bsy_i_1_n_0),
        .Q(mctl_bus_bsy),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mctl/mctl_bus_err_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_bus_err_i_1_n_0),
        .Q(mctl_bus_err),
        .R(\<const0> ));
  FDRE \mctl/mctl_dtct_sclf_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/mctl_dtct_sclf0 ),
        .Q(mctl_dtct_sclf),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mctl/mctl_dtct_sclr_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/mctl_dtct_sclr0 ),
        .Q(mctl_dtct_sclr),
        .R(\synfil_scl[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \mctl/mctl_dtct_sta0 
       (.I0(\mctl/mctl_scl_f_reg_n_0_[0] ),
        .I1(\mctl/p_1_in ),
        .I2(\mctl/p_2_in ),
        .I3(\mctl/p_0_in7_in ),
        .O(\mctl/mctl_dtct_sta0__0 ));
  FDRE \mctl/mctl_dtct_sta_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/mctl_dtct_sta0__0 ),
        .Q(\mctl/mctl_dtct_sta ),
        .R(\synfil_scl[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \mctl/mctl_dtct_stp0 
       (.I0(\mctl/mctl_scl_f_reg_n_0_[0] ),
        .I1(\mctl/p_1_in ),
        .I2(\mctl/p_0_in7_in ),
        .I3(\mctl/p_2_in ),
        .O(\mctl/mctl_dtct_stp0__0 ));
  FDRE \mctl/mctl_dtct_stp_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/mctl_dtct_stp0__0 ),
        .Q(\mctl/mctl_dtct_stp ),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mctl/mctl_mrst_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_mrst_i_1_n_0),
        .Q(\mctl/mctl_mrst ),
        .R(\<const0> ));
  FDRE \mctl/mctl_mtef_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_mtef_i_1_n_0),
        .Q(\mctl/mctl_mtef ),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/mctl_scl_f_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_scl_s),
        .Q(\mctl/mctl_scl_f_reg_n_0_[0] ),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/mctl_scl_f_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/mctl_scl_f_reg_n_0_[0] ),
        .Q(mctl_scl_f),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/mctl_scl_f_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_scl_f),
        .Q(\mctl/p_0_in9_in ),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/mctl_scl_f_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/p_0_in9_in ),
        .Q(\mctl/p_1_in ),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/mctl_sda_f_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(mctl_sda_s),
        .Q(\mctl/mctl_sda_f_reg_n_0_[0] ),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/mctl_sda_f_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/mctl_sda_f_reg_n_0_[0] ),
        .Q(\mctl/p_2_in ),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/mctl_sda_f_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/p_2_in ),
        .Q(\mctl/p_0_in7_in ),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mctl/mctl_stwmbaud_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\mctl/mctl_stwmbaud_rd0 ),
        .Q(mctl_stwmbaud_rd),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mctl/mctl_stwmctl_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\mctl/mctl_stwmctl_rd0 ),
        .Q(mctl_stwmctl_rd),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mctl/mctl_stwmdatr_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\mctl/mctl_stwmdatr_rd0 ),
        .Q(mctl_stwmdatr_rd),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mctl/mctl_stwmreqr_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\mctl/mctl_stwmreqr_rd0 ),
        .Q(mctl_stwmreqr_rd),
        .R(\synfil_scl[4]_i_1_n_0 ));
  CARRY4 \mctl/mctl_tmr_ovf_carry 
       (.CI(\<const0> ),
        .CO({\mctl/mctl_tmr_ovf_carry_n_0 ,\mctl/mctl_tmr_ovf_carry_n_1 ,\mctl/mctl_tmr_ovf_carry_n_2 ,\mctl/mctl_tmr_ovf_carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({mctl_tmr_ovf_carry_i_1_n_0,mctl_tmr_ovf_carry_i_2_n_0,mctl_tmr_ovf_carry_i_3_n_0,mctl_tmr_ovf_carry_i_4_n_0}));
  CARRY4 \mctl/mctl_tmr_ovf_carry__0 
       (.CI(\mctl/mctl_tmr_ovf_carry_n_0 ),
        .CO({\mctl/mctl_tmr_ovf ,\mctl/mctl_tmr_ovf_carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,mctl_tmr_ovf_carry__0_i_1_n_0,mctl_tmr_ovf_carry__0_i_2_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    \mctl/stwmctl[0]_i_1 
       (.I0(bdatw[0]),
        .I1(\mctl/p_16_in ),
        .I2(mctl_mrae),
        .O(\mctl/stwmctl[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \mctl/stwmctl[2]_i_1 
       (.I0(bdatw[2]),
        .I1(\mctl/p_16_in ),
        .I2(\mctl/mctl_mtee ),
        .O(\mctl/stwmctl[2]_i_1_n_0 ));
  FDRE \mctl/stwmctl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/stwmctl[0]_i_1_n_0 ),
        .Q(mctl_mrae),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mctl/stwmctl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mctl/stwmctl[2]_i_1_n_0 ),
        .Q(\mctl/mctl_mtee ),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/synfil_scl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stws_scl_i),
        .Q(synfil_scl[0]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/synfil_scl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_scl[0]),
        .Q(synfil_scl[1]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/synfil_scl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_scl[1]),
        .Q(synfil_scl[2]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/synfil_scl_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_scl[2]),
        .Q(synfil_scl[3]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/synfil_scl_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_scl[3]),
        .Q(synfil_scl[4]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/synfil_sda_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stws_sda_i),
        .Q(synfil_sda[0]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/synfil_sda_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_sda[0]),
        .Q(synfil_sda[1]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/synfil_sda_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_sda[1]),
        .Q(synfil_sda[2]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/synfil_sda_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_sda[2]),
        .Q(synfil_sda[3]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/synfil_sda_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(synfil_sda[3]),
        .Q(synfil_sda[4]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/tcnt_cmp_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(tcnt_cmp[0]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/tcnt_cmp_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[10]),
        .Q(tcnt_cmp[10]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/tcnt_cmp_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[11]),
        .Q(tcnt_cmp[11]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/tcnt_cmp_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[12]),
        .Q(tcnt_cmp[12]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/tcnt_cmp_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[13]),
        .Q(tcnt_cmp[13]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/tcnt_cmp_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[14]),
        .Q(tcnt_cmp[14]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/tcnt_cmp_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[15]),
        .Q(tcnt_cmp[15]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/tcnt_cmp_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[1]),
        .Q(tcnt_cmp[1]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/tcnt_cmp_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[2]),
        .Q(tcnt_cmp[2]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/tcnt_cmp_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[3]),
        .Q(tcnt_cmp[3]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/tcnt_cmp_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[4]),
        .Q(tcnt_cmp[4]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/tcnt_cmp_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[5]),
        .Q(tcnt_cmp[5]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/tcnt_cmp_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[6]),
        .Q(tcnt_cmp[6]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/tcnt_cmp_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[7]),
        .Q(tcnt_cmp[7]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/tcnt_cmp_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[8]),
        .Q(tcnt_cmp[8]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mctl/tcnt_cmp_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tcnt_cmp_t[9]),
        .Q(tcnt_cmp[9]),
        .S(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mctl/tcnt_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[0]_i_2_n_7 ),
        .Q(\mctl/tcnt_reg [0]),
        .R(\tcnt[0]_i_1_n_0 ));
  FDRE \mctl/tcnt_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[8]_i_1_n_5 ),
        .Q(\mctl/tcnt_reg [10]),
        .R(\tcnt[0]_i_1_n_0 ));
  FDRE \mctl/tcnt_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[8]_i_1_n_4 ),
        .Q(\mctl/tcnt_reg [11]),
        .R(\tcnt[0]_i_1_n_0 ));
  FDRE \mctl/tcnt_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[12]_i_1_n_7 ),
        .Q(\mctl/tcnt_reg [12]),
        .R(\tcnt[0]_i_1_n_0 ));
  FDRE \mctl/tcnt_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[12]_i_1_n_6 ),
        .Q(\mctl/tcnt_reg [13]),
        .R(\tcnt[0]_i_1_n_0 ));
  FDRE \mctl/tcnt_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[12]_i_1_n_5 ),
        .Q(\mctl/tcnt_reg [14]),
        .R(\tcnt[0]_i_1_n_0 ));
  FDRE \mctl/tcnt_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[12]_i_1_n_4 ),
        .Q(\mctl/tcnt_reg [15]),
        .R(\tcnt[0]_i_1_n_0 ));
  FDRE \mctl/tcnt_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[0]_i_2_n_6 ),
        .Q(\mctl/tcnt_reg [1]),
        .R(\tcnt[0]_i_1_n_0 ));
  FDRE \mctl/tcnt_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[0]_i_2_n_5 ),
        .Q(\mctl/tcnt_reg [2]),
        .R(\tcnt[0]_i_1_n_0 ));
  FDRE \mctl/tcnt_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[0]_i_2_n_4 ),
        .Q(\mctl/tcnt_reg [3]),
        .R(\tcnt[0]_i_1_n_0 ));
  FDRE \mctl/tcnt_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[4]_i_1_n_7 ),
        .Q(\mctl/tcnt_reg [4]),
        .R(\tcnt[0]_i_1_n_0 ));
  FDRE \mctl/tcnt_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[4]_i_1_n_6 ),
        .Q(\mctl/tcnt_reg [5]),
        .R(\tcnt[0]_i_1_n_0 ));
  FDRE \mctl/tcnt_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[4]_i_1_n_5 ),
        .Q(\mctl/tcnt_reg [6]),
        .R(\tcnt[0]_i_1_n_0 ));
  FDRE \mctl/tcnt_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[4]_i_1_n_4 ),
        .Q(\mctl/tcnt_reg [7]),
        .R(\tcnt[0]_i_1_n_0 ));
  FDRE \mctl/tcnt_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[8]_i_1_n_7 ),
        .Q(\mctl/tcnt_reg [8]),
        .R(\tcnt[0]_i_1_n_0 ));
  FDRE \mctl/tcnt_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tcnt_reg[8]_i_1_n_6 ),
        .Q(\mctl/tcnt_reg [9]),
        .R(\tcnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h17FFFFFF17000000)) 
    mctl_ack_stat_i_1
       (.I0(synfil_sda[3]),
        .I1(synfil_sda[4]),
        .I2(synfil_sda[2]),
        .I3(\mctl/mctl_lat_ack ),
        .I4(mctl_dtct_sclr),
        .I5(mctl_ack_stat),
        .O(mctl_ack_stat_i_1_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    mctl_bus_bsy_i_1
       (.I0(\mctl/mctl_bus_bsy0 ),
        .I1(\mctl/mctl_dtct_stp ),
        .I2(mctl_bus_bsy),
        .O(mctl_bus_bsy_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    mctl_bus_bsy_i_2
       (.I0(\mctl/mctl_dtct_sta ),
        .I1(synfil_sda[2]),
        .I2(mctl_bus_bsy_i_3_n_0),
        .I3(synfil_scl[2]),
        .I4(synfil_scl[4]),
        .I5(synfil_scl[3]),
        .O(\mctl/mctl_bus_bsy0 ));
  LUT2 #(
    .INIT(4'h7)) 
    mctl_bus_bsy_i_3
       (.I0(synfil_sda[3]),
        .I1(synfil_sda[4]),
        .O(mctl_bus_bsy_i_3_n_0));
  LUT5 #(
    .INIT(32'h00080808)) 
    mctl_bus_err_i_1
       (.I0(mctl_bus_err_i_2_n_0),
        .I1(rst_n),
        .I2(\mctl/mctl_mrst ),
        .I3(\mctl/p_16_in ),
        .I4(bdatw[7]),
        .O(mctl_bus_err_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00E00000)) 
    mctl_bus_err_i_2
       (.I0(mdat_sda_o),
        .I1(\mctl/mctl_sda_o ),
        .I2(mctl_dtct_sclr),
        .I3(mctl_sda_s),
        .I4(\mctl/mctl_arb ),
        .I5(mctl_bus_err),
        .O(mctl_bus_err_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002000)) 
    mctl_bus_err_i_3
       (.I0(stat[2]),
        .I1(stat[4]),
        .I2(\mctl/mctl_tmr_ovf ),
        .I3(stat[1]),
        .I4(stat[0]),
        .I5(mctl_bus_err_i_4_n_0),
        .O(\mctl/mctl_arb ));
  LUT5 #(
    .INIT(32'h1010101F)) 
    mctl_bus_err_i_4
       (.I0(stat[2]),
        .I1(mctl_bus_err_i_5_n_0),
        .I2(stat[3]),
        .I3(stat[4]),
        .I4(mctl_bus_err_i_6_n_0),
        .O(mctl_bus_err_i_4_n_0));
  LUT6 #(
    .INIT(64'hBFB0F0FFBFBFFFF0)) 
    mctl_bus_err_i_5
       (.I0(sel00),
        .I1(mdat_trg_wr),
        .I2(stat[1]),
        .I3(mctl_dtct_sclf),
        .I4(stat[0]),
        .I5(stat[4]),
        .O(mctl_bus_err_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000011111101)) 
    mctl_bus_err_i_6
       (.I0(stat[1]),
        .I1(stat[2]),
        .I2(mdat_trg_wr),
        .I3(mctl_bus_bsy),
        .I4(sel00),
        .I5(stat[0]),
        .O(mctl_bus_err_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mctl_dtct_sclf_i_1
       (.I0(\mctl/p_1_in ),
        .I1(\mctl/p_0_in9_in ),
        .O(\mctl/mctl_dtct_sclf0 ));
  LUT2 #(
    .INIT(4'h2)) 
    mctl_dtct_sclr_i_1
       (.I0(\mctl/p_0_in9_in ),
        .I1(\mctl/p_1_in ),
        .O(\mctl/mctl_dtct_sclr0 ));
  LUT6 #(
    .INIT(64'h0000000000000600)) 
    mctl_lat_ack_i_1
       (.I0(stat[0]),
        .I1(mctl_dtct_sclf),
        .I2(stat[2]),
        .I3(stat[3]),
        .I4(stat[1]),
        .I5(stat[4]),
        .O(\mctl/fsm/mctl_lat_ack_t ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    mctl_lat_rv_i_1
       (.I0(stat[0]),
        .I1(stat[1]),
        .I2(stat[3]),
        .I3(stat[2]),
        .I4(stat[4]),
        .I5(mctl_dtct_sclf),
        .O(\mctl/fsm/mctl_lat_rv_t ));
  LUT3 #(
    .INIT(8'h8F)) 
    mctl_mrst_i_1
       (.I0(bdatw[15]),
        .I1(\mctl/p_16_in ),
        .I2(rst_n),
        .O(mctl_mrst_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF8FFFFFFF8888)) 
    mctl_mtef_i_1
       (.I0(mctl_dtct_sclr),
        .I1(\mctl/mctl_lat_ack ),
        .I2(\mctl/p_16_in ),
        .I3(bdatw[6]),
        .I4(mctl_stp_done),
        .I5(\mctl/mctl_mtef ),
        .O(mctl_mtef_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    \mctl_scl_f[0]_i_1 
       (.I0(synfil_scl[2]),
        .I1(synfil_scl[4]),
        .I2(synfil_scl[3]),
        .O(mctl_scl_s));
  LUT6 #(
    .INIT(64'h0101010101010100)) 
    mctl_scl_o_i_2
       (.I0(stat[3]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(mctl_scl_o_i_4_n_0),
        .I4(mctl_bus_bsy),
        .I5(stat[4]),
        .O(mctl_scl_o_i_2_n_0));
  LUT5 #(
    .INIT(32'hA8A0A28A)) 
    mctl_scl_o_i_3
       (.I0(stat[3]),
        .I1(stat[0]),
        .I2(stat[4]),
        .I3(\mctl/mctl_tmr_ovf ),
        .I4(stat[1]),
        .O(mctl_scl_o_i_3_n_0));
  LUT4 #(
    .INIT(16'h888B)) 
    mctl_scl_o_i_4
       (.I0(sel00),
        .I1(mdat_trg_wr),
        .I2(mdat_trg_sp),
        .I3(mdat_trg_rd),
        .O(mctl_scl_o_i_4_n_0));
  MUXF7 mctl_scl_o_reg_i_1
       (.I0(mctl_scl_o_i_2_n_0),
        .I1(mctl_scl_o_i_3_n_0),
        .O(\mctl/fsm/mctl_scl_o_t ),
        .S(stat[2]));
  LUT3 #(
    .INIT(8'hE8)) 
    \mctl_sda_f[0]_i_1 
       (.I0(synfil_sda[2]),
        .I1(synfil_sda[4]),
        .I2(synfil_sda[3]),
        .O(mctl_sda_s));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    mctl_sda_o_i_1
       (.I0(mctl_sda_o_i_2_n_0),
        .I1(stat[4]),
        .I2(mctl_sda_o_i_3_n_0),
        .I3(stat[3]),
        .I4(mctl_sda_o_i_4_n_0),
        .I5(stat[2]),
        .O(\mctl/fsm/mctl_sda_o_t ));
  LUT6 #(
    .INIT(64'hFBFBFBFBFB383B3B)) 
    mctl_sda_o_i_2
       (.I0(mctl_sda_o_i_5_n_0),
        .I1(stat[3]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(\mctl/mctl_tmr_ovf ),
        .I5(stat[1]),
        .O(mctl_sda_o_i_2_n_0));
  LUT6 #(
    .INIT(64'hAA51FFFFAA510000)) 
    mctl_sda_o_i_3
       (.I0(stat[1]),
        .I1(\mctl/mctl_tmr_ovf ),
        .I2(mctl_bus_bsy),
        .I3(stat[0]),
        .I4(stat[2]),
        .I5(mctl_sda_o_i_6_n_0),
        .O(mctl_sda_o_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000055544454)) 
    mctl_sda_o_i_4
       (.I0(stat[0]),
        .I1(mctl_bus_bsy),
        .I2(\stat[4]_i_3_n_0 ),
        .I3(mdat_trg_wr),
        .I4(sel00),
        .I5(stat[1]),
        .O(mctl_sda_o_i_4_n_0));
  LUT6 #(
    .INIT(64'h800F80008F0F800F)) 
    mctl_sda_o_i_5
       (.I0(sel00),
        .I1(mdat_trg_wr),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(mdat_nak_rv),
        .I5(mctl_dtct_sclf),
        .O(mctl_sda_o_i_5_n_0));
  LUT5 #(
    .INIT(32'h800F8F00)) 
    mctl_sda_o_i_6
       (.I0(sel00),
        .I1(mdat_trg_wr),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(mctl_dtct_sclf),
        .O(mctl_sda_o_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    mctl_stwmbaud_rd_i_1
       (.I0(bcs_stws_n),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[2]),
        .I4(badr[0]),
        .I5(badr[3]),
        .O(\mctl/mctl_stwmbaud_rd0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    mctl_stwmctl_rd_i_1
       (.I0(bcs_stws_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[3]),
        .I5(badr[2]),
        .O(\mctl/mctl_stwmctl_rd0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    mctl_stwmdatr_rd_i_1
       (.I0(bcs_stws_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[3]),
        .I5(badr[2]),
        .O(\mctl/mctl_stwmdatr_rd0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    mctl_stwmreqr_rd_i_1
       (.I0(bcs_stws_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(badr[1]),
        .I5(badr[3]),
        .O(\mctl/mctl_stwmreqr_rd0 ));
  LUT2 #(
    .INIT(4'h9)) 
    mctl_tmr_ovf_carry__0_i_1
       (.I0(tcnt_cmp[15]),
        .I1(\mctl/tcnt_reg [15]),
        .O(mctl_tmr_ovf_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mctl_tmr_ovf_carry__0_i_2
       (.I0(\mctl/tcnt_reg [12]),
        .I1(tcnt_cmp[12]),
        .I2(tcnt_cmp[14]),
        .I3(\mctl/tcnt_reg [14]),
        .I4(tcnt_cmp[13]),
        .I5(\mctl/tcnt_reg [13]),
        .O(mctl_tmr_ovf_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mctl_tmr_ovf_carry_i_1
       (.I0(\mctl/tcnt_reg [9]),
        .I1(tcnt_cmp[9]),
        .I2(tcnt_cmp[11]),
        .I3(\mctl/tcnt_reg [11]),
        .I4(tcnt_cmp[10]),
        .I5(\mctl/tcnt_reg [10]),
        .O(mctl_tmr_ovf_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mctl_tmr_ovf_carry_i_2
       (.I0(\mctl/tcnt_reg [6]),
        .I1(tcnt_cmp[6]),
        .I2(tcnt_cmp[8]),
        .I3(\mctl/tcnt_reg [8]),
        .I4(tcnt_cmp[7]),
        .I5(\mctl/tcnt_reg [7]),
        .O(mctl_tmr_ovf_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mctl_tmr_ovf_carry_i_3
       (.I0(\mctl/tcnt_reg [3]),
        .I1(tcnt_cmp[3]),
        .I2(tcnt_cmp[5]),
        .I3(\mctl/tcnt_reg [5]),
        .I4(tcnt_cmp[4]),
        .I5(\mctl/tcnt_reg [4]),
        .O(mctl_tmr_ovf_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mctl_tmr_ovf_carry_i_4
       (.I0(\mctl/tcnt_reg [0]),
        .I1(tcnt_cmp[0]),
        .I2(tcnt_cmp[2]),
        .I3(\mctl/tcnt_reg [2]),
        .I4(tcnt_cmp[1]),
        .I5(\mctl/tcnt_reg [1]),
        .O(mctl_tmr_ovf_carry_i_4_n_0));
  FDRE \mdat/mdat_datr_sft_reg[0] 
       (.C(clk),
        .CE(\mdat/mdat_datr_sft0 ),
        .D(mctl_sda_s),
        .Q(mdat_datr_sft[0]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mdat/mdat_datr_sft_reg[1] 
       (.C(clk),
        .CE(\mdat/mdat_datr_sft0 ),
        .D(mdat_datr_sft[0]),
        .Q(mdat_datr_sft[1]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mdat/mdat_datr_sft_reg[2] 
       (.C(clk),
        .CE(\mdat/mdat_datr_sft0 ),
        .D(mdat_datr_sft[1]),
        .Q(mdat_datr_sft[2]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mdat/mdat_datr_sft_reg[3] 
       (.C(clk),
        .CE(\mdat/mdat_datr_sft0 ),
        .D(mdat_datr_sft[2]),
        .Q(mdat_datr_sft[3]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mdat/mdat_datr_sft_reg[4] 
       (.C(clk),
        .CE(\mdat/mdat_datr_sft0 ),
        .D(mdat_datr_sft[3]),
        .Q(mdat_datr_sft[4]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mdat/mdat_datr_sft_reg[5] 
       (.C(clk),
        .CE(\mdat/mdat_datr_sft0 ),
        .D(mdat_datr_sft[4]),
        .Q(mdat_datr_sft[5]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mdat/mdat_datr_sft_reg[6] 
       (.C(clk),
        .CE(\mdat/mdat_datr_sft0 ),
        .D(mdat_datr_sft[5]),
        .Q(mdat_datr_sft[6]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mdat/mdat_datr_sft_reg[7] 
       (.C(clk),
        .CE(\mdat/mdat_datr_sft0 ),
        .D(mdat_datr_sft[6]),
        .Q(mdat_datr_sft[7]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mdat/mdat_dats_reg[0] 
       (.C(clk),
        .CE(mctl_rst_sd),
        .D(\mdat/stwmdats_reg_n_0_[0] ),
        .Q(\mdat/mdat_dats [0]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mdat/mdat_dats_reg[1] 
       (.C(clk),
        .CE(mctl_rst_sd),
        .D(\mdat/stwmdats_reg_n_0_[1] ),
        .Q(\mdat/mdat_dats [1]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mdat/mdat_dats_reg[2] 
       (.C(clk),
        .CE(mctl_rst_sd),
        .D(\mdat/stwmdats_reg_n_0_[2] ),
        .Q(\mdat/mdat_dats [2]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mdat/mdat_dats_reg[3] 
       (.C(clk),
        .CE(mctl_rst_sd),
        .D(\mdat/stwmdats_reg_n_0_[3] ),
        .Q(\mdat/mdat_dats [3]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mdat/mdat_dats_reg[4] 
       (.C(clk),
        .CE(mctl_rst_sd),
        .D(\mdat/stwmdats_reg_n_0_[4] ),
        .Q(\mdat/mdat_dats [4]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mdat/mdat_dats_reg[5] 
       (.C(clk),
        .CE(mctl_rst_sd),
        .D(\mdat/stwmdats_reg_n_0_[5] ),
        .Q(\mdat/mdat_dats [5]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mdat/mdat_dats_reg[6] 
       (.C(clk),
        .CE(mctl_rst_sd),
        .D(\mdat/stwmdats_reg_n_0_[6] ),
        .Q(\mdat/mdat_dats [6]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mdat/mdat_dats_reg[7] 
       (.C(clk),
        .CE(mctl_rst_sd),
        .D(\mdat/stwmdats_reg_n_0_[7] ),
        .Q(\mdat/mdat_dats [7]),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mdat/mdat_dats_sft_reg[0] 
       (.C(clk),
        .CE(\mdat_dats_sft[7]_i_1_n_0 ),
        .D(\mdat/mdat_dats_sft [1]),
        .Q(\mdat/mdat_dats_sft [0]),
        .R(\stwmdats[8]_i_1_n_0 ));
  FDRE \mdat/mdat_dats_sft_reg[1] 
       (.C(clk),
        .CE(\mdat_dats_sft[7]_i_1_n_0 ),
        .D(\mdat/mdat_dats_sft [2]),
        .Q(\mdat/mdat_dats_sft [1]),
        .R(\stwmdats[8]_i_1_n_0 ));
  FDRE \mdat/mdat_dats_sft_reg[2] 
       (.C(clk),
        .CE(\mdat_dats_sft[7]_i_1_n_0 ),
        .D(\mdat/mdat_dats_sft [3]),
        .Q(\mdat/mdat_dats_sft [2]),
        .R(\stwmdats[8]_i_1_n_0 ));
  FDRE \mdat/mdat_dats_sft_reg[3] 
       (.C(clk),
        .CE(\mdat_dats_sft[7]_i_1_n_0 ),
        .D(\mdat/mdat_dats_sft [4]),
        .Q(\mdat/mdat_dats_sft [3]),
        .R(\stwmdats[8]_i_1_n_0 ));
  FDRE \mdat/mdat_dats_sft_reg[4] 
       (.C(clk),
        .CE(\mdat_dats_sft[7]_i_1_n_0 ),
        .D(\mdat/mdat_dats_sft [5]),
        .Q(\mdat/mdat_dats_sft [4]),
        .R(\stwmdats[8]_i_1_n_0 ));
  FDRE \mdat/mdat_dats_sft_reg[5] 
       (.C(clk),
        .CE(\mdat_dats_sft[7]_i_1_n_0 ),
        .D(\mdat/mdat_dats_sft [6]),
        .Q(\mdat/mdat_dats_sft [5]),
        .R(\stwmdats[8]_i_1_n_0 ));
  FDRE \mdat/mdat_dats_sft_reg[6] 
       (.C(clk),
        .CE(\mdat_dats_sft[7]_i_1_n_0 ),
        .D(\mdat/mdat_dats_sft [7]),
        .Q(\mdat/mdat_dats_sft [6]),
        .R(\stwmdats[8]_i_1_n_0 ));
  FDSE \mdat/mdat_dats_sft_reg[7] 
       (.C(clk),
        .CE(\mdat_dats_sft[7]_i_1_n_0 ),
        .D(\<const0> ),
        .Q(\mdat/mdat_dats_sft [7]),
        .S(\stwmdats[8]_i_1_n_0 ));
  FDRE \mdat/mdat_mraf_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(mdat_mraf_i_1_n_0),
        .Q(mdat_mraf),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDSE \mdat/mdat_mtaf_reg 
       (.C(clk),
        .CE(mctl_stwmdats_wr),
        .D(\<const0> ),
        .Q(mdat_mtaf),
        .S(\stwmdats[8]_i_1_n_0 ));
  FDRE \mdat/mdat_nak_rv_reg 
       (.C(clk),
        .CE(\mdat/mdat_datr_sft0 ),
        .D(mdat_rcv_nack),
        .Q(mdat_nak_rv),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mdat/mdat_rcv_nack_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(mdat_rcv_nack_i_1_n_0),
        .Q(mdat_rcv_nack),
        .R(\<const0> ));
  FDRE \mdat/mdat_sda_o_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mdat/mdat_sda_o0 ),
        .Q(mdat_sda_o),
        .R(\synfil_scl[4]_i_1_n_0 ));
  FDRE \mdat/mdat_trg_rd_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(mdat_trg_rd_i_1_n_0),
        .Q(mdat_trg_rd),
        .R(\<const0> ));
  FDRE \mdat/mdat_trg_sp_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(mdat_trg_sp_i_1_n_0),
        .Q(mdat_trg_sp),
        .R(\<const0> ));
  FDRE \mdat/mdat_trg_wr_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(mdat_trg_wr_i_1_n_0),
        .Q(mdat_trg_wr),
        .R(\<const0> ));
  FDRE \mdat/stwmdatr_reg[0] 
       (.C(clk),
        .CE(mctl_lat_rv),
        .D(mdat_datr_sft[0]),
        .Q(stwmdatr[0]),
        .R(\stwmdatr[7]_i_1_n_0 ));
  FDRE \mdat/stwmdatr_reg[1] 
       (.C(clk),
        .CE(mctl_lat_rv),
        .D(mdat_datr_sft[1]),
        .Q(stwmdatr[1]),
        .R(\stwmdatr[7]_i_1_n_0 ));
  FDRE \mdat/stwmdatr_reg[2] 
       (.C(clk),
        .CE(mctl_lat_rv),
        .D(mdat_datr_sft[2]),
        .Q(stwmdatr[2]),
        .R(\stwmdatr[7]_i_1_n_0 ));
  FDRE \mdat/stwmdatr_reg[3] 
       (.C(clk),
        .CE(mctl_lat_rv),
        .D(mdat_datr_sft[3]),
        .Q(stwmdatr[3]),
        .R(\stwmdatr[7]_i_1_n_0 ));
  FDRE \mdat/stwmdatr_reg[4] 
       (.C(clk),
        .CE(mctl_lat_rv),
        .D(mdat_datr_sft[4]),
        .Q(stwmdatr[4]),
        .R(\stwmdatr[7]_i_1_n_0 ));
  FDRE \mdat/stwmdatr_reg[5] 
       (.C(clk),
        .CE(mctl_lat_rv),
        .D(mdat_datr_sft[5]),
        .Q(stwmdatr[5]),
        .R(\stwmdatr[7]_i_1_n_0 ));
  FDRE \mdat/stwmdatr_reg[6] 
       (.C(clk),
        .CE(mctl_lat_rv),
        .D(mdat_datr_sft[6]),
        .Q(stwmdatr[6]),
        .R(\stwmdatr[7]_i_1_n_0 ));
  FDRE \mdat/stwmdatr_reg[7] 
       (.C(clk),
        .CE(mctl_lat_rv),
        .D(mdat_datr_sft[7]),
        .Q(stwmdatr[7]),
        .R(\stwmdatr[7]_i_1_n_0 ));
  FDRE \mdat/stwmdats_reg[0] 
       (.C(clk),
        .CE(mctl_stwmdats_wr),
        .D(bdatw[0]),
        .Q(\mdat/stwmdats_reg_n_0_[0] ),
        .R(\stwmdats[8]_i_1_n_0 ));
  FDRE \mdat/stwmdats_reg[1] 
       (.C(clk),
        .CE(mctl_stwmdats_wr),
        .D(bdatw[1]),
        .Q(\mdat/stwmdats_reg_n_0_[1] ),
        .R(\stwmdats[8]_i_1_n_0 ));
  FDRE \mdat/stwmdats_reg[2] 
       (.C(clk),
        .CE(mctl_stwmdats_wr),
        .D(bdatw[2]),
        .Q(\mdat/stwmdats_reg_n_0_[2] ),
        .R(\stwmdats[8]_i_1_n_0 ));
  FDRE \mdat/stwmdats_reg[3] 
       (.C(clk),
        .CE(mctl_stwmdats_wr),
        .D(bdatw[3]),
        .Q(\mdat/stwmdats_reg_n_0_[3] ),
        .R(\stwmdats[8]_i_1_n_0 ));
  FDRE \mdat/stwmdats_reg[4] 
       (.C(clk),
        .CE(mctl_stwmdats_wr),
        .D(bdatw[4]),
        .Q(\mdat/stwmdats_reg_n_0_[4] ),
        .R(\stwmdats[8]_i_1_n_0 ));
  FDRE \mdat/stwmdats_reg[5] 
       (.C(clk),
        .CE(mctl_stwmdats_wr),
        .D(bdatw[5]),
        .Q(\mdat/stwmdats_reg_n_0_[5] ),
        .R(\stwmdats[8]_i_1_n_0 ));
  FDRE \mdat/stwmdats_reg[6] 
       (.C(clk),
        .CE(mctl_stwmdats_wr),
        .D(bdatw[6]),
        .Q(\mdat/stwmdats_reg_n_0_[6] ),
        .R(\stwmdats[8]_i_1_n_0 ));
  FDRE \mdat/stwmdats_reg[7] 
       (.C(clk),
        .CE(mctl_stwmdats_wr),
        .D(bdatw[7]),
        .Q(\mdat/stwmdats_reg_n_0_[7] ),
        .R(\stwmdats[8]_i_1_n_0 ));
  FDRE \mdat/stwmdats_reg[8] 
       (.C(clk),
        .CE(mctl_stwmdats_wr),
        .D(bdatw[8]),
        .Q(sel00),
        .R(\stwmdats[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000040000040)) 
    \mdat_dats[7]_i_2 
       (.I0(sel00),
        .I1(mdat_trg_wr),
        .I2(\mdat_dats[7]_i_4_n_0 ),
        .I3(stat[1]),
        .I4(stat[3]),
        .I5(stat[4]),
        .O(\mdat_dats[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \mdat_dats[7]_i_3 
       (.I0(stat[0]),
        .I1(stat[1]),
        .I2(\mctl/mctl_tmr_ovf ),
        .I3(stat[4]),
        .I4(stat[3]),
        .O(\mdat_dats[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA1)) 
    \mdat_dats[7]_i_4 
       (.I0(stat[0]),
        .I1(mctl_bus_bsy),
        .I2(stat[1]),
        .O(\mdat_dats[7]_i_4_n_0 ));
  MUXF7 \mdat_dats_reg[7]_i_1 
       (.I0(\mdat_dats[7]_i_2_n_0 ),
        .I1(\mdat_dats[7]_i_3_n_0 ),
        .O(mctl_rst_sd),
        .S(stat[2]));
  LUT6 #(
    .INIT(64'h1010101010101000)) 
    \mdat_dats_sft[7]_i_1 
       (.I0(stat[4]),
        .I1(stat[3]),
        .I2(mctl_dtct_sclf),
        .I3(stat[1]),
        .I4(stat[0]),
        .I5(stat[2]),
        .O(\mdat_dats_sft[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    mdat_mraf_i_1
       (.I0(mctl_lat_rv),
        .I1(mctl_stwmdatr_rd),
        .I2(mdat_mraf),
        .O(mdat_mraf_i_1_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    mdat_nak_rv_i_1
       (.I0(mdat_nak_rv_i_2_n_0),
        .I1(mctl_dtct_sclf),
        .I2(stat[4]),
        .I3(mctl_dtct_sclr),
        .O(\mdat/mdat_datr_sft0 ));
  LUT4 #(
    .INIT(16'hFE01)) 
    mdat_nak_rv_i_2
       (.I0(stat[0]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[3]),
        .O(mdat_nak_rv_i_2_n_0));
  LUT5 #(
    .INIT(32'h0000F222)) 
    mdat_rcv_nack_i_1
       (.I0(mdat_rcv_nack),
        .I1(mctl_lat_rv),
        .I2(mctl_stwmreqr_wr),
        .I3(bdatw[1]),
        .I4(\stat[4]_i_1_n_0 ),
        .O(mdat_rcv_nack_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000020)) 
    mdat_rcv_nack_i_2
       (.I0(\mctl/p_21_in ),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[1]),
        .I4(badr[3]),
        .O(mctl_stwmreqr_wr));
  LUT5 #(
    .INIT(32'h000000EA)) 
    mdat_sda_o_i_1
       (.I0(mdat_sda_o_i_2_n_0),
        .I1(\mdat/mdat_dats [0]),
        .I2(\mdat/mdat_dats_sft [0]),
        .I3(mdat_nak_rv_i_2_n_0),
        .I4(stat[4]),
        .O(\mdat/mdat_sda_o0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    mdat_sda_o_i_2
       (.I0(mdat_sda_o_i_3_n_0),
        .I1(\mdat/mdat_dats_sft [1]),
        .I2(\mdat/mdat_dats [1]),
        .I3(\mdat/mdat_dats_sft [2]),
        .I4(\mdat/mdat_dats [2]),
        .I5(mdat_sda_o_i_4_n_0),
        .O(mdat_sda_o_i_2_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    mdat_sda_o_i_3
       (.I0(\mdat/mdat_dats_sft [3]),
        .I1(\mdat/mdat_dats [3]),
        .I2(\mdat/mdat_dats_sft [4]),
        .I3(\mdat/mdat_dats [4]),
        .O(mdat_sda_o_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mdat_sda_o_i_4
       (.I0(\mdat/mdat_dats [6]),
        .I1(\mdat/mdat_dats_sft [6]),
        .I2(\mdat/mdat_dats [5]),
        .I3(\mdat/mdat_dats_sft [5]),
        .I4(\mdat/mdat_dats_sft [7]),
        .I5(\mdat/mdat_dats [7]),
        .O(mdat_sda_o_i_4_n_0));
  LUT5 #(
    .INIT(32'h0000F222)) 
    mdat_trg_rd_i_1
       (.I0(mdat_trg_rd),
        .I1(mctl_lat_rv),
        .I2(mctl_stwmreqr_wr),
        .I3(bdatw[0]),
        .I4(\stat[4]_i_1_n_0 ),
        .O(mdat_trg_rd_i_1_n_0));
  LUT5 #(
    .INIT(32'h0000F222)) 
    mdat_trg_sp_i_1
       (.I0(mdat_trg_sp),
        .I1(mctl_stp_done),
        .I2(mctl_stwmreqr_wr),
        .I3(bdatw[2]),
        .I4(\stat[4]_i_1_n_0 ),
        .O(mdat_trg_sp_i_1_n_0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    mdat_trg_sp_i_2
       (.I0(stat[3]),
        .I1(stat[1]),
        .I2(\mctl/mctl_tmr_ovf ),
        .I3(stat[0]),
        .I4(stat[2]),
        .I5(stat[4]),
        .O(mctl_stp_done));
  LUT6 #(
    .INIT(64'h0000000E00000000)) 
    mdat_trg_wr_i_1
       (.I0(mdat_trg_wr),
        .I1(mctl_stwmdats_wr),
        .I2(mctl_bus_err),
        .I3(mctl_rst_sd),
        .I4(\mctl/mctl_mrst ),
        .I5(rst_n),
        .O(mdat_trg_wr_i_1_n_0));
  LUT6 #(
    .INIT(64'h8BB8FFFF8BB80000)) 
    \stat[0]_i_1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(stat[3]),
        .I2(mctl_dtct_sclf),
        .I3(stat[0]),
        .I4(stat[2]),
        .I5(\stat[0]_i_3_n_0 ),
        .O(\mctl/fsm/stat_nx [0]));
  LUT5 #(
    .INIT(32'h00666626)) 
    \stat[0]_i_2 
       (.I0(stat[0]),
        .I1(\mctl/mctl_tmr_ovf ),
        .I2(mctl_bus_bsy),
        .I3(stat[4]),
        .I4(stat[1]),
        .O(\stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5F5CFFFF5F5C0000)) 
    \stat[0]_i_3 
       (.I0(mctl_dtct_sclf),
        .I1(mdat_trg_wr),
        .I2(\tcnt_cmp[15]_i_10_n_0 ),
        .I3(\stat[0]_i_4_n_0 ),
        .I4(stat[0]),
        .I5(\stat[0]_i_5_n_0 ),
        .O(\stat[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \stat[0]_i_4 
       (.I0(mdat_trg_rd),
        .I1(mdat_trg_sp),
        .O(\stat[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCACAACA0CACFACAF)) 
    \stat[0]_i_5 
       (.I0(mctl_dtct_sclf),
        .I1(\mctl/mctl_tmr_ovf ),
        .I2(stat[3]),
        .I3(stat[4]),
        .I4(stat[1]),
        .I5(\stat[0]_i_6_n_0 ),
        .O(\stat[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF8B)) 
    \stat[0]_i_6 
       (.I0(sel00),
        .I1(mdat_trg_wr),
        .I2(mdat_trg_rd),
        .I3(stat[1]),
        .I4(mctl_bus_bsy),
        .O(\stat[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \stat[1]_i_1 
       (.I0(\stat[1]_i_2_n_0 ),
        .I1(\stat[1]_i_3_n_0 ),
        .I2(stat[1]),
        .I3(\stat[1]_i_4_n_0 ),
        .I4(\stat[1]_i_5_n_0 ),
        .O(\mctl/fsm/stat_nx [1]));
  LUT5 #(
    .INIT(32'h13205720)) 
    \stat[1]_i_2 
       (.I0(stat[0]),
        .I1(stat[3]),
        .I2(mctl_dtct_sclf),
        .I3(stat[1]),
        .I4(\mctl/mctl_tmr_ovf ),
        .O(\stat[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1F1F1F1F1F1F101F)) 
    \stat[1]_i_3 
       (.I0(\mctl/mctl_tmr_ovf ),
        .I1(stat[4]),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(\stat[4]_i_3_n_0 ),
        .I5(mdat_trg_wr),
        .O(\stat[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \stat[1]_i_4 
       (.I0(stat[0]),
        .I1(mctl_dtct_sclf),
        .I2(stat[2]),
        .I3(\mctl/mctl_tmr_ovf ),
        .O(\stat[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA2AAA)) 
    \stat[1]_i_5 
       (.I0(stat[3]),
        .I1(mdat_trg_wr),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(stat[2]),
        .I5(sel00),
        .O(\stat[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFF888F8)) 
    \stat[2]_i_1 
       (.I0(\stat[3]_i_2_n_0 ),
        .I1(stat[2]),
        .I2(\stat[2]_i_2_n_0 ),
        .I3(stat[3]),
        .I4(\stat[2]_i_3_n_0 ),
        .O(\mctl/fsm/stat_nx [2]));
  LUT5 #(
    .INIT(32'h33FFC00A)) 
    \stat[2]_i_2 
       (.I0(\stat[3]_i_6_n_0 ),
        .I1(mctl_dtct_sclf),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(stat[2]),
        .O(\stat[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080008000808880)) 
    \stat[2]_i_3 
       (.I0(stat[1]),
        .I1(stat[0]),
        .I2(\tcnt_cmp[15]_i_9_n_0 ),
        .I3(stat[2]),
        .I4(stat[4]),
        .I5(\mctl/mctl_tmr_ovf ),
        .O(\stat[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFF888F8)) 
    \stat[3]_i_1 
       (.I0(\stat[3]_i_2_n_0 ),
        .I1(stat[3]),
        .I2(\stat[3]_i_3_n_0 ),
        .I3(stat[2]),
        .I4(\stat[3]_i_4_n_0 ),
        .O(\mctl/fsm/stat_nx [3]));
  LUT5 #(
    .INIT(32'h33337747)) 
    \stat[3]_i_2 
       (.I0(\mctl/mctl_tmr_ovf ),
        .I1(stat[1]),
        .I2(mctl_bus_bsy),
        .I3(stat[4]),
        .I4(stat[0]),
        .O(\stat[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h44CC44FC)) 
    \stat[3]_i_3 
       (.I0(\stat[3]_i_5_n_0 ),
        .I1(stat[3]),
        .I2(\stat[3]_i_6_n_0 ),
        .I3(stat[0]),
        .I4(stat[1]),
        .O(\stat[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080008000808880)) 
    \stat[3]_i_4 
       (.I0(stat[1]),
        .I1(stat[0]),
        .I2(mctl_dtct_sclf),
        .I3(stat[3]),
        .I4(stat[4]),
        .I5(\mctl/mctl_tmr_ovf ),
        .O(\stat[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \stat[3]_i_5 
       (.I0(sel00),
        .I1(mdat_trg_wr),
        .I2(mdat_trg_rd),
        .O(\stat[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \stat[3]_i_6 
       (.I0(\mctl/mctl_tmr_ovf ),
        .I1(stat[4]),
        .I2(\tcnt_cmp[15]_i_9_n_0 ),
        .I3(mctl_bus_bsy),
        .O(\stat[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \stat[4]_i_1 
       (.I0(mctl_bus_err),
        .I1(\mctl/mctl_mrst ),
        .I2(rst_n),
        .O(\stat[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFEFFFEF0000)) 
    \stat[4]_i_2 
       (.I0(mdat_trg_wr),
        .I1(stat[4]),
        .I2(\stat[4]_i_3_n_0 ),
        .I3(stat[2]),
        .I4(\stat_reg[4]_i_4_n_0 ),
        .I5(\stat[4]_i_5_n_0 ),
        .O(\mctl/fsm/stat_nx [4]));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[4]_i_3 
       (.I0(mdat_trg_sp),
        .I1(mdat_trg_rd),
        .O(\stat[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h02AAA2A2)) 
    \stat[4]_i_5 
       (.I0(stat[4]),
        .I1(\mctl/mctl_tmr_ovf ),
        .I2(stat[0]),
        .I3(stat[1]),
        .I4(stat[3]),
        .O(\stat[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h30300000FC300001)) 
    \stat[4]_i_6 
       (.I0(mctl_bus_bsy),
        .I1(stat[0]),
        .I2(stat[4]),
        .I3(stat[3]),
        .I4(stat[1]),
        .I5(mdat_trg_wr),
        .O(\stat[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h28202020)) 
    \stat[4]_i_7 
       (.I0(\mctl/mctl_tmr_ovf ),
        .I1(stat[3]),
        .I2(stat[4]),
        .I3(stat[1]),
        .I4(stat[0]),
        .O(\stat[4]_i_7_n_0 ));
  MUXF7 \stat_reg[4]_i_4 
       (.I0(\stat[4]_i_6_n_0 ),
        .I1(\stat[4]_i_7_n_0 ),
        .O(\stat_reg[4]_i_4_n_0 ),
        .S(stat[2]));
  LUT2 #(
    .INIT(4'hE)) 
    stwm_scl_o_INST_0
       (.I0(\mctl/mctl_scl_o ),
        .I1(mclk_scl_o),
        .O(stwm_scl_o));
  LUT2 #(
    .INIT(4'hE)) 
    stwm_sda_o_INST_0
       (.I0(\mctl/mctl_sda_o ),
        .I1(mdat_sda_o),
        .O(stwm_sda_o));
  LUT5 #(
    .INIT(32'h00000080)) 
    \stwmbaud[14]_i_1 
       (.I0(\mctl/p_21_in ),
        .I1(badr[1]),
        .I2(badr[2]),
        .I3(badr[0]),
        .I4(badr[3]),
        .O(mctl_stwmbaud_wr));
  LUT5 #(
    .INIT(32'h00000002)) 
    \stwmctl[2]_i_2 
       (.I0(\mctl/p_21_in ),
        .I1(badr[0]),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[2]),
        .O(\mctl/p_16_in ));
  LUT4 #(
    .INIT(16'hF4FF)) 
    \stwmdatr[7]_i_1 
       (.I0(mctl_lat_rv),
        .I1(mctl_stwmdatr_rd),
        .I2(\mctl/mctl_mrst ),
        .I3(rst_n),
        .O(\stwmdatr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \stwmdats[8]_i_1 
       (.I0(mctl_rst_sd),
        .I1(\mctl/mctl_mrst ),
        .I2(rst_n),
        .O(\stwmdats[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \stwmdats[8]_i_2 
       (.I0(\mctl/p_21_in ),
        .I1(badr[0]),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[2]),
        .O(mctl_stwmdats_wr));
  LUT3 #(
    .INIT(8'h20)) 
    \stwmdats[8]_i_3 
       (.I0(brdy),
        .I1(bcs_stws_n),
        .I2(bcmdw),
        .O(\mctl/p_21_in ));
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
       (.I0(\mctl/mctl_mtee ),
        .I1(mctl_bus_err),
        .I2(\mctl/mctl_mtef ),
        .O(stws_mter));
  LUT2 #(
    .INIT(4'hB)) 
    \synfil_scl[4]_i_1 
       (.I0(\mctl/mctl_mrst ),
        .I1(rst_n),
        .O(\synfil_scl[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDDDDDDDF)) 
    \tcnt[0]_i_1 
       (.I0(rst_n),
        .I1(\mctl/mctl_mrst ),
        .I2(\mctl/mctl_tmr_0 [1]),
        .I3(\mctl/mctl_tmr_0 [0]),
        .I4(\mctl/mctl_tmr_0 [2]),
        .I5(\mctl/mctl_tmr_ovf ),
        .O(\tcnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tcnt[0]_i_3 
       (.I0(\mctl/tcnt_reg [0]),
        .O(\tcnt[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[10]_i_1 
       (.I0(\mctl/mctl_tmr_0 [2]),
        .I1(\mctl/mctl_tmr_0 [1]),
        .I2(stwmbaud[9]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(tcnt_cmp_t[10]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[11]_i_1 
       (.I0(\mctl/mctl_tmr_0 [2]),
        .I1(\mctl/mctl_tmr_0 [1]),
        .I2(stwmbaud[10]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(tcnt_cmp_t[11]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[12]_i_1 
       (.I0(\mctl/mctl_tmr_0 [2]),
        .I1(\mctl/mctl_tmr_0 [1]),
        .I2(stwmbaud[11]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(tcnt_cmp_t[12]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[13]_i_1 
       (.I0(\mctl/mctl_tmr_0 [2]),
        .I1(\mctl/mctl_tmr_0 [1]),
        .I2(stwmbaud[12]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(tcnt_cmp_t[13]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[14]_i_1 
       (.I0(\mctl/mctl_tmr_0 [2]),
        .I1(\mctl/mctl_tmr_0 [1]),
        .I2(stwmbaud[13]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(tcnt_cmp_t[14]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[15]_i_1 
       (.I0(\mctl/mctl_tmr_0 [2]),
        .I1(\mctl/mctl_tmr_0 [1]),
        .I2(stwmbaud[14]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(tcnt_cmp_t[15]));
  LUT2 #(
    .INIT(4'h7)) 
    \tcnt_cmp[15]_i_10 
       (.I0(stat[1]),
        .I1(stat[3]),
        .O(\tcnt_cmp[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000002AAAA0002)) 
    \tcnt_cmp[15]_i_11 
       (.I0(\tcnt_cmp[15]_i_16_n_0 ),
        .I1(\stat[0]_i_4_n_0 ),
        .I2(mdat_trg_wr),
        .I3(mctl_bus_bsy),
        .I4(stat[4]),
        .I5(\mctl/mctl_tmr_ovf ),
        .O(\tcnt_cmp[15]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00008494)) 
    \tcnt_cmp[15]_i_12 
       (.I0(stat[1]),
        .I1(stat[0]),
        .I2(\mctl/mctl_tmr_ovf ),
        .I3(mctl_bus_bsy),
        .I4(stat[4]),
        .O(\tcnt_cmp[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAEAAFEA)) 
    \tcnt_cmp[15]_i_13 
       (.I0(\tcnt_cmp[6]_i_4_n_0 ),
        .I1(mctl_dtct_sclf),
        .I2(stat[0]),
        .I3(stat[1]),
        .I4(\mctl/mctl_tmr_ovf ),
        .I5(\tcnt_cmp[15]_i_17_n_0 ),
        .O(\tcnt_cmp[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h888888B8B8B888B8)) 
    \tcnt_cmp[15]_i_14 
       (.I0(\tcnt_cmp[15]_i_18_n_0 ),
        .I1(stat[0]),
        .I2(\tcnt_cmp[15]_i_16_n_0 ),
        .I3(\tcnt_cmp[15]_i_19_n_0 ),
        .I4(stat[4]),
        .I5(\mctl/mctl_tmr_ovf ),
        .O(\tcnt_cmp[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \tcnt_cmp[15]_i_15 
       (.I0(stat[3]),
        .I1(stat[0]),
        .O(\tcnt_cmp[15]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tcnt_cmp[15]_i_16 
       (.I0(stat[1]),
        .I1(stat[3]),
        .O(\tcnt_cmp[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \tcnt_cmp[15]_i_17 
       (.I0(stat[2]),
        .I1(stat[3]),
        .O(\tcnt_cmp[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF404000000000000)) 
    \tcnt_cmp[15]_i_18 
       (.I0(mdat_trg_rd),
        .I1(mdat_trg_sp),
        .I2(mdat_trg_wr),
        .I3(sel00),
        .I4(stat[3]),
        .I5(stat[1]),
        .O(\tcnt_cmp[15]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \tcnt_cmp[15]_i_19 
       (.I0(mctl_bus_bsy),
        .I1(mdat_trg_wr),
        .I2(mdat_trg_sp),
        .I3(mdat_trg_rd),
        .O(\tcnt_cmp[15]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hAAFEAAAE)) 
    \tcnt_cmp[15]_i_2 
       (.I0(\tcnt_cmp[15]_i_5_n_0 ),
        .I1(\tcnt_cmp[15]_i_6_n_0 ),
        .I2(stat[2]),
        .I3(stat[1]),
        .I4(\tcnt_cmp[15]_i_7_n_0 ),
        .O(\mctl/mctl_tmr_0 [2]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \tcnt_cmp[15]_i_3 
       (.I0(\tcnt_cmp[15]_i_8_n_0 ),
        .I1(stat[2]),
        .I2(\tcnt_cmp[15]_i_9_n_0 ),
        .I3(\tcnt_cmp[15]_i_10_n_0 ),
        .I4(stat[0]),
        .I5(\tcnt_cmp[15]_i_11_n_0 ),
        .O(\mctl/mctl_tmr_0 [1]));
  LUT6 #(
    .INIT(64'h07070FF0F8F80FF0)) 
    \tcnt_cmp[15]_i_4 
       (.I0(stat[3]),
        .I1(\tcnt_cmp[15]_i_12_n_0 ),
        .I2(\tcnt_cmp[15]_i_13_n_0 ),
        .I3(\tcnt_cmp[15]_i_14_n_0 ),
        .I4(stat[2]),
        .I5(\tcnt_cmp[15]_i_8_n_0 ),
        .O(\tcnt_cmp[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \tcnt_cmp[15]_i_5 
       (.I0(stat[1]),
        .I1(stat[3]),
        .I2(\mctl/mctl_tmr_ovf ),
        .I3(stat[4]),
        .I4(stat[2]),
        .I5(stat[0]),
        .O(\tcnt_cmp[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF400040)) 
    \tcnt_cmp[15]_i_6 
       (.I0(mctl_bus_bsy),
        .I1(mdat_trg_wr),
        .I2(sel00),
        .I3(stat[4]),
        .I4(\mctl/mctl_tmr_ovf ),
        .I5(\tcnt_cmp[15]_i_15_n_0 ),
        .O(\tcnt_cmp[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8A808AA2)) 
    \tcnt_cmp[15]_i_7 
       (.I0(stat[3]),
        .I1(stat[4]),
        .I2(\mctl/mctl_tmr_ovf ),
        .I3(stat[0]),
        .I4(mctl_bus_bsy),
        .O(\tcnt_cmp[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0222A808)) 
    \tcnt_cmp[15]_i_8 
       (.I0(stat[3]),
        .I1(stat[1]),
        .I2(\mctl/mctl_tmr_ovf ),
        .I3(stat[0]),
        .I4(stat[4]),
        .O(\tcnt_cmp[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \tcnt_cmp[15]_i_9 
       (.I0(sel00),
        .I1(mdat_trg_wr),
        .I2(mdat_trg_sp),
        .I3(mdat_trg_rd),
        .O(\tcnt_cmp[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[1]_i_1 
       (.I0(\mctl/mctl_tmr_0 [2]),
        .I1(\mctl/mctl_tmr_0 [1]),
        .I2(stwmbaud[0]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(tcnt_cmp_t[1]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[2]_i_1 
       (.I0(\mctl/mctl_tmr_0 [2]),
        .I1(\mctl/mctl_tmr_0 [1]),
        .I2(stwmbaud[1]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(tcnt_cmp_t[2]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[3]_i_1 
       (.I0(\mctl/mctl_tmr_0 [2]),
        .I1(\mctl/mctl_tmr_0 [1]),
        .I2(stwmbaud[2]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(tcnt_cmp_t[3]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[4]_i_1 
       (.I0(\mctl/mctl_tmr_0 [2]),
        .I1(\mctl/mctl_tmr_0 [1]),
        .I2(stwmbaud[3]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(tcnt_cmp_t[4]));
  LUT4 #(
    .INIT(16'hFEC3)) 
    \tcnt_cmp[5]_i_1 
       (.I0(stwmbaud[4]),
        .I1(\mctl/mctl_tmr_0 [2]),
        .I2(\mctl/mctl_tmr_0 [1]),
        .I3(\mctl/mctl_tmr_0 [0]),
        .O(tcnt_cmp_t[5]));
  LUT4 #(
    .INIT(16'h9973)) 
    \tcnt_cmp[6]_i_1 
       (.I0(\mctl/mctl_tmr_0 [1]),
        .I1(\mctl/mctl_tmr_0 [0]),
        .I2(stwmbaud[5]),
        .I3(\mctl/mctl_tmr_0 [2]),
        .O(tcnt_cmp_t[6]));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \tcnt_cmp[6]_i_2 
       (.I0(\tcnt_cmp[6]_i_3_n_0 ),
        .I1(\tcnt_cmp[6]_i_4_n_0 ),
        .I2(\tcnt_cmp[15]_i_12_n_0 ),
        .I3(stat[2]),
        .I4(stat[3]),
        .O(\mctl/mctl_tmr_0 [0]));
  LUT6 #(
    .INIT(64'h0044040000000400)) 
    \tcnt_cmp[6]_i_3 
       (.I0(stat[2]),
        .I1(stat[3]),
        .I2(\mctl/mctl_tmr_ovf ),
        .I3(stat[1]),
        .I4(stat[0]),
        .I5(mctl_dtct_sclf),
        .O(\tcnt_cmp[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \tcnt_cmp[6]_i_4 
       (.I0(stat[3]),
        .I1(stat[1]),
        .I2(stat[4]),
        .I3(stat[2]),
        .I4(stat[0]),
        .O(\tcnt_cmp[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[7]_i_1 
       (.I0(\mctl/mctl_tmr_0 [2]),
        .I1(\mctl/mctl_tmr_0 [1]),
        .I2(stwmbaud[6]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(tcnt_cmp_t[7]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[8]_i_1 
       (.I0(\mctl/mctl_tmr_0 [2]),
        .I1(\mctl/mctl_tmr_0 [1]),
        .I2(stwmbaud[7]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(tcnt_cmp_t[8]));
  LUT4 #(
    .INIT(16'h1099)) 
    \tcnt_cmp[9]_i_1 
       (.I0(\mctl/mctl_tmr_0 [2]),
        .I1(\mctl/mctl_tmr_0 [1]),
        .I2(stwmbaud[8]),
        .I3(\tcnt_cmp[15]_i_4_n_0 ),
        .O(tcnt_cmp_t[9]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tcnt_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\tcnt_reg[0]_i_2_n_0 ,\tcnt_reg[0]_i_2_n_1 ,\tcnt_reg[0]_i_2_n_2 ,\tcnt_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\tcnt_reg[0]_i_2_n_4 ,\tcnt_reg[0]_i_2_n_5 ,\tcnt_reg[0]_i_2_n_6 ,\tcnt_reg[0]_i_2_n_7 }),
        .S({\mctl/tcnt_reg [3:1],\tcnt[0]_i_3_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tcnt_reg[12]_i_1 
       (.CI(\tcnt_reg[8]_i_1_n_0 ),
        .CO({\tcnt_reg[12]_i_1_n_1 ,\tcnt_reg[12]_i_1_n_2 ,\tcnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tcnt_reg[12]_i_1_n_4 ,\tcnt_reg[12]_i_1_n_5 ,\tcnt_reg[12]_i_1_n_6 ,\tcnt_reg[12]_i_1_n_7 }),
        .S(\mctl/tcnt_reg [15:12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tcnt_reg[4]_i_1 
       (.CI(\tcnt_reg[0]_i_2_n_0 ),
        .CO({\tcnt_reg[4]_i_1_n_0 ,\tcnt_reg[4]_i_1_n_1 ,\tcnt_reg[4]_i_1_n_2 ,\tcnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tcnt_reg[4]_i_1_n_4 ,\tcnt_reg[4]_i_1_n_5 ,\tcnt_reg[4]_i_1_n_6 ,\tcnt_reg[4]_i_1_n_7 }),
        .S(\mctl/tcnt_reg [7:4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tcnt_reg[8]_i_1 
       (.CI(\tcnt_reg[4]_i_1_n_0 ),
        .CO({\tcnt_reg[8]_i_1_n_0 ,\tcnt_reg[8]_i_1_n_1 ,\tcnt_reg[8]_i_1_n_2 ,\tcnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tcnt_reg[8]_i_1_n_4 ,\tcnt_reg[8]_i_1_n_5 ,\tcnt_reg[8]_i_1_n_6 ,\tcnt_reg[8]_i_1_n_7 }),
        .S(\mctl/tcnt_reg [11:8]));
endmodule
