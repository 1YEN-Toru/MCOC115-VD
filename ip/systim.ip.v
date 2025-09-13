
(* STRUCTURAL_NETLIST = "yes" *)
module systim
   (clk,
    rst_n,
    simumd,
    brdy,
    bcmdr,
    bcmdw,
    bcs_sytm_n,
    clk_mhz,
    badr,
    bdatw,
    bdatr);
//
//	System Timer Unit
//		(c) 2021	1YEN Toru
//
//
//	2023/09/23	ver.1.04
//		corresponding to Cmod A7-35T
//		add: clk_mhz: frequency of clk in MHz, BCD
//		add: simumd: simulation mode, positive logic
//			millisecond counter counts up every {clk_mhz,12'h000} in BCD
//		add: sytmctl[SIMU] bit; represents simumd=1
//
//	2021/07/31	ver.1.02
//		corresponding to internal offset register
//			sytmctl[TCOE, MCOE, MLOE] bit
//
//	2021/03/27	ver.1.00
//		clock, micro seconds and milli seconds counter
//
  input clk;
  input rst_n;
  input simumd;
  input brdy;
  input bcmdr;
  input bcmdw;
  input bcs_sytm_n;
  input [7:0]clk_mhz;
  input [3:0]badr;
  input [15:0]bdatw;
  output [15:0]bdatr;

  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_sytm_n;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire [7:0]clk_mhz;
  wire [31:0]mcrcnt;
  wire mcrofs0;
  wire [31:0]milcnt;
  wire milofs0;
  wire rst_n;
  wire simumd;
  wire [31:0]tckcnt;
  wire tckcnt0;
  wire tckofs0;
  wire tctl_mcr_ofst;
  wire tctl_mil_ofst;
  wire tctl_rst_all;
  wire tctl_tck_ofst;

  sytm_mcrcnt micr
       (.E(tctl_mcr_ofst),
        .SR(mcrofs0),
        .clk(clk),
        .clk_mhz(clk_mhz),
        .mcrcnt(mcrcnt),
        .tckcnt0(tckcnt0));
  sytm_milcnt mill
       (.E(tctl_mil_ofst),
        .Q(tctl_rst_all),
        .SR(milofs0),
        .clk(clk),
        .clk_mhz(clk_mhz),
        .milcnt(milcnt),
        .rst_n(rst_n),
        .simumd(simumd),
        .tckcnt0(tckcnt0));
  sytm_tctl tctl
       (.E(tctl_tck_ofst),
        .Q(tctl_rst_all),
        .SR(tckofs0),
        .badr(badr),
        .bcmdr(bcmdr),
        .bcmdw(bcmdw),
        .bcs_sytm_n(bcs_sytm_n),
        .bdatr(bdatr),
        .bdatw({bdatw[7:5],bdatw[0]}),
        .brdy(brdy),
        .clk(clk),
        .mcrcnt(mcrcnt),
        .milcnt(milcnt),
        .rst_n(rst_n),
        .rst_n_0(mcrofs0),
        .rst_n_1(milofs0),
        .simumd(simumd),
        .tckcnt(tckcnt),
        .tckcnt0(tckcnt0),
        .tctl_mcr_ofst_reg_0(tctl_mcr_ofst),
        .tctl_mil_ofst_reg_0(tctl_mil_ofst));
  sytm_tckcnt tick
       (.E(tctl_tck_ofst),
        .SR(tckofs0),
        .clk(clk),
        .tckcnt(tckcnt),
        .tckcnt0(tckcnt0));
endmodule

module sytm_mcrcnt
   (mcrcnt,
    clk,
    tckcnt0,
    clk_mhz,
    SR,
    E);
  output [31:0]mcrcnt;
  input clk;
  input tckcnt0;
  input [7:0]clk_mhz;
  input [0:0]SR;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]E;
  wire [0:0]SR;
  wire \bcd_cnt[4]_i_1__0_n_0 ;
  wire \bcd_cnt[7]_i_1_n_0 ;
  wire \bcd_cnt[7]_i_3_n_0 ;
  wire \bcd_cnt_reg_n_0_[0] ;
  wire \bcd_cnt_reg_n_0_[1] ;
  wire \bcd_cnt_reg_n_0_[2] ;
  wire \bcd_cnt_reg_n_0_[3] ;
  wire clk;
  wire [7:0]clk_mhz;
  wire cnt_rst;
  wire cnt_up;
  wire cnt_up_i_2_n_0;
  wire cnt_up_i_3_n_0;
  wire cnt_up_i_4_n_0;
  wire cnt_up_i_5_n_0;
  wire cnt_up_i_6_n_0;
  wire [7:0]data0;
  wire [31:0]mcrcnt;
  wire \mcrcnt[0]_i_2_n_0 ;
  wire mcrcnt_o0_carry__0_i_1_n_0;
  wire mcrcnt_o0_carry__0_i_2_n_0;
  wire mcrcnt_o0_carry__0_i_3_n_0;
  wire mcrcnt_o0_carry__0_i_4_n_0;
  wire mcrcnt_o0_carry__0_n_0;
  wire mcrcnt_o0_carry__0_n_1;
  wire mcrcnt_o0_carry__0_n_2;
  wire mcrcnt_o0_carry__0_n_3;
  wire mcrcnt_o0_carry__1_i_1_n_0;
  wire mcrcnt_o0_carry__1_i_2_n_0;
  wire mcrcnt_o0_carry__1_i_3_n_0;
  wire mcrcnt_o0_carry__1_i_4_n_0;
  wire mcrcnt_o0_carry__1_n_0;
  wire mcrcnt_o0_carry__1_n_1;
  wire mcrcnt_o0_carry__1_n_2;
  wire mcrcnt_o0_carry__1_n_3;
  wire mcrcnt_o0_carry__2_i_1_n_0;
  wire mcrcnt_o0_carry__2_i_2_n_0;
  wire mcrcnt_o0_carry__2_i_3_n_0;
  wire mcrcnt_o0_carry__2_i_4_n_0;
  wire mcrcnt_o0_carry__2_n_0;
  wire mcrcnt_o0_carry__2_n_1;
  wire mcrcnt_o0_carry__2_n_2;
  wire mcrcnt_o0_carry__2_n_3;
  wire mcrcnt_o0_carry__3_i_1_n_0;
  wire mcrcnt_o0_carry__3_i_2_n_0;
  wire mcrcnt_o0_carry__3_i_3_n_0;
  wire mcrcnt_o0_carry__3_i_4_n_0;
  wire mcrcnt_o0_carry__3_n_0;
  wire mcrcnt_o0_carry__3_n_1;
  wire mcrcnt_o0_carry__3_n_2;
  wire mcrcnt_o0_carry__3_n_3;
  wire mcrcnt_o0_carry__4_i_1_n_0;
  wire mcrcnt_o0_carry__4_i_2_n_0;
  wire mcrcnt_o0_carry__4_i_3_n_0;
  wire mcrcnt_o0_carry__4_i_4_n_0;
  wire mcrcnt_o0_carry__4_n_0;
  wire mcrcnt_o0_carry__4_n_1;
  wire mcrcnt_o0_carry__4_n_2;
  wire mcrcnt_o0_carry__4_n_3;
  wire mcrcnt_o0_carry__5_i_1_n_0;
  wire mcrcnt_o0_carry__5_i_2_n_0;
  wire mcrcnt_o0_carry__5_i_3_n_0;
  wire mcrcnt_o0_carry__5_i_4_n_0;
  wire mcrcnt_o0_carry__5_n_0;
  wire mcrcnt_o0_carry__5_n_1;
  wire mcrcnt_o0_carry__5_n_2;
  wire mcrcnt_o0_carry__5_n_3;
  wire mcrcnt_o0_carry__6_i_1_n_0;
  wire mcrcnt_o0_carry__6_i_2_n_0;
  wire mcrcnt_o0_carry__6_i_3_n_0;
  wire mcrcnt_o0_carry__6_i_4_n_0;
  wire mcrcnt_o0_carry__6_n_1;
  wire mcrcnt_o0_carry__6_n_2;
  wire mcrcnt_o0_carry__6_n_3;
  wire mcrcnt_o0_carry_i_1_n_0;
  wire mcrcnt_o0_carry_i_2_n_0;
  wire mcrcnt_o0_carry_i_3_n_0;
  wire mcrcnt_o0_carry_i_4_n_0;
  wire mcrcnt_o0_carry_n_0;
  wire mcrcnt_o0_carry_n_1;
  wire mcrcnt_o0_carry_n_2;
  wire mcrcnt_o0_carry_n_3;
  wire [31:0]mcrcnt_reg;
  wire \mcrcnt_reg[0]_i_1_n_0 ;
  wire \mcrcnt_reg[0]_i_1_n_1 ;
  wire \mcrcnt_reg[0]_i_1_n_2 ;
  wire \mcrcnt_reg[0]_i_1_n_3 ;
  wire \mcrcnt_reg[0]_i_1_n_4 ;
  wire \mcrcnt_reg[0]_i_1_n_5 ;
  wire \mcrcnt_reg[0]_i_1_n_6 ;
  wire \mcrcnt_reg[0]_i_1_n_7 ;
  wire \mcrcnt_reg[12]_i_1_n_0 ;
  wire \mcrcnt_reg[12]_i_1_n_1 ;
  wire \mcrcnt_reg[12]_i_1_n_2 ;
  wire \mcrcnt_reg[12]_i_1_n_3 ;
  wire \mcrcnt_reg[12]_i_1_n_4 ;
  wire \mcrcnt_reg[12]_i_1_n_5 ;
  wire \mcrcnt_reg[12]_i_1_n_6 ;
  wire \mcrcnt_reg[12]_i_1_n_7 ;
  wire \mcrcnt_reg[16]_i_1_n_0 ;
  wire \mcrcnt_reg[16]_i_1_n_1 ;
  wire \mcrcnt_reg[16]_i_1_n_2 ;
  wire \mcrcnt_reg[16]_i_1_n_3 ;
  wire \mcrcnt_reg[16]_i_1_n_4 ;
  wire \mcrcnt_reg[16]_i_1_n_5 ;
  wire \mcrcnt_reg[16]_i_1_n_6 ;
  wire \mcrcnt_reg[16]_i_1_n_7 ;
  wire \mcrcnt_reg[20]_i_1_n_0 ;
  wire \mcrcnt_reg[20]_i_1_n_1 ;
  wire \mcrcnt_reg[20]_i_1_n_2 ;
  wire \mcrcnt_reg[20]_i_1_n_3 ;
  wire \mcrcnt_reg[20]_i_1_n_4 ;
  wire \mcrcnt_reg[20]_i_1_n_5 ;
  wire \mcrcnt_reg[20]_i_1_n_6 ;
  wire \mcrcnt_reg[20]_i_1_n_7 ;
  wire \mcrcnt_reg[24]_i_1_n_0 ;
  wire \mcrcnt_reg[24]_i_1_n_1 ;
  wire \mcrcnt_reg[24]_i_1_n_2 ;
  wire \mcrcnt_reg[24]_i_1_n_3 ;
  wire \mcrcnt_reg[24]_i_1_n_4 ;
  wire \mcrcnt_reg[24]_i_1_n_5 ;
  wire \mcrcnt_reg[24]_i_1_n_6 ;
  wire \mcrcnt_reg[24]_i_1_n_7 ;
  wire \mcrcnt_reg[28]_i_1_n_1 ;
  wire \mcrcnt_reg[28]_i_1_n_2 ;
  wire \mcrcnt_reg[28]_i_1_n_3 ;
  wire \mcrcnt_reg[28]_i_1_n_4 ;
  wire \mcrcnt_reg[28]_i_1_n_5 ;
  wire \mcrcnt_reg[28]_i_1_n_6 ;
  wire \mcrcnt_reg[28]_i_1_n_7 ;
  wire \mcrcnt_reg[4]_i_1_n_0 ;
  wire \mcrcnt_reg[4]_i_1_n_1 ;
  wire \mcrcnt_reg[4]_i_1_n_2 ;
  wire \mcrcnt_reg[4]_i_1_n_3 ;
  wire \mcrcnt_reg[4]_i_1_n_4 ;
  wire \mcrcnt_reg[4]_i_1_n_5 ;
  wire \mcrcnt_reg[4]_i_1_n_6 ;
  wire \mcrcnt_reg[4]_i_1_n_7 ;
  wire \mcrcnt_reg[8]_i_1_n_0 ;
  wire \mcrcnt_reg[8]_i_1_n_1 ;
  wire \mcrcnt_reg[8]_i_1_n_2 ;
  wire \mcrcnt_reg[8]_i_1_n_3 ;
  wire \mcrcnt_reg[8]_i_1_n_4 ;
  wire \mcrcnt_reg[8]_i_1_n_5 ;
  wire \mcrcnt_reg[8]_i_1_n_6 ;
  wire \mcrcnt_reg[8]_i_1_n_7 ;
  wire [31:0]mcrofs;
  wire [3:0]p_0_in;
  wire tckcnt0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \bcd_cnt[0]_i_1 
       (.I0(\bcd_cnt_reg_n_0_[0] ),
        .O(data0[0]));
  LUT4 #(
    .INIT(16'h0FB0)) 
    \bcd_cnt[1]_i_1__0 
       (.I0(\bcd_cnt_reg_n_0_[2] ),
        .I1(\bcd_cnt_reg_n_0_[3] ),
        .I2(\bcd_cnt_reg_n_0_[0] ),
        .I3(\bcd_cnt_reg_n_0_[1] ),
        .O(data0[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \bcd_cnt[2]_i_1__0 
       (.I0(\bcd_cnt_reg_n_0_[2] ),
        .I1(\bcd_cnt_reg_n_0_[1] ),
        .I2(\bcd_cnt_reg_n_0_[0] ),
        .O(data0[2]));
  LUT4 #(
    .INIT(16'h68AA)) 
    \bcd_cnt[3]_i_1__0 
       (.I0(\bcd_cnt_reg_n_0_[3] ),
        .I1(\bcd_cnt_reg_n_0_[2] ),
        .I2(\bcd_cnt_reg_n_0_[1] ),
        .I3(\bcd_cnt_reg_n_0_[0] ),
        .O(data0[3]));
  LUT5 #(
    .INIT(32'hAA9AAAAA)) 
    \bcd_cnt[4]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(\bcd_cnt_reg_n_0_[1] ),
        .I2(\bcd_cnt_reg_n_0_[0] ),
        .I3(\bcd_cnt_reg_n_0_[2] ),
        .I4(\bcd_cnt_reg_n_0_[3] ),
        .O(\bcd_cnt[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA6AAAAAAAAAA)) 
    \bcd_cnt[5]_i_1__0 
       (.I0(p_0_in[1]),
        .I1(\bcd_cnt_reg_n_0_[3] ),
        .I2(\bcd_cnt_reg_n_0_[2] ),
        .I3(\bcd_cnt_reg_n_0_[0] ),
        .I4(\bcd_cnt_reg_n_0_[1] ),
        .I5(p_0_in[0]),
        .O(data0[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \bcd_cnt[6]_i_1__0 
       (.I0(p_0_in[2]),
        .I1(\bcd_cnt[7]_i_3_n_0 ),
        .I2(p_0_in[1]),
        .O(data0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAABAAA)) 
    \bcd_cnt[7]_i_1 
       (.I0(cnt_rst),
        .I1(p_0_in[1]),
        .I2(\bcd_cnt[7]_i_3_n_0 ),
        .I3(p_0_in[3]),
        .I4(p_0_in[2]),
        .I5(tckcnt0),
        .O(\bcd_cnt[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bcd_cnt[7]_i_2 
       (.I0(p_0_in[3]),
        .I1(p_0_in[1]),
        .I2(\bcd_cnt[7]_i_3_n_0 ),
        .I3(p_0_in[2]),
        .O(data0[7]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \bcd_cnt[7]_i_3 
       (.I0(p_0_in[0]),
        .I1(\bcd_cnt_reg_n_0_[1] ),
        .I2(\bcd_cnt_reg_n_0_[0] ),
        .I3(\bcd_cnt_reg_n_0_[2] ),
        .I4(\bcd_cnt_reg_n_0_[3] ),
        .O(\bcd_cnt[7]_i_3_n_0 ));
  FDRE \bcd_cnt_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[0]),
        .Q(\bcd_cnt_reg_n_0_[0] ),
        .R(\bcd_cnt[7]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[1]),
        .Q(\bcd_cnt_reg_n_0_[1] ),
        .R(\bcd_cnt[7]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[2]),
        .Q(\bcd_cnt_reg_n_0_[2] ),
        .R(\bcd_cnt[7]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[3]),
        .Q(\bcd_cnt_reg_n_0_[3] ),
        .R(\bcd_cnt[7]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[4]_i_1__0_n_0 ),
        .Q(p_0_in[0]),
        .R(\bcd_cnt[7]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[5]),
        .Q(p_0_in[1]),
        .R(\bcd_cnt[7]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[6]),
        .Q(p_0_in[2]),
        .R(\bcd_cnt[7]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[7]),
        .Q(p_0_in[3]),
        .R(\bcd_cnt[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004004)) 
    cnt_up_i_1
       (.I0(cnt_up_i_2_n_0),
        .I1(cnt_up_i_3_n_0),
        .I2(data0[2]),
        .I3(clk_mhz[2]),
        .I4(cnt_up_i_4_n_0),
        .O(cnt_rst));
  LUT6 #(
    .INIT(64'hBEEBFFFFFFFFBEEB)) 
    cnt_up_i_2
       (.I0(cnt_up_i_5_n_0),
        .I1(clk_mhz[4]),
        .I2(cnt_up_i_6_n_0),
        .I3(p_0_in[0]),
        .I4(clk_mhz[3]),
        .I5(data0[3]),
        .O(cnt_up_i_2_n_0));
  LUT5 #(
    .INIT(32'h69695969)) 
    cnt_up_i_3
       (.I0(clk_mhz[5]),
        .I1(p_0_in[1]),
        .I2(\bcd_cnt[7]_i_3_n_0 ),
        .I3(p_0_in[3]),
        .I4(p_0_in[2]),
        .O(cnt_up_i_3_n_0));
  LUT6 #(
    .INIT(64'hDB6F7F6FBDF6E6F6)) 
    cnt_up_i_4
       (.I0(clk_mhz[6]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\bcd_cnt[7]_i_3_n_0 ),
        .I4(p_0_in[1]),
        .I5(clk_mhz[7]),
        .O(cnt_up_i_4_n_0));
  LUT6 #(
    .INIT(64'hFF55BAFFAAFFEF55)) 
    cnt_up_i_5
       (.I0(clk_mhz[0]),
        .I1(\bcd_cnt_reg_n_0_[2] ),
        .I2(\bcd_cnt_reg_n_0_[3] ),
        .I3(\bcd_cnt_reg_n_0_[0] ),
        .I4(\bcd_cnt_reg_n_0_[1] ),
        .I5(clk_mhz[1]),
        .O(cnt_up_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    cnt_up_i_6
       (.I0(\bcd_cnt_reg_n_0_[3] ),
        .I1(\bcd_cnt_reg_n_0_[2] ),
        .I2(\bcd_cnt_reg_n_0_[0] ),
        .I3(\bcd_cnt_reg_n_0_[1] ),
        .O(cnt_up_i_6_n_0));
  FDRE cnt_up_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(cnt_rst),
        .Q(cnt_up),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \mcrcnt[0]_i_2 
       (.I0(mcrcnt_reg[0]),
        .O(\mcrcnt[0]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mcrcnt_o0_carry
       (.CI(\<const0> ),
        .CO({mcrcnt_o0_carry_n_0,mcrcnt_o0_carry_n_1,mcrcnt_o0_carry_n_2,mcrcnt_o0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI(mcrcnt_reg[3:0]),
        .O(mcrcnt[3:0]),
        .S({mcrcnt_o0_carry_i_1_n_0,mcrcnt_o0_carry_i_2_n_0,mcrcnt_o0_carry_i_3_n_0,mcrcnt_o0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mcrcnt_o0_carry__0
       (.CI(mcrcnt_o0_carry_n_0),
        .CO({mcrcnt_o0_carry__0_n_0,mcrcnt_o0_carry__0_n_1,mcrcnt_o0_carry__0_n_2,mcrcnt_o0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(mcrcnt_reg[7:4]),
        .O(mcrcnt[7:4]),
        .S({mcrcnt_o0_carry__0_i_1_n_0,mcrcnt_o0_carry__0_i_2_n_0,mcrcnt_o0_carry__0_i_3_n_0,mcrcnt_o0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__0_i_1
       (.I0(mcrcnt_reg[7]),
        .I1(mcrofs[7]),
        .O(mcrcnt_o0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__0_i_2
       (.I0(mcrcnt_reg[6]),
        .I1(mcrofs[6]),
        .O(mcrcnt_o0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__0_i_3
       (.I0(mcrcnt_reg[5]),
        .I1(mcrofs[5]),
        .O(mcrcnt_o0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__0_i_4
       (.I0(mcrcnt_reg[4]),
        .I1(mcrofs[4]),
        .O(mcrcnt_o0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mcrcnt_o0_carry__1
       (.CI(mcrcnt_o0_carry__0_n_0),
        .CO({mcrcnt_o0_carry__1_n_0,mcrcnt_o0_carry__1_n_1,mcrcnt_o0_carry__1_n_2,mcrcnt_o0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(mcrcnt_reg[11:8]),
        .O(mcrcnt[11:8]),
        .S({mcrcnt_o0_carry__1_i_1_n_0,mcrcnt_o0_carry__1_i_2_n_0,mcrcnt_o0_carry__1_i_3_n_0,mcrcnt_o0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__1_i_1
       (.I0(mcrcnt_reg[11]),
        .I1(mcrofs[11]),
        .O(mcrcnt_o0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__1_i_2
       (.I0(mcrcnt_reg[10]),
        .I1(mcrofs[10]),
        .O(mcrcnt_o0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__1_i_3
       (.I0(mcrcnt_reg[9]),
        .I1(mcrofs[9]),
        .O(mcrcnt_o0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__1_i_4
       (.I0(mcrcnt_reg[8]),
        .I1(mcrofs[8]),
        .O(mcrcnt_o0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mcrcnt_o0_carry__2
       (.CI(mcrcnt_o0_carry__1_n_0),
        .CO({mcrcnt_o0_carry__2_n_0,mcrcnt_o0_carry__2_n_1,mcrcnt_o0_carry__2_n_2,mcrcnt_o0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(mcrcnt_reg[15:12]),
        .O(mcrcnt[15:12]),
        .S({mcrcnt_o0_carry__2_i_1_n_0,mcrcnt_o0_carry__2_i_2_n_0,mcrcnt_o0_carry__2_i_3_n_0,mcrcnt_o0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__2_i_1
       (.I0(mcrcnt_reg[15]),
        .I1(mcrofs[15]),
        .O(mcrcnt_o0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__2_i_2
       (.I0(mcrcnt_reg[14]),
        .I1(mcrofs[14]),
        .O(mcrcnt_o0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__2_i_3
       (.I0(mcrcnt_reg[13]),
        .I1(mcrofs[13]),
        .O(mcrcnt_o0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__2_i_4
       (.I0(mcrcnt_reg[12]),
        .I1(mcrofs[12]),
        .O(mcrcnt_o0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mcrcnt_o0_carry__3
       (.CI(mcrcnt_o0_carry__2_n_0),
        .CO({mcrcnt_o0_carry__3_n_0,mcrcnt_o0_carry__3_n_1,mcrcnt_o0_carry__3_n_2,mcrcnt_o0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(mcrcnt_reg[19:16]),
        .O(mcrcnt[19:16]),
        .S({mcrcnt_o0_carry__3_i_1_n_0,mcrcnt_o0_carry__3_i_2_n_0,mcrcnt_o0_carry__3_i_3_n_0,mcrcnt_o0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__3_i_1
       (.I0(mcrcnt_reg[19]),
        .I1(mcrofs[19]),
        .O(mcrcnt_o0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__3_i_2
       (.I0(mcrcnt_reg[18]),
        .I1(mcrofs[18]),
        .O(mcrcnt_o0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__3_i_3
       (.I0(mcrcnt_reg[17]),
        .I1(mcrofs[17]),
        .O(mcrcnt_o0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__3_i_4
       (.I0(mcrcnt_reg[16]),
        .I1(mcrofs[16]),
        .O(mcrcnt_o0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mcrcnt_o0_carry__4
       (.CI(mcrcnt_o0_carry__3_n_0),
        .CO({mcrcnt_o0_carry__4_n_0,mcrcnt_o0_carry__4_n_1,mcrcnt_o0_carry__4_n_2,mcrcnt_o0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI(mcrcnt_reg[23:20]),
        .O(mcrcnt[23:20]),
        .S({mcrcnt_o0_carry__4_i_1_n_0,mcrcnt_o0_carry__4_i_2_n_0,mcrcnt_o0_carry__4_i_3_n_0,mcrcnt_o0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__4_i_1
       (.I0(mcrcnt_reg[23]),
        .I1(mcrofs[23]),
        .O(mcrcnt_o0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__4_i_2
       (.I0(mcrcnt_reg[22]),
        .I1(mcrofs[22]),
        .O(mcrcnt_o0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__4_i_3
       (.I0(mcrcnt_reg[21]),
        .I1(mcrofs[21]),
        .O(mcrcnt_o0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__4_i_4
       (.I0(mcrcnt_reg[20]),
        .I1(mcrofs[20]),
        .O(mcrcnt_o0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mcrcnt_o0_carry__5
       (.CI(mcrcnt_o0_carry__4_n_0),
        .CO({mcrcnt_o0_carry__5_n_0,mcrcnt_o0_carry__5_n_1,mcrcnt_o0_carry__5_n_2,mcrcnt_o0_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI(mcrcnt_reg[27:24]),
        .O(mcrcnt[27:24]),
        .S({mcrcnt_o0_carry__5_i_1_n_0,mcrcnt_o0_carry__5_i_2_n_0,mcrcnt_o0_carry__5_i_3_n_0,mcrcnt_o0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__5_i_1
       (.I0(mcrcnt_reg[27]),
        .I1(mcrofs[27]),
        .O(mcrcnt_o0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__5_i_2
       (.I0(mcrcnt_reg[26]),
        .I1(mcrofs[26]),
        .O(mcrcnt_o0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__5_i_3
       (.I0(mcrcnt_reg[25]),
        .I1(mcrofs[25]),
        .O(mcrcnt_o0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__5_i_4
       (.I0(mcrcnt_reg[24]),
        .I1(mcrofs[24]),
        .O(mcrcnt_o0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mcrcnt_o0_carry__6
       (.CI(mcrcnt_o0_carry__5_n_0),
        .CO({mcrcnt_o0_carry__6_n_1,mcrcnt_o0_carry__6_n_2,mcrcnt_o0_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,mcrcnt_reg[30:28]}),
        .O(mcrcnt[31:28]),
        .S({mcrcnt_o0_carry__6_i_1_n_0,mcrcnt_o0_carry__6_i_2_n_0,mcrcnt_o0_carry__6_i_3_n_0,mcrcnt_o0_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__6_i_1
       (.I0(mcrcnt_reg[31]),
        .I1(mcrofs[31]),
        .O(mcrcnt_o0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__6_i_2
       (.I0(mcrcnt_reg[30]),
        .I1(mcrofs[30]),
        .O(mcrcnt_o0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__6_i_3
       (.I0(mcrcnt_reg[29]),
        .I1(mcrofs[29]),
        .O(mcrcnt_o0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry__6_i_4
       (.I0(mcrcnt_reg[28]),
        .I1(mcrofs[28]),
        .O(mcrcnt_o0_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry_i_1
       (.I0(mcrcnt_reg[3]),
        .I1(mcrofs[3]),
        .O(mcrcnt_o0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry_i_2
       (.I0(mcrcnt_reg[2]),
        .I1(mcrofs[2]),
        .O(mcrcnt_o0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry_i_3
       (.I0(mcrcnt_reg[1]),
        .I1(mcrofs[1]),
        .O(mcrcnt_o0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mcrcnt_o0_carry_i_4
       (.I0(mcrcnt_reg[0]),
        .I1(mcrofs[0]),
        .O(mcrcnt_o0_carry_i_4_n_0));
  FDRE \mcrcnt_reg[0] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[0]_i_1_n_7 ),
        .Q(mcrcnt_reg[0]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mcrcnt_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\mcrcnt_reg[0]_i_1_n_0 ,\mcrcnt_reg[0]_i_1_n_1 ,\mcrcnt_reg[0]_i_1_n_2 ,\mcrcnt_reg[0]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\mcrcnt_reg[0]_i_1_n_4 ,\mcrcnt_reg[0]_i_1_n_5 ,\mcrcnt_reg[0]_i_1_n_6 ,\mcrcnt_reg[0]_i_1_n_7 }),
        .S({mcrcnt_reg[3:1],\mcrcnt[0]_i_2_n_0 }));
  FDRE \mcrcnt_reg[10] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[8]_i_1_n_5 ),
        .Q(mcrcnt_reg[10]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[11] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[8]_i_1_n_4 ),
        .Q(mcrcnt_reg[11]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[12] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[12]_i_1_n_7 ),
        .Q(mcrcnt_reg[12]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mcrcnt_reg[12]_i_1 
       (.CI(\mcrcnt_reg[8]_i_1_n_0 ),
        .CO({\mcrcnt_reg[12]_i_1_n_0 ,\mcrcnt_reg[12]_i_1_n_1 ,\mcrcnt_reg[12]_i_1_n_2 ,\mcrcnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\mcrcnt_reg[12]_i_1_n_4 ,\mcrcnt_reg[12]_i_1_n_5 ,\mcrcnt_reg[12]_i_1_n_6 ,\mcrcnt_reg[12]_i_1_n_7 }),
        .S(mcrcnt_reg[15:12]));
  FDRE \mcrcnt_reg[13] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[12]_i_1_n_6 ),
        .Q(mcrcnt_reg[13]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[14] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[12]_i_1_n_5 ),
        .Q(mcrcnt_reg[14]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[15] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[12]_i_1_n_4 ),
        .Q(mcrcnt_reg[15]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[16] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[16]_i_1_n_7 ),
        .Q(mcrcnt_reg[16]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mcrcnt_reg[16]_i_1 
       (.CI(\mcrcnt_reg[12]_i_1_n_0 ),
        .CO({\mcrcnt_reg[16]_i_1_n_0 ,\mcrcnt_reg[16]_i_1_n_1 ,\mcrcnt_reg[16]_i_1_n_2 ,\mcrcnt_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\mcrcnt_reg[16]_i_1_n_4 ,\mcrcnt_reg[16]_i_1_n_5 ,\mcrcnt_reg[16]_i_1_n_6 ,\mcrcnt_reg[16]_i_1_n_7 }),
        .S(mcrcnt_reg[19:16]));
  FDRE \mcrcnt_reg[17] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[16]_i_1_n_6 ),
        .Q(mcrcnt_reg[17]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[18] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[16]_i_1_n_5 ),
        .Q(mcrcnt_reg[18]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[19] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[16]_i_1_n_4 ),
        .Q(mcrcnt_reg[19]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[1] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[0]_i_1_n_6 ),
        .Q(mcrcnt_reg[1]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[20] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[20]_i_1_n_7 ),
        .Q(mcrcnt_reg[20]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mcrcnt_reg[20]_i_1 
       (.CI(\mcrcnt_reg[16]_i_1_n_0 ),
        .CO({\mcrcnt_reg[20]_i_1_n_0 ,\mcrcnt_reg[20]_i_1_n_1 ,\mcrcnt_reg[20]_i_1_n_2 ,\mcrcnt_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\mcrcnt_reg[20]_i_1_n_4 ,\mcrcnt_reg[20]_i_1_n_5 ,\mcrcnt_reg[20]_i_1_n_6 ,\mcrcnt_reg[20]_i_1_n_7 }),
        .S(mcrcnt_reg[23:20]));
  FDRE \mcrcnt_reg[21] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[20]_i_1_n_6 ),
        .Q(mcrcnt_reg[21]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[22] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[20]_i_1_n_5 ),
        .Q(mcrcnt_reg[22]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[23] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[20]_i_1_n_4 ),
        .Q(mcrcnt_reg[23]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[24] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[24]_i_1_n_7 ),
        .Q(mcrcnt_reg[24]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mcrcnt_reg[24]_i_1 
       (.CI(\mcrcnt_reg[20]_i_1_n_0 ),
        .CO({\mcrcnt_reg[24]_i_1_n_0 ,\mcrcnt_reg[24]_i_1_n_1 ,\mcrcnt_reg[24]_i_1_n_2 ,\mcrcnt_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\mcrcnt_reg[24]_i_1_n_4 ,\mcrcnt_reg[24]_i_1_n_5 ,\mcrcnt_reg[24]_i_1_n_6 ,\mcrcnt_reg[24]_i_1_n_7 }),
        .S(mcrcnt_reg[27:24]));
  FDRE \mcrcnt_reg[25] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[24]_i_1_n_6 ),
        .Q(mcrcnt_reg[25]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[26] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[24]_i_1_n_5 ),
        .Q(mcrcnt_reg[26]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[27] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[24]_i_1_n_4 ),
        .Q(mcrcnt_reg[27]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[28] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[28]_i_1_n_7 ),
        .Q(mcrcnt_reg[28]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mcrcnt_reg[28]_i_1 
       (.CI(\mcrcnt_reg[24]_i_1_n_0 ),
        .CO({\mcrcnt_reg[28]_i_1_n_1 ,\mcrcnt_reg[28]_i_1_n_2 ,\mcrcnt_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\mcrcnt_reg[28]_i_1_n_4 ,\mcrcnt_reg[28]_i_1_n_5 ,\mcrcnt_reg[28]_i_1_n_6 ,\mcrcnt_reg[28]_i_1_n_7 }),
        .S(mcrcnt_reg[31:28]));
  FDRE \mcrcnt_reg[29] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[28]_i_1_n_6 ),
        .Q(mcrcnt_reg[29]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[2] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[0]_i_1_n_5 ),
        .Q(mcrcnt_reg[2]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[30] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[28]_i_1_n_5 ),
        .Q(mcrcnt_reg[30]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[31] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[28]_i_1_n_4 ),
        .Q(mcrcnt_reg[31]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[3] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[0]_i_1_n_4 ),
        .Q(mcrcnt_reg[3]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[4] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[4]_i_1_n_7 ),
        .Q(mcrcnt_reg[4]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mcrcnt_reg[4]_i_1 
       (.CI(\mcrcnt_reg[0]_i_1_n_0 ),
        .CO({\mcrcnt_reg[4]_i_1_n_0 ,\mcrcnt_reg[4]_i_1_n_1 ,\mcrcnt_reg[4]_i_1_n_2 ,\mcrcnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\mcrcnt_reg[4]_i_1_n_4 ,\mcrcnt_reg[4]_i_1_n_5 ,\mcrcnt_reg[4]_i_1_n_6 ,\mcrcnt_reg[4]_i_1_n_7 }),
        .S(mcrcnt_reg[7:4]));
  FDRE \mcrcnt_reg[5] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[4]_i_1_n_6 ),
        .Q(mcrcnt_reg[5]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[6] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[4]_i_1_n_5 ),
        .Q(mcrcnt_reg[6]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[7] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[4]_i_1_n_4 ),
        .Q(mcrcnt_reg[7]),
        .R(tckcnt0));
  FDRE \mcrcnt_reg[8] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[8]_i_1_n_7 ),
        .Q(mcrcnt_reg[8]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mcrcnt_reg[8]_i_1 
       (.CI(\mcrcnt_reg[4]_i_1_n_0 ),
        .CO({\mcrcnt_reg[8]_i_1_n_0 ,\mcrcnt_reg[8]_i_1_n_1 ,\mcrcnt_reg[8]_i_1_n_2 ,\mcrcnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\mcrcnt_reg[8]_i_1_n_4 ,\mcrcnt_reg[8]_i_1_n_5 ,\mcrcnt_reg[8]_i_1_n_6 ,\mcrcnt_reg[8]_i_1_n_7 }),
        .S(mcrcnt_reg[11:8]));
  FDRE \mcrcnt_reg[9] 
       (.C(clk),
        .CE(cnt_up),
        .D(\mcrcnt_reg[8]_i_1_n_6 ),
        .Q(mcrcnt_reg[9]),
        .R(tckcnt0));
  FDRE \mcrofs_reg[0] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[0]),
        .Q(mcrofs[0]),
        .R(SR));
  FDRE \mcrofs_reg[10] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[10]),
        .Q(mcrofs[10]),
        .R(SR));
  FDRE \mcrofs_reg[11] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[11]),
        .Q(mcrofs[11]),
        .R(SR));
  FDRE \mcrofs_reg[12] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[12]),
        .Q(mcrofs[12]),
        .R(SR));
  FDRE \mcrofs_reg[13] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[13]),
        .Q(mcrofs[13]),
        .R(SR));
  FDRE \mcrofs_reg[14] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[14]),
        .Q(mcrofs[14]),
        .R(SR));
  FDRE \mcrofs_reg[15] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[15]),
        .Q(mcrofs[15]),
        .R(SR));
  FDRE \mcrofs_reg[16] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[16]),
        .Q(mcrofs[16]),
        .R(SR));
  FDRE \mcrofs_reg[17] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[17]),
        .Q(mcrofs[17]),
        .R(SR));
  FDRE \mcrofs_reg[18] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[18]),
        .Q(mcrofs[18]),
        .R(SR));
  FDRE \mcrofs_reg[19] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[19]),
        .Q(mcrofs[19]),
        .R(SR));
  FDRE \mcrofs_reg[1] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[1]),
        .Q(mcrofs[1]),
        .R(SR));
  FDRE \mcrofs_reg[20] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[20]),
        .Q(mcrofs[20]),
        .R(SR));
  FDRE \mcrofs_reg[21] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[21]),
        .Q(mcrofs[21]),
        .R(SR));
  FDRE \mcrofs_reg[22] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[22]),
        .Q(mcrofs[22]),
        .R(SR));
  FDRE \mcrofs_reg[23] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[23]),
        .Q(mcrofs[23]),
        .R(SR));
  FDRE \mcrofs_reg[24] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[24]),
        .Q(mcrofs[24]),
        .R(SR));
  FDRE \mcrofs_reg[25] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[25]),
        .Q(mcrofs[25]),
        .R(SR));
  FDRE \mcrofs_reg[26] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[26]),
        .Q(mcrofs[26]),
        .R(SR));
  FDRE \mcrofs_reg[27] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[27]),
        .Q(mcrofs[27]),
        .R(SR));
  FDRE \mcrofs_reg[28] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[28]),
        .Q(mcrofs[28]),
        .R(SR));
  FDRE \mcrofs_reg[29] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[29]),
        .Q(mcrofs[29]),
        .R(SR));
  FDRE \mcrofs_reg[2] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[2]),
        .Q(mcrofs[2]),
        .R(SR));
  FDRE \mcrofs_reg[30] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[30]),
        .Q(mcrofs[30]),
        .R(SR));
  FDRE \mcrofs_reg[31] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[31]),
        .Q(mcrofs[31]),
        .R(SR));
  FDRE \mcrofs_reg[3] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[3]),
        .Q(mcrofs[3]),
        .R(SR));
  FDRE \mcrofs_reg[4] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[4]),
        .Q(mcrofs[4]),
        .R(SR));
  FDRE \mcrofs_reg[5] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[5]),
        .Q(mcrofs[5]),
        .R(SR));
  FDRE \mcrofs_reg[6] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[6]),
        .Q(mcrofs[6]),
        .R(SR));
  FDRE \mcrofs_reg[7] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[7]),
        .Q(mcrofs[7]),
        .R(SR));
  FDRE \mcrofs_reg[8] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[8]),
        .Q(mcrofs[8]),
        .R(SR));
  FDRE \mcrofs_reg[9] 
       (.C(clk),
        .CE(E),
        .D(mcrcnt_reg[9]),
        .Q(mcrofs[9]),
        .R(SR));
endmodule

module sytm_milcnt
   (milcnt,
    clk,
    tckcnt0,
    Q,
    rst_n,
    clk_mhz,
    simumd,
    SR,
    E);
  output [31:0]milcnt;
  input clk;
  input tckcnt0;
  input [0:0]Q;
  input rst_n;
  input [7:0]clk_mhz;
  input simumd;
  input [0:0]SR;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \bcd_cnt[0]_i_1__0_n_0 ;
  wire \bcd_cnt[10]_i_1_n_0 ;
  wire \bcd_cnt[11]_i_1_n_0 ;
  wire \bcd_cnt[11]_i_2_n_0 ;
  wire \bcd_cnt[12]_i_1_n_0 ;
  wire \bcd_cnt[13]_i_1_n_0 ;
  wire \bcd_cnt[14]_i_1_n_0 ;
  wire \bcd_cnt[14]_i_2_n_0 ;
  wire \bcd_cnt[15]_i_1_n_0 ;
  wire \bcd_cnt[16]_i_1_n_0 ;
  wire \bcd_cnt[17]_i_1_n_0 ;
  wire \bcd_cnt[17]_i_2_n_0 ;
  wire \bcd_cnt[17]_i_3_n_0 ;
  wire \bcd_cnt[17]_i_4_n_0 ;
  wire \bcd_cnt[17]_i_5_n_0 ;
  wire \bcd_cnt[18]_i_1_n_0 ;
  wire \bcd_cnt[19]_i_1_n_0 ;
  wire \bcd_cnt[19]_i_2_n_0 ;
  wire \bcd_cnt[19]_i_3_n_0 ;
  wire \bcd_cnt[19]_i_4_n_0 ;
  wire \bcd_cnt[19]_i_5_n_0 ;
  wire \bcd_cnt[1]_i_1_n_0 ;
  wire \bcd_cnt[2]_i_1_n_0 ;
  wire \bcd_cnt[3]_i_1_n_0 ;
  wire \bcd_cnt[4]_i_1_n_0 ;
  wire \bcd_cnt[5]_i_1_n_0 ;
  wire \bcd_cnt[6]_i_1_n_0 ;
  wire \bcd_cnt[7]_i_1__0_n_0 ;
  wire \bcd_cnt[8]_i_1_n_0 ;
  wire \bcd_cnt[9]_i_1_n_0 ;
  wire \bcd_cnt_reg_n_0_[0] ;
  wire \bcd_cnt_reg_n_0_[10] ;
  wire \bcd_cnt_reg_n_0_[11] ;
  wire \bcd_cnt_reg_n_0_[12] ;
  wire \bcd_cnt_reg_n_0_[13] ;
  wire \bcd_cnt_reg_n_0_[14] ;
  wire \bcd_cnt_reg_n_0_[15] ;
  wire \bcd_cnt_reg_n_0_[1] ;
  wire \bcd_cnt_reg_n_0_[2] ;
  wire \bcd_cnt_reg_n_0_[3] ;
  wire \bcd_cnt_reg_n_0_[4] ;
  wire \bcd_cnt_reg_n_0_[5] ;
  wire \bcd_cnt_reg_n_0_[6] ;
  wire \bcd_cnt_reg_n_0_[7] ;
  wire \bcd_cnt_reg_n_0_[8] ;
  wire \bcd_cnt_reg_n_0_[9] ;
  wire clk;
  wire [7:0]clk_mhz;
  wire cnt_rst;
  wire cnt_rst_carry__0_i_10_n_0;
  wire cnt_rst_carry__0_i_1_n_0;
  wire cnt_rst_carry__0_i_2_n_0;
  wire cnt_rst_carry__0_i_3_n_0;
  wire cnt_rst_carry__0_i_4_n_0;
  wire cnt_rst_carry__0_i_5_n_0;
  wire cnt_rst_carry__0_i_6_n_0;
  wire cnt_rst_carry__0_i_7_n_0;
  wire cnt_rst_carry__0_i_8_n_0;
  wire cnt_rst_carry__0_i_9_n_0;
  wire cnt_rst_carry__0_n_2;
  wire cnt_rst_carry__0_n_3;
  wire cnt_rst_carry_i_1_n_0;
  wire cnt_rst_carry_i_2_n_0;
  wire cnt_rst_carry_i_3_n_0;
  wire cnt_rst_carry_i_4_n_0;
  wire cnt_rst_carry_i_5_n_0;
  wire cnt_rst_carry_i_6_n_0;
  wire cnt_rst_carry_i_7_n_0;
  wire cnt_rst_carry_i_8_n_0;
  wire cnt_rst_carry_n_0;
  wire cnt_rst_carry_n_1;
  wire cnt_rst_carry_n_2;
  wire cnt_rst_carry_n_3;
  wire cnt_up;
  wire [31:0]milcnt;
  wire \milcnt[0]_i_2_n_0 ;
  wire milcnt_o0_carry__0_i_1_n_0;
  wire milcnt_o0_carry__0_i_2_n_0;
  wire milcnt_o0_carry__0_i_3_n_0;
  wire milcnt_o0_carry__0_i_4_n_0;
  wire milcnt_o0_carry__0_n_0;
  wire milcnt_o0_carry__0_n_1;
  wire milcnt_o0_carry__0_n_2;
  wire milcnt_o0_carry__0_n_3;
  wire milcnt_o0_carry__1_i_1_n_0;
  wire milcnt_o0_carry__1_i_2_n_0;
  wire milcnt_o0_carry__1_i_3_n_0;
  wire milcnt_o0_carry__1_i_4_n_0;
  wire milcnt_o0_carry__1_n_0;
  wire milcnt_o0_carry__1_n_1;
  wire milcnt_o0_carry__1_n_2;
  wire milcnt_o0_carry__1_n_3;
  wire milcnt_o0_carry__2_i_1_n_0;
  wire milcnt_o0_carry__2_i_2_n_0;
  wire milcnt_o0_carry__2_i_3_n_0;
  wire milcnt_o0_carry__2_i_4_n_0;
  wire milcnt_o0_carry__2_n_0;
  wire milcnt_o0_carry__2_n_1;
  wire milcnt_o0_carry__2_n_2;
  wire milcnt_o0_carry__2_n_3;
  wire milcnt_o0_carry__3_i_1_n_0;
  wire milcnt_o0_carry__3_i_2_n_0;
  wire milcnt_o0_carry__3_i_3_n_0;
  wire milcnt_o0_carry__3_i_4_n_0;
  wire milcnt_o0_carry__3_n_0;
  wire milcnt_o0_carry__3_n_1;
  wire milcnt_o0_carry__3_n_2;
  wire milcnt_o0_carry__3_n_3;
  wire milcnt_o0_carry__4_i_1_n_0;
  wire milcnt_o0_carry__4_i_2_n_0;
  wire milcnt_o0_carry__4_i_3_n_0;
  wire milcnt_o0_carry__4_i_4_n_0;
  wire milcnt_o0_carry__4_n_0;
  wire milcnt_o0_carry__4_n_1;
  wire milcnt_o0_carry__4_n_2;
  wire milcnt_o0_carry__4_n_3;
  wire milcnt_o0_carry__5_i_1_n_0;
  wire milcnt_o0_carry__5_i_2_n_0;
  wire milcnt_o0_carry__5_i_3_n_0;
  wire milcnt_o0_carry__5_i_4_n_0;
  wire milcnt_o0_carry__5_n_0;
  wire milcnt_o0_carry__5_n_1;
  wire milcnt_o0_carry__5_n_2;
  wire milcnt_o0_carry__5_n_3;
  wire milcnt_o0_carry__6_i_1_n_0;
  wire milcnt_o0_carry__6_i_2_n_0;
  wire milcnt_o0_carry__6_i_3_n_0;
  wire milcnt_o0_carry__6_i_4_n_0;
  wire milcnt_o0_carry__6_n_1;
  wire milcnt_o0_carry__6_n_2;
  wire milcnt_o0_carry__6_n_3;
  wire milcnt_o0_carry_i_1_n_0;
  wire milcnt_o0_carry_i_2_n_0;
  wire milcnt_o0_carry_i_3_n_0;
  wire milcnt_o0_carry_i_4_n_0;
  wire milcnt_o0_carry_n_0;
  wire milcnt_o0_carry_n_1;
  wire milcnt_o0_carry_n_2;
  wire milcnt_o0_carry_n_3;
  wire [31:0]milcnt_reg;
  wire \milcnt_reg[0]_i_1_n_0 ;
  wire \milcnt_reg[0]_i_1_n_1 ;
  wire \milcnt_reg[0]_i_1_n_2 ;
  wire \milcnt_reg[0]_i_1_n_3 ;
  wire \milcnt_reg[0]_i_1_n_4 ;
  wire \milcnt_reg[0]_i_1_n_5 ;
  wire \milcnt_reg[0]_i_1_n_6 ;
  wire \milcnt_reg[0]_i_1_n_7 ;
  wire \milcnt_reg[12]_i_1_n_0 ;
  wire \milcnt_reg[12]_i_1_n_1 ;
  wire \milcnt_reg[12]_i_1_n_2 ;
  wire \milcnt_reg[12]_i_1_n_3 ;
  wire \milcnt_reg[12]_i_1_n_4 ;
  wire \milcnt_reg[12]_i_1_n_5 ;
  wire \milcnt_reg[12]_i_1_n_6 ;
  wire \milcnt_reg[12]_i_1_n_7 ;
  wire \milcnt_reg[16]_i_1_n_0 ;
  wire \milcnt_reg[16]_i_1_n_1 ;
  wire \milcnt_reg[16]_i_1_n_2 ;
  wire \milcnt_reg[16]_i_1_n_3 ;
  wire \milcnt_reg[16]_i_1_n_4 ;
  wire \milcnt_reg[16]_i_1_n_5 ;
  wire \milcnt_reg[16]_i_1_n_6 ;
  wire \milcnt_reg[16]_i_1_n_7 ;
  wire \milcnt_reg[20]_i_1_n_0 ;
  wire \milcnt_reg[20]_i_1_n_1 ;
  wire \milcnt_reg[20]_i_1_n_2 ;
  wire \milcnt_reg[20]_i_1_n_3 ;
  wire \milcnt_reg[20]_i_1_n_4 ;
  wire \milcnt_reg[20]_i_1_n_5 ;
  wire \milcnt_reg[20]_i_1_n_6 ;
  wire \milcnt_reg[20]_i_1_n_7 ;
  wire \milcnt_reg[24]_i_1_n_0 ;
  wire \milcnt_reg[24]_i_1_n_1 ;
  wire \milcnt_reg[24]_i_1_n_2 ;
  wire \milcnt_reg[24]_i_1_n_3 ;
  wire \milcnt_reg[24]_i_1_n_4 ;
  wire \milcnt_reg[24]_i_1_n_5 ;
  wire \milcnt_reg[24]_i_1_n_6 ;
  wire \milcnt_reg[24]_i_1_n_7 ;
  wire \milcnt_reg[28]_i_1_n_1 ;
  wire \milcnt_reg[28]_i_1_n_2 ;
  wire \milcnt_reg[28]_i_1_n_3 ;
  wire \milcnt_reg[28]_i_1_n_4 ;
  wire \milcnt_reg[28]_i_1_n_5 ;
  wire \milcnt_reg[28]_i_1_n_6 ;
  wire \milcnt_reg[28]_i_1_n_7 ;
  wire \milcnt_reg[4]_i_1_n_0 ;
  wire \milcnt_reg[4]_i_1_n_1 ;
  wire \milcnt_reg[4]_i_1_n_2 ;
  wire \milcnt_reg[4]_i_1_n_3 ;
  wire \milcnt_reg[4]_i_1_n_4 ;
  wire \milcnt_reg[4]_i_1_n_5 ;
  wire \milcnt_reg[4]_i_1_n_6 ;
  wire \milcnt_reg[4]_i_1_n_7 ;
  wire \milcnt_reg[8]_i_1_n_0 ;
  wire \milcnt_reg[8]_i_1_n_1 ;
  wire \milcnt_reg[8]_i_1_n_2 ;
  wire \milcnt_reg[8]_i_1_n_3 ;
  wire \milcnt_reg[8]_i_1_n_4 ;
  wire \milcnt_reg[8]_i_1_n_5 ;
  wire \milcnt_reg[8]_i_1_n_6 ;
  wire \milcnt_reg[8]_i_1_n_7 ;
  wire [31:0]milofs;
  wire [3:0]p_0_in;
  wire rst_n;
  wire simumd;
  wire tckcnt0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \bcd_cnt[0]_i_1__0 
       (.I0(\bcd_cnt_reg_n_0_[0] ),
        .O(\bcd_cnt[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h9AAA)) 
    \bcd_cnt[10]_i_1 
       (.I0(\bcd_cnt_reg_n_0_[10] ),
        .I1(\bcd_cnt[11]_i_2_n_0 ),
        .I2(\bcd_cnt_reg_n_0_[8] ),
        .I3(\bcd_cnt_reg_n_0_[9] ),
        .O(\bcd_cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \bcd_cnt[11]_i_1 
       (.I0(\bcd_cnt[14]_i_2_n_0 ),
        .I1(\bcd_cnt_reg_n_0_[10] ),
        .I2(\bcd_cnt[11]_i_2_n_0 ),
        .I3(\bcd_cnt_reg_n_0_[8] ),
        .I4(\bcd_cnt_reg_n_0_[9] ),
        .I5(\bcd_cnt_reg_n_0_[11] ),
        .O(\bcd_cnt[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \bcd_cnt[11]_i_2 
       (.I0(\bcd_cnt[17]_i_4_n_0 ),
        .I1(\bcd_cnt_reg_n_0_[4] ),
        .I2(\bcd_cnt_reg_n_0_[7] ),
        .I3(\bcd_cnt_reg_n_0_[6] ),
        .I4(\bcd_cnt_reg_n_0_[5] ),
        .O(\bcd_cnt[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bcd_cnt[12]_i_1 
       (.I0(\bcd_cnt_reg_n_0_[12] ),
        .I1(\bcd_cnt[14]_i_2_n_0 ),
        .O(\bcd_cnt[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCCC6466)) 
    \bcd_cnt[13]_i_1 
       (.I0(\bcd_cnt_reg_n_0_[12] ),
        .I1(\bcd_cnt_reg_n_0_[13] ),
        .I2(\bcd_cnt_reg_n_0_[14] ),
        .I3(\bcd_cnt_reg_n_0_[15] ),
        .I4(\bcd_cnt[14]_i_2_n_0 ),
        .O(\bcd_cnt[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF078)) 
    \bcd_cnt[14]_i_1 
       (.I0(\bcd_cnt_reg_n_0_[12] ),
        .I1(\bcd_cnt_reg_n_0_[13] ),
        .I2(\bcd_cnt_reg_n_0_[14] ),
        .I3(\bcd_cnt[14]_i_2_n_0 ),
        .O(\bcd_cnt[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \bcd_cnt[14]_i_2 
       (.I0(\bcd_cnt[17]_i_4_n_0 ),
        .I1(\bcd_cnt_reg_n_0_[8] ),
        .I2(\bcd_cnt_reg_n_0_[11] ),
        .I3(\bcd_cnt_reg_n_0_[9] ),
        .I4(\bcd_cnt_reg_n_0_[10] ),
        .I5(\bcd_cnt[17]_i_5_n_0 ),
        .O(\bcd_cnt[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7D00000080)) 
    \bcd_cnt[15]_i_1 
       (.I0(\bcd_cnt_reg_n_0_[12] ),
        .I1(\bcd_cnt_reg_n_0_[13] ),
        .I2(\bcd_cnt_reg_n_0_[14] ),
        .I3(\bcd_cnt[17]_i_2_n_0 ),
        .I4(\bcd_cnt[17]_i_4_n_0 ),
        .I5(\bcd_cnt_reg_n_0_[15] ),
        .O(\bcd_cnt[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \bcd_cnt[16]_i_1 
       (.I0(p_0_in[0]),
        .I1(\bcd_cnt[17]_i_2_n_0 ),
        .I2(\bcd_cnt[17]_i_3_n_0 ),
        .I3(\bcd_cnt[17]_i_4_n_0 ),
        .O(\bcd_cnt[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA6)) 
    \bcd_cnt[17]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\bcd_cnt[17]_i_2_n_0 ),
        .I3(\bcd_cnt[17]_i_3_n_0 ),
        .I4(\bcd_cnt[17]_i_4_n_0 ),
        .O(\bcd_cnt[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \bcd_cnt[17]_i_2 
       (.I0(\bcd_cnt[17]_i_5_n_0 ),
        .I1(\bcd_cnt_reg_n_0_[10] ),
        .I2(\bcd_cnt_reg_n_0_[9] ),
        .I3(\bcd_cnt_reg_n_0_[11] ),
        .I4(\bcd_cnt_reg_n_0_[8] ),
        .O(\bcd_cnt[17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \bcd_cnt[17]_i_3 
       (.I0(\bcd_cnt_reg_n_0_[15] ),
        .I1(\bcd_cnt_reg_n_0_[14] ),
        .I2(\bcd_cnt_reg_n_0_[13] ),
        .I3(\bcd_cnt_reg_n_0_[12] ),
        .O(\bcd_cnt[17]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \bcd_cnt[17]_i_4 
       (.I0(\bcd_cnt_reg_n_0_[0] ),
        .I1(\bcd_cnt_reg_n_0_[3] ),
        .I2(\bcd_cnt_reg_n_0_[2] ),
        .I3(\bcd_cnt_reg_n_0_[1] ),
        .O(\bcd_cnt[17]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \bcd_cnt[17]_i_5 
       (.I0(\bcd_cnt_reg_n_0_[5] ),
        .I1(\bcd_cnt_reg_n_0_[6] ),
        .I2(\bcd_cnt_reg_n_0_[7] ),
        .I3(\bcd_cnt_reg_n_0_[4] ),
        .O(\bcd_cnt[17]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bcd_cnt[18]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\bcd_cnt[19]_i_4_n_0 ),
        .O(\bcd_cnt[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \bcd_cnt[19]_i_1 
       (.I0(\bcd_cnt[19]_i_3_n_0 ),
        .I1(Q),
        .I2(rst_n),
        .I3(cnt_rst),
        .O(\bcd_cnt[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \bcd_cnt[19]_i_2 
       (.I0(p_0_in[3]),
        .I1(\bcd_cnt[19]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .O(\bcd_cnt[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \bcd_cnt[19]_i_3 
       (.I0(\bcd_cnt_reg_n_0_[15] ),
        .I1(\bcd_cnt_reg_n_0_[14] ),
        .I2(\bcd_cnt_reg_n_0_[13] ),
        .I3(\bcd_cnt_reg_n_0_[12] ),
        .I4(\bcd_cnt[17]_i_2_n_0 ),
        .I5(\bcd_cnt[19]_i_5_n_0 ),
        .O(\bcd_cnt[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \bcd_cnt[19]_i_4 
       (.I0(\bcd_cnt[17]_i_4_n_0 ),
        .I1(\bcd_cnt_reg_n_0_[15] ),
        .I2(\bcd_cnt_reg_n_0_[14] ),
        .I3(\bcd_cnt_reg_n_0_[13] ),
        .I4(\bcd_cnt_reg_n_0_[12] ),
        .I5(\bcd_cnt[17]_i_2_n_0 ),
        .O(\bcd_cnt[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \bcd_cnt[19]_i_5 
       (.I0(\bcd_cnt[17]_i_4_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[3]),
        .O(\bcd_cnt[19]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0FB0)) 
    \bcd_cnt[1]_i_1 
       (.I0(\bcd_cnt_reg_n_0_[2] ),
        .I1(\bcd_cnt_reg_n_0_[3] ),
        .I2(\bcd_cnt_reg_n_0_[0] ),
        .I3(\bcd_cnt_reg_n_0_[1] ),
        .O(\bcd_cnt[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \bcd_cnt[2]_i_1 
       (.I0(\bcd_cnt_reg_n_0_[2] ),
        .I1(\bcd_cnt_reg_n_0_[0] ),
        .I2(\bcd_cnt_reg_n_0_[1] ),
        .O(\bcd_cnt[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7B80)) 
    \bcd_cnt[3]_i_1 
       (.I0(\bcd_cnt_reg_n_0_[2] ),
        .I1(\bcd_cnt_reg_n_0_[0] ),
        .I2(\bcd_cnt_reg_n_0_[1] ),
        .I3(\bcd_cnt_reg_n_0_[3] ),
        .O(\bcd_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA6A)) 
    \bcd_cnt[4]_i_1 
       (.I0(\bcd_cnt_reg_n_0_[4] ),
        .I1(\bcd_cnt_reg_n_0_[0] ),
        .I2(\bcd_cnt_reg_n_0_[3] ),
        .I3(\bcd_cnt_reg_n_0_[2] ),
        .I4(\bcd_cnt_reg_n_0_[1] ),
        .O(\bcd_cnt[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9899AAAA)) 
    \bcd_cnt[5]_i_1 
       (.I0(\bcd_cnt_reg_n_0_[5] ),
        .I1(\bcd_cnt[17]_i_4_n_0 ),
        .I2(\bcd_cnt_reg_n_0_[6] ),
        .I3(\bcd_cnt_reg_n_0_[7] ),
        .I4(\bcd_cnt_reg_n_0_[4] ),
        .O(\bcd_cnt[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9AAA)) 
    \bcd_cnt[6]_i_1 
       (.I0(\bcd_cnt_reg_n_0_[6] ),
        .I1(\bcd_cnt[17]_i_4_n_0 ),
        .I2(\bcd_cnt_reg_n_0_[4] ),
        .I3(\bcd_cnt_reg_n_0_[5] ),
        .O(\bcd_cnt[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9AA8AAAA)) 
    \bcd_cnt[7]_i_1__0 
       (.I0(\bcd_cnt_reg_n_0_[7] ),
        .I1(\bcd_cnt[17]_i_4_n_0 ),
        .I2(\bcd_cnt_reg_n_0_[5] ),
        .I3(\bcd_cnt_reg_n_0_[6] ),
        .I4(\bcd_cnt_reg_n_0_[4] ),
        .O(\bcd_cnt[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA9AAAAAA)) 
    \bcd_cnt[8]_i_1 
       (.I0(\bcd_cnt_reg_n_0_[8] ),
        .I1(\bcd_cnt_reg_n_0_[5] ),
        .I2(\bcd_cnt_reg_n_0_[6] ),
        .I3(\bcd_cnt_reg_n_0_[7] ),
        .I4(\bcd_cnt_reg_n_0_[4] ),
        .I5(\bcd_cnt[17]_i_4_n_0 ),
        .O(\bcd_cnt[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A20)) 
    \bcd_cnt[9]_i_1 
       (.I0(\bcd_cnt[14]_i_2_n_0 ),
        .I1(\bcd_cnt[11]_i_2_n_0 ),
        .I2(\bcd_cnt_reg_n_0_[8] ),
        .I3(\bcd_cnt_reg_n_0_[9] ),
        .O(\bcd_cnt[9]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[0]_i_1__0_n_0 ),
        .Q(\bcd_cnt_reg_n_0_[0] ),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[10]_i_1_n_0 ),
        .Q(\bcd_cnt_reg_n_0_[10] ),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[11]_i_1_n_0 ),
        .Q(\bcd_cnt_reg_n_0_[11] ),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[12]_i_1_n_0 ),
        .Q(\bcd_cnt_reg_n_0_[12] ),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[13]_i_1_n_0 ),
        .Q(\bcd_cnt_reg_n_0_[13] ),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[14]_i_1_n_0 ),
        .Q(\bcd_cnt_reg_n_0_[14] ),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[15]_i_1_n_0 ),
        .Q(\bcd_cnt_reg_n_0_[15] ),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[16] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[16]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[17]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[18]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[19]_i_2_n_0 ),
        .Q(p_0_in[3]),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[1]_i_1_n_0 ),
        .Q(\bcd_cnt_reg_n_0_[1] ),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[2]_i_1_n_0 ),
        .Q(\bcd_cnt_reg_n_0_[2] ),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[3]_i_1_n_0 ),
        .Q(\bcd_cnt_reg_n_0_[3] ),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[4]_i_1_n_0 ),
        .Q(\bcd_cnt_reg_n_0_[4] ),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[5]_i_1_n_0 ),
        .Q(\bcd_cnt_reg_n_0_[5] ),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[6]_i_1_n_0 ),
        .Q(\bcd_cnt_reg_n_0_[6] ),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[7]_i_1__0_n_0 ),
        .Q(\bcd_cnt_reg_n_0_[7] ),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[8]_i_1_n_0 ),
        .Q(\bcd_cnt_reg_n_0_[8] ),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  FDRE \bcd_cnt_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcd_cnt[9]_i_1_n_0 ),
        .Q(\bcd_cnt_reg_n_0_[9] ),
        .R(\bcd_cnt[19]_i_1_n_0 ));
  CARRY4 cnt_rst_carry
       (.CI(\<const0> ),
        .CO({cnt_rst_carry_n_0,cnt_rst_carry_n_1,cnt_rst_carry_n_2,cnt_rst_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({cnt_rst_carry_i_1_n_0,cnt_rst_carry_i_2_n_0,cnt_rst_carry_i_3_n_0,cnt_rst_carry_i_4_n_0}));
  CARRY4 cnt_rst_carry__0
       (.CI(cnt_rst_carry_n_0),
        .CO({cnt_rst,cnt_rst_carry__0_n_2,cnt_rst_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,cnt_rst_carry__0_i_1_n_0,cnt_rst_carry__0_i_2_n_0,cnt_rst_carry__0_i_3_n_0}));
  LUT6 #(
    .INIT(64'h2112211224488112)) 
    cnt_rst_carry__0_i_1
       (.I0(cnt_rst_carry__0_i_4_n_0),
        .I1(cnt_rst_carry__0_i_5_n_0),
        .I2(p_0_in[2]),
        .I3(cnt_rst_carry__0_i_6_n_0),
        .I4(p_0_in[3]),
        .I5(\bcd_cnt[19]_i_3_n_0 ),
        .O(cnt_rst_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0F87F0780F870F87)) 
    cnt_rst_carry__0_i_10
       (.I0(\bcd_cnt_reg_n_0_[12] ),
        .I1(\bcd_cnt_reg_n_0_[13] ),
        .I2(\bcd_cnt_reg_n_0_[14] ),
        .I3(\bcd_cnt[14]_i_2_n_0 ),
        .I4(simumd),
        .I5(clk_mhz[2]),
        .O(cnt_rst_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000065000065)) 
    cnt_rst_carry__0_i_2
       (.I0(cnt_rst_carry__0_i_7_n_0),
        .I1(\bcd_cnt[19]_i_3_n_0 ),
        .I2(\bcd_cnt[17]_i_1_n_0 ),
        .I3(\bcd_cnt[15]_i_1_n_0 ),
        .I4(cnt_rst_carry__0_i_8_n_0),
        .I5(cnt_rst_carry__0_i_9_n_0),
        .O(cnt_rst_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0802202000002822)) 
    cnt_rst_carry__0_i_3
       (.I0(cnt_rst_carry__0_i_10_n_0),
        .I1(\bcd_cnt[12]_i_1_n_0 ),
        .I2(simumd),
        .I3(clk_mhz[0]),
        .I4(\bcd_cnt[13]_i_1_n_0 ),
        .I5(clk_mhz[1]),
        .O(cnt_rst_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    cnt_rst_carry__0_i_4
       (.I0(simumd),
        .I1(clk_mhz[6]),
        .O(cnt_rst_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_rst_carry__0_i_5
       (.I0(clk_mhz[7]),
        .I1(simumd),
        .O(cnt_rst_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h01000000)) 
    cnt_rst_carry__0_i_6
       (.I0(\bcd_cnt[17]_i_2_n_0 ),
        .I1(\bcd_cnt[17]_i_3_n_0 ),
        .I2(\bcd_cnt[17]_i_4_n_0 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(cnt_rst_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_rst_carry__0_i_7
       (.I0(clk_mhz[5]),
        .I1(simumd),
        .O(cnt_rst_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_rst_carry__0_i_8
       (.I0(clk_mhz[3]),
        .I1(simumd),
        .O(cnt_rst_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hFE0101FEFE01FE01)) 
    cnt_rst_carry__0_i_9
       (.I0(\bcd_cnt[17]_i_4_n_0 ),
        .I1(\bcd_cnt[17]_i_3_n_0 ),
        .I2(\bcd_cnt[17]_i_2_n_0 ),
        .I3(p_0_in[0]),
        .I4(simumd),
        .I5(clk_mhz[4]),
        .O(cnt_rst_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h0900000900050005)) 
    cnt_rst_carry_i_1
       (.I0(\bcd_cnt[11]_i_1_n_0 ),
        .I1(clk_mhz[7]),
        .I2(cnt_rst_carry_i_5_n_0),
        .I3(\bcd_cnt[9]_i_1_n_0 ),
        .I4(clk_mhz[5]),
        .I5(simumd),
        .O(cnt_rst_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h06000006000C000C)) 
    cnt_rst_carry_i_2
       (.I0(clk_mhz[3]),
        .I1(cnt_rst_carry_i_6_n_0),
        .I2(cnt_rst_carry_i_7_n_0),
        .I3(\bcd_cnt[8]_i_1_n_0 ),
        .I4(clk_mhz[4]),
        .I5(simumd),
        .O(cnt_rst_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000060060C0C)) 
    cnt_rst_carry_i_3
       (.I0(clk_mhz[1]),
        .I1(cnt_rst_carry_i_8_n_0),
        .I2(\bcd_cnt[4]_i_1_n_0 ),
        .I3(clk_mhz[0]),
        .I4(simumd),
        .I5(\bcd_cnt[3]_i_1_n_0 ),
        .O(cnt_rst_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hC020)) 
    cnt_rst_carry_i_4
       (.I0(\bcd_cnt_reg_n_0_[3] ),
        .I1(\bcd_cnt_reg_n_0_[1] ),
        .I2(\bcd_cnt_reg_n_0_[0] ),
        .I3(\bcd_cnt_reg_n_0_[2] ),
        .O(cnt_rst_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h08F7F708F708F708)) 
    cnt_rst_carry_i_5
       (.I0(\bcd_cnt_reg_n_0_[9] ),
        .I1(\bcd_cnt_reg_n_0_[8] ),
        .I2(\bcd_cnt[11]_i_2_n_0 ),
        .I3(\bcd_cnt_reg_n_0_[10] ),
        .I4(clk_mhz[6]),
        .I5(simumd),
        .O(cnt_rst_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h0082FF7F)) 
    cnt_rst_carry_i_6
       (.I0(\bcd_cnt_reg_n_0_[4] ),
        .I1(\bcd_cnt_reg_n_0_[6] ),
        .I2(\bcd_cnt_reg_n_0_[5] ),
        .I3(\bcd_cnt[17]_i_4_n_0 ),
        .I4(\bcd_cnt_reg_n_0_[7] ),
        .O(cnt_rst_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h08F7F708F708F708)) 
    cnt_rst_carry_i_7
       (.I0(\bcd_cnt_reg_n_0_[5] ),
        .I1(\bcd_cnt_reg_n_0_[4] ),
        .I2(\bcd_cnt[17]_i_4_n_0 ),
        .I3(\bcd_cnt_reg_n_0_[6] ),
        .I4(clk_mhz[2]),
        .I5(simumd),
        .O(cnt_rst_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h00AAFF5D)) 
    cnt_rst_carry_i_8
       (.I0(\bcd_cnt_reg_n_0_[4] ),
        .I1(\bcd_cnt_reg_n_0_[7] ),
        .I2(\bcd_cnt_reg_n_0_[6] ),
        .I3(\bcd_cnt[17]_i_4_n_0 ),
        .I4(\bcd_cnt_reg_n_0_[5] ),
        .O(cnt_rst_carry_i_8_n_0));
  FDRE cnt_up_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(cnt_rst),
        .Q(cnt_up),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \milcnt[0]_i_2 
       (.I0(milcnt_reg[0]),
        .O(\milcnt[0]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 milcnt_o0_carry
       (.CI(\<const0> ),
        .CO({milcnt_o0_carry_n_0,milcnt_o0_carry_n_1,milcnt_o0_carry_n_2,milcnt_o0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI(milcnt_reg[3:0]),
        .O(milcnt[3:0]),
        .S({milcnt_o0_carry_i_1_n_0,milcnt_o0_carry_i_2_n_0,milcnt_o0_carry_i_3_n_0,milcnt_o0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 milcnt_o0_carry__0
       (.CI(milcnt_o0_carry_n_0),
        .CO({milcnt_o0_carry__0_n_0,milcnt_o0_carry__0_n_1,milcnt_o0_carry__0_n_2,milcnt_o0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(milcnt_reg[7:4]),
        .O(milcnt[7:4]),
        .S({milcnt_o0_carry__0_i_1_n_0,milcnt_o0_carry__0_i_2_n_0,milcnt_o0_carry__0_i_3_n_0,milcnt_o0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__0_i_1
       (.I0(milcnt_reg[7]),
        .I1(milofs[7]),
        .O(milcnt_o0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__0_i_2
       (.I0(milcnt_reg[6]),
        .I1(milofs[6]),
        .O(milcnt_o0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__0_i_3
       (.I0(milcnt_reg[5]),
        .I1(milofs[5]),
        .O(milcnt_o0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__0_i_4
       (.I0(milcnt_reg[4]),
        .I1(milofs[4]),
        .O(milcnt_o0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 milcnt_o0_carry__1
       (.CI(milcnt_o0_carry__0_n_0),
        .CO({milcnt_o0_carry__1_n_0,milcnt_o0_carry__1_n_1,milcnt_o0_carry__1_n_2,milcnt_o0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(milcnt_reg[11:8]),
        .O(milcnt[11:8]),
        .S({milcnt_o0_carry__1_i_1_n_0,milcnt_o0_carry__1_i_2_n_0,milcnt_o0_carry__1_i_3_n_0,milcnt_o0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__1_i_1
       (.I0(milcnt_reg[11]),
        .I1(milofs[11]),
        .O(milcnt_o0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__1_i_2
       (.I0(milcnt_reg[10]),
        .I1(milofs[10]),
        .O(milcnt_o0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__1_i_3
       (.I0(milcnt_reg[9]),
        .I1(milofs[9]),
        .O(milcnt_o0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__1_i_4
       (.I0(milcnt_reg[8]),
        .I1(milofs[8]),
        .O(milcnt_o0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 milcnt_o0_carry__2
       (.CI(milcnt_o0_carry__1_n_0),
        .CO({milcnt_o0_carry__2_n_0,milcnt_o0_carry__2_n_1,milcnt_o0_carry__2_n_2,milcnt_o0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(milcnt_reg[15:12]),
        .O(milcnt[15:12]),
        .S({milcnt_o0_carry__2_i_1_n_0,milcnt_o0_carry__2_i_2_n_0,milcnt_o0_carry__2_i_3_n_0,milcnt_o0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__2_i_1
       (.I0(milcnt_reg[15]),
        .I1(milofs[15]),
        .O(milcnt_o0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__2_i_2
       (.I0(milcnt_reg[14]),
        .I1(milofs[14]),
        .O(milcnt_o0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__2_i_3
       (.I0(milcnt_reg[13]),
        .I1(milofs[13]),
        .O(milcnt_o0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__2_i_4
       (.I0(milcnt_reg[12]),
        .I1(milofs[12]),
        .O(milcnt_o0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 milcnt_o0_carry__3
       (.CI(milcnt_o0_carry__2_n_0),
        .CO({milcnt_o0_carry__3_n_0,milcnt_o0_carry__3_n_1,milcnt_o0_carry__3_n_2,milcnt_o0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(milcnt_reg[19:16]),
        .O(milcnt[19:16]),
        .S({milcnt_o0_carry__3_i_1_n_0,milcnt_o0_carry__3_i_2_n_0,milcnt_o0_carry__3_i_3_n_0,milcnt_o0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__3_i_1
       (.I0(milcnt_reg[19]),
        .I1(milofs[19]),
        .O(milcnt_o0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__3_i_2
       (.I0(milcnt_reg[18]),
        .I1(milofs[18]),
        .O(milcnt_o0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__3_i_3
       (.I0(milcnt_reg[17]),
        .I1(milofs[17]),
        .O(milcnt_o0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__3_i_4
       (.I0(milcnt_reg[16]),
        .I1(milofs[16]),
        .O(milcnt_o0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 milcnt_o0_carry__4
       (.CI(milcnt_o0_carry__3_n_0),
        .CO({milcnt_o0_carry__4_n_0,milcnt_o0_carry__4_n_1,milcnt_o0_carry__4_n_2,milcnt_o0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI(milcnt_reg[23:20]),
        .O(milcnt[23:20]),
        .S({milcnt_o0_carry__4_i_1_n_0,milcnt_o0_carry__4_i_2_n_0,milcnt_o0_carry__4_i_3_n_0,milcnt_o0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__4_i_1
       (.I0(milcnt_reg[23]),
        .I1(milofs[23]),
        .O(milcnt_o0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__4_i_2
       (.I0(milcnt_reg[22]),
        .I1(milofs[22]),
        .O(milcnt_o0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__4_i_3
       (.I0(milcnt_reg[21]),
        .I1(milofs[21]),
        .O(milcnt_o0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__4_i_4
       (.I0(milcnt_reg[20]),
        .I1(milofs[20]),
        .O(milcnt_o0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 milcnt_o0_carry__5
       (.CI(milcnt_o0_carry__4_n_0),
        .CO({milcnt_o0_carry__5_n_0,milcnt_o0_carry__5_n_1,milcnt_o0_carry__5_n_2,milcnt_o0_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI(milcnt_reg[27:24]),
        .O(milcnt[27:24]),
        .S({milcnt_o0_carry__5_i_1_n_0,milcnt_o0_carry__5_i_2_n_0,milcnt_o0_carry__5_i_3_n_0,milcnt_o0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__5_i_1
       (.I0(milcnt_reg[27]),
        .I1(milofs[27]),
        .O(milcnt_o0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__5_i_2
       (.I0(milcnt_reg[26]),
        .I1(milofs[26]),
        .O(milcnt_o0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__5_i_3
       (.I0(milcnt_reg[25]),
        .I1(milofs[25]),
        .O(milcnt_o0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__5_i_4
       (.I0(milcnt_reg[24]),
        .I1(milofs[24]),
        .O(milcnt_o0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 milcnt_o0_carry__6
       (.CI(milcnt_o0_carry__5_n_0),
        .CO({milcnt_o0_carry__6_n_1,milcnt_o0_carry__6_n_2,milcnt_o0_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,milcnt_reg[30:28]}),
        .O(milcnt[31:28]),
        .S({milcnt_o0_carry__6_i_1_n_0,milcnt_o0_carry__6_i_2_n_0,milcnt_o0_carry__6_i_3_n_0,milcnt_o0_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__6_i_1
       (.I0(milcnt_reg[31]),
        .I1(milofs[31]),
        .O(milcnt_o0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__6_i_2
       (.I0(milcnt_reg[30]),
        .I1(milofs[30]),
        .O(milcnt_o0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__6_i_3
       (.I0(milcnt_reg[29]),
        .I1(milofs[29]),
        .O(milcnt_o0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry__6_i_4
       (.I0(milcnt_reg[28]),
        .I1(milofs[28]),
        .O(milcnt_o0_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry_i_1
       (.I0(milcnt_reg[3]),
        .I1(milofs[3]),
        .O(milcnt_o0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry_i_2
       (.I0(milcnt_reg[2]),
        .I1(milofs[2]),
        .O(milcnt_o0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry_i_3
       (.I0(milcnt_reg[1]),
        .I1(milofs[1]),
        .O(milcnt_o0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    milcnt_o0_carry_i_4
       (.I0(milcnt_reg[0]),
        .I1(milofs[0]),
        .O(milcnt_o0_carry_i_4_n_0));
  FDRE \milcnt_reg[0] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[0]_i_1_n_7 ),
        .Q(milcnt_reg[0]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \milcnt_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\milcnt_reg[0]_i_1_n_0 ,\milcnt_reg[0]_i_1_n_1 ,\milcnt_reg[0]_i_1_n_2 ,\milcnt_reg[0]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\milcnt_reg[0]_i_1_n_4 ,\milcnt_reg[0]_i_1_n_5 ,\milcnt_reg[0]_i_1_n_6 ,\milcnt_reg[0]_i_1_n_7 }),
        .S({milcnt_reg[3:1],\milcnt[0]_i_2_n_0 }));
  FDRE \milcnt_reg[10] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[8]_i_1_n_5 ),
        .Q(milcnt_reg[10]),
        .R(tckcnt0));
  FDRE \milcnt_reg[11] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[8]_i_1_n_4 ),
        .Q(milcnt_reg[11]),
        .R(tckcnt0));
  FDRE \milcnt_reg[12] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[12]_i_1_n_7 ),
        .Q(milcnt_reg[12]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \milcnt_reg[12]_i_1 
       (.CI(\milcnt_reg[8]_i_1_n_0 ),
        .CO({\milcnt_reg[12]_i_1_n_0 ,\milcnt_reg[12]_i_1_n_1 ,\milcnt_reg[12]_i_1_n_2 ,\milcnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\milcnt_reg[12]_i_1_n_4 ,\milcnt_reg[12]_i_1_n_5 ,\milcnt_reg[12]_i_1_n_6 ,\milcnt_reg[12]_i_1_n_7 }),
        .S(milcnt_reg[15:12]));
  FDRE \milcnt_reg[13] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[12]_i_1_n_6 ),
        .Q(milcnt_reg[13]),
        .R(tckcnt0));
  FDRE \milcnt_reg[14] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[12]_i_1_n_5 ),
        .Q(milcnt_reg[14]),
        .R(tckcnt0));
  FDRE \milcnt_reg[15] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[12]_i_1_n_4 ),
        .Q(milcnt_reg[15]),
        .R(tckcnt0));
  FDRE \milcnt_reg[16] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[16]_i_1_n_7 ),
        .Q(milcnt_reg[16]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \milcnt_reg[16]_i_1 
       (.CI(\milcnt_reg[12]_i_1_n_0 ),
        .CO({\milcnt_reg[16]_i_1_n_0 ,\milcnt_reg[16]_i_1_n_1 ,\milcnt_reg[16]_i_1_n_2 ,\milcnt_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\milcnt_reg[16]_i_1_n_4 ,\milcnt_reg[16]_i_1_n_5 ,\milcnt_reg[16]_i_1_n_6 ,\milcnt_reg[16]_i_1_n_7 }),
        .S(milcnt_reg[19:16]));
  FDRE \milcnt_reg[17] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[16]_i_1_n_6 ),
        .Q(milcnt_reg[17]),
        .R(tckcnt0));
  FDRE \milcnt_reg[18] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[16]_i_1_n_5 ),
        .Q(milcnt_reg[18]),
        .R(tckcnt0));
  FDRE \milcnt_reg[19] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[16]_i_1_n_4 ),
        .Q(milcnt_reg[19]),
        .R(tckcnt0));
  FDRE \milcnt_reg[1] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[0]_i_1_n_6 ),
        .Q(milcnt_reg[1]),
        .R(tckcnt0));
  FDRE \milcnt_reg[20] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[20]_i_1_n_7 ),
        .Q(milcnt_reg[20]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \milcnt_reg[20]_i_1 
       (.CI(\milcnt_reg[16]_i_1_n_0 ),
        .CO({\milcnt_reg[20]_i_1_n_0 ,\milcnt_reg[20]_i_1_n_1 ,\milcnt_reg[20]_i_1_n_2 ,\milcnt_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\milcnt_reg[20]_i_1_n_4 ,\milcnt_reg[20]_i_1_n_5 ,\milcnt_reg[20]_i_1_n_6 ,\milcnt_reg[20]_i_1_n_7 }),
        .S(milcnt_reg[23:20]));
  FDRE \milcnt_reg[21] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[20]_i_1_n_6 ),
        .Q(milcnt_reg[21]),
        .R(tckcnt0));
  FDRE \milcnt_reg[22] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[20]_i_1_n_5 ),
        .Q(milcnt_reg[22]),
        .R(tckcnt0));
  FDRE \milcnt_reg[23] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[20]_i_1_n_4 ),
        .Q(milcnt_reg[23]),
        .R(tckcnt0));
  FDRE \milcnt_reg[24] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[24]_i_1_n_7 ),
        .Q(milcnt_reg[24]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \milcnt_reg[24]_i_1 
       (.CI(\milcnt_reg[20]_i_1_n_0 ),
        .CO({\milcnt_reg[24]_i_1_n_0 ,\milcnt_reg[24]_i_1_n_1 ,\milcnt_reg[24]_i_1_n_2 ,\milcnt_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\milcnt_reg[24]_i_1_n_4 ,\milcnt_reg[24]_i_1_n_5 ,\milcnt_reg[24]_i_1_n_6 ,\milcnt_reg[24]_i_1_n_7 }),
        .S(milcnt_reg[27:24]));
  FDRE \milcnt_reg[25] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[24]_i_1_n_6 ),
        .Q(milcnt_reg[25]),
        .R(tckcnt0));
  FDRE \milcnt_reg[26] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[24]_i_1_n_5 ),
        .Q(milcnt_reg[26]),
        .R(tckcnt0));
  FDRE \milcnt_reg[27] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[24]_i_1_n_4 ),
        .Q(milcnt_reg[27]),
        .R(tckcnt0));
  FDRE \milcnt_reg[28] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[28]_i_1_n_7 ),
        .Q(milcnt_reg[28]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \milcnt_reg[28]_i_1 
       (.CI(\milcnt_reg[24]_i_1_n_0 ),
        .CO({\milcnt_reg[28]_i_1_n_1 ,\milcnt_reg[28]_i_1_n_2 ,\milcnt_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\milcnt_reg[28]_i_1_n_4 ,\milcnt_reg[28]_i_1_n_5 ,\milcnt_reg[28]_i_1_n_6 ,\milcnt_reg[28]_i_1_n_7 }),
        .S(milcnt_reg[31:28]));
  FDRE \milcnt_reg[29] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[28]_i_1_n_6 ),
        .Q(milcnt_reg[29]),
        .R(tckcnt0));
  FDRE \milcnt_reg[2] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[0]_i_1_n_5 ),
        .Q(milcnt_reg[2]),
        .R(tckcnt0));
  FDRE \milcnt_reg[30] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[28]_i_1_n_5 ),
        .Q(milcnt_reg[30]),
        .R(tckcnt0));
  FDRE \milcnt_reg[31] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[28]_i_1_n_4 ),
        .Q(milcnt_reg[31]),
        .R(tckcnt0));
  FDRE \milcnt_reg[3] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[0]_i_1_n_4 ),
        .Q(milcnt_reg[3]),
        .R(tckcnt0));
  FDRE \milcnt_reg[4] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[4]_i_1_n_7 ),
        .Q(milcnt_reg[4]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \milcnt_reg[4]_i_1 
       (.CI(\milcnt_reg[0]_i_1_n_0 ),
        .CO({\milcnt_reg[4]_i_1_n_0 ,\milcnt_reg[4]_i_1_n_1 ,\milcnt_reg[4]_i_1_n_2 ,\milcnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\milcnt_reg[4]_i_1_n_4 ,\milcnt_reg[4]_i_1_n_5 ,\milcnt_reg[4]_i_1_n_6 ,\milcnt_reg[4]_i_1_n_7 }),
        .S(milcnt_reg[7:4]));
  FDRE \milcnt_reg[5] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[4]_i_1_n_6 ),
        .Q(milcnt_reg[5]),
        .R(tckcnt0));
  FDRE \milcnt_reg[6] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[4]_i_1_n_5 ),
        .Q(milcnt_reg[6]),
        .R(tckcnt0));
  FDRE \milcnt_reg[7] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[4]_i_1_n_4 ),
        .Q(milcnt_reg[7]),
        .R(tckcnt0));
  FDRE \milcnt_reg[8] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[8]_i_1_n_7 ),
        .Q(milcnt_reg[8]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \milcnt_reg[8]_i_1 
       (.CI(\milcnt_reg[4]_i_1_n_0 ),
        .CO({\milcnt_reg[8]_i_1_n_0 ,\milcnt_reg[8]_i_1_n_1 ,\milcnt_reg[8]_i_1_n_2 ,\milcnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\milcnt_reg[8]_i_1_n_4 ,\milcnt_reg[8]_i_1_n_5 ,\milcnt_reg[8]_i_1_n_6 ,\milcnt_reg[8]_i_1_n_7 }),
        .S(milcnt_reg[11:8]));
  FDRE \milcnt_reg[9] 
       (.C(clk),
        .CE(cnt_up),
        .D(\milcnt_reg[8]_i_1_n_6 ),
        .Q(milcnt_reg[9]),
        .R(tckcnt0));
  FDRE \milofs_reg[0] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[0]),
        .Q(milofs[0]),
        .R(SR));
  FDRE \milofs_reg[10] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[10]),
        .Q(milofs[10]),
        .R(SR));
  FDRE \milofs_reg[11] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[11]),
        .Q(milofs[11]),
        .R(SR));
  FDRE \milofs_reg[12] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[12]),
        .Q(milofs[12]),
        .R(SR));
  FDRE \milofs_reg[13] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[13]),
        .Q(milofs[13]),
        .R(SR));
  FDRE \milofs_reg[14] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[14]),
        .Q(milofs[14]),
        .R(SR));
  FDRE \milofs_reg[15] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[15]),
        .Q(milofs[15]),
        .R(SR));
  FDRE \milofs_reg[16] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[16]),
        .Q(milofs[16]),
        .R(SR));
  FDRE \milofs_reg[17] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[17]),
        .Q(milofs[17]),
        .R(SR));
  FDRE \milofs_reg[18] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[18]),
        .Q(milofs[18]),
        .R(SR));
  FDRE \milofs_reg[19] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[19]),
        .Q(milofs[19]),
        .R(SR));
  FDRE \milofs_reg[1] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[1]),
        .Q(milofs[1]),
        .R(SR));
  FDRE \milofs_reg[20] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[20]),
        .Q(milofs[20]),
        .R(SR));
  FDRE \milofs_reg[21] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[21]),
        .Q(milofs[21]),
        .R(SR));
  FDRE \milofs_reg[22] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[22]),
        .Q(milofs[22]),
        .R(SR));
  FDRE \milofs_reg[23] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[23]),
        .Q(milofs[23]),
        .R(SR));
  FDRE \milofs_reg[24] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[24]),
        .Q(milofs[24]),
        .R(SR));
  FDRE \milofs_reg[25] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[25]),
        .Q(milofs[25]),
        .R(SR));
  FDRE \milofs_reg[26] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[26]),
        .Q(milofs[26]),
        .R(SR));
  FDRE \milofs_reg[27] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[27]),
        .Q(milofs[27]),
        .R(SR));
  FDRE \milofs_reg[28] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[28]),
        .Q(milofs[28]),
        .R(SR));
  FDRE \milofs_reg[29] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[29]),
        .Q(milofs[29]),
        .R(SR));
  FDRE \milofs_reg[2] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[2]),
        .Q(milofs[2]),
        .R(SR));
  FDRE \milofs_reg[30] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[30]),
        .Q(milofs[30]),
        .R(SR));
  FDRE \milofs_reg[31] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[31]),
        .Q(milofs[31]),
        .R(SR));
  FDRE \milofs_reg[3] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[3]),
        .Q(milofs[3]),
        .R(SR));
  FDRE \milofs_reg[4] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[4]),
        .Q(milofs[4]),
        .R(SR));
  FDRE \milofs_reg[5] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[5]),
        .Q(milofs[5]),
        .R(SR));
  FDRE \milofs_reg[6] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[6]),
        .Q(milofs[6]),
        .R(SR));
  FDRE \milofs_reg[7] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[7]),
        .Q(milofs[7]),
        .R(SR));
  FDRE \milofs_reg[8] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[8]),
        .Q(milofs[8]),
        .R(SR));
  FDRE \milofs_reg[9] 
       (.C(clk),
        .CE(E),
        .D(milcnt_reg[9]),
        .Q(milofs[9]),
        .R(SR));
endmodule

module sytm_tckcnt
   (tckcnt,
    tckcnt0,
    clk,
    SR,
    E);
  output [31:0]tckcnt;
  input tckcnt0;
  input clk;
  input [0:0]SR;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]E;
  wire [0:0]SR;
  wire clk;
  wire [31:0]tckcnt;
  wire tckcnt0;
  wire \tckcnt[0]_i_3_n_0 ;
  wire tckcnt_o0_carry__0_i_1_n_0;
  wire tckcnt_o0_carry__0_i_2_n_0;
  wire tckcnt_o0_carry__0_i_3_n_0;
  wire tckcnt_o0_carry__0_i_4_n_0;
  wire tckcnt_o0_carry__0_n_0;
  wire tckcnt_o0_carry__0_n_1;
  wire tckcnt_o0_carry__0_n_2;
  wire tckcnt_o0_carry__0_n_3;
  wire tckcnt_o0_carry__1_i_1_n_0;
  wire tckcnt_o0_carry__1_i_2_n_0;
  wire tckcnt_o0_carry__1_i_3_n_0;
  wire tckcnt_o0_carry__1_i_4_n_0;
  wire tckcnt_o0_carry__1_n_0;
  wire tckcnt_o0_carry__1_n_1;
  wire tckcnt_o0_carry__1_n_2;
  wire tckcnt_o0_carry__1_n_3;
  wire tckcnt_o0_carry__2_i_1_n_0;
  wire tckcnt_o0_carry__2_i_2_n_0;
  wire tckcnt_o0_carry__2_i_3_n_0;
  wire tckcnt_o0_carry__2_i_4_n_0;
  wire tckcnt_o0_carry__2_n_0;
  wire tckcnt_o0_carry__2_n_1;
  wire tckcnt_o0_carry__2_n_2;
  wire tckcnt_o0_carry__2_n_3;
  wire tckcnt_o0_carry__3_i_1_n_0;
  wire tckcnt_o0_carry__3_i_2_n_0;
  wire tckcnt_o0_carry__3_i_3_n_0;
  wire tckcnt_o0_carry__3_i_4_n_0;
  wire tckcnt_o0_carry__3_n_0;
  wire tckcnt_o0_carry__3_n_1;
  wire tckcnt_o0_carry__3_n_2;
  wire tckcnt_o0_carry__3_n_3;
  wire tckcnt_o0_carry__4_i_1_n_0;
  wire tckcnt_o0_carry__4_i_2_n_0;
  wire tckcnt_o0_carry__4_i_3_n_0;
  wire tckcnt_o0_carry__4_i_4_n_0;
  wire tckcnt_o0_carry__4_n_0;
  wire tckcnt_o0_carry__4_n_1;
  wire tckcnt_o0_carry__4_n_2;
  wire tckcnt_o0_carry__4_n_3;
  wire tckcnt_o0_carry__5_i_1_n_0;
  wire tckcnt_o0_carry__5_i_2_n_0;
  wire tckcnt_o0_carry__5_i_3_n_0;
  wire tckcnt_o0_carry__5_i_4_n_0;
  wire tckcnt_o0_carry__5_n_0;
  wire tckcnt_o0_carry__5_n_1;
  wire tckcnt_o0_carry__5_n_2;
  wire tckcnt_o0_carry__5_n_3;
  wire tckcnt_o0_carry__6_i_1_n_0;
  wire tckcnt_o0_carry__6_i_2_n_0;
  wire tckcnt_o0_carry__6_i_3_n_0;
  wire tckcnt_o0_carry__6_i_4_n_0;
  wire tckcnt_o0_carry__6_n_1;
  wire tckcnt_o0_carry__6_n_2;
  wire tckcnt_o0_carry__6_n_3;
  wire tckcnt_o0_carry_i_1_n_0;
  wire tckcnt_o0_carry_i_2_n_0;
  wire tckcnt_o0_carry_i_3_n_0;
  wire tckcnt_o0_carry_i_4_n_0;
  wire tckcnt_o0_carry_n_0;
  wire tckcnt_o0_carry_n_1;
  wire tckcnt_o0_carry_n_2;
  wire tckcnt_o0_carry_n_3;
  wire [31:0]tckcnt_reg;
  wire \tckcnt_reg[0]_i_2_n_0 ;
  wire \tckcnt_reg[0]_i_2_n_1 ;
  wire \tckcnt_reg[0]_i_2_n_2 ;
  wire \tckcnt_reg[0]_i_2_n_3 ;
  wire \tckcnt_reg[0]_i_2_n_4 ;
  wire \tckcnt_reg[0]_i_2_n_5 ;
  wire \tckcnt_reg[0]_i_2_n_6 ;
  wire \tckcnt_reg[0]_i_2_n_7 ;
  wire \tckcnt_reg[12]_i_1_n_0 ;
  wire \tckcnt_reg[12]_i_1_n_1 ;
  wire \tckcnt_reg[12]_i_1_n_2 ;
  wire \tckcnt_reg[12]_i_1_n_3 ;
  wire \tckcnt_reg[12]_i_1_n_4 ;
  wire \tckcnt_reg[12]_i_1_n_5 ;
  wire \tckcnt_reg[12]_i_1_n_6 ;
  wire \tckcnt_reg[12]_i_1_n_7 ;
  wire \tckcnt_reg[16]_i_1_n_0 ;
  wire \tckcnt_reg[16]_i_1_n_1 ;
  wire \tckcnt_reg[16]_i_1_n_2 ;
  wire \tckcnt_reg[16]_i_1_n_3 ;
  wire \tckcnt_reg[16]_i_1_n_4 ;
  wire \tckcnt_reg[16]_i_1_n_5 ;
  wire \tckcnt_reg[16]_i_1_n_6 ;
  wire \tckcnt_reg[16]_i_1_n_7 ;
  wire \tckcnt_reg[20]_i_1_n_0 ;
  wire \tckcnt_reg[20]_i_1_n_1 ;
  wire \tckcnt_reg[20]_i_1_n_2 ;
  wire \tckcnt_reg[20]_i_1_n_3 ;
  wire \tckcnt_reg[20]_i_1_n_4 ;
  wire \tckcnt_reg[20]_i_1_n_5 ;
  wire \tckcnt_reg[20]_i_1_n_6 ;
  wire \tckcnt_reg[20]_i_1_n_7 ;
  wire \tckcnt_reg[24]_i_1_n_0 ;
  wire \tckcnt_reg[24]_i_1_n_1 ;
  wire \tckcnt_reg[24]_i_1_n_2 ;
  wire \tckcnt_reg[24]_i_1_n_3 ;
  wire \tckcnt_reg[24]_i_1_n_4 ;
  wire \tckcnt_reg[24]_i_1_n_5 ;
  wire \tckcnt_reg[24]_i_1_n_6 ;
  wire \tckcnt_reg[24]_i_1_n_7 ;
  wire \tckcnt_reg[28]_i_1_n_1 ;
  wire \tckcnt_reg[28]_i_1_n_2 ;
  wire \tckcnt_reg[28]_i_1_n_3 ;
  wire \tckcnt_reg[28]_i_1_n_4 ;
  wire \tckcnt_reg[28]_i_1_n_5 ;
  wire \tckcnt_reg[28]_i_1_n_6 ;
  wire \tckcnt_reg[28]_i_1_n_7 ;
  wire \tckcnt_reg[4]_i_1_n_0 ;
  wire \tckcnt_reg[4]_i_1_n_1 ;
  wire \tckcnt_reg[4]_i_1_n_2 ;
  wire \tckcnt_reg[4]_i_1_n_3 ;
  wire \tckcnt_reg[4]_i_1_n_4 ;
  wire \tckcnt_reg[4]_i_1_n_5 ;
  wire \tckcnt_reg[4]_i_1_n_6 ;
  wire \tckcnt_reg[4]_i_1_n_7 ;
  wire \tckcnt_reg[8]_i_1_n_0 ;
  wire \tckcnt_reg[8]_i_1_n_1 ;
  wire \tckcnt_reg[8]_i_1_n_2 ;
  wire \tckcnt_reg[8]_i_1_n_3 ;
  wire \tckcnt_reg[8]_i_1_n_4 ;
  wire \tckcnt_reg[8]_i_1_n_5 ;
  wire \tckcnt_reg[8]_i_1_n_6 ;
  wire \tckcnt_reg[8]_i_1_n_7 ;
  wire [31:0]tckofs;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \tckcnt[0]_i_3 
       (.I0(tckcnt_reg[0]),
        .O(\tckcnt[0]_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tckcnt_o0_carry
       (.CI(\<const0> ),
        .CO({tckcnt_o0_carry_n_0,tckcnt_o0_carry_n_1,tckcnt_o0_carry_n_2,tckcnt_o0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI(tckcnt_reg[3:0]),
        .O(tckcnt[3:0]),
        .S({tckcnt_o0_carry_i_1_n_0,tckcnt_o0_carry_i_2_n_0,tckcnt_o0_carry_i_3_n_0,tckcnt_o0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tckcnt_o0_carry__0
       (.CI(tckcnt_o0_carry_n_0),
        .CO({tckcnt_o0_carry__0_n_0,tckcnt_o0_carry__0_n_1,tckcnt_o0_carry__0_n_2,tckcnt_o0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(tckcnt_reg[7:4]),
        .O(tckcnt[7:4]),
        .S({tckcnt_o0_carry__0_i_1_n_0,tckcnt_o0_carry__0_i_2_n_0,tckcnt_o0_carry__0_i_3_n_0,tckcnt_o0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__0_i_1
       (.I0(tckcnt_reg[7]),
        .I1(tckofs[7]),
        .O(tckcnt_o0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__0_i_2
       (.I0(tckcnt_reg[6]),
        .I1(tckofs[6]),
        .O(tckcnt_o0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__0_i_3
       (.I0(tckcnt_reg[5]),
        .I1(tckofs[5]),
        .O(tckcnt_o0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__0_i_4
       (.I0(tckcnt_reg[4]),
        .I1(tckofs[4]),
        .O(tckcnt_o0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tckcnt_o0_carry__1
       (.CI(tckcnt_o0_carry__0_n_0),
        .CO({tckcnt_o0_carry__1_n_0,tckcnt_o0_carry__1_n_1,tckcnt_o0_carry__1_n_2,tckcnt_o0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(tckcnt_reg[11:8]),
        .O(tckcnt[11:8]),
        .S({tckcnt_o0_carry__1_i_1_n_0,tckcnt_o0_carry__1_i_2_n_0,tckcnt_o0_carry__1_i_3_n_0,tckcnt_o0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__1_i_1
       (.I0(tckcnt_reg[11]),
        .I1(tckofs[11]),
        .O(tckcnt_o0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__1_i_2
       (.I0(tckcnt_reg[10]),
        .I1(tckofs[10]),
        .O(tckcnt_o0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__1_i_3
       (.I0(tckcnt_reg[9]),
        .I1(tckofs[9]),
        .O(tckcnt_o0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__1_i_4
       (.I0(tckcnt_reg[8]),
        .I1(tckofs[8]),
        .O(tckcnt_o0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tckcnt_o0_carry__2
       (.CI(tckcnt_o0_carry__1_n_0),
        .CO({tckcnt_o0_carry__2_n_0,tckcnt_o0_carry__2_n_1,tckcnt_o0_carry__2_n_2,tckcnt_o0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(tckcnt_reg[15:12]),
        .O(tckcnt[15:12]),
        .S({tckcnt_o0_carry__2_i_1_n_0,tckcnt_o0_carry__2_i_2_n_0,tckcnt_o0_carry__2_i_3_n_0,tckcnt_o0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__2_i_1
       (.I0(tckcnt_reg[15]),
        .I1(tckofs[15]),
        .O(tckcnt_o0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__2_i_2
       (.I0(tckcnt_reg[14]),
        .I1(tckofs[14]),
        .O(tckcnt_o0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__2_i_3
       (.I0(tckcnt_reg[13]),
        .I1(tckofs[13]),
        .O(tckcnt_o0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__2_i_4
       (.I0(tckcnt_reg[12]),
        .I1(tckofs[12]),
        .O(tckcnt_o0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tckcnt_o0_carry__3
       (.CI(tckcnt_o0_carry__2_n_0),
        .CO({tckcnt_o0_carry__3_n_0,tckcnt_o0_carry__3_n_1,tckcnt_o0_carry__3_n_2,tckcnt_o0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(tckcnt_reg[19:16]),
        .O(tckcnt[19:16]),
        .S({tckcnt_o0_carry__3_i_1_n_0,tckcnt_o0_carry__3_i_2_n_0,tckcnt_o0_carry__3_i_3_n_0,tckcnt_o0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__3_i_1
       (.I0(tckcnt_reg[19]),
        .I1(tckofs[19]),
        .O(tckcnt_o0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__3_i_2
       (.I0(tckcnt_reg[18]),
        .I1(tckofs[18]),
        .O(tckcnt_o0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__3_i_3
       (.I0(tckcnt_reg[17]),
        .I1(tckofs[17]),
        .O(tckcnt_o0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__3_i_4
       (.I0(tckcnt_reg[16]),
        .I1(tckofs[16]),
        .O(tckcnt_o0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tckcnt_o0_carry__4
       (.CI(tckcnt_o0_carry__3_n_0),
        .CO({tckcnt_o0_carry__4_n_0,tckcnt_o0_carry__4_n_1,tckcnt_o0_carry__4_n_2,tckcnt_o0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI(tckcnt_reg[23:20]),
        .O(tckcnt[23:20]),
        .S({tckcnt_o0_carry__4_i_1_n_0,tckcnt_o0_carry__4_i_2_n_0,tckcnt_o0_carry__4_i_3_n_0,tckcnt_o0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__4_i_1
       (.I0(tckcnt_reg[23]),
        .I1(tckofs[23]),
        .O(tckcnt_o0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__4_i_2
       (.I0(tckcnt_reg[22]),
        .I1(tckofs[22]),
        .O(tckcnt_o0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__4_i_3
       (.I0(tckcnt_reg[21]),
        .I1(tckofs[21]),
        .O(tckcnt_o0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__4_i_4
       (.I0(tckcnt_reg[20]),
        .I1(tckofs[20]),
        .O(tckcnt_o0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tckcnt_o0_carry__5
       (.CI(tckcnt_o0_carry__4_n_0),
        .CO({tckcnt_o0_carry__5_n_0,tckcnt_o0_carry__5_n_1,tckcnt_o0_carry__5_n_2,tckcnt_o0_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI(tckcnt_reg[27:24]),
        .O(tckcnt[27:24]),
        .S({tckcnt_o0_carry__5_i_1_n_0,tckcnt_o0_carry__5_i_2_n_0,tckcnt_o0_carry__5_i_3_n_0,tckcnt_o0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__5_i_1
       (.I0(tckcnt_reg[27]),
        .I1(tckofs[27]),
        .O(tckcnt_o0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__5_i_2
       (.I0(tckcnt_reg[26]),
        .I1(tckofs[26]),
        .O(tckcnt_o0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__5_i_3
       (.I0(tckcnt_reg[25]),
        .I1(tckofs[25]),
        .O(tckcnt_o0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__5_i_4
       (.I0(tckcnt_reg[24]),
        .I1(tckofs[24]),
        .O(tckcnt_o0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tckcnt_o0_carry__6
       (.CI(tckcnt_o0_carry__5_n_0),
        .CO({tckcnt_o0_carry__6_n_1,tckcnt_o0_carry__6_n_2,tckcnt_o0_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,tckcnt_reg[30:28]}),
        .O(tckcnt[31:28]),
        .S({tckcnt_o0_carry__6_i_1_n_0,tckcnt_o0_carry__6_i_2_n_0,tckcnt_o0_carry__6_i_3_n_0,tckcnt_o0_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__6_i_1
       (.I0(tckcnt_reg[31]),
        .I1(tckofs[31]),
        .O(tckcnt_o0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__6_i_2
       (.I0(tckcnt_reg[30]),
        .I1(tckofs[30]),
        .O(tckcnt_o0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__6_i_3
       (.I0(tckcnt_reg[29]),
        .I1(tckofs[29]),
        .O(tckcnt_o0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry__6_i_4
       (.I0(tckcnt_reg[28]),
        .I1(tckofs[28]),
        .O(tckcnt_o0_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry_i_1
       (.I0(tckcnt_reg[3]),
        .I1(tckofs[3]),
        .O(tckcnt_o0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry_i_2
       (.I0(tckcnt_reg[2]),
        .I1(tckofs[2]),
        .O(tckcnt_o0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry_i_3
       (.I0(tckcnt_reg[1]),
        .I1(tckofs[1]),
        .O(tckcnt_o0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tckcnt_o0_carry_i_4
       (.I0(tckcnt_reg[0]),
        .I1(tckofs[0]),
        .O(tckcnt_o0_carry_i_4_n_0));
  FDRE \tckcnt_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[0]_i_2_n_7 ),
        .Q(tckcnt_reg[0]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tckcnt_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\tckcnt_reg[0]_i_2_n_0 ,\tckcnt_reg[0]_i_2_n_1 ,\tckcnt_reg[0]_i_2_n_2 ,\tckcnt_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\tckcnt_reg[0]_i_2_n_4 ,\tckcnt_reg[0]_i_2_n_5 ,\tckcnt_reg[0]_i_2_n_6 ,\tckcnt_reg[0]_i_2_n_7 }),
        .S({tckcnt_reg[3:1],\tckcnt[0]_i_3_n_0 }));
  FDRE \tckcnt_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[8]_i_1_n_5 ),
        .Q(tckcnt_reg[10]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[8]_i_1_n_4 ),
        .Q(tckcnt_reg[11]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[12]_i_1_n_7 ),
        .Q(tckcnt_reg[12]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tckcnt_reg[12]_i_1 
       (.CI(\tckcnt_reg[8]_i_1_n_0 ),
        .CO({\tckcnt_reg[12]_i_1_n_0 ,\tckcnt_reg[12]_i_1_n_1 ,\tckcnt_reg[12]_i_1_n_2 ,\tckcnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tckcnt_reg[12]_i_1_n_4 ,\tckcnt_reg[12]_i_1_n_5 ,\tckcnt_reg[12]_i_1_n_6 ,\tckcnt_reg[12]_i_1_n_7 }),
        .S(tckcnt_reg[15:12]));
  FDRE \tckcnt_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[12]_i_1_n_6 ),
        .Q(tckcnt_reg[13]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[12]_i_1_n_5 ),
        .Q(tckcnt_reg[14]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[12]_i_1_n_4 ),
        .Q(tckcnt_reg[15]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[16] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[16]_i_1_n_7 ),
        .Q(tckcnt_reg[16]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tckcnt_reg[16]_i_1 
       (.CI(\tckcnt_reg[12]_i_1_n_0 ),
        .CO({\tckcnt_reg[16]_i_1_n_0 ,\tckcnt_reg[16]_i_1_n_1 ,\tckcnt_reg[16]_i_1_n_2 ,\tckcnt_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tckcnt_reg[16]_i_1_n_4 ,\tckcnt_reg[16]_i_1_n_5 ,\tckcnt_reg[16]_i_1_n_6 ,\tckcnt_reg[16]_i_1_n_7 }),
        .S(tckcnt_reg[19:16]));
  FDRE \tckcnt_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[16]_i_1_n_6 ),
        .Q(tckcnt_reg[17]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[16]_i_1_n_5 ),
        .Q(tckcnt_reg[18]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[16]_i_1_n_4 ),
        .Q(tckcnt_reg[19]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[0]_i_2_n_6 ),
        .Q(tckcnt_reg[1]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[20] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[20]_i_1_n_7 ),
        .Q(tckcnt_reg[20]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tckcnt_reg[20]_i_1 
       (.CI(\tckcnt_reg[16]_i_1_n_0 ),
        .CO({\tckcnt_reg[20]_i_1_n_0 ,\tckcnt_reg[20]_i_1_n_1 ,\tckcnt_reg[20]_i_1_n_2 ,\tckcnt_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tckcnt_reg[20]_i_1_n_4 ,\tckcnt_reg[20]_i_1_n_5 ,\tckcnt_reg[20]_i_1_n_6 ,\tckcnt_reg[20]_i_1_n_7 }),
        .S(tckcnt_reg[23:20]));
  FDRE \tckcnt_reg[21] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[20]_i_1_n_6 ),
        .Q(tckcnt_reg[21]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[22] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[20]_i_1_n_5 ),
        .Q(tckcnt_reg[22]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[23] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[20]_i_1_n_4 ),
        .Q(tckcnt_reg[23]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[24] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[24]_i_1_n_7 ),
        .Q(tckcnt_reg[24]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tckcnt_reg[24]_i_1 
       (.CI(\tckcnt_reg[20]_i_1_n_0 ),
        .CO({\tckcnt_reg[24]_i_1_n_0 ,\tckcnt_reg[24]_i_1_n_1 ,\tckcnt_reg[24]_i_1_n_2 ,\tckcnt_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tckcnt_reg[24]_i_1_n_4 ,\tckcnt_reg[24]_i_1_n_5 ,\tckcnt_reg[24]_i_1_n_6 ,\tckcnt_reg[24]_i_1_n_7 }),
        .S(tckcnt_reg[27:24]));
  FDRE \tckcnt_reg[25] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[24]_i_1_n_6 ),
        .Q(tckcnt_reg[25]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[26] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[24]_i_1_n_5 ),
        .Q(tckcnt_reg[26]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[27] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[24]_i_1_n_4 ),
        .Q(tckcnt_reg[27]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[28] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[28]_i_1_n_7 ),
        .Q(tckcnt_reg[28]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tckcnt_reg[28]_i_1 
       (.CI(\tckcnt_reg[24]_i_1_n_0 ),
        .CO({\tckcnt_reg[28]_i_1_n_1 ,\tckcnt_reg[28]_i_1_n_2 ,\tckcnt_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tckcnt_reg[28]_i_1_n_4 ,\tckcnt_reg[28]_i_1_n_5 ,\tckcnt_reg[28]_i_1_n_6 ,\tckcnt_reg[28]_i_1_n_7 }),
        .S(tckcnt_reg[31:28]));
  FDRE \tckcnt_reg[29] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[28]_i_1_n_6 ),
        .Q(tckcnt_reg[29]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[0]_i_2_n_5 ),
        .Q(tckcnt_reg[2]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[30] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[28]_i_1_n_5 ),
        .Q(tckcnt_reg[30]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[31] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[28]_i_1_n_4 ),
        .Q(tckcnt_reg[31]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[0]_i_2_n_4 ),
        .Q(tckcnt_reg[3]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[4]_i_1_n_7 ),
        .Q(tckcnt_reg[4]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tckcnt_reg[4]_i_1 
       (.CI(\tckcnt_reg[0]_i_2_n_0 ),
        .CO({\tckcnt_reg[4]_i_1_n_0 ,\tckcnt_reg[4]_i_1_n_1 ,\tckcnt_reg[4]_i_1_n_2 ,\tckcnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tckcnt_reg[4]_i_1_n_4 ,\tckcnt_reg[4]_i_1_n_5 ,\tckcnt_reg[4]_i_1_n_6 ,\tckcnt_reg[4]_i_1_n_7 }),
        .S(tckcnt_reg[7:4]));
  FDRE \tckcnt_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[4]_i_1_n_6 ),
        .Q(tckcnt_reg[5]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[4]_i_1_n_5 ),
        .Q(tckcnt_reg[6]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[4]_i_1_n_4 ),
        .Q(tckcnt_reg[7]),
        .R(tckcnt0));
  FDRE \tckcnt_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[8]_i_1_n_7 ),
        .Q(tckcnt_reg[8]),
        .R(tckcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tckcnt_reg[8]_i_1 
       (.CI(\tckcnt_reg[4]_i_1_n_0 ),
        .CO({\tckcnt_reg[8]_i_1_n_0 ,\tckcnt_reg[8]_i_1_n_1 ,\tckcnt_reg[8]_i_1_n_2 ,\tckcnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tckcnt_reg[8]_i_1_n_4 ,\tckcnt_reg[8]_i_1_n_5 ,\tckcnt_reg[8]_i_1_n_6 ,\tckcnt_reg[8]_i_1_n_7 }),
        .S(tckcnt_reg[11:8]));
  FDRE \tckcnt_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tckcnt_reg[8]_i_1_n_6 ),
        .Q(tckcnt_reg[9]),
        .R(tckcnt0));
  FDRE \tckofs_reg[0] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[0]),
        .Q(tckofs[0]),
        .R(SR));
  FDRE \tckofs_reg[10] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[10]),
        .Q(tckofs[10]),
        .R(SR));
  FDRE \tckofs_reg[11] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[11]),
        .Q(tckofs[11]),
        .R(SR));
  FDRE \tckofs_reg[12] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[12]),
        .Q(tckofs[12]),
        .R(SR));
  FDRE \tckofs_reg[13] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[13]),
        .Q(tckofs[13]),
        .R(SR));
  FDRE \tckofs_reg[14] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[14]),
        .Q(tckofs[14]),
        .R(SR));
  FDRE \tckofs_reg[15] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[15]),
        .Q(tckofs[15]),
        .R(SR));
  FDRE \tckofs_reg[16] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[16]),
        .Q(tckofs[16]),
        .R(SR));
  FDRE \tckofs_reg[17] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[17]),
        .Q(tckofs[17]),
        .R(SR));
  FDRE \tckofs_reg[18] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[18]),
        .Q(tckofs[18]),
        .R(SR));
  FDRE \tckofs_reg[19] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[19]),
        .Q(tckofs[19]),
        .R(SR));
  FDRE \tckofs_reg[1] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[1]),
        .Q(tckofs[1]),
        .R(SR));
  FDRE \tckofs_reg[20] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[20]),
        .Q(tckofs[20]),
        .R(SR));
  FDRE \tckofs_reg[21] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[21]),
        .Q(tckofs[21]),
        .R(SR));
  FDRE \tckofs_reg[22] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[22]),
        .Q(tckofs[22]),
        .R(SR));
  FDRE \tckofs_reg[23] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[23]),
        .Q(tckofs[23]),
        .R(SR));
  FDRE \tckofs_reg[24] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[24]),
        .Q(tckofs[24]),
        .R(SR));
  FDRE \tckofs_reg[25] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[25]),
        .Q(tckofs[25]),
        .R(SR));
  FDRE \tckofs_reg[26] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[26]),
        .Q(tckofs[26]),
        .R(SR));
  FDRE \tckofs_reg[27] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[27]),
        .Q(tckofs[27]),
        .R(SR));
  FDRE \tckofs_reg[28] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[28]),
        .Q(tckofs[28]),
        .R(SR));
  FDRE \tckofs_reg[29] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[29]),
        .Q(tckofs[29]),
        .R(SR));
  FDRE \tckofs_reg[2] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[2]),
        .Q(tckofs[2]),
        .R(SR));
  FDRE \tckofs_reg[30] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[30]),
        .Q(tckofs[30]),
        .R(SR));
  FDRE \tckofs_reg[31] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[31]),
        .Q(tckofs[31]),
        .R(SR));
  FDRE \tckofs_reg[3] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[3]),
        .Q(tckofs[3]),
        .R(SR));
  FDRE \tckofs_reg[4] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[4]),
        .Q(tckofs[4]),
        .R(SR));
  FDRE \tckofs_reg[5] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[5]),
        .Q(tckofs[5]),
        .R(SR));
  FDRE \tckofs_reg[6] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[6]),
        .Q(tckofs[6]),
        .R(SR));
  FDRE \tckofs_reg[7] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[7]),
        .Q(tckofs[7]),
        .R(SR));
  FDRE \tckofs_reg[8] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[8]),
        .Q(tckofs[8]),
        .R(SR));
  FDRE \tckofs_reg[9] 
       (.C(clk),
        .CE(E),
        .D(tckcnt_reg[9]),
        .Q(tckofs[9]),
        .R(SR));
endmodule

module sytm_tctl
   (E,
    tctl_mcr_ofst_reg_0,
    tctl_mil_ofst_reg_0,
    SR,
    Q,
    rst_n_0,
    rst_n_1,
    tckcnt0,
    bdatr,
    brdy,
    clk,
    bcs_sytm_n,
    bcmdr,
    badr,
    bdatw,
    bcmdw,
    rst_n,
    milcnt,
    tckcnt,
    mcrcnt,
    simumd);
  output [0:0]E;
  output [0:0]tctl_mcr_ofst_reg_0;
  output [0:0]tctl_mil_ofst_reg_0;
  output [0:0]SR;
  output [0:0]Q;
  output [0:0]rst_n_0;
  output [0:0]rst_n_1;
  output tckcnt0;
  output [15:0]bdatr;
  input brdy;
  input clk;
  input bcs_sytm_n;
  input bcmdr;
  input [3:0]badr;
  input [3:0]bdatw;
  input bcmdw;
  input rst_n;
  input [31:0]milcnt;
  input [31:0]tckcnt;
  input [31:0]mcrcnt;
  input simumd;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_sytm_n;
  wire [15:0]bdatr;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[0]_INST_0_i_2_n_0 ;
  wire \bdatr[0]_INST_0_i_3_n_0 ;
  wire \bdatr[0]_INST_0_i_4_n_0 ;
  wire \bdatr[0]_INST_0_i_5_n_0 ;
  wire \bdatr[10]_INST_0_i_1_n_0 ;
  wire \bdatr[10]_INST_0_i_2_n_0 ;
  wire \bdatr[10]_INST_0_i_3_n_0 ;
  wire \bdatr[11]_INST_0_i_1_n_0 ;
  wire \bdatr[11]_INST_0_i_2_n_0 ;
  wire \bdatr[11]_INST_0_i_3_n_0 ;
  wire \bdatr[12]_INST_0_i_1_n_0 ;
  wire \bdatr[12]_INST_0_i_2_n_0 ;
  wire \bdatr[12]_INST_0_i_3_n_0 ;
  wire \bdatr[13]_INST_0_i_1_n_0 ;
  wire \bdatr[13]_INST_0_i_2_n_0 ;
  wire \bdatr[13]_INST_0_i_3_n_0 ;
  wire \bdatr[14]_INST_0_i_1_n_0 ;
  wire \bdatr[14]_INST_0_i_2_n_0 ;
  wire \bdatr[14]_INST_0_i_3_n_0 ;
  wire \bdatr[14]_INST_0_i_4_n_0 ;
  wire \bdatr[15]_INST_0_i_1_n_0 ;
  wire \bdatr[15]_INST_0_i_2_n_0 ;
  wire \bdatr[15]_INST_0_i_3_n_0 ;
  wire \bdatr[15]_INST_0_i_4_n_0 ;
  wire \bdatr[15]_INST_0_i_5_n_0 ;
  wire \bdatr[15]_INST_0_i_6_n_0 ;
  wire \bdatr[15]_INST_0_i_7_n_0 ;
  wire \bdatr[15]_INST_0_i_8_n_0 ;
  wire \bdatr[15]_INST_0_i_9_n_0 ;
  wire \bdatr[1]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_2_n_0 ;
  wire \bdatr[1]_INST_0_i_3_n_0 ;
  wire \bdatr[2]_INST_0_i_1_n_0 ;
  wire \bdatr[2]_INST_0_i_2_n_0 ;
  wire \bdatr[2]_INST_0_i_3_n_0 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_2_n_0 ;
  wire \bdatr[3]_INST_0_i_3_n_0 ;
  wire \bdatr[4]_INST_0_i_1_n_0 ;
  wire \bdatr[4]_INST_0_i_2_n_0 ;
  wire \bdatr[4]_INST_0_i_3_n_0 ;
  wire \bdatr[5]_INST_0_i_1_n_0 ;
  wire \bdatr[5]_INST_0_i_2_n_0 ;
  wire \bdatr[5]_INST_0_i_3_n_0 ;
  wire \bdatr[5]_INST_0_i_4_n_0 ;
  wire \bdatr[5]_INST_0_i_5_n_0 ;
  wire \bdatr[6]_INST_0_i_1_n_0 ;
  wire \bdatr[6]_INST_0_i_2_n_0 ;
  wire \bdatr[6]_INST_0_i_3_n_0 ;
  wire \bdatr[6]_INST_0_i_4_n_0 ;
  wire \bdatr[6]_INST_0_i_5_n_0 ;
  wire \bdatr[7]_INST_0_i_1_n_0 ;
  wire \bdatr[7]_INST_0_i_2_n_0 ;
  wire \bdatr[7]_INST_0_i_3_n_0 ;
  wire \bdatr[7]_INST_0_i_4_n_0 ;
  wire \bdatr[7]_INST_0_i_5_n_0 ;
  wire \bdatr[7]_INST_0_i_6_n_0 ;
  wire \bdatr[8]_INST_0_i_1_n_0 ;
  wire \bdatr[8]_INST_0_i_2_n_0 ;
  wire \bdatr[8]_INST_0_i_3_n_0 ;
  wire \bdatr[9]_INST_0_i_1_n_0 ;
  wire \bdatr[9]_INST_0_i_2_n_0 ;
  wire \bdatr[9]_INST_0_i_3_n_0 ;
  wire [3:0]bdatw;
  wire brdy;
  wire clk;
  wire [31:0]mcrcnt;
  wire mcrcnth_rd;
  wire mcrcnth_rd0;
  wire mcrcntl_rd;
  wire mcrcntl_rd0;
  wire [31:0]milcnt;
  wire milcnth_rd;
  wire milcnth_rd0;
  wire milcntl_rd;
  wire milcntl_rd0;
  wire p_0_in;
  wire [7:0]p_1_in;
  wire [15:0]p_2_in;
  wire rst_n;
  wire [0:0]rst_n_0;
  wire [0:0]rst_n_1;
  wire simumd;
  wire \sytmctl[7]_i_3_n_0 ;
  wire \sytmctl[7]_i_4_n_0 ;
  wire sytmctl_rd;
  wire sytmctl_rd0;
  wire [31:0]tckcnt;
  wire tckcnt0;
  wire tckcnth_rd;
  wire tckcnth_rd0;
  wire tckcntl_rd;
  wire tckcntl_rd0;
  wire tctl_mcr_ofse;
  wire tctl_mcr_ofst_i_1_n_0;
  wire [0:0]tctl_mcr_ofst_reg_0;
  wire tctl_mil_ofse;
  wire tctl_mil_ofst_i_1_n_0;
  wire [0:0]tctl_mil_ofst_reg_0;
  wire tctl_tck_ofse;
  wire tctl_tck_ofst_i_1_n_0;
  wire tmp_enb;
  wire tmp_enb_i_1_n_0;
  wire [15:0]tmpcnt;
  wire \tmpcnt[15]_i_1_n_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDDFD0000)) 
    \bdatr[0]_INST_0 
       (.I0(\bdatr[0]_INST_0_i_1_n_0 ),
        .I1(\bdatr[0]_INST_0_i_2_n_0 ),
        .I2(\bdatr[14]_INST_0_i_2_n_0 ),
        .I3(\bdatr[0]_INST_0_i_3_n_0 ),
        .I4(\bdatr[15]_INST_0_i_1_n_0 ),
        .I5(\bdatr[0]_INST_0_i_4_n_0 ),
        .O(bdatr[0]));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(tckcnt[0]),
        .I1(tmpcnt[0]),
        .I2(tckcntl_rd),
        .I3(tmp_enb),
        .I4(tckcnth_rd),
        .I5(tckcnt[16]),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AA8080AAAAAAAA)) 
    \bdatr[0]_INST_0_i_2 
       (.I0(\bdatr[15]_INST_0_i_3_n_0 ),
        .I1(milcnt[16]),
        .I2(milcnth_rd),
        .I3(\bdatr[7]_INST_0_i_5_n_0 ),
        .I4(milcnt[0]),
        .I5(\bdatr[0]_INST_0_i_5_n_0 ),
        .O(\bdatr[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D0C3F3F3F3F3F)) 
    \bdatr[0]_INST_0_i_3 
       (.I0(tmpcnt[0]),
        .I1(mcrcnth_rd),
        .I2(mcrcnt[16]),
        .I3(mcrcnt[0]),
        .I4(tmp_enb),
        .I5(mcrcntl_rd),
        .O(\bdatr[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[0]_INST_0_i_4 
       (.I0(Q),
        .I1(sytmctl_rd),
        .O(\bdatr[0]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \bdatr[0]_INST_0_i_5 
       (.I0(milcntl_rd),
        .I1(tmp_enb),
        .I2(milcnth_rd),
        .I3(tmpcnt[0]),
        .O(\bdatr[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8A88AAAA8A888A88)) 
    \bdatr[10]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[10]_INST_0_i_1_n_0 ),
        .I2(\bdatr[10]_INST_0_i_2_n_0 ),
        .I3(\bdatr[15]_INST_0_i_3_n_0 ),
        .I4(\bdatr[10]_INST_0_i_3_n_0 ),
        .I5(\bdatr[14]_INST_0_i_2_n_0 ),
        .O(bdatr[10]));
  LUT6 #(
    .INIT(64'hFFFFAC000000AC00)) 
    \bdatr[10]_INST_0_i_1 
       (.I0(tmpcnt[10]),
        .I1(tckcnt[10]),
        .I2(tmp_enb),
        .I3(tckcntl_rd),
        .I4(tckcnth_rd),
        .I5(tckcnt[26]),
        .O(\bdatr[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[10]_INST_0_i_2 
       (.I0(milcnt[10]),
        .I1(tmpcnt[10]),
        .I2(milcntl_rd),
        .I3(tmp_enb),
        .I4(milcnth_rd),
        .I5(milcnt[26]),
        .O(\bdatr[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[10]_INST_0_i_3 
       (.I0(mcrcnt[10]),
        .I1(tmpcnt[10]),
        .I2(mcrcntl_rd),
        .I3(tmp_enb),
        .I4(mcrcnth_rd),
        .I5(mcrcnt[26]),
        .O(\bdatr[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88AAAA8A888A88)) 
    \bdatr[11]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[11]_INST_0_i_1_n_0 ),
        .I2(\bdatr[11]_INST_0_i_2_n_0 ),
        .I3(\bdatr[14]_INST_0_i_2_n_0 ),
        .I4(\bdatr[11]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_3_n_0 ),
        .O(bdatr[11]));
  LUT6 #(
    .INIT(64'hFFFFAC000000AC00)) 
    \bdatr[11]_INST_0_i_1 
       (.I0(tmpcnt[11]),
        .I1(tckcnt[11]),
        .I2(tmp_enb),
        .I3(tckcntl_rd),
        .I4(tckcnth_rd),
        .I5(tckcnt[27]),
        .O(\bdatr[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D0C3F3F3F3F3F)) 
    \bdatr[11]_INST_0_i_2 
       (.I0(tmpcnt[11]),
        .I1(mcrcnth_rd),
        .I2(mcrcnt[27]),
        .I3(mcrcnt[11]),
        .I4(tmp_enb),
        .I5(mcrcntl_rd),
        .O(\bdatr[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[11]_INST_0_i_3 
       (.I0(milcnt[11]),
        .I1(tmpcnt[11]),
        .I2(milcntl_rd),
        .I3(tmp_enb),
        .I4(milcnth_rd),
        .I5(milcnt[27]),
        .O(\bdatr[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \bdatr[12]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[12]_INST_0_i_1_n_0 ),
        .I2(\bdatr[14]_INST_0_i_2_n_0 ),
        .I3(\bdatr[12]_INST_0_i_2_n_0 ),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(\bdatr[12]_INST_0_i_3_n_0 ),
        .O(bdatr[12]));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[12]_INST_0_i_1 
       (.I0(mcrcnt[12]),
        .I1(tmpcnt[12]),
        .I2(mcrcntl_rd),
        .I3(tmp_enb),
        .I4(mcrcnth_rd),
        .I5(mcrcnt[28]),
        .O(\bdatr[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[12]_INST_0_i_2 
       (.I0(milcnt[12]),
        .I1(tmpcnt[12]),
        .I2(milcntl_rd),
        .I3(tmp_enb),
        .I4(milcnth_rd),
        .I5(milcnt[28]),
        .O(\bdatr[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[12]_INST_0_i_3 
       (.I0(tckcnt[12]),
        .I1(tmpcnt[12]),
        .I2(tckcntl_rd),
        .I3(tmp_enb),
        .I4(tckcnth_rd),
        .I5(tckcnt[28]),
        .O(\bdatr[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA20AAAAAA20AA20)) 
    \bdatr[13]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[13]_INST_0_i_1_n_0 ),
        .I2(\bdatr[14]_INST_0_i_2_n_0 ),
        .I3(\bdatr[13]_INST_0_i_2_n_0 ),
        .I4(\bdatr[13]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_3_n_0 ),
        .O(bdatr[13]));
  LUT6 #(
    .INIT(64'h000053FFFFFF53FF)) 
    \bdatr[13]_INST_0_i_1 
       (.I0(tmpcnt[13]),
        .I1(mcrcnt[13]),
        .I2(tmp_enb),
        .I3(mcrcntl_rd),
        .I4(mcrcnth_rd),
        .I5(mcrcnt[29]),
        .O(\bdatr[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC0A00000C0A0)) 
    \bdatr[13]_INST_0_i_2 
       (.I0(tckcnt[13]),
        .I1(tmpcnt[13]),
        .I2(tckcntl_rd),
        .I3(tmp_enb),
        .I4(tckcnth_rd),
        .I5(tckcnt[29]),
        .O(\bdatr[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[13]_INST_0_i_3 
       (.I0(milcnt[13]),
        .I1(tmpcnt[13]),
        .I2(milcntl_rd),
        .I3(tmp_enb),
        .I4(milcnth_rd),
        .I5(milcnt[29]),
        .O(\bdatr[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \bdatr[14]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[14]_INST_0_i_1_n_0 ),
        .I2(\bdatr[14]_INST_0_i_2_n_0 ),
        .I3(\bdatr[14]_INST_0_i_3_n_0 ),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(\bdatr[14]_INST_0_i_4_n_0 ),
        .O(bdatr[14]));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[14]_INST_0_i_1 
       (.I0(mcrcnt[14]),
        .I1(tmpcnt[14]),
        .I2(mcrcntl_rd),
        .I3(tmp_enb),
        .I4(mcrcnth_rd),
        .I5(mcrcnt[30]),
        .O(\bdatr[14]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1110)) 
    \bdatr[14]_INST_0_i_2 
       (.I0(tckcnth_rd),
        .I1(tckcntl_rd),
        .I2(mcrcnth_rd),
        .I3(mcrcntl_rd),
        .O(\bdatr[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000053FFFFFF53FF)) 
    \bdatr[14]_INST_0_i_3 
       (.I0(tmpcnt[14]),
        .I1(milcnt[14]),
        .I2(tmp_enb),
        .I3(milcntl_rd),
        .I4(milcnth_rd),
        .I5(milcnt[30]),
        .O(\bdatr[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000053FFFFFF53FF)) 
    \bdatr[14]_INST_0_i_4 
       (.I0(tmpcnt[14]),
        .I1(tckcnt[14]),
        .I2(tmp_enb),
        .I3(tckcntl_rd),
        .I4(tckcnth_rd),
        .I5(tckcnt[30]),
        .O(\bdatr[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAA20)) 
    \bdatr[15]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[15]_INST_0_i_2_n_0 ),
        .I2(\bdatr[15]_INST_0_i_3_n_0 ),
        .I3(\bdatr[15]_INST_0_i_4_n_0 ),
        .I4(\bdatr[15]_INST_0_i_5_n_0 ),
        .I5(\bdatr[15]_INST_0_i_6_n_0 ),
        .O(bdatr[15]));
  LUT4 #(
    .INIT(16'h00EF)) 
    \bdatr[15]_INST_0_i_1 
       (.I0(milcntl_rd),
        .I1(milcnth_rd),
        .I2(\bdatr[15]_INST_0_i_7_n_0 ),
        .I3(sytmctl_rd),
        .O(\bdatr[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D0C3F3F3F3F3F)) 
    \bdatr[15]_INST_0_i_2 
       (.I0(tmpcnt[15]),
        .I1(milcnth_rd),
        .I2(milcnt[31]),
        .I3(milcnt[15]),
        .I4(tmp_enb),
        .I5(milcntl_rd),
        .O(\bdatr[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    \bdatr[15]_INST_0_i_3 
       (.I0(mcrcntl_rd),
        .I1(mcrcnth_rd),
        .I2(tckcntl_rd),
        .I3(tckcnth_rd),
        .I4(milcnth_rd),
        .I5(milcntl_rd),
        .O(\bdatr[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAC000000AC00)) 
    \bdatr[15]_INST_0_i_4 
       (.I0(tmpcnt[15]),
        .I1(tckcnt[15]),
        .I2(tmp_enb),
        .I3(tckcntl_rd),
        .I4(tckcnth_rd),
        .I5(tckcnt[31]),
        .O(\bdatr[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \bdatr[15]_INST_0_i_5 
       (.I0(\bdatr[14]_INST_0_i_2_n_0 ),
        .I1(\bdatr[15]_INST_0_i_8_n_0 ),
        .I2(mcrcnt[15]),
        .I3(mcrcnt[31]),
        .I4(mcrcnth_rd),
        .I5(\bdatr[15]_INST_0_i_9_n_0 ),
        .O(\bdatr[15]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[15]_INST_0_i_6 
       (.I0(simumd),
        .I1(sytmctl_rd),
        .O(\bdatr[15]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \bdatr[15]_INST_0_i_7 
       (.I0(tckcnth_rd),
        .I1(tckcntl_rd),
        .I2(mcrcnth_rd),
        .I3(mcrcntl_rd),
        .O(\bdatr[15]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \bdatr[15]_INST_0_i_8 
       (.I0(mcrcnth_rd),
        .I1(mcrcntl_rd),
        .I2(tmp_enb),
        .O(\bdatr[15]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \bdatr[15]_INST_0_i_9 
       (.I0(mcrcntl_rd),
        .I1(tmp_enb),
        .I2(mcrcnth_rd),
        .I3(tmpcnt[15]),
        .O(\bdatr[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \bdatr[1]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[1]_INST_0_i_1_n_0 ),
        .I2(\bdatr[15]_INST_0_i_3_n_0 ),
        .I3(\bdatr[1]_INST_0_i_2_n_0 ),
        .I4(\bdatr[14]_INST_0_i_2_n_0 ),
        .I5(\bdatr[1]_INST_0_i_3_n_0 ),
        .O(bdatr[1]));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(milcnt[1]),
        .I1(tmpcnt[1]),
        .I2(milcntl_rd),
        .I3(tmp_enb),
        .I4(milcnth_rd),
        .I5(milcnt[17]),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[1]_INST_0_i_2 
       (.I0(mcrcnt[1]),
        .I1(tmpcnt[1]),
        .I2(mcrcntl_rd),
        .I3(tmp_enb),
        .I4(mcrcnth_rd),
        .I5(mcrcnt[17]),
        .O(\bdatr[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[1]_INST_0_i_3 
       (.I0(tckcnt[1]),
        .I1(tmpcnt[1]),
        .I2(tckcntl_rd),
        .I3(tmp_enb),
        .I4(tckcnth_rd),
        .I5(tckcnt[17]),
        .O(\bdatr[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \bdatr[2]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[2]_INST_0_i_1_n_0 ),
        .I2(\bdatr[14]_INST_0_i_2_n_0 ),
        .I3(\bdatr[2]_INST_0_i_2_n_0 ),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(\bdatr[2]_INST_0_i_3_n_0 ),
        .O(bdatr[2]));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(mcrcnt[2]),
        .I1(tmpcnt[2]),
        .I2(mcrcntl_rd),
        .I3(tmp_enb),
        .I4(mcrcnth_rd),
        .I5(mcrcnt[18]),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[2]_INST_0_i_2 
       (.I0(milcnt[2]),
        .I1(tmpcnt[2]),
        .I2(milcntl_rd),
        .I3(tmp_enb),
        .I4(milcnth_rd),
        .I5(milcnt[18]),
        .O(\bdatr[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000053FFFFFF53FF)) 
    \bdatr[2]_INST_0_i_3 
       (.I0(tmpcnt[2]),
        .I1(tckcnt[2]),
        .I2(tmp_enb),
        .I3(tckcntl_rd),
        .I4(tckcnth_rd),
        .I5(tckcnt[18]),
        .O(\bdatr[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88AAAA8A888A88)) 
    \bdatr[3]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[3]_INST_0_i_1_n_0 ),
        .I2(\bdatr[3]_INST_0_i_2_n_0 ),
        .I3(\bdatr[14]_INST_0_i_2_n_0 ),
        .I4(\bdatr[3]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_3_n_0 ),
        .O(bdatr[3]));
  LUT6 #(
    .INIT(64'hFFFFC0A00000C0A0)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(tckcnt[3]),
        .I1(tmpcnt[3]),
        .I2(tckcntl_rd),
        .I3(tmp_enb),
        .I4(tckcnth_rd),
        .I5(tckcnt[19]),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000053FFFFFF53FF)) 
    \bdatr[3]_INST_0_i_2 
       (.I0(tmpcnt[3]),
        .I1(mcrcnt[3]),
        .I2(tmp_enb),
        .I3(mcrcntl_rd),
        .I4(mcrcnth_rd),
        .I5(mcrcnt[19]),
        .O(\bdatr[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[3]_INST_0_i_3 
       (.I0(milcnt[3]),
        .I1(tmpcnt[3]),
        .I2(milcntl_rd),
        .I3(tmp_enb),
        .I4(milcnth_rd),
        .I5(milcnt[19]),
        .O(\bdatr[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88AAAA8A888A88)) 
    \bdatr[4]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[4]_INST_0_i_1_n_0 ),
        .I2(\bdatr[4]_INST_0_i_2_n_0 ),
        .I3(\bdatr[15]_INST_0_i_3_n_0 ),
        .I4(\bdatr[4]_INST_0_i_3_n_0 ),
        .I5(\bdatr[14]_INST_0_i_2_n_0 ),
        .O(bdatr[4]));
  LUT6 #(
    .INIT(64'hFFFFC0A00000C0A0)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(tckcnt[4]),
        .I1(tmpcnt[4]),
        .I2(tckcntl_rd),
        .I3(tmp_enb),
        .I4(tckcnth_rd),
        .I5(tckcnt[20]),
        .O(\bdatr[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[4]_INST_0_i_2 
       (.I0(milcnt[4]),
        .I1(tmpcnt[4]),
        .I2(milcntl_rd),
        .I3(tmp_enb),
        .I4(milcnth_rd),
        .I5(milcnt[20]),
        .O(\bdatr[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D0C3F3F3F3F3F)) 
    \bdatr[4]_INST_0_i_3 
       (.I0(tmpcnt[4]),
        .I1(mcrcnth_rd),
        .I2(mcrcnt[20]),
        .I3(mcrcnt[4]),
        .I4(tmp_enb),
        .I5(mcrcntl_rd),
        .O(\bdatr[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF20000)) 
    \bdatr[5]_INST_0 
       (.I0(\bdatr[14]_INST_0_i_2_n_0 ),
        .I1(\bdatr[5]_INST_0_i_1_n_0 ),
        .I2(\bdatr[5]_INST_0_i_2_n_0 ),
        .I3(\bdatr[5]_INST_0_i_3_n_0 ),
        .I4(\bdatr[15]_INST_0_i_1_n_0 ),
        .I5(\bdatr[5]_INST_0_i_4_n_0 ),
        .O(bdatr[5]));
  LUT6 #(
    .INIT(64'h000053FFFFFF53FF)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(tmpcnt[5]),
        .I1(mcrcnt[5]),
        .I2(tmp_enb),
        .I3(mcrcntl_rd),
        .I4(mcrcnth_rd),
        .I5(mcrcnt[21]),
        .O(\bdatr[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \bdatr[5]_INST_0_i_2 
       (.I0(\bdatr[15]_INST_0_i_3_n_0 ),
        .I1(milcnt[21]),
        .I2(milcnth_rd),
        .I3(\bdatr[5]_INST_0_i_5_n_0 ),
        .I4(\bdatr[7]_INST_0_i_5_n_0 ),
        .I5(milcnt[5]),
        .O(\bdatr[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC0A00000C0A0)) 
    \bdatr[5]_INST_0_i_3 
       (.I0(tckcnt[5]),
        .I1(tmpcnt[5]),
        .I2(tckcntl_rd),
        .I3(tmp_enb),
        .I4(tckcnth_rd),
        .I5(tckcnt[21]),
        .O(\bdatr[5]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[5]_INST_0_i_4 
       (.I0(tctl_mil_ofse),
        .I1(sytmctl_rd),
        .O(\bdatr[5]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \bdatr[5]_INST_0_i_5 
       (.I0(tmpcnt[5]),
        .I1(milcntl_rd),
        .I2(tmp_enb),
        .I3(milcnth_rd),
        .O(\bdatr[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF20000)) 
    \bdatr[6]_INST_0 
       (.I0(\bdatr[14]_INST_0_i_2_n_0 ),
        .I1(\bdatr[6]_INST_0_i_1_n_0 ),
        .I2(\bdatr[6]_INST_0_i_2_n_0 ),
        .I3(\bdatr[6]_INST_0_i_3_n_0 ),
        .I4(\bdatr[15]_INST_0_i_1_n_0 ),
        .I5(\bdatr[6]_INST_0_i_4_n_0 ),
        .O(bdatr[6]));
  LUT6 #(
    .INIT(64'h000053FFFFFF53FF)) 
    \bdatr[6]_INST_0_i_1 
       (.I0(tmpcnt[6]),
        .I1(mcrcnt[6]),
        .I2(tmp_enb),
        .I3(mcrcntl_rd),
        .I4(mcrcnth_rd),
        .I5(mcrcnt[22]),
        .O(\bdatr[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AA8080AAAAAAAA)) 
    \bdatr[6]_INST_0_i_2 
       (.I0(\bdatr[15]_INST_0_i_3_n_0 ),
        .I1(milcnt[22]),
        .I2(milcnth_rd),
        .I3(\bdatr[7]_INST_0_i_5_n_0 ),
        .I4(milcnt[6]),
        .I5(\bdatr[6]_INST_0_i_5_n_0 ),
        .O(\bdatr[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC0A00000C0A0)) 
    \bdatr[6]_INST_0_i_3 
       (.I0(tckcnt[6]),
        .I1(tmpcnt[6]),
        .I2(tckcntl_rd),
        .I3(tmp_enb),
        .I4(tckcnth_rd),
        .I5(tckcnt[22]),
        .O(\bdatr[6]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[6]_INST_0_i_4 
       (.I0(tctl_mcr_ofse),
        .I1(sytmctl_rd),
        .O(\bdatr[6]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \bdatr[6]_INST_0_i_5 
       (.I0(milcntl_rd),
        .I1(tmp_enb),
        .I2(milcnth_rd),
        .I3(tmpcnt[6]),
        .O(\bdatr[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDDFD0000)) 
    \bdatr[7]_INST_0 
       (.I0(\bdatr[7]_INST_0_i_1_n_0 ),
        .I1(\bdatr[7]_INST_0_i_2_n_0 ),
        .I2(\bdatr[14]_INST_0_i_2_n_0 ),
        .I3(\bdatr[7]_INST_0_i_3_n_0 ),
        .I4(\bdatr[15]_INST_0_i_1_n_0 ),
        .I5(\bdatr[7]_INST_0_i_4_n_0 ),
        .O(bdatr[7]));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(tckcnt[7]),
        .I1(tmpcnt[7]),
        .I2(tckcntl_rd),
        .I3(tmp_enb),
        .I4(tckcnth_rd),
        .I5(tckcnt[23]),
        .O(\bdatr[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AA8080AAAAAAAA)) 
    \bdatr[7]_INST_0_i_2 
       (.I0(\bdatr[15]_INST_0_i_3_n_0 ),
        .I1(milcnt[23]),
        .I2(milcnth_rd),
        .I3(\bdatr[7]_INST_0_i_5_n_0 ),
        .I4(milcnt[7]),
        .I5(\bdatr[7]_INST_0_i_6_n_0 ),
        .O(\bdatr[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D0C3F3F3F3F3F)) 
    \bdatr[7]_INST_0_i_3 
       (.I0(tmpcnt[7]),
        .I1(mcrcnth_rd),
        .I2(mcrcnt[23]),
        .I3(mcrcnt[7]),
        .I4(tmp_enb),
        .I5(mcrcntl_rd),
        .O(\bdatr[7]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[7]_INST_0_i_4 
       (.I0(tctl_tck_ofse),
        .I1(sytmctl_rd),
        .O(\bdatr[7]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \bdatr[7]_INST_0_i_5 
       (.I0(milcnth_rd),
        .I1(milcntl_rd),
        .I2(tmp_enb),
        .O(\bdatr[7]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \bdatr[7]_INST_0_i_6 
       (.I0(milcntl_rd),
        .I1(tmp_enb),
        .I2(milcnth_rd),
        .I3(tmpcnt[7]),
        .O(\bdatr[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A88AAAA8A888A88)) 
    \bdatr[8]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[8]_INST_0_i_1_n_0 ),
        .I2(\bdatr[8]_INST_0_i_2_n_0 ),
        .I3(\bdatr[14]_INST_0_i_2_n_0 ),
        .I4(\bdatr[8]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_3_n_0 ),
        .O(bdatr[8]));
  LUT6 #(
    .INIT(64'hFFFFAC000000AC00)) 
    \bdatr[8]_INST_0_i_1 
       (.I0(tmpcnt[8]),
        .I1(tckcnt[8]),
        .I2(tmp_enb),
        .I3(tckcntl_rd),
        .I4(tckcnth_rd),
        .I5(tckcnt[24]),
        .O(\bdatr[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[8]_INST_0_i_2 
       (.I0(mcrcnt[8]),
        .I1(tmpcnt[8]),
        .I2(mcrcntl_rd),
        .I3(tmp_enb),
        .I4(mcrcnth_rd),
        .I5(mcrcnt[24]),
        .O(\bdatr[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[8]_INST_0_i_3 
       (.I0(milcnt[8]),
        .I1(tmpcnt[8]),
        .I2(milcntl_rd),
        .I3(tmp_enb),
        .I4(milcnth_rd),
        .I5(milcnt[24]),
        .O(\bdatr[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \bdatr[9]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[9]_INST_0_i_1_n_0 ),
        .I2(\bdatr[14]_INST_0_i_2_n_0 ),
        .I3(\bdatr[9]_INST_0_i_2_n_0 ),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(\bdatr[9]_INST_0_i_3_n_0 ),
        .O(bdatr[9]));
  LUT6 #(
    .INIT(64'h1D1D0C3F3F3F3F3F)) 
    \bdatr[9]_INST_0_i_1 
       (.I0(tmpcnt[9]),
        .I1(mcrcnth_rd),
        .I2(mcrcnt[25]),
        .I3(mcrcnt[9]),
        .I4(tmp_enb),
        .I5(mcrcntl_rd),
        .O(\bdatr[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000053FFFFFF53FF)) 
    \bdatr[9]_INST_0_i_2 
       (.I0(tmpcnt[9]),
        .I1(milcnt[9]),
        .I2(tmp_enb),
        .I3(milcntl_rd),
        .I4(milcnth_rd),
        .I5(milcnt[25]),
        .O(\bdatr[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00003F5FFFFF3F5F)) 
    \bdatr[9]_INST_0_i_3 
       (.I0(tckcnt[9]),
        .I1(tmpcnt[9]),
        .I2(tckcntl_rd),
        .I3(tmp_enb),
        .I4(tckcnth_rd),
        .I5(tckcnt[25]),
        .O(\bdatr[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    mcrcnth_rd_i_1
       (.I0(badr[1]),
        .I1(badr[2]),
        .I2(badr[0]),
        .I3(bcmdr),
        .I4(bcs_sytm_n),
        .I5(badr[3]),
        .O(mcrcnth_rd0));
  FDRE mcrcnth_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(mcrcnth_rd0),
        .Q(mcrcnth_rd),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    mcrcntl_rd_i_1
       (.I0(badr[2]),
        .I1(badr[1]),
        .I2(bcs_sytm_n),
        .I3(bcmdr),
        .I4(badr[0]),
        .I5(badr[3]),
        .O(mcrcntl_rd0));
  FDRE mcrcntl_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(mcrcntl_rd0),
        .Q(mcrcntl_rd),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'hDF)) 
    \mcrofs[31]_i_1 
       (.I0(rst_n),
        .I1(Q),
        .I2(tctl_mcr_ofse),
        .O(rst_n_0));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    milcnth_rd_i_1
       (.I0(badr[0]),
        .I1(bcmdr),
        .I2(bcs_sytm_n),
        .I3(badr[3]),
        .I4(badr[2]),
        .I5(badr[1]),
        .O(milcnth_rd0));
  FDRE milcnth_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(milcnth_rd0),
        .Q(milcnth_rd),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    milcntl_rd_i_1
       (.I0(badr[2]),
        .I1(badr[1]),
        .I2(bcs_sytm_n),
        .I3(bcmdr),
        .I4(badr[0]),
        .I5(badr[3]),
        .O(milcntl_rd0));
  FDRE milcntl_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(milcntl_rd0),
        .Q(milcntl_rd),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'hDF)) 
    \milofs[31]_i_1 
       (.I0(rst_n),
        .I1(Q),
        .I2(tctl_mil_ofse),
        .O(rst_n_1));
  LUT2 #(
    .INIT(4'h2)) 
    \sytmctl[0]_i_1 
       (.I0(bdatw[0]),
        .I1(\sytmctl[7]_i_3_n_0 ),
        .O(p_1_in[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sytmctl[5]_i_1 
       (.I0(tctl_mil_ofse),
        .I1(\sytmctl[7]_i_3_n_0 ),
        .I2(bdatw[1]),
        .O(p_1_in[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sytmctl[6]_i_1 
       (.I0(tctl_mcr_ofse),
        .I1(\sytmctl[7]_i_3_n_0 ),
        .I2(bdatw[2]),
        .O(p_1_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \sytmctl[7]_i_1 
       (.I0(rst_n),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'hB8)) 
    \sytmctl[7]_i_2 
       (.I0(tctl_tck_ofse),
        .I1(\sytmctl[7]_i_3_n_0 ),
        .I2(bdatw[3]),
        .O(p_1_in[7]));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \sytmctl[7]_i_3 
       (.I0(\sytmctl[7]_i_4_n_0 ),
        .I1(brdy),
        .I2(bcs_sytm_n),
        .I3(bcmdw),
        .O(\sytmctl[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \sytmctl[7]_i_4 
       (.I0(badr[1]),
        .I1(badr[2]),
        .I2(badr[0]),
        .I3(badr[3]),
        .O(\sytmctl[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    sytmctl_rd_i_1
       (.I0(badr[3]),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[1]),
        .I4(bcmdr),
        .I5(bcs_sytm_n),
        .O(sytmctl_rd0));
  FDRE sytmctl_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(sytmctl_rd0),
        .Q(sytmctl_rd),
        .R(p_0_in));
  FDRE \sytmctl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_1_in[0]),
        .Q(Q),
        .R(p_0_in));
  FDRE \sytmctl_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_1_in[5]),
        .Q(tctl_mil_ofse),
        .R(p_0_in));
  FDRE \sytmctl_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_1_in[6]),
        .Q(tctl_mcr_ofse),
        .R(p_0_in));
  FDRE \sytmctl_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_1_in[7]),
        .Q(tctl_tck_ofse),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'hB)) 
    \tckcnt[0]_i_1 
       (.I0(Q),
        .I1(rst_n),
        .O(tckcnt0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    tckcnth_rd_i_1
       (.I0(bcs_sytm_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[3]),
        .I4(badr[2]),
        .I5(badr[1]),
        .O(tckcnth_rd0));
  FDRE tckcnth_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(tckcnth_rd0),
        .Q(tckcnth_rd),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    tckcntl_rd_i_1
       (.I0(badr[0]),
        .I1(bcmdr),
        .I2(bcs_sytm_n),
        .I3(badr[1]),
        .I4(badr[2]),
        .I5(badr[3]),
        .O(tckcntl_rd0));
  FDRE tckcntl_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(tckcntl_rd0),
        .Q(tckcntl_rd),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'hDF)) 
    \tckofs[31]_i_1 
       (.I0(rst_n),
        .I1(Q),
        .I2(tctl_tck_ofse),
        .O(SR));
  LUT4 #(
    .INIT(16'h0040)) 
    tctl_mcr_ofst_i_1
       (.I0(tctl_mcr_ofse),
        .I1(bdatw[2]),
        .I2(rst_n),
        .I3(\sytmctl[7]_i_3_n_0 ),
        .O(tctl_mcr_ofst_i_1_n_0));
  FDRE tctl_mcr_ofst_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(tctl_mcr_ofst_i_1_n_0),
        .Q(tctl_mcr_ofst_reg_0),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h0040)) 
    tctl_mil_ofst_i_1
       (.I0(tctl_mil_ofse),
        .I1(bdatw[1]),
        .I2(rst_n),
        .I3(\sytmctl[7]_i_3_n_0 ),
        .O(tctl_mil_ofst_i_1_n_0));
  FDRE tctl_mil_ofst_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(tctl_mil_ofst_i_1_n_0),
        .Q(tctl_mil_ofst_reg_0),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h0040)) 
    tctl_tck_ofst_i_1
       (.I0(tctl_tck_ofse),
        .I1(bdatw[3]),
        .I2(rst_n),
        .I3(\sytmctl[7]_i_3_n_0 ),
        .O(tctl_tck_ofst_i_1_n_0));
  FDRE tctl_tck_ofst_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(tctl_tck_ofst_i_1_n_0),
        .Q(E),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'hFE)) 
    tmp_enb_i_1
       (.I0(milcnth_rd),
        .I1(tckcnth_rd),
        .I2(mcrcnth_rd),
        .O(tmp_enb_i_1_n_0));
  FDRE tmp_enb_reg
       (.C(clk),
        .CE(\tmpcnt[15]_i_1_n_0 ),
        .D(tmp_enb_i_1_n_0),
        .Q(tmp_enb),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \tmpcnt[0]_i_1 
       (.I0(milcnth_rd),
        .I1(milcnt[0]),
        .I2(tckcnth_rd),
        .I3(tckcnt[0]),
        .I4(mcrcnt[0]),
        .I5(mcrcnth_rd),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \tmpcnt[10]_i_1 
       (.I0(milcnth_rd),
        .I1(milcnt[10]),
        .I2(tckcnth_rd),
        .I3(tckcnt[10]),
        .I4(mcrcnt[10]),
        .I5(mcrcnth_rd),
        .O(p_2_in[10]));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \tmpcnt[11]_i_1 
       (.I0(milcnth_rd),
        .I1(milcnt[11]),
        .I2(tckcnth_rd),
        .I3(tckcnt[11]),
        .I4(mcrcnt[11]),
        .I5(mcrcnth_rd),
        .O(p_2_in[11]));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \tmpcnt[12]_i_1 
       (.I0(milcnth_rd),
        .I1(milcnt[12]),
        .I2(tckcnth_rd),
        .I3(tckcnt[12]),
        .I4(mcrcnt[12]),
        .I5(mcrcnth_rd),
        .O(p_2_in[12]));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \tmpcnt[13]_i_1 
       (.I0(milcnth_rd),
        .I1(milcnt[13]),
        .I2(tckcnth_rd),
        .I3(tckcnt[13]),
        .I4(mcrcnt[13]),
        .I5(mcrcnth_rd),
        .O(p_2_in[13]));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \tmpcnt[14]_i_1 
       (.I0(milcnth_rd),
        .I1(milcnt[14]),
        .I2(tckcnth_rd),
        .I3(tckcnt[14]),
        .I4(mcrcnt[14]),
        .I5(mcrcnth_rd),
        .O(p_2_in[14]));
  LUT5 #(
    .INIT(32'hFFFEAAAA)) 
    \tmpcnt[15]_i_1 
       (.I0(tmp_enb_i_1_n_0),
        .I1(tckcntl_rd),
        .I2(milcntl_rd),
        .I3(mcrcntl_rd),
        .I4(brdy),
        .O(\tmpcnt[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \tmpcnt[15]_i_2 
       (.I0(milcnth_rd),
        .I1(milcnt[15]),
        .I2(tckcnth_rd),
        .I3(tckcnt[15]),
        .I4(mcrcnt[15]),
        .I5(mcrcnth_rd),
        .O(p_2_in[15]));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \tmpcnt[1]_i_1 
       (.I0(milcnth_rd),
        .I1(milcnt[1]),
        .I2(tckcnth_rd),
        .I3(tckcnt[1]),
        .I4(mcrcnt[1]),
        .I5(mcrcnth_rd),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \tmpcnt[2]_i_1 
       (.I0(milcnth_rd),
        .I1(milcnt[2]),
        .I2(tckcnth_rd),
        .I3(tckcnt[2]),
        .I4(mcrcnt[2]),
        .I5(mcrcnth_rd),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \tmpcnt[3]_i_1 
       (.I0(milcnth_rd),
        .I1(milcnt[3]),
        .I2(tckcnth_rd),
        .I3(tckcnt[3]),
        .I4(mcrcnt[3]),
        .I5(mcrcnth_rd),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \tmpcnt[4]_i_1 
       (.I0(milcnth_rd),
        .I1(milcnt[4]),
        .I2(tckcnth_rd),
        .I3(tckcnt[4]),
        .I4(mcrcnt[4]),
        .I5(mcrcnth_rd),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \tmpcnt[5]_i_1 
       (.I0(milcnth_rd),
        .I1(milcnt[5]),
        .I2(tckcnth_rd),
        .I3(tckcnt[5]),
        .I4(mcrcnt[5]),
        .I5(mcrcnth_rd),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \tmpcnt[6]_i_1 
       (.I0(milcnth_rd),
        .I1(milcnt[6]),
        .I2(tckcnth_rd),
        .I3(tckcnt[6]),
        .I4(mcrcnt[6]),
        .I5(mcrcnth_rd),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \tmpcnt[7]_i_1 
       (.I0(milcnth_rd),
        .I1(milcnt[7]),
        .I2(tckcnth_rd),
        .I3(tckcnt[7]),
        .I4(mcrcnt[7]),
        .I5(mcrcnth_rd),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \tmpcnt[8]_i_1 
       (.I0(milcnth_rd),
        .I1(milcnt[8]),
        .I2(tckcnth_rd),
        .I3(tckcnt[8]),
        .I4(mcrcnt[8]),
        .I5(mcrcnth_rd),
        .O(p_2_in[8]));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \tmpcnt[9]_i_1 
       (.I0(milcnth_rd),
        .I1(milcnt[9]),
        .I2(tckcnth_rd),
        .I3(tckcnt[9]),
        .I4(mcrcnt[9]),
        .I5(mcrcnth_rd),
        .O(p_2_in[9]));
  FDRE \tmpcnt_reg[0] 
       (.C(clk),
        .CE(\tmpcnt[15]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(tmpcnt[0]),
        .R(p_0_in));
  FDRE \tmpcnt_reg[10] 
       (.C(clk),
        .CE(\tmpcnt[15]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(tmpcnt[10]),
        .R(p_0_in));
  FDRE \tmpcnt_reg[11] 
       (.C(clk),
        .CE(\tmpcnt[15]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(tmpcnt[11]),
        .R(p_0_in));
  FDRE \tmpcnt_reg[12] 
       (.C(clk),
        .CE(\tmpcnt[15]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(tmpcnt[12]),
        .R(p_0_in));
  FDRE \tmpcnt_reg[13] 
       (.C(clk),
        .CE(\tmpcnt[15]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(tmpcnt[13]),
        .R(p_0_in));
  FDRE \tmpcnt_reg[14] 
       (.C(clk),
        .CE(\tmpcnt[15]_i_1_n_0 ),
        .D(p_2_in[14]),
        .Q(tmpcnt[14]),
        .R(p_0_in));
  FDRE \tmpcnt_reg[15] 
       (.C(clk),
        .CE(\tmpcnt[15]_i_1_n_0 ),
        .D(p_2_in[15]),
        .Q(tmpcnt[15]),
        .R(p_0_in));
  FDRE \tmpcnt_reg[1] 
       (.C(clk),
        .CE(\tmpcnt[15]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(tmpcnt[1]),
        .R(p_0_in));
  FDRE \tmpcnt_reg[2] 
       (.C(clk),
        .CE(\tmpcnt[15]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(tmpcnt[2]),
        .R(p_0_in));
  FDRE \tmpcnt_reg[3] 
       (.C(clk),
        .CE(\tmpcnt[15]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(tmpcnt[3]),
        .R(p_0_in));
  FDRE \tmpcnt_reg[4] 
       (.C(clk),
        .CE(\tmpcnt[15]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(tmpcnt[4]),
        .R(p_0_in));
  FDRE \tmpcnt_reg[5] 
       (.C(clk),
        .CE(\tmpcnt[15]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(tmpcnt[5]),
        .R(p_0_in));
  FDRE \tmpcnt_reg[6] 
       (.C(clk),
        .CE(\tmpcnt[15]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(tmpcnt[6]),
        .R(p_0_in));
  FDRE \tmpcnt_reg[7] 
       (.C(clk),
        .CE(\tmpcnt[15]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(tmpcnt[7]),
        .R(p_0_in));
  FDRE \tmpcnt_reg[8] 
       (.C(clk),
        .CE(\tmpcnt[15]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(tmpcnt[8]),
        .R(p_0_in));
  FDRE \tmpcnt_reg[9] 
       (.C(clk),
        .CE(\tmpcnt[15]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(tmpcnt[9]),
        .R(p_0_in));
endmodule
