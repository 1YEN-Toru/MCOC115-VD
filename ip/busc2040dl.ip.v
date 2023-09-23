
(* STRUCTURAL_NETLIST = "yes" *)
module busc2040dl
   (clk,
    rst_n,
    sdc_brdy,
    cch_hit,
    bcs_acc_2,
    bcs_acc_l1,
    bcs_acc_l2,
    bcs_sdram_n,
    bdatr,
    bcmd1,
    badr1,
    bdatw1,
    bcmd2,
    badr2,
    bdatw2,
    bmst,
    brdy,
    brdy1,
    brdy2,
    bcmd,
    badr,
    bdatw,
    bdatr1,
    bdatr2);
//
//	Bus State Controller
//		(c) 2021	1YEN Toru
//
//
//	2023/09/23	ver.1.36
//		separate bus state controller and address decoder.
//
//	2023/03/11	ver.1.34
//		corresponding to 32 bit memory bus
//		module name changed: busc2040d -> busc2040dl (32 bit bus edition)
//		add: bcs_iome_n
//
//	2023/01/21	ver.1.32
//		add: bcs_dacu_n
//
//	2022/10/22	ver.1.30
//		add: bcs_int2_n
//
//	2022/10/08	ver.1.28
//		add: bcs_rtcu_n
//
//	2022/09/03	ver.1.26
//		add: bcs_dist_n
//
//	2022/08/06	ver.1.24
//		add: bcs_unsj_n
//
//	2022/05/21	ver.1.22
//		optimized for SDRAM access with no SDRAMC8M unit
//
//	2022/03/12	ver.1.20
//		corresponding to CACHE2W4K unit
//
//	2022/02/19	ver.1.18
//		corresponding to SDRAMC8M unit
//		badrx (extended address) input
//		add: bcs_sdram_n, bcs_sdrc_n
//
//	2022/01/29	ver.1.16
//		add: bcs_adcu_n
//
//	2021/11/06	ver.1.14
//		add: bcs_iram_n, bcs_rom_n area reduced
//		add: bcs_uar1_n, bcs_por1_n
//
//	2021/10/16	ver.1.12
//		add: bcs_fnjp_n
//
//	2021/08/14	ver.1.10
//		add: bcs_stws_n
//
//	2021/07/31	ver.1.08
//		corresponding to dual core cpu
//		module name changed: busc2040 -> busc2040d (dual core edition)
//		add: bcs_smph_n, bcs_icff_n
//
//	2021/06/12	ver.1.06
//		add: bcs_ram[0-4]_n
//
//	2021/05/29	ver.1.04
//		add: bcs_loga_n
//
//	2021/05/01	ver.1.02
//		add: bcs_tim0_n, bcs_tim1_n, bcs_intc_n
//
//	2021/03/20	ver.1.00
//		ROM 20KB, RAM 40KB edition
//
  input clk;
  input rst_n;
  input sdc_brdy;
  input cch_hit;
  input bcs_acc_2;
  input bcs_acc_l1;
  input bcs_acc_l2;
  input bcs_sdram_n;
  input [31:0]bdatr;
  input [3:0]bcmd1;
  input [23:0]badr1;
  input [31:0]bdatw1;
  input [3:0]bcmd2;
  input [23:0]badr2;
  input [31:0]bdatw2;
  output bmst;
  output brdy;
  output brdy1;
  output brdy2;
  output [3:0]bcmd;
  output [23:0]badr;
  output [31:0]bdatw;
  output [31:0]bdatr1;
  output [31:0]bdatr2;

  wire acpu_n_1;
  wire acpu_n_97;
  wire [23:0]badr;
  wire [23:0]badr1;
  wire [23:0]badr2;
  wire [3:0]bcmd;
  wire [3:0]bcmd1;
  wire [3:0]bcmd2;
  wire bcs_acc_2;
  wire bcs_acc_l1;
  wire bcs_acc_l2;
  wire bcs_sdram_n;
  wire bctl_n_3;
  wire [31:0]bdatr;
  wire [31:16]\^bdatr1 ;
  wire [31:16]\^bdatr2 ;
  wire [31:0]bdatw;
  wire [31:0]bdatw1;
  wire [31:0]bdatw2;
  wire bmst;
  wire brdy;
  wire brdy1;
  wire brdy2;
  wire brdy_t;
  wire cch_hit;
  wire clk;
  wire neg_brdy1;
  wire neg_brdy2;
  wire rst_n;
  wire sdc_brdy;

  assign bdatr1[31:16] = \^bdatr1 [31:16];
  assign bdatr1[15:0] = bdatr[15:0];
  assign bdatr2[31:16] = \^bdatr2 [31:16];
  assign bdatr2[15:0] = bdatr[15:0];
  busc_acpu acpu
       (.SR(acpu_n_1),
        .badr(badr),
        .badr1(badr1),
        .badr2(badr2),
        .bcmd(bcmd),
        .bcmd1(bcmd1),
        .bcmd2(bcmd2),
        .\bcmd2_c_reg[0]_0 (acpu_n_97),
        .bcs_acc_2(bcs_acc_2),
        .bcs_acc_l1(bcs_acc_l1),
        .bcs_acc_l2(bcs_acc_l2),
        .bcs_sdram_n(bcs_sdram_n),
        .bctl_brdy_reg(bctl_n_3),
        .bdatr(bdatr),
        .bdatr1(\^bdatr1 ),
        .bdatr2(\^bdatr2 ),
        .bdatw(bdatw),
        .bdatw1(bdatw1),
        .bdatw2(bdatw2),
        .\bdatw2_c_reg[0]_0 (brdy),
        .brdy_t(brdy_t),
        .cch_hit(cch_hit),
        .clk(clk),
        .last_sel_reg_0(bmst),
        .neg_brdy1(neg_brdy1),
        .neg_brdy2(neg_brdy2),
        .rst_n(rst_n));
  busc_fsm bctl
       (.SR(acpu_n_1),
        .bcmd(bcmd[1:0]),
        .bcs_acc_2(bcs_acc_2),
        .bcs_sdram_n(bcs_sdram_n),
        .brdy1(brdy1),
        .brdy2(brdy2),
        .brdy_t(brdy_t),
        .cch_hit(cch_hit),
        .clk(clk),
        .neg_brdy1(neg_brdy1),
        .neg_brdy2(neg_brdy2),
        .sdc_brdy(sdc_brdy),
        .sdc_brdy_0(brdy),
        .sdc_brdy_1(bctl_n_3),
        .\stat_reg[1]_0 (acpu_n_97));
endmodule

module busc_acpu
   (neg_brdy2,
    SR,
    neg_brdy1,
    bdatw,
    last_sel_reg_0,
    bcmd,
    bdatr1,
    bdatr2,
    brdy_t,
    badr,
    \bcmd2_c_reg[0]_0 ,
    \bdatw2_c_reg[0]_0 ,
    clk,
    rst_n,
    bcs_acc_l2,
    badr2,
    bcmd2,
    bcs_acc_l1,
    badr1,
    bcmd1,
    bdatr,
    bcs_sdram_n,
    cch_hit,
    bcs_acc_2,
    bctl_brdy_reg,
    bdatw2,
    bdatw1);
  output neg_brdy2;
  output [0:0]SR;
  output neg_brdy1;
  output [31:0]bdatw;
  output last_sel_reg_0;
  output [3:0]bcmd;
  output [15:0]bdatr1;
  output [15:0]bdatr2;
  output brdy_t;
  output [23:0]badr;
  output \bcmd2_c_reg[0]_0 ;
  input \bdatw2_c_reg[0]_0 ;
  input clk;
  input rst_n;
  input bcs_acc_l2;
  input [23:0]badr2;
  input [3:0]bcmd2;
  input bcs_acc_l1;
  input [23:0]badr1;
  input [3:0]bcmd1;
  input [31:0]bdatr;
  input bcs_sdram_n;
  input cch_hit;
  input bcs_acc_2;
  input bctl_brdy_reg;
  input [31:0]bdatw2;
  input [31:0]bdatw1;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]SR;
  wire bacp_drv_datwh1;
  wire bacp_drv_datwh2;
  wire bacp_lat_datrh1;
  wire [23:0]badr;
  wire [23:0]badr1;
  wire [23:0]badr1_c;
  wire [23:0]badr2;
  wire [23:0]badr2_c;
  wire \badr[11]_INST_0_i_10_n_0 ;
  wire \badr[11]_INST_0_i_3_n_0 ;
  wire \badr[11]_INST_0_i_4_n_0 ;
  wire \badr[11]_INST_0_i_5_n_0 ;
  wire \badr[11]_INST_0_i_6_n_0 ;
  wire \badr[11]_INST_0_i_7_n_0 ;
  wire \badr[11]_INST_0_i_8_n_0 ;
  wire \badr[11]_INST_0_i_9_n_0 ;
  wire \badr[15]_INST_0_i_10_n_0 ;
  wire \badr[15]_INST_0_i_3_n_0 ;
  wire \badr[15]_INST_0_i_4_n_0 ;
  wire \badr[15]_INST_0_i_5_n_0 ;
  wire \badr[15]_INST_0_i_6_n_0 ;
  wire \badr[15]_INST_0_i_7_n_0 ;
  wire \badr[15]_INST_0_i_8_n_0 ;
  wire \badr[15]_INST_0_i_9_n_0 ;
  wire \badr[19]_INST_0_i_10_n_0 ;
  wire \badr[19]_INST_0_i_3_n_0 ;
  wire \badr[19]_INST_0_i_4_n_0 ;
  wire \badr[19]_INST_0_i_5_n_0 ;
  wire \badr[19]_INST_0_i_6_n_0 ;
  wire \badr[19]_INST_0_i_7_n_0 ;
  wire \badr[19]_INST_0_i_8_n_0 ;
  wire \badr[19]_INST_0_i_9_n_0 ;
  wire \badr[23]_INST_0_i_10_n_0 ;
  wire \badr[23]_INST_0_i_3_n_0 ;
  wire \badr[23]_INST_0_i_4_n_0 ;
  wire \badr[23]_INST_0_i_5_n_0 ;
  wire \badr[23]_INST_0_i_6_n_0 ;
  wire \badr[23]_INST_0_i_7_n_0 ;
  wire \badr[23]_INST_0_i_8_n_0 ;
  wire \badr[23]_INST_0_i_9_n_0 ;
  wire \badr[3]_INST_0_i_10_n_0 ;
  wire \badr[3]_INST_0_i_12_n_0 ;
  wire \badr[3]_INST_0_i_4_n_0 ;
  wire \badr[3]_INST_0_i_5_n_0 ;
  wire \badr[3]_INST_0_i_7_n_0 ;
  wire \badr[3]_INST_0_i_9_n_0 ;
  wire \badr[7]_INST_0_i_10_n_0 ;
  wire \badr[7]_INST_0_i_3_n_0 ;
  wire \badr[7]_INST_0_i_4_n_0 ;
  wire \badr[7]_INST_0_i_5_n_0 ;
  wire \badr[7]_INST_0_i_6_n_0 ;
  wire \badr[7]_INST_0_i_7_n_0 ;
  wire \badr[7]_INST_0_i_8_n_0 ;
  wire \badr[7]_INST_0_i_9_n_0 ;
  wire [3:0]bcmd;
  wire [3:0]bcmd1;
  wire [3:0]bcmd1_c;
  wire [3:0]bcmd2;
  wire [3:0]bcmd2_c;
  wire \bcmd2_c_reg[0]_0 ;
  wire \bcmd[0]_INST_0_i_1_n_0 ;
  wire \bcmd[0]_INST_0_i_2_n_0 ;
  wire \bcmd[1]_INST_0_i_1_n_0 ;
  wire \bcmd[1]_INST_0_i_2_n_0 ;
  wire \bcmd[2]_INST_0_i_1_n_0 ;
  wire \bcmd[3]_INST_0_i_1_n_0 ;
  wire \bcmd[3]_INST_0_i_3_n_0 ;
  wire bcs_acc_2;
  wire bcs_acc_l1;
  wire bcs_acc_l2;
  wire bcs_sdram_n;
  wire bctl_brdy_reg;
  wire [31:0]bdatr;
  wire [15:0]bdatr1;
  wire [15:0]bdatr2;
  wire [31:0]bdatw;
  wire [31:0]bdatw1;
  wire [31:0]bdatw1_c;
  wire [31:0]bdatw2;
  wire [31:0]bdatw2_c;
  wire \bdatw2_c_reg[0]_0 ;
  wire \bdatw[16]_INST_0_i_1_n_0 ;
  wire \bdatw[16]_INST_0_i_2_n_0 ;
  wire \bdatw[17]_INST_0_i_1_n_0 ;
  wire \bdatw[17]_INST_0_i_2_n_0 ;
  wire \bdatw[18]_INST_0_i_1_n_0 ;
  wire \bdatw[18]_INST_0_i_2_n_0 ;
  wire \bdatw[19]_INST_0_i_1_n_0 ;
  wire \bdatw[19]_INST_0_i_2_n_0 ;
  wire \bdatw[20]_INST_0_i_1_n_0 ;
  wire \bdatw[20]_INST_0_i_2_n_0 ;
  wire \bdatw[21]_INST_0_i_1_n_0 ;
  wire \bdatw[21]_INST_0_i_2_n_0 ;
  wire \bdatw[22]_INST_0_i_1_n_0 ;
  wire \bdatw[22]_INST_0_i_2_n_0 ;
  wire \bdatw[23]_INST_0_i_1_n_0 ;
  wire \bdatw[23]_INST_0_i_2_n_0 ;
  wire \bdatw[24]_INST_0_i_1_n_0 ;
  wire \bdatw[24]_INST_0_i_2_n_0 ;
  wire \bdatw[25]_INST_0_i_1_n_0 ;
  wire \bdatw[25]_INST_0_i_2_n_0 ;
  wire \bdatw[26]_INST_0_i_1_n_0 ;
  wire \bdatw[26]_INST_0_i_2_n_0 ;
  wire \bdatw[27]_INST_0_i_1_n_0 ;
  wire \bdatw[27]_INST_0_i_2_n_0 ;
  wire \bdatw[28]_INST_0_i_1_n_0 ;
  wire \bdatw[28]_INST_0_i_2_n_0 ;
  wire \bdatw[29]_INST_0_i_1_n_0 ;
  wire \bdatw[29]_INST_0_i_2_n_0 ;
  wire \bdatw[30]_INST_0_i_1_n_0 ;
  wire \bdatw[30]_INST_0_i_2_n_0 ;
  wire \bdatw[31]_INST_0_i_1_n_0 ;
  wire \bdatw[31]_INST_0_i_2_n_0 ;
  wire blng1_n_24;
  wire blng1_n_25;
  wire blng1_n_26;
  wire blng1_n_27;
  wire blng1_n_28;
  wire blng1_n_29;
  wire blng1_n_30;
  wire blng1_n_31;
  wire blng1_n_32;
  wire blng1_n_33;
  wire blng1_n_34;
  wire blng1_n_35;
  wire blng1_n_36;
  wire blng1_n_37;
  wire blng1_n_38;
  wire blng1_n_39;
  wire blng1_n_40;
  wire bmst_INST_0_i_1_n_0;
  wire bmst_INST_0_i_2_n_0;
  wire brdy_t;
  wire cch_hit;
  wire clk;
  wire [15:0]datwl1;
  wire [15:0]datwl2;
  wire last_sel_i_1_n_0;
  wire last_sel_reg_0;
  wire last_sel_reg_n_0;
  wire neg_brdy1;
  wire neg_brdy10;
  wire neg_brdy2;
  wire neg_brdy20;
  wire neg_brdy2_i_2_n_0;
  wire neg_brdy2_i_3_n_0;
  wire [31:16]p_1_in;
  wire [23:0]p_1_in__0;
  wire rst_n;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \badr1_c_reg[0] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[0]),
        .Q(badr1_c[0]),
        .R(SR));
  FDRE \badr1_c_reg[10] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[10]),
        .Q(badr1_c[10]),
        .R(SR));
  FDRE \badr1_c_reg[11] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[11]),
        .Q(badr1_c[11]),
        .R(SR));
  FDRE \badr1_c_reg[12] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[12]),
        .Q(badr1_c[12]),
        .R(SR));
  FDRE \badr1_c_reg[13] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[13]),
        .Q(badr1_c[13]),
        .R(SR));
  FDRE \badr1_c_reg[14] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[14]),
        .Q(badr1_c[14]),
        .R(SR));
  FDRE \badr1_c_reg[15] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[15]),
        .Q(badr1_c[15]),
        .R(SR));
  FDRE \badr1_c_reg[16] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[16]),
        .Q(badr1_c[16]),
        .R(SR));
  FDRE \badr1_c_reg[17] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[17]),
        .Q(badr1_c[17]),
        .R(SR));
  FDRE \badr1_c_reg[18] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[18]),
        .Q(badr1_c[18]),
        .R(SR));
  FDRE \badr1_c_reg[19] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[19]),
        .Q(badr1_c[19]),
        .R(SR));
  FDRE \badr1_c_reg[1] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[1]),
        .Q(badr1_c[1]),
        .R(SR));
  FDRE \badr1_c_reg[20] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[20]),
        .Q(badr1_c[20]),
        .R(SR));
  FDRE \badr1_c_reg[21] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[21]),
        .Q(badr1_c[21]),
        .R(SR));
  FDRE \badr1_c_reg[22] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[22]),
        .Q(badr1_c[22]),
        .R(SR));
  FDRE \badr1_c_reg[23] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[23]),
        .Q(badr1_c[23]),
        .R(SR));
  FDRE \badr1_c_reg[2] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[2]),
        .Q(badr1_c[2]),
        .R(SR));
  FDRE \badr1_c_reg[3] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[3]),
        .Q(badr1_c[3]),
        .R(SR));
  FDRE \badr1_c_reg[4] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[4]),
        .Q(badr1_c[4]),
        .R(SR));
  FDRE \badr1_c_reg[5] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[5]),
        .Q(badr1_c[5]),
        .R(SR));
  FDRE \badr1_c_reg[6] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[6]),
        .Q(badr1_c[6]),
        .R(SR));
  FDRE \badr1_c_reg[7] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[7]),
        .Q(badr1_c[7]),
        .R(SR));
  FDRE \badr1_c_reg[8] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[8]),
        .Q(badr1_c[8]),
        .R(SR));
  FDRE \badr1_c_reg[9] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr1[9]),
        .Q(badr1_c[9]),
        .R(SR));
  FDRE \badr2_c_reg[0] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[0]),
        .Q(badr2_c[0]),
        .R(SR));
  FDRE \badr2_c_reg[10] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[10]),
        .Q(badr2_c[10]),
        .R(SR));
  FDRE \badr2_c_reg[11] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[11]),
        .Q(badr2_c[11]),
        .R(SR));
  FDRE \badr2_c_reg[12] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[12]),
        .Q(badr2_c[12]),
        .R(SR));
  FDRE \badr2_c_reg[13] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[13]),
        .Q(badr2_c[13]),
        .R(SR));
  FDRE \badr2_c_reg[14] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[14]),
        .Q(badr2_c[14]),
        .R(SR));
  FDRE \badr2_c_reg[15] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[15]),
        .Q(badr2_c[15]),
        .R(SR));
  FDRE \badr2_c_reg[16] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[16]),
        .Q(badr2_c[16]),
        .R(SR));
  FDRE \badr2_c_reg[17] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[17]),
        .Q(badr2_c[17]),
        .R(SR));
  FDRE \badr2_c_reg[18] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[18]),
        .Q(badr2_c[18]),
        .R(SR));
  FDRE \badr2_c_reg[19] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[19]),
        .Q(badr2_c[19]),
        .R(SR));
  FDRE \badr2_c_reg[1] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[1]),
        .Q(badr2_c[1]),
        .R(SR));
  FDRE \badr2_c_reg[20] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[20]),
        .Q(badr2_c[20]),
        .R(SR));
  FDRE \badr2_c_reg[21] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[21]),
        .Q(badr2_c[21]),
        .R(SR));
  FDRE \badr2_c_reg[22] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[22]),
        .Q(badr2_c[22]),
        .R(SR));
  FDRE \badr2_c_reg[23] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[23]),
        .Q(badr2_c[23]),
        .R(SR));
  FDRE \badr2_c_reg[2] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[2]),
        .Q(badr2_c[2]),
        .R(SR));
  FDRE \badr2_c_reg[3] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[3]),
        .Q(badr2_c[3]),
        .R(SR));
  FDRE \badr2_c_reg[4] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[4]),
        .Q(badr2_c[4]),
        .R(SR));
  FDRE \badr2_c_reg[5] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[5]),
        .Q(badr2_c[5]),
        .R(SR));
  FDRE \badr2_c_reg[6] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[6]),
        .Q(badr2_c[6]),
        .R(SR));
  FDRE \badr2_c_reg[7] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[7]),
        .Q(badr2_c[7]),
        .R(SR));
  FDRE \badr2_c_reg[8] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[8]),
        .Q(badr2_c[8]),
        .R(SR));
  FDRE \badr2_c_reg[9] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(badr2[9]),
        .Q(badr2_c[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[11]_INST_0_i_10 
       (.I0(badr1_c[8]),
        .I1(neg_brdy1),
        .I2(badr1[8]),
        .O(\badr[11]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[11]_INST_0_i_3 
       (.I0(badr2_c[11]),
        .I1(neg_brdy2),
        .I2(badr2[11]),
        .O(\badr[11]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[11]_INST_0_i_4 
       (.I0(badr2_c[10]),
        .I1(neg_brdy2),
        .I2(badr2[10]),
        .O(\badr[11]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[11]_INST_0_i_5 
       (.I0(badr2_c[9]),
        .I1(neg_brdy2),
        .I2(badr2[9]),
        .O(\badr[11]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[11]_INST_0_i_6 
       (.I0(badr2_c[8]),
        .I1(neg_brdy2),
        .I2(badr2[8]),
        .O(\badr[11]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[11]_INST_0_i_7 
       (.I0(badr1_c[11]),
        .I1(neg_brdy1),
        .I2(badr1[11]),
        .O(\badr[11]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[11]_INST_0_i_8 
       (.I0(badr1_c[10]),
        .I1(neg_brdy1),
        .I2(badr1[10]),
        .O(\badr[11]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[11]_INST_0_i_9 
       (.I0(badr1_c[9]),
        .I1(neg_brdy1),
        .I2(badr1[9]),
        .O(\badr[11]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[15]_INST_0_i_10 
       (.I0(badr1_c[12]),
        .I1(neg_brdy1),
        .I2(badr1[12]),
        .O(\badr[15]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[15]_INST_0_i_3 
       (.I0(badr2_c[15]),
        .I1(neg_brdy2),
        .I2(badr2[15]),
        .O(\badr[15]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[15]_INST_0_i_4 
       (.I0(badr2_c[14]),
        .I1(neg_brdy2),
        .I2(badr2[14]),
        .O(\badr[15]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[15]_INST_0_i_5 
       (.I0(badr2_c[13]),
        .I1(neg_brdy2),
        .I2(badr2[13]),
        .O(\badr[15]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[15]_INST_0_i_6 
       (.I0(badr2_c[12]),
        .I1(neg_brdy2),
        .I2(badr2[12]),
        .O(\badr[15]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[15]_INST_0_i_7 
       (.I0(badr1_c[15]),
        .I1(neg_brdy1),
        .I2(badr1[15]),
        .O(\badr[15]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[15]_INST_0_i_8 
       (.I0(badr1_c[14]),
        .I1(neg_brdy1),
        .I2(badr1[14]),
        .O(\badr[15]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[15]_INST_0_i_9 
       (.I0(badr1_c[13]),
        .I1(neg_brdy1),
        .I2(badr1[13]),
        .O(\badr[15]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[19]_INST_0_i_10 
       (.I0(badr1_c[16]),
        .I1(neg_brdy1),
        .I2(badr1[16]),
        .O(\badr[19]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[19]_INST_0_i_3 
       (.I0(badr2_c[19]),
        .I1(neg_brdy2),
        .I2(badr2[19]),
        .O(\badr[19]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[19]_INST_0_i_4 
       (.I0(badr2_c[18]),
        .I1(neg_brdy2),
        .I2(badr2[18]),
        .O(\badr[19]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[19]_INST_0_i_5 
       (.I0(badr2_c[17]),
        .I1(neg_brdy2),
        .I2(badr2[17]),
        .O(\badr[19]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[19]_INST_0_i_6 
       (.I0(badr2_c[16]),
        .I1(neg_brdy2),
        .I2(badr2[16]),
        .O(\badr[19]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[19]_INST_0_i_7 
       (.I0(badr1_c[19]),
        .I1(neg_brdy1),
        .I2(badr1[19]),
        .O(\badr[19]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[19]_INST_0_i_8 
       (.I0(badr1_c[18]),
        .I1(neg_brdy1),
        .I2(badr1[18]),
        .O(\badr[19]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[19]_INST_0_i_9 
       (.I0(badr1_c[17]),
        .I1(neg_brdy1),
        .I2(badr1[17]),
        .O(\badr[19]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[23]_INST_0_i_10 
       (.I0(badr1_c[20]),
        .I1(neg_brdy1),
        .I2(badr1[20]),
        .O(\badr[23]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[23]_INST_0_i_3 
       (.I0(badr2_c[23]),
        .I1(neg_brdy2),
        .I2(badr2[23]),
        .O(\badr[23]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[23]_INST_0_i_4 
       (.I0(badr2_c[22]),
        .I1(neg_brdy2),
        .I2(badr2[22]),
        .O(\badr[23]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[23]_INST_0_i_5 
       (.I0(badr2_c[21]),
        .I1(neg_brdy2),
        .I2(badr2[21]),
        .O(\badr[23]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[23]_INST_0_i_6 
       (.I0(badr2_c[20]),
        .I1(neg_brdy2),
        .I2(badr2[20]),
        .O(\badr[23]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[23]_INST_0_i_7 
       (.I0(badr1_c[23]),
        .I1(neg_brdy1),
        .I2(badr1[23]),
        .O(\badr[23]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[23]_INST_0_i_8 
       (.I0(badr1_c[22]),
        .I1(neg_brdy1),
        .I2(badr1[22]),
        .O(\badr[23]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[23]_INST_0_i_9 
       (.I0(badr1_c[21]),
        .I1(neg_brdy1),
        .I2(badr1[21]),
        .O(\badr[23]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[3]_INST_0_i_10 
       (.I0(badr1_c[2]),
        .I1(neg_brdy1),
        .I2(badr1[2]),
        .O(\badr[3]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[3]_INST_0_i_12 
       (.I0(badr1_c[0]),
        .I1(neg_brdy1),
        .I2(badr1[0]),
        .O(\badr[3]_INST_0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[3]_INST_0_i_4 
       (.I0(badr2_c[3]),
        .I1(neg_brdy2),
        .I2(badr2[3]),
        .O(\badr[3]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[3]_INST_0_i_5 
       (.I0(badr2_c[2]),
        .I1(neg_brdy2),
        .I2(badr2[2]),
        .O(\badr[3]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[3]_INST_0_i_7 
       (.I0(badr2_c[0]),
        .I1(neg_brdy2),
        .I2(badr2[0]),
        .O(\badr[3]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[3]_INST_0_i_9 
       (.I0(badr1_c[3]),
        .I1(neg_brdy1),
        .I2(badr1[3]),
        .O(\badr[3]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[7]_INST_0_i_10 
       (.I0(badr1_c[4]),
        .I1(neg_brdy1),
        .I2(badr1[4]),
        .O(\badr[7]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[7]_INST_0_i_3 
       (.I0(badr2_c[7]),
        .I1(neg_brdy2),
        .I2(badr2[7]),
        .O(\badr[7]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[7]_INST_0_i_4 
       (.I0(badr2_c[6]),
        .I1(neg_brdy2),
        .I2(badr2[6]),
        .O(\badr[7]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[7]_INST_0_i_5 
       (.I0(badr2_c[5]),
        .I1(neg_brdy2),
        .I2(badr2[5]),
        .O(\badr[7]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[7]_INST_0_i_6 
       (.I0(badr2_c[4]),
        .I1(neg_brdy2),
        .I2(badr2[4]),
        .O(\badr[7]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[7]_INST_0_i_7 
       (.I0(badr1_c[7]),
        .I1(neg_brdy1),
        .I2(badr1[7]),
        .O(\badr[7]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[7]_INST_0_i_8 
       (.I0(badr1_c[6]),
        .I1(neg_brdy1),
        .I2(badr1[6]),
        .O(\badr[7]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[7]_INST_0_i_9 
       (.I0(badr1_c[5]),
        .I1(neg_brdy1),
        .I2(badr1[5]),
        .O(\badr[7]_INST_0_i_9_n_0 ));
  FDRE \bcmd1_c_reg[0] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bcmd1[0]),
        .Q(bcmd1_c[0]),
        .R(SR));
  FDRE \bcmd1_c_reg[1] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bcmd1[1]),
        .Q(bcmd1_c[1]),
        .R(SR));
  FDRE \bcmd1_c_reg[2] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bcmd1[2]),
        .Q(bcmd1_c[2]),
        .R(SR));
  FDRE \bcmd1_c_reg[3] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bcmd1[3]),
        .Q(bcmd1_c[3]),
        .R(SR));
  FDRE \bcmd2_c_reg[0] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bcmd2[0]),
        .Q(bcmd2_c[0]),
        .R(SR));
  FDRE \bcmd2_c_reg[1] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bcmd2[1]),
        .Q(bcmd2_c[1]),
        .R(SR));
  FDRE \bcmd2_c_reg[2] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bcmd2[2]),
        .Q(bcmd2_c[2]),
        .R(SR));
  FDRE \bcmd2_c_reg[3] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bcmd2[3]),
        .Q(bcmd2_c[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'h8A80BABF)) 
    \bcmd[0]_INST_0 
       (.I0(\bcmd[0]_INST_0_i_1_n_0 ),
        .I1(bmst_INST_0_i_1_n_0),
        .I2(last_sel_reg_n_0),
        .I3(bmst_INST_0_i_2_n_0),
        .I4(\bcmd[0]_INST_0_i_2_n_0 ),
        .O(bcmd[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bcmd[0]_INST_0_i_1 
       (.I0(bcmd2_c[0]),
        .I1(neg_brdy2),
        .I2(bcmd2[0]),
        .O(\bcmd[0]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \bcmd[0]_INST_0_i_2 
       (.I0(bcmd1_c[0]),
        .I1(neg_brdy1),
        .I2(bcmd1[0]),
        .O(\bcmd[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \bcmd[1]_INST_0 
       (.I0(\bcmd[1]_INST_0_i_1_n_0 ),
        .I1(bmst_INST_0_i_1_n_0),
        .I2(last_sel_reg_n_0),
        .I3(bmst_INST_0_i_2_n_0),
        .I4(\bcmd[1]_INST_0_i_2_n_0 ),
        .O(bcmd[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bcmd[1]_INST_0_i_1 
       (.I0(bcmd2_c[1]),
        .I1(neg_brdy2),
        .I2(bcmd2[1]),
        .O(\bcmd[1]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bcmd[1]_INST_0_i_2 
       (.I0(bcmd1_c[1]),
        .I1(neg_brdy1),
        .I2(bcmd1[1]),
        .O(\bcmd[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bcmd[2]_INST_0 
       (.I0(bcmd2_c[2]),
        .I1(neg_brdy2),
        .I2(bcmd2[2]),
        .I3(last_sel_reg_0),
        .I4(\bcmd[2]_INST_0_i_1_n_0 ),
        .O(bcmd[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bcmd[2]_INST_0_i_1 
       (.I0(bcmd1_c[2]),
        .I1(neg_brdy1),
        .I2(bcmd1[2]),
        .O(\bcmd[2]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bcmd[3]_INST_0_i_1 
       (.I0(bcmd2_c[3]),
        .I1(neg_brdy2),
        .I2(bcmd2[3]),
        .O(\bcmd[3]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bcmd[3]_INST_0_i_3 
       (.I0(bcmd1_c[3]),
        .I1(neg_brdy1),
        .I2(bcmd1[3]),
        .O(\bcmd[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0EFF0AFFFFFF)) 
    bctl_brdy_i_1
       (.I0(bcs_sdram_n),
        .I1(cch_hit),
        .I2(bcs_acc_2),
        .I3(bctl_brdy_reg),
        .I4(bcmd[1]),
        .I5(bcmd[0]),
        .O(brdy_t));
  FDRE \bdatw1_c_reg[0] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[0]),
        .Q(bdatw1_c[0]),
        .R(SR));
  FDRE \bdatw1_c_reg[10] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[10]),
        .Q(bdatw1_c[10]),
        .R(SR));
  FDRE \bdatw1_c_reg[11] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[11]),
        .Q(bdatw1_c[11]),
        .R(SR));
  FDRE \bdatw1_c_reg[12] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[12]),
        .Q(bdatw1_c[12]),
        .R(SR));
  FDRE \bdatw1_c_reg[13] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[13]),
        .Q(bdatw1_c[13]),
        .R(SR));
  FDRE \bdatw1_c_reg[14] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[14]),
        .Q(bdatw1_c[14]),
        .R(SR));
  FDRE \bdatw1_c_reg[15] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[15]),
        .Q(bdatw1_c[15]),
        .R(SR));
  FDRE \bdatw1_c_reg[16] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[16]),
        .Q(bdatw1_c[16]),
        .R(SR));
  FDRE \bdatw1_c_reg[17] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[17]),
        .Q(bdatw1_c[17]),
        .R(SR));
  FDRE \bdatw1_c_reg[18] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[18]),
        .Q(bdatw1_c[18]),
        .R(SR));
  FDRE \bdatw1_c_reg[19] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[19]),
        .Q(bdatw1_c[19]),
        .R(SR));
  FDRE \bdatw1_c_reg[1] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[1]),
        .Q(bdatw1_c[1]),
        .R(SR));
  FDRE \bdatw1_c_reg[20] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[20]),
        .Q(bdatw1_c[20]),
        .R(SR));
  FDRE \bdatw1_c_reg[21] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[21]),
        .Q(bdatw1_c[21]),
        .R(SR));
  FDRE \bdatw1_c_reg[22] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[22]),
        .Q(bdatw1_c[22]),
        .R(SR));
  FDRE \bdatw1_c_reg[23] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[23]),
        .Q(bdatw1_c[23]),
        .R(SR));
  FDRE \bdatw1_c_reg[24] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[24]),
        .Q(bdatw1_c[24]),
        .R(SR));
  FDRE \bdatw1_c_reg[25] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[25]),
        .Q(bdatw1_c[25]),
        .R(SR));
  FDRE \bdatw1_c_reg[26] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[26]),
        .Q(bdatw1_c[26]),
        .R(SR));
  FDRE \bdatw1_c_reg[27] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[27]),
        .Q(bdatw1_c[27]),
        .R(SR));
  FDRE \bdatw1_c_reg[28] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[28]),
        .Q(bdatw1_c[28]),
        .R(SR));
  FDRE \bdatw1_c_reg[29] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[29]),
        .Q(bdatw1_c[29]),
        .R(SR));
  FDRE \bdatw1_c_reg[2] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[2]),
        .Q(bdatw1_c[2]),
        .R(SR));
  FDRE \bdatw1_c_reg[30] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[30]),
        .Q(bdatw1_c[30]),
        .R(SR));
  FDRE \bdatw1_c_reg[31] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[31]),
        .Q(bdatw1_c[31]),
        .R(SR));
  FDRE \bdatw1_c_reg[3] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[3]),
        .Q(bdatw1_c[3]),
        .R(SR));
  FDRE \bdatw1_c_reg[4] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[4]),
        .Q(bdatw1_c[4]),
        .R(SR));
  FDRE \bdatw1_c_reg[5] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[5]),
        .Q(bdatw1_c[5]),
        .R(SR));
  FDRE \bdatw1_c_reg[6] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[6]),
        .Q(bdatw1_c[6]),
        .R(SR));
  FDRE \bdatw1_c_reg[7] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[7]),
        .Q(bdatw1_c[7]),
        .R(SR));
  FDRE \bdatw1_c_reg[8] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[8]),
        .Q(bdatw1_c[8]),
        .R(SR));
  FDRE \bdatw1_c_reg[9] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw1[9]),
        .Q(bdatw1_c[9]),
        .R(SR));
  FDRE \bdatw2_c_reg[0] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[0]),
        .Q(bdatw2_c[0]),
        .R(SR));
  FDRE \bdatw2_c_reg[10] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[10]),
        .Q(bdatw2_c[10]),
        .R(SR));
  FDRE \bdatw2_c_reg[11] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[11]),
        .Q(bdatw2_c[11]),
        .R(SR));
  FDRE \bdatw2_c_reg[12] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[12]),
        .Q(bdatw2_c[12]),
        .R(SR));
  FDRE \bdatw2_c_reg[13] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[13]),
        .Q(bdatw2_c[13]),
        .R(SR));
  FDRE \bdatw2_c_reg[14] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[14]),
        .Q(bdatw2_c[14]),
        .R(SR));
  FDRE \bdatw2_c_reg[15] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[15]),
        .Q(bdatw2_c[15]),
        .R(SR));
  FDRE \bdatw2_c_reg[16] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[16]),
        .Q(bdatw2_c[16]),
        .R(SR));
  FDRE \bdatw2_c_reg[17] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[17]),
        .Q(bdatw2_c[17]),
        .R(SR));
  FDRE \bdatw2_c_reg[18] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[18]),
        .Q(bdatw2_c[18]),
        .R(SR));
  FDRE \bdatw2_c_reg[19] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[19]),
        .Q(bdatw2_c[19]),
        .R(SR));
  FDRE \bdatw2_c_reg[1] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[1]),
        .Q(bdatw2_c[1]),
        .R(SR));
  FDRE \bdatw2_c_reg[20] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[20]),
        .Q(bdatw2_c[20]),
        .R(SR));
  FDRE \bdatw2_c_reg[21] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[21]),
        .Q(bdatw2_c[21]),
        .R(SR));
  FDRE \bdatw2_c_reg[22] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[22]),
        .Q(bdatw2_c[22]),
        .R(SR));
  FDRE \bdatw2_c_reg[23] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[23]),
        .Q(bdatw2_c[23]),
        .R(SR));
  FDRE \bdatw2_c_reg[24] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[24]),
        .Q(bdatw2_c[24]),
        .R(SR));
  FDRE \bdatw2_c_reg[25] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[25]),
        .Q(bdatw2_c[25]),
        .R(SR));
  FDRE \bdatw2_c_reg[26] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[26]),
        .Q(bdatw2_c[26]),
        .R(SR));
  FDRE \bdatw2_c_reg[27] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[27]),
        .Q(bdatw2_c[27]),
        .R(SR));
  FDRE \bdatw2_c_reg[28] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[28]),
        .Q(bdatw2_c[28]),
        .R(SR));
  FDRE \bdatw2_c_reg[29] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[29]),
        .Q(bdatw2_c[29]),
        .R(SR));
  FDRE \bdatw2_c_reg[2] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[2]),
        .Q(bdatw2_c[2]),
        .R(SR));
  FDRE \bdatw2_c_reg[30] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[30]),
        .Q(bdatw2_c[30]),
        .R(SR));
  FDRE \bdatw2_c_reg[31] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[31]),
        .Q(bdatw2_c[31]),
        .R(SR));
  FDRE \bdatw2_c_reg[3] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[3]),
        .Q(bdatw2_c[3]),
        .R(SR));
  FDRE \bdatw2_c_reg[4] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[4]),
        .Q(bdatw2_c[4]),
        .R(SR));
  FDRE \bdatw2_c_reg[5] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[5]),
        .Q(bdatw2_c[5]),
        .R(SR));
  FDRE \bdatw2_c_reg[6] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[6]),
        .Q(bdatw2_c[6]),
        .R(SR));
  FDRE \bdatw2_c_reg[7] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[7]),
        .Q(bdatw2_c[7]),
        .R(SR));
  FDRE \bdatw2_c_reg[8] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[8]),
        .Q(bdatw2_c[8]),
        .R(SR));
  FDRE \bdatw2_c_reg[9] 
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(bdatw2[9]),
        .Q(bdatw2_c[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[16]_INST_0_i_1 
       (.I0(bdatw2_c[16]),
        .I1(neg_brdy2),
        .I2(bdatw2[16]),
        .O(\bdatw[16]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[16]_INST_0_i_2 
       (.I0(bdatw1_c[16]),
        .I1(neg_brdy1),
        .I2(bdatw1[16]),
        .O(\bdatw[16]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[17]_INST_0_i_1 
       (.I0(bdatw2_c[17]),
        .I1(neg_brdy2),
        .I2(bdatw2[17]),
        .O(\bdatw[17]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[17]_INST_0_i_2 
       (.I0(bdatw1_c[17]),
        .I1(neg_brdy1),
        .I2(bdatw1[17]),
        .O(\bdatw[17]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[18]_INST_0_i_1 
       (.I0(bdatw2_c[18]),
        .I1(neg_brdy2),
        .I2(bdatw2[18]),
        .O(\bdatw[18]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[18]_INST_0_i_2 
       (.I0(bdatw1_c[18]),
        .I1(neg_brdy1),
        .I2(bdatw1[18]),
        .O(\bdatw[18]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[19]_INST_0_i_1 
       (.I0(bdatw2_c[19]),
        .I1(neg_brdy2),
        .I2(bdatw2[19]),
        .O(\bdatw[19]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[19]_INST_0_i_2 
       (.I0(bdatw1_c[19]),
        .I1(neg_brdy1),
        .I2(bdatw1[19]),
        .O(\bdatw[19]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[20]_INST_0_i_1 
       (.I0(bdatw2_c[20]),
        .I1(neg_brdy2),
        .I2(bdatw2[20]),
        .O(\bdatw[20]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[20]_INST_0_i_2 
       (.I0(bdatw1_c[20]),
        .I1(neg_brdy1),
        .I2(bdatw1[20]),
        .O(\bdatw[20]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[21]_INST_0_i_1 
       (.I0(bdatw2_c[21]),
        .I1(neg_brdy2),
        .I2(bdatw2[21]),
        .O(\bdatw[21]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[21]_INST_0_i_2 
       (.I0(bdatw1_c[21]),
        .I1(neg_brdy1),
        .I2(bdatw1[21]),
        .O(\bdatw[21]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[22]_INST_0_i_1 
       (.I0(bdatw2_c[22]),
        .I1(neg_brdy2),
        .I2(bdatw2[22]),
        .O(\bdatw[22]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[22]_INST_0_i_2 
       (.I0(bdatw1_c[22]),
        .I1(neg_brdy1),
        .I2(bdatw1[22]),
        .O(\bdatw[22]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[23]_INST_0_i_1 
       (.I0(bdatw2_c[23]),
        .I1(neg_brdy2),
        .I2(bdatw2[23]),
        .O(\bdatw[23]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[23]_INST_0_i_2 
       (.I0(bdatw1_c[23]),
        .I1(neg_brdy1),
        .I2(bdatw1[23]),
        .O(\bdatw[23]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[24]_INST_0_i_1 
       (.I0(bdatw2_c[24]),
        .I1(neg_brdy2),
        .I2(bdatw2[24]),
        .O(\bdatw[24]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[24]_INST_0_i_2 
       (.I0(bdatw1_c[24]),
        .I1(neg_brdy1),
        .I2(bdatw1[24]),
        .O(\bdatw[24]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[25]_INST_0_i_1 
       (.I0(bdatw2_c[25]),
        .I1(neg_brdy2),
        .I2(bdatw2[25]),
        .O(\bdatw[25]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[25]_INST_0_i_2 
       (.I0(bdatw1_c[25]),
        .I1(neg_brdy1),
        .I2(bdatw1[25]),
        .O(\bdatw[25]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[26]_INST_0_i_1 
       (.I0(bdatw2_c[26]),
        .I1(neg_brdy2),
        .I2(bdatw2[26]),
        .O(\bdatw[26]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[26]_INST_0_i_2 
       (.I0(bdatw1_c[26]),
        .I1(neg_brdy1),
        .I2(bdatw1[26]),
        .O(\bdatw[26]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[27]_INST_0_i_1 
       (.I0(bdatw2_c[27]),
        .I1(neg_brdy2),
        .I2(bdatw2[27]),
        .O(\bdatw[27]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[27]_INST_0_i_2 
       (.I0(bdatw1_c[27]),
        .I1(neg_brdy1),
        .I2(bdatw1[27]),
        .O(\bdatw[27]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[28]_INST_0_i_1 
       (.I0(bdatw2_c[28]),
        .I1(neg_brdy2),
        .I2(bdatw2[28]),
        .O(\bdatw[28]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[28]_INST_0_i_2 
       (.I0(bdatw1_c[28]),
        .I1(neg_brdy1),
        .I2(bdatw1[28]),
        .O(\bdatw[28]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[29]_INST_0_i_1 
       (.I0(bdatw2_c[29]),
        .I1(neg_brdy2),
        .I2(bdatw2[29]),
        .O(\bdatw[29]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[29]_INST_0_i_2 
       (.I0(bdatw1_c[29]),
        .I1(neg_brdy1),
        .I2(bdatw1[29]),
        .O(\bdatw[29]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[30]_INST_0_i_1 
       (.I0(bdatw2_c[30]),
        .I1(neg_brdy2),
        .I2(bdatw2[30]),
        .O(\bdatw[30]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[30]_INST_0_i_2 
       (.I0(bdatw1_c[30]),
        .I1(neg_brdy1),
        .I2(bdatw1[30]),
        .O(\bdatw[30]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[31]_INST_0_i_1 
       (.I0(bdatw2_c[31]),
        .I1(neg_brdy2),
        .I2(bdatw2[31]),
        .O(\bdatw[31]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[31]_INST_0_i_2 
       (.I0(bdatw1_c[31]),
        .I1(neg_brdy1),
        .I2(bdatw1[31]),
        .O(\bdatw[31]_INST_0_i_2_n_0 ));
  busc_long_fsm blng1
       (.E(bacp_drv_datwh1),
        .Q(p_1_in),
        .S({\badr[3]_INST_0_i_9_n_0 ,\badr[3]_INST_0_i_10_n_0 ,\badr[3]_INST_0_i_12_n_0 }),
        .SR(SR),
        .badr1(badr1[1]),
        .\badr[11] ({\badr[11]_INST_0_i_7_n_0 ,\badr[11]_INST_0_i_8_n_0 ,\badr[11]_INST_0_i_9_n_0 ,\badr[11]_INST_0_i_10_n_0 }),
        .\badr[15] ({\badr[15]_INST_0_i_7_n_0 ,\badr[15]_INST_0_i_8_n_0 ,\badr[15]_INST_0_i_9_n_0 ,\badr[15]_INST_0_i_10_n_0 }),
        .\badr[19] ({\badr[19]_INST_0_i_7_n_0 ,\badr[19]_INST_0_i_8_n_0 ,\badr[19]_INST_0_i_9_n_0 ,\badr[19]_INST_0_i_10_n_0 }),
        .\badr[23] ({\badr[23]_INST_0_i_7_n_0 ,\badr[23]_INST_0_i_8_n_0 ,\badr[23]_INST_0_i_9_n_0 ,\badr[23]_INST_0_i_10_n_0 }),
        .\badr[3]_INST_0_i_2_0 (neg_brdy1),
        .\badr[3]_INST_0_i_2_1 (badr1_c[1]),
        .\badr[7] ({\badr[7]_INST_0_i_7_n_0 ,\badr[7]_INST_0_i_8_n_0 ,\badr[7]_INST_0_i_9_n_0 ,\badr[7]_INST_0_i_10_n_0 }),
        .bcmd1(bcmd1[3]),
        .bcs_acc_l1(bcs_acc_l1),
        .bdatr(bdatr[31:16]),
        .bdatr1(bdatr1),
        .\bdatr1[31] (\bdatw2_c_reg[0]_0 ),
        .bdatw1(bdatw1[15:0]),
        .\bdatw[0] (\bdatw[16]_INST_0_i_2_n_0 ),
        .\bdatw[10] (\bdatw[26]_INST_0_i_2_n_0 ),
        .\bdatw[11] (\bdatw[27]_INST_0_i_2_n_0 ),
        .\bdatw[12] (\bdatw[28]_INST_0_i_2_n_0 ),
        .\bdatw[13] (\bdatw[29]_INST_0_i_2_n_0 ),
        .\bdatw[14] (\bdatw[30]_INST_0_i_2_n_0 ),
        .\bdatw[15] (\bdatw[31]_INST_0_i_2_n_0 ),
        .\bdatw[15]_INST_0_i_3_0 (datwl1),
        .\bdatw[15]_INST_0_i_3_1 (bdatw1_c[15:0]),
        .\bdatw[1] (\bdatw[17]_INST_0_i_2_n_0 ),
        .\bdatw[2] (\bdatw[18]_INST_0_i_2_n_0 ),
        .\bdatw[3] (\bdatw[19]_INST_0_i_2_n_0 ),
        .\bdatw[4] (\bdatw[20]_INST_0_i_2_n_0 ),
        .\bdatw[5] (\bdatw[21]_INST_0_i_2_n_0 ),
        .\bdatw[6] (\bdatw[22]_INST_0_i_2_n_0 ),
        .\bdatw[7] (\bdatw[23]_INST_0_i_2_n_0 ),
        .\bdatw[8] (\bdatw[24]_INST_0_i_2_n_0 ),
        .\bdatw[9] (\bdatw[25]_INST_0_i_2_n_0 ),
        .clk(clk),
        .neg_brdy10(neg_brdy10),
        .neg_brdy1_reg(bmst_INST_0_i_1_n_0),
        .neg_brdy1_reg_0(last_sel_reg_0),
        .p_1_in__0(p_1_in__0),
        .rst_n(rst_n),
        .\stat_reg[0]_0 (blng1_n_25),
        .\stat_reg[0]_1 (blng1_n_26),
        .\stat_reg[0]_10 (blng1_n_35),
        .\stat_reg[0]_11 (blng1_n_36),
        .\stat_reg[0]_12 (blng1_n_37),
        .\stat_reg[0]_13 (blng1_n_38),
        .\stat_reg[0]_14 (blng1_n_39),
        .\stat_reg[0]_15 (blng1_n_40),
        .\stat_reg[0]_2 (blng1_n_27),
        .\stat_reg[0]_3 (blng1_n_28),
        .\stat_reg[0]_4 (blng1_n_29),
        .\stat_reg[0]_5 (blng1_n_30),
        .\stat_reg[0]_6 (blng1_n_31),
        .\stat_reg[0]_7 (blng1_n_32),
        .\stat_reg[0]_8 (blng1_n_33),
        .\stat_reg[0]_9 (blng1_n_34),
        .\stat_reg[1]_0 (blng1_n_24),
        .\stat_reg[1]_1 (bacp_lat_datrh1));
  busc_long_fsm_0 blng2
       (.Q(p_1_in),
        .S({\badr[3]_INST_0_i_4_n_0 ,\badr[3]_INST_0_i_5_n_0 ,\badr[3]_INST_0_i_7_n_0 }),
        .SR(SR),
        .bacp_drv_datwh2(bacp_drv_datwh2),
        .badr(badr),
        .badr2(badr2[1]),
        .\badr[11] ({\badr[11]_INST_0_i_3_n_0 ,\badr[11]_INST_0_i_4_n_0 ,\badr[11]_INST_0_i_5_n_0 ,\badr[11]_INST_0_i_6_n_0 }),
        .\badr[15] ({\badr[15]_INST_0_i_3_n_0 ,\badr[15]_INST_0_i_4_n_0 ,\badr[15]_INST_0_i_5_n_0 ,\badr[15]_INST_0_i_6_n_0 }),
        .\badr[19] ({\badr[19]_INST_0_i_3_n_0 ,\badr[19]_INST_0_i_4_n_0 ,\badr[19]_INST_0_i_5_n_0 ,\badr[19]_INST_0_i_6_n_0 }),
        .\badr[23] ({\badr[23]_INST_0_i_3_n_0 ,\badr[23]_INST_0_i_4_n_0 ,\badr[23]_INST_0_i_5_n_0 ,\badr[23]_INST_0_i_6_n_0 }),
        .\badr[3]_INST_0_i_1_0 (badr2_c[1]),
        .\badr[7] ({\badr[7]_INST_0_i_3_n_0 ,\badr[7]_INST_0_i_4_n_0 ,\badr[7]_INST_0_i_5_n_0 ,\badr[7]_INST_0_i_6_n_0 }),
        .badr_0_sp_1(last_sel_reg_0),
        .bcmd(bcmd[3]),
        .bcmd2(bcmd2[3]),
        .\bcmd[3] (\bcmd[3]_INST_0_i_1_n_0 ),
        .\bcmd[3]_0 (\bcmd[3]_INST_0_i_3_n_0 ),
        .bcs_acc_l2(bcs_acc_l2),
        .bdatr(bdatr[31:16]),
        .bdatr2(bdatr2),
        .\bdatr2[31] (\bdatw2_c_reg[0]_0 ),
        .bdatw(bdatw),
        .bdatw2(bdatw2[15:0]),
        .\bdatw[0]_0 (neg_brdy2),
        .\bdatw[15]_0 (datwl2),
        .\bdatw[15]_1 (bdatw2_c[15:0]),
        .\bdatw[16]_0 (\bdatw[16]_INST_0_i_2_n_0 ),
        .\bdatw[16]_1 (blng1_n_24),
        .\bdatw[17]_0 (\bdatw[17]_INST_0_i_2_n_0 ),
        .\bdatw[18]_0 (\bdatw[18]_INST_0_i_2_n_0 ),
        .\bdatw[19]_0 (\bdatw[19]_INST_0_i_2_n_0 ),
        .\bdatw[20]_0 (\bdatw[20]_INST_0_i_2_n_0 ),
        .\bdatw[21]_0 (\bdatw[21]_INST_0_i_2_n_0 ),
        .\bdatw[22]_0 (\bdatw[22]_INST_0_i_2_n_0 ),
        .\bdatw[23]_0 (\bdatw[23]_INST_0_i_2_n_0 ),
        .\bdatw[24]_0 (\bdatw[24]_INST_0_i_2_n_0 ),
        .\bdatw[25]_0 (\bdatw[25]_INST_0_i_2_n_0 ),
        .\bdatw[26]_0 (\bdatw[26]_INST_0_i_2_n_0 ),
        .\bdatw[27]_0 (\bdatw[27]_INST_0_i_2_n_0 ),
        .\bdatw[28]_0 (\bdatw[28]_INST_0_i_2_n_0 ),
        .\bdatw[29]_0 (\bdatw[29]_INST_0_i_2_n_0 ),
        .\bdatw[30]_0 (\bdatw[30]_INST_0_i_2_n_0 ),
        .\bdatw[31]_0 (\bdatw[31]_INST_0_i_2_n_0 ),
        .bdatw_0_sp_1(blng1_n_40),
        .bdatw_10_sp_1(blng1_n_30),
        .bdatw_11_sp_1(blng1_n_29),
        .bdatw_12_sp_1(blng1_n_28),
        .bdatw_13_sp_1(blng1_n_27),
        .bdatw_14_sp_1(blng1_n_26),
        .bdatw_15_sp_1(blng1_n_25),
        .bdatw_16_sp_1(\bdatw[16]_INST_0_i_1_n_0 ),
        .bdatw_17_sp_1(\bdatw[17]_INST_0_i_1_n_0 ),
        .bdatw_18_sp_1(\bdatw[18]_INST_0_i_1_n_0 ),
        .bdatw_19_sp_1(\bdatw[19]_INST_0_i_1_n_0 ),
        .bdatw_1_sp_1(blng1_n_39),
        .bdatw_20_sp_1(\bdatw[20]_INST_0_i_1_n_0 ),
        .bdatw_21_sp_1(\bdatw[21]_INST_0_i_1_n_0 ),
        .bdatw_22_sp_1(\bdatw[22]_INST_0_i_1_n_0 ),
        .bdatw_23_sp_1(\bdatw[23]_INST_0_i_1_n_0 ),
        .bdatw_24_sp_1(\bdatw[24]_INST_0_i_1_n_0 ),
        .bdatw_25_sp_1(\bdatw[25]_INST_0_i_1_n_0 ),
        .bdatw_26_sp_1(\bdatw[26]_INST_0_i_1_n_0 ),
        .bdatw_27_sp_1(\bdatw[27]_INST_0_i_1_n_0 ),
        .bdatw_28_sp_1(\bdatw[28]_INST_0_i_1_n_0 ),
        .bdatw_29_sp_1(\bdatw[29]_INST_0_i_1_n_0 ),
        .bdatw_2_sp_1(blng1_n_38),
        .bdatw_30_sp_1(\bdatw[30]_INST_0_i_1_n_0 ),
        .bdatw_31_sp_1(\bdatw[31]_INST_0_i_1_n_0 ),
        .bdatw_3_sp_1(blng1_n_37),
        .bdatw_4_sp_1(blng1_n_36),
        .bdatw_5_sp_1(blng1_n_35),
        .bdatw_6_sp_1(blng1_n_34),
        .bdatw_7_sp_1(blng1_n_33),
        .bdatw_8_sp_1(blng1_n_32),
        .bdatw_9_sp_1(blng1_n_31),
        .clk(clk),
        .neg_brdy20(neg_brdy20),
        .neg_brdy2_reg(neg_brdy2_i_2_n_0),
        .p_1_in__0(p_1_in__0));
  LUT3 #(
    .INIT(8'hB8)) 
    bmst_INST_0
       (.I0(bmst_INST_0_i_1_n_0),
        .I1(last_sel_reg_n_0),
        .I2(bmst_INST_0_i_2_n_0),
        .O(last_sel_reg_0));
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    bmst_INST_0_i_1
       (.I0(bcmd1[1]),
        .I1(bcmd1_c[1]),
        .I2(bcmd1[0]),
        .I3(neg_brdy1),
        .I4(bcmd1_c[0]),
        .O(bmst_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    bmst_INST_0_i_2
       (.I0(bcmd2[1]),
        .I1(bcmd2_c[1]),
        .I2(bcmd2[0]),
        .I3(neg_brdy2),
        .I4(bcmd2_c[0]),
        .O(bmst_INST_0_i_2_n_0));
  FDRE \datrh_reg[0] 
       (.C(clk),
        .CE(bacp_lat_datrh1),
        .D(bdatr[0]),
        .Q(p_1_in[16]),
        .R(SR));
  FDRE \datrh_reg[10] 
       (.C(clk),
        .CE(bacp_lat_datrh1),
        .D(bdatr[10]),
        .Q(p_1_in[26]),
        .R(SR));
  FDRE \datrh_reg[11] 
       (.C(clk),
        .CE(bacp_lat_datrh1),
        .D(bdatr[11]),
        .Q(p_1_in[27]),
        .R(SR));
  FDRE \datrh_reg[12] 
       (.C(clk),
        .CE(bacp_lat_datrh1),
        .D(bdatr[12]),
        .Q(p_1_in[28]),
        .R(SR));
  FDRE \datrh_reg[13] 
       (.C(clk),
        .CE(bacp_lat_datrh1),
        .D(bdatr[13]),
        .Q(p_1_in[29]),
        .R(SR));
  FDRE \datrh_reg[14] 
       (.C(clk),
        .CE(bacp_lat_datrh1),
        .D(bdatr[14]),
        .Q(p_1_in[30]),
        .R(SR));
  FDRE \datrh_reg[15] 
       (.C(clk),
        .CE(bacp_lat_datrh1),
        .D(bdatr[15]),
        .Q(p_1_in[31]),
        .R(SR));
  FDRE \datrh_reg[1] 
       (.C(clk),
        .CE(bacp_lat_datrh1),
        .D(bdatr[1]),
        .Q(p_1_in[17]),
        .R(SR));
  FDRE \datrh_reg[2] 
       (.C(clk),
        .CE(bacp_lat_datrh1),
        .D(bdatr[2]),
        .Q(p_1_in[18]),
        .R(SR));
  FDRE \datrh_reg[3] 
       (.C(clk),
        .CE(bacp_lat_datrh1),
        .D(bdatr[3]),
        .Q(p_1_in[19]),
        .R(SR));
  FDRE \datrh_reg[4] 
       (.C(clk),
        .CE(bacp_lat_datrh1),
        .D(bdatr[4]),
        .Q(p_1_in[20]),
        .R(SR));
  FDRE \datrh_reg[5] 
       (.C(clk),
        .CE(bacp_lat_datrh1),
        .D(bdatr[5]),
        .Q(p_1_in[21]),
        .R(SR));
  FDRE \datrh_reg[6] 
       (.C(clk),
        .CE(bacp_lat_datrh1),
        .D(bdatr[6]),
        .Q(p_1_in[22]),
        .R(SR));
  FDRE \datrh_reg[7] 
       (.C(clk),
        .CE(bacp_lat_datrh1),
        .D(bdatr[7]),
        .Q(p_1_in[23]),
        .R(SR));
  FDRE \datrh_reg[8] 
       (.C(clk),
        .CE(bacp_lat_datrh1),
        .D(bdatr[8]),
        .Q(p_1_in[24]),
        .R(SR));
  FDRE \datrh_reg[9] 
       (.C(clk),
        .CE(bacp_lat_datrh1),
        .D(bdatr[9]),
        .Q(p_1_in[25]),
        .R(SR));
  FDRE \datwl1_reg[0] 
       (.C(clk),
        .CE(bacp_drv_datwh1),
        .D(bdatw1[0]),
        .Q(datwl1[0]),
        .R(SR));
  FDRE \datwl1_reg[10] 
       (.C(clk),
        .CE(bacp_drv_datwh1),
        .D(bdatw1[10]),
        .Q(datwl1[10]),
        .R(SR));
  FDRE \datwl1_reg[11] 
       (.C(clk),
        .CE(bacp_drv_datwh1),
        .D(bdatw1[11]),
        .Q(datwl1[11]),
        .R(SR));
  FDRE \datwl1_reg[12] 
       (.C(clk),
        .CE(bacp_drv_datwh1),
        .D(bdatw1[12]),
        .Q(datwl1[12]),
        .R(SR));
  FDRE \datwl1_reg[13] 
       (.C(clk),
        .CE(bacp_drv_datwh1),
        .D(bdatw1[13]),
        .Q(datwl1[13]),
        .R(SR));
  FDRE \datwl1_reg[14] 
       (.C(clk),
        .CE(bacp_drv_datwh1),
        .D(bdatw1[14]),
        .Q(datwl1[14]),
        .R(SR));
  FDRE \datwl1_reg[15] 
       (.C(clk),
        .CE(bacp_drv_datwh1),
        .D(bdatw1[15]),
        .Q(datwl1[15]),
        .R(SR));
  FDRE \datwl1_reg[1] 
       (.C(clk),
        .CE(bacp_drv_datwh1),
        .D(bdatw1[1]),
        .Q(datwl1[1]),
        .R(SR));
  FDRE \datwl1_reg[2] 
       (.C(clk),
        .CE(bacp_drv_datwh1),
        .D(bdatw1[2]),
        .Q(datwl1[2]),
        .R(SR));
  FDRE \datwl1_reg[3] 
       (.C(clk),
        .CE(bacp_drv_datwh1),
        .D(bdatw1[3]),
        .Q(datwl1[3]),
        .R(SR));
  FDRE \datwl1_reg[4] 
       (.C(clk),
        .CE(bacp_drv_datwh1),
        .D(bdatw1[4]),
        .Q(datwl1[4]),
        .R(SR));
  FDRE \datwl1_reg[5] 
       (.C(clk),
        .CE(bacp_drv_datwh1),
        .D(bdatw1[5]),
        .Q(datwl1[5]),
        .R(SR));
  FDRE \datwl1_reg[6] 
       (.C(clk),
        .CE(bacp_drv_datwh1),
        .D(bdatw1[6]),
        .Q(datwl1[6]),
        .R(SR));
  FDRE \datwl1_reg[7] 
       (.C(clk),
        .CE(bacp_drv_datwh1),
        .D(bdatw1[7]),
        .Q(datwl1[7]),
        .R(SR));
  FDRE \datwl1_reg[8] 
       (.C(clk),
        .CE(bacp_drv_datwh1),
        .D(bdatw1[8]),
        .Q(datwl1[8]),
        .R(SR));
  FDRE \datwl1_reg[9] 
       (.C(clk),
        .CE(bacp_drv_datwh1),
        .D(bdatw1[9]),
        .Q(datwl1[9]),
        .R(SR));
  FDRE \datwl2_reg[0] 
       (.C(clk),
        .CE(bacp_drv_datwh2),
        .D(bdatw2[0]),
        .Q(datwl2[0]),
        .R(SR));
  FDRE \datwl2_reg[10] 
       (.C(clk),
        .CE(bacp_drv_datwh2),
        .D(bdatw2[10]),
        .Q(datwl2[10]),
        .R(SR));
  FDRE \datwl2_reg[11] 
       (.C(clk),
        .CE(bacp_drv_datwh2),
        .D(bdatw2[11]),
        .Q(datwl2[11]),
        .R(SR));
  FDRE \datwl2_reg[12] 
       (.C(clk),
        .CE(bacp_drv_datwh2),
        .D(bdatw2[12]),
        .Q(datwl2[12]),
        .R(SR));
  FDRE \datwl2_reg[13] 
       (.C(clk),
        .CE(bacp_drv_datwh2),
        .D(bdatw2[13]),
        .Q(datwl2[13]),
        .R(SR));
  FDRE \datwl2_reg[14] 
       (.C(clk),
        .CE(bacp_drv_datwh2),
        .D(bdatw2[14]),
        .Q(datwl2[14]),
        .R(SR));
  FDRE \datwl2_reg[15] 
       (.C(clk),
        .CE(bacp_drv_datwh2),
        .D(bdatw2[15]),
        .Q(datwl2[15]),
        .R(SR));
  FDRE \datwl2_reg[1] 
       (.C(clk),
        .CE(bacp_drv_datwh2),
        .D(bdatw2[1]),
        .Q(datwl2[1]),
        .R(SR));
  FDRE \datwl2_reg[2] 
       (.C(clk),
        .CE(bacp_drv_datwh2),
        .D(bdatw2[2]),
        .Q(datwl2[2]),
        .R(SR));
  FDRE \datwl2_reg[3] 
       (.C(clk),
        .CE(bacp_drv_datwh2),
        .D(bdatw2[3]),
        .Q(datwl2[3]),
        .R(SR));
  FDRE \datwl2_reg[4] 
       (.C(clk),
        .CE(bacp_drv_datwh2),
        .D(bdatw2[4]),
        .Q(datwl2[4]),
        .R(SR));
  FDRE \datwl2_reg[5] 
       (.C(clk),
        .CE(bacp_drv_datwh2),
        .D(bdatw2[5]),
        .Q(datwl2[5]),
        .R(SR));
  FDRE \datwl2_reg[6] 
       (.C(clk),
        .CE(bacp_drv_datwh2),
        .D(bdatw2[6]),
        .Q(datwl2[6]),
        .R(SR));
  FDRE \datwl2_reg[7] 
       (.C(clk),
        .CE(bacp_drv_datwh2),
        .D(bdatw2[7]),
        .Q(datwl2[7]),
        .R(SR));
  FDRE \datwl2_reg[8] 
       (.C(clk),
        .CE(bacp_drv_datwh2),
        .D(bdatw2[8]),
        .Q(datwl2[8]),
        .R(SR));
  FDRE \datwl2_reg[9] 
       (.C(clk),
        .CE(bacp_drv_datwh2),
        .D(bdatw2[9]),
        .Q(datwl2[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hAA228080)) 
    last_sel_i_1
       (.I0(rst_n),
        .I1(\bdatw2_c_reg[0]_0 ),
        .I2(bmst_INST_0_i_2_n_0),
        .I3(bmst_INST_0_i_1_n_0),
        .I4(last_sel_reg_n_0),
        .O(last_sel_i_1_n_0));
  FDRE last_sel_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(last_sel_i_1_n_0),
        .Q(last_sel_reg_n_0),
        .R(\<const0> ));
  FDRE neg_brdy1_reg
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(neg_brdy10),
        .Q(neg_brdy1),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000478B74B8)) 
    neg_brdy2_i_2
       (.I0(bcmd2_c[0]),
        .I1(neg_brdy2),
        .I2(bcmd2[0]),
        .I3(bcmd2_c[1]),
        .I4(bcmd2[1]),
        .I5(neg_brdy2_i_3_n_0),
        .O(neg_brdy2_i_2_n_0));
  LUT6 #(
    .INIT(64'hB8748B47FFFFFFFF)) 
    neg_brdy2_i_3
       (.I0(bcmd1_c[0]),
        .I1(neg_brdy1),
        .I2(bcmd1[0]),
        .I3(bcmd1_c[1]),
        .I4(bcmd1[1]),
        .I5(last_sel_reg_n_0),
        .O(neg_brdy2_i_3_n_0));
  FDRE neg_brdy2_reg
       (.C(clk),
        .CE(\bdatw2_c_reg[0]_0 ),
        .D(neg_brdy20),
        .Q(neg_brdy2),
        .R(SR));
  LUT4 #(
    .INIT(16'hF66F)) 
    \stat[2]_i_4 
       (.I0(\bcmd[0]_INST_0_i_1_n_0 ),
        .I1(\bcmd[1]_INST_0_i_1_n_0 ),
        .I2(\bcmd[0]_INST_0_i_2_n_0 ),
        .I3(\bcmd[1]_INST_0_i_2_n_0 ),
        .O(\bcmd2_c_reg[0]_0 ));
endmodule

module busc_fsm
   (brdy1,
    sdc_brdy_0,
    brdy2,
    sdc_brdy_1,
    SR,
    brdy_t,
    clk,
    neg_brdy1,
    neg_brdy2,
    sdc_brdy,
    bcs_acc_2,
    \stat_reg[1]_0 ,
    bcs_sdram_n,
    bcmd,
    cch_hit);
  output brdy1;
  output sdc_brdy_0;
  output brdy2;
  output sdc_brdy_1;
  input [0:0]SR;
  input brdy_t;
  input clk;
  input neg_brdy1;
  input neg_brdy2;
  input sdc_brdy;
  input bcs_acc_2;
  input \stat_reg[1]_0 ;
  input bcs_sdram_n;
  input [1:0]bcmd;
  input cch_hit;

  wire \<const1> ;
  wire [0:0]SR;
  wire [1:0]bcmd;
  wire bcs_acc_2;
  wire bcs_sdram_n;
  wire bctl_brdy;
  wire brdy1;
  wire brdy2;
  wire brdy_t;
  wire cch_hit;
  wire clk;
  wire neg_brdy1;
  wire neg_brdy2;
  wire sdc_brdy;
  wire sdc_brdy_0;
  wire sdc_brdy_1;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[2]_i_3_n_0 ;
  wire \stat[2]_i_5_n_0 ;
  wire [2:0]stat_nx;
  wire \stat_reg[1]_0 ;
  wire \stat_reg_n_0_[0] ;
  wire \stat_reg_n_0_[1] ;
  wire \stat_reg_n_0_[2] ;

  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h20F3)) 
    bctl_brdy_i_2
       (.I0(sdc_brdy),
        .I1(\stat_reg_n_0_[1] ),
        .I2(\stat_reg_n_0_[0] ),
        .I3(\stat_reg_n_0_[2] ),
        .O(sdc_brdy_1));
  FDSE bctl_brdy_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(brdy_t),
        .Q(bctl_brdy),
        .S(SR));
  LUT2 #(
    .INIT(4'h2)) 
    brdy1_INST_0
       (.I0(sdc_brdy_0),
        .I1(neg_brdy1),
        .O(brdy1));
  LUT2 #(
    .INIT(4'h2)) 
    brdy2_INST_0
       (.I0(sdc_brdy_0),
        .I1(neg_brdy2),
        .O(brdy2));
  LUT2 #(
    .INIT(4'h8)) 
    brdy_INST_0
       (.I0(sdc_brdy),
        .I1(bctl_brdy),
        .O(sdc_brdy_0));
  LUT5 #(
    .INIT(32'h0000AABA)) 
    \stat[0]_i_1__1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(bcmd[1]),
        .I2(bcmd[0]),
        .I3(\stat[2]_i_3_n_0 ),
        .I4(\stat[0]_i_3_n_0 ),
        .O(stat_nx[0]));
  LUT4 #(
    .INIT(16'h0434)) 
    \stat[0]_i_2 
       (.I0(sdc_brdy),
        .I1(\stat_reg_n_0_[2] ),
        .I2(\stat_reg_n_0_[1] ),
        .I3(\stat_reg_n_0_[0] ),
        .O(\stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000D0D000D)) 
    \stat[0]_i_3 
       (.I0(\stat_reg_n_0_[1] ),
        .I1(\stat_reg_n_0_[0] ),
        .I2(bcs_sdram_n),
        .I3(\stat_reg_n_0_[2] ),
        .I4(sdc_brdy),
        .I5(cch_hit),
        .O(\stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00A080A000FF00A0)) 
    \stat[1]_i_1__1 
       (.I0(bcs_acc_2),
        .I1(sdc_brdy),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg_n_0_[2] ),
        .I4(\stat_reg_n_0_[1] ),
        .I5(\stat_reg_n_0_[0] ),
        .O(stat_nx[1]));
  LUT6 #(
    .INIT(64'h0400FFFF04000500)) 
    \stat[2]_i_2 
       (.I0(\stat[2]_i_3_n_0 ),
        .I1(\stat_reg_n_0_[0] ),
        .I2(bcs_sdram_n),
        .I3(\stat_reg[1]_0 ),
        .I4(\stat_reg_n_0_[1] ),
        .I5(\stat[2]_i_5_n_0 ),
        .O(stat_nx[2]));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \stat[2]_i_3 
       (.I0(bcs_acc_2),
        .I1(\stat_reg_n_0_[0] ),
        .I2(\stat_reg_n_0_[1] ),
        .I3(\stat_reg_n_0_[2] ),
        .O(\stat[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[2]_i_5 
       (.I0(\stat_reg_n_0_[2] ),
        .I1(sdc_brdy),
        .O(\stat[2]_i_5_n_0 ));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[0]),
        .Q(\stat_reg_n_0_[0] ),
        .R(SR));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[1]),
        .Q(\stat_reg_n_0_[1] ),
        .R(SR));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[2]),
        .Q(\stat_reg_n_0_[2] ),
        .R(SR));
endmodule

module busc_long_fsm
   (p_1_in__0,
    \stat_reg[1]_0 ,
    \stat_reg[0]_0 ,
    \stat_reg[0]_1 ,
    \stat_reg[0]_2 ,
    \stat_reg[0]_3 ,
    \stat_reg[0]_4 ,
    \stat_reg[0]_5 ,
    \stat_reg[0]_6 ,
    \stat_reg[0]_7 ,
    \stat_reg[0]_8 ,
    \stat_reg[0]_9 ,
    \stat_reg[0]_10 ,
    \stat_reg[0]_11 ,
    \stat_reg[0]_12 ,
    \stat_reg[0]_13 ,
    \stat_reg[0]_14 ,
    \stat_reg[0]_15 ,
    E,
    \stat_reg[1]_1 ,
    bdatr1,
    SR,
    neg_brdy10,
    S,
    \badr[7] ,
    \badr[11] ,
    \badr[15] ,
    \badr[19] ,
    \badr[23] ,
    bcs_acc_l1,
    badr1,
    \bdatr1[31] ,
    bcmd1,
    \bdatw[15] ,
    \bdatw[14] ,
    \bdatw[13] ,
    \bdatw[12] ,
    \bdatw[11] ,
    \bdatw[10] ,
    \bdatw[9] ,
    \bdatw[8] ,
    \bdatw[7] ,
    \bdatw[6] ,
    \bdatw[5] ,
    \bdatw[4] ,
    \bdatw[3] ,
    \bdatw[2] ,
    \bdatw[1] ,
    \bdatw[0] ,
    bdatr,
    Q,
    \bdatw[15]_INST_0_i_3_0 ,
    \bdatw[15]_INST_0_i_3_1 ,
    \badr[3]_INST_0_i_2_0 ,
    bdatw1,
    rst_n,
    neg_brdy1_reg,
    neg_brdy1_reg_0,
    \badr[3]_INST_0_i_2_1 ,
    clk);
  output [23:0]p_1_in__0;
  output \stat_reg[1]_0 ;
  output \stat_reg[0]_0 ;
  output \stat_reg[0]_1 ;
  output \stat_reg[0]_2 ;
  output \stat_reg[0]_3 ;
  output \stat_reg[0]_4 ;
  output \stat_reg[0]_5 ;
  output \stat_reg[0]_6 ;
  output \stat_reg[0]_7 ;
  output \stat_reg[0]_8 ;
  output \stat_reg[0]_9 ;
  output \stat_reg[0]_10 ;
  output \stat_reg[0]_11 ;
  output \stat_reg[0]_12 ;
  output \stat_reg[0]_13 ;
  output \stat_reg[0]_14 ;
  output \stat_reg[0]_15 ;
  output [0:0]E;
  output [0:0]\stat_reg[1]_1 ;
  output [15:0]bdatr1;
  output [0:0]SR;
  output neg_brdy10;
  input [2:0]S;
  input [3:0]\badr[7] ;
  input [3:0]\badr[11] ;
  input [3:0]\badr[15] ;
  input [3:0]\badr[19] ;
  input [3:0]\badr[23] ;
  input bcs_acc_l1;
  input [0:0]badr1;
  input \bdatr1[31] ;
  input [0:0]bcmd1;
  input \bdatw[15] ;
  input \bdatw[14] ;
  input \bdatw[13] ;
  input \bdatw[12] ;
  input \bdatw[11] ;
  input \bdatw[10] ;
  input \bdatw[9] ;
  input \bdatw[8] ;
  input \bdatw[7] ;
  input \bdatw[6] ;
  input \bdatw[5] ;
  input \bdatw[4] ;
  input \bdatw[3] ;
  input \bdatw[2] ;
  input \bdatw[1] ;
  input \bdatw[0] ;
  input [15:0]bdatr;
  input [15:0]Q;
  input [15:0]\bdatw[15]_INST_0_i_3_0 ;
  input [15:0]\bdatw[15]_INST_0_i_3_1 ;
  input \badr[3]_INST_0_i_2_0 ;
  input [15:0]bdatw1;
  input rst_n;
  input neg_brdy1_reg;
  input neg_brdy1_reg_0;
  input [0:0]\badr[3]_INST_0_i_2_1 ;
  input clk;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]E;
  wire [15:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire bacp_drv_datwl1;
  wire [0:0]badr1;
  wire [3:0]\badr[11] ;
  wire \badr[11]_INST_0_i_2_n_0 ;
  wire \badr[11]_INST_0_i_2_n_1 ;
  wire \badr[11]_INST_0_i_2_n_2 ;
  wire \badr[11]_INST_0_i_2_n_3 ;
  wire [3:0]\badr[15] ;
  wire \badr[15]_INST_0_i_2_n_0 ;
  wire \badr[15]_INST_0_i_2_n_1 ;
  wire \badr[15]_INST_0_i_2_n_2 ;
  wire \badr[15]_INST_0_i_2_n_3 ;
  wire [3:0]\badr[19] ;
  wire \badr[19]_INST_0_i_2_n_0 ;
  wire \badr[19]_INST_0_i_2_n_1 ;
  wire \badr[19]_INST_0_i_2_n_2 ;
  wire \badr[19]_INST_0_i_2_n_3 ;
  wire [3:0]\badr[23] ;
  wire \badr[23]_INST_0_i_2_n_1 ;
  wire \badr[23]_INST_0_i_2_n_2 ;
  wire \badr[23]_INST_0_i_2_n_3 ;
  wire \badr[3]_INST_0_i_11_n_0 ;
  wire \badr[3]_INST_0_i_2_0 ;
  wire [0:0]\badr[3]_INST_0_i_2_1 ;
  wire \badr[3]_INST_0_i_2_n_0 ;
  wire \badr[3]_INST_0_i_2_n_1 ;
  wire \badr[3]_INST_0_i_2_n_2 ;
  wire \badr[3]_INST_0_i_2_n_3 ;
  wire [3:0]\badr[7] ;
  wire \badr[7]_INST_0_i_2_n_0 ;
  wire \badr[7]_INST_0_i_2_n_1 ;
  wire \badr[7]_INST_0_i_2_n_2 ;
  wire \badr[7]_INST_0_i_2_n_3 ;
  wire [0:0]bcmd1;
  wire bcs_acc_l1;
  wire [15:0]bdatr;
  wire [15:0]bdatr1;
  wire \bdatr1[31] ;
  wire [15:0]bdatw1;
  wire \bdatw[0] ;
  wire \bdatw[0]_INST_0_i_3_n_0 ;
  wire \bdatw[10] ;
  wire \bdatw[10]_INST_0_i_3_n_0 ;
  wire \bdatw[11] ;
  wire \bdatw[11]_INST_0_i_3_n_0 ;
  wire \bdatw[12] ;
  wire \bdatw[12]_INST_0_i_3_n_0 ;
  wire \bdatw[13] ;
  wire \bdatw[13]_INST_0_i_3_n_0 ;
  wire \bdatw[14] ;
  wire \bdatw[14]_INST_0_i_3_n_0 ;
  wire \bdatw[15] ;
  wire [15:0]\bdatw[15]_INST_0_i_3_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_3_1 ;
  wire \bdatw[15]_INST_0_i_4_n_0 ;
  wire \bdatw[15]_INST_0_i_5_n_0 ;
  wire \bdatw[1] ;
  wire \bdatw[1]_INST_0_i_3_n_0 ;
  wire \bdatw[2] ;
  wire \bdatw[2]_INST_0_i_3_n_0 ;
  wire \bdatw[3] ;
  wire \bdatw[3]_INST_0_i_3_n_0 ;
  wire \bdatw[4] ;
  wire \bdatw[4]_INST_0_i_3_n_0 ;
  wire \bdatw[5] ;
  wire \bdatw[5]_INST_0_i_3_n_0 ;
  wire \bdatw[6] ;
  wire \bdatw[6]_INST_0_i_3_n_0 ;
  wire \bdatw[7] ;
  wire \bdatw[7]_INST_0_i_3_n_0 ;
  wire \bdatw[8] ;
  wire \bdatw[8]_INST_0_i_3_n_0 ;
  wire \bdatw[9] ;
  wire \bdatw[9]_INST_0_i_3_n_0 ;
  wire clk;
  wire neg_brdy10;
  wire neg_brdy1_reg;
  wire neg_brdy1_reg_0;
  wire [5:4]p_0_in;
  wire [23:0]p_1_in__0;
  wire rst_n;
  wire [1:0]stat_nx;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[0]_10 ;
  wire \stat_reg[0]_11 ;
  wire \stat_reg[0]_12 ;
  wire \stat_reg[0]_13 ;
  wire \stat_reg[0]_14 ;
  wire \stat_reg[0]_15 ;
  wire \stat_reg[0]_2 ;
  wire \stat_reg[0]_3 ;
  wire \stat_reg[0]_4 ;
  wire \stat_reg[0]_5 ;
  wire \stat_reg[0]_6 ;
  wire \stat_reg[0]_7 ;
  wire \stat_reg[0]_8 ;
  wire \stat_reg[0]_9 ;
  wire \stat_reg[1]_0 ;
  wire [0:0]\stat_reg[1]_1 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[11]_INST_0_i_2 
       (.CI(\badr[7]_INST_0_i_2_n_0 ),
        .CO({\badr[11]_INST_0_i_2_n_0 ,\badr[11]_INST_0_i_2_n_1 ,\badr[11]_INST_0_i_2_n_2 ,\badr[11]_INST_0_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_1_in__0[11:8]),
        .S(\badr[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[15]_INST_0_i_2 
       (.CI(\badr[11]_INST_0_i_2_n_0 ),
        .CO({\badr[15]_INST_0_i_2_n_0 ,\badr[15]_INST_0_i_2_n_1 ,\badr[15]_INST_0_i_2_n_2 ,\badr[15]_INST_0_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_1_in__0[15:12]),
        .S(\badr[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[19]_INST_0_i_2 
       (.CI(\badr[15]_INST_0_i_2_n_0 ),
        .CO({\badr[19]_INST_0_i_2_n_0 ,\badr[19]_INST_0_i_2_n_1 ,\badr[19]_INST_0_i_2_n_2 ,\badr[19]_INST_0_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_1_in__0[19:16]),
        .S(\badr[19] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[23]_INST_0_i_2 
       (.CI(\badr[19]_INST_0_i_2_n_0 ),
        .CO({\badr[23]_INST_0_i_2_n_1 ,\badr[23]_INST_0_i_2_n_2 ,\badr[23]_INST_0_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_1_in__0[23:20]),
        .S(\badr[23] ));
  LUT5 #(
    .INIT(32'hE21DE2E2)) 
    \badr[3]_INST_0_i_11 
       (.I0(badr1),
        .I1(\badr[3]_INST_0_i_2_0 ),
        .I2(\badr[3]_INST_0_i_2_1 ),
        .I3(p_0_in[5]),
        .I4(p_0_in[4]),
        .O(\badr[3]_INST_0_i_11_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[3]_INST_0_i_2 
       (.CI(\<const0> ),
        .CO({\badr[3]_INST_0_i_2_n_0 ,\badr[3]_INST_0_i_2_n_1 ,\badr[3]_INST_0_i_2_n_2 ,\badr[3]_INST_0_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,bacp_drv_datwl1,\<const0> }),
        .O(p_1_in__0[3:0]),
        .S({S[2:1],\badr[3]_INST_0_i_11_n_0 ,S[0]}));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[3]_INST_0_i_8 
       (.I0(p_0_in[4]),
        .I1(p_0_in[5]),
        .O(bacp_drv_datwl1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[7]_INST_0_i_2 
       (.CI(\badr[3]_INST_0_i_2_n_0 ),
        .CO({\badr[7]_INST_0_i_2_n_0 ,\badr[7]_INST_0_i_2_n_1 ,\badr[7]_INST_0_i_2_n_2 ,\badr[7]_INST_0_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_1_in__0[7:4]),
        .S(\badr[7] ));
  LUT6 #(
    .INIT(64'h55555555F3000000)) 
    \bcmd[3]_INST_0_i_4 
       (.I0(p_0_in[5]),
        .I1(bcs_acc_l1),
        .I2(badr1),
        .I3(\bdatr1[31] ),
        .I4(bcmd1),
        .I5(p_0_in[4]),
        .O(\stat_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr1[16]_INST_0 
       (.I0(bdatr[0]),
        .I1(\bdatr1[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[0]),
        .O(bdatr1[0]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr1[17]_INST_0 
       (.I0(bdatr[1]),
        .I1(\bdatr1[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[1]),
        .O(bdatr1[1]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr1[18]_INST_0 
       (.I0(bdatr[2]),
        .I1(\bdatr1[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[2]),
        .O(bdatr1[2]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr1[19]_INST_0 
       (.I0(bdatr[3]),
        .I1(\bdatr1[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[3]),
        .O(bdatr1[3]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr1[20]_INST_0 
       (.I0(bdatr[4]),
        .I1(\bdatr1[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[4]),
        .O(bdatr1[4]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr1[21]_INST_0 
       (.I0(bdatr[5]),
        .I1(\bdatr1[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[5]),
        .O(bdatr1[5]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr1[22]_INST_0 
       (.I0(bdatr[6]),
        .I1(\bdatr1[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[6]),
        .O(bdatr1[6]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr1[23]_INST_0 
       (.I0(bdatr[7]),
        .I1(\bdatr1[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[7]),
        .O(bdatr1[7]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr1[24]_INST_0 
       (.I0(bdatr[8]),
        .I1(\bdatr1[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[8]),
        .O(bdatr1[8]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr1[25]_INST_0 
       (.I0(bdatr[9]),
        .I1(\bdatr1[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[9]),
        .O(bdatr1[9]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr1[26]_INST_0 
       (.I0(bdatr[10]),
        .I1(\bdatr1[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[10]),
        .O(bdatr1[10]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr1[27]_INST_0 
       (.I0(bdatr[11]),
        .I1(\bdatr1[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[11]),
        .O(bdatr1[11]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr1[28]_INST_0 
       (.I0(bdatr[12]),
        .I1(\bdatr1[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[12]),
        .O(bdatr1[12]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr1[29]_INST_0 
       (.I0(bdatr[13]),
        .I1(\bdatr1[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[13]),
        .O(bdatr1[13]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr1[30]_INST_0 
       (.I0(bdatr[14]),
        .I1(\bdatr1[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[14]),
        .O(bdatr1[14]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr1[31]_INST_0 
       (.I0(bdatr[15]),
        .I1(\bdatr1[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[15]),
        .O(bdatr1[15]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \bdatw[0]_INST_0_i_2 
       (.I0(\bdatw[0] ),
        .I1(p_0_in[4]),
        .I2(bcmd1),
        .I3(\bdatr1[31] ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[0]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0]_15 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[0]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_3_0 [0]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_INST_0_i_3_1 [0]),
        .I4(\badr[3]_INST_0_i_2_0 ),
        .I5(bdatw1[0]),
        .O(\bdatw[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \bdatw[10]_INST_0_i_2 
       (.I0(\bdatw[10] ),
        .I1(p_0_in[4]),
        .I2(bcmd1),
        .I3(\bdatr1[31] ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[10]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0]_5 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[10]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_3_0 [10]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_INST_0_i_3_1 [10]),
        .I4(\badr[3]_INST_0_i_2_0 ),
        .I5(bdatw1[10]),
        .O(\bdatw[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \bdatw[11]_INST_0_i_2 
       (.I0(\bdatw[11] ),
        .I1(p_0_in[4]),
        .I2(bcmd1),
        .I3(\bdatr1[31] ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[11]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0]_4 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[11]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_3_0 [11]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_INST_0_i_3_1 [11]),
        .I4(\badr[3]_INST_0_i_2_0 ),
        .I5(bdatw1[11]),
        .O(\bdatw[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \bdatw[12]_INST_0_i_2 
       (.I0(\bdatw[12] ),
        .I1(p_0_in[4]),
        .I2(bcmd1),
        .I3(\bdatr1[31] ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[12]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[12]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_3_0 [12]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_INST_0_i_3_1 [12]),
        .I4(\badr[3]_INST_0_i_2_0 ),
        .I5(bdatw1[12]),
        .O(\bdatw[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \bdatw[13]_INST_0_i_2 
       (.I0(\bdatw[13] ),
        .I1(p_0_in[4]),
        .I2(bcmd1),
        .I3(\bdatr1[31] ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[13]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[13]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_3_0 [13]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_INST_0_i_3_1 [13]),
        .I4(\badr[3]_INST_0_i_2_0 ),
        .I5(bdatw1[13]),
        .O(\bdatw[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \bdatw[14]_INST_0_i_2 
       (.I0(\bdatw[14] ),
        .I1(p_0_in[4]),
        .I2(bcmd1),
        .I3(\bdatr1[31] ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[14]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[14]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_3_0 [14]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_INST_0_i_3_1 [14]),
        .I4(\badr[3]_INST_0_i_2_0 ),
        .I5(bdatw1[14]),
        .O(\bdatw[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \bdatw[15]_INST_0_i_3 
       (.I0(\bdatw[15] ),
        .I1(p_0_in[4]),
        .I2(bcmd1),
        .I3(\bdatr1[31] ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_5_n_0 ),
        .O(\stat_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[15]_INST_0_i_4 
       (.I0(bcs_acc_l1),
        .I1(badr1),
        .O(\bdatw[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[15]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_3_0 [15]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_INST_0_i_3_1 [15]),
        .I4(\badr[3]_INST_0_i_2_0 ),
        .I5(bdatw1[15]),
        .O(\bdatw[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \bdatw[1]_INST_0_i_2 
       (.I0(\bdatw[1] ),
        .I1(p_0_in[4]),
        .I2(bcmd1),
        .I3(\bdatr1[31] ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[1]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0]_14 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[1]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_3_0 [1]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_INST_0_i_3_1 [1]),
        .I4(\badr[3]_INST_0_i_2_0 ),
        .I5(bdatw1[1]),
        .O(\bdatw[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \bdatw[2]_INST_0_i_2 
       (.I0(\bdatw[2] ),
        .I1(p_0_in[4]),
        .I2(bcmd1),
        .I3(\bdatr1[31] ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[2]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0]_13 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[2]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_3_0 [2]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_INST_0_i_3_1 [2]),
        .I4(\badr[3]_INST_0_i_2_0 ),
        .I5(bdatw1[2]),
        .O(\bdatw[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \bdatw[3]_INST_0_i_2 
       (.I0(\bdatw[3] ),
        .I1(p_0_in[4]),
        .I2(bcmd1),
        .I3(\bdatr1[31] ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[3]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0]_12 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[3]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_3_0 [3]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_INST_0_i_3_1 [3]),
        .I4(\badr[3]_INST_0_i_2_0 ),
        .I5(bdatw1[3]),
        .O(\bdatw[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \bdatw[4]_INST_0_i_2 
       (.I0(\bdatw[4] ),
        .I1(p_0_in[4]),
        .I2(bcmd1),
        .I3(\bdatr1[31] ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[4]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0]_11 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[4]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_3_0 [4]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_INST_0_i_3_1 [4]),
        .I4(\badr[3]_INST_0_i_2_0 ),
        .I5(bdatw1[4]),
        .O(\bdatw[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \bdatw[5]_INST_0_i_2 
       (.I0(\bdatw[5] ),
        .I1(p_0_in[4]),
        .I2(bcmd1),
        .I3(\bdatr1[31] ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[5]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0]_10 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[5]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_3_0 [5]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_INST_0_i_3_1 [5]),
        .I4(\badr[3]_INST_0_i_2_0 ),
        .I5(bdatw1[5]),
        .O(\bdatw[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \bdatw[6]_INST_0_i_2 
       (.I0(\bdatw[6] ),
        .I1(p_0_in[4]),
        .I2(bcmd1),
        .I3(\bdatr1[31] ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[6]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0]_9 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[6]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_3_0 [6]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_INST_0_i_3_1 [6]),
        .I4(\badr[3]_INST_0_i_2_0 ),
        .I5(bdatw1[6]),
        .O(\bdatw[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \bdatw[7]_INST_0_i_2 
       (.I0(\bdatw[7] ),
        .I1(p_0_in[4]),
        .I2(bcmd1),
        .I3(\bdatr1[31] ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[7]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0]_8 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[7]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_3_0 [7]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_INST_0_i_3_1 [7]),
        .I4(\badr[3]_INST_0_i_2_0 ),
        .I5(bdatw1[7]),
        .O(\bdatw[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \bdatw[8]_INST_0_i_2 
       (.I0(\bdatw[8] ),
        .I1(p_0_in[4]),
        .I2(bcmd1),
        .I3(\bdatr1[31] ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[8]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0]_7 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[8]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_3_0 [8]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_INST_0_i_3_1 [8]),
        .I4(\badr[3]_INST_0_i_2_0 ),
        .I5(bdatw1[8]),
        .O(\bdatw[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \bdatw[9]_INST_0_i_2 
       (.I0(\bdatw[9] ),
        .I1(p_0_in[4]),
        .I2(bcmd1),
        .I3(\bdatr1[31] ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[9]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0]_6 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[9]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_3_0 [9]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_INST_0_i_3_1 [9]),
        .I4(\badr[3]_INST_0_i_2_0 ),
        .I5(bdatw1[9]),
        .O(\bdatw[9]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \datrh[15]_i_1 
       (.I0(\bdatr1[31] ),
        .I1(p_0_in[5]),
        .I2(p_0_in[4]),
        .O(\stat_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h40004040)) 
    \datwl1[15]_i_1 
       (.I0(p_0_in[4]),
        .I1(bcmd1),
        .I2(\bdatr1[31] ),
        .I3(badr1),
        .I4(bcs_acc_l1),
        .O(E));
  LUT3 #(
    .INIT(8'hF4)) 
    neg_brdy1_i_1
       (.I0(neg_brdy1_reg),
        .I1(neg_brdy1_reg_0),
        .I2(E),
        .O(neg_brdy10));
  LUT6 #(
    .INIT(64'h0000D00000FFD000)) 
    \stat[0]_i_1__0 
       (.I0(bcs_acc_l1),
        .I1(badr1),
        .I2(bcmd1),
        .I3(\bdatr1[31] ),
        .I4(p_0_in[4]),
        .I5(p_0_in[5]),
        .O(stat_nx[0]));
  LUT3 #(
    .INIT(8'h24)) 
    \stat[1]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[5]),
        .I2(\bdatr1[31] ),
        .O(stat_nx[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \stat[2]_i_1 
       (.I0(rst_n),
        .O(SR));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[0]),
        .Q(p_0_in[4]),
        .R(SR));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[1]),
        .Q(p_0_in[5]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "busc_long_fsm" *) 
module busc_long_fsm_0
   (bdatw,
    bcmd,
    bacp_drv_datwh2,
    bdatr2,
    badr,
    neg_brdy20,
    S,
    \badr[7] ,
    \badr[11] ,
    \badr[15] ,
    \badr[19] ,
    \badr[23] ,
    \bdatr2[31] ,
    bcs_acc_l2,
    badr2,
    bcmd2,
    .bdatw_16_sp_1(bdatw_16_sn_1),
    .badr_0_sp_1(badr_0_sn_1),
    \bdatw[16]_0 ,
    \bdatw[16]_1 ,
    .bdatw_17_sp_1(bdatw_17_sn_1),
    \bdatw[17]_0 ,
    .bdatw_18_sp_1(bdatw_18_sn_1),
    \bdatw[18]_0 ,
    .bdatw_19_sp_1(bdatw_19_sn_1),
    \bdatw[19]_0 ,
    .bdatw_20_sp_1(bdatw_20_sn_1),
    \bdatw[20]_0 ,
    .bdatw_21_sp_1(bdatw_21_sn_1),
    \bdatw[21]_0 ,
    .bdatw_22_sp_1(bdatw_22_sn_1),
    \bdatw[22]_0 ,
    .bdatw_23_sp_1(bdatw_23_sn_1),
    \bdatw[23]_0 ,
    .bdatw_24_sp_1(bdatw_24_sn_1),
    \bdatw[24]_0 ,
    .bdatw_25_sp_1(bdatw_25_sn_1),
    \bdatw[25]_0 ,
    .bdatw_26_sp_1(bdatw_26_sn_1),
    \bdatw[26]_0 ,
    .bdatw_27_sp_1(bdatw_27_sn_1),
    \bdatw[27]_0 ,
    .bdatw_28_sp_1(bdatw_28_sn_1),
    \bdatw[28]_0 ,
    .bdatw_29_sp_1(bdatw_29_sn_1),
    \bdatw[29]_0 ,
    .bdatw_30_sp_1(bdatw_30_sn_1),
    \bdatw[30]_0 ,
    .bdatw_31_sp_1(bdatw_31_sn_1),
    \bdatw[31]_0 ,
    \bcmd[3] ,
    \bcmd[3]_0 ,
    .bdatw_15_sp_1(bdatw_15_sn_1),
    .bdatw_14_sp_1(bdatw_14_sn_1),
    .bdatw_13_sp_1(bdatw_13_sn_1),
    .bdatw_12_sp_1(bdatw_12_sn_1),
    .bdatw_11_sp_1(bdatw_11_sn_1),
    .bdatw_10_sp_1(bdatw_10_sn_1),
    .bdatw_9_sp_1(bdatw_9_sn_1),
    .bdatw_8_sp_1(bdatw_8_sn_1),
    .bdatw_7_sp_1(bdatw_7_sn_1),
    .bdatw_6_sp_1(bdatw_6_sn_1),
    .bdatw_5_sp_1(bdatw_5_sn_1),
    .bdatw_4_sp_1(bdatw_4_sn_1),
    .bdatw_3_sp_1(bdatw_3_sn_1),
    .bdatw_2_sp_1(bdatw_2_sn_1),
    .bdatw_1_sp_1(bdatw_1_sn_1),
    .bdatw_0_sp_1(bdatw_0_sn_1),
    bdatr,
    Q,
    p_1_in__0,
    \bdatw[15]_0 ,
    \bdatw[15]_1 ,
    \bdatw[0]_0 ,
    bdatw2,
    neg_brdy2_reg,
    \badr[3]_INST_0_i_1_0 ,
    SR,
    clk);
  output [31:0]bdatw;
  output [0:0]bcmd;
  output bacp_drv_datwh2;
  output [15:0]bdatr2;
  output [23:0]badr;
  output neg_brdy20;
  input [2:0]S;
  input [3:0]\badr[7] ;
  input [3:0]\badr[11] ;
  input [3:0]\badr[15] ;
  input [3:0]\badr[19] ;
  input [3:0]\badr[23] ;
  input \bdatr2[31] ;
  input bcs_acc_l2;
  input [0:0]badr2;
  input [0:0]bcmd2;
  input \bdatw[16]_0 ;
  input \bdatw[16]_1 ;
  input \bdatw[17]_0 ;
  input \bdatw[18]_0 ;
  input \bdatw[19]_0 ;
  input \bdatw[20]_0 ;
  input \bdatw[21]_0 ;
  input \bdatw[22]_0 ;
  input \bdatw[23]_0 ;
  input \bdatw[24]_0 ;
  input \bdatw[25]_0 ;
  input \bdatw[26]_0 ;
  input \bdatw[27]_0 ;
  input \bdatw[28]_0 ;
  input \bdatw[29]_0 ;
  input \bdatw[30]_0 ;
  input \bdatw[31]_0 ;
  input \bcmd[3] ;
  input \bcmd[3]_0 ;
  input [15:0]bdatr;
  input [15:0]Q;
  input [23:0]p_1_in__0;
  input [15:0]\bdatw[15]_0 ;
  input [15:0]\bdatw[15]_1 ;
  input \bdatw[0]_0 ;
  input [15:0]bdatw2;
  input neg_brdy2_reg;
  input [0:0]\badr[3]_INST_0_i_1_0 ;
  input [0:0]SR;
  input clk;
  input bdatw_16_sn_1;
  input badr_0_sn_1;
  input bdatw_17_sn_1;
  input bdatw_18_sn_1;
  input bdatw_19_sn_1;
  input bdatw_20_sn_1;
  input bdatw_21_sn_1;
  input bdatw_22_sn_1;
  input bdatw_23_sn_1;
  input bdatw_24_sn_1;
  input bdatw_25_sn_1;
  input bdatw_26_sn_1;
  input bdatw_27_sn_1;
  input bdatw_28_sn_1;
  input bdatw_29_sn_1;
  input bdatw_30_sn_1;
  input bdatw_31_sn_1;
  input bdatw_15_sn_1;
  input bdatw_14_sn_1;
  input bdatw_13_sn_1;
  input bdatw_12_sn_1;
  input bdatw_11_sn_1;
  input bdatw_10_sn_1;
  input bdatw_9_sn_1;
  input bdatw_8_sn_1;
  input bdatw_7_sn_1;
  input bdatw_6_sn_1;
  input bdatw_5_sn_1;
  input bdatw_4_sn_1;
  input bdatw_3_sn_1;
  input bdatw_2_sn_1;
  input bdatw_1_sn_1;
  input bdatw_0_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire bacp_drv_datwh2;
  wire bacp_drv_datwl2;
  wire [23:0]badr;
  wire [0:0]badr2;
  wire [3:0]\badr[11] ;
  wire \badr[11]_INST_0_i_1_n_0 ;
  wire \badr[11]_INST_0_i_1_n_1 ;
  wire \badr[11]_INST_0_i_1_n_2 ;
  wire \badr[11]_INST_0_i_1_n_3 ;
  wire \badr[11]_INST_0_i_1_n_4 ;
  wire \badr[11]_INST_0_i_1_n_5 ;
  wire \badr[11]_INST_0_i_1_n_6 ;
  wire \badr[11]_INST_0_i_1_n_7 ;
  wire [3:0]\badr[15] ;
  wire \badr[15]_INST_0_i_1_n_0 ;
  wire \badr[15]_INST_0_i_1_n_1 ;
  wire \badr[15]_INST_0_i_1_n_2 ;
  wire \badr[15]_INST_0_i_1_n_3 ;
  wire \badr[15]_INST_0_i_1_n_4 ;
  wire \badr[15]_INST_0_i_1_n_5 ;
  wire \badr[15]_INST_0_i_1_n_6 ;
  wire \badr[15]_INST_0_i_1_n_7 ;
  wire [3:0]\badr[19] ;
  wire \badr[19]_INST_0_i_1_n_0 ;
  wire \badr[19]_INST_0_i_1_n_1 ;
  wire \badr[19]_INST_0_i_1_n_2 ;
  wire \badr[19]_INST_0_i_1_n_3 ;
  wire \badr[19]_INST_0_i_1_n_4 ;
  wire \badr[19]_INST_0_i_1_n_5 ;
  wire \badr[19]_INST_0_i_1_n_6 ;
  wire \badr[19]_INST_0_i_1_n_7 ;
  wire [3:0]\badr[23] ;
  wire \badr[23]_INST_0_i_1_n_1 ;
  wire \badr[23]_INST_0_i_1_n_2 ;
  wire \badr[23]_INST_0_i_1_n_3 ;
  wire \badr[23]_INST_0_i_1_n_4 ;
  wire \badr[23]_INST_0_i_1_n_5 ;
  wire \badr[23]_INST_0_i_1_n_6 ;
  wire \badr[23]_INST_0_i_1_n_7 ;
  wire [0:0]\badr[3]_INST_0_i_1_0 ;
  wire \badr[3]_INST_0_i_1_n_0 ;
  wire \badr[3]_INST_0_i_1_n_1 ;
  wire \badr[3]_INST_0_i_1_n_2 ;
  wire \badr[3]_INST_0_i_1_n_3 ;
  wire \badr[3]_INST_0_i_1_n_4 ;
  wire \badr[3]_INST_0_i_1_n_5 ;
  wire \badr[3]_INST_0_i_1_n_6 ;
  wire \badr[3]_INST_0_i_1_n_7 ;
  wire \badr[3]_INST_0_i_6_n_0 ;
  wire [3:0]\badr[7] ;
  wire \badr[7]_INST_0_i_1_n_0 ;
  wire \badr[7]_INST_0_i_1_n_1 ;
  wire \badr[7]_INST_0_i_1_n_2 ;
  wire \badr[7]_INST_0_i_1_n_3 ;
  wire \badr[7]_INST_0_i_1_n_4 ;
  wire \badr[7]_INST_0_i_1_n_5 ;
  wire \badr[7]_INST_0_i_1_n_6 ;
  wire \badr[7]_INST_0_i_1_n_7 ;
  wire badr_0_sn_1;
  wire [0:0]bcmd;
  wire [0:0]bcmd2;
  wire \bcmd[3] ;
  wire \bcmd[3]_0 ;
  wire \bcmd[3]_INST_0_i_2_n_0 ;
  wire bcs_acc_l2;
  wire [15:0]bdatr;
  wire [15:0]bdatr2;
  wire \bdatr2[31] ;
  wire [31:0]bdatw;
  wire [15:0]bdatw2;
  wire \bdatw[0]_0 ;
  wire \bdatw[0]_INST_0_i_1_n_0 ;
  wire \bdatw[10]_INST_0_i_1_n_0 ;
  wire \bdatw[11]_INST_0_i_1_n_0 ;
  wire \bdatw[12]_INST_0_i_1_n_0 ;
  wire \bdatw[13]_INST_0_i_1_n_0 ;
  wire \bdatw[14]_INST_0_i_1_n_0 ;
  wire [15:0]\bdatw[15]_0 ;
  wire [15:0]\bdatw[15]_1 ;
  wire \bdatw[15]_INST_0_i_2_n_0 ;
  wire \bdatw[16]_0 ;
  wire \bdatw[16]_1 ;
  wire \bdatw[17]_0 ;
  wire \bdatw[18]_0 ;
  wire \bdatw[19]_0 ;
  wire \bdatw[1]_INST_0_i_1_n_0 ;
  wire \bdatw[20]_0 ;
  wire \bdatw[21]_0 ;
  wire \bdatw[22]_0 ;
  wire \bdatw[23]_0 ;
  wire \bdatw[24]_0 ;
  wire \bdatw[25]_0 ;
  wire \bdatw[26]_0 ;
  wire \bdatw[27]_0 ;
  wire \bdatw[28]_0 ;
  wire \bdatw[29]_0 ;
  wire \bdatw[2]_INST_0_i_1_n_0 ;
  wire \bdatw[30]_0 ;
  wire \bdatw[31]_0 ;
  wire \bdatw[3]_INST_0_i_1_n_0 ;
  wire \bdatw[4]_INST_0_i_1_n_0 ;
  wire \bdatw[5]_INST_0_i_1_n_0 ;
  wire \bdatw[6]_INST_0_i_1_n_0 ;
  wire \bdatw[7]_INST_0_i_1_n_0 ;
  wire \bdatw[8]_INST_0_i_1_n_0 ;
  wire \bdatw[9]_INST_0_i_1_n_0 ;
  wire bdatw_0_sn_1;
  wire bdatw_10_sn_1;
  wire bdatw_11_sn_1;
  wire bdatw_12_sn_1;
  wire bdatw_13_sn_1;
  wire bdatw_14_sn_1;
  wire bdatw_15_sn_1;
  wire bdatw_16_sn_1;
  wire bdatw_17_sn_1;
  wire bdatw_18_sn_1;
  wire bdatw_19_sn_1;
  wire bdatw_1_sn_1;
  wire bdatw_20_sn_1;
  wire bdatw_21_sn_1;
  wire bdatw_22_sn_1;
  wire bdatw_23_sn_1;
  wire bdatw_24_sn_1;
  wire bdatw_25_sn_1;
  wire bdatw_26_sn_1;
  wire bdatw_27_sn_1;
  wire bdatw_28_sn_1;
  wire bdatw_29_sn_1;
  wire bdatw_2_sn_1;
  wire bdatw_30_sn_1;
  wire bdatw_31_sn_1;
  wire bdatw_3_sn_1;
  wire bdatw_4_sn_1;
  wire bdatw_5_sn_1;
  wire bdatw_6_sn_1;
  wire bdatw_7_sn_1;
  wire bdatw_8_sn_1;
  wire bdatw_9_sn_1;
  wire clk;
  wire neg_brdy20;
  wire neg_brdy2_reg;
  wire [5:4]p_0_in;
  wire [23:0]p_1_in__0;
  wire [1:0]stat_nx;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[0]_INST_0 
       (.I0(\badr[3]_INST_0_i_1_n_7 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[0]),
        .O(badr[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[10]_INST_0 
       (.I0(\badr[11]_INST_0_i_1_n_5 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[10]),
        .O(badr[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[11]_INST_0 
       (.I0(\badr[11]_INST_0_i_1_n_4 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[11]),
        .O(badr[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[11]_INST_0_i_1 
       (.CI(\badr[7]_INST_0_i_1_n_0 ),
        .CO({\badr[11]_INST_0_i_1_n_0 ,\badr[11]_INST_0_i_1_n_1 ,\badr[11]_INST_0_i_1_n_2 ,\badr[11]_INST_0_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\badr[11]_INST_0_i_1_n_4 ,\badr[11]_INST_0_i_1_n_5 ,\badr[11]_INST_0_i_1_n_6 ,\badr[11]_INST_0_i_1_n_7 }),
        .S(\badr[11] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[12]_INST_0 
       (.I0(\badr[15]_INST_0_i_1_n_7 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[12]),
        .O(badr[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[13]_INST_0 
       (.I0(\badr[15]_INST_0_i_1_n_6 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[13]),
        .O(badr[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[14]_INST_0 
       (.I0(\badr[15]_INST_0_i_1_n_5 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[14]),
        .O(badr[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[15]_INST_0 
       (.I0(\badr[15]_INST_0_i_1_n_4 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[15]),
        .O(badr[15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[15]_INST_0_i_1 
       (.CI(\badr[11]_INST_0_i_1_n_0 ),
        .CO({\badr[15]_INST_0_i_1_n_0 ,\badr[15]_INST_0_i_1_n_1 ,\badr[15]_INST_0_i_1_n_2 ,\badr[15]_INST_0_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\badr[15]_INST_0_i_1_n_4 ,\badr[15]_INST_0_i_1_n_5 ,\badr[15]_INST_0_i_1_n_6 ,\badr[15]_INST_0_i_1_n_7 }),
        .S(\badr[15] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[16]_INST_0 
       (.I0(\badr[19]_INST_0_i_1_n_7 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[16]),
        .O(badr[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[17]_INST_0 
       (.I0(\badr[19]_INST_0_i_1_n_6 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[17]),
        .O(badr[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[18]_INST_0 
       (.I0(\badr[19]_INST_0_i_1_n_5 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[18]),
        .O(badr[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[19]_INST_0 
       (.I0(\badr[19]_INST_0_i_1_n_4 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[19]),
        .O(badr[19]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[19]_INST_0_i_1 
       (.CI(\badr[15]_INST_0_i_1_n_0 ),
        .CO({\badr[19]_INST_0_i_1_n_0 ,\badr[19]_INST_0_i_1_n_1 ,\badr[19]_INST_0_i_1_n_2 ,\badr[19]_INST_0_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\badr[19]_INST_0_i_1_n_4 ,\badr[19]_INST_0_i_1_n_5 ,\badr[19]_INST_0_i_1_n_6 ,\badr[19]_INST_0_i_1_n_7 }),
        .S(\badr[19] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[1]_INST_0 
       (.I0(\badr[3]_INST_0_i_1_n_6 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[1]),
        .O(badr[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[20]_INST_0 
       (.I0(\badr[23]_INST_0_i_1_n_7 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[20]),
        .O(badr[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[21]_INST_0 
       (.I0(\badr[23]_INST_0_i_1_n_6 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[21]),
        .O(badr[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[22]_INST_0 
       (.I0(\badr[23]_INST_0_i_1_n_5 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[22]),
        .O(badr[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[23]_INST_0 
       (.I0(\badr[23]_INST_0_i_1_n_4 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[23]),
        .O(badr[23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[23]_INST_0_i_1 
       (.CI(\badr[19]_INST_0_i_1_n_0 ),
        .CO({\badr[23]_INST_0_i_1_n_1 ,\badr[23]_INST_0_i_1_n_2 ,\badr[23]_INST_0_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\badr[23]_INST_0_i_1_n_4 ,\badr[23]_INST_0_i_1_n_5 ,\badr[23]_INST_0_i_1_n_6 ,\badr[23]_INST_0_i_1_n_7 }),
        .S(\badr[23] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[2]_INST_0 
       (.I0(\badr[3]_INST_0_i_1_n_5 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[2]),
        .O(badr[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[3]_INST_0 
       (.I0(\badr[3]_INST_0_i_1_n_4 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[3]),
        .O(badr[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[3]_INST_0_i_1 
       (.CI(\<const0> ),
        .CO({\badr[3]_INST_0_i_1_n_0 ,\badr[3]_INST_0_i_1_n_1 ,\badr[3]_INST_0_i_1_n_2 ,\badr[3]_INST_0_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,bacp_drv_datwl2,\<const0> }),
        .O({\badr[3]_INST_0_i_1_n_4 ,\badr[3]_INST_0_i_1_n_5 ,\badr[3]_INST_0_i_1_n_6 ,\badr[3]_INST_0_i_1_n_7 }),
        .S({S[2:1],\badr[3]_INST_0_i_6_n_0 ,S[0]}));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[3]_INST_0_i_3 
       (.I0(p_0_in[4]),
        .I1(p_0_in[5]),
        .O(bacp_drv_datwl2));
  LUT5 #(
    .INIT(32'hE21DE2E2)) 
    \badr[3]_INST_0_i_6 
       (.I0(badr2),
        .I1(\bdatw[0]_0 ),
        .I2(\badr[3]_INST_0_i_1_0 ),
        .I3(p_0_in[5]),
        .I4(p_0_in[4]),
        .O(\badr[3]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[4]_INST_0 
       (.I0(\badr[7]_INST_0_i_1_n_7 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[4]),
        .O(badr[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[5]_INST_0 
       (.I0(\badr[7]_INST_0_i_1_n_6 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[5]),
        .O(badr[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[6]_INST_0 
       (.I0(\badr[7]_INST_0_i_1_n_5 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[6]),
        .O(badr[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[7]_INST_0 
       (.I0(\badr[7]_INST_0_i_1_n_4 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[7]),
        .O(badr[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[7]_INST_0_i_1 
       (.CI(\badr[3]_INST_0_i_1_n_0 ),
        .CO({\badr[7]_INST_0_i_1_n_0 ,\badr[7]_INST_0_i_1_n_1 ,\badr[7]_INST_0_i_1_n_2 ,\badr[7]_INST_0_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\badr[7]_INST_0_i_1_n_4 ,\badr[7]_INST_0_i_1_n_5 ,\badr[7]_INST_0_i_1_n_6 ,\badr[7]_INST_0_i_1_n_7 }),
        .S(\badr[7] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[8]_INST_0 
       (.I0(\badr[11]_INST_0_i_1_n_7 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[8]),
        .O(badr[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[9]_INST_0 
       (.I0(\badr[11]_INST_0_i_1_n_6 ),
        .I1(badr_0_sn_1),
        .I2(p_1_in__0[9]),
        .O(badr[9]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bcmd[3]_INST_0 
       (.I0(\bcmd[3] ),
        .I1(\bcmd[3]_INST_0_i_2_n_0 ),
        .I2(badr_0_sn_1),
        .I3(\bcmd[3]_0 ),
        .I4(\bdatw[16]_1 ),
        .O(bcmd));
  LUT6 #(
    .INIT(64'h5C5050505C505C50)) 
    \bcmd[3]_INST_0_i_2 
       (.I0(p_0_in[5]),
        .I1(\bdatr2[31] ),
        .I2(p_0_in[4]),
        .I3(bcmd2),
        .I4(badr2),
        .I5(bcs_acc_l2),
        .O(\bcmd[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr2[16]_INST_0 
       (.I0(bdatr[0]),
        .I1(\bdatr2[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[0]),
        .O(bdatr2[0]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr2[17]_INST_0 
       (.I0(bdatr[1]),
        .I1(\bdatr2[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[1]),
        .O(bdatr2[1]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr2[18]_INST_0 
       (.I0(bdatr[2]),
        .I1(\bdatr2[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[2]),
        .O(bdatr2[2]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr2[19]_INST_0 
       (.I0(bdatr[3]),
        .I1(\bdatr2[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[3]),
        .O(bdatr2[3]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr2[20]_INST_0 
       (.I0(bdatr[4]),
        .I1(\bdatr2[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[4]),
        .O(bdatr2[4]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr2[21]_INST_0 
       (.I0(bdatr[5]),
        .I1(\bdatr2[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[5]),
        .O(bdatr2[5]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr2[22]_INST_0 
       (.I0(bdatr[6]),
        .I1(\bdatr2[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[6]),
        .O(bdatr2[6]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr2[23]_INST_0 
       (.I0(bdatr[7]),
        .I1(\bdatr2[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[7]),
        .O(bdatr2[7]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr2[24]_INST_0 
       (.I0(bdatr[8]),
        .I1(\bdatr2[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[8]),
        .O(bdatr2[8]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr2[25]_INST_0 
       (.I0(bdatr[9]),
        .I1(\bdatr2[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[9]),
        .O(bdatr2[9]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr2[26]_INST_0 
       (.I0(bdatr[10]),
        .I1(\bdatr2[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[10]),
        .O(bdatr2[10]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr2[27]_INST_0 
       (.I0(bdatr[11]),
        .I1(\bdatr2[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[11]),
        .O(bdatr2[11]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr2[28]_INST_0 
       (.I0(bdatr[12]),
        .I1(\bdatr2[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[12]),
        .O(bdatr2[12]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr2[29]_INST_0 
       (.I0(bdatr[13]),
        .I1(\bdatr2[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[13]),
        .O(bdatr2[13]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr2[30]_INST_0 
       (.I0(bdatr[14]),
        .I1(\bdatr2[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[14]),
        .O(bdatr2[14]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \bdatr2[31]_INST_0 
       (.I0(bdatr[15]),
        .I1(\bdatr2[31] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(Q[15]),
        .O(bdatr2[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[0]_INST_0 
       (.I0(bdatw_16_sn_1),
        .I1(bacp_drv_datwh2),
        .I2(\bdatw[0]_INST_0_i_1_n_0 ),
        .I3(badr_0_sn_1),
        .I4(bdatw_0_sn_1),
        .O(bdatw[0]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[0]_INST_0_i_1 
       (.I0(\bdatw[15]_0 [0]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_1 [0]),
        .I4(\bdatw[0]_0 ),
        .I5(bdatw2[0]),
        .O(\bdatw[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[10]_INST_0 
       (.I0(bdatw_26_sn_1),
        .I1(bacp_drv_datwh2),
        .I2(\bdatw[10]_INST_0_i_1_n_0 ),
        .I3(badr_0_sn_1),
        .I4(bdatw_10_sn_1),
        .O(bdatw[10]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[10]_INST_0_i_1 
       (.I0(\bdatw[15]_0 [10]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_1 [10]),
        .I4(\bdatw[0]_0 ),
        .I5(bdatw2[10]),
        .O(\bdatw[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[11]_INST_0 
       (.I0(bdatw_27_sn_1),
        .I1(bacp_drv_datwh2),
        .I2(\bdatw[11]_INST_0_i_1_n_0 ),
        .I3(badr_0_sn_1),
        .I4(bdatw_11_sn_1),
        .O(bdatw[11]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[11]_INST_0_i_1 
       (.I0(\bdatw[15]_0 [11]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_1 [11]),
        .I4(\bdatw[0]_0 ),
        .I5(bdatw2[11]),
        .O(\bdatw[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[12]_INST_0 
       (.I0(bdatw_28_sn_1),
        .I1(bacp_drv_datwh2),
        .I2(\bdatw[12]_INST_0_i_1_n_0 ),
        .I3(badr_0_sn_1),
        .I4(bdatw_12_sn_1),
        .O(bdatw[12]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[12]_INST_0_i_1 
       (.I0(\bdatw[15]_0 [12]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_1 [12]),
        .I4(\bdatw[0]_0 ),
        .I5(bdatw2[12]),
        .O(\bdatw[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[13]_INST_0 
       (.I0(bdatw_29_sn_1),
        .I1(bacp_drv_datwh2),
        .I2(\bdatw[13]_INST_0_i_1_n_0 ),
        .I3(badr_0_sn_1),
        .I4(bdatw_13_sn_1),
        .O(bdatw[13]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[13]_INST_0_i_1 
       (.I0(\bdatw[15]_0 [13]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_1 [13]),
        .I4(\bdatw[0]_0 ),
        .I5(bdatw2[13]),
        .O(\bdatw[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[14]_INST_0 
       (.I0(bdatw_30_sn_1),
        .I1(bacp_drv_datwh2),
        .I2(\bdatw[14]_INST_0_i_1_n_0 ),
        .I3(badr_0_sn_1),
        .I4(bdatw_14_sn_1),
        .O(bdatw[14]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[14]_INST_0_i_1 
       (.I0(\bdatw[15]_0 [14]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_1 [14]),
        .I4(\bdatw[0]_0 ),
        .I5(bdatw2[14]),
        .O(\bdatw[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[15]_INST_0 
       (.I0(bdatw_31_sn_1),
        .I1(bacp_drv_datwh2),
        .I2(\bdatw[15]_INST_0_i_2_n_0 ),
        .I3(badr_0_sn_1),
        .I4(bdatw_15_sn_1),
        .O(bdatw[15]));
  LUT5 #(
    .INIT(32'h00D00000)) 
    \bdatw[15]_INST_0_i_1 
       (.I0(bcs_acc_l2),
        .I1(badr2),
        .I2(bcmd2),
        .I3(p_0_in[4]),
        .I4(\bdatr2[31] ),
        .O(bacp_drv_datwh2));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[15]_INST_0_i_2 
       (.I0(\bdatw[15]_0 [15]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_1 [15]),
        .I4(\bdatw[0]_0 ),
        .I5(bdatw2[15]),
        .O(\bdatw[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[16]_INST_0 
       (.I0(bdatw_16_sn_1),
        .I1(\bcmd[3]_INST_0_i_2_n_0 ),
        .I2(badr_0_sn_1),
        .I3(\bdatw[16]_0 ),
        .I4(\bdatw[16]_1 ),
        .O(bdatw[16]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[17]_INST_0 
       (.I0(bdatw_17_sn_1),
        .I1(\bcmd[3]_INST_0_i_2_n_0 ),
        .I2(badr_0_sn_1),
        .I3(\bdatw[17]_0 ),
        .I4(\bdatw[16]_1 ),
        .O(bdatw[17]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[18]_INST_0 
       (.I0(bdatw_18_sn_1),
        .I1(\bcmd[3]_INST_0_i_2_n_0 ),
        .I2(badr_0_sn_1),
        .I3(\bdatw[18]_0 ),
        .I4(\bdatw[16]_1 ),
        .O(bdatw[18]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[19]_INST_0 
       (.I0(bdatw_19_sn_1),
        .I1(\bcmd[3]_INST_0_i_2_n_0 ),
        .I2(badr_0_sn_1),
        .I3(\bdatw[19]_0 ),
        .I4(\bdatw[16]_1 ),
        .O(bdatw[19]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[1]_INST_0 
       (.I0(bdatw_17_sn_1),
        .I1(bacp_drv_datwh2),
        .I2(\bdatw[1]_INST_0_i_1_n_0 ),
        .I3(badr_0_sn_1),
        .I4(bdatw_1_sn_1),
        .O(bdatw[1]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[1]_INST_0_i_1 
       (.I0(\bdatw[15]_0 [1]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_1 [1]),
        .I4(\bdatw[0]_0 ),
        .I5(bdatw2[1]),
        .O(\bdatw[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[20]_INST_0 
       (.I0(bdatw_20_sn_1),
        .I1(\bcmd[3]_INST_0_i_2_n_0 ),
        .I2(badr_0_sn_1),
        .I3(\bdatw[20]_0 ),
        .I4(\bdatw[16]_1 ),
        .O(bdatw[20]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[21]_INST_0 
       (.I0(bdatw_21_sn_1),
        .I1(\bcmd[3]_INST_0_i_2_n_0 ),
        .I2(badr_0_sn_1),
        .I3(\bdatw[21]_0 ),
        .I4(\bdatw[16]_1 ),
        .O(bdatw[21]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[22]_INST_0 
       (.I0(bdatw_22_sn_1),
        .I1(\bcmd[3]_INST_0_i_2_n_0 ),
        .I2(badr_0_sn_1),
        .I3(\bdatw[22]_0 ),
        .I4(\bdatw[16]_1 ),
        .O(bdatw[22]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[23]_INST_0 
       (.I0(bdatw_23_sn_1),
        .I1(\bcmd[3]_INST_0_i_2_n_0 ),
        .I2(badr_0_sn_1),
        .I3(\bdatw[23]_0 ),
        .I4(\bdatw[16]_1 ),
        .O(bdatw[23]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[24]_INST_0 
       (.I0(bdatw_24_sn_1),
        .I1(\bcmd[3]_INST_0_i_2_n_0 ),
        .I2(badr_0_sn_1),
        .I3(\bdatw[24]_0 ),
        .I4(\bdatw[16]_1 ),
        .O(bdatw[24]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[25]_INST_0 
       (.I0(bdatw_25_sn_1),
        .I1(\bcmd[3]_INST_0_i_2_n_0 ),
        .I2(badr_0_sn_1),
        .I3(\bdatw[25]_0 ),
        .I4(\bdatw[16]_1 ),
        .O(bdatw[25]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[26]_INST_0 
       (.I0(bdatw_26_sn_1),
        .I1(\bcmd[3]_INST_0_i_2_n_0 ),
        .I2(badr_0_sn_1),
        .I3(\bdatw[26]_0 ),
        .I4(\bdatw[16]_1 ),
        .O(bdatw[26]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[27]_INST_0 
       (.I0(bdatw_27_sn_1),
        .I1(\bcmd[3]_INST_0_i_2_n_0 ),
        .I2(badr_0_sn_1),
        .I3(\bdatw[27]_0 ),
        .I4(\bdatw[16]_1 ),
        .O(bdatw[27]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[28]_INST_0 
       (.I0(bdatw_28_sn_1),
        .I1(\bcmd[3]_INST_0_i_2_n_0 ),
        .I2(badr_0_sn_1),
        .I3(\bdatw[28]_0 ),
        .I4(\bdatw[16]_1 ),
        .O(bdatw[28]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[29]_INST_0 
       (.I0(bdatw_29_sn_1),
        .I1(\bcmd[3]_INST_0_i_2_n_0 ),
        .I2(badr_0_sn_1),
        .I3(\bdatw[29]_0 ),
        .I4(\bdatw[16]_1 ),
        .O(bdatw[29]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[2]_INST_0 
       (.I0(bdatw_18_sn_1),
        .I1(bacp_drv_datwh2),
        .I2(\bdatw[2]_INST_0_i_1_n_0 ),
        .I3(badr_0_sn_1),
        .I4(bdatw_2_sn_1),
        .O(bdatw[2]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[2]_INST_0_i_1 
       (.I0(\bdatw[15]_0 [2]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_1 [2]),
        .I4(\bdatw[0]_0 ),
        .I5(bdatw2[2]),
        .O(\bdatw[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[30]_INST_0 
       (.I0(bdatw_30_sn_1),
        .I1(\bcmd[3]_INST_0_i_2_n_0 ),
        .I2(badr_0_sn_1),
        .I3(\bdatw[30]_0 ),
        .I4(\bdatw[16]_1 ),
        .O(bdatw[30]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[31]_INST_0 
       (.I0(bdatw_31_sn_1),
        .I1(\bcmd[3]_INST_0_i_2_n_0 ),
        .I2(badr_0_sn_1),
        .I3(\bdatw[31]_0 ),
        .I4(\bdatw[16]_1 ),
        .O(bdatw[31]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[3]_INST_0 
       (.I0(bdatw_19_sn_1),
        .I1(bacp_drv_datwh2),
        .I2(\bdatw[3]_INST_0_i_1_n_0 ),
        .I3(badr_0_sn_1),
        .I4(bdatw_3_sn_1),
        .O(bdatw[3]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[3]_INST_0_i_1 
       (.I0(\bdatw[15]_0 [3]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_1 [3]),
        .I4(\bdatw[0]_0 ),
        .I5(bdatw2[3]),
        .O(\bdatw[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[4]_INST_0 
       (.I0(bdatw_20_sn_1),
        .I1(bacp_drv_datwh2),
        .I2(\bdatw[4]_INST_0_i_1_n_0 ),
        .I3(badr_0_sn_1),
        .I4(bdatw_4_sn_1),
        .O(bdatw[4]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[4]_INST_0_i_1 
       (.I0(\bdatw[15]_0 [4]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_1 [4]),
        .I4(\bdatw[0]_0 ),
        .I5(bdatw2[4]),
        .O(\bdatw[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[5]_INST_0 
       (.I0(bdatw_21_sn_1),
        .I1(bacp_drv_datwh2),
        .I2(\bdatw[5]_INST_0_i_1_n_0 ),
        .I3(badr_0_sn_1),
        .I4(bdatw_5_sn_1),
        .O(bdatw[5]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[5]_INST_0_i_1 
       (.I0(\bdatw[15]_0 [5]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_1 [5]),
        .I4(\bdatw[0]_0 ),
        .I5(bdatw2[5]),
        .O(\bdatw[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[6]_INST_0 
       (.I0(bdatw_22_sn_1),
        .I1(bacp_drv_datwh2),
        .I2(\bdatw[6]_INST_0_i_1_n_0 ),
        .I3(badr_0_sn_1),
        .I4(bdatw_6_sn_1),
        .O(bdatw[6]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[6]_INST_0_i_1 
       (.I0(\bdatw[15]_0 [6]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_1 [6]),
        .I4(\bdatw[0]_0 ),
        .I5(bdatw2[6]),
        .O(\bdatw[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[7]_INST_0 
       (.I0(bdatw_23_sn_1),
        .I1(bacp_drv_datwh2),
        .I2(\bdatw[7]_INST_0_i_1_n_0 ),
        .I3(badr_0_sn_1),
        .I4(bdatw_7_sn_1),
        .O(bdatw[7]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[7]_INST_0_i_1 
       (.I0(\bdatw[15]_0 [7]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_1 [7]),
        .I4(\bdatw[0]_0 ),
        .I5(bdatw2[7]),
        .O(\bdatw[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[8]_INST_0 
       (.I0(bdatw_24_sn_1),
        .I1(bacp_drv_datwh2),
        .I2(\bdatw[8]_INST_0_i_1_n_0 ),
        .I3(badr_0_sn_1),
        .I4(bdatw_8_sn_1),
        .O(bdatw[8]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[8]_INST_0_i_1 
       (.I0(\bdatw[15]_0 [8]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_1 [8]),
        .I4(\bdatw[0]_0 ),
        .I5(bdatw2[8]),
        .O(\bdatw[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[9]_INST_0 
       (.I0(bdatw_25_sn_1),
        .I1(bacp_drv_datwh2),
        .I2(\bdatw[9]_INST_0_i_1_n_0 ),
        .I3(badr_0_sn_1),
        .I4(bdatw_9_sn_1),
        .O(bdatw[9]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \bdatw[9]_INST_0_i_1 
       (.I0(\bdatw[15]_0 [9]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\bdatw[15]_1 [9]),
        .I4(\bdatw[0]_0 ),
        .I5(bdatw2[9]),
        .O(\bdatw[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFFEAAAA)) 
    neg_brdy2_i_1
       (.I0(neg_brdy2_reg),
        .I1(bcmd2),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(bacp_drv_datwh2),
        .O(neg_brdy20));
  LUT6 #(
    .INIT(64'h11111111CC0C0000)) 
    \stat[0]_i_1 
       (.I0(p_0_in[5]),
        .I1(\bdatr2[31] ),
        .I2(bcs_acc_l2),
        .I3(badr2),
        .I4(bcmd2),
        .I5(p_0_in[4]),
        .O(stat_nx[0]));
  LUT3 #(
    .INIT(8'h24)) 
    \stat[1]_i_1__0 
       (.I0(\bdatr2[31] ),
        .I1(p_0_in[5]),
        .I2(p_0_in[4]),
        .O(stat_nx[1]));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[0]),
        .Q(p_0_in[4]),
        .R(SR));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[1]),
        .Q(p_0_in[5]),
        .R(SR));
endmodule
