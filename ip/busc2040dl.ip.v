
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
//	2023/11/04	ver.1.38
//		fix: long word access to/from odd word address for dual core system.
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

  wire acpu_n_0;
  wire acpu_n_96;
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
  wire bctl_brdy;
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
       (.badr(badr),
        .badr1(badr1),
        .\badr1_c_reg[0]_0 (brdy1),
        .badr2(badr2),
        .bcmd(bcmd),
        .bcmd1(bcmd1),
        .bcmd2(bcmd2),
        .bcs_acc_2(bcs_acc_2),
        .bcs_acc_l1(bcs_acc_l1),
        .bcs_acc_l2(bcs_acc_l2),
        .bcs_acc_l2_c_reg_0(brdy2),
        .bcs_sdram_n(bcs_sdram_n),
        .bctl_brdy(bctl_brdy),
        .bdatr(bdatr),
        .bdatr1(\^bdatr1 ),
        .bdatr2(\^bdatr2 ),
        .bdatw(bdatw),
        .bdatw1(bdatw1),
        .bdatw2(bdatw2),
        .bmst(bmst),
        .bus_sel_c_reg_0(acpu_n_96),
        .cch_hit(cch_hit),
        .cch_hit_0(acpu_n_97),
        .clk(clk),
        .neg_brdy1(neg_brdy1),
        .neg_brdy2(neg_brdy2),
        .rst_n(rst_n),
        .rst_n_0(acpu_n_0),
        .sdc_brdy(sdc_brdy),
        .\stat_reg[2] (brdy));
  busc_fsm bctl
       (.SR(acpu_n_0),
        .bcmd(bcmd[1:0]),
        .bcs_acc_2(bcs_acc_2),
        .bcs_sdram_n(bcs_sdram_n),
        .bctl_brdy(bctl_brdy),
        .bctl_brdy_reg_0(acpu_n_97),
        .bctl_brdy_reg_1(acpu_n_96),
        .brdy(brdy),
        .brdy1(brdy1),
        .brdy2(brdy2),
        .cch_hit(cch_hit),
        .clk(clk),
        .neg_brdy1(neg_brdy1),
        .neg_brdy2(neg_brdy2),
        .sdc_brdy(sdc_brdy));
endmodule

module busc_acpu
   (rst_n_0,
    bmst,
    neg_brdy1,
    neg_brdy2,
    bdatw,
    bcmd,
    bdatr2,
    bdatr1,
    badr,
    bus_sel_c_reg_0,
    cch_hit_0,
    clk,
    bcs_acc_l2_c_reg_0,
    bcs_acc_l1,
    \badr1_c_reg[0]_0 ,
    \stat_reg[2] ,
    bcmd2,
    bdatw1,
    bcs_acc_l2,
    sdc_brdy,
    bctl_brdy,
    bcmd1,
    bdatr,
    rst_n,
    cch_hit,
    bcs_acc_2,
    bcs_sdram_n,
    badr2,
    bdatw2,
    badr1);
  output rst_n_0;
  output bmst;
  output neg_brdy1;
  output neg_brdy2;
  output [31:0]bdatw;
  output [3:0]bcmd;
  output [15:0]bdatr2;
  output [15:0]bdatr1;
  output [23:0]badr;
  output bus_sel_c_reg_0;
  output cch_hit_0;
  input clk;
  input bcs_acc_l2_c_reg_0;
  input bcs_acc_l1;
  input \badr1_c_reg[0]_0 ;
  input \stat_reg[2] ;
  input [3:0]bcmd2;
  input [31:0]bdatw1;
  input bcs_acc_l2;
  input sdc_brdy;
  input bctl_brdy;
  input [3:0]bcmd1;
  input [31:0]bdatr;
  input rst_n;
  input cch_hit;
  input bcs_acc_2;
  input bcs_sdram_n;
  input [23:0]badr2;
  input [31:0]bdatw2;
  input [23:0]badr1;

  wire \<const0> ;
  wire \<const1> ;
  wire [23:0]badr;
  wire [23:0]badr1;
  wire [23:0]badr1_c;
  wire \badr1_c_reg[0]_0 ;
  wire [23:0]badr1_lw1;
  wire [23:0]badr2;
  wire [23:0]badr2_c;
  wire [3:0]bcmd;
  wire [3:0]bcmd1;
  wire [3:0]bcmd1_c;
  wire [3:3]bcmd1_lw2__0;
  wire [3:0]bcmd2;
  wire [3:0]bcmd2_c;
  wire bcmd_kick1_cp__1;
  wire bcmd_valid1_cp__0;
  wire bcs_acc_2;
  wire bcs_acc_l1;
  wire bcs_acc_l1_c;
  wire bcs_acc_l1_cp;
  wire bcs_acc_l2;
  wire bcs_acc_l2_c;
  wire bcs_acc_l2_c_reg_0;
  wire bcs_sdram_n;
  wire bctl_brdy;
  wire [31:0]bdatr;
  wire [15:0]bdatr1;
  wire [15:0]bdatr2;
  wire [31:0]bdatw;
  wire [31:0]bdatw1;
  wire [31:0]bdatw1_c;
  wire [31:0]bdatw1_cp;
  wire [31:0]bdatw2;
  wire [31:0]bdatw2_c;
  wire [31:0]bdatw2_cp;
  wire blng1_n_100;
  wire blng1_n_102;
  wire blng1_n_103;
  wire blng1_n_26;
  wire blng1_n_27;
  wire blng1_n_28;
  wire blng1_n_46;
  wire blng1_n_80;
  wire blng1_n_81;
  wire blng1_n_82;
  wire blng1_n_83;
  wire blng1_n_84;
  wire blng1_n_85;
  wire blng1_n_86;
  wire blng1_n_87;
  wire blng1_n_88;
  wire blng1_n_89;
  wire blng1_n_90;
  wire blng1_n_91;
  wire blng1_n_92;
  wire blng1_n_93;
  wire blng1_n_94;
  wire blng1_n_95;
  wire blng1_n_96;
  wire blng2_n_125;
  wire blng2_n_2;
  wire blng2_n_3;
  wire blng2_n_68;
  wire blng2_n_72;
  wire blng2_n_73;
  wire blng2_n_75;
  wire blng2_n_76;
  wire blng2_n_93;
  wire blng2_n_94;
  wire blng2_n_96;
  wire blng2_n_98;
  wire bmst;
  wire bus_sel_c;
  wire bus_sel_c_reg_0;
  wire cch_hit;
  wire cch_hit_0;
  wire clk;
  wire datrh0;
  wire drv_bdatwh;
  wire last_sel_c;
  wire last_sel_cp;
  wire last_sel_reg_n_0;
  wire neg_brdy1;
  wire neg_brdy2;
  wire [31:16]p_1_in;
  wire rst_n;
  wire rst_n_0;
  wire sdc_brdy;
  wire \stat_reg[2] ;
  wire upd_bus_sel1;
  wire upd_bus_sel__1;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \badr1_c_reg[0] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[0]),
        .Q(badr1_c[0]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[10] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[10]),
        .Q(badr1_c[10]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[11] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[11]),
        .Q(badr1_c[11]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[12] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[12]),
        .Q(badr1_c[12]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[13] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[13]),
        .Q(badr1_c[13]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[14] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[14]),
        .Q(badr1_c[14]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[15] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[15]),
        .Q(badr1_c[15]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[16] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[16]),
        .Q(badr1_c[16]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[17] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[17]),
        .Q(badr1_c[17]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[18] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[18]),
        .Q(badr1_c[18]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[19] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[19]),
        .Q(badr1_c[19]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng1_n_26),
        .Q(badr1_c[1]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[20] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[20]),
        .Q(badr1_c[20]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[21] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[21]),
        .Q(badr1_c[21]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[22] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[22]),
        .Q(badr1_c[22]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[23] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[23]),
        .Q(badr1_c[23]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[2] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[2]),
        .Q(badr1_c[2]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[3] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[3]),
        .Q(badr1_c[3]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[4] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[4]),
        .Q(badr1_c[4]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[5] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[5]),
        .Q(badr1_c[5]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[6] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[6]),
        .Q(badr1_c[6]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[7] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[7]),
        .Q(badr1_c[7]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[8] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[8]),
        .Q(badr1_c[8]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[9] 
       (.C(clk),
        .CE(\badr1_c_reg[0]_0 ),
        .D(badr1[9]),
        .Q(badr1_c[9]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[0] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[0]),
        .Q(badr2_c[0]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[10] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[10]),
        .Q(badr2_c[10]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[11] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[11]),
        .Q(badr2_c[11]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[12] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[12]),
        .Q(badr2_c[12]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[13] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[13]),
        .Q(badr2_c[13]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[14] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[14]),
        .Q(badr2_c[14]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[15] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[15]),
        .Q(badr2_c[15]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[16] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[16]),
        .Q(badr2_c[16]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[17] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[17]),
        .Q(badr2_c[17]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[18] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[18]),
        .Q(badr2_c[18]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[19] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[19]),
        .Q(badr2_c[19]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng2_n_2),
        .Q(badr2_c[1]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[20] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[20]),
        .Q(badr2_c[20]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[21] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[21]),
        .Q(badr2_c[21]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[22] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[22]),
        .Q(badr2_c[22]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[23] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[23]),
        .Q(badr2_c[23]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[2] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[2]),
        .Q(badr2_c[2]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[3] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[3]),
        .Q(badr2_c[3]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[4] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[4]),
        .Q(badr2_c[4]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[5] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[5]),
        .Q(badr2_c[5]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[6] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[6]),
        .Q(badr2_c[6]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[7] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[7]),
        .Q(badr2_c[7]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[8] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[8]),
        .Q(badr2_c[8]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[9] 
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(badr2[9]),
        .Q(badr2_c[9]),
        .R(rst_n_0));
  FDRE \bcmd1_c_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng1_n_95),
        .Q(bcmd1_c[0]),
        .R(rst_n_0));
  FDRE \bcmd1_c_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng1_n_100),
        .Q(bcmd1_c[1]),
        .R(rst_n_0));
  FDRE \bcmd1_c_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng1_n_103),
        .Q(bcmd1_c[2]),
        .R(rst_n_0));
  FDRE \bcmd1_c_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng1_n_102),
        .Q(bcmd1_c[3]),
        .R(rst_n_0));
  FDRE \bcmd2_c_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng2_n_68),
        .Q(bcmd2_c[0]),
        .R(rst_n_0));
  FDRE \bcmd2_c_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng2_n_75),
        .Q(bcmd2_c[1]),
        .R(rst_n_0));
  FDRE \bcmd2_c_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng2_n_76),
        .Q(bcmd2_c[2]),
        .R(rst_n_0));
  FDRE \bcmd2_c_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng2_n_73),
        .Q(bcmd2_c[3]),
        .R(rst_n_0));
  FDRE bcs_acc_l1_c_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(bcs_acc_l1_cp),
        .Q(bcs_acc_l1_c),
        .R(rst_n_0));
  FDRE bcs_acc_l2_c_reg
       (.C(clk),
        .CE(bcs_acc_l2_c_reg_0),
        .D(bcs_acc_l1),
        .Q(bcs_acc_l2_c),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[0]),
        .Q(bdatw1_c[0]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[10]),
        .Q(bdatw1_c[10]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[11]),
        .Q(bdatw1_c[11]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[12]),
        .Q(bdatw1_c[12]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[13]),
        .Q(bdatw1_c[13]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[14]),
        .Q(bdatw1_c[14]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[15]),
        .Q(bdatw1_c[15]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[16] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[16]),
        .Q(bdatw1_c[16]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[17]),
        .Q(bdatw1_c[17]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[18]),
        .Q(bdatw1_c[18]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[19]),
        .Q(bdatw1_c[19]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[1]),
        .Q(bdatw1_c[1]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[20] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[20]),
        .Q(bdatw1_c[20]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[21] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[21]),
        .Q(bdatw1_c[21]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[22] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[22]),
        .Q(bdatw1_c[22]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[23] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[23]),
        .Q(bdatw1_c[23]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[24] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[24]),
        .Q(bdatw1_c[24]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[25] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[25]),
        .Q(bdatw1_c[25]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[26] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[26]),
        .Q(bdatw1_c[26]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[27] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[27]),
        .Q(bdatw1_c[27]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[28] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[28]),
        .Q(bdatw1_c[28]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[29] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[29]),
        .Q(bdatw1_c[29]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[2]),
        .Q(bdatw1_c[2]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[30] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[30]),
        .Q(bdatw1_c[30]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[31] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[31]),
        .Q(bdatw1_c[31]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[3]),
        .Q(bdatw1_c[3]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[4]),
        .Q(bdatw1_c[4]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[5]),
        .Q(bdatw1_c[5]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[6]),
        .Q(bdatw1_c[6]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[7]),
        .Q(bdatw1_c[7]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[8]),
        .Q(bdatw1_c[8]),
        .R(rst_n_0));
  FDRE \bdatw1_c_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw1_cp[9]),
        .Q(bdatw1_c[9]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[0]),
        .Q(bdatw2_c[0]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[10]),
        .Q(bdatw2_c[10]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[11]),
        .Q(bdatw2_c[11]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[12]),
        .Q(bdatw2_c[12]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[13]),
        .Q(bdatw2_c[13]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[14]),
        .Q(bdatw2_c[14]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[15]),
        .Q(bdatw2_c[15]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[16] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[16]),
        .Q(bdatw2_c[16]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[17]),
        .Q(bdatw2_c[17]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[18]),
        .Q(bdatw2_c[18]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[19]),
        .Q(bdatw2_c[19]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[1]),
        .Q(bdatw2_c[1]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[20] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[20]),
        .Q(bdatw2_c[20]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[21] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[21]),
        .Q(bdatw2_c[21]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[22] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[22]),
        .Q(bdatw2_c[22]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[23] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[23]),
        .Q(bdatw2_c[23]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[24] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[24]),
        .Q(bdatw2_c[24]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[25] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[25]),
        .Q(bdatw2_c[25]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[26] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[26]),
        .Q(bdatw2_c[26]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[27] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[27]),
        .Q(bdatw2_c[27]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[28] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[28]),
        .Q(bdatw2_c[28]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[29] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[29]),
        .Q(bdatw2_c[29]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[2]),
        .Q(bdatw2_c[2]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[30] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[30]),
        .Q(bdatw2_c[30]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[31] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[31]),
        .Q(bdatw2_c[31]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[3]),
        .Q(bdatw2_c[3]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[4]),
        .Q(bdatw2_c[4]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[5]),
        .Q(bdatw2_c[5]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[6]),
        .Q(bdatw2_c[6]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[7]),
        .Q(bdatw2_c[7]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[8]),
        .Q(bdatw2_c[8]),
        .R(rst_n_0));
  FDRE \bdatw2_c_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw2_cp[9]),
        .Q(bdatw2_c[9]),
        .R(rst_n_0));
  busc_long_fsm blng1
       (.D(bdatw1_cp),
        .E(datrh0),
        .Q({blng1_n_27,blng1_n_28}),
        .badr1(badr1),
        .\badr1[1]_0 (blng1_n_96),
        .badr1_1_sp_1(blng1_n_26),
        .badr1_c(badr1_c),
        .badr1_lw1(badr1_lw1),
        .bcmd(bcmd[1]),
        .bcmd1(bcmd1),
        .\bcmd1[2] (blng1_n_103),
        .bcmd1_0_sp_1(blng1_n_95),
        .bcmd1_1_sp_1(blng1_n_100),
        .bcmd1_3_sp_1(blng1_n_102),
        .\bcmd1_c_reg[3] (bcmd1_c),
        .bcmd1_lw2__0(bcmd1_lw2__0),
        .\bcmd[1] (blng2_n_75),
        .\bcmd[1]_0 (last_sel_reg_n_0),
        .\bcmd[1]_1 (blng2_n_68),
        .\bcmd[3] (blng2_n_98),
        .bcmd_kick1_cp__1(bcmd_kick1_cp__1),
        .bcmd_valid1_cp__0(bcmd_valid1_cp__0),
        .bcs_acc_2(bcs_acc_2),
        .bcs_acc_l1(bcs_acc_l1),
        .bcs_acc_l1_c(bcs_acc_l1_c),
        .bcs_acc_l1_cp(bcs_acc_l1_cp),
        .bcs_sdram_n(bcs_sdram_n),
        .bctl_brdy(bctl_brdy),
        .bdatr(bdatr[31:16]),
        .bdatr1(bdatr1),
        .\bdatr1[31] (p_1_in),
        .bdatw1(bdatw1),
        .bdatw1_0_sp_1(blng1_n_46),
        .bdatw1_10_sp_1(blng1_n_89),
        .bdatw1_11_sp_1(blng1_n_90),
        .bdatw1_12_sp_1(blng1_n_91),
        .bdatw1_13_sp_1(blng1_n_92),
        .bdatw1_14_sp_1(blng1_n_93),
        .bdatw1_15_sp_1(blng1_n_94),
        .bdatw1_1_sp_1(blng1_n_80),
        .bdatw1_2_sp_1(blng1_n_81),
        .bdatw1_3_sp_1(blng1_n_82),
        .bdatw1_4_sp_1(blng1_n_83),
        .bdatw1_5_sp_1(blng1_n_84),
        .bdatw1_6_sp_1(blng1_n_85),
        .bdatw1_7_sp_1(blng1_n_86),
        .bdatw1_8_sp_1(blng1_n_87),
        .bdatw1_9_sp_1(blng1_n_88),
        .\bdatw1_c_reg[31] (bdatw1_c),
        .\bdatw[0] (blng2_n_72),
        .bus_sel_c(bus_sel_c),
        .cch_hit(cch_hit),
        .cch_hit_0(cch_hit_0),
        .clk(clk),
        .\datrh_reg[0] (\stat_reg[2] ),
        .\datrh_reg[0]_0 (blng2_n_3),
        .\datrh_reg[0]_1 (blng2_n_125),
        .drv_bdatwh(drv_bdatwh),
        .neg_brdy_x_reg_0(neg_brdy1),
        .neg_brdy_x_reg_1(\badr1_c_reg[0]_0 ),
        .neg_brdy_x_reg_2(neg_brdy2),
        .sdc_brdy(sdc_brdy),
        .\stat_reg[0]_0 (bcs_acc_l2_c_reg_0),
        .\stat_reg[0]_1 (blng2_n_96),
        .\stat_reg[2]_0 (blng2_n_94),
        .upd_bus_sel1(upd_bus_sel1),
        .upd_bus_sel__1(upd_bus_sel__1),
        .upd_bus_sel_reg_0(rst_n_0));
  busc_long_fsm_0 blng2
       (.D(blng2_n_2),
        .Q(blng2_n_3),
        .badr(badr),
        .badr1_lw1(badr1_lw1),
        .badr2(badr2),
        .badr2_c(badr2_c),
        .bcmd({bcmd[3:2],bcmd[0]}),
        .bcmd1({bcmd1[2],bcmd1[0]}),
        .bcmd1_lw2__0(bcmd1_lw2__0),
        .bcmd2(bcmd2),
        .\bcmd2[2] (blng2_n_76),
        .bcmd2_0_sp_1(blng2_n_68),
        .bcmd2_1_sp_1(blng2_n_75),
        .bcmd2_3_sp_1(blng2_n_73),
        .\bcmd2_c_reg[3] (bcmd2_c),
        .\bcmd[2] ({bcmd1_c[2],bcmd1_c[0]}),
        .\bcmd[3] ({blng1_n_102,blng1_n_100,blng1_n_95}),
        .\bcmd[3]_INST_0_i_1 (blng1_n_96),
        .bcmd_0_sp_1(\badr1_c_reg[0]_0 ),
        .bcmd_kick1_cp__1(bcmd_kick1_cp__1),
        .bcmd_valid1_cp__0(bcmd_valid1_cp__0),
        .bcs_acc_l2(bcs_acc_l2),
        .bcs_acc_l2_c(bcs_acc_l2_c),
        .bctl_brdy(bctl_brdy),
        .bctl_brdy_reg(blng2_n_96),
        .bctl_brdy_reg_0(bcmd[1]),
        .bdatr(bdatr[31:16]),
        .bdatr2(bdatr2),
        .\bdatr2[31] (p_1_in),
        .bdatw(bdatw),
        .bdatw1(bdatw1[31:16]),
        .bdatw2(bdatw2),
        .\bdatw2[31] (bdatw2_cp),
        .\bdatw2_c_reg[31] (bdatw2_c),
        .\bdatw[31] (bdatw1_c[31:16]),
        .bdatw_0_sp_1(blng1_n_46),
        .bdatw_10_sp_1(blng1_n_89),
        .bdatw_11_sp_1(blng1_n_90),
        .bdatw_12_sp_1(blng1_n_91),
        .bdatw_13_sp_1(blng1_n_92),
        .bdatw_14_sp_1(blng1_n_93),
        .bdatw_15_sp_1(blng1_n_94),
        .bdatw_1_sp_1(blng1_n_80),
        .bdatw_2_sp_1(blng1_n_81),
        .bdatw_3_sp_1(blng1_n_82),
        .bdatw_4_sp_1(blng1_n_83),
        .bdatw_5_sp_1(blng1_n_84),
        .bdatw_6_sp_1(blng1_n_85),
        .bdatw_7_sp_1(blng1_n_86),
        .bdatw_8_sp_1(blng1_n_87),
        .bdatw_9_sp_1(blng1_n_88),
        .bmst(bmst),
        .bus_sel_c(bus_sel_c),
        .bus_sel_c_reg(blng2_n_72),
        .bus_sel_c_reg_0(bus_sel_c_reg_0),
        .bus_sel_c_reg_1(bcs_acc_l2_c_reg_0),
        .clk(clk),
        .drv_bdatwh(drv_bdatwh),
        .last_sel_c(last_sel_c),
        .last_sel_cp(last_sel_cp),
        .last_sel_reg(blng2_n_98),
        .last_sel_reg_0(last_sel_reg_n_0),
        .neg_brdy_x_reg_0(neg_brdy2),
        .neg_brdy_x_reg_1(blng2_n_94),
        .neg_brdy_x_reg_2(neg_brdy1),
        .rst_n(rst_n),
        .rst_n_0(rst_n_0),
        .rst_n_1(blng2_n_93),
        .sdc_brdy(sdc_brdy),
        .\stat_reg[2]_0 (blng2_n_125),
        .\stat_reg[2]_1 (\stat_reg[2] ),
        .\stat_reg[2]_2 ({blng1_n_27,blng1_n_28}),
        .upd_bus_sel1(upd_bus_sel1),
        .upd_bus_sel__1(upd_bus_sel__1));
  FDRE bus_sel_c_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(bmst),
        .Q(bus_sel_c),
        .R(rst_n_0));
  FDRE \datrh_reg[0] 
       (.C(clk),
        .CE(datrh0),
        .D(bdatr[0]),
        .Q(p_1_in[16]),
        .R(rst_n_0));
  FDRE \datrh_reg[10] 
       (.C(clk),
        .CE(datrh0),
        .D(bdatr[10]),
        .Q(p_1_in[26]),
        .R(rst_n_0));
  FDRE \datrh_reg[11] 
       (.C(clk),
        .CE(datrh0),
        .D(bdatr[11]),
        .Q(p_1_in[27]),
        .R(rst_n_0));
  FDRE \datrh_reg[12] 
       (.C(clk),
        .CE(datrh0),
        .D(bdatr[12]),
        .Q(p_1_in[28]),
        .R(rst_n_0));
  FDRE \datrh_reg[13] 
       (.C(clk),
        .CE(datrh0),
        .D(bdatr[13]),
        .Q(p_1_in[29]),
        .R(rst_n_0));
  FDRE \datrh_reg[14] 
       (.C(clk),
        .CE(datrh0),
        .D(bdatr[14]),
        .Q(p_1_in[30]),
        .R(rst_n_0));
  FDRE \datrh_reg[15] 
       (.C(clk),
        .CE(datrh0),
        .D(bdatr[15]),
        .Q(p_1_in[31]),
        .R(rst_n_0));
  FDRE \datrh_reg[1] 
       (.C(clk),
        .CE(datrh0),
        .D(bdatr[1]),
        .Q(p_1_in[17]),
        .R(rst_n_0));
  FDRE \datrh_reg[2] 
       (.C(clk),
        .CE(datrh0),
        .D(bdatr[2]),
        .Q(p_1_in[18]),
        .R(rst_n_0));
  FDRE \datrh_reg[3] 
       (.C(clk),
        .CE(datrh0),
        .D(bdatr[3]),
        .Q(p_1_in[19]),
        .R(rst_n_0));
  FDRE \datrh_reg[4] 
       (.C(clk),
        .CE(datrh0),
        .D(bdatr[4]),
        .Q(p_1_in[20]),
        .R(rst_n_0));
  FDRE \datrh_reg[5] 
       (.C(clk),
        .CE(datrh0),
        .D(bdatr[5]),
        .Q(p_1_in[21]),
        .R(rst_n_0));
  FDRE \datrh_reg[6] 
       (.C(clk),
        .CE(datrh0),
        .D(bdatr[6]),
        .Q(p_1_in[22]),
        .R(rst_n_0));
  FDRE \datrh_reg[7] 
       (.C(clk),
        .CE(datrh0),
        .D(bdatr[7]),
        .Q(p_1_in[23]),
        .R(rst_n_0));
  FDRE \datrh_reg[8] 
       (.C(clk),
        .CE(datrh0),
        .D(bdatr[8]),
        .Q(p_1_in[24]),
        .R(rst_n_0));
  FDRE \datrh_reg[9] 
       (.C(clk),
        .CE(datrh0),
        .D(bdatr[9]),
        .Q(p_1_in[25]),
        .R(rst_n_0));
  FDRE last_sel_c_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(last_sel_cp),
        .Q(last_sel_c),
        .R(rst_n_0));
  FDRE last_sel_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(blng2_n_93),
        .Q(last_sel_reg_n_0),
        .R(\<const0> ));
endmodule

module busc_fsm
   (bctl_brdy,
    brdy2,
    brdy1,
    brdy,
    SR,
    clk,
    bctl_brdy_reg_0,
    sdc_brdy,
    bctl_brdy_reg_1,
    bcs_acc_2,
    bcmd,
    neg_brdy2,
    neg_brdy1,
    bcs_sdram_n,
    cch_hit);
  output bctl_brdy;
  output brdy2;
  output brdy1;
  output brdy;
  input [0:0]SR;
  input clk;
  input bctl_brdy_reg_0;
  input sdc_brdy;
  input bctl_brdy_reg_1;
  input bcs_acc_2;
  input [1:0]bcmd;
  input neg_brdy2;
  input neg_brdy1;
  input bcs_sdram_n;
  input cch_hit;

  wire \<const1> ;
  wire [0:0]SR;
  wire [1:0]bcmd;
  wire bcs_acc_2;
  wire bcs_sdram_n;
  wire bctl_brdy;
  wire bctl_brdy_reg_0;
  wire bctl_brdy_reg_1;
  wire brdy;
  wire brdy1;
  wire brdy2;
  wire brdy_t;
  wire cch_hit;
  wire clk;
  wire neg_brdy1;
  wire neg_brdy2;
  wire sdc_brdy;
  wire [2:0]stat;
  wire \stat[0]_i_2__1_n_0 ;
  wire \stat[0]_i_3__0_n_0 ;
  wire \stat[0]_i_4_n_0 ;
  wire \stat[2]_i_4_n_0 ;
  wire [2:0]stat_nx;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFBFFFFFFAAFAFFFF)) 
    bctl_brdy_i_1
       (.I0(bctl_brdy_reg_0),
        .I1(sdc_brdy),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(bctl_brdy_reg_1),
        .I5(stat[2]),
        .O(brdy_t));
  FDSE bctl_brdy_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(brdy_t),
        .Q(bctl_brdy),
        .S(SR));
  LUT3 #(
    .INIT(8'h80)) 
    brdy1_INST_0
       (.I0(sdc_brdy),
        .I1(bctl_brdy),
        .I2(neg_brdy1),
        .O(brdy1));
  LUT3 #(
    .INIT(8'h80)) 
    brdy2_INST_0
       (.I0(sdc_brdy),
        .I1(bctl_brdy),
        .I2(neg_brdy2),
        .O(brdy2));
  LUT2 #(
    .INIT(4'h8)) 
    brdy_INST_0
       (.I0(bctl_brdy),
        .I1(sdc_brdy),
        .O(brdy));
  LUT4 #(
    .INIT(16'hAA80)) 
    \stat[0]_i_1__1 
       (.I0(\stat[0]_i_2__1_n_0 ),
        .I1(\stat[0]_i_3__0_n_0 ),
        .I2(bcmd[0]),
        .I3(\stat[0]_i_4_n_0 ),
        .O(stat_nx[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEFFAEAE)) 
    \stat[0]_i_2__1 
       (.I0(bcs_sdram_n),
        .I1(stat[2]),
        .I2(sdc_brdy),
        .I3(stat[0]),
        .I4(stat[1]),
        .I5(cch_hit),
        .O(\stat[0]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000455)) 
    \stat[0]_i_3__0 
       (.I0(bcs_acc_2),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(stat[2]),
        .I4(bcmd[1]),
        .O(\stat[0]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h0344)) 
    \stat[0]_i_4 
       (.I0(sdc_brdy),
        .I1(stat[2]),
        .I2(stat[0]),
        .I3(stat[1]),
        .O(\stat[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00A000FF80A000A0)) 
    \stat[1]_i_1__1 
       (.I0(bctl_brdy_reg_1),
        .I1(sdc_brdy),
        .I2(bcs_acc_2),
        .I3(stat[2]),
        .I4(stat[0]),
        .I5(stat[1]),
        .O(stat_nx[1]));
  LUT5 #(
    .INIT(32'hFF040404)) 
    \stat[2]_i_2__1 
       (.I0(sdc_brdy),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(bctl_brdy_reg_1),
        .I4(\stat[2]_i_4_n_0 ),
        .O(stat_nx[2]));
  LUT5 #(
    .INIT(32'h01001101)) 
    \stat[2]_i_4 
       (.I0(bcs_acc_2),
        .I1(bcs_sdram_n),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(stat[2]),
        .O(\stat[2]_i_4_n_0 ));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[0]),
        .Q(stat[0]),
        .R(SR));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[1]),
        .Q(stat[1]),
        .R(SR));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[2]),
        .Q(stat[2]),
        .R(SR));
endmodule

module busc_long_fsm
   (neg_brdy_x_reg_0,
    upd_bus_sel1,
    badr1_lw1,
    .badr1_1_sp_1(badr1_1_sn_1),
    Q,
    bcmd_valid1_cp__0,
    bdatr1,
    .bdatw1_0_sp_1(bdatw1_0_sn_1),
    D,
    drv_bdatwh,
    .bdatw1_1_sp_1(bdatw1_1_sn_1),
    .bdatw1_2_sp_1(bdatw1_2_sn_1),
    .bdatw1_3_sp_1(bdatw1_3_sn_1),
    .bdatw1_4_sp_1(bdatw1_4_sn_1),
    .bdatw1_5_sp_1(bdatw1_5_sn_1),
    .bdatw1_6_sp_1(bdatw1_6_sn_1),
    .bdatw1_7_sp_1(bdatw1_7_sn_1),
    .bdatw1_8_sp_1(bdatw1_8_sn_1),
    .bdatw1_9_sp_1(bdatw1_9_sn_1),
    .bdatw1_10_sp_1(bdatw1_10_sn_1),
    .bdatw1_11_sp_1(bdatw1_11_sn_1),
    .bdatw1_12_sp_1(bdatw1_12_sn_1),
    .bdatw1_13_sp_1(bdatw1_13_sn_1),
    .bdatw1_14_sp_1(bdatw1_14_sn_1),
    .bdatw1_15_sp_1(bdatw1_15_sn_1),
    .bcmd1_0_sp_1(bcmd1_0_sn_1),
    \badr1[1]_0 ,
    bcmd1_lw2__0,
    cch_hit_0,
    bcmd,
    .bcmd1_1_sp_1(bcmd1_1_sn_1),
    bcs_acc_l1_cp,
    .bcmd1_3_sp_1(bcmd1_3_sn_1),
    \bcmd1[2] ,
    E,
    upd_bus_sel_reg_0,
    clk,
    \stat_reg[0]_0 ,
    bcmd_kick1_cp__1,
    \datrh_reg[0] ,
    \bdatr1[31] ,
    bdatr,
    \stat_reg[0]_1 ,
    bdatw1,
    neg_brdy_x_reg_1,
    \bdatw1_c_reg[31] ,
    \bdatw[0] ,
    \stat_reg[2]_0 ,
    \bcmd[3] ,
    cch_hit,
    bcs_acc_2,
    bcs_sdram_n,
    \bcmd[1] ,
    bus_sel_c,
    upd_bus_sel__1,
    \bcmd[1]_0 ,
    \bcmd[1]_1 ,
    bctl_brdy,
    sdc_brdy,
    \bcmd1_c_reg[3] ,
    bcmd1,
    bcs_acc_l1,
    bcs_acc_l1_c,
    badr1,
    badr1_c,
    \datrh_reg[0]_0 ,
    \datrh_reg[0]_1 ,
    neg_brdy_x_reg_2);
  output neg_brdy_x_reg_0;
  output upd_bus_sel1;
  output [23:0]badr1_lw1;
  output [1:0]Q;
  output bcmd_valid1_cp__0;
  output [15:0]bdatr1;
  output [31:0]D;
  output drv_bdatwh;
  output \badr1[1]_0 ;
  output [0:0]bcmd1_lw2__0;
  output cch_hit_0;
  output [0:0]bcmd;
  output bcs_acc_l1_cp;
  output [0:0]\bcmd1[2] ;
  output [0:0]E;
  input upd_bus_sel_reg_0;
  input clk;
  input \stat_reg[0]_0 ;
  input bcmd_kick1_cp__1;
  input \datrh_reg[0] ;
  input [15:0]\bdatr1[31] ;
  input [15:0]bdatr;
  input \stat_reg[0]_1 ;
  input [31:0]bdatw1;
  input neg_brdy_x_reg_1;
  input [31:0]\bdatw1_c_reg[31] ;
  input \bdatw[0] ;
  input \stat_reg[2]_0 ;
  input \bcmd[3] ;
  input cch_hit;
  input bcs_acc_2;
  input bcs_sdram_n;
  input \bcmd[1] ;
  input bus_sel_c;
  input upd_bus_sel__1;
  input \bcmd[1]_0 ;
  input \bcmd[1]_1 ;
  input bctl_brdy;
  input sdc_brdy;
  input [3:0]\bcmd1_c_reg[3] ;
  input [3:0]bcmd1;
  input bcs_acc_l1;
  input bcs_acc_l1_c;
  input [23:0]badr1;
  input [23:0]badr1_c;
  input [0:0]\datrh_reg[0]_0 ;
  input \datrh_reg[0]_1 ;
  input neg_brdy_x_reg_2;
  output badr1_1_sn_1;
  output bdatw1_0_sn_1;
  output bdatw1_1_sn_1;
  output bdatw1_2_sn_1;
  output bdatw1_3_sn_1;
  output bdatw1_4_sn_1;
  output bdatw1_5_sn_1;
  output bdatw1_6_sn_1;
  output bdatw1_7_sn_1;
  output bdatw1_8_sn_1;
  output bdatw1_9_sn_1;
  output bdatw1_10_sn_1;
  output bdatw1_11_sn_1;
  output bdatw1_12_sn_1;
  output bdatw1_13_sn_1;
  output bdatw1_14_sn_1;
  output bdatw1_15_sn_1;
  output bcmd1_0_sn_1;
  output bcmd1_1_sn_1;
  output bcmd1_3_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [23:0]badr1;
  wire \badr1[1]_0 ;
  wire badr1_1_sn_1;
  wire [23:0]badr1_c;
  wire [23:0]badr1_lw1;
  wire \badr[11]_INST_0_i_1_n_0 ;
  wire \badr[11]_INST_0_i_1_n_1 ;
  wire \badr[11]_INST_0_i_1_n_2 ;
  wire \badr[11]_INST_0_i_1_n_3 ;
  wire \badr[11]_INST_0_i_3_n_0 ;
  wire \badr[11]_INST_0_i_4_n_0 ;
  wire \badr[11]_INST_0_i_5_n_0 ;
  wire \badr[11]_INST_0_i_6_n_0 ;
  wire \badr[15]_INST_0_i_1_n_0 ;
  wire \badr[15]_INST_0_i_1_n_1 ;
  wire \badr[15]_INST_0_i_1_n_2 ;
  wire \badr[15]_INST_0_i_1_n_3 ;
  wire \badr[15]_INST_0_i_3_n_0 ;
  wire \badr[15]_INST_0_i_4_n_0 ;
  wire \badr[15]_INST_0_i_5_n_0 ;
  wire \badr[15]_INST_0_i_6_n_0 ;
  wire \badr[19]_INST_0_i_1_n_0 ;
  wire \badr[19]_INST_0_i_1_n_1 ;
  wire \badr[19]_INST_0_i_1_n_2 ;
  wire \badr[19]_INST_0_i_1_n_3 ;
  wire \badr[19]_INST_0_i_3_n_0 ;
  wire \badr[19]_INST_0_i_4_n_0 ;
  wire \badr[19]_INST_0_i_5_n_0 ;
  wire \badr[19]_INST_0_i_6_n_0 ;
  wire \badr[23]_INST_0_i_1_n_1 ;
  wire \badr[23]_INST_0_i_1_n_2 ;
  wire \badr[23]_INST_0_i_1_n_3 ;
  wire \badr[23]_INST_0_i_3_n_0 ;
  wire \badr[23]_INST_0_i_4_n_0 ;
  wire \badr[23]_INST_0_i_5_n_0 ;
  wire \badr[23]_INST_0_i_6_n_0 ;
  wire \badr[3]_INST_0_i_1_n_0 ;
  wire \badr[3]_INST_0_i_1_n_1 ;
  wire \badr[3]_INST_0_i_1_n_2 ;
  wire \badr[3]_INST_0_i_1_n_3 ;
  wire \badr[3]_INST_0_i_3_n_0 ;
  wire \badr[3]_INST_0_i_4_n_0 ;
  wire \badr[3]_INST_0_i_5_n_0 ;
  wire \badr[3]_INST_0_i_6_n_0 ;
  wire \badr[7]_INST_0_i_1_n_0 ;
  wire \badr[7]_INST_0_i_1_n_1 ;
  wire \badr[7]_INST_0_i_1_n_2 ;
  wire \badr[7]_INST_0_i_1_n_3 ;
  wire \badr[7]_INST_0_i_3_n_0 ;
  wire \badr[7]_INST_0_i_4_n_0 ;
  wire \badr[7]_INST_0_i_5_n_0 ;
  wire \badr[7]_INST_0_i_6_n_0 ;
  wire [0:0]bcmd;
  wire [3:0]bcmd1;
  wire [0:0]\bcmd1[2] ;
  wire bcmd1_0_sn_1;
  wire bcmd1_1_sn_1;
  wire bcmd1_3_sn_1;
  wire [3:0]\bcmd1_c_reg[3] ;
  wire [0:0]bcmd1_lw2__0;
  wire \bcmd[1] ;
  wire \bcmd[1]_0 ;
  wire \bcmd[1]_1 ;
  wire \bcmd[3] ;
  wire \bcmd[3]_INST_0_i_7_n_0 ;
  wire bcmd_kick1_cp__1;
  wire bcmd_split1_cp__2;
  wire bcmd_valid1_cp__0;
  wire bcs_acc_2;
  wire bcs_acc_l1;
  wire bcs_acc_l1_c;
  wire bcs_acc_l1_cp;
  wire bcs_sdram_n;
  wire bctl_brdy;
  wire [15:0]bdatr;
  wire [15:0]bdatr1;
  wire [15:0]\bdatr1[31] ;
  wire [31:0]bdatw1;
  wire bdatw1_0_sn_1;
  wire bdatw1_10_sn_1;
  wire bdatw1_11_sn_1;
  wire bdatw1_12_sn_1;
  wire bdatw1_13_sn_1;
  wire bdatw1_14_sn_1;
  wire bdatw1_15_sn_1;
  wire bdatw1_1_sn_1;
  wire bdatw1_2_sn_1;
  wire bdatw1_3_sn_1;
  wire bdatw1_4_sn_1;
  wire bdatw1_5_sn_1;
  wire bdatw1_6_sn_1;
  wire bdatw1_7_sn_1;
  wire bdatw1_8_sn_1;
  wire bdatw1_9_sn_1;
  wire [31:0]\bdatw1_c_reg[31] ;
  wire \bdatw[0] ;
  wire \bdatw[31]_INST_0_i_5_n_0 ;
  wire \bdatw[31]_INST_0_i_6_n_0 ;
  wire bus_sel__0;
  wire bus_sel_c;
  wire cch_hit;
  wire cch_hit_0;
  wire clk;
  wire \datrh_reg[0] ;
  wire [0:0]\datrh_reg[0]_0 ;
  wire \datrh_reg[0]_1 ;
  wire drv_bdatr;
  wire drv_bdatwh;
  wire neg_brdy_x_i_2_n_0;
  wire neg_brdy_x_reg_0;
  wire neg_brdy_x_reg_1;
  wire neg_brdy_x_reg_2;
  wire neg_brdy_x_t;
  wire sdc_brdy;
  wire \stat[0]_i_3__1_n_0 ;
  wire \stat[1]_i_3__0_n_0 ;
  wire \stat[1]_i_4__0_n_0 ;
  wire [2:0]stat_nx;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg_n_0_[2] ;
  wire upd_bus_sel1;
  wire upd_bus_sel__1;
  wire upd_bus_sel_i_2__0_n_0;
  wire upd_bus_sel_i_3__0_n_0;
  wire upd_bus_sel_reg_0;
  wire upd_bus_sel_t;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr1_c[1]_i_1 
       (.I0(badr1[1]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[1]),
        .O(badr1_1_sn_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[11]_INST_0_i_1 
       (.CI(\badr[7]_INST_0_i_1_n_0 ),
        .CO({\badr[11]_INST_0_i_1_n_0 ,\badr[11]_INST_0_i_1_n_1 ,\badr[11]_INST_0_i_1_n_2 ,\badr[11]_INST_0_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(badr1_lw1[11:8]),
        .S({\badr[11]_INST_0_i_3_n_0 ,\badr[11]_INST_0_i_4_n_0 ,\badr[11]_INST_0_i_5_n_0 ,\badr[11]_INST_0_i_6_n_0 }));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[11]_INST_0_i_3 
       (.I0(badr1[11]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[11]),
        .O(\badr[11]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[11]_INST_0_i_4 
       (.I0(badr1[10]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[10]),
        .O(\badr[11]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[11]_INST_0_i_5 
       (.I0(badr1[9]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[9]),
        .O(\badr[11]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[11]_INST_0_i_6 
       (.I0(badr1[8]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[8]),
        .O(\badr[11]_INST_0_i_6_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[15]_INST_0_i_1 
       (.CI(\badr[11]_INST_0_i_1_n_0 ),
        .CO({\badr[15]_INST_0_i_1_n_0 ,\badr[15]_INST_0_i_1_n_1 ,\badr[15]_INST_0_i_1_n_2 ,\badr[15]_INST_0_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(badr1_lw1[15:12]),
        .S({\badr[15]_INST_0_i_3_n_0 ,\badr[15]_INST_0_i_4_n_0 ,\badr[15]_INST_0_i_5_n_0 ,\badr[15]_INST_0_i_6_n_0 }));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[15]_INST_0_i_3 
       (.I0(badr1[15]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[15]),
        .O(\badr[15]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[15]_INST_0_i_4 
       (.I0(badr1[14]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[14]),
        .O(\badr[15]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[15]_INST_0_i_5 
       (.I0(badr1[13]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[13]),
        .O(\badr[15]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[15]_INST_0_i_6 
       (.I0(badr1[12]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[12]),
        .O(\badr[15]_INST_0_i_6_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[19]_INST_0_i_1 
       (.CI(\badr[15]_INST_0_i_1_n_0 ),
        .CO({\badr[19]_INST_0_i_1_n_0 ,\badr[19]_INST_0_i_1_n_1 ,\badr[19]_INST_0_i_1_n_2 ,\badr[19]_INST_0_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(badr1_lw1[19:16]),
        .S({\badr[19]_INST_0_i_3_n_0 ,\badr[19]_INST_0_i_4_n_0 ,\badr[19]_INST_0_i_5_n_0 ,\badr[19]_INST_0_i_6_n_0 }));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[19]_INST_0_i_3 
       (.I0(badr1[19]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[19]),
        .O(\badr[19]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[19]_INST_0_i_4 
       (.I0(badr1[18]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[18]),
        .O(\badr[19]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[19]_INST_0_i_5 
       (.I0(badr1[17]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[17]),
        .O(\badr[19]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[19]_INST_0_i_6 
       (.I0(badr1[16]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[16]),
        .O(\badr[19]_INST_0_i_6_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[23]_INST_0_i_1 
       (.CI(\badr[19]_INST_0_i_1_n_0 ),
        .CO({\badr[23]_INST_0_i_1_n_1 ,\badr[23]_INST_0_i_1_n_2 ,\badr[23]_INST_0_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(badr1_lw1[23:20]),
        .S({\badr[23]_INST_0_i_3_n_0 ,\badr[23]_INST_0_i_4_n_0 ,\badr[23]_INST_0_i_5_n_0 ,\badr[23]_INST_0_i_6_n_0 }));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[23]_INST_0_i_3 
       (.I0(badr1[23]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[23]),
        .O(\badr[23]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[23]_INST_0_i_4 
       (.I0(badr1[22]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[22]),
        .O(\badr[23]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[23]_INST_0_i_5 
       (.I0(badr1[21]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[21]),
        .O(\badr[23]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[23]_INST_0_i_6 
       (.I0(badr1[20]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[20]),
        .O(\badr[23]_INST_0_i_6_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[3]_INST_0_i_1 
       (.CI(\<const0> ),
        .CO({\badr[3]_INST_0_i_1_n_0 ,\badr[3]_INST_0_i_1_n_1 ,\badr[3]_INST_0_i_1_n_2 ,\badr[3]_INST_0_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,badr1_1_sn_1,\<const0> }),
        .O(badr1_lw1[3:0]),
        .S({\badr[3]_INST_0_i_3_n_0 ,\badr[3]_INST_0_i_4_n_0 ,\badr[3]_INST_0_i_5_n_0 ,\badr[3]_INST_0_i_6_n_0 }));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[3]_INST_0_i_3 
       (.I0(badr1[3]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[3]),
        .O(\badr[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[3]_INST_0_i_4 
       (.I0(badr1[2]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[2]),
        .O(\badr[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA5AAAAAAAA969696)) 
    \badr[3]_INST_0_i_5 
       (.I0(badr1_1_sn_1),
        .I1(Q[1]),
        .I2(\stat_reg_n_0_[2] ),
        .I3(bctl_brdy),
        .I4(sdc_brdy),
        .I5(Q[0]),
        .O(\badr[3]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[3]_INST_0_i_6 
       (.I0(badr1[0]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[0]),
        .O(\badr[3]_INST_0_i_6_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[7]_INST_0_i_1 
       (.CI(\badr[3]_INST_0_i_1_n_0 ),
        .CO({\badr[7]_INST_0_i_1_n_0 ,\badr[7]_INST_0_i_1_n_1 ,\badr[7]_INST_0_i_1_n_2 ,\badr[7]_INST_0_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(badr1_lw1[7:4]),
        .S({\badr[7]_INST_0_i_3_n_0 ,\badr[7]_INST_0_i_4_n_0 ,\badr[7]_INST_0_i_5_n_0 ,\badr[7]_INST_0_i_6_n_0 }));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[7]_INST_0_i_3 
       (.I0(badr1[7]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[7]),
        .O(\badr[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[7]_INST_0_i_4 
       (.I0(badr1[6]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[6]),
        .O(\badr[7]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[7]_INST_0_i_5 
       (.I0(badr1[5]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[5]),
        .O(\badr[7]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[7]_INST_0_i_6 
       (.I0(badr1[4]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1_c[4]),
        .O(\badr[7]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bcmd1_c[0]_i_1 
       (.I0(bcmd1[0]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bcmd1_c_reg[3] [0]),
        .O(bcmd1_0_sn_1));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bcmd1_c[2]_i_1 
       (.I0(bcmd1[2]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bcmd1_c_reg[3] [2]),
        .O(\bcmd1[2] ));
  LUT6 #(
    .INIT(64'hCCCAAACA00000000)) 
    \bcmd[1]_INST_0 
       (.I0(bcmd1_1_sn_1),
        .I1(\bcmd[1] ),
        .I2(bus_sel_c),
        .I3(upd_bus_sel__1),
        .I4(bus_sel__0),
        .I5(\datrh_reg[0] ),
        .O(bcmd));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bcmd[1]_INST_0_i_1 
       (.I0(bcmd1[1]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bcmd1_c_reg[3] [1]),
        .O(bcmd1_1_sn_1));
  LUT5 #(
    .INIT(32'h909F9F90)) 
    \bcmd[1]_INST_0_i_3 
       (.I0(bcmd1_1_sn_1),
        .I1(bcmd1_0_sn_1),
        .I2(\bcmd[1]_0 ),
        .I3(\bcmd[1]_1 ),
        .I4(\bcmd[1] ),
        .O(bus_sel__0));
  LUT6 #(
    .INIT(64'hC4C4F5C5C4C4C5C5)) 
    \bcmd[3]_INST_0_i_1 
       (.I0(\bcmd[3]_INST_0_i_7_n_0 ),
        .I1(\stat_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(\datrh_reg[0] ),
        .I4(Q[0]),
        .I5(\bcmd[3] ),
        .O(bcmd1_lw2__0));
  LUT6 #(
    .INIT(64'h0BB0000000000000)) 
    \bcmd[3]_INST_0_i_11 
       (.I0(badr1_1_sn_1),
        .I1(bcs_acc_l1_cp),
        .I2(bcmd1_1_sn_1),
        .I3(bcmd1_0_sn_1),
        .I4(bcmd1_3_sn_1),
        .I5(\stat_reg[0]_0 ),
        .O(\badr1[1]_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bcmd[3]_INST_0_i_3 
       (.I0(bcmd1[3]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bcmd1_c_reg[3] [3]),
        .O(bcmd1_3_sn_1));
  LUT6 #(
    .INIT(64'hF0A0E4E4A0A0E4E4)) 
    \bcmd[3]_INST_0_i_7 
       (.I0(Q[0]),
        .I1(\stat_reg_n_0_[2] ),
        .I2(\badr1[1]_0 ),
        .I3(bcmd_kick1_cp__1),
        .I4(\datrh_reg[0] ),
        .I5(bcmd_valid1_cp__0),
        .O(\bcmd[3]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    bcs_acc_l1_c_i_1
       (.I0(bcs_acc_l1),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bcs_acc_l1_c),
        .O(bcs_acc_l1_cp));
  LUT4 #(
    .INIT(16'h0F04)) 
    bctl_brdy_i_2
       (.I0(bcmd),
        .I1(cch_hit),
        .I2(bcs_acc_2),
        .I3(bcs_sdram_n),
        .O(cch_hit_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[16]_INST_0 
       (.I0(\bdatr1[31] [0]),
        .I1(drv_bdatr),
        .I2(bdatr[0]),
        .O(bdatr1[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[17]_INST_0 
       (.I0(\bdatr1[31] [1]),
        .I1(drv_bdatr),
        .I2(bdatr[1]),
        .O(bdatr1[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[18]_INST_0 
       (.I0(\bdatr1[31] [2]),
        .I1(drv_bdatr),
        .I2(bdatr[2]),
        .O(bdatr1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[19]_INST_0 
       (.I0(\bdatr1[31] [3]),
        .I1(drv_bdatr),
        .I2(bdatr[3]),
        .O(bdatr1[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[20]_INST_0 
       (.I0(\bdatr1[31] [4]),
        .I1(drv_bdatr),
        .I2(bdatr[4]),
        .O(bdatr1[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[21]_INST_0 
       (.I0(\bdatr1[31] [5]),
        .I1(drv_bdatr),
        .I2(bdatr[5]),
        .O(bdatr1[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[22]_INST_0 
       (.I0(\bdatr1[31] [6]),
        .I1(drv_bdatr),
        .I2(bdatr[6]),
        .O(bdatr1[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[23]_INST_0 
       (.I0(\bdatr1[31] [7]),
        .I1(drv_bdatr),
        .I2(bdatr[7]),
        .O(bdatr1[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[24]_INST_0 
       (.I0(\bdatr1[31] [8]),
        .I1(drv_bdatr),
        .I2(bdatr[8]),
        .O(bdatr1[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[25]_INST_0 
       (.I0(\bdatr1[31] [9]),
        .I1(drv_bdatr),
        .I2(bdatr[9]),
        .O(bdatr1[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[26]_INST_0 
       (.I0(\bdatr1[31] [10]),
        .I1(drv_bdatr),
        .I2(bdatr[10]),
        .O(bdatr1[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[27]_INST_0 
       (.I0(\bdatr1[31] [11]),
        .I1(drv_bdatr),
        .I2(bdatr[11]),
        .O(bdatr1[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[28]_INST_0 
       (.I0(\bdatr1[31] [12]),
        .I1(drv_bdatr),
        .I2(bdatr[12]),
        .O(bdatr1[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[29]_INST_0 
       (.I0(\bdatr1[31] [13]),
        .I1(drv_bdatr),
        .I2(bdatr[13]),
        .O(bdatr1[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[30]_INST_0 
       (.I0(\bdatr1[31] [14]),
        .I1(drv_bdatr),
        .I2(bdatr[14]),
        .O(bdatr1[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[31]_INST_0 
       (.I0(\bdatr1[31] [15]),
        .I1(drv_bdatr),
        .I2(bdatr[15]),
        .O(bdatr1[15]));
  LUT6 #(
    .INIT(64'h0404040404000404)) 
    \bdatr1[31]_INST_0_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\stat_reg_n_0_[2] ),
        .I3(\stat_reg[0]_0 ),
        .I4(bcmd_valid1_cp__0),
        .I5(\stat_reg[0]_1 ),
        .O(drv_bdatr));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[0]_i_1 
       (.I0(bdatw1[0]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[10]_i_1 
       (.I0(bdatw1[10]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[11]_i_1 
       (.I0(bdatw1[11]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[12]_i_1 
       (.I0(bdatw1[12]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[13]_i_1 
       (.I0(bdatw1[13]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[14]_i_1 
       (.I0(bdatw1[14]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[15]_i_1 
       (.I0(bdatw1[15]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[16]_i_1 
       (.I0(bdatw1[16]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [16]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[17]_i_1 
       (.I0(bdatw1[17]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [17]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[18]_i_1 
       (.I0(bdatw1[18]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [18]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[19]_i_1 
       (.I0(bdatw1[19]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [19]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[1]_i_1 
       (.I0(bdatw1[1]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[20]_i_1 
       (.I0(bdatw1[20]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [20]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[21]_i_1 
       (.I0(bdatw1[21]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [21]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[22]_i_1 
       (.I0(bdatw1[22]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [22]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[23]_i_1 
       (.I0(bdatw1[23]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [23]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[24]_i_1 
       (.I0(bdatw1[24]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [24]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[25]_i_1 
       (.I0(bdatw1[25]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [25]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[26]_i_1 
       (.I0(bdatw1[26]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [26]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[27]_i_1 
       (.I0(bdatw1[27]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [27]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[28]_i_1 
       (.I0(bdatw1[28]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [28]),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[29]_i_1 
       (.I0(bdatw1[29]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [29]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[2]_i_1 
       (.I0(bdatw1[2]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[30]_i_1 
       (.I0(bdatw1[30]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [30]),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[31]_i_1 
       (.I0(bdatw1[31]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [31]),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[3]_i_1 
       (.I0(bdatw1[3]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[4]_i_1 
       (.I0(bdatw1[4]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[5]_i_1 
       (.I0(bdatw1[5]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[6]_i_1 
       (.I0(bdatw1[6]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[7]_i_1 
       (.I0(bdatw1[7]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[8]_i_1 
       (.I0(bdatw1[8]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw1_c[9]_i_1 
       (.I0(bdatw1[9]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw1_c_reg[31] [9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFF000000B8B80000)) 
    \bdatw[0]_INST_0_i_1 
       (.I0(bdatw1[0]),
        .I1(neg_brdy_x_reg_1),
        .I2(\bdatw1_c_reg[31] [0]),
        .I3(D[16]),
        .I4(\bdatw[0] ),
        .I5(drv_bdatwh),
        .O(bdatw1_0_sn_1));
  LUT6 #(
    .INIT(64'hFF000000B8B80000)) 
    \bdatw[10]_INST_0_i_1 
       (.I0(bdatw1[10]),
        .I1(neg_brdy_x_reg_1),
        .I2(\bdatw1_c_reg[31] [10]),
        .I3(D[26]),
        .I4(\bdatw[0] ),
        .I5(drv_bdatwh),
        .O(bdatw1_10_sn_1));
  LUT6 #(
    .INIT(64'hFF000000B8B80000)) 
    \bdatw[11]_INST_0_i_1 
       (.I0(bdatw1[11]),
        .I1(neg_brdy_x_reg_1),
        .I2(\bdatw1_c_reg[31] [11]),
        .I3(D[27]),
        .I4(\bdatw[0] ),
        .I5(drv_bdatwh),
        .O(bdatw1_11_sn_1));
  LUT6 #(
    .INIT(64'hFF000000B8B80000)) 
    \bdatw[12]_INST_0_i_1 
       (.I0(bdatw1[12]),
        .I1(neg_brdy_x_reg_1),
        .I2(\bdatw1_c_reg[31] [12]),
        .I3(D[28]),
        .I4(\bdatw[0] ),
        .I5(drv_bdatwh),
        .O(bdatw1_12_sn_1));
  LUT6 #(
    .INIT(64'hFF000000B8B80000)) 
    \bdatw[13]_INST_0_i_1 
       (.I0(bdatw1[13]),
        .I1(neg_brdy_x_reg_1),
        .I2(\bdatw1_c_reg[31] [13]),
        .I3(D[29]),
        .I4(\bdatw[0] ),
        .I5(drv_bdatwh),
        .O(bdatw1_13_sn_1));
  LUT6 #(
    .INIT(64'hFF000000B8B80000)) 
    \bdatw[14]_INST_0_i_1 
       (.I0(bdatw1[14]),
        .I1(neg_brdy_x_reg_1),
        .I2(\bdatw1_c_reg[31] [14]),
        .I3(D[30]),
        .I4(\bdatw[0] ),
        .I5(drv_bdatwh),
        .O(bdatw1_14_sn_1));
  LUT6 #(
    .INIT(64'hFF000000B8B80000)) 
    \bdatw[15]_INST_0_i_2 
       (.I0(bdatw1[15]),
        .I1(neg_brdy_x_reg_1),
        .I2(\bdatw1_c_reg[31] [15]),
        .I3(D[31]),
        .I4(\bdatw[0] ),
        .I5(drv_bdatwh),
        .O(bdatw1_15_sn_1));
  LUT6 #(
    .INIT(64'hFF000000B8B80000)) 
    \bdatw[1]_INST_0_i_1 
       (.I0(bdatw1[1]),
        .I1(neg_brdy_x_reg_1),
        .I2(\bdatw1_c_reg[31] [1]),
        .I3(D[17]),
        .I4(\bdatw[0] ),
        .I5(drv_bdatwh),
        .O(bdatw1_1_sn_1));
  LUT6 #(
    .INIT(64'hFF000000B8B80000)) 
    \bdatw[2]_INST_0_i_1 
       (.I0(bdatw1[2]),
        .I1(neg_brdy_x_reg_1),
        .I2(\bdatw1_c_reg[31] [2]),
        .I3(D[18]),
        .I4(\bdatw[0] ),
        .I5(drv_bdatwh),
        .O(bdatw1_2_sn_1));
  LUT6 #(
    .INIT(64'h4040404044404040)) 
    \bdatw[31]_INST_0_i_4 
       (.I0(bcmd1_0_sn_1),
        .I1(\badr1[1]_0 ),
        .I2(\bdatw[31]_INST_0_i_5_n_0 ),
        .I3(bcmd_valid1_cp__0),
        .I4(\bdatw[31]_INST_0_i_6_n_0 ),
        .I5(\stat_reg[0]_1 ),
        .O(drv_bdatwh));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatw[31]_INST_0_i_5 
       (.I0(\stat_reg_n_0_[2] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\bdatw[31]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \bdatw[31]_INST_0_i_6 
       (.I0(Q[1]),
        .I1(\stat_reg_n_0_[2] ),
        .I2(Q[0]),
        .O(\bdatw[31]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000B8B80000)) 
    \bdatw[3]_INST_0_i_1 
       (.I0(bdatw1[3]),
        .I1(neg_brdy_x_reg_1),
        .I2(\bdatw1_c_reg[31] [3]),
        .I3(D[19]),
        .I4(\bdatw[0] ),
        .I5(drv_bdatwh),
        .O(bdatw1_3_sn_1));
  LUT6 #(
    .INIT(64'hFF000000B8B80000)) 
    \bdatw[4]_INST_0_i_1 
       (.I0(bdatw1[4]),
        .I1(neg_brdy_x_reg_1),
        .I2(\bdatw1_c_reg[31] [4]),
        .I3(D[20]),
        .I4(\bdatw[0] ),
        .I5(drv_bdatwh),
        .O(bdatw1_4_sn_1));
  LUT6 #(
    .INIT(64'hFF000000B8B80000)) 
    \bdatw[5]_INST_0_i_1 
       (.I0(bdatw1[5]),
        .I1(neg_brdy_x_reg_1),
        .I2(\bdatw1_c_reg[31] [5]),
        .I3(D[21]),
        .I4(\bdatw[0] ),
        .I5(drv_bdatwh),
        .O(bdatw1_5_sn_1));
  LUT6 #(
    .INIT(64'hFF000000B8B80000)) 
    \bdatw[6]_INST_0_i_1 
       (.I0(bdatw1[6]),
        .I1(neg_brdy_x_reg_1),
        .I2(\bdatw1_c_reg[31] [6]),
        .I3(D[22]),
        .I4(\bdatw[0] ),
        .I5(drv_bdatwh),
        .O(bdatw1_6_sn_1));
  LUT6 #(
    .INIT(64'hFF000000B8B80000)) 
    \bdatw[7]_INST_0_i_1 
       (.I0(bdatw1[7]),
        .I1(neg_brdy_x_reg_1),
        .I2(\bdatw1_c_reg[31] [7]),
        .I3(D[23]),
        .I4(\bdatw[0] ),
        .I5(drv_bdatwh),
        .O(bdatw1_7_sn_1));
  LUT6 #(
    .INIT(64'hFF000000B8B80000)) 
    \bdatw[8]_INST_0_i_1 
       (.I0(bdatw1[8]),
        .I1(neg_brdy_x_reg_1),
        .I2(\bdatw1_c_reg[31] [8]),
        .I3(D[24]),
        .I4(\bdatw[0] ),
        .I5(drv_bdatwh),
        .O(bdatw1_8_sn_1));
  LUT6 #(
    .INIT(64'hFF000000B8B80000)) 
    \bdatw[9]_INST_0_i_1 
       (.I0(bdatw1[9]),
        .I1(neg_brdy_x_reg_1),
        .I2(\bdatw1_c_reg[31] [9]),
        .I3(D[25]),
        .I4(\bdatw[0] ),
        .I5(drv_bdatwh),
        .O(bdatw1_9_sn_1));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    bmst_INST_0_i_1
       (.I0(\bcmd1_c_reg[3] [0]),
        .I1(bcmd1[0]),
        .I2(\bcmd1_c_reg[3] [1]),
        .I3(neg_brdy_x_reg_1),
        .I4(bcmd1[1]),
        .O(bcmd_valid1_cp__0));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \datrh[15]_i_1 
       (.I0(Q[1]),
        .I1(\stat_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(\datrh_reg[0] ),
        .I4(\datrh_reg[0]_0 ),
        .I5(\datrh_reg[0]_1 ),
        .O(E));
  LUT6 #(
    .INIT(64'hEEEFFFAFEEFFAAFF)) 
    neg_brdy_x_i_1__0
       (.I0(neg_brdy_x_i_2_n_0),
        .I1(Q[1]),
        .I2(bcmd_valid1_cp__0),
        .I3(Q[0]),
        .I4(\stat_reg_n_0_[2] ),
        .I5(\datrh_reg[0] ),
        .O(neg_brdy_x_t));
  LUT5 #(
    .INIT(32'h44400000)) 
    neg_brdy_x_i_2
       (.I0(bcmd_split1_cp__2),
        .I1(neg_brdy_x_reg_2),
        .I2(bcmd_kick1_cp__1),
        .I3(Q[0]),
        .I4(\datrh_reg[0] ),
        .O(neg_brdy_x_i_2_n_0));
  FDSE neg_brdy_x_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(neg_brdy_x_t),
        .Q(neg_brdy_x_reg_0),
        .S(upd_bus_sel_reg_0));
  LUT6 #(
    .INIT(64'h00000000FFFF2AFF)) 
    \stat[0]_i_1__0 
       (.I0(\stat_reg[0]_1 ),
        .I1(\stat_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(\stat_reg[0]_0 ),
        .I4(bcmd_split1_cp__2),
        .I5(\stat[0]_i_3__1_n_0 ),
        .O(stat_nx[0]));
  LUT5 #(
    .INIT(32'h28280028)) 
    \stat[0]_i_2__0 
       (.I0(bcmd1_3_sn_1),
        .I1(bcmd1_0_sn_1),
        .I2(bcmd1_1_sn_1),
        .I3(bcs_acc_l1_cp),
        .I4(badr1_1_sn_1),
        .O(bcmd_split1_cp__2));
  LUT6 #(
    .INIT(64'hFFFF155595D595D5)) 
    \stat[0]_i_3__1 
       (.I0(Q[0]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(bcmd_valid1_cp__0),
        .I4(Q[1]),
        .I5(\stat_reg_n_0_[2] ),
        .O(\stat[0]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0414140404)) 
    \stat[1]_i_1__0 
       (.I0(\stat_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(\datrh_reg[0] ),
        .I3(bcmd_kick1_cp__1),
        .I4(Q[0]),
        .I5(\stat[1]_i_3__0_n_0 ),
        .O(stat_nx[1]));
  LUT6 #(
    .INIT(64'h0008880800000000)) 
    \stat[1]_i_3__0 
       (.I0(bcmd_split1_cp__2),
        .I1(\stat_reg[0]_0 ),
        .I2(\bcmd1_c_reg[3] [0]),
        .I3(neg_brdy_x_reg_1),
        .I4(bcmd1[0]),
        .I5(\stat[1]_i_4__0_n_0 ),
        .O(\stat[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h00FF008000008080)) 
    \stat[1]_i_4__0 
       (.I0(bcmd_valid1_cp__0),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\stat_reg_n_0_[2] ),
        .O(\stat[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h00E0E04000F00000)) 
    \stat[2]_i_1__0 
       (.I0(Q[0]),
        .I1(bcmd_valid1_cp__0),
        .I2(\stat_reg[2]_0 ),
        .I3(Q[1]),
        .I4(\stat_reg_n_0_[2] ),
        .I5(\datrh_reg[0] ),
        .O(stat_nx[2]));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[0]),
        .Q(Q[0]),
        .R(upd_bus_sel_reg_0));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[1]),
        .Q(Q[1]),
        .R(upd_bus_sel_reg_0));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[2]),
        .Q(\stat_reg_n_0_[2] ),
        .R(upd_bus_sel_reg_0));
  LUT6 #(
    .INIT(64'hAAAAAAAABAAAAAAA)) 
    upd_bus_sel_i_1__0
       (.I0(upd_bus_sel_i_2__0_n_0),
        .I1(Q[0]),
        .I2(\stat_reg[0]_0 ),
        .I3(bcmd_split1_cp__2),
        .I4(bcmd_kick1_cp__1),
        .I5(upd_bus_sel_i_3__0_n_0),
        .O(upd_bus_sel_t));
  LUT6 #(
    .INIT(64'h00770000F0770000)) 
    upd_bus_sel_i_2__0
       (.I0(bctl_brdy),
        .I1(sdc_brdy),
        .I2(\badr1[1]_0 ),
        .I3(\stat_reg_n_0_[2] ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(upd_bus_sel_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hFF7F7F7F)) 
    upd_bus_sel_i_3__0
       (.I0(bctl_brdy),
        .I1(sdc_brdy),
        .I2(bcmd_valid1_cp__0),
        .I3(Q[1]),
        .I4(\stat_reg_n_0_[2] ),
        .O(upd_bus_sel_i_3__0_n_0));
  FDSE upd_bus_sel_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(upd_bus_sel_t),
        .Q(upd_bus_sel1),
        .S(upd_bus_sel_reg_0));
endmodule

(* ORIG_REF_NAME = "busc_long_fsm" *) 
module busc_long_fsm_0
   (neg_brdy_x_reg_0,
    rst_n_0,
    D,
    Q,
    bdatw,
    \bdatw2[31] ,
    .bcmd2_0_sp_1(bcmd2_0_sn_1),
    bcmd,
    bus_sel_c_reg,
    .bcmd2_3_sp_1(bcmd2_3_sn_1),
    upd_bus_sel__1,
    .bcmd2_1_sp_1(bcmd2_1_sn_1),
    \bcmd2[2] ,
    bdatr2,
    rst_n_1,
    neg_brdy_x_reg_1,
    bcmd_kick1_cp__1,
    bctl_brdy_reg,
    last_sel_cp,
    last_sel_reg,
    badr,
    bus_sel_c_reg_0,
    bmst,
    \stat_reg[2]_0 ,
    clk,
    .bcmd_0_sp_1(bcmd_0_sn_1),
    \stat_reg[2]_1 ,
    \bcmd2_c_reg[3] ,
    bus_sel_c_reg_1,
    bcmd2,
    neg_brdy_x_reg_2,
    bdatw1,
    \bdatw[31] ,
    bcmd1_lw2__0,
    \bcmd[3] ,
    bcmd_valid1_cp__0,
    last_sel_reg_0,
    last_sel_c,
    bcs_acc_l2,
    sdc_brdy,
    bctl_brdy,
    bcmd1,
    \bcmd[2] ,
    \bdatr2[31] ,
    bdatr,
    rst_n,
    drv_bdatwh,
    \stat_reg[2]_2 ,
    \bcmd[3]_INST_0_i_1 ,
    badr1_lw1,
    bctl_brdy_reg_0,
    bus_sel_c,
    bcs_acc_l2_c,
    badr2_c,
    badr2,
    bdatw2,
    \bdatw2_c_reg[31] ,
    upd_bus_sel1,
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
    .bdatw_0_sp_1(bdatw_0_sn_1));
  output neg_brdy_x_reg_0;
  output rst_n_0;
  output [0:0]D;
  output [0:0]Q;
  output [31:0]bdatw;
  output [31:0]\bdatw2[31] ;
  output [2:0]bcmd;
  output bus_sel_c_reg;
  output upd_bus_sel__1;
  output [0:0]\bcmd2[2] ;
  output [15:0]bdatr2;
  output rst_n_1;
  output neg_brdy_x_reg_1;
  output bcmd_kick1_cp__1;
  output bctl_brdy_reg;
  output last_sel_cp;
  output last_sel_reg;
  output [23:0]badr;
  output bus_sel_c_reg_0;
  output bmst;
  output \stat_reg[2]_0 ;
  input clk;
  input \stat_reg[2]_1 ;
  input [3:0]\bcmd2_c_reg[3] ;
  input bus_sel_c_reg_1;
  input [3:0]bcmd2;
  input neg_brdy_x_reg_2;
  input [15:0]bdatw1;
  input [15:0]\bdatw[31] ;
  input [0:0]bcmd1_lw2__0;
  input [2:0]\bcmd[3] ;
  input bcmd_valid1_cp__0;
  input last_sel_reg_0;
  input last_sel_c;
  input bcs_acc_l2;
  input sdc_brdy;
  input bctl_brdy;
  input [1:0]bcmd1;
  input [1:0]\bcmd[2] ;
  input [15:0]\bdatr2[31] ;
  input [15:0]bdatr;
  input rst_n;
  input drv_bdatwh;
  input [1:0]\stat_reg[2]_2 ;
  input \bcmd[3]_INST_0_i_1 ;
  input [23:0]badr1_lw1;
  input [0:0]bctl_brdy_reg_0;
  input bus_sel_c;
  input bcs_acc_l2_c;
  input [23:0]badr2_c;
  input [23:0]badr2;
  input [31:0]bdatw2;
  input [31:0]\bdatw2_c_reg[31] ;
  input upd_bus_sel1;
  output bcmd2_0_sn_1;
  output bcmd2_3_sn_1;
  output bcmd2_1_sn_1;
  input bcmd_0_sn_1;
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
  wire [0:0]D;
  wire [0:0]Q;
  wire [23:0]badr;
  wire [23:0]badr1_lw1;
  wire [23:0]badr2;
  wire [23:0]badr2_c;
  wire [23:0]badr2_lw1;
  wire \badr[11]_INST_0_i_10_n_0 ;
  wire \badr[11]_INST_0_i_2_n_0 ;
  wire \badr[11]_INST_0_i_2_n_1 ;
  wire \badr[11]_INST_0_i_2_n_2 ;
  wire \badr[11]_INST_0_i_2_n_3 ;
  wire \badr[11]_INST_0_i_7_n_0 ;
  wire \badr[11]_INST_0_i_8_n_0 ;
  wire \badr[11]_INST_0_i_9_n_0 ;
  wire \badr[15]_INST_0_i_10_n_0 ;
  wire \badr[15]_INST_0_i_2_n_0 ;
  wire \badr[15]_INST_0_i_2_n_1 ;
  wire \badr[15]_INST_0_i_2_n_2 ;
  wire \badr[15]_INST_0_i_2_n_3 ;
  wire \badr[15]_INST_0_i_7_n_0 ;
  wire \badr[15]_INST_0_i_8_n_0 ;
  wire \badr[15]_INST_0_i_9_n_0 ;
  wire \badr[19]_INST_0_i_10_n_0 ;
  wire \badr[19]_INST_0_i_2_n_0 ;
  wire \badr[19]_INST_0_i_2_n_1 ;
  wire \badr[19]_INST_0_i_2_n_2 ;
  wire \badr[19]_INST_0_i_2_n_3 ;
  wire \badr[19]_INST_0_i_7_n_0 ;
  wire \badr[19]_INST_0_i_8_n_0 ;
  wire \badr[19]_INST_0_i_9_n_0 ;
  wire \badr[23]_INST_0_i_10_n_0 ;
  wire \badr[23]_INST_0_i_2_n_1 ;
  wire \badr[23]_INST_0_i_2_n_2 ;
  wire \badr[23]_INST_0_i_2_n_3 ;
  wire \badr[23]_INST_0_i_7_n_0 ;
  wire \badr[23]_INST_0_i_8_n_0 ;
  wire \badr[23]_INST_0_i_9_n_0 ;
  wire \badr[3]_INST_0_i_10_n_0 ;
  wire \badr[3]_INST_0_i_2_n_0 ;
  wire \badr[3]_INST_0_i_2_n_1 ;
  wire \badr[3]_INST_0_i_2_n_2 ;
  wire \badr[3]_INST_0_i_2_n_3 ;
  wire \badr[3]_INST_0_i_7_n_0 ;
  wire \badr[3]_INST_0_i_8_n_0 ;
  wire \badr[3]_INST_0_i_9_n_0 ;
  wire \badr[7]_INST_0_i_10_n_0 ;
  wire \badr[7]_INST_0_i_2_n_0 ;
  wire \badr[7]_INST_0_i_2_n_1 ;
  wire \badr[7]_INST_0_i_2_n_2 ;
  wire \badr[7]_INST_0_i_2_n_3 ;
  wire \badr[7]_INST_0_i_7_n_0 ;
  wire \badr[7]_INST_0_i_8_n_0 ;
  wire \badr[7]_INST_0_i_9_n_0 ;
  wire [2:0]bcmd;
  wire [1:0]bcmd1;
  wire [0:0]bcmd1_lw2__0;
  wire [3:0]bcmd2;
  wire [0:0]\bcmd2[2] ;
  wire bcmd2_0_sn_1;
  wire bcmd2_1_sn_1;
  wire bcmd2_3_sn_1;
  wire [3:0]\bcmd2_c_reg[3] ;
  wire [3:3]bcmd2_lw2__0;
  wire [1:0]\bcmd[2] ;
  wire [2:0]\bcmd[3] ;
  wire \bcmd[3]_INST_0_i_1 ;
  wire \bcmd[3]_INST_0_i_10_n_0 ;
  wire \bcmd[3]_INST_0_i_5_n_0 ;
  wire \bcmd[3]_INST_0_i_9_n_0 ;
  wire bcmd_0_sn_1;
  wire bcmd_kick1_cp__1;
  wire bcmd_kick2_cp__1;
  wire bcmd_split2_cp__2;
  wire bcmd_valid1_cp__0;
  wire bcmd_valid2_cp__0;
  wire bcs_acc_l2;
  wire bcs_acc_l2_c;
  wire bctl_brdy;
  wire bctl_brdy_reg;
  wire [0:0]bctl_brdy_reg_0;
  wire [15:0]bdatr;
  wire [15:0]bdatr2;
  wire [15:0]\bdatr2[31] ;
  wire [31:0]bdatw;
  wire [15:0]bdatw1;
  wire [31:0]bdatw2;
  wire [31:0]\bdatw2[31] ;
  wire [31:0]\bdatw2_c_reg[31] ;
  wire \bdatw[15]_INST_0_i_1_n_0 ;
  wire \bdatw[15]_INST_0_i_4_n_0 ;
  wire \bdatw[15]_INST_0_i_5_n_0 ;
  wire \bdatw[15]_INST_0_i_6_n_0 ;
  wire \bdatw[15]_INST_0_i_7_n_0 ;
  wire \bdatw[15]_INST_0_i_8_n_0 ;
  wire \bdatw[15]_INST_0_i_9_n_0 ;
  wire [15:0]\bdatw[31] ;
  wire \bdatw[31]_INST_0_i_1_n_0 ;
  wire \bdatw[31]_INST_0_i_3_n_0 ;
  wire bdatw_0_sn_1;
  wire bdatw_10_sn_1;
  wire bdatw_11_sn_1;
  wire bdatw_12_sn_1;
  wire bdatw_13_sn_1;
  wire bdatw_14_sn_1;
  wire bdatw_15_sn_1;
  wire bdatw_1_sn_1;
  wire bdatw_2_sn_1;
  wire bdatw_3_sn_1;
  wire bdatw_4_sn_1;
  wire bdatw_5_sn_1;
  wire bdatw_6_sn_1;
  wire bdatw_7_sn_1;
  wire bdatw_8_sn_1;
  wire bdatw_9_sn_1;
  wire bmst;
  wire bus_sel_c;
  wire bus_sel_c_reg;
  wire bus_sel_c_reg_0;
  wire bus_sel_c_reg_1;
  wire clk;
  wire drv_bdatr__0;
  wire drv_bdatwh;
  wire last_sel_c;
  wire last_sel_cp;
  wire last_sel_reg;
  wire last_sel_reg_0;
  wire neg_brdy_x_i_2__0_n_0;
  wire neg_brdy_x_reg_0;
  wire neg_brdy_x_reg_1;
  wire neg_brdy_x_reg_2;
  wire neg_brdy_x_t;
  wire rst_n;
  wire rst_n_0;
  wire rst_n_1;
  wire sdc_brdy;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_4_n_0 ;
  wire \stat[2]_i_2__0_n_0 ;
  wire [2:0]stat_nx;
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire [1:0]\stat_reg[2]_2 ;
  wire \stat_reg_n_0_[0] ;
  wire \stat_reg_n_0_[2] ;
  wire upd_bus_sel1;
  wire upd_bus_sel2;
  wire upd_bus_sel__1;
  wire upd_bus_sel_i_2_n_0;
  wire upd_bus_sel_i_3_n_0;
  wire upd_bus_sel_t;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr2_c[1]_i_1 
       (.I0(badr2[1]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[1]),
        .O(D));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0 
       (.I0(badr1_lw1[0]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[0]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0 
       (.I0(badr1_lw1[10]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[10]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0 
       (.I0(badr1_lw1[11]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[11]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[11]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[11]_INST_0_i_10 
       (.I0(badr2[8]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[8]),
        .O(\badr[11]_INST_0_i_10_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[11]_INST_0_i_2 
       (.CI(\badr[7]_INST_0_i_2_n_0 ),
        .CO({\badr[11]_INST_0_i_2_n_0 ,\badr[11]_INST_0_i_2_n_1 ,\badr[11]_INST_0_i_2_n_2 ,\badr[11]_INST_0_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(badr2_lw1[11:8]),
        .S({\badr[11]_INST_0_i_7_n_0 ,\badr[11]_INST_0_i_8_n_0 ,\badr[11]_INST_0_i_9_n_0 ,\badr[11]_INST_0_i_10_n_0 }));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[11]_INST_0_i_7 
       (.I0(badr2[11]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[11]),
        .O(\badr[11]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[11]_INST_0_i_8 
       (.I0(badr2[10]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[10]),
        .O(\badr[11]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[11]_INST_0_i_9 
       (.I0(badr2[9]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[9]),
        .O(\badr[11]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0 
       (.I0(badr1_lw1[12]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[12]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0 
       (.I0(badr1_lw1[13]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[13]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0 
       (.I0(badr1_lw1[14]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[14]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0 
       (.I0(badr1_lw1[15]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[15]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[15]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[15]_INST_0_i_10 
       (.I0(badr2[12]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[12]),
        .O(\badr[15]_INST_0_i_10_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[15]_INST_0_i_2 
       (.CI(\badr[11]_INST_0_i_2_n_0 ),
        .CO({\badr[15]_INST_0_i_2_n_0 ,\badr[15]_INST_0_i_2_n_1 ,\badr[15]_INST_0_i_2_n_2 ,\badr[15]_INST_0_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(badr2_lw1[15:12]),
        .S({\badr[15]_INST_0_i_7_n_0 ,\badr[15]_INST_0_i_8_n_0 ,\badr[15]_INST_0_i_9_n_0 ,\badr[15]_INST_0_i_10_n_0 }));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[15]_INST_0_i_7 
       (.I0(badr2[15]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[15]),
        .O(\badr[15]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[15]_INST_0_i_8 
       (.I0(badr2[14]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[14]),
        .O(\badr[15]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[15]_INST_0_i_9 
       (.I0(badr2[13]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[13]),
        .O(\badr[15]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[16]_INST_0 
       (.I0(badr1_lw1[16]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[16]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[16]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[17]_INST_0 
       (.I0(badr1_lw1[17]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[17]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[18]_INST_0 
       (.I0(badr1_lw1[18]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[18]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[18]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[19]_INST_0 
       (.I0(badr1_lw1[19]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[19]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[19]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[19]_INST_0_i_10 
       (.I0(badr2[16]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[16]),
        .O(\badr[19]_INST_0_i_10_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[19]_INST_0_i_2 
       (.CI(\badr[15]_INST_0_i_2_n_0 ),
        .CO({\badr[19]_INST_0_i_2_n_0 ,\badr[19]_INST_0_i_2_n_1 ,\badr[19]_INST_0_i_2_n_2 ,\badr[19]_INST_0_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(badr2_lw1[19:16]),
        .S({\badr[19]_INST_0_i_7_n_0 ,\badr[19]_INST_0_i_8_n_0 ,\badr[19]_INST_0_i_9_n_0 ,\badr[19]_INST_0_i_10_n_0 }));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[19]_INST_0_i_7 
       (.I0(badr2[19]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[19]),
        .O(\badr[19]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[19]_INST_0_i_8 
       (.I0(badr2[18]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[18]),
        .O(\badr[19]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[19]_INST_0_i_9 
       (.I0(badr2[17]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[17]),
        .O(\badr[19]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0 
       (.I0(badr1_lw1[1]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[1]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[20]_INST_0 
       (.I0(badr1_lw1[20]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[20]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[21]_INST_0 
       (.I0(badr1_lw1[21]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[21]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[21]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[22]_INST_0 
       (.I0(badr1_lw1[22]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[22]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[22]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[23]_INST_0 
       (.I0(badr1_lw1[23]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[23]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[23]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[23]_INST_0_i_10 
       (.I0(badr2[20]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[20]),
        .O(\badr[23]_INST_0_i_10_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[23]_INST_0_i_2 
       (.CI(\badr[19]_INST_0_i_2_n_0 ),
        .CO({\badr[23]_INST_0_i_2_n_1 ,\badr[23]_INST_0_i_2_n_2 ,\badr[23]_INST_0_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(badr2_lw1[23:20]),
        .S({\badr[23]_INST_0_i_7_n_0 ,\badr[23]_INST_0_i_8_n_0 ,\badr[23]_INST_0_i_9_n_0 ,\badr[23]_INST_0_i_10_n_0 }));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[23]_INST_0_i_7 
       (.I0(badr2[23]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[23]),
        .O(\badr[23]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[23]_INST_0_i_8 
       (.I0(badr2[22]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[22]),
        .O(\badr[23]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[23]_INST_0_i_9 
       (.I0(badr2[21]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[21]),
        .O(\badr[23]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0 
       (.I0(badr1_lw1[2]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[2]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0 
       (.I0(badr1_lw1[3]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[3]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[3]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[3]_INST_0_i_10 
       (.I0(badr2[0]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[0]),
        .O(\badr[3]_INST_0_i_10_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[3]_INST_0_i_2 
       (.CI(\<const0> ),
        .CO({\badr[3]_INST_0_i_2_n_0 ,\badr[3]_INST_0_i_2_n_1 ,\badr[3]_INST_0_i_2_n_2 ,\badr[3]_INST_0_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,D,\<const0> }),
        .O(badr2_lw1[3:0]),
        .S({\badr[3]_INST_0_i_7_n_0 ,\badr[3]_INST_0_i_8_n_0 ,\badr[3]_INST_0_i_9_n_0 ,\badr[3]_INST_0_i_10_n_0 }));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[3]_INST_0_i_7 
       (.I0(badr2[3]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[3]),
        .O(\badr[3]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[3]_INST_0_i_8 
       (.I0(badr2[2]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[2]),
        .O(\badr[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA5AAAAAAAA969696)) 
    \badr[3]_INST_0_i_9 
       (.I0(D),
        .I1(Q),
        .I2(\stat_reg_n_0_[2] ),
        .I3(bctl_brdy),
        .I4(sdc_brdy),
        .I5(\stat_reg_n_0_[0] ),
        .O(\badr[3]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0 
       (.I0(badr1_lw1[4]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[4]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0 
       (.I0(badr1_lw1[5]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[5]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0 
       (.I0(badr1_lw1[6]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[6]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0 
       (.I0(badr1_lw1[7]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[7]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[7]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[7]_INST_0_i_10 
       (.I0(badr2[4]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[4]),
        .O(\badr[7]_INST_0_i_10_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[7]_INST_0_i_2 
       (.CI(\badr[3]_INST_0_i_2_n_0 ),
        .CO({\badr[7]_INST_0_i_2_n_0 ,\badr[7]_INST_0_i_2_n_1 ,\badr[7]_INST_0_i_2_n_2 ,\badr[7]_INST_0_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(badr2_lw1[7:4]),
        .S({\badr[7]_INST_0_i_7_n_0 ,\badr[7]_INST_0_i_8_n_0 ,\badr[7]_INST_0_i_9_n_0 ,\badr[7]_INST_0_i_10_n_0 }));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[7]_INST_0_i_7 
       (.I0(badr2[7]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[7]),
        .O(\badr[7]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[7]_INST_0_i_8 
       (.I0(badr2[6]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[6]),
        .O(\badr[7]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \badr[7]_INST_0_i_9 
       (.I0(badr2[5]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2_c[5]),
        .O(\badr[7]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0 
       (.I0(badr1_lw1[8]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[8]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0 
       (.I0(badr1_lw1[9]),
        .I1(bus_sel_c_reg),
        .I2(badr2_lw1[9]),
        .I3(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(badr[9]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \bcmd[0]_INST_0 
       (.I0(bcmd1[0]),
        .I1(bcmd_0_sn_1),
        .I2(\bcmd[2] [0]),
        .I3(bus_sel_c_reg),
        .I4(bcmd2_0_sn_1),
        .I5(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(bcmd[0]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bcmd[0]_INST_0_i_1 
       (.I0(bcmd2[0]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bcmd2_c_reg[3] [0]),
        .O(bcmd2_0_sn_1));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bcmd[1]_INST_0_i_2 
       (.I0(bcmd2[1]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bcmd2_c_reg[3] [1]),
        .O(bcmd2_1_sn_1));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \bcmd[2]_INST_0 
       (.I0(bcmd1[1]),
        .I1(bcmd_0_sn_1),
        .I2(\bcmd[2] [1]),
        .I3(bus_sel_c_reg),
        .I4(\bcmd2[2] ),
        .I5(\bcmd[3]_INST_0_i_5_n_0 ),
        .O(bcmd[1]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bcmd[2]_INST_0_i_1 
       (.I0(bcmd2[2]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bcmd2_c_reg[3] [2]),
        .O(\bcmd2[2] ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \bcmd[3]_INST_0 
       (.I0(bcmd1_lw2__0),
        .I1(bus_sel_c_reg),
        .I2(\bcmd[3] [2]),
        .I3(bcmd2_lw2__0),
        .I4(\bcmd[3]_INST_0_i_5_n_0 ),
        .I5(bcmd2_3_sn_1),
        .O(bcmd[2]));
  LUT6 #(
    .INIT(64'hD5DDD555FFFFFFFF)) 
    \bcmd[3]_INST_0_i_10 
       (.I0(bcmd_valid2_cp__0),
        .I1(bcmd_valid1_cp__0),
        .I2(last_sel_reg_0),
        .I3(upd_bus_sel__1),
        .I4(last_sel_c),
        .I5(\bdatw[15]_INST_0_i_4_n_0 ),
        .O(\bcmd[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA2A202A2020202A2)) 
    \bcmd[3]_INST_0_i_2 
       (.I0(\stat_reg[2]_1 ),
        .I1(bus_sel_c),
        .I2(upd_bus_sel__1),
        .I3(bcmd_valid2_cp__0),
        .I4(last_sel_reg_0),
        .I5(bcmd_valid1_cp__0),
        .O(bus_sel_c_reg));
  LUT6 #(
    .INIT(64'hC4C4F5C5C4C4C5C5)) 
    \bcmd[3]_INST_0_i_4 
       (.I0(\bcmd[3]_INST_0_i_9_n_0 ),
        .I1(\stat_reg_n_0_[2] ),
        .I2(Q),
        .I3(\stat_reg[2]_1 ),
        .I4(\stat_reg_n_0_[0] ),
        .I5(\bcmd[3]_INST_0_i_10_n_0 ),
        .O(bcmd2_lw2__0));
  LUT6 #(
    .INIT(64'h22E2EEE200000000)) 
    \bcmd[3]_INST_0_i_5 
       (.I0(bus_sel_c),
        .I1(upd_bus_sel__1),
        .I2(bcmd_valid2_cp__0),
        .I3(last_sel_reg_0),
        .I4(bcmd_valid1_cp__0),
        .I5(\stat_reg[2]_1 ),
        .O(\bcmd[3]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bcmd[3]_INST_0_i_6 
       (.I0(bcmd2[3]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bcmd2_c_reg[3] [3]),
        .O(bcmd2_3_sn_1));
  LUT6 #(
    .INIT(64'h5D555DDDFFFFFFFF)) 
    \bcmd[3]_INST_0_i_8 
       (.I0(bcmd_valid1_cp__0),
        .I1(bcmd_valid2_cp__0),
        .I2(last_sel_reg_0),
        .I3(upd_bus_sel__1),
        .I4(last_sel_c),
        .I5(\bcmd[3]_INST_0_i_1 ),
        .O(last_sel_reg));
  LUT6 #(
    .INIT(64'hF0A0E4E4A0A0E4E4)) 
    \bcmd[3]_INST_0_i_9 
       (.I0(\stat_reg_n_0_[0] ),
        .I1(\stat_reg_n_0_[2] ),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(bcmd_kick2_cp__1),
        .I4(\stat_reg[2]_1 ),
        .I5(bcmd_valid2_cp__0),
        .O(\bcmd[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF55FF77FF77FF55F)) 
    \bdatr1[31]_INST_0_i_2 
       (.I0(\stat_reg[2]_1 ),
        .I1(last_sel_cp),
        .I2(\bcmd[3] [1]),
        .I3(\bcmd[3] [0]),
        .I4(bcmd2_1_sn_1),
        .I5(bcmd2_0_sn_1),
        .O(bctl_brdy_reg));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[16]_INST_0 
       (.I0(\bdatr2[31] [0]),
        .I1(drv_bdatr__0),
        .I2(bdatr[0]),
        .O(bdatr2[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[17]_INST_0 
       (.I0(\bdatr2[31] [1]),
        .I1(drv_bdatr__0),
        .I2(bdatr[1]),
        .O(bdatr2[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[18]_INST_0 
       (.I0(\bdatr2[31] [2]),
        .I1(drv_bdatr__0),
        .I2(bdatr[2]),
        .O(bdatr2[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[19]_INST_0 
       (.I0(\bdatr2[31] [3]),
        .I1(drv_bdatr__0),
        .I2(bdatr[3]),
        .O(bdatr2[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[20]_INST_0 
       (.I0(\bdatr2[31] [4]),
        .I1(drv_bdatr__0),
        .I2(bdatr[4]),
        .O(bdatr2[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[21]_INST_0 
       (.I0(\bdatr2[31] [5]),
        .I1(drv_bdatr__0),
        .I2(bdatr[5]),
        .O(bdatr2[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[22]_INST_0 
       (.I0(\bdatr2[31] [6]),
        .I1(drv_bdatr__0),
        .I2(bdatr[6]),
        .O(bdatr2[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[23]_INST_0 
       (.I0(\bdatr2[31] [7]),
        .I1(drv_bdatr__0),
        .I2(bdatr[7]),
        .O(bdatr2[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[24]_INST_0 
       (.I0(\bdatr2[31] [8]),
        .I1(drv_bdatr__0),
        .I2(bdatr[8]),
        .O(bdatr2[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[25]_INST_0 
       (.I0(\bdatr2[31] [9]),
        .I1(drv_bdatr__0),
        .I2(bdatr[9]),
        .O(bdatr2[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[26]_INST_0 
       (.I0(\bdatr2[31] [10]),
        .I1(drv_bdatr__0),
        .I2(bdatr[10]),
        .O(bdatr2[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[27]_INST_0 
       (.I0(\bdatr2[31] [11]),
        .I1(drv_bdatr__0),
        .I2(bdatr[11]),
        .O(bdatr2[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[28]_INST_0 
       (.I0(\bdatr2[31] [12]),
        .I1(drv_bdatr__0),
        .I2(bdatr[12]),
        .O(bdatr2[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[29]_INST_0 
       (.I0(\bdatr2[31] [13]),
        .I1(drv_bdatr__0),
        .I2(bdatr[13]),
        .O(bdatr2[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[30]_INST_0 
       (.I0(\bdatr2[31] [14]),
        .I1(drv_bdatr__0),
        .I2(bdatr[14]),
        .O(bdatr2[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[31]_INST_0 
       (.I0(\bdatr2[31] [15]),
        .I1(drv_bdatr__0),
        .I2(bdatr[15]),
        .O(bdatr2[15]));
  LUT6 #(
    .INIT(64'h0404040404000404)) 
    \bdatr2[31]_INST_0_i_1 
       (.I0(\stat_reg_n_0_[0] ),
        .I1(Q),
        .I2(\stat_reg_n_0_[2] ),
        .I3(bcmd_0_sn_1),
        .I4(bcmd_valid2_cp__0),
        .I5(\bdatw[15]_INST_0_i_7_n_0 ),
        .O(drv_bdatr__0));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \bdatw[0]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_5_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_0_sn_1),
        .I3(\bdatw2[31] [16]),
        .I4(\bdatw[31]_INST_0_i_3_n_0 ),
        .I5(\bdatw2[31] [0]),
        .O(bdatw[0]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[0]_INST_0_i_2 
       (.I0(bdatw2[0]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [0]),
        .O(\bdatw2[31] [0]));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \bdatw[10]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_5_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_10_sn_1),
        .I3(\bdatw2[31] [26]),
        .I4(\bdatw[31]_INST_0_i_3_n_0 ),
        .I5(\bdatw2[31] [10]),
        .O(bdatw[10]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[10]_INST_0_i_2 
       (.I0(bdatw2[10]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [10]),
        .O(\bdatw2[31] [10]));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \bdatw[11]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_5_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_11_sn_1),
        .I3(\bdatw2[31] [27]),
        .I4(\bdatw[31]_INST_0_i_3_n_0 ),
        .I5(\bdatw2[31] [11]),
        .O(bdatw[11]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[11]_INST_0_i_2 
       (.I0(bdatw2[11]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [11]),
        .O(\bdatw2[31] [11]));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \bdatw[12]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_5_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_12_sn_1),
        .I3(\bdatw2[31] [28]),
        .I4(\bdatw[31]_INST_0_i_3_n_0 ),
        .I5(\bdatw2[31] [12]),
        .O(bdatw[12]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[12]_INST_0_i_2 
       (.I0(bdatw2[12]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [12]),
        .O(\bdatw2[31] [12]));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \bdatw[13]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_5_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_13_sn_1),
        .I3(\bdatw2[31] [29]),
        .I4(\bdatw[31]_INST_0_i_3_n_0 ),
        .I5(\bdatw2[31] [13]),
        .O(bdatw[13]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[13]_INST_0_i_2 
       (.I0(bdatw2[13]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [13]),
        .O(\bdatw2[31] [13]));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \bdatw[14]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_5_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_14_sn_1),
        .I3(\bdatw2[31] [30]),
        .I4(\bdatw[31]_INST_0_i_3_n_0 ),
        .I5(\bdatw2[31] [14]),
        .O(bdatw[14]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[14]_INST_0_i_2 
       (.I0(bdatw2[14]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [14]),
        .O(\bdatw2[31] [14]));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \bdatw[15]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_5_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_15_sn_1),
        .I3(\bdatw2[31] [31]),
        .I4(\bdatw[31]_INST_0_i_3_n_0 ),
        .I5(\bdatw2[31] [15]),
        .O(bdatw[15]));
  LUT6 #(
    .INIT(64'h4040404044404040)) 
    \bdatw[15]_INST_0_i_1 
       (.I0(bcmd2_0_sn_1),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_5_n_0 ),
        .I3(bcmd_valid2_cp__0),
        .I4(\bdatw[15]_INST_0_i_6_n_0 ),
        .I5(\bdatw[15]_INST_0_i_7_n_0 ),
        .O(\bdatw[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[15]_INST_0_i_3 
       (.I0(bdatw2[15]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [15]),
        .O(\bdatw2[31] [15]));
  LUT6 #(
    .INIT(64'h0EE0000000000000)) 
    \bdatw[15]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(bcmd2_1_sn_1),
        .I3(bcmd2_0_sn_1),
        .I4(bcmd2_3_sn_1),
        .I5(bcmd_0_sn_1),
        .O(\bdatw[15]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatw[15]_INST_0_i_5 
       (.I0(\stat_reg_n_0_[2] ),
        .I1(\stat_reg_n_0_[0] ),
        .I2(Q),
        .O(\bdatw[15]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \bdatw[15]_INST_0_i_6 
       (.I0(Q),
        .I1(\stat_reg_n_0_[2] ),
        .I2(\stat_reg_n_0_[0] ),
        .O(\bdatw[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD7D7FFD7FFD7D7D7)) 
    \bdatw[15]_INST_0_i_7 
       (.I0(\stat_reg[2]_1 ),
        .I1(bcmd2_0_sn_1),
        .I2(bcmd2_1_sn_1),
        .I3(last_sel_cp),
        .I4(\bcmd[3] [1]),
        .I5(\bcmd[3] [0]),
        .O(\bdatw[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFDDDDDDD0DDDDDDD)) 
    \bdatw[15]_INST_0_i_8 
       (.I0(bcs_acc_l2_c),
        .I1(badr2_c[1]),
        .I2(neg_brdy_x_reg_0),
        .I3(bctl_brdy),
        .I4(sdc_brdy),
        .I5(badr2[1]),
        .O(\bdatw[15]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \bdatw[15]_INST_0_i_9 
       (.I0(neg_brdy_x_reg_0),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(bcs_acc_l2),
        .O(\bdatw[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \bdatw[16]_INST_0 
       (.I0(bdatw1[0]),
        .I1(bcmd_0_sn_1),
        .I2(\bdatw[31] [0]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw2[31] [16]),
        .I5(\bdatw[31]_INST_0_i_3_n_0 ),
        .O(bdatw[16]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[16]_INST_0_i_1 
       (.I0(bdatw2[16]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [16]),
        .O(\bdatw2[31] [16]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \bdatw[17]_INST_0 
       (.I0(bdatw1[1]),
        .I1(bcmd_0_sn_1),
        .I2(\bdatw[31] [1]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw2[31] [17]),
        .I5(\bdatw[31]_INST_0_i_3_n_0 ),
        .O(bdatw[17]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[17]_INST_0_i_1 
       (.I0(bdatw2[17]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [17]),
        .O(\bdatw2[31] [17]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \bdatw[18]_INST_0 
       (.I0(bdatw1[2]),
        .I1(bcmd_0_sn_1),
        .I2(\bdatw[31] [2]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw2[31] [18]),
        .I5(\bdatw[31]_INST_0_i_3_n_0 ),
        .O(bdatw[18]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[18]_INST_0_i_1 
       (.I0(bdatw2[18]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [18]),
        .O(\bdatw2[31] [18]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \bdatw[19]_INST_0 
       (.I0(bdatw1[3]),
        .I1(bcmd_0_sn_1),
        .I2(\bdatw[31] [3]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw2[31] [19]),
        .I5(\bdatw[31]_INST_0_i_3_n_0 ),
        .O(bdatw[19]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[19]_INST_0_i_1 
       (.I0(bdatw2[19]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [19]),
        .O(\bdatw2[31] [19]));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \bdatw[1]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_5_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_1_sn_1),
        .I3(\bdatw2[31] [17]),
        .I4(\bdatw[31]_INST_0_i_3_n_0 ),
        .I5(\bdatw2[31] [1]),
        .O(bdatw[1]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[1]_INST_0_i_2 
       (.I0(bdatw2[1]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [1]),
        .O(\bdatw2[31] [1]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \bdatw[20]_INST_0 
       (.I0(bdatw1[4]),
        .I1(bcmd_0_sn_1),
        .I2(\bdatw[31] [4]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw2[31] [20]),
        .I5(\bdatw[31]_INST_0_i_3_n_0 ),
        .O(bdatw[20]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[20]_INST_0_i_1 
       (.I0(bdatw2[20]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [20]),
        .O(\bdatw2[31] [20]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \bdatw[21]_INST_0 
       (.I0(bdatw1[5]),
        .I1(bcmd_0_sn_1),
        .I2(\bdatw[31] [5]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw2[31] [21]),
        .I5(\bdatw[31]_INST_0_i_3_n_0 ),
        .O(bdatw[21]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[21]_INST_0_i_1 
       (.I0(bdatw2[21]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [21]),
        .O(\bdatw2[31] [21]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \bdatw[22]_INST_0 
       (.I0(bdatw1[6]),
        .I1(bcmd_0_sn_1),
        .I2(\bdatw[31] [6]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw2[31] [22]),
        .I5(\bdatw[31]_INST_0_i_3_n_0 ),
        .O(bdatw[22]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[22]_INST_0_i_1 
       (.I0(bdatw2[22]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [22]),
        .O(\bdatw2[31] [22]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \bdatw[23]_INST_0 
       (.I0(bdatw1[7]),
        .I1(bcmd_0_sn_1),
        .I2(\bdatw[31] [7]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw2[31] [23]),
        .I5(\bdatw[31]_INST_0_i_3_n_0 ),
        .O(bdatw[23]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[23]_INST_0_i_1 
       (.I0(bdatw2[23]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [23]),
        .O(\bdatw2[31] [23]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \bdatw[24]_INST_0 
       (.I0(bdatw1[8]),
        .I1(bcmd_0_sn_1),
        .I2(\bdatw[31] [8]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw2[31] [24]),
        .I5(\bdatw[31]_INST_0_i_3_n_0 ),
        .O(bdatw[24]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[24]_INST_0_i_1 
       (.I0(bdatw2[24]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [24]),
        .O(\bdatw2[31] [24]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \bdatw[25]_INST_0 
       (.I0(bdatw1[9]),
        .I1(bcmd_0_sn_1),
        .I2(\bdatw[31] [9]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw2[31] [25]),
        .I5(\bdatw[31]_INST_0_i_3_n_0 ),
        .O(bdatw[25]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[25]_INST_0_i_1 
       (.I0(bdatw2[25]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [25]),
        .O(\bdatw2[31] [25]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \bdatw[26]_INST_0 
       (.I0(bdatw1[10]),
        .I1(bcmd_0_sn_1),
        .I2(\bdatw[31] [10]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw2[31] [26]),
        .I5(\bdatw[31]_INST_0_i_3_n_0 ),
        .O(bdatw[26]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[26]_INST_0_i_1 
       (.I0(bdatw2[26]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [26]),
        .O(\bdatw2[31] [26]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \bdatw[27]_INST_0 
       (.I0(bdatw1[11]),
        .I1(bcmd_0_sn_1),
        .I2(\bdatw[31] [11]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw2[31] [27]),
        .I5(\bdatw[31]_INST_0_i_3_n_0 ),
        .O(bdatw[27]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[27]_INST_0_i_1 
       (.I0(bdatw2[27]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [27]),
        .O(\bdatw2[31] [27]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \bdatw[28]_INST_0 
       (.I0(bdatw1[12]),
        .I1(bcmd_0_sn_1),
        .I2(\bdatw[31] [12]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw2[31] [28]),
        .I5(\bdatw[31]_INST_0_i_3_n_0 ),
        .O(bdatw[28]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[28]_INST_0_i_1 
       (.I0(bdatw2[28]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [28]),
        .O(\bdatw2[31] [28]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \bdatw[29]_INST_0 
       (.I0(bdatw1[13]),
        .I1(bcmd_0_sn_1),
        .I2(\bdatw[31] [13]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw2[31] [29]),
        .I5(\bdatw[31]_INST_0_i_3_n_0 ),
        .O(bdatw[29]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[29]_INST_0_i_1 
       (.I0(bdatw2[29]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [29]),
        .O(\bdatw2[31] [29]));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \bdatw[2]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_5_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_2_sn_1),
        .I3(\bdatw2[31] [18]),
        .I4(\bdatw[31]_INST_0_i_3_n_0 ),
        .I5(\bdatw2[31] [2]),
        .O(bdatw[2]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[2]_INST_0_i_2 
       (.I0(bdatw2[2]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [2]),
        .O(\bdatw2[31] [2]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \bdatw[30]_INST_0 
       (.I0(bdatw1[14]),
        .I1(bcmd_0_sn_1),
        .I2(\bdatw[31] [14]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw2[31] [30]),
        .I5(\bdatw[31]_INST_0_i_3_n_0 ),
        .O(bdatw[30]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[30]_INST_0_i_1 
       (.I0(bdatw2[30]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [30]),
        .O(\bdatw2[31] [30]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \bdatw[31]_INST_0 
       (.I0(bdatw1[15]),
        .I1(bcmd_0_sn_1),
        .I2(\bdatw[31] [15]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw2[31] [31]),
        .I5(\bdatw[31]_INST_0_i_3_n_0 ),
        .O(bdatw[31]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[31]_INST_0_i_1 
       (.I0(bus_sel_c_reg),
        .I1(drv_bdatwh),
        .O(\bdatw[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[31]_INST_0_i_2 
       (.I0(bdatw2[31]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [31]),
        .O(\bdatw2[31] [31]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[31]_INST_0_i_3 
       (.I0(\bcmd[3]_INST_0_i_5_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .O(\bdatw[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \bdatw[3]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_5_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_3_sn_1),
        .I3(\bdatw2[31] [19]),
        .I4(\bdatw[31]_INST_0_i_3_n_0 ),
        .I5(\bdatw2[31] [3]),
        .O(bdatw[3]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[3]_INST_0_i_2 
       (.I0(bdatw2[3]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [3]),
        .O(\bdatw2[31] [3]));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \bdatw[4]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_5_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_4_sn_1),
        .I3(\bdatw2[31] [20]),
        .I4(\bdatw[31]_INST_0_i_3_n_0 ),
        .I5(\bdatw2[31] [4]),
        .O(bdatw[4]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[4]_INST_0_i_2 
       (.I0(bdatw2[4]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [4]),
        .O(\bdatw2[31] [4]));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \bdatw[5]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_5_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_5_sn_1),
        .I3(\bdatw2[31] [21]),
        .I4(\bdatw[31]_INST_0_i_3_n_0 ),
        .I5(\bdatw2[31] [5]),
        .O(bdatw[5]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[5]_INST_0_i_2 
       (.I0(bdatw2[5]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [5]),
        .O(\bdatw2[31] [5]));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \bdatw[6]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_5_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_6_sn_1),
        .I3(\bdatw2[31] [22]),
        .I4(\bdatw[31]_INST_0_i_3_n_0 ),
        .I5(\bdatw2[31] [6]),
        .O(bdatw[6]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[6]_INST_0_i_2 
       (.I0(bdatw2[6]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [6]),
        .O(\bdatw2[31] [6]));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \bdatw[7]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_5_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_7_sn_1),
        .I3(\bdatw2[31] [23]),
        .I4(\bdatw[31]_INST_0_i_3_n_0 ),
        .I5(\bdatw2[31] [7]),
        .O(bdatw[7]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[7]_INST_0_i_2 
       (.I0(bdatw2[7]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [7]),
        .O(\bdatw2[31] [7]));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \bdatw[8]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_5_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_8_sn_1),
        .I3(\bdatw2[31] [24]),
        .I4(\bdatw[31]_INST_0_i_3_n_0 ),
        .I5(\bdatw2[31] [8]),
        .O(bdatw[8]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[8]_INST_0_i_2 
       (.I0(bdatw2[8]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [8]),
        .O(\bdatw2[31] [8]));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \bdatw[9]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_5_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_9_sn_1),
        .I3(\bdatw2[31] [25]),
        .I4(\bdatw[31]_INST_0_i_3_n_0 ),
        .I5(\bdatw2[31] [9]),
        .O(bdatw[9]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bdatw[9]_INST_0_i_2 
       (.I0(bdatw2[9]),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(\bdatw2_c_reg[31] [9]),
        .O(\bdatw2[31] [9]));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    bmst_INST_0
       (.I0(bcmd_valid1_cp__0),
        .I1(last_sel_reg_0),
        .I2(bcmd_valid2_cp__0),
        .I3(upd_bus_sel__1),
        .I4(bus_sel_c),
        .O(bmst));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    bmst_INST_0_i_2
       (.I0(\bcmd2_c_reg[3] [0]),
        .I1(bcmd2[0]),
        .I2(\bcmd2_c_reg[3] [1]),
        .I3(bus_sel_c_reg_1),
        .I4(bcmd2[1]),
        .O(bcmd_valid2_cp__0));
  LUT4 #(
    .INIT(16'h1000)) 
    bmst_INST_0_i_3
       (.I0(upd_bus_sel2),
        .I1(upd_bus_sel1),
        .I2(sdc_brdy),
        .I3(bctl_brdy),
        .O(upd_bus_sel__1));
  LUT4 #(
    .INIT(16'h4000)) 
    \datrh[15]_i_2 
       (.I0(\stat_reg_n_0_[2] ),
        .I1(\stat_reg_n_0_[0] ),
        .I2(sdc_brdy),
        .I3(bctl_brdy),
        .O(\stat_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    last_sel_c_i_1
       (.I0(last_sel_reg_0),
        .I1(upd_bus_sel2),
        .I2(upd_bus_sel1),
        .I3(sdc_brdy),
        .I4(bctl_brdy),
        .I5(last_sel_c),
        .O(last_sel_cp));
  LUT5 #(
    .INIT(32'h2280AA80)) 
    last_sel_i_1
       (.I0(rst_n),
        .I1(upd_bus_sel__1),
        .I2(bcmd_valid2_cp__0),
        .I3(last_sel_reg_0),
        .I4(bcmd_valid1_cp__0),
        .O(rst_n_1));
  LUT6 #(
    .INIT(64'hEEEFFFAFEEFFAAFF)) 
    neg_brdy_x_i_1
       (.I0(neg_brdy_x_i_2__0_n_0),
        .I1(Q),
        .I2(bcmd_valid2_cp__0),
        .I3(\stat_reg_n_0_[0] ),
        .I4(\stat_reg_n_0_[2] ),
        .I5(\stat_reg[2]_1 ),
        .O(neg_brdy_x_t));
  LUT5 #(
    .INIT(32'h44400000)) 
    neg_brdy_x_i_2__0
       (.I0(bcmd_split2_cp__2),
        .I1(neg_brdy_x_reg_2),
        .I2(bcmd_kick2_cp__1),
        .I3(\stat_reg_n_0_[0] ),
        .I4(\stat_reg[2]_1 ),
        .O(neg_brdy_x_i_2__0_n_0));
  FDSE neg_brdy_x_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(neg_brdy_x_t),
        .Q(neg_brdy_x_reg_0),
        .S(rst_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFF2AFF)) 
    \stat[0]_i_1 
       (.I0(\bdatw[15]_INST_0_i_7_n_0 ),
        .I1(\stat_reg_n_0_[2] ),
        .I2(\stat_reg_n_0_[0] ),
        .I3(bcmd_0_sn_1),
        .I4(bcmd_split2_cp__2),
        .I5(\stat[0]_i_3_n_0 ),
        .O(stat_nx[0]));
  LUT6 #(
    .INIT(64'h2828282800002800)) 
    \stat[0]_i_2 
       (.I0(bcmd2_3_sn_1),
        .I1(bcmd2_0_sn_1),
        .I2(bcmd2_1_sn_1),
        .I3(bus_sel_c_reg_1),
        .I4(bcs_acc_l2),
        .I5(\bdatw[15]_INST_0_i_8_n_0 ),
        .O(bcmd_split2_cp__2));
  LUT6 #(
    .INIT(64'hFFFF155595D595D5)) 
    \stat[0]_i_3 
       (.I0(\stat_reg_n_0_[0] ),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(bcmd_valid2_cp__0),
        .I4(Q),
        .I5(\stat_reg_n_0_[2] ),
        .O(\stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0414140404)) 
    \stat[1]_i_1 
       (.I0(\stat_reg_n_0_[2] ),
        .I1(Q),
        .I2(\stat_reg[2]_1 ),
        .I3(bcmd_kick2_cp__1),
        .I4(\stat_reg_n_0_[0] ),
        .I5(\stat[1]_i_3_n_0 ),
        .O(stat_nx[1]));
  LUT5 #(
    .INIT(32'h0FF00990)) 
    \stat[1]_i_2 
       (.I0(bcmd2_0_sn_1),
        .I1(bcmd2_1_sn_1),
        .I2(\bcmd[3] [0]),
        .I3(\bcmd[3] [1]),
        .I4(last_sel_cp),
        .O(bcmd_kick1_cp__1));
  LUT5 #(
    .INIT(32'h009F9F00)) 
    \stat[1]_i_2__0 
       (.I0(\bcmd[3] [0]),
        .I1(\bcmd[3] [1]),
        .I2(last_sel_cp),
        .I3(bcmd2_1_sn_1),
        .I4(bcmd2_0_sn_1),
        .O(bcmd_kick2_cp__1));
  LUT6 #(
    .INIT(64'h0008880800000000)) 
    \stat[1]_i_3 
       (.I0(bcmd_split2_cp__2),
        .I1(bcmd_0_sn_1),
        .I2(\bcmd2_c_reg[3] [0]),
        .I3(bus_sel_c_reg_1),
        .I4(bcmd2[0]),
        .I5(\stat[1]_i_4_n_0 ),
        .O(\stat[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FF008000008080)) 
    \stat[1]_i_4 
       (.I0(bcmd_valid2_cp__0),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(Q),
        .I4(\stat_reg_n_0_[0] ),
        .I5(\stat_reg_n_0_[2] ),
        .O(\stat[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E0E04000F00000)) 
    \stat[2]_i_1 
       (.I0(\stat_reg_n_0_[0] ),
        .I1(bcmd_valid2_cp__0),
        .I2(\stat[2]_i_2__0_n_0 ),
        .I3(Q),
        .I4(\stat_reg_n_0_[2] ),
        .I5(\stat_reg[2]_1 ),
        .O(stat_nx[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \stat[2]_i_1__1 
       (.I0(rst_n),
        .O(rst_n_0));
  LUT6 #(
    .INIT(64'hD5FFFFFFDFFFFFFF)) 
    \stat[2]_i_2 
       (.I0(neg_brdy_x_reg_0),
        .I1(\stat_reg[2]_2 [1]),
        .I2(\stat_reg[2]_2 [0]),
        .I3(sdc_brdy),
        .I4(bctl_brdy),
        .I5(bcmd_kick1_cp__1),
        .O(neg_brdy_x_reg_1));
  LUT6 #(
    .INIT(64'hD5FFFFFFDFFFFFFF)) 
    \stat[2]_i_2__0 
       (.I0(neg_brdy_x_reg_2),
        .I1(Q),
        .I2(\stat_reg_n_0_[0] ),
        .I3(sdc_brdy),
        .I4(bctl_brdy),
        .I5(bcmd_kick2_cp__1),
        .O(\stat[2]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A6A)) 
    \stat[2]_i_3 
       (.I0(bctl_brdy_reg_0),
        .I1(\bcmd[3]_INST_0_i_5_n_0 ),
        .I2(bcmd2_0_sn_1),
        .I3(bus_sel_c_reg),
        .I4(\bcmd[3] [0]),
        .O(bus_sel_c_reg_0));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[0]),
        .Q(\stat_reg_n_0_[0] ),
        .R(rst_n_0));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[1]),
        .Q(Q),
        .R(rst_n_0));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[2]),
        .Q(\stat_reg_n_0_[2] ),
        .R(rst_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAABAAAAAAA)) 
    upd_bus_sel_i_1
       (.I0(upd_bus_sel_i_2_n_0),
        .I1(\stat_reg_n_0_[0] ),
        .I2(bcmd_0_sn_1),
        .I3(bcmd_split2_cp__2),
        .I4(bcmd_kick2_cp__1),
        .I5(upd_bus_sel_i_3_n_0),
        .O(upd_bus_sel_t));
  LUT6 #(
    .INIT(64'h000F0000800F0000)) 
    upd_bus_sel_i_2
       (.I0(bcmd_split2_cp__2),
        .I1(neg_brdy_x_reg_2),
        .I2(\stat_reg[2]_1 ),
        .I3(\stat_reg_n_0_[2] ),
        .I4(\stat_reg_n_0_[0] ),
        .I5(Q),
        .O(upd_bus_sel_i_2_n_0));
  LUT5 #(
    .INIT(32'hFF7F7F7F)) 
    upd_bus_sel_i_3
       (.I0(bctl_brdy),
        .I1(sdc_brdy),
        .I2(bcmd_valid2_cp__0),
        .I3(Q),
        .I4(\stat_reg_n_0_[2] ),
        .O(upd_bus_sel_i_3_n_0));
  FDSE upd_bus_sel_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(upd_bus_sel_t),
        .Q(upd_bus_sel2),
        .S(rst_n_0));
endmodule
