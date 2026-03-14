
(* STRUCTURAL_NETLIST = "yes" *)
module halfpu
   (clk,
    rst_n,
    ccmd,
    abus,
    bbus,
    crdy,
    cbus,
    hfpu_dsp_c,
    hfpu_dsp_a,
    hfpu_dsp_b);
//
//	Half precision Floating Point Unit
//		(c) 2021	1YEN Toru
//
//
//	2026/03/14	ver.1.08
//		fix: crdy=1 if not defined ccmd
//
//	2024/08/31	ver.1.06
//		ccmd=HTRC: half truncate towards zero command
//
//	2024/03/16	ver.1.04
//		corresponding to Xilinx Vivado
//		optimized large (16 bit) right shift
//
//	2021/07/10	ver.1.02
//		ccmd=HCMP: half compare command
//
//	2021/06/12	ver.1.00
//		half: <1b sign> <5b exponent> <10b fraction>
//		half=pow (-1,<1b sign>)*0x1.<10b fraction>*(2**(<5b exponent> - 15))
//		non normalized number was not supported. it is treated as zero.
//		INF and NaN are available
//
  input clk;
  input rst_n;
  input [4:0]ccmd;
  input [15:0]abus;
  input [15:0]bbus;
  output crdy;
  output [15:0]cbus;
  input [21:0]hfpu_dsp_c;
  output [10:0]hfpu_dsp_a;
  output [10:0]hfpu_dsp_b;

  wire [15:0]abus;
  wire [15:0]bbus;
  wire [15:0]cbus;
  wire [4:0]ccmd;
  wire [4:4]ccmd_f;
  wire clk;
  wire crdy;
  wire hadd_n_0;
  wire hadd_n_1;
  wire hadd_n_16;
  wire hadd_n_17;
  wire hadd_n_18;
  wire hadd_n_19;
  wire hadd_n_2;
  wire hadd_n_20;
  wire hadd_n_21;
  wire hadd_n_22;
  wire hadd_n_23;
  wire hadd_n_24;
  wire hadd_n_25;
  wire hadd_n_26;
  wire hadd_n_27;
  wire hadd_n_28;
  wire hadd_n_3;
  wire hadd_n_4;
  wire hadd_n_5;
  wire hadd_n_7;
  wire hadd_n_8;
  wire hadd_n_9;
  wire hctl_ccmd_add;
  wire hctl_ccmd_cmp;
  wire hctl_ccmd_div;
  wire hctl_ccmd_hlf;
  wire hctl_ccmd_int;
  wire hctl_ccmd_mul;
  wire hctl_ccmd_reg;
  wire hctl_ccmd_sub;
  wire hctl_dsft_enb;
  wire hctl_load_b;
  wire hctl_load_c;
  wire hctl_load_d;
  wire hctl_n_100;
  wire hctl_n_101;
  wire hctl_n_102;
  wire hctl_n_103;
  wire hctl_n_104;
  wire hctl_n_105;
  wire hctl_n_121;
  wire hctl_n_135;
  wire hctl_n_138;
  wire hctl_n_139;
  wire hctl_n_140;
  wire hctl_n_141;
  wire hctl_n_142;
  wire hctl_n_143;
  wire hctl_n_144;
  wire hctl_n_145;
  wire hctl_n_146;
  wire hctl_n_147;
  wire hctl_n_148;
  wire hctl_n_149;
  wire hctl_n_150;
  wire hctl_n_151;
  wire hctl_n_152;
  wire hctl_n_25;
  wire hctl_n_26;
  wire hctl_n_27;
  wire hctl_n_28;
  wire hctl_n_29;
  wire hctl_n_30;
  wire hctl_n_31;
  wire hctl_n_32;
  wire hctl_n_33;
  wire hctl_n_34;
  wire hctl_n_35;
  wire hctl_n_36;
  wire hctl_n_37;
  wire hctl_n_38;
  wire hctl_n_39;
  wire hctl_n_43;
  wire hctl_n_44;
  wire hctl_n_45;
  wire hctl_n_46;
  wire hctl_n_47;
  wire hctl_n_48;
  wire hctl_n_49;
  wire hctl_n_50;
  wire hctl_n_51;
  wire hctl_n_54;
  wire hctl_n_55;
  wire hctl_n_56;
  wire hctl_n_57;
  wire hctl_n_58;
  wire hctl_n_59;
  wire hctl_n_60;
  wire hctl_n_61;
  wire hctl_n_62;
  wire hctl_n_63;
  wire hctl_n_64;
  wire hctl_n_65;
  wire hctl_n_66;
  wire hctl_n_67;
  wire hctl_n_68;
  wire hctl_n_69;
  wire hctl_n_70;
  wire hctl_n_71;
  wire hctl_n_72;
  wire hctl_n_73;
  wire hctl_n_75;
  wire hctl_n_76;
  wire hctl_n_77;
  wire hctl_n_78;
  wire hctl_n_79;
  wire hctl_n_80;
  wire hctl_n_81;
  wire hctl_n_84;
  wire hctl_n_85;
  wire hctl_n_86;
  wire hctl_n_87;
  wire hctl_n_88;
  wire hctl_n_89;
  wire hctl_n_90;
  wire hctl_n_91;
  wire hctl_n_95;
  wire hctl_n_96;
  wire hctl_n_97;
  wire hctl_n_98;
  wire hctl_n_99;
  wire hdiv_n_17;
  wire [10:0]hfpu_dsp_a;
  wire [10:0]hfpu_dsp_b;
  wire [21:0]hfpu_dsp_c;
  wire hlfa_n_100;
  wire hlfa_n_101;
  wire hlfa_n_102;
  wire hlfa_n_103;
  wire hlfa_n_115;
  wire hlfa_n_116;
  wire hlfa_n_117;
  wire hlfa_n_118;
  wire hlfa_n_119;
  wire hlfa_n_120;
  wire hlfa_n_121;
  wire hlfa_n_122;
  wire hlfa_n_2;
  wire hlfa_n_27;
  wire hlfa_n_3;
  wire hlfa_n_37;
  wire hlfa_n_39;
  wire hlfa_n_40;
  wire hlfa_n_41;
  wire hlfa_n_43;
  wire hlfa_n_44;
  wire hlfa_n_45;
  wire hlfa_n_46;
  wire hlfa_n_47;
  wire hlfa_n_48;
  wire hlfa_n_49;
  wire hlfa_n_50;
  wire hlfa_n_51;
  wire hlfa_n_52;
  wire hlfa_n_53;
  wire hlfa_n_57;
  wire hlfa_n_58;
  wire hlfa_n_59;
  wire hlfa_n_60;
  wire hlfa_n_61;
  wire hlfa_n_62;
  wire hlfa_n_63;
  wire hlfa_n_64;
  wire hlfa_n_65;
  wire hlfa_n_66;
  wire hlfa_n_67;
  wire hlfa_n_68;
  wire hlfa_n_69;
  wire hlfa_n_70;
  wire hlfa_n_71;
  wire hlfa_n_72;
  wire hlfa_n_73;
  wire hlfa_n_74;
  wire hlfa_n_75;
  wire hlfa_n_76;
  wire hlfa_n_77;
  wire hlfa_n_78;
  wire hlfa_n_79;
  wire hlfa_n_80;
  wire hlfa_n_81;
  wire hlfa_n_82;
  wire hlfa_n_83;
  wire hlfa_n_84;
  wire hlfa_n_85;
  wire hlfa_n_86;
  wire hlfa_n_87;
  wire hlfa_n_88;
  wire hlfa_n_89;
  wire hlfa_n_90;
  wire hlfa_n_91;
  wire hlfa_n_92;
  wire hlfa_n_93;
  wire hlfa_n_94;
  wire hlfa_n_95;
  wire hlfa_n_96;
  wire hlfa_n_97;
  wire hlfa_n_98;
  wire hlfa_n_99;
  wire [22:0]hlfa_r_0;
  wire [5:0]hlfb_e;
  wire [12:0]hlfb_f;
  wire hlfb_n_0;
  wire hlfb_n_1;
  wire hlfb_n_2;
  wire hlfb_n_28;
  wire hlfb_n_29;
  wire hlfb_n_3;
  wire hlfb_n_30;
  wire hlfb_n_31;
  wire hlfb_n_32;
  wire hlfb_n_33;
  wire hlfb_n_34;
  wire hlfb_n_35;
  wire hlfb_n_36;
  wire hlfb_n_37;
  wire hlfb_n_38;
  wire hlfb_n_39;
  wire hlfb_n_4;
  wire hlfb_n_40;
  wire hlfb_n_41;
  wire hlfb_n_42;
  wire hlfb_n_43;
  wire hlfb_n_44;
  wire hlfb_n_45;
  wire hlfb_n_46;
  wire hlfb_n_47;
  wire hlfb_n_48;
  wire hlfb_n_5;
  wire hlfb_n_6;
  wire hlfb_n_60;
  wire hlfb_n_61;
  wire hlfb_n_62;
  wire hlfb_n_63;
  wire hlfb_n_64;
  wire hlfb_n_65;
  wire hlfb_n_66;
  wire hlfb_n_67;
  wire hlfb_n_68;
  wire hlfb_n_69;
  wire hlfb_n_7;
  wire hlfb_n_70;
  wire hlfb_n_8;
  wire [22:22]hlfb_r;
  wire [4:0]hlfc_e;
  wire hlfc_f;
  wire [12:4]hlfc_f0;
  wire [21:16]hlfc_r_hmul;
  wire hlfc_zer;
  wire [7:0]hquo;
  wire norm_n_0;
  wire norm_n_1;
  wire norm_n_10;
  wire norm_n_11;
  wire norm_n_12;
  wire norm_n_13;
  wire norm_n_14;
  wire norm_n_15;
  wire norm_n_16;
  wire norm_n_17;
  wire norm_n_18;
  wire norm_n_19;
  wire norm_n_20;
  wire norm_n_21;
  wire norm_n_22;
  wire norm_n_23;
  wire norm_n_24;
  wire norm_n_25;
  wire norm_n_26;
  wire norm_n_27;
  wire norm_n_28;
  wire norm_n_29;
  wire norm_n_30;
  wire norm_n_31;
  wire norm_n_32;
  wire norm_n_34;
  wire norm_n_35;
  wire norm_n_36;
  wire norm_n_37;
  wire norm_n_38;
  wire norm_n_39;
  wire norm_n_40;
  wire norm_n_41;
  wire norm_n_42;
  wire norm_n_43;
  wire norm_n_44;
  wire norm_n_45;
  wire norm_n_46;
  wire norm_n_7;
  wire norm_n_8;
  wire norm_n_9;
  wire p_0_in;
  wire p_0_in0;
  wire p_0_in17_in;
  wire [14:0]p_0_in1_in;
  wire p_0_in1_in_1;
  wire p_0_in23_in;
  wire p_0_in3_in;
  wire p_0_in6_in;
  wire p_0_in9_in;
  wire [9:4]p_0_in_2;
  wire p_0_in__0;
  wire [5:0]p_16_in;
  wire [23:8]p_1_in;
  wire [7:2]p_1_in_0;
  wire [0:0]p_1_in_3;
  wire p_3_in;
  wire [13:1]rem0;
  wire [13:13]rem1;
  wire [13:13]rem2;
  wire rst_n;
  wire [2:0]stat;

  hfpu_hadd hadd
       (.CO(hadd_n_16),
        .O(hadd_n_0),
        .S({hctl_n_138,hctl_n_139,hctl_n_140,hctl_n_141}),
        .\cbus[0]_INST_0_i_2 (hlfb_n_7),
        .\cbus[12]_INST_0_i_11_0 ({hlfc_f0[12:11],hlfc_f0[8:7],hlfc_f0[5:4]}),
        .\cbus[12]_INST_0_i_5_0 (hadd_n_27),
        .\cbus[12]_INST_0_i_8 ({hlfa_n_115,hlfa_n_116,hlfa_n_117,hctl_n_150}),
        .\cbus[13]_INST_0_i_12_0 (hadd_n_18),
        .\cbus[13]_INST_0_i_12_1 (hctl_n_121),
        .\cbus[13]_INST_0_i_15_0 (hadd_n_20),
        .\cbus[14]_INST_0_i_3 (hctl_n_55),
        .\cbus[4]_INST_0_i_4 ({hctl_n_142,hctl_n_143,hctl_n_144,hctl_n_145}),
        .\cbus[8]_INST_0_i_2 ({hctl_n_146,hctl_n_147,hctl_n_148,hctl_n_149}),
        .\cbus[8]_INST_0_i_4_0 (hadd_n_25),
        .hctl_ccmd_add_reg({hadd_n_1,hadd_n_2,hadd_n_3}),
        .hctl_ccmd_add_reg_0({hadd_n_4,hadd_n_5}),
        .hctl_ccmd_add_reg_1({p_0_in,hadd_n_7,hadd_n_8,hadd_n_9}),
        .hlfc_f_t_carry_0(hadd_n_17),
        .hlfc_f_t_carry_1(hadd_n_19),
        .hlfc_f_t_carry_2(hadd_n_23),
        .hlfc_f_t_carry_3(hadd_n_24),
        .hlfc_f_t_carry__0_0(hadd_n_21),
        .hlfc_f_t_carry__0_1(hadd_n_22),
        .hlfc_f_t_carry__1_0(hadd_n_26),
        .hlfc_f_t_carry__1_1(hadd_n_28),
        .p_0_in1_in(p_0_in1_in));
  hfpu_fsm hctl
       (.CO(hadd_n_16),
        .D(p_3_in),
        .E(crdy),
        .O(hadd_n_0),
        .Q({p_1_in_3,p_0_in_2[9],p_0_in_2[7],p_0_in_2[5:4]}),
        .S({hctl_n_138,hctl_n_139,hctl_n_140,hctl_n_141}),
        .SR(p_0_in__0),
        .abus({abus[14:10],abus[5],abus[0]}),
        .\abus[11] (hctl_n_95),
        .\abus[11]_0 (hctl_n_96),
        .\abus[12] (hctl_n_81),
        .\abus[12]_0 (hctl_n_97),
        .\abus[13] (hctl_n_84),
        .\abus[5] ({p_1_in_0[7],p_1_in_0[2]}),
        .bbus(bbus[14:0]),
        .\bbus[10]_0 (hctl_n_99),
        .\bbus[12]_0 (hctl_n_98),
        .bbus_10_sp_1(hctl_n_77),
        .bbus_12_sp_1(hctl_n_78),
        .cbus(cbus),
        .\cbus[10]_0 (norm_n_26),
        .\cbus[10]_1 (hadd_n_28),
        .\cbus[10]_2 (hlfa_n_44),
        .\cbus[10]_3 (hlfa_n_63),
        .\cbus[11]_INST_0_i_2_0 (hlfa_n_43),
        .\cbus[12] ({hlfc_f0[12:11],hlfc_f0[8:7],hlfc_f0[5:4]}),
        .\cbus[12]_0 (norm_n_31),
        .\cbus[12]_1 (hlfa_n_62),
        .\cbus[12]_2 (norm_n_28),
        .\cbus[12]_INST_0_i_2_0 (hquo),
        .\cbus[12]_INST_0_i_2_1 (hlfa_n_61),
        .\cbus[13]_0 (hlfa_n_103),
        .\cbus[13]_1 (hlfa_n_48),
        .\cbus[13]_2 (hlfb_n_4),
        .\cbus[13]_3 (hlfa_n_58),
        .\cbus[13]_4 (hadd_n_18),
        .\cbus[13]_5 (norm_n_27),
        .\cbus[13]_6 (norm_n_40),
        .\cbus[13]_7 (norm_n_25),
        .\cbus[13]_INST_0_i_10_0 (norm_n_19),
        .\cbus[13]_INST_0_i_13_0 (hctl_n_55),
        .\cbus[14]_0 (norm_n_35),
        .\cbus[14]_INST_0_i_4_0 (hlfb_n_3),
        .\cbus[14]_INST_0_i_4_1 (hlfa_n_41),
        .\cbus[14]_INST_0_i_4_2 (hlfa_n_101),
        .\cbus[14]_INST_0_i_4_3 (hlfb_n_46),
        .\cbus[14]_INST_0_i_4_4 (hlfb_n_48),
        .\cbus[15] ({norm_n_32,hlfc_zer,norm_n_34}),
        .\cbus[15]_0 (hlfa_n_100),
        .\cbus[15]_INST_0_i_10 (hadd_n_25),
        .\cbus[15]_INST_0_i_10_0 (hadd_n_27),
        .\cbus[15]_INST_0_i_28 (ccmd_f),
        .\cbus[15]_INST_0_i_35 (hlfb_n_2),
        .\cbus[1]_0 (norm_n_42),
        .\cbus[2]_0 (norm_n_43),
        .\cbus[2]_INST_0_i_4_0 (hadd_n_23),
        .\cbus[2]_INST_0_i_4_1 (rem1),
        .\cbus[3]_0 (norm_n_44),
        .\cbus[3]_1 (hadd_n_24),
        .\cbus[3]_2 (hlfa_n_70),
        .\cbus[3]_INST_0_i_4_0 (rem2),
        .\cbus[4]_INST_0_i_4_0 (p_0_in0),
        .\cbus[5]_0 (hadd_n_22),
        .\cbus[5]_1 (hlfa_n_69),
        .\cbus[6]_0 (hadd_n_17),
        .\cbus[6]_1 (norm_n_0),
        .\cbus[6]_2 (hdiv_n_17),
        .\cbus[6]_3 (hadd_n_20),
        .\cbus[6]_INST_0_i_5_0 (hadd_n_21),
        .\cbus[7]_0 (norm_n_1),
        .\cbus[7]_1 ({hadd_n_1,hadd_n_2,hadd_n_3}),
        .\cbus[7]_2 (hlfa_n_66),
        .\cbus[8]_INST_0_i_2_0 (hlfa_n_65),
        .\cbus[9]_INST_0_i_2_0 (norm_n_18),
        .\cbus[9]_INST_0_i_9 (hctl_n_31),
        .cbus_0_sp_1(norm_n_7),
        .cbus_10_sp_1(norm_n_24),
        .cbus_11_sp_1(norm_n_9),
        .cbus_13_sp_1(norm_n_30),
        .cbus_14_sp_1(norm_n_29),
        .cbus_1_sp_1(norm_n_37),
        .cbus_2_sp_1(norm_n_38),
        .cbus_3_sp_1(norm_n_39),
        .cbus_4_sp_1(norm_n_41),
        .cbus_5_sp_1(norm_n_45),
        .cbus_6_sp_1(norm_n_46),
        .cbus_7_sp_1(hlfa_n_39),
        .cbus_8_sp_1(norm_n_8),
        .cbus_9_sp_1(norm_n_36),
        .ccmd(ccmd),
        .clk(clk),
        .crdy_f_reg_0(norm_n_12),
        .hctl_ccmd_add(hctl_ccmd_add),
        .hctl_ccmd_add_reg_0(hctl_n_25),
        .hctl_ccmd_add_reg_1(hctl_n_26),
        .hctl_ccmd_add_reg_10(hctl_n_43),
        .hctl_ccmd_add_reg_11(hctl_n_44),
        .hctl_ccmd_add_reg_12({hctl_n_45,hctl_n_46,hctl_n_47,hctl_n_48,hctl_n_49,hctl_n_50,hctl_n_51}),
        .hctl_ccmd_add_reg_13(hctl_n_102),
        .hctl_ccmd_add_reg_14({hctl_n_142,hctl_n_143,hctl_n_144,hctl_n_145}),
        .hctl_ccmd_add_reg_15({hctl_n_146,hctl_n_147,hctl_n_148,hctl_n_149}),
        .hctl_ccmd_add_reg_16(hctl_n_150),
        .hctl_ccmd_add_reg_17(hctl_n_152),
        .hctl_ccmd_add_reg_2(hctl_n_27),
        .hctl_ccmd_add_reg_3(hctl_n_28),
        .hctl_ccmd_add_reg_4(hctl_n_29),
        .hctl_ccmd_add_reg_5(hctl_n_32),
        .hctl_ccmd_add_reg_6(hctl_n_33),
        .hctl_ccmd_add_reg_7(hctl_n_35),
        .hctl_ccmd_add_reg_8(hctl_n_36),
        .hctl_ccmd_add_reg_9({hctl_n_37,hctl_n_38}),
        .hctl_ccmd_cmp(hctl_ccmd_cmp),
        .hctl_ccmd_div(hctl_ccmd_div),
        .hctl_ccmd_div_reg_0(hctl_n_54),
        .hctl_ccmd_div_reg_1(hctl_n_100),
        .hctl_ccmd_hlf(hctl_ccmd_hlf),
        .hctl_ccmd_hlf_reg_0(hctl_n_30),
        .hctl_ccmd_int(hctl_ccmd_int),
        .hctl_ccmd_mul(hctl_ccmd_mul),
        .hctl_ccmd_mul_reg_0(hctl_n_39),
        .hctl_ccmd_mul_reg_1(hctl_n_101),
        .hctl_ccmd_reg(hctl_ccmd_reg),
        .hctl_ccmd_reg_reg_0(hctl_n_105),
        .hctl_ccmd_sub(hctl_ccmd_sub),
        .hctl_load_b(hctl_load_b),
        .hctl_load_c(hctl_load_c),
        .hfpu_dsp_c(hfpu_dsp_c[21:8]),
        .\hlfa_e_reg[0] (hctl_n_104),
        .\hlfa_e_reg[1] (hctl_n_103),
        .\hlfa_e_reg[2] (hlfa_n_85),
        .\hlfa_e_reg[2]_0 (p_0_in17_in),
        .\hlfa_e_reg[2]_1 (p_0_in23_in),
        .\hlfa_e_reg[3] (hctl_n_57),
        .\hlfa_e_reg[4] (hctl_n_56),
        .\hlfa_e_reg[5] (hlfa_n_87),
        .\hlfa_e_reg[5]_0 (hlfa_n_92),
        .\hlfa_f[15]_i_4 ({hlfa_n_2,hlfa_n_3}),
        .\hlfa_f[15]_i_4_0 (hlfa_n_27),
        .\hlfa_f_reg[0] (hlfa_n_93),
        .\hlfa_f_reg[15] ({p_1_in[23:11],hctl_n_135,p_1_in[9:8]}),
        .\hlfa_f_reg[2] (hlfa_n_86),
        .\hlfa_f_reg[2]_0 (hlfa_n_90),
        .\hlfa_f_reg[2]_1 (hlfa_n_122),
        .\hlfa_f_reg[7] (hlfa_n_88),
        .\hlfa_f_reg[7]_0 (hlfa_n_89),
        .hlfa_r_0({hlfa_r_0[22],hlfa_r_0[20:0]}),
        .\hlfb_e_reg[1] (hlfb_n_36),
        .\hlfb_e_reg[2] (hlfb_n_37),
        .\hlfb_e_reg[4] (hctl_n_79),
        .\hlfb_e_reg[4]_0 (hlfa_n_98),
        .\hlfb_e_reg[4]_1 (hlfb_e[4:3]),
        .\hlfb_f_reg[10] (hlfb_n_34),
        .\hlfb_f_reg[11] (hlfb_f),
        .\hlfb_f_reg[12] (hlfb_n_38),
        .\hlfb_f_reg[1] (hlfa_n_76),
        .\hlfb_f_reg[1]_0 (hlfa_n_84),
        .\hlfb_f_reg[2] (hlfa_n_79),
        .\hlfb_f_reg[2]_0 (hlfa_n_78),
        .\hlfb_f_reg[3] (hlfb_n_35),
        .\hlfb_f_reg[4] (hlfb_n_28),
        .\hlfb_f_reg[4]_0 ({p_0_in6_in,p_0_in3_in,p_0_in1_in_1,hlfc_e[0]}),
        .\hlfb_f_reg[4]_1 (p_0_in9_in),
        .\hlfb_f_reg[5] (hlfb_n_29),
        .\hlfb_f_reg[6] (hlfb_n_30),
        .\hlfb_f_reg[7] (hlfb_n_31),
        .\hlfb_f_reg[8] (hlfb_n_32),
        .\hlfb_f_reg[9] (hlfb_n_33),
        .\hlfb_i_reg[15] (hlfa_n_121),
        .hlfb_r(hlfb_r),
        .hlfc_e(hlfc_e[4:1]),
        .\hlfc_e[3]_i_7 (hlfa_n_75),
        .\hlfc_e[3]_i_7_0 (hlfa_n_60),
        .\hlfc_e[5]_i_4 (hlfa_n_52),
        .\hlfc_f_reg[0] (norm_n_21),
        .\hlfc_f_reg[0]_0 (hlfa_n_51),
        .\hlfc_f_reg[11] (norm_n_17),
        .\hlfc_f_reg[11]_0 (norm_n_16),
        .\hlfc_f_reg[11]_1 ({p_0_in,hadd_n_7,hadd_n_8,hadd_n_9}),
        .\hlfc_f_reg[11]_2 ({hadd_n_4,hadd_n_5}),
        .\hlfc_f_reg[12] (hlfc_f),
        .\hlfc_f_reg[14] (hlfa_n_57),
        .\hlfc_f_reg[15] (norm_n_11),
        .\hlfc_f_reg[15]_0 (hlfa_n_74),
        .\hlfc_f_reg[1] (hadd_n_19),
        .\hlfc_f_reg[1]_0 (hlfa_n_53),
        .\hlfc_f_reg[2] (hlfa_n_99),
        .\hlfc_f_reg[2]_0 (hlfa_n_71),
        .\hlfc_f_reg[2]_1 (hlfa_n_73),
        .\hlfc_f_reg[3] (norm_n_14),
        .\hlfc_f_reg[3]_0 (norm_n_20),
        .\hlfc_f_reg[3]_1 (hlfa_n_72),
        .\hlfc_f_reg[4] (norm_n_15),
        .\hlfc_f_reg[4]_0 (norm_n_23),
        .\hlfc_f_reg[4]_1 (hlfa_n_59),
        .\hlfc_f_reg[5] (norm_n_13),
        .\hlfc_f_reg[5]_0 (norm_n_22),
        .\hlfc_f_reg[6] (hlfa_n_97),
        .\hlfc_f_reg[6]_0 (hlfa_n_67),
        .\hlfc_f_reg[6]_1 (hlfa_n_68),
        .\hlfc_f_reg[9] (hadd_n_26),
        .\hlfc_f_reg[9]_0 (hlfa_n_96),
        .\hlfc_f_reg[9]_1 (hlfa_n_64),
        .hlfc_f_t_carry__2(hctl_n_121),
        .\hlfc_i_reg[23] (hctl_n_34),
        .\hlfc_i_reg[25] (hlfb_n_1),
        .\hlfc_i_reg[25]_0 (hlfa_n_50),
        .\hlfc_i_reg[25]_1 (hlfb_n_39),
        .\hlfc_i_reg[25]_2 (hlfa_n_40),
        .hlfc_r_hmul(hlfc_r_hmul[20:16]),
        .p_0_in1_in(p_0_in1_in),
        .p_16_in(p_16_in[0]),
        .rem0(rem0),
        .rst_n(rst_n),
        .rst_n_0({hctl_n_58,hctl_n_59,hctl_n_60,hctl_n_61,hctl_n_62,hctl_n_63,hctl_n_64,hctl_n_65,hctl_n_66,hctl_n_67,hctl_n_68,hctl_n_69}),
        .rst_n_1(hctl_n_73),
        .rst_n_2(hctl_n_76),
        .\stat_reg[0]_0 (hctl_n_91),
        .\stat_reg[0]_1 (norm_n_10),
        .\stat_reg[1]_0 (hctl_n_71),
        .\stat_reg[1]_1 (hctl_n_72),
        .\stat_reg[1]_2 (hctl_n_75),
        .\stat_reg[1]_3 (hlfa_n_91),
        .\stat_reg[2]_0 (stat),
        .\stat_reg[2]_1 (hctl_n_70),
        .\stat_reg[2]_2 (hctl_n_80),
        .\stat_reg[2]_3 (hctl_n_85),
        .\stat_reg[2]_4 (hctl_n_86),
        .\stat_reg[2]_5 (hctl_n_87),
        .\stat_reg[2]_6 (hctl_n_88),
        .\stat_reg[2]_7 (hctl_n_90),
        .\stat_reg[2]_8 (hctl_n_151),
        .\stat_reg[3]_0 (hctl_n_89),
        .\stat_reg[3]_1 (hctl_load_d),
        .\stat_reg[3]_2 (hctl_dsft_enb));
  hfpu_hdiv hdiv
       (.D({p_1_in[23:11],hctl_n_135,p_1_in[9:8]}),
        .E(hctl_n_91),
        .Q(hquo),
        .SR(p_0_in__0),
        .\cbus[13]_INST_0_i_2 (hlfa_n_45),
        .\cbus[13]_INST_0_i_2_0 (hlfb_n_41),
        .clk(clk),
        .\den_reg[21]_0 (p_0_in0),
        .\dso_reg[10]_0 (hctl_load_d),
        .\dso_reg[10]_1 (hlfb_f[12:2]),
        .hctl_ccmd_div(hctl_ccmd_div),
        .hctl_ccmd_div_reg(hdiv_n_17),
        .hctl_ccmd_mul(hctl_ccmd_mul),
        .\hquo_reg[0]_0 (hctl_n_151),
        .\hquo_reg[7]_0 (hctl_dsft_enb),
        .rem0(rem0),
        .rem1_carry__2_i_1(rem1),
        .rem2_carry__2_i_1(rem2),
        .rst_n(rst_n));
  hfpu_hlfa hlfa
       (.D({hlfa_n_37,p_3_in}),
        .E(hlfa_n_82),
        .O(hlfc_r_hmul[21]),
        .Q(hlfb_n_2),
        .S({hlfb_n_66,hlfb_n_67,hlfb_n_68}),
        .SR(p_0_in__0),
        .abus(abus),
        .abus_13_sp_1(hlfa_n_122),
        .bbus(bbus[10]),
        .\cbus[10]_INST_0_i_2 (hctl_n_104),
        .\cbus[11]_INST_0_i_1 (hctl_n_103),
        .\cbus[11]_INST_0_i_8 ({hlfb_n_60,hlfb_n_61,hlfb_n_62}),
        .\cbus[14]_INST_0_i_20_0 (hlfb_n_47),
        .\cbus[14]_INST_0_i_20_1 (hlfb_n_45),
        .\cbus[14]_INST_0_i_25 ({hlfb_n_63,hlfb_n_64}),
        .\cbus[14]_INST_0_i_4 (hlfb_n_44),
        .\cbus[15]_INST_0_i_10_0 (p_0_in),
        .\cbus[15]_INST_0_i_11_0 (hctl_n_101),
        .\cbus[15]_INST_0_i_2 (hctl_n_39),
        .\cbus[7]_INST_0_i_3 (hctl_n_100),
        .ccmd(ccmd),
        .ccmd_3_sp_1(hlfa_n_121),
        .\ccmd_f_reg[0]_0 (hlfa_n_71),
        .\ccmd_f_reg[0]_1 (hlfa_n_75),
        .\ccmd_f_reg[1]_0 (hlfa_n_50),
        .\ccmd_f_reg[1]_1 (hlfa_n_52),
        .\ccmd_f_reg[1]_2 (hlfa_n_60),
        .\ccmd_f_reg[1]_3 (hlfa_n_64),
        .\ccmd_f_reg[1]_4 (hlfa_n_67),
        .\ccmd_f_reg[1]_5 (hlfa_n_68),
        .\ccmd_f_reg[3]_0 (hlfa_n_59),
        .\ccmd_f_reg[4]_0 (ccmd_f),
        .\ccmd_f_reg[4]_1 (crdy),
        .clk(clk),
        .hctl_ccmd_add(hctl_ccmd_add),
        .hctl_ccmd_add_reg(hlfa_n_57),
        .hctl_ccmd_div(hctl_ccmd_div),
        .hctl_ccmd_div_reg(hlfa_n_70),
        .hctl_ccmd_div_reg_0(hlfa_n_103),
        .hctl_ccmd_int(hctl_ccmd_int),
        .hctl_ccmd_int_reg(hlfa_n_84),
        .hctl_ccmd_int_reg_0(hlfa_n_91),
        .hctl_ccmd_mul(hctl_ccmd_mul),
        .hctl_ccmd_mul_reg(hlfa_n_48),
        .hctl_ccmd_reg(hctl_ccmd_reg),
        .hctl_ccmd_sub(hctl_ccmd_sub),
        .hctl_load_b(hctl_load_b),
        .hfpu_dsp_a(hfpu_dsp_a),
        .hlfa_e_dif0_carry__0_0(hlfa_n_93),
        .hlfa_e_dif0_carry__0_1(hlfb_e),
        .\hlfa_e_reg[0]_0 (hlfa_n_81),
        .\hlfa_e_reg[0]_1 (hlfa_n_99),
        .\hlfa_e_reg[1]_0 (hlfa_n_62),
        .\hlfa_e_reg[2]_0 (hlfa_n_85),
        .\hlfa_e_reg[2]_1 (hctl_n_87),
        .\hlfa_e_reg[2]_2 (hctl_n_81),
        .\hlfa_e_reg[3]_0 (p_0_in17_in),
        .\hlfa_e_reg[3]_1 ({hlfa_n_2,hlfa_n_3}),
        .\hlfa_e_reg[3]_2 ({p_0_in6_in,p_0_in3_in,p_0_in1_in_1,hlfc_e[0]}),
        .\hlfa_e_reg[3]_3 ({hlfa_n_118,hlfa_n_119,hlfa_n_120}),
        .\hlfa_e_reg[3]_4 (hctl_n_97),
        .\hlfa_e_reg[4]_0 (p_0_in23_in),
        .\hlfa_e_reg[4]_1 (hlfa_n_27),
        .\hlfa_e_reg[4]_2 (p_0_in9_in),
        .\hlfa_e_reg[4]_3 (hlfc_e[4:1]),
        .\hlfa_e_reg[4]_4 (hlfa_n_79),
        .\hlfa_e_reg[4]_5 (hlfa_n_92),
        .\hlfa_e_reg[4]_6 (hctl_n_96),
        .\hlfa_e_reg[4]_7 (hctl_n_85),
        .\hlfa_e_reg[5]_0 ({hlfa_n_94,hlfa_n_95}),
        .\hlfa_e_reg[5]_1 (hctl_n_95),
        .\hlfa_e_reg[5]_2 (hctl_n_88),
        .\hlfa_f[15]_i_10 (hlfa_n_87),
        .\hlfa_f_reg[0]_0 (hctl_n_86),
        .\hlfa_f_reg[0]_1 (hctl_n_76),
        .\hlfa_f_reg[10]_0 (hlfa_n_44),
        .\hlfa_f_reg[11]_0 (hlfa_n_43),
        .\hlfa_f_reg[12]_0 (hlfa_n_61),
        .\hlfa_f_reg[13]_0 (hlfa_n_58),
        .\hlfa_f_reg[15]_0 (hlfa_n_74),
        .\hlfa_f_reg[15]_1 (hctl_n_89),
        .\hlfa_f_reg[1]_0 (hlfa_n_90),
        .\hlfa_f_reg[3]_0 (hlfa_n_72),
        .\hlfa_f_reg[3]_1 (hlfa_n_89),
        .\hlfa_f_reg[4]_0 (hlfa_n_86),
        .\hlfa_f_reg[4]_1 (hctl_n_84),
        .\hlfa_f_reg[4]_2 (hctl_n_90),
        .\hlfa_f_reg[5]_0 (hlfa_n_69),
        .\hlfa_f_reg[6]_0 (hlfa_n_97),
        .\hlfa_f_reg[7]_0 (hlfa_n_66),
        .\hlfa_f_reg[7]_1 ({p_1_in_0[7],p_1_in_0[2]}),
        .\hlfa_f_reg[8]_0 (hlfa_n_65),
        .\hlfa_f_reg[9]_0 (hlfa_n_88),
        .\hlfa_f_reg[9]_1 (hlfa_n_96),
        .\hlfa_i_reg[0]_0 (hlfa_n_51),
        .\hlfa_i_reg[10]_0 (hlfa_n_63),
        .\hlfa_i_reg[11]_0 (hlfa_n_40),
        .\hlfa_i_reg[11]_1 (hlfa_n_45),
        .\hlfa_i_reg[11]_2 (hlfa_n_46),
        .\hlfa_i_reg[13]_0 (hlfa_n_102),
        .\hlfa_i_reg[15]_0 (hlfa_n_39),
        .\hlfa_i_reg[15]_1 ({hlfa_n_115,hlfa_n_116,hlfa_n_117}),
        .\hlfa_i_reg[1]_0 (hlfa_n_53),
        .\hlfa_i_reg[2]_0 (hlfa_n_73),
        .\hlfa_i_reg[4]_0 (hlfa_n_41),
        .\hlfa_i_reg[4]_1 (hlfa_n_49),
        .\hlfa_i_reg[4]_2 (hlfa_n_101),
        .\hlfa_i_reg[7]_0 (hlfa_n_47),
        .hlfa_r_0(hlfa_r_0),
        .\hlfb_e_reg[0] (hlfa_n_77),
        .\hlfb_e_reg[0]_0 (hlfa_n_83),
        .\hlfb_e_reg[0]_1 (stat),
        .\hlfb_e_reg[1] ({hlfb_n_69,hlfb_n_70}),
        .\hlfb_e_reg[3] (hlfa_n_80),
        .\hlfb_e_reg[3]_0 (hlfa_n_98),
        .\hlfb_e_reg[3]_1 (hctl_n_99),
        .\hlfb_f_reg[12] (hctl_n_80),
        .\hlfb_f_reg[12]_0 (hctl_n_73),
        .\hlfb_f_reg[1] ({hlfb_f[5],hlfb_f[2]}),
        .\hlfb_f_reg[5] (hlfa_n_76),
        .\hlfb_i_reg[14] (hlfa_n_100),
        .hlfb_r(hlfb_r),
        .\hlfc_f_reg[13] (hctl_n_152),
        .\hlfc_f_reg[13]_0 (hctl_n_102),
        .\hlfc_i_reg[22] (hlfb_n_7),
        .\hlfc_i_reg[22]_0 (hlfb_n_39),
        .\hlfc_i_reg[22]_1 (hctl_n_31),
        .\hlfc_i_reg[22]_2 (hadd_n_20),
        .\hlfc_i_reg[22]_3 (hlfb_n_0),
        .\hlfc_i_reg[24] (hlfb_n_43),
        .\hlfc_i_reg[24]_0 (hlfb_n_3),
        .\hlfc_i_reg[24]_1 (hlfb_n_40),
        .\hlfc_i_reg[25] (hctl_n_54),
        .\hlfc_i_reg[25]_0 (hlfb_n_42),
        .\hlfc_i_reg[25]_1 (hlfb_n_5),
        .\hlfc_i_reg[25]_2 (hlfb_n_6),
        .p_16_in({p_16_in[5],p_16_in[1:0]}),
        .rst_n(rst_n),
        .\stat_reg[1] (hlfa_n_78));
  hfpu_hlfb hlfb
       (.D(hlfa_n_77),
        .E(hlfa_n_83),
        .Q(hlfb_n_2),
        .S(hlfb_n_65),
        .SR(p_0_in__0),
        .bbus(bbus),
        .bbus_11_sp_1(hlfb_n_38),
        .clk(clk),
        .hctl_ccmd_add(hctl_ccmd_add),
        .hctl_ccmd_add_reg(hlfb_n_4),
        .hctl_ccmd_div(hctl_ccmd_div),
        .hctl_ccmd_mul(hctl_ccmd_mul),
        .hctl_ccmd_mul_reg(hlfb_n_39),
        .hctl_ccmd_mul_reg_0(hlfb_n_43),
        .hctl_ccmd_sub(hctl_ccmd_sub),
        .hctl_ccmd_sub_reg(hlfb_n_0),
        .hfpu_dsp_b(hfpu_dsp_b),
        .\hlfa_i_reg[11] (hlfb_n_46),
        .hlfa_r_0(hlfa_r_0[22:16]),
        .\hlfb_e_reg[0]_0 (hlfb_n_36),
        .\hlfb_e_reg[1]_0 (hlfb_n_37),
        .\hlfb_e_reg[1]_1 (hlfa_n_79),
        .\hlfb_e_reg[1]_2 (hctl_n_77),
        .\hlfb_e_reg[1]_3 (hctl_n_71),
        .\hlfb_e_reg[1]_4 (p_0_in9_in),
        .\hlfb_e_reg[1]_5 (hctl_n_80),
        .\hlfb_e_reg[2]_0 (hctl_n_78),
        .\hlfb_e_reg[3]_0 ({hlfb_n_60,hlfb_n_61,hlfb_n_62}),
        .\hlfb_e_reg[3]_1 ({hlfb_n_66,hlfb_n_67,hlfb_n_68}),
        .\hlfb_e_reg[3]_2 (hctl_n_72),
        .\hlfb_e_reg[3]_3 (hlfa_n_80),
        .\hlfb_e_reg[4]_0 (hctl_n_79),
        .\hlfb_e_reg[5]_0 (hlfb_e),
        .\hlfb_e_reg[5]_1 ({hlfb_n_63,hlfb_n_64}),
        .\hlfb_e_reg[5]_2 ({hlfb_n_69,hlfb_n_70}),
        .\hlfb_e_reg[5]_3 (hctl_n_75),
        .\hlfb_e_reg[5]_4 (hctl_n_98),
        .\hlfb_e_reg[5]_5 (hlfa_n_81),
        .\hlfb_f_reg[0]_0 (hctl_n_70),
        .\hlfb_f_reg[0]_1 (hctl_n_76),
        .\hlfb_f_reg[0]_2 ({p_0_in6_in,p_0_in3_in,p_0_in1_in_1}),
        .\hlfb_f_reg[10]_0 (hlfb_n_32),
        .\hlfb_f_reg[11]_0 (hlfb_n_33),
        .\hlfb_f_reg[12]_0 (hlfb_f),
        .\hlfb_f_reg[12]_1 (hlfb_n_34),
        .\hlfb_f_reg[12]_2 (hlfa_n_82),
        .\hlfb_f_reg[12]_3 ({hctl_n_58,hctl_n_59,hctl_n_60,hctl_n_61,hctl_n_62,hctl_n_63,hctl_n_64,hctl_n_65,hctl_n_66,hctl_n_67,hctl_n_68,hctl_n_69}),
        .\hlfb_f_reg[4]_0 (hlfb_n_35),
        .\hlfb_f_reg[4]_1 (hlfa_n_78),
        .\hlfb_f_reg[6]_0 (hlfb_n_28),
        .\hlfb_f_reg[7]_0 (hlfb_n_29),
        .\hlfb_f_reg[8]_0 (hlfb_n_30),
        .\hlfb_f_reg[9]_0 (hlfb_n_31),
        .\hlfb_i_reg[11]_0 (hlfb_n_5),
        .\hlfb_i_reg[11]_1 (hlfb_n_40),
        .\hlfb_i_reg[11]_2 (hlfb_n_48),
        .\hlfb_i_reg[14]_0 (hlfb_n_42),
        .\hlfb_i_reg[15]_0 (hlfb_n_1),
        .\hlfb_i_reg[15]_1 (hlfb_n_7),
        .\hlfb_i_reg[15]_2 (hlfb_n_8),
        .\hlfb_i_reg[15]_3 (hctl_load_b),
        .\hlfb_i_reg[1]_0 (hlfb_n_45),
        .\hlfb_i_reg[4]_0 (hlfb_n_3),
        .\hlfb_i_reg[4]_1 (hlfb_n_41),
        .\hlfb_i_reg[4]_2 (hlfb_n_44),
        .\hlfb_i_reg[4]_3 (hlfb_n_47),
        .\hlfb_i_reg[6]_0 (hlfb_n_6),
        .\hlfc_i_reg[24] (hlfa_n_41),
        .\hlfc_i_reg[24]_0 (hlfa_n_46),
        .\hlfc_i_reg[25] (hlfa_n_47),
        .\hlfc_i_reg[25]_0 (hlfa_n_102));
  hfpu_hmul hmul
       (.S({hlfa_n_118,hlfa_n_119,hlfa_n_120,hlfb_n_65}),
        .\cbus[14]_INST_0_i_25 ({hlfa_n_94,hlfa_n_95}),
        .hlfa_r_0(hlfa_r_0[20:16]),
        .hlfc_r_hmul(hlfc_r_hmul));
  hfpu_norm norm
       (.D({hctl_n_45,hctl_n_46,hctl_n_47,hctl_n_48,hctl_n_49,hctl_n_50,hctl_n_51}),
        .E(hlfc_f),
        .Q({p_1_in_3,p_0_in_2[9],p_0_in_2[7],p_0_in_2[5:4]}),
        .SR(p_0_in__0),
        .\cbus[0] (hctl_n_26),
        .\cbus[11] (hctl_n_30),
        .\cbus[11]_0 (hctl_n_33),
        .\cbus[12]_INST_0_i_1 (hctl_n_105),
        .\cbus[14] (hctl_n_34),
        .\cbus[6]_INST_0_i_2 (hlfb_n_44),
        .\cbus[6]_INST_0_i_2_0 (hlfa_n_49),
        .\cbus[6]_INST_0_i_2_1 (hlfb_n_8),
        .clk(clk),
        .hctl_ccmd_cmp(hctl_ccmd_cmp),
        .hctl_ccmd_cmp_reg(norm_n_1),
        .hctl_ccmd_cmp_reg_0(norm_n_24),
        .hctl_ccmd_hlf(hctl_ccmd_hlf),
        .hctl_ccmd_reg(hctl_ccmd_reg),
        .hctl_ccmd_reg_reg(norm_n_9),
        .hctl_ccmd_reg_reg_0(norm_n_31),
        .hctl_ccmd_reg_reg_1(norm_n_37),
        .hctl_ccmd_reg_reg_2(norm_n_38),
        .hctl_ccmd_reg_reg_3(norm_n_39),
        .hctl_load_c(hctl_load_c),
        .hfpu_dsp_c({hfpu_dsp_c[21:20],hfpu_dsp_c[18],hfpu_dsp_c[13],hfpu_dsp_c[11],hfpu_dsp_c[9]}),
        .\hfpu_dsp_c[13] (norm_n_18),
        .\hfpu_dsp_c[21] (norm_n_19),
        .\hlfc_e_reg[0]_0 (norm_n_26),
        .\hlfc_e_reg[1]_0 (norm_n_28),
        .\hlfc_e_reg[3]_0 (norm_n_30),
        .\hlfc_e_reg[3]_1 (norm_n_40),
        .\hlfc_e_reg[3]_2 (hctl_n_36),
        .\hlfc_e_reg[3]_3 (hctl_n_57),
        .\hlfc_e_reg[4]_0 (norm_n_29),
        .\hlfc_e_reg[4]_1 (norm_n_35),
        .\hlfc_e_reg[5]_0 (norm_n_27),
        .\hlfc_e_reg[5]_1 (hctl_n_56),
        .\hlfc_f_reg[10]_0 (norm_n_8),
        .\hlfc_f_reg[10]_1 (norm_n_14),
        .\hlfc_f_reg[10]_2 (norm_n_17),
        .\hlfc_f_reg[10]_3 (hctl_n_32),
        .\hlfc_f_reg[11]_0 (norm_n_36),
        .\hlfc_f_reg[12]_0 (hctl_n_35),
        .\hlfc_f_reg[13]_0 (norm_n_11),
        .\hlfc_f_reg[13]_1 (norm_n_12),
        .\hlfc_f_reg[13]_2 (norm_n_20),
        .\hlfc_f_reg[13]_3 (norm_n_21),
        .\hlfc_f_reg[13]_4 (norm_n_22),
        .\hlfc_f_reg[13]_5 (norm_n_23),
        .\hlfc_f_reg[13]_6 (hlfa_n_58),
        .\hlfc_f_reg[1]_0 (norm_n_16),
        .\hlfc_f_reg[1]_1 (hctl_n_44),
        .\hlfc_f_reg[2]_0 (norm_n_7),
        .\hlfc_f_reg[2]_1 (hctl_n_43),
        .\hlfc_f_reg[3]_0 (norm_n_15),
        .\hlfc_f_reg[4]_0 (norm_n_13),
        .\hlfc_f_reg[6]_0 (norm_n_41),
        .\hlfc_f_reg[6]_1 (hctl_n_28),
        .\hlfc_f_reg[7]_0 (hctl_n_27),
        .\hlfc_f_reg[8]_0 (norm_n_0),
        .\hlfc_f_reg[8]_1 (hctl_n_25),
        .\hlfc_f_reg[9]_0 (hctl_n_29),
        .\hlfc_i_reg[23]_0 (norm_n_25),
        .\hlfc_i_reg[23]_1 (norm_n_42),
        .\hlfc_i_reg[23]_2 (norm_n_43),
        .\hlfc_i_reg[23]_3 (norm_n_44),
        .\hlfc_i_reg[23]_4 (norm_n_45),
        .\hlfc_i_reg[23]_5 (norm_n_46),
        .\hlfc_i_reg[25]_0 ({norm_n_32,hlfc_zer,norm_n_34}),
        .\hlfc_i_reg[25]_1 ({hctl_n_37,hlfa_n_37,hctl_n_38,p_3_in}),
        .p_16_in({p_16_in[5],p_16_in[1:0]}),
        .\stat[3]_i_6 (stat[2:1]),
        .\stat_reg[2] (norm_n_10));
endmodule

module hfpu_fdiv
   (O,
    D,
    rem2_carry__2_i_1_0,
    rem1_carry__2_i_1_0,
    rem0,
    hctl_ccmd_div_reg,
    Q,
    \cbus[13]_INST_0_i_2 ,
    \cbus[13]_INST_0_i_2_0 ,
    hctl_ccmd_div,
    hctl_ccmd_mul,
    \cbus[14]_INST_0_i_15_0 ,
    \cbus[14]_INST_0_i_15_1 ,
    \cbus[14]_INST_0_i_15_2 ,
    rem0_carry__1_0);
  output [0:0]O;
  output [3:0]D;
  output [0:0]rem2_carry__2_i_1_0;
  output [0:0]rem1_carry__2_i_1_0;
  output [12:0]rem0;
  output hctl_ccmd_div_reg;
  input [15:0]Q;
  input \cbus[13]_INST_0_i_2 ;
  input \cbus[13]_INST_0_i_2_0 ;
  input hctl_ccmd_div;
  input hctl_ccmd_mul;
  input [3:0]\cbus[14]_INST_0_i_15_0 ;
  input \cbus[14]_INST_0_i_15_1 ;
  input \cbus[14]_INST_0_i_15_2 ;
  input [10:0]rem0_carry__1_0;

  wire \<const0> ;
  wire [3:0]D;
  wire [0:0]O;
  wire [15:0]Q;
  wire \cbus[13]_INST_0_i_2 ;
  wire \cbus[13]_INST_0_i_2_0 ;
  wire [3:0]\cbus[14]_INST_0_i_15_0 ;
  wire \cbus[14]_INST_0_i_15_1 ;
  wire \cbus[14]_INST_0_i_15_2 ;
  wire \cbus[14]_INST_0_i_36_n_0 ;
  wire \cbus[14]_INST_0_i_37_n_0 ;
  wire hctl_ccmd_div;
  wire hctl_ccmd_div_reg;
  wire hctl_ccmd_mul;
  wire [12:0]rem0;
  wire rem0_carry__0_i_1_n_0;
  wire rem0_carry__0_i_2_n_0;
  wire rem0_carry__0_i_3_n_0;
  wire rem0_carry__0_i_4_n_0;
  wire rem0_carry__0_n_0;
  wire rem0_carry__0_n_1;
  wire rem0_carry__0_n_2;
  wire rem0_carry__0_n_3;
  wire [10:0]rem0_carry__1_0;
  wire rem0_carry__1_i_1_n_0;
  wire rem0_carry__1_i_2_n_0;
  wire rem0_carry__1_i_3_n_0;
  wire rem0_carry__1_i_4_n_0;
  wire rem0_carry__1_n_0;
  wire rem0_carry__1_n_1;
  wire rem0_carry__1_n_2;
  wire rem0_carry__1_n_3;
  wire rem0_carry__2_i_1_n_0;
  wire rem0_carry_i_1_n_0;
  wire rem0_carry_i_2_n_0;
  wire rem0_carry_i_3_n_0;
  wire rem0_carry_i_4_n_0;
  wire rem0_carry_n_0;
  wire rem0_carry_n_1;
  wire rem0_carry_n_2;
  wire rem0_carry_n_3;
  wire [12:1]rem1;
  wire rem1_carry__0_i_1_n_0;
  wire rem1_carry__0_i_2_n_0;
  wire rem1_carry__0_i_3_n_0;
  wire rem1_carry__0_i_4_n_0;
  wire rem1_carry__0_n_0;
  wire rem1_carry__0_n_1;
  wire rem1_carry__0_n_2;
  wire rem1_carry__0_n_3;
  wire rem1_carry__1_i_1_n_0;
  wire rem1_carry__1_i_2_n_0;
  wire rem1_carry__1_i_3_n_0;
  wire rem1_carry__1_i_4_n_0;
  wire rem1_carry__1_n_0;
  wire rem1_carry__1_n_1;
  wire rem1_carry__1_n_2;
  wire rem1_carry__1_n_3;
  wire [0:0]rem1_carry__2_i_1_0;
  wire rem1_carry__2_i_1_n_0;
  wire rem1_carry_i_1_n_0;
  wire rem1_carry_i_2_n_0;
  wire rem1_carry_i_3_n_0;
  wire rem1_carry_i_4_n_0;
  wire rem1_carry_n_0;
  wire rem1_carry_n_1;
  wire rem1_carry_n_2;
  wire rem1_carry_n_3;
  wire [12:1]rem2;
  wire rem2_carry__0_i_1_n_0;
  wire rem2_carry__0_i_2_n_0;
  wire rem2_carry__0_i_3_n_0;
  wire rem2_carry__0_i_4_n_0;
  wire rem2_carry__0_n_0;
  wire rem2_carry__0_n_1;
  wire rem2_carry__0_n_2;
  wire rem2_carry__0_n_3;
  wire rem2_carry__1_i_1_n_0;
  wire rem2_carry__1_i_2_n_0;
  wire rem2_carry__1_i_3_n_0;
  wire rem2_carry__1_i_4_n_0;
  wire rem2_carry__1_n_0;
  wire rem2_carry__1_n_1;
  wire rem2_carry__1_n_2;
  wire rem2_carry__1_n_3;
  wire [0:0]rem2_carry__2_i_1_0;
  wire rem2_carry__2_i_1_n_0;
  wire rem2_carry_i_1_n_0;
  wire rem2_carry_i_2_n_0;
  wire rem2_carry_i_3_n_0;
  wire rem2_carry_i_4_n_0;
  wire rem2_carry_n_0;
  wire rem2_carry_n_1;
  wire rem2_carry_n_2;
  wire rem2_carry_n_3;
  wire rem3_carry__0_i_1_n_0;
  wire rem3_carry__0_i_2_n_0;
  wire rem3_carry__0_i_3_n_0;
  wire rem3_carry__0_i_4_n_0;
  wire rem3_carry__0_n_0;
  wire rem3_carry__0_n_1;
  wire rem3_carry__0_n_2;
  wire rem3_carry__0_n_3;
  wire rem3_carry__0_n_4;
  wire rem3_carry__0_n_5;
  wire rem3_carry__0_n_6;
  wire rem3_carry__0_n_7;
  wire rem3_carry__1_i_1_n_0;
  wire rem3_carry__1_i_2_n_0;
  wire rem3_carry__1_i_3_n_0;
  wire rem3_carry__1_i_4_n_0;
  wire rem3_carry__1_n_0;
  wire rem3_carry__1_n_1;
  wire rem3_carry__1_n_2;
  wire rem3_carry__1_n_3;
  wire rem3_carry__1_n_4;
  wire rem3_carry__1_n_5;
  wire rem3_carry__1_n_6;
  wire rem3_carry__1_n_7;
  wire rem3_carry__2_i_1_n_0;
  wire rem3_carry_i_1_n_0;
  wire rem3_carry_i_2_n_0;
  wire rem3_carry_i_3_n_0;
  wire rem3_carry_i_4_n_0;
  wire rem3_carry_i_5_n_0;
  wire rem3_carry_n_0;
  wire rem3_carry_n_1;
  wire rem3_carry_n_2;
  wire rem3_carry_n_3;
  wire rem3_carry_n_4;
  wire rem3_carry_n_5;
  wire rem3_carry_n_6;
  wire rem3_carry_n_7;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h00000000333FAAAA)) 
    \cbus[14]_INST_0_i_15 
       (.I0(\cbus[13]_INST_0_i_2 ),
        .I1(\cbus[13]_INST_0_i_2_0 ),
        .I2(\cbus[14]_INST_0_i_36_n_0 ),
        .I3(\cbus[14]_INST_0_i_37_n_0 ),
        .I4(hctl_ccmd_div),
        .I5(hctl_ccmd_mul),
        .O(hctl_ccmd_div_reg));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \cbus[14]_INST_0_i_36 
       (.I0(\cbus[14]_INST_0_i_15_0 [1]),
        .I1(\cbus[14]_INST_0_i_15_0 [0]),
        .I2(rem0[12]),
        .I3(\cbus[14]_INST_0_i_15_0 [2]),
        .O(\cbus[14]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDFFFFFFF)) 
    \cbus[14]_INST_0_i_37 
       (.I0(rem1_carry__2_i_1_0),
        .I1(\cbus[14]_INST_0_i_15_0 [3]),
        .I2(\cbus[14]_INST_0_i_15_1 ),
        .I3(O),
        .I4(rem2_carry__2_i_1_0),
        .I5(\cbus[14]_INST_0_i_15_2 ),
        .O(\cbus[14]_INST_0_i_37_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hquo[0]_i_1 
       (.I0(rem0[12]),
        .O(D[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \hquo[1]_i_1 
       (.I0(rem1_carry__2_i_1_0),
        .O(D[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \hquo[2]_i_1 
       (.I0(rem2_carry__2_i_1_0),
        .O(D[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \hquo[3]_i_1 
       (.I0(O),
        .O(D[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry
       (.CI(\<const0> ),
        .CO({rem0_carry_n_0,rem0_carry_n_1,rem0_carry_n_2,rem0_carry_n_3}),
        .CYINIT(D[1]),
        .DI({rem1[3:1],\<const0> }),
        .O(rem0[3:0]),
        .S({rem0_carry_i_1_n_0,rem0_carry_i_2_n_0,rem0_carry_i_3_n_0,rem0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry__0
       (.CI(rem0_carry_n_0),
        .CO({rem0_carry__0_n_0,rem0_carry__0_n_1,rem0_carry__0_n_2,rem0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem1[7:4]),
        .O(rem0[7:4]),
        .S({rem0_carry__0_i_1_n_0,rem0_carry__0_i_2_n_0,rem0_carry__0_i_3_n_0,rem0_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__0_i_1
       (.I0(rem1[7]),
        .I1(rem0_carry__1_0[7]),
        .I2(rem1_carry__2_i_1_0),
        .O(rem0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__0_i_2
       (.I0(rem1[6]),
        .I1(rem0_carry__1_0[6]),
        .I2(rem1_carry__2_i_1_0),
        .O(rem0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__0_i_3
       (.I0(rem1[5]),
        .I1(rem0_carry__1_0[5]),
        .I2(rem1_carry__2_i_1_0),
        .O(rem0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__0_i_4
       (.I0(rem1[4]),
        .I1(rem0_carry__1_0[4]),
        .I2(rem1_carry__2_i_1_0),
        .O(rem0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry__1
       (.CI(rem0_carry__0_n_0),
        .CO({rem0_carry__1_n_0,rem0_carry__1_n_1,rem0_carry__1_n_2,rem0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem1[11:8]),
        .O(rem0[11:8]),
        .S({rem0_carry__1_i_1_n_0,rem0_carry__1_i_2_n_0,rem0_carry__1_i_3_n_0,rem0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rem0_carry__1_i_1
       (.I0(rem1[11]),
        .I1(rem1_carry__2_i_1_0),
        .O(rem0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__1_i_2
       (.I0(rem1[10]),
        .I1(rem0_carry__1_0[10]),
        .I2(rem1_carry__2_i_1_0),
        .O(rem0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__1_i_3
       (.I0(rem1[9]),
        .I1(rem0_carry__1_0[9]),
        .I2(rem1_carry__2_i_1_0),
        .O(rem0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__1_i_4
       (.I0(rem1[8]),
        .I1(rem0_carry__1_0[8]),
        .I2(rem1_carry__2_i_1_0),
        .O(rem0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry__2
       (.CI(rem0_carry__1_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(rem0[12]),
        .S({\<const0> ,\<const0> ,\<const0> ,rem0_carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rem0_carry__2_i_1
       (.I0(rem1_carry__2_i_1_0),
        .I1(rem1[12]),
        .O(rem0_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry_i_1
       (.I0(rem1[3]),
        .I1(rem0_carry__1_0[3]),
        .I2(rem1_carry__2_i_1_0),
        .O(rem0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry_i_2
       (.I0(rem1[2]),
        .I1(rem0_carry__1_0[2]),
        .I2(rem1_carry__2_i_1_0),
        .O(rem0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry_i_3
       (.I0(rem1[1]),
        .I1(rem1_carry__2_i_1_0),
        .I2(rem0_carry__1_0[1]),
        .O(rem0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rem0_carry_i_4
       (.I0(rem0_carry__1_0[0]),
        .I1(rem1_carry__2_i_1_0),
        .O(rem0_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry
       (.CI(\<const0> ),
        .CO({rem1_carry_n_0,rem1_carry_n_1,rem1_carry_n_2,rem1_carry_n_3}),
        .CYINIT(D[2]),
        .DI({rem2[3:1],Q[0]}),
        .O(rem1[4:1]),
        .S({rem1_carry_i_1_n_0,rem1_carry_i_2_n_0,rem1_carry_i_3_n_0,rem1_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry__0
       (.CI(rem1_carry_n_0),
        .CO({rem1_carry__0_n_0,rem1_carry__0_n_1,rem1_carry__0_n_2,rem1_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2[7:4]),
        .O(rem1[8:5]),
        .S({rem1_carry__0_i_1_n_0,rem1_carry__0_i_2_n_0,rem1_carry__0_i_3_n_0,rem1_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__0_i_1
       (.I0(rem2[7]),
        .I1(rem2_carry__2_i_1_0),
        .I2(rem0_carry__1_0[7]),
        .O(rem1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__0_i_2
       (.I0(rem2[6]),
        .I1(rem2_carry__2_i_1_0),
        .I2(rem0_carry__1_0[6]),
        .O(rem1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__0_i_3
       (.I0(rem2[5]),
        .I1(rem2_carry__2_i_1_0),
        .I2(rem0_carry__1_0[5]),
        .O(rem1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__0_i_4
       (.I0(rem2[4]),
        .I1(rem2_carry__2_i_1_0),
        .I2(rem0_carry__1_0[4]),
        .O(rem1_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry__1
       (.CI(rem1_carry__0_n_0),
        .CO({rem1_carry__1_n_0,rem1_carry__1_n_1,rem1_carry__1_n_2,rem1_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2[11:8]),
        .O(rem1[12:9]),
        .S({rem1_carry__1_i_1_n_0,rem1_carry__1_i_2_n_0,rem1_carry__1_i_3_n_0,rem1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rem1_carry__1_i_1
       (.I0(rem2[11]),
        .I1(rem2_carry__2_i_1_0),
        .O(rem1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__1_i_2
       (.I0(rem2[10]),
        .I1(rem2_carry__2_i_1_0),
        .I2(rem0_carry__1_0[10]),
        .O(rem1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__1_i_3
       (.I0(rem2[9]),
        .I1(rem2_carry__2_i_1_0),
        .I2(rem0_carry__1_0[9]),
        .O(rem1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__1_i_4
       (.I0(rem2[8]),
        .I1(rem2_carry__2_i_1_0),
        .I2(rem0_carry__1_0[8]),
        .O(rem1_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry__2
       (.CI(rem1_carry__1_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(rem1_carry__2_i_1_0),
        .S({\<const0> ,\<const0> ,\<const0> ,rem1_carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rem1_carry__2_i_1
       (.I0(rem2_carry__2_i_1_0),
        .I1(rem2[12]),
        .O(rem1_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry_i_1
       (.I0(rem2[3]),
        .I1(rem2_carry__2_i_1_0),
        .I2(rem0_carry__1_0[3]),
        .O(rem1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry_i_2
       (.I0(rem2[2]),
        .I1(rem2_carry__2_i_1_0),
        .I2(rem0_carry__1_0[2]),
        .O(rem1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry_i_3
       (.I0(rem2[1]),
        .I1(rem2_carry__2_i_1_0),
        .I2(rem0_carry__1_0[1]),
        .O(rem1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry_i_4
       (.I0(Q[0]),
        .I1(rem0_carry__1_0[0]),
        .I2(rem2_carry__2_i_1_0),
        .O(rem1_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry
       (.CI(\<const0> ),
        .CO({rem2_carry_n_0,rem2_carry_n_1,rem2_carry_n_2,rem2_carry_n_3}),
        .CYINIT(D[3]),
        .DI({rem3_carry_n_5,rem3_carry_n_6,rem3_carry_n_7,Q[1]}),
        .O(rem2[4:1]),
        .S({rem2_carry_i_1_n_0,rem2_carry_i_2_n_0,rem2_carry_i_3_n_0,rem2_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry__0
       (.CI(rem2_carry_n_0),
        .CO({rem2_carry__0_n_0,rem2_carry__0_n_1,rem2_carry__0_n_2,rem2_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({rem3_carry__0_n_5,rem3_carry__0_n_6,rem3_carry__0_n_7,rem3_carry_n_4}),
        .O(rem2[8:5]),
        .S({rem2_carry__0_i_1_n_0,rem2_carry__0_i_2_n_0,rem2_carry__0_i_3_n_0,rem2_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__0_i_1
       (.I0(rem3_carry__0_n_5),
        .I1(O),
        .I2(rem0_carry__1_0[7]),
        .O(rem2_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__0_i_2
       (.I0(rem3_carry__0_n_6),
        .I1(O),
        .I2(rem0_carry__1_0[6]),
        .O(rem2_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__0_i_3
       (.I0(rem3_carry__0_n_7),
        .I1(O),
        .I2(rem0_carry__1_0[5]),
        .O(rem2_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__0_i_4
       (.I0(rem3_carry_n_4),
        .I1(O),
        .I2(rem0_carry__1_0[4]),
        .O(rem2_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry__1
       (.CI(rem2_carry__0_n_0),
        .CO({rem2_carry__1_n_0,rem2_carry__1_n_1,rem2_carry__1_n_2,rem2_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({rem3_carry__1_n_5,rem3_carry__1_n_6,rem3_carry__1_n_7,rem3_carry__0_n_4}),
        .O(rem2[12:9]),
        .S({rem2_carry__1_i_1_n_0,rem2_carry__1_i_2_n_0,rem2_carry__1_i_3_n_0,rem2_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rem2_carry__1_i_1
       (.I0(rem3_carry__1_n_5),
        .I1(O),
        .O(rem2_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__1_i_2
       (.I0(rem3_carry__1_n_6),
        .I1(O),
        .I2(rem0_carry__1_0[10]),
        .O(rem2_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__1_i_3
       (.I0(rem3_carry__1_n_7),
        .I1(O),
        .I2(rem0_carry__1_0[9]),
        .O(rem2_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__1_i_4
       (.I0(rem3_carry__0_n_4),
        .I1(O),
        .I2(rem0_carry__1_0[8]),
        .O(rem2_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry__2
       (.CI(rem2_carry__1_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(rem2_carry__2_i_1_0),
        .S({\<const0> ,\<const0> ,\<const0> ,rem2_carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rem2_carry__2_i_1
       (.I0(O),
        .I1(rem3_carry__1_n_4),
        .O(rem2_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry_i_1
       (.I0(rem3_carry_n_5),
        .I1(O),
        .I2(rem0_carry__1_0[3]),
        .O(rem2_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry_i_2
       (.I0(rem3_carry_n_6),
        .I1(O),
        .I2(rem0_carry__1_0[2]),
        .O(rem2_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry_i_3
       (.I0(rem3_carry_n_7),
        .I1(O),
        .I2(rem0_carry__1_0[1]),
        .O(rem2_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry_i_4
       (.I0(Q[1]),
        .I1(rem0_carry__1_0[0]),
        .I2(O),
        .O(rem2_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry
       (.CI(\<const0> ),
        .CO({rem3_carry_n_0,rem3_carry_n_1,rem3_carry_n_2,rem3_carry_n_3}),
        .CYINIT(rem3_carry_i_1_n_0),
        .DI(Q[5:2]),
        .O({rem3_carry_n_4,rem3_carry_n_5,rem3_carry_n_6,rem3_carry_n_7}),
        .S({rem3_carry_i_2_n_0,rem3_carry_i_3_n_0,rem3_carry_i_4_n_0,rem3_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry__0
       (.CI(rem3_carry_n_0),
        .CO({rem3_carry__0_n_0,rem3_carry__0_n_1,rem3_carry__0_n_2,rem3_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(Q[9:6]),
        .O({rem3_carry__0_n_4,rem3_carry__0_n_5,rem3_carry__0_n_6,rem3_carry__0_n_7}),
        .S({rem3_carry__0_i_1_n_0,rem3_carry__0_i_2_n_0,rem3_carry__0_i_3_n_0,rem3_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__0_i_1
       (.I0(Q[9]),
        .I1(Q[15]),
        .I2(rem0_carry__1_0[7]),
        .O(rem3_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__0_i_2
       (.I0(Q[8]),
        .I1(Q[15]),
        .I2(rem0_carry__1_0[6]),
        .O(rem3_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__0_i_3
       (.I0(Q[7]),
        .I1(Q[15]),
        .I2(rem0_carry__1_0[5]),
        .O(rem3_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__0_i_4
       (.I0(Q[6]),
        .I1(Q[15]),
        .I2(rem0_carry__1_0[4]),
        .O(rem3_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry__1
       (.CI(rem3_carry__0_n_0),
        .CO({rem3_carry__1_n_0,rem3_carry__1_n_1,rem3_carry__1_n_2,rem3_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(Q[13:10]),
        .O({rem3_carry__1_n_4,rem3_carry__1_n_5,rem3_carry__1_n_6,rem3_carry__1_n_7}),
        .S({rem3_carry__1_i_1_n_0,rem3_carry__1_i_2_n_0,rem3_carry__1_i_3_n_0,rem3_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rem3_carry__1_i_1
       (.I0(Q[13]),
        .I1(Q[15]),
        .O(rem3_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__1_i_2
       (.I0(Q[12]),
        .I1(Q[15]),
        .I2(rem0_carry__1_0[10]),
        .O(rem3_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__1_i_3
       (.I0(Q[11]),
        .I1(Q[15]),
        .I2(rem0_carry__1_0[9]),
        .O(rem3_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__1_i_4
       (.I0(Q[10]),
        .I1(Q[15]),
        .I2(rem0_carry__1_0[8]),
        .O(rem3_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry__2
       (.CI(rem3_carry__1_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(O),
        .S({\<const0> ,\<const0> ,\<const0> ,rem3_carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rem3_carry__2_i_1
       (.I0(Q[14]),
        .I1(Q[15]),
        .O(rem3_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rem3_carry_i_1
       (.I0(Q[15]),
        .O(rem3_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry_i_2
       (.I0(Q[5]),
        .I1(Q[15]),
        .I2(rem0_carry__1_0[3]),
        .O(rem3_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry_i_3
       (.I0(Q[4]),
        .I1(Q[15]),
        .I2(rem0_carry__1_0[2]),
        .O(rem3_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry_i_4
       (.I0(Q[3]),
        .I1(Q[15]),
        .I2(rem0_carry__1_0[1]),
        .O(rem3_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry_i_5
       (.I0(Q[2]),
        .I1(rem0_carry__1_0[0]),
        .I2(Q[15]),
        .O(rem3_carry_i_5_n_0));
endmodule

module hfpu_fsm
   (hctl_ccmd_add,
    E,
    hctl_ccmd_sub,
    hctl_ccmd_cmp,
    hctl_ccmd_mul,
    hctl_ccmd_div,
    hctl_ccmd_reg,
    hctl_ccmd_hlf,
    hctl_ccmd_int,
    cbus,
    hctl_ccmd_add_reg_0,
    hctl_ccmd_add_reg_1,
    hctl_ccmd_add_reg_2,
    hctl_ccmd_add_reg_3,
    hctl_ccmd_add_reg_4,
    hctl_ccmd_hlf_reg_0,
    \cbus[9]_INST_0_i_9 ,
    hctl_ccmd_add_reg_5,
    hctl_ccmd_add_reg_6,
    \hlfc_i_reg[23] ,
    hctl_ccmd_add_reg_7,
    hctl_ccmd_add_reg_8,
    hctl_ccmd_add_reg_9,
    hctl_ccmd_mul_reg_0,
    \stat_reg[2]_0 ,
    hctl_ccmd_add_reg_10,
    hctl_ccmd_add_reg_11,
    hctl_ccmd_add_reg_12,
    hctl_load_c,
    \hlfc_f_reg[12] ,
    hctl_ccmd_div_reg_0,
    \cbus[13]_INST_0_i_13_0 ,
    \hlfa_e_reg[4] ,
    \hlfa_e_reg[3] ,
    rst_n_0,
    \stat_reg[2]_1 ,
    \stat_reg[1]_0 ,
    \stat_reg[1]_1 ,
    rst_n_1,
    hctl_load_b,
    \stat_reg[1]_2 ,
    rst_n_2,
    .bbus_10_sp_1(bbus_10_sn_1),
    .bbus_12_sp_1(bbus_12_sn_1),
    \hlfb_e_reg[4] ,
    \stat_reg[2]_2 ,
    \abus[12] ,
    \abus[5] ,
    \abus[13] ,
    \stat_reg[2]_3 ,
    \stat_reg[2]_4 ,
    \stat_reg[2]_5 ,
    \stat_reg[2]_6 ,
    \stat_reg[3]_0 ,
    \stat_reg[2]_7 ,
    \stat_reg[0]_0 ,
    \stat_reg[3]_1 ,
    \stat_reg[3]_2 ,
    hlfb_r,
    \abus[11] ,
    \abus[11]_0 ,
    \abus[12]_0 ,
    \bbus[12]_0 ,
    \bbus[10]_0 ,
    hctl_ccmd_div_reg_1,
    hctl_ccmd_mul_reg_1,
    hctl_ccmd_add_reg_13,
    \hlfa_e_reg[1] ,
    \hlfa_e_reg[0] ,
    hctl_ccmd_reg_reg_0,
    p_0_in1_in,
    hlfc_f_t_carry__2,
    \hlfa_f_reg[15] ,
    S,
    hctl_ccmd_add_reg_14,
    hctl_ccmd_add_reg_15,
    hctl_ccmd_add_reg_16,
    \stat_reg[2]_8 ,
    hctl_ccmd_add_reg_17,
    SR,
    clk,
    \cbus[12] ,
    CO,
    D,
    .cbus_6_sp_1(cbus_6_sn_1),
    \cbus[6]_0 ,
    \hlfc_i_reg[25] ,
    \cbus[6]_1 ,
    .cbus_7_sp_1(cbus_7_sn_1),
    Q,
    \cbus[7]_0 ,
    .cbus_0_sp_1(cbus_0_sn_1),
    .cbus_1_sp_1(cbus_1_sn_1),
    \cbus[1]_0 ,
    .cbus_2_sp_1(cbus_2_sn_1),
    \cbus[2]_0 ,
    .cbus_3_sp_1(cbus_3_sn_1),
    \cbus[3]_0 ,
    .cbus_4_sp_1(cbus_4_sn_1),
    \cbus[15] ,
    .cbus_5_sp_1(cbus_5_sn_1),
    .cbus_8_sp_1(cbus_8_sn_1),
    .cbus_9_sp_1(cbus_9_sn_1),
    \cbus[6]_2 ,
    \cbus[6]_3 ,
    .cbus_10_sp_1(cbus_10_sn_1),
    p_16_in,
    \cbus[10]_0 ,
    .cbus_11_sp_1(cbus_11_sn_1),
    \cbus[12]_0 ,
    \cbus[12]_1 ,
    \cbus[12]_2 ,
    .cbus_13_sp_1(cbus_13_sn_1),
    .cbus_14_sp_1(cbus_14_sn_1),
    \cbus[13]_0 ,
    \cbus[13]_1 ,
    \cbus[13]_2 ,
    \cbus[14]_INST_0_i_4_0 ,
    \cbus[14]_INST_0_i_4_1 ,
    \cbus[15]_INST_0_i_35 ,
    hlfa_r_0,
    \hlfc_i_reg[25]_0 ,
    \hlfc_i_reg[25]_1 ,
    \cbus[15]_0 ,
    \hlfc_i_reg[25]_2 ,
    \stat_reg[1]_3 ,
    \stat_reg[0]_1 ,
    ccmd,
    crdy_f_reg_0,
    \cbus[13]_3 ,
    \cbus[5]_0 ,
    \cbus[5]_1 ,
    \cbus[3]_1 ,
    \cbus[3]_2 ,
    \hlfc_f_reg[5] ,
    \hlfc_f_reg[5]_0 ,
    \hlfc_f_reg[3] ,
    \hlfc_f_reg[3]_0 ,
    \hlfc_f_reg[4] ,
    \hlfc_f_reg[4]_0 ,
    \hlfc_f_reg[11] ,
    \hlfc_f_reg[11]_0 ,
    \hlfc_f_reg[15] ,
    \hlfb_i_reg[15] ,
    \hlfc_f_reg[11]_1 ,
    \hlfc_f_reg[11]_2 ,
    \cbus[11]_INST_0_i_2_0 ,
    hfpu_dsp_c,
    \cbus[12]_INST_0_i_2_0 ,
    \cbus[10]_1 ,
    \cbus[10]_2 ,
    \cbus[10]_3 ,
    \cbus[13]_4 ,
    \hlfc_f_reg[0] ,
    \hlfc_f_reg[0]_0 ,
    O,
    \hlfc_f_reg[1] ,
    \hlfc_f_reg[1]_0 ,
    \hlfc_e[5]_i_4 ,
    \hlfc_f_reg[14] ,
    \cbus[7]_1 ,
    \hlfc_f_reg[4]_1 ,
    \cbus[12]_INST_0_i_2_1 ,
    \hlfc_e[3]_i_7 ,
    \hlfc_e[3]_i_7_0 ,
    \hlfc_f_reg[9] ,
    \hlfc_f_reg[9]_0 ,
    \hlfc_f_reg[9]_1 ,
    \cbus[8]_INST_0_i_2_0 ,
    \cbus[7]_2 ,
    \hlfc_f_reg[6] ,
    \hlfc_f_reg[6]_0 ,
    \hlfc_f_reg[6]_1 ,
    \hlfc_f_reg[3]_1 ,
    \hlfc_f_reg[2] ,
    \hlfc_f_reg[2]_0 ,
    \hlfc_f_reg[2]_1 ,
    \hlfc_f_reg[15]_0 ,
    \hlfb_f_reg[1] ,
    \hlfb_f_reg[11] ,
    \hlfb_f_reg[2] ,
    \hlfb_f_reg[2]_0 ,
    \hlfb_f_reg[3] ,
    \hlfb_f_reg[4] ,
    bbus,
    \hlfb_f_reg[5] ,
    \hlfb_f_reg[6] ,
    \hlfb_f_reg[7] ,
    \hlfb_f_reg[8] ,
    \hlfb_f_reg[9] ,
    \hlfb_f_reg[10] ,
    \hlfb_f_reg[1]_0 ,
    \hlfb_f_reg[4]_0 ,
    rst_n,
    \hlfb_e_reg[1] ,
    \hlfb_e_reg[2] ,
    \hlfb_e_reg[4]_0 ,
    \hlfb_e_reg[4]_1 ,
    \hlfb_f_reg[4]_1 ,
    abus,
    \hlfa_e_reg[2] ,
    \hlfa_f_reg[2] ,
    \hlfa_f_reg[2]_0 ,
    \hlfa_f_reg[7] ,
    \hlfa_f_reg[7]_0 ,
    \hlfa_e_reg[2]_0 ,
    \hlfa_e_reg[2]_1 ,
    \hlfa_f[15]_i_4 ,
    \hlfa_e_reg[5] ,
    \hlfa_f[15]_i_4_0 ,
    \hlfa_f_reg[0] ,
    \hlfa_e_reg[5]_0 ,
    \hlfa_f_reg[2]_1 ,
    \hlfb_f_reg[12] ,
    \cbus[14]_INST_0_i_4_2 ,
    \cbus[14]_INST_0_i_4_3 ,
    \cbus[14]_INST_0_i_4_4 ,
    rem0,
    \cbus[3]_INST_0_i_4_0 ,
    \cbus[4]_INST_0_i_4_0 ,
    \cbus[6]_INST_0_i_5_0 ,
    hlfc_e,
    hlfc_r_hmul,
    \cbus[15]_INST_0_i_28 ,
    \cbus[9]_INST_0_i_2_0 ,
    \cbus[13]_INST_0_i_10_0 ,
    \cbus[2]_INST_0_i_4_0 ,
    \cbus[2]_INST_0_i_4_1 ,
    \cbus[15]_INST_0_i_10 ,
    \cbus[15]_INST_0_i_10_0 ,
    \cbus[13]_5 ,
    \cbus[13]_6 ,
    \cbus[13]_7 ,
    \cbus[14]_0 );
  output hctl_ccmd_add;
  output [0:0]E;
  output hctl_ccmd_sub;
  output hctl_ccmd_cmp;
  output hctl_ccmd_mul;
  output hctl_ccmd_div;
  output hctl_ccmd_reg;
  output hctl_ccmd_hlf;
  output hctl_ccmd_int;
  output [15:0]cbus;
  output hctl_ccmd_add_reg_0;
  output hctl_ccmd_add_reg_1;
  output hctl_ccmd_add_reg_2;
  output hctl_ccmd_add_reg_3;
  output hctl_ccmd_add_reg_4;
  output hctl_ccmd_hlf_reg_0;
  output \cbus[9]_INST_0_i_9 ;
  output hctl_ccmd_add_reg_5;
  output hctl_ccmd_add_reg_6;
  output \hlfc_i_reg[23] ;
  output hctl_ccmd_add_reg_7;
  output hctl_ccmd_add_reg_8;
  output [1:0]hctl_ccmd_add_reg_9;
  output hctl_ccmd_mul_reg_0;
  output [2:0]\stat_reg[2]_0 ;
  output hctl_ccmd_add_reg_10;
  output hctl_ccmd_add_reg_11;
  output [6:0]hctl_ccmd_add_reg_12;
  output hctl_load_c;
  output [0:0]\hlfc_f_reg[12] ;
  output hctl_ccmd_div_reg_0;
  output \cbus[13]_INST_0_i_13_0 ;
  output \hlfa_e_reg[4] ;
  output \hlfa_e_reg[3] ;
  output [11:0]rst_n_0;
  output \stat_reg[2]_1 ;
  output \stat_reg[1]_0 ;
  output \stat_reg[1]_1 ;
  output rst_n_1;
  output hctl_load_b;
  output \stat_reg[1]_2 ;
  output rst_n_2;
  output \hlfb_e_reg[4] ;
  output \stat_reg[2]_2 ;
  output \abus[12] ;
  output [1:0]\abus[5] ;
  output \abus[13] ;
  output \stat_reg[2]_3 ;
  output \stat_reg[2]_4 ;
  output \stat_reg[2]_5 ;
  output [0:0]\stat_reg[2]_6 ;
  output \stat_reg[3]_0 ;
  output \stat_reg[2]_7 ;
  output [0:0]\stat_reg[0]_0 ;
  output [0:0]\stat_reg[3]_1 ;
  output [0:0]\stat_reg[3]_2 ;
  output [0:0]hlfb_r;
  output \abus[11] ;
  output \abus[11]_0 ;
  output \abus[12]_0 ;
  output \bbus[12]_0 ;
  output \bbus[10]_0 ;
  output hctl_ccmd_div_reg_1;
  output hctl_ccmd_mul_reg_1;
  output hctl_ccmd_add_reg_13;
  output \hlfa_e_reg[1] ;
  output \hlfa_e_reg[0] ;
  output hctl_ccmd_reg_reg_0;
  output [14:0]p_0_in1_in;
  output [0:0]hlfc_f_t_carry__2;
  output [15:0]\hlfa_f_reg[15] ;
  output [3:0]S;
  output [3:0]hctl_ccmd_add_reg_14;
  output [3:0]hctl_ccmd_add_reg_15;
  output [0:0]hctl_ccmd_add_reg_16;
  output [0:0]\stat_reg[2]_8 ;
  output hctl_ccmd_add_reg_17;
  input [0:0]SR;
  input clk;
  input [5:0]\cbus[12] ;
  input [0:0]CO;
  input [0:0]D;
  input \cbus[6]_0 ;
  input \hlfc_i_reg[25] ;
  input \cbus[6]_1 ;
  input [4:0]Q;
  input \cbus[7]_0 ;
  input \cbus[1]_0 ;
  input \cbus[2]_0 ;
  input \cbus[3]_0 ;
  input [2:0]\cbus[15] ;
  input \cbus[6]_2 ;
  input \cbus[6]_3 ;
  input [0:0]p_16_in;
  input [0:0]\cbus[10]_0 ;
  input \cbus[12]_0 ;
  input \cbus[12]_1 ;
  input \cbus[12]_2 ;
  input \cbus[13]_0 ;
  input \cbus[13]_1 ;
  input \cbus[13]_2 ;
  input \cbus[14]_INST_0_i_4_0 ;
  input \cbus[14]_INST_0_i_4_1 ;
  input [0:0]\cbus[15]_INST_0_i_35 ;
  input [21:0]hlfa_r_0;
  input \hlfc_i_reg[25]_0 ;
  input \hlfc_i_reg[25]_1 ;
  input \cbus[15]_0 ;
  input \hlfc_i_reg[25]_2 ;
  input \stat_reg[1]_3 ;
  input \stat_reg[0]_1 ;
  input [4:0]ccmd;
  input crdy_f_reg_0;
  input \cbus[13]_3 ;
  input \cbus[5]_0 ;
  input \cbus[5]_1 ;
  input \cbus[3]_1 ;
  input \cbus[3]_2 ;
  input \hlfc_f_reg[5] ;
  input \hlfc_f_reg[5]_0 ;
  input \hlfc_f_reg[3] ;
  input \hlfc_f_reg[3]_0 ;
  input \hlfc_f_reg[4] ;
  input \hlfc_f_reg[4]_0 ;
  input \hlfc_f_reg[11] ;
  input \hlfc_f_reg[11]_0 ;
  input \hlfc_f_reg[15] ;
  input \hlfb_i_reg[15] ;
  input [3:0]\hlfc_f_reg[11]_1 ;
  input [1:0]\hlfc_f_reg[11]_2 ;
  input \cbus[11]_INST_0_i_2_0 ;
  input [13:0]hfpu_dsp_c;
  input [7:0]\cbus[12]_INST_0_i_2_0 ;
  input \cbus[10]_1 ;
  input \cbus[10]_2 ;
  input \cbus[10]_3 ;
  input \cbus[13]_4 ;
  input \hlfc_f_reg[0] ;
  input \hlfc_f_reg[0]_0 ;
  input [0:0]O;
  input \hlfc_f_reg[1] ;
  input \hlfc_f_reg[1]_0 ;
  input \hlfc_e[5]_i_4 ;
  input \hlfc_f_reg[14] ;
  input [2:0]\cbus[7]_1 ;
  input \hlfc_f_reg[4]_1 ;
  input \cbus[12]_INST_0_i_2_1 ;
  input \hlfc_e[3]_i_7 ;
  input \hlfc_e[3]_i_7_0 ;
  input \hlfc_f_reg[9] ;
  input \hlfc_f_reg[9]_0 ;
  input \hlfc_f_reg[9]_1 ;
  input \cbus[8]_INST_0_i_2_0 ;
  input \cbus[7]_2 ;
  input \hlfc_f_reg[6] ;
  input \hlfc_f_reg[6]_0 ;
  input \hlfc_f_reg[6]_1 ;
  input \hlfc_f_reg[3]_1 ;
  input \hlfc_f_reg[2] ;
  input \hlfc_f_reg[2]_0 ;
  input \hlfc_f_reg[2]_1 ;
  input \hlfc_f_reg[15]_0 ;
  input \hlfb_f_reg[1] ;
  input [12:0]\hlfb_f_reg[11] ;
  input \hlfb_f_reg[2] ;
  input \hlfb_f_reg[2]_0 ;
  input \hlfb_f_reg[3] ;
  input \hlfb_f_reg[4] ;
  input [14:0]bbus;
  input \hlfb_f_reg[5] ;
  input \hlfb_f_reg[6] ;
  input \hlfb_f_reg[7] ;
  input \hlfb_f_reg[8] ;
  input \hlfb_f_reg[9] ;
  input \hlfb_f_reg[10] ;
  input \hlfb_f_reg[1]_0 ;
  input [3:0]\hlfb_f_reg[4]_0 ;
  input rst_n;
  input \hlfb_e_reg[1] ;
  input \hlfb_e_reg[2] ;
  input \hlfb_e_reg[4]_0 ;
  input [1:0]\hlfb_e_reg[4]_1 ;
  input [0:0]\hlfb_f_reg[4]_1 ;
  input [6:0]abus;
  input \hlfa_e_reg[2] ;
  input \hlfa_f_reg[2] ;
  input \hlfa_f_reg[2]_0 ;
  input \hlfa_f_reg[7] ;
  input \hlfa_f_reg[7]_0 ;
  input [0:0]\hlfa_e_reg[2]_0 ;
  input [0:0]\hlfa_e_reg[2]_1 ;
  input [1:0]\hlfa_f[15]_i_4 ;
  input \hlfa_e_reg[5] ;
  input [0:0]\hlfa_f[15]_i_4_0 ;
  input \hlfa_f_reg[0] ;
  input \hlfa_e_reg[5]_0 ;
  input \hlfa_f_reg[2]_1 ;
  input \hlfb_f_reg[12] ;
  input \cbus[14]_INST_0_i_4_2 ;
  input \cbus[14]_INST_0_i_4_3 ;
  input \cbus[14]_INST_0_i_4_4 ;
  input [12:0]rem0;
  input [0:0]\cbus[3]_INST_0_i_4_0 ;
  input [0:0]\cbus[4]_INST_0_i_4_0 ;
  input \cbus[6]_INST_0_i_5_0 ;
  input [3:0]hlfc_e;
  input [4:0]hlfc_r_hmul;
  input [0:0]\cbus[15]_INST_0_i_28 ;
  input \cbus[9]_INST_0_i_2_0 ;
  input \cbus[13]_INST_0_i_10_0 ;
  input \cbus[2]_INST_0_i_4_0 ;
  input [0:0]\cbus[2]_INST_0_i_4_1 ;
  input \cbus[15]_INST_0_i_10 ;
  input \cbus[15]_INST_0_i_10_0 ;
  input \cbus[13]_5 ;
  input \cbus[13]_6 ;
  input \cbus[13]_7 ;
  input \cbus[14]_0 ;
  output bbus_10_sn_1;
  output bbus_12_sn_1;
  input cbus_6_sn_1;
  input cbus_7_sn_1;
  input cbus_0_sn_1;
  input cbus_1_sn_1;
  input cbus_2_sn_1;
  input cbus_3_sn_1;
  input cbus_4_sn_1;
  input cbus_5_sn_1;
  input cbus_8_sn_1;
  input cbus_9_sn_1;
  input cbus_10_sn_1;
  input cbus_11_sn_1;
  input cbus_13_sn_1;
  input cbus_14_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]O;
  wire [4:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [6:0]abus;
  wire \abus[11] ;
  wire \abus[11]_0 ;
  wire \abus[12] ;
  wire \abus[12]_0 ;
  wire \abus[13] ;
  wire [1:0]\abus[5] ;
  wire [14:0]bbus;
  wire \bbus[10]_0 ;
  wire \bbus[12]_0 ;
  wire bbus_10_sn_1;
  wire bbus_12_sn_1;
  wire [15:0]cbus;
  wire \cbus[0]_INST_0_i_2_n_0 ;
  wire [0:0]\cbus[10]_0 ;
  wire \cbus[10]_1 ;
  wire \cbus[10]_2 ;
  wire \cbus[10]_3 ;
  wire \cbus[10]_INST_0_i_2_n_0 ;
  wire \cbus[10]_INST_0_i_8_n_0 ;
  wire \cbus[11]_INST_0_i_2_0 ;
  wire \cbus[11]_INST_0_i_2_n_0 ;
  wire \cbus[11]_INST_0_i_7_n_0 ;
  wire [5:0]\cbus[12] ;
  wire \cbus[12]_0 ;
  wire \cbus[12]_1 ;
  wire \cbus[12]_2 ;
  wire \cbus[12]_INST_0_i_1_n_0 ;
  wire [7:0]\cbus[12]_INST_0_i_2_0 ;
  wire \cbus[12]_INST_0_i_2_1 ;
  wire \cbus[12]_INST_0_i_6_n_0 ;
  wire \cbus[13]_0 ;
  wire \cbus[13]_1 ;
  wire \cbus[13]_2 ;
  wire \cbus[13]_3 ;
  wire \cbus[13]_4 ;
  wire \cbus[13]_5 ;
  wire \cbus[13]_6 ;
  wire \cbus[13]_7 ;
  wire \cbus[13]_INST_0_i_10_0 ;
  wire \cbus[13]_INST_0_i_10_n_0 ;
  wire \cbus[13]_INST_0_i_13_0 ;
  wire \cbus[13]_INST_0_i_13_n_0 ;
  wire \cbus[13]_INST_0_i_16_n_0 ;
  wire \cbus[13]_INST_0_i_1_n_0 ;
  wire \cbus[13]_INST_0_i_3_n_0 ;
  wire \cbus[13]_INST_0_i_5_n_0 ;
  wire \cbus[14]_0 ;
  wire \cbus[14]_INST_0_i_16_n_0 ;
  wire \cbus[14]_INST_0_i_17_n_0 ;
  wire \cbus[14]_INST_0_i_19_n_0 ;
  wire \cbus[14]_INST_0_i_1_n_0 ;
  wire \cbus[14]_INST_0_i_24_n_0 ;
  wire \cbus[14]_INST_0_i_25_n_0 ;
  wire \cbus[14]_INST_0_i_27_n_0 ;
  wire \cbus[14]_INST_0_i_2_n_0 ;
  wire \cbus[14]_INST_0_i_30_n_0 ;
  wire \cbus[14]_INST_0_i_38_n_0 ;
  wire \cbus[14]_INST_0_i_39_n_0 ;
  wire \cbus[14]_INST_0_i_3_n_0 ;
  wire \cbus[14]_INST_0_i_4_0 ;
  wire \cbus[14]_INST_0_i_4_1 ;
  wire \cbus[14]_INST_0_i_4_2 ;
  wire \cbus[14]_INST_0_i_4_3 ;
  wire \cbus[14]_INST_0_i_4_4 ;
  wire \cbus[14]_INST_0_i_6_n_0 ;
  wire [2:0]\cbus[15] ;
  wire \cbus[15]_0 ;
  wire \cbus[15]_INST_0_i_10 ;
  wire \cbus[15]_INST_0_i_10_0 ;
  wire \cbus[15]_INST_0_i_12_n_0 ;
  wire \cbus[15]_INST_0_i_1_n_0 ;
  wire [0:0]\cbus[15]_INST_0_i_28 ;
  wire \cbus[15]_INST_0_i_2_n_0 ;
  wire \cbus[15]_INST_0_i_30_n_2 ;
  wire \cbus[15]_INST_0_i_30_n_3 ;
  wire [0:0]\cbus[15]_INST_0_i_35 ;
  wire \cbus[15]_INST_0_i_39_n_0 ;
  wire \cbus[15]_INST_0_i_40_n_0 ;
  wire \cbus[15]_INST_0_i_41_n_0 ;
  wire \cbus[15]_INST_0_i_4_n_0 ;
  wire \cbus[15]_INST_0_i_5_n_0 ;
  wire \cbus[1]_0 ;
  wire \cbus[1]_INST_0_i_3_n_0 ;
  wire \cbus[1]_INST_0_i_4_n_0 ;
  wire \cbus[1]_INST_0_i_7_n_0 ;
  wire \cbus[2]_0 ;
  wire \cbus[2]_INST_0_i_3_n_0 ;
  wire \cbus[2]_INST_0_i_4_0 ;
  wire [0:0]\cbus[2]_INST_0_i_4_1 ;
  wire \cbus[2]_INST_0_i_7_n_0 ;
  wire \cbus[3]_0 ;
  wire \cbus[3]_1 ;
  wire \cbus[3]_2 ;
  wire \cbus[3]_INST_0_i_3_n_0 ;
  wire [0:0]\cbus[3]_INST_0_i_4_0 ;
  wire \cbus[3]_INST_0_i_4_n_0 ;
  wire \cbus[3]_INST_0_i_7_n_0 ;
  wire \cbus[4]_INST_0_i_2_n_0 ;
  wire \cbus[4]_INST_0_i_3_n_0 ;
  wire [0:0]\cbus[4]_INST_0_i_4_0 ;
  wire \cbus[4]_INST_0_i_4_n_0 ;
  wire \cbus[4]_INST_0_i_7_n_0 ;
  wire \cbus[5]_0 ;
  wire \cbus[5]_1 ;
  wire \cbus[5]_INST_0_i_2_n_0 ;
  wire \cbus[5]_INST_0_i_3_n_0 ;
  wire \cbus[5]_INST_0_i_6_n_0 ;
  wire \cbus[6]_0 ;
  wire \cbus[6]_1 ;
  wire \cbus[6]_2 ;
  wire \cbus[6]_3 ;
  wire \cbus[6]_INST_0_i_2_n_0 ;
  wire \cbus[6]_INST_0_i_3_n_0 ;
  wire \cbus[6]_INST_0_i_5_0 ;
  wire \cbus[6]_INST_0_i_7_n_0 ;
  wire \cbus[7]_0 ;
  wire [2:0]\cbus[7]_1 ;
  wire \cbus[7]_2 ;
  wire \cbus[7]_INST_0_i_1_n_0 ;
  wire \cbus[7]_INST_0_i_2_n_0 ;
  wire \cbus[8]_INST_0_i_2_0 ;
  wire \cbus[8]_INST_0_i_5_n_0 ;
  wire \cbus[9]_INST_0_i_13_n_0 ;
  wire \cbus[9]_INST_0_i_1_n_0 ;
  wire \cbus[9]_INST_0_i_2_0 ;
  wire \cbus[9]_INST_0_i_4_n_0 ;
  wire \cbus[9]_INST_0_i_8_n_0 ;
  wire \cbus[9]_INST_0_i_9 ;
  wire cbus_0_sn_1;
  wire cbus_10_sn_1;
  wire cbus_11_sn_1;
  wire cbus_13_sn_1;
  wire cbus_14_sn_1;
  wire cbus_1_sn_1;
  wire cbus_2_sn_1;
  wire cbus_3_sn_1;
  wire cbus_4_sn_1;
  wire cbus_5_sn_1;
  wire cbus_6_sn_1;
  wire cbus_7_sn_1;
  wire cbus_8_sn_1;
  wire cbus_9_sn_1;
  wire [4:0]ccmd;
  wire clk;
  wire crdy_INST_0_i_1_n_0;
  wire crdy_f;
  wire crdy_f_i_2_n_0;
  wire crdy_f_reg_0;
  wire crdy_t;
  wire [15:13]\hadd/hlfc_f0 ;
  wire hctl_ccmd_add;
  wire hctl_ccmd_add0;
  wire hctl_ccmd_add1;
  wire hctl_ccmd_add_reg_0;
  wire hctl_ccmd_add_reg_1;
  wire hctl_ccmd_add_reg_10;
  wire hctl_ccmd_add_reg_11;
  wire [6:0]hctl_ccmd_add_reg_12;
  wire hctl_ccmd_add_reg_13;
  wire [3:0]hctl_ccmd_add_reg_14;
  wire [3:0]hctl_ccmd_add_reg_15;
  wire [0:0]hctl_ccmd_add_reg_16;
  wire hctl_ccmd_add_reg_17;
  wire hctl_ccmd_add_reg_2;
  wire hctl_ccmd_add_reg_3;
  wire hctl_ccmd_add_reg_4;
  wire hctl_ccmd_add_reg_5;
  wire hctl_ccmd_add_reg_6;
  wire hctl_ccmd_add_reg_7;
  wire hctl_ccmd_add_reg_8;
  wire [1:0]hctl_ccmd_add_reg_9;
  wire hctl_ccmd_cmp;
  wire hctl_ccmd_div;
  wire hctl_ccmd_div_i_1_n_0;
  wire hctl_ccmd_div_reg_0;
  wire hctl_ccmd_div_reg_1;
  wire hctl_ccmd_hlf;
  wire hctl_ccmd_hlf_reg_0;
  wire hctl_ccmd_int;
  wire hctl_ccmd_int0;
  wire hctl_ccmd_mul;
  wire hctl_ccmd_mul_reg_0;
  wire hctl_ccmd_mul_reg_1;
  wire hctl_ccmd_reg;
  wire hctl_ccmd_reg0;
  wire hctl_ccmd_reg60_in;
  wire hctl_ccmd_reg_reg_0;
  wire hctl_ccmd_sub;
  wire hctl_ccmd_sub0;
  wire hctl_load_b;
  wire hctl_load_c;
  wire [13:0]hfpu_dsp_c;
  wire \hlfa_e_reg[0] ;
  wire \hlfa_e_reg[1] ;
  wire \hlfa_e_reg[2] ;
  wire [0:0]\hlfa_e_reg[2]_0 ;
  wire [0:0]\hlfa_e_reg[2]_1 ;
  wire \hlfa_e_reg[3] ;
  wire \hlfa_e_reg[4] ;
  wire \hlfa_e_reg[5] ;
  wire \hlfa_e_reg[5]_0 ;
  wire [1:0]\hlfa_f[15]_i_4 ;
  wire [0:0]\hlfa_f[15]_i_4_0 ;
  wire \hlfa_f_reg[0] ;
  wire [15:0]\hlfa_f_reg[15] ;
  wire \hlfa_f_reg[2] ;
  wire \hlfa_f_reg[2]_0 ;
  wire \hlfa_f_reg[2]_1 ;
  wire \hlfa_f_reg[7] ;
  wire \hlfa_f_reg[7]_0 ;
  wire [21:0]hlfa_r_0;
  wire \hlfb_e[4]_i_9_n_0 ;
  wire \hlfb_e_reg[1] ;
  wire \hlfb_e_reg[2] ;
  wire \hlfb_e_reg[4] ;
  wire \hlfb_e_reg[4]_0 ;
  wire [1:0]\hlfb_e_reg[4]_1 ;
  wire \hlfb_f[1]_i_3_n_0 ;
  wire \hlfb_f[2]_i_2_n_0 ;
  wire \hlfb_f[2]_i_3_n_0 ;
  wire \hlfb_f[3]_i_4_n_0 ;
  wire \hlfb_f[4]_i_3_n_0 ;
  wire \hlfb_f_reg[10] ;
  wire [12:0]\hlfb_f_reg[11] ;
  wire \hlfb_f_reg[12] ;
  wire \hlfb_f_reg[1] ;
  wire \hlfb_f_reg[1]_0 ;
  wire \hlfb_f_reg[2] ;
  wire \hlfb_f_reg[2]_0 ;
  wire \hlfb_f_reg[3] ;
  wire \hlfb_f_reg[4] ;
  wire [3:0]\hlfb_f_reg[4]_0 ;
  wire [0:0]\hlfb_f_reg[4]_1 ;
  wire \hlfb_f_reg[5] ;
  wire \hlfb_f_reg[6] ;
  wire \hlfb_f_reg[7] ;
  wire \hlfb_f_reg[8] ;
  wire \hlfb_f_reg[9] ;
  wire \hlfb_i_reg[15] ;
  wire [0:0]hlfb_r;
  wire [3:0]hlfc_e;
  wire \hlfc_e[3]_i_7 ;
  wire \hlfc_e[3]_i_7_0 ;
  wire \hlfc_e[5]_i_4 ;
  wire \hlfc_f[15]_i_4_n_0 ;
  wire \hlfc_f_reg[0] ;
  wire \hlfc_f_reg[0]_0 ;
  wire \hlfc_f_reg[11] ;
  wire \hlfc_f_reg[11]_0 ;
  wire [3:0]\hlfc_f_reg[11]_1 ;
  wire [1:0]\hlfc_f_reg[11]_2 ;
  wire [0:0]\hlfc_f_reg[12] ;
  wire \hlfc_f_reg[14] ;
  wire \hlfc_f_reg[15] ;
  wire \hlfc_f_reg[15]_0 ;
  wire \hlfc_f_reg[1] ;
  wire \hlfc_f_reg[1]_0 ;
  wire \hlfc_f_reg[2] ;
  wire \hlfc_f_reg[2]_0 ;
  wire \hlfc_f_reg[2]_1 ;
  wire \hlfc_f_reg[3] ;
  wire \hlfc_f_reg[3]_0 ;
  wire \hlfc_f_reg[3]_1 ;
  wire \hlfc_f_reg[4] ;
  wire \hlfc_f_reg[4]_0 ;
  wire \hlfc_f_reg[4]_1 ;
  wire \hlfc_f_reg[5] ;
  wire \hlfc_f_reg[5]_0 ;
  wire \hlfc_f_reg[6] ;
  wire \hlfc_f_reg[6]_0 ;
  wire \hlfc_f_reg[6]_1 ;
  wire \hlfc_f_reg[9] ;
  wire \hlfc_f_reg[9]_0 ;
  wire \hlfc_f_reg[9]_1 ;
  wire [0:0]hlfc_f_t_carry__2;
  wire \hlfc_i_reg[23] ;
  wire \hlfc_i_reg[25] ;
  wire \hlfc_i_reg[25]_0 ;
  wire \hlfc_i_reg[25]_1 ;
  wire \hlfc_i_reg[25]_2 ;
  wire [4:0]hlfc_r_hmul;
  wire [14:0]p_0_in1_in;
  wire [0:0]p_16_in;
  wire p_1_in;
  wire [12:0]rem0;
  wire rst_n;
  wire [11:0]rst_n_0;
  wire rst_n_1;
  wire rst_n_2;
  wire [3:3]stat;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_4_n_0 ;
  wire \stat[0]_i_5_n_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[2]_i_3_n_0 ;
  wire \stat[2]_i_7_n_0 ;
  wire \stat[3]_i_3_n_0 ;
  wire \stat[3]_i_4_n_0 ;
  wire \stat[3]_i_5_n_0 ;
  wire \stat[3]_i_6_n_0 ;
  wire [3:0]stat_nx;
  wire [0:0]\stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;
  wire \stat_reg[1]_2 ;
  wire \stat_reg[1]_3 ;
  wire [2:0]\stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_2 ;
  wire \stat_reg[2]_3 ;
  wire \stat_reg[2]_4 ;
  wire \stat_reg[2]_5 ;
  wire [0:0]\stat_reg[2]_6 ;
  wire \stat_reg[2]_7 ;
  wire [0:0]\stat_reg[2]_8 ;
  wire \stat_reg[3]_0 ;
  wire [0:0]\stat_reg[3]_1 ;
  wire [0:0]\stat_reg[3]_2 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cbus[0]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(hctl_ccmd_int),
        .I2(\cbus[0]_INST_0_i_2_n_0 ),
        .I3(crdy_INST_0_i_1_n_0),
        .O(cbus[0]));
  LUT6 #(
    .INIT(64'hFFFFF1110000F111)) 
    \cbus[0]_INST_0_i_2 
       (.I0(\hlfc_f_reg[0]_0 ),
        .I1(hctl_ccmd_div_reg_0),
        .I2(hfpu_dsp_c[0]),
        .I3(hctl_ccmd_mul),
        .I4(hctl_ccmd_add),
        .I5(O),
        .O(\cbus[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000FE0E)) 
    \cbus[10]_INST_0 
       (.I0(cbus_10_sn_1),
        .I1(\cbus[10]_INST_0_i_2_n_0 ),
        .I2(hctl_ccmd_int),
        .I3(hctl_ccmd_add_reg_5),
        .I4(crdy_INST_0_i_1_n_0),
        .O(cbus[10]));
  LUT6 #(
    .INIT(64'h0000000000F2F2F2)) 
    \cbus[10]_INST_0_i_2 
       (.I0(hctl_ccmd_add_reg_6),
        .I1(p_16_in),
        .I2(hctl_ccmd_hlf_reg_0),
        .I3(hctl_ccmd_hlf),
        .I4(\cbus[10]_0 ),
        .I5(\hlfc_i_reg[23] ),
        .O(\cbus[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888BB8BBBBBBBBB)) 
    \cbus[10]_INST_0_i_3 
       (.I0(\cbus[10]_1 ),
        .I1(hctl_ccmd_add),
        .I2(\cbus[10]_2 ),
        .I3(\cbus[10]_3 ),
        .I4(hctl_ccmd_div_reg_0),
        .I5(\cbus[10]_INST_0_i_8_n_0 ),
        .O(hctl_ccmd_add_reg_5));
  LUT4 #(
    .INIT(16'hFFBF)) 
    \cbus[10]_INST_0_i_7 
       (.I0(hctl_ccmd_div),
        .I1(\cbus[15]_INST_0_i_28 ),
        .I2(hctl_ccmd_reg),
        .I3(hctl_ccmd_mul),
        .O(hctl_ccmd_div_reg_0));
  LUT4 #(
    .INIT(16'h0F77)) 
    \cbus[10]_INST_0_i_8 
       (.I0(\cbus[12]_INST_0_i_2_0 [5]),
        .I1(hctl_ccmd_div),
        .I2(hfpu_dsp_c[10]),
        .I3(hctl_ccmd_mul),
        .O(\cbus[10]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cbus[11]_INST_0 
       (.I0(cbus_11_sn_1),
        .I1(hctl_ccmd_int),
        .I2(\cbus[11]_INST_0_i_2_n_0 ),
        .I3(crdy_INST_0_i_1_n_0),
        .O(cbus[11]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \cbus[11]_INST_0_i_10 
       (.I0(hlfa_r_0[16]),
        .I1(hctl_ccmd_add),
        .I2(hlfc_r_hmul[0]),
        .I3(hctl_ccmd_mul),
        .I4(hctl_ccmd_div),
        .I5(\hlfb_f_reg[4]_0 [0]),
        .O(\hlfa_e_reg[0] ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \cbus[11]_INST_0_i_2 
       (.I0(\cbus[12] [4]),
        .I1(\hlfc_f_reg[11]_1 [3]),
        .I2(\hlfc_f_reg[11]_2 [1]),
        .I3(hctl_ccmd_add),
        .I4(\cbus[11]_INST_0_i_7_n_0 ),
        .O(\cbus[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF1FF111F111F111)) 
    \cbus[11]_INST_0_i_7 
       (.I0(\cbus[11]_INST_0_i_2_0 ),
        .I1(hctl_ccmd_div_reg_0),
        .I2(hctl_ccmd_mul),
        .I3(hfpu_dsp_c[11]),
        .I4(hctl_ccmd_div),
        .I5(\cbus[12]_INST_0_i_2_0 [6]),
        .O(\cbus[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \cbus[11]_INST_0_i_8 
       (.I0(hlfa_r_0[17]),
        .I1(hctl_ccmd_add),
        .I2(hlfc_r_hmul[1]),
        .I3(hctl_ccmd_mul),
        .I4(hctl_ccmd_div),
        .I5(hlfc_e[0]),
        .O(\hlfa_e_reg[1] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cbus[12]_INST_0 
       (.I0(\cbus[12]_INST_0_i_1_n_0 ),
        .I1(hctl_ccmd_int),
        .I2(hctl_ccmd_add_reg_7),
        .I3(crdy_INST_0_i_1_n_0),
        .O(cbus[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFF45544444)) 
    \cbus[12]_INST_0_i_1 
       (.I0(\cbus[12]_0 ),
        .I1(hctl_ccmd_hlf_reg_0),
        .I2(hctl_ccmd_add_reg_8),
        .I3(\cbus[12]_1 ),
        .I4(hctl_ccmd_add_reg_6),
        .I5(\cbus[12]_2 ),
        .O(\cbus[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \cbus[12]_INST_0_i_2 
       (.I0(\cbus[12] [5]),
        .I1(\hlfc_f_reg[11]_1 [3]),
        .I2(\hlfc_f_reg[11]_1 [0]),
        .I3(hctl_ccmd_add),
        .I4(\cbus[12]_INST_0_i_6_n_0 ),
        .O(hctl_ccmd_add_reg_7));
  LUT6 #(
    .INIT(64'hFF1FF111F111F111)) 
    \cbus[12]_INST_0_i_6 
       (.I0(\cbus[12]_INST_0_i_2_1 ),
        .I1(hctl_ccmd_div_reg_0),
        .I2(hctl_ccmd_mul),
        .I3(hfpu_dsp_c[12]),
        .I4(hctl_ccmd_div),
        .I5(\cbus[12]_INST_0_i_2_0 [7]),
        .O(\cbus[12]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cbus[12]_INST_0_i_7 
       (.I0(hctl_ccmd_reg),
        .I1(hctl_ccmd_cmp),
        .O(hctl_ccmd_reg_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_8 
       (.I0(\hlfc_f_reg[11]_1 [0]),
        .O(hlfc_f_t_carry__2));
  LUT6 #(
    .INIT(64'h00000000AAAAFFAE)) 
    \cbus[13]_INST_0 
       (.I0(\cbus[13]_INST_0_i_1_n_0 ),
        .I1(hctl_ccmd_add_reg_6),
        .I2(\cbus[13]_INST_0_i_3_n_0 ),
        .I3(hctl_ccmd_hlf_reg_0),
        .I4(cbus_13_sn_1),
        .I5(\cbus[13]_INST_0_i_5_n_0 ),
        .O(cbus[13]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAFBBB)) 
    \cbus[13]_INST_0_i_1 
       (.I0(hctl_ccmd_int),
        .I1(\cbus[13]_5 ),
        .I2(\cbus[13]_6 ),
        .I3(\cbus[13]_7 ),
        .I4(hctl_ccmd_reg),
        .I5(hctl_ccmd_cmp),
        .O(\cbus[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \cbus[13]_INST_0_i_10 
       (.I0(\cbus[13]_INST_0_i_16_n_0 ),
        .I1(\cbus[9]_INST_0_i_2_0 ),
        .I2(hfpu_dsp_c[9]),
        .I3(hfpu_dsp_c[2]),
        .I4(hfpu_dsp_c[0]),
        .I5(hfpu_dsp_c[4]),
        .O(\cbus[13]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[13]_INST_0_i_13 
       (.I0(\hlfc_f_reg[11]_1 [0]),
        .I1(\cbus[12] [5]),
        .I2(\hlfc_f_reg[11]_1 [1]),
        .I3(\hlfc_f_reg[11]_1 [3]),
        .I4(\hadd/hlfc_f0 [13]),
        .O(\cbus[13]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \cbus[13]_INST_0_i_16 
       (.I0(hfpu_dsp_c[11]),
        .I1(hfpu_dsp_c[8]),
        .I2(hctl_ccmd_mul),
        .I3(hfpu_dsp_c[6]),
        .I4(\cbus[13]_INST_0_i_10_0 ),
        .I5(hfpu_dsp_c[7]),
        .O(\cbus[13]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \cbus[13]_INST_0_i_19 
       (.I0(hctl_ccmd_add),
        .I1(hctl_ccmd_mul),
        .I2(hctl_ccmd_reg),
        .I3(\cbus[15]_INST_0_i_28 ),
        .I4(hctl_ccmd_div),
        .O(hctl_ccmd_add_reg_17));
  LUT6 #(
    .INIT(64'hFBFB0000FBFB00FF)) 
    \cbus[13]_INST_0_i_2 
       (.I0(\cbus[13]_4 ),
        .I1(\cbus[13]_INST_0_i_13_0 ),
        .I2(\cbus[6]_3 ),
        .I3(\cbus[6]_2 ),
        .I4(hctl_ccmd_add),
        .I5(\cbus[13]_INST_0_i_10_n_0 ),
        .O(hctl_ccmd_add_reg_6));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \cbus[13]_INST_0_i_20 
       (.I0(\hadd/hlfc_f0 [13]),
        .I1(\hlfc_f_reg[11]_1 [3]),
        .I2(\hlfc_f_reg[11]_1 [1]),
        .I3(hctl_ccmd_add),
        .I4(hctl_ccmd_mul),
        .I5(hfpu_dsp_c[13]),
        .O(hctl_ccmd_add_reg_13));
  LUT3 #(
    .INIT(8'h9A)) 
    \cbus[13]_INST_0_i_3 
       (.I0(\hlfa_e_reg[3] ),
        .I1(\cbus[12]_1 ),
        .I2(hctl_ccmd_add_reg_8),
        .O(\cbus[13]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \cbus[13]_INST_0_i_5 
       (.I0(crdy_INST_0_i_1_n_0),
        .I1(\cbus[13]_3 ),
        .I2(hctl_ccmd_int),
        .O(\cbus[13]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000347)) 
    \cbus[13]_INST_0_i_8 
       (.I0(\hadd/hlfc_f0 [14]),
        .I1(\hlfc_f_reg[11]_1 [3]),
        .I2(\hlfc_f_reg[11]_1 [2]),
        .I3(\hadd/hlfc_f0 [15]),
        .I4(\cbus[13]_INST_0_i_13_n_0 ),
        .O(\cbus[13]_INST_0_i_13_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAFFAE)) 
    \cbus[14]_INST_0 
       (.I0(\cbus[14]_INST_0_i_1_n_0 ),
        .I1(\cbus[14]_INST_0_i_2_n_0 ),
        .I2(\cbus[14]_INST_0_i_3_n_0 ),
        .I3(hctl_ccmd_hlf_reg_0),
        .I4(cbus_14_sn_1),
        .I5(\cbus[14]_INST_0_i_6_n_0 ),
        .O(cbus[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAFBBB)) 
    \cbus[14]_INST_0_i_1 
       (.I0(hctl_ccmd_int),
        .I1(\cbus[13]_5 ),
        .I2(\cbus[13]_7 ),
        .I3(\cbus[14]_0 ),
        .I4(hctl_ccmd_reg),
        .I5(hctl_ccmd_cmp),
        .O(\cbus[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h54FF5455)) 
    \cbus[14]_INST_0_i_10 
       (.I0(\cbus[14]_INST_0_i_25_n_0 ),
        .I1(\hlfc_e[5]_i_4 ),
        .I2(hctl_ccmd_div_reg_0),
        .I3(hlfa_r_0[20]),
        .I4(hctl_ccmd_add),
        .O(\hlfa_e_reg[4] ));
  LUT6 #(
    .INIT(64'h4544FFFF45444545)) 
    \cbus[14]_INST_0_i_11 
       (.I0(\cbus[14]_INST_0_i_27_n_0 ),
        .I1(hctl_ccmd_div_reg_0),
        .I2(\hlfc_e[3]_i_7 ),
        .I3(\hlfc_e[3]_i_7_0 ),
        .I4(hlfa_r_0[19]),
        .I5(hctl_ccmd_add),
        .O(\hlfa_e_reg[3] ));
  LUT6 #(
    .INIT(64'h00000000EFEEEFEF)) 
    \cbus[14]_INST_0_i_12 
       (.I0(hctl_ccmd_add),
        .I1(hctl_ccmd_div_reg_0),
        .I2(\hlfc_e[3]_i_7 ),
        .I3(\hlfc_e[3]_i_7_0 ),
        .I4(hlfa_r_0[18]),
        .I5(\cbus[14]_INST_0_i_30_n_0 ),
        .O(hctl_ccmd_add_reg_8));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \cbus[14]_INST_0_i_16 
       (.I0(\cbus[14]_INST_0_i_38_n_0 ),
        .I1(\cbus[14]_INST_0_i_39_n_0 ),
        .I2(hfpu_dsp_c[6]),
        .I3(hctl_ccmd_mul),
        .I4(hfpu_dsp_c[2]),
        .I5(hfpu_dsp_c[4]),
        .O(\cbus[14]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h2808082808282808)) 
    \cbus[14]_INST_0_i_17 
       (.I0(hctl_ccmd_add),
        .I1(\cbus[14]_INST_0_i_4_0 ),
        .I2(\cbus[14]_INST_0_i_4_1 ),
        .I3(\cbus[15]_INST_0_i_35 ),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(\cbus[14]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBABBBABBBABA)) 
    \cbus[14]_INST_0_i_19 
       (.I0(hctl_ccmd_add),
        .I1(hctl_ccmd_mul_reg_0),
        .I2(\cbus[14]_INST_0_i_4_2 ),
        .I3(\cbus[14]_INST_0_i_4_3 ),
        .I4(\cbus[14]_INST_0_i_4_1 ),
        .I5(\cbus[14]_INST_0_i_4_4 ),
        .O(\cbus[14]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hAA6A)) 
    \cbus[14]_INST_0_i_2 
       (.I0(\hlfa_e_reg[4] ),
        .I1(\hlfa_e_reg[3] ),
        .I2(hctl_ccmd_add_reg_8),
        .I3(\cbus[12]_1 ),
        .O(\cbus[14]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \cbus[14]_INST_0_i_22 
       (.I0(\cbus[15] [1]),
        .I1(hctl_ccmd_hlf),
        .I2(hctl_ccmd_reg),
        .O(\hlfc_i_reg[23] ));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \cbus[14]_INST_0_i_24 
       (.I0(\hlfc_f_reg[14] ),
        .I1(hctl_ccmd_add),
        .I2(\hadd/hlfc_f0 [14]),
        .I3(\hlfc_f_reg[11]_1 [3]),
        .I4(\hlfc_f_reg[11]_1 [2]),
        .O(\cbus[14]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF808)) 
    \cbus[14]_INST_0_i_25 
       (.I0(hctl_ccmd_div),
        .I1(hlfc_e[3]),
        .I2(hctl_ccmd_mul),
        .I3(hlfc_r_hmul[4]),
        .I4(hctl_ccmd_add),
        .O(\cbus[14]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF808)) 
    \cbus[14]_INST_0_i_27 
       (.I0(hctl_ccmd_div),
        .I1(hlfc_e[2]),
        .I2(hctl_ccmd_mul),
        .I3(hlfc_r_hmul[3]),
        .I4(hctl_ccmd_add),
        .O(\cbus[14]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \cbus[14]_INST_0_i_3 
       (.I0(\cbus[6]_0 ),
        .I1(hctl_ccmd_add),
        .I2(\cbus[6]_2 ),
        .I3(\cbus[14]_INST_0_i_16_n_0 ),
        .O(\cbus[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \cbus[14]_INST_0_i_30 
       (.I0(hlfa_r_0[18]),
        .I1(hctl_ccmd_add),
        .I2(hlfc_r_hmul[2]),
        .I3(hctl_ccmd_mul),
        .I4(hctl_ccmd_div),
        .I5(hlfc_e[1]),
        .O(\cbus[14]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cbus[14]_INST_0_i_38 
       (.I0(hfpu_dsp_c[7]),
        .I1(hfpu_dsp_c[1]),
        .I2(hfpu_dsp_c[10]),
        .I3(hfpu_dsp_c[5]),
        .I4(\cbus[13]_INST_0_i_10_0 ),
        .I5(hfpu_dsp_c[3]),
        .O(\cbus[14]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[14]_INST_0_i_39 
       (.I0(hfpu_dsp_c[8]),
        .I1(hfpu_dsp_c[11]),
        .I2(hfpu_dsp_c[0]),
        .I3(hfpu_dsp_c[9]),
        .O(\cbus[14]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4444FFF4)) 
    \cbus[14]_INST_0_i_4 
       (.I0(\cbus[14]_INST_0_i_17_n_0 ),
        .I1(\cbus[13]_0 ),
        .I2(\cbus[14]_INST_0_i_19_n_0 ),
        .I3(\cbus[13]_1 ),
        .I4(\cbus[13]_2 ),
        .I5(hctl_ccmd_hlf),
        .O(hctl_ccmd_hlf_reg_0));
  LUT3 #(
    .INIT(8'hBA)) 
    \cbus[14]_INST_0_i_6 
       (.I0(crdy_INST_0_i_1_n_0),
        .I1(\cbus[14]_INST_0_i_24_n_0 ),
        .I2(hctl_ccmd_int),
        .O(\cbus[14]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0000AAFE)) 
    \cbus[15]_INST_0 
       (.I0(\cbus[15]_INST_0_i_1_n_0 ),
        .I1(\cbus[15]_INST_0_i_2_n_0 ),
        .I2(D),
        .I3(\cbus[15]_INST_0_i_4_n_0 ),
        .I4(\cbus[15]_INST_0_i_5_n_0 ),
        .O(cbus[15]));
  LUT5 #(
    .INIT(32'hAAAAAAFE)) 
    \cbus[15]_INST_0_i_1 
       (.I0(hctl_ccmd_int),
        .I1(\cbus[15] [2]),
        .I2(\cbus[15] [0]),
        .I3(hctl_ccmd_reg),
        .I4(hctl_ccmd_cmp),
        .O(\cbus[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0001111)) 
    \cbus[15]_INST_0_i_12 
       (.I0(\hlfc_f_reg[15]_0 ),
        .I1(hctl_ccmd_div_reg_0),
        .I2(\hlfc_f_reg[11]_1 [3]),
        .I3(\hadd/hlfc_f0 [15]),
        .I4(hctl_ccmd_add),
        .O(\cbus[15]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBFBFBFBFBEA)) 
    \cbus[15]_INST_0_i_2 
       (.I0(hctl_ccmd_hlf),
        .I1(hctl_ccmd_add),
        .I2(\hlfc_i_reg[25] ),
        .I3(\hlfc_i_reg[25]_0 ),
        .I4(\hlfc_i_reg[25]_1 ),
        .I5(\cbus[15]_0 ),
        .O(\cbus[15]_INST_0_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[15]_INST_0_i_30 
       (.CI(CO),
        .CO({\cbus[15]_INST_0_i_30_n_2 ,\cbus[15]_INST_0_i_30_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\hadd/hlfc_f0 ),
        .S({\<const0> ,\cbus[15]_INST_0_i_39_n_0 ,\cbus[15]_INST_0_i_40_n_0 ,\cbus[15]_INST_0_i_41_n_0 }));
  LUT3 #(
    .INIT(8'hBF)) 
    \cbus[15]_INST_0_i_36 
       (.I0(hctl_ccmd_mul),
        .I1(hctl_ccmd_reg),
        .I2(\cbus[15]_INST_0_i_28 ),
        .O(hctl_ccmd_mul_reg_1));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[15]_INST_0_i_39 
       (.I0(\hlfc_f_reg[11]_1 [3]),
        .O(\cbus[15]_INST_0_i_39_n_0 ));
  LUT4 #(
    .INIT(16'hDF55)) 
    \cbus[15]_INST_0_i_4 
       (.I0(hctl_ccmd_reg),
        .I1(\cbus[15] [1]),
        .I2(\cbus[15] [0]),
        .I3(hctl_ccmd_hlf),
        .O(\cbus[15]_INST_0_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[15]_INST_0_i_40 
       (.I0(\hlfc_f_reg[11]_1 [2]),
        .O(\cbus[15]_INST_0_i_40_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[15]_INST_0_i_41 
       (.I0(\hlfc_f_reg[11]_1 [1]),
        .O(\cbus[15]_INST_0_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cbus[15]_INST_0_i_42 
       (.I0(hctl_ccmd_sub),
        .I1(\cbus[15]_INST_0_i_35 ),
        .O(hlfb_r));
  LUT3 #(
    .INIT(8'hBA)) 
    \cbus[15]_INST_0_i_5 
       (.I0(crdy_INST_0_i_1_n_0),
        .I1(\cbus[15]_INST_0_i_12_n_0 ),
        .I2(hctl_ccmd_int),
        .O(\cbus[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF8A88)) 
    \cbus[1]_INST_0 
       (.I0(cbus_1_sn_1),
        .I1(\cbus[1]_0 ),
        .I2(hctl_ccmd_add_reg_1),
        .I3(\cbus[1]_INST_0_i_3_n_0 ),
        .I4(hctl_ccmd_int),
        .I5(\cbus[1]_INST_0_i_4_n_0 ),
        .O(cbus[1]));
  LUT5 #(
    .INIT(32'h888BBBBB)) 
    \cbus[1]_INST_0_i_3 
       (.I0(\cbus[3]_1 ),
        .I1(hctl_ccmd_add),
        .I2(\hlfc_f_reg[3]_1 ),
        .I3(hctl_ccmd_div_reg_0),
        .I4(\cbus[3]_INST_0_i_7_n_0 ),
        .O(\cbus[1]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \cbus[1]_INST_0_i_4 
       (.I0(crdy_INST_0_i_1_n_0),
        .I1(hctl_ccmd_add_reg_11),
        .I2(hctl_ccmd_int),
        .O(\cbus[1]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD0D0D0DD)) 
    \cbus[1]_INST_0_i_6 
       (.I0(hctl_ccmd_add),
        .I1(\hlfc_f_reg[1] ),
        .I2(\cbus[1]_INST_0_i_7_n_0 ),
        .I3(hctl_ccmd_div_reg_0),
        .I4(\hlfc_f_reg[1]_0 ),
        .O(hctl_ccmd_add_reg_11));
  LUT5 #(
    .INIT(32'hFFFFF202)) 
    \cbus[1]_INST_0_i_7 
       (.I0(hctl_ccmd_div),
        .I1(rem0[12]),
        .I2(hctl_ccmd_mul),
        .I3(hfpu_dsp_c[1]),
        .I4(hctl_ccmd_add),
        .O(\cbus[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF8A88)) 
    \cbus[2]_INST_0 
       (.I0(cbus_2_sn_1),
        .I1(\cbus[2]_0 ),
        .I2(hctl_ccmd_add_reg_1),
        .I3(\cbus[4]_INST_0_i_4_n_0 ),
        .I4(hctl_ccmd_int),
        .I5(\cbus[2]_INST_0_i_3_n_0 ),
        .O(cbus[2]));
  LUT3 #(
    .INIT(8'hEA)) 
    \cbus[2]_INST_0_i_3 
       (.I0(crdy_INST_0_i_1_n_0),
        .I1(hctl_ccmd_add_reg_10),
        .I2(hctl_ccmd_int),
        .O(\cbus[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEFFFE)) 
    \cbus[2]_INST_0_i_4 
       (.I0(hctl_ccmd_add),
        .I1(hctl_ccmd_div_reg_0),
        .I2(\hlfc_f_reg[2] ),
        .I3(\hlfc_f_reg[2]_0 ),
        .I4(\hlfc_f_reg[2]_1 ),
        .I5(\cbus[2]_INST_0_i_7_n_0 ),
        .O(hctl_ccmd_add_reg_10));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \cbus[2]_INST_0_i_7 
       (.I0(\cbus[2]_INST_0_i_4_0 ),
        .I1(hctl_ccmd_add),
        .I2(hfpu_dsp_c[2]),
        .I3(hctl_ccmd_mul),
        .I4(hctl_ccmd_div),
        .I5(\cbus[2]_INST_0_i_4_1 ),
        .O(\cbus[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF8A88)) 
    \cbus[3]_INST_0 
       (.I0(cbus_3_sn_1),
        .I1(\cbus[3]_0 ),
        .I2(hctl_ccmd_add_reg_1),
        .I3(\cbus[3]_INST_0_i_3_n_0 ),
        .I4(hctl_ccmd_int),
        .I5(\cbus[3]_INST_0_i_4_n_0 ),
        .O(cbus[3]));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB8FF)) 
    \cbus[3]_INST_0_i_3 
       (.I0(\cbus[12] [1]),
        .I1(\hlfc_f_reg[11]_1 [3]),
        .I2(\cbus[7]_1 [1]),
        .I3(hctl_ccmd_add),
        .I4(\cbus[5]_1 ),
        .I5(\cbus[5]_INST_0_i_6_n_0 ),
        .O(\cbus[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBABABAAAAAAAAA)) 
    \cbus[3]_INST_0_i_4 
       (.I0(crdy_INST_0_i_1_n_0),
        .I1(\cbus[3]_1 ),
        .I2(hctl_ccmd_add),
        .I3(\cbus[3]_2 ),
        .I4(\cbus[3]_INST_0_i_7_n_0 ),
        .I5(hctl_ccmd_int),
        .O(\cbus[3]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0FDD)) 
    \cbus[3]_INST_0_i_7 
       (.I0(hctl_ccmd_div),
        .I1(\cbus[3]_INST_0_i_4_0 ),
        .I2(hfpu_dsp_c[3]),
        .I3(hctl_ccmd_mul),
        .O(\cbus[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF070007)) 
    \cbus[4]_INST_0 
       (.I0(cbus_4_sn_1),
        .I1(\cbus[4]_INST_0_i_2_n_0 ),
        .I2(\cbus[4]_INST_0_i_3_n_0 ),
        .I3(hctl_ccmd_int),
        .I4(\cbus[4]_INST_0_i_4_n_0 ),
        .I5(crdy_INST_0_i_1_n_0),
        .O(cbus[4]));
  LUT4 #(
    .INIT(16'h4555)) 
    \cbus[4]_INST_0_i_2 
       (.I0(hctl_ccmd_reg),
        .I1(\hlfc_i_reg[25] ),
        .I2(hctl_ccmd_cmp),
        .I3(\cbus[6]_0 ),
        .O(\cbus[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D0D000D0D0D0)) 
    \cbus[4]_INST_0_i_3 
       (.I0(hctl_ccmd_add_reg_3),
        .I1(hctl_ccmd_add_reg_1),
        .I2(hctl_ccmd_reg),
        .I3(Q[0]),
        .I4(hctl_ccmd_hlf),
        .I5(\cbus[15] [1]),
        .O(\cbus[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB8FF)) 
    \cbus[4]_INST_0_i_4 
       (.I0(\cbus[12] [0]),
        .I1(\hlfc_f_reg[11]_1 [3]),
        .I2(\cbus[7]_1 [0]),
        .I3(hctl_ccmd_add),
        .I4(\hlfc_f_reg[4]_1 ),
        .I5(\cbus[4]_INST_0_i_7_n_0 ),
        .O(\cbus[4]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0FDD)) 
    \cbus[4]_INST_0_i_7 
       (.I0(hctl_ccmd_div),
        .I1(\cbus[4]_INST_0_i_4_0 ),
        .I2(hfpu_dsp_c[4]),
        .I3(hctl_ccmd_mul),
        .O(\cbus[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00AE)) 
    \cbus[5]_INST_0 
       (.I0(cbus_5_sn_1),
        .I1(hctl_ccmd_add_reg_2),
        .I2(hctl_ccmd_add_reg_1),
        .I3(\cbus[5]_INST_0_i_2_n_0 ),
        .I4(hctl_ccmd_int),
        .I5(\cbus[5]_INST_0_i_3_n_0 ),
        .O(cbus[5]));
  LUT5 #(
    .INIT(32'h00007707)) 
    \cbus[5]_INST_0_i_2 
       (.I0(\hlfc_i_reg[25] ),
        .I1(hctl_ccmd_cmp),
        .I2(Q[1]),
        .I3(\cbus[7]_0 ),
        .I4(hctl_ccmd_reg),
        .O(\cbus[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFBABABAAAAAAAAA)) 
    \cbus[5]_INST_0_i_3 
       (.I0(crdy_INST_0_i_1_n_0),
        .I1(\cbus[5]_0 ),
        .I2(hctl_ccmd_add),
        .I3(\cbus[5]_1 ),
        .I4(\cbus[5]_INST_0_i_6_n_0 ),
        .I5(hctl_ccmd_int),
        .O(\cbus[5]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0F77)) 
    \cbus[5]_INST_0_i_6 
       (.I0(\cbus[12]_INST_0_i_2_0 [0]),
        .I1(hctl_ccmd_div),
        .I2(hfpu_dsp_c[5]),
        .I3(hctl_ccmd_mul),
        .O(\cbus[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00AE)) 
    \cbus[6]_INST_0 
       (.I0(cbus_6_sn_1),
        .I1(hctl_ccmd_add_reg_0),
        .I2(hctl_ccmd_add_reg_1),
        .I3(\cbus[6]_INST_0_i_2_n_0 ),
        .I4(hctl_ccmd_int),
        .I5(\cbus[6]_INST_0_i_3_n_0 ),
        .O(cbus[6]));
  LUT5 #(
    .INIT(32'h000000F7)) 
    \cbus[6]_INST_0_i_2 
       (.I0(\cbus[6]_0 ),
        .I1(hctl_ccmd_cmp),
        .I2(\hlfc_i_reg[25] ),
        .I3(hctl_ccmd_reg),
        .I4(\cbus[6]_1 ),
        .O(\cbus[6]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \cbus[6]_INST_0_i_3 
       (.I0(crdy_INST_0_i_1_n_0),
        .I1(hctl_ccmd_add_reg_3),
        .I2(hctl_ccmd_int),
        .O(\cbus[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABABABABAAAAAAAB)) 
    \cbus[6]_INST_0_i_5 
       (.I0(\cbus[6]_INST_0_i_7_n_0 ),
        .I1(hctl_ccmd_add),
        .I2(hctl_ccmd_div_reg_0),
        .I3(\hlfc_f_reg[6] ),
        .I4(\hlfc_f_reg[6]_0 ),
        .I5(\hlfc_f_reg[6]_1 ),
        .O(hctl_ccmd_add_reg_3));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \cbus[6]_INST_0_i_7 
       (.I0(\cbus[6]_INST_0_i_5_0 ),
        .I1(hctl_ccmd_add),
        .I2(hfpu_dsp_c[6]),
        .I3(hctl_ccmd_mul),
        .I4(hctl_ccmd_div),
        .I5(\cbus[12]_INST_0_i_2_0 [1]),
        .O(\cbus[6]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0000F202)) 
    \cbus[7]_INST_0 
       (.I0(\cbus[7]_INST_0_i_1_n_0 ),
        .I1(\cbus[7]_INST_0_i_2_n_0 ),
        .I2(hctl_ccmd_int),
        .I3(hctl_ccmd_add_reg_2),
        .I4(crdy_INST_0_i_1_n_0),
        .O(cbus[7]));
  LUT6 #(
    .INIT(64'h4F4F4F4FFF4F4F4F)) 
    \cbus[7]_INST_0_i_1 
       (.I0(hctl_ccmd_add_reg_1),
        .I1(hctl_ccmd_add_reg_4),
        .I2(hctl_ccmd_reg),
        .I3(Q[2]),
        .I4(hctl_ccmd_hlf),
        .I5(\cbus[15] [1]),
        .O(\cbus[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007707)) 
    \cbus[7]_INST_0_i_2 
       (.I0(cbus_7_sn_1),
        .I1(hctl_ccmd_cmp),
        .I2(Q[2]),
        .I3(\cbus[7]_0 ),
        .I4(hctl_ccmd_reg),
        .O(\cbus[7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000DFD5)) 
    \cbus[7]_INST_0_i_3 
       (.I0(hctl_ccmd_add),
        .I1(\cbus[12] [2]),
        .I2(\hlfc_f_reg[11]_1 [3]),
        .I3(\cbus[7]_1 [2]),
        .I4(\cbus[7]_2 ),
        .O(hctl_ccmd_add_reg_2));
  LUT5 #(
    .INIT(32'hFFFFF808)) 
    \cbus[7]_INST_0_i_8 
       (.I0(hctl_ccmd_div),
        .I1(\cbus[12]_INST_0_i_2_0 [2]),
        .I2(hctl_ccmd_mul),
        .I3(hfpu_dsp_c[7]),
        .I4(hctl_ccmd_add),
        .O(hctl_ccmd_div_reg_1));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cbus[8]_INST_0 
       (.I0(cbus_8_sn_1),
        .I1(hctl_ccmd_int),
        .I2(hctl_ccmd_add_reg_0),
        .I3(crdy_INST_0_i_1_n_0),
        .O(cbus[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \cbus[8]_INST_0_i_2 
       (.I0(\cbus[12] [3]),
        .I1(\hlfc_f_reg[11]_1 [3]),
        .I2(\hlfc_f_reg[11]_2 [0]),
        .I3(hctl_ccmd_add),
        .I4(\cbus[8]_INST_0_i_5_n_0 ),
        .O(hctl_ccmd_add_reg_0));
  LUT6 #(
    .INIT(64'hFF1FF111F111F111)) 
    \cbus[8]_INST_0_i_5 
       (.I0(\cbus[8]_INST_0_i_2_0 ),
        .I1(hctl_ccmd_div_reg_0),
        .I2(hctl_ccmd_mul),
        .I3(hfpu_dsp_c[8]),
        .I4(hctl_ccmd_div),
        .I5(\cbus[12]_INST_0_i_2_0 [3]),
        .O(\cbus[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00AE)) 
    \cbus[9]_INST_0 
       (.I0(\cbus[9]_INST_0_i_1_n_0 ),
        .I1(\cbus[11]_INST_0_i_2_n_0 ),
        .I2(hctl_ccmd_add_reg_1),
        .I3(cbus_9_sn_1),
        .I4(hctl_ccmd_int),
        .I5(\cbus[9]_INST_0_i_4_n_0 ),
        .O(cbus[9]));
  LUT5 #(
    .INIT(32'h4F00FFFF)) 
    \cbus[9]_INST_0_i_1 
       (.I0(\cbus[15] [1]),
        .I1(Q[3]),
        .I2(hctl_ccmd_hlf),
        .I3(\cbus[15]_INST_0_i_2_n_0 ),
        .I4(hctl_ccmd_reg),
        .O(\cbus[9]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0F77)) 
    \cbus[9]_INST_0_i_13 
       (.I0(\cbus[12]_INST_0_i_2_0 [4]),
        .I1(hctl_ccmd_div),
        .I2(hfpu_dsp_c[9]),
        .I3(hctl_ccmd_mul),
        .O(\cbus[9]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFAEFFFEAFAEAFAE)) 
    \cbus[9]_INST_0_i_2 
       (.I0(hctl_ccmd_hlf_reg_0),
        .I1(\cbus[13]_INST_0_i_10_n_0 ),
        .I2(hctl_ccmd_add),
        .I3(\cbus[6]_2 ),
        .I4(\cbus[6]_3 ),
        .I5(\cbus[9]_INST_0_i_9 ),
        .O(hctl_ccmd_add_reg_1));
  LUT3 #(
    .INIT(8'hBA)) 
    \cbus[9]_INST_0_i_4 
       (.I0(crdy_INST_0_i_1_n_0),
        .I1(hctl_ccmd_add_reg_4),
        .I2(hctl_ccmd_int),
        .O(\cbus[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000015)) 
    \cbus[9]_INST_0_i_5 
       (.I0(\cbus[13]_INST_0_i_13_n_0 ),
        .I1(\hadd/hlfc_f0 [15]),
        .I2(\hlfc_f_reg[11]_1 [3]),
        .I3(\cbus[9]_INST_0_i_8_n_0 ),
        .I4(\cbus[15]_INST_0_i_10 ),
        .I5(\cbus[15]_INST_0_i_10_0 ),
        .O(\cbus[9]_INST_0_i_9 ));
  LUT6 #(
    .INIT(64'h8888BB8BBBBBBBBB)) 
    \cbus[9]_INST_0_i_7 
       (.I0(\hlfc_f_reg[9] ),
        .I1(hctl_ccmd_add),
        .I2(\hlfc_f_reg[9]_0 ),
        .I3(\hlfc_f_reg[9]_1 ),
        .I4(hctl_ccmd_div_reg_0),
        .I5(\cbus[9]_INST_0_i_13_n_0 ),
        .O(hctl_ccmd_add_reg_4));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[9]_INST_0_i_8 
       (.I0(\hadd/hlfc_f0 [14]),
        .I1(\hlfc_f_reg[11]_1 [3]),
        .I2(\hlfc_f_reg[11]_1 [2]),
        .O(\cbus[9]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    crdy_INST_0
       (.I0(crdy_f),
        .I1(crdy_INST_0_i_1_n_0),
        .O(E));
  LUT5 #(
    .INIT(32'h6E77FFFF)) 
    crdy_INST_0_i_1
       (.I0(\stat_reg[2]_0 [0]),
        .I1(\stat_reg[2]_0 [2]),
        .I2(crdy_f_reg_0),
        .I3(stat),
        .I4(\stat_reg[2]_0 [1]),
        .O(crdy_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hF788FFFFF7880000)) 
    crdy_f_i_1
       (.I0(\stat_reg[2]_0 [0]),
        .I1(\stat_reg[2]_0 [2]),
        .I2(crdy_f_reg_0),
        .I3(stat),
        .I4(\stat_reg[2]_0 [1]),
        .I5(crdy_f_i_2_n_0),
        .O(crdy_t));
  LUT5 #(
    .INIT(32'hFFA0000C)) 
    crdy_f_i_2
       (.I0(\stat_reg[1]_3 ),
        .I1(\hlfb_i_reg[15] ),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(stat),
        .O(crdy_f_i_2_n_0));
  FDSE crdy_f_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(crdy_t),
        .Q(crdy_f),
        .S(SR));
  LUT4 #(
    .INIT(16'h4000)) 
    \den[10]_i_1 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(\stat_reg[2]_0 [0]),
        .I2(\stat_reg[2]_0 [1]),
        .I3(hlfa_r_0[2]),
        .O(\hlfa_f_reg[15] [2]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \den[11]_i_1 
       (.I0(hlfa_r_0[3]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(rem0[0]),
        .O(\hlfa_f_reg[15] [3]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \den[12]_i_1 
       (.I0(hlfa_r_0[4]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(rem0[1]),
        .O(\hlfa_f_reg[15] [4]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \den[13]_i_1 
       (.I0(hlfa_r_0[5]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(rem0[2]),
        .O(\hlfa_f_reg[15] [5]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \den[14]_i_1 
       (.I0(hlfa_r_0[6]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(rem0[3]),
        .O(\hlfa_f_reg[15] [6]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \den[15]_i_1 
       (.I0(hlfa_r_0[7]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(rem0[4]),
        .O(\hlfa_f_reg[15] [7]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \den[16]_i_1 
       (.I0(hlfa_r_0[8]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(rem0[5]),
        .O(\hlfa_f_reg[15] [8]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \den[17]_i_1 
       (.I0(hlfa_r_0[9]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(rem0[6]),
        .O(\hlfa_f_reg[15] [9]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \den[18]_i_1 
       (.I0(hlfa_r_0[10]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(rem0[7]),
        .O(\hlfa_f_reg[15] [10]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \den[19]_i_1 
       (.I0(hlfa_r_0[11]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(rem0[8]),
        .O(\hlfa_f_reg[15] [11]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \den[20]_i_1 
       (.I0(hlfa_r_0[12]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(rem0[9]),
        .O(\hlfa_f_reg[15] [12]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \den[21]_i_1 
       (.I0(hlfa_r_0[13]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(rem0[10]),
        .O(\hlfa_f_reg[15] [13]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \den[22]_i_1 
       (.I0(hlfa_r_0[14]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(rem0[11]),
        .O(\hlfa_f_reg[15] [14]));
  LUT4 #(
    .INIT(16'h0078)) 
    \den[23]_i_1 
       (.I0(\stat_reg[2]_0 [0]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [2]),
        .I3(stat),
        .O(\stat_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \den[23]_i_2 
       (.I0(hlfa_r_0[15]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(rem0[12]),
        .O(\hlfa_f_reg[15] [15]));
  LUT4 #(
    .INIT(16'h2000)) 
    \den[8]_i_1 
       (.I0(hlfa_r_0[0]),
        .I1(\stat_reg[2]_0 [2]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [1]),
        .O(\hlfa_f_reg[15] [0]));
  LUT4 #(
    .INIT(16'h2000)) 
    \den[9]_i_1 
       (.I0(hlfa_r_0[1]),
        .I1(\stat_reg[2]_0 [2]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [1]),
        .O(\hlfa_f_reg[15] [1]));
  LUT4 #(
    .INIT(16'h0040)) 
    \dso[10]_i_1 
       (.I0(stat),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .O(\stat_reg[3]_1 ));
  LUT5 #(
    .INIT(32'h00840008)) 
    hctl_ccmd_add_i_1
       (.I0(ccmd[0]),
        .I1(ccmd[4]),
        .I2(ccmd[3]),
        .I3(ccmd[2]),
        .I4(ccmd[1]),
        .O(hctl_ccmd_add0));
  FDRE hctl_ccmd_add_reg
       (.C(clk),
        .CE(E),
        .D(hctl_ccmd_add0),
        .Q(hctl_ccmd_add),
        .R(SR));
  LUT5 #(
    .INIT(32'h40000000)) 
    hctl_ccmd_cmp_i_1
       (.I0(ccmd[2]),
        .I1(ccmd[3]),
        .I2(ccmd[1]),
        .I3(ccmd[4]),
        .I4(ccmd[0]),
        .O(hctl_ccmd_add1));
  FDRE hctl_ccmd_cmp_reg
       (.C(clk),
        .CE(E),
        .D(hctl_ccmd_add1),
        .Q(hctl_ccmd_cmp),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000200)) 
    hctl_ccmd_div_i_1
       (.I0(ccmd[4]),
        .I1(ccmd[0]),
        .I2(ccmd[1]),
        .I3(ccmd[2]),
        .I4(ccmd[3]),
        .O(hctl_ccmd_div_i_1_n_0));
  FDRE hctl_ccmd_div_reg
       (.C(clk),
        .CE(E),
        .D(hctl_ccmd_div_i_1_n_0),
        .Q(hctl_ccmd_div),
        .R(SR));
  LUT5 #(
    .INIT(32'h00400000)) 
    hctl_ccmd_hlf_i_1
       (.I0(ccmd[3]),
        .I1(ccmd[2]),
        .I2(ccmd[4]),
        .I3(ccmd[0]),
        .I4(ccmd[1]),
        .O(hctl_ccmd_reg60_in));
  FDRE hctl_ccmd_hlf_reg
       (.C(clk),
        .CE(E),
        .D(hctl_ccmd_reg60_in),
        .Q(hctl_ccmd_hlf),
        .R(SR));
  LUT5 #(
    .INIT(32'h00048000)) 
    hctl_ccmd_int_i_1
       (.I0(ccmd[0]),
        .I1(ccmd[4]),
        .I2(ccmd[1]),
        .I3(ccmd[2]),
        .I4(ccmd[3]),
        .O(hctl_ccmd_int0));
  FDRE hctl_ccmd_int_reg
       (.C(clk),
        .CE(E),
        .D(hctl_ccmd_int0),
        .Q(hctl_ccmd_int),
        .R(SR));
  LUT5 #(
    .INIT(32'h10000000)) 
    hctl_ccmd_mul_i_1
       (.I0(ccmd[3]),
        .I1(ccmd[2]),
        .I2(ccmd[1]),
        .I3(ccmd[4]),
        .I4(ccmd[0]),
        .O(p_1_in));
  FDRE hctl_ccmd_mul_reg
       (.C(clk),
        .CE(E),
        .D(p_1_in),
        .Q(hctl_ccmd_mul),
        .R(SR));
  LUT5 #(
    .INIT(32'h044CC800)) 
    hctl_ccmd_reg_i_1
       (.I0(ccmd[0]),
        .I1(ccmd[4]),
        .I2(ccmd[1]),
        .I3(ccmd[2]),
        .I4(ccmd[3]),
        .O(hctl_ccmd_reg0));
  FDRE hctl_ccmd_reg_reg
       (.C(clk),
        .CE(E),
        .D(hctl_ccmd_reg0),
        .Q(hctl_ccmd_reg),
        .R(SR));
  LUT5 #(
    .INIT(32'h00800020)) 
    hctl_ccmd_sub_i_1
       (.I0(ccmd[1]),
        .I1(ccmd[0]),
        .I2(ccmd[4]),
        .I3(ccmd[2]),
        .I4(ccmd[3]),
        .O(hctl_ccmd_sub0));
  FDRE hctl_ccmd_sub_reg
       (.C(clk),
        .CE(E),
        .D(hctl_ccmd_sub0),
        .Q(hctl_ccmd_sub),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFF9500)) 
    \hlfa_e[2]_i_4 
       (.I0(abus[4]),
        .I1(abus[2]),
        .I2(abus[3]),
        .I3(hctl_load_b),
        .I4(\hlfa_e_reg[2] ),
        .O(\abus[12] ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \hlfa_e[3]_i_7 
       (.I0(hctl_load_b),
        .I1(abus[4]),
        .I2(abus[2]),
        .I3(abus[3]),
        .I4(abus[5]),
        .O(\abus[12]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \hlfa_e[4]_i_10 
       (.I0(\stat_reg[2]_4 ),
        .I1(\hlfa_e_reg[2]_0 ),
        .O(\stat_reg[2]_3 ));
  LUT6 #(
    .INIT(64'h800000002AAAAAAA)) 
    \hlfa_e[4]_i_9 
       (.I0(hctl_load_b),
        .I1(abus[3]),
        .I2(abus[2]),
        .I3(abus[4]),
        .I4(abus[5]),
        .I5(abus[6]),
        .O(\abus[11]_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \hlfa_e[5]_i_1 
       (.I0(hctl_load_b),
        .I1(\hlfa_f[15]_i_4 [0]),
        .I2(\stat_reg[3]_0 ),
        .I3(\hlfa_e_reg[5] ),
        .O(\stat_reg[2]_6 ));
  LUT6 #(
    .INIT(64'h000000002AAAAAAA)) 
    \hlfa_e[5]_i_16 
       (.I0(hctl_load_b),
        .I1(abus[3]),
        .I2(abus[2]),
        .I3(abus[4]),
        .I4(abus[5]),
        .I5(abus[6]),
        .O(\abus[11] ));
  LUT4 #(
    .INIT(16'h4445)) 
    \hlfa_e[5]_i_3 
       (.I0(hctl_load_b),
        .I1(\stat_reg[2]_4 ),
        .I2(\hlfa_e_reg[2]_1 ),
        .I3(\hlfa_e_reg[2]_0 ),
        .O(\stat_reg[2]_5 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \hlfa_f[0]_i_3 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(\stat_reg[2]_0 [0]),
        .I2(\stat_reg[2]_0 [1]),
        .I3(\hlfa_f_reg[0] ),
        .O(\stat_reg[2]_4 ));
  LUT2 #(
    .INIT(4'hB)) 
    \hlfa_f[12]_i_5 
       (.I0(\hlfa_f_reg[2]_1 ),
        .I1(hctl_load_b),
        .O(\abus[13] ));
  LUT4 #(
    .INIT(16'h888A)) 
    \hlfa_f[15]_i_10 
       (.I0(\stat_reg[2]_4 ),
        .I1(\stat_reg[3]_0 ),
        .I2(\hlfa_f[15]_i_4_0 ),
        .I3(\hlfa_f[15]_i_4 [1]),
        .O(\stat_reg[2]_7 ));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \hlfa_f[15]_i_3 
       (.I0(\hlfa_e_reg[5]_0 ),
        .I1(stat),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(\stat_reg[2]_0 [1]),
        .O(\stat_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[15]_i_5 
       (.I0(rst_n),
        .I1(hctl_load_b),
        .O(rst_n_2));
  LUT6 #(
    .INIT(64'h44444444FF4F4444)) 
    \hlfa_f[2]_i_1 
       (.I0(\abus[13] ),
        .I1(abus[0]),
        .I2(\hlfa_f_reg[2] ),
        .I3(\hlfa_f_reg[2]_0 ),
        .I4(rst_n),
        .I5(hctl_load_b),
        .O(\abus[5] [0]));
  LUT6 #(
    .INIT(64'h44444444FF4F4444)) 
    \hlfa_f[7]_i_1 
       (.I0(\abus[13] ),
        .I1(abus[1]),
        .I2(\hlfa_f_reg[7] ),
        .I3(\hlfa_f_reg[7]_0 ),
        .I4(rst_n),
        .I5(hctl_load_b),
        .O(\abus[5] [1]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \hlfa_i[15]_i_1 
       (.I0(\hlfb_i_reg[15] ),
        .I1(\stat_reg[2]_0 [2]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(stat),
        .I4(\stat_reg[2]_0 [1]),
        .O(hctl_load_b));
  LUT5 #(
    .INIT(32'h4FF44444)) 
    \hlfb_e[1]_i_3 
       (.I0(\hlfb_e_reg[1] ),
        .I1(\stat_reg[1]_2 ),
        .I2(bbus[10]),
        .I3(bbus[11]),
        .I4(hctl_load_b),
        .O(bbus_10_sn_1));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \hlfb_e[2]_i_3 
       (.I0(\hlfb_e_reg[2] ),
        .I1(\stat_reg[1]_2 ),
        .I2(bbus[12]),
        .I3(bbus[10]),
        .I4(bbus[11]),
        .I5(hctl_load_b),
        .O(bbus_12_sn_1));
  LUT5 #(
    .INIT(32'h00000800)) 
    \hlfb_e[2]_i_4 
       (.I0(\hlfb_f_reg[4]_0 [3]),
        .I1(\hlfb_f_reg[1]_0 ),
        .I2(\stat_reg[2]_0 [1]),
        .I3(\stat_reg[2]_0 [0]),
        .I4(\stat_reg[2]_0 [2]),
        .O(\stat_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \hlfb_e[3]_i_4 
       (.I0(hctl_load_b),
        .I1(bbus[10]),
        .I2(bbus[11]),
        .I3(bbus[12]),
        .I4(bbus[13]),
        .O(\bbus[10]_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \hlfb_e[4]_i_3 
       (.I0(\hlfb_f_reg[4]_0 [2]),
        .I1(\hlfb_f_reg[1]_0 ),
        .I2(\stat_reg[2]_0 [1]),
        .I3(\stat_reg[2]_0 [0]),
        .I4(\stat_reg[2]_0 [2]),
        .O(\stat_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hEEDDEEDDCCFCFCCC)) 
    \hlfb_e[4]_i_5 
       (.I0(\hlfb_e_reg[4]_0 ),
        .I1(\hlfb_e[4]_i_9_n_0 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\hlfb_e_reg[4]_1 [1]),
        .I4(\hlfb_e_reg[4]_1 [0]),
        .I5(\stat_reg[1]_2 ),
        .O(\hlfb_e_reg[4] ));
  LUT6 #(
    .INIT(64'h800000002AAAAAAA)) 
    \hlfb_e[4]_i_9 
       (.I0(hctl_load_b),
        .I1(bbus[12]),
        .I2(bbus[11]),
        .I3(bbus[10]),
        .I4(bbus[13]),
        .I5(bbus[14]),
        .O(\hlfb_e[4]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \hlfb_e[5]_i_4 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(\stat_reg[2]_0 [0]),
        .I2(\stat_reg[2]_0 [1]),
        .I3(\hlfb_f_reg[1]_0 ),
        .O(\stat_reg[2]_2 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \hlfb_e[5]_i_8 
       (.I0(\hlfb_f_reg[4]_1 ),
        .I1(\hlfb_f_reg[1]_0 ),
        .I2(\stat_reg[2]_0 [1]),
        .I3(\stat_reg[2]_0 [0]),
        .I4(\stat_reg[2]_0 [2]),
        .O(\stat_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h000000002AAAAAAA)) 
    \hlfb_e[5]_i_9 
       (.I0(hctl_load_b),
        .I1(bbus[12]),
        .I2(bbus[11]),
        .I3(bbus[10]),
        .I4(bbus[13]),
        .I5(bbus[14]),
        .O(\bbus[12]_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \hlfb_f[10]_i_1 
       (.I0(rst_n_0[11]),
        .I1(bbus[8]),
        .I2(\hlfb_f_reg[10] ),
        .I3(rst_n_1),
        .O(rst_n_0[9]));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \hlfb_f[11]_i_1 
       (.I0(rst_n_0[11]),
        .I1(bbus[9]),
        .I2(\hlfb_f_reg[11] [12]),
        .I3(\hlfb_f_reg[2]_0 ),
        .I4(rst_n_1),
        .O(rst_n_0[10]));
  LUT6 #(
    .INIT(64'hAAA8AAAA00000000)) 
    \hlfb_f[12]_i_2 
       (.I0(rst_n),
        .I1(bbus[13]),
        .I2(bbus[12]),
        .I3(bbus[14]),
        .I4(\hlfb_f_reg[12] ),
        .I5(hctl_load_b),
        .O(rst_n_0[11]));
  LUT5 #(
    .INIT(32'h44004404)) 
    \hlfb_f[12]_i_3 
       (.I0(hctl_load_b),
        .I1(rst_n),
        .I2(\hlfb_f_reg[4]_1 ),
        .I3(\stat_reg[2]_2 ),
        .I4(\hlfb_f_reg[4]_0 [3]),
        .O(rst_n_1));
  LUT6 #(
    .INIT(64'hEA00EAEA00000000)) 
    \hlfb_f[1]_i_1 
       (.I0(\hlfb_f_reg[1] ),
        .I1(\stat_reg[2]_1 ),
        .I2(\hlfb_f_reg[11] [3]),
        .I3(\hlfb_f_reg[11] [9]),
        .I4(\stat_reg[1]_0 ),
        .I5(\hlfb_f[1]_i_3_n_0 ),
        .O(rst_n_0[0]));
  LUT3 #(
    .INIT(8'h04)) 
    \hlfb_f[1]_i_3 
       (.I0(hctl_load_b),
        .I1(rst_n),
        .I2(\stat_reg[1]_2 ),
        .O(\hlfb_f[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA222AAAA)) 
    \hlfb_f[2]_i_1 
       (.I0(\hlfb_f[2]_i_2_n_0 ),
        .I1(\hlfb_f_reg[2] ),
        .I2(\hlfb_f_reg[2]_0 ),
        .I3(\hlfb_f_reg[11] [3]),
        .I4(\hlfb_f[2]_i_3_n_0 ),
        .O(rst_n_0[1]));
  LUT6 #(
    .INIT(64'h88888888FF8F8888)) 
    \hlfb_f[2]_i_2 
       (.I0(rst_n_0[11]),
        .I1(bbus[0]),
        .I2(\stat_reg[1]_0 ),
        .I3(\hlfb_f_reg[11] [10]),
        .I4(rst_n_2),
        .I5(\stat_reg[1]_2 ),
        .O(\hlfb_f[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \hlfb_f[2]_i_3 
       (.I0(\stat_reg[2]_1 ),
        .I1(\hlfb_f_reg[11] [4]),
        .I2(\stat_reg[1]_1 ),
        .I3(\hlfb_f_reg[11] [6]),
        .O(\hlfb_f[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFD5)) 
    \hlfb_f[3]_i_1 
       (.I0(\hlfb_f_reg[2] ),
        .I1(\stat_reg[2]_1 ),
        .I2(\hlfb_f_reg[11] [5]),
        .I3(\hlfb_f_reg[3] ),
        .I4(\hlfb_f[3]_i_4_n_0 ),
        .O(rst_n_0[2]));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \hlfb_f[3]_i_2 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(\stat_reg[2]_0 [0]),
        .I2(\stat_reg[2]_0 [1]),
        .I3(\hlfb_f_reg[1]_0 ),
        .I4(\hlfb_f_reg[4]_0 [1]),
        .I5(\hlfb_f_reg[4]_0 [2]),
        .O(\stat_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h7777777700707777)) 
    \hlfb_f[3]_i_4 
       (.I0(rst_n_0[11]),
        .I1(bbus[1]),
        .I2(\stat_reg[1]_0 ),
        .I3(\hlfb_f_reg[11] [11]),
        .I4(rst_n_2),
        .I5(\stat_reg[1]_2 ),
        .O(\hlfb_f[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBBB0000FBBBFBBB)) 
    \hlfb_f[4]_i_1 
       (.I0(\hlfb_f_reg[4] ),
        .I1(\hlfb_f_reg[2] ),
        .I2(\stat_reg[1]_1 ),
        .I3(\hlfb_f_reg[11] [8]),
        .I4(rst_n_1),
        .I5(\hlfb_f[4]_i_3_n_0 ),
        .O(rst_n_0[3]));
  LUT6 #(
    .INIT(64'h7777777777077777)) 
    \hlfb_f[4]_i_3 
       (.I0(rst_n_0[11]),
        .I1(bbus[2]),
        .I2(\hlfb_f_reg[11] [12]),
        .I3(hctl_load_b),
        .I4(rst_n),
        .I5(\stat_reg[1]_2 ),
        .O(\hlfb_f[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \hlfb_f[5]_i_1 
       (.I0(rst_n_0[11]),
        .I1(bbus[3]),
        .I2(\hlfb_f_reg[5] ),
        .I3(rst_n_1),
        .O(rst_n_0[4]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \hlfb_f[6]_i_1 
       (.I0(rst_n_0[11]),
        .I1(bbus[4]),
        .I2(\hlfb_f_reg[6] ),
        .I3(rst_n_1),
        .O(rst_n_0[5]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \hlfb_f[7]_i_1 
       (.I0(rst_n_0[11]),
        .I1(bbus[5]),
        .I2(\hlfb_f_reg[7] ),
        .I3(rst_n_1),
        .O(rst_n_0[6]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \hlfb_f[8]_i_1 
       (.I0(rst_n_0[11]),
        .I1(bbus[6]),
        .I2(\hlfb_f_reg[8] ),
        .I3(rst_n_1),
        .O(rst_n_0[7]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \hlfb_f[9]_i_1 
       (.I0(rst_n_0[11]),
        .I1(bbus[7]),
        .I2(\hlfb_f_reg[9] ),
        .I3(rst_n_1),
        .O(rst_n_0[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \hlfc_f[0]_i_1 
       (.I0(\cbus[0]_INST_0_i_2_n_0 ),
        .I1(hctl_load_c),
        .I2(\hlfc_f_reg[0] ),
        .O(hctl_ccmd_add_reg_12[0]));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \hlfc_f[11]_i_1 
       (.I0(\cbus[11]_INST_0_i_2_n_0 ),
        .I1(hctl_load_c),
        .I2(\hlfc_f_reg[11] ),
        .I3(\hlfc_f_reg[11]_0 ),
        .O(hctl_ccmd_add_reg_12[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfc_f[14]_i_1 
       (.I0(\cbus[14]_INST_0_i_24_n_0 ),
        .I1(hctl_load_c),
        .O(hctl_ccmd_add_reg_12[5]));
  LUT6 #(
    .INIT(64'h7000FFFF70000000)) 
    \hlfc_f[15]_i_1 
       (.I0(\hlfc_f_reg[15] ),
        .I1(Q[4]),
        .I2(\stat_reg[2]_0 [1]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(\hlfc_f[15]_i_4_n_0 ),
        .I5(\stat[3]_i_3_n_0 ),
        .O(\hlfc_f_reg[12] ));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfc_f[15]_i_2 
       (.I0(\cbus[15]_INST_0_i_12_n_0 ),
        .I1(hctl_load_c),
        .O(hctl_ccmd_add_reg_12[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfc_f[15]_i_4 
       (.I0(stat),
        .I1(\stat_reg[2]_0 [0]),
        .O(\hlfc_f[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \hlfc_f[3]_i_1 
       (.I0(\cbus[1]_INST_0_i_3_n_0 ),
        .I1(hctl_load_c),
        .I2(\hlfc_f_reg[3] ),
        .I3(\hlfc_f_reg[3]_0 ),
        .O(hctl_ccmd_add_reg_12[1]));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \hlfc_f[4]_i_1 
       (.I0(\cbus[4]_INST_0_i_4_n_0 ),
        .I1(hctl_load_c),
        .I2(\hlfc_f_reg[4] ),
        .I3(\hlfc_f_reg[4]_0 ),
        .O(hctl_ccmd_add_reg_12[2]));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \hlfc_f[5]_i_1 
       (.I0(\cbus[3]_INST_0_i_3_n_0 ),
        .I1(hctl_load_c),
        .I2(\hlfc_f_reg[5] ),
        .I3(\hlfc_f_reg[5]_0 ),
        .O(hctl_ccmd_add_reg_12[3]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__0_i_1
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[7]),
        .O(p_0_in1_in[7]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__0_i_2
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[6]),
        .O(p_0_in1_in[6]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__0_i_3
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[5]),
        .O(p_0_in1_in[5]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__0_i_4
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[4]),
        .O(p_0_in1_in[4]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__0_i_5
       (.I0(p_0_in1_in[7]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[11] [7]),
        .I3(\cbus[15]_INST_0_i_35 ),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(hctl_ccmd_add_reg_14[3]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__0_i_6
       (.I0(p_0_in1_in[6]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[11] [6]),
        .I3(\cbus[15]_INST_0_i_35 ),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(hctl_ccmd_add_reg_14[2]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__0_i_7
       (.I0(p_0_in1_in[5]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[11] [5]),
        .I3(\cbus[15]_INST_0_i_35 ),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(hctl_ccmd_add_reg_14[1]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__0_i_8
       (.I0(p_0_in1_in[4]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[11] [4]),
        .I3(\cbus[15]_INST_0_i_35 ),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(hctl_ccmd_add_reg_14[0]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__1_i_1
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[11]),
        .O(p_0_in1_in[11]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__1_i_2
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[10]),
        .O(p_0_in1_in[10]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__1_i_3
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[9]),
        .O(p_0_in1_in[9]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__1_i_4
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[8]),
        .O(p_0_in1_in[8]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__1_i_5
       (.I0(p_0_in1_in[11]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[11] [11]),
        .I3(\cbus[15]_INST_0_i_35 ),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(hctl_ccmd_add_reg_15[3]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__1_i_6
       (.I0(p_0_in1_in[10]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[11] [10]),
        .I3(\cbus[15]_INST_0_i_35 ),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(hctl_ccmd_add_reg_15[2]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__1_i_7
       (.I0(p_0_in1_in[9]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[11] [9]),
        .I3(\cbus[15]_INST_0_i_35 ),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(hctl_ccmd_add_reg_15[1]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__1_i_8
       (.I0(p_0_in1_in[8]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[11] [8]),
        .I3(\cbus[15]_INST_0_i_35 ),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(hctl_ccmd_add_reg_15[0]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__2_i_1
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[14]),
        .O(p_0_in1_in[14]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__2_i_2
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[13]),
        .O(p_0_in1_in[13]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__2_i_3
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[12]),
        .O(p_0_in1_in[12]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__2_i_7
       (.I0(p_0_in1_in[12]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[11] [12]),
        .I3(\cbus[15]_INST_0_i_35 ),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(hctl_ccmd_add_reg_16));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry_i_2
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[3]),
        .O(p_0_in1_in[3]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry_i_3
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[2]),
        .O(p_0_in1_in[2]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry_i_4
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[1]),
        .O(p_0_in1_in[1]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry_i_5
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[0]),
        .O(p_0_in1_in[0]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry_i_6
       (.I0(p_0_in1_in[3]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[11] [3]),
        .I3(\cbus[15]_INST_0_i_35 ),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry_i_7
       (.I0(p_0_in1_in[2]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[11] [2]),
        .I3(\cbus[15]_INST_0_i_35 ),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry_i_8
       (.I0(p_0_in1_in[1]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[11] [1]),
        .I3(\cbus[15]_INST_0_i_35 ),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry_i_9
       (.I0(p_0_in1_in[0]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[11] [0]),
        .I3(\cbus[15]_INST_0_i_35 ),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \hlfc_i[23]_i_1 
       (.I0(hctl_ccmd_add_reg_6),
        .O(hctl_ccmd_add_reg_9[0]));
  LUT5 #(
    .INIT(32'h001110AA)) 
    \hlfc_i[25]_i_1 
       (.I0(\stat_reg[2]_0 [1]),
        .I1(\stat_reg[2]_0 [2]),
        .I2(\stat_reg[1]_3 ),
        .I3(\stat_reg[2]_0 [0]),
        .I4(stat),
        .O(hctl_load_c));
  LUT6 #(
    .INIT(64'hFFFF0000FFF4FFF4)) 
    \hlfc_i[25]_i_2 
       (.I0(hctl_ccmd_mul_reg_0),
        .I1(\hlfc_i_reg[25]_2 ),
        .I2(\hlfc_i_reg[25]_1 ),
        .I3(\hlfc_i_reg[25]_0 ),
        .I4(\hlfc_i_reg[25] ),
        .I5(hctl_ccmd_add),
        .O(hctl_ccmd_add_reg_9[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \hlfc_i[25]_i_3 
       (.I0(hctl_ccmd_mul),
        .I1(hctl_ccmd_div),
        .O(hctl_ccmd_mul_reg_0));
  LUT5 #(
    .INIT(32'h0040FFFF)) 
    \hquo[7]_i_1 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(\stat_reg[2]_0 [0]),
        .I2(\stat_reg[2]_0 [1]),
        .I3(stat),
        .I4(rst_n),
        .O(\stat_reg[2]_8 ));
  LUT4 #(
    .INIT(16'h0444)) 
    \hquo[7]_i_2 
       (.I0(stat),
        .I1(\stat_reg[2]_0 [2]),
        .I2(\stat_reg[2]_0 [1]),
        .I3(\stat_reg[2]_0 [0]),
        .O(\stat_reg[3]_2 ));
  LUT6 #(
    .INIT(64'h5557777777575775)) 
    \stat[0]_i_2 
       (.I0(\stat[0]_i_4_n_0 ),
        .I1(\stat[0]_i_5_n_0 ),
        .I2(ccmd[1]),
        .I3(ccmd[0]),
        .I4(ccmd[2]),
        .I5(ccmd[3]),
        .O(\stat[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF5010F03)) 
    \stat[0]_i_3 
       (.I0(\stat_reg[1]_3 ),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [2]),
        .I3(\stat_reg[0]_1 ),
        .I4(stat),
        .O(\stat[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hC9)) 
    \stat[0]_i_4 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(stat),
        .I2(\stat_reg[2]_0 [1]),
        .O(\stat[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \stat[0]_i_5 
       (.I0(ccmd[4]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [2]),
        .O(\stat[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111000)) 
    \stat[1]_i_1 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[1]_3 ),
        .I3(\stat_reg[2]_0 [0]),
        .I4(\stat[1]_i_2_n_0 ),
        .I5(\stat[1]_i_3_n_0 ),
        .O(stat_nx[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF04480C80)) 
    \stat[1]_i_2 
       (.I0(ccmd[0]),
        .I1(ccmd[4]),
        .I2(ccmd[1]),
        .I3(ccmd[2]),
        .I4(ccmd[3]),
        .I5(stat),
        .O(\stat[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAABBEA)) 
    \stat[1]_i_3 
       (.I0(\stat[3]_i_6_n_0 ),
        .I1(\stat_reg[2]_0 [0]),
        .I2(\stat_reg[2]_0 [2]),
        .I3(\stat_reg[2]_0 [1]),
        .I4(stat),
        .O(\stat[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFB)) 
    \stat[2]_i_1 
       (.I0(\stat_reg[2]_0 [1]),
        .I1(\stat_reg[2]_0 [0]),
        .I2(\stat_reg[2]_0 [2]),
        .I3(\stat_reg[1]_3 ),
        .I4(\stat[2]_i_3_n_0 ),
        .O(stat_nx[2]));
  LUT6 #(
    .INIT(64'hCAFAFAF0F000000A)) 
    \stat[2]_i_3 
       (.I0(\stat[2]_i_7_n_0 ),
        .I1(crdy_f_reg_0),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(\stat_reg[2]_0 [1]),
        .I5(stat),
        .O(\stat[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF9B7FFFFFFFFFFFF)) 
    \stat[2]_i_7 
       (.I0(ccmd[2]),
        .I1(ccmd[3]),
        .I2(ccmd[1]),
        .I3(ccmd[0]),
        .I4(\stat[3]_i_5_n_0 ),
        .I5(ccmd[4]),
        .O(\stat[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAEAAA)) 
    \stat[3]_i_2 
       (.I0(\stat[3]_i_3_n_0 ),
        .I1(\stat[3]_i_4_n_0 ),
        .I2(ccmd[4]),
        .I3(\stat[3]_i_5_n_0 ),
        .I4(\stat_reg[2]_0 [0]),
        .I5(\stat[3]_i_6_n_0 ),
        .O(stat_nx[3]));
  LUT5 #(
    .INIT(32'h00330F20)) 
    \stat[3]_i_3 
       (.I0(\stat_reg[1]_3 ),
        .I1(\stat_reg[2]_0 [2]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [1]),
        .I4(stat),
        .O(\stat[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4042)) 
    \stat[3]_i_4 
       (.I0(ccmd[3]),
        .I1(ccmd[2]),
        .I2(ccmd[1]),
        .I3(ccmd[0]),
        .O(\stat[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[3]_i_5 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(\stat_reg[2]_0 [1]),
        .O(\stat[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \stat[3]_i_6 
       (.I0(\stat_reg[2]_0 [0]),
        .I1(stat),
        .I2(\stat_reg[0]_1 ),
        .O(\stat[3]_i_6_n_0 ));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[0]),
        .Q(\stat_reg[2]_0 [0]),
        .R(SR));
  MUXF7 \stat_reg[0]_i_1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(\stat[0]_i_3_n_0 ),
        .O(stat_nx[0]),
        .S(\stat_reg[2]_0 [0]));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[1]),
        .Q(\stat_reg[2]_0 [1]),
        .R(SR));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[2]),
        .Q(\stat_reg[2]_0 [2]),
        .R(SR));
  FDRE \stat_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[3]),
        .Q(stat),
        .R(SR));
endmodule

module hfpu_hadd
   (O,
    hctl_ccmd_add_reg,
    hctl_ccmd_add_reg_0,
    hctl_ccmd_add_reg_1,
    \cbus[12]_INST_0_i_11_0 ,
    CO,
    hlfc_f_t_carry_0,
    \cbus[13]_INST_0_i_12_0 ,
    hlfc_f_t_carry_1,
    \cbus[13]_INST_0_i_15_0 ,
    hlfc_f_t_carry__0_0,
    hlfc_f_t_carry__0_1,
    hlfc_f_t_carry_2,
    hlfc_f_t_carry_3,
    \cbus[8]_INST_0_i_4_0 ,
    hlfc_f_t_carry__1_0,
    \cbus[12]_INST_0_i_5_0 ,
    hlfc_f_t_carry__1_1,
    \cbus[0]_INST_0_i_2 ,
    p_0_in1_in,
    S,
    \cbus[4]_INST_0_i_4 ,
    \cbus[8]_INST_0_i_2 ,
    \cbus[12]_INST_0_i_8 ,
    \cbus[13]_INST_0_i_12_1 ,
    \cbus[14]_INST_0_i_3 );
  output [0:0]O;
  output [2:0]hctl_ccmd_add_reg;
  output [1:0]hctl_ccmd_add_reg_0;
  output [3:0]hctl_ccmd_add_reg_1;
  output [5:0]\cbus[12]_INST_0_i_11_0 ;
  output [0:0]CO;
  output hlfc_f_t_carry_0;
  output \cbus[13]_INST_0_i_12_0 ;
  output hlfc_f_t_carry_1;
  output \cbus[13]_INST_0_i_15_0 ;
  output hlfc_f_t_carry__0_0;
  output hlfc_f_t_carry__0_1;
  output hlfc_f_t_carry_2;
  output hlfc_f_t_carry_3;
  output \cbus[8]_INST_0_i_4_0 ;
  output hlfc_f_t_carry__1_0;
  output \cbus[12]_INST_0_i_5_0 ;
  output hlfc_f_t_carry__1_1;
  input \cbus[0]_INST_0_i_2 ;
  input [14:0]p_0_in1_in;
  input [3:0]S;
  input [3:0]\cbus[4]_INST_0_i_4 ;
  input [3:0]\cbus[8]_INST_0_i_2 ;
  input [3:0]\cbus[12]_INST_0_i_8 ;
  input [0:0]\cbus[13]_INST_0_i_12_1 ;
  input \cbus[14]_INST_0_i_3 ;

  wire \<const0> ;
  wire [0:0]CO;
  wire [0:0]O;
  wire [3:0]S;
  wire \cbus[0]_INST_0_i_2 ;
  wire \cbus[12]_INST_0_i_10_n_0 ;
  wire [5:0]\cbus[12]_INST_0_i_11_0 ;
  wire \cbus[12]_INST_0_i_11_n_0 ;
  wire \cbus[12]_INST_0_i_5_0 ;
  wire \cbus[12]_INST_0_i_5_n_1 ;
  wire \cbus[12]_INST_0_i_5_n_2 ;
  wire \cbus[12]_INST_0_i_5_n_3 ;
  wire [3:0]\cbus[12]_INST_0_i_8 ;
  wire \cbus[12]_INST_0_i_9_n_0 ;
  wire \cbus[13]_INST_0_i_12_0 ;
  wire [0:0]\cbus[13]_INST_0_i_12_1 ;
  wire \cbus[13]_INST_0_i_14_n_0 ;
  wire \cbus[13]_INST_0_i_15_0 ;
  wire \cbus[13]_INST_0_i_15_n_0 ;
  wire \cbus[14]_INST_0_i_3 ;
  wire \cbus[14]_INST_0_i_31_n_0 ;
  wire \cbus[14]_INST_0_i_32_n_0 ;
  wire \cbus[4]_INST_0_i_10_n_0 ;
  wire \cbus[4]_INST_0_i_11_n_0 ;
  wire \cbus[4]_INST_0_i_12_n_0 ;
  wire [3:0]\cbus[4]_INST_0_i_4 ;
  wire \cbus[4]_INST_0_i_5_n_0 ;
  wire \cbus[4]_INST_0_i_5_n_1 ;
  wire \cbus[4]_INST_0_i_5_n_2 ;
  wire \cbus[4]_INST_0_i_5_n_3 ;
  wire \cbus[4]_INST_0_i_8_n_0 ;
  wire \cbus[4]_INST_0_i_9_n_0 ;
  wire [3:0]\cbus[8]_INST_0_i_2 ;
  wire \cbus[8]_INST_0_i_4_0 ;
  wire \cbus[8]_INST_0_i_4_n_0 ;
  wire \cbus[8]_INST_0_i_4_n_1 ;
  wire \cbus[8]_INST_0_i_4_n_2 ;
  wire \cbus[8]_INST_0_i_4_n_3 ;
  wire \cbus[8]_INST_0_i_6_n_0 ;
  wire \cbus[8]_INST_0_i_7_n_0 ;
  wire \cbus[8]_INST_0_i_8_n_0 ;
  wire \cbus[8]_INST_0_i_9_n_0 ;
  wire [2:0]hctl_ccmd_add_reg;
  wire [1:0]hctl_ccmd_add_reg_0;
  wire [3:0]hctl_ccmd_add_reg_1;
  wire [10:1]hlfc_f0;
  wire hlfc_f_t_carry_0;
  wire hlfc_f_t_carry_1;
  wire hlfc_f_t_carry_2;
  wire hlfc_f_t_carry_3;
  wire hlfc_f_t_carry__0_0;
  wire hlfc_f_t_carry__0_1;
  wire hlfc_f_t_carry__0_n_0;
  wire hlfc_f_t_carry__0_n_1;
  wire hlfc_f_t_carry__0_n_2;
  wire hlfc_f_t_carry__0_n_3;
  wire hlfc_f_t_carry__0_n_5;
  wire hlfc_f_t_carry__1_0;
  wire hlfc_f_t_carry__1_1;
  wire hlfc_f_t_carry__1_n_0;
  wire hlfc_f_t_carry__1_n_1;
  wire hlfc_f_t_carry__1_n_2;
  wire hlfc_f_t_carry__1_n_3;
  wire hlfc_f_t_carry__1_n_5;
  wire hlfc_f_t_carry__1_n_6;
  wire hlfc_f_t_carry__2_n_1;
  wire hlfc_f_t_carry__2_n_2;
  wire hlfc_f_t_carry__2_n_3;
  wire hlfc_f_t_carry_n_0;
  wire hlfc_f_t_carry_n_1;
  wire hlfc_f_t_carry_n_2;
  wire hlfc_f_t_carry_n_3;
  wire hlfc_f_t_carry_n_4;
  wire hlfc_f_t_carry_n_5;
  wire hlfc_f_t_carry_n_6;
  wire [14:0]p_0_in1_in;

  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[10]_INST_0_i_4 
       (.I0(hlfc_f0[10]),
        .I1(hctl_ccmd_add_reg_1[3]),
        .I2(hlfc_f_t_carry__1_n_5),
        .O(hlfc_f_t_carry__1_1));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_10 
       (.I0(hlfc_f_t_carry__1_n_5),
        .O(\cbus[12]_INST_0_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_11 
       (.I0(hlfc_f_t_carry__1_n_6),
        .O(\cbus[12]_INST_0_i_11_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[12]_INST_0_i_5 
       (.CI(\cbus[8]_INST_0_i_4_n_0 ),
        .CO({CO,\cbus[12]_INST_0_i_5_n_1 ,\cbus[12]_INST_0_i_5_n_2 ,\cbus[12]_INST_0_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cbus[12]_INST_0_i_11_0 [5:4],hlfc_f0[10:9]}),
        .S({\cbus[13]_INST_0_i_12_1 ,\cbus[12]_INST_0_i_9_n_0 ,\cbus[12]_INST_0_i_10_n_0 ,\cbus[12]_INST_0_i_11_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_9 
       (.I0(hctl_ccmd_add_reg_0[1]),
        .O(\cbus[12]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[13]_INST_0_i_12 
       (.I0(hlfc_f_t_carry__1_n_6),
        .I1(hlfc_f0[9]),
        .I2(hctl_ccmd_add_reg_0[0]),
        .I3(hctl_ccmd_add_reg_1[3]),
        .I4(\cbus[12]_INST_0_i_11_0 [3]),
        .O(\cbus[8]_INST_0_i_4_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[13]_INST_0_i_14 
       (.I0(hlfc_f_t_carry__0_n_5),
        .I1(hlfc_f0[6]),
        .I2(hctl_ccmd_add_reg[2]),
        .I3(hctl_ccmd_add_reg_1[3]),
        .I4(\cbus[12]_INST_0_i_11_0 [2]),
        .O(\cbus[13]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[13]_INST_0_i_15 
       (.I0(hctl_ccmd_add_reg[0]),
        .I1(\cbus[12]_INST_0_i_11_0 [0]),
        .I2(hctl_ccmd_add_reg[1]),
        .I3(hctl_ccmd_add_reg_1[3]),
        .I4(\cbus[12]_INST_0_i_11_0 [1]),
        .O(\cbus[13]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \cbus[13]_INST_0_i_7 
       (.I0(hlfc_f0[10]),
        .I1(hctl_ccmd_add_reg_1[3]),
        .I2(hlfc_f_t_carry__1_n_5),
        .I3(\cbus[12]_INST_0_i_11_0 [4]),
        .I4(hctl_ccmd_add_reg_0[1]),
        .I5(\cbus[8]_INST_0_i_4_0 ),
        .O(\cbus[13]_INST_0_i_12_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cbus[13]_INST_0_i_9 
       (.I0(O),
        .I1(hlfc_f_t_carry_1),
        .I2(\cbus[14]_INST_0_i_32_n_0 ),
        .I3(\cbus[13]_INST_0_i_14_n_0 ),
        .I4(\cbus[13]_INST_0_i_15_n_0 ),
        .O(\cbus[13]_INST_0_i_15_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \cbus[14]_INST_0_i_14 
       (.I0(\cbus[13]_INST_0_i_12_0 ),
        .I1(\cbus[14]_INST_0_i_3 ),
        .I2(\cbus[14]_INST_0_i_31_n_0 ),
        .I3(\cbus[14]_INST_0_i_32_n_0 ),
        .I4(hlfc_f_t_carry_1),
        .I5(O),
        .O(hlfc_f_t_carry_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \cbus[14]_INST_0_i_31 
       (.I0(\cbus[12]_INST_0_i_11_0 [1]),
        .I1(hctl_ccmd_add_reg_1[3]),
        .I2(hctl_ccmd_add_reg[1]),
        .I3(\cbus[12]_INST_0_i_11_0 [0]),
        .I4(hctl_ccmd_add_reg[0]),
        .I5(\cbus[13]_INST_0_i_14_n_0 ),
        .O(\cbus[14]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[14]_INST_0_i_32 
       (.I0(hlfc_f_t_carry_n_4),
        .I1(hlfc_f0[3]),
        .I2(hlfc_f_t_carry_n_5),
        .I3(hctl_ccmd_add_reg_1[3]),
        .I4(hlfc_f0[2]),
        .O(\cbus[14]_INST_0_i_32_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[14]_INST_0_i_33 
       (.I0(hlfc_f0[1]),
        .I1(hctl_ccmd_add_reg_1[3]),
        .I2(hlfc_f_t_carry_n_6),
        .O(hlfc_f_t_carry_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[2]_INST_0_i_8 
       (.I0(hlfc_f0[2]),
        .I1(hctl_ccmd_add_reg_1[3]),
        .I2(hlfc_f_t_carry_n_5),
        .O(hlfc_f_t_carry_2));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[3]_INST_0_i_5 
       (.I0(hlfc_f0[3]),
        .I1(hctl_ccmd_add_reg_1[3]),
        .I2(hlfc_f_t_carry_n_4),
        .O(hlfc_f_t_carry_3));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[4]_INST_0_i_10 
       (.I0(hlfc_f_t_carry_n_4),
        .O(\cbus[4]_INST_0_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[4]_INST_0_i_11 
       (.I0(hlfc_f_t_carry_n_5),
        .O(\cbus[4]_INST_0_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[4]_INST_0_i_12 
       (.I0(hlfc_f_t_carry_n_6),
        .O(\cbus[4]_INST_0_i_12_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[4]_INST_0_i_5 
       (.CI(\<const0> ),
        .CO({\cbus[4]_INST_0_i_5_n_0 ,\cbus[4]_INST_0_i_5_n_1 ,\cbus[4]_INST_0_i_5_n_2 ,\cbus[4]_INST_0_i_5_n_3 }),
        .CYINIT(\cbus[4]_INST_0_i_8_n_0 ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cbus[12]_INST_0_i_11_0 [0],hlfc_f0[3:1]}),
        .S({\cbus[4]_INST_0_i_9_n_0 ,\cbus[4]_INST_0_i_10_n_0 ,\cbus[4]_INST_0_i_11_n_0 ,\cbus[4]_INST_0_i_12_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[4]_INST_0_i_8 
       (.I0(O),
        .O(\cbus[4]_INST_0_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[4]_INST_0_i_9 
       (.I0(hctl_ccmd_add_reg[0]),
        .O(\cbus[4]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[5]_INST_0_i_4 
       (.I0(\cbus[12]_INST_0_i_11_0 [1]),
        .I1(hctl_ccmd_add_reg_1[3]),
        .I2(hctl_ccmd_add_reg[1]),
        .O(hlfc_f_t_carry__0_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[6]_INST_0_i_10 
       (.I0(hlfc_f0[6]),
        .I1(hctl_ccmd_add_reg_1[3]),
        .I2(hlfc_f_t_carry__0_n_5),
        .O(hlfc_f_t_carry__0_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[8]_INST_0_i_4 
       (.CI(\cbus[4]_INST_0_i_5_n_0 ),
        .CO({\cbus[8]_INST_0_i_4_n_0 ,\cbus[8]_INST_0_i_4_n_1 ,\cbus[8]_INST_0_i_4_n_2 ,\cbus[8]_INST_0_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cbus[12]_INST_0_i_11_0 [3:2],hlfc_f0[6],\cbus[12]_INST_0_i_11_0 [1]}),
        .S({\cbus[8]_INST_0_i_6_n_0 ,\cbus[8]_INST_0_i_7_n_0 ,\cbus[8]_INST_0_i_8_n_0 ,\cbus[8]_INST_0_i_9_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[8]_INST_0_i_6 
       (.I0(hctl_ccmd_add_reg_0[0]),
        .O(\cbus[8]_INST_0_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[8]_INST_0_i_7 
       (.I0(hctl_ccmd_add_reg[2]),
        .O(\cbus[8]_INST_0_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[8]_INST_0_i_8 
       (.I0(hlfc_f_t_carry__0_n_5),
        .O(\cbus[8]_INST_0_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[8]_INST_0_i_9 
       (.I0(hctl_ccmd_add_reg[1]),
        .O(\cbus[8]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[9]_INST_0_i_10 
       (.I0(hlfc_f0[9]),
        .I1(hctl_ccmd_add_reg_1[3]),
        .I2(hlfc_f_t_carry__1_n_6),
        .O(hlfc_f_t_carry__1_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[9]_INST_0_i_9 
       (.I0(hctl_ccmd_add_reg_0[1]),
        .I1(\cbus[12]_INST_0_i_11_0 [4]),
        .I2(hlfc_f_t_carry__1_n_5),
        .I3(hctl_ccmd_add_reg_1[3]),
        .I4(hlfc_f0[10]),
        .O(\cbus[12]_INST_0_i_5_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfc_f_t_carry
       (.CI(\<const0> ),
        .CO({hlfc_f_t_carry_n_0,hlfc_f_t_carry_n_1,hlfc_f_t_carry_n_2,hlfc_f_t_carry_n_3}),
        .CYINIT(\cbus[0]_INST_0_i_2 ),
        .DI(p_0_in1_in[3:0]),
        .O({hlfc_f_t_carry_n_4,hlfc_f_t_carry_n_5,hlfc_f_t_carry_n_6,O}),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfc_f_t_carry__0
       (.CI(hlfc_f_t_carry_n_0),
        .CO({hlfc_f_t_carry__0_n_0,hlfc_f_t_carry__0_n_1,hlfc_f_t_carry__0_n_2,hlfc_f_t_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(p_0_in1_in[7:4]),
        .O({hctl_ccmd_add_reg[2],hlfc_f_t_carry__0_n_5,hctl_ccmd_add_reg[1:0]}),
        .S(\cbus[4]_INST_0_i_4 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfc_f_t_carry__1
       (.CI(hlfc_f_t_carry__0_n_0),
        .CO({hlfc_f_t_carry__1_n_0,hlfc_f_t_carry__1_n_1,hlfc_f_t_carry__1_n_2,hlfc_f_t_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(p_0_in1_in[11:8]),
        .O({hctl_ccmd_add_reg_0[1],hlfc_f_t_carry__1_n_5,hlfc_f_t_carry__1_n_6,hctl_ccmd_add_reg_0[0]}),
        .S(\cbus[8]_INST_0_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfc_f_t_carry__2
       (.CI(hlfc_f_t_carry__1_n_0),
        .CO({hlfc_f_t_carry__2_n_1,hlfc_f_t_carry__2_n_2,hlfc_f_t_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,p_0_in1_in[14:12]}),
        .O(hctl_ccmd_add_reg_1),
        .S(\cbus[12]_INST_0_i_8 ));
endmodule

module hfpu_hdiv
   (\den_reg[21]_0 ,
    rem2_carry__2_i_1,
    rem1_carry__2_i_1,
    rem0,
    SR,
    hctl_ccmd_div_reg,
    Q,
    rst_n,
    \cbus[13]_INST_0_i_2 ,
    \cbus[13]_INST_0_i_2_0 ,
    hctl_ccmd_div,
    hctl_ccmd_mul,
    E,
    D,
    clk,
    \hquo_reg[0]_0 ,
    \hquo_reg[7]_0 ,
    \dso_reg[10]_0 ,
    \dso_reg[10]_1 );
  output [0:0]\den_reg[21]_0 ;
  output [0:0]rem2_carry__2_i_1;
  output [0:0]rem1_carry__2_i_1;
  output [12:0]rem0;
  output [0:0]SR;
  output hctl_ccmd_div_reg;
  output [7:0]Q;
  input rst_n;
  input \cbus[13]_INST_0_i_2 ;
  input \cbus[13]_INST_0_i_2_0 ;
  input hctl_ccmd_div;
  input hctl_ccmd_mul;
  input [0:0]E;
  input [15:0]D;
  input clk;
  input [0:0]\hquo_reg[0]_0 ;
  input [0:0]\hquo_reg[7]_0 ;
  input [0:0]\dso_reg[10]_0 ;
  input [10:0]\dso_reg[10]_1 ;

  wire [15:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire \cbus[13]_INST_0_i_2 ;
  wire \cbus[13]_INST_0_i_2_0 ;
  wire \cbus[14]_INST_0_i_55_n_0 ;
  wire \cbus[14]_INST_0_i_56_n_0 ;
  wire clk;
  wire [23:8]den;
  wire [0:0]\den_reg[21]_0 ;
  wire [10:0]dso;
  wire [0:0]\dso_reg[10]_0 ;
  wire [10:0]\dso_reg[10]_1 ;
  wire fdiv_n_2;
  wire fdiv_n_3;
  wire hctl_ccmd_div;
  wire hctl_ccmd_div_reg;
  wire hctl_ccmd_mul;
  wire [0:0]\hquo_reg[0]_0 ;
  wire [0:0]\hquo_reg[7]_0 ;
  wire [0:0]p_1_in3_in;
  wire [0:0]quo_0;
  wire [12:0]rem0;
  wire [0:0]rem1_carry__2_i_1;
  wire [0:0]rem2_carry__2_i_1;
  wire rst_n;

  LUT2 #(
    .INIT(4'h1)) 
    \cbus[14]_INST_0_i_55 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\cbus[14]_INST_0_i_55_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cbus[14]_INST_0_i_56 
       (.I0(Q[4]),
        .I1(Q[6]),
        .O(\cbus[14]_INST_0_i_56_n_0 ));
  FDRE \den_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(den[10]),
        .R(SR));
  FDRE \den_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(den[11]),
        .R(SR));
  FDRE \den_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(den[12]),
        .R(SR));
  FDRE \den_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(den[13]),
        .R(SR));
  FDRE \den_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(den[14]),
        .R(SR));
  FDRE \den_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(den[15]),
        .R(SR));
  FDRE \den_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(den[16]),
        .R(SR));
  FDRE \den_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(den[17]),
        .R(SR));
  FDRE \den_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(den[18]),
        .R(SR));
  FDRE \den_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(den[19]),
        .R(SR));
  FDRE \den_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(den[20]),
        .R(SR));
  FDRE \den_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(den[21]),
        .R(SR));
  FDRE \den_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(den[22]),
        .R(SR));
  FDRE \den_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(den[23]),
        .R(SR));
  FDRE \den_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(den[8]),
        .R(SR));
  FDRE \den_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(den[9]),
        .R(SR));
  FDRE \dso_reg[0] 
       (.C(clk),
        .CE(\dso_reg[10]_0 ),
        .D(\dso_reg[10]_1 [0]),
        .Q(dso[0]),
        .R(SR));
  FDRE \dso_reg[10] 
       (.C(clk),
        .CE(\dso_reg[10]_0 ),
        .D(\dso_reg[10]_1 [10]),
        .Q(dso[10]),
        .R(SR));
  FDRE \dso_reg[1] 
       (.C(clk),
        .CE(\dso_reg[10]_0 ),
        .D(\dso_reg[10]_1 [1]),
        .Q(dso[1]),
        .R(SR));
  FDRE \dso_reg[2] 
       (.C(clk),
        .CE(\dso_reg[10]_0 ),
        .D(\dso_reg[10]_1 [2]),
        .Q(dso[2]),
        .R(SR));
  FDRE \dso_reg[3] 
       (.C(clk),
        .CE(\dso_reg[10]_0 ),
        .D(\dso_reg[10]_1 [3]),
        .Q(dso[3]),
        .R(SR));
  FDRE \dso_reg[4] 
       (.C(clk),
        .CE(\dso_reg[10]_0 ),
        .D(\dso_reg[10]_1 [4]),
        .Q(dso[4]),
        .R(SR));
  FDRE \dso_reg[5] 
       (.C(clk),
        .CE(\dso_reg[10]_0 ),
        .D(\dso_reg[10]_1 [5]),
        .Q(dso[5]),
        .R(SR));
  FDRE \dso_reg[6] 
       (.C(clk),
        .CE(\dso_reg[10]_0 ),
        .D(\dso_reg[10]_1 [6]),
        .Q(dso[6]),
        .R(SR));
  FDRE \dso_reg[7] 
       (.C(clk),
        .CE(\dso_reg[10]_0 ),
        .D(\dso_reg[10]_1 [7]),
        .Q(dso[7]),
        .R(SR));
  FDRE \dso_reg[8] 
       (.C(clk),
        .CE(\dso_reg[10]_0 ),
        .D(\dso_reg[10]_1 [8]),
        .Q(dso[8]),
        .R(SR));
  FDRE \dso_reg[9] 
       (.C(clk),
        .CE(\dso_reg[10]_0 ),
        .D(\dso_reg[10]_1 [9]),
        .Q(dso[9]),
        .R(SR));
  hfpu_fdiv fdiv
       (.D({p_1_in3_in,fdiv_n_2,fdiv_n_3,quo_0}),
        .O(\den_reg[21]_0 ),
        .Q(den),
        .\cbus[13]_INST_0_i_2 (\cbus[13]_INST_0_i_2 ),
        .\cbus[13]_INST_0_i_2_0 (\cbus[13]_INST_0_i_2_0 ),
        .\cbus[14]_INST_0_i_15_0 ({Q[7],Q[5],Q[1:0]}),
        .\cbus[14]_INST_0_i_15_1 (\cbus[14]_INST_0_i_55_n_0 ),
        .\cbus[14]_INST_0_i_15_2 (\cbus[14]_INST_0_i_56_n_0 ),
        .hctl_ccmd_div(hctl_ccmd_div),
        .hctl_ccmd_div_reg(hctl_ccmd_div_reg),
        .hctl_ccmd_mul(hctl_ccmd_mul),
        .rem0(rem0),
        .rem0_carry__1_0(dso),
        .rem1_carry__2_i_1_0(rem1_carry__2_i_1),
        .rem2_carry__2_i_1_0(rem2_carry__2_i_1));
  FDRE \hquo_reg[0] 
       (.C(clk),
        .CE(\hquo_reg[7]_0 ),
        .D(quo_0),
        .Q(Q[0]),
        .R(\hquo_reg[0]_0 ));
  FDRE \hquo_reg[1] 
       (.C(clk),
        .CE(\hquo_reg[7]_0 ),
        .D(fdiv_n_3),
        .Q(Q[1]),
        .R(\hquo_reg[0]_0 ));
  FDRE \hquo_reg[2] 
       (.C(clk),
        .CE(\hquo_reg[7]_0 ),
        .D(fdiv_n_2),
        .Q(Q[2]),
        .R(\hquo_reg[0]_0 ));
  FDRE \hquo_reg[3] 
       (.C(clk),
        .CE(\hquo_reg[7]_0 ),
        .D(p_1_in3_in),
        .Q(Q[3]),
        .R(\hquo_reg[0]_0 ));
  FDRE \hquo_reg[4] 
       (.C(clk),
        .CE(\hquo_reg[7]_0 ),
        .D(Q[0]),
        .Q(Q[4]),
        .R(\hquo_reg[0]_0 ));
  FDRE \hquo_reg[5] 
       (.C(clk),
        .CE(\hquo_reg[7]_0 ),
        .D(Q[1]),
        .Q(Q[5]),
        .R(\hquo_reg[0]_0 ));
  FDRE \hquo_reg[6] 
       (.C(clk),
        .CE(\hquo_reg[7]_0 ),
        .D(Q[2]),
        .Q(Q[6]),
        .R(\hquo_reg[0]_0 ));
  FDRE \hquo_reg[7] 
       (.C(clk),
        .CE(\hquo_reg[7]_0 ),
        .D(Q[3]),
        .Q(Q[7]),
        .R(\hquo_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \stat[3]_i_1 
       (.I0(rst_n),
        .O(SR));
endmodule

module hfpu_hlfa
   (\hlfa_e_reg[3]_0 ,
    \hlfa_e_reg[4]_0 ,
    \hlfa_e_reg[3]_1 ,
    hlfa_r_0,
    \hlfa_e_reg[4]_1 ,
    \hlfa_e_reg[3]_2 ,
    \hlfa_e_reg[4]_2 ,
    \hlfa_e_reg[4]_3 ,
    D,
    \hlfa_i_reg[15]_0 ,
    \hlfa_i_reg[11]_0 ,
    \hlfa_i_reg[4]_0 ,
    \ccmd_f_reg[4]_0 ,
    \hlfa_f_reg[11]_0 ,
    \hlfa_f_reg[10]_0 ,
    \hlfa_i_reg[11]_1 ,
    \hlfa_i_reg[11]_2 ,
    \hlfa_i_reg[7]_0 ,
    hctl_ccmd_mul_reg,
    \hlfa_i_reg[4]_1 ,
    \ccmd_f_reg[1]_0 ,
    \hlfa_i_reg[0]_0 ,
    \ccmd_f_reg[1]_1 ,
    \hlfa_i_reg[1]_0 ,
    p_16_in,
    hctl_ccmd_add_reg,
    \hlfa_f_reg[13]_0 ,
    \ccmd_f_reg[3]_0 ,
    \ccmd_f_reg[1]_2 ,
    \hlfa_f_reg[12]_0 ,
    \hlfa_e_reg[1]_0 ,
    \hlfa_i_reg[10]_0 ,
    \ccmd_f_reg[1]_3 ,
    \hlfa_f_reg[8]_0 ,
    \hlfa_f_reg[7]_0 ,
    \ccmd_f_reg[1]_4 ,
    \ccmd_f_reg[1]_5 ,
    \hlfa_f_reg[5]_0 ,
    hctl_ccmd_div_reg,
    \ccmd_f_reg[0]_0 ,
    \hlfa_f_reg[3]_0 ,
    \hlfa_i_reg[2]_0 ,
    \hlfa_f_reg[15]_0 ,
    \ccmd_f_reg[0]_1 ,
    \hlfb_f_reg[5] ,
    \hlfb_e_reg[0] ,
    \stat_reg[1] ,
    \hlfa_e_reg[4]_4 ,
    \hlfb_e_reg[3] ,
    \hlfa_e_reg[0]_0 ,
    E,
    \hlfb_e_reg[0]_0 ,
    hctl_ccmd_int_reg,
    \hlfa_e_reg[2]_0 ,
    \hlfa_f_reg[4]_0 ,
    \hlfa_f[15]_i_10 ,
    \hlfa_f_reg[9]_0 ,
    \hlfa_f_reg[3]_1 ,
    \hlfa_f_reg[1]_0 ,
    hctl_ccmd_int_reg_0,
    \hlfa_e_reg[4]_5 ,
    hlfa_e_dif0_carry__0_0,
    \hlfa_e_reg[5]_0 ,
    \hlfa_f_reg[9]_1 ,
    \hlfa_f_reg[6]_0 ,
    \hlfb_e_reg[3]_0 ,
    \hlfa_e_reg[0]_1 ,
    \hlfb_i_reg[14] ,
    \hlfa_i_reg[4]_2 ,
    \hlfa_i_reg[13]_0 ,
    hctl_ccmd_div_reg_0,
    hfpu_dsp_a,
    \hlfa_i_reg[15]_1 ,
    \hlfa_e_reg[3]_3 ,
    .ccmd_3_sp_1(ccmd_3_sn_1),
    .abus_13_sp_1(abus_13_sn_1),
    S,
    \hlfb_e_reg[1] ,
    \cbus[11]_INST_0_i_8 ,
    \cbus[14]_INST_0_i_25 ,
    hctl_ccmd_add,
    hctl_ccmd_mul,
    \hlfc_i_reg[22] ,
    \hlfc_i_reg[22]_0 ,
    hctl_ccmd_div,
    \hlfc_i_reg[22]_1 ,
    \hlfc_i_reg[22]_2 ,
    \hlfc_i_reg[22]_3 ,
    \hlfc_i_reg[24] ,
    hctl_ccmd_sub,
    Q,
    \hlfc_i_reg[24]_0 ,
    \hlfa_f_reg[7]_1 ,
    \hlfa_f_reg[0]_0 ,
    \hlfa_f_reg[0]_1 ,
    \hlfc_i_reg[24]_1 ,
    \cbus[14]_INST_0_i_4 ,
    \hlfc_i_reg[25] ,
    \hlfc_f_reg[13] ,
    \hlfc_f_reg[13]_0 ,
    \cbus[11]_INST_0_i_1 ,
    \cbus[10]_INST_0_i_2 ,
    \cbus[7]_INST_0_i_3 ,
    \hlfb_f_reg[1] ,
    \hlfb_f_reg[12] ,
    hlfa_e_dif0_carry__0_1,
    hctl_load_b,
    bbus,
    \hlfb_e_reg[3]_1 ,
    \hlfb_f_reg[12]_0 ,
    \hlfb_e_reg[0]_1 ,
    \hlfa_e_reg[2]_1 ,
    \hlfa_e_reg[2]_2 ,
    \hlfa_e_reg[3]_4 ,
    \hlfa_e_reg[4]_6 ,
    \hlfa_e_reg[4]_7 ,
    \hlfa_e_reg[5]_1 ,
    \hlfa_f_reg[4]_1 ,
    abus,
    \hlfa_f_reg[4]_2 ,
    rst_n,
    \hlfa_f_reg[15]_1 ,
    hctl_ccmd_int,
    hlfb_r,
    \hlfc_i_reg[25]_0 ,
    \cbus[15]_INST_0_i_2 ,
    \hlfc_i_reg[25]_1 ,
    \hlfc_i_reg[25]_2 ,
    \cbus[14]_INST_0_i_20_0 ,
    \cbus[14]_INST_0_i_20_1 ,
    \cbus[15]_INST_0_i_11_0 ,
    hctl_ccmd_reg,
    O,
    ccmd,
    \cbus[15]_INST_0_i_10_0 ,
    clk,
    SR,
    \ccmd_f_reg[4]_1 ,
    \hlfa_e_reg[5]_2 );
  output [0:0]\hlfa_e_reg[3]_0 ;
  output [0:0]\hlfa_e_reg[4]_0 ;
  output [1:0]\hlfa_e_reg[3]_1 ;
  output [22:0]hlfa_r_0;
  output [0:0]\hlfa_e_reg[4]_1 ;
  output [3:0]\hlfa_e_reg[3]_2 ;
  output [0:0]\hlfa_e_reg[4]_2 ;
  output [3:0]\hlfa_e_reg[4]_3 ;
  output [1:0]D;
  output \hlfa_i_reg[15]_0 ;
  output \hlfa_i_reg[11]_0 ;
  output \hlfa_i_reg[4]_0 ;
  output [0:0]\ccmd_f_reg[4]_0 ;
  output \hlfa_f_reg[11]_0 ;
  output \hlfa_f_reg[10]_0 ;
  output \hlfa_i_reg[11]_1 ;
  output \hlfa_i_reg[11]_2 ;
  output \hlfa_i_reg[7]_0 ;
  output hctl_ccmd_mul_reg;
  output \hlfa_i_reg[4]_1 ;
  output \ccmd_f_reg[1]_0 ;
  output \hlfa_i_reg[0]_0 ;
  output \ccmd_f_reg[1]_1 ;
  output \hlfa_i_reg[1]_0 ;
  output [2:0]p_16_in;
  output hctl_ccmd_add_reg;
  output \hlfa_f_reg[13]_0 ;
  output \ccmd_f_reg[3]_0 ;
  output \ccmd_f_reg[1]_2 ;
  output \hlfa_f_reg[12]_0 ;
  output \hlfa_e_reg[1]_0 ;
  output \hlfa_i_reg[10]_0 ;
  output \ccmd_f_reg[1]_3 ;
  output \hlfa_f_reg[8]_0 ;
  output \hlfa_f_reg[7]_0 ;
  output \ccmd_f_reg[1]_4 ;
  output \ccmd_f_reg[1]_5 ;
  output \hlfa_f_reg[5]_0 ;
  output hctl_ccmd_div_reg;
  output \ccmd_f_reg[0]_0 ;
  output \hlfa_f_reg[3]_0 ;
  output \hlfa_i_reg[2]_0 ;
  output \hlfa_f_reg[15]_0 ;
  output \ccmd_f_reg[0]_1 ;
  output \hlfb_f_reg[5] ;
  output [0:0]\hlfb_e_reg[0] ;
  output \stat_reg[1] ;
  output \hlfa_e_reg[4]_4 ;
  output \hlfb_e_reg[3] ;
  output \hlfa_e_reg[0]_0 ;
  output [0:0]E;
  output [0:0]\hlfb_e_reg[0]_0 ;
  output hctl_ccmd_int_reg;
  output \hlfa_e_reg[2]_0 ;
  output \hlfa_f_reg[4]_0 ;
  output \hlfa_f[15]_i_10 ;
  output \hlfa_f_reg[9]_0 ;
  output \hlfa_f_reg[3]_1 ;
  output \hlfa_f_reg[1]_0 ;
  output hctl_ccmd_int_reg_0;
  output \hlfa_e_reg[4]_5 ;
  output hlfa_e_dif0_carry__0_0;
  output [1:0]\hlfa_e_reg[5]_0 ;
  output \hlfa_f_reg[9]_1 ;
  output \hlfa_f_reg[6]_0 ;
  output \hlfb_e_reg[3]_0 ;
  output \hlfa_e_reg[0]_1 ;
  output \hlfb_i_reg[14] ;
  output \hlfa_i_reg[4]_2 ;
  output \hlfa_i_reg[13]_0 ;
  output hctl_ccmd_div_reg_0;
  output [10:0]hfpu_dsp_a;
  output [2:0]\hlfa_i_reg[15]_1 ;
  output [2:0]\hlfa_e_reg[3]_3 ;
  input [2:0]S;
  input [1:0]\hlfb_e_reg[1] ;
  input [2:0]\cbus[11]_INST_0_i_8 ;
  input [1:0]\cbus[14]_INST_0_i_25 ;
  input hctl_ccmd_add;
  input hctl_ccmd_mul;
  input \hlfc_i_reg[22] ;
  input \hlfc_i_reg[22]_0 ;
  input hctl_ccmd_div;
  input \hlfc_i_reg[22]_1 ;
  input \hlfc_i_reg[22]_2 ;
  input \hlfc_i_reg[22]_3 ;
  input \hlfc_i_reg[24] ;
  input hctl_ccmd_sub;
  input [0:0]Q;
  input \hlfc_i_reg[24]_0 ;
  input [1:0]\hlfa_f_reg[7]_1 ;
  input \hlfa_f_reg[0]_0 ;
  input \hlfa_f_reg[0]_1 ;
  input \hlfc_i_reg[24]_1 ;
  input \cbus[14]_INST_0_i_4 ;
  input \hlfc_i_reg[25] ;
  input \hlfc_f_reg[13] ;
  input \hlfc_f_reg[13]_0 ;
  input \cbus[11]_INST_0_i_1 ;
  input \cbus[10]_INST_0_i_2 ;
  input \cbus[7]_INST_0_i_3 ;
  input [1:0]\hlfb_f_reg[1] ;
  input \hlfb_f_reg[12] ;
  input [5:0]hlfa_e_dif0_carry__0_1;
  input hctl_load_b;
  input [0:0]bbus;
  input \hlfb_e_reg[3]_1 ;
  input \hlfb_f_reg[12]_0 ;
  input [2:0]\hlfb_e_reg[0]_1 ;
  input \hlfa_e_reg[2]_1 ;
  input \hlfa_e_reg[2]_2 ;
  input \hlfa_e_reg[3]_4 ;
  input \hlfa_e_reg[4]_6 ;
  input \hlfa_e_reg[4]_7 ;
  input \hlfa_e_reg[5]_1 ;
  input \hlfa_f_reg[4]_1 ;
  input [15:0]abus;
  input \hlfa_f_reg[4]_2 ;
  input rst_n;
  input \hlfa_f_reg[15]_1 ;
  input hctl_ccmd_int;
  input [0:0]hlfb_r;
  input \hlfc_i_reg[25]_0 ;
  input \cbus[15]_INST_0_i_2 ;
  input \hlfc_i_reg[25]_1 ;
  input \hlfc_i_reg[25]_2 ;
  input \cbus[14]_INST_0_i_20_0 ;
  input \cbus[14]_INST_0_i_20_1 ;
  input \cbus[15]_INST_0_i_11_0 ;
  input hctl_ccmd_reg;
  input [0:0]O;
  input [4:0]ccmd;
  input [0:0]\cbus[15]_INST_0_i_10_0 ;
  input clk;
  input [0:0]SR;
  input [0:0]\ccmd_f_reg[4]_1 ;
  input [0:0]\hlfa_e_reg[5]_2 ;
  output ccmd_3_sn_1;
  output abus_13_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]D;
  wire [0:0]E;
  wire [0:0]O;
  wire [0:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire [15:0]abus;
  wire abus_13_sn_1;
  wire [0:0]bbus;
  wire \cbus[0]_INST_0_i_4_n_0 ;
  wire \cbus[10]_INST_0_i_10_n_0 ;
  wire \cbus[10]_INST_0_i_11_n_0 ;
  wire \cbus[10]_INST_0_i_12_n_0 ;
  wire \cbus[10]_INST_0_i_13_n_0 ;
  wire \cbus[10]_INST_0_i_2 ;
  wire \cbus[10]_INST_0_i_9_n_0 ;
  wire \cbus[11]_INST_0_i_1 ;
  wire \cbus[11]_INST_0_i_12_n_0 ;
  wire \cbus[11]_INST_0_i_13_n_0 ;
  wire [2:0]\cbus[11]_INST_0_i_8 ;
  wire \cbus[11]_INST_0_i_9_n_0 ;
  wire \cbus[13]_INST_0_i_18_n_0 ;
  wire \cbus[14]_INST_0_i_20_0 ;
  wire \cbus[14]_INST_0_i_20_1 ;
  wire [1:0]\cbus[14]_INST_0_i_25 ;
  wire \cbus[14]_INST_0_i_4 ;
  wire \cbus[14]_INST_0_i_40_n_0 ;
  wire \cbus[14]_INST_0_i_41_n_0 ;
  wire \cbus[14]_INST_0_i_42_n_0 ;
  wire \cbus[14]_INST_0_i_45_n_0 ;
  wire \cbus[14]_INST_0_i_47_n_0 ;
  wire \cbus[14]_INST_0_i_49_n_3 ;
  wire \cbus[14]_INST_0_i_50_n_0 ;
  wire \cbus[14]_INST_0_i_50_n_1 ;
  wire \cbus[14]_INST_0_i_50_n_2 ;
  wire \cbus[14]_INST_0_i_50_n_3 ;
  wire \cbus[14]_INST_0_i_51_n_0 ;
  wire \cbus[14]_INST_0_i_52_n_0 ;
  wire \cbus[14]_INST_0_i_53_n_0 ;
  wire \cbus[14]_INST_0_i_54_n_0 ;
  wire \cbus[14]_INST_0_i_58_n_0 ;
  wire \cbus[14]_INST_0_i_64_n_0 ;
  wire \cbus[14]_INST_0_i_65_n_0 ;
  wire [0:0]\cbus[15]_INST_0_i_10_0 ;
  wire \cbus[15]_INST_0_i_11_0 ;
  wire \cbus[15]_INST_0_i_11_n_0 ;
  wire \cbus[15]_INST_0_i_2 ;
  wire \cbus[15]_INST_0_i_24_n_0 ;
  wire \cbus[15]_INST_0_i_25_n_0 ;
  wire \cbus[15]_INST_0_i_27_n_0 ;
  wire \cbus[15]_INST_0_i_28_n_0 ;
  wire \cbus[15]_INST_0_i_31_n_0 ;
  wire \cbus[15]_INST_0_i_33_n_0 ;
  wire \cbus[15]_INST_0_i_35_n_0 ;
  wire \cbus[15]_INST_0_i_37_n_0 ;
  wire \cbus[15]_INST_0_i_38_n_0 ;
  wire \cbus[3]_INST_0_i_11_n_0 ;
  wire \cbus[3]_INST_0_i_8_n_0 ;
  wire \cbus[3]_INST_0_i_9_n_0 ;
  wire \cbus[4]_INST_0_i_13_n_0 ;
  wire \cbus[4]_INST_0_i_14_n_0 ;
  wire \cbus[5]_INST_0_i_7_n_0 ;
  wire \cbus[5]_INST_0_i_8_n_0 ;
  wire \cbus[5]_INST_0_i_9_n_0 ;
  wire \cbus[6]_INST_0_i_11_n_0 ;
  wire \cbus[7]_INST_0_i_3 ;
  wire \cbus[7]_INST_0_i_6_n_0 ;
  wire \cbus[7]_INST_0_i_7_n_0 ;
  wire \cbus[7]_INST_0_i_9_n_0 ;
  wire \cbus[8]_INST_0_i_11_n_0 ;
  wire \cbus[8]_INST_0_i_12_n_0 ;
  wire \cbus[8]_INST_0_i_13_n_0 ;
  wire \cbus[9]_INST_0_i_14_n_0 ;
  wire [4:0]ccmd;
  wire ccmd_3_sn_1;
  wire [3:0]ccmd_f;
  wire \ccmd_f_reg[0]_0 ;
  wire \ccmd_f_reg[0]_1 ;
  wire \ccmd_f_reg[1]_0 ;
  wire \ccmd_f_reg[1]_1 ;
  wire \ccmd_f_reg[1]_2 ;
  wire \ccmd_f_reg[1]_3 ;
  wire \ccmd_f_reg[1]_4 ;
  wire \ccmd_f_reg[1]_5 ;
  wire \ccmd_f_reg[3]_0 ;
  wire [0:0]\ccmd_f_reg[4]_0 ;
  wire [0:0]\ccmd_f_reg[4]_1 ;
  wire clk;
  wire hctl_ccmd_add;
  wire hctl_ccmd_add_reg;
  wire hctl_ccmd_div;
  wire hctl_ccmd_div_reg;
  wire hctl_ccmd_div_reg_0;
  wire hctl_ccmd_int;
  wire hctl_ccmd_int_reg;
  wire hctl_ccmd_int_reg_0;
  wire hctl_ccmd_mul;
  wire hctl_ccmd_mul_reg;
  wire hctl_ccmd_reg;
  wire hctl_ccmd_sub;
  wire hctl_load_b;
  wire [5:5]\hdiv/hlfc_e ;
  wire [10:0]hfpu_dsp_a;
  wire \hlfa_e[0]_i_1_n_0 ;
  wire \hlfa_e[0]_i_2_n_0 ;
  wire \hlfa_e[0]_i_3_n_0 ;
  wire \hlfa_e[1]_i_1_n_0 ;
  wire \hlfa_e[1]_i_2_n_0 ;
  wire \hlfa_e[1]_i_3_n_0 ;
  wire \hlfa_e[1]_i_4_n_0 ;
  wire \hlfa_e[1]_i_5_n_0 ;
  wire \hlfa_e[1]_i_6_n_0 ;
  wire \hlfa_e[2]_i_1_n_0 ;
  wire \hlfa_e[2]_i_2_n_0 ;
  wire \hlfa_e[2]_i_3_n_0 ;
  wire \hlfa_e[2]_i_6_n_0 ;
  wire \hlfa_e[3]_i_1_n_0 ;
  wire \hlfa_e[3]_i_2_n_0 ;
  wire \hlfa_e[3]_i_3_n_0 ;
  wire \hlfa_e[3]_i_4_n_0 ;
  wire \hlfa_e[3]_i_5_n_0 ;
  wire \hlfa_e[3]_i_6_n_0 ;
  wire \hlfa_e[3]_i_8_n_0 ;
  wire \hlfa_e[4]_i_11_n_0 ;
  wire \hlfa_e[4]_i_1_n_0 ;
  wire \hlfa_e[4]_i_2_n_0 ;
  wire \hlfa_e[4]_i_3_n_0 ;
  wire \hlfa_e[4]_i_4_n_0 ;
  wire \hlfa_e[4]_i_5_n_0 ;
  wire \hlfa_e[4]_i_6_n_0 ;
  wire \hlfa_e[4]_i_7_n_0 ;
  wire \hlfa_e[4]_i_8_n_0 ;
  wire \hlfa_e[5]_i_10_n_0 ;
  wire \hlfa_e[5]_i_11_n_0 ;
  wire \hlfa_e[5]_i_12_n_0 ;
  wire \hlfa_e[5]_i_13_n_0 ;
  wire \hlfa_e[5]_i_14_n_0 ;
  wire \hlfa_e[5]_i_15_n_0 ;
  wire \hlfa_e[5]_i_2_n_0 ;
  wire \hlfa_e[5]_i_4_n_0 ;
  wire \hlfa_e[5]_i_5_n_0 ;
  wire \hlfa_e[5]_i_6_n_0 ;
  wire \hlfa_e[5]_i_7_n_0 ;
  wire \hlfa_e[5]_i_8_n_0 ;
  wire \hlfa_e[5]_i_9_n_0 ;
  wire hlfa_e_dif0_carry__0_0;
  wire [5:0]hlfa_e_dif0_carry__0_1;
  wire hlfa_e_dif0_carry__0_i_1_n_0;
  wire hlfa_e_dif0_carry__0_i_2_n_0;
  wire hlfa_e_dif0_carry__0_i_3_n_0;
  wire hlfa_e_dif0_carry__0_i_4_n_0;
  wire hlfa_e_dif0_carry__0_i_5_n_0;
  wire hlfa_e_dif0_carry__0_n_3;
  wire hlfa_e_dif0_carry__0_n_6;
  wire hlfa_e_dif0_carry_i_1_n_0;
  wire hlfa_e_dif0_carry_i_2_n_0;
  wire hlfa_e_dif0_carry_i_3_n_0;
  wire hlfa_e_dif0_carry_i_4_n_0;
  wire hlfa_e_dif0_carry_i_5_n_0;
  wire hlfa_e_dif0_carry_i_6_n_0;
  wire hlfa_e_dif0_carry_i_7_n_0;
  wire hlfa_e_dif0_carry_i_8_n_0;
  wire hlfa_e_dif0_carry_i_9_n_0;
  wire hlfa_e_dif0_carry_n_0;
  wire hlfa_e_dif0_carry_n_1;
  wire hlfa_e_dif0_carry_n_2;
  wire hlfa_e_dif0_carry_n_3;
  wire hlfa_e_dif0_carry_n_7;
  wire hlfa_e_difl0_carry__0_i_1_n_0;
  wire hlfa_e_difl0_carry__0_i_2_n_0;
  wire hlfa_e_difl0_carry__0_n_3;
  wire hlfa_e_difl0_carry__0_n_6;
  wire hlfa_e_difl0_carry_i_1_n_0;
  wire hlfa_e_difl0_carry_i_2_n_0;
  wire hlfa_e_difl0_carry_i_3_n_0;
  wire hlfa_e_difl0_carry_i_4_n_0;
  wire hlfa_e_difl0_carry_n_0;
  wire hlfa_e_difl0_carry_n_1;
  wire hlfa_e_difl0_carry_n_2;
  wire hlfa_e_difl0_carry_n_3;
  wire \hlfa_e_reg[0]_0 ;
  wire \hlfa_e_reg[0]_1 ;
  wire \hlfa_e_reg[1]_0 ;
  wire \hlfa_e_reg[2]_0 ;
  wire \hlfa_e_reg[2]_1 ;
  wire \hlfa_e_reg[2]_2 ;
  wire [0:0]\hlfa_e_reg[3]_0 ;
  wire [1:0]\hlfa_e_reg[3]_1 ;
  wire [3:0]\hlfa_e_reg[3]_2 ;
  wire [2:0]\hlfa_e_reg[3]_3 ;
  wire \hlfa_e_reg[3]_4 ;
  wire [0:0]\hlfa_e_reg[4]_0 ;
  wire [0:0]\hlfa_e_reg[4]_1 ;
  wire [0:0]\hlfa_e_reg[4]_2 ;
  wire [3:0]\hlfa_e_reg[4]_3 ;
  wire \hlfa_e_reg[4]_4 ;
  wire \hlfa_e_reg[4]_5 ;
  wire \hlfa_e_reg[4]_6 ;
  wire \hlfa_e_reg[4]_7 ;
  wire [1:0]\hlfa_e_reg[5]_0 ;
  wire \hlfa_e_reg[5]_1 ;
  wire [0:0]\hlfa_e_reg[5]_2 ;
  wire \hlfa_f[0]_i_10_n_0 ;
  wire \hlfa_f[0]_i_2_n_0 ;
  wire \hlfa_f[0]_i_4_n_0 ;
  wire \hlfa_f[0]_i_5_n_0 ;
  wire \hlfa_f[0]_i_6_n_0 ;
  wire \hlfa_f[0]_i_7_n_0 ;
  wire \hlfa_f[0]_i_8_n_0 ;
  wire \hlfa_f[0]_i_9_n_0 ;
  wire \hlfa_f[10]_i_2_n_0 ;
  wire \hlfa_f[10]_i_3_n_0 ;
  wire \hlfa_f[10]_i_4_n_0 ;
  wire \hlfa_f[10]_i_5_n_0 ;
  wire \hlfa_f[10]_i_6_n_0 ;
  wire \hlfa_f[11]_i_2_n_0 ;
  wire \hlfa_f[11]_i_3_n_0 ;
  wire \hlfa_f[11]_i_4_n_0 ;
  wire \hlfa_f[11]_i_5_n_0 ;
  wire \hlfa_f[11]_i_6_n_0 ;
  wire \hlfa_f[11]_i_7_n_0 ;
  wire \hlfa_f[12]_i_2_n_0 ;
  wire \hlfa_f[12]_i_3_n_0 ;
  wire \hlfa_f[12]_i_4_n_0 ;
  wire \hlfa_f[12]_i_6_n_0 ;
  wire \hlfa_f[12]_i_7_n_0 ;
  wire \hlfa_f[13]_i_2_n_0 ;
  wire \hlfa_f[13]_i_3_n_0 ;
  wire \hlfa_f[13]_i_4_n_0 ;
  wire \hlfa_f[13]_i_5_n_0 ;
  wire \hlfa_f[13]_i_6_n_0 ;
  wire \hlfa_f[14]_i_2_n_0 ;
  wire \hlfa_f[14]_i_3_n_0 ;
  wire \hlfa_f[14]_i_4_n_0 ;
  wire \hlfa_f[14]_i_5_n_0 ;
  wire \hlfa_f[14]_i_6_n_0 ;
  wire \hlfa_f[15]_i_10 ;
  wire \hlfa_f[15]_i_11_n_0 ;
  wire \hlfa_f[15]_i_12_n_0 ;
  wire \hlfa_f[15]_i_1_n_0 ;
  wire \hlfa_f[15]_i_6_n_0 ;
  wire \hlfa_f[15]_i_7_n_0 ;
  wire \hlfa_f[15]_i_8_n_0 ;
  wire \hlfa_f[15]_i_9_n_0 ;
  wire \hlfa_f[1]_i_2_n_0 ;
  wire \hlfa_f[1]_i_3_n_0 ;
  wire \hlfa_f[2]_i_4_n_0 ;
  wire \hlfa_f[3]_i_2_n_0 ;
  wire \hlfa_f[3]_i_3_n_0 ;
  wire \hlfa_f[3]_i_4_n_0 ;
  wire \hlfa_f[3]_i_5_n_0 ;
  wire \hlfa_f[4]_i_2_n_0 ;
  wire \hlfa_f[4]_i_3_n_0 ;
  wire \hlfa_f[4]_i_4_n_0 ;
  wire \hlfa_f[4]_i_5_n_0 ;
  wire \hlfa_f[5]_i_2_n_0 ;
  wire \hlfa_f[5]_i_3_n_0 ;
  wire \hlfa_f[5]_i_4_n_0 ;
  wire \hlfa_f[6]_i_2_n_0 ;
  wire \hlfa_f[6]_i_3_n_0 ;
  wire \hlfa_f[6]_i_4_n_0 ;
  wire \hlfa_f[7]_i_4_n_0 ;
  wire \hlfa_f[8]_i_2_n_0 ;
  wire \hlfa_f[8]_i_3_n_0 ;
  wire \hlfa_f[8]_i_4_n_0 ;
  wire \hlfa_f[8]_i_5_n_0 ;
  wire \hlfa_f[8]_i_6_n_0 ;
  wire \hlfa_f[9]_i_2_n_0 ;
  wire \hlfa_f[9]_i_3_n_0 ;
  wire \hlfa_f[9]_i_4_n_0 ;
  wire \hlfa_f[9]_i_5_n_0 ;
  wire \hlfa_f_reg[0]_0 ;
  wire \hlfa_f_reg[0]_1 ;
  wire \hlfa_f_reg[10]_0 ;
  wire \hlfa_f_reg[11]_0 ;
  wire \hlfa_f_reg[12]_0 ;
  wire \hlfa_f_reg[13]_0 ;
  wire \hlfa_f_reg[15]_0 ;
  wire \hlfa_f_reg[15]_1 ;
  wire \hlfa_f_reg[1]_0 ;
  wire \hlfa_f_reg[3]_0 ;
  wire \hlfa_f_reg[3]_1 ;
  wire \hlfa_f_reg[4]_0 ;
  wire \hlfa_f_reg[4]_1 ;
  wire \hlfa_f_reg[4]_2 ;
  wire \hlfa_f_reg[5]_0 ;
  wire \hlfa_f_reg[6]_0 ;
  wire \hlfa_f_reg[7]_0 ;
  wire [1:0]\hlfa_f_reg[7]_1 ;
  wire \hlfa_f_reg[8]_0 ;
  wire \hlfa_f_reg[9]_0 ;
  wire \hlfa_f_reg[9]_1 ;
  wire \hlfa_i_reg[0]_0 ;
  wire \hlfa_i_reg[10]_0 ;
  wire \hlfa_i_reg[11]_0 ;
  wire \hlfa_i_reg[11]_1 ;
  wire \hlfa_i_reg[11]_2 ;
  wire \hlfa_i_reg[13]_0 ;
  wire \hlfa_i_reg[15]_0 ;
  wire [2:0]\hlfa_i_reg[15]_1 ;
  wire \hlfa_i_reg[1]_0 ;
  wire \hlfa_i_reg[2]_0 ;
  wire \hlfa_i_reg[4]_0 ;
  wire \hlfa_i_reg[4]_1 ;
  wire \hlfa_i_reg[4]_2 ;
  wire \hlfa_i_reg[7]_0 ;
  wire \hlfa_i_reg_n_0_[0] ;
  wire \hlfa_i_reg_n_0_[1] ;
  wire \hlfa_i_reg_n_0_[2] ;
  wire \hlfa_i_reg_n_0_[3] ;
  wire \hlfa_i_reg_n_0_[4] ;
  wire \hlfa_i_reg_n_0_[5] ;
  wire \hlfa_i_reg_n_0_[6] ;
  wire \hlfa_i_reg_n_0_[7] ;
  wire \hlfa_i_reg_n_0_[8] ;
  wire \hlfa_i_reg_n_0_[9] ;
  wire [22:0]hlfa_r_0;
  wire \hlfb_e[0]_i_3_n_0 ;
  wire \hlfb_e[5]_i_14_n_0 ;
  wire [0:0]\hlfb_e_reg[0] ;
  wire [0:0]\hlfb_e_reg[0]_0 ;
  wire [2:0]\hlfb_e_reg[0]_1 ;
  wire [1:0]\hlfb_e_reg[1] ;
  wire \hlfb_e_reg[2]_i_5_n_3 ;
  wire \hlfb_e_reg[2]_i_5_n_6 ;
  wire \hlfb_e_reg[3] ;
  wire \hlfb_e_reg[3]_0 ;
  wire \hlfb_e_reg[3]_1 ;
  wire \hlfb_e_reg[5]_i_5_n_0 ;
  wire \hlfb_e_reg[5]_i_5_n_1 ;
  wire \hlfb_e_reg[5]_i_5_n_2 ;
  wire \hlfb_e_reg[5]_i_5_n_3 ;
  wire \hlfb_f_reg[12] ;
  wire \hlfb_f_reg[12]_0 ;
  wire [1:0]\hlfb_f_reg[1] ;
  wire \hlfb_f_reg[5] ;
  wire \hlfb_i_reg[14] ;
  wire [0:0]hlfb_r;
  wire \hlfc_e[5]_i_6_n_0 ;
  wire \hlfc_f_reg[13] ;
  wire \hlfc_f_reg[13]_0 ;
  wire \hlfc_i[24]_i_2_n_0 ;
  wire \hlfc_i[24]_i_4_n_0 ;
  wire \hlfc_i[24]_i_5_n_0 ;
  wire \hlfc_i_reg[22] ;
  wire \hlfc_i_reg[22]_0 ;
  wire \hlfc_i_reg[22]_1 ;
  wire \hlfc_i_reg[22]_2 ;
  wire \hlfc_i_reg[22]_3 ;
  wire \hlfc_i_reg[24] ;
  wire \hlfc_i_reg[24]_0 ;
  wire \hlfc_i_reg[24]_1 ;
  wire \hlfc_i_reg[25] ;
  wire \hlfc_i_reg[25]_0 ;
  wire \hlfc_i_reg[25]_1 ;
  wire \hlfc_i_reg[25]_2 ;
  wire [4:0]p_0_in;
  wire p_0_in11_in;
  wire p_0_in14_in;
  wire p_0_in1_in;
  wire p_0_in3_in;
  wire [2:0]p_16_in;
  wire [15:0]p_1_in;
  wire rst_n;
  wire \stat[2]_i_8_n_0 ;
  wire \stat[2]_i_9_n_0 ;
  wire \stat_reg[1] ;
  wire [3:0]\NLW_cbus[14]_INST_0_i_50_O_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hDDD0D0D0DDDDDDDD)) 
    \cbus[0]_INST_0_i_3 
       (.I0(\hlfa_i_reg_n_0_[0] ),
        .I1(\cbus[13]_INST_0_i_18_n_0 ),
        .I2(\ccmd_f_reg[1]_1 ),
        .I3(\cbus[0]_INST_0_i_4_n_0 ),
        .I4(hlfa_e_dif0_carry__0_i_5_n_0),
        .I5(hlfa_r_0[0]),
        .O(\hlfa_i_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h0000EAFA)) 
    \cbus[0]_INST_0_i_4 
       (.I0(ccmd_f[2]),
        .I1(ccmd_f[0]),
        .I2(ccmd_f[1]),
        .I3(\hlfa_i_reg[11]_2 ),
        .I4(\cbus[10]_INST_0_i_13_n_0 ),
        .O(\cbus[0]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cbus[10]_INST_0_i_10 
       (.I0(ccmd_f[3]),
        .I1(ccmd_f[0]),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[1]),
        .O(\cbus[10]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0000EA15)) 
    \cbus[10]_INST_0_i_11 
       (.I0(hlfa_r_0[18]),
        .I1(hlfa_r_0[16]),
        .I2(hlfa_r_0[17]),
        .I3(hlfa_r_0[19]),
        .I4(\cbus[10]_INST_0_i_13_n_0 ),
        .O(\cbus[10]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h02220022)) 
    \cbus[10]_INST_0_i_12 
       (.I0(ccmd_f[3]),
        .I1(ccmd_f[2]),
        .I2(ccmd_f[0]),
        .I3(ccmd_f[1]),
        .I4(\hlfa_i_reg[11]_2 ),
        .O(\cbus[10]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFEFE)) 
    \cbus[10]_INST_0_i_13 
       (.I0(\cbus[14]_INST_0_i_65_n_0 ),
        .I1(hlfa_r_0[21]),
        .I2(hlfa_r_0[20]),
        .I3(hlfa_r_0[19]),
        .I4(hlfa_r_0[17]),
        .I5(hlfa_r_0[18]),
        .O(\cbus[10]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFCFEFCF)) 
    \cbus[10]_INST_0_i_5 
       (.I0(\cbus[10]_INST_0_i_9_n_0 ),
        .I1(\cbus[10]_INST_0_i_10_n_0 ),
        .I2(hlfa_r_0[10]),
        .I3(\cbus[10]_INST_0_i_11_n_0 ),
        .I4(hlfa_r_0[16]),
        .O(\hlfa_f_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hFFFF0CFF5D5D0C0C)) 
    \cbus[10]_INST_0_i_6 
       (.I0(hlfa_e_dif0_carry__0_i_5_n_0),
        .I1(p_0_in[0]),
        .I2(\cbus[13]_INST_0_i_18_n_0 ),
        .I3(\cbus[11]_INST_0_i_9_n_0 ),
        .I4(hlfa_r_0[10]),
        .I5(\cbus[10]_INST_0_i_12_n_0 ),
        .O(\hlfa_i_reg[10]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF9)) 
    \cbus[10]_INST_0_i_9 
       (.I0(hlfa_r_0[17]),
        .I1(hlfa_r_0[16]),
        .I2(hlfa_r_0[18]),
        .I3(hlfa_r_0[21]),
        .I4(hlfa_r_0[20]),
        .O(\cbus[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EFF0E0F)) 
    \cbus[11]_INST_0_i_11 
       (.I0(\cbus[10]_INST_0_i_10_n_0 ),
        .I1(\cbus[11]_INST_0_i_12_n_0 ),
        .I2(\cbus[10]_INST_0_i_12_n_0 ),
        .I3(hlfa_r_0[11]),
        .I4(\cbus[11]_INST_0_i_9_n_0 ),
        .I5(\cbus[11]_INST_0_i_13_n_0 ),
        .O(\hlfa_f_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h3030303030020203)) 
    \cbus[11]_INST_0_i_12 
       (.I0(\cbus[7]_INST_0_i_9_n_0 ),
        .I1(\cbus[10]_INST_0_i_13_n_0 ),
        .I2(hlfa_r_0[19]),
        .I3(hlfa_r_0[17]),
        .I4(hlfa_r_0[16]),
        .I5(hlfa_r_0[18]),
        .O(\cbus[11]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00F0008000000080)) 
    \cbus[11]_INST_0_i_13 
       (.I0(ccmd_f[1]),
        .I1(p_0_in[1]),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[3]),
        .I4(ccmd_f[0]),
        .I5(hlfa_r_0[11]),
        .O(\cbus[11]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAEEEEAAEAAAEA)) 
    \cbus[11]_INST_0_i_4 
       (.I0(\cbus[11]_INST_0_i_1 ),
        .I1(\hlfc_f_reg[13] ),
        .I2(hlfa_r_0[17]),
        .I3(\ccmd_f_reg[1]_2 ),
        .I4(\cbus[11]_INST_0_i_9_n_0 ),
        .I5(ccmd_f[3]),
        .O(p_16_in[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F220000)) 
    \cbus[11]_INST_0_i_5 
       (.I0(ccmd_f[3]),
        .I1(\cbus[11]_INST_0_i_9_n_0 ),
        .I2(\ccmd_f_reg[1]_2 ),
        .I3(hlfa_r_0[16]),
        .I4(\hlfc_f_reg[13] ),
        .I5(\cbus[10]_INST_0_i_2 ),
        .O(p_16_in[0]));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \cbus[11]_INST_0_i_9 
       (.I0(ccmd_f[0]),
        .I1(ccmd_f[1]),
        .I2(ccmd_f[2]),
        .I3(\hlfa_i_reg[4]_0 ),
        .O(\cbus[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \cbus[12]_INST_0_i_12 
       (.I0(hlfa_r_0[12]),
        .I1(\ccmd_f_reg[1]_2 ),
        .I2(p_0_in[2]),
        .I3(\cbus[13]_INST_0_i_18_n_0 ),
        .I4(ccmd_f[3]),
        .I5(\cbus[11]_INST_0_i_9_n_0 ),
        .O(\hlfa_f_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F220000)) 
    \cbus[13]_INST_0_i_11 
       (.I0(hlfa_r_0[13]),
        .I1(\ccmd_f_reg[1]_1 ),
        .I2(\cbus[13]_INST_0_i_18_n_0 ),
        .I3(p_0_in[3]),
        .I4(\hlfc_f_reg[13] ),
        .I5(\hlfc_f_reg[13]_0 ),
        .O(\hlfa_f_reg[13]_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cbus[13]_INST_0_i_18 
       (.I0(ccmd_f[2]),
        .I1(ccmd_f[3]),
        .I2(ccmd_f[1]),
        .I3(ccmd_f[0]),
        .O(\cbus[13]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cbus[14]_INST_0_i_13 
       (.I0(p_16_in[1]),
        .I1(p_16_in[0]),
        .O(\hlfa_e_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4040FF4F)) 
    \cbus[14]_INST_0_i_18 
       (.I0(\cbus[14]_INST_0_i_40_n_0 ),
        .I1(\hlfa_i_reg[11]_2 ),
        .I2(\hlfc_i_reg[24]_0 ),
        .I3(\hlfa_i_reg[4]_0 ),
        .I4(\cbus[14]_INST_0_i_41_n_0 ),
        .I5(\cbus[14]_INST_0_i_42_n_0 ),
        .O(hctl_ccmd_div_reg_0));
  LUT6 #(
    .INIT(64'hFF00FFFFF800F800)) 
    \cbus[14]_INST_0_i_20 
       (.I0(\cbus[14]_INST_0_i_45_n_0 ),
        .I1(\hlfc_i_reg[24]_1 ),
        .I2(\cbus[14]_INST_0_i_4 ),
        .I3(hctl_ccmd_mul),
        .I4(\cbus[14]_INST_0_i_47_n_0 ),
        .I5(\hlfa_i_reg[4]_1 ),
        .O(hctl_ccmd_mul_reg));
  LUT6 #(
    .INIT(64'hFFAA00FFAAA2FFFF)) 
    \cbus[14]_INST_0_i_26 
       (.I0(ccmd_f[1]),
        .I1(\hlfa_i_reg[11]_2 ),
        .I2(\hlfa_i_reg[4]_0 ),
        .I3(ccmd_f[0]),
        .I4(ccmd_f[3]),
        .I5(ccmd_f[2]),
        .O(\ccmd_f_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h00050F0004550000)) 
    \cbus[14]_INST_0_i_28 
       (.I0(\cbus[11]_INST_0_i_9_n_0 ),
        .I1(\hlfa_i_reg[11]_2 ),
        .I2(ccmd_f[0]),
        .I3(ccmd_f[1]),
        .I4(ccmd_f[3]),
        .I5(ccmd_f[2]),
        .O(\ccmd_f_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hE83FEA3F)) 
    \cbus[14]_INST_0_i_29 
       (.I0(ccmd_f[1]),
        .I1(ccmd_f[0]),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[3]),
        .I4(\hlfa_i_reg[11]_2 ),
        .O(\ccmd_f_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0455)) 
    \cbus[14]_INST_0_i_34 
       (.I0(\hlfa_i_reg[11]_2 ),
        .I1(\hlfa_i_reg[7]_0 ),
        .I2(\cbus[14]_INST_0_i_51_n_0 ),
        .I3(\cbus[14]_INST_0_i_52_n_0 ),
        .I4(\cbus[14]_INST_0_i_53_n_0 ),
        .I5(\cbus[14]_INST_0_i_54_n_0 ),
        .O(\hlfa_i_reg[11]_1 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDFFFFFDFF)) 
    \cbus[14]_INST_0_i_40 
       (.I0(hctl_ccmd_div),
        .I1(hctl_ccmd_mul),
        .I2(\cbus[15]_INST_0_i_31_n_0 ),
        .I3(\cbus[15]_INST_0_i_33_n_0 ),
        .I4(\hlfa_i_reg[13]_0 ),
        .I5(\hlfc_i_reg[25]_0 ),
        .O(\cbus[14]_INST_0_i_40_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \cbus[14]_INST_0_i_41 
       (.I0(\hlfa_i_reg[11]_2 ),
        .I1(\hlfc_i_reg[25]_0 ),
        .I2(hctl_ccmd_mul),
        .O(\cbus[14]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \cbus[14]_INST_0_i_42 
       (.I0(hctl_ccmd_add),
        .I1(\hlfc_i_reg[25] ),
        .I2(\cbus[14]_INST_0_i_58_n_0 ),
        .I3(\cbus[15]_INST_0_i_31_n_0 ),
        .I4(\cbus[15]_INST_0_i_33_n_0 ),
        .I5(\hlfa_i_reg[13]_0 ),
        .O(\cbus[14]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h04040404040404FF)) 
    \cbus[14]_INST_0_i_45 
       (.I0(\hlfa_i_reg[13]_0 ),
        .I1(\cbus[15]_INST_0_i_33_n_0 ),
        .I2(\cbus[15]_INST_0_i_31_n_0 ),
        .I3(\hlfc_i_reg[25]_1 ),
        .I4(\cbus[14]_INST_0_i_20_0 ),
        .I5(\cbus[14]_INST_0_i_20_1 ),
        .O(\cbus[14]_INST_0_i_45_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFE787)) 
    \cbus[14]_INST_0_i_47 
       (.I0(ccmd_f[2]),
        .I1(ccmd_f[0]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[1]),
        .I4(\hlfc_i_reg[25] ),
        .O(\cbus[14]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0010111100100010)) 
    \cbus[14]_INST_0_i_48 
       (.I0(\hlfc_i_reg[25] ),
        .I1(hctl_ccmd_add),
        .I2(hlfa_r_0[14]),
        .I3(\ccmd_f_reg[1]_1 ),
        .I4(\cbus[13]_INST_0_i_18_n_0 ),
        .I5(p_0_in[4]),
        .O(hctl_ccmd_add_reg));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[14]_INST_0_i_49 
       (.CI(\cbus[14]_INST_0_i_50_n_0 ),
        .CO(\cbus[14]_INST_0_i_49_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,hlfa_r_0[20]}),
        .O({\hdiv/hlfc_e ,\hlfa_e_reg[4]_3 [3]}),
        .S({\<const0> ,\<const0> ,\cbus[14]_INST_0_i_25 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[14]_INST_0_i_50 
       (.CI(\<const0> ),
        .CO({\cbus[14]_INST_0_i_50_n_0 ,\cbus[14]_INST_0_i_50_n_1 ,\cbus[14]_INST_0_i_50_n_2 ,\cbus[14]_INST_0_i_50_n_3 }),
        .CYINIT(\<const1> ),
        .DI(hlfa_r_0[19:16]),
        .O({\hlfa_e_reg[4]_3 [2:0],\NLW_cbus[14]_INST_0_i_50_O_UNCONNECTED [0]}),
        .S({\cbus[11]_INST_0_i_8 ,\cbus[14]_INST_0_i_64_n_0 }));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \cbus[14]_INST_0_i_51 
       (.I0(hlfa_r_0[22]),
        .I1(ccmd_f[0]),
        .I2(ccmd_f[1]),
        .I3(ccmd_f[3]),
        .I4(ccmd_f[2]),
        .O(\cbus[14]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'hCBB3)) 
    \cbus[14]_INST_0_i_52 
       (.I0(ccmd_f[1]),
        .I1(ccmd_f[3]),
        .I2(ccmd_f[0]),
        .I3(ccmd_f[2]),
        .O(\cbus[14]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \cbus[14]_INST_0_i_53 
       (.I0(ccmd_f[3]),
        .I1(ccmd_f[0]),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[1]),
        .I4(hlfa_r_0[21]),
        .I5(\cbus[14]_INST_0_i_65_n_0 ),
        .O(\cbus[14]_INST_0_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cbus[14]_INST_0_i_54 
       (.I0(\ccmd_f_reg[4]_0 ),
        .I1(hctl_ccmd_reg),
        .O(\cbus[14]_INST_0_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h0878)) 
    \cbus[14]_INST_0_i_58 
       (.I0(ccmd_f[2]),
        .I1(ccmd_f[0]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[1]),
        .O(\cbus[14]_INST_0_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cbus[14]_INST_0_i_64 
       (.I0(hlfa_r_0[16]),
        .I1(hlfa_e_dif0_carry__0_1[0]),
        .O(\cbus[14]_INST_0_i_64_n_0 ));
  LUT5 #(
    .INIT(32'h80000001)) 
    \cbus[14]_INST_0_i_65 
       (.I0(p_0_in[4]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(\cbus[14]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000004F7)) 
    \cbus[15]_INST_0_i_10 
       (.I0(\cbus[15]_INST_0_i_24_n_0 ),
        .I1(\hlfc_i_reg[22]_1 ),
        .I2(\hlfc_i_reg[22]_2 ),
        .I3(\cbus[15]_INST_0_i_25_n_0 ),
        .I4(\hlfc_i[24]_i_4_n_0 ),
        .I5(\hlfc_i_reg[22]_3 ),
        .O(\hlfa_i_reg[15]_0 ));
  LUT6 #(
    .INIT(64'h00E0EEEE00F000F0)) 
    \cbus[15]_INST_0_i_11 
       (.I0(\hlfc_i_reg[22] ),
        .I1(\hlfa_i_reg[11]_0 ),
        .I2(\cbus[15]_INST_0_i_27_n_0 ),
        .I3(\cbus[15]_INST_0_i_28_n_0 ),
        .I4(hctl_ccmd_mul),
        .I5(hctl_ccmd_div),
        .O(\cbus[15]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cbus[15]_INST_0_i_13 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[4]),
        .O(\hlfa_i_reg[13]_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cbus[15]_INST_0_i_14 
       (.I0(\hlfa_i_reg_n_0_[7] ),
        .I1(\hlfa_i_reg_n_0_[2] ),
        .I2(\hlfa_i_reg_n_0_[8] ),
        .I3(\hlfa_i_reg_n_0_[4] ),
        .I4(\cbus[15]_INST_0_i_31_n_0 ),
        .O(\hlfa_i_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \cbus[15]_INST_0_i_17 
       (.I0(\hlfa_i_reg[13]_0 ),
        .I1(\cbus[15]_INST_0_i_31_n_0 ),
        .I2(\hlfa_i_reg_n_0_[4] ),
        .I3(\hlfa_i_reg_n_0_[8] ),
        .I4(\hlfa_i_reg_n_0_[2] ),
        .I5(\hlfa_i_reg_n_0_[7] ),
        .O(\hlfa_i_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cbus[15]_INST_0_i_20 
       (.I0(\cbus[15]_INST_0_i_31_n_0 ),
        .I1(\hlfa_i_reg_n_0_[4] ),
        .I2(\hlfa_i_reg_n_0_[8] ),
        .I3(\hlfa_i_reg_n_0_[2] ),
        .I4(\hlfa_i_reg_n_0_[7] ),
        .I5(\hlfa_i_reg[13]_0 ),
        .O(\hlfa_i_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cbus[15]_INST_0_i_22 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[4]),
        .O(\hlfa_i_reg[11]_2 ));
  LUT6 #(
    .INIT(64'h0DFF0DFF0DFF0D0D)) 
    \cbus[15]_INST_0_i_23 
       (.I0(\cbus[15]_INST_0_i_33_n_0 ),
        .I1(\cbus[15]_INST_0_i_31_n_0 ),
        .I2(\hlfa_i_reg[13]_0 ),
        .I3(\hlfc_i_reg[25]_1 ),
        .I4(\cbus[14]_INST_0_i_20_0 ),
        .I5(\cbus[14]_INST_0_i_20_1 ),
        .O(\hlfa_i_reg[4]_2 ));
  LUT3 #(
    .INIT(8'hD7)) 
    \cbus[15]_INST_0_i_24 
       (.I0(hlfa_r_0[22]),
        .I1(Q),
        .I2(hctl_ccmd_sub),
        .O(\cbus[15]_INST_0_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cbus[15]_INST_0_i_25 
       (.I0(hlfa_r_0[22]),
        .I1(\cbus[15]_INST_0_i_10_0 ),
        .O(\cbus[15]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBFBBBBB)) 
    \cbus[15]_INST_0_i_27 
       (.I0(\cbus[15]_INST_0_i_35_n_0 ),
        .I1(ccmd_f[3]),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[1]),
        .I4(hlfa_r_0[22]),
        .I5(ccmd_f[0]),
        .O(\cbus[15]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFFFFFBF)) 
    \cbus[15]_INST_0_i_28 
       (.I0(\cbus[15]_INST_0_i_11_0 ),
        .I1(ccmd_f[0]),
        .I2(ccmd_f[2]),
        .I3(hlfa_r_0[22]),
        .I4(ccmd_f[1]),
        .I5(ccmd_f[3]),
        .O(\cbus[15]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h8F8C8FAF8FAF8FAF)) 
    \cbus[15]_INST_0_i_29 
       (.I0(\cbus[15]_INST_0_i_37_n_0 ),
        .I1(\cbus[15]_INST_0_i_38_n_0 ),
        .I2(hlfa_r_0[15]),
        .I3(ccmd_f[0]),
        .I4(hlfa_r_0[22]),
        .I5(ccmd_f[1]),
        .O(\hlfa_f_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    \cbus[15]_INST_0_i_3 
       (.I0(\hlfa_i_reg[15]_0 ),
        .I1(hctl_ccmd_add),
        .I2(\cbus[15]_INST_0_i_11_n_0 ),
        .I3(hctl_ccmd_mul),
        .I4(\hlfc_i_reg[22] ),
        .I5(\hlfc_i_reg[22]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cbus[15]_INST_0_i_31 
       (.I0(\hlfa_i_reg_n_0_[0] ),
        .I1(\hlfa_i_reg_n_0_[9] ),
        .I2(\hlfa_i_reg_n_0_[3] ),
        .I3(\hlfa_i_reg_n_0_[1] ),
        .I4(\hlfa_i_reg_n_0_[6] ),
        .I5(\hlfa_i_reg_n_0_[5] ),
        .O(\cbus[15]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \cbus[15]_INST_0_i_33 
       (.I0(\hlfa_i_reg_n_0_[4] ),
        .I1(\hlfa_i_reg_n_0_[8] ),
        .I2(\hlfa_i_reg_n_0_[2] ),
        .I3(\hlfa_i_reg_n_0_[7] ),
        .O(\cbus[15]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0050000044504450)) 
    \cbus[15]_INST_0_i_35 
       (.I0(ccmd_f[2]),
        .I1(hlfb_r),
        .I2(hlfa_r_0[22]),
        .I3(ccmd_f[0]),
        .I4(\hlfa_i_reg[11]_2 ),
        .I5(ccmd_f[1]),
        .O(\cbus[15]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F0B0FFFFFFFF)) 
    \cbus[15]_INST_0_i_37 
       (.I0(\hlfa_i_reg[4]_0 ),
        .I1(\hlfa_i_reg[11]_2 ),
        .I2(ccmd_f[1]),
        .I3(ccmd_f[0]),
        .I4(ccmd_f[2]),
        .I5(ccmd_f[3]),
        .O(\cbus[15]_INST_0_i_37_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \cbus[15]_INST_0_i_38 
       (.I0(ccmd_f[3]),
        .I1(ccmd_f[2]),
        .O(\cbus[15]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0022020002002200)) 
    \cbus[15]_INST_0_i_7 
       (.I0(\hlfa_i_reg[4]_1 ),
        .I1(\hlfc_i_reg[25] ),
        .I2(ccmd_f[1]),
        .I3(ccmd_f[3]),
        .I4(ccmd_f[0]),
        .I5(ccmd_f[2]),
        .O(\ccmd_f_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0CEE)) 
    \cbus[15]_INST_0_i_9 
       (.I0(\hlfc_i_reg[25]_0 ),
        .I1(\hlfa_i_reg[4]_0 ),
        .I2(\hlfc_i_reg[24]_0 ),
        .I3(\hlfa_i_reg[11]_2 ),
        .I4(\hlfa_i_reg[4]_2 ),
        .I5(\cbus[15]_INST_0_i_2 ),
        .O(\hlfb_i_reg[14] ));
  LUT6 #(
    .INIT(64'h0000000088F8FFFF)) 
    \cbus[1]_INST_0_i_5 
       (.I0(\cbus[3]_INST_0_i_11_n_0 ),
        .I1(\ccmd_f_reg[0]_0 ),
        .I2(\cbus[11]_INST_0_i_9_n_0 ),
        .I3(hlfa_r_0[3]),
        .I4(ccmd_f[3]),
        .I5(\cbus[3]_INST_0_i_8_n_0 ),
        .O(\hlfa_f_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hDDD0D0D0DDDDDDDD)) 
    \cbus[1]_INST_0_i_8 
       (.I0(\hlfa_i_reg_n_0_[1] ),
        .I1(\cbus[13]_INST_0_i_18_n_0 ),
        .I2(\ccmd_f_reg[1]_1 ),
        .I3(\cbus[0]_INST_0_i_4_n_0 ),
        .I4(hlfa_e_dif0_carry__0_i_5_n_0),
        .I5(hlfa_r_0[1]),
        .O(\hlfa_i_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h4FFF)) 
    \cbus[2]_INST_0_i_5 
       (.I0(\cbus[10]_INST_0_i_13_n_0 ),
        .I1(hlfa_r_0[16]),
        .I2(hlfa_r_0[2]),
        .I3(ccmd_f[3]),
        .O(\hlfa_e_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFF0CFF5D5D0C0C)) 
    \cbus[2]_INST_0_i_6 
       (.I0(hlfa_e_dif0_carry__0_i_5_n_0),
        .I1(\hlfa_i_reg_n_0_[2] ),
        .I2(\cbus[13]_INST_0_i_18_n_0 ),
        .I3(\cbus[11]_INST_0_i_9_n_0 ),
        .I4(hlfa_r_0[2]),
        .I5(\cbus[10]_INST_0_i_12_n_0 ),
        .O(\hlfa_i_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFEFFFEF)) 
    \cbus[3]_INST_0_i_10 
       (.I0(\cbus[10]_INST_0_i_11_n_0 ),
        .I1(ccmd_f[0]),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[1]),
        .I4(\cbus[10]_INST_0_i_13_n_0 ),
        .I5(\cbus[10]_INST_0_i_9_n_0 ),
        .O(\ccmd_f_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hFFC4)) 
    \cbus[3]_INST_0_i_11 
       (.I0(\hlfa_i_reg[11]_2 ),
        .I1(ccmd_f[1]),
        .I2(ccmd_f[0]),
        .I3(ccmd_f[2]),
        .O(\cbus[3]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hBBBABABA)) 
    \cbus[3]_INST_0_i_6 
       (.I0(\hlfc_i_reg[25] ),
        .I1(\cbus[3]_INST_0_i_8_n_0 ),
        .I2(\cbus[3]_INST_0_i_9_n_0 ),
        .I3(\ccmd_f_reg[0]_0 ),
        .I4(\cbus[3]_INST_0_i_11_n_0 ),
        .O(hctl_ccmd_div_reg));
  LUT6 #(
    .INIT(64'h00F0008000000080)) 
    \cbus[3]_INST_0_i_8 
       (.I0(ccmd_f[1]),
        .I1(\hlfa_i_reg_n_0_[3] ),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[3]),
        .I4(ccmd_f[0]),
        .I5(hlfa_r_0[3]),
        .O(\cbus[3]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h2F)) 
    \cbus[3]_INST_0_i_9 
       (.I0(\cbus[11]_INST_0_i_9_n_0 ),
        .I1(hlfa_r_0[3]),
        .I2(ccmd_f[3]),
        .O(\cbus[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8088FFFF)) 
    \cbus[4]_INST_0_i_13 
       (.I0(hlfa_e_dif0_carry__0_i_5_n_0),
        .I1(\cbus[0]_INST_0_i_4_n_0 ),
        .I2(\cbus[4]_INST_0_i_14_n_0 ),
        .I3(\cbus[6]_INST_0_i_11_n_0 ),
        .I4(hlfa_r_0[4]),
        .I5(\ccmd_f_reg[1]_2 ),
        .O(\cbus[4]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEEEEFEFEF)) 
    \cbus[4]_INST_0_i_14 
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_r_0[21]),
        .I2(hlfa_r_0[18]),
        .I3(hlfa_r_0[16]),
        .I4(hlfa_r_0[17]),
        .I5(hlfa_r_0[19]),
        .O(\cbus[4]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEFEFAAAAAAAA)) 
    \cbus[4]_INST_0_i_6 
       (.I0(\hlfc_i_reg[25] ),
        .I1(\cbus[11]_INST_0_i_9_n_0 ),
        .I2(ccmd_f[3]),
        .I3(\cbus[13]_INST_0_i_18_n_0 ),
        .I4(\hlfa_i_reg_n_0_[4] ),
        .I5(\cbus[4]_INST_0_i_13_n_0 ),
        .O(\ccmd_f_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBABABBBA)) 
    \cbus[5]_INST_0_i_5 
       (.I0(\hlfc_i_reg[25] ),
        .I1(\cbus[5]_INST_0_i_7_n_0 ),
        .I2(\ccmd_f_reg[1]_4 ),
        .I3(\cbus[11]_INST_0_i_9_n_0 ),
        .I4(hlfa_r_0[5]),
        .I5(\cbus[5]_INST_0_i_8_n_0 ),
        .O(\hlfa_f_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h00F0008000000080)) 
    \cbus[5]_INST_0_i_7 
       (.I0(ccmd_f[1]),
        .I1(\hlfa_i_reg_n_0_[5] ),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[3]),
        .I4(ccmd_f[0]),
        .I5(hlfa_r_0[5]),
        .O(\cbus[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAA8AA0)) 
    \cbus[5]_INST_0_i_8 
       (.I0(\cbus[0]_INST_0_i_4_n_0 ),
        .I1(hlfa_r_0[19]),
        .I2(\cbus[5]_INST_0_i_9_n_0 ),
        .I3(hlfa_r_0[18]),
        .I4(hlfa_r_0[21]),
        .I5(hlfa_r_0[20]),
        .O(\cbus[5]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cbus[5]_INST_0_i_9 
       (.I0(hlfa_r_0[17]),
        .I1(hlfa_r_0[16]),
        .O(\cbus[5]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \cbus[6]_INST_0_i_11 
       (.I0(hlfa_r_0[18]),
        .I1(hlfa_r_0[16]),
        .I2(hlfa_r_0[17]),
        .O(\cbus[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4FF44444444)) 
    \cbus[6]_INST_0_i_8 
       (.I0(hlfa_r_0[6]),
        .I1(\cbus[11]_INST_0_i_9_n_0 ),
        .I2(\cbus[7]_INST_0_i_9_n_0 ),
        .I3(\cbus[6]_INST_0_i_11_n_0 ),
        .I4(\hlfa_e[5]_i_10_n_0 ),
        .I5(\cbus[0]_INST_0_i_4_n_0 ),
        .O(\hlfa_f_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h00F0008000000080)) 
    \cbus[6]_INST_0_i_9 
       (.I0(ccmd_f[1]),
        .I1(\hlfa_i_reg_n_0_[6] ),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[3]),
        .I4(ccmd_f[0]),
        .I5(hlfa_r_0[6]),
        .O(\ccmd_f_reg[1]_5 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00FB)) 
    \cbus[7]_INST_0_i_4 
       (.I0(\ccmd_f_reg[1]_4 ),
        .I1(hlfa_r_0[7]),
        .I2(\cbus[7]_INST_0_i_6_n_0 ),
        .I3(\cbus[7]_INST_0_i_7_n_0 ),
        .I4(\hlfc_i_reg[25] ),
        .I5(\cbus[7]_INST_0_i_3 ),
        .O(\hlfa_f_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFAF030FFFFFFFF)) 
    \cbus[7]_INST_0_i_5 
       (.I0(\cbus[10]_INST_0_i_11_n_0 ),
        .I1(\hlfa_i_reg[11]_2 ),
        .I2(ccmd_f[1]),
        .I3(ccmd_f[0]),
        .I4(ccmd_f[2]),
        .I5(ccmd_f[3]),
        .O(\ccmd_f_reg[1]_4 ));
  LUT5 #(
    .INIT(32'hAA02AA80)) 
    \cbus[7]_INST_0_i_6 
       (.I0(\cbus[0]_INST_0_i_4_n_0 ),
        .I1(hlfa_r_0[16]),
        .I2(hlfa_r_0[17]),
        .I3(\cbus[7]_INST_0_i_9_n_0 ),
        .I4(hlfa_r_0[18]),
        .O(\cbus[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \cbus[7]_INST_0_i_7 
       (.I0(\cbus[11]_INST_0_i_9_n_0 ),
        .I1(ccmd_f[3]),
        .I2(hlfa_r_0[7]),
        .I3(hlfa_e_dif0_carry__0_i_5_n_0),
        .I4(\hlfa_i_reg_n_0_[7] ),
        .I5(\cbus[13]_INST_0_i_18_n_0 ),
        .O(\cbus[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h557FFFFFFFFFAA80)) 
    \cbus[7]_INST_0_i_9 
       (.I0(hlfa_r_0[19]),
        .I1(hlfa_r_0[17]),
        .I2(hlfa_r_0[16]),
        .I3(hlfa_r_0[18]),
        .I4(hlfa_r_0[21]),
        .I5(hlfa_r_0[20]),
        .O(\cbus[7]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000005D5DFF5D)) 
    \cbus[8]_INST_0_i_10 
       (.I0(\cbus[8]_INST_0_i_11_n_0 ),
        .I1(\cbus[11]_INST_0_i_9_n_0 ),
        .I2(hlfa_r_0[8]),
        .I3(\cbus[0]_INST_0_i_4_n_0 ),
        .I4(\cbus[8]_INST_0_i_12_n_0 ),
        .I5(\cbus[8]_INST_0_i_13_n_0 ),
        .O(\hlfa_f_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00080CCC)) 
    \cbus[8]_INST_0_i_11 
       (.I0(\hlfa_i_reg[11]_2 ),
        .I1(ccmd_f[3]),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[0]),
        .I4(ccmd_f[1]),
        .O(\cbus[8]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0100010201020102)) 
    \cbus[8]_INST_0_i_12 
       (.I0(hlfa_r_0[19]),
        .I1(hlfa_r_0[21]),
        .I2(hlfa_r_0[20]),
        .I3(hlfa_r_0[18]),
        .I4(hlfa_r_0[17]),
        .I5(hlfa_r_0[16]),
        .O(\cbus[8]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00F0008000000080)) 
    \cbus[8]_INST_0_i_13 
       (.I0(ccmd_f[1]),
        .I1(\hlfa_i_reg_n_0_[8] ),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[3]),
        .I4(ccmd_f[0]),
        .I5(hlfa_r_0[8]),
        .O(\cbus[8]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F444F4F4F4F)) 
    \cbus[9]_INST_0_i_11 
       (.I0(hlfa_r_0[9]),
        .I1(\cbus[11]_INST_0_i_9_n_0 ),
        .I2(\cbus[10]_INST_0_i_12_n_0 ),
        .I3(\cbus[10]_INST_0_i_11_n_0 ),
        .I4(\cbus[9]_INST_0_i_14_n_0 ),
        .I5(ccmd_f[3]),
        .O(\hlfa_f_reg[9]_1 ));
  LUT6 #(
    .INIT(64'h00F0008000000080)) 
    \cbus[9]_INST_0_i_12 
       (.I0(ccmd_f[1]),
        .I1(\hlfa_i_reg_n_0_[9] ),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[3]),
        .I4(ccmd_f[0]),
        .I5(hlfa_r_0[9]),
        .O(\ccmd_f_reg[1]_3 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \cbus[9]_INST_0_i_14 
       (.I0(ccmd_f[0]),
        .I1(ccmd_f[2]),
        .I2(ccmd_f[1]),
        .O(\cbus[9]_INST_0_i_14_n_0 ));
  FDRE \ccmd_f_reg[0] 
       (.C(clk),
        .CE(\ccmd_f_reg[4]_1 ),
        .D(ccmd[0]),
        .Q(ccmd_f[0]),
        .R(SR));
  FDRE \ccmd_f_reg[1] 
       (.C(clk),
        .CE(\ccmd_f_reg[4]_1 ),
        .D(ccmd[1]),
        .Q(ccmd_f[1]),
        .R(SR));
  FDRE \ccmd_f_reg[2] 
       (.C(clk),
        .CE(\ccmd_f_reg[4]_1 ),
        .D(ccmd[2]),
        .Q(ccmd_f[2]),
        .R(SR));
  FDRE \ccmd_f_reg[3] 
       (.C(clk),
        .CE(\ccmd_f_reg[4]_1 ),
        .D(ccmd[3]),
        .Q(ccmd_f[3]),
        .R(SR));
  FDRE \ccmd_f_reg[4] 
       (.C(clk),
        .CE(\ccmd_f_reg[4]_1 ),
        .D(ccmd[4]),
        .Q(\ccmd_f_reg[4]_0 ),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_a[0]_INST_0 
       (.I0(hlfa_r_0[2]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_a[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_a[10]_INST_0 
       (.I0(hlfa_r_0[12]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_a[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_a[1]_INST_0 
       (.I0(hlfa_r_0[3]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_a[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_a[2]_INST_0 
       (.I0(hlfa_r_0[4]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_a[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_a[3]_INST_0 
       (.I0(hlfa_r_0[5]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_a[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_a[4]_INST_0 
       (.I0(hlfa_r_0[6]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_a[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_a[5]_INST_0 
       (.I0(hlfa_r_0[7]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_a[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_a[6]_INST_0 
       (.I0(hlfa_r_0[8]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_a[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_a[7]_INST_0 
       (.I0(hlfa_r_0[9]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_a[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_a[8]_INST_0 
       (.I0(hlfa_r_0[10]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_a[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_a[9]_INST_0 
       (.I0(hlfa_r_0[11]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_a[9]));
  LUT4 #(
    .INIT(16'h7447)) 
    \hlfa_e[0]_i_1 
       (.I0(abus[10]),
        .I1(hctl_load_b),
        .I2(hlfa_r_0[16]),
        .I3(\hlfa_e[0]_i_2_n_0 ),
        .O(\hlfa_e[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55FF55FF00FC55FF)) 
    \hlfa_e[0]_i_2 
       (.I0(\hlfa_e_reg[4]_0 ),
        .I1(\hlfa_f[15]_i_12_n_0 ),
        .I2(\hlfa_e[0]_i_3_n_0 ),
        .I3(\hlfa_f[14]_i_5_n_0 ),
        .I4(\hlfa_f[13]_i_2_n_0 ),
        .I5(\hlfa_f[14]_i_4_n_0 ),
        .O(\hlfa_e[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h32)) 
    \hlfa_e[0]_i_3 
       (.I0(p_0_in3_in),
        .I1(\hlfa_f_reg[15]_1 ),
        .I2(p_0_in1_in),
        .O(\hlfa_e[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F00DFDFFFF0DFD)) 
    \hlfa_e[1]_i_1 
       (.I0(\hlfa_e[1]_i_2_n_0 ),
        .I1(\hlfa_e[1]_i_3_n_0 ),
        .I2(hctl_load_b),
        .I3(\hlfa_e[1]_i_4_n_0 ),
        .I4(\hlfa_e[1]_i_5_n_0 ),
        .I5(\hlfa_e[1]_i_6_n_0 ),
        .O(\hlfa_e[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5F5F5FAF9FBFB)) 
    \hlfa_e[1]_i_2 
       (.I0(hlfa_r_0[17]),
        .I1(p_0_in11_in),
        .I2(\hlfa_f_reg[0]_0 ),
        .I3(hlfa_r_0[16]),
        .I4(hlfa_e_dif0_carry_n_7),
        .I5(p_0_in14_in),
        .O(\hlfa_e[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA8A802000202)) 
    \hlfa_e[1]_i_3 
       (.I0(\hlfa_e[5]_i_5_n_0 ),
        .I1(\hlfa_f[15]_i_12_n_0 ),
        .I2(\hlfa_f[15]_i_9_n_0 ),
        .I3(\hlfa_f[15]_i_8_n_0 ),
        .I4(hlfa_r_0[16]),
        .I5(hlfa_r_0[17]),
        .O(\hlfa_e[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfa_e[1]_i_4 
       (.I0(abus[11]),
        .I1(abus[10]),
        .O(\hlfa_e[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \hlfa_e[1]_i_5 
       (.I0(\hlfa_e_reg[3]_0 ),
        .I1(\hlfa_e_reg[4]_0 ),
        .I2(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_e[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00007800FFFF87FF)) 
    \hlfa_e[1]_i_6 
       (.I0(hlfa_r_0[16]),
        .I1(hlfa_e_dif0_carry_n_7),
        .I2(p_0_in11_in),
        .I3(\hlfa_e_reg[4]_0 ),
        .I4(\hlfa_f_reg[0]_0 ),
        .I5(hlfa_r_0[17]),
        .O(\hlfa_e[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAFF)) 
    \hlfa_e[2]_i_1 
       (.I0(\hlfa_e[2]_i_2_n_0 ),
        .I1(hlfa_r_0[18]),
        .I2(\hlfa_f[11]_i_3_n_0 ),
        .I3(\hlfa_e_reg[2]_1 ),
        .I4(\hlfa_e[2]_i_3_n_0 ),
        .I5(\hlfa_e_reg[2]_2 ),
        .O(\hlfa_e[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0404404004444000)) 
    \hlfa_e[2]_i_2 
       (.I0(p_0_in14_in),
        .I1(\hlfa_f[13]_i_6_n_0 ),
        .I2(hlfa_r_0[17]),
        .I3(hlfa_r_0[16]),
        .I4(hlfa_r_0[18]),
        .I5(\hlfa_f[14]_i_4_n_0 ),
        .O(\hlfa_e[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA802)) 
    \hlfa_e[2]_i_3 
       (.I0(\hlfa_e[5]_i_5_n_0 ),
        .I1(\hlfa_f[15]_i_12_n_0 ),
        .I2(\hlfa_e[5]_i_13_n_0 ),
        .I3(hlfa_r_0[18]),
        .O(\hlfa_e[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0030320230000232)) 
    \hlfa_e[2]_i_5 
       (.I0(\hlfa_e_reg[3]_0 ),
        .I1(\hlfa_f_reg[0]_0 ),
        .I2(\hlfa_e_reg[4]_0 ),
        .I3(p_0_in14_in),
        .I4(hlfa_r_0[18]),
        .I5(\hlfa_e[2]_i_6_n_0 ),
        .O(\hlfa_e_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hE888)) 
    \hlfa_e[2]_i_6 
       (.I0(p_0_in11_in),
        .I1(hlfa_r_0[17]),
        .I2(hlfa_e_dif0_carry_n_7),
        .I3(hlfa_r_0[16]),
        .O(\hlfa_e[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45000000)) 
    \hlfa_e[3]_i_1 
       (.I0(\hlfa_e[3]_i_2_n_0 ),
        .I1(\hlfa_e[3]_i_3_n_0 ),
        .I2(\hlfa_f[11]_i_3_n_0 ),
        .I3(\hlfa_e_reg[2]_1 ),
        .I4(\hlfa_e[3]_i_4_n_0 ),
        .I5(\hlfa_e[3]_i_5_n_0 ),
        .O(\hlfa_e[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h808080002A2A2AAA)) 
    \hlfa_e[3]_i_2 
       (.I0(\hlfa_e[5]_i_12_n_0 ),
        .I1(hlfa_r_0[17]),
        .I2(hlfa_r_0[18]),
        .I3(\hlfa_f[14]_i_4_n_0 ),
        .I4(hlfa_r_0[16]),
        .I5(hlfa_r_0[19]),
        .O(\hlfa_e[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hlfa_e[3]_i_3 
       (.I0(hlfa_r_0[19]),
        .I1(hlfa_r_0[18]),
        .O(\hlfa_e[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FFABFFFFFF54FF)) 
    \hlfa_e[3]_i_4 
       (.I0(hlfa_r_0[18]),
        .I1(\hlfa_f[15]_i_9_n_0 ),
        .I2(\hlfa_e[3]_i_6_n_0 ),
        .I3(\hlfa_e[5]_i_5_n_0 ),
        .I4(\hlfa_f[15]_i_12_n_0 ),
        .I5(hlfa_r_0[19]),
        .O(\hlfa_e[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAABEAAAEAAEBAAAE)) 
    \hlfa_e[3]_i_5 
       (.I0(\hlfa_e_reg[3]_4 ),
        .I1(\hlfa_e_reg[3]_0 ),
        .I2(hlfa_r_0[19]),
        .I3(\hlfa_f_reg[0]_0 ),
        .I4(\hlfa_e_reg[4]_0 ),
        .I5(\hlfa_e[3]_i_8_n_0 ),
        .O(\hlfa_e[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0455)) 
    \hlfa_e[3]_i_6 
       (.I0(hlfa_r_0[17]),
        .I1(p_0_in1_in),
        .I2(\hlfa_f_reg[15]_1 ),
        .I3(hlfa_r_0[16]),
        .O(\hlfa_e[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1117177717771777)) 
    \hlfa_e[3]_i_8 
       (.I0(p_0_in14_in),
        .I1(hlfa_r_0[18]),
        .I2(p_0_in11_in),
        .I3(hlfa_r_0[17]),
        .I4(hlfa_e_dif0_carry_n_7),
        .I5(hlfa_r_0[16]),
        .O(\hlfa_e[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10011111)) 
    \hlfa_e[4]_i_1 
       (.I0(\hlfa_e[4]_i_2_n_0 ),
        .I1(\hlfa_e[4]_i_3_n_0 ),
        .I2(\hlfa_e[4]_i_4_n_0 ),
        .I3(hlfa_r_0[20]),
        .I4(\hlfa_e[5]_i_5_n_0 ),
        .I5(\hlfa_e[4]_i_5_n_0 ),
        .O(\hlfa_e[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_e[4]_i_11 
       (.I0(\hlfa_e_reg[4]_0 ),
        .I1(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_e[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000000C0A0C00)) 
    \hlfa_e[4]_i_2 
       (.I0(\hlfa_e[4]_i_6_n_0 ),
        .I1(\hlfa_e[4]_i_7_n_0 ),
        .I2(\hlfa_f_reg[0]_0 ),
        .I3(p_0_in11_in),
        .I4(hlfa_e_dif0_carry_n_7),
        .I5(p_0_in14_in),
        .O(\hlfa_e[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEFEEEFEEEFE)) 
    \hlfa_e[4]_i_3 
       (.I0(\hlfa_e[1]_i_5_n_0 ),
        .I1(hctl_load_b),
        .I2(\hlfa_f[11]_i_3_n_0 ),
        .I3(hlfa_r_0[20]),
        .I4(hlfa_r_0[18]),
        .I5(hlfa_r_0[19]),
        .O(\hlfa_e[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF0FE)) 
    \hlfa_e[4]_i_4 
       (.I0(hlfa_r_0[18]),
        .I1(\hlfa_e[5]_i_13_n_0 ),
        .I2(hlfa_r_0[19]),
        .I3(\hlfa_f[15]_i_12_n_0 ),
        .O(\hlfa_e[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDEDEDEDECCCCCFFC)) 
    \hlfa_e[4]_i_5 
       (.I0(\hlfa_e[4]_i_8_n_0 ),
        .I1(\hlfa_e_reg[4]_6 ),
        .I2(hlfa_r_0[20]),
        .I3(hlfa_r_0[19]),
        .I4(\hlfa_e_reg[4]_7 ),
        .I5(\hlfa_e[4]_i_11_n_0 ),
        .O(\hlfa_e[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \hlfa_e[4]_i_6 
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_r_0[17]),
        .I2(hlfa_r_0[16]),
        .I3(hlfa_r_0[19]),
        .I4(hlfa_r_0[18]),
        .O(\hlfa_e[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9555)) 
    \hlfa_e[4]_i_7 
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_r_0[19]),
        .I2(hlfa_r_0[18]),
        .I3(hlfa_r_0[17]),
        .O(\hlfa_e[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \hlfa_e[4]_i_8 
       (.I0(\hlfa_e[3]_i_8_n_0 ),
        .I1(\hlfa_e_reg[3]_0 ),
        .I2(hlfa_r_0[19]),
        .O(\hlfa_e[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfa_e[5]_i_10 
       (.I0(hlfa_r_0[18]),
        .I1(hlfa_r_0[17]),
        .O(\hlfa_e[5]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfa_e[5]_i_11 
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_r_0[19]),
        .O(\hlfa_e[5]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0054)) 
    \hlfa_e[5]_i_12 
       (.I0(\hlfa_f_reg[0]_0 ),
        .I1(p_0_in11_in),
        .I2(hlfa_e_dif0_carry_n_7),
        .I3(p_0_in14_in),
        .O(\hlfa_e[5]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF5F5C0C4)) 
    \hlfa_e[5]_i_13 
       (.I0(p_0_in3_in),
        .I1(hlfa_r_0[16]),
        .I2(\hlfa_f_reg[15]_1 ),
        .I3(p_0_in1_in),
        .I4(hlfa_r_0[17]),
        .O(\hlfa_e[5]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h10004500)) 
    \hlfa_e[5]_i_14 
       (.I0(\hlfa_f_reg[0]_0 ),
        .I1(hlfa_r_0[20]),
        .I2(\hlfa_e[4]_i_8_n_0 ),
        .I3(\hlfa_e_reg[4]_0 ),
        .I4(hlfa_r_0[21]),
        .O(\hlfa_e[5]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \hlfa_e[5]_i_15 
       (.I0(\hlfa_e_reg[4]_0 ),
        .I1(\hlfa_e_reg[3]_0 ),
        .I2(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_e[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA20A02)) 
    \hlfa_e[5]_i_2 
       (.I0(\hlfa_e_reg[2]_1 ),
        .I1(\hlfa_e[5]_i_4_n_0 ),
        .I2(\hlfa_e[5]_i_5_n_0 ),
        .I3(\hlfa_e[5]_i_6_n_0 ),
        .I4(\hlfa_e[5]_i_7_n_0 ),
        .I5(\hlfa_e[5]_i_8_n_0 ),
        .O(\hlfa_e[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE2222EEEFFFFFFFF)) 
    \hlfa_e[5]_i_4 
       (.I0(\hlfa_e[5]_i_9_n_0 ),
        .I1(\hlfa_f[14]_i_4_n_0 ),
        .I2(\hlfa_e[5]_i_10_n_0 ),
        .I3(\hlfa_e[5]_i_11_n_0 ),
        .I4(hlfa_r_0[21]),
        .I5(\hlfa_e[5]_i_12_n_0 ),
        .O(\hlfa_e[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hCCCD)) 
    \hlfa_e[5]_i_5 
       (.I0(p_0_in14_in),
        .I1(\hlfa_f_reg[0]_0 ),
        .I2(p_0_in11_in),
        .I3(hlfa_e_dif0_carry_n_7),
        .O(\hlfa_e[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0444444440000000)) 
    \hlfa_e[5]_i_6 
       (.I0(\hlfa_f_reg[0]_0 ),
        .I1(p_0_in14_in),
        .I2(hlfa_r_0[19]),
        .I3(hlfa_r_0[20]),
        .I4(hlfa_r_0[18]),
        .I5(hlfa_r_0[21]),
        .O(\hlfa_e[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA55AAA9)) 
    \hlfa_e[5]_i_7 
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_r_0[18]),
        .I2(\hlfa_e[5]_i_13_n_0 ),
        .I3(hlfa_r_0[19]),
        .I4(\hlfa_f[15]_i_12_n_0 ),
        .I5(hlfa_r_0[20]),
        .O(\hlfa_e[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEEEEAAA)) 
    \hlfa_e[5]_i_8 
       (.I0(\hlfa_e[5]_i_14_n_0 ),
        .I1(\hlfa_e[5]_i_15_n_0 ),
        .I2(hlfa_r_0[20]),
        .I3(hlfa_r_0[19]),
        .I4(hlfa_r_0[21]),
        .I5(\hlfa_e_reg[5]_1 ),
        .O(\hlfa_e[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9555555555555555)) 
    \hlfa_e[5]_i_9 
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_r_0[17]),
        .I2(hlfa_r_0[16]),
        .I3(hlfa_r_0[19]),
        .I4(hlfa_r_0[20]),
        .I5(hlfa_r_0[18]),
        .O(\hlfa_e[5]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfa_e_dif0_carry
       (.CI(\<const0> ),
        .CO({hlfa_e_dif0_carry_n_0,hlfa_e_dif0_carry_n_1,hlfa_e_dif0_carry_n_2,hlfa_e_dif0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({hlfa_e_dif0_carry_i_1_n_0,hlfa_e_dif0_carry_i_2_n_0,hlfa_e_dif0_carry_i_3_n_0,hlfa_e_dif0_carry_i_4_n_0}),
        .O({\hlfa_e_reg[3]_0 ,p_0_in14_in,p_0_in11_in,hlfa_e_dif0_carry_n_7}),
        .S({hlfa_e_dif0_carry_i_5_n_0,hlfa_e_dif0_carry_i_6_n_0,hlfa_e_dif0_carry_i_7_n_0,hlfa_e_dif0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfa_e_dif0_carry__0
       (.CI(hlfa_e_dif0_carry_n_0),
        .CO(hlfa_e_dif0_carry__0_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,hlfa_e_dif0_carry__0_i_1_n_0}),
        .O({hlfa_e_dif0_carry__0_n_6,\hlfa_e_reg[4]_0 }),
        .S({\<const0> ,\<const0> ,hlfa_e_dif0_carry__0_i_2_n_0,hlfa_e_dif0_carry__0_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    hlfa_e_dif0_carry__0_i_1
       (.I0(hlfa_r_0[20]),
        .O(hlfa_e_dif0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAA9AAA99999999)) 
    hlfa_e_dif0_carry__0_i_2
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_e_dif0_carry__0_i_4_n_0),
        .I2(ccmd_f[1]),
        .I3(\ccmd_f_reg[4]_0 ),
        .I4(hlfa_e_dif0_carry__0_i_5_n_0),
        .I5(hlfa_e_dif0_carry__0_1[5]),
        .O(hlfa_e_dif0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFAA2A000055D5)) 
    hlfa_e_dif0_carry__0_i_3
       (.I0(hlfa_e_dif0_carry__0_1[4]),
        .I1(ccmd_f[1]),
        .I2(\ccmd_f_reg[4]_0 ),
        .I3(hlfa_e_dif0_carry__0_i_5_n_0),
        .I4(hlfa_e_dif0_carry__0_i_4_n_0),
        .I5(hlfa_r_0[20]),
        .O(hlfa_e_dif0_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000400)) 
    hlfa_e_dif0_carry__0_i_4
       (.I0(ccmd_f[0]),
        .I1(ccmd_f[3]),
        .I2(ccmd_f[2]),
        .I3(\ccmd_f_reg[4]_0 ),
        .I4(ccmd_f[1]),
        .O(hlfa_e_dif0_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    hlfa_e_dif0_carry__0_i_5
       (.I0(ccmd_f[2]),
        .I1(ccmd_f[3]),
        .I2(ccmd_f[0]),
        .O(hlfa_e_dif0_carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hlfa_e_dif0_carry_i_1
       (.I0(hlfa_r_0[19]),
        .O(hlfa_e_dif0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    hlfa_e_dif0_carry_i_2
       (.I0(hlfa_r_0[18]),
        .O(hlfa_e_dif0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hDFFFFBFF00000000)) 
    hlfa_e_dif0_carry_i_3
       (.I0(ccmd_f[0]),
        .I1(ccmd_f[3]),
        .I2(ccmd_f[2]),
        .I3(\ccmd_f_reg[4]_0 ),
        .I4(ccmd_f[1]),
        .I5(hlfa_e_dif0_carry__0_1[1]),
        .O(hlfa_e_dif0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hDFFFFBFF00000000)) 
    hlfa_e_dif0_carry_i_4
       (.I0(ccmd_f[0]),
        .I1(ccmd_f[3]),
        .I2(ccmd_f[2]),
        .I3(\ccmd_f_reg[4]_0 ),
        .I4(ccmd_f[1]),
        .I5(hlfa_e_dif0_carry__0_1[0]),
        .O(hlfa_e_dif0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    hlfa_e_dif0_carry_i_5
       (.I0(hlfa_e_dif0_carry__0_1[3]),
        .I1(hlfa_e_dif0_carry_i_9_n_0),
        .I2(hlfa_r_0[19]),
        .O(hlfa_e_dif0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    hlfa_e_dif0_carry_i_6
       (.I0(hlfa_e_dif0_carry__0_1[2]),
        .I1(hlfa_e_dif0_carry_i_9_n_0),
        .I2(hlfa_r_0[18]),
        .O(hlfa_e_dif0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h87)) 
    hlfa_e_dif0_carry_i_7
       (.I0(hlfa_e_dif0_carry__0_1[1]),
        .I1(hlfa_e_dif0_carry_i_9_n_0),
        .I2(hlfa_r_0[17]),
        .O(hlfa_e_dif0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h87)) 
    hlfa_e_dif0_carry_i_8
       (.I0(hlfa_e_dif0_carry__0_1[0]),
        .I1(hlfa_e_dif0_carry_i_9_n_0),
        .I2(hlfa_r_0[16]),
        .O(hlfa_e_dif0_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hFF7FFBFF)) 
    hlfa_e_dif0_carry_i_9
       (.I0(ccmd_f[1]),
        .I1(\ccmd_f_reg[4]_0 ),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[3]),
        .I4(ccmd_f[0]),
        .O(hlfa_e_dif0_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfa_e_difl0_carry
       (.CI(\<const0> ),
        .CO({hlfa_e_difl0_carry_n_0,hlfa_e_difl0_carry_n_1,hlfa_e_difl0_carry_n_2,hlfa_e_difl0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI(hlfa_r_0[19:16]),
        .O({\hlfa_e_reg[3]_1 [1],p_0_in3_in,p_0_in1_in,\hlfa_e_reg[3]_1 [0]}),
        .S({hlfa_e_difl0_carry_i_1_n_0,hlfa_e_difl0_carry_i_2_n_0,hlfa_e_difl0_carry_i_3_n_0,hlfa_e_difl0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfa_e_difl0_carry__0
       (.CI(hlfa_e_difl0_carry_n_0),
        .CO(hlfa_e_difl0_carry__0_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,hlfa_r_0[20]}),
        .O({hlfa_e_difl0_carry__0_n_6,\hlfa_e_reg[4]_1 }),
        .S({\<const0> ,\<const0> ,hlfa_e_difl0_carry__0_i_1_n_0,hlfa_e_difl0_carry__0_i_2_n_0}));
  LUT6 #(
    .INIT(64'hAAAA9AAA99999999)) 
    hlfa_e_difl0_carry__0_i_1
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_e_dif0_carry__0_i_4_n_0),
        .I2(ccmd_f[1]),
        .I3(\ccmd_f_reg[4]_0 ),
        .I4(hlfa_e_dif0_carry__0_i_5_n_0),
        .I5(hlfa_e_dif0_carry__0_1[5]),
        .O(hlfa_e_difl0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA99995999)) 
    hlfa_e_difl0_carry__0_i_2
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_e_dif0_carry__0_1[4]),
        .I2(ccmd_f[1]),
        .I3(\ccmd_f_reg[4]_0 ),
        .I4(hlfa_e_dif0_carry__0_i_5_n_0),
        .I5(hlfa_e_dif0_carry__0_i_4_n_0),
        .O(hlfa_e_difl0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    hlfa_e_difl0_carry_i_1
       (.I0(hlfa_r_0[19]),
        .I1(hlfa_e_dif0_carry__0_1[3]),
        .I2(hlfa_e_dif0_carry_i_9_n_0),
        .O(hlfa_e_difl0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    hlfa_e_difl0_carry_i_2
       (.I0(hlfa_r_0[18]),
        .I1(hlfa_e_dif0_carry__0_1[2]),
        .I2(hlfa_e_dif0_carry_i_9_n_0),
        .O(hlfa_e_difl0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h95)) 
    hlfa_e_difl0_carry_i_3
       (.I0(hlfa_r_0[17]),
        .I1(hlfa_e_dif0_carry__0_1[1]),
        .I2(hlfa_e_dif0_carry_i_9_n_0),
        .O(hlfa_e_difl0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h95)) 
    hlfa_e_difl0_carry_i_4
       (.I0(hlfa_r_0[16]),
        .I1(hlfa_e_dif0_carry__0_1[0]),
        .I2(hlfa_e_dif0_carry_i_9_n_0),
        .O(hlfa_e_difl0_carry_i_4_n_0));
  FDRE \hlfa_e_reg[0] 
       (.C(clk),
        .CE(\hlfa_e_reg[5]_2 ),
        .D(\hlfa_e[0]_i_1_n_0 ),
        .Q(hlfa_r_0[16]),
        .R(SR));
  FDRE \hlfa_e_reg[1] 
       (.C(clk),
        .CE(\hlfa_e_reg[5]_2 ),
        .D(\hlfa_e[1]_i_1_n_0 ),
        .Q(hlfa_r_0[17]),
        .R(SR));
  FDRE \hlfa_e_reg[2] 
       (.C(clk),
        .CE(\hlfa_e_reg[5]_2 ),
        .D(\hlfa_e[2]_i_1_n_0 ),
        .Q(hlfa_r_0[18]),
        .R(SR));
  FDRE \hlfa_e_reg[3] 
       (.C(clk),
        .CE(\hlfa_e_reg[5]_2 ),
        .D(\hlfa_e[3]_i_1_n_0 ),
        .Q(hlfa_r_0[19]),
        .R(SR));
  FDRE \hlfa_e_reg[4] 
       (.C(clk),
        .CE(\hlfa_e_reg[5]_2 ),
        .D(\hlfa_e[4]_i_1_n_0 ),
        .Q(hlfa_r_0[20]),
        .R(SR));
  FDRE \hlfa_e_reg[5] 
       (.C(clk),
        .CE(\hlfa_e_reg[5]_2 ),
        .D(\hlfa_e[5]_i_2_n_0 ),
        .Q(hlfa_r_0[21]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000FE0000)) 
    \hlfa_f[0]_i_1 
       (.I0(\hlfa_f[0]_i_2_n_0 ),
        .I1(\hlfa_e_reg[4]_0 ),
        .I2(\hlfa_e_reg[3]_0 ),
        .I3(\hlfa_f_reg[0]_0 ),
        .I4(\hlfa_f_reg[0]_1 ),
        .I5(\hlfa_f[0]_i_4_n_0 ),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \hlfa_f[0]_i_10 
       (.I0(hlfa_r_0[9]),
        .I1(hlfa_r_0[12]),
        .I2(hlfa_r_0[13]),
        .I3(hlfa_r_0[15]),
        .O(\hlfa_f[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F8F8FFFFF8F8)) 
    \hlfa_f[0]_i_2 
       (.I0(hlfa_r_0[2]),
        .I1(p_0_in11_in),
        .I2(\hlfa_f[0]_i_5_n_0 ),
        .I3(hlfa_r_0[4]),
        .I4(p_0_in14_in),
        .I5(\hlfa_f[0]_i_6_n_0 ),
        .O(\hlfa_f[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8F0000AF00)) 
    \hlfa_f[0]_i_4 
       (.I0(\hlfa_f[0]_i_7_n_0 ),
        .I1(\hlfa_f[0]_i_8_n_0 ),
        .I2(hlfa_e_dif0_carry_i_9_n_0),
        .I3(\hlfa_e_reg[3]_0 ),
        .I4(hlfa_r_0[8]),
        .I5(\hlfa_e_reg[4]_0 ),
        .O(\hlfa_f[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA8ECA800)) 
    \hlfa_f[0]_i_5 
       (.I0(hlfa_e_dif0_carry_i_9_n_0),
        .I1(hlfa_r_0[1]),
        .I2(hlfa_r_0[0]),
        .I3(p_0_in11_in),
        .I4(hlfa_e_dif0_carry_n_7),
        .O(\hlfa_f[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \hlfa_f[0]_i_6 
       (.I0(hlfa_r_0[3]),
        .I1(hlfa_r_0[2]),
        .I2(hlfa_r_0[1]),
        .I3(hlfa_r_0[0]),
        .I4(hlfa_e_dif0_carry_i_9_n_0),
        .O(\hlfa_f[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \hlfa_f[0]_i_7 
       (.I0(\hlfa_f[0]_i_9_n_0 ),
        .I1(hlfa_r_0[5]),
        .I2(hlfa_r_0[4]),
        .I3(hlfa_r_0[7]),
        .I4(hlfa_r_0[6]),
        .O(\hlfa_f[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \hlfa_f[0]_i_8 
       (.I0(hlfa_r_0[10]),
        .I1(hlfa_r_0[8]),
        .I2(hlfa_r_0[11]),
        .I3(hlfa_r_0[14]),
        .I4(\hlfa_f[0]_i_10_n_0 ),
        .O(\hlfa_f[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \hlfa_f[0]_i_9 
       (.I0(hlfa_r_0[0]),
        .I1(hlfa_r_0[1]),
        .I2(hlfa_r_0[2]),
        .I3(hlfa_r_0[3]),
        .O(\hlfa_f[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \hlfa_f[10]_i_1 
       (.I0(\hlfa_f_reg[4]_1 ),
        .I1(abus[8]),
        .I2(\hlfa_f[10]_i_2_n_0 ),
        .I3(hlfa_r_0[14]),
        .I4(\hlfa_f[11]_i_3_n_0 ),
        .I5(\hlfa_f[10]_i_3_n_0 ),
        .O(p_1_in[10]));
  LUT3 #(
    .INIT(8'hEF)) 
    \hlfa_f[10]_i_2 
       (.I0(\hlfa_e[1]_i_5_n_0 ),
        .I1(hctl_load_b),
        .I2(rst_n),
        .O(\hlfa_f[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEEAAFFAAEEAAF0)) 
    \hlfa_f[10]_i_3 
       (.I0(\hlfa_f[10]_i_4_n_0 ),
        .I1(hlfa_r_0[2]),
        .I2(\hlfa_f[10]_i_5_n_0 ),
        .I3(\hlfa_f[13]_i_6_n_0 ),
        .I4(\hlfa_f[15]_i_12_n_0 ),
        .I5(\hlfa_f[10]_i_6_n_0 ),
        .O(\hlfa_f[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0B080808)) 
    \hlfa_f[10]_i_4 
       (.I0(hlfa_r_0[12]),
        .I1(p_0_in11_in),
        .I2(\hlfa_f_reg[0]_0 ),
        .I3(hlfa_e_dif0_carry_n_7),
        .I4(hlfa_r_0[11]),
        .O(\hlfa_f[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF808FB08)) 
    \hlfa_f[10]_i_5 
       (.I0(hlfa_r_0[6]),
        .I1(p_0_in3_in),
        .I2(\hlfa_f_reg[15]_1 ),
        .I3(hlfa_r_0[9]),
        .I4(p_0_in1_in),
        .O(\hlfa_f[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \hlfa_f[10]_i_6 
       (.I0(hlfa_r_0[8]),
        .I1(p_0_in1_in),
        .I2(\hlfa_f_reg[15]_1 ),
        .I3(p_0_in3_in),
        .O(\hlfa_f[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444F44)) 
    \hlfa_f[11]_i_1 
       (.I0(\hlfa_f_reg[4]_1 ),
        .I1(abus[9]),
        .I2(\hlfa_f[11]_i_2_n_0 ),
        .I3(\hlfa_f[11]_i_3_n_0 ),
        .I4(\hlfa_f[11]_i_4_n_0 ),
        .I5(\hlfa_f[11]_i_5_n_0 ),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'hFDFFFDFD)) 
    \hlfa_f[11]_i_2 
       (.I0(rst_n),
        .I1(hctl_load_b),
        .I2(\hlfa_e[1]_i_5_n_0 ),
        .I3(hlfa_r_0[15]),
        .I4(\hlfa_f[11]_i_3_n_0 ),
        .O(\hlfa_f[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[11]_i_3 
       (.I0(p_0_in14_in),
        .I1(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_f[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000D000F000D00)) 
    \hlfa_f[11]_i_4 
       (.I0(hlfa_r_0[10]),
        .I1(\hlfa_f[15]_i_8_n_0 ),
        .I2(\hlfa_f[11]_i_6_n_0 ),
        .I3(\hlfa_f[12]_i_7_n_0 ),
        .I4(\hlfa_f[15]_i_9_n_0 ),
        .I5(hlfa_r_0[7]),
        .O(\hlfa_f[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF232323FF23)) 
    \hlfa_f[11]_i_5 
       (.I0(hlfa_r_0[3]),
        .I1(\hlfa_f[13]_i_6_n_0 ),
        .I2(\hlfa_f[15]_i_12_n_0 ),
        .I3(\hlfa_f[11]_i_7_n_0 ),
        .I4(\hlfa_f[14]_i_4_n_0 ),
        .I5(hlfa_r_0[13]),
        .O(\hlfa_f[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \hlfa_f[11]_i_6 
       (.I0(hlfa_r_0[9]),
        .I1(p_0_in1_in),
        .I2(\hlfa_f_reg[15]_1 ),
        .I3(p_0_in3_in),
        .O(\hlfa_f[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hlfa_f[11]_i_7 
       (.I0(\hlfa_f_reg[0]_0 ),
        .I1(hlfa_e_dif0_carry_n_7),
        .I2(hlfa_r_0[12]),
        .O(\hlfa_f[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h11110100FFFFFFFF)) 
    \hlfa_f[12]_i_1 
       (.I0(\hlfa_f[14]_i_6_n_0 ),
        .I1(\hlfa_f[12]_i_2_n_0 ),
        .I2(\hlfa_f[12]_i_3_n_0 ),
        .I3(hlfa_r_0[10]),
        .I4(\hlfa_f[12]_i_4_n_0 ),
        .I5(\hlfa_f_reg[4]_1 ),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'h0000A0A8A0A8A0A8)) 
    \hlfa_f[12]_i_2 
       (.I0(\hlfa_f[12]_i_6_n_0 ),
        .I1(\hlfa_f[15]_i_12_n_0 ),
        .I2(\hlfa_f[13]_i_6_n_0 ),
        .I3(hlfa_r_0[4]),
        .I4(\hlfa_f[14]_i_4_n_0 ),
        .I5(hlfa_r_0[14]),
        .O(\hlfa_f[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \hlfa_f[12]_i_3 
       (.I0(p_0_in3_in),
        .I1(\hlfa_f_reg[15]_1 ),
        .I2(p_0_in1_in),
        .O(\hlfa_f[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB3BFB3B3)) 
    \hlfa_f[12]_i_4 
       (.I0(hlfa_r_0[8]),
        .I1(\hlfa_f[12]_i_7_n_0 ),
        .I2(\hlfa_f[15]_i_9_n_0 ),
        .I3(\hlfa_f[15]_i_8_n_0 ),
        .I4(hlfa_r_0[11]),
        .O(\hlfa_f[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \hlfa_f[12]_i_6 
       (.I0(hlfa_e_dif0_carry_n_7),
        .I1(\hlfa_f_reg[0]_0 ),
        .I2(p_0_in11_in),
        .I3(hlfa_r_0[13]),
        .O(\hlfa_f[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAB00AB00AB00ABAB)) 
    \hlfa_f[12]_i_7 
       (.I0(\hlfa_f_reg[15]_1 ),
        .I1(\hlfa_e_reg[4]_1 ),
        .I2(\hlfa_e_reg[3]_1 [1]),
        .I3(\hlfa_f_reg[0]_0 ),
        .I4(p_0_in11_in),
        .I5(hlfa_e_dif0_carry_n_7),
        .O(\hlfa_f[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \hlfa_f[12]_i_8 
       (.I0(abus[13]),
        .I1(abus[12]),
        .I2(abus[14]),
        .I3(abus[11]),
        .I4(abus[10]),
        .I5(rst_n),
        .O(abus_13_sn_1));
  LUT6 #(
    .INIT(64'h4000404044444444)) 
    \hlfa_f[13]_i_1 
       (.I0(hctl_load_b),
        .I1(rst_n),
        .I2(\hlfa_f[13]_i_2_n_0 ),
        .I3(\hlfa_f[13]_i_3_n_0 ),
        .I4(\hlfa_f[13]_i_4_n_0 ),
        .I5(\hlfa_f[13]_i_5_n_0 ),
        .O(p_1_in[13]));
  LUT4 #(
    .INIT(16'hCCCD)) 
    \hlfa_f[13]_i_2 
       (.I0(p_0_in14_in),
        .I1(\hlfa_f_reg[0]_0 ),
        .I2(\hlfa_e_reg[4]_0 ),
        .I3(\hlfa_e_reg[3]_0 ),
        .O(\hlfa_f[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \hlfa_f[13]_i_3 
       (.I0(hlfa_r_0[15]),
        .I1(\hlfa_f[14]_i_4_n_0 ),
        .I2(\hlfa_f[14]_i_5_n_0 ),
        .I3(hlfa_r_0[14]),
        .O(\hlfa_f[13]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \hlfa_f[13]_i_4 
       (.I0(hlfa_r_0[5]),
        .I1(\hlfa_f[13]_i_6_n_0 ),
        .I2(\hlfa_f[15]_i_12_n_0 ),
        .O(\hlfa_f[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h303F3535FFFFFFFF)) 
    \hlfa_f[13]_i_5 
       (.I0(hlfa_r_0[12]),
        .I1(hlfa_r_0[9]),
        .I2(\hlfa_f[15]_i_9_n_0 ),
        .I3(hlfa_r_0[11]),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(\hlfa_f_reg[4]_2 ),
        .O(\hlfa_f[13]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \hlfa_f[13]_i_6 
       (.I0(hlfa_e_dif0_carry_n_7),
        .I1(p_0_in11_in),
        .I2(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_f[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F000202)) 
    \hlfa_f[14]_i_1 
       (.I0(\hlfa_f[14]_i_2_n_0 ),
        .I1(\hlfa_f[14]_i_3_n_0 ),
        .I2(\hlfa_f[14]_i_4_n_0 ),
        .I3(hlfa_r_0[15]),
        .I4(\hlfa_f[14]_i_5_n_0 ),
        .I5(\hlfa_f[14]_i_6_n_0 ),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'hFFFEEEFE)) 
    \hlfa_f[14]_i_2 
       (.I0(\hlfa_f[15]_i_12_n_0 ),
        .I1(\hlfa_f[15]_i_9_n_0 ),
        .I2(hlfa_r_0[13]),
        .I3(\hlfa_f[15]_i_8_n_0 ),
        .I4(hlfa_r_0[12]),
        .O(\hlfa_f[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4474)) 
    \hlfa_f[14]_i_3 
       (.I0(hlfa_r_0[6]),
        .I1(\hlfa_f[15]_i_12_n_0 ),
        .I2(\hlfa_f[15]_i_9_n_0 ),
        .I3(hlfa_r_0[10]),
        .O(\hlfa_f[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[14]_i_4 
       (.I0(p_0_in11_in),
        .I1(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_f[14]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[14]_i_5 
       (.I0(hlfa_e_dif0_carry_n_7),
        .I1(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_f[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3F3F3FFFFFFFB)) 
    \hlfa_f[14]_i_6 
       (.I0(p_0_in14_in),
        .I1(rst_n),
        .I2(hctl_load_b),
        .I3(\hlfa_e_reg[3]_0 ),
        .I4(\hlfa_e_reg[4]_0 ),
        .I5(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_f[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFF2FFFF)) 
    \hlfa_f[15]_i_1 
       (.I0(\hlfa_e_reg[3]_1 [0]),
        .I1(\hlfa_f_reg[15]_1 ),
        .I2(\hlfa_f[15]_i_10 ),
        .I3(hctl_load_b),
        .I4(rst_n),
        .O(\hlfa_f[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \hlfa_f[15]_i_11 
       (.I0(\hlfa_f_reg[0]_0 ),
        .I1(\hlfa_e_reg[4]_0 ),
        .I2(\hlfa_e_reg[3]_0 ),
        .I3(hlfa_r_0[7]),
        .O(\hlfa_f[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \hlfa_f[15]_i_12 
       (.I0(\hlfa_e_reg[3]_1 [1]),
        .I1(\hlfa_e_reg[4]_1 ),
        .I2(\hlfa_f_reg[15]_1 ),
        .O(\hlfa_f[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \hlfa_f[15]_i_2 
       (.I0(\hlfa_f_reg[0]_1 ),
        .I1(\hlfa_f[15]_i_10 ),
        .I2(hlfa_r_0[14]),
        .I3(\hlfa_f[15]_i_6_n_0 ),
        .I4(hlfa_r_0[13]),
        .I5(\hlfa_f[15]_i_7_n_0 ),
        .O(p_1_in[15]));
  LUT3 #(
    .INIT(8'hEF)) 
    \hlfa_f[15]_i_4 
       (.I0(\hlfa_f[15]_i_8_n_0 ),
        .I1(\hlfa_f[15]_i_9_n_0 ),
        .I2(\hlfa_f_reg[4]_2 ),
        .O(\hlfa_f[15]_i_10 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \hlfa_f[15]_i_6 
       (.I0(\hlfa_f[15]_i_8_n_0 ),
        .I1(p_0_in3_in),
        .I2(\hlfa_f_reg[4]_2 ),
        .O(\hlfa_f[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDD0FFFFFFF)) 
    \hlfa_f[15]_i_7 
       (.I0(\hlfa_e[5]_i_5_n_0 ),
        .I1(\hlfa_f[15]_i_11_n_0 ),
        .I2(hlfa_r_0[11]),
        .I3(\hlfa_f[15]_i_9_n_0 ),
        .I4(\hlfa_f_reg[0]_0 ),
        .I5(\hlfa_f[15]_i_12_n_0 ),
        .O(\hlfa_f[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[15]_i_8 
       (.I0(p_0_in1_in),
        .I1(\hlfa_f_reg[15]_1 ),
        .O(\hlfa_f[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[15]_i_9 
       (.I0(p_0_in3_in),
        .I1(\hlfa_f_reg[15]_1 ),
        .O(\hlfa_f[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4044404044444444)) 
    \hlfa_f[1]_i_1 
       (.I0(hctl_load_b),
        .I1(rst_n),
        .I2(\hlfa_f[1]_i_2_n_0 ),
        .I3(\hlfa_f[15]_i_10 ),
        .I4(hlfa_r_0[0]),
        .I5(\hlfa_f[1]_i_3_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h000F000800000008)) 
    \hlfa_f[1]_i_2 
       (.I0(p_0_in14_in),
        .I1(hlfa_r_0[5]),
        .I2(\hlfa_f_reg[0]_0 ),
        .I3(\hlfa_e_reg[4]_0 ),
        .I4(\hlfa_e_reg[3]_0 ),
        .I5(hlfa_r_0[9]),
        .O(\hlfa_f[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h07F7FFFF)) 
    \hlfa_f[1]_i_3 
       (.I0(\hlfa_f[14]_i_5_n_0 ),
        .I1(hlfa_r_0[2]),
        .I2(\hlfa_f[14]_i_4_n_0 ),
        .I3(hlfa_r_0[3]),
        .I4(\hlfa_f[13]_i_2_n_0 ),
        .O(\hlfa_f[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4777FFFF47770000)) 
    \hlfa_f[2]_i_2 
       (.I0(hlfa_r_0[4]),
        .I1(\hlfa_f[14]_i_4_n_0 ),
        .I2(hlfa_r_0[3]),
        .I3(\hlfa_f[14]_i_5_n_0 ),
        .I4(\hlfa_f[13]_i_2_n_0 ),
        .I5(\hlfa_f[2]_i_4_n_0 ),
        .O(\hlfa_f_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h04F4000004040000)) 
    \hlfa_f[2]_i_3 
       (.I0(\hlfa_f[15]_i_9_n_0 ),
        .I1(hlfa_r_0[1]),
        .I2(\hlfa_f[15]_i_8_n_0 ),
        .I3(p_0_in3_in),
        .I4(\hlfa_f_reg[4]_2 ),
        .I5(hlfa_r_0[0]),
        .O(\hlfa_f_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h00F4FFF7)) 
    \hlfa_f[2]_i_4 
       (.I0(hlfa_r_0[10]),
        .I1(\hlfa_e_reg[3]_0 ),
        .I2(\hlfa_e_reg[4]_0 ),
        .I3(\hlfa_f_reg[0]_0 ),
        .I4(hlfa_r_0[6]),
        .O(\hlfa_f[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFD00FFFFFD00FD00)) 
    \hlfa_f[3]_i_1 
       (.I0(\hlfa_f[3]_i_2_n_0 ),
        .I1(\hlfa_f[3]_i_3_n_0 ),
        .I2(\hlfa_f[3]_i_4_n_0 ),
        .I3(\hlfa_f_reg[0]_1 ),
        .I4(\hlfa_f_reg[4]_1 ),
        .I5(abus[1]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hDDDDDFFFFFFFDFFF)) 
    \hlfa_f[3]_i_2 
       (.I0(\hlfa_f[13]_i_2_n_0 ),
        .I1(\hlfa_f[12]_i_7_n_0 ),
        .I2(\hlfa_f[14]_i_5_n_0 ),
        .I3(hlfa_r_0[4]),
        .I4(\hlfa_f[14]_i_4_n_0 ),
        .I5(hlfa_r_0[5]),
        .O(\hlfa_f[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    \hlfa_f[3]_i_3 
       (.I0(\hlfa_f[15]_i_8_n_0 ),
        .I1(\hlfa_f[15]_i_9_n_0 ),
        .I2(\hlfa_f_reg[4]_2 ),
        .I3(hlfa_r_0[2]),
        .I4(\hlfa_f[3]_i_5_n_0 ),
        .O(\hlfa_f[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \hlfa_f[3]_i_4 
       (.I0(hlfa_r_0[1]),
        .I1(\hlfa_f_reg[4]_2 ),
        .I2(p_0_in3_in),
        .I3(\hlfa_f[15]_i_8_n_0 ),
        .O(\hlfa_f[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0032000200300000)) 
    \hlfa_f[3]_i_5 
       (.I0(p_0_in14_in),
        .I1(\hlfa_f_reg[0]_0 ),
        .I2(\hlfa_e_reg[3]_0 ),
        .I3(\hlfa_e_reg[4]_0 ),
        .I4(hlfa_r_0[11]),
        .I5(hlfa_r_0[7]),
        .O(\hlfa_f[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF4F44444444)) 
    \hlfa_f[4]_i_1 
       (.I0(\hlfa_f_reg[4]_1 ),
        .I1(abus[2]),
        .I2(\hlfa_f[4]_i_2_n_0 ),
        .I3(\hlfa_f[4]_i_3_n_0 ),
        .I4(\hlfa_f[4]_i_4_n_0 ),
        .I5(\hlfa_f_reg[0]_1 ),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'h07F7FFFF)) 
    \hlfa_f[4]_i_2 
       (.I0(\hlfa_f[14]_i_5_n_0 ),
        .I1(hlfa_r_0[5]),
        .I2(\hlfa_f[14]_i_4_n_0 ),
        .I3(hlfa_r_0[6]),
        .I4(\hlfa_f[13]_i_2_n_0 ),
        .O(\hlfa_f[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    \hlfa_f[4]_i_3 
       (.I0(\hlfa_f[15]_i_8_n_0 ),
        .I1(\hlfa_f[15]_i_9_n_0 ),
        .I2(\hlfa_f_reg[4]_2 ),
        .I3(hlfa_r_0[3]),
        .I4(\hlfa_f[4]_i_5_n_0 ),
        .O(\hlfa_f[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA008000800080)) 
    \hlfa_f[4]_i_4 
       (.I0(\hlfa_f_reg[4]_2 ),
        .I1(hlfa_r_0[2]),
        .I2(\hlfa_f[15]_i_8_n_0 ),
        .I3(p_0_in3_in),
        .I4(hlfa_r_0[0]),
        .I5(\hlfa_f[15]_i_9_n_0 ),
        .O(\hlfa_f[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000F000800000008)) 
    \hlfa_f[4]_i_5 
       (.I0(p_0_in14_in),
        .I1(hlfa_r_0[8]),
        .I2(\hlfa_f_reg[0]_0 ),
        .I3(\hlfa_e_reg[4]_0 ),
        .I4(\hlfa_e_reg[3]_0 ),
        .I5(hlfa_r_0[12]),
        .O(\hlfa_f[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFD00FFFFFD00FD00)) 
    \hlfa_f[5]_i_1 
       (.I0(\hlfa_f[5]_i_2_n_0 ),
        .I1(\hlfa_f[5]_i_3_n_0 ),
        .I2(\hlfa_f[5]_i_4_n_0 ),
        .I3(\hlfa_f_reg[0]_1 ),
        .I4(\hlfa_f_reg[4]_1 ),
        .I5(abus[3]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hDDDDDFFFFFFFDFFF)) 
    \hlfa_f[5]_i_2 
       (.I0(\hlfa_f[13]_i_2_n_0 ),
        .I1(\hlfa_f[12]_i_7_n_0 ),
        .I2(\hlfa_f[14]_i_5_n_0 ),
        .I3(hlfa_r_0[6]),
        .I4(\hlfa_f[14]_i_4_n_0 ),
        .I5(hlfa_r_0[7]),
        .O(\hlfa_f[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAACF0000AAC00000)) 
    \hlfa_f[5]_i_3 
       (.I0(hlfa_r_0[1]),
        .I1(hlfa_r_0[3]),
        .I2(\hlfa_f[15]_i_8_n_0 ),
        .I3(\hlfa_f[15]_i_9_n_0 ),
        .I4(\hlfa_f_reg[4]_2 ),
        .I5(hlfa_r_0[4]),
        .O(\hlfa_f[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0032000200300000)) 
    \hlfa_f[5]_i_4 
       (.I0(p_0_in14_in),
        .I1(\hlfa_f_reg[0]_0 ),
        .I2(\hlfa_e_reg[3]_0 ),
        .I3(\hlfa_e_reg[4]_0 ),
        .I4(hlfa_r_0[13]),
        .I5(hlfa_r_0[9]),
        .O(\hlfa_f[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF4F44444444)) 
    \hlfa_f[6]_i_1 
       (.I0(\hlfa_f_reg[4]_1 ),
        .I1(abus[4]),
        .I2(\hlfa_f[6]_i_2_n_0 ),
        .I3(\hlfa_f[6]_i_3_n_0 ),
        .I4(\hlfa_f[6]_i_4_n_0 ),
        .I5(\hlfa_f_reg[0]_1 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hDDDDDFFFFFFFDFFF)) 
    \hlfa_f[6]_i_2 
       (.I0(\hlfa_f[13]_i_2_n_0 ),
        .I1(\hlfa_f[12]_i_7_n_0 ),
        .I2(\hlfa_f[14]_i_5_n_0 ),
        .I3(hlfa_r_0[7]),
        .I4(\hlfa_f[14]_i_4_n_0 ),
        .I5(hlfa_r_0[8]),
        .O(\hlfa_f[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAACF0000AAC00000)) 
    \hlfa_f[6]_i_3 
       (.I0(hlfa_r_0[2]),
        .I1(hlfa_r_0[4]),
        .I2(\hlfa_f[15]_i_8_n_0 ),
        .I3(\hlfa_f[15]_i_9_n_0 ),
        .I4(\hlfa_f_reg[4]_2 ),
        .I5(hlfa_r_0[5]),
        .O(\hlfa_f[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0032000200300000)) 
    \hlfa_f[6]_i_4 
       (.I0(p_0_in14_in),
        .I1(\hlfa_f_reg[0]_0 ),
        .I2(\hlfa_e_reg[3]_0 ),
        .I3(\hlfa_e_reg[4]_0 ),
        .I4(hlfa_r_0[14]),
        .I5(hlfa_r_0[10]),
        .O(\hlfa_f[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4777FFFF47770000)) 
    \hlfa_f[7]_i_2 
       (.I0(hlfa_r_0[9]),
        .I1(\hlfa_f[14]_i_4_n_0 ),
        .I2(hlfa_r_0[8]),
        .I3(\hlfa_f[14]_i_5_n_0 ),
        .I4(\hlfa_f[13]_i_2_n_0 ),
        .I5(\hlfa_f[7]_i_4_n_0 ),
        .O(\hlfa_f_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hAACF0000AAC00000)) 
    \hlfa_f[7]_i_3 
       (.I0(hlfa_r_0[3]),
        .I1(hlfa_r_0[5]),
        .I2(\hlfa_f[15]_i_8_n_0 ),
        .I3(\hlfa_f[15]_i_9_n_0 ),
        .I4(\hlfa_f_reg[4]_2 ),
        .I5(hlfa_r_0[6]),
        .O(\hlfa_f_reg[3]_1 ));
  LUT5 #(
    .INIT(32'h5555F3F5)) 
    \hlfa_f[7]_i_4 
       (.I0(hlfa_r_0[11]),
        .I1(hlfa_r_0[15]),
        .I2(\hlfa_e_reg[4]_0 ),
        .I3(\hlfa_e_reg[3]_0 ),
        .I4(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_f[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4544FFFF45444544)) 
    \hlfa_f[8]_i_1 
       (.I0(\hlfa_f[8]_i_2_n_0 ),
        .I1(\hlfa_f[11]_i_3_n_0 ),
        .I2(\hlfa_f[8]_i_3_n_0 ),
        .I3(\hlfa_f[8]_i_4_n_0 ),
        .I4(\hlfa_f_reg[4]_1 ),
        .I5(abus[6]),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hFDFFFDFD)) 
    \hlfa_f[8]_i_2 
       (.I0(rst_n),
        .I1(hctl_load_b),
        .I2(\hlfa_e[1]_i_5_n_0 ),
        .I3(hlfa_r_0[12]),
        .I4(\hlfa_f[11]_i_3_n_0 ),
        .O(\hlfa_f[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000D000F000D00)) 
    \hlfa_f[8]_i_3 
       (.I0(hlfa_r_0[7]),
        .I1(\hlfa_f[15]_i_8_n_0 ),
        .I2(\hlfa_f[8]_i_5_n_0 ),
        .I3(\hlfa_f[12]_i_7_n_0 ),
        .I4(\hlfa_f[15]_i_9_n_0 ),
        .I5(hlfa_r_0[4]),
        .O(\hlfa_f[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0D0D0DFF0D)) 
    \hlfa_f[8]_i_4 
       (.I0(\hlfa_f[15]_i_12_n_0 ),
        .I1(hlfa_r_0[0]),
        .I2(\hlfa_f[13]_i_6_n_0 ),
        .I3(\hlfa_f[8]_i_6_n_0 ),
        .I4(\hlfa_f[14]_i_4_n_0 ),
        .I5(hlfa_r_0[10]),
        .O(\hlfa_f[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \hlfa_f[8]_i_5 
       (.I0(hlfa_r_0[6]),
        .I1(p_0_in1_in),
        .I2(\hlfa_f_reg[15]_1 ),
        .I3(p_0_in3_in),
        .O(\hlfa_f[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hlfa_f[8]_i_6 
       (.I0(\hlfa_f_reg[0]_0 ),
        .I1(hlfa_e_dif0_carry_n_7),
        .I2(hlfa_r_0[9]),
        .O(\hlfa_f[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \hlfa_f[9]_i_1 
       (.I0(\hlfa_f_reg[4]_1 ),
        .I1(abus[7]),
        .I2(\hlfa_f[10]_i_2_n_0 ),
        .I3(hlfa_r_0[13]),
        .I4(\hlfa_f[11]_i_3_n_0 ),
        .I5(\hlfa_f[9]_i_2_n_0 ),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'hAEA0AEAFAEAFAEAF)) 
    \hlfa_f[9]_i_2 
       (.I0(\hlfa_f[9]_i_3_n_0 ),
        .I1(hlfa_r_0[1]),
        .I2(\hlfa_f[13]_i_6_n_0 ),
        .I3(\hlfa_f[15]_i_12_n_0 ),
        .I4(\hlfa_f[9]_i_4_n_0 ),
        .I5(\hlfa_f[9]_i_5_n_0 ),
        .O(\hlfa_f[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0B080808)) 
    \hlfa_f[9]_i_3 
       (.I0(hlfa_r_0[11]),
        .I1(p_0_in11_in),
        .I2(\hlfa_f_reg[0]_0 ),
        .I3(hlfa_e_dif0_carry_n_7),
        .I4(hlfa_r_0[10]),
        .O(\hlfa_f[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \hlfa_f[9]_i_4 
       (.I0(hlfa_r_0[5]),
        .I1(\hlfa_f_reg[15]_1 ),
        .I2(p_0_in3_in),
        .O(\hlfa_f[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h5C5D5F5D)) 
    \hlfa_f[9]_i_5 
       (.I0(hlfa_r_0[8]),
        .I1(p_0_in3_in),
        .I2(\hlfa_f_reg[15]_1 ),
        .I3(p_0_in1_in),
        .I4(hlfa_r_0[7]),
        .O(\hlfa_f[9]_i_5_n_0 ));
  FDRE \hlfa_f_reg[0] 
       (.C(clk),
        .CE(\hlfa_f[15]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(hlfa_r_0[0]),
        .R(\<const0> ));
  FDRE \hlfa_f_reg[10] 
       (.C(clk),
        .CE(\hlfa_f[15]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(hlfa_r_0[10]),
        .R(\<const0> ));
  FDRE \hlfa_f_reg[11] 
       (.C(clk),
        .CE(\hlfa_f[15]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(hlfa_r_0[11]),
        .R(\<const0> ));
  FDRE \hlfa_f_reg[12] 
       (.C(clk),
        .CE(\hlfa_f[15]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(hlfa_r_0[12]),
        .R(\<const0> ));
  FDRE \hlfa_f_reg[13] 
       (.C(clk),
        .CE(\hlfa_f[15]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(hlfa_r_0[13]),
        .R(\<const0> ));
  FDRE \hlfa_f_reg[14] 
       (.C(clk),
        .CE(\hlfa_f[15]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(hlfa_r_0[14]),
        .R(\<const0> ));
  FDRE \hlfa_f_reg[15] 
       (.C(clk),
        .CE(\hlfa_f[15]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(hlfa_r_0[15]),
        .R(\<const0> ));
  FDRE \hlfa_f_reg[1] 
       (.C(clk),
        .CE(\hlfa_f[15]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(hlfa_r_0[1]),
        .R(\<const0> ));
  FDRE \hlfa_f_reg[2] 
       (.C(clk),
        .CE(\hlfa_f[15]_i_1_n_0 ),
        .D(\hlfa_f_reg[7]_1 [0]),
        .Q(hlfa_r_0[2]),
        .R(\<const0> ));
  FDRE \hlfa_f_reg[3] 
       (.C(clk),
        .CE(\hlfa_f[15]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(hlfa_r_0[3]),
        .R(\<const0> ));
  FDRE \hlfa_f_reg[4] 
       (.C(clk),
        .CE(\hlfa_f[15]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(hlfa_r_0[4]),
        .R(\<const0> ));
  FDRE \hlfa_f_reg[5] 
       (.C(clk),
        .CE(\hlfa_f[15]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(hlfa_r_0[5]),
        .R(\<const0> ));
  FDRE \hlfa_f_reg[6] 
       (.C(clk),
        .CE(\hlfa_f[15]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(hlfa_r_0[6]),
        .R(\<const0> ));
  FDRE \hlfa_f_reg[7] 
       (.C(clk),
        .CE(\hlfa_f[15]_i_1_n_0 ),
        .D(\hlfa_f_reg[7]_1 [1]),
        .Q(hlfa_r_0[7]),
        .R(\<const0> ));
  FDRE \hlfa_f_reg[8] 
       (.C(clk),
        .CE(\hlfa_f[15]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(hlfa_r_0[8]),
        .R(\<const0> ));
  FDRE \hlfa_f_reg[9] 
       (.C(clk),
        .CE(\hlfa_f[15]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(hlfa_r_0[9]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h8881FFFF)) 
    \hlfa_i[15]_i_2 
       (.I0(ccmd[3]),
        .I1(ccmd[2]),
        .I2(ccmd[0]),
        .I3(ccmd[1]),
        .I4(ccmd[4]),
        .O(ccmd_3_sn_1));
  FDRE \hlfa_i_reg[0] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(abus[0]),
        .Q(\hlfa_i_reg_n_0_[0] ),
        .R(SR));
  FDRE \hlfa_i_reg[10] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(abus[10]),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \hlfa_i_reg[11] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(abus[11]),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE \hlfa_i_reg[12] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(abus[12]),
        .Q(p_0_in[2]),
        .R(SR));
  FDRE \hlfa_i_reg[13] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(abus[13]),
        .Q(p_0_in[3]),
        .R(SR));
  FDRE \hlfa_i_reg[14] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(abus[14]),
        .Q(p_0_in[4]),
        .R(SR));
  FDRE \hlfa_i_reg[15] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(abus[15]),
        .Q(hlfa_r_0[22]),
        .R(SR));
  FDRE \hlfa_i_reg[1] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(abus[1]),
        .Q(\hlfa_i_reg_n_0_[1] ),
        .R(SR));
  FDRE \hlfa_i_reg[2] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(abus[2]),
        .Q(\hlfa_i_reg_n_0_[2] ),
        .R(SR));
  FDRE \hlfa_i_reg[3] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(abus[3]),
        .Q(\hlfa_i_reg_n_0_[3] ),
        .R(SR));
  FDRE \hlfa_i_reg[4] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(abus[4]),
        .Q(\hlfa_i_reg_n_0_[4] ),
        .R(SR));
  FDRE \hlfa_i_reg[5] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(abus[5]),
        .Q(\hlfa_i_reg_n_0_[5] ),
        .R(SR));
  FDRE \hlfa_i_reg[6] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(abus[6]),
        .Q(\hlfa_i_reg_n_0_[6] ),
        .R(SR));
  FDRE \hlfa_i_reg[7] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(abus[7]),
        .Q(\hlfa_i_reg_n_0_[7] ),
        .R(SR));
  FDRE \hlfa_i_reg[8] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(abus[8]),
        .Q(\hlfa_i_reg_n_0_[8] ),
        .R(SR));
  FDRE \hlfa_i_reg[9] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(abus[9]),
        .Q(\hlfa_i_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFF60FF60FFFFFF60)) 
    \hlfb_e[0]_i_1 
       (.I0(hlfa_e_dif0_carry__0_1[0]),
        .I1(\stat_reg[1] ),
        .I2(\hlfa_e_reg[4]_4 ),
        .I3(\hlfb_e[0]_i_3_n_0 ),
        .I4(hctl_load_b),
        .I5(bbus),
        .O(\hlfb_e_reg[0] ));
  LUT6 #(
    .INIT(64'hFFDFFFDFFFDFFFFF)) 
    \hlfb_e[0]_i_2 
       (.I0(hctl_ccmd_int_reg),
        .I1(\hlfb_e_reg[0]_1 [1]),
        .I2(\hlfb_e_reg[0]_1 [0]),
        .I3(\hlfb_e_reg[0]_1 [2]),
        .I4(\hlfa_e_reg[3]_2 [1]),
        .I5(\hlfa_e_reg[3]_2 [2]),
        .O(\stat_reg[1] ));
  LUT5 #(
    .INIT(32'h0B080808)) 
    \hlfb_e[0]_i_3 
       (.I0(hlfa_r_0[16]),
        .I1(\hlfa_e_reg[4]_2 ),
        .I2(\hlfb_f_reg[12] ),
        .I3(\hlfa_e_reg[3]_2 [3]),
        .I4(hlfa_e_dif0_carry__0_1[0]),
        .O(\hlfb_e[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABBAAABABAABAABA)) 
    \hlfb_e[3]_i_3 
       (.I0(\hlfb_e_reg[3]_1 ),
        .I1(\hlfb_f_reg[12] ),
        .I2(\hlfa_e_reg[3]_2 [3]),
        .I3(hlfa_e_dif0_carry__0_1[3]),
        .I4(\hlfa_e_reg[4]_2 ),
        .I5(\hlfa_e_reg[0]_0 ),
        .O(\hlfb_e_reg[3] ));
  LUT3 #(
    .INIT(8'h8E)) 
    \hlfb_e[4]_i_8 
       (.I0(\hlfa_e_reg[3]_2 [3]),
        .I1(hlfa_e_dif0_carry__0_1[3]),
        .I2(\hlfa_e_reg[0]_0 ),
        .O(\hlfb_e_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h55FF55FF55FF557D)) 
    \hlfb_e[5]_i_1 
       (.I0(\hlfa_e_reg[4]_4 ),
        .I1(hlfa_e_dif0_carry__0_1[0]),
        .I2(hlfa_r_0[16]),
        .I3(\hlfb_f_reg[12] ),
        .I4(\hlfa_e_reg[3]_2 [1]),
        .I5(\hlfa_e_reg[3]_2 [2]),
        .O(\hlfb_e_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfb_e[5]_i_14 
       (.I0(hlfa_r_0[16]),
        .I1(hlfa_e_dif0_carry__0_1[0]),
        .O(\hlfb_e[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000BBF0BBFFFFF)) 
    \hlfb_e[5]_i_15 
       (.I0(hlfa_r_0[16]),
        .I1(hlfa_e_dif0_carry__0_1[0]),
        .I2(\hlfa_e_reg[3]_2 [1]),
        .I3(hlfa_e_dif0_carry__0_1[1]),
        .I4(\hlfa_e_reg[3]_2 [2]),
        .I5(hlfa_e_dif0_carry__0_1[2]),
        .O(\hlfa_e_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h3031)) 
    \hlfb_e[5]_i_3 
       (.I0(\hlfa_e_reg[4]_2 ),
        .I1(hctl_load_b),
        .I2(\hlfb_f_reg[12] ),
        .I3(\hlfa_e_reg[3]_2 [3]),
        .O(\hlfa_e_reg[4]_4 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hlfb_e_reg[2]_i_5 
       (.CI(\hlfb_e_reg[5]_i_5_n_0 ),
        .CO(\hlfb_e_reg[2]_i_5_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,hlfa_r_0[20]}),
        .O({\hlfb_e_reg[2]_i_5_n_6 ,\hlfa_e_reg[4]_2 }),
        .S({\<const0> ,\<const0> ,\hlfb_e_reg[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hlfb_e_reg[5]_i_5 
       (.CI(\<const0> ),
        .CO({\hlfb_e_reg[5]_i_5_n_0 ,\hlfb_e_reg[5]_i_5_n_1 ,\hlfb_e_reg[5]_i_5_n_2 ,\hlfb_e_reg[5]_i_5_n_3 }),
        .CYINIT(\<const1> ),
        .DI(hlfa_r_0[19:16]),
        .O(\hlfa_e_reg[3]_2 ),
        .S({S,\hlfb_e[5]_i_14_n_0 }));
  LUT6 #(
    .INIT(64'h0F0F0F06FFFFFFFF)) 
    \hlfb_f[12]_i_1 
       (.I0(hlfa_e_dif0_carry__0_1[0]),
        .I1(hlfa_r_0[16]),
        .I2(\hlfb_f_reg[12] ),
        .I3(\hlfa_e_reg[3]_2 [1]),
        .I4(\hlfa_e_reg[3]_2 [2]),
        .I5(\hlfb_f_reg[12]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hCCCCFFFFCCCCA0AC)) 
    \hlfb_f[1]_i_2 
       (.I0(\hlfb_f_reg[1] [1]),
        .I1(\hlfb_f_reg[1] [0]),
        .I2(\hlfa_e_reg[3]_2 [2]),
        .I3(\hlfa_e_reg[3]_2 [1]),
        .I4(\hlfb_f_reg[12] ),
        .I5(\hlfa_e_reg[3]_2 [3]),
        .O(\hlfb_f_reg[5] ));
  LUT5 #(
    .INIT(32'hF5F5A0B0)) 
    \hlfc_e[5]_i_5 
       (.I0(hctl_ccmd_add),
        .I1(\hlfc_i_reg[25] ),
        .I2(hlfa_r_0[21]),
        .I3(\ccmd_f_reg[1]_1 ),
        .I4(\hlfc_e[5]_i_6_n_0 ),
        .O(p_16_in[2]));
  LUT4 #(
    .INIT(16'hB888)) 
    \hlfc_e[5]_i_6 
       (.I0(O),
        .I1(hctl_ccmd_mul),
        .I2(hctl_ccmd_div),
        .I3(\hdiv/hlfc_e ),
        .O(\hlfc_e[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    hlfc_e_carry__0_i_1
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_e_dif0_carry__0_1[5]),
        .O(\hlfa_e_reg[5]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    hlfc_e_carry__0_i_2
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_e_dif0_carry__0_1[4]),
        .O(\hlfa_e_reg[5]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    hlfc_e_carry_i_1
       (.I0(hlfa_r_0[19]),
        .I1(hlfa_e_dif0_carry__0_1[3]),
        .O(\hlfa_e_reg[3]_3 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    hlfc_e_carry_i_2
       (.I0(hlfa_r_0[18]),
        .I1(hlfa_e_dif0_carry__0_1[2]),
        .O(\hlfa_e_reg[3]_3 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    hlfc_e_carry_i_3
       (.I0(hlfa_r_0[17]),
        .I1(hlfa_e_dif0_carry__0_1[1]),
        .O(\hlfa_e_reg[3]_3 [0]));
  LUT5 #(
    .INIT(32'h69969696)) 
    hlfc_f_t_carry__2_i_4
       (.I0(hlfa_r_0[22]),
        .I1(hctl_ccmd_sub),
        .I2(Q),
        .I3(hlfa_r_0[15]),
        .I4(hctl_ccmd_add),
        .O(\hlfa_i_reg[15]_1 [2]));
  LUT5 #(
    .INIT(32'h78878778)) 
    hlfc_f_t_carry__2_i_5
       (.I0(hlfa_r_0[14]),
        .I1(hctl_ccmd_add),
        .I2(hlfa_r_0[22]),
        .I3(hctl_ccmd_sub),
        .I4(Q),
        .O(\hlfa_i_reg[15]_1 [1]));
  LUT5 #(
    .INIT(32'h78878778)) 
    hlfc_f_t_carry__2_i_6
       (.I0(hlfa_r_0[13]),
        .I1(hctl_ccmd_add),
        .I2(hlfa_r_0[22]),
        .I3(hctl_ccmd_sub),
        .I4(Q),
        .O(\hlfa_i_reg[15]_1 [0]));
  LUT4 #(
    .INIT(16'hE0EE)) 
    \hlfc_i[24]_i_1 
       (.I0(\hlfc_i[24]_i_2_n_0 ),
        .I1(\hlfc_i_reg[24] ),
        .I2(\hlfc_i[24]_i_4_n_0 ),
        .I3(hctl_ccmd_add),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hDFDDCCCCDFDDCFCC)) 
    \hlfc_i[24]_i_2 
       (.I0(\hlfc_i[24]_i_5_n_0 ),
        .I1(hctl_ccmd_add),
        .I2(\hlfc_i_reg[24]_1 ),
        .I3(hctl_ccmd_mul),
        .I4(\hlfa_i_reg[4]_0 ),
        .I5(\hlfc_i_reg[24]_0 ),
        .O(\hlfc_i[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF0069FF)) 
    \hlfc_i[24]_i_4 
       (.I0(hlfa_r_0[22]),
        .I1(hctl_ccmd_sub),
        .I2(Q),
        .I3(\hlfa_i_reg[4]_0 ),
        .I4(\hlfc_i_reg[24]_0 ),
        .O(\hlfc_i[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFAEFEFEF)) 
    \hlfc_i[24]_i_5 
       (.I0(\hlfc_i_reg[25] ),
        .I1(ccmd_f[1]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[0]),
        .I4(ccmd_f[2]),
        .O(\hlfc_i[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h757775FF307730FF)) 
    \hlfc_i[25]_i_4 
       (.I0(\hlfa_i_reg[11]_2 ),
        .I1(\hlfc_i_reg[25]_1 ),
        .I2(\hlfc_i_reg[25]_2 ),
        .I3(\hlfa_i_reg[13]_0 ),
        .I4(\hlfa_i_reg[7]_0 ),
        .I5(\hlfc_i_reg[25]_0 ),
        .O(\hlfa_i_reg[11]_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \stat[2]_i_2 
       (.I0(\hlfa_e_reg[4]_5 ),
        .I1(hlfa_e_dif0_carry__0_0),
        .I2(hctl_ccmd_int_reg),
        .O(hctl_ccmd_int_reg_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \stat[2]_i_4 
       (.I0(hlfa_e_difl0_carry__0_n_6),
        .I1(\hlfa_e_reg[3]_1 [0]),
        .I2(p_0_in1_in),
        .I3(p_0_in3_in),
        .I4(\hlfa_e_reg[4]_1 ),
        .I5(\hlfa_e_reg[3]_1 [1]),
        .O(\hlfa_e_reg[4]_5 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \stat[2]_i_5 
       (.I0(p_0_in11_in),
        .I1(hlfa_e_dif0_carry_n_7),
        .I2(p_0_in14_in),
        .I3(\hlfa_e_reg[3]_0 ),
        .I4(\hlfa_e_reg[4]_0 ),
        .I5(hlfa_e_dif0_carry__0_n_6),
        .O(hlfa_e_dif0_carry__0_0));
  LUT6 #(
    .INIT(64'h000000000000FFFB)) 
    \stat[2]_i_6 
       (.I0(\hlfa_e_reg[3]_2 [3]),
        .I1(\stat[2]_i_8_n_0 ),
        .I2(\hlfa_e_reg[4]_2 ),
        .I3(\stat[2]_i_9_n_0 ),
        .I4(hctl_ccmd_int),
        .I5(\hlfb_e_reg[2]_i_5_n_6 ),
        .O(hctl_ccmd_int_reg));
  LUT2 #(
    .INIT(4'h9)) 
    \stat[2]_i_8 
       (.I0(hlfa_r_0[16]),
        .I1(hlfa_e_dif0_carry__0_1[0]),
        .O(\stat[2]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \stat[2]_i_9 
       (.I0(\hlfa_e_reg[3]_2 [2]),
        .I1(\hlfa_e_reg[3]_2 [1]),
        .O(\stat[2]_i_9_n_0 ));
endmodule

module hfpu_hlfb
   (hctl_ccmd_sub_reg,
    \hlfb_i_reg[15]_0 ,
    Q,
    \hlfb_i_reg[4]_0 ,
    hctl_ccmd_add_reg,
    \hlfb_i_reg[11]_0 ,
    \hlfb_i_reg[6]_0 ,
    \hlfb_i_reg[15]_1 ,
    \hlfb_i_reg[15]_2 ,
    \hlfb_e_reg[5]_0 ,
    \hlfb_f_reg[12]_0 ,
    \hlfb_f_reg[6]_0 ,
    \hlfb_f_reg[7]_0 ,
    \hlfb_f_reg[8]_0 ,
    \hlfb_f_reg[9]_0 ,
    \hlfb_f_reg[10]_0 ,
    \hlfb_f_reg[11]_0 ,
    \hlfb_f_reg[12]_1 ,
    \hlfb_f_reg[4]_0 ,
    \hlfb_e_reg[0]_0 ,
    \hlfb_e_reg[1]_0 ,
    .bbus_11_sp_1(bbus_11_sn_1),
    hctl_ccmd_mul_reg,
    \hlfb_i_reg[11]_1 ,
    \hlfb_i_reg[4]_1 ,
    \hlfb_i_reg[14]_0 ,
    hctl_ccmd_mul_reg_0,
    \hlfb_i_reg[4]_2 ,
    \hlfb_i_reg[1]_0 ,
    \hlfa_i_reg[11] ,
    \hlfb_i_reg[4]_3 ,
    \hlfb_i_reg[11]_2 ,
    hfpu_dsp_b,
    \hlfb_e_reg[3]_0 ,
    \hlfb_e_reg[5]_1 ,
    S,
    \hlfb_e_reg[3]_1 ,
    \hlfb_e_reg[5]_2 ,
    hctl_ccmd_sub,
    \hlfc_i_reg[24] ,
    hlfa_r_0,
    hctl_ccmd_add,
    \hlfc_i_reg[25] ,
    \hlfc_i_reg[25]_0 ,
    \hlfb_e_reg[1]_1 ,
    \hlfb_e_reg[1]_2 ,
    \hlfb_e_reg[1]_3 ,
    \hlfb_e_reg[1]_4 ,
    \hlfb_f_reg[0]_0 ,
    \hlfb_f_reg[0]_1 ,
    \hlfb_f_reg[4]_1 ,
    \hlfb_e_reg[1]_5 ,
    \hlfb_f_reg[0]_2 ,
    \hlfb_e_reg[2]_0 ,
    \hlfb_e_reg[3]_2 ,
    \hlfb_e_reg[3]_3 ,
    \hlfb_e_reg[4]_0 ,
    \hlfb_e_reg[5]_3 ,
    \hlfb_e_reg[5]_4 ,
    \hlfb_e_reg[5]_5 ,
    bbus,
    hctl_ccmd_mul,
    \hlfc_i_reg[24]_0 ,
    hctl_ccmd_div,
    SR,
    E,
    clk,
    D,
    \hlfb_i_reg[15]_3 ,
    \hlfb_f_reg[12]_2 ,
    \hlfb_f_reg[12]_3 );
  output hctl_ccmd_sub_reg;
  output \hlfb_i_reg[15]_0 ;
  output [0:0]Q;
  output \hlfb_i_reg[4]_0 ;
  output hctl_ccmd_add_reg;
  output \hlfb_i_reg[11]_0 ;
  output \hlfb_i_reg[6]_0 ;
  output \hlfb_i_reg[15]_1 ;
  output \hlfb_i_reg[15]_2 ;
  output [5:0]\hlfb_e_reg[5]_0 ;
  output [12:0]\hlfb_f_reg[12]_0 ;
  output \hlfb_f_reg[6]_0 ;
  output \hlfb_f_reg[7]_0 ;
  output \hlfb_f_reg[8]_0 ;
  output \hlfb_f_reg[9]_0 ;
  output \hlfb_f_reg[10]_0 ;
  output \hlfb_f_reg[11]_0 ;
  output \hlfb_f_reg[12]_1 ;
  output \hlfb_f_reg[4]_0 ;
  output \hlfb_e_reg[0]_0 ;
  output \hlfb_e_reg[1]_0 ;
  output hctl_ccmd_mul_reg;
  output \hlfb_i_reg[11]_1 ;
  output \hlfb_i_reg[4]_1 ;
  output \hlfb_i_reg[14]_0 ;
  output hctl_ccmd_mul_reg_0;
  output \hlfb_i_reg[4]_2 ;
  output \hlfb_i_reg[1]_0 ;
  output \hlfa_i_reg[11] ;
  output \hlfb_i_reg[4]_3 ;
  output \hlfb_i_reg[11]_2 ;
  output [10:0]hfpu_dsp_b;
  output [2:0]\hlfb_e_reg[3]_0 ;
  output [1:0]\hlfb_e_reg[5]_1 ;
  output [0:0]S;
  output [2:0]\hlfb_e_reg[3]_1 ;
  output [1:0]\hlfb_e_reg[5]_2 ;
  input hctl_ccmd_sub;
  input \hlfc_i_reg[24] ;
  input [6:0]hlfa_r_0;
  input hctl_ccmd_add;
  input \hlfc_i_reg[25] ;
  input \hlfc_i_reg[25]_0 ;
  input \hlfb_e_reg[1]_1 ;
  input \hlfb_e_reg[1]_2 ;
  input \hlfb_e_reg[1]_3 ;
  input [0:0]\hlfb_e_reg[1]_4 ;
  input \hlfb_f_reg[0]_0 ;
  input \hlfb_f_reg[0]_1 ;
  input \hlfb_f_reg[4]_1 ;
  input \hlfb_e_reg[1]_5 ;
  input [2:0]\hlfb_f_reg[0]_2 ;
  input \hlfb_e_reg[2]_0 ;
  input \hlfb_e_reg[3]_2 ;
  input \hlfb_e_reg[3]_3 ;
  input \hlfb_e_reg[4]_0 ;
  input \hlfb_e_reg[5]_3 ;
  input \hlfb_e_reg[5]_4 ;
  input \hlfb_e_reg[5]_5 ;
  input [15:0]bbus;
  input hctl_ccmd_mul;
  input \hlfc_i_reg[24]_0 ;
  input hctl_ccmd_div;
  input [0:0]SR;
  input [0:0]E;
  input clk;
  input [0:0]D;
  input [0:0]\hlfb_i_reg[15]_3 ;
  input [0:0]\hlfb_f_reg[12]_2 ;
  input [11:0]\hlfb_f_reg[12]_3 ;
  output bbus_11_sn_1;

  wire \<const0> ;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [15:0]bbus;
  wire bbus_11_sn_1;
  wire clk;
  wire hctl_ccmd_add;
  wire hctl_ccmd_add_reg;
  wire hctl_ccmd_div;
  wire hctl_ccmd_mul;
  wire hctl_ccmd_mul_reg;
  wire hctl_ccmd_mul_reg_0;
  wire hctl_ccmd_sub;
  wire hctl_ccmd_sub_reg;
  wire [10:0]hfpu_dsp_b;
  wire \hlfa_i_reg[11] ;
  wire [6:0]hlfa_r_0;
  wire \hlfb_e[1]_i_1_n_0 ;
  wire \hlfb_e[1]_i_2_n_0 ;
  wire \hlfb_e[2]_i_1_n_0 ;
  wire \hlfb_e[2]_i_2_n_0 ;
  wire \hlfb_e[3]_i_1_n_0 ;
  wire \hlfb_e[3]_i_2_n_0 ;
  wire \hlfb_e[4]_i_1_n_0 ;
  wire \hlfb_e[4]_i_2_n_0 ;
  wire \hlfb_e[4]_i_4_n_0 ;
  wire \hlfb_e[4]_i_6_n_0 ;
  wire \hlfb_e[4]_i_7_n_0 ;
  wire \hlfb_e[5]_i_10_n_0 ;
  wire \hlfb_e[5]_i_16_n_0 ;
  wire \hlfb_e[5]_i_17_n_0 ;
  wire \hlfb_e[5]_i_18_n_0 ;
  wire \hlfb_e[5]_i_2_n_0 ;
  wire \hlfb_e[5]_i_6_n_0 ;
  wire \hlfb_e[5]_i_7_n_0 ;
  wire \hlfb_e_reg[0]_0 ;
  wire \hlfb_e_reg[1]_0 ;
  wire \hlfb_e_reg[1]_1 ;
  wire \hlfb_e_reg[1]_2 ;
  wire \hlfb_e_reg[1]_3 ;
  wire [0:0]\hlfb_e_reg[1]_4 ;
  wire \hlfb_e_reg[1]_5 ;
  wire \hlfb_e_reg[2]_0 ;
  wire [2:0]\hlfb_e_reg[3]_0 ;
  wire [2:0]\hlfb_e_reg[3]_1 ;
  wire \hlfb_e_reg[3]_2 ;
  wire \hlfb_e_reg[3]_3 ;
  wire \hlfb_e_reg[4]_0 ;
  wire [5:0]\hlfb_e_reg[5]_0 ;
  wire [1:0]\hlfb_e_reg[5]_1 ;
  wire [1:0]\hlfb_e_reg[5]_2 ;
  wire \hlfb_e_reg[5]_3 ;
  wire \hlfb_e_reg[5]_4 ;
  wire \hlfb_e_reg[5]_5 ;
  wire \hlfb_f[0]_i_1_n_0 ;
  wire \hlfb_f[0]_i_2_n_0 ;
  wire \hlfb_f[0]_i_3_n_0 ;
  wire \hlfb_f[0]_i_4_n_0 ;
  wire \hlfb_f[0]_i_5_n_0 ;
  wire \hlfb_f[0]_i_6_n_0 ;
  wire \hlfb_f_reg[0]_0 ;
  wire \hlfb_f_reg[0]_1 ;
  wire [2:0]\hlfb_f_reg[0]_2 ;
  wire \hlfb_f_reg[10]_0 ;
  wire \hlfb_f_reg[11]_0 ;
  wire [12:0]\hlfb_f_reg[12]_0 ;
  wire \hlfb_f_reg[12]_1 ;
  wire [0:0]\hlfb_f_reg[12]_2 ;
  wire [11:0]\hlfb_f_reg[12]_3 ;
  wire \hlfb_f_reg[4]_0 ;
  wire \hlfb_f_reg[4]_1 ;
  wire \hlfb_f_reg[6]_0 ;
  wire \hlfb_f_reg[7]_0 ;
  wire \hlfb_f_reg[8]_0 ;
  wire \hlfb_f_reg[9]_0 ;
  wire \hlfb_i_reg[11]_0 ;
  wire \hlfb_i_reg[11]_1 ;
  wire \hlfb_i_reg[11]_2 ;
  wire \hlfb_i_reg[14]_0 ;
  wire \hlfb_i_reg[15]_0 ;
  wire \hlfb_i_reg[15]_1 ;
  wire \hlfb_i_reg[15]_2 ;
  wire [0:0]\hlfb_i_reg[15]_3 ;
  wire \hlfb_i_reg[1]_0 ;
  wire \hlfb_i_reg[4]_0 ;
  wire \hlfb_i_reg[4]_1 ;
  wire \hlfb_i_reg[4]_2 ;
  wire \hlfb_i_reg[4]_3 ;
  wire \hlfb_i_reg[6]_0 ;
  wire \hlfb_i_reg_n_0_[0] ;
  wire \hlfb_i_reg_n_0_[1] ;
  wire \hlfb_i_reg_n_0_[2] ;
  wire \hlfb_i_reg_n_0_[3] ;
  wire \hlfb_i_reg_n_0_[4] ;
  wire \hlfb_i_reg_n_0_[5] ;
  wire \hlfb_i_reg_n_0_[6] ;
  wire \hlfb_i_reg_n_0_[7] ;
  wire \hlfb_i_reg_n_0_[8] ;
  wire \hlfb_i_reg_n_0_[9] ;
  wire \hlfc_i_reg[24] ;
  wire \hlfc_i_reg[24]_0 ;
  wire \hlfc_i_reg[25] ;
  wire \hlfc_i_reg[25]_0 ;
  wire [4:0]p_0_in;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h8A8A88008A8A8A00)) 
    \cbus[14]_INST_0_i_21 
       (.I0(hctl_ccmd_add),
        .I1(\hlfb_i_reg[11]_0 ),
        .I2(\hlfb_i_reg[6]_0 ),
        .I3(\hlfc_i_reg[25] ),
        .I4(\hlfc_i_reg[25]_0 ),
        .I5(\hlfb_i_reg[15]_1 ),
        .O(hctl_ccmd_add_reg));
  LUT3 #(
    .INIT(8'hFE)) 
    \cbus[14]_INST_0_i_35 
       (.I0(\hlfb_i_reg[4]_0 ),
        .I1(\hlfc_i_reg[24] ),
        .I2(\hlfb_i_reg[14]_0 ),
        .O(\hlfb_i_reg[4]_1 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \cbus[14]_INST_0_i_43 
       (.I0(\hlfc_i_reg[24]_0 ),
        .I1(\hlfb_i_reg[11]_0 ),
        .I2(\hlfb_i_reg[4]_3 ),
        .I3(\hlfb_i_reg[1]_0 ),
        .O(\hlfa_i_reg[11] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cbus[14]_INST_0_i_44 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[3]),
        .I4(p_0_in[4]),
        .I5(\hlfc_i_reg[24]_0 ),
        .O(\hlfb_i_reg[11]_2 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \cbus[14]_INST_0_i_46 
       (.I0(\hlfb_i_reg[1]_0 ),
        .I1(\hlfb_i_reg_n_0_[4] ),
        .I2(\hlfb_i_reg_n_0_[0] ),
        .I3(\hlfb_i_reg_n_0_[5] ),
        .I4(\hlfb_i_reg_n_0_[6] ),
        .I5(\hlfb_i_reg[11]_0 ),
        .O(\hlfb_i_reg[4]_2 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cbus[14]_INST_0_i_59 
       (.I0(\hlfb_e_reg[5]_0 [5]),
        .I1(hlfa_r_0[5]),
        .O(\hlfb_e_reg[5]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \cbus[14]_INST_0_i_60 
       (.I0(\hlfb_e_reg[5]_0 [4]),
        .I1(hlfa_r_0[4]),
        .O(\hlfb_e_reg[5]_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \cbus[14]_INST_0_i_61 
       (.I0(\hlfb_e_reg[5]_0 [3]),
        .I1(hlfa_r_0[3]),
        .O(\hlfb_e_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \cbus[14]_INST_0_i_62 
       (.I0(\hlfb_e_reg[5]_0 [2]),
        .I1(hlfa_r_0[2]),
        .O(\hlfb_e_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \cbus[14]_INST_0_i_63 
       (.I0(\hlfb_e_reg[5]_0 [1]),
        .I1(hlfa_r_0[1]),
        .O(\hlfb_e_reg[3]_0 [0]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cbus[15]_INST_0_i_15 
       (.I0(\hlfb_i_reg_n_0_[6] ),
        .I1(\hlfb_i_reg_n_0_[5] ),
        .I2(\hlfb_i_reg_n_0_[0] ),
        .I3(\hlfb_i_reg_n_0_[4] ),
        .I4(\hlfb_i_reg[1]_0 ),
        .O(\hlfb_i_reg[6]_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cbus[15]_INST_0_i_16 
       (.I0(p_0_in[1]),
        .I1(p_0_in[3]),
        .I2(p_0_in[4]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\hlfb_i_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \cbus[15]_INST_0_i_18 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[3]),
        .I4(p_0_in[4]),
        .I5(\hlfc_i_reg[24]_0 ),
        .O(\hlfb_i_reg[11]_1 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cbus[15]_INST_0_i_19 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\hlfb_i_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cbus[15]_INST_0_i_21 
       (.I0(\hlfb_i_reg[1]_0 ),
        .I1(\hlfb_i_reg_n_0_[4] ),
        .I2(\hlfb_i_reg_n_0_[0] ),
        .I3(\hlfb_i_reg_n_0_[5] ),
        .I4(\hlfb_i_reg_n_0_[6] ),
        .I5(\hlfb_i_reg[11]_0 ),
        .O(\hlfb_i_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFBEAABEAAAAAABE)) 
    \cbus[15]_INST_0_i_26 
       (.I0(\hlfb_i_reg[15]_0 ),
        .I1(hctl_ccmd_sub),
        .I2(Q),
        .I3(\hlfb_i_reg[4]_0 ),
        .I4(\hlfc_i_reg[24] ),
        .I5(hlfa_r_0[6]),
        .O(hctl_ccmd_sub_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cbus[15]_INST_0_i_32 
       (.I0(\hlfb_i_reg_n_0_[1] ),
        .I1(\hlfb_i_reg_n_0_[8] ),
        .I2(\hlfb_i_reg_n_0_[7] ),
        .I3(\hlfb_i_reg_n_0_[2] ),
        .I4(\hlfb_i_reg_n_0_[3] ),
        .I5(\hlfb_i_reg_n_0_[9] ),
        .O(\hlfb_i_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[15]_INST_0_i_34 
       (.I0(\hlfb_i_reg_n_0_[4] ),
        .I1(\hlfb_i_reg_n_0_[0] ),
        .I2(\hlfb_i_reg_n_0_[5] ),
        .I3(\hlfb_i_reg_n_0_[6] ),
        .O(\hlfb_i_reg[4]_3 ));
  LUT5 #(
    .INIT(32'h0303FF23)) 
    \cbus[15]_INST_0_i_6 
       (.I0(\hlfb_i_reg[15]_1 ),
        .I1(\hlfc_i_reg[25]_0 ),
        .I2(\hlfc_i_reg[25] ),
        .I3(\hlfb_i_reg[6]_0 ),
        .I4(\hlfb_i_reg[11]_0 ),
        .O(\hlfb_i_reg[15]_0 ));
  LUT6 #(
    .INIT(64'h0AAA0AAA02AA0202)) 
    \cbus[15]_INST_0_i_8 
       (.I0(hctl_ccmd_mul),
        .I1(\hlfc_i_reg[25] ),
        .I2(\hlfc_i_reg[25]_0 ),
        .I3(\hlfb_i_reg[11]_0 ),
        .I4(\hlfb_i_reg[6]_0 ),
        .I5(\hlfb_i_reg[11]_1 ),
        .O(hctl_ccmd_mul_reg));
  LUT5 #(
    .INIT(32'h40040440)) 
    \cbus[6]_INST_0_i_6 
       (.I0(\hlfb_i_reg[4]_0 ),
        .I1(\hlfc_i_reg[24] ),
        .I2(Q),
        .I3(hctl_ccmd_sub),
        .I4(hlfa_r_0[6]),
        .O(\hlfb_i_reg[15]_2 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_b[0]_INST_0 
       (.I0(\hlfb_f_reg[12]_0 [2]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_b[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_b[10]_INST_0 
       (.I0(\hlfb_f_reg[12]_0 [12]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_b[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_b[1]_INST_0 
       (.I0(\hlfb_f_reg[12]_0 [3]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_b[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_b[2]_INST_0 
       (.I0(\hlfb_f_reg[12]_0 [4]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_b[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_b[3]_INST_0 
       (.I0(\hlfb_f_reg[12]_0 [5]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_b[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_b[4]_INST_0 
       (.I0(\hlfb_f_reg[12]_0 [6]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_b[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_b[5]_INST_0 
       (.I0(\hlfb_f_reg[12]_0 [7]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_b[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_b[6]_INST_0 
       (.I0(\hlfb_f_reg[12]_0 [8]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_b[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_b[7]_INST_0 
       (.I0(\hlfb_f_reg[12]_0 [9]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_b[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_b[8]_INST_0 
       (.I0(\hlfb_f_reg[12]_0 [10]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_b[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \hfpu_dsp_b[9]_INST_0 
       (.I0(\hlfb_f_reg[12]_0 [11]),
        .I1(hctl_ccmd_mul),
        .O(hfpu_dsp_b[9]));
  LUT6 #(
    .INIT(64'hF4F4F4F4FFF4F4F4)) 
    \hlfb_e[1]_i_1 
       (.I0(\hlfb_e[1]_i_2_n_0 ),
        .I1(\hlfb_e_reg[1]_1 ),
        .I2(\hlfb_e_reg[1]_2 ),
        .I3(\hlfb_e_reg[5]_0 [1]),
        .I4(\hlfb_e_reg[1]_3 ),
        .I5(\hlfb_e_reg[1]_4 ),
        .O(\hlfb_e[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h95959A99)) 
    \hlfb_e[1]_i_2 
       (.I0(\hlfb_e_reg[5]_0 [1]),
        .I1(\hlfb_e_reg[5]_0 [0]),
        .I2(\hlfb_e_reg[1]_5 ),
        .I3(\hlfb_f_reg[0]_2 [0]),
        .I4(\hlfb_f_reg[0]_2 [1]),
        .O(\hlfb_e[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \hlfb_e[1]_i_4 
       (.I0(\hlfb_e_reg[5]_0 [0]),
        .I1(hlfa_r_0[0]),
        .I2(\hlfb_e_reg[5]_0 [1]),
        .I3(\hlfb_f_reg[0]_2 [0]),
        .O(\hlfb_e_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4FFF4F4F4)) 
    \hlfb_e[2]_i_1 
       (.I0(\hlfb_e[2]_i_2_n_0 ),
        .I1(\hlfb_e_reg[1]_1 ),
        .I2(\hlfb_e_reg[2]_0 ),
        .I3(\hlfb_e_reg[5]_0 [2]),
        .I4(\hlfb_e_reg[1]_3 ),
        .I5(\hlfb_e_reg[1]_4 ),
        .O(\hlfb_e[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0A0E0A00F5F1F5)) 
    \hlfb_e[2]_i_2 
       (.I0(\hlfb_f_reg[0]_2 [1]),
        .I1(\hlfb_f_reg[0]_2 [0]),
        .I2(\hlfb_e_reg[1]_5 ),
        .I3(\hlfb_e_reg[5]_0 [1]),
        .I4(\hlfb_e_reg[5]_0 [0]),
        .I5(\hlfb_e_reg[5]_0 [2]),
        .O(\hlfb_e[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h771788E888E87717)) 
    \hlfb_e[2]_i_6 
       (.I0(\hlfb_e_reg[5]_0 [1]),
        .I1(\hlfb_f_reg[0]_2 [0]),
        .I2(\hlfb_e_reg[5]_0 [0]),
        .I3(hlfa_r_0[0]),
        .I4(\hlfb_e_reg[5]_0 [2]),
        .I5(\hlfb_f_reg[0]_2 [1]),
        .O(\hlfb_e_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfb_e[2]_i_7 
       (.I0(\hlfb_e_reg[5]_0 [5]),
        .I1(hlfa_r_0[5]),
        .O(\hlfb_e_reg[5]_2 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfb_e[2]_i_8 
       (.I0(\hlfb_e_reg[5]_0 [4]),
        .I1(hlfa_r_0[4]),
        .O(\hlfb_e_reg[5]_2 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF600000)) 
    \hlfb_e[3]_i_1 
       (.I0(\hlfb_e_reg[5]_0 [3]),
        .I1(\hlfb_e_reg[5]_0 [2]),
        .I2(\hlfb_e_reg[3]_2 ),
        .I3(\hlfb_e[3]_i_2_n_0 ),
        .I4(\hlfb_e_reg[1]_1 ),
        .I5(\hlfb_e_reg[3]_3 ),
        .O(\hlfb_e[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3ECCCCCC22888888)) 
    \hlfb_e[3]_i_2 
       (.I0(\hlfb_f_reg[0]_0 ),
        .I1(\hlfb_e_reg[5]_0 [3]),
        .I2(\hlfb_e_reg[5]_0 [0]),
        .I3(\hlfb_e_reg[5]_0 [2]),
        .I4(\hlfb_e_reg[5]_0 [1]),
        .I5(\hlfb_f_reg[4]_1 ),
        .O(\hlfb_e[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF600000)) 
    \hlfb_e[4]_i_1 
       (.I0(\hlfb_e_reg[5]_0 [4]),
        .I1(\hlfb_e[4]_i_2_n_0 ),
        .I2(\hlfb_e_reg[3]_2 ),
        .I3(\hlfb_e[4]_i_4_n_0 ),
        .I4(\hlfb_e_reg[1]_1 ),
        .I5(\hlfb_e_reg[4]_0 ),
        .O(\hlfb_e[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfb_e[4]_i_2 
       (.I0(\hlfb_e_reg[5]_0 [3]),
        .I1(\hlfb_e_reg[5]_0 [2]),
        .O(\hlfb_e[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \hlfb_e[4]_i_4 
       (.I0(\hlfb_e[4]_i_6_n_0 ),
        .I1(\hlfb_f_reg[4]_1 ),
        .I2(\hlfb_e_reg[5]_0 [4]),
        .I3(\hlfb_e_reg[5]_0 [3]),
        .I4(\hlfb_e[4]_i_7_n_0 ),
        .I5(\hlfb_f_reg[0]_0 ),
        .O(\hlfb_e[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \hlfb_e[4]_i_6 
       (.I0(\hlfb_e_reg[5]_0 [4]),
        .I1(\hlfb_e_reg[5]_0 [3]),
        .I2(\hlfb_e_reg[5]_0 [2]),
        .I3(\hlfb_e_reg[5]_0 [1]),
        .I4(\hlfb_e_reg[5]_0 [0]),
        .O(\hlfb_e[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfb_e[4]_i_7 
       (.I0(\hlfb_e_reg[5]_0 [2]),
        .I1(\hlfb_e_reg[5]_0 [1]),
        .O(\hlfb_e[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0FFF004747)) 
    \hlfb_e[5]_i_10 
       (.I0(\hlfb_e[5]_i_16_n_0 ),
        .I1(\hlfb_f_reg[0]_2 [0]),
        .I2(\hlfb_e[5]_i_17_n_0 ),
        .I3(\hlfb_e[5]_i_18_n_0 ),
        .I4(\hlfb_f_reg[0]_2 [1]),
        .I5(\hlfb_e_reg[1]_5 ),
        .O(\hlfb_e[5]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfb_e[5]_i_11 
       (.I0(\hlfb_e_reg[5]_0 [3]),
        .I1(hlfa_r_0[3]),
        .O(\hlfb_e_reg[3]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfb_e[5]_i_12 
       (.I0(\hlfb_e_reg[5]_0 [2]),
        .I1(hlfa_r_0[2]),
        .O(\hlfb_e_reg[3]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfb_e[5]_i_13 
       (.I0(\hlfb_e_reg[5]_0 [1]),
        .I1(hlfa_r_0[1]),
        .O(\hlfb_e_reg[3]_1 [0]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \hlfb_e[5]_i_16 
       (.I0(\hlfb_e_reg[5]_0 [5]),
        .I1(\hlfb_e_reg[5]_0 [4]),
        .I2(\hlfb_e_reg[5]_0 [3]),
        .I3(\hlfb_e_reg[5]_0 [2]),
        .I4(\hlfb_e_reg[5]_0 [1]),
        .O(\hlfb_e[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \hlfb_e[5]_i_17 
       (.I0(\hlfb_e_reg[5]_0 [5]),
        .I1(\hlfb_e_reg[5]_0 [1]),
        .I2(\hlfb_e_reg[5]_0 [2]),
        .I3(\hlfb_e_reg[5]_0 [0]),
        .I4(\hlfb_e_reg[5]_0 [4]),
        .I5(\hlfb_e_reg[5]_0 [3]),
        .O(\hlfb_e[5]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9555)) 
    \hlfb_e[5]_i_18 
       (.I0(\hlfb_e_reg[5]_0 [5]),
        .I1(\hlfb_e_reg[5]_0 [2]),
        .I2(\hlfb_e_reg[5]_0 [4]),
        .I3(\hlfb_e_reg[5]_0 [3]),
        .O(\hlfb_e[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFF53FF53FFFFFF53)) 
    \hlfb_e[5]_i_2 
       (.I0(\hlfb_e[5]_i_6_n_0 ),
        .I1(\hlfb_e[5]_i_7_n_0 ),
        .I2(\hlfb_e_reg[5]_3 ),
        .I3(\hlfb_e_reg[5]_4 ),
        .I4(\hlfb_e_reg[1]_1 ),
        .I5(\hlfb_e[5]_i_10_n_0 ),
        .O(\hlfb_e[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA999AAA995559995)) 
    \hlfb_e[5]_i_6 
       (.I0(\hlfb_e_reg[5]_0 [5]),
        .I1(\hlfb_e_reg[1]_4 ),
        .I2(\hlfb_f_reg[0]_2 [2]),
        .I3(\hlfb_e_reg[5]_0 [3]),
        .I4(\hlfb_e_reg[5]_5 ),
        .I5(\hlfb_e_reg[5]_0 [4]),
        .O(\hlfb_e[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hD57F)) 
    \hlfb_e[5]_i_7 
       (.I0(\hlfb_e_reg[1]_3 ),
        .I1(\hlfb_e_reg[5]_0 [4]),
        .I2(\hlfb_e_reg[5]_0 [3]),
        .I3(\hlfb_e_reg[5]_0 [5]),
        .O(\hlfb_e[5]_i_7_n_0 ));
  FDRE \hlfb_e_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D),
        .Q(\hlfb_e_reg[5]_0 [0]),
        .R(SR));
  FDRE \hlfb_e_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\hlfb_e[1]_i_1_n_0 ),
        .Q(\hlfb_e_reg[5]_0 [1]),
        .R(SR));
  FDRE \hlfb_e_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\hlfb_e[2]_i_1_n_0 ),
        .Q(\hlfb_e_reg[5]_0 [2]),
        .R(SR));
  FDRE \hlfb_e_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\hlfb_e[3]_i_1_n_0 ),
        .Q(\hlfb_e_reg[5]_0 [3]),
        .R(SR));
  FDRE \hlfb_e_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\hlfb_e[4]_i_1_n_0 ),
        .Q(\hlfb_e_reg[5]_0 [4]),
        .R(SR));
  FDRE \hlfb_e_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\hlfb_e[5]_i_2_n_0 ),
        .Q(\hlfb_e_reg[5]_0 [5]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000F8FF0000)) 
    \hlfb_f[0]_i_1 
       (.I0(\hlfb_f_reg[0]_0 ),
        .I1(\hlfb_f_reg[12]_0 [2]),
        .I2(\hlfb_f[0]_i_2_n_0 ),
        .I3(\hlfb_e_reg[1]_1 ),
        .I4(\hlfb_f_reg[0]_1 ),
        .I5(\hlfb_f[0]_i_3_n_0 ),
        .O(\hlfb_f[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEEEEEEEEE)) 
    \hlfb_f[0]_i_2 
       (.I0(\hlfb_f_reg[12]_0 [0]),
        .I1(\hlfb_f_reg[12]_0 [1]),
        .I2(\hlfb_f_reg[12]_0 [3]),
        .I3(\hlfb_f_reg[12]_0 [2]),
        .I4(\hlfb_f_reg[12]_0 [4]),
        .I5(\hlfb_e_reg[3]_2 ),
        .O(\hlfb_f[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00C0008000000080)) 
    \hlfb_f[0]_i_3 
       (.I0(\hlfb_f_reg[0]_2 [2]),
        .I1(\hlfb_f[0]_i_4_n_0 ),
        .I2(\hlfb_f[0]_i_5_n_0 ),
        .I3(\hlfb_e_reg[1]_5 ),
        .I4(\hlfb_e_reg[1]_4 ),
        .I5(\hlfb_f[0]_i_6_n_0 ),
        .O(\hlfb_f[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \hlfb_f[0]_i_4 
       (.I0(\hlfb_f_reg[12]_0 [3]),
        .I1(\hlfb_f_reg[12]_0 [2]),
        .I2(\hlfb_f_reg[12]_0 [4]),
        .O(\hlfb_f[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \hlfb_f[0]_i_5 
       (.I0(\hlfb_f_reg[12]_0 [0]),
        .I1(\hlfb_f_reg[12]_0 [1]),
        .I2(\hlfb_f_reg[12]_0 [8]),
        .I3(\hlfb_f_reg[12]_0 [7]),
        .I4(\hlfb_f_reg[12]_0 [6]),
        .I5(\hlfb_f_reg[12]_0 [5]),
        .O(\hlfb_f[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \hlfb_f[0]_i_6 
       (.I0(\hlfb_f_reg[12]_0 [10]),
        .I1(\hlfb_f_reg[12]_0 [11]),
        .I2(\hlfb_f_reg[12]_0 [9]),
        .I3(\hlfb_f_reg[12]_0 [12]),
        .O(\hlfb_f[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \hlfb_f[10]_i_2 
       (.I0(\hlfb_f_reg[0]_0 ),
        .I1(\hlfb_f_reg[12]_0 [12]),
        .I2(\hlfb_f_reg[12]_0 [11]),
        .I3(\hlfb_f_reg[4]_1 ),
        .O(\hlfb_f_reg[12]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \hlfb_f[12]_i_4 
       (.I0(bbus[11]),
        .I1(bbus[10]),
        .O(bbus_11_sn_1));
  LUT4 #(
    .INIT(16'hF888)) 
    \hlfb_f[3]_i_3 
       (.I0(\hlfb_f_reg[4]_1 ),
        .I1(\hlfb_f_reg[12]_0 [4]),
        .I2(\hlfb_f_reg[12]_0 [7]),
        .I3(\hlfb_e_reg[3]_2 ),
        .O(\hlfb_f_reg[4]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \hlfb_f[4]_i_2 
       (.I0(\hlfb_f_reg[0]_0 ),
        .I1(\hlfb_f_reg[12]_0 [6]),
        .I2(\hlfb_f_reg[4]_1 ),
        .I3(\hlfb_f_reg[12]_0 [5]),
        .O(\hlfb_f_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h0131CDFD0030CFFF)) 
    \hlfb_f[5]_i_2 
       (.I0(\hlfb_f_reg[12]_0 [7]),
        .I1(\hlfb_e_reg[1]_5 ),
        .I2(\hlfb_f_reg[0]_2 [1]),
        .I3(\hlfb_f_reg[12]_0 [9]),
        .I4(\hlfb_f_reg[12]_0 [6]),
        .I5(\hlfb_f_reg[0]_2 [0]),
        .O(\hlfb_f_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h01310030CDFDCFFF)) 
    \hlfb_f[6]_i_2 
       (.I0(\hlfb_f_reg[12]_0 [8]),
        .I1(\hlfb_e_reg[1]_5 ),
        .I2(\hlfb_f_reg[0]_2 [1]),
        .I3(\hlfb_f_reg[12]_0 [10]),
        .I4(\hlfb_f_reg[0]_2 [0]),
        .I5(\hlfb_f_reg[12]_0 [7]),
        .O(\hlfb_f_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h333305033333F5F3)) 
    \hlfb_f[7]_i_2 
       (.I0(\hlfb_f_reg[12]_0 [9]),
        .I1(\hlfb_f_reg[12]_0 [8]),
        .I2(\hlfb_f_reg[0]_2 [1]),
        .I3(\hlfb_f_reg[0]_2 [0]),
        .I4(\hlfb_e_reg[1]_5 ),
        .I5(\hlfb_f_reg[12]_0 [11]),
        .O(\hlfb_f_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h01310030CDFDCFFF)) 
    \hlfb_f[8]_i_2 
       (.I0(\hlfb_f_reg[12]_0 [10]),
        .I1(\hlfb_e_reg[1]_5 ),
        .I2(\hlfb_f_reg[0]_2 [1]),
        .I3(\hlfb_f_reg[12]_0 [12]),
        .I4(\hlfb_f_reg[0]_2 [0]),
        .I5(\hlfb_f_reg[12]_0 [9]),
        .O(\hlfb_f_reg[10]_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \hlfb_f[9]_i_2 
       (.I0(\hlfb_f_reg[0]_0 ),
        .I1(\hlfb_f_reg[12]_0 [11]),
        .I2(\hlfb_f_reg[12]_0 [10]),
        .I3(\hlfb_f_reg[4]_1 ),
        .O(\hlfb_f_reg[11]_0 ));
  FDRE \hlfb_f_reg[0] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_2 ),
        .D(\hlfb_f[0]_i_1_n_0 ),
        .Q(\hlfb_f_reg[12]_0 [0]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[10] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_2 ),
        .D(\hlfb_f_reg[12]_3 [9]),
        .Q(\hlfb_f_reg[12]_0 [10]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[11] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_2 ),
        .D(\hlfb_f_reg[12]_3 [10]),
        .Q(\hlfb_f_reg[12]_0 [11]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[12] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_2 ),
        .D(\hlfb_f_reg[12]_3 [11]),
        .Q(\hlfb_f_reg[12]_0 [12]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[1] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_2 ),
        .D(\hlfb_f_reg[12]_3 [0]),
        .Q(\hlfb_f_reg[12]_0 [1]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[2] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_2 ),
        .D(\hlfb_f_reg[12]_3 [1]),
        .Q(\hlfb_f_reg[12]_0 [2]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[3] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_2 ),
        .D(\hlfb_f_reg[12]_3 [2]),
        .Q(\hlfb_f_reg[12]_0 [3]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[4] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_2 ),
        .D(\hlfb_f_reg[12]_3 [3]),
        .Q(\hlfb_f_reg[12]_0 [4]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[5] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_2 ),
        .D(\hlfb_f_reg[12]_3 [4]),
        .Q(\hlfb_f_reg[12]_0 [5]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[6] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_2 ),
        .D(\hlfb_f_reg[12]_3 [5]),
        .Q(\hlfb_f_reg[12]_0 [6]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[7] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_2 ),
        .D(\hlfb_f_reg[12]_3 [6]),
        .Q(\hlfb_f_reg[12]_0 [7]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[8] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_2 ),
        .D(\hlfb_f_reg[12]_3 [7]),
        .Q(\hlfb_f_reg[12]_0 [8]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[9] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_2 ),
        .D(\hlfb_f_reg[12]_3 [8]),
        .Q(\hlfb_f_reg[12]_0 [9]),
        .R(\<const0> ));
  FDRE \hlfb_i_reg[0] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_3 ),
        .D(bbus[0]),
        .Q(\hlfb_i_reg_n_0_[0] ),
        .R(SR));
  FDRE \hlfb_i_reg[10] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_3 ),
        .D(bbus[10]),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \hlfb_i_reg[11] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_3 ),
        .D(bbus[11]),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE \hlfb_i_reg[12] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_3 ),
        .D(bbus[12]),
        .Q(p_0_in[2]),
        .R(SR));
  FDRE \hlfb_i_reg[13] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_3 ),
        .D(bbus[13]),
        .Q(p_0_in[3]),
        .R(SR));
  FDRE \hlfb_i_reg[14] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_3 ),
        .D(bbus[14]),
        .Q(p_0_in[4]),
        .R(SR));
  FDRE \hlfb_i_reg[15] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_3 ),
        .D(bbus[15]),
        .Q(Q),
        .R(SR));
  FDRE \hlfb_i_reg[1] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_3 ),
        .D(bbus[1]),
        .Q(\hlfb_i_reg_n_0_[1] ),
        .R(SR));
  FDRE \hlfb_i_reg[2] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_3 ),
        .D(bbus[2]),
        .Q(\hlfb_i_reg_n_0_[2] ),
        .R(SR));
  FDRE \hlfb_i_reg[3] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_3 ),
        .D(bbus[3]),
        .Q(\hlfb_i_reg_n_0_[3] ),
        .R(SR));
  FDRE \hlfb_i_reg[4] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_3 ),
        .D(bbus[4]),
        .Q(\hlfb_i_reg_n_0_[4] ),
        .R(SR));
  FDRE \hlfb_i_reg[5] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_3 ),
        .D(bbus[5]),
        .Q(\hlfb_i_reg_n_0_[5] ),
        .R(SR));
  FDRE \hlfb_i_reg[6] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_3 ),
        .D(bbus[6]),
        .Q(\hlfb_i_reg_n_0_[6] ),
        .R(SR));
  FDRE \hlfb_i_reg[7] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_3 ),
        .D(bbus[7]),
        .Q(\hlfb_i_reg_n_0_[7] ),
        .R(SR));
  FDRE \hlfb_i_reg[8] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_3 ),
        .D(bbus[8]),
        .Q(\hlfb_i_reg_n_0_[8] ),
        .R(SR));
  FDRE \hlfb_i_reg[9] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_3 ),
        .D(bbus[9]),
        .Q(\hlfb_i_reg_n_0_[9] ),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    hlfc_e_carry_i_4
       (.I0(\hlfb_e_reg[5]_0 [0]),
        .I1(hlfa_r_0[0]),
        .O(S));
  LUT3 #(
    .INIT(8'h96)) 
    hlfc_f_t_carry_i_1
       (.I0(Q),
        .I1(hctl_ccmd_sub),
        .I2(hlfa_r_0[6]),
        .O(\hlfb_i_reg[15]_1 ));
  LUT6 #(
    .INIT(64'h0000888000000000)) 
    \hlfc_i[24]_i_3 
       (.I0(\hlfb_i_reg[4]_0 ),
        .I1(\hlfc_i_reg[24]_0 ),
        .I2(\hlfb_i_reg[14]_0 ),
        .I3(\hlfc_i_reg[24] ),
        .I4(hctl_ccmd_mul),
        .I5(hctl_ccmd_div),
        .O(hctl_ccmd_mul_reg_0));
endmodule

module hfpu_hmul
   (hlfc_r_hmul,
    hlfa_r_0,
    S,
    \cbus[14]_INST_0_i_25 );
  output [5:0]hlfc_r_hmul;
  input [4:0]hlfa_r_0;
  input [3:0]S;
  input [1:0]\cbus[14]_INST_0_i_25 ;

  wire \<const0> ;
  wire [3:0]S;
  wire [1:0]\cbus[14]_INST_0_i_25 ;
  wire [4:0]hlfa_r_0;
  wire hlfc_e_carry__0_n_3;
  wire hlfc_e_carry_n_0;
  wire hlfc_e_carry_n_1;
  wire hlfc_e_carry_n_2;
  wire hlfc_e_carry_n_3;
  wire [5:0]hlfc_r_hmul;

  GND GND
       (.G(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfc_e_carry
       (.CI(\<const0> ),
        .CO({hlfc_e_carry_n_0,hlfc_e_carry_n_1,hlfc_e_carry_n_2,hlfc_e_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI(hlfa_r_0[3:0]),
        .O(hlfc_r_hmul[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfc_e_carry__0
       (.CI(hlfc_e_carry_n_0),
        .CO(hlfc_e_carry__0_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,hlfa_r_0[4]}),
        .O(hlfc_r_hmul[5:4]),
        .S({\<const0> ,\<const0> ,\cbus[14]_INST_0_i_25 }));
endmodule

module hfpu_norm
   (\hlfc_f_reg[8]_0 ,
    hctl_ccmd_cmp_reg,
    Q,
    \hlfc_f_reg[2]_0 ,
    \hlfc_f_reg[10]_0 ,
    hctl_ccmd_reg_reg,
    \stat_reg[2] ,
    \hlfc_f_reg[13]_0 ,
    \hlfc_f_reg[13]_1 ,
    \hlfc_f_reg[4]_0 ,
    \hlfc_f_reg[10]_1 ,
    \hlfc_f_reg[3]_0 ,
    \hlfc_f_reg[1]_0 ,
    \hlfc_f_reg[10]_2 ,
    \hfpu_dsp_c[13] ,
    \hfpu_dsp_c[21] ,
    \hlfc_f_reg[13]_2 ,
    \hlfc_f_reg[13]_3 ,
    \hlfc_f_reg[13]_4 ,
    \hlfc_f_reg[13]_5 ,
    hctl_ccmd_cmp_reg_0,
    \hlfc_i_reg[23]_0 ,
    \hlfc_e_reg[0]_0 ,
    \hlfc_e_reg[5]_0 ,
    \hlfc_e_reg[1]_0 ,
    \hlfc_e_reg[4]_0 ,
    \hlfc_e_reg[3]_0 ,
    hctl_ccmd_reg_reg_0,
    \hlfc_i_reg[25]_0 ,
    \hlfc_e_reg[4]_1 ,
    \hlfc_f_reg[11]_0 ,
    hctl_ccmd_reg_reg_1,
    hctl_ccmd_reg_reg_2,
    hctl_ccmd_reg_reg_3,
    \hlfc_e_reg[3]_1 ,
    \hlfc_f_reg[6]_0 ,
    \hlfc_i_reg[23]_1 ,
    \hlfc_i_reg[23]_2 ,
    \hlfc_i_reg[23]_3 ,
    \hlfc_i_reg[23]_4 ,
    \hlfc_i_reg[23]_5 ,
    \cbus[6]_INST_0_i_2 ,
    \cbus[6]_INST_0_i_2_0 ,
    \cbus[6]_INST_0_i_2_1 ,
    hctl_ccmd_cmp,
    hctl_ccmd_reg,
    \hlfc_f_reg[2]_1 ,
    \cbus[0] ,
    \hlfc_f_reg[10]_3 ,
    \cbus[11] ,
    p_16_in,
    \cbus[11]_0 ,
    \stat[3]_i_6 ,
    \hlfc_f_reg[6]_1 ,
    hctl_load_c,
    \hlfc_f_reg[7]_0 ,
    \hlfc_f_reg[8]_1 ,
    \hlfc_f_reg[12]_0 ,
    \hlfc_f_reg[9]_0 ,
    \hlfc_f_reg[1]_1 ,
    \hlfc_f_reg[13]_6 ,
    hfpu_dsp_c,
    \cbus[12]_INST_0_i_1 ,
    \cbus[14] ,
    hctl_ccmd_hlf,
    SR,
    E,
    D,
    clk,
    \hlfc_i_reg[25]_1 ,
    \hlfc_e_reg[3]_2 ,
    \hlfc_e_reg[3]_3 ,
    \hlfc_e_reg[5]_1 );
  output \hlfc_f_reg[8]_0 ;
  output hctl_ccmd_cmp_reg;
  output [4:0]Q;
  output \hlfc_f_reg[2]_0 ;
  output \hlfc_f_reg[10]_0 ;
  output hctl_ccmd_reg_reg;
  output \stat_reg[2] ;
  output \hlfc_f_reg[13]_0 ;
  output \hlfc_f_reg[13]_1 ;
  output \hlfc_f_reg[4]_0 ;
  output \hlfc_f_reg[10]_1 ;
  output \hlfc_f_reg[3]_0 ;
  output \hlfc_f_reg[1]_0 ;
  output \hlfc_f_reg[10]_2 ;
  output \hfpu_dsp_c[13] ;
  output \hfpu_dsp_c[21] ;
  output \hlfc_f_reg[13]_2 ;
  output \hlfc_f_reg[13]_3 ;
  output \hlfc_f_reg[13]_4 ;
  output \hlfc_f_reg[13]_5 ;
  output hctl_ccmd_cmp_reg_0;
  output \hlfc_i_reg[23]_0 ;
  output [0:0]\hlfc_e_reg[0]_0 ;
  output \hlfc_e_reg[5]_0 ;
  output \hlfc_e_reg[1]_0 ;
  output \hlfc_e_reg[4]_0 ;
  output \hlfc_e_reg[3]_0 ;
  output hctl_ccmd_reg_reg_0;
  output [2:0]\hlfc_i_reg[25]_0 ;
  output \hlfc_e_reg[4]_1 ;
  output \hlfc_f_reg[11]_0 ;
  output hctl_ccmd_reg_reg_1;
  output hctl_ccmd_reg_reg_2;
  output hctl_ccmd_reg_reg_3;
  output \hlfc_e_reg[3]_1 ;
  output \hlfc_f_reg[6]_0 ;
  output \hlfc_i_reg[23]_1 ;
  output \hlfc_i_reg[23]_2 ;
  output \hlfc_i_reg[23]_3 ;
  output \hlfc_i_reg[23]_4 ;
  output \hlfc_i_reg[23]_5 ;
  input \cbus[6]_INST_0_i_2 ;
  input \cbus[6]_INST_0_i_2_0 ;
  input \cbus[6]_INST_0_i_2_1 ;
  input hctl_ccmd_cmp;
  input hctl_ccmd_reg;
  input \hlfc_f_reg[2]_1 ;
  input \cbus[0] ;
  input \hlfc_f_reg[10]_3 ;
  input \cbus[11] ;
  input [2:0]p_16_in;
  input \cbus[11]_0 ;
  input [1:0]\stat[3]_i_6 ;
  input \hlfc_f_reg[6]_1 ;
  input hctl_load_c;
  input \hlfc_f_reg[7]_0 ;
  input \hlfc_f_reg[8]_1 ;
  input \hlfc_f_reg[12]_0 ;
  input \hlfc_f_reg[9]_0 ;
  input \hlfc_f_reg[1]_1 ;
  input \hlfc_f_reg[13]_6 ;
  input [5:0]hfpu_dsp_c;
  input \cbus[12]_INST_0_i_1 ;
  input \cbus[14] ;
  input hctl_ccmd_hlf;
  input [0:0]SR;
  input [0:0]E;
  input [6:0]D;
  input clk;
  input [3:0]\hlfc_i_reg[25]_1 ;
  input \hlfc_e_reg[3]_2 ;
  input \hlfc_e_reg[3]_3 ;
  input \hlfc_e_reg[5]_1 ;

  wire \<const0> ;
  wire [6:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]SR;
  wire \cbus[0] ;
  wire \cbus[11] ;
  wire \cbus[11]_0 ;
  wire \cbus[11]_INST_0_i_3_n_0 ;
  wire \cbus[11]_INST_0_i_6_n_0 ;
  wire \cbus[12]_INST_0_i_1 ;
  wire \cbus[14] ;
  wire \cbus[14]_INST_0_i_23_n_0 ;
  wire \cbus[6]_INST_0_i_2 ;
  wire \cbus[6]_INST_0_i_2_0 ;
  wire \cbus[6]_INST_0_i_2_1 ;
  wire \cbus[8]_INST_0_i_3_n_0 ;
  wire clk;
  wire crdy_INST_0_i_3_n_0;
  wire crdy_INST_0_i_4_n_0;
  wire crdy_INST_0_i_5_n_0;
  wire hctl_ccmd_cmp;
  wire hctl_ccmd_cmp_reg;
  wire hctl_ccmd_cmp_reg_0;
  wire hctl_ccmd_hlf;
  wire hctl_ccmd_reg;
  wire hctl_ccmd_reg_reg;
  wire hctl_ccmd_reg_reg_0;
  wire hctl_ccmd_reg_reg_1;
  wire hctl_ccmd_reg_reg_2;
  wire hctl_ccmd_reg_reg_3;
  wire hctl_load_c;
  wire [5:0]hfpu_dsp_c;
  wire \hfpu_dsp_c[13] ;
  wire \hfpu_dsp_c[21] ;
  wire \hlfc_e[3]_i_10_n_0 ;
  wire \hlfc_e[3]_i_11_n_0 ;
  wire \hlfc_e[3]_i_12_n_0 ;
  wire \hlfc_e[3]_i_13_n_0 ;
  wire \hlfc_e[3]_i_2_n_0 ;
  wire \hlfc_e[3]_i_3_n_0 ;
  wire \hlfc_e[3]_i_4_n_0 ;
  wire \hlfc_e[3]_i_5_n_0 ;
  wire \hlfc_e[3]_i_6_n_0 ;
  wire \hlfc_e[3]_i_7_n_0 ;
  wire \hlfc_e[3]_i_8_n_0 ;
  wire \hlfc_e[3]_i_9_n_0 ;
  wire \hlfc_e[5]_i_2_n_0 ;
  wire \hlfc_e[5]_i_3_n_0 ;
  wire \hlfc_e[5]_i_4_n_0 ;
  wire [0:0]\hlfc_e_reg[0]_0 ;
  wire \hlfc_e_reg[1]_0 ;
  wire \hlfc_e_reg[3]_0 ;
  wire \hlfc_e_reg[3]_1 ;
  wire \hlfc_e_reg[3]_2 ;
  wire \hlfc_e_reg[3]_3 ;
  wire \hlfc_e_reg[3]_i_1_n_0 ;
  wire \hlfc_e_reg[3]_i_1_n_1 ;
  wire \hlfc_e_reg[3]_i_1_n_2 ;
  wire \hlfc_e_reg[3]_i_1_n_3 ;
  wire \hlfc_e_reg[3]_i_1_n_4 ;
  wire \hlfc_e_reg[3]_i_1_n_5 ;
  wire \hlfc_e_reg[3]_i_1_n_6 ;
  wire \hlfc_e_reg[3]_i_1_n_7 ;
  wire \hlfc_e_reg[4]_0 ;
  wire \hlfc_e_reg[4]_1 ;
  wire \hlfc_e_reg[5]_0 ;
  wire \hlfc_e_reg[5]_1 ;
  wire \hlfc_e_reg[5]_i_1_n_3 ;
  wire \hlfc_e_reg[5]_i_1_n_6 ;
  wire \hlfc_e_reg[5]_i_1_n_7 ;
  wire \hlfc_e_reg_n_0_[1] ;
  wire \hlfc_e_reg_n_0_[2] ;
  wire \hlfc_e_reg_n_0_[3] ;
  wire \hlfc_e_reg_n_0_[4] ;
  wire \hlfc_e_reg_n_0_[5] ;
  wire \hlfc_f[10]_i_1_n_0 ;
  wire \hlfc_f[10]_i_2_n_0 ;
  wire \hlfc_f[10]_i_3_n_0 ;
  wire \hlfc_f[10]_i_4_n_0 ;
  wire \hlfc_f[10]_i_5_n_0 ;
  wire \hlfc_f[10]_i_6_n_0 ;
  wire \hlfc_f[10]_i_7_n_0 ;
  wire \hlfc_f[10]_i_8_n_0 ;
  wire \hlfc_f[11]_i_4_n_0 ;
  wire \hlfc_f[12]_i_1_n_0 ;
  wire \hlfc_f[12]_i_2_n_0 ;
  wire \hlfc_f[12]_i_3_n_0 ;
  wire \hlfc_f[12]_i_4_n_0 ;
  wire \hlfc_f[12]_i_5_n_0 ;
  wire \hlfc_f[13]_i_1_n_0 ;
  wire \hlfc_f[1]_i_1_n_0 ;
  wire \hlfc_f[1]_i_2_n_0 ;
  wire \hlfc_f[1]_i_3_n_0 ;
  wire \hlfc_f[2]_i_1_n_0 ;
  wire \hlfc_f[2]_i_2_n_0 ;
  wire \hlfc_f[2]_i_3_n_0 ;
  wire \hlfc_f[4]_i_4_n_0 ;
  wire \hlfc_f[5]_i_4_n_0 ;
  wire \hlfc_f[6]_i_1_n_0 ;
  wire \hlfc_f[6]_i_2_n_0 ;
  wire \hlfc_f[6]_i_3_n_0 ;
  wire \hlfc_f[6]_i_4_n_0 ;
  wire \hlfc_f[7]_i_1_n_0 ;
  wire \hlfc_f[7]_i_2_n_0 ;
  wire \hlfc_f[7]_i_3_n_0 ;
  wire \hlfc_f[7]_i_4_n_0 ;
  wire \hlfc_f[7]_i_5_n_0 ;
  wire \hlfc_f[8]_i_1_n_0 ;
  wire \hlfc_f[8]_i_2_n_0 ;
  wire \hlfc_f[8]_i_3_n_0 ;
  wire \hlfc_f[8]_i_4_n_0 ;
  wire \hlfc_f[8]_i_5_n_0 ;
  wire \hlfc_f[8]_i_6_n_0 ;
  wire \hlfc_f[8]_i_7_n_0 ;
  wire \hlfc_f[8]_i_8_n_0 ;
  wire \hlfc_f[9]_i_1_n_0 ;
  wire \hlfc_f[9]_i_2_n_0 ;
  wire \hlfc_f[9]_i_3_n_0 ;
  wire \hlfc_f[9]_i_4_n_0 ;
  wire \hlfc_f[9]_i_5_n_0 ;
  wire \hlfc_f_reg[10]_0 ;
  wire \hlfc_f_reg[10]_1 ;
  wire \hlfc_f_reg[10]_2 ;
  wire \hlfc_f_reg[10]_3 ;
  wire \hlfc_f_reg[11]_0 ;
  wire \hlfc_f_reg[12]_0 ;
  wire \hlfc_f_reg[13]_0 ;
  wire \hlfc_f_reg[13]_1 ;
  wire \hlfc_f_reg[13]_2 ;
  wire \hlfc_f_reg[13]_3 ;
  wire \hlfc_f_reg[13]_4 ;
  wire \hlfc_f_reg[13]_5 ;
  wire \hlfc_f_reg[13]_6 ;
  wire \hlfc_f_reg[1]_0 ;
  wire \hlfc_f_reg[1]_1 ;
  wire \hlfc_f_reg[2]_0 ;
  wire \hlfc_f_reg[2]_1 ;
  wire \hlfc_f_reg[3]_0 ;
  wire \hlfc_f_reg[4]_0 ;
  wire \hlfc_f_reg[6]_0 ;
  wire \hlfc_f_reg[6]_1 ;
  wire \hlfc_f_reg[7]_0 ;
  wire \hlfc_f_reg[8]_0 ;
  wire \hlfc_f_reg[8]_1 ;
  wire \hlfc_f_reg[9]_0 ;
  wire \hlfc_f_reg_n_0_[0] ;
  wire \hlfc_f_reg_n_0_[1] ;
  wire \hlfc_i_reg[23]_0 ;
  wire \hlfc_i_reg[23]_1 ;
  wire \hlfc_i_reg[23]_2 ;
  wire \hlfc_i_reg[23]_3 ;
  wire \hlfc_i_reg[23]_4 ;
  wire \hlfc_i_reg[23]_5 ;
  wire [2:0]\hlfc_i_reg[25]_0 ;
  wire [3:0]\hlfc_i_reg[25]_1 ;
  wire hlfc_inf;
  wire [8:0]p_0_in;
  wire [2:0]p_16_in;
  wire [3:1]p_1_in;
  wire [1:0]\stat[3]_i_6 ;
  wire \stat_reg[2] ;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h305030503050FF50)) 
    \cbus[0]_INST_0_i_1 
       (.I0(hctl_ccmd_cmp_reg),
        .I1(\cbus[8]_INST_0_i_3_n_0 ),
        .I2(p_0_in[0]),
        .I3(hctl_ccmd_reg),
        .I4(\hlfc_f_reg[2]_1 ),
        .I5(\cbus[0] ),
        .O(\hlfc_f_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h00101111)) 
    \cbus[10]_INST_0_i_1 
       (.I0(hctl_ccmd_cmp),
        .I1(hctl_ccmd_reg),
        .I2(\hlfc_i_reg[23]_0 ),
        .I3(\hlfc_e_reg[0]_0 ),
        .I4(\hlfc_e_reg[5]_0 ),
        .O(hctl_ccmd_cmp_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF54454444)) 
    \cbus[11]_INST_0_i_1 
       (.I0(\cbus[11]_INST_0_i_3_n_0 ),
        .I1(\cbus[11] ),
        .I2(p_16_in[1]),
        .I3(p_16_in[0]),
        .I4(\cbus[11]_0 ),
        .I5(\cbus[11]_INST_0_i_6_n_0 ),
        .O(hctl_ccmd_reg_reg));
  LUT5 #(
    .INIT(32'hDFFD5555)) 
    \cbus[11]_INST_0_i_3 
       (.I0(hctl_ccmd_reg),
        .I1(\hlfc_i_reg[25]_0 [1]),
        .I2(\hlfc_e_reg_n_0_[1] ),
        .I3(\hlfc_e_reg[0]_0 ),
        .I4(hctl_ccmd_hlf),
        .O(\cbus[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1000001011111111)) 
    \cbus[11]_INST_0_i_6 
       (.I0(hctl_ccmd_cmp),
        .I1(hctl_ccmd_reg),
        .I2(\hlfc_i_reg[23]_0 ),
        .I3(\hlfc_e_reg[0]_0 ),
        .I4(\hlfc_e_reg_n_0_[1] ),
        .I5(\hlfc_e_reg[5]_0 ),
        .O(\cbus[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDFFD55555555)) 
    \cbus[12]_INST_0_i_3 
       (.I0(hctl_ccmd_reg),
        .I1(\hlfc_i_reg[25]_0 [1]),
        .I2(\hlfc_e_reg_n_0_[2] ),
        .I3(\hlfc_e_reg[0]_0 ),
        .I4(\hlfc_e_reg_n_0_[1] ),
        .I5(hctl_ccmd_hlf),
        .O(hctl_ccmd_reg_reg_0));
  LUT6 #(
    .INIT(64'h88800008AAAAAAAA)) 
    \cbus[12]_INST_0_i_4 
       (.I0(\cbus[12]_INST_0_i_1 ),
        .I1(\hlfc_i_reg[23]_0 ),
        .I2(\hlfc_e_reg_n_0_[1] ),
        .I3(\hlfc_e_reg[0]_0 ),
        .I4(\hlfc_e_reg_n_0_[2] ),
        .I5(\hlfc_e_reg[5]_0 ),
        .O(\hlfc_e_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[13]_INST_0_i_17 
       (.I0(hfpu_dsp_c[2]),
        .I1(hfpu_dsp_c[3]),
        .I2(hfpu_dsp_c[1]),
        .I3(hfpu_dsp_c[0]),
        .O(\hfpu_dsp_c[13] ));
  LUT6 #(
    .INIT(64'hBBBBBBBEAAAAAAAA)) 
    \cbus[13]_INST_0_i_4 
       (.I0(\cbus[14] ),
        .I1(\hlfc_e_reg_n_0_[3] ),
        .I2(\hlfc_e_reg_n_0_[2] ),
        .I3(\hlfc_e_reg_n_0_[1] ),
        .I4(\hlfc_e_reg[0]_0 ),
        .I5(hctl_ccmd_hlf),
        .O(\hlfc_e_reg[3]_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \cbus[13]_INST_0_i_6 
       (.I0(\hlfc_e_reg_n_0_[3] ),
        .I1(\hlfc_e_reg_n_0_[2] ),
        .I2(\hlfc_e_reg_n_0_[1] ),
        .I3(\hlfc_e_reg[0]_0 ),
        .O(\hlfc_e_reg[3]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cbus[14]_INST_0_i_23 
       (.I0(\hlfc_e_reg_n_0_[1] ),
        .I1(\hlfc_e_reg[0]_0 ),
        .O(\cbus[14]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEBEAAAAAAAA)) 
    \cbus[14]_INST_0_i_5 
       (.I0(\cbus[14] ),
        .I1(\hlfc_e_reg_n_0_[4] ),
        .I2(\cbus[14]_INST_0_i_23_n_0 ),
        .I3(\hlfc_e_reg_n_0_[3] ),
        .I4(\hlfc_e_reg_n_0_[2] ),
        .I5(hctl_ccmd_hlf),
        .O(\hlfc_e_reg[4]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cbus[14]_INST_0_i_57 
       (.I0(hfpu_dsp_c[5]),
        .I1(hfpu_dsp_c[4]),
        .O(\hfpu_dsp_c[21] ));
  LUT4 #(
    .INIT(16'h000B)) 
    \cbus[14]_INST_0_i_7 
       (.I0(\hlfc_e_reg_n_0_[5] ),
        .I1(\hlfc_e_reg_n_0_[4] ),
        .I2(hlfc_inf),
        .I3(\hlfc_i_reg[25]_0 [2]),
        .O(\hlfc_e_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h4444444055555555)) 
    \cbus[14]_INST_0_i_8 
       (.I0(\hlfc_i_reg[25]_0 [1]),
        .I1(\hlfc_e_reg_n_0_[4] ),
        .I2(\hlfc_e_reg_n_0_[3] ),
        .I3(\hlfc_e_reg_n_0_[2] ),
        .I4(\hlfc_e_reg_n_0_[1] ),
        .I5(\hlfc_e_reg_n_0_[5] ),
        .O(\hlfc_i_reg[23]_0 ));
  LUT5 #(
    .INIT(32'h55555556)) 
    \cbus[14]_INST_0_i_9 
       (.I0(\hlfc_e_reg_n_0_[4] ),
        .I1(\hlfc_e_reg_n_0_[1] ),
        .I2(\hlfc_e_reg[0]_0 ),
        .I3(\hlfc_e_reg_n_0_[3] ),
        .I4(\hlfc_e_reg_n_0_[2] ),
        .O(\hlfc_e_reg[4]_1 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \cbus[1]_INST_0_i_1 
       (.I0(hctl_ccmd_reg),
        .I1(hctl_ccmd_cmp_reg),
        .I2(p_0_in[1]),
        .O(hctl_ccmd_reg_reg_1));
  LUT4 #(
    .INIT(16'h40FF)) 
    \cbus[1]_INST_0_i_2 
       (.I0(\hlfc_i_reg[25]_0 [1]),
        .I1(hctl_ccmd_hlf),
        .I2(p_0_in[1]),
        .I3(hctl_ccmd_reg),
        .O(\hlfc_i_reg[23]_1 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \cbus[2]_INST_0_i_1 
       (.I0(hctl_ccmd_reg),
        .I1(hctl_ccmd_cmp_reg),
        .I2(p_0_in[2]),
        .O(hctl_ccmd_reg_reg_2));
  LUT4 #(
    .INIT(16'h40FF)) 
    \cbus[2]_INST_0_i_2 
       (.I0(\hlfc_i_reg[25]_0 [1]),
        .I1(hctl_ccmd_hlf),
        .I2(p_0_in[2]),
        .I3(hctl_ccmd_reg),
        .O(\hlfc_i_reg[23]_2 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \cbus[3]_INST_0_i_1 
       (.I0(hctl_ccmd_reg),
        .I1(hctl_ccmd_cmp_reg),
        .I2(p_0_in[3]),
        .O(hctl_ccmd_reg_reg_3));
  LUT4 #(
    .INIT(16'h40FF)) 
    \cbus[3]_INST_0_i_2 
       (.I0(\hlfc_i_reg[25]_0 [1]),
        .I1(hctl_ccmd_hlf),
        .I2(p_0_in[3]),
        .I3(hctl_ccmd_reg),
        .O(\hlfc_i_reg[23]_3 ));
  LUT2 #(
    .INIT(4'hB)) 
    \cbus[4]_INST_0_i_1 
       (.I0(hctl_ccmd_cmp_reg),
        .I1(Q[0]),
        .O(\hlfc_f_reg[6]_0 ));
  LUT4 #(
    .INIT(16'h40FF)) 
    \cbus[5]_INST_0_i_1 
       (.I0(\hlfc_i_reg[25]_0 [1]),
        .I1(hctl_ccmd_hlf),
        .I2(Q[1]),
        .I3(hctl_ccmd_reg),
        .O(\hlfc_i_reg[23]_4 ));
  LUT4 #(
    .INIT(16'h40FF)) 
    \cbus[6]_INST_0_i_1 
       (.I0(\hlfc_i_reg[25]_0 [1]),
        .I1(hctl_ccmd_hlf),
        .I2(p_0_in[6]),
        .I3(hctl_ccmd_reg),
        .O(\hlfc_i_reg[23]_5 ));
  LUT6 #(
    .INIT(64'hFFFFF44444444444)) 
    \cbus[6]_INST_0_i_4 
       (.I0(hctl_ccmd_cmp_reg),
        .I1(p_0_in[6]),
        .I2(\cbus[6]_INST_0_i_2 ),
        .I3(\cbus[6]_INST_0_i_2_0 ),
        .I4(\cbus[6]_INST_0_i_2_1 ),
        .I5(hctl_ccmd_cmp),
        .O(\hlfc_f_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h3050FF5030503050)) 
    \cbus[8]_INST_0_i_1 
       (.I0(hctl_ccmd_cmp_reg),
        .I1(\cbus[8]_INST_0_i_3_n_0 ),
        .I2(p_0_in[8]),
        .I3(hctl_ccmd_reg),
        .I4(\cbus[0] ),
        .I5(\hlfc_f_reg[10]_3 ),
        .O(\hlfc_f_reg[10]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \cbus[8]_INST_0_i_3 
       (.I0(\hlfc_i_reg[25]_0 [1]),
        .I1(hctl_ccmd_hlf),
        .O(\cbus[8]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000DD0D)) 
    \cbus[9]_INST_0_i_3 
       (.I0(Q[3]),
        .I1(hctl_ccmd_cmp_reg),
        .I2(\hlfc_i_reg[25]_0 [2]),
        .I3(hctl_ccmd_cmp),
        .I4(hctl_ccmd_reg),
        .O(\hlfc_f_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFDD)) 
    \cbus[9]_INST_0_i_6 
       (.I0(\hlfc_i_reg[23]_0 ),
        .I1(hctl_ccmd_cmp),
        .I2(\hlfc_e_reg_n_0_[5] ),
        .I3(\hlfc_e_reg_n_0_[4] ),
        .I4(hlfc_inf),
        .I5(\hlfc_i_reg[25]_0 [2]),
        .O(hctl_ccmd_cmp_reg));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    crdy_INST_0_i_2
       (.I0(p_1_in[1]),
        .I1(p_1_in[3]),
        .I2(p_1_in[2]),
        .I3(Q[4]),
        .I4(crdy_INST_0_i_3_n_0),
        .O(\hlfc_f_reg[13]_1 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    crdy_INST_0_i_3
       (.I0(Q[0]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(\hlfc_f_reg[13]_0 ),
        .I5(crdy_INST_0_i_4_n_0),
        .O(crdy_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    crdy_INST_0_i_4
       (.I0(p_0_in[0]),
        .I1(\hlfc_f_reg_n_0_[1] ),
        .I2(crdy_INST_0_i_5_n_0),
        .I3(\hlfc_f_reg_n_0_[0] ),
        .I4(Q[3]),
        .I5(\hlfc_f[8]_i_5_n_0 ),
        .O(crdy_INST_0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    crdy_INST_0_i_5
       (.I0(Q[1]),
        .I1(p_0_in[6]),
        .O(crdy_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    \hlfc_e[3]_i_10 
       (.I0(Q[0]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .O(\hlfc_e[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FE00)) 
    \hlfc_e[3]_i_11 
       (.I0(Q[1]),
        .I1(p_0_in[6]),
        .I2(\hlfc_f[8]_i_6_n_0 ),
        .I3(\hlfc_f[9]_i_5_n_0 ),
        .I4(p_1_in[2]),
        .I5(p_1_in[3]),
        .O(\hlfc_e[3]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \hlfc_e[3]_i_12 
       (.I0(p_1_in[3]),
        .I1(p_1_in[2]),
        .I2(p_1_in[1]),
        .O(\hlfc_e[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF0FD)) 
    \hlfc_e[3]_i_13 
       (.I0(\hlfc_f[1]_i_2_n_0 ),
        .I1(p_1_in[1]),
        .I2(p_1_in[3]),
        .I3(p_1_in[2]),
        .O(\hlfc_e[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfc_e[3]_i_2 
       (.I0(\hlfc_e_reg_n_0_[3] ),
        .I1(hctl_load_c),
        .O(\hlfc_e[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfc_e[3]_i_3 
       (.I0(\hlfc_e_reg_n_0_[2] ),
        .I1(hctl_load_c),
        .O(\hlfc_e[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfc_e[3]_i_4 
       (.I0(\hlfc_e_reg_n_0_[1] ),
        .I1(hctl_load_c),
        .O(\hlfc_e[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfc_e[3]_i_5 
       (.I0(\hlfc_e_reg[0]_0 ),
        .I1(hctl_load_c),
        .O(\hlfc_e[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h009AFF9A)) 
    \hlfc_e[3]_i_6 
       (.I0(\hlfc_e_reg_n_0_[3] ),
        .I1(\hlfc_f[12]_i_2_n_0 ),
        .I2(\hlfc_f_reg[13]_0 ),
        .I3(hctl_load_c),
        .I4(\hlfc_e_reg[3]_3 ),
        .O(\hlfc_e[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00005A9AFFFF5A9A)) 
    \hlfc_e[3]_i_7 
       (.I0(\hlfc_e_reg_n_0_[2] ),
        .I1(\hlfc_f[12]_i_4_n_0 ),
        .I2(\hlfc_f_reg[13]_0 ),
        .I3(\hlfc_e[3]_i_10_n_0 ),
        .I4(hctl_load_c),
        .I5(\hlfc_e_reg[3]_2 ),
        .O(\hlfc_e[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF9A009A)) 
    \hlfc_e[3]_i_8 
       (.I0(\hlfc_e_reg_n_0_[1] ),
        .I1(\hlfc_e[3]_i_11_n_0 ),
        .I2(\hlfc_e[3]_i_12_n_0 ),
        .I3(hctl_load_c),
        .I4(p_16_in[1]),
        .O(\hlfc_e[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \hlfc_e[3]_i_9 
       (.I0(\hlfc_e_reg[0]_0 ),
        .I1(\hlfc_e[3]_i_13_n_0 ),
        .I2(hctl_load_c),
        .I3(p_16_in[0]),
        .O(\hlfc_e[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfc_e[5]_i_2 
       (.I0(\hlfc_e_reg_n_0_[4] ),
        .I1(hctl_load_c),
        .O(\hlfc_e[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \hlfc_e[5]_i_3 
       (.I0(\hlfc_e_reg_n_0_[5] ),
        .I1(p_1_in[2]),
        .I2(p_1_in[3]),
        .I3(p_1_in[1]),
        .I4(hctl_load_c),
        .I5(p_16_in[2]),
        .O(\hlfc_e[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA9FFFFAAA9)) 
    \hlfc_e[5]_i_4 
       (.I0(\hlfc_e_reg_n_0_[4] ),
        .I1(p_1_in[2]),
        .I2(p_1_in[3]),
        .I3(p_1_in[1]),
        .I4(hctl_load_c),
        .I5(\hlfc_e_reg[5]_1 ),
        .O(\hlfc_e[5]_i_4_n_0 ));
  FDRE \hlfc_e_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_e_reg[3]_i_1_n_7 ),
        .Q(\hlfc_e_reg[0]_0 ),
        .R(SR));
  FDRE \hlfc_e_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_e_reg[3]_i_1_n_6 ),
        .Q(\hlfc_e_reg_n_0_[1] ),
        .R(SR));
  FDRE \hlfc_e_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_e_reg[3]_i_1_n_5 ),
        .Q(\hlfc_e_reg_n_0_[2] ),
        .R(SR));
  FDRE \hlfc_e_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_e_reg[3]_i_1_n_4 ),
        .Q(\hlfc_e_reg_n_0_[3] ),
        .R(SR));
  CARRY4 \hlfc_e_reg[3]_i_1 
       (.CI(\<const0> ),
        .CO({\hlfc_e_reg[3]_i_1_n_0 ,\hlfc_e_reg[3]_i_1_n_1 ,\hlfc_e_reg[3]_i_1_n_2 ,\hlfc_e_reg[3]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\hlfc_e[3]_i_2_n_0 ,\hlfc_e[3]_i_3_n_0 ,\hlfc_e[3]_i_4_n_0 ,\hlfc_e[3]_i_5_n_0 }),
        .O({\hlfc_e_reg[3]_i_1_n_4 ,\hlfc_e_reg[3]_i_1_n_5 ,\hlfc_e_reg[3]_i_1_n_6 ,\hlfc_e_reg[3]_i_1_n_7 }),
        .S({\hlfc_e[3]_i_6_n_0 ,\hlfc_e[3]_i_7_n_0 ,\hlfc_e[3]_i_8_n_0 ,\hlfc_e[3]_i_9_n_0 }));
  FDRE \hlfc_e_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_e_reg[5]_i_1_n_7 ),
        .Q(\hlfc_e_reg_n_0_[4] ),
        .R(SR));
  FDRE \hlfc_e_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_e_reg[5]_i_1_n_6 ),
        .Q(\hlfc_e_reg_n_0_[5] ),
        .R(SR));
  CARRY4 \hlfc_e_reg[5]_i_1 
       (.CI(\hlfc_e_reg[3]_i_1_n_0 ),
        .CO(\hlfc_e_reg[5]_i_1_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\hlfc_e[5]_i_2_n_0 }),
        .O({\hlfc_e_reg[5]_i_1_n_6 ,\hlfc_e_reg[5]_i_1_n_7 }),
        .S({\<const0> ,\<const0> ,\hlfc_e[5]_i_3_n_0 ,\hlfc_e[5]_i_4_n_0 }));
  LUT6 #(
    .INIT(64'hFFF8F0F80F080008)) 
    \hlfc_f[0]_i_2 
       (.I0(p_1_in[1]),
        .I1(\hlfc_f_reg_n_0_[1] ),
        .I2(p_1_in[3]),
        .I3(p_1_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\hlfc_f_reg[13]_3 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8B8B8B88)) 
    \hlfc_f[10]_i_1 
       (.I0(\hlfc_f_reg[10]_3 ),
        .I1(hctl_load_c),
        .I2(\hlfc_f[10]_i_2_n_0 ),
        .I3(\hlfc_f[10]_i_3_n_0 ),
        .I4(\hlfc_f[10]_i_4_n_0 ),
        .I5(\hlfc_f[10]_i_5_n_0 ),
        .O(\hlfc_f[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01550505)) 
    \hlfc_f[10]_i_2 
       (.I0(\hlfc_f[10]_i_6_n_0 ),
        .I1(p_0_in[8]),
        .I2(Q[2]),
        .I3(p_0_in[6]),
        .I4(\hlfc_f[10]_i_7_n_0 ),
        .I5(\hlfc_f[10]_i_8_n_0 ),
        .O(\hlfc_f[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    \hlfc_f[10]_i_3 
       (.I0(\hlfc_f_reg[13]_0 ),
        .I1(\hlfc_f[12]_i_4_n_0 ),
        .I2(Q[0]),
        .I3(p_0_in[3]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\hlfc_f[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \hlfc_f[10]_i_4 
       (.I0(p_1_in[2]),
        .I1(p_1_in[3]),
        .I2(p_1_in[1]),
        .I3(\hlfc_f_reg_n_0_[0] ),
        .O(\hlfc_f[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFAC00A0)) 
    \hlfc_f[10]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(p_1_in[2]),
        .I3(p_1_in[3]),
        .I4(p_1_in[1]),
        .O(\hlfc_f[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAE)) 
    \hlfc_f[10]_i_6 
       (.I0(\hlfc_f[12]_i_4_n_0 ),
        .I1(Q[0]),
        .I2(p_0_in[8]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\hlfc_f[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \hlfc_f[10]_i_7 
       (.I0(p_1_in[2]),
        .I1(p_1_in[3]),
        .I2(p_1_in[1]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(\hlfc_f[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00030000FFF20000)) 
    \hlfc_f[10]_i_8 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(Q[0]),
        .I3(p_0_in[3]),
        .I4(\hlfc_f[12]_i_4_n_0 ),
        .I5(p_0_in[2]),
        .O(\hlfc_f[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAA88AA8822882088)) 
    \hlfc_f[11]_i_2 
       (.I0(\hlfc_f_reg[13]_0 ),
        .I1(p_0_in[8]),
        .I2(\hlfc_f[11]_i_4_n_0 ),
        .I3(\hlfc_f[1]_i_2_n_0 ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\hlfc_f_reg[10]_2 ));
  LUT6 #(
    .INIT(64'hFFF88F88FFF88888)) 
    \hlfc_f[11]_i_3 
       (.I0(\hlfc_f_reg_n_0_[1] ),
        .I1(\hlfc_f[12]_i_2_n_0 ),
        .I2(p_1_in[3]),
        .I3(p_1_in[1]),
        .I4(p_1_in[2]),
        .I5(Q[4]),
        .O(\hlfc_f_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h5504)) 
    \hlfc_f[11]_i_4 
       (.I0(p_0_in[6]),
        .I1(p_0_in[1]),
        .I2(Q[0]),
        .I3(p_0_in[3]),
        .O(\hlfc_f[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBB8B8B8B)) 
    \hlfc_f[12]_i_1 
       (.I0(\hlfc_f_reg[12]_0 ),
        .I1(hctl_load_c),
        .I2(\hlfc_f_reg[13]_0 ),
        .I3(\hlfc_f[12]_i_2_n_0 ),
        .I4(p_0_in[0]),
        .I5(\hlfc_f[12]_i_3_n_0 ),
        .O(\hlfc_f[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \hlfc_f[12]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(Q[0]),
        .I4(\hlfc_f[12]_i_4_n_0 ),
        .O(\hlfc_f[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF040)) 
    \hlfc_f[12]_i_3 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(\hlfc_f[12]_i_4_n_0 ),
        .I3(Q[0]),
        .I4(\hlfc_f[12]_i_5_n_0 ),
        .O(\hlfc_f[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \hlfc_f[12]_i_4 
       (.I0(\hlfc_f[9]_i_5_n_0 ),
        .I1(p_1_in[1]),
        .I2(p_1_in[3]),
        .I3(p_1_in[2]),
        .I4(p_0_in[6]),
        .I5(Q[1]),
        .O(\hlfc_f[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCECECCCFCECECCCC)) 
    \hlfc_f[12]_i_5 
       (.I0(\hlfc_f_reg[13]_0 ),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(p_0_in[8]),
        .I5(p_0_in[6]),
        .O(\hlfc_f[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888B8)) 
    \hlfc_f[13]_i_1 
       (.I0(\hlfc_f_reg[13]_6 ),
        .I1(hctl_load_c),
        .I2(Q[4]),
        .I3(p_1_in[2]),
        .I4(p_1_in[3]),
        .I5(p_1_in[1]),
        .O(\hlfc_f[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \hlfc_f[15]_i_3 
       (.I0(p_1_in[1]),
        .I1(p_1_in[3]),
        .I2(p_1_in[2]),
        .O(\hlfc_f_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8B888888)) 
    \hlfc_f[1]_i_1 
       (.I0(\hlfc_f_reg[1]_1 ),
        .I1(hctl_load_c),
        .I2(\hlfc_f[1]_i_2_n_0 ),
        .I3(\hlfc_f_reg[13]_0 ),
        .I4(\hlfc_f_reg_n_0_[0] ),
        .I5(\hlfc_f[1]_i_3_n_0 ),
        .O(\hlfc_f[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \hlfc_f[1]_i_2 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\hlfc_f[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \hlfc_f[1]_i_3 
       (.I0(p_1_in[1]),
        .I1(p_0_in[0]),
        .I2(p_1_in[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_1_in[2]),
        .O(\hlfc_f[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0EFE)) 
    \hlfc_f[2]_i_1 
       (.I0(\hlfc_f[2]_i_2_n_0 ),
        .I1(\hlfc_f[2]_i_3_n_0 ),
        .I2(hctl_load_c),
        .I3(\hlfc_f_reg[2]_1 ),
        .O(\hlfc_f[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0F0000000F000)) 
    \hlfc_f[2]_i_2 
       (.I0(p_0_in[8]),
        .I1(Q[2]),
        .I2(\hlfc_f_reg[13]_0 ),
        .I3(\hlfc_f_reg_n_0_[1] ),
        .I4(\hlfc_f[1]_i_2_n_0 ),
        .I5(\hlfc_f_reg_n_0_[0] ),
        .O(\hlfc_f[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FF808F000F808)) 
    \hlfc_f[2]_i_3 
       (.I0(p_1_in[1]),
        .I1(p_0_in[1]),
        .I2(p_1_in[3]),
        .I3(p_0_in[3]),
        .I4(p_1_in[2]),
        .I5(p_0_in[2]),
        .O(\hlfc_f[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0F0000000F000)) 
    \hlfc_f[3]_i_2 
       (.I0(p_0_in[8]),
        .I1(Q[2]),
        .I2(\hlfc_f_reg[13]_0 ),
        .I3(p_0_in[0]),
        .I4(\hlfc_f[1]_i_2_n_0 ),
        .I5(\hlfc_f_reg_n_0_[1] ),
        .O(\hlfc_f_reg[10]_1 ));
  LUT6 #(
    .INIT(64'hFFF8F0F80F080008)) 
    \hlfc_f[3]_i_3 
       (.I0(p_1_in[1]),
        .I1(p_0_in[2]),
        .I2(p_1_in[3]),
        .I3(p_1_in[2]),
        .I4(p_0_in[3]),
        .I5(Q[0]),
        .O(\hlfc_f_reg[13]_2 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \hlfc_f[4]_i_2 
       (.I0(p_0_in[1]),
        .I1(\hlfc_f[10]_i_7_n_0 ),
        .I2(p_0_in[0]),
        .I3(\hlfc_f[4]_i_4_n_0 ),
        .I4(\hlfc_f_reg_n_0_[0] ),
        .I5(\hlfc_f[8]_i_2_n_0 ),
        .O(\hlfc_f_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0880000F088)) 
    \hlfc_f[4]_i_3 
       (.I0(p_1_in[1]),
        .I1(p_0_in[3]),
        .I2(Q[0]),
        .I3(p_1_in[2]),
        .I4(p_1_in[3]),
        .I5(Q[1]),
        .O(\hlfc_f_reg[13]_5 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \hlfc_f[4]_i_4 
       (.I0(\hlfc_f_reg[13]_0 ),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(p_0_in[8]),
        .O(\hlfc_f[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEE222E)) 
    \hlfc_f[5]_i_2 
       (.I0(p_0_in[2]),
        .I1(\hlfc_f[10]_i_7_n_0 ),
        .I2(Q[2]),
        .I3(p_0_in[8]),
        .I4(p_0_in[1]),
        .I5(\hlfc_f[5]_i_4_n_0 ),
        .O(\hlfc_f_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \hlfc_f[5]_i_3 
       (.I0(p_1_in[1]),
        .I1(Q[0]),
        .I2(p_1_in[3]),
        .I3(p_0_in[6]),
        .I4(Q[1]),
        .I5(p_1_in[2]),
        .O(\hlfc_f_reg[13]_4 ));
  LUT5 #(
    .INIT(32'h1FFF00FF)) 
    \hlfc_f[5]_i_4 
       (.I0(p_0_in[6]),
        .I1(Q[1]),
        .I2(\hlfc_f_reg_n_0_[1] ),
        .I3(\hlfc_f_reg[13]_0 ),
        .I4(\hlfc_f[9]_i_5_n_0 ),
        .O(\hlfc_f[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBBBBBB8)) 
    \hlfc_f[6]_i_1 
       (.I0(\hlfc_f_reg[6]_1 ),
        .I1(hctl_load_c),
        .I2(\hlfc_f[6]_i_2_n_0 ),
        .I3(\hlfc_f[6]_i_3_n_0 ),
        .I4(\hlfc_f_reg_n_0_[0] ),
        .I5(\hlfc_f[7]_i_4_n_0 ),
        .O(\hlfc_f[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4050405040500050)) 
    \hlfc_f[6]_i_2 
       (.I0(\hlfc_f[6]_i_4_n_0 ),
        .I1(p_0_in[0]),
        .I2(\hlfc_f_reg[13]_0 ),
        .I3(\hlfc_f[9]_i_5_n_0 ),
        .I4(p_0_in[6]),
        .I5(Q[1]),
        .O(\hlfc_f[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FF808F000F808)) 
    \hlfc_f[6]_i_3 
       (.I0(p_1_in[1]),
        .I1(Q[1]),
        .I2(p_1_in[3]),
        .I3(Q[2]),
        .I4(p_1_in[2]),
        .I5(p_0_in[6]),
        .O(\hlfc_f[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h540054FF)) 
    \hlfc_f[6]_i_4 
       (.I0(p_0_in[2]),
        .I1(p_0_in[8]),
        .I2(Q[2]),
        .I3(\hlfc_f[10]_i_7_n_0 ),
        .I4(p_0_in[3]),
        .O(\hlfc_f[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBBBBBB8)) 
    \hlfc_f[7]_i_1 
       (.I0(\hlfc_f_reg[7]_0 ),
        .I1(hctl_load_c),
        .I2(\hlfc_f[7]_i_2_n_0 ),
        .I3(\hlfc_f[7]_i_3_n_0 ),
        .I4(\hlfc_f_reg_n_0_[1] ),
        .I5(\hlfc_f[7]_i_4_n_0 ),
        .O(\hlfc_f[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E0F0000000F0000)) 
    \hlfc_f[7]_i_2 
       (.I0(p_0_in[6]),
        .I1(Q[1]),
        .I2(\hlfc_f[7]_i_5_n_0 ),
        .I3(\hlfc_f[9]_i_5_n_0 ),
        .I4(\hlfc_f_reg[13]_0 ),
        .I5(p_0_in[1]),
        .O(\hlfc_f[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F0F80F080008)) 
    \hlfc_f[7]_i_3 
       (.I0(p_1_in[1]),
        .I1(p_0_in[6]),
        .I2(p_1_in[3]),
        .I3(p_1_in[2]),
        .I4(Q[2]),
        .I5(p_0_in[8]),
        .O(\hlfc_f[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \hlfc_f[7]_i_4 
       (.I0(Q[0]),
        .I1(p_0_in[3]),
        .I2(\hlfc_f[12]_i_4_n_0 ),
        .O(\hlfc_f[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h540054FF)) 
    \hlfc_f[7]_i_5 
       (.I0(p_0_in[3]),
        .I1(p_0_in[8]),
        .I2(Q[2]),
        .I3(\hlfc_f[10]_i_7_n_0 ),
        .I4(Q[0]),
        .O(\hlfc_f[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    \hlfc_f[8]_i_1 
       (.I0(\hlfc_f_reg[8]_1 ),
        .I1(hctl_load_c),
        .I2(\hlfc_f[8]_i_2_n_0 ),
        .I3(\hlfc_f[8]_i_3_n_0 ),
        .I4(\hlfc_f[8]_i_4_n_0 ),
        .O(\hlfc_f[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF10)) 
    \hlfc_f[8]_i_2 
       (.I0(Q[1]),
        .I1(p_0_in[6]),
        .I2(\hlfc_f[9]_i_5_n_0 ),
        .I3(p_1_in[2]),
        .I4(p_1_in[3]),
        .I5(p_1_in[1]),
        .O(\hlfc_f[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEE00E2E2AAAAAAAA)) 
    \hlfc_f[8]_i_3 
       (.I0(Q[1]),
        .I1(\hlfc_f_reg[13]_0 ),
        .I2(Q[0]),
        .I3(p_0_in[2]),
        .I4(\hlfc_f[8]_i_5_n_0 ),
        .I5(\hlfc_f[1]_i_2_n_0 ),
        .O(\hlfc_f[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F0F0FFF8F0F0)) 
    \hlfc_f[8]_i_4 
       (.I0(\hlfc_f[8]_i_6_n_0 ),
        .I1(\hlfc_f_reg_n_0_[0] ),
        .I2(\hlfc_f[8]_i_7_n_0 ),
        .I3(p_0_in[0]),
        .I4(\hlfc_f[12]_i_4_n_0 ),
        .I5(\hlfc_f[8]_i_8_n_0 ),
        .O(\hlfc_f[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \hlfc_f[8]_i_5 
       (.I0(Q[2]),
        .I1(p_0_in[8]),
        .O(\hlfc_f[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1110)) 
    \hlfc_f[8]_i_6 
       (.I0(Q[0]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .O(\hlfc_f[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F0F80F080008)) 
    \hlfc_f[8]_i_7 
       (.I0(p_1_in[1]),
        .I1(Q[2]),
        .I2(p_1_in[3]),
        .I3(p_1_in[2]),
        .I4(p_0_in[8]),
        .I5(Q[3]),
        .O(\hlfc_f[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \hlfc_f[8]_i_8 
       (.I0(p_0_in[3]),
        .I1(Q[0]),
        .O(\hlfc_f[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    \hlfc_f[9]_i_1 
       (.I0(\hlfc_f_reg[9]_0 ),
        .I1(hctl_load_c),
        .I2(\hlfc_f[9]_i_2_n_0 ),
        .I3(\hlfc_f[9]_i_3_n_0 ),
        .I4(\hlfc_f[9]_i_4_n_0 ),
        .O(\hlfc_f[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22202222222A222A)) 
    \hlfc_f[9]_i_2 
       (.I0(\hlfc_f[12]_i_4_n_0 ),
        .I1(p_0_in[1]),
        .I2(Q[0]),
        .I3(p_0_in[3]),
        .I4(p_0_in[2]),
        .I5(\hlfc_f_reg_n_0_[1] ),
        .O(\hlfc_f[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF0000FA500000)) 
    \hlfc_f[9]_i_3 
       (.I0(\hlfc_f[1]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[6]),
        .I3(Q[1]),
        .I4(\hlfc_f_reg[13]_0 ),
        .I5(\hlfc_f[9]_i_5_n_0 ),
        .O(\hlfc_f[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FF808F000F808)) 
    \hlfc_f[9]_i_4 
       (.I0(p_1_in[1]),
        .I1(p_0_in[8]),
        .I2(p_1_in[3]),
        .I3(Q[4]),
        .I4(p_1_in[2]),
        .I5(Q[3]),
        .O(\hlfc_f[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \hlfc_f[9]_i_5 
       (.I0(p_0_in[8]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[3]),
        .O(\hlfc_f[9]_i_5_n_0 ));
  FDRE \hlfc_f_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(\hlfc_f_reg_n_0_[0] ),
        .R(SR));
  FDRE \hlfc_f_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[10]_i_1_n_0 ),
        .Q(p_0_in[8]),
        .R(SR));
  FDRE \hlfc_f_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(Q[3]),
        .R(SR));
  FDRE \hlfc_f_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[12]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \hlfc_f_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[13]_i_1_n_0 ),
        .Q(p_1_in[1]),
        .R(SR));
  FDRE \hlfc_f_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(p_1_in[2]),
        .R(SR));
  FDRE \hlfc_f_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(p_1_in[3]),
        .R(SR));
  FDRE \hlfc_f_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[1]_i_1_n_0 ),
        .Q(\hlfc_f_reg_n_0_[1] ),
        .R(SR));
  FDRE \hlfc_f_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \hlfc_f_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE \hlfc_f_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(p_0_in[2]),
        .R(SR));
  FDRE \hlfc_f_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(p_0_in[3]),
        .R(SR));
  FDRE \hlfc_f_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[6]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \hlfc_f_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[7]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \hlfc_f_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[8]_i_1_n_0 ),
        .Q(p_0_in[6]),
        .R(SR));
  FDRE \hlfc_f_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[9]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \hlfc_i_reg[22] 
       (.C(clk),
        .CE(hctl_load_c),
        .D(\hlfc_i_reg[25]_1 [0]),
        .Q(\hlfc_i_reg[25]_0 [0]),
        .R(SR));
  FDRE \hlfc_i_reg[23] 
       (.C(clk),
        .CE(hctl_load_c),
        .D(\hlfc_i_reg[25]_1 [1]),
        .Q(\hlfc_i_reg[25]_0 [1]),
        .R(SR));
  FDRE \hlfc_i_reg[24] 
       (.C(clk),
        .CE(hctl_load_c),
        .D(\hlfc_i_reg[25]_1 [2]),
        .Q(hlfc_inf),
        .R(SR));
  FDRE \hlfc_i_reg[25] 
       (.C(clk),
        .CE(hctl_load_c),
        .D(\hlfc_i_reg[25]_1 [3]),
        .Q(\hlfc_i_reg[25]_0 [2]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000888)) 
    \stat[3]_i_7 
       (.I0(\stat[3]_i_6 [1]),
        .I1(\stat[3]_i_6 [0]),
        .I2(Q[4]),
        .I3(\hlfc_f_reg[13]_0 ),
        .I4(crdy_INST_0_i_3_n_0),
        .O(\stat_reg[2] ));
endmodule
