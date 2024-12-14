
(* STRUCTURAL_NETLIST = "yes" *)
module stft61
   (clk,
    rst_n,
    simumd,
    brdy,
    bcmdr,
    bcmdw,
    bcs_stft_n,
    stft_pinp,
    badr,
    bdatw,
    stft_pwmo,
    stft_pout,
    stft_poen,
    bdatr);
//
// SPI-TFT controller unit
//		(c) 2024	1YEN Toru
//
//
//	2024/12/14	ver.1.00
//		for SPI-TFT display module
//		I/O port for software SPI * 6
//			SS, SCLK, MOSI, MISO
//			Reset, Command, etc.
//		PWM output for back light LED * 1
//			Tpwm=192*255/fcpu; 2,040[us] @fcpu=24MHz
//
  input clk;
  input rst_n;
  input simumd;
  input brdy;
  input bcmdr;
  input bcmdw;
  input bcs_stft_n;
  input [5:0]stft_pinp;
  input [3:0]badr;
  input [15:0]bdatw;
  output stft_pwmo;
  output [5:0]stft_pout;
  output [5:0]stft_poen;
  output [15:0]bdatr;

  wire \<const0> ;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_stft_n;
  wire [7:0]\^bdatr ;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire p_2_in;
  wire p_8_in;
  wire psc_cnt0;
  wire rst_n;
  wire sctl_pwm_enb;
  wire simumd;
  wire [5:0]spor_pinp;
  wire stctl_n_0;
  wire [5:0]stft_pinp;
  wire [5:0]stft_poen;
  wire [5:0]stft_pout;
  wire stft_pwmo;
  wire [7:7]stftduty;
  wire stftduty_dbl0;
  wire stmr_cnte;
  wire stmr_ovf__8;
  wire sttmr_n_0;
  wire sttmr_n_10;
  wire sttmr_n_4;
  wire sttmr_n_5;
  wire sttmr_n_6;
  wire sttmr_n_7;
  wire sttmr_n_8;
  wire sttmr_n_9;

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
  stft_ctrl stctl
       (.Q({sctl_pwm_enb,stft_poen}),
        .SR(stctl_n_0),
        .badr(badr),
        .bcmdr(bcmdr),
        .bcs_stft_n(bcs_stft_n),
        .bdatr(\^bdatr ),
        .\bdatr[5] (spor_pinp),
        .bdatw(bdatw[7:0]),
        .brdy(brdy),
        .clk(clk),
        .p_2_in(p_2_in),
        .p_8_in(p_8_in),
        .rst_n(rst_n),
        .stft_pinp(stft_pinp),
        .stft_pwmo(stft_pwmo),
        .stft_pwmo_0({stftduty,sttmr_n_4,sttmr_n_5,sttmr_n_6,sttmr_n_7,sttmr_n_8,sttmr_n_9,sttmr_n_10}),
        .stft_pwmo_1(sttmr_n_0),
        .\stftctl_reg[7]_0 (psc_cnt0),
        .\stftctl_reg[7]_1 (stftduty_dbl0),
        .stmr_cnte(stmr_cnte),
        .stmr_ovf__8(stmr_ovf__8));
  stft_port stpor
       (.Q(spor_pinp),
        .SR(stctl_n_0),
        .badr(badr),
        .bcmdw(bcmdw),
        .bcs_stft_n(bcs_stft_n),
        .bdatw(bdatw[5:0]),
        .brdy(brdy),
        .clk(clk),
        .p_8_in(p_8_in),
        .stft_pinp(stft_pinp),
        .stft_pout(stft_pout));
  stft_timr sttmr
       (.Q(sctl_pwm_enb),
        .SR(stctl_n_0),
        .badr(badr),
        .bdatw(bdatw[7:0]),
        .clk(clk),
        .p_2_in(p_2_in),
        .p_8_in(p_8_in),
        .\psc_cnt_reg[7]_0 (psc_cnt0),
        .simumd(simumd),
        .\stftduty_dbl_reg[7]_0 (stftduty_dbl0),
        .\stftduty_reg[7]_0 ({stftduty,sttmr_n_4,sttmr_n_5,sttmr_n_6,sttmr_n_7,sttmr_n_8,sttmr_n_9,sttmr_n_10}),
        .stmr_cnte(stmr_cnte),
        .stmr_ovf__8(stmr_ovf__8),
        .stmr_pwmo_reg_0(sttmr_n_0));
endmodule

module stft_ctrl
   (SR,
    \stftctl_reg[7]_0 ,
    Q,
    \stftctl_reg[7]_1 ,
    p_2_in,
    stft_pwmo,
    bdatr,
    brdy,
    clk,
    bcs_stft_n,
    bcmdr,
    badr,
    p_8_in,
    rst_n,
    stmr_cnte,
    stmr_ovf__8,
    stft_pwmo_0,
    stft_pwmo_1,
    stft_pinp,
    \bdatr[5] ,
    bdatw);
  output [0:0]SR;
  output [0:0]\stftctl_reg[7]_0 ;
  output [6:0]Q;
  output [0:0]\stftctl_reg[7]_1 ;
  output p_2_in;
  output stft_pwmo;
  output [7:0]bdatr;
  input brdy;
  input clk;
  input bcs_stft_n;
  input bcmdr;
  input [3:0]badr;
  input p_8_in;
  input rst_n;
  input stmr_cnte;
  input stmr_ovf__8;
  input [7:0]stft_pwmo_0;
  input stft_pwmo_1;
  input [5:0]stft_pinp;
  input [5:0]\bdatr[5] ;
  input [7:0]bdatw;

  wire [6:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire bcmdr;
  wire bcs_stft_n;
  wire [7:0]bdatr;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_1_n_0 ;
  wire \bdatr[2]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[4]_INST_0_i_1_n_0 ;
  wire [5:0]\bdatr[5] ;
  wire \bdatr[5]_INST_0_i_1_n_0 ;
  wire [7:0]bdatw;
  wire brdy;
  wire clk;
  wire p_2_in;
  wire p_8_in;
  wire rd_stftctl;
  wire rd_stftctl0;
  wire rd_stftduty;
  wire rd_stftduty0;
  wire rd_stftpclr;
  wire rd_stftpclr0;
  wire rd_stftpset;
  wire rd_stftpset0;
  wire rst_n;
  wire sctl_pwm_inv;
  wire [5:0]stft_pinp;
  wire stft_pwmo;
  wire [7:0]stft_pwmo_0;
  wire stft_pwmo_1;
  wire [0:0]\stftctl_reg[7]_0 ;
  wire [0:0]\stftctl_reg[7]_1 ;
  wire stmr_cnte;
  wire stmr_ovf__8;
  wire wr_stftctl;

  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatr[0]_INST_0 
       (.I0(\bdatr[0]_INST_0_i_1_n_0 ),
        .I1(stft_pinp[0]),
        .I2(rd_stftpset),
        .I3(stft_pwmo_0[0]),
        .I4(rd_stftduty),
        .O(bdatr[0]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(rd_stftctl),
        .I1(Q[0]),
        .I2(\bdatr[5] [0]),
        .I3(rd_stftpclr),
        .I4(rd_stftpset),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatr[1]_INST_0 
       (.I0(\bdatr[1]_INST_0_i_1_n_0 ),
        .I1(stft_pinp[1]),
        .I2(rd_stftpset),
        .I3(stft_pwmo_0[1]),
        .I4(rd_stftduty),
        .O(bdatr[1]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(rd_stftctl),
        .I1(Q[1]),
        .I2(\bdatr[5] [1]),
        .I3(rd_stftpclr),
        .I4(rd_stftpset),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatr[2]_INST_0 
       (.I0(\bdatr[2]_INST_0_i_1_n_0 ),
        .I1(stft_pinp[2]),
        .I2(rd_stftpset),
        .I3(stft_pwmo_0[2]),
        .I4(rd_stftduty),
        .O(bdatr[2]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(rd_stftctl),
        .I1(Q[2]),
        .I2(\bdatr[5] [2]),
        .I3(rd_stftpclr),
        .I4(rd_stftpset),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatr[3]_INST_0 
       (.I0(\bdatr[3]_INST_0_i_1_n_0 ),
        .I1(stft_pinp[3]),
        .I2(rd_stftpset),
        .I3(stft_pwmo_0[3]),
        .I4(rd_stftduty),
        .O(bdatr[3]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(rd_stftctl),
        .I1(Q[3]),
        .I2(\bdatr[5] [3]),
        .I3(rd_stftpclr),
        .I4(rd_stftpset),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatr[4]_INST_0 
       (.I0(\bdatr[4]_INST_0_i_1_n_0 ),
        .I1(stft_pinp[4]),
        .I2(rd_stftpset),
        .I3(stft_pwmo_0[4]),
        .I4(rd_stftduty),
        .O(bdatr[4]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(rd_stftctl),
        .I1(Q[4]),
        .I2(\bdatr[5] [4]),
        .I3(rd_stftpclr),
        .I4(rd_stftpset),
        .O(\bdatr[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatr[5]_INST_0 
       (.I0(\bdatr[5]_INST_0_i_1_n_0 ),
        .I1(stft_pinp[5]),
        .I2(rd_stftpset),
        .I3(stft_pwmo_0[5]),
        .I4(rd_stftduty),
        .O(bdatr[5]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(rd_stftctl),
        .I1(Q[5]),
        .I2(\bdatr[5] [5]),
        .I3(rd_stftpclr),
        .I4(rd_stftpset),
        .O(\bdatr[5]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[6]_INST_0 
       (.I0(sctl_pwm_inv),
        .I1(rd_stftctl),
        .I2(stft_pwmo_0[6]),
        .I3(rd_stftduty),
        .O(bdatr[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[7]_INST_0 
       (.I0(Q[6]),
        .I1(rd_stftctl),
        .I2(stft_pwmo_0[7]),
        .I3(rd_stftduty),
        .O(bdatr[7]));
  LUT3 #(
    .INIT(8'hF7)) 
    \psc_cnt[7]_i_1 
       (.I0(Q[6]),
        .I1(rst_n),
        .I2(stmr_cnte),
        .O(\stftctl_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    rd_stftctl_i_1
       (.I0(bcs_stft_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[3]),
        .I5(badr[2]),
        .O(rd_stftctl0));
  FDRE rd_stftctl_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_stftctl0),
        .Q(rd_stftctl),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    rd_stftduty_i_1
       (.I0(bcs_stft_n),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[2]),
        .I4(badr[0]),
        .I5(badr[3]),
        .O(rd_stftduty0));
  FDRE rd_stftduty_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_stftduty0),
        .Q(rd_stftduty),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    rd_stftpclr_i_1
       (.I0(bcs_stft_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(badr[1]),
        .I5(badr[3]),
        .O(rd_stftpclr0));
  FDRE rd_stftpclr_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_stftpclr0),
        .Q(rd_stftpclr),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    rd_stftpset_i_1
       (.I0(bcs_stft_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[3]),
        .I5(badr[2]),
        .O(rd_stftpset0));
  FDRE rd_stftpset_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_stftpset0),
        .Q(rd_stftpset),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \stft_pout_rg[5]_i_1 
       (.I0(rst_n),
        .O(SR));
  LUT4 #(
    .INIT(16'h56A6)) 
    stft_pwmo_INST_0
       (.I0(sctl_pwm_inv),
        .I1(stft_pwmo_0[7]),
        .I2(Q[6]),
        .I3(stft_pwmo_1),
        .O(stft_pwmo));
  LUT5 #(
    .INIT(32'h00000002)) 
    \stftctl[5]_i_1 
       (.I0(p_8_in),
        .I1(badr[0]),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[2]),
        .O(wr_stftctl));
  FDRE \stftctl_reg[0] 
       (.C(clk),
        .CE(wr_stftctl),
        .D(bdatw[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \stftctl_reg[1] 
       (.C(clk),
        .CE(wr_stftctl),
        .D(bdatw[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \stftctl_reg[2] 
       (.C(clk),
        .CE(wr_stftctl),
        .D(bdatw[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \stftctl_reg[3] 
       (.C(clk),
        .CE(wr_stftctl),
        .D(bdatw[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \stftctl_reg[4] 
       (.C(clk),
        .CE(wr_stftctl),
        .D(bdatw[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \stftctl_reg[5] 
       (.C(clk),
        .CE(wr_stftctl),
        .D(bdatw[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \stftctl_reg[6] 
       (.C(clk),
        .CE(wr_stftctl),
        .D(bdatw[6]),
        .Q(sctl_pwm_inv),
        .R(SR));
  FDRE \stftctl_reg[7] 
       (.C(clk),
        .CE(wr_stftctl),
        .D(bdatw[7]),
        .Q(Q[6]),
        .R(SR));
  LUT3 #(
    .INIT(8'hF7)) 
    \stftduty_dbl[7]_i_1 
       (.I0(Q[6]),
        .I1(rst_n),
        .I2(stmr_ovf__8),
        .O(\stftctl_reg[7]_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    stmr_pwmo_i_3
       (.I0(rst_n),
        .I1(Q[6]),
        .O(p_2_in));
endmodule

module stft_port
   (stft_pout,
    p_8_in,
    Q,
    bdatw,
    badr,
    brdy,
    bcs_stft_n,
    bcmdw,
    SR,
    clk,
    stft_pinp);
  output [5:0]stft_pout;
  output p_8_in;
  output [5:0]Q;
  input [5:0]bdatw;
  input [3:0]badr;
  input brdy;
  input bcs_stft_n;
  input bcmdw;
  input [0:0]SR;
  input clk;
  input [5:0]stft_pinp;

  wire \<const0> ;
  wire \<const1> ;
  wire [5:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire bcmdw;
  wire bcs_stft_n;
  wire [5:0]bdatw;
  wire brdy;
  wire clk;
  wire p_8_in;
  wire [5:0]spor_pinp_syn;
  wire [5:0]stft_pinp;
  wire [5:0]stft_pout;
  wire \stft_pout_rg[0]_i_1_n_0 ;
  wire \stft_pout_rg[1]_i_1_n_0 ;
  wire \stft_pout_rg[2]_i_1_n_0 ;
  wire \stft_pout_rg[3]_i_1_n_0 ;
  wire \stft_pout_rg[4]_i_1_n_0 ;
  wire \stft_pout_rg[5]_i_2_n_0 ;
  wire \stft_pout_rg[5]_i_3_n_0 ;
  wire wr_stftpset;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \spor_pinp_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(spor_pinp_syn[0]),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE \spor_pinp_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(spor_pinp_syn[1]),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE \spor_pinp_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(spor_pinp_syn[2]),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE \spor_pinp_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(spor_pinp_syn[3]),
        .Q(Q[3]),
        .R(\<const0> ));
  FDRE \spor_pinp_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(spor_pinp_syn[4]),
        .Q(Q[4]),
        .R(\<const0> ));
  FDRE \spor_pinp_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(spor_pinp_syn[5]),
        .Q(Q[5]),
        .R(\<const0> ));
  FDRE \spor_pinp_syn_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stft_pinp[0]),
        .Q(spor_pinp_syn[0]),
        .R(\<const0> ));
  FDRE \spor_pinp_syn_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stft_pinp[1]),
        .Q(spor_pinp_syn[1]),
        .R(\<const0> ));
  FDRE \spor_pinp_syn_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stft_pinp[2]),
        .Q(spor_pinp_syn[2]),
        .R(\<const0> ));
  FDRE \spor_pinp_syn_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stft_pinp[3]),
        .Q(spor_pinp_syn[3]),
        .R(\<const0> ));
  FDRE \spor_pinp_syn_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stft_pinp[4]),
        .Q(spor_pinp_syn[4]),
        .R(\<const0> ));
  FDRE \spor_pinp_syn_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stft_pinp[5]),
        .Q(spor_pinp_syn[5]),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'hAC)) 
    \stft_pout_rg[0]_i_1 
       (.I0(wr_stftpset),
        .I1(stft_pout[0]),
        .I2(bdatw[0]),
        .O(\stft_pout_rg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \stft_pout_rg[1]_i_1 
       (.I0(wr_stftpset),
        .I1(stft_pout[1]),
        .I2(bdatw[1]),
        .O(\stft_pout_rg[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \stft_pout_rg[2]_i_1 
       (.I0(wr_stftpset),
        .I1(stft_pout[2]),
        .I2(bdatw[2]),
        .O(\stft_pout_rg[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \stft_pout_rg[3]_i_1 
       (.I0(wr_stftpset),
        .I1(stft_pout[3]),
        .I2(bdatw[3]),
        .O(\stft_pout_rg[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \stft_pout_rg[4]_i_1 
       (.I0(wr_stftpset),
        .I1(stft_pout[4]),
        .I2(bdatw[4]),
        .O(\stft_pout_rg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00140000)) 
    \stft_pout_rg[5]_i_2 
       (.I0(badr[3]),
        .I1(badr[1]),
        .I2(badr[2]),
        .I3(badr[0]),
        .I4(p_8_in),
        .O(\stft_pout_rg[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \stft_pout_rg[5]_i_3 
       (.I0(wr_stftpset),
        .I1(stft_pout[5]),
        .I2(bdatw[5]),
        .O(\stft_pout_rg[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \stft_pout_rg[5]_i_4 
       (.I0(brdy),
        .I1(bcs_stft_n),
        .I2(bcmdw),
        .O(p_8_in));
  LUT5 #(
    .INIT(32'h00000020)) 
    \stft_pout_rg[5]_i_5 
       (.I0(p_8_in),
        .I1(badr[0]),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[2]),
        .O(wr_stftpset));
  FDRE \stft_pout_rg_reg[0] 
       (.C(clk),
        .CE(\stft_pout_rg[5]_i_2_n_0 ),
        .D(\stft_pout_rg[0]_i_1_n_0 ),
        .Q(stft_pout[0]),
        .R(SR));
  FDRE \stft_pout_rg_reg[1] 
       (.C(clk),
        .CE(\stft_pout_rg[5]_i_2_n_0 ),
        .D(\stft_pout_rg[1]_i_1_n_0 ),
        .Q(stft_pout[1]),
        .R(SR));
  FDRE \stft_pout_rg_reg[2] 
       (.C(clk),
        .CE(\stft_pout_rg[5]_i_2_n_0 ),
        .D(\stft_pout_rg[2]_i_1_n_0 ),
        .Q(stft_pout[2]),
        .R(SR));
  FDRE \stft_pout_rg_reg[3] 
       (.C(clk),
        .CE(\stft_pout_rg[5]_i_2_n_0 ),
        .D(\stft_pout_rg[3]_i_1_n_0 ),
        .Q(stft_pout[3]),
        .R(SR));
  FDRE \stft_pout_rg_reg[4] 
       (.C(clk),
        .CE(\stft_pout_rg[5]_i_2_n_0 ),
        .D(\stft_pout_rg[4]_i_1_n_0 ),
        .Q(stft_pout[4]),
        .R(SR));
  FDRE \stft_pout_rg_reg[5] 
       (.C(clk),
        .CE(\stft_pout_rg[5]_i_2_n_0 ),
        .D(\stft_pout_rg[5]_i_3_n_0 ),
        .Q(stft_pout[5]),
        .R(SR));
endmodule

module stft_timr
   (stmr_pwmo_reg_0,
    stmr_ovf__8,
    stmr_cnte,
    \stftduty_reg[7]_0 ,
    clk,
    p_8_in,
    badr,
    p_2_in,
    simumd,
    Q,
    SR,
    bdatw,
    \stftduty_dbl_reg[7]_0 ,
    \psc_cnt_reg[7]_0 );
  output stmr_pwmo_reg_0;
  output stmr_ovf__8;
  output stmr_cnte;
  output [7:0]\stftduty_reg[7]_0 ;
  input clk;
  input p_8_in;
  input [3:0]badr;
  input p_2_in;
  input simumd;
  input [0:0]Q;
  input [0:0]SR;
  input [7:0]bdatw;
  input [0:0]\stftduty_dbl_reg[7]_0 ;
  input [0:0]\psc_cnt_reg[7]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire [7:0]bdatw;
  wire clk;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in_0;
  wire p_1_in;
  wire p_2_in;
  wire p_8_in;
  wire \psc_cnt[7]_i_3_n_0 ;
  wire [7:0]psc_cnt_reg;
  wire [0:0]\psc_cnt_reg[7]_0 ;
  wire \pwm_cnt[7]_i_3_n_0 ;
  wire \pwm_cnt[7]_i_4_n_0 ;
  wire [7:0]pwm_cnt_reg;
  wire simumd;
  wire [7:0]stftduty_dbl;
  wire \stftduty_dbl[7]_i_3_n_0 ;
  wire \stftduty_dbl[7]_i_4_n_0 ;
  wire [0:0]\stftduty_dbl_reg[7]_0 ;
  wire [7:0]\stftduty_reg[7]_0 ;
  wire stmr_cnte;
  wire stmr_ovf__8;
  wire stmr_pwmo_i_10_n_0;
  wire stmr_pwmo_i_11_n_0;
  wire stmr_pwmo_i_12_n_0;
  wire stmr_pwmo_i_1_n_0;
  wire stmr_pwmo_i_4_n_0;
  wire stmr_pwmo_i_5_n_0;
  wire stmr_pwmo_i_6_n_0;
  wire stmr_pwmo_i_7_n_0;
  wire stmr_pwmo_i_8_n_0;
  wire stmr_pwmo_i_9_n_0;
  wire stmr_pwmo_reg_0;
  wire wr_stftduty;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \psc_cnt[0]_i_1 
       (.I0(psc_cnt_reg[0]),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \psc_cnt[1]_i_1 
       (.I0(psc_cnt_reg[0]),
        .I1(psc_cnt_reg[1]),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \psc_cnt[2]_i_1 
       (.I0(psc_cnt_reg[0]),
        .I1(psc_cnt_reg[1]),
        .I2(psc_cnt_reg[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \psc_cnt[3]_i_1 
       (.I0(psc_cnt_reg[1]),
        .I1(psc_cnt_reg[0]),
        .I2(psc_cnt_reg[2]),
        .I3(psc_cnt_reg[3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \psc_cnt[4]_i_1 
       (.I0(psc_cnt_reg[2]),
        .I1(psc_cnt_reg[0]),
        .I2(psc_cnt_reg[1]),
        .I3(psc_cnt_reg[3]),
        .I4(psc_cnt_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \psc_cnt[5]_i_1 
       (.I0(psc_cnt_reg[3]),
        .I1(psc_cnt_reg[1]),
        .I2(psc_cnt_reg[0]),
        .I3(psc_cnt_reg[2]),
        .I4(psc_cnt_reg[4]),
        .I5(psc_cnt_reg[5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \psc_cnt[6]_i_1 
       (.I0(\psc_cnt[7]_i_3_n_0 ),
        .I1(psc_cnt_reg[6]),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'h78)) 
    \psc_cnt[7]_i_2 
       (.I0(\psc_cnt[7]_i_3_n_0 ),
        .I1(psc_cnt_reg[6]),
        .I2(psc_cnt_reg[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \psc_cnt[7]_i_3 
       (.I0(psc_cnt_reg[5]),
        .I1(psc_cnt_reg[3]),
        .I2(psc_cnt_reg[1]),
        .I3(psc_cnt_reg[0]),
        .I4(psc_cnt_reg[2]),
        .I5(psc_cnt_reg[4]),
        .O(\psc_cnt[7]_i_3_n_0 ));
  FDRE \psc_cnt_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[0]),
        .Q(psc_cnt_reg[0]),
        .R(\psc_cnt_reg[7]_0 ));
  FDRE \psc_cnt_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[1]),
        .Q(psc_cnt_reg[1]),
        .R(\psc_cnt_reg[7]_0 ));
  FDRE \psc_cnt_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[2]),
        .Q(psc_cnt_reg[2]),
        .R(\psc_cnt_reg[7]_0 ));
  FDRE \psc_cnt_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[3]),
        .Q(psc_cnt_reg[3]),
        .R(\psc_cnt_reg[7]_0 ));
  FDRE \psc_cnt_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[4]),
        .Q(psc_cnt_reg[4]),
        .R(\psc_cnt_reg[7]_0 ));
  FDRE \psc_cnt_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[5]),
        .Q(psc_cnt_reg[5]),
        .R(\psc_cnt_reg[7]_0 ));
  FDRE \psc_cnt_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[6]),
        .Q(psc_cnt_reg[6]),
        .R(\psc_cnt_reg[7]_0 ));
  FDRE \psc_cnt_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[7]),
        .Q(psc_cnt_reg[7]),
        .R(\psc_cnt_reg[7]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pwm_cnt[0]_i_1 
       (.I0(pwm_cnt_reg[0]),
        .O(p_0_in_0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_cnt[1]_i_1 
       (.I0(pwm_cnt_reg[0]),
        .I1(pwm_cnt_reg[1]),
        .O(p_0_in_0[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \pwm_cnt[2]_i_1 
       (.I0(pwm_cnt_reg[0]),
        .I1(pwm_cnt_reg[1]),
        .I2(pwm_cnt_reg[2]),
        .O(p_0_in_0[2]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \pwm_cnt[3]_i_1 
       (.I0(pwm_cnt_reg[1]),
        .I1(pwm_cnt_reg[0]),
        .I2(pwm_cnt_reg[2]),
        .I3(pwm_cnt_reg[3]),
        .O(p_0_in_0[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pwm_cnt[4]_i_1 
       (.I0(pwm_cnt_reg[2]),
        .I1(pwm_cnt_reg[0]),
        .I2(pwm_cnt_reg[1]),
        .I3(pwm_cnt_reg[3]),
        .I4(pwm_cnt_reg[4]),
        .O(p_0_in_0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pwm_cnt[5]_i_1 
       (.I0(pwm_cnt_reg[3]),
        .I1(pwm_cnt_reg[1]),
        .I2(pwm_cnt_reg[0]),
        .I3(pwm_cnt_reg[2]),
        .I4(pwm_cnt_reg[4]),
        .I5(pwm_cnt_reg[5]),
        .O(p_0_in_0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_cnt[6]_i_1 
       (.I0(\pwm_cnt[7]_i_4_n_0 ),
        .I1(pwm_cnt_reg[6]),
        .O(p_0_in_0[6]));
  LUT5 #(
    .INIT(32'h06000000)) 
    \pwm_cnt[7]_i_1 
       (.I0(simumd),
        .I1(psc_cnt_reg[7]),
        .I2(psc_cnt_reg[6]),
        .I3(psc_cnt_reg[0]),
        .I4(\pwm_cnt[7]_i_3_n_0 ),
        .O(stmr_cnte));
  LUT3 #(
    .INIT(8'h78)) 
    \pwm_cnt[7]_i_2 
       (.I0(\pwm_cnt[7]_i_4_n_0 ),
        .I1(pwm_cnt_reg[6]),
        .I2(pwm_cnt_reg[7]),
        .O(p_0_in_0[7]));
  LUT6 #(
    .INIT(64'h2000000000000004)) 
    \pwm_cnt[7]_i_3 
       (.I0(psc_cnt_reg[5]),
        .I1(simumd),
        .I2(psc_cnt_reg[2]),
        .I3(psc_cnt_reg[1]),
        .I4(psc_cnt_reg[4]),
        .I5(psc_cnt_reg[3]),
        .O(\pwm_cnt[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pwm_cnt[7]_i_4 
       (.I0(pwm_cnt_reg[5]),
        .I1(pwm_cnt_reg[3]),
        .I2(pwm_cnt_reg[1]),
        .I3(pwm_cnt_reg[0]),
        .I4(pwm_cnt_reg[2]),
        .I5(pwm_cnt_reg[4]),
        .O(\pwm_cnt[7]_i_4_n_0 ));
  FDRE \pwm_cnt_reg[0] 
       (.C(clk),
        .CE(stmr_cnte),
        .D(p_0_in_0[0]),
        .Q(pwm_cnt_reg[0]),
        .R(\stftduty_dbl_reg[7]_0 ));
  FDRE \pwm_cnt_reg[1] 
       (.C(clk),
        .CE(stmr_cnte),
        .D(p_0_in_0[1]),
        .Q(pwm_cnt_reg[1]),
        .R(\stftduty_dbl_reg[7]_0 ));
  FDRE \pwm_cnt_reg[2] 
       (.C(clk),
        .CE(stmr_cnte),
        .D(p_0_in_0[2]),
        .Q(pwm_cnt_reg[2]),
        .R(\stftduty_dbl_reg[7]_0 ));
  FDRE \pwm_cnt_reg[3] 
       (.C(clk),
        .CE(stmr_cnte),
        .D(p_0_in_0[3]),
        .Q(pwm_cnt_reg[3]),
        .R(\stftduty_dbl_reg[7]_0 ));
  FDRE \pwm_cnt_reg[4] 
       (.C(clk),
        .CE(stmr_cnte),
        .D(p_0_in_0[4]),
        .Q(pwm_cnt_reg[4]),
        .R(\stftduty_dbl_reg[7]_0 ));
  FDRE \pwm_cnt_reg[5] 
       (.C(clk),
        .CE(stmr_cnte),
        .D(p_0_in_0[5]),
        .Q(pwm_cnt_reg[5]),
        .R(\stftduty_dbl_reg[7]_0 ));
  FDRE \pwm_cnt_reg[6] 
       (.C(clk),
        .CE(stmr_cnte),
        .D(p_0_in_0[6]),
        .Q(pwm_cnt_reg[6]),
        .R(\stftduty_dbl_reg[7]_0 ));
  FDRE \pwm_cnt_reg[7] 
       (.C(clk),
        .CE(stmr_cnte),
        .D(p_0_in_0[7]),
        .Q(pwm_cnt_reg[7]),
        .R(\stftduty_dbl_reg[7]_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \stftduty[7]_i_1 
       (.I0(p_8_in),
        .I1(badr[1]),
        .I2(badr[2]),
        .I3(badr[0]),
        .I4(badr[3]),
        .O(wr_stftduty));
  LUT6 #(
    .INIT(64'h0000800080000000)) 
    \stftduty_dbl[7]_i_2 
       (.I0(stmr_cnte),
        .I1(\stftduty_dbl[7]_i_3_n_0 ),
        .I2(pwm_cnt_reg[7]),
        .I3(pwm_cnt_reg[6]),
        .I4(\stftduty_dbl[7]_i_4_n_0 ),
        .I5(pwm_cnt_reg[5]),
        .O(stmr_ovf__8));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \stftduty_dbl[7]_i_3 
       (.I0(Q),
        .I1(pwm_cnt_reg[4]),
        .I2(pwm_cnt_reg[3]),
        .I3(pwm_cnt_reg[1]),
        .I4(pwm_cnt_reg[0]),
        .I5(pwm_cnt_reg[2]),
        .O(\stftduty_dbl[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \stftduty_dbl[7]_i_4 
       (.I0(pwm_cnt_reg[4]),
        .I1(pwm_cnt_reg[2]),
        .I2(pwm_cnt_reg[0]),
        .I3(pwm_cnt_reg[1]),
        .I4(pwm_cnt_reg[3]),
        .O(\stftduty_dbl[7]_i_4_n_0 ));
  FDRE \stftduty_dbl_reg[0] 
       (.C(clk),
        .CE(\stftduty_dbl_reg[7]_0 ),
        .D(\stftduty_reg[7]_0 [0]),
        .Q(stftduty_dbl[0]),
        .R(\<const0> ));
  FDRE \stftduty_dbl_reg[1] 
       (.C(clk),
        .CE(\stftduty_dbl_reg[7]_0 ),
        .D(\stftduty_reg[7]_0 [1]),
        .Q(stftduty_dbl[1]),
        .R(\<const0> ));
  FDRE \stftduty_dbl_reg[2] 
       (.C(clk),
        .CE(\stftduty_dbl_reg[7]_0 ),
        .D(\stftduty_reg[7]_0 [2]),
        .Q(stftduty_dbl[2]),
        .R(\<const0> ));
  FDRE \stftduty_dbl_reg[3] 
       (.C(clk),
        .CE(\stftduty_dbl_reg[7]_0 ),
        .D(\stftduty_reg[7]_0 [3]),
        .Q(stftduty_dbl[3]),
        .R(\<const0> ));
  FDRE \stftduty_dbl_reg[4] 
       (.C(clk),
        .CE(\stftduty_dbl_reg[7]_0 ),
        .D(\stftduty_reg[7]_0 [4]),
        .Q(stftduty_dbl[4]),
        .R(\<const0> ));
  FDRE \stftduty_dbl_reg[5] 
       (.C(clk),
        .CE(\stftduty_dbl_reg[7]_0 ),
        .D(\stftduty_reg[7]_0 [5]),
        .Q(stftduty_dbl[5]),
        .R(\<const0> ));
  FDRE \stftduty_dbl_reg[6] 
       (.C(clk),
        .CE(\stftduty_dbl_reg[7]_0 ),
        .D(\stftduty_reg[7]_0 [6]),
        .Q(stftduty_dbl[6]),
        .R(\<const0> ));
  FDRE \stftduty_dbl_reg[7] 
       (.C(clk),
        .CE(\stftduty_dbl_reg[7]_0 ),
        .D(\stftduty_reg[7]_0 [7]),
        .Q(stftduty_dbl[7]),
        .R(\<const0> ));
  FDRE \stftduty_reg[0] 
       (.C(clk),
        .CE(wr_stftduty),
        .D(bdatw[0]),
        .Q(\stftduty_reg[7]_0 [0]),
        .R(SR));
  FDRE \stftduty_reg[1] 
       (.C(clk),
        .CE(wr_stftduty),
        .D(bdatw[1]),
        .Q(\stftduty_reg[7]_0 [1]),
        .R(SR));
  FDRE \stftduty_reg[2] 
       (.C(clk),
        .CE(wr_stftduty),
        .D(bdatw[2]),
        .Q(\stftduty_reg[7]_0 [2]),
        .R(SR));
  FDRE \stftduty_reg[3] 
       (.C(clk),
        .CE(wr_stftduty),
        .D(bdatw[3]),
        .Q(\stftduty_reg[7]_0 [3]),
        .R(SR));
  FDRE \stftduty_reg[4] 
       (.C(clk),
        .CE(wr_stftduty),
        .D(bdatw[4]),
        .Q(\stftduty_reg[7]_0 [4]),
        .R(SR));
  FDRE \stftduty_reg[5] 
       (.C(clk),
        .CE(wr_stftduty),
        .D(bdatw[5]),
        .Q(\stftduty_reg[7]_0 [5]),
        .R(SR));
  FDRE \stftduty_reg[6] 
       (.C(clk),
        .CE(wr_stftduty),
        .D(bdatw[6]),
        .Q(\stftduty_reg[7]_0 [6]),
        .R(SR));
  FDRE \stftduty_reg[7] 
       (.C(clk),
        .CE(wr_stftduty),
        .D(bdatw[7]),
        .Q(\stftduty_reg[7]_0 [7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h000000000000EA2A)) 
    stmr_pwmo_i_1
       (.I0(stmr_pwmo_reg_0),
        .I1(stmr_ovf__8),
        .I2(stmr_cnte),
        .I3(p_1_in),
        .I4(p_2_in),
        .I5(stmr_pwmo_i_4_n_0),
        .O(stmr_pwmo_i_1_n_0));
  LUT4 #(
    .INIT(16'h0220)) 
    stmr_pwmo_i_10
       (.I0(psc_cnt_reg[0]),
        .I1(psc_cnt_reg[6]),
        .I2(psc_cnt_reg[7]),
        .I3(simumd),
        .O(stmr_pwmo_i_10_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    stmr_pwmo_i_11
       (.I0(pwm_cnt_reg[2]),
        .I1(pwm_cnt_reg[0]),
        .I2(pwm_cnt_reg[1]),
        .O(stmr_pwmo_i_11_n_0));
  LUT4 #(
    .INIT(16'hDBBD)) 
    stmr_pwmo_i_12
       (.I0(stftduty_dbl[0]),
        .I1(pwm_cnt_reg[0]),
        .I2(pwm_cnt_reg[1]),
        .I3(stftduty_dbl[1]),
        .O(stmr_pwmo_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    stmr_pwmo_i_2
       (.I0(\stftduty_reg[7]_0 [2]),
        .I1(\stftduty_reg[7]_0 [3]),
        .I2(\stftduty_reg[7]_0 [0]),
        .I3(\stftduty_reg[7]_0 [1]),
        .I4(stmr_pwmo_i_5_n_0),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'h0000000000000070)) 
    stmr_pwmo_i_4
       (.I0(stmr_pwmo_i_6_n_0),
        .I1(p_0_in_0[7]),
        .I2(stmr_cnte),
        .I3(stmr_pwmo_i_7_n_0),
        .I4(stmr_pwmo_i_8_n_0),
        .I5(stmr_pwmo_i_9_n_0),
        .O(stmr_pwmo_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    stmr_pwmo_i_5
       (.I0(\stftduty_reg[7]_0 [5]),
        .I1(\stftduty_reg[7]_0 [4]),
        .I2(\stftduty_reg[7]_0 [7]),
        .I3(\stftduty_reg[7]_0 [6]),
        .O(stmr_pwmo_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000800080000000)) 
    stmr_pwmo_i_6
       (.I0(\stftduty_dbl[7]_i_3_n_0 ),
        .I1(\pwm_cnt[7]_i_3_n_0 ),
        .I2(stmr_pwmo_i_10_n_0),
        .I3(pwm_cnt_reg[6]),
        .I4(pwm_cnt_reg[5]),
        .I5(\stftduty_dbl[7]_i_4_n_0 ),
        .O(stmr_pwmo_i_6_n_0));
  LUT6 #(
    .INIT(64'h8778FFFFFFFF8778)) 
    stmr_pwmo_i_7
       (.I0(pwm_cnt_reg[0]),
        .I1(pwm_cnt_reg[1]),
        .I2(pwm_cnt_reg[2]),
        .I3(stftduty_dbl[2]),
        .I4(p_0_in_0[5]),
        .I5(stftduty_dbl[5]),
        .O(stmr_pwmo_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF66F9FF6)) 
    stmr_pwmo_i_8
       (.I0(stftduty_dbl[4]),
        .I1(pwm_cnt_reg[4]),
        .I2(pwm_cnt_reg[3]),
        .I3(stmr_pwmo_i_11_n_0),
        .I4(stftduty_dbl[3]),
        .I5(stmr_pwmo_i_12_n_0),
        .O(stmr_pwmo_i_8_n_0));
  LUT5 #(
    .INIT(32'hD6BFBFD6)) 
    stmr_pwmo_i_9
       (.I0(stftduty_dbl[6]),
        .I1(\pwm_cnt[7]_i_4_n_0 ),
        .I2(pwm_cnt_reg[6]),
        .I3(pwm_cnt_reg[7]),
        .I4(stftduty_dbl[7]),
        .O(stmr_pwmo_i_9_n_0));
  FDRE stmr_pwmo_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(stmr_pwmo_i_1_n_0),
        .Q(stmr_pwmo_reg_0),
        .R(\<const0> ));
endmodule
