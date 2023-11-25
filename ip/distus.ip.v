
(* STRUCTURAL_NETLIST = "yes" *)
module distus
   (clk,
    rst_n,
    brdy,
    bcmdw,
    bcmdr,
    bcs_dist_n,
    badr,
    bdatw,
    port_inp,
    bdatr);
//
//	Distance measuring unit by ultrasonic sensor
//		(c) 2022	1YEN Toru
//
//
//	2023/11/25	ver.1.02
//		corresponding to Xilinx Vivado
//
//	2022/09/03	ver.1.00
//
  input clk;
  input rst_n;
  input brdy;
  input bcmdw;
  input bcmdr;
  input bcs_dist_n;
  input [3:0]badr;
  input [15:0]bdatw;
  input [15:0]port_inp;
  output [15:0]bdatr;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_dist_n;
  wire [15:0]bdatr;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[15]_INST_0_i_1_n_0 ;
  wire \bdatr[15]_INST_0_i_2_n_0 ;
  wire \bdatr[15]_INST_0_i_3_n_0 ;
  wire \bdatr[1]_INST_0_i_1_n_0 ;
  wire \bdatr[2]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_2_n_0 ;
  wire \bdatr[7]_INST_0_i_1_n_0 ;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire [1:0]data0;
  wire [3:0]data3;
  wire \dcnt/distcnt_reg_n_0_[0] ;
  wire \dcnt/distcnt_reg_n_0_[10] ;
  wire \dcnt/distcnt_reg_n_0_[11] ;
  wire \dcnt/distcnt_reg_n_0_[12] ;
  wire \dcnt/distcnt_reg_n_0_[13] ;
  wire \dcnt/distcnt_reg_n_0_[14] ;
  wire \dcnt/distcnt_reg_n_0_[15] ;
  wire \dcnt/distcnt_reg_n_0_[1] ;
  wire \dcnt/distcnt_reg_n_0_[2] ;
  wire \dcnt/distcnt_reg_n_0_[3] ;
  wire \dcnt/distcnt_reg_n_0_[4] ;
  wire \dcnt/distcnt_reg_n_0_[5] ;
  wire \dcnt/distcnt_reg_n_0_[6] ;
  wire \dcnt/distcnt_reg_n_0_[7] ;
  wire \dcnt/distcnt_reg_n_0_[8] ;
  wire \dcnt/distcnt_reg_n_0_[9] ;
  wire \dctl/dfsm/dctl_busy_t ;
  wire [4:3]\dctl/dfsm/p_0_in ;
  wire [1:0]\dctl/dfsm/stat_nx ;
  wire \dctl/distcnth_rd0 ;
  wire \dctl/distcntl_rd0 ;
  wire \dctl/distctl_rd0 ;
  wire \dctl/distecho_rd0 ;
  wire \dctl/disttrig_rd0 ;
  wire dctl_cnt_enb;
  wire dctl_error_i_1_n_0;
  wire dech_echo;
  wire dech_echo_a;
  wire [0:0]dech_echo_s;
  wire \dech_echo_s[0]_i_2_n_0 ;
  wire \dech_echo_s[0]_i_3_n_0 ;
  wire \dech_echo_s[0]_i_4_n_0 ;
  wire \dech_echo_s[0]_i_5_n_0 ;
  wire \dech_echo_s[0]_i_6_n_0 ;
  wire \dech_echo_s[0]_i_7_n_0 ;
  wire \dech_echo_s[1]_i_1_n_0 ;
  wire \distcnt[0]_i_1_n_0 ;
  wire \distcnt[0]_i_4_n_0 ;
  wire \distcnt_reg[0]_i_3_n_0 ;
  wire \distcnt_reg[0]_i_3_n_1 ;
  wire \distcnt_reg[0]_i_3_n_2 ;
  wire \distcnt_reg[0]_i_3_n_3 ;
  wire \distcnt_reg[0]_i_3_n_4 ;
  wire \distcnt_reg[0]_i_3_n_5 ;
  wire \distcnt_reg[0]_i_3_n_6 ;
  wire \distcnt_reg[0]_i_3_n_7 ;
  wire \distcnt_reg[12]_i_1_n_0 ;
  wire \distcnt_reg[12]_i_1_n_1 ;
  wire \distcnt_reg[12]_i_1_n_2 ;
  wire \distcnt_reg[12]_i_1_n_3 ;
  wire \distcnt_reg[12]_i_1_n_4 ;
  wire \distcnt_reg[12]_i_1_n_5 ;
  wire \distcnt_reg[12]_i_1_n_6 ;
  wire \distcnt_reg[12]_i_1_n_7 ;
  wire \distcnt_reg[16]_i_1_n_1 ;
  wire \distcnt_reg[16]_i_1_n_2 ;
  wire \distcnt_reg[16]_i_1_n_3 ;
  wire \distcnt_reg[16]_i_1_n_4 ;
  wire \distcnt_reg[16]_i_1_n_5 ;
  wire \distcnt_reg[16]_i_1_n_6 ;
  wire \distcnt_reg[16]_i_1_n_7 ;
  wire \distcnt_reg[4]_i_1_n_0 ;
  wire \distcnt_reg[4]_i_1_n_1 ;
  wire \distcnt_reg[4]_i_1_n_2 ;
  wire \distcnt_reg[4]_i_1_n_3 ;
  wire \distcnt_reg[4]_i_1_n_4 ;
  wire \distcnt_reg[4]_i_1_n_5 ;
  wire \distcnt_reg[4]_i_1_n_6 ;
  wire \distcnt_reg[4]_i_1_n_7 ;
  wire \distcnt_reg[8]_i_1_n_0 ;
  wire \distcnt_reg[8]_i_1_n_1 ;
  wire \distcnt_reg[8]_i_1_n_2 ;
  wire \distcnt_reg[8]_i_1_n_3 ;
  wire \distcnt_reg[8]_i_1_n_4 ;
  wire \distcnt_reg[8]_i_1_n_5 ;
  wire \distcnt_reg[8]_i_1_n_6 ;
  wire \distcnt_reg[8]_i_1_n_7 ;
  wire distcnth_rd;
  wire distcntl_rd;
  wire distctl_rd;
  wire [15:0]distecho;
  wire distecho_rd;
  wire distecho_wr;
  wire [15:0]disttrig;
  wire \disttrig[15]_i_2_n_0 ;
  wire disttrig_rd;
  wire disttrig_wr;
  wire dtrg_trig;
  wire dtrg_trig_a;
  wire [0:0]dtrg_trig_s;
  wire \dtrg_trig_s[0]_i_2_n_0 ;
  wire \dtrg_trig_s[0]_i_3_n_0 ;
  wire \dtrg_trig_s[0]_i_4_n_0 ;
  wire \dtrg_trig_s[0]_i_5_n_0 ;
  wire \dtrg_trig_s[0]_i_6_n_0 ;
  wire \dtrg_trig_s[0]_i_7_n_0 ;
  wire [15:0]port_inp;
  wire rst_n;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_4_n_0 ;
  wire \stat[1]_i_5_n_0 ;
  wire \stat[1]_i_6_n_0 ;
  wire \stat[1]_i_7_n_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hAAEEAAFAAAEEAAAA)) 
    \bdatr[0]_INST_0 
       (.I0(\bdatr[0]_INST_0_i_1_n_0 ),
        .I1(disttrig[0]),
        .I2(distecho[0]),
        .I3(distctl_rd),
        .I4(disttrig_rd),
        .I5(distecho_rd),
        .O(bdatr[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(\bdatr[3]_INST_0_i_2_n_0 ),
        .I1(data3[0]),
        .I2(\bdatr[15]_INST_0_i_1_n_0 ),
        .I3(\dcnt/distcnt_reg_n_0_[0] ),
        .I4(data0[0]),
        .I5(distctl_rd),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[10]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\dcnt/distcnt_reg_n_0_[10] ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(disttrig[10]),
        .I4(distecho[10]),
        .I5(\bdatr[15]_INST_0_i_3_n_0 ),
        .O(bdatr[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[11]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\dcnt/distcnt_reg_n_0_[11] ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(disttrig[11]),
        .I4(distecho[11]),
        .I5(\bdatr[15]_INST_0_i_3_n_0 ),
        .O(bdatr[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[12]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\dcnt/distcnt_reg_n_0_[12] ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(disttrig[12]),
        .I4(distecho[12]),
        .I5(\bdatr[15]_INST_0_i_3_n_0 ),
        .O(bdatr[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[13]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\dcnt/distcnt_reg_n_0_[13] ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(disttrig[13]),
        .I4(distecho[13]),
        .I5(\bdatr[15]_INST_0_i_3_n_0 ),
        .O(bdatr[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[14]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\dcnt/distcnt_reg_n_0_[14] ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(disttrig[14]),
        .I4(distecho[14]),
        .I5(\bdatr[15]_INST_0_i_3_n_0 ),
        .O(bdatr[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[15]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\dcnt/distcnt_reg_n_0_[15] ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(disttrig[15]),
        .I4(distecho[15]),
        .I5(\bdatr[15]_INST_0_i_3_n_0 ),
        .O(bdatr[15]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \bdatr[15]_INST_0_i_1 
       (.I0(distcnth_rd),
        .I1(distcntl_rd),
        .I2(disttrig_rd),
        .I3(distctl_rd),
        .I4(distecho_rd),
        .I5(data0[0]),
        .O(\bdatr[15]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatr[15]_INST_0_i_2 
       (.I0(disttrig_rd),
        .I1(distctl_rd),
        .O(\bdatr[15]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \bdatr[15]_INST_0_i_3 
       (.I0(distctl_rd),
        .I1(disttrig_rd),
        .I2(distecho_rd),
        .O(\bdatr[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAEEAAFAAAEEAAAA)) 
    \bdatr[1]_INST_0 
       (.I0(\bdatr[1]_INST_0_i_1_n_0 ),
        .I1(disttrig[1]),
        .I2(distecho[1]),
        .I3(distctl_rd),
        .I4(disttrig_rd),
        .I5(distecho_rd),
        .O(bdatr[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(\bdatr[3]_INST_0_i_2_n_0 ),
        .I1(data3[1]),
        .I2(\bdatr[15]_INST_0_i_1_n_0 ),
        .I3(\dcnt/distcnt_reg_n_0_[1] ),
        .I4(data0[1]),
        .I5(distctl_rd),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F080008)) 
    \bdatr[2]_INST_0 
       (.I0(distecho[2]),
        .I1(distecho_rd),
        .I2(distctl_rd),
        .I3(disttrig_rd),
        .I4(disttrig[2]),
        .I5(\bdatr[2]_INST_0_i_1_n_0 ),
        .O(bdatr[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(\dcnt/distcnt_reg_n_0_[2] ),
        .I1(\bdatr[15]_INST_0_i_1_n_0 ),
        .I2(data3[2]),
        .I3(\bdatr[3]_INST_0_i_2_n_0 ),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F080008)) 
    \bdatr[3]_INST_0 
       (.I0(distecho[3]),
        .I1(distecho_rd),
        .I2(distctl_rd),
        .I3(disttrig_rd),
        .I4(disttrig[3]),
        .I5(\bdatr[3]_INST_0_i_1_n_0 ),
        .O(bdatr[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(\dcnt/distcnt_reg_n_0_[3] ),
        .I1(\bdatr[15]_INST_0_i_1_n_0 ),
        .I2(data3[3]),
        .I3(\bdatr[3]_INST_0_i_2_n_0 ),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \bdatr[3]_INST_0_i_2 
       (.I0(disttrig_rd),
        .I1(distctl_rd),
        .I2(distecho_rd),
        .I3(data0[0]),
        .I4(distcnth_rd),
        .O(\bdatr[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[4]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\dcnt/distcnt_reg_n_0_[4] ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(disttrig[4]),
        .I4(distecho[4]),
        .I5(\bdatr[15]_INST_0_i_3_n_0 ),
        .O(bdatr[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[5]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\dcnt/distcnt_reg_n_0_[5] ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(disttrig[5]),
        .I4(distecho[5]),
        .I5(\bdatr[15]_INST_0_i_3_n_0 ),
        .O(bdatr[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[6]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\dcnt/distcnt_reg_n_0_[6] ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(disttrig[6]),
        .I4(distecho[6]),
        .I5(\bdatr[15]_INST_0_i_3_n_0 ),
        .O(bdatr[6]));
  LUT6 #(
    .INIT(64'hFEFEFEFEFFFAFAFA)) 
    \bdatr[7]_INST_0 
       (.I0(distctl_rd),
        .I1(disttrig[7]),
        .I2(\bdatr[7]_INST_0_i_1_n_0 ),
        .I3(distecho[7]),
        .I4(distecho_rd),
        .I5(disttrig_rd),
        .O(bdatr[7]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(distecho_rd),
        .I1(data0[0]),
        .I2(\dcnt/distcnt_reg_n_0_[7] ),
        .I3(disttrig_rd),
        .I4(distcnth_rd),
        .I5(distcntl_rd),
        .O(\bdatr[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[8]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\dcnt/distcnt_reg_n_0_[8] ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(disttrig[8]),
        .I4(distecho[8]),
        .I5(\bdatr[15]_INST_0_i_3_n_0 ),
        .O(bdatr[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[9]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\dcnt/distcnt_reg_n_0_[9] ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(disttrig[9]),
        .I4(distecho[9]),
        .I5(\bdatr[15]_INST_0_i_3_n_0 ),
        .O(bdatr[9]));
  FDRE \dcnt/distcnt_reg[0] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[0]_i_3_n_7 ),
        .Q(\dcnt/distcnt_reg_n_0_[0] ),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[10] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[8]_i_1_n_5 ),
        .Q(\dcnt/distcnt_reg_n_0_[10] ),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[11] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[8]_i_1_n_4 ),
        .Q(\dcnt/distcnt_reg_n_0_[11] ),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[12] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[12]_i_1_n_7 ),
        .Q(\dcnt/distcnt_reg_n_0_[12] ),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[13] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[12]_i_1_n_6 ),
        .Q(\dcnt/distcnt_reg_n_0_[13] ),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[14] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[12]_i_1_n_5 ),
        .Q(\dcnt/distcnt_reg_n_0_[14] ),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[15] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[12]_i_1_n_4 ),
        .Q(\dcnt/distcnt_reg_n_0_[15] ),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[16] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[16]_i_1_n_7 ),
        .Q(data3[0]),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[17] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[16]_i_1_n_6 ),
        .Q(data3[1]),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[18] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[16]_i_1_n_5 ),
        .Q(data3[2]),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[19] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[16]_i_1_n_4 ),
        .Q(data3[3]),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[1] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[0]_i_3_n_6 ),
        .Q(\dcnt/distcnt_reg_n_0_[1] ),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[2] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[0]_i_3_n_5 ),
        .Q(\dcnt/distcnt_reg_n_0_[2] ),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[3] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[0]_i_3_n_4 ),
        .Q(\dcnt/distcnt_reg_n_0_[3] ),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[4] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[4]_i_1_n_7 ),
        .Q(\dcnt/distcnt_reg_n_0_[4] ),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[5] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[4]_i_1_n_6 ),
        .Q(\dcnt/distcnt_reg_n_0_[5] ),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[6] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[4]_i_1_n_5 ),
        .Q(\dcnt/distcnt_reg_n_0_[6] ),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[7] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[4]_i_1_n_4 ),
        .Q(\dcnt/distcnt_reg_n_0_[7] ),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[8] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[8]_i_1_n_7 ),
        .Q(\dcnt/distcnt_reg_n_0_[8] ),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dcnt/distcnt_reg[9] 
       (.C(clk),
        .CE(dctl_cnt_enb),
        .D(\distcnt_reg[8]_i_1_n_6 ),
        .Q(\dcnt/distcnt_reg_n_0_[9] ),
        .R(\distcnt[0]_i_1_n_0 ));
  FDRE \dctl/dctl_error_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(dctl_error_i_1_n_0),
        .Q(data0[1]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dctl/dfsm/dctl_busy_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(\dctl/dfsm/dctl_busy_t ),
        .Q(data0[0]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dctl/dfsm/stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\dctl/dfsm/stat_nx [0]),
        .Q(\dctl/dfsm/p_0_in [3]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dctl/dfsm/stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\dctl/dfsm/stat_nx [1]),
        .Q(\dctl/dfsm/p_0_in [4]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dctl/distcnth_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\dctl/distcnth_rd0 ),
        .Q(distcnth_rd),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dctl/distcntl_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\dctl/distcntl_rd0 ),
        .Q(distcntl_rd),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dctl/distctl_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\dctl/distctl_rd0 ),
        .Q(distctl_rd),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dctl/distecho_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\dctl/distecho_rd0 ),
        .Q(distecho_rd),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dctl/disttrig_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\dctl/disttrig_rd0 ),
        .Q(disttrig_rd),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF3AE30AE)) 
    dctl_busy_i_1
       (.I0(dtrg_trig),
        .I1(\dctl/dfsm/p_0_in [3]),
        .I2(dech_echo),
        .I3(\dctl/dfsm/p_0_in [4]),
        .I4(\stat[1]_i_2_n_0 ),
        .O(\dctl/dfsm/dctl_busy_t ));
  LUT6 #(
    .INIT(64'hCF00CFFF410041C0)) 
    dctl_error_i_1
       (.I0(\stat[1]_i_2_n_0 ),
        .I1(\dctl/dfsm/p_0_in [3]),
        .I2(dech_echo),
        .I3(\dctl/dfsm/p_0_in [4]),
        .I4(dtrg_trig),
        .I5(data0[1]),
        .O(dctl_error_i_1_n_0));
  FDRE \dech/dech_echo_s_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(dech_echo_a),
        .Q(dech_echo_s),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dech/dech_echo_s_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(dech_echo_s),
        .Q(dech_echo),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dech/distecho_reg[0] 
       (.C(clk),
        .CE(distecho_wr),
        .D(bdatw[0]),
        .Q(distecho[0]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dech/distecho_reg[10] 
       (.C(clk),
        .CE(distecho_wr),
        .D(bdatw[10]),
        .Q(distecho[10]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dech/distecho_reg[11] 
       (.C(clk),
        .CE(distecho_wr),
        .D(bdatw[11]),
        .Q(distecho[11]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dech/distecho_reg[12] 
       (.C(clk),
        .CE(distecho_wr),
        .D(bdatw[12]),
        .Q(distecho[12]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dech/distecho_reg[13] 
       (.C(clk),
        .CE(distecho_wr),
        .D(bdatw[13]),
        .Q(distecho[13]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dech/distecho_reg[14] 
       (.C(clk),
        .CE(distecho_wr),
        .D(bdatw[14]),
        .Q(distecho[14]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dech/distecho_reg[15] 
       (.C(clk),
        .CE(distecho_wr),
        .D(bdatw[15]),
        .Q(distecho[15]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dech/distecho_reg[1] 
       (.C(clk),
        .CE(distecho_wr),
        .D(bdatw[1]),
        .Q(distecho[1]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dech/distecho_reg[2] 
       (.C(clk),
        .CE(distecho_wr),
        .D(bdatw[2]),
        .Q(distecho[2]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dech/distecho_reg[3] 
       (.C(clk),
        .CE(distecho_wr),
        .D(bdatw[3]),
        .Q(distecho[3]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dech/distecho_reg[4] 
       (.C(clk),
        .CE(distecho_wr),
        .D(bdatw[4]),
        .Q(distecho[4]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dech/distecho_reg[5] 
       (.C(clk),
        .CE(distecho_wr),
        .D(bdatw[5]),
        .Q(distecho[5]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dech/distecho_reg[6] 
       (.C(clk),
        .CE(distecho_wr),
        .D(bdatw[6]),
        .Q(distecho[6]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dech/distecho_reg[7] 
       (.C(clk),
        .CE(distecho_wr),
        .D(bdatw[7]),
        .Q(distecho[7]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dech/distecho_reg[8] 
       (.C(clk),
        .CE(distecho_wr),
        .D(bdatw[8]),
        .Q(distecho[8]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dech/distecho_reg[9] 
       (.C(clk),
        .CE(distecho_wr),
        .D(bdatw[9]),
        .Q(distecho[9]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \dech_echo_s[0]_i_1 
       (.I0(\dech_echo_s[0]_i_2_n_0 ),
        .I1(\dech_echo_s[0]_i_3_n_0 ),
        .I2(\dech_echo_s[0]_i_4_n_0 ),
        .I3(\dech_echo_s[0]_i_5_n_0 ),
        .I4(\dech_echo_s[0]_i_6_n_0 ),
        .I5(\dech_echo_s[0]_i_7_n_0 ),
        .O(dech_echo_a));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \dech_echo_s[0]_i_2 
       (.I0(distecho[6]),
        .I1(port_inp[6]),
        .I2(distecho[5]),
        .I3(port_inp[5]),
        .I4(port_inp[4]),
        .I5(distecho[4]),
        .O(\dech_echo_s[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \dech_echo_s[0]_i_3 
       (.I0(distecho[9]),
        .I1(port_inp[9]),
        .I2(distecho[8]),
        .I3(port_inp[8]),
        .I4(port_inp[7]),
        .I5(distecho[7]),
        .O(\dech_echo_s[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \dech_echo_s[0]_i_4 
       (.I0(distecho[15]),
        .I1(port_inp[15]),
        .I2(distecho[14]),
        .I3(port_inp[14]),
        .I4(port_inp[13]),
        .I5(distecho[13]),
        .O(\dech_echo_s[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \dech_echo_s[0]_i_5 
       (.I0(distecho[12]),
        .I1(port_inp[12]),
        .I2(distecho[11]),
        .I3(port_inp[11]),
        .I4(port_inp[10]),
        .I5(distecho[10]),
        .O(\dech_echo_s[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dech_echo_s[0]_i_6 
       (.I0(distecho[0]),
        .I1(port_inp[0]),
        .O(\dech_echo_s[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \dech_echo_s[0]_i_7 
       (.I0(distecho[3]),
        .I1(port_inp[3]),
        .I2(distecho[2]),
        .I3(port_inp[2]),
        .I4(port_inp[1]),
        .I5(distecho[1]),
        .O(\dech_echo_s[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dech_echo_s[1]_i_1 
       (.I0(rst_n),
        .O(\dech_echo_s[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5F55FF5FFFDDDDDD)) 
    \distcnt[0]_i_1 
       (.I0(rst_n),
        .I1(dtrg_trig),
        .I2(\stat[1]_i_2_n_0 ),
        .I3(dech_echo),
        .I4(\dctl/dfsm/p_0_in [3]),
        .I5(\dctl/dfsm/p_0_in [4]),
        .O(\distcnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8CC88CF8)) 
    \distcnt[0]_i_2 
       (.I0(\stat[1]_i_2_n_0 ),
        .I1(\dctl/dfsm/p_0_in [4]),
        .I2(\dctl/dfsm/p_0_in [3]),
        .I3(dech_echo),
        .I4(dtrg_trig),
        .O(dctl_cnt_enb));
  LUT1 #(
    .INIT(2'h1)) 
    \distcnt[0]_i_4 
       (.I0(\dcnt/distcnt_reg_n_0_[0] ),
        .O(\distcnt[0]_i_4_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \distcnt_reg[0]_i_3 
       (.CI(\<const0> ),
        .CO({\distcnt_reg[0]_i_3_n_0 ,\distcnt_reg[0]_i_3_n_1 ,\distcnt_reg[0]_i_3_n_2 ,\distcnt_reg[0]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\distcnt_reg[0]_i_3_n_4 ,\distcnt_reg[0]_i_3_n_5 ,\distcnt_reg[0]_i_3_n_6 ,\distcnt_reg[0]_i_3_n_7 }),
        .S({\dcnt/distcnt_reg_n_0_[3] ,\dcnt/distcnt_reg_n_0_[2] ,\dcnt/distcnt_reg_n_0_[1] ,\distcnt[0]_i_4_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \distcnt_reg[12]_i_1 
       (.CI(\distcnt_reg[8]_i_1_n_0 ),
        .CO({\distcnt_reg[12]_i_1_n_0 ,\distcnt_reg[12]_i_1_n_1 ,\distcnt_reg[12]_i_1_n_2 ,\distcnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\distcnt_reg[12]_i_1_n_4 ,\distcnt_reg[12]_i_1_n_5 ,\distcnt_reg[12]_i_1_n_6 ,\distcnt_reg[12]_i_1_n_7 }),
        .S({\dcnt/distcnt_reg_n_0_[15] ,\dcnt/distcnt_reg_n_0_[14] ,\dcnt/distcnt_reg_n_0_[13] ,\dcnt/distcnt_reg_n_0_[12] }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \distcnt_reg[16]_i_1 
       (.CI(\distcnt_reg[12]_i_1_n_0 ),
        .CO({\distcnt_reg[16]_i_1_n_1 ,\distcnt_reg[16]_i_1_n_2 ,\distcnt_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\distcnt_reg[16]_i_1_n_4 ,\distcnt_reg[16]_i_1_n_5 ,\distcnt_reg[16]_i_1_n_6 ,\distcnt_reg[16]_i_1_n_7 }),
        .S(data3));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \distcnt_reg[4]_i_1 
       (.CI(\distcnt_reg[0]_i_3_n_0 ),
        .CO({\distcnt_reg[4]_i_1_n_0 ,\distcnt_reg[4]_i_1_n_1 ,\distcnt_reg[4]_i_1_n_2 ,\distcnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\distcnt_reg[4]_i_1_n_4 ,\distcnt_reg[4]_i_1_n_5 ,\distcnt_reg[4]_i_1_n_6 ,\distcnt_reg[4]_i_1_n_7 }),
        .S({\dcnt/distcnt_reg_n_0_[7] ,\dcnt/distcnt_reg_n_0_[6] ,\dcnt/distcnt_reg_n_0_[5] ,\dcnt/distcnt_reg_n_0_[4] }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \distcnt_reg[8]_i_1 
       (.CI(\distcnt_reg[4]_i_1_n_0 ),
        .CO({\distcnt_reg[8]_i_1_n_0 ,\distcnt_reg[8]_i_1_n_1 ,\distcnt_reg[8]_i_1_n_2 ,\distcnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\distcnt_reg[8]_i_1_n_4 ,\distcnt_reg[8]_i_1_n_5 ,\distcnt_reg[8]_i_1_n_6 ,\distcnt_reg[8]_i_1_n_7 }),
        .S({\dcnt/distcnt_reg_n_0_[11] ,\dcnt/distcnt_reg_n_0_[10] ,\dcnt/distcnt_reg_n_0_[9] ,\dcnt/distcnt_reg_n_0_[8] }));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    distcnth_rd_i_1
       (.I0(badr[1]),
        .I1(badr[3]),
        .I2(bcmdr),
        .I3(bcs_dist_n),
        .I4(badr[0]),
        .I5(badr[2]),
        .O(\dctl/distcnth_rd0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    distcntl_rd_i_1
       (.I0(badr[3]),
        .I1(badr[1]),
        .I2(bcmdr),
        .I3(bcs_dist_n),
        .I4(badr[0]),
        .I5(badr[2]),
        .O(\dctl/distcntl_rd0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    distctl_rd_i_1
       (.I0(badr[3]),
        .I1(badr[1]),
        .I2(bcmdr),
        .I3(bcs_dist_n),
        .I4(badr[0]),
        .I5(badr[2]),
        .O(\dctl/distctl_rd0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \distecho[15]_i_1 
       (.I0(bcmdw),
        .I1(data0[0]),
        .I2(\disttrig[15]_i_2_n_0 ),
        .I3(badr[1]),
        .I4(badr[2]),
        .I5(badr[3]),
        .O(distecho_wr));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    distecho_rd_i_1
       (.I0(bcmdr),
        .I1(badr[3]),
        .I2(badr[2]),
        .I3(badr[1]),
        .I4(bcs_dist_n),
        .I5(badr[0]),
        .O(\dctl/distecho_rd0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \disttrig[15]_i_1 
       (.I0(bcmdw),
        .I1(data0[0]),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[2]),
        .I5(\disttrig[15]_i_2_n_0 ),
        .O(disttrig_wr));
  LUT2 #(
    .INIT(4'h1)) 
    \disttrig[15]_i_2 
       (.I0(badr[0]),
        .I1(bcs_dist_n),
        .O(\disttrig[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    disttrig_rd_i_1
       (.I0(badr[3]),
        .I1(badr[1]),
        .I2(bcmdr),
        .I3(bcs_dist_n),
        .I4(badr[0]),
        .I5(badr[2]),
        .O(\dctl/disttrig_rd0 ));
  FDRE \dtrg/disttrig_reg[0] 
       (.C(clk),
        .CE(disttrig_wr),
        .D(bdatw[0]),
        .Q(disttrig[0]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dtrg/disttrig_reg[10] 
       (.C(clk),
        .CE(disttrig_wr),
        .D(bdatw[10]),
        .Q(disttrig[10]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dtrg/disttrig_reg[11] 
       (.C(clk),
        .CE(disttrig_wr),
        .D(bdatw[11]),
        .Q(disttrig[11]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dtrg/disttrig_reg[12] 
       (.C(clk),
        .CE(disttrig_wr),
        .D(bdatw[12]),
        .Q(disttrig[12]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dtrg/disttrig_reg[13] 
       (.C(clk),
        .CE(disttrig_wr),
        .D(bdatw[13]),
        .Q(disttrig[13]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dtrg/disttrig_reg[14] 
       (.C(clk),
        .CE(disttrig_wr),
        .D(bdatw[14]),
        .Q(disttrig[14]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dtrg/disttrig_reg[15] 
       (.C(clk),
        .CE(disttrig_wr),
        .D(bdatw[15]),
        .Q(disttrig[15]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dtrg/disttrig_reg[1] 
       (.C(clk),
        .CE(disttrig_wr),
        .D(bdatw[1]),
        .Q(disttrig[1]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dtrg/disttrig_reg[2] 
       (.C(clk),
        .CE(disttrig_wr),
        .D(bdatw[2]),
        .Q(disttrig[2]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dtrg/disttrig_reg[3] 
       (.C(clk),
        .CE(disttrig_wr),
        .D(bdatw[3]),
        .Q(disttrig[3]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dtrg/disttrig_reg[4] 
       (.C(clk),
        .CE(disttrig_wr),
        .D(bdatw[4]),
        .Q(disttrig[4]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dtrg/disttrig_reg[5] 
       (.C(clk),
        .CE(disttrig_wr),
        .D(bdatw[5]),
        .Q(disttrig[5]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dtrg/disttrig_reg[6] 
       (.C(clk),
        .CE(disttrig_wr),
        .D(bdatw[6]),
        .Q(disttrig[6]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dtrg/disttrig_reg[7] 
       (.C(clk),
        .CE(disttrig_wr),
        .D(bdatw[7]),
        .Q(disttrig[7]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dtrg/disttrig_reg[8] 
       (.C(clk),
        .CE(disttrig_wr),
        .D(bdatw[8]),
        .Q(disttrig[8]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dtrg/disttrig_reg[9] 
       (.C(clk),
        .CE(disttrig_wr),
        .D(bdatw[9]),
        .Q(disttrig[9]),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dtrg/dtrg_trig_s_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(dtrg_trig_a),
        .Q(dtrg_trig_s),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  FDRE \dtrg/dtrg_trig_s_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(dtrg_trig_s),
        .Q(dtrg_trig),
        .R(\dech_echo_s[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \dtrg_trig_s[0]_i_1 
       (.I0(\dtrg_trig_s[0]_i_2_n_0 ),
        .I1(\dtrg_trig_s[0]_i_3_n_0 ),
        .I2(\dtrg_trig_s[0]_i_4_n_0 ),
        .I3(\dtrg_trig_s[0]_i_5_n_0 ),
        .I4(\dtrg_trig_s[0]_i_6_n_0 ),
        .I5(\dtrg_trig_s[0]_i_7_n_0 ),
        .O(dtrg_trig_a));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \dtrg_trig_s[0]_i_2 
       (.I0(port_inp[6]),
        .I1(disttrig[6]),
        .I2(port_inp[5]),
        .I3(disttrig[5]),
        .I4(disttrig[4]),
        .I5(port_inp[4]),
        .O(\dtrg_trig_s[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \dtrg_trig_s[0]_i_3 
       (.I0(port_inp[9]),
        .I1(disttrig[9]),
        .I2(port_inp[8]),
        .I3(disttrig[8]),
        .I4(disttrig[7]),
        .I5(port_inp[7]),
        .O(\dtrg_trig_s[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \dtrg_trig_s[0]_i_4 
       (.I0(port_inp[15]),
        .I1(disttrig[15]),
        .I2(port_inp[14]),
        .I3(disttrig[14]),
        .I4(disttrig[13]),
        .I5(port_inp[13]),
        .O(\dtrg_trig_s[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \dtrg_trig_s[0]_i_5 
       (.I0(port_inp[12]),
        .I1(disttrig[12]),
        .I2(port_inp[11]),
        .I3(disttrig[11]),
        .I4(disttrig[10]),
        .I5(port_inp[10]),
        .O(\dtrg_trig_s[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dtrg_trig_s[0]_i_6 
       (.I0(port_inp[0]),
        .I1(disttrig[0]),
        .O(\dtrg_trig_s[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \dtrg_trig_s[0]_i_7 
       (.I0(port_inp[3]),
        .I1(disttrig[3]),
        .I2(port_inp[2]),
        .I3(disttrig[2]),
        .I4(disttrig[1]),
        .I5(port_inp[1]),
        .O(\dtrg_trig_s[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAC0CFC0C)) 
    \stat[0]_i_1 
       (.I0(\stat[1]_i_2_n_0 ),
        .I1(dtrg_trig),
        .I2(\dctl/dfsm/p_0_in [4]),
        .I3(dech_echo),
        .I4(\dctl/dfsm/p_0_in [3]),
        .O(\dctl/dfsm/stat_nx [0]));
  LUT5 #(
    .INIT(32'hAA1A0A10)) 
    \stat[1]_i_1 
       (.I0(\dctl/dfsm/p_0_in [4]),
        .I1(dtrg_trig),
        .I2(\dctl/dfsm/p_0_in [3]),
        .I3(dech_echo),
        .I4(\stat[1]_i_2_n_0 ),
        .O(\dctl/dfsm/stat_nx [1]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \stat[1]_i_2 
       (.I0(\stat[1]_i_3_n_0 ),
        .I1(\stat[1]_i_4_n_0 ),
        .I2(\stat[1]_i_5_n_0 ),
        .I3(\stat[1]_i_6_n_0 ),
        .I4(\stat[1]_i_7_n_0 ),
        .O(\stat[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \stat[1]_i_3 
       (.I0(\dcnt/distcnt_reg_n_0_[1] ),
        .I1(\dcnt/distcnt_reg_n_0_[0] ),
        .I2(\dcnt/distcnt_reg_n_0_[3] ),
        .I3(\dcnt/distcnt_reg_n_0_[2] ),
        .O(\stat[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \stat[1]_i_4 
       (.I0(\dcnt/distcnt_reg_n_0_[13] ),
        .I1(\dcnt/distcnt_reg_n_0_[12] ),
        .I2(\dcnt/distcnt_reg_n_0_[15] ),
        .I3(\dcnt/distcnt_reg_n_0_[14] ),
        .O(\stat[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \stat[1]_i_5 
       (.I0(data3[1]),
        .I1(data3[0]),
        .I2(data3[3]),
        .I3(data3[2]),
        .O(\stat[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \stat[1]_i_6 
       (.I0(\dcnt/distcnt_reg_n_0_[9] ),
        .I1(\dcnt/distcnt_reg_n_0_[8] ),
        .I2(\dcnt/distcnt_reg_n_0_[11] ),
        .I3(\dcnt/distcnt_reg_n_0_[10] ),
        .O(\stat[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \stat[1]_i_7 
       (.I0(\dcnt/distcnt_reg_n_0_[5] ),
        .I1(\dcnt/distcnt_reg_n_0_[4] ),
        .I2(\dcnt/distcnt_reg_n_0_[7] ),
        .I3(\dcnt/distcnt_reg_n_0_[6] ),
        .O(\stat[1]_i_7_n_0 ));
endmodule
