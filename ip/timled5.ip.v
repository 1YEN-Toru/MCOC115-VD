
(* STRUCTURAL_NETLIST = "yes" *)
module timled5
   (clk,
    rst_n,
    brdy,
    bcmdr,
    bcmdw,
    bcs_tled_n,
    simumd,
    gpio_port,
    gpio_port_oe,
    badr,
    bdatw,
    tled_ledr,
    tled_ledg,
    tled_ledb,
    tled_led1,
    tled_led2,
    tled_lofr,
    bdatr);
//
// LED PWM timer unit
//		(c) 2023	1YEN Toru
//
//
//	2023/12/16	ver.1.02
//		modify: duty register to double buffer
//
//	2023/09/23	ver.1.00
//		for Cmod A7 FPGA board
//			on board user RGB LED * 1
//			on board user LED * 2
//				total * 5 LEDs
//		LED drive signals tled_led[rgb12] are all positive logic:
//			assign	tled_led[rgb]_n=~tled_led[rgb];
//			before output to I/O buffers for Cmod A7
//
  input clk;
  input rst_n;
  input brdy;
  input bcmdr;
  input bcmdw;
  input bcs_tled_n;
  input simumd;
  input [2:0]gpio_port;
  input [2:0]gpio_port_oe;
  input [3:0]badr;
  input [15:0]bdatw;
  output tled_ledr;
  output tled_ledg;
  output tled_ledb;
  output tled_led1;
  output tled_led2;
  output tled_lofr;
  output [15:0]bdatr;

  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_tled_n;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire cnt_enb;
  wire cnt_enb0;
  wire [2:0]gpio_port;
  wire [2:0]gpio_port_oe;
  wire lcnt_n_18;
  wire lcnt_n_19;
  wire lcnt_n_20;
  wire lcnt_n_21;
  wire lcnt_n_22;
  wire lcnt_n_23;
  wire lcnt_n_24;
  wire lcnt_n_25;
  wire lcnt_n_26;
  wire lcnt_n_27;
  wire lcnt_n_28;
  wire lcnt_n_29;
  wire lcnt_n_30;
  wire lcnt_n_31;
  wire lcnt_n_32;
  wire lcnt_n_33;
  wire lcnt_n_34;
  wire lcnt_n_35;
  wire lcnt_n_36;
  wire lcnt_n_37;
  wire lcnt_n_38;
  wire lcnt_n_39;
  wire lcnt_n_40;
  wire lcnt_n_41;
  wire lcnt_n_42;
  wire lcnt_n_43;
  wire lcnt_n_44;
  wire lcnt_n_45;
  wire lcnt_n_46;
  wire lcnt_n_47;
  wire lcnt_n_48;
  wire lcnt_n_49;
  wire lcnt_n_9;
  wire lctl_led1_enb;
  wire lctl_led2_enb;
  wire p_0_in10_in;
  wire p_0_in7_in;
  wire p_0_in8_in;
  wire p_17_in;
  wire psc_cnt0;
  wire rst_n;
  wire [5:3]sel0;
  wire simumd;
  wire tcnt_set_loff;
  wire tcnt_tim_enb__6;
  wire tled_led1;
  wire tled_led2;
  wire tled_ledb;
  wire tled_ledg;
  wire tled_ledr;
  wire tled_lofr;
  wire tleddtyr_dbl0;
  wire [15:8]tledpsc;
  wire wr_tledpsc;

  tled_cntr lcnt
       (.CO(cnt_enb0),
        .Q({lctl_led2_enb,lctl_led1_enb}),
        .SR(tleddtyr_dbl0),
        .badr(badr),
        .bcmdw(bcmdw),
        .bcs_tled_n(bcs_tled_n),
        .bdatw(bdatw),
        .brdy(brdy),
        .clk(clk),
        .cnt_enb(cnt_enb),
        .p_0_in10_in(p_0_in10_in),
        .p_0_in7_in(p_0_in7_in),
        .p_0_in8_in(p_0_in8_in),
        .p_17_in(p_17_in),
        .psc_cnt0(psc_cnt0),
        .rst_n(rst_n),
        .rst_n_0(lcnt_n_9),
        .sel0(sel0),
        .simumd(simumd),
        .tcnt_set_loff(tcnt_set_loff),
        .tcnt_tim_enb__6(tcnt_tim_enb__6),
        .tled_led1(tled_led1),
        .tled_led2(tled_led2),
        .\tleddty1_reg[7]_0 ({lcnt_n_34,lcnt_n_35,lcnt_n_36,lcnt_n_37,lcnt_n_38,lcnt_n_39,lcnt_n_40,lcnt_n_41}),
        .\tleddty2_reg[7]_0 ({lcnt_n_26,lcnt_n_27,lcnt_n_28,lcnt_n_29,lcnt_n_30,lcnt_n_31,lcnt_n_32,lcnt_n_33}),
        .\tleddtyb_reg[7]_0 ({lcnt_n_42,lcnt_n_43,lcnt_n_44,lcnt_n_45,lcnt_n_46,lcnt_n_47,lcnt_n_48,lcnt_n_49}),
        .\tledpsc_reg[0]_0 (lcnt_n_18),
        .\tledpsc_reg[15]_0 (tledpsc),
        .\tledpsc_reg[1]_0 (lcnt_n_19),
        .\tledpsc_reg[2]_0 (lcnt_n_20),
        .\tledpsc_reg[3]_0 (lcnt_n_21),
        .\tledpsc_reg[4]_0 (lcnt_n_22),
        .\tledpsc_reg[5]_0 (lcnt_n_23),
        .\tledpsc_reg[6]_0 (lcnt_n_24),
        .\tledpsc_reg[7]_0 (lcnt_n_25),
        .wr_tledpsc(wr_tledpsc));
  tled_ctrl lctl
       (.CO(cnt_enb0),
        .Q({lctl_led2_enb,lctl_led1_enb}),
        .SR(tleddtyr_dbl0),
        .badr(badr),
        .bcmdr(bcmdr),
        .bcs_tled_n(bcs_tled_n),
        .bdatr(bdatr),
        .\bdatr[15] (tledpsc),
        .\bdatr[7]_0 ({lcnt_n_26,lcnt_n_27,lcnt_n_28,lcnt_n_29,lcnt_n_30,lcnt_n_31,lcnt_n_32,lcnt_n_33}),
        .\bdatr[7]_1 ({lcnt_n_34,lcnt_n_35,lcnt_n_36,lcnt_n_37,lcnt_n_38,lcnt_n_39,lcnt_n_40,lcnt_n_41}),
        .\bdatr[7]_2 ({lcnt_n_42,lcnt_n_43,lcnt_n_44,lcnt_n_45,lcnt_n_46,lcnt_n_47,lcnt_n_48,lcnt_n_49}),
        .bdatr_0_sp_1(lcnt_n_18),
        .bdatr_1_sp_1(lcnt_n_19),
        .bdatr_2_sp_1(lcnt_n_20),
        .bdatr_3_sp_1(lcnt_n_21),
        .bdatr_4_sp_1(lcnt_n_22),
        .bdatr_5_sp_1(lcnt_n_23),
        .bdatr_6_sp_1(lcnt_n_24),
        .bdatr_7_sp_1(lcnt_n_25),
        .bdatw(bdatw[5:0]),
        .brdy(brdy),
        .clk(clk),
        .cnt_enb(cnt_enb),
        .gpio_port(gpio_port),
        .gpio_port_oe(gpio_port_oe),
        .p_0_in10_in(p_0_in10_in),
        .p_0_in7_in(p_0_in7_in),
        .p_0_in8_in(p_0_in8_in),
        .p_17_in(p_17_in),
        .psc_cnt0(psc_cnt0),
        .rd_tleddtyr_reg_0(lcnt_n_9),
        .rd_tledpsc_reg_0(sel0),
        .rst_n(rst_n),
        .tcnt_set_loff(tcnt_set_loff),
        .tcnt_tim_enb__6(tcnt_tim_enb__6),
        .tled_ledb(tled_ledb),
        .tled_ledg(tled_ledg),
        .tled_ledr(tled_ledr),
        .tled_lofr(tled_lofr),
        .wr_tledpsc(wr_tledpsc));
endmodule

module tled_cntr
   (CO,
    p_0_in10_in,
    p_0_in8_in,
    p_0_in7_in,
    tcnt_set_loff,
    p_17_in,
    wr_tledpsc,
    tled_led1,
    tled_led2,
    rst_n_0,
    \tledpsc_reg[15]_0 ,
    \tledpsc_reg[0]_0 ,
    \tledpsc_reg[1]_0 ,
    \tledpsc_reg[2]_0 ,
    \tledpsc_reg[3]_0 ,
    \tledpsc_reg[4]_0 ,
    \tledpsc_reg[5]_0 ,
    \tledpsc_reg[6]_0 ,
    \tledpsc_reg[7]_0 ,
    \tleddty2_reg[7]_0 ,
    \tleddty1_reg[7]_0 ,
    \tleddtyb_reg[7]_0 ,
    psc_cnt0,
    clk,
    rst_n,
    cnt_enb,
    tcnt_tim_enb__6,
    simumd,
    badr,
    bcs_tled_n,
    bcmdw,
    brdy,
    Q,
    sel0,
    bdatw,
    SR);
  output [0:0]CO;
  output p_0_in10_in;
  output p_0_in8_in;
  output p_0_in7_in;
  output tcnt_set_loff;
  output p_17_in;
  output wr_tledpsc;
  output tled_led1;
  output tled_led2;
  output rst_n_0;
  output [7:0]\tledpsc_reg[15]_0 ;
  output \tledpsc_reg[0]_0 ;
  output \tledpsc_reg[1]_0 ;
  output \tledpsc_reg[2]_0 ;
  output \tledpsc_reg[3]_0 ;
  output \tledpsc_reg[4]_0 ;
  output \tledpsc_reg[5]_0 ;
  output \tledpsc_reg[6]_0 ;
  output \tledpsc_reg[7]_0 ;
  output [7:0]\tleddty2_reg[7]_0 ;
  output [7:0]\tleddty1_reg[7]_0 ;
  output [7:0]\tleddtyb_reg[7]_0 ;
  input psc_cnt0;
  input clk;
  input rst_n;
  input cnt_enb;
  input tcnt_tim_enb__6;
  input simumd;
  input [3:0]badr;
  input bcs_tled_n;
  input bcmdw;
  input brdy;
  input [1:0]Q;
  input [2:0]sel0;
  input [15:0]bdatw;
  input [0:0]SR;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]CO;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire bcmdw;
  wire bcs_tled_n;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire cnt_enb;
  wire cnt_enb0_carry__0_i_1_n_0;
  wire cnt_enb0_carry__0_i_2_n_0;
  wire cnt_enb0_carry__0_n_3;
  wire cnt_enb0_carry_i_1_n_0;
  wire cnt_enb0_carry_i_2_n_0;
  wire cnt_enb0_carry_i_3_n_0;
  wire cnt_enb0_carry_i_4_n_0;
  wire cnt_enb0_carry_n_0;
  wire cnt_enb0_carry_n_1;
  wire cnt_enb0_carry_n_2;
  wire cnt_enb0_carry_n_3;
  wire led_drv0;
  wire led_drv1;
  wire \led_drv[0]_i_1_n_0 ;
  wire \led_drv[0]_i_2_n_0 ;
  wire \led_drv[0]_i_3_n_0 ;
  wire \led_drv[0]_i_4_n_0 ;
  wire \led_drv[0]_i_5_n_0 ;
  wire \led_drv[0]_i_6_n_0 ;
  wire \led_drv[1]_i_1_n_0 ;
  wire \led_drv[1]_i_2_n_0 ;
  wire \led_drv[1]_i_3_n_0 ;
  wire \led_drv[1]_i_4_n_0 ;
  wire \led_drv[1]_i_5_n_0 ;
  wire \led_drv[1]_i_6_n_0 ;
  wire \led_drv[2]_i_1_n_0 ;
  wire \led_drv[2]_i_2_n_0 ;
  wire \led_drv[2]_i_3_n_0 ;
  wire \led_drv[2]_i_4_n_0 ;
  wire \led_drv[2]_i_5_n_0 ;
  wire \led_drv[2]_i_6_n_0 ;
  wire \led_drv[3]_i_1_n_0 ;
  wire \led_drv[3]_i_2_n_0 ;
  wire \led_drv[3]_i_3_n_0 ;
  wire \led_drv[3]_i_4_n_0 ;
  wire \led_drv[3]_i_5_n_0 ;
  wire \led_drv[3]_i_6_n_0 ;
  wire \led_drv[4]_i_1_n_0 ;
  wire \led_drv[4]_i_3_n_0 ;
  wire \led_drv[4]_i_5_n_0 ;
  wire \led_drv[4]_i_6_n_0 ;
  wire \led_drv[4]_i_7_n_0 ;
  wire \led_drv[4]_i_8_n_0 ;
  wire \led_drv_reg_n_0_[0] ;
  wire \led_drv_reg_n_0_[1] ;
  wire [7:0]p_0_in;
  wire p_0_in10_in;
  wire p_0_in7_in;
  wire p_0_in8_in;
  wire p_17_in;
  wire psc_cnt0;
  wire \psc_cnt[0]_i_3_n_0 ;
  wire [15:0]psc_cnt_reg;
  wire \psc_cnt_reg[0]_i_2_n_0 ;
  wire \psc_cnt_reg[0]_i_2_n_1 ;
  wire \psc_cnt_reg[0]_i_2_n_2 ;
  wire \psc_cnt_reg[0]_i_2_n_3 ;
  wire \psc_cnt_reg[0]_i_2_n_4 ;
  wire \psc_cnt_reg[0]_i_2_n_5 ;
  wire \psc_cnt_reg[0]_i_2_n_6 ;
  wire \psc_cnt_reg[0]_i_2_n_7 ;
  wire \psc_cnt_reg[12]_i_1_n_1 ;
  wire \psc_cnt_reg[12]_i_1_n_2 ;
  wire \psc_cnt_reg[12]_i_1_n_3 ;
  wire \psc_cnt_reg[12]_i_1_n_4 ;
  wire \psc_cnt_reg[12]_i_1_n_5 ;
  wire \psc_cnt_reg[12]_i_1_n_6 ;
  wire \psc_cnt_reg[12]_i_1_n_7 ;
  wire \psc_cnt_reg[4]_i_1_n_0 ;
  wire \psc_cnt_reg[4]_i_1_n_1 ;
  wire \psc_cnt_reg[4]_i_1_n_2 ;
  wire \psc_cnt_reg[4]_i_1_n_3 ;
  wire \psc_cnt_reg[4]_i_1_n_4 ;
  wire \psc_cnt_reg[4]_i_1_n_5 ;
  wire \psc_cnt_reg[4]_i_1_n_6 ;
  wire \psc_cnt_reg[4]_i_1_n_7 ;
  wire \psc_cnt_reg[8]_i_1_n_0 ;
  wire \psc_cnt_reg[8]_i_1_n_1 ;
  wire \psc_cnt_reg[8]_i_1_n_2 ;
  wire \psc_cnt_reg[8]_i_1_n_3 ;
  wire \psc_cnt_reg[8]_i_1_n_4 ;
  wire \psc_cnt_reg[8]_i_1_n_5 ;
  wire \psc_cnt_reg[8]_i_1_n_6 ;
  wire \psc_cnt_reg[8]_i_1_n_7 ;
  wire \pwm_cnt[7]_i_3_n_0 ;
  wire [7:0]pwm_cnt_reg;
  wire rst_n;
  wire rst_n_0;
  wire [2:0]sel0;
  wire simumd;
  wire tcnt_set_loff;
  wire tcnt_tim_enb__6;
  wire tled_led1;
  wire tled_led2;
  wire [7:0]tleddty1_dbl;
  wire [7:0]\tleddty1_reg[7]_0 ;
  wire [7:0]tleddty2_dbl;
  wire [7:0]\tleddty2_reg[7]_0 ;
  wire [7:0]tleddtyb_dbl;
  wire [7:0]\tleddtyb_reg[7]_0 ;
  wire [7:0]tleddtyg_dbl;
  wire \tleddtyg_reg_n_0_[0] ;
  wire \tleddtyg_reg_n_0_[1] ;
  wire \tleddtyg_reg_n_0_[2] ;
  wire \tleddtyg_reg_n_0_[3] ;
  wire \tleddtyg_reg_n_0_[4] ;
  wire \tleddtyg_reg_n_0_[5] ;
  wire \tleddtyg_reg_n_0_[6] ;
  wire \tleddtyg_reg_n_0_[7] ;
  wire [7:0]tleddtyr_dbl;
  wire \tleddtyr_reg_n_0_[0] ;
  wire \tleddtyr_reg_n_0_[1] ;
  wire \tleddtyr_reg_n_0_[2] ;
  wire \tleddtyr_reg_n_0_[3] ;
  wire \tleddtyr_reg_n_0_[4] ;
  wire \tleddtyr_reg_n_0_[5] ;
  wire \tleddtyr_reg_n_0_[6] ;
  wire \tleddtyr_reg_n_0_[7] ;
  wire \tledintc[0]_i_3_n_0 ;
  wire [7:0]tledpsc;
  wire \tledpsc_reg[0]_0 ;
  wire [7:0]\tledpsc_reg[15]_0 ;
  wire \tledpsc_reg[1]_0 ;
  wire \tledpsc_reg[2]_0 ;
  wire \tledpsc_reg[3]_0 ;
  wire \tledpsc_reg[4]_0 ;
  wire \tledpsc_reg[5]_0 ;
  wire \tledpsc_reg[6]_0 ;
  wire \tledpsc_reg[7]_0 ;
  wire wr_tleddty1;
  wire wr_tleddty2;
  wire wr_tleddtyb;
  wire wr_tleddtyg;
  wire wr_tleddtyr;
  wire wr_tledpsc;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hAAAACCCCAAAAF000)) 
    \bdatr[0]_INST_0_i_2 
       (.I0(tledpsc[0]),
        .I1(\tleddtyr_reg_n_0_[0] ),
        .I2(\tleddtyg_reg_n_0_[0] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[1]),
        .O(\tledpsc_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCCAAAAF000)) 
    \bdatr[1]_INST_0_i_2 
       (.I0(tledpsc[1]),
        .I1(\tleddtyr_reg_n_0_[1] ),
        .I2(\tleddtyg_reg_n_0_[1] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[1]),
        .O(\tledpsc_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCCAAAAF000)) 
    \bdatr[2]_INST_0_i_2 
       (.I0(tledpsc[2]),
        .I1(\tleddtyr_reg_n_0_[2] ),
        .I2(\tleddtyg_reg_n_0_[2] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[1]),
        .O(\tledpsc_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCCAAAAF000)) 
    \bdatr[3]_INST_0_i_2 
       (.I0(tledpsc[3]),
        .I1(\tleddtyr_reg_n_0_[3] ),
        .I2(\tleddtyg_reg_n_0_[3] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[1]),
        .O(\tledpsc_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCCAAAAF000)) 
    \bdatr[4]_INST_0_i_2 
       (.I0(tledpsc[4]),
        .I1(\tleddtyr_reg_n_0_[4] ),
        .I2(\tleddtyg_reg_n_0_[4] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[1]),
        .O(\tledpsc_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCCAAAAF000)) 
    \bdatr[5]_INST_0_i_3 
       (.I0(tledpsc[5]),
        .I1(\tleddtyr_reg_n_0_[5] ),
        .I2(\tleddtyg_reg_n_0_[5] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[1]),
        .O(\tledpsc_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCCAAAAF000)) 
    \bdatr[6]_INST_0_i_1 
       (.I0(tledpsc[6]),
        .I1(\tleddtyr_reg_n_0_[6] ),
        .I2(\tleddtyg_reg_n_0_[6] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[1]),
        .O(\tledpsc_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCCAAAAF000)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(tledpsc[7]),
        .I1(\tleddtyr_reg_n_0_[7] ),
        .I2(\tleddtyg_reg_n_0_[7] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[1]),
        .O(\tledpsc_reg[7]_0 ));
  CARRY4 cnt_enb0_carry
       (.CI(\<const0> ),
        .CO({cnt_enb0_carry_n_0,cnt_enb0_carry_n_1,cnt_enb0_carry_n_2,cnt_enb0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({cnt_enb0_carry_i_1_n_0,cnt_enb0_carry_i_2_n_0,cnt_enb0_carry_i_3_n_0,cnt_enb0_carry_i_4_n_0}));
  CARRY4 cnt_enb0_carry__0
       (.CI(cnt_enb0_carry_n_0),
        .CO({CO,cnt_enb0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,cnt_enb0_carry__0_i_1_n_0,cnt_enb0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    cnt_enb0_carry__0_i_1
       (.I0(\tledpsc_reg[15]_0 [7]),
        .I1(psc_cnt_reg[15]),
        .O(cnt_enb0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cnt_enb0_carry__0_i_2
       (.I0(psc_cnt_reg[13]),
        .I1(\tledpsc_reg[15]_0 [5]),
        .I2(psc_cnt_reg[12]),
        .I3(\tledpsc_reg[15]_0 [4]),
        .I4(\tledpsc_reg[15]_0 [6]),
        .I5(psc_cnt_reg[14]),
        .O(cnt_enb0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cnt_enb0_carry_i_1
       (.I0(psc_cnt_reg[10]),
        .I1(\tledpsc_reg[15]_0 [2]),
        .I2(psc_cnt_reg[9]),
        .I3(\tledpsc_reg[15]_0 [1]),
        .I4(\tledpsc_reg[15]_0 [3]),
        .I5(psc_cnt_reg[11]),
        .O(cnt_enb0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cnt_enb0_carry_i_2
       (.I0(psc_cnt_reg[7]),
        .I1(tledpsc[7]),
        .I2(psc_cnt_reg[6]),
        .I3(tledpsc[6]),
        .I4(\tledpsc_reg[15]_0 [0]),
        .I5(psc_cnt_reg[8]),
        .O(cnt_enb0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cnt_enb0_carry_i_3
       (.I0(psc_cnt_reg[4]),
        .I1(tledpsc[4]),
        .I2(psc_cnt_reg[3]),
        .I3(tledpsc[3]),
        .I4(tledpsc[5]),
        .I5(psc_cnt_reg[5]),
        .O(cnt_enb0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cnt_enb0_carry_i_4
       (.I0(psc_cnt_reg[1]),
        .I1(tledpsc[1]),
        .I2(psc_cnt_reg[0]),
        .I3(tledpsc[0]),
        .I4(tledpsc[2]),
        .I5(psc_cnt_reg[2]),
        .O(cnt_enb0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hC0C000A0C0C0A0A0)) 
    \led_drv[0]_i_1 
       (.I0(\led_drv_reg_n_0_[0] ),
        .I1(\led_drv[0]_i_2_n_0 ),
        .I2(rst_n),
        .I3(\led_drv[0]_i_3_n_0 ),
        .I4(led_drv1),
        .I5(cnt_enb),
        .O(\led_drv[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \led_drv[0]_i_2 
       (.I0(\tleddty2_reg[7]_0 [4]),
        .I1(\tleddty2_reg[7]_0 [5]),
        .I2(\tleddty2_reg[7]_0 [6]),
        .I3(\tleddty2_reg[7]_0 [7]),
        .I4(\led_drv[0]_i_4_n_0 ),
        .O(\led_drv[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \led_drv[0]_i_3 
       (.I0(tleddty2_dbl[6]),
        .I1(p_0_in[6]),
        .I2(tleddty2_dbl[7]),
        .I3(p_0_in[7]),
        .I4(\led_drv[0]_i_5_n_0 ),
        .I5(\led_drv[0]_i_6_n_0 ),
        .O(\led_drv[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \led_drv[0]_i_4 
       (.I0(\tleddty2_reg[7]_0 [3]),
        .I1(\tleddty2_reg[7]_0 [2]),
        .I2(\tleddty2_reg[7]_0 [1]),
        .I3(\tleddty2_reg[7]_0 [0]),
        .O(\led_drv[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \led_drv[0]_i_5 
       (.I0(tleddty2_dbl[3]),
        .I1(p_0_in[3]),
        .I2(tleddty2_dbl[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(tleddty2_dbl[2]),
        .O(\led_drv[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \led_drv[0]_i_6 
       (.I0(tleddty2_dbl[4]),
        .I1(p_0_in[4]),
        .I2(tleddty2_dbl[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[5]),
        .I5(tleddty2_dbl[5]),
        .O(\led_drv[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hC0C000A0C0C0A0A0)) 
    \led_drv[1]_i_1 
       (.I0(\led_drv_reg_n_0_[1] ),
        .I1(\led_drv[1]_i_2_n_0 ),
        .I2(rst_n),
        .I3(\led_drv[1]_i_3_n_0 ),
        .I4(led_drv1),
        .I5(cnt_enb),
        .O(\led_drv[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \led_drv[1]_i_2 
       (.I0(\tleddty1_reg[7]_0 [4]),
        .I1(\tleddty1_reg[7]_0 [5]),
        .I2(\tleddty1_reg[7]_0 [6]),
        .I3(\tleddty1_reg[7]_0 [7]),
        .I4(\led_drv[1]_i_4_n_0 ),
        .O(\led_drv[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \led_drv[1]_i_3 
       (.I0(tleddty1_dbl[6]),
        .I1(p_0_in[6]),
        .I2(tleddty1_dbl[7]),
        .I3(p_0_in[7]),
        .I4(\led_drv[1]_i_5_n_0 ),
        .I5(\led_drv[1]_i_6_n_0 ),
        .O(\led_drv[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \led_drv[1]_i_4 
       (.I0(\tleddty1_reg[7]_0 [3]),
        .I1(\tleddty1_reg[7]_0 [2]),
        .I2(\tleddty1_reg[7]_0 [1]),
        .I3(\tleddty1_reg[7]_0 [0]),
        .O(\led_drv[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \led_drv[1]_i_5 
       (.I0(tleddty1_dbl[3]),
        .I1(p_0_in[3]),
        .I2(tleddty1_dbl[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(tleddty1_dbl[2]),
        .O(\led_drv[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \led_drv[1]_i_6 
       (.I0(tleddty1_dbl[4]),
        .I1(p_0_in[4]),
        .I2(tleddty1_dbl[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[5]),
        .I5(tleddty1_dbl[5]),
        .O(\led_drv[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hC0C000A0C0C0A0A0)) 
    \led_drv[2]_i_1 
       (.I0(p_0_in7_in),
        .I1(\led_drv[2]_i_2_n_0 ),
        .I2(rst_n),
        .I3(\led_drv[2]_i_3_n_0 ),
        .I4(led_drv1),
        .I5(cnt_enb),
        .O(\led_drv[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \led_drv[2]_i_2 
       (.I0(\tleddtyb_reg[7]_0 [4]),
        .I1(\tleddtyb_reg[7]_0 [5]),
        .I2(\tleddtyb_reg[7]_0 [6]),
        .I3(\tleddtyb_reg[7]_0 [7]),
        .I4(\led_drv[2]_i_4_n_0 ),
        .O(\led_drv[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \led_drv[2]_i_3 
       (.I0(tleddtyb_dbl[6]),
        .I1(p_0_in[6]),
        .I2(tleddtyb_dbl[7]),
        .I3(p_0_in[7]),
        .I4(\led_drv[2]_i_5_n_0 ),
        .I5(\led_drv[2]_i_6_n_0 ),
        .O(\led_drv[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \led_drv[2]_i_4 
       (.I0(\tleddtyb_reg[7]_0 [3]),
        .I1(\tleddtyb_reg[7]_0 [2]),
        .I2(\tleddtyb_reg[7]_0 [1]),
        .I3(\tleddtyb_reg[7]_0 [0]),
        .O(\led_drv[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \led_drv[2]_i_5 
       (.I0(tleddtyb_dbl[3]),
        .I1(p_0_in[3]),
        .I2(tleddtyb_dbl[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(tleddtyb_dbl[2]),
        .O(\led_drv[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \led_drv[2]_i_6 
       (.I0(tleddtyb_dbl[4]),
        .I1(p_0_in[4]),
        .I2(tleddtyb_dbl[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[5]),
        .I5(tleddtyb_dbl[5]),
        .O(\led_drv[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hC0C000A0C0C0A0A0)) 
    \led_drv[3]_i_1 
       (.I0(p_0_in8_in),
        .I1(\led_drv[3]_i_2_n_0 ),
        .I2(rst_n),
        .I3(\led_drv[3]_i_3_n_0 ),
        .I4(led_drv1),
        .I5(cnt_enb),
        .O(\led_drv[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \led_drv[3]_i_2 
       (.I0(\tleddtyg_reg_n_0_[4] ),
        .I1(\tleddtyg_reg_n_0_[5] ),
        .I2(\tleddtyg_reg_n_0_[6] ),
        .I3(\tleddtyg_reg_n_0_[7] ),
        .I4(\led_drv[3]_i_4_n_0 ),
        .O(\led_drv[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \led_drv[3]_i_3 
       (.I0(tleddtyg_dbl[6]),
        .I1(p_0_in[6]),
        .I2(tleddtyg_dbl[7]),
        .I3(p_0_in[7]),
        .I4(\led_drv[3]_i_5_n_0 ),
        .I5(\led_drv[3]_i_6_n_0 ),
        .O(\led_drv[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \led_drv[3]_i_4 
       (.I0(\tleddtyg_reg_n_0_[3] ),
        .I1(\tleddtyg_reg_n_0_[2] ),
        .I2(\tleddtyg_reg_n_0_[1] ),
        .I3(\tleddtyg_reg_n_0_[0] ),
        .O(\led_drv[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \led_drv[3]_i_5 
       (.I0(tleddtyg_dbl[3]),
        .I1(p_0_in[3]),
        .I2(tleddtyg_dbl[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(tleddtyg_dbl[2]),
        .O(\led_drv[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \led_drv[3]_i_6 
       (.I0(tleddtyg_dbl[4]),
        .I1(p_0_in[4]),
        .I2(tleddtyg_dbl[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[5]),
        .I5(tleddtyg_dbl[5]),
        .O(\led_drv[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hC0C000A0C0C0A0A0)) 
    \led_drv[4]_i_1 
       (.I0(p_0_in10_in),
        .I1(led_drv0),
        .I2(rst_n),
        .I3(\led_drv[4]_i_3_n_0 ),
        .I4(led_drv1),
        .I5(cnt_enb),
        .O(\led_drv[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \led_drv[4]_i_2 
       (.I0(\tleddtyr_reg_n_0_[4] ),
        .I1(\tleddtyr_reg_n_0_[5] ),
        .I2(\tleddtyr_reg_n_0_[6] ),
        .I3(\tleddtyr_reg_n_0_[7] ),
        .I4(\led_drv[4]_i_5_n_0 ),
        .O(led_drv0));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \led_drv[4]_i_3 
       (.I0(tleddtyr_dbl[6]),
        .I1(p_0_in[6]),
        .I2(tleddtyr_dbl[7]),
        .I3(p_0_in[7]),
        .I4(\led_drv[4]_i_6_n_0 ),
        .I5(\led_drv[4]_i_7_n_0 ),
        .O(\led_drv[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFBBB)) 
    \led_drv[4]_i_4 
       (.I0(wr_tledpsc),
        .I1(tcnt_tim_enb__6),
        .I2(p_0_in[7]),
        .I3(\led_drv[4]_i_8_n_0 ),
        .O(led_drv1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \led_drv[4]_i_5 
       (.I0(\tleddtyr_reg_n_0_[3] ),
        .I1(\tleddtyr_reg_n_0_[2] ),
        .I2(\tleddtyr_reg_n_0_[1] ),
        .I3(\tleddtyr_reg_n_0_[0] ),
        .O(\led_drv[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \led_drv[4]_i_6 
       (.I0(tleddtyr_dbl[3]),
        .I1(p_0_in[3]),
        .I2(tleddtyr_dbl[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(tleddtyr_dbl[2]),
        .O(\led_drv[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \led_drv[4]_i_7 
       (.I0(tleddtyr_dbl[4]),
        .I1(p_0_in[4]),
        .I2(tleddtyr_dbl[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[5]),
        .I5(tleddtyr_dbl[5]),
        .O(\led_drv[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \led_drv[4]_i_8 
       (.I0(\tledintc[0]_i_3_n_0 ),
        .I1(tcnt_tim_enb__6),
        .I2(CO),
        .I3(p_0_in[4]),
        .I4(p_0_in[5]),
        .I5(p_0_in[6]),
        .O(\led_drv[4]_i_8_n_0 ));
  FDRE \led_drv_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\led_drv[0]_i_1_n_0 ),
        .Q(\led_drv_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \led_drv_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\led_drv[1]_i_1_n_0 ),
        .Q(\led_drv_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE \led_drv_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\led_drv[2]_i_1_n_0 ),
        .Q(p_0_in7_in),
        .R(\<const0> ));
  FDRE \led_drv_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\led_drv[3]_i_1_n_0 ),
        .Q(p_0_in8_in),
        .R(\<const0> ));
  FDRE \led_drv_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\led_drv[4]_i_1_n_0 ),
        .Q(p_0_in10_in),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \psc_cnt[0]_i_3 
       (.I0(psc_cnt_reg[0]),
        .O(\psc_cnt[0]_i_3_n_0 ));
  FDRE \psc_cnt_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_cnt_reg[0]_i_2_n_7 ),
        .Q(psc_cnt_reg[0]),
        .R(psc_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \psc_cnt_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\psc_cnt_reg[0]_i_2_n_0 ,\psc_cnt_reg[0]_i_2_n_1 ,\psc_cnt_reg[0]_i_2_n_2 ,\psc_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\psc_cnt_reg[0]_i_2_n_4 ,\psc_cnt_reg[0]_i_2_n_5 ,\psc_cnt_reg[0]_i_2_n_6 ,\psc_cnt_reg[0]_i_2_n_7 }),
        .S({psc_cnt_reg[3:1],\psc_cnt[0]_i_3_n_0 }));
  FDRE \psc_cnt_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_cnt_reg[8]_i_1_n_5 ),
        .Q(psc_cnt_reg[10]),
        .R(psc_cnt0));
  FDRE \psc_cnt_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_cnt_reg[8]_i_1_n_4 ),
        .Q(psc_cnt_reg[11]),
        .R(psc_cnt0));
  FDRE \psc_cnt_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_cnt_reg[12]_i_1_n_7 ),
        .Q(psc_cnt_reg[12]),
        .R(psc_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \psc_cnt_reg[12]_i_1 
       (.CI(\psc_cnt_reg[8]_i_1_n_0 ),
        .CO({\psc_cnt_reg[12]_i_1_n_1 ,\psc_cnt_reg[12]_i_1_n_2 ,\psc_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\psc_cnt_reg[12]_i_1_n_4 ,\psc_cnt_reg[12]_i_1_n_5 ,\psc_cnt_reg[12]_i_1_n_6 ,\psc_cnt_reg[12]_i_1_n_7 }),
        .S(psc_cnt_reg[15:12]));
  FDRE \psc_cnt_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_cnt_reg[12]_i_1_n_6 ),
        .Q(psc_cnt_reg[13]),
        .R(psc_cnt0));
  FDRE \psc_cnt_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_cnt_reg[12]_i_1_n_5 ),
        .Q(psc_cnt_reg[14]),
        .R(psc_cnt0));
  FDRE \psc_cnt_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_cnt_reg[12]_i_1_n_4 ),
        .Q(psc_cnt_reg[15]),
        .R(psc_cnt0));
  FDRE \psc_cnt_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_cnt_reg[0]_i_2_n_6 ),
        .Q(psc_cnt_reg[1]),
        .R(psc_cnt0));
  FDRE \psc_cnt_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_cnt_reg[0]_i_2_n_5 ),
        .Q(psc_cnt_reg[2]),
        .R(psc_cnt0));
  FDRE \psc_cnt_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_cnt_reg[0]_i_2_n_4 ),
        .Q(psc_cnt_reg[3]),
        .R(psc_cnt0));
  FDRE \psc_cnt_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_cnt_reg[4]_i_1_n_7 ),
        .Q(psc_cnt_reg[4]),
        .R(psc_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \psc_cnt_reg[4]_i_1 
       (.CI(\psc_cnt_reg[0]_i_2_n_0 ),
        .CO({\psc_cnt_reg[4]_i_1_n_0 ,\psc_cnt_reg[4]_i_1_n_1 ,\psc_cnt_reg[4]_i_1_n_2 ,\psc_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\psc_cnt_reg[4]_i_1_n_4 ,\psc_cnt_reg[4]_i_1_n_5 ,\psc_cnt_reg[4]_i_1_n_6 ,\psc_cnt_reg[4]_i_1_n_7 }),
        .S(psc_cnt_reg[7:4]));
  FDRE \psc_cnt_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_cnt_reg[4]_i_1_n_6 ),
        .Q(psc_cnt_reg[5]),
        .R(psc_cnt0));
  FDRE \psc_cnt_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_cnt_reg[4]_i_1_n_5 ),
        .Q(psc_cnt_reg[6]),
        .R(psc_cnt0));
  FDRE \psc_cnt_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_cnt_reg[4]_i_1_n_4 ),
        .Q(psc_cnt_reg[7]),
        .R(psc_cnt0));
  FDRE \psc_cnt_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_cnt_reg[8]_i_1_n_7 ),
        .Q(psc_cnt_reg[8]),
        .R(psc_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \psc_cnt_reg[8]_i_1 
       (.CI(\psc_cnt_reg[4]_i_1_n_0 ),
        .CO({\psc_cnt_reg[8]_i_1_n_0 ,\psc_cnt_reg[8]_i_1_n_1 ,\psc_cnt_reg[8]_i_1_n_2 ,\psc_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\psc_cnt_reg[8]_i_1_n_4 ,\psc_cnt_reg[8]_i_1_n_5 ,\psc_cnt_reg[8]_i_1_n_6 ,\psc_cnt_reg[8]_i_1_n_7 }),
        .S(psc_cnt_reg[11:8]));
  FDRE \psc_cnt_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_cnt_reg[8]_i_1_n_6 ),
        .Q(psc_cnt_reg[9]),
        .R(psc_cnt0));
  LUT2 #(
    .INIT(4'h9)) 
    \pwm_cnt[0]_i_1 
       (.I0(pwm_cnt_reg[0]),
        .I1(simumd),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'hB4)) 
    \pwm_cnt[1]_i_1 
       (.I0(simumd),
        .I1(pwm_cnt_reg[0]),
        .I2(pwm_cnt_reg[1]),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'hDF20)) 
    \pwm_cnt[2]_i_1 
       (.I0(pwm_cnt_reg[0]),
        .I1(simumd),
        .I2(pwm_cnt_reg[1]),
        .I3(pwm_cnt_reg[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \pwm_cnt[3]_i_1 
       (.I0(pwm_cnt_reg[1]),
        .I1(simumd),
        .I2(pwm_cnt_reg[0]),
        .I3(pwm_cnt_reg[2]),
        .I4(pwm_cnt_reg[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h00007FFFFFFF8000)) 
    \pwm_cnt[4]_i_1 
       (.I0(pwm_cnt_reg[2]),
        .I1(pwm_cnt_reg[0]),
        .I2(pwm_cnt_reg[1]),
        .I3(pwm_cnt_reg[3]),
        .I4(simumd),
        .I5(pwm_cnt_reg[4]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'h17E8)) 
    \pwm_cnt[5]_i_1 
       (.I0(pwm_cnt_reg[4]),
        .I1(simumd),
        .I2(\pwm_cnt[7]_i_3_n_0 ),
        .I3(pwm_cnt_reg[5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h17FFE800)) 
    \pwm_cnt[6]_i_1 
       (.I0(\pwm_cnt[7]_i_3_n_0 ),
        .I1(simumd),
        .I2(pwm_cnt_reg[4]),
        .I3(pwm_cnt_reg[5]),
        .I4(pwm_cnt_reg[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h577FFFFFA8800000)) 
    \pwm_cnt[7]_i_2 
       (.I0(pwm_cnt_reg[5]),
        .I1(pwm_cnt_reg[4]),
        .I2(simumd),
        .I3(\pwm_cnt[7]_i_3_n_0 ),
        .I4(pwm_cnt_reg[6]),
        .I5(pwm_cnt_reg[7]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \pwm_cnt[7]_i_3 
       (.I0(pwm_cnt_reg[3]),
        .I1(pwm_cnt_reg[1]),
        .I2(simumd),
        .I3(pwm_cnt_reg[0]),
        .I4(pwm_cnt_reg[2]),
        .O(\pwm_cnt[7]_i_3_n_0 ));
  FDRE \pwm_cnt_reg[0] 
       (.C(clk),
        .CE(cnt_enb),
        .D(p_0_in[0]),
        .Q(pwm_cnt_reg[0]),
        .R(SR));
  FDRE \pwm_cnt_reg[1] 
       (.C(clk),
        .CE(cnt_enb),
        .D(p_0_in[1]),
        .Q(pwm_cnt_reg[1]),
        .R(SR));
  FDRE \pwm_cnt_reg[2] 
       (.C(clk),
        .CE(cnt_enb),
        .D(p_0_in[2]),
        .Q(pwm_cnt_reg[2]),
        .R(SR));
  FDRE \pwm_cnt_reg[3] 
       (.C(clk),
        .CE(cnt_enb),
        .D(p_0_in[3]),
        .Q(pwm_cnt_reg[3]),
        .R(SR));
  FDRE \pwm_cnt_reg[4] 
       (.C(clk),
        .CE(cnt_enb),
        .D(p_0_in[4]),
        .Q(pwm_cnt_reg[4]),
        .R(SR));
  FDRE \pwm_cnt_reg[5] 
       (.C(clk),
        .CE(cnt_enb),
        .D(p_0_in[5]),
        .Q(pwm_cnt_reg[5]),
        .R(SR));
  FDRE \pwm_cnt_reg[6] 
       (.C(clk),
        .CE(cnt_enb),
        .D(p_0_in[6]),
        .Q(pwm_cnt_reg[6]),
        .R(SR));
  FDRE \pwm_cnt_reg[7] 
       (.C(clk),
        .CE(cnt_enb),
        .D(p_0_in[7]),
        .Q(pwm_cnt_reg[7]),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    tled_led1_INST_0
       (.I0(\led_drv_reg_n_0_[1] ),
        .I1(Q[0]),
        .O(tled_led1));
  LUT2 #(
    .INIT(4'h8)) 
    tled_led2_INST_0
       (.I0(\led_drv_reg_n_0_[0] ),
        .I1(Q[1]),
        .O(tled_led2));
  LUT1 #(
    .INIT(2'h1)) 
    \tledctl[5]_i_1 
       (.I0(rst_n),
        .O(rst_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    \tledctl[5]_i_3 
       (.I0(bcs_tled_n),
        .I1(bcmdw),
        .I2(brdy),
        .O(p_17_in));
  LUT5 #(
    .INIT(32'h02000000)) 
    \tleddty1[7]_i_1 
       (.I0(p_17_in),
        .I1(badr[0]),
        .I2(badr[1]),
        .I3(badr[2]),
        .I4(badr[3]),
        .O(wr_tleddty1));
  FDRE \tleddty1_dbl_reg[0] 
       (.C(clk),
        .CE(SR),
        .D(\tleddty1_reg[7]_0 [0]),
        .Q(tleddty1_dbl[0]),
        .R(\<const0> ));
  FDRE \tleddty1_dbl_reg[1] 
       (.C(clk),
        .CE(SR),
        .D(\tleddty1_reg[7]_0 [1]),
        .Q(tleddty1_dbl[1]),
        .R(\<const0> ));
  FDRE \tleddty1_dbl_reg[2] 
       (.C(clk),
        .CE(SR),
        .D(\tleddty1_reg[7]_0 [2]),
        .Q(tleddty1_dbl[2]),
        .R(\<const0> ));
  FDRE \tleddty1_dbl_reg[3] 
       (.C(clk),
        .CE(SR),
        .D(\tleddty1_reg[7]_0 [3]),
        .Q(tleddty1_dbl[3]),
        .R(\<const0> ));
  FDRE \tleddty1_dbl_reg[4] 
       (.C(clk),
        .CE(SR),
        .D(\tleddty1_reg[7]_0 [4]),
        .Q(tleddty1_dbl[4]),
        .R(\<const0> ));
  FDRE \tleddty1_dbl_reg[5] 
       (.C(clk),
        .CE(SR),
        .D(\tleddty1_reg[7]_0 [5]),
        .Q(tleddty1_dbl[5]),
        .R(\<const0> ));
  FDRE \tleddty1_dbl_reg[6] 
       (.C(clk),
        .CE(SR),
        .D(\tleddty1_reg[7]_0 [6]),
        .Q(tleddty1_dbl[6]),
        .R(\<const0> ));
  FDRE \tleddty1_dbl_reg[7] 
       (.C(clk),
        .CE(SR),
        .D(\tleddty1_reg[7]_0 [7]),
        .Q(tleddty1_dbl[7]),
        .R(\<const0> ));
  FDRE \tleddty1_reg[0] 
       (.C(clk),
        .CE(wr_tleddty1),
        .D(bdatw[0]),
        .Q(\tleddty1_reg[7]_0 [0]),
        .R(rst_n_0));
  FDRE \tleddty1_reg[1] 
       (.C(clk),
        .CE(wr_tleddty1),
        .D(bdatw[1]),
        .Q(\tleddty1_reg[7]_0 [1]),
        .R(rst_n_0));
  FDRE \tleddty1_reg[2] 
       (.C(clk),
        .CE(wr_tleddty1),
        .D(bdatw[2]),
        .Q(\tleddty1_reg[7]_0 [2]),
        .R(rst_n_0));
  FDRE \tleddty1_reg[3] 
       (.C(clk),
        .CE(wr_tleddty1),
        .D(bdatw[3]),
        .Q(\tleddty1_reg[7]_0 [3]),
        .R(rst_n_0));
  FDRE \tleddty1_reg[4] 
       (.C(clk),
        .CE(wr_tleddty1),
        .D(bdatw[4]),
        .Q(\tleddty1_reg[7]_0 [4]),
        .R(rst_n_0));
  FDRE \tleddty1_reg[5] 
       (.C(clk),
        .CE(wr_tleddty1),
        .D(bdatw[5]),
        .Q(\tleddty1_reg[7]_0 [5]),
        .R(rst_n_0));
  FDRE \tleddty1_reg[6] 
       (.C(clk),
        .CE(wr_tleddty1),
        .D(bdatw[6]),
        .Q(\tleddty1_reg[7]_0 [6]),
        .R(rst_n_0));
  FDSE \tleddty1_reg[7] 
       (.C(clk),
        .CE(wr_tleddty1),
        .D(bdatw[7]),
        .Q(\tleddty1_reg[7]_0 [7]),
        .S(rst_n_0));
  LUT5 #(
    .INIT(32'h08000000)) 
    \tleddty2[7]_i_1 
       (.I0(p_17_in),
        .I1(badr[1]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(badr[3]),
        .O(wr_tleddty2));
  FDRE \tleddty2_dbl_reg[0] 
       (.C(clk),
        .CE(SR),
        .D(\tleddty2_reg[7]_0 [0]),
        .Q(tleddty2_dbl[0]),
        .R(\<const0> ));
  FDRE \tleddty2_dbl_reg[1] 
       (.C(clk),
        .CE(SR),
        .D(\tleddty2_reg[7]_0 [1]),
        .Q(tleddty2_dbl[1]),
        .R(\<const0> ));
  FDRE \tleddty2_dbl_reg[2] 
       (.C(clk),
        .CE(SR),
        .D(\tleddty2_reg[7]_0 [2]),
        .Q(tleddty2_dbl[2]),
        .R(\<const0> ));
  FDRE \tleddty2_dbl_reg[3] 
       (.C(clk),
        .CE(SR),
        .D(\tleddty2_reg[7]_0 [3]),
        .Q(tleddty2_dbl[3]),
        .R(\<const0> ));
  FDRE \tleddty2_dbl_reg[4] 
       (.C(clk),
        .CE(SR),
        .D(\tleddty2_reg[7]_0 [4]),
        .Q(tleddty2_dbl[4]),
        .R(\<const0> ));
  FDRE \tleddty2_dbl_reg[5] 
       (.C(clk),
        .CE(SR),
        .D(\tleddty2_reg[7]_0 [5]),
        .Q(tleddty2_dbl[5]),
        .R(\<const0> ));
  FDRE \tleddty2_dbl_reg[6] 
       (.C(clk),
        .CE(SR),
        .D(\tleddty2_reg[7]_0 [6]),
        .Q(tleddty2_dbl[6]),
        .R(\<const0> ));
  FDRE \tleddty2_dbl_reg[7] 
       (.C(clk),
        .CE(SR),
        .D(\tleddty2_reg[7]_0 [7]),
        .Q(tleddty2_dbl[7]),
        .R(\<const0> ));
  FDRE \tleddty2_reg[0] 
       (.C(clk),
        .CE(wr_tleddty2),
        .D(bdatw[0]),
        .Q(\tleddty2_reg[7]_0 [0]),
        .R(rst_n_0));
  FDRE \tleddty2_reg[1] 
       (.C(clk),
        .CE(wr_tleddty2),
        .D(bdatw[1]),
        .Q(\tleddty2_reg[7]_0 [1]),
        .R(rst_n_0));
  FDRE \tleddty2_reg[2] 
       (.C(clk),
        .CE(wr_tleddty2),
        .D(bdatw[2]),
        .Q(\tleddty2_reg[7]_0 [2]),
        .R(rst_n_0));
  FDRE \tleddty2_reg[3] 
       (.C(clk),
        .CE(wr_tleddty2),
        .D(bdatw[3]),
        .Q(\tleddty2_reg[7]_0 [3]),
        .R(rst_n_0));
  FDRE \tleddty2_reg[4] 
       (.C(clk),
        .CE(wr_tleddty2),
        .D(bdatw[4]),
        .Q(\tleddty2_reg[7]_0 [4]),
        .R(rst_n_0));
  FDRE \tleddty2_reg[5] 
       (.C(clk),
        .CE(wr_tleddty2),
        .D(bdatw[5]),
        .Q(\tleddty2_reg[7]_0 [5]),
        .R(rst_n_0));
  FDRE \tleddty2_reg[6] 
       (.C(clk),
        .CE(wr_tleddty2),
        .D(bdatw[6]),
        .Q(\tleddty2_reg[7]_0 [6]),
        .R(rst_n_0));
  FDSE \tleddty2_reg[7] 
       (.C(clk),
        .CE(wr_tleddty2),
        .D(bdatw[7]),
        .Q(\tleddty2_reg[7]_0 [7]),
        .S(rst_n_0));
  LUT5 #(
    .INIT(32'h00000800)) 
    \tleddtyb[7]_i_1 
       (.I0(p_17_in),
        .I1(badr[1]),
        .I2(badr[0]),
        .I3(badr[3]),
        .I4(badr[2]),
        .O(wr_tleddtyb));
  FDRE \tleddtyb_dbl_reg[0] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyb_reg[7]_0 [0]),
        .Q(tleddtyb_dbl[0]),
        .R(\<const0> ));
  FDRE \tleddtyb_dbl_reg[1] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyb_reg[7]_0 [1]),
        .Q(tleddtyb_dbl[1]),
        .R(\<const0> ));
  FDRE \tleddtyb_dbl_reg[2] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyb_reg[7]_0 [2]),
        .Q(tleddtyb_dbl[2]),
        .R(\<const0> ));
  FDRE \tleddtyb_dbl_reg[3] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyb_reg[7]_0 [3]),
        .Q(tleddtyb_dbl[3]),
        .R(\<const0> ));
  FDRE \tleddtyb_dbl_reg[4] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyb_reg[7]_0 [4]),
        .Q(tleddtyb_dbl[4]),
        .R(\<const0> ));
  FDRE \tleddtyb_dbl_reg[5] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyb_reg[7]_0 [5]),
        .Q(tleddtyb_dbl[5]),
        .R(\<const0> ));
  FDRE \tleddtyb_dbl_reg[6] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyb_reg[7]_0 [6]),
        .Q(tleddtyb_dbl[6]),
        .R(\<const0> ));
  FDRE \tleddtyb_dbl_reg[7] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyb_reg[7]_0 [7]),
        .Q(tleddtyb_dbl[7]),
        .R(\<const0> ));
  FDRE \tleddtyb_reg[0] 
       (.C(clk),
        .CE(wr_tleddtyb),
        .D(bdatw[0]),
        .Q(\tleddtyb_reg[7]_0 [0]),
        .R(rst_n_0));
  FDRE \tleddtyb_reg[1] 
       (.C(clk),
        .CE(wr_tleddtyb),
        .D(bdatw[1]),
        .Q(\tleddtyb_reg[7]_0 [1]),
        .R(rst_n_0));
  FDRE \tleddtyb_reg[2] 
       (.C(clk),
        .CE(wr_tleddtyb),
        .D(bdatw[2]),
        .Q(\tleddtyb_reg[7]_0 [2]),
        .R(rst_n_0));
  FDRE \tleddtyb_reg[3] 
       (.C(clk),
        .CE(wr_tleddtyb),
        .D(bdatw[3]),
        .Q(\tleddtyb_reg[7]_0 [3]),
        .R(rst_n_0));
  FDRE \tleddtyb_reg[4] 
       (.C(clk),
        .CE(wr_tleddtyb),
        .D(bdatw[4]),
        .Q(\tleddtyb_reg[7]_0 [4]),
        .R(rst_n_0));
  FDRE \tleddtyb_reg[5] 
       (.C(clk),
        .CE(wr_tleddtyb),
        .D(bdatw[5]),
        .Q(\tleddtyb_reg[7]_0 [5]),
        .R(rst_n_0));
  FDRE \tleddtyb_reg[6] 
       (.C(clk),
        .CE(wr_tleddtyb),
        .D(bdatw[6]),
        .Q(\tleddtyb_reg[7]_0 [6]),
        .R(rst_n_0));
  FDSE \tleddtyb_reg[7] 
       (.C(clk),
        .CE(wr_tleddtyb),
        .D(bdatw[7]),
        .Q(\tleddtyb_reg[7]_0 [7]),
        .S(rst_n_0));
  LUT5 #(
    .INIT(32'h00000200)) 
    \tleddtyg[7]_i_1 
       (.I0(p_17_in),
        .I1(badr[0]),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[2]),
        .O(wr_tleddtyg));
  FDRE \tleddtyg_dbl_reg[0] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyg_reg_n_0_[0] ),
        .Q(tleddtyg_dbl[0]),
        .R(\<const0> ));
  FDRE \tleddtyg_dbl_reg[1] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyg_reg_n_0_[1] ),
        .Q(tleddtyg_dbl[1]),
        .R(\<const0> ));
  FDRE \tleddtyg_dbl_reg[2] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyg_reg_n_0_[2] ),
        .Q(tleddtyg_dbl[2]),
        .R(\<const0> ));
  FDRE \tleddtyg_dbl_reg[3] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyg_reg_n_0_[3] ),
        .Q(tleddtyg_dbl[3]),
        .R(\<const0> ));
  FDRE \tleddtyg_dbl_reg[4] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyg_reg_n_0_[4] ),
        .Q(tleddtyg_dbl[4]),
        .R(\<const0> ));
  FDRE \tleddtyg_dbl_reg[5] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyg_reg_n_0_[5] ),
        .Q(tleddtyg_dbl[5]),
        .R(\<const0> ));
  FDRE \tleddtyg_dbl_reg[6] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyg_reg_n_0_[6] ),
        .Q(tleddtyg_dbl[6]),
        .R(\<const0> ));
  FDRE \tleddtyg_dbl_reg[7] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyg_reg_n_0_[7] ),
        .Q(tleddtyg_dbl[7]),
        .R(\<const0> ));
  FDRE \tleddtyg_reg[0] 
       (.C(clk),
        .CE(wr_tleddtyg),
        .D(bdatw[0]),
        .Q(\tleddtyg_reg_n_0_[0] ),
        .R(rst_n_0));
  FDRE \tleddtyg_reg[1] 
       (.C(clk),
        .CE(wr_tleddtyg),
        .D(bdatw[1]),
        .Q(\tleddtyg_reg_n_0_[1] ),
        .R(rst_n_0));
  FDRE \tleddtyg_reg[2] 
       (.C(clk),
        .CE(wr_tleddtyg),
        .D(bdatw[2]),
        .Q(\tleddtyg_reg_n_0_[2] ),
        .R(rst_n_0));
  FDRE \tleddtyg_reg[3] 
       (.C(clk),
        .CE(wr_tleddtyg),
        .D(bdatw[3]),
        .Q(\tleddtyg_reg_n_0_[3] ),
        .R(rst_n_0));
  FDRE \tleddtyg_reg[4] 
       (.C(clk),
        .CE(wr_tleddtyg),
        .D(bdatw[4]),
        .Q(\tleddtyg_reg_n_0_[4] ),
        .R(rst_n_0));
  FDRE \tleddtyg_reg[5] 
       (.C(clk),
        .CE(wr_tleddtyg),
        .D(bdatw[5]),
        .Q(\tleddtyg_reg_n_0_[5] ),
        .R(rst_n_0));
  FDRE \tleddtyg_reg[6] 
       (.C(clk),
        .CE(wr_tleddtyg),
        .D(bdatw[6]),
        .Q(\tleddtyg_reg_n_0_[6] ),
        .R(rst_n_0));
  FDSE \tleddtyg_reg[7] 
       (.C(clk),
        .CE(wr_tleddtyg),
        .D(bdatw[7]),
        .Q(\tleddtyg_reg_n_0_[7] ),
        .S(rst_n_0));
  LUT5 #(
    .INIT(32'h00000800)) 
    \tleddtyr[7]_i_1 
       (.I0(p_17_in),
        .I1(badr[1]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(badr[3]),
        .O(wr_tleddtyr));
  FDRE \tleddtyr_dbl_reg[0] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyr_reg_n_0_[0] ),
        .Q(tleddtyr_dbl[0]),
        .R(\<const0> ));
  FDRE \tleddtyr_dbl_reg[1] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyr_reg_n_0_[1] ),
        .Q(tleddtyr_dbl[1]),
        .R(\<const0> ));
  FDRE \tleddtyr_dbl_reg[2] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyr_reg_n_0_[2] ),
        .Q(tleddtyr_dbl[2]),
        .R(\<const0> ));
  FDRE \tleddtyr_dbl_reg[3] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyr_reg_n_0_[3] ),
        .Q(tleddtyr_dbl[3]),
        .R(\<const0> ));
  FDRE \tleddtyr_dbl_reg[4] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyr_reg_n_0_[4] ),
        .Q(tleddtyr_dbl[4]),
        .R(\<const0> ));
  FDRE \tleddtyr_dbl_reg[5] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyr_reg_n_0_[5] ),
        .Q(tleddtyr_dbl[5]),
        .R(\<const0> ));
  FDRE \tleddtyr_dbl_reg[6] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyr_reg_n_0_[6] ),
        .Q(tleddtyr_dbl[6]),
        .R(\<const0> ));
  FDRE \tleddtyr_dbl_reg[7] 
       (.C(clk),
        .CE(SR),
        .D(\tleddtyr_reg_n_0_[7] ),
        .Q(tleddtyr_dbl[7]),
        .R(\<const0> ));
  FDRE \tleddtyr_reg[0] 
       (.C(clk),
        .CE(wr_tleddtyr),
        .D(bdatw[0]),
        .Q(\tleddtyr_reg_n_0_[0] ),
        .R(rst_n_0));
  FDRE \tleddtyr_reg[1] 
       (.C(clk),
        .CE(wr_tleddtyr),
        .D(bdatw[1]),
        .Q(\tleddtyr_reg_n_0_[1] ),
        .R(rst_n_0));
  FDRE \tleddtyr_reg[2] 
       (.C(clk),
        .CE(wr_tleddtyr),
        .D(bdatw[2]),
        .Q(\tleddtyr_reg_n_0_[2] ),
        .R(rst_n_0));
  FDRE \tleddtyr_reg[3] 
       (.C(clk),
        .CE(wr_tleddtyr),
        .D(bdatw[3]),
        .Q(\tleddtyr_reg_n_0_[3] ),
        .R(rst_n_0));
  FDRE \tleddtyr_reg[4] 
       (.C(clk),
        .CE(wr_tleddtyr),
        .D(bdatw[4]),
        .Q(\tleddtyr_reg_n_0_[4] ),
        .R(rst_n_0));
  FDRE \tleddtyr_reg[5] 
       (.C(clk),
        .CE(wr_tleddtyr),
        .D(bdatw[5]),
        .Q(\tleddtyr_reg_n_0_[5] ),
        .R(rst_n_0));
  FDRE \tleddtyr_reg[6] 
       (.C(clk),
        .CE(wr_tleddtyr),
        .D(bdatw[6]),
        .Q(\tleddtyr_reg_n_0_[6] ),
        .R(rst_n_0));
  FDSE \tleddtyr_reg[7] 
       (.C(clk),
        .CE(wr_tleddtyr),
        .D(bdatw[7]),
        .Q(\tleddtyr_reg_n_0_[7] ),
        .S(rst_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \tledintc[0]_i_2 
       (.I0(p_0_in[6]),
        .I1(p_0_in[5]),
        .I2(p_0_in[4]),
        .I3(cnt_enb),
        .I4(\tledintc[0]_i_3_n_0 ),
        .I5(p_0_in[7]),
        .O(tcnt_set_loff));
  LUT5 #(
    .INIT(32'h02000004)) 
    \tledintc[0]_i_3 
       (.I0(pwm_cnt_reg[1]),
        .I1(simumd),
        .I2(pwm_cnt_reg[0]),
        .I3(pwm_cnt_reg[2]),
        .I4(pwm_cnt_reg[3]),
        .O(\tledintc[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \tledpsc[15]_i_1 
       (.I0(p_17_in),
        .I1(badr[0]),
        .I2(badr[1]),
        .I3(badr[2]),
        .I4(badr[3]),
        .O(wr_tledpsc));
  FDRE \tledpsc_reg[0] 
       (.C(clk),
        .CE(wr_tledpsc),
        .D(bdatw[0]),
        .Q(tledpsc[0]),
        .R(rst_n_0));
  FDRE \tledpsc_reg[10] 
       (.C(clk),
        .CE(wr_tledpsc),
        .D(bdatw[10]),
        .Q(\tledpsc_reg[15]_0 [2]),
        .R(rst_n_0));
  FDRE \tledpsc_reg[11] 
       (.C(clk),
        .CE(wr_tledpsc),
        .D(bdatw[11]),
        .Q(\tledpsc_reg[15]_0 [3]),
        .R(rst_n_0));
  FDRE \tledpsc_reg[12] 
       (.C(clk),
        .CE(wr_tledpsc),
        .D(bdatw[12]),
        .Q(\tledpsc_reg[15]_0 [4]),
        .R(rst_n_0));
  FDRE \tledpsc_reg[13] 
       (.C(clk),
        .CE(wr_tledpsc),
        .D(bdatw[13]),
        .Q(\tledpsc_reg[15]_0 [5]),
        .R(rst_n_0));
  FDRE \tledpsc_reg[14] 
       (.C(clk),
        .CE(wr_tledpsc),
        .D(bdatw[14]),
        .Q(\tledpsc_reg[15]_0 [6]),
        .R(rst_n_0));
  FDRE \tledpsc_reg[15] 
       (.C(clk),
        .CE(wr_tledpsc),
        .D(bdatw[15]),
        .Q(\tledpsc_reg[15]_0 [7]),
        .R(rst_n_0));
  FDRE \tledpsc_reg[1] 
       (.C(clk),
        .CE(wr_tledpsc),
        .D(bdatw[1]),
        .Q(tledpsc[1]),
        .R(rst_n_0));
  FDRE \tledpsc_reg[2] 
       (.C(clk),
        .CE(wr_tledpsc),
        .D(bdatw[2]),
        .Q(tledpsc[2]),
        .R(rst_n_0));
  FDRE \tledpsc_reg[3] 
       (.C(clk),
        .CE(wr_tledpsc),
        .D(bdatw[3]),
        .Q(tledpsc[3]),
        .R(rst_n_0));
  FDRE \tledpsc_reg[4] 
       (.C(clk),
        .CE(wr_tledpsc),
        .D(bdatw[4]),
        .Q(tledpsc[4]),
        .R(rst_n_0));
  FDRE \tledpsc_reg[5] 
       (.C(clk),
        .CE(wr_tledpsc),
        .D(bdatw[5]),
        .Q(tledpsc[5]),
        .R(rst_n_0));
  FDSE \tledpsc_reg[6] 
       (.C(clk),
        .CE(wr_tledpsc),
        .D(bdatw[6]),
        .Q(tledpsc[6]),
        .S(rst_n_0));
  FDSE \tledpsc_reg[7] 
       (.C(clk),
        .CE(wr_tledpsc),
        .D(bdatw[7]),
        .Q(tledpsc[7]),
        .S(rst_n_0));
  FDRE \tledpsc_reg[8] 
       (.C(clk),
        .CE(wr_tledpsc),
        .D(bdatw[8]),
        .Q(\tledpsc_reg[15]_0 [0]),
        .R(rst_n_0));
  FDRE \tledpsc_reg[9] 
       (.C(clk),
        .CE(wr_tledpsc),
        .D(bdatw[9]),
        .Q(\tledpsc_reg[15]_0 [1]),
        .R(rst_n_0));
endmodule

module tled_ctrl
   (rd_tledpsc_reg_0,
    cnt_enb,
    tcnt_tim_enb__6,
    Q,
    tled_ledr,
    tled_ledg,
    tled_ledb,
    tled_lofr,
    bdatr,
    psc_cnt0,
    SR,
    rd_tleddtyr_reg_0,
    brdy,
    clk,
    CO,
    gpio_port_oe,
    bcs_tled_n,
    bcmdr,
    badr,
    p_17_in,
    gpio_port,
    p_0_in10_in,
    p_0_in8_in,
    p_0_in7_in,
    .bdatr_0_sp_1(bdatr_0_sn_1),
    .bdatr_1_sp_1(bdatr_1_sn_1),
    .bdatr_2_sp_1(bdatr_2_sn_1),
    .bdatr_3_sp_1(bdatr_3_sn_1),
    .bdatr_4_sp_1(bdatr_4_sn_1),
    .bdatr_5_sp_1(bdatr_5_sn_1),
    .bdatr_6_sp_1(bdatr_6_sn_1),
    .bdatr_7_sp_1(bdatr_7_sn_1),
    \bdatr[7]_0 ,
    \bdatr[7]_1 ,
    \bdatr[7]_2 ,
    \bdatr[15] ,
    wr_tledpsc,
    rst_n,
    tcnt_set_loff,
    bdatw);
  output [2:0]rd_tledpsc_reg_0;
  output cnt_enb;
  output tcnt_tim_enb__6;
  output [1:0]Q;
  output tled_ledr;
  output tled_ledg;
  output tled_ledb;
  output tled_lofr;
  output [15:0]bdatr;
  output psc_cnt0;
  output [0:0]SR;
  input rd_tleddtyr_reg_0;
  input brdy;
  input clk;
  input [0:0]CO;
  input [2:0]gpio_port_oe;
  input bcs_tled_n;
  input bcmdr;
  input [3:0]badr;
  input p_17_in;
  input [2:0]gpio_port;
  input p_0_in10_in;
  input p_0_in8_in;
  input p_0_in7_in;
  input [7:0]\bdatr[7]_0 ;
  input [7:0]\bdatr[7]_1 ;
  input [7:0]\bdatr[7]_2 ;
  input [7:0]\bdatr[15] ;
  input wr_tledpsc;
  input rst_n;
  input tcnt_set_loff;
  input [5:0]bdatw;
  input bdatr_0_sn_1;
  input bdatr_1_sn_1;
  input bdatr_2_sn_1;
  input bdatr_3_sn_1;
  input bdatr_4_sn_1;
  input bdatr_5_sn_1;
  input bdatr_6_sn_1;
  input bdatr_7_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]CO;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire bcmdr;
  wire bcs_tled_n;
  wire [15:0]bdatr;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[0]_INST_0_i_3_n_0 ;
  wire [7:0]\bdatr[15] ;
  wire \bdatr[1]_INST_0_i_1_n_0 ;
  wire \bdatr[2]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[4]_INST_0_i_1_n_0 ;
  wire \bdatr[4]_INST_0_i_3_n_0 ;
  wire \bdatr[5]_INST_0_i_1_n_0 ;
  wire \bdatr[5]_INST_0_i_2_n_0 ;
  wire \bdatr[6]_INST_0_i_2_n_0 ;
  wire [7:0]\bdatr[7]_0 ;
  wire [7:0]\bdatr[7]_1 ;
  wire [7:0]\bdatr[7]_2 ;
  wire \bdatr[7]_INST_0_i_2_n_0 ;
  wire \bdatr[7]_INST_0_i_3_n_0 ;
  wire bdatr_0_sn_1;
  wire bdatr_1_sn_1;
  wire bdatr_2_sn_1;
  wire bdatr_3_sn_1;
  wire bdatr_4_sn_1;
  wire bdatr_5_sn_1;
  wire bdatr_6_sn_1;
  wire bdatr_7_sn_1;
  wire [5:0]bdatw;
  wire brdy;
  wire clk;
  wire cnt_enb;
  wire [2:0]gpio_port;
  wire [2:0]gpio_port_oe;
  wire lctl_ledb_enb;
  wire lctl_ledg_enb;
  wire lctl_ledr_enb;
  wire lctl_rgb_enb;
  wire p_0_in10_in;
  wire p_0_in7_in;
  wire p_0_in8_in;
  wire p_17_in;
  wire psc_cnt0;
  wire rd_tledctl;
  wire rd_tledctl0;
  wire rd_tleddty10;
  wire rd_tleddty20;
  wire rd_tleddtyb0;
  wire rd_tleddtyg0;
  wire rd_tleddtyr0;
  wire rd_tleddtyr_reg_0;
  wire rd_tledintc;
  wire rd_tledintc0;
  wire rd_tledpsc0;
  wire [2:0]rd_tledpsc_reg_0;
  wire rst_n;
  wire [2:0]sel0;
  wire tcnt_set_loff;
  wire tcnt_tim_enb__6;
  wire tled_ledb;
  wire tled_ledg;
  wire tled_ledr;
  wire tled_lofr;
  wire \tleddty2_dbl[7]_i_3_n_0 ;
  wire \tleddty2_dbl[7]_i_4_n_0 ;
  wire \tledintc[0]_i_1_n_0 ;
  wire \tledintc[4]_i_1_n_0 ;
  wire \tledintc_reg_n_0_[0] ;
  wire \tledintc_reg_n_0_[4] ;
  wire wr_tledctl;
  wire wr_tledintc__0;
  wire wr_tledpsc;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \bdatr[0]_INST_0 
       (.I0(\bdatr[0]_INST_0_i_1_n_0 ),
        .I1(\tledintc_reg_n_0_[0] ),
        .I2(rd_tledintc),
        .I3(rd_tledctl),
        .I4(lctl_ledb_enb),
        .O(bdatr[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAEEEEEEEA)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(bdatr_0_sn_1),
        .I1(\bdatr[0]_INST_0_i_3_n_0 ),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(\bdatr[7]_INST_0_i_3_n_0 ),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \bdatr[0]_INST_0_i_3 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\bdatr[7]_0 [0]),
        .I3(\bdatr[7]_1 [0]),
        .I4(sel0[2]),
        .I5(\bdatr[7]_2 [0]),
        .O(\bdatr[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[10]_INST_0 
       (.I0(rd_tledpsc_reg_0[2]),
        .I1(\bdatr[15] [2]),
        .O(bdatr[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[11]_INST_0 
       (.I0(rd_tledpsc_reg_0[2]),
        .I1(\bdatr[15] [3]),
        .O(bdatr[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[12]_INST_0 
       (.I0(rd_tledpsc_reg_0[2]),
        .I1(\bdatr[15] [4]),
        .O(bdatr[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[13]_INST_0 
       (.I0(rd_tledpsc_reg_0[2]),
        .I1(\bdatr[15] [5]),
        .O(bdatr[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[14]_INST_0 
       (.I0(rd_tledpsc_reg_0[2]),
        .I1(\bdatr[15] [6]),
        .O(bdatr[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[15]_INST_0 
       (.I0(rd_tledpsc_reg_0[2]),
        .I1(\bdatr[15] [7]),
        .O(bdatr[15]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatr[1]_INST_0 
       (.I0(rd_tledctl),
        .I1(lctl_ledr_enb),
        .I2(\bdatr[5]_INST_0_i_1_n_0 ),
        .I3(\bdatr[1]_INST_0_i_1_n_0 ),
        .I4(bdatr_1_sn_1),
        .O(bdatr[1]));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\bdatr[7]_0 [1]),
        .I3(\bdatr[7]_1 [1]),
        .I4(sel0[2]),
        .I5(\bdatr[7]_2 [1]),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatr[2]_INST_0 
       (.I0(rd_tledctl),
        .I1(lctl_ledg_enb),
        .I2(\bdatr[5]_INST_0_i_1_n_0 ),
        .I3(\bdatr[2]_INST_0_i_1_n_0 ),
        .I4(bdatr_2_sn_1),
        .O(bdatr[2]));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\bdatr[7]_0 [2]),
        .I3(\bdatr[7]_1 [2]),
        .I4(sel0[2]),
        .I5(\bdatr[7]_2 [2]),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatr[3]_INST_0 
       (.I0(rd_tledctl),
        .I1(lctl_rgb_enb),
        .I2(\bdatr[5]_INST_0_i_1_n_0 ),
        .I3(\bdatr[3]_INST_0_i_1_n_0 ),
        .I4(bdatr_3_sn_1),
        .O(bdatr[3]));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\bdatr[7]_0 [3]),
        .I3(\bdatr[7]_1 [3]),
        .I4(sel0[2]),
        .I5(\bdatr[7]_2 [3]),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \bdatr[4]_INST_0 
       (.I0(\bdatr[4]_INST_0_i_1_n_0 ),
        .I1(\tledintc_reg_n_0_[4] ),
        .I2(rd_tledintc),
        .I3(rd_tledctl),
        .I4(Q[0]),
        .O(bdatr[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAEEEEEEEA)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(bdatr_4_sn_1),
        .I1(\bdatr[4]_INST_0_i_3_n_0 ),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(\bdatr[7]_INST_0_i_3_n_0 ),
        .O(\bdatr[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \bdatr[4]_INST_0_i_3 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\bdatr[7]_0 [4]),
        .I3(\bdatr[7]_1 [4]),
        .I4(sel0[2]),
        .I5(\bdatr[7]_2 [4]),
        .O(\bdatr[4]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatr[5]_INST_0 
       (.I0(rd_tledctl),
        .I1(Q[1]),
        .I2(\bdatr[5]_INST_0_i_1_n_0 ),
        .I3(\bdatr[5]_INST_0_i_2_n_0 ),
        .I4(bdatr_5_sn_1),
        .O(bdatr[5]));
  LUT6 #(
    .INIT(64'h00000000000000FE)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(rd_tledpsc_reg_0[0]),
        .I4(rd_tledpsc_reg_0[2]),
        .I5(rd_tledpsc_reg_0[1]),
        .O(\bdatr[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \bdatr[5]_INST_0_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\bdatr[7]_0 [5]),
        .I3(\bdatr[7]_1 [5]),
        .I4(sel0[2]),
        .I5(\bdatr[7]_2 [5]),
        .O(\bdatr[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEEEEEEEA)) 
    \bdatr[6]_INST_0 
       (.I0(bdatr_6_sn_1),
        .I1(\bdatr[6]_INST_0_i_2_n_0 ),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(\bdatr[7]_INST_0_i_3_n_0 ),
        .O(bdatr[6]));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \bdatr[6]_INST_0_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\bdatr[7]_0 [6]),
        .I3(\bdatr[7]_1 [6]),
        .I4(sel0[2]),
        .I5(\bdatr[7]_2 [6]),
        .O(\bdatr[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEEEEEEEA)) 
    \bdatr[7]_INST_0 
       (.I0(bdatr_7_sn_1),
        .I1(\bdatr[7]_INST_0_i_2_n_0 ),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(\bdatr[7]_INST_0_i_3_n_0 ),
        .O(bdatr[7]));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \bdatr[7]_INST_0_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\bdatr[7]_0 [7]),
        .I3(\bdatr[7]_1 [7]),
        .I4(sel0[2]),
        .I5(\bdatr[7]_2 [7]),
        .O(\bdatr[7]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatr[7]_INST_0_i_3 
       (.I0(rd_tledpsc_reg_0[1]),
        .I1(rd_tledpsc_reg_0[2]),
        .I2(rd_tledpsc_reg_0[0]),
        .O(\bdatr[7]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[8]_INST_0 
       (.I0(rd_tledpsc_reg_0[2]),
        .I1(\bdatr[15] [0]),
        .O(bdatr[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[9]_INST_0 
       (.I0(rd_tledpsc_reg_0[2]),
        .I1(\bdatr[15] [1]),
        .O(bdatr[9]));
  LUT4 #(
    .INIT(16'hFFBF)) 
    \psc_cnt[0]_i_1 
       (.I0(wr_tledpsc),
        .I1(tcnt_tim_enb__6),
        .I2(rst_n),
        .I3(cnt_enb),
        .O(psc_cnt0));
  LUT2 #(
    .INIT(4'h8)) 
    \pwm_cnt[7]_i_1 
       (.I0(tcnt_tim_enb__6),
        .I1(CO),
        .O(cnt_enb));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    rd_tledctl_i_1
       (.I0(bcs_tled_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[2]),
        .I5(badr[3]),
        .O(rd_tledctl0));
  FDRE rd_tledctl_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_tledctl0),
        .Q(rd_tledctl),
        .R(rd_tleddtyr_reg_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    rd_tleddty1_i_1
       (.I0(bcs_tled_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[2]),
        .I5(badr[3]),
        .O(rd_tleddty10));
  FDRE rd_tleddty1_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_tleddty10),
        .Q(sel0[1]),
        .R(rd_tleddtyr_reg_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    rd_tleddty2_i_1
       (.I0(bcs_tled_n),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(badr[2]),
        .I5(badr[3]),
        .O(rd_tleddty20));
  FDRE rd_tleddty2_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_tleddty20),
        .Q(sel0[0]),
        .R(rd_tleddtyr_reg_0));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    rd_tleddtyb_i_1
       (.I0(bcs_tled_n),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(badr[3]),
        .I5(badr[2]),
        .O(rd_tleddtyb0));
  FDRE rd_tleddtyb_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_tleddtyb0),
        .Q(sel0[2]),
        .R(rd_tleddtyr_reg_0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    rd_tleddtyg_i_1
       (.I0(bcs_tled_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[3]),
        .I5(badr[2]),
        .O(rd_tleddtyg0));
  FDRE rd_tleddtyg_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_tleddtyg0),
        .Q(rd_tledpsc_reg_0[0]),
        .R(rd_tleddtyr_reg_0));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    rd_tleddtyr_i_1
       (.I0(bcs_tled_n),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(badr[2]),
        .I5(badr[3]),
        .O(rd_tleddtyr0));
  FDRE rd_tleddtyr_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_tleddtyr0),
        .Q(rd_tledpsc_reg_0[1]),
        .R(rd_tleddtyr_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    rd_tledintc_i_1
       (.I0(bcs_tled_n),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(badr[2]),
        .I5(badr[3]),
        .O(rd_tledintc0));
  FDRE rd_tledintc_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_tledintc0),
        .Q(rd_tledintc),
        .R(rd_tleddtyr_reg_0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    rd_tledpsc_i_1
       (.I0(bcs_tled_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[2]),
        .I5(badr[3]),
        .O(rd_tledpsc0));
  FDRE rd_tledpsc_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_tledpsc0),
        .Q(rd_tledpsc_reg_0[2]),
        .R(rd_tleddtyr_reg_0));
  LUT5 #(
    .INIT(32'hAA000C00)) 
    tled_ledb_INST_0
       (.I0(lctl_ledb_enb),
        .I1(gpio_port_oe[0]),
        .I2(gpio_port[0]),
        .I3(p_0_in7_in),
        .I4(lctl_rgb_enb),
        .O(tled_ledb));
  LUT5 #(
    .INIT(32'hAA000C00)) 
    tled_ledg_INST_0
       (.I0(lctl_ledg_enb),
        .I1(gpio_port_oe[2]),
        .I2(gpio_port[2]),
        .I3(p_0_in8_in),
        .I4(lctl_rgb_enb),
        .O(tled_ledg));
  LUT5 #(
    .INIT(32'hAA000C00)) 
    tled_ledr_INST_0
       (.I0(lctl_ledr_enb),
        .I1(gpio_port_oe[1]),
        .I2(gpio_port[1]),
        .I3(p_0_in10_in),
        .I4(lctl_rgb_enb),
        .O(tled_ledr));
  LUT2 #(
    .INIT(4'h8)) 
    tled_lofr_INST_0
       (.I0(\tledintc_reg_n_0_[4] ),
        .I1(\tledintc_reg_n_0_[0] ),
        .O(tled_lofr));
  LUT5 #(
    .INIT(32'h00000002)) 
    \tledctl[5]_i_2 
       (.I0(p_17_in),
        .I1(badr[0]),
        .I2(badr[1]),
        .I3(badr[2]),
        .I4(badr[3]),
        .O(wr_tledctl));
  FDRE \tledctl_reg[0] 
       (.C(clk),
        .CE(wr_tledctl),
        .D(bdatw[0]),
        .Q(lctl_ledb_enb),
        .R(rd_tleddtyr_reg_0));
  FDRE \tledctl_reg[1] 
       (.C(clk),
        .CE(wr_tledctl),
        .D(bdatw[1]),
        .Q(lctl_ledr_enb),
        .R(rd_tleddtyr_reg_0));
  FDRE \tledctl_reg[2] 
       (.C(clk),
        .CE(wr_tledctl),
        .D(bdatw[2]),
        .Q(lctl_ledg_enb),
        .R(rd_tleddtyr_reg_0));
  FDRE \tledctl_reg[3] 
       (.C(clk),
        .CE(wr_tledctl),
        .D(bdatw[3]),
        .Q(lctl_rgb_enb),
        .R(rd_tleddtyr_reg_0));
  FDRE \tledctl_reg[4] 
       (.C(clk),
        .CE(wr_tledctl),
        .D(bdatw[4]),
        .Q(Q[0]),
        .R(rd_tleddtyr_reg_0));
  FDRE \tledctl_reg[5] 
       (.C(clk),
        .CE(wr_tledctl),
        .D(bdatw[5]),
        .Q(Q[1]),
        .R(rd_tleddtyr_reg_0));
  LUT4 #(
    .INIT(16'hFFBF)) 
    \tleddty2_dbl[7]_i_1 
       (.I0(wr_tledpsc),
        .I1(tcnt_tim_enb__6),
        .I2(rst_n),
        .I3(tcnt_set_loff),
        .O(SR));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tleddty2_dbl[7]_i_2 
       (.I0(\tleddty2_dbl[7]_i_3_n_0 ),
        .I1(\tleddty2_dbl[7]_i_4_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(tcnt_tim_enb__6));
  LUT4 #(
    .INIT(16'h00FE)) 
    \tleddty2_dbl[7]_i_3 
       (.I0(gpio_port_oe[0]),
        .I1(gpio_port_oe[1]),
        .I2(gpio_port_oe[2]),
        .I3(lctl_rgb_enb),
        .O(\tleddty2_dbl[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \tleddty2_dbl[7]_i_4 
       (.I0(lctl_ledg_enb),
        .I1(lctl_ledb_enb),
        .I2(lctl_ledr_enb),
        .I3(lctl_rgb_enb),
        .O(\tleddty2_dbl[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0EEE0000)) 
    \tledintc[0]_i_1 
       (.I0(\tledintc_reg_n_0_[0] ),
        .I1(tcnt_set_loff),
        .I2(wr_tledintc__0),
        .I3(bdatw[0]),
        .I4(rst_n),
        .O(\tledintc[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \tledintc[4]_i_1 
       (.I0(\tledintc_reg_n_0_[4] ),
        .I1(wr_tledintc__0),
        .I2(bdatw[4]),
        .I3(rst_n),
        .O(\tledintc[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \tledintc[4]_i_2 
       (.I0(p_17_in),
        .I1(badr[1]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(badr[3]),
        .O(wr_tledintc__0));
  FDRE \tledintc_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tledintc[0]_i_1_n_0 ),
        .Q(\tledintc_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \tledintc_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tledintc[4]_i_1_n_0 ),
        .Q(\tledintc_reg_n_0_[4] ),
        .R(\<const0> ));
endmodule
