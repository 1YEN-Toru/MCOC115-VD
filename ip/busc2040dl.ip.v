
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
//	2025/10/11	ver.1.40
//		fix: busc_acpu; bcs_acc_l2_c logic
//
//	2023/11/04	ver.1.38
//		fix: long word access to/from odd word address for dual core cpu system.
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
//		module name changed: busc2040 -> busc2040d (dual core cpu edition)
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
  wire acpu_n_58;
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
  wire bctl_n_2;
  wire bctl_n_3;
  wire bctl_n_4;
  wire bctl_n_5;
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
       (.badr(badr),
        .badr1(badr1),
        .badr2(badr2),
        .bcmd(bcmd),
        .bcmd1(bcmd1),
        .\bcmd1_c_reg[0]_0 (acpu_n_58),
        .bcmd2(bcmd2),
        .bcs_acc_2(bcs_acc_2),
        .bcs_acc_l1(bcs_acc_l1),
        .bcs_acc_l2(bcs_acc_l2),
        .bcs_sdram_n(bcs_sdram_n),
        .bctl_brdy(bctl_brdy),
        .bctl_brdy_reg(bctl_n_3),
        .bdatr(bdatr),
        .bdatr1(\^bdatr1 ),
        .bdatr2(\^bdatr2 ),
        .bdatw(bdatw),
        .bdatw1(bdatw1),
        .bdatw2(bdatw2),
        .bmst(bmst),
        .brdy_t(brdy_t),
        .cch_hit(cch_hit),
        .clk(clk),
        .\datrh_reg[0]_0 (bctl_n_2),
        .neg_brdy1(neg_brdy1),
        .neg_brdy2(neg_brdy2),
        .neg_brdy_x_reg(brdy1),
        .neg_brdy_x_reg_0(brdy2),
        .neg_brdy_x_reg_1(bctl_n_5),
        .neg_brdy_x_reg_2(bctl_n_4),
        .rst_n(rst_n),
        .rst_n_0(acpu_n_0),
        .sdc_brdy(sdc_brdy));
  busc_fsm bctl
       (.SR(acpu_n_0),
        .bcmd(bcmd[1]),
        .bcs_acc_2(bcs_acc_2),
        .bcs_sdram_n(bcs_sdram_n),
        .bctl_brdy(bctl_brdy),
        .bctl_brdy_reg_0(bctl_n_4),
        .bctl_brdy_reg_1(bctl_n_5),
        .brdy(brdy),
        .brdy_t(brdy_t),
        .cch_hit(cch_hit),
        .clk(clk),
        .neg_brdy1(neg_brdy1),
        .neg_brdy2(neg_brdy2),
        .sdc_brdy(sdc_brdy),
        .sdc_brdy_0(bctl_n_2),
        .sdc_brdy_1(bctl_n_3),
        .\stat_reg[2]_0 (acpu_n_58));
endmodule

module busc_acpu
   (rst_n_0,
    bmst,
    neg_brdy1,
    neg_brdy2,
    bdatw,
    bcmd,
    neg_brdy_x_reg,
    bdatr2,
    brdy_t,
    \bcmd1_c_reg[0]_0 ,
    badr,
    bdatr1,
    neg_brdy_x_reg_0,
    clk,
    neg_brdy_x_reg_1,
    bdatw2,
    neg_brdy_x_reg_2,
    bdatw1,
    bctl_brdy,
    sdc_brdy,
    \datrh_reg[0]_0 ,
    bcmd1,
    bdatr,
    rst_n,
    bcs_sdram_n,
    cch_hit,
    bcs_acc_2,
    bctl_brdy_reg,
    bcs_acc_l1,
    badr1,
    bcmd2,
    bcs_acc_l2,
    badr2);
  output rst_n_0;
  output bmst;
  output neg_brdy1;
  output neg_brdy2;
  output [31:0]bdatw;
  output [3:0]bcmd;
  output neg_brdy_x_reg;
  output [15:0]bdatr2;
  output brdy_t;
  output \bcmd1_c_reg[0]_0 ;
  output [23:0]badr;
  output [15:0]bdatr1;
  output neg_brdy_x_reg_0;
  input clk;
  input neg_brdy_x_reg_1;
  input [31:0]bdatw2;
  input neg_brdy_x_reg_2;
  input [31:0]bdatw1;
  input bctl_brdy;
  input sdc_brdy;
  input \datrh_reg[0]_0 ;
  input [3:0]bcmd1;
  input [31:0]bdatr;
  input rst_n;
  input bcs_sdram_n;
  input cch_hit;
  input bcs_acc_2;
  input bctl_brdy_reg;
  input bcs_acc_l1;
  input [23:0]badr1;
  input [3:0]bcmd2;
  input bcs_acc_l2;
  input [23:0]badr2;

  wire \<const0> ;
  wire \<const1> ;
  wire [23:0]badr;
  wire [23:0]badr1;
  wire [23:0]badr1_c;
  wire [23:0]badr2;
  wire [23:0]badr2_c;
  wire [23:0]badr2_lw1;
  wire [3:0]bcmd;
  wire [3:0]bcmd1;
  wire [3:0]bcmd1_c;
  wire \bcmd1_c_reg[0]_0 ;
  wire [3:0]bcmd2;
  wire [3:0]bcmd2_c;
  wire bcs_acc_2;
  wire bcs_acc_l1;
  wire bcs_acc_l1_c;
  wire bcs_acc_l1_cp;
  wire bcs_acc_l2;
  wire bcs_acc_l2_c;
  wire bcs_acc_l2_cp;
  wire bcs_sdram_n;
  wire bctl_brdy;
  wire bctl_brdy_reg;
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
  wire blng1_n_1;
  wire blng1_n_125;
  wire blng1_n_66;
  wire blng1_n_72;
  wire blng1_n_75;
  wire blng1_n_76;
  wire blng1_n_77;
  wire blng1_n_78;
  wire blng1_n_79;
  wire blng1_n_80;
  wire blng1_n_81;
  wire blng2_n_27;
  wire blng2_n_28;
  wire blng2_n_29;
  wire blng2_n_62;
  wire blng2_n_63;
  wire blng2_n_64;
  wire blng2_n_65;
  wire blng2_n_66;
  wire blng2_n_67;
  wire blng2_n_68;
  wire blng2_n_69;
  wire blng2_n_70;
  wire blng2_n_71;
  wire blng2_n_72;
  wire blng2_n_73;
  wire blng2_n_74;
  wire blng2_n_75;
  wire blng2_n_76;
  wire blng2_n_77;
  wire blng2_n_78;
  wire blng2_n_97;
  wire blng2_n_98;
  wire bmst;
  wire brdy_t;
  wire bus_sel_c;
  wire cch_hit;
  wire clk;
  wire datrh0;
  wire \datrh_reg[0]_0 ;
  wire last_sel_c;
  wire last_sel_cp;
  wire last_sel_reg_n_0;
  wire neg_brdy1;
  wire neg_brdy2;
  wire neg_brdy_x_reg;
  wire neg_brdy_x_reg_0;
  wire neg_brdy_x_reg_1;
  wire neg_brdy_x_reg_2;
  wire [31:16]p_1_in;
  wire rst_n;
  wire rst_n_0;
  wire sdc_brdy;
  wire upd_bus_sel2;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \badr1_c_reg[0] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[0]),
        .Q(badr1_c[0]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[10] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[10]),
        .Q(badr1_c[10]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[11] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[11]),
        .Q(badr1_c[11]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[12] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[12]),
        .Q(badr1_c[12]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[13] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[13]),
        .Q(badr1_c[13]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[14] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[14]),
        .Q(badr1_c[14]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[15] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[15]),
        .Q(badr1_c[15]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[16] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[16]),
        .Q(badr1_c[16]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[17] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[17]),
        .Q(badr1_c[17]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[18] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[18]),
        .Q(badr1_c[18]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[19] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[19]),
        .Q(badr1_c[19]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng1_n_1),
        .Q(badr1_c[1]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[20] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[20]),
        .Q(badr1_c[20]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[21] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[21]),
        .Q(badr1_c[21]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[22] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[22]),
        .Q(badr1_c[22]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[23] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[23]),
        .Q(badr1_c[23]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[2] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[2]),
        .Q(badr1_c[2]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[3] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[3]),
        .Q(badr1_c[3]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[4] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[4]),
        .Q(badr1_c[4]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[5] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[5]),
        .Q(badr1_c[5]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[6] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[6]),
        .Q(badr1_c[6]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[7] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[7]),
        .Q(badr1_c[7]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[8] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[8]),
        .Q(badr1_c[8]),
        .R(rst_n_0));
  FDRE \badr1_c_reg[9] 
       (.C(clk),
        .CE(neg_brdy_x_reg),
        .D(badr1[9]),
        .Q(badr1_c[9]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[0] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[0]),
        .Q(badr2_c[0]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[10] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[10]),
        .Q(badr2_c[10]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[11] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[11]),
        .Q(badr2_c[11]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[12] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[12]),
        .Q(badr2_c[12]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[13] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[13]),
        .Q(badr2_c[13]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[14] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[14]),
        .Q(badr2_c[14]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[15] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[15]),
        .Q(badr2_c[15]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[16] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[16]),
        .Q(badr2_c[16]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[17] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[17]),
        .Q(badr2_c[17]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[18] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[18]),
        .Q(badr2_c[18]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[19] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[19]),
        .Q(badr2_c[19]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng2_n_27),
        .Q(badr2_c[1]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[20] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[20]),
        .Q(badr2_c[20]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[21] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[21]),
        .Q(badr2_c[21]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[22] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[22]),
        .Q(badr2_c[22]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[23] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[23]),
        .Q(badr2_c[23]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[2] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[2]),
        .Q(badr2_c[2]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[3] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[3]),
        .Q(badr2_c[3]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[4] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[4]),
        .Q(badr2_c[4]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[5] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[5]),
        .Q(badr2_c[5]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[6] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[6]),
        .Q(badr2_c[6]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[7] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[7]),
        .Q(badr2_c[7]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[8] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[8]),
        .Q(badr2_c[8]),
        .R(rst_n_0));
  FDRE \badr2_c_reg[9] 
       (.C(clk),
        .CE(neg_brdy_x_reg_0),
        .D(badr2[9]),
        .Q(badr2_c[9]),
        .R(rst_n_0));
  FDRE \bcmd1_c_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng1_n_78),
        .Q(bcmd1_c[0]),
        .R(rst_n_0));
  FDRE \bcmd1_c_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng1_n_77),
        .Q(bcmd1_c[1]),
        .R(rst_n_0));
  FDRE \bcmd1_c_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng1_n_76),
        .Q(bcmd1_c[2]),
        .R(rst_n_0));
  FDRE \bcmd1_c_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng1_n_75),
        .Q(bcmd1_c[3]),
        .R(rst_n_0));
  FDRE \bcmd2_c_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng2_n_77),
        .Q(bcmd2_c[0]),
        .R(rst_n_0));
  FDRE \bcmd2_c_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng2_n_76),
        .Q(bcmd2_c[1]),
        .R(rst_n_0));
  FDRE \bcmd2_c_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng2_n_75),
        .Q(bcmd2_c[2]),
        .R(rst_n_0));
  FDRE \bcmd2_c_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(blng2_n_98),
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
        .CE(\<const1> ),
        .D(bcs_acc_l2_cp),
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
       (.D({bdatw2_cp[31:16],bdatw2_cp[10],bdatw2_cp[2],bdatw2_cp[0]}),
        .Q(bdatw1_c),
        .badr(badr),
        .badr1(badr1),
        .badr1_c(badr1_c),
        .\badr1_c_reg[1] (blng1_n_1),
        .badr2_lw1(badr2_lw1),
        .bcmd(bcmd),
        .bcmd1(bcmd1),
        .\bcmd1[3] ({blng1_n_75,blng1_n_76,blng1_n_77,blng1_n_78}),
        .\bcmd1_c_reg[0] (blng1_n_80),
        .\bcmd1_c_reg[0]_0 (\bcmd1_c_reg[0]_0 ),
        .\bcmd1_c_reg[3] (bcmd1_c),
        .\bcmd[2] ({blng2_n_75,blng2_n_76,blng2_n_77}),
        .\bcmd[3]_0 (blng2_n_78),
        .bcmd_0_sp_1(neg_brdy_x_reg_2),
        .bcmd_3_sp_1(blng2_n_97),
        .bcs_acc_2(bcs_acc_2),
        .bcs_acc_l1(bcs_acc_l1),
        .bcs_acc_l1_c(bcs_acc_l1_c),
        .bcs_acc_l1_cp(bcs_acc_l1_cp),
        .bcs_sdram_n(bcs_sdram_n),
        .bctl_brdy(bctl_brdy),
        .bctl_brdy_reg(bctl_brdy_reg),
        .bdatr(bdatr[31:16]),
        .bdatr1(bdatr1),
        .\bdatr1[31] (p_1_in),
        .\bdatr1[31]_0 (neg_brdy2),
        .bdatw(bdatw),
        .bdatw1(bdatw1),
        .\bdatw1_c_reg[31] (bdatw1_cp),
        .bdatw_0_sp_1(blng2_n_29),
        .bdatw_11_sp_1(blng2_n_69),
        .bdatw_12_sp_1(blng2_n_70),
        .bdatw_13_sp_1(blng2_n_71),
        .bdatw_14_sp_1(blng2_n_72),
        .bdatw_15_sp_1(blng2_n_73),
        .bdatw_1_sp_1(blng2_n_28),
        .bdatw_3_sp_1(blng2_n_62),
        .bdatw_4_sp_1(blng2_n_63),
        .bdatw_5_sp_1(blng2_n_64),
        .bdatw_6_sp_1(blng2_n_65),
        .bdatw_7_sp_1(blng2_n_66),
        .bdatw_8_sp_1(blng2_n_67),
        .bdatw_9_sp_1(blng2_n_68),
        .bmst(bmst),
        .brdy_t(brdy_t),
        .bus_sel_c(bus_sel_c),
        .cch_hit(cch_hit),
        .clk(clk),
        .last_sel_c(last_sel_c),
        .last_sel_c_reg(blng1_n_79),
        .last_sel_cp(last_sel_cp),
        .last_sel_reg(blng1_n_66),
        .last_sel_reg_0(blng1_n_81),
        .last_sel_reg_1(blng2_n_74),
        .last_sel_reg_2(last_sel_reg_n_0),
        .neg_brdy_x_reg_0(neg_brdy1),
        .neg_brdy_x_reg_1(neg_brdy_x_reg),
        .neg_brdy_x_reg_2(neg_brdy_x_reg_1),
        .rst_n(rst_n),
        .sdc_brdy(sdc_brdy),
        .\stat_reg[0]_0 (blng1_n_125),
        .\stat_reg[1]_0 (blng1_n_72),
        .\stat_reg[2]_0 (\datrh_reg[0]_0 ),
        .upd_bus_sel2(upd_bus_sel2),
        .upd_bus_sel_reg_0(rst_n_0));
  busc_long_fsm_0 blng2
       (.D(bdatw2_cp),
        .E(datrh0),
        .Q(bdatw2_c),
        .badr2(badr2),
        .badr2_c(badr2_c),
        .\badr2_c_reg[1] (blng2_n_27),
        .badr2_lw1(badr2_lw1),
        .bcmd2(bcmd2),
        .\bcmd2[3] (blng2_n_98),
        .bcmd2_1_sp_1(blng2_n_74),
        .\bcmd2_c_reg[2] ({blng2_n_75,blng2_n_76,blng2_n_77}),
        .\bcmd2_c_reg[3] (blng2_n_97),
        .\bcmd2_c_reg[3]_0 (bcmd2_c),
        .bcs_acc_l2(bcs_acc_l2),
        .bcs_acc_l2_c(bcs_acc_l2_c),
        .bcs_acc_l2_cp(bcs_acc_l2_cp),
        .bctl_brdy(bctl_brdy),
        .bdatr(bdatr[31:16]),
        .bdatr2(bdatr2),
        .\bdatr2[31] (p_1_in),
        .bdatw2(bdatw2),
        .\bdatw2_c_reg[11] (blng2_n_69),
        .\bdatw2_c_reg[12] (blng2_n_70),
        .\bdatw2_c_reg[13] (blng2_n_71),
        .\bdatw2_c_reg[14] (blng2_n_72),
        .\bdatw2_c_reg[15] (blng2_n_73),
        .\bdatw2_c_reg[1] (blng2_n_28),
        .\bdatw2_c_reg[3] (blng2_n_62),
        .\bdatw2_c_reg[4] (blng2_n_63),
        .\bdatw2_c_reg[5] (blng2_n_64),
        .\bdatw2_c_reg[6] (blng2_n_65),
        .\bdatw2_c_reg[7] (blng2_n_66),
        .\bdatw2_c_reg[8] (blng2_n_67),
        .\bdatw2_c_reg[9] (blng2_n_68),
        .\bdatw[1] (blng1_n_66),
        .clk(clk),
        .\datrh_reg[0] (\datrh_reg[0]_0 ),
        .\datrh_reg[0]_0 (blng1_n_125),
        .\datrh_reg[0]_1 (blng1_n_72),
        .last_sel_reg(neg_brdy_x_reg_1),
        .neg_brdy1(neg_brdy1),
        .neg_brdy_x_reg_0(neg_brdy2),
        .neg_brdy_x_reg_1(neg_brdy_x_reg_0),
        .neg_brdy_x_reg_2(neg_brdy_x_reg_2),
        .rst_n(rst_n),
        .rst_n_0(rst_n_0),
        .sdc_brdy(sdc_brdy),
        .\stat_reg[0]_0 (blng2_n_29),
        .\stat_reg[0]_1 (blng2_n_78),
        .\stat_reg[1]_0 (blng1_n_80),
        .upd_bus_sel2(upd_bus_sel2),
        .upd_bus_sel_reg_0(blng1_n_79));
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
        .D(blng1_n_81),
        .Q(last_sel_reg_n_0),
        .R(\<const0> ));
endmodule

module busc_fsm
   (bctl_brdy,
    brdy,
    sdc_brdy_0,
    sdc_brdy_1,
    bctl_brdy_reg_0,
    bctl_brdy_reg_1,
    SR,
    brdy_t,
    clk,
    bcmd,
    \stat_reg[2]_0 ,
    sdc_brdy,
    bcs_acc_2,
    bcs_sdram_n,
    cch_hit,
    neg_brdy1,
    neg_brdy2);
  output bctl_brdy;
  output brdy;
  output sdc_brdy_0;
  output sdc_brdy_1;
  output bctl_brdy_reg_0;
  output bctl_brdy_reg_1;
  input [0:0]SR;
  input brdy_t;
  input clk;
  input [0:0]bcmd;
  input \stat_reg[2]_0 ;
  input sdc_brdy;
  input bcs_acc_2;
  input bcs_sdram_n;
  input cch_hit;
  input neg_brdy1;
  input neg_brdy2;

  wire \<const1> ;
  wire [0:0]SR;
  wire [0:0]bcmd;
  wire bcs_acc_2;
  wire bcs_sdram_n;
  wire bctl_brdy;
  wire bctl_brdy_reg_0;
  wire bctl_brdy_reg_1;
  wire brdy;
  wire brdy_t;
  wire cch_hit;
  wire clk;
  wire neg_brdy1;
  wire neg_brdy2;
  wire sdc_brdy;
  wire sdc_brdy_0;
  wire sdc_brdy_1;
  wire [2:0]stat;
  wire \stat[0]_i_2__1_n_0 ;
  wire \stat[0]_i_3__1_n_0 ;
  wire \stat[0]_i_4_n_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[2]_i_3_n_0 ;
  wire [2:0]stat_nx;
  wire \stat_reg[2]_0 ;

  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h7F)) 
    \bcmd[2]_INST_0_i_1 
       (.I0(bctl_brdy),
        .I1(sdc_brdy),
        .I2(neg_brdy1),
        .O(bctl_brdy_reg_0));
  LUT2 #(
    .INIT(4'h7)) 
    \bcmd[3]_INST_0_i_7 
       (.I0(sdc_brdy),
        .I1(bctl_brdy),
        .O(sdc_brdy_0));
  LUT4 #(
    .INIT(16'h20F3)) 
    bctl_brdy_i_2
       (.I0(sdc_brdy),
        .I1(stat[1]),
        .I2(stat[0]),
        .I3(stat[2]),
        .O(sdc_brdy_1));
  FDSE bctl_brdy_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(brdy_t),
        .Q(bctl_brdy),
        .S(SR));
  LUT3 #(
    .INIT(8'h7F)) 
    bmst_INST_0_i_4
       (.I0(bctl_brdy),
        .I1(sdc_brdy),
        .I2(neg_brdy2),
        .O(bctl_brdy_reg_1));
  LUT2 #(
    .INIT(4'h8)) 
    brdy_INST_0
       (.I0(bctl_brdy),
        .I1(sdc_brdy),
        .O(brdy));
  LUT5 #(
    .INIT(32'h0000AAAB)) 
    \stat[0]_i_1__1 
       (.I0(\stat[0]_i_2__1_n_0 ),
        .I1(\stat_reg[2]_0 ),
        .I2(bcmd),
        .I3(\stat[0]_i_3__1_n_0 ),
        .I4(\stat[0]_i_4_n_0 ),
        .O(stat_nx[0]));
  LUT4 #(
    .INIT(16'h0434)) 
    \stat[0]_i_2__1 
       (.I0(sdc_brdy),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(stat[0]),
        .O(\stat[0]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \stat[0]_i_3__1 
       (.I0(bcs_acc_2),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(stat[2]),
        .O(\stat[0]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000D0D000D)) 
    \stat[0]_i_4 
       (.I0(stat[1]),
        .I1(stat[0]),
        .I2(bcs_sdram_n),
        .I3(stat[2]),
        .I4(sdc_brdy),
        .I5(cch_hit),
        .O(\stat[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h04FF0404040404FF)) 
    \stat[1]_i_1__1 
       (.I0(stat[2]),
        .I1(stat[1]),
        .I2(stat[0]),
        .I3(\stat[1]_i_2_n_0 ),
        .I4(bcmd),
        .I5(\stat_reg[2]_0 ),
        .O(stat_nx[1]));
  LUT5 #(
    .INIT(32'hDF0FFF0F)) 
    \stat[1]_i_2 
       (.I0(stat[0]),
        .I1(stat[1]),
        .I2(bcs_acc_2),
        .I3(stat[2]),
        .I4(sdc_brdy),
        .O(\stat[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4141414141FF4141)) 
    \stat[2]_i_2 
       (.I0(\stat[2]_i_3_n_0 ),
        .I1(bcmd),
        .I2(\stat_reg[2]_0 ),
        .I3(stat[1]),
        .I4(stat[2]),
        .I5(sdc_brdy),
        .O(stat_nx[2]));
  LUT5 #(
    .INIT(32'hFFFFECFE)) 
    \stat[2]_i_3 
       (.I0(stat[2]),
        .I1(bcs_acc_2),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(bcs_sdram_n),
        .O(\stat[2]_i_3_n_0 ));
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
    \badr1_c_reg[1] ,
    bdatw,
    \bdatw1_c_reg[31] ,
    last_sel_reg,
    bcmd,
    neg_brdy_x_reg_1,
    \stat_reg[1]_0 ,
    last_sel_cp,
    bcs_acc_l1_cp,
    \bcmd1[3] ,
    last_sel_c_reg,
    \bcmd1_c_reg[0] ,
    last_sel_reg_0,
    brdy_t,
    \bcmd1_c_reg[0]_0 ,
    badr,
    bmst,
    bdatr1,
    \stat_reg[0]_0 ,
    upd_bus_sel_reg_0,
    clk,
    D,
    .bdatw_0_sp_1(bdatw_0_sn_1),
    Q,
    .bcmd_0_sp_1(bcmd_0_sn_1),
    bdatw1,
    .bcmd_3_sp_1(bcmd_3_sn_1),
    \bcmd[3]_0 ,
    sdc_brdy,
    bctl_brdy,
    neg_brdy_x_reg_2,
    last_sel_reg_1,
    \stat_reg[2]_0 ,
    bcmd1,
    \bcmd1_c_reg[3] ,
    \bcmd[2] ,
    last_sel_c,
    last_sel_reg_2,
    rst_n,
    bcs_sdram_n,
    cch_hit,
    bcs_acc_2,
    bctl_brdy_reg,
    badr2_lw1,
    bus_sel_c,
    bdatr,
    \bdatr1[31] ,
    \bdatr1[31]_0 ,
    bcs_acc_l1_c,
    bcs_acc_l1,
    badr1_c,
    badr1,
    upd_bus_sel2,
    .bdatw_15_sp_1(bdatw_15_sn_1),
    .bdatw_14_sp_1(bdatw_14_sn_1),
    .bdatw_13_sp_1(bdatw_13_sn_1),
    .bdatw_12_sp_1(bdatw_12_sn_1),
    .bdatw_11_sp_1(bdatw_11_sn_1),
    .bdatw_9_sp_1(bdatw_9_sn_1),
    .bdatw_8_sp_1(bdatw_8_sn_1),
    .bdatw_7_sp_1(bdatw_7_sn_1),
    .bdatw_6_sp_1(bdatw_6_sn_1),
    .bdatw_5_sp_1(bdatw_5_sn_1),
    .bdatw_4_sp_1(bdatw_4_sn_1),
    .bdatw_3_sp_1(bdatw_3_sn_1),
    .bdatw_1_sp_1(bdatw_1_sn_1));
  output neg_brdy_x_reg_0;
  output \badr1_c_reg[1] ;
  output [31:0]bdatw;
  output [31:0]\bdatw1_c_reg[31] ;
  output last_sel_reg;
  output [3:0]bcmd;
  output neg_brdy_x_reg_1;
  output [0:0]\stat_reg[1]_0 ;
  output last_sel_cp;
  output bcs_acc_l1_cp;
  output [3:0]\bcmd1[3] ;
  output last_sel_c_reg;
  output \bcmd1_c_reg[0] ;
  output last_sel_reg_0;
  output brdy_t;
  output \bcmd1_c_reg[0]_0 ;
  output [23:0]badr;
  output bmst;
  output [15:0]bdatr1;
  output \stat_reg[0]_0 ;
  input upd_bus_sel_reg_0;
  input clk;
  input [18:0]D;
  input [31:0]Q;
  input [31:0]bdatw1;
  input \bcmd[3]_0 ;
  input sdc_brdy;
  input bctl_brdy;
  input neg_brdy_x_reg_2;
  input last_sel_reg_1;
  input \stat_reg[2]_0 ;
  input [3:0]bcmd1;
  input [3:0]\bcmd1_c_reg[3] ;
  input [2:0]\bcmd[2] ;
  input last_sel_c;
  input last_sel_reg_2;
  input rst_n;
  input bcs_sdram_n;
  input cch_hit;
  input bcs_acc_2;
  input bctl_brdy_reg;
  input [23:0]badr2_lw1;
  input bus_sel_c;
  input [15:0]bdatr;
  input [15:0]\bdatr1[31] ;
  input \bdatr1[31]_0 ;
  input bcs_acc_l1_c;
  input bcs_acc_l1;
  input [23:0]badr1_c;
  input [23:0]badr1;
  input upd_bus_sel2;
  input bdatw_0_sn_1;
  input bcmd_0_sn_1;
  input bcmd_3_sn_1;
  input bdatw_15_sn_1;
  input bdatw_14_sn_1;
  input bdatw_13_sn_1;
  input bdatw_12_sn_1;
  input bdatw_11_sn_1;
  input bdatw_9_sn_1;
  input bdatw_8_sn_1;
  input bdatw_7_sn_1;
  input bdatw_6_sn_1;
  input bdatw_5_sn_1;
  input bdatw_4_sn_1;
  input bdatw_3_sn_1;
  input bdatw_1_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [18:0]D;
  wire [31:0]Q;
  wire [23:0]badr;
  wire [23:0]badr1;
  wire [23:0]badr1_c;
  wire \badr1_c_reg[1] ;
  wire [23:0]badr1_lw1;
  wire [23:0]badr2_lw1;
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
  wire [3:0]bcmd;
  wire [3:0]bcmd1;
  wire [3:0]\bcmd1[3] ;
  wire \bcmd1_c_reg[0] ;
  wire \bcmd1_c_reg[0]_0 ;
  wire [3:0]\bcmd1_c_reg[3] ;
  wire [2:0]\bcmd[2] ;
  wire \bcmd[3]_0 ;
  wire \bcmd[3]_INST_0_i_12_n_0 ;
  wire \bcmd[3]_INST_0_i_13_n_0 ;
  wire \bcmd[3]_INST_0_i_14_n_0 ;
  wire \bcmd[3]_INST_0_i_1_n_0 ;
  wire \bcmd[3]_INST_0_i_2_n_0 ;
  wire \bcmd[3]_INST_0_i_3_n_0 ;
  wire \bcmd[3]_INST_0_i_8_n_0 ;
  wire \bcmd[3]_INST_0_i_9_n_0 ;
  wire bcmd_0_sn_1;
  wire bcmd_3_sn_1;
  wire bcs_acc_2;
  wire bcs_acc_l1;
  wire bcs_acc_l1_c;
  wire bcs_acc_l1_cp;
  wire bcs_sdram_n;
  wire bctl_brdy;
  wire bctl_brdy_reg;
  wire [15:0]bdatr;
  wire [15:0]bdatr1;
  wire [15:0]\bdatr1[31] ;
  wire \bdatr1[31]_0 ;
  wire \bdatr1[31]_INST_0_i_1_n_0 ;
  wire [31:0]bdatw;
  wire [31:0]bdatw1;
  wire [31:0]\bdatw1_c_reg[31] ;
  wire \bdatw[0]_INST_0_i_3_n_0 ;
  wire \bdatw[10]_INST_0_i_3_n_0 ;
  wire \bdatw[15]_INST_0_i_1_n_0 ;
  wire \bdatw[15]_INST_0_i_5_n_0 ;
  wire \bdatw[15]_INST_0_i_6_n_0 ;
  wire \bdatw[2]_INST_0_i_3_n_0 ;
  wire \bdatw[31]_INST_0_i_1_n_0 ;
  wire \bdatw[31]_INST_0_i_2_n_0 ;
  wire bdatw_0_sn_1;
  wire bdatw_11_sn_1;
  wire bdatw_12_sn_1;
  wire bdatw_13_sn_1;
  wire bdatw_14_sn_1;
  wire bdatw_15_sn_1;
  wire bdatw_1_sn_1;
  wire bdatw_3_sn_1;
  wire bdatw_4_sn_1;
  wire bdatw_5_sn_1;
  wire bdatw_6_sn_1;
  wire bdatw_7_sn_1;
  wire bdatw_8_sn_1;
  wire bdatw_9_sn_1;
  wire bmst;
  wire bmst_INST_0_i_1_n_0;
  wire bmst_INST_0_i_2_n_0;
  wire brdy_t;
  wire bus_sel_c;
  wire cch_hit;
  wire clk;
  wire last_sel_c;
  wire last_sel_c_reg;
  wire last_sel_cp;
  wire last_sel_reg;
  wire last_sel_reg_0;
  wire last_sel_reg_1;
  wire last_sel_reg_2;
  wire neg_brdy_x_reg_0;
  wire neg_brdy_x_reg_1;
  wire neg_brdy_x_reg_2;
  wire neg_brdy_x_t;
  wire rst_n;
  wire sdc_brdy;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[2]_i_2__0_n_0 ;
  wire [2:0]stat_nx;
  wire \stat_reg[0]_0 ;
  wire [0:0]\stat_reg[1]_0 ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg_n_0_[0] ;
  wire \stat_reg_n_0_[2] ;
  wire upd_bus_sel1;
  wire upd_bus_sel2;
  wire upd_bus_sel_i_2_n_0;
  wire upd_bus_sel_reg_0;
  wire upd_bus_sel_t;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr1_c[1]_i_1 
       (.I0(badr1_c[1]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[1]),
        .O(\badr1_c_reg[1] ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[0]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[0]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[0]),
        .O(badr[0]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[10]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[10]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[10]),
        .O(badr[10]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[11]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[11]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[11]),
        .O(badr[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[11]_INST_0_i_1 
       (.CI(\badr[7]_INST_0_i_1_n_0 ),
        .CO({\badr[11]_INST_0_i_1_n_0 ,\badr[11]_INST_0_i_1_n_1 ,\badr[11]_INST_0_i_1_n_2 ,\badr[11]_INST_0_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(badr1_lw1[11:8]),
        .S({\badr[11]_INST_0_i_3_n_0 ,\badr[11]_INST_0_i_4_n_0 ,\badr[11]_INST_0_i_5_n_0 ,\badr[11]_INST_0_i_6_n_0 }));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[11]_INST_0_i_3 
       (.I0(badr1_c[11]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[11]),
        .O(\badr[11]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[11]_INST_0_i_4 
       (.I0(badr1_c[10]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[10]),
        .O(\badr[11]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[11]_INST_0_i_5 
       (.I0(badr1_c[9]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[9]),
        .O(\badr[11]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[11]_INST_0_i_6 
       (.I0(badr1_c[8]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[8]),
        .O(\badr[11]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[12]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[12]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[12]),
        .O(badr[12]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[13]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[13]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[13]),
        .O(badr[13]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[14]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[14]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[14]),
        .O(badr[14]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[15]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[15]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[15]),
        .O(badr[15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[15]_INST_0_i_1 
       (.CI(\badr[11]_INST_0_i_1_n_0 ),
        .CO({\badr[15]_INST_0_i_1_n_0 ,\badr[15]_INST_0_i_1_n_1 ,\badr[15]_INST_0_i_1_n_2 ,\badr[15]_INST_0_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(badr1_lw1[15:12]),
        .S({\badr[15]_INST_0_i_3_n_0 ,\badr[15]_INST_0_i_4_n_0 ,\badr[15]_INST_0_i_5_n_0 ,\badr[15]_INST_0_i_6_n_0 }));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[15]_INST_0_i_3 
       (.I0(badr1_c[15]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[15]),
        .O(\badr[15]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[15]_INST_0_i_4 
       (.I0(badr1_c[14]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[14]),
        .O(\badr[15]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[15]_INST_0_i_5 
       (.I0(badr1_c[13]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[13]),
        .O(\badr[15]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[15]_INST_0_i_6 
       (.I0(badr1_c[12]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[12]),
        .O(\badr[15]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[16]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[16]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[16]),
        .O(badr[16]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[17]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[17]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[17]),
        .O(badr[17]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[18]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[18]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[18]),
        .O(badr[18]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[19]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[19]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[19]),
        .O(badr[19]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[19]_INST_0_i_1 
       (.CI(\badr[15]_INST_0_i_1_n_0 ),
        .CO({\badr[19]_INST_0_i_1_n_0 ,\badr[19]_INST_0_i_1_n_1 ,\badr[19]_INST_0_i_1_n_2 ,\badr[19]_INST_0_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(badr1_lw1[19:16]),
        .S({\badr[19]_INST_0_i_3_n_0 ,\badr[19]_INST_0_i_4_n_0 ,\badr[19]_INST_0_i_5_n_0 ,\badr[19]_INST_0_i_6_n_0 }));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[19]_INST_0_i_3 
       (.I0(badr1_c[19]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[19]),
        .O(\badr[19]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[19]_INST_0_i_4 
       (.I0(badr1_c[18]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[18]),
        .O(\badr[19]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[19]_INST_0_i_5 
       (.I0(badr1_c[17]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[17]),
        .O(\badr[19]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[19]_INST_0_i_6 
       (.I0(badr1_c[16]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[16]),
        .O(\badr[19]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[1]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[1]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[1]),
        .O(badr[1]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[20]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[20]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[20]),
        .O(badr[20]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[21]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[21]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[21]),
        .O(badr[21]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[22]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[22]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[22]),
        .O(badr[22]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[23]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[23]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[23]),
        .O(badr[23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[23]_INST_0_i_1 
       (.CI(\badr[19]_INST_0_i_1_n_0 ),
        .CO({\badr[23]_INST_0_i_1_n_1 ,\badr[23]_INST_0_i_1_n_2 ,\badr[23]_INST_0_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(badr1_lw1[23:20]),
        .S({\badr[23]_INST_0_i_3_n_0 ,\badr[23]_INST_0_i_4_n_0 ,\badr[23]_INST_0_i_5_n_0 ,\badr[23]_INST_0_i_6_n_0 }));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[23]_INST_0_i_3 
       (.I0(badr1_c[23]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[23]),
        .O(\badr[23]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[23]_INST_0_i_4 
       (.I0(badr1_c[22]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[22]),
        .O(\badr[23]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[23]_INST_0_i_5 
       (.I0(badr1_c[21]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[21]),
        .O(\badr[23]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[23]_INST_0_i_6 
       (.I0(badr1_c[20]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[20]),
        .O(\badr[23]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[2]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[2]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[2]),
        .O(badr[2]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[3]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[3]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[3]),
        .O(badr[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[3]_INST_0_i_1 
       (.CI(\<const0> ),
        .CO({\badr[3]_INST_0_i_1_n_0 ,\badr[3]_INST_0_i_1_n_1 ,\badr[3]_INST_0_i_1_n_2 ,\badr[3]_INST_0_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\badr1_c_reg[1] ,\<const0> }),
        .O(badr1_lw1[3:0]),
        .S({\badr[3]_INST_0_i_3_n_0 ,\badr[3]_INST_0_i_4_n_0 ,\badr[3]_INST_0_i_5_n_0 ,\badr[3]_INST_0_i_6_n_0 }));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[3]_INST_0_i_3 
       (.I0(badr1_c[3]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[3]),
        .O(\badr[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[3]_INST_0_i_4 
       (.I0(badr1_c[2]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[2]),
        .O(\badr[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA99969996AAA)) 
    \badr[3]_INST_0_i_5 
       (.I0(\badr1_c_reg[1] ),
        .I1(\stat_reg_n_0_[0] ),
        .I2(sdc_brdy),
        .I3(bctl_brdy),
        .I4(\stat_reg[1]_0 ),
        .I5(\stat_reg_n_0_[2] ),
        .O(\badr[3]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[3]_INST_0_i_6 
       (.I0(badr1_c[0]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[0]),
        .O(\badr[3]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[4]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[4]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[4]),
        .O(badr[4]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[5]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[5]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[5]),
        .O(badr[5]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[6]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[6]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[6]),
        .O(badr[6]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[7]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[7]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[7]),
        .O(badr[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[7]_INST_0_i_1 
       (.CI(\badr[3]_INST_0_i_1_n_0 ),
        .CO({\badr[7]_INST_0_i_1_n_0 ,\badr[7]_INST_0_i_1_n_1 ,\badr[7]_INST_0_i_1_n_2 ,\badr[7]_INST_0_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(badr1_lw1[7:4]),
        .S({\badr[7]_INST_0_i_3_n_0 ,\badr[7]_INST_0_i_4_n_0 ,\badr[7]_INST_0_i_5_n_0 ,\badr[7]_INST_0_i_6_n_0 }));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[7]_INST_0_i_3 
       (.I0(badr1_c[7]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[7]),
        .O(\badr[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[7]_INST_0_i_4 
       (.I0(badr1_c[6]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[6]),
        .O(\badr[7]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[7]_INST_0_i_5 
       (.I0(badr1_c[5]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[5]),
        .O(\badr[7]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[7]_INST_0_i_6 
       (.I0(badr1_c[4]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr1[4]),
        .O(\badr[7]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[8]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[8]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[8]),
        .O(badr[8]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[9]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(badr1_lw1[9]),
        .I2(last_sel_reg),
        .I3(badr2_lw1[9]),
        .O(badr[9]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bcmd1_c[0]_i_1 
       (.I0(bcmd1[0]),
        .I1(neg_brdy_x_reg_0),
        .I2(sdc_brdy),
        .I3(bctl_brdy),
        .I4(\bcmd1_c_reg[3] [0]),
        .O(\bcmd1[3] [0]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bcmd1_c[1]_i_1 
       (.I0(\bcmd1_c_reg[3] [1]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bcmd1[1]),
        .O(\bcmd1[3] [1]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bcmd1_c[2]_i_1 
       (.I0(\bcmd1_c_reg[3] [2]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bcmd1[2]),
        .O(\bcmd1[3] [2]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bcmd1_c[3]_i_1 
       (.I0(bcmd1[3]),
        .I1(neg_brdy_x_reg_0),
        .I2(sdc_brdy),
        .I3(bctl_brdy),
        .I4(\bcmd1_c_reg[3] [3]),
        .O(\bcmd1[3] [3]));
  LUT6 #(
    .INIT(64'h22222222FFF222F2)) 
    \bcmd[0]_INST_0 
       (.I0(\bcmd[2] [0]),
        .I1(last_sel_reg),
        .I2(bcmd1[0]),
        .I3(bcmd_0_sn_1),
        .I4(\bcmd1_c_reg[3] [0]),
        .I5(\bcmd[3]_INST_0_i_2_n_0 ),
        .O(bcmd[0]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \bcmd[1]_INST_0 
       (.I0(last_sel_reg),
        .I1(\bcmd[2] [1]),
        .I2(\bcmd[3]_INST_0_i_2_n_0 ),
        .I3(\bcmd1_c_reg[3] [1]),
        .I4(bcmd_0_sn_1),
        .I5(bcmd1[1]),
        .O(bcmd[1]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \bcmd[2]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bcmd1_c_reg[3] [2]),
        .I2(bcmd_0_sn_1),
        .I3(bcmd1[2]),
        .I4(last_sel_reg),
        .I5(\bcmd[2] [2]),
        .O(bcmd[2]));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \bcmd[3]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_1_n_0 ),
        .I1(\bcmd[3]_INST_0_i_2_n_0 ),
        .I2(\bcmd[3]_INST_0_i_3_n_0 ),
        .I3(bcmd_3_sn_1),
        .I4(last_sel_reg),
        .I5(\bcmd[3]_0 ),
        .O(bcmd[3]));
  LUT5 #(
    .INIT(32'h1555D555)) 
    \bcmd[3]_INST_0_i_1 
       (.I0(\bcmd1_c_reg[3] [3]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bcmd1[3]),
        .O(\bcmd[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4540FFFF)) 
    \bcmd[3]_INST_0_i_10 
       (.I0(bmst_INST_0_i_2_n_0),
        .I1(last_sel_c),
        .I2(bmst_INST_0_i_1_n_0),
        .I3(last_sel_reg_2),
        .I4(last_sel_reg_1),
        .I5(\stat_reg[2]_0 ),
        .O(last_sel_c_reg));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \bcmd[3]_INST_0_i_12 
       (.I0(bcmd1[1]),
        .I1(\bcmd1_c_reg[3] [1]),
        .I2(bcmd1[0]),
        .I3(bcmd_0_sn_1),
        .I4(\bcmd1_c_reg[3] [0]),
        .O(\bcmd[3]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h1555D555)) 
    \bcmd[3]_INST_0_i_13 
       (.I0(\bcmd1_c_reg[3] [1]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bcmd1[1]),
        .O(\bcmd[3]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h1555D555)) 
    \bcmd[3]_INST_0_i_14 
       (.I0(\bcmd1_c_reg[3] [0]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bcmd1[0]),
        .O(\bcmd[3]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    \bcmd[3]_INST_0_i_2 
       (.I0(\stat_reg[2]_0 ),
        .I1(last_sel_reg_1),
        .I2(last_sel_reg_2),
        .I3(bmst_INST_0_i_2_n_0),
        .I4(bmst_INST_0_i_1_n_0),
        .I5(bus_sel_c),
        .O(\bcmd[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA889998AA88FFF8)) 
    \bcmd[3]_INST_0_i_3 
       (.I0(\stat_reg_n_0_[2] ),
        .I1(\stat_reg[1]_0 ),
        .I2(\bcmd[3]_INST_0_i_8_n_0 ),
        .I3(\bcmd[3]_INST_0_i_9_n_0 ),
        .I4(\stat_reg_n_0_[0] ),
        .I5(\stat_reg[2]_0 ),
        .O(\bcmd[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \bcmd[3]_INST_0_i_5 
       (.I0(\stat_reg[2]_0 ),
        .I1(last_sel_reg_1),
        .I2(last_sel_reg_2),
        .I3(bmst_INST_0_i_2_n_0),
        .I4(bmst_INST_0_i_1_n_0),
        .I5(bus_sel_c),
        .O(last_sel_reg));
  LUT6 #(
    .INIT(64'hAAAEEEAEFFFFFFFF)) 
    \bcmd[3]_INST_0_i_8 
       (.I0(\stat_reg[2]_0 ),
        .I1(last_sel_reg_1),
        .I2(last_sel_reg_2),
        .I3(bmst_INST_0_i_1_n_0),
        .I4(last_sel_c),
        .I5(\bcmd[3]_INST_0_i_12_n_0 ),
        .O(\bcmd[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFEBFFFFFFEBFFEB)) 
    \bcmd[3]_INST_0_i_9 
       (.I0(neg_brdy_x_reg_2),
        .I1(\bcmd[3]_INST_0_i_13_n_0 ),
        .I2(\bcmd[3]_INST_0_i_14_n_0 ),
        .I3(\bcmd[3]_INST_0_i_1_n_0 ),
        .I4(\badr1_c_reg[1] ),
        .I5(bcs_acc_l1_cp),
        .O(\bcmd[3]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    bcs_acc_l1_c_i_1
       (.I0(bcs_acc_l1_c),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bcs_acc_l1),
        .O(bcs_acc_l1_cp));
  LUT6 #(
    .INIT(64'h0AFFFFFFFFFF0EFF)) 
    bctl_brdy_i_1
       (.I0(bcs_sdram_n),
        .I1(cch_hit),
        .I2(bcs_acc_2),
        .I3(bctl_brdy_reg),
        .I4(bcmd[1]),
        .I5(\bcmd1_c_reg[0]_0 ),
        .O(brdy_t));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[16]_INST_0 
       (.I0(bdatr[0]),
        .I1(\bdatr1[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr1[31] [0]),
        .O(bdatr1[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[17]_INST_0 
       (.I0(bdatr[1]),
        .I1(\bdatr1[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr1[31] [1]),
        .O(bdatr1[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[18]_INST_0 
       (.I0(bdatr[2]),
        .I1(\bdatr1[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr1[31] [2]),
        .O(bdatr1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[19]_INST_0 
       (.I0(bdatr[3]),
        .I1(\bdatr1[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr1[31] [3]),
        .O(bdatr1[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[20]_INST_0 
       (.I0(bdatr[4]),
        .I1(\bdatr1[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr1[31] [4]),
        .O(bdatr1[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[21]_INST_0 
       (.I0(bdatr[5]),
        .I1(\bdatr1[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr1[31] [5]),
        .O(bdatr1[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[22]_INST_0 
       (.I0(bdatr[6]),
        .I1(\bdatr1[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr1[31] [6]),
        .O(bdatr1[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[23]_INST_0 
       (.I0(bdatr[7]),
        .I1(\bdatr1[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr1[31] [7]),
        .O(bdatr1[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[24]_INST_0 
       (.I0(bdatr[8]),
        .I1(\bdatr1[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr1[31] [8]),
        .O(bdatr1[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[25]_INST_0 
       (.I0(bdatr[9]),
        .I1(\bdatr1[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr1[31] [9]),
        .O(bdatr1[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[26]_INST_0 
       (.I0(bdatr[10]),
        .I1(\bdatr1[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr1[31] [10]),
        .O(bdatr1[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[27]_INST_0 
       (.I0(bdatr[11]),
        .I1(\bdatr1[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr1[31] [11]),
        .O(bdatr1[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[28]_INST_0 
       (.I0(bdatr[12]),
        .I1(\bdatr1[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr1[31] [12]),
        .O(bdatr1[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[29]_INST_0 
       (.I0(bdatr[13]),
        .I1(\bdatr1[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr1[31] [13]),
        .O(bdatr1[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[30]_INST_0 
       (.I0(bdatr[14]),
        .I1(\bdatr1[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr1[31] [14]),
        .O(bdatr1[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr1[31]_INST_0 
       (.I0(bdatr[15]),
        .I1(\bdatr1[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr1[31] [15]),
        .O(bdatr1[15]));
  LUT5 #(
    .INIT(32'hFFFFF1FF)) 
    \bdatr1[31]_INST_0_i_1 
       (.I0(\bcmd[3]_INST_0_i_8_n_0 ),
        .I1(\bdatr1[31]_0 ),
        .I2(\stat_reg_n_0_[0] ),
        .I3(\stat_reg[1]_0 ),
        .I4(\stat_reg_n_0_[2] ),
        .O(\bdatr1[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw1_c[16]_i_1 
       (.I0(Q[16]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[16]),
        .O(\bdatw1_c_reg[31] [16]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw1_c[18]_i_1 
       (.I0(Q[18]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[18]),
        .O(\bdatw1_c_reg[31] [18]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw1_c[26]_i_1 
       (.I0(Q[26]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[26]),
        .O(\bdatw1_c_reg[31] [26]));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[0]_INST_0 
       (.I0(D[0]),
        .I1(\bdatw[31]_INST_0_i_2_n_0 ),
        .I2(\bdatw1_c_reg[31] [0]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw[0]_INST_0_i_3_n_0 ),
        .O(bdatw[0]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[0]_INST_0_i_2 
       (.I0(Q[0]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[0]),
        .O(\bdatw1_c_reg[31] [0]));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \bdatw[0]_INST_0_i_3 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(\bdatw1_c_reg[31] [16]),
        .I3(last_sel_reg),
        .I4(bdatw_0_sn_1),
        .I5(D[3]),
        .O(\bdatw[0]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[10]_INST_0 
       (.I0(D[2]),
        .I1(\bdatw[31]_INST_0_i_2_n_0 ),
        .I2(\bdatw1_c_reg[31] [10]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw[10]_INST_0_i_3_n_0 ),
        .O(bdatw[10]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[10]_INST_0_i_2 
       (.I0(Q[10]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[10]),
        .O(\bdatw1_c_reg[31] [10]));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \bdatw[10]_INST_0_i_3 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(\bdatw1_c_reg[31] [26]),
        .I3(last_sel_reg),
        .I4(bdatw_0_sn_1),
        .I5(D[13]),
        .O(\bdatw[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FFF4F0F0FFF0)) 
    \bdatw[11]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_11_sn_1),
        .I3(\bdatw1_c_reg[31] [11]),
        .I4(\bdatw[31]_INST_0_i_1_n_0 ),
        .I5(\bdatw1_c_reg[31] [27]),
        .O(bdatw[11]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[11]_INST_0_i_2 
       (.I0(Q[11]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[11]),
        .O(\bdatw1_c_reg[31] [11]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[11]_INST_0_i_3 
       (.I0(Q[27]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[27]),
        .O(\bdatw1_c_reg[31] [27]));
  LUT6 #(
    .INIT(64'hF4F4FFF4F0F0FFF0)) 
    \bdatw[12]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_12_sn_1),
        .I3(\bdatw1_c_reg[31] [12]),
        .I4(\bdatw[31]_INST_0_i_1_n_0 ),
        .I5(\bdatw1_c_reg[31] [28]),
        .O(bdatw[12]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[12]_INST_0_i_2 
       (.I0(Q[12]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[12]),
        .O(\bdatw1_c_reg[31] [12]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[12]_INST_0_i_3 
       (.I0(Q[28]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[28]),
        .O(\bdatw1_c_reg[31] [28]));
  LUT6 #(
    .INIT(64'hF4F0F4F0FFFFF4F0)) 
    \bdatw[13]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_13_sn_1),
        .I3(\bdatw1_c_reg[31] [29]),
        .I4(\bdatw1_c_reg[31] [13]),
        .I5(\bdatw[31]_INST_0_i_1_n_0 ),
        .O(bdatw[13]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[13]_INST_0_i_2 
       (.I0(Q[29]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[29]),
        .O(\bdatw1_c_reg[31] [29]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[13]_INST_0_i_3 
       (.I0(Q[13]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[13]),
        .O(\bdatw1_c_reg[31] [13]));
  LUT6 #(
    .INIT(64'hF4F0F4F0FFFFF4F0)) 
    \bdatw[14]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_14_sn_1),
        .I3(\bdatw1_c_reg[31] [30]),
        .I4(\bdatw1_c_reg[31] [14]),
        .I5(\bdatw[31]_INST_0_i_1_n_0 ),
        .O(bdatw[14]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[14]_INST_0_i_2 
       (.I0(Q[30]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[30]),
        .O(\bdatw1_c_reg[31] [30]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[14]_INST_0_i_3 
       (.I0(Q[14]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[14]),
        .O(\bdatw1_c_reg[31] [14]));
  LUT6 #(
    .INIT(64'hF4F4FFF4F0F0FFF0)) 
    \bdatw[15]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_15_sn_1),
        .I3(\bdatw1_c_reg[31] [15]),
        .I4(\bdatw[31]_INST_0_i_1_n_0 ),
        .I5(\bdatw1_c_reg[31] [31]),
        .O(bdatw[15]));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    \bdatw[15]_INST_0_i_1 
       (.I0(\bcmd[3]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_n_0 ),
        .I2(\bdatw[15]_INST_0_i_6_n_0 ),
        .I3(bcmd1[0]),
        .I4(bcmd_0_sn_1),
        .I5(\bcmd1_c_reg[3] [0]),
        .O(\bdatw[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[15]_INST_0_i_3 
       (.I0(Q[15]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[15]),
        .O(\bdatw1_c_reg[31] [15]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[15]_INST_0_i_4 
       (.I0(Q[31]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[31]),
        .O(\bdatw1_c_reg[31] [31]));
  LUT6 #(
    .INIT(64'hFFFF55FFFFBE14BE)) 
    \bdatw[15]_INST_0_i_5 
       (.I0(\stat_reg_n_0_[0] ),
        .I1(\bcmd[3]_INST_0_i_14_n_0 ),
        .I2(\bcmd1[3] [1]),
        .I3(\stat_reg_n_0_[2] ),
        .I4(\stat_reg[1]_0 ),
        .I5(\stat_reg[2]_0 ),
        .O(\bdatw[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555001400145555)) 
    \bdatw[15]_INST_0_i_6 
       (.I0(\stat_reg_n_0_[0] ),
        .I1(\bcmd[2] [0]),
        .I2(\bcmd[2] [1]),
        .I3(last_sel_cp),
        .I4(\bcmd[3]_INST_0_i_13_n_0 ),
        .I5(\bcmd[3]_INST_0_i_14_n_0 ),
        .O(\bdatw[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \bdatw[16]_INST_0 
       (.I0(\bdatw[31]_INST_0_i_1_n_0 ),
        .I1(Q[16]),
        .I2(bcmd_0_sn_1),
        .I3(bdatw1[16]),
        .I4(\bdatw[31]_INST_0_i_2_n_0 ),
        .I5(D[3]),
        .O(bdatw[16]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \bdatw[17]_INST_0 
       (.I0(\bdatw[31]_INST_0_i_1_n_0 ),
        .I1(Q[17]),
        .I2(bcmd_0_sn_1),
        .I3(bdatw1[17]),
        .I4(\bdatw[31]_INST_0_i_2_n_0 ),
        .I5(D[4]),
        .O(bdatw[17]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \bdatw[18]_INST_0 
       (.I0(\bdatw[31]_INST_0_i_1_n_0 ),
        .I1(Q[18]),
        .I2(bcmd_0_sn_1),
        .I3(bdatw1[18]),
        .I4(\bdatw[31]_INST_0_i_2_n_0 ),
        .I5(D[5]),
        .O(bdatw[18]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \bdatw[19]_INST_0 
       (.I0(\bdatw[31]_INST_0_i_1_n_0 ),
        .I1(Q[19]),
        .I2(bcmd_0_sn_1),
        .I3(bdatw1[19]),
        .I4(\bdatw[31]_INST_0_i_2_n_0 ),
        .I5(D[6]),
        .O(bdatw[19]));
  LUT6 #(
    .INIT(64'hF4F0F4F0FFFFF4F0)) 
    \bdatw[1]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_1_sn_1),
        .I3(\bdatw1_c_reg[31] [17]),
        .I4(\bdatw1_c_reg[31] [1]),
        .I5(\bdatw[31]_INST_0_i_1_n_0 ),
        .O(bdatw[1]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[1]_INST_0_i_2 
       (.I0(Q[17]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[17]),
        .O(\bdatw1_c_reg[31] [17]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[1]_INST_0_i_3 
       (.I0(Q[1]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[1]),
        .O(\bdatw1_c_reg[31] [1]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \bdatw[20]_INST_0 
       (.I0(\bdatw[31]_INST_0_i_1_n_0 ),
        .I1(Q[20]),
        .I2(bcmd_0_sn_1),
        .I3(bdatw1[20]),
        .I4(\bdatw[31]_INST_0_i_2_n_0 ),
        .I5(D[7]),
        .O(bdatw[20]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \bdatw[21]_INST_0 
       (.I0(\bdatw[31]_INST_0_i_1_n_0 ),
        .I1(Q[21]),
        .I2(bcmd_0_sn_1),
        .I3(bdatw1[21]),
        .I4(\bdatw[31]_INST_0_i_2_n_0 ),
        .I5(D[8]),
        .O(bdatw[21]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \bdatw[22]_INST_0 
       (.I0(\bdatw[31]_INST_0_i_1_n_0 ),
        .I1(Q[22]),
        .I2(bcmd_0_sn_1),
        .I3(bdatw1[22]),
        .I4(\bdatw[31]_INST_0_i_2_n_0 ),
        .I5(D[9]),
        .O(bdatw[22]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \bdatw[23]_INST_0 
       (.I0(\bdatw[31]_INST_0_i_1_n_0 ),
        .I1(Q[23]),
        .I2(bcmd_0_sn_1),
        .I3(bdatw1[23]),
        .I4(\bdatw[31]_INST_0_i_2_n_0 ),
        .I5(D[10]),
        .O(bdatw[23]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \bdatw[24]_INST_0 
       (.I0(\bdatw[31]_INST_0_i_1_n_0 ),
        .I1(Q[24]),
        .I2(bcmd_0_sn_1),
        .I3(bdatw1[24]),
        .I4(\bdatw[31]_INST_0_i_2_n_0 ),
        .I5(D[11]),
        .O(bdatw[24]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \bdatw[25]_INST_0 
       (.I0(\bdatw[31]_INST_0_i_1_n_0 ),
        .I1(Q[25]),
        .I2(bcmd_0_sn_1),
        .I3(bdatw1[25]),
        .I4(\bdatw[31]_INST_0_i_2_n_0 ),
        .I5(D[12]),
        .O(bdatw[25]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \bdatw[26]_INST_0 
       (.I0(\bdatw[31]_INST_0_i_1_n_0 ),
        .I1(Q[26]),
        .I2(bcmd_0_sn_1),
        .I3(bdatw1[26]),
        .I4(\bdatw[31]_INST_0_i_2_n_0 ),
        .I5(D[13]),
        .O(bdatw[26]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \bdatw[27]_INST_0 
       (.I0(\bdatw[31]_INST_0_i_1_n_0 ),
        .I1(Q[27]),
        .I2(bcmd_0_sn_1),
        .I3(bdatw1[27]),
        .I4(\bdatw[31]_INST_0_i_2_n_0 ),
        .I5(D[14]),
        .O(bdatw[27]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \bdatw[28]_INST_0 
       (.I0(\bdatw[31]_INST_0_i_1_n_0 ),
        .I1(Q[28]),
        .I2(bcmd_0_sn_1),
        .I3(bdatw1[28]),
        .I4(\bdatw[31]_INST_0_i_2_n_0 ),
        .I5(D[15]),
        .O(bdatw[28]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \bdatw[29]_INST_0 
       (.I0(\bdatw[31]_INST_0_i_1_n_0 ),
        .I1(Q[29]),
        .I2(bcmd_0_sn_1),
        .I3(bdatw1[29]),
        .I4(\bdatw[31]_INST_0_i_2_n_0 ),
        .I5(D[16]),
        .O(bdatw[29]));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[2]_INST_0 
       (.I0(D[1]),
        .I1(\bdatw[31]_INST_0_i_2_n_0 ),
        .I2(\bdatw1_c_reg[31] [2]),
        .I3(\bdatw[31]_INST_0_i_1_n_0 ),
        .I4(\bdatw[2]_INST_0_i_3_n_0 ),
        .O(bdatw[2]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[2]_INST_0_i_2 
       (.I0(Q[2]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[2]),
        .O(\bdatw1_c_reg[31] [2]));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \bdatw[2]_INST_0_i_3 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(\bdatw1_c_reg[31] [18]),
        .I3(last_sel_reg),
        .I4(bdatw_0_sn_1),
        .I5(D[5]),
        .O(\bdatw[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \bdatw[30]_INST_0 
       (.I0(\bdatw[31]_INST_0_i_1_n_0 ),
        .I1(Q[30]),
        .I2(bcmd_0_sn_1),
        .I3(bdatw1[30]),
        .I4(\bdatw[31]_INST_0_i_2_n_0 ),
        .I5(D[17]),
        .O(bdatw[30]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \bdatw[31]_INST_0 
       (.I0(\bdatw[31]_INST_0_i_1_n_0 ),
        .I1(Q[31]),
        .I2(bcmd_0_sn_1),
        .I3(bdatw1[31]),
        .I4(\bdatw[31]_INST_0_i_2_n_0 ),
        .I5(D[18]),
        .O(bdatw[31]));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[31]_INST_0_i_1 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .O(\bdatw[31]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[31]_INST_0_i_2 
       (.I0(last_sel_reg),
        .I1(bdatw_0_sn_1),
        .O(\bdatw[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h202A808A2A208A80)) 
    \bdatw[31]_INST_0_i_5 
       (.I0(last_sel_cp),
        .I1(\bcmd1_c_reg[3] [0]),
        .I2(bcmd_0_sn_1),
        .I3(bcmd1[0]),
        .I4(\bcmd1_c_reg[3] [1]),
        .I5(bcmd1[1]),
        .O(\bcmd1_c_reg[0] ));
  LUT6 #(
    .INIT(64'hF4F0F4F0FFFFF4F0)) 
    \bdatw[3]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_3_sn_1),
        .I3(\bdatw1_c_reg[31] [19]),
        .I4(\bdatw1_c_reg[31] [3]),
        .I5(\bdatw[31]_INST_0_i_1_n_0 ),
        .O(bdatw[3]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[3]_INST_0_i_2 
       (.I0(Q[19]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[19]),
        .O(\bdatw1_c_reg[31] [19]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[3]_INST_0_i_3 
       (.I0(Q[3]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[3]),
        .O(\bdatw1_c_reg[31] [3]));
  LUT6 #(
    .INIT(64'hF4F4FFF4F0F0FFF0)) 
    \bdatw[4]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_4_sn_1),
        .I3(\bdatw1_c_reg[31] [4]),
        .I4(\bdatw[31]_INST_0_i_1_n_0 ),
        .I5(\bdatw1_c_reg[31] [20]),
        .O(bdatw[4]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[4]_INST_0_i_2 
       (.I0(Q[4]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[4]),
        .O(\bdatw1_c_reg[31] [4]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[4]_INST_0_i_3 
       (.I0(Q[20]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[20]),
        .O(\bdatw1_c_reg[31] [20]));
  LUT6 #(
    .INIT(64'hF4F0F4F0FFFFF4F0)) 
    \bdatw[5]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_5_sn_1),
        .I3(\bdatw1_c_reg[31] [21]),
        .I4(\bdatw1_c_reg[31] [5]),
        .I5(\bdatw[31]_INST_0_i_1_n_0 ),
        .O(bdatw[5]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[5]_INST_0_i_2 
       (.I0(Q[21]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[21]),
        .O(\bdatw1_c_reg[31] [21]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[5]_INST_0_i_3 
       (.I0(Q[5]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[5]),
        .O(\bdatw1_c_reg[31] [5]));
  LUT6 #(
    .INIT(64'hF4F0F4F0FFFFF4F0)) 
    \bdatw[6]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_6_sn_1),
        .I3(\bdatw1_c_reg[31] [22]),
        .I4(\bdatw1_c_reg[31] [6]),
        .I5(\bdatw[31]_INST_0_i_1_n_0 ),
        .O(bdatw[6]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[6]_INST_0_i_2 
       (.I0(Q[22]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[22]),
        .O(\bdatw1_c_reg[31] [22]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[6]_INST_0_i_3 
       (.I0(Q[6]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[6]),
        .O(\bdatw1_c_reg[31] [6]));
  LUT6 #(
    .INIT(64'hF4F0F4F0FFFFF4F0)) 
    \bdatw[7]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_7_sn_1),
        .I3(\bdatw1_c_reg[31] [23]),
        .I4(\bdatw1_c_reg[31] [7]),
        .I5(\bdatw[31]_INST_0_i_1_n_0 ),
        .O(bdatw[7]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[7]_INST_0_i_2 
       (.I0(Q[23]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[23]),
        .O(\bdatw1_c_reg[31] [23]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[7]_INST_0_i_3 
       (.I0(Q[7]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[7]),
        .O(\bdatw1_c_reg[31] [7]));
  LUT6 #(
    .INIT(64'hF4F4FFF4F0F0FFF0)) 
    \bdatw[8]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_8_sn_1),
        .I3(\bdatw1_c_reg[31] [8]),
        .I4(\bdatw[31]_INST_0_i_1_n_0 ),
        .I5(\bdatw1_c_reg[31] [24]),
        .O(bdatw[8]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[8]_INST_0_i_2 
       (.I0(Q[8]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[8]),
        .O(\bdatw1_c_reg[31] [8]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[8]_INST_0_i_3 
       (.I0(Q[24]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[24]),
        .O(\bdatw1_c_reg[31] [24]));
  LUT6 #(
    .INIT(64'hF4F0F4F0FFFFF4F0)) 
    \bdatw[9]_INST_0 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(bdatw_9_sn_1),
        .I3(\bdatw1_c_reg[31] [25]),
        .I4(\bdatw1_c_reg[31] [9]),
        .I5(\bdatw[31]_INST_0_i_1_n_0 ),
        .O(bdatw[9]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[9]_INST_0_i_2 
       (.I0(Q[25]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[25]),
        .O(\bdatw1_c_reg[31] [25]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[9]_INST_0_i_3 
       (.I0(Q[9]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw1[9]),
        .O(\bdatw1_c_reg[31] [9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    bmst_INST_0
       (.I0(bus_sel_c),
        .I1(bmst_INST_0_i_1_n_0),
        .I2(bmst_INST_0_i_2_n_0),
        .I3(last_sel_reg_2),
        .I4(last_sel_reg_1),
        .O(bmst));
  LUT4 #(
    .INIT(16'hFFF7)) 
    bmst_INST_0_i_1
       (.I0(bctl_brdy),
        .I1(sdc_brdy),
        .I2(upd_bus_sel1),
        .I3(upd_bus_sel2),
        .O(bmst_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    bmst_INST_0_i_2
       (.I0(bcmd1[1]),
        .I1(\bcmd1_c_reg[3] [1]),
        .I2(bcmd1[0]),
        .I3(bcmd_0_sn_1),
        .I4(\bcmd1_c_reg[3] [0]),
        .O(bmst_INST_0_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    brdy1_INST_0
       (.I0(neg_brdy_x_reg_0),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .O(neg_brdy_x_reg_1));
  LUT2 #(
    .INIT(4'h2)) 
    \datrh[15]_i_2 
       (.I0(\stat_reg_n_0_[0] ),
        .I1(\stat_reg_n_0_[2] ),
        .O(\stat_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEAAAAAAA2A)) 
    last_sel_c_i_1
       (.I0(last_sel_c),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(upd_bus_sel1),
        .I4(upd_bus_sel2),
        .I5(last_sel_reg_2),
        .O(last_sel_cp));
  LUT5 #(
    .INIT(32'hFA440000)) 
    last_sel_i_1
       (.I0(bmst_INST_0_i_1_n_0),
        .I1(last_sel_reg_1),
        .I2(bmst_INST_0_i_2_n_0),
        .I3(last_sel_reg_2),
        .I4(rst_n),
        .O(last_sel_reg_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAFBBBAAAA)) 
    neg_brdy_x_i_1
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(\bcmd[3]_INST_0_i_8_n_0 ),
        .I2(\stat_reg_n_0_[0] ),
        .I3(\stat_reg_n_0_[2] ),
        .I4(\stat[0]_i_3_n_0 ),
        .I5(neg_brdy_x_reg_2),
        .O(neg_brdy_x_t));
  FDSE neg_brdy_x_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(neg_brdy_x_t),
        .Q(neg_brdy_x_reg_0),
        .S(upd_bus_sel_reg_0));
  LUT6 #(
    .INIT(64'h5555555504445555)) 
    \stat[0]_i_1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(\bcmd[3]_INST_0_i_8_n_0 ),
        .I2(\stat_reg_n_0_[0] ),
        .I3(\stat_reg_n_0_[2] ),
        .I4(\stat[0]_i_3_n_0 ),
        .I5(neg_brdy_x_reg_2),
        .O(stat_nx[0]));
  LUT6 #(
    .INIT(64'hAEFCAF0FAF0FAF0F)) 
    \stat[0]_i_2 
       (.I0(\stat_reg[1]_0 ),
        .I1(bmst_INST_0_i_2_n_0),
        .I2(\stat_reg_n_0_[0] ),
        .I3(\stat_reg_n_0_[2] ),
        .I4(sdc_brdy),
        .I5(bctl_brdy),
        .O(\stat[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF2F2FF)) 
    \stat[0]_i_3 
       (.I0(bcs_acc_l1_cp),
        .I1(\badr1_c_reg[1] ),
        .I2(\bcmd[3]_INST_0_i_1_n_0 ),
        .I3(\bcmd[3]_INST_0_i_14_n_0 ),
        .I4(\bcmd[3]_INST_0_i_13_n_0 ),
        .O(\stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAEEAAEEAAEE)) 
    \stat[1]_i_1__0 
       (.I0(\bdatw[15]_INST_0_i_1_n_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(\stat_reg_n_0_[0] ),
        .I3(\stat_reg_n_0_[2] ),
        .I4(bctl_brdy),
        .I5(sdc_brdy),
        .O(stat_nx[1]));
  LUT6 #(
    .INIT(64'h00AA0A0000A20202)) 
    \stat[2]_i_1 
       (.I0(\stat[2]_i_2__0_n_0 ),
        .I1(bmst_INST_0_i_2_n_0),
        .I2(\stat_reg[2]_0 ),
        .I3(\stat_reg[1]_0 ),
        .I4(\stat_reg_n_0_[2] ),
        .I5(\stat_reg_n_0_[0] ),
        .O(stat_nx[2]));
  LUT6 #(
    .INIT(64'hEEEEEEEECFFFCFCF)) 
    \stat[2]_i_2__0 
       (.I0(\stat_reg[1]_0 ),
        .I1(neg_brdy_x_reg_2),
        .I2(\bcmd[3]_INST_0_i_12_n_0 ),
        .I3(last_sel_cp),
        .I4(last_sel_reg_1),
        .I5(\stat_reg_n_0_[0] ),
        .O(\stat[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    \stat[2]_i_4 
       (.I0(\bcmd[3]_INST_0_i_2_n_0 ),
        .I1(\bcmd1_c_reg[3] [0]),
        .I2(bcmd_0_sn_1),
        .I3(bcmd1[0]),
        .I4(last_sel_reg),
        .I5(\bcmd[2] [0]),
        .O(\bcmd1_c_reg[0]_0 ));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[0]),
        .Q(\stat_reg_n_0_[0] ),
        .R(upd_bus_sel_reg_0));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[1]),
        .Q(\stat_reg[1]_0 ),
        .R(upd_bus_sel_reg_0));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[2]),
        .Q(\stat_reg_n_0_[2] ),
        .R(upd_bus_sel_reg_0));
  LUT5 #(
    .INIT(32'hAAAEAEAE)) 
    upd_bus_sel_i_1__0
       (.I0(upd_bus_sel_i_2_n_0),
        .I1(\stat_reg_n_0_[0] ),
        .I2(\stat_reg_n_0_[2] ),
        .I3(sdc_brdy),
        .I4(bctl_brdy),
        .O(upd_bus_sel_t));
  LUT6 #(
    .INIT(64'h000000000000FF8A)) 
    upd_bus_sel_i_2
       (.I0(\bcmd[3]_INST_0_i_12_n_0 ),
        .I1(last_sel_cp),
        .I2(last_sel_reg_1),
        .I3(\stat_reg_n_0_[0] ),
        .I4(\bdatw[15]_INST_0_i_5_n_0 ),
        .I5(\bcmd[3]_INST_0_i_9_n_0 ),
        .O(upd_bus_sel_i_2_n_0));
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
    upd_bus_sel2,
    badr2_lw1,
    \badr2_c_reg[1] ,
    \bdatw2_c_reg[1] ,
    \stat_reg[0]_0 ,
    D,
    \bdatw2_c_reg[3] ,
    \bdatw2_c_reg[4] ,
    \bdatw2_c_reg[5] ,
    \bdatw2_c_reg[6] ,
    \bdatw2_c_reg[7] ,
    \bdatw2_c_reg[8] ,
    \bdatw2_c_reg[9] ,
    \bdatw2_c_reg[11] ,
    \bdatw2_c_reg[12] ,
    \bdatw2_c_reg[13] ,
    \bdatw2_c_reg[14] ,
    \bdatw2_c_reg[15] ,
    .bcmd2_1_sp_1(bcmd2_1_sn_1),
    \bcmd2_c_reg[2] ,
    \stat_reg[0]_1 ,
    bdatr2,
    neg_brdy_x_reg_1,
    bcs_acc_l2_cp,
    \bcmd2_c_reg[3] ,
    \bcmd2[3] ,
    E,
    clk,
    Q,
    last_sel_reg,
    bdatw2,
    \bdatw[1] ,
    bctl_brdy,
    sdc_brdy,
    \stat_reg[1]_0 ,
    \datrh_reg[0] ,
    upd_bus_sel_reg_0,
    bdatr,
    \bdatr2[31] ,
    neg_brdy1,
    neg_brdy_x_reg_2,
    bcmd2,
    \bcmd2_c_reg[3]_0 ,
    bcs_acc_l2_c,
    bcs_acc_l2,
    badr2_c,
    badr2,
    \datrh_reg[0]_0 ,
    \datrh_reg[0]_1 ,
    rst_n);
  output neg_brdy_x_reg_0;
  output rst_n_0;
  output upd_bus_sel2;
  output [23:0]badr2_lw1;
  output \badr2_c_reg[1] ;
  output \bdatw2_c_reg[1] ;
  output \stat_reg[0]_0 ;
  output [31:0]D;
  output \bdatw2_c_reg[3] ;
  output \bdatw2_c_reg[4] ;
  output \bdatw2_c_reg[5] ;
  output \bdatw2_c_reg[6] ;
  output \bdatw2_c_reg[7] ;
  output \bdatw2_c_reg[8] ;
  output \bdatw2_c_reg[9] ;
  output \bdatw2_c_reg[11] ;
  output \bdatw2_c_reg[12] ;
  output \bdatw2_c_reg[13] ;
  output \bdatw2_c_reg[14] ;
  output \bdatw2_c_reg[15] ;
  output [2:0]\bcmd2_c_reg[2] ;
  output \stat_reg[0]_1 ;
  output [15:0]bdatr2;
  output neg_brdy_x_reg_1;
  output bcs_acc_l2_cp;
  output \bcmd2_c_reg[3] ;
  output [0:0]\bcmd2[3] ;
  output [0:0]E;
  input clk;
  input [31:0]Q;
  input last_sel_reg;
  input [31:0]bdatw2;
  input \bdatw[1] ;
  input bctl_brdy;
  input sdc_brdy;
  input \stat_reg[1]_0 ;
  input \datrh_reg[0] ;
  input upd_bus_sel_reg_0;
  input [15:0]bdatr;
  input [15:0]\bdatr2[31] ;
  input neg_brdy1;
  input neg_brdy_x_reg_2;
  input [3:0]bcmd2;
  input [3:0]\bcmd2_c_reg[3]_0 ;
  input bcs_acc_l2_c;
  input bcs_acc_l2;
  input [23:0]badr2_c;
  input [23:0]badr2;
  input \datrh_reg[0]_0 ;
  input [0:0]\datrh_reg[0]_1 ;
  input rst_n;
  output bcmd2_1_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [23:0]badr2;
  wire [23:0]badr2_c;
  wire \badr2_c_reg[1] ;
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
  wire [3:0]bcmd2;
  wire [0:0]\bcmd2[3] ;
  wire bcmd2_1_sn_1;
  wire [2:0]\bcmd2_c_reg[2] ;
  wire \bcmd2_c_reg[3] ;
  wire [3:0]\bcmd2_c_reg[3]_0 ;
  wire \bcmd[3]_INST_0_i_11_n_0 ;
  wire bcs_acc_l2;
  wire bcs_acc_l2_c;
  wire bcs_acc_l2_cp;
  wire bctl_brdy;
  wire [15:0]bdatr;
  wire [15:0]bdatr2;
  wire [15:0]\bdatr2[31] ;
  wire \bdatr2[31]_INST_0_i_1_n_0 ;
  wire [31:0]bdatw2;
  wire \bdatw2_c_reg[11] ;
  wire \bdatw2_c_reg[12] ;
  wire \bdatw2_c_reg[13] ;
  wire \bdatw2_c_reg[14] ;
  wire \bdatw2_c_reg[15] ;
  wire \bdatw2_c_reg[1] ;
  wire \bdatw2_c_reg[3] ;
  wire \bdatw2_c_reg[4] ;
  wire \bdatw2_c_reg[5] ;
  wire \bdatw2_c_reg[6] ;
  wire \bdatw2_c_reg[7] ;
  wire \bdatw2_c_reg[8] ;
  wire \bdatw2_c_reg[9] ;
  wire \bdatw[1] ;
  wire \bdatw[31]_INST_0_i_6_n_0 ;
  wire clk;
  wire \datrh_reg[0] ;
  wire \datrh_reg[0]_0 ;
  wire [0:0]\datrh_reg[0]_1 ;
  wire last_sel_reg;
  wire neg_brdy1;
  wire neg_brdy_x_reg_0;
  wire neg_brdy_x_reg_1;
  wire neg_brdy_x_reg_2;
  wire neg_brdy_x_t;
  wire rst_n;
  wire rst_n_0;
  wire sdc_brdy;
  wire \stat[0]_i_2__0_n_0 ;
  wire \stat[0]_i_3__0_n_0 ;
  wire \stat[2]_i_2__1_n_0 ;
  wire [2:0]stat_nx;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg_n_0_[0] ;
  wire \stat_reg_n_0_[1] ;
  wire \stat_reg_n_0_[2] ;
  wire upd_bus_sel2;
  wire upd_bus_sel_i_2__0_n_0;
  wire upd_bus_sel_i_3_n_0;
  wire upd_bus_sel_i_4_n_0;
  wire upd_bus_sel_reg_0;
  wire upd_bus_sel_t;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr2_c[1]_i_1 
       (.I0(badr2_c[1]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[1]),
        .O(\badr2_c_reg[1] ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[11]_INST_0_i_10 
       (.I0(badr2_c[8]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[8]),
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
    .INIT(32'hEAAA2AAA)) 
    \badr[11]_INST_0_i_7 
       (.I0(badr2_c[11]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[11]),
        .O(\badr[11]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[11]_INST_0_i_8 
       (.I0(badr2_c[10]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[10]),
        .O(\badr[11]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[11]_INST_0_i_9 
       (.I0(badr2_c[9]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[9]),
        .O(\badr[11]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[15]_INST_0_i_10 
       (.I0(badr2_c[12]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[12]),
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
    .INIT(32'hEAAA2AAA)) 
    \badr[15]_INST_0_i_7 
       (.I0(badr2_c[15]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[15]),
        .O(\badr[15]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[15]_INST_0_i_8 
       (.I0(badr2_c[14]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[14]),
        .O(\badr[15]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[15]_INST_0_i_9 
       (.I0(badr2_c[13]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[13]),
        .O(\badr[15]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[19]_INST_0_i_10 
       (.I0(badr2_c[16]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[16]),
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
    .INIT(32'hEAAA2AAA)) 
    \badr[19]_INST_0_i_7 
       (.I0(badr2_c[19]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[19]),
        .O(\badr[19]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[19]_INST_0_i_8 
       (.I0(badr2_c[18]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[18]),
        .O(\badr[19]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[19]_INST_0_i_9 
       (.I0(badr2_c[17]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[17]),
        .O(\badr[19]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[23]_INST_0_i_10 
       (.I0(badr2_c[20]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[20]),
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
    .INIT(32'hEAAA2AAA)) 
    \badr[23]_INST_0_i_7 
       (.I0(badr2_c[23]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[23]),
        .O(\badr[23]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[23]_INST_0_i_8 
       (.I0(badr2_c[22]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[22]),
        .O(\badr[23]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[23]_INST_0_i_9 
       (.I0(badr2_c[21]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[21]),
        .O(\badr[23]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[3]_INST_0_i_10 
       (.I0(badr2_c[0]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[0]),
        .O(\badr[3]_INST_0_i_10_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[3]_INST_0_i_2 
       (.CI(\<const0> ),
        .CO({\badr[3]_INST_0_i_2_n_0 ,\badr[3]_INST_0_i_2_n_1 ,\badr[3]_INST_0_i_2_n_2 ,\badr[3]_INST_0_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\badr2_c_reg[1] ,\<const0> }),
        .O(badr2_lw1[3:0]),
        .S({\badr[3]_INST_0_i_7_n_0 ,\badr[3]_INST_0_i_8_n_0 ,\badr[3]_INST_0_i_9_n_0 ,\badr[3]_INST_0_i_10_n_0 }));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[3]_INST_0_i_7 
       (.I0(badr2_c[3]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[3]),
        .O(\badr[3]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[3]_INST_0_i_8 
       (.I0(badr2_c[2]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[2]),
        .O(\badr[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA99969996AAA)) 
    \badr[3]_INST_0_i_9 
       (.I0(\badr2_c_reg[1] ),
        .I1(\stat_reg_n_0_[0] ),
        .I2(sdc_brdy),
        .I3(bctl_brdy),
        .I4(\stat_reg_n_0_[1] ),
        .I5(\stat_reg_n_0_[2] ),
        .O(\badr[3]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[7]_INST_0_i_10 
       (.I0(badr2_c[4]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[4]),
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
    .INIT(32'hEAAA2AAA)) 
    \badr[7]_INST_0_i_7 
       (.I0(badr2_c[7]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[7]),
        .O(\badr[7]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[7]_INST_0_i_8 
       (.I0(badr2_c[6]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[6]),
        .O(\badr[7]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \badr[7]_INST_0_i_9 
       (.I0(badr2_c[5]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(badr2[5]),
        .O(\badr[7]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \bcmd2_c[3]_i_1 
       (.I0(bcmd2[3]),
        .I1(neg_brdy_x_reg_0),
        .I2(sdc_brdy),
        .I3(bctl_brdy),
        .I4(\bcmd2_c_reg[3]_0 [3]),
        .O(\bcmd2[3] ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bcmd[0]_INST_0_i_1 
       (.I0(\bcmd2_c_reg[3]_0 [0]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bcmd2[0]),
        .O(\bcmd2_c_reg[2] [0]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bcmd[1]_INST_0_i_1 
       (.I0(\bcmd2_c_reg[3]_0 [1]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bcmd2[1]),
        .O(\bcmd2_c_reg[2] [1]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bcmd[2]_INST_0_i_2 
       (.I0(\bcmd2_c_reg[3]_0 [2]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bcmd2[2]),
        .O(\bcmd2_c_reg[2] [2]));
  LUT6 #(
    .INIT(64'h0000101110110000)) 
    \bcmd[3]_INST_0_i_11 
       (.I0(neg_brdy_x_reg_2),
        .I1(\bcmd2_c_reg[3] ),
        .I2(\badr2_c_reg[1] ),
        .I3(bcs_acc_l2_cp),
        .I4(\bcmd2_c_reg[2] [0]),
        .I5(\bcmd2_c_reg[2] [1]),
        .O(\bcmd[3]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h1555D555)) 
    \bcmd[3]_INST_0_i_4 
       (.I0(\bcmd2_c_reg[3]_0 [3]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bcmd2[3]),
        .O(\bcmd2_c_reg[3] ));
  LUT6 #(
    .INIT(64'hCDCCEFEF15001515)) 
    \bcmd[3]_INST_0_i_6 
       (.I0(\stat_reg_n_0_[0] ),
        .I1(\stat_reg_n_0_[1] ),
        .I2(\datrh_reg[0] ),
        .I3(upd_bus_sel_reg_0),
        .I4(\bcmd[3]_INST_0_i_11_n_0 ),
        .I5(\stat_reg_n_0_[2] ),
        .O(\stat_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    bcs_acc_l2_c_i_1
       (.I0(bcs_acc_l2_c),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bcs_acc_l2),
        .O(bcs_acc_l2_cp));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[16]_INST_0 
       (.I0(bdatr[0]),
        .I1(\bdatr2[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr2[31] [0]),
        .O(bdatr2[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[17]_INST_0 
       (.I0(bdatr[1]),
        .I1(\bdatr2[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr2[31] [1]),
        .O(bdatr2[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[18]_INST_0 
       (.I0(bdatr[2]),
        .I1(\bdatr2[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr2[31] [2]),
        .O(bdatr2[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[19]_INST_0 
       (.I0(bdatr[3]),
        .I1(\bdatr2[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr2[31] [3]),
        .O(bdatr2[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[20]_INST_0 
       (.I0(bdatr[4]),
        .I1(\bdatr2[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr2[31] [4]),
        .O(bdatr2[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[21]_INST_0 
       (.I0(bdatr[5]),
        .I1(\bdatr2[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr2[31] [5]),
        .O(bdatr2[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[22]_INST_0 
       (.I0(bdatr[6]),
        .I1(\bdatr2[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr2[31] [6]),
        .O(bdatr2[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[23]_INST_0 
       (.I0(bdatr[7]),
        .I1(\bdatr2[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr2[31] [7]),
        .O(bdatr2[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[24]_INST_0 
       (.I0(bdatr[8]),
        .I1(\bdatr2[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr2[31] [8]),
        .O(bdatr2[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[25]_INST_0 
       (.I0(bdatr[9]),
        .I1(\bdatr2[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr2[31] [9]),
        .O(bdatr2[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[26]_INST_0 
       (.I0(bdatr[10]),
        .I1(\bdatr2[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr2[31] [10]),
        .O(bdatr2[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[27]_INST_0 
       (.I0(bdatr[11]),
        .I1(\bdatr2[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr2[31] [11]),
        .O(bdatr2[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[28]_INST_0 
       (.I0(bdatr[12]),
        .I1(\bdatr2[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr2[31] [12]),
        .O(bdatr2[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[29]_INST_0 
       (.I0(bdatr[13]),
        .I1(\bdatr2[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr2[31] [13]),
        .O(bdatr2[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[30]_INST_0 
       (.I0(bdatr[14]),
        .I1(\bdatr2[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr2[31] [14]),
        .O(bdatr2[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr2[31]_INST_0 
       (.I0(bdatr[15]),
        .I1(\bdatr2[31]_INST_0_i_1_n_0 ),
        .I2(\bdatr2[31] [15]),
        .O(bdatr2[15]));
  LUT5 #(
    .INIT(32'hFFFFFF1F)) 
    \bdatr2[31]_INST_0_i_1 
       (.I0(upd_bus_sel_reg_0),
        .I1(neg_brdy1),
        .I2(\stat_reg_n_0_[1] ),
        .I3(\stat_reg_n_0_[2] ),
        .I4(\stat_reg_n_0_[0] ),
        .O(\bdatr2[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw2_c[11]_i_1 
       (.I0(Q[11]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw2_c[12]_i_1 
       (.I0(Q[12]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw2_c[13]_i_1 
       (.I0(Q[13]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw2_c[14]_i_1 
       (.I0(Q[14]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw2_c[15]_i_1 
       (.I0(Q[15]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw2_c[1]_i_1 
       (.I0(Q[1]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw2_c[3]_i_1 
       (.I0(Q[3]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw2_c[4]_i_1 
       (.I0(Q[4]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw2_c[5]_i_1 
       (.I0(Q[5]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw2_c[6]_i_1 
       (.I0(Q[6]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw2_c[7]_i_1 
       (.I0(Q[7]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw2_c[8]_i_1 
       (.I0(Q[8]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw2_c[9]_i_1 
       (.I0(Q[9]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[9]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[0]_INST_0_i_1 
       (.I0(Q[0]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[10]_INST_0_i_1 
       (.I0(Q[10]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h00FF00B8000000B8)) 
    \bdatw[11]_INST_0_i_1 
       (.I0(Q[11]),
        .I1(last_sel_reg),
        .I2(bdatw2[11]),
        .I3(\bdatw[1] ),
        .I4(\stat_reg[0]_0 ),
        .I5(D[27]),
        .O(\bdatw2_c_reg[11] ));
  LUT6 #(
    .INIT(64'h00FF00B8000000B8)) 
    \bdatw[12]_INST_0_i_1 
       (.I0(Q[12]),
        .I1(last_sel_reg),
        .I2(bdatw2[12]),
        .I3(\bdatw[1] ),
        .I4(\stat_reg[0]_0 ),
        .I5(D[28]),
        .O(\bdatw2_c_reg[12] ));
  LUT6 #(
    .INIT(64'h00FF00B8000000B8)) 
    \bdatw[13]_INST_0_i_1 
       (.I0(Q[13]),
        .I1(last_sel_reg),
        .I2(bdatw2[13]),
        .I3(\bdatw[1] ),
        .I4(\stat_reg[0]_0 ),
        .I5(D[29]),
        .O(\bdatw2_c_reg[13] ));
  LUT6 #(
    .INIT(64'h00FF00B8000000B8)) 
    \bdatw[14]_INST_0_i_1 
       (.I0(Q[14]),
        .I1(last_sel_reg),
        .I2(bdatw2[14]),
        .I3(\bdatw[1] ),
        .I4(\stat_reg[0]_0 ),
        .I5(D[30]),
        .O(\bdatw2_c_reg[14] ));
  LUT6 #(
    .INIT(64'h00FF00B8000000B8)) 
    \bdatw[15]_INST_0_i_2 
       (.I0(Q[15]),
        .I1(last_sel_reg),
        .I2(bdatw2[15]),
        .I3(\bdatw[1] ),
        .I4(\stat_reg[0]_0 ),
        .I5(D[31]),
        .O(\bdatw2_c_reg[15] ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[16]_INST_0_i_1 
       (.I0(Q[16]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[16]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[17]_INST_0_i_1 
       (.I0(Q[17]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[17]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[18]_INST_0_i_1 
       (.I0(Q[18]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[18]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[19]_INST_0_i_1 
       (.I0(Q[19]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[19]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'h00FF00B8000000B8)) 
    \bdatw[1]_INST_0_i_1 
       (.I0(Q[1]),
        .I1(last_sel_reg),
        .I2(bdatw2[1]),
        .I3(\bdatw[1] ),
        .I4(\stat_reg[0]_0 ),
        .I5(D[17]),
        .O(\bdatw2_c_reg[1] ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[20]_INST_0_i_1 
       (.I0(Q[20]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[20]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[21]_INST_0_i_1 
       (.I0(Q[21]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[21]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[22]_INST_0_i_1 
       (.I0(Q[22]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[22]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[23]_INST_0_i_1 
       (.I0(Q[23]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[23]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[24]_INST_0_i_1 
       (.I0(Q[24]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[24]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[25]_INST_0_i_1 
       (.I0(Q[25]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[25]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[26]_INST_0_i_1 
       (.I0(Q[26]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[26]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[27]_INST_0_i_1 
       (.I0(Q[27]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[27]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[28]_INST_0_i_1 
       (.I0(Q[28]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[28]),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[29]_INST_0_i_1 
       (.I0(Q[29]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[29]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[2]_INST_0_i_1 
       (.I0(Q[2]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[30]_INST_0_i_1 
       (.I0(Q[30]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[30]),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \bdatw[31]_INST_0_i_3 
       (.I0(Q[31]),
        .I1(bctl_brdy),
        .I2(sdc_brdy),
        .I3(neg_brdy_x_reg_0),
        .I4(bdatw2[31]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'h0000000000F20000)) 
    \bdatw[31]_INST_0_i_4 
       (.I0(bcmd2_1_sn_1),
        .I1(\stat_reg[1]_0 ),
        .I2(\stat_reg_n_0_[0] ),
        .I3(\bcmd2_c_reg[2] [0]),
        .I4(\bcmd[3]_INST_0_i_11_n_0 ),
        .I5(\bdatw[31]_INST_0_i_6_n_0 ),
        .O(\stat_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hF7F7F7E2F7E2F7F7)) 
    \bdatw[31]_INST_0_i_6 
       (.I0(\stat_reg_n_0_[0] ),
        .I1(\stat_reg_n_0_[2] ),
        .I2(\stat_reg_n_0_[1] ),
        .I3(\datrh_reg[0] ),
        .I4(\bcmd2_c_reg[2] [1]),
        .I5(\bcmd2_c_reg[2] [0]),
        .O(\bdatw[31]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00B8000000B8)) 
    \bdatw[3]_INST_0_i_1 
       (.I0(Q[3]),
        .I1(last_sel_reg),
        .I2(bdatw2[3]),
        .I3(\bdatw[1] ),
        .I4(\stat_reg[0]_0 ),
        .I5(D[19]),
        .O(\bdatw2_c_reg[3] ));
  LUT6 #(
    .INIT(64'h00FF00B8000000B8)) 
    \bdatw[4]_INST_0_i_1 
       (.I0(Q[4]),
        .I1(last_sel_reg),
        .I2(bdatw2[4]),
        .I3(\bdatw[1] ),
        .I4(\stat_reg[0]_0 ),
        .I5(D[20]),
        .O(\bdatw2_c_reg[4] ));
  LUT6 #(
    .INIT(64'h00FF00B8000000B8)) 
    \bdatw[5]_INST_0_i_1 
       (.I0(Q[5]),
        .I1(last_sel_reg),
        .I2(bdatw2[5]),
        .I3(\bdatw[1] ),
        .I4(\stat_reg[0]_0 ),
        .I5(D[21]),
        .O(\bdatw2_c_reg[5] ));
  LUT6 #(
    .INIT(64'h00FF00B8000000B8)) 
    \bdatw[6]_INST_0_i_1 
       (.I0(Q[6]),
        .I1(last_sel_reg),
        .I2(bdatw2[6]),
        .I3(\bdatw[1] ),
        .I4(\stat_reg[0]_0 ),
        .I5(D[22]),
        .O(\bdatw2_c_reg[6] ));
  LUT6 #(
    .INIT(64'h00FF00B8000000B8)) 
    \bdatw[7]_INST_0_i_1 
       (.I0(Q[7]),
        .I1(last_sel_reg),
        .I2(bdatw2[7]),
        .I3(\bdatw[1] ),
        .I4(\stat_reg[0]_0 ),
        .I5(D[23]),
        .O(\bdatw2_c_reg[7] ));
  LUT6 #(
    .INIT(64'h00FF00B8000000B8)) 
    \bdatw[8]_INST_0_i_1 
       (.I0(Q[8]),
        .I1(last_sel_reg),
        .I2(bdatw2[8]),
        .I3(\bdatw[1] ),
        .I4(\stat_reg[0]_0 ),
        .I5(D[24]),
        .O(\bdatw2_c_reg[8] ));
  LUT6 #(
    .INIT(64'h00FF00B8000000B8)) 
    \bdatw[9]_INST_0_i_1 
       (.I0(Q[9]),
        .I1(last_sel_reg),
        .I2(bdatw2[9]),
        .I3(\bdatw[1] ),
        .I4(\stat_reg[0]_0 ),
        .I5(D[25]),
        .O(\bdatw2_c_reg[9] ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    bmst_INST_0_i_3
       (.I0(bcmd2[1]),
        .I1(\bcmd2_c_reg[3]_0 [1]),
        .I2(bcmd2[0]),
        .I3(last_sel_reg),
        .I4(\bcmd2_c_reg[3]_0 [0]),
        .O(bcmd2_1_sn_1));
  LUT3 #(
    .INIT(8'h80)) 
    brdy2_INST_0
       (.I0(neg_brdy_x_reg_0),
        .I1(sdc_brdy),
        .I2(bctl_brdy),
        .O(neg_brdy_x_reg_1));
  LUT6 #(
    .INIT(64'h02020202020F0202)) 
    \datrh[15]_i_1 
       (.I0(\datrh_reg[0]_0 ),
        .I1(\datrh_reg[0]_1 ),
        .I2(\datrh_reg[0] ),
        .I3(\stat_reg_n_0_[1] ),
        .I4(\stat_reg_n_0_[0] ),
        .I5(\stat_reg_n_0_[2] ),
        .O(E));
  LUT6 #(
    .INIT(64'hAAAAAAAAFBBBAAAA)) 
    neg_brdy_x_i_1__0
       (.I0(\stat[0]_i_2__0_n_0 ),
        .I1(upd_bus_sel_reg_0),
        .I2(\stat_reg_n_0_[0] ),
        .I3(\stat_reg_n_0_[2] ),
        .I4(\stat[0]_i_3__0_n_0 ),
        .I5(neg_brdy_x_reg_2),
        .O(neg_brdy_x_t));
  FDSE neg_brdy_x_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(neg_brdy_x_t),
        .Q(neg_brdy_x_reg_0),
        .S(rst_n_0));
  LUT6 #(
    .INIT(64'h5555555504445555)) 
    \stat[0]_i_1__0 
       (.I0(\stat[0]_i_2__0_n_0 ),
        .I1(upd_bus_sel_reg_0),
        .I2(\stat_reg_n_0_[0] ),
        .I3(\stat_reg_n_0_[2] ),
        .I4(\stat[0]_i_3__0_n_0 ),
        .I5(neg_brdy_x_reg_2),
        .O(stat_nx[0]));
  LUT6 #(
    .INIT(64'hCFD5C0FFC0FFC0FF)) 
    \stat[0]_i_2__0 
       (.I0(bcmd2_1_sn_1),
        .I1(\stat_reg_n_0_[1] ),
        .I2(\stat_reg_n_0_[2] ),
        .I3(\stat_reg_n_0_[0] ),
        .I4(sdc_brdy),
        .I5(bctl_brdy),
        .O(\stat[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF99F9)) 
    \stat[0]_i_3__0 
       (.I0(\bcmd2_c_reg[2] [1]),
        .I1(\bcmd2_c_reg[2] [0]),
        .I2(bcs_acc_l2_cp),
        .I3(\badr2_c_reg[1] ),
        .I4(\bcmd2_c_reg[3] ),
        .O(\stat[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAABABBAABBAABBAA)) 
    \stat[1]_i_1 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg_n_0_[2] ),
        .I2(\stat_reg_n_0_[0] ),
        .I3(\stat_reg_n_0_[1] ),
        .I4(bctl_brdy),
        .I5(sdc_brdy),
        .O(stat_nx[1]));
  LUT5 #(
    .INIT(32'h0000EFEA)) 
    \stat[2]_i_1__0 
       (.I0(neg_brdy_x_reg_2),
        .I1(\stat_reg_n_0_[1] ),
        .I2(\stat_reg_n_0_[0] ),
        .I3(upd_bus_sel_reg_0),
        .I4(\stat[2]_i_2__1_n_0 ),
        .O(stat_nx[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \stat[2]_i_1__1 
       (.I0(rst_n),
        .O(rst_n_0));
  LUT6 #(
    .INIT(64'hC2F3F3F3D7F3F3F3)) 
    \stat[2]_i_2__1 
       (.I0(\stat_reg_n_0_[0] ),
        .I1(\stat_reg_n_0_[2] ),
        .I2(\stat_reg_n_0_[1] ),
        .I3(sdc_brdy),
        .I4(bctl_brdy),
        .I5(bcmd2_1_sn_1),
        .O(\stat[2]_i_2__1_n_0 ));
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
        .Q(\stat_reg_n_0_[1] ),
        .R(rst_n_0));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[2]),
        .Q(\stat_reg_n_0_[2] ),
        .R(rst_n_0));
  LUT6 #(
    .INIT(64'h20F020F0FFFF20F0)) 
    upd_bus_sel_i_1
       (.I0(upd_bus_sel_i_2__0_n_0),
        .I1(upd_bus_sel_reg_0),
        .I2(\bcmd[3]_INST_0_i_11_n_0 ),
        .I3(upd_bus_sel_i_3_n_0),
        .I4(\datrh_reg[0] ),
        .I5(upd_bus_sel_i_4_n_0),
        .O(upd_bus_sel_t));
  LUT6 #(
    .INIT(64'h0000000000060606)) 
    upd_bus_sel_i_2__0
       (.I0(\bcmd2_c_reg[2] [0]),
        .I1(\bcmd2_c_reg[2] [1]),
        .I2(\datrh_reg[0] ),
        .I3(\stat_reg_n_0_[1] ),
        .I4(\stat_reg_n_0_[2] ),
        .I5(\stat_reg_n_0_[0] ),
        .O(upd_bus_sel_i_2__0_n_0));
  LUT3 #(
    .INIT(8'hBF)) 
    upd_bus_sel_i_3
       (.I0(\stat_reg_n_0_[1] ),
        .I1(\stat_reg_n_0_[0] ),
        .I2(\stat_reg_n_0_[2] ),
        .O(upd_bus_sel_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    upd_bus_sel_i_4
       (.I0(\stat_reg_n_0_[2] ),
        .I1(\stat_reg_n_0_[0] ),
        .O(upd_bus_sel_i_4_n_0));
  FDSE upd_bus_sel_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(upd_bus_sel_t),
        .Q(upd_bus_sel2),
        .S(rst_n_0));
endmodule
