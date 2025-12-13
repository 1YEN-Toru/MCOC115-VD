
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
  wire hadd_n_10;
  wire hadd_n_11;
  wire hadd_n_12;
  wire hadd_n_13;
  wire hadd_n_14;
  wire hadd_n_15;
  wire hadd_n_16;
  wire hadd_n_17;
  wire hadd_n_18;
  wire hadd_n_19;
  wire hadd_n_2;
  wire hadd_n_20;
  wire hadd_n_21;
  wire hadd_n_3;
  wire hadd_n_4;
  wire hadd_n_6;
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
  wire hctl_n_103;
  wire hctl_n_104;
  wire hctl_n_105;
  wire hctl_n_106;
  wire hctl_n_107;
  wire hctl_n_108;
  wire hctl_n_109;
  wire hctl_n_110;
  wire hctl_n_111;
  wire hctl_n_112;
  wire hctl_n_113;
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
  wire hctl_n_41;
  wire hctl_n_42;
  wire hctl_n_43;
  wire hctl_n_44;
  wire hctl_n_45;
  wire hctl_n_46;
  wire hctl_n_48;
  wire hctl_n_49;
  wire hctl_n_50;
  wire hctl_n_51;
  wire hctl_n_52;
  wire hctl_n_53;
  wire hctl_n_54;
  wire hctl_n_55;
  wire hctl_n_56;
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
  wire hctl_n_72;
  wire hctl_n_74;
  wire hctl_n_75;
  wire hctl_n_76;
  wire hctl_n_77;
  wire hctl_n_78;
  wire hctl_n_79;
  wire hctl_n_80;
  wire hctl_n_81;
  wire hctl_n_82;
  wire hctl_n_83;
  wire hctl_n_84;
  wire hctl_n_85;
  wire hctl_n_86;
  wire hctl_n_87;
  wire hctl_n_88;
  wire hctl_n_89;
  wire hdiv_n_17;
  wire [10:0]hfpu_dsp_a;
  wire [10:0]hfpu_dsp_b;
  wire [21:0]hfpu_dsp_c;
  wire hlfa_n_111;
  wire hlfa_n_123;
  wire hlfa_n_124;
  wire hlfa_n_125;
  wire hlfa_n_126;
  wire hlfa_n_127;
  wire hlfa_n_128;
  wire hlfa_n_129;
  wire hlfa_n_130;
  wire hlfa_n_131;
  wire hlfa_n_132;
  wire hlfa_n_133;
  wire hlfa_n_134;
  wire hlfa_n_135;
  wire hlfa_n_136;
  wire hlfa_n_137;
  wire hlfa_n_138;
  wire hlfa_n_139;
  wire hlfa_n_35;
  wire hlfa_n_38;
  wire hlfa_n_39;
  wire hlfa_n_40;
  wire hlfa_n_41;
  wire hlfa_n_42;
  wire hlfa_n_43;
  wire hlfa_n_44;
  wire hlfa_n_46;
  wire hlfa_n_47;
  wire hlfa_n_48;
  wire hlfa_n_49;
  wire hlfa_n_50;
  wire hlfa_n_51;
  wire hlfa_n_52;
  wire hlfa_n_53;
  wire hlfa_n_54;
  wire hlfa_n_55;
  wire hlfa_n_56;
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
  wire [22:0]hlfa_r_0;
  wire [5:0]hlfb_e;
  wire [12:0]hlfb_f;
  wire hlfb_n_0;
  wire hlfb_n_1;
  wire hlfb_n_19;
  wire hlfb_n_2;
  wire hlfb_n_20;
  wire hlfb_n_21;
  wire hlfb_n_22;
  wire hlfb_n_23;
  wire hlfb_n_24;
  wire hlfb_n_25;
  wire hlfb_n_3;
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
  wire hlfb_n_5;
  wire hlfb_n_54;
  wire hlfb_n_55;
  wire hlfb_n_56;
  wire hlfb_n_57;
  wire [22:22]hlfb_r;
  wire [5:0]hlfc_e;
  wire [5:0]hlfc_e_2;
  wire hlfc_f;
  wire [12:12]hlfc_f0;
  wire [21:16]hlfc_r_hmul;
  wire hlfc_zer;
  wire [7:0]hquo;
  wire norm_n_15;
  wire norm_n_16;
  wire norm_n_17;
  wire norm_n_18;
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
  wire norm_n_33;
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
  wire norm_n_47;
  wire norm_n_48;
  wire norm_n_6;
  wire p_0_in;
  wire p_0_in0;
  wire p_0_in17_in;
  wire [14:0]p_0_in1_in;
  wire p_0_in1_in_0;
  wire p_0_in23_in;
  wire p_0_in3_in;
  wire p_0_in6_in;
  wire p_0_in9_in;
  wire [8:1]p_0_in_1;
  wire p_0_in__0;
  wire [23:11]p_1_in;
  wire p_3_in;
  wire p_4_in;
  wire [13:1]rem0;
  wire [13:13]rem1;
  wire [13:13]rem2;
  wire rst_n;
  wire [2:0]stat;

  hfpu_hadd hadd
       (.CO(hadd_n_6),
        .O(hadd_n_0),
        .S({hlfa_n_123,hlfa_n_124,hlfa_n_125,hlfa_n_126}),
        .\cbus[0]_INST_0_i_3 (hctl_n_37),
        .\cbus[12]_INST_0_i_12_0 (hlfc_f0),
        .\cbus[12]_INST_0_i_6_0 (hadd_n_10),
        .\cbus[12]_INST_0_i_6_1 (hadd_n_13),
        .\cbus[12]_INST_0_i_9 ({hlfa_n_135,hctl_n_106,hctl_n_107,hlfa_n_136}),
        .\cbus[14]_INST_0_i_24_0 (hadd_n_16),
        .\cbus[14]_INST_0_i_25_0 ({hlfa_n_131,hlfa_n_132,hlfa_n_133,hlfa_n_134}),
        .\cbus[14]_INST_0_i_25_1 (hlfa_n_111),
        .\cbus[6]_INST_0_i_1 (hlfa_n_95),
        .\cbus[6]_INST_0_i_13_0 ({hlfa_n_127,hlfa_n_128,hlfa_n_129,hlfa_n_130}),
        .\cbus[6]_INST_0_i_15_0 (hadd_n_9),
        .hctl_ccmd_add(hctl_ccmd_add),
        .hctl_ccmd_add_reg(hadd_n_7),
        .hctl_ccmd_add_reg_0(hadd_n_8),
        .\hlfa_f_reg[14] ({p_0_in,hadd_n_2,hadd_n_3,hadd_n_4}),
        .\hlfc_f_reg[1] (hlfa_n_50),
        .\hlfc_f_reg[2] (hlfa_n_55),
        .\hlfc_f_reg[2]_0 (hctl_n_87),
        .hlfc_f_t_carry_0(hadd_n_17),
        .hlfc_f_t_carry__0_0(hadd_n_18),
        .hlfc_f_t_carry__0_1(hadd_n_19),
        .hlfc_f_t_carry__0_2(hadd_n_20),
        .hlfc_f_t_carry__0_3(hadd_n_21),
        .hlfc_f_t_carry__1_0(hadd_n_11),
        .hlfc_f_t_carry__1_1(hadd_n_12),
        .hlfc_f_t_carry__1_2(hadd_n_14),
        .hlfc_f_t_carry__1_3(hadd_n_15),
        .p_0_in1_in(p_0_in1_in));
  hfpu_fsm hctl
       (.D(hctl_n_34),
        .E(crdy),
        .O(hadd_n_0),
        .Q({norm_n_18,hlfc_zer,norm_n_20}),
        .SR(p_0_in__0),
        .abus({abus[9:6],abus[3]}),
        .\abus[12] (hctl_n_79),
        .\abus[6] (hctl_n_80),
        .\abus[7] (hctl_n_81),
        .\abus[8] (hctl_n_82),
        .\abus[9] (hctl_n_83),
        .abus_3_sp_1(hctl_n_78),
        .bbus(bbus[14:0]),
        .bbus_11_sp_1(hctl_n_84),
        .bbus_1_sp_1(hctl_n_67),
        .bbus_2_sp_1(hctl_n_69),
        .cbus(cbus),
        .\cbus[0]_0 (norm_n_17),
        .\cbus[10]_0 (hadd_n_15),
        .\cbus[10]_1 (hlfa_n_58),
        .\cbus[10]_2 (hlfa_n_67),
        .\cbus[11]_0 (norm_n_33),
        .\cbus[12]_0 (hlfa_n_64),
        .\cbus[12]_1 (norm_n_47),
        .\cbus[12]_INST_0_i_3 (hlfa_n_65),
        .\cbus[12]_INST_0_i_3_0 (hquo),
        .\cbus[13]_0 (norm_n_46),
        .\cbus[13]_1 (hlfa_n_35),
        .\cbus[13]_2 (hlfa_n_74),
        .\cbus[13]_3 (norm_n_32),
        .\cbus[13]_4 (norm_n_43),
        .\cbus[13]_5 (norm_n_31),
        .\cbus[14]_0 (norm_n_42),
        .\cbus[14]_INST_0_i_3 (norm_n_30),
        .\cbus[14]_INST_0_i_3_0 (norm_n_29),
        .\cbus[15]_0 (hlfa_n_38),
        .\cbus[15]_1 (norm_n_44),
        .\cbus[15]_INST_0_i_2_0 (hlfa_n_39),
        .\cbus[1]_0 (hadd_n_7),
        .\cbus[2]_0 (hadd_n_8),
        .\cbus[2]_INST_0_i_3 (rem1),
        .\cbus[3]_0 (hadd_n_17),
        .\cbus[3]_1 (hlfa_n_56),
        .\cbus[3]_2 (hlfa_n_72),
        .\cbus[3]_INST_0_i_3_0 (rem2),
        .\cbus[4]_0 (hadd_n_21),
        .\cbus[4]_1 (hlfa_n_54),
        .\cbus[4]_2 (hlfa_n_71),
        .\cbus[4]_INST_0_i_3_0 (p_0_in0),
        .\cbus[5]_0 (hadd_n_20),
        .\cbus[5]_1 (hlfa_n_52),
        .\cbus[5]_2 (hlfa_n_70),
        .\cbus[7]_0 (hadd_n_19),
        .\cbus[7]_1 (hlfa_n_68),
        .\cbus[7]_2 (hlfa_n_51),
        .\cbus[8] (p_0_in_1),
        .\cbus[8]_0 (norm_n_40),
        .\cbus[8]_1 (hadd_n_12),
        .\cbus[8]_2 (hlfa_n_57),
        .\cbus[9]_0 (norm_n_41),
        .\cbus[9]_1 (hadd_n_11),
        .\cbus[9]_2 (hlfa_n_59),
        .cbus_0_sp_1(norm_n_35),
        .cbus_10_sp_1(norm_n_21),
        .cbus_11_sp_1(norm_n_48),
        .cbus_12_sp_1(norm_n_34),
        .cbus_13_sp_1(hlfa_n_73),
        .cbus_14_sp_1(norm_n_45),
        .cbus_15_sp_1(hlfa_n_48),
        .cbus_1_sp_1(norm_n_36),
        .cbus_2_sp_1(norm_n_37),
        .cbus_3_sp_1(norm_n_38),
        .cbus_4_sp_1(norm_n_16),
        .cbus_5_sp_1(norm_n_15),
        .cbus_6_sp_1(hlfb_n_3),
        .cbus_7_sp_1(norm_n_6),
        .cbus_9_sp_1(norm_n_22),
        .ccmd(ccmd),
        .clk(clk),
        .hctl_ccmd_add(hctl_ccmd_add),
        .hctl_ccmd_add_reg_0(hctl_n_25),
        .hctl_ccmd_add_reg_1(hctl_n_26),
        .hctl_ccmd_add_reg_2(hctl_n_27),
        .hctl_ccmd_add_reg_3(hctl_n_29),
        .hctl_ccmd_add_reg_4(hctl_n_30),
        .hctl_ccmd_add_reg_5(hctl_n_31),
        .hctl_ccmd_add_reg_6(hctl_n_32),
        .hctl_ccmd_add_reg_7(hctl_n_33),
        .hctl_ccmd_add_reg_8({hctl_n_49,hctl_n_50,hctl_n_51,hctl_n_52,hctl_n_53,hctl_n_54}),
        .hctl_ccmd_add_reg_9({hctl_n_106,hctl_n_107}),
        .hctl_ccmd_cmp(hctl_ccmd_cmp),
        .hctl_ccmd_div(hctl_ccmd_div),
        .hctl_ccmd_div_reg_0(hctl_n_48),
        .hctl_ccmd_div_reg_1(hctl_n_55),
        .hctl_ccmd_div_reg_2(hctl_n_85),
        .hctl_ccmd_div_reg_3(hctl_n_111),
        .hctl_ccmd_hlf(hctl_ccmd_hlf),
        .hctl_ccmd_hlf_reg_0(hctl_n_28),
        .hctl_ccmd_int(hctl_ccmd_int),
        .hctl_ccmd_mul(hctl_ccmd_mul),
        .hctl_ccmd_mul_reg_0(hctl_n_35),
        .hctl_ccmd_mul_reg_1(hctl_n_36),
        .hctl_ccmd_reg(hctl_ccmd_reg),
        .hctl_ccmd_reg_reg_0(hctl_n_89),
        .hctl_ccmd_sub(hctl_ccmd_sub),
        .hctl_ccmd_sub_reg_0(hctl_n_37),
        .hctl_load_b(hctl_load_b),
        .hfpu_dsp_c(hfpu_dsp_c[20:8]),
        .hfpu_dsp_c_10_sp_1(hctl_n_87),
        .hfpu_dsp_c_8_sp_1(hctl_n_86),
        .hfpu_dsp_c_9_sp_1(hctl_n_88),
        .\hlfa_f[11]_i_2 (hlfa_n_88),
        .\hlfa_f_reg[12] (hlfa_n_139),
        .\hlfa_f_reg[15] ({p_1_in,hctl_n_103,hctl_n_104,hctl_n_105}),
        .\hlfa_f_reg[15]_0 (hlfa_n_89),
        .\hlfa_f_reg[8] (p_0_in17_in),
        .\hlfa_f_reg[8]_0 (p_0_in23_in),
        .hlfa_r_0(hlfa_r_0),
        .\hlfb_f_reg[11] ({p_0_in6_in,p_0_in3_in,hlfc_e[0]}),
        .\hlfb_f_reg[11]_0 (hlfb_f[12:10]),
        .\hlfb_f_reg[11]_1 (p_0_in9_in),
        .\hlfb_f_reg[11]_2 (hlfa_n_85),
        .\hlfb_f_reg[1] (hlfa_n_86),
        .\hlfb_f_reg[2] (hlfa_n_77),
        .\hlfb_f_reg[2]_0 (hlfb_n_21),
        .\hlfb_f_reg[5] (hlfb_n_24),
        .\hlfb_f_reg[6] (hlfb_n_5),
        .\hlfb_f_reg[7] (hlfb_n_19),
        .\hlfb_f_reg[8] (hlfb_n_20),
        .hlfc_e(hlfc_e_2),
        .hlfc_e_0(hlfc_e[5:1]),
        .\hlfc_e_reg[0] (hlfa_n_62),
        .\hlfc_e_reg[1] (hlfa_n_63),
        .\hlfc_e_reg[2] (hlfa_n_137),
        .\hlfc_e_reg[3] (hlfa_n_61),
        .\hlfc_e_reg[4] (hlfa_n_91),
        .\hlfc_e_reg[4]_0 (hlfa_n_75),
        .\hlfc_e_reg[5] (hlfa_n_92),
        .\hlfc_f_reg[0] (norm_n_28),
        .\hlfc_f_reg[0]_0 (hlfa_n_49),
        .\hlfc_f_reg[11] (norm_n_26),
        .\hlfc_f_reg[11]_0 (hadd_n_14),
        .\hlfc_f_reg[11]_1 (hlfa_n_60),
        .\hlfc_f_reg[11]_2 (hlfa_n_66),
        .\hlfc_f_reg[14] (hlfa_n_47),
        .\hlfc_f_reg[15] (norm_n_27),
        .\hlfc_f_reg[6] (norm_n_25),
        .\hlfc_f_reg[6]_0 (hadd_n_18),
        .\hlfc_f_reg[6]_1 (hlfa_n_53),
        .\hlfc_f_reg[6]_2 (hlfa_n_69),
        .hlfc_f_t_carry(hlfb_n_2),
        .\hlfc_i_reg[22] (hlfa_n_41),
        .\hlfc_i_reg[22]_0 (hlfa_n_42),
        .\hlfc_i_reg[24] (hlfa_n_44),
        .\hlfc_i_reg[24]_0 (hlfb_n_37),
        .\hlfc_i_reg[24]_1 (hlfa_n_90),
        .\hlfc_i_reg[25] (ccmd_f),
        .\hlfc_i_reg[25]_0 (hlfa_n_94),
        .\hlfc_i_reg[25]_1 (hlfa_n_93),
        .hlfc_r_hmul(hlfc_r_hmul),
        .rem0(rem0),
        .rst_n(rst_n),
        .rst_n_0({hctl_n_59,hctl_n_60,hctl_n_61,hctl_n_62,hctl_n_63,hctl_n_64,hctl_n_65}),
        .rst_n_1(hctl_n_74),
        .rst_n_2(hctl_n_77),
        .rst_n_3(hctl_n_109),
        .rst_n_4(hctl_n_110),
        .rst_n_5(hctl_n_112),
        .rst_n_6(hctl_n_113),
        .\stat_reg[0]_0 ({hctl_n_41,hctl_n_42,hctl_n_43,hctl_n_44,hctl_n_45}),
        .\stat_reg[0]_1 (hctl_n_46),
        .\stat_reg[0]_2 (hlfc_f),
        .\stat_reg[0]_3 (hctl_n_56),
        .\stat_reg[0]_4 (hctl_n_66),
        .\stat_reg[0]_5 (hctl_n_70),
        .\stat_reg[0]_6 (hctl_n_72),
        .\stat_reg[0]_7 (hctl_load_c),
        .\stat_reg[1]_0 (hctl_load_d),
        .\stat_reg[2]_0 (stat),
        .\stat_reg[2]_1 (hctl_n_68),
        .\stat_reg[2]_2 (hctl_n_75),
        .\stat_reg[2]_3 (hctl_n_108),
        .\stat_reg[2]_4 (hlfa_n_87),
        .\stat_reg[2]_5 (norm_n_23),
        .\stat_reg[3]_0 (hctl_dsft_enb),
        .\stat_reg[3]_1 (hctl_n_76),
        .\stat_reg[3]_2 (norm_n_24));
  hfpu_hdiv hdiv
       (.D({p_1_in,hctl_n_103,hctl_n_104,hctl_n_105}),
        .E(hctl_n_56),
        .Q(hquo),
        .SR(p_0_in__0),
        .\cbus[14]_INST_0_i_3 (hctl_n_85),
        .\cbus[14]_INST_0_i_3_0 (hlfb_n_1),
        .\cbus[14]_INST_0_i_3_1 (hlfb_n_41),
        .clk(clk),
        .\den_reg[21]_0 (p_0_in0),
        .\dso_reg[10]_0 (hctl_load_d),
        .\dso_reg[10]_1 (hlfb_f[12:2]),
        .hctl_ccmd_div_reg(hdiv_n_17),
        .\hquo_reg[0]_0 (hctl_n_108),
        .\hquo_reg[7]_0 (hctl_dsft_enb),
        .rem0(rem0),
        .rem1_carry__2_i_1(rem1),
        .rem2_carry__2_i_1(rem2),
        .rst_n(rst_n));
  hfpu_hlfa hlfa
       (.CO(hadd_n_6),
        .D({hlfa_n_35,p_4_in,p_3_in}),
        .E(hlfa_n_76),
        .O({p_0_in6_in,p_0_in3_in,p_0_in1_in_0,hlfc_e[0]}),
        .Q(hlfb_n_2),
        .S({hlfa_n_123,hlfa_n_124,hlfa_n_125,hlfa_n_126}),
        .SR(p_0_in__0),
        .abus(abus),
        .abus_12_sp_1(hlfa_n_139),
        .bbus({bbus[12],bbus[10]}),
        .\bbus[12] ({hlfa_n_83,hlfa_n_84}),
        .\cbus[15]_INST_0_i_4_0 (hadd_n_10),
        .\cbus[15]_INST_0_i_4_1 (hadd_n_13),
        .\cbus[1]_INST_0_i_3 (hctl_n_88),
        .ccmd(ccmd),
        .\ccmd_f_reg[1]_0 (p_0_in23_in),
        .\ccmd_f_reg[1]_1 (hlfa_n_75),
        .\ccmd_f_reg[1]_2 (hlfa_n_93),
        .\ccmd_f_reg[2]_0 (hlfa_n_91),
        .\ccmd_f_reg[3]_0 (hlfa_n_39),
        .\ccmd_f_reg[3]_1 (hlfa_n_51),
        .\ccmd_f_reg[3]_2 (hlfa_n_52),
        .\ccmd_f_reg[3]_3 (hlfa_n_53),
        .\ccmd_f_reg[3]_4 (hlfa_n_54),
        .\ccmd_f_reg[3]_5 (hlfa_n_55),
        .\ccmd_f_reg[3]_6 (hlfa_n_60),
        .\ccmd_f_reg[4]_0 (ccmd_f),
        .\ccmd_f_reg[4]_1 (crdy),
        .clk(clk),
        .hctl_ccmd_add(hctl_ccmd_add),
        .hctl_ccmd_add_reg(hlfa_n_47),
        .hctl_ccmd_add_reg_0(hlfa_n_48),
        .hctl_ccmd_add_reg_1(hlfa_n_64),
        .hctl_ccmd_add_reg_2(hlfa_n_73),
        .hctl_ccmd_add_reg_3(hlfa_n_74),
        .hctl_ccmd_div(hctl_ccmd_div),
        .hctl_ccmd_div_reg(hlfa_n_42),
        .hctl_ccmd_int(hctl_ccmd_int),
        .hctl_ccmd_int_reg(hlfa_n_86),
        .hctl_ccmd_int_reg_0(hlfa_n_87),
        .hctl_ccmd_mul(hctl_ccmd_mul),
        .hctl_ccmd_mul_reg(hlfa_n_90),
        .hctl_ccmd_reg(hctl_ccmd_reg),
        .hctl_ccmd_reg_reg(hlfa_n_62),
        .hctl_ccmd_reg_reg_0(hlfa_n_63),
        .hctl_ccmd_sub(hctl_ccmd_sub),
        .hctl_ccmd_sub_reg(hlfa_n_40),
        .hctl_load_b(hctl_load_b),
        .hfpu_dsp_a(hfpu_dsp_a),
        .hfpu_dsp_c(hfpu_dsp_c[21]),
        .hlfa_e_dif0_carry__0_0(hlfa_n_88),
        .\hlfa_e_reg[0]_0 (hlfa_n_58),
        .\hlfa_e_reg[0]_1 (hlfa_n_138),
        .\hlfa_e_reg[2]_0 (hlfa_n_137),
        .\hlfa_e_reg[3]_0 (p_0_in17_in),
        .\hlfa_e_reg[3]_1 (hlfa_n_61),
        .\hlfa_e_reg[3]_2 (hlfa_n_77),
        .\hlfa_e_reg[4]_0 (p_0_in9_in),
        .\hlfa_e_reg[4]_1 (hlfa_n_78),
        .\hlfa_e_reg[4]_2 (hlfa_n_89),
        .\hlfa_e_reg[5]_0 (hlfa_n_92),
        .\hlfa_f_reg[0]_0 (hlfa_n_49),
        .\hlfa_f_reg[10]_0 (hctl_n_82),
        .\hlfa_f_reg[11]_0 (hctl_n_83),
        .\hlfa_f_reg[12]_0 (hlfa_n_65),
        .\hlfa_f_reg[12]_1 (hctl_n_79),
        .\hlfa_f_reg[12]_2 (hctl_n_75),
        .\hlfa_f_reg[13]_0 (hctl_n_77),
        .\hlfa_f_reg[15]_0 (hctl_n_76),
        .\hlfa_f_reg[3]_0 (hlfa_n_56),
        .\hlfa_f_reg[4]_0 (hlfa_n_71),
        .\hlfa_f_reg[5]_0 (hlfa_n_70),
        .\hlfa_f_reg[5]_1 (hctl_n_78),
        .\hlfa_f_reg[8]_0 (hlfa_n_57),
        .\hlfa_f_reg[8]_1 (hctl_n_74),
        .\hlfa_f_reg[8]_2 (hctl_n_80),
        .\hlfa_f_reg[9]_0 (hlfa_n_59),
        .\hlfa_f_reg[9]_1 (hctl_n_81),
        .\hlfa_i_reg[10]_0 (hlfa_n_67),
        .\hlfa_i_reg[11]_0 (hlfa_n_66),
        .\hlfa_i_reg[14]_0 (hlfa_n_41),
        .\hlfa_i_reg[14]_1 (hlfa_n_46),
        .\hlfa_i_reg[15]_0 (hlfa_n_38),
        .\hlfa_i_reg[15]_1 (hlfa_n_44),
        .\hlfa_i_reg[15]_2 ({hlfa_n_135,hlfa_n_136}),
        .\hlfa_i_reg[1]_0 (hlfa_n_50),
        .\hlfa_i_reg[3]_0 (hlfa_n_72),
        .\hlfa_i_reg[6]_0 (hlfa_n_69),
        .\hlfa_i_reg[7]_0 (hlfa_n_68),
        .\hlfa_i_reg[9]_0 (hlfa_n_43),
        .\hlfa_i_reg[9]_1 (hlfa_n_94),
        .hlfa_r_0(hlfa_r_0),
        .\hlfb_e_reg[2] (hlfb_n_35),
        .\hlfb_e_reg[2]_0 (hlfb_n_25),
        .\hlfb_e_reg[2]_1 (hlfb_n_36),
        .\hlfb_e_reg[5]_i_9_0 (hlfb_e),
        .\hlfb_f_reg[0] (hctl_n_68),
        .\hlfb_f_reg[0]_0 (stat),
        .\hlfb_f_reg[11] ({hlfa_n_131,hlfa_n_132,hlfa_n_133,hlfa_n_134}),
        .\hlfb_f_reg[1] (hctl_n_70),
        .\hlfb_f_reg[1]_0 (hctl_n_110),
        .\hlfb_f_reg[3] (hlfb_n_22),
        .\hlfb_f_reg[3]_0 (hctl_n_67),
        .\hlfb_f_reg[4] (hlfb_n_23),
        .\hlfb_f_reg[4]_0 (hctl_n_69),
        .\hlfb_f_reg[7] ({hlfa_n_127,hlfa_n_128,hlfa_n_129,hlfa_n_130}),
        .hlfb_r(hlfb_r),
        .hlfc_e(hlfc_e[5:1]),
        .\hlfc_f_reg[12] (hlfc_f0),
        .\hlfc_f_reg[12]_0 (hctl_n_55),
        .\hlfc_f_reg[14] ({p_0_in,hadd_n_2,hadd_n_3,hadd_n_4}),
        .\hlfc_f_reg[14]_0 (hctl_n_48),
        .hlfc_f_t_carry__2(hlfa_n_95),
        .hlfc_f_t_carry__2_0(hlfa_n_111),
        .hlfc_f_t_carry__2_1(hlfb_f),
        .\hlfc_i_reg[22] (hctl_n_36),
        .\hlfc_i_reg[22]_0 (hctl_n_35),
        .\hlfc_i_reg[22]_1 (hadd_n_16),
        .\hlfc_i_reg[22]_2 (hlfb_n_0),
        .\hlfc_i_reg[23] (hdiv_n_17),
        .\hlfc_i_reg[23]_0 (hctl_n_86),
        .\hlfc_i_reg[24] (hlfb_n_1),
        .\hlfc_i_reg[24]_0 (hlfb_n_38),
        .\hlfc_i_reg[25] (hctl_n_111),
        .\hlfc_i_reg[25]_0 (hctl_n_37),
        .\hlfc_i_reg[25]_1 (hlfb_n_42),
        .\hlfc_i_reg[25]_2 (hlfb_n_40),
        .\hlfc_i_reg[25]_3 (hlfb_n_39),
        .\hlfc_i_reg[25]_4 (hlfb_n_4),
        .p_0_in1_in(p_0_in1_in),
        .rst_n(rst_n),
        .rst_n_0({hlfa_n_79,hlfa_n_80,hlfa_n_81}),
        .\stat_reg[0] (hlfa_n_85),
        .\stat_reg[2] (hlfa_n_82));
  hfpu_hlfb hlfb
       (.D({hlfa_n_83,hlfa_n_84}),
        .E(hlfa_n_76),
        .O({p_0_in6_in,p_0_in3_in,p_0_in1_in_0}),
        .Q(hlfb_n_2),
        .S({hlfb_n_33,hlfb_n_34}),
        .SR(p_0_in__0),
        .bbus(bbus),
        .bbus_10_sp_1(hlfb_n_35),
        .\cbus[6] (hadd_n_9),
        .\cbus[6]_0 (hlfa_n_94),
        .\cbus[6]_1 (norm_n_39),
        .clk(clk),
        .hctl_ccmd_cmp(hctl_ccmd_cmp),
        .hctl_ccmd_cmp_reg(hlfb_n_3),
        .hctl_ccmd_div(hctl_ccmd_div),
        .hctl_ccmd_div_reg(hlfb_n_37),
        .hctl_ccmd_mul(hctl_ccmd_mul),
        .hctl_ccmd_sub(hctl_ccmd_sub),
        .hctl_load_b(hctl_load_b),
        .hfpu_dsp_b(hfpu_dsp_b),
        .\hlfa_i_reg[15] (hlfb_n_0),
        .hlfa_r_0(hlfa_r_0[22:16]),
        .\hlfb_e_reg[0]_0 (hlfb_n_25),
        .\hlfb_e_reg[0]_1 (hlfb_n_36),
        .\hlfb_e_reg[3]_0 ({hlfb_n_54,hlfb_n_55,hlfb_n_56,hlfb_n_57}),
        .\hlfb_e_reg[3]_1 (hlfa_n_82),
        .\hlfb_e_reg[3]_2 (hctl_n_66),
        .\hlfb_e_reg[3]_3 (p_0_in9_in),
        .\hlfb_e_reg[3]_4 (hctl_n_84),
        .\hlfb_e_reg[4]_0 (hlfa_n_77),
        .\hlfb_e_reg[5]_0 (hlfb_e),
        .\hlfb_f_reg[0]_0 (hctl_n_77),
        .\hlfb_f_reg[0]_1 (hlfa_n_78),
        .\hlfb_f_reg[0]_2 (hctl_n_72),
        .\hlfb_f_reg[0]_3 (hctl_n_70),
        .\hlfb_f_reg[0]_4 (hlfa_n_138),
        .\hlfb_f_reg[10]_0 (hlfb_n_20),
        .\hlfb_f_reg[10]_1 (hctl_n_113),
        .\hlfb_f_reg[12]_0 (hlfb_f),
        .\hlfb_f_reg[12]_1 ({hctl_n_59,hctl_n_60,hctl_n_61,hctl_n_62,hctl_n_63,hctl_n_64,hlfa_n_79,hlfa_n_80,hctl_n_65,hlfa_n_81}),
        .\hlfb_f_reg[4]_0 (hlfb_n_21),
        .\hlfb_f_reg[5]_0 (hlfb_n_22),
        .\hlfb_f_reg[6]_0 (hlfb_n_23),
        .\hlfb_f_reg[6]_1 (hlfb_n_24),
        .\hlfb_f_reg[6]_2 (hctl_n_68),
        .\hlfb_f_reg[8]_0 (hlfb_n_5),
        .\hlfb_f_reg[9]_0 (hlfb_n_19),
        .\hlfb_f_reg[9]_1 (hlfa_n_85),
        .\hlfb_f_reg[9]_2 (hctl_n_109),
        .\hlfb_f_reg[9]_3 (hctl_n_112),
        .\hlfb_i_reg[11]_0 (hlfb_n_38),
        .\hlfb_i_reg[11]_1 (hlfb_n_39),
        .\hlfb_i_reg[12]_0 (hlfb_n_41),
        .\hlfb_i_reg[14]_0 (hlfb_n_40),
        .\hlfb_i_reg[2]_0 (hlfb_n_42),
        .\hlfb_i_reg[5]_0 (hlfb_n_1),
        .\hlfb_i_reg[5]_1 (hlfb_n_4),
        .hlfb_r(hlfb_r),
        .\hlfc_i_reg[24] (hlfa_n_43),
        .\hlfc_i_reg[24]_0 (hlfa_n_46));
  hfpu_hmul hmul
       (.S({hlfb_n_33,hlfb_n_34}),
        .\cbus[14]_INST_0_i_47 ({hlfb_n_54,hlfb_n_55,hlfb_n_56,hlfb_n_57}),
        .hlfa_r_0(hlfa_r_0[20:16]),
        .hlfc_r_hmul(hlfc_r_hmul));
  hfpu_norm norm
       (.D({hlfa_n_35,hctl_n_34,p_4_in,p_3_in}),
        .E(hlfc_f),
        .Q(p_0_in_1),
        .SR(p_0_in__0),
        .\cbus[0] (hctl_n_28),
        .\cbus[0]_0 (hlfa_n_73),
        .\cbus[10] (hctl_n_33),
        .\cbus[12] (hctl_n_89),
        .\cbus[4] (hadd_n_9),
        .\cbus[5] (hlfa_n_40),
        .\cbus[7] (hlfa_n_38),
        .clk(clk),
        .hctl_ccmd_cmp(hctl_ccmd_cmp),
        .hctl_ccmd_cmp_reg(norm_n_6),
        .hctl_ccmd_cmp_reg_0(norm_n_15),
        .hctl_ccmd_cmp_reg_1(norm_n_16),
        .hctl_ccmd_cmp_reg_2(norm_n_33),
        .hctl_ccmd_cmp_reg_3(norm_n_41),
        .hctl_ccmd_hlf(hctl_ccmd_hlf),
        .hctl_ccmd_reg(hctl_ccmd_reg),
        .hfpu_dsp_c({hfpu_dsp_c[21],hfpu_dsp_c[19],hfpu_dsp_c[17:16],hfpu_dsp_c[13],hfpu_dsp_c[11:9]}),
        .\hfpu_dsp_c[11] (norm_n_30),
        .\hfpu_dsp_c[19] (norm_n_29),
        .hlfc_e(hlfc_e_2),
        .\hlfc_e_reg[1]_0 (norm_n_34),
        .\hlfc_e_reg[3]_0 (norm_n_43),
        .\hlfc_e_reg[4]_0 (norm_n_42),
        .\hlfc_e_reg[5]_0 ({hctl_n_49,hctl_n_50,hctl_n_51,hctl_n_52,hctl_n_53,hctl_n_54}),
        .\hlfc_f_reg[0]_0 (norm_n_25),
        .\hlfc_f_reg[10]_0 (norm_n_40),
        .\hlfc_f_reg[10]_1 (hctl_n_32),
        .\hlfc_f_reg[12]_0 (norm_n_27),
        .\hlfc_f_reg[12]_1 (hlfa_n_64),
        .\hlfc_f_reg[13]_0 (norm_n_23),
        .\hlfc_f_reg[13]_1 (hlfa_n_74),
        .\hlfc_f_reg[14]_0 (norm_n_26),
        .\hlfc_f_reg[15]_0 ({hctl_n_41,hctl_n_42,hctl_n_43,hctl_n_44,hctl_n_45}),
        .\hlfc_f_reg[1]_0 (norm_n_24),
        .\hlfc_f_reg[1]_1 (hadd_n_7),
        .\hlfc_f_reg[2]_0 (norm_n_35),
        .\hlfc_f_reg[2]_1 (hadd_n_8),
        .\hlfc_f_reg[2]_2 (hctl_n_46),
        .\hlfc_f_reg[3]_0 (norm_n_28),
        .\hlfc_f_reg[3]_1 (norm_n_36),
        .\hlfc_f_reg[3]_2 (hctl_n_29),
        .\hlfc_f_reg[4]_0 (norm_n_37),
        .\hlfc_f_reg[4]_1 (hctl_n_27),
        .\hlfc_f_reg[5]_0 (norm_n_38),
        .\hlfc_f_reg[5]_1 (hctl_n_26),
        .\hlfc_f_reg[7]_0 (hctl_n_25),
        .\hlfc_f_reg[8]_0 (norm_n_39),
        .\hlfc_f_reg[8]_1 (hctl_n_30),
        .\hlfc_f_reg[9]_0 (hctl_n_31),
        .\hlfc_i_reg[22]_0 (norm_n_44),
        .\hlfc_i_reg[23]_0 (norm_n_17),
        .\hlfc_i_reg[23]_1 (norm_n_21),
        .\hlfc_i_reg[23]_2 (norm_n_22),
        .\hlfc_i_reg[23]_3 (norm_n_31),
        .\hlfc_i_reg[23]_4 (norm_n_45),
        .\hlfc_i_reg[23]_5 (norm_n_46),
        .\hlfc_i_reg[23]_6 (norm_n_47),
        .\hlfc_i_reg[23]_7 (norm_n_48),
        .\hlfc_i_reg[25]_0 ({norm_n_18,hlfc_zer,norm_n_20}),
        .\hlfc_i_reg[25]_1 (norm_n_32),
        .\hlfc_i_reg[25]_2 (hctl_load_c));
endmodule

module hfpu_fdiv
   (O,
    D,
    rem2_carry__2_i_1_0,
    rem1_carry__2_i_1_0,
    rem0,
    hctl_ccmd_div_reg,
    Q,
    \cbus[14]_INST_0_i_3 ,
    \cbus[14]_INST_0_i_3_0 ,
    \cbus[14]_INST_0_i_3_1 ,
    \cbus[14]_INST_0_i_13_0 ,
    rem0_carry__1_0);
  output [0:0]O;
  output [3:0]D;
  output [0:0]rem2_carry__2_i_1_0;
  output [0:0]rem1_carry__2_i_1_0;
  output [12:0]rem0;
  output hctl_ccmd_div_reg;
  input [15:0]Q;
  input \cbus[14]_INST_0_i_3 ;
  input \cbus[14]_INST_0_i_3_0 ;
  input \cbus[14]_INST_0_i_3_1 ;
  input [7:0]\cbus[14]_INST_0_i_13_0 ;
  input [10:0]rem0_carry__1_0;

  wire \<const0> ;
  wire [3:0]D;
  wire [0:0]O;
  wire [15:0]Q;
  wire [7:0]\cbus[14]_INST_0_i_13_0 ;
  wire \cbus[14]_INST_0_i_3 ;
  wire \cbus[14]_INST_0_i_34_n_0 ;
  wire \cbus[14]_INST_0_i_35_n_0 ;
  wire \cbus[14]_INST_0_i_36_n_0 ;
  wire \cbus[14]_INST_0_i_3_0 ;
  wire \cbus[14]_INST_0_i_3_1 ;
  wire hctl_ccmd_div_reg;
  wire [0:0]p_1_in5_in;
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
    .INIT(64'h000800080008AAAA)) 
    \cbus[14]_INST_0_i_13 
       (.I0(\cbus[14]_INST_0_i_3 ),
        .I1(\cbus[14]_INST_0_i_34_n_0 ),
        .I2(\cbus[14]_INST_0_i_35_n_0 ),
        .I3(\cbus[14]_INST_0_i_36_n_0 ),
        .I4(\cbus[14]_INST_0_i_3_0 ),
        .I5(\cbus[14]_INST_0_i_3_1 ),
        .O(hctl_ccmd_div_reg));
  LUT4 #(
    .INIT(16'h0010)) 
    \cbus[14]_INST_0_i_34 
       (.I0(\cbus[14]_INST_0_i_13_0 [2]),
        .I1(\cbus[14]_INST_0_i_13_0 [1]),
        .I2(rem2_carry__2_i_1_0),
        .I3(\cbus[14]_INST_0_i_13_0 [3]),
        .O(\cbus[14]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cbus[14]_INST_0_i_35 
       (.I0(rem0[12]),
        .I1(\cbus[14]_INST_0_i_13_0 [5]),
        .I2(rem1_carry__2_i_1_0),
        .I3(\cbus[14]_INST_0_i_13_0 [7]),
        .O(\cbus[14]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \cbus[14]_INST_0_i_36 
       (.I0(\cbus[14]_INST_0_i_13_0 [4]),
        .I1(\cbus[14]_INST_0_i_13_0 [0]),
        .I2(O),
        .I3(\cbus[14]_INST_0_i_13_0 [6]),
        .O(\cbus[14]_INST_0_i_36_n_0 ));
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
        .I1(rem1_carry__2_i_1_0),
        .I2(rem0_carry__1_0[7]),
        .O(rem0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__0_i_2
       (.I0(rem1[6]),
        .I1(rem1_carry__2_i_1_0),
        .I2(rem0_carry__1_0[6]),
        .O(rem0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__0_i_3
       (.I0(rem1[5]),
        .I1(rem1_carry__2_i_1_0),
        .I2(rem0_carry__1_0[5]),
        .O(rem0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__0_i_4
       (.I0(rem1[4]),
        .I1(rem1_carry__2_i_1_0),
        .I2(rem0_carry__1_0[4]),
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
        .I1(rem1_carry__2_i_1_0),
        .I2(rem0_carry__1_0[10]),
        .O(rem0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__1_i_3
       (.I0(rem1[9]),
        .I1(rem1_carry__2_i_1_0),
        .I2(rem0_carry__1_0[9]),
        .O(rem0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__1_i_4
       (.I0(rem1[8]),
        .I1(rem1_carry__2_i_1_0),
        .I2(rem0_carry__1_0[8]),
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
        .I1(rem1_carry__2_i_1_0),
        .I2(rem0_carry__1_0[3]),
        .O(rem0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry_i_2
       (.I0(rem1[2]),
        .I1(rem1_carry__2_i_1_0),
        .I2(rem0_carry__1_0[2]),
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
        .CYINIT(p_1_in5_in),
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
        .O(p_1_in5_in));
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
    hctl_ccmd_hlf_reg_0,
    hctl_ccmd_add_reg_3,
    hctl_ccmd_add_reg_4,
    hctl_ccmd_add_reg_5,
    hctl_ccmd_add_reg_6,
    hctl_ccmd_add_reg_7,
    D,
    hctl_ccmd_mul_reg_0,
    hctl_ccmd_mul_reg_1,
    hctl_ccmd_sub_reg_0,
    \stat_reg[2]_0 ,
    \stat_reg[0]_0 ,
    \stat_reg[0]_1 ,
    \stat_reg[0]_2 ,
    hctl_ccmd_div_reg_0,
    hctl_ccmd_add_reg_8,
    hctl_ccmd_div_reg_1,
    \stat_reg[0]_3 ,
    \stat_reg[1]_0 ,
    \stat_reg[3]_0 ,
    rst_n_0,
    \stat_reg[0]_4 ,
    .bbus_1_sp_1(bbus_1_sn_1),
    \stat_reg[2]_1 ,
    .bbus_2_sp_1(bbus_2_sn_1),
    \stat_reg[0]_5 ,
    hctl_load_b,
    \stat_reg[0]_6 ,
    \stat_reg[0]_7 ,
    rst_n_1,
    \stat_reg[2]_2 ,
    \stat_reg[3]_1 ,
    rst_n_2,
    .abus_3_sp_1(abus_3_sn_1),
    \abus[12] ,
    \abus[6] ,
    \abus[7] ,
    \abus[8] ,
    \abus[9] ,
    .bbus_11_sp_1(bbus_11_sn_1),
    hctl_ccmd_div_reg_2,
    .hfpu_dsp_c_8_sp_1(hfpu_dsp_c_8_sn_1),
    .hfpu_dsp_c_10_sp_1(hfpu_dsp_c_10_sn_1),
    .hfpu_dsp_c_9_sp_1(hfpu_dsp_c_9_sn_1),
    hctl_ccmd_reg_reg_0,
    \hlfa_f_reg[15] ,
    hctl_ccmd_add_reg_9,
    \stat_reg[2]_3 ,
    rst_n_3,
    rst_n_4,
    hctl_ccmd_div_reg_3,
    rst_n_5,
    rst_n_6,
    SR,
    clk,
    .cbus_7_sp_1(cbus_7_sn_1),
    .cbus_15_sp_1(cbus_15_sn_1),
    .cbus_6_sp_1(cbus_6_sn_1),
    .cbus_5_sp_1(cbus_5_sn_1),
    .cbus_4_sp_1(cbus_4_sn_1),
    .cbus_0_sp_1(cbus_0_sn_1),
    \cbus[0]_0 ,
    .cbus_2_sp_1(cbus_2_sn_1),
    \cbus[2]_0 ,
    Q,
    \cbus[8] ,
    .cbus_13_sp_1(cbus_13_sn_1),
    .cbus_1_sp_1(cbus_1_sn_1),
    \cbus[1]_0 ,
    .cbus_3_sp_1(cbus_3_sn_1),
    \cbus[8]_0 ,
    .cbus_9_sp_1(cbus_9_sn_1),
    \cbus[9]_0 ,
    .cbus_10_sp_1(cbus_10_sn_1),
    .cbus_11_sp_1(cbus_11_sn_1),
    \cbus[11]_0 ,
    .cbus_12_sp_1(cbus_12_sn_1),
    \cbus[12]_0 ,
    \cbus[12]_1 ,
    \cbus[13]_0 ,
    .cbus_14_sp_1(cbus_14_sn_1),
    \cbus[13]_1 ,
    \hlfc_i_reg[24] ,
    \hlfc_i_reg[24]_0 ,
    \hlfc_i_reg[24]_1 ,
    \hlfc_i_reg[25] ,
    \cbus[15]_INST_0_i_2_0 ,
    \hlfc_i_reg[22] ,
    \hlfc_i_reg[22]_0 ,
    \stat_reg[2]_4 ,
    \stat_reg[2]_5 ,
    \hlfc_f_reg[15] ,
    \stat_reg[3]_2 ,
    \hlfc_f_reg[14] ,
    \cbus[13]_2 ,
    \hlfc_f_reg[6] ,
    \hlfc_f_reg[11] ,
    \hlfc_f_reg[0] ,
    O,
    hfpu_dsp_c,
    \hlfc_f_reg[0]_0 ,
    \cbus[7]_0 ,
    \cbus[7]_1 ,
    \cbus[7]_2 ,
    \cbus[5]_0 ,
    \cbus[5]_1 ,
    \cbus[5]_2 ,
    \hlfc_f_reg[6]_0 ,
    \hlfc_f_reg[6]_1 ,
    \hlfc_f_reg[6]_2 ,
    \cbus[4]_0 ,
    \cbus[4]_1 ,
    \cbus[4]_2 ,
    \cbus[3]_0 ,
    \cbus[3]_1 ,
    \cbus[3]_2 ,
    \cbus[8]_1 ,
    \cbus[8]_2 ,
    \cbus[10]_0 ,
    \cbus[10]_1 ,
    \cbus[10]_2 ,
    \cbus[9]_1 ,
    \cbus[9]_2 ,
    \hlfc_f_reg[11]_0 ,
    \hlfc_f_reg[11]_1 ,
    \hlfc_f_reg[11]_2 ,
    hlfc_e,
    hlfa_r_0,
    \hlfc_e_reg[2] ,
    \hlfc_e_reg[3] ,
    \hlfc_e_reg[0] ,
    \hlfc_e_reg[1] ,
    \cbus[12]_INST_0_i_3 ,
    \cbus[12]_INST_0_i_3_0 ,
    rst_n,
    \hlfb_f_reg[2] ,
    \hlfb_f_reg[2]_0 ,
    \hlfb_f_reg[11] ,
    \hlfb_f_reg[1] ,
    bbus,
    \hlfb_f_reg[11]_0 ,
    \hlfb_f_reg[11]_1 ,
    \hlfa_f_reg[8] ,
    \hlfa_f_reg[8]_0 ,
    \hlfa_f[11]_i_2 ,
    \hlfa_f_reg[15]_0 ,
    abus,
    \hlfa_f_reg[12] ,
    ccmd,
    hlfc_r_hmul,
    hlfc_e_0,
    \hlfc_e_reg[4] ,
    \hlfc_e_reg[4]_0 ,
    \hlfc_e_reg[5] ,
    \cbus[14]_INST_0_i_3 ,
    \cbus[14]_INST_0_i_3_0 ,
    \cbus[4]_INST_0_i_3_0 ,
    \cbus[3]_INST_0_i_3_0 ,
    \cbus[2]_INST_0_i_3 ,
    rem0,
    \cbus[13]_3 ,
    \cbus[13]_4 ,
    \cbus[13]_5 ,
    \cbus[14]_0 ,
    hlfc_f_t_carry,
    \hlfc_i_reg[25]_0 ,
    \hlfc_i_reg[25]_1 ,
    \cbus[15]_0 ,
    \cbus[15]_1 ,
    \hlfb_f_reg[11]_2 ,
    \hlfb_f_reg[5] ,
    \hlfb_f_reg[8] ,
    \hlfb_f_reg[7] ,
    \hlfb_f_reg[6] );
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
  output hctl_ccmd_hlf_reg_0;
  output hctl_ccmd_add_reg_3;
  output hctl_ccmd_add_reg_4;
  output hctl_ccmd_add_reg_5;
  output hctl_ccmd_add_reg_6;
  output hctl_ccmd_add_reg_7;
  output [0:0]D;
  output hctl_ccmd_mul_reg_0;
  output hctl_ccmd_mul_reg_1;
  output hctl_ccmd_sub_reg_0;
  output [2:0]\stat_reg[2]_0 ;
  output [4:0]\stat_reg[0]_0 ;
  output \stat_reg[0]_1 ;
  output [0:0]\stat_reg[0]_2 ;
  output hctl_ccmd_div_reg_0;
  output [5:0]hctl_ccmd_add_reg_8;
  output hctl_ccmd_div_reg_1;
  output [0:0]\stat_reg[0]_3 ;
  output [0:0]\stat_reg[1]_0 ;
  output [0:0]\stat_reg[3]_0 ;
  output [6:0]rst_n_0;
  output \stat_reg[0]_4 ;
  output \stat_reg[2]_1 ;
  output \stat_reg[0]_5 ;
  output hctl_load_b;
  output \stat_reg[0]_6 ;
  output [0:0]\stat_reg[0]_7 ;
  output rst_n_1;
  output \stat_reg[2]_2 ;
  output \stat_reg[3]_1 ;
  output rst_n_2;
  output \abus[12] ;
  output \abus[6] ;
  output \abus[7] ;
  output \abus[8] ;
  output \abus[9] ;
  output hctl_ccmd_div_reg_2;
  output hctl_ccmd_reg_reg_0;
  output [15:0]\hlfa_f_reg[15] ;
  output [1:0]hctl_ccmd_add_reg_9;
  output [0:0]\stat_reg[2]_3 ;
  output rst_n_3;
  output rst_n_4;
  output hctl_ccmd_div_reg_3;
  output rst_n_5;
  output rst_n_6;
  input [0:0]SR;
  input clk;
  input \cbus[0]_0 ;
  input \cbus[2]_0 ;
  input [2:0]Q;
  input [7:0]\cbus[8] ;
  input \cbus[1]_0 ;
  input \cbus[8]_0 ;
  input \cbus[9]_0 ;
  input \cbus[11]_0 ;
  input \cbus[12]_0 ;
  input \cbus[12]_1 ;
  input \cbus[13]_0 ;
  input \cbus[13]_1 ;
  input \hlfc_i_reg[24] ;
  input \hlfc_i_reg[24]_0 ;
  input \hlfc_i_reg[24]_1 ;
  input [0:0]\hlfc_i_reg[25] ;
  input \cbus[15]_INST_0_i_2_0 ;
  input \hlfc_i_reg[22] ;
  input \hlfc_i_reg[22]_0 ;
  input \stat_reg[2]_4 ;
  input \stat_reg[2]_5 ;
  input \hlfc_f_reg[15] ;
  input \stat_reg[3]_2 ;
  input \hlfc_f_reg[14] ;
  input \cbus[13]_2 ;
  input \hlfc_f_reg[6] ;
  input \hlfc_f_reg[11] ;
  input \hlfc_f_reg[0] ;
  input [0:0]O;
  input [12:0]hfpu_dsp_c;
  input \hlfc_f_reg[0]_0 ;
  input \cbus[7]_0 ;
  input \cbus[7]_1 ;
  input \cbus[7]_2 ;
  input \cbus[5]_0 ;
  input \cbus[5]_1 ;
  input \cbus[5]_2 ;
  input \hlfc_f_reg[6]_0 ;
  input \hlfc_f_reg[6]_1 ;
  input \hlfc_f_reg[6]_2 ;
  input \cbus[4]_0 ;
  input \cbus[4]_1 ;
  input \cbus[4]_2 ;
  input \cbus[3]_0 ;
  input \cbus[3]_1 ;
  input \cbus[3]_2 ;
  input \cbus[8]_1 ;
  input \cbus[8]_2 ;
  input \cbus[10]_0 ;
  input \cbus[10]_1 ;
  input \cbus[10]_2 ;
  input \cbus[9]_1 ;
  input \cbus[9]_2 ;
  input \hlfc_f_reg[11]_0 ;
  input \hlfc_f_reg[11]_1 ;
  input \hlfc_f_reg[11]_2 ;
  input [5:0]hlfc_e;
  input [22:0]hlfa_r_0;
  input \hlfc_e_reg[2] ;
  input \hlfc_e_reg[3] ;
  input \hlfc_e_reg[0] ;
  input \hlfc_e_reg[1] ;
  input \cbus[12]_INST_0_i_3 ;
  input [7:0]\cbus[12]_INST_0_i_3_0 ;
  input rst_n;
  input \hlfb_f_reg[2] ;
  input \hlfb_f_reg[2]_0 ;
  input [2:0]\hlfb_f_reg[11] ;
  input \hlfb_f_reg[1] ;
  input [14:0]bbus;
  input [2:0]\hlfb_f_reg[11]_0 ;
  input [0:0]\hlfb_f_reg[11]_1 ;
  input [0:0]\hlfa_f_reg[8] ;
  input [0:0]\hlfa_f_reg[8]_0 ;
  input \hlfa_f[11]_i_2 ;
  input \hlfa_f_reg[15]_0 ;
  input [4:0]abus;
  input \hlfa_f_reg[12] ;
  input [4:0]ccmd;
  input [5:0]hlfc_r_hmul;
  input [4:0]hlfc_e_0;
  input \hlfc_e_reg[4] ;
  input \hlfc_e_reg[4]_0 ;
  input \hlfc_e_reg[5] ;
  input \cbus[14]_INST_0_i_3 ;
  input \cbus[14]_INST_0_i_3_0 ;
  input [0:0]\cbus[4]_INST_0_i_3_0 ;
  input [0:0]\cbus[3]_INST_0_i_3_0 ;
  input [0:0]\cbus[2]_INST_0_i_3 ;
  input [12:0]rem0;
  input \cbus[13]_3 ;
  input \cbus[13]_4 ;
  input \cbus[13]_5 ;
  input \cbus[14]_0 ;
  input [0:0]hlfc_f_t_carry;
  input \hlfc_i_reg[25]_0 ;
  input \hlfc_i_reg[25]_1 ;
  input \cbus[15]_0 ;
  input \cbus[15]_1 ;
  input \hlfb_f_reg[11]_2 ;
  input \hlfb_f_reg[5] ;
  input \hlfb_f_reg[8] ;
  input \hlfb_f_reg[7] ;
  input \hlfb_f_reg[6] ;
  output bbus_1_sn_1;
  output bbus_2_sn_1;
  output abus_3_sn_1;
  output bbus_11_sn_1;
  output hfpu_dsp_c_8_sn_1;
  output hfpu_dsp_c_10_sn_1;
  output hfpu_dsp_c_9_sn_1;
  input cbus_7_sn_1;
  input cbus_15_sn_1;
  input cbus_6_sn_1;
  input cbus_5_sn_1;
  input cbus_4_sn_1;
  input cbus_0_sn_1;
  input cbus_2_sn_1;
  input cbus_13_sn_1;
  input cbus_1_sn_1;
  input cbus_3_sn_1;
  input cbus_9_sn_1;
  input cbus_10_sn_1;
  input cbus_11_sn_1;
  input cbus_12_sn_1;
  input cbus_14_sn_1;

  wire \<const1> ;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]O;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [4:0]abus;
  wire \abus[12] ;
  wire \abus[6] ;
  wire \abus[7] ;
  wire \abus[8] ;
  wire \abus[9] ;
  wire abus_3_sn_1;
  wire [14:0]bbus;
  wire bbus_11_sn_1;
  wire bbus_1_sn_1;
  wire bbus_2_sn_1;
  wire [15:0]cbus;
  wire \cbus[0]_0 ;
  wire \cbus[0]_INST_0_i_3_n_0 ;
  wire \cbus[10]_0 ;
  wire \cbus[10]_1 ;
  wire \cbus[10]_2 ;
  wire \cbus[10]_INST_0_i_8_n_0 ;
  wire \cbus[11]_0 ;
  wire \cbus[11]_INST_0_i_1_n_0 ;
  wire \cbus[11]_INST_0_i_2_n_0 ;
  wire \cbus[11]_INST_0_i_9_n_0 ;
  wire \cbus[12]_0 ;
  wire \cbus[12]_1 ;
  wire \cbus[12]_INST_0_i_2_n_0 ;
  wire \cbus[12]_INST_0_i_3 ;
  wire [7:0]\cbus[12]_INST_0_i_3_0 ;
  wire \cbus[13]_0 ;
  wire \cbus[13]_1 ;
  wire \cbus[13]_2 ;
  wire \cbus[13]_3 ;
  wire \cbus[13]_4 ;
  wire \cbus[13]_5 ;
  wire \cbus[13]_INST_0_i_1_n_0 ;
  wire \cbus[13]_INST_0_i_2_n_0 ;
  wire \cbus[13]_INST_0_i_4_n_0 ;
  wire \cbus[14]_0 ;
  wire \cbus[14]_INST_0_i_15_n_0 ;
  wire \cbus[14]_INST_0_i_16_n_0 ;
  wire \cbus[14]_INST_0_i_18_n_0 ;
  wire \cbus[14]_INST_0_i_19_n_0 ;
  wire \cbus[14]_INST_0_i_1_n_0 ;
  wire \cbus[14]_INST_0_i_3 ;
  wire \cbus[14]_INST_0_i_39_n_0 ;
  wire \cbus[14]_INST_0_i_3_0 ;
  wire \cbus[14]_INST_0_i_42_n_0 ;
  wire \cbus[14]_INST_0_i_45_n_0 ;
  wire \cbus[14]_INST_0_i_47_n_0 ;
  wire \cbus[14]_INST_0_i_49_n_0 ;
  wire \cbus[14]_INST_0_i_4_n_0 ;
  wire \cbus[14]_INST_0_i_51_n_0 ;
  wire \cbus[14]_INST_0_i_6_n_0 ;
  wire \cbus[15]_0 ;
  wire \cbus[15]_1 ;
  wire \cbus[15]_INST_0_i_1_n_0 ;
  wire \cbus[15]_INST_0_i_2_0 ;
  wire \cbus[15]_INST_0_i_2_n_0 ;
  wire \cbus[15]_INST_0_i_5_n_0 ;
  wire \cbus[1]_0 ;
  wire \cbus[1]_INST_0_i_2_n_0 ;
  wire \cbus[2]_0 ;
  wire \cbus[2]_INST_0_i_2_n_0 ;
  wire [0:0]\cbus[2]_INST_0_i_3 ;
  wire \cbus[3]_0 ;
  wire \cbus[3]_1 ;
  wire \cbus[3]_2 ;
  wire \cbus[3]_INST_0_i_2_n_0 ;
  wire [0:0]\cbus[3]_INST_0_i_3_0 ;
  wire \cbus[3]_INST_0_i_7_n_0 ;
  wire \cbus[4]_0 ;
  wire \cbus[4]_1 ;
  wire \cbus[4]_2 ;
  wire \cbus[4]_INST_0_i_2_n_0 ;
  wire [0:0]\cbus[4]_INST_0_i_3_0 ;
  wire \cbus[4]_INST_0_i_7_n_0 ;
  wire \cbus[5]_0 ;
  wire \cbus[5]_1 ;
  wire \cbus[5]_2 ;
  wire \cbus[5]_INST_0_i_2_n_0 ;
  wire \cbus[5]_INST_0_i_8_n_0 ;
  wire \cbus[6]_INST_0_i_12_n_0 ;
  wire \cbus[6]_INST_0_i_2_n_0 ;
  wire \cbus[6]_INST_0_i_3_n_0 ;
  wire \cbus[7]_0 ;
  wire \cbus[7]_1 ;
  wire \cbus[7]_2 ;
  wire \cbus[7]_INST_0_i_2_n_0 ;
  wire \cbus[7]_INST_0_i_7_n_0 ;
  wire [7:0]\cbus[8] ;
  wire \cbus[8]_0 ;
  wire \cbus[8]_1 ;
  wire \cbus[8]_2 ;
  wire \cbus[8]_INST_0_i_2_n_0 ;
  wire \cbus[8]_INST_0_i_7_n_0 ;
  wire \cbus[9]_0 ;
  wire \cbus[9]_1 ;
  wire \cbus[9]_2 ;
  wire \cbus[9]_INST_0_i_1_n_0 ;
  wire \cbus[9]_INST_0_i_7_n_0 ;
  wire cbus_0_sn_1;
  wire cbus_10_sn_1;
  wire cbus_11_sn_1;
  wire cbus_12_sn_1;
  wire cbus_13_sn_1;
  wire cbus_14_sn_1;
  wire cbus_15_sn_1;
  wire cbus_1_sn_1;
  wire cbus_2_sn_1;
  wire cbus_3_sn_1;
  wire cbus_4_sn_1;
  wire cbus_5_sn_1;
  wire cbus_6_sn_1;
  wire cbus_7_sn_1;
  wire cbus_9_sn_1;
  wire [4:0]ccmd;
  wire clk;
  wire crdy_INST_0_i_1_n_0;
  wire crdy_f;
  wire crdy_f_i_2_n_0;
  wire crdy_f_i_3_n_0;
  wire crdy_t;
  wire hctl_ccmd_add;
  wire hctl_ccmd_add0;
  wire hctl_ccmd_add1;
  wire hctl_ccmd_add_reg_0;
  wire hctl_ccmd_add_reg_1;
  wire hctl_ccmd_add_reg_2;
  wire hctl_ccmd_add_reg_3;
  wire hctl_ccmd_add_reg_4;
  wire hctl_ccmd_add_reg_5;
  wire hctl_ccmd_add_reg_6;
  wire hctl_ccmd_add_reg_7;
  wire [5:0]hctl_ccmd_add_reg_8;
  wire [1:0]hctl_ccmd_add_reg_9;
  wire hctl_ccmd_cmp;
  wire hctl_ccmd_div;
  wire hctl_ccmd_div_i_1_n_0;
  wire hctl_ccmd_div_reg_0;
  wire hctl_ccmd_div_reg_1;
  wire hctl_ccmd_div_reg_2;
  wire hctl_ccmd_div_reg_3;
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
  wire hctl_ccmd_sub_reg_0;
  wire hctl_load_b;
  wire [12:0]hfpu_dsp_c;
  wire hfpu_dsp_c_10_sn_1;
  wire hfpu_dsp_c_8_sn_1;
  wire hfpu_dsp_c_9_sn_1;
  wire \hlfa_f[11]_i_2 ;
  wire \hlfa_f_reg[12] ;
  wire [15:0]\hlfa_f_reg[15] ;
  wire \hlfa_f_reg[15]_0 ;
  wire [0:0]\hlfa_f_reg[8] ;
  wire [0:0]\hlfa_f_reg[8]_0 ;
  wire \hlfa_i[15]_i_2_n_0 ;
  wire \hlfa_i[15]_i_3_n_0 ;
  wire [22:0]hlfa_r_0;
  wire \hlfb_f[12]_i_3_n_0 ;
  wire \hlfb_f[2]_i_2_n_0 ;
  wire [2:0]\hlfb_f_reg[11] ;
  wire [2:0]\hlfb_f_reg[11]_0 ;
  wire [0:0]\hlfb_f_reg[11]_1 ;
  wire \hlfb_f_reg[11]_2 ;
  wire \hlfb_f_reg[1] ;
  wire \hlfb_f_reg[2] ;
  wire \hlfb_f_reg[2]_0 ;
  wire \hlfb_f_reg[5] ;
  wire \hlfb_f_reg[6] ;
  wire \hlfb_f_reg[7] ;
  wire \hlfb_f_reg[8] ;
  wire [5:0]hlfc_e;
  wire \hlfc_e[5]_i_2_n_0 ;
  wire [4:0]hlfc_e_0;
  wire \hlfc_e_reg[0] ;
  wire \hlfc_e_reg[1] ;
  wire \hlfc_e_reg[2] ;
  wire \hlfc_e_reg[3] ;
  wire \hlfc_e_reg[4] ;
  wire \hlfc_e_reg[4]_0 ;
  wire \hlfc_e_reg[5] ;
  wire \hlfc_f_reg[0] ;
  wire \hlfc_f_reg[0]_0 ;
  wire \hlfc_f_reg[11] ;
  wire \hlfc_f_reg[11]_0 ;
  wire \hlfc_f_reg[11]_1 ;
  wire \hlfc_f_reg[11]_2 ;
  wire \hlfc_f_reg[14] ;
  wire \hlfc_f_reg[15] ;
  wire \hlfc_f_reg[6] ;
  wire \hlfc_f_reg[6]_0 ;
  wire \hlfc_f_reg[6]_1 ;
  wire \hlfc_f_reg[6]_2 ;
  wire [0:0]hlfc_f_t_carry;
  wire \hlfc_i[22]_i_5_n_0 ;
  wire \hlfc_i_reg[22] ;
  wire \hlfc_i_reg[22]_0 ;
  wire \hlfc_i_reg[24] ;
  wire \hlfc_i_reg[24]_0 ;
  wire \hlfc_i_reg[24]_1 ;
  wire [0:0]\hlfc_i_reg[25] ;
  wire \hlfc_i_reg[25]_0 ;
  wire \hlfc_i_reg[25]_1 ;
  wire [5:0]hlfc_r_hmul;
  wire p_1_in;
  wire [12:0]rem0;
  wire rst_n;
  wire [6:0]rst_n_0;
  wire rst_n_1;
  wire rst_n_2;
  wire rst_n_3;
  wire rst_n_4;
  wire rst_n_5;
  wire rst_n_6;
  wire [3:3]stat;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_4_n_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_4_n_0 ;
  wire \stat[2]_i_3_n_0 ;
  wire \stat[2]_i_7_n_0 ;
  wire \stat[3]_i_3_n_0 ;
  wire \stat[3]_i_4_n_0 ;
  wire \stat[3]_i_5_n_0 ;
  wire [3:0]stat_nx;
  wire [4:0]\stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire [0:0]\stat_reg[0]_2 ;
  wire [0:0]\stat_reg[0]_3 ;
  wire \stat_reg[0]_4 ;
  wire \stat_reg[0]_5 ;
  wire \stat_reg[0]_6 ;
  wire [0:0]\stat_reg[0]_7 ;
  wire [0:0]\stat_reg[1]_0 ;
  wire [2:0]\stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_2 ;
  wire [0:0]\stat_reg[2]_3 ;
  wire \stat_reg[2]_4 ;
  wire \stat_reg[2]_5 ;
  wire [0:0]\stat_reg[3]_0 ;
  wire \stat_reg[3]_1 ;
  wire \stat_reg[3]_2 ;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \cbus[0]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(hctl_ccmd_reg),
        .I2(\cbus[0]_0 ),
        .I3(hctl_ccmd_int),
        .I4(\cbus[0]_INST_0_i_3_n_0 ),
        .I5(crdy_INST_0_i_1_n_0),
        .O(cbus[0]));
  LUT5 #(
    .INIT(32'hBBBBB888)) 
    \cbus[0]_INST_0_i_3 
       (.I0(O),
        .I1(hctl_ccmd_add),
        .I2(hfpu_dsp_c[0]),
        .I3(hctl_ccmd_mul),
        .I4(\hlfc_f_reg[0]_0 ),
        .O(\cbus[0]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cbus[10]_INST_0 
       (.I0(cbus_10_sn_1),
        .I1(hctl_ccmd_int),
        .I2(hctl_ccmd_add_reg_6),
        .I3(crdy_INST_0_i_1_n_0),
        .O(cbus[10]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBB8B8888)) 
    \cbus[10]_INST_0_i_2 
       (.I0(\cbus[10]_0 ),
        .I1(hctl_ccmd_add),
        .I2(\cbus[10]_1 ),
        .I3(\cbus[10]_2 ),
        .I4(hctl_ccmd_div_reg_0),
        .I5(\cbus[10]_INST_0_i_8_n_0 ),
        .O(hctl_ccmd_add_reg_6));
  LUT4 #(
    .INIT(16'hB888)) 
    \cbus[10]_INST_0_i_8 
       (.I0(hfpu_dsp_c[10]),
        .I1(hctl_ccmd_mul),
        .I2(\cbus[12]_INST_0_i_3_0 [5]),
        .I3(hctl_ccmd_div),
        .O(\cbus[10]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cbus[11]_INST_0 
       (.I0(\cbus[11]_INST_0_i_1_n_0 ),
        .I1(hctl_ccmd_int),
        .I2(\cbus[11]_INST_0_i_2_n_0 ),
        .I3(crdy_INST_0_i_1_n_0),
        .O(cbus[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFF54454444)) 
    \cbus[11]_INST_0_i_1 
       (.I0(cbus_11_sn_1),
        .I1(hctl_ccmd_hlf_reg_0),
        .I2(\cbus[14]_INST_0_i_18_n_0 ),
        .I3(hctl_ccmd_add_reg_7),
        .I4(cbus_13_sn_1),
        .I5(\cbus[11]_0 ),
        .O(\cbus[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBB8B8888)) 
    \cbus[11]_INST_0_i_2 
       (.I0(\hlfc_f_reg[11]_0 ),
        .I1(hctl_ccmd_add),
        .I2(\hlfc_f_reg[11]_1 ),
        .I3(\hlfc_f_reg[11]_2 ),
        .I4(hctl_ccmd_div_reg_0),
        .I5(\cbus[11]_INST_0_i_9_n_0 ),
        .O(\cbus[11]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \cbus[11]_INST_0_i_8 
       (.I0(hctl_ccmd_div),
        .I1(hctl_ccmd_mul),
        .I2(hctl_ccmd_reg),
        .I3(\hlfc_i_reg[25] ),
        .O(hctl_ccmd_div_reg_0));
  LUT4 #(
    .INIT(16'hB888)) 
    \cbus[11]_INST_0_i_9 
       (.I0(hfpu_dsp_c[11]),
        .I1(hctl_ccmd_mul),
        .I2(\cbus[12]_INST_0_i_3_0 [6]),
        .I3(hctl_ccmd_div),
        .O(\cbus[11]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000FE0E)) 
    \cbus[12]_INST_0 
       (.I0(cbus_12_sn_1),
        .I1(\cbus[12]_INST_0_i_2_n_0 ),
        .I2(hctl_ccmd_int),
        .I3(\cbus[12]_0 ),
        .I4(crdy_INST_0_i_1_n_0),
        .O(cbus[12]));
  LUT6 #(
    .INIT(64'h00000000FFFF02A8)) 
    \cbus[12]_INST_0_i_2 
       (.I0(cbus_13_sn_1),
        .I1(\cbus[14]_INST_0_i_18_n_0 ),
        .I2(hctl_ccmd_add_reg_7),
        .I3(\cbus[14]_INST_0_i_16_n_0 ),
        .I4(hctl_ccmd_hlf_reg_0),
        .I5(\cbus[12]_1 ),
        .O(\cbus[12]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cbus[12]_INST_0_i_4 
       (.I0(hctl_ccmd_reg),
        .I1(hctl_ccmd_cmp),
        .O(hctl_ccmd_reg_reg_0));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \cbus[12]_INST_0_i_7 
       (.I0(\cbus[12]_INST_0_i_3 ),
        .I1(hctl_ccmd_div_reg_0),
        .I2(hctl_ccmd_div),
        .I3(\cbus[12]_INST_0_i_3_0 [7]),
        .I4(hctl_ccmd_mul),
        .I5(hfpu_dsp_c[12]),
        .O(hctl_ccmd_div_reg_1));
  LUT6 #(
    .INIT(64'h00000000AAAAFFAE)) 
    \cbus[13]_INST_0 
       (.I0(\cbus[13]_INST_0_i_1_n_0 ),
        .I1(cbus_13_sn_1),
        .I2(\cbus[13]_INST_0_i_2_n_0 ),
        .I3(hctl_ccmd_hlf_reg_0),
        .I4(\cbus[13]_0 ),
        .I5(\cbus[13]_INST_0_i_4_n_0 ),
        .O(cbus[13]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABFBB)) 
    \cbus[13]_INST_0_i_1 
       (.I0(hctl_ccmd_int),
        .I1(\cbus[13]_3 ),
        .I2(\cbus[13]_4 ),
        .I3(\cbus[13]_5 ),
        .I4(hctl_ccmd_reg),
        .I5(hctl_ccmd_cmp),
        .O(\cbus[13]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA9AA)) 
    \cbus[13]_INST_0_i_2 
       (.I0(\cbus[14]_INST_0_i_19_n_0 ),
        .I1(\cbus[14]_INST_0_i_18_n_0 ),
        .I2(hctl_ccmd_add_reg_7),
        .I3(\cbus[14]_INST_0_i_16_n_0 ),
        .O(\cbus[13]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \cbus[13]_INST_0_i_4 
       (.I0(crdy_INST_0_i_1_n_0),
        .I1(\cbus[13]_2 ),
        .I2(hctl_ccmd_int),
        .O(\cbus[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEEFE)) 
    \cbus[14]_INST_0 
       (.I0(\cbus[14]_INST_0_i_1_n_0 ),
        .I1(hctl_ccmd_hlf_reg_0),
        .I2(cbus_13_sn_1),
        .I3(\cbus[14]_INST_0_i_4_n_0 ),
        .I4(cbus_14_sn_1),
        .I5(\cbus[14]_INST_0_i_6_n_0 ),
        .O(cbus[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAEFF)) 
    \cbus[14]_INST_0_i_1 
       (.I0(hctl_ccmd_int),
        .I1(\cbus[13]_5 ),
        .I2(\cbus[14]_0 ),
        .I3(\cbus[13]_3 ),
        .I4(hctl_ccmd_reg),
        .I5(hctl_ccmd_cmp),
        .O(\cbus[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \cbus[14]_INST_0_i_14 
       (.I0(\cbus[14]_INST_0_i_39_n_0 ),
        .I1(\cbus[14]_INST_0_i_3 ),
        .I2(\cbus[14]_INST_0_i_3_0 ),
        .I3(hfpu_dsp_c[0]),
        .I4(hfpu_dsp_c[12]),
        .I5(hfpu_dsp_c[10]),
        .O(hfpu_dsp_c_8_sn_1));
  LUT6 #(
    .INIT(64'h888F88888F8F8F8F)) 
    \cbus[14]_INST_0_i_15 
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[20]),
        .I2(\cbus[14]_INST_0_i_42_n_0 ),
        .I3(\hlfc_e_reg[4] ),
        .I4(\hlfc_e_reg[4]_0 ),
        .I5(hctl_ccmd_mul_reg_0),
        .O(\cbus[14]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h7070707070707077)) 
    \cbus[14]_INST_0_i_16 
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[18]),
        .I2(\cbus[14]_INST_0_i_45_n_0 ),
        .I3(\hlfc_e_reg[2] ),
        .I4(hctl_ccmd_div),
        .I5(hctl_ccmd_mul),
        .O(\cbus[14]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8F8F8F8F88)) 
    \cbus[14]_INST_0_i_17 
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[16]),
        .I2(\cbus[14]_INST_0_i_47_n_0 ),
        .I3(\hlfc_e_reg[0] ),
        .I4(hctl_ccmd_div),
        .I5(hctl_ccmd_mul),
        .O(hctl_ccmd_add_reg_7));
  LUT6 #(
    .INIT(64'h8F8F8F8F8F8F8F88)) 
    \cbus[14]_INST_0_i_18 
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[17]),
        .I2(\cbus[14]_INST_0_i_49_n_0 ),
        .I3(\hlfc_e_reg[1] ),
        .I4(hctl_ccmd_div),
        .I5(hctl_ccmd_mul),
        .O(\cbus[14]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h7070707070707077)) 
    \cbus[14]_INST_0_i_19 
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[19]),
        .I2(\cbus[14]_INST_0_i_51_n_0 ),
        .I3(\hlfc_e_reg[3] ),
        .I4(hctl_ccmd_div),
        .I5(hctl_ccmd_mul),
        .O(\cbus[14]_INST_0_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cbus[14]_INST_0_i_2 
       (.I0(D),
        .I1(\cbus[13]_1 ),
        .I2(hctl_ccmd_hlf),
        .O(hctl_ccmd_hlf_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[14]_INST_0_i_33 
       (.I0(hctl_ccmd_div),
        .I1(hctl_ccmd_mul),
        .O(hctl_ccmd_div_reg_2));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \cbus[14]_INST_0_i_39 
       (.I0(hctl_ccmd_mul),
        .I1(hfpu_dsp_c[6]),
        .I2(hfpu_dsp_c[7]),
        .I3(hfpu_dsp_c[4]),
        .O(\cbus[14]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hAAA6AAAA)) 
    \cbus[14]_INST_0_i_4 
       (.I0(\cbus[14]_INST_0_i_15_n_0 ),
        .I1(\cbus[14]_INST_0_i_16_n_0 ),
        .I2(hctl_ccmd_add_reg_7),
        .I3(\cbus[14]_INST_0_i_18_n_0 ),
        .I4(\cbus[14]_INST_0_i_19_n_0 ),
        .O(\cbus[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCDCFCDFCFDFFFD)) 
    \cbus[14]_INST_0_i_42 
       (.I0(hctl_ccmd_reg),
        .I1(hctl_ccmd_add),
        .I2(hctl_ccmd_mul),
        .I3(hctl_ccmd_div),
        .I4(hlfc_e_0[3]),
        .I5(hlfc_r_hmul[4]),
        .O(\cbus[14]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hCCCDCFCDFCFDFFFD)) 
    \cbus[14]_INST_0_i_45 
       (.I0(hctl_ccmd_reg),
        .I1(hctl_ccmd_add),
        .I2(hctl_ccmd_mul),
        .I3(hctl_ccmd_div),
        .I4(hlfc_e_0[1]),
        .I5(hlfc_r_hmul[2]),
        .O(\cbus[14]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hCCCDCFCDFCFDFFFD)) 
    \cbus[14]_INST_0_i_47 
       (.I0(hctl_ccmd_reg),
        .I1(hctl_ccmd_add),
        .I2(hctl_ccmd_mul),
        .I3(hctl_ccmd_div),
        .I4(\hlfb_f_reg[11] [0]),
        .I5(hlfc_r_hmul[0]),
        .O(\cbus[14]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hCCCDCFCDFCFDFFFD)) 
    \cbus[14]_INST_0_i_49 
       (.I0(hctl_ccmd_reg),
        .I1(hctl_ccmd_add),
        .I2(hctl_ccmd_mul),
        .I3(hctl_ccmd_div),
        .I4(hlfc_e_0[0]),
        .I5(hlfc_r_hmul[1]),
        .O(\cbus[14]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hCCCDCFCDFCFDFFFD)) 
    \cbus[14]_INST_0_i_51 
       (.I0(hctl_ccmd_reg),
        .I1(hctl_ccmd_add),
        .I2(hctl_ccmd_mul),
        .I3(hctl_ccmd_div),
        .I4(hlfc_e_0[2]),
        .I5(hlfc_r_hmul[3]),
        .O(\cbus[14]_INST_0_i_51_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \cbus[14]_INST_0_i_6 
       (.I0(crdy_INST_0_i_1_n_0),
        .I1(\hlfc_f_reg[14] ),
        .I2(hctl_ccmd_int),
        .O(\cbus[14]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00545554)) 
    \cbus[15]_INST_0 
       (.I0(crdy_INST_0_i_1_n_0),
        .I1(\cbus[15]_INST_0_i_1_n_0 ),
        .I2(\cbus[15]_INST_0_i_2_n_0 ),
        .I3(hctl_ccmd_int),
        .I4(cbus_15_sn_1),
        .O(cbus[15]));
  LUT4 #(
    .INIT(16'h1110)) 
    \cbus[15]_INST_0_i_1 
       (.I0(hctl_ccmd_cmp),
        .I1(hctl_ccmd_reg),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(\cbus[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFEFEE)) 
    \cbus[15]_INST_0_i_2 
       (.I0(hctl_ccmd_hlf),
        .I1(\cbus[13]_1 ),
        .I2(\cbus[15]_0 ),
        .I3(hctl_ccmd_add),
        .I4(\cbus[15]_INST_0_i_5_n_0 ),
        .I5(\cbus[15]_1 ),
        .O(\cbus[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEFEEE)) 
    \cbus[15]_INST_0_i_5 
       (.I0(hctl_ccmd_mul),
        .I1(hctl_ccmd_div),
        .I2(hctl_ccmd_reg),
        .I3(\hlfc_i_reg[25] ),
        .I4(\cbus[15]_INST_0_i_2_0 ),
        .I5(hctl_ccmd_mul_reg_1),
        .O(\cbus[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \cbus[1]_INST_0 
       (.I0(cbus_1_sn_1),
        .I1(hctl_ccmd_reg),
        .I2(\cbus[1]_INST_0_i_2_n_0 ),
        .I3(hctl_ccmd_int),
        .I4(\cbus[1]_0 ),
        .I5(crdy_INST_0_i_1_n_0),
        .O(cbus[1]));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \cbus[1]_INST_0_i_2 
       (.I0(hctl_ccmd_hlf_reg_0),
        .I1(cbus_13_sn_1),
        .I2(hctl_ccmd_add_reg_3),
        .I3(Q[1]),
        .I4(hctl_ccmd_hlf),
        .I5(\cbus[8] [0]),
        .O(\cbus[1]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cbus[1]_INST_0_i_6 
       (.I0(hfpu_dsp_c[1]),
        .I1(hctl_ccmd_mul),
        .I2(hctl_ccmd_div),
        .I3(rem0[12]),
        .O(hfpu_dsp_c_9_sn_1));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \cbus[2]_INST_0 
       (.I0(cbus_2_sn_1),
        .I1(hctl_ccmd_reg),
        .I2(\cbus[2]_INST_0_i_2_n_0 ),
        .I3(hctl_ccmd_int),
        .I4(\cbus[2]_0 ),
        .I5(crdy_INST_0_i_1_n_0),
        .O(cbus[2]));
  LUT6 #(
    .INIT(64'h4040FF4040404040)) 
    \cbus[2]_INST_0_i_2 
       (.I0(Q[1]),
        .I1(hctl_ccmd_hlf),
        .I2(\cbus[8] [1]),
        .I3(hctl_ccmd_add_reg_2),
        .I4(hctl_ccmd_hlf_reg_0),
        .I5(cbus_13_sn_1),
        .O(\cbus[2]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cbus[2]_INST_0_i_6 
       (.I0(hfpu_dsp_c[2]),
        .I1(hctl_ccmd_mul),
        .I2(hctl_ccmd_div),
        .I3(\cbus[2]_INST_0_i_3 ),
        .O(hfpu_dsp_c_10_sn_1));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \cbus[3]_INST_0 
       (.I0(cbus_3_sn_1),
        .I1(hctl_ccmd_reg),
        .I2(\cbus[3]_INST_0_i_2_n_0 ),
        .I3(hctl_ccmd_int),
        .I4(hctl_ccmd_add_reg_3),
        .I5(crdy_INST_0_i_1_n_0),
        .O(cbus[3]));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \cbus[3]_INST_0_i_2 
       (.I0(hctl_ccmd_hlf_reg_0),
        .I1(cbus_13_sn_1),
        .I2(hctl_ccmd_add_reg_1),
        .I3(Q[1]),
        .I4(hctl_ccmd_hlf),
        .I5(\cbus[8] [2]),
        .O(\cbus[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBB8B8888)) 
    \cbus[3]_INST_0_i_3 
       (.I0(\cbus[3]_0 ),
        .I1(hctl_ccmd_add),
        .I2(\cbus[3]_1 ),
        .I3(\cbus[3]_2 ),
        .I4(hctl_ccmd_div_reg_0),
        .I5(\cbus[3]_INST_0_i_7_n_0 ),
        .O(hctl_ccmd_add_reg_3));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cbus[3]_INST_0_i_7 
       (.I0(hfpu_dsp_c[3]),
        .I1(hctl_ccmd_mul),
        .I2(hctl_ccmd_div),
        .I3(\cbus[3]_INST_0_i_3_0 ),
        .O(\cbus[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \cbus[4]_INST_0 
       (.I0(cbus_4_sn_1),
        .I1(hctl_ccmd_reg),
        .I2(\cbus[4]_INST_0_i_2_n_0 ),
        .I3(hctl_ccmd_int),
        .I4(hctl_ccmd_add_reg_2),
        .I5(crdy_INST_0_i_1_n_0),
        .O(cbus[4]));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \cbus[4]_INST_0_i_2 
       (.I0(hctl_ccmd_hlf_reg_0),
        .I1(cbus_13_sn_1),
        .I2(\cbus[6]_INST_0_i_3_n_0 ),
        .I3(Q[1]),
        .I4(hctl_ccmd_hlf),
        .I5(\cbus[8] [3]),
        .O(\cbus[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBB8B8888)) 
    \cbus[4]_INST_0_i_3 
       (.I0(\cbus[4]_0 ),
        .I1(hctl_ccmd_add),
        .I2(\cbus[4]_1 ),
        .I3(\cbus[4]_2 ),
        .I4(hctl_ccmd_div_reg_0),
        .I5(\cbus[4]_INST_0_i_7_n_0 ),
        .O(hctl_ccmd_add_reg_2));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cbus[4]_INST_0_i_7 
       (.I0(hfpu_dsp_c[4]),
        .I1(hctl_ccmd_mul),
        .I2(hctl_ccmd_div),
        .I3(\cbus[4]_INST_0_i_3_0 ),
        .O(\cbus[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \cbus[5]_INST_0 
       (.I0(cbus_5_sn_1),
        .I1(hctl_ccmd_reg),
        .I2(\cbus[5]_INST_0_i_2_n_0 ),
        .I3(hctl_ccmd_int),
        .I4(hctl_ccmd_add_reg_1),
        .I5(crdy_INST_0_i_1_n_0),
        .O(cbus[5]));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \cbus[5]_INST_0_i_2 
       (.I0(hctl_ccmd_hlf_reg_0),
        .I1(cbus_13_sn_1),
        .I2(hctl_ccmd_add_reg_0),
        .I3(Q[1]),
        .I4(hctl_ccmd_hlf),
        .I5(\cbus[8] [4]),
        .O(\cbus[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBB8B8888)) 
    \cbus[5]_INST_0_i_3 
       (.I0(\cbus[5]_0 ),
        .I1(hctl_ccmd_add),
        .I2(\cbus[5]_1 ),
        .I3(\cbus[5]_2 ),
        .I4(hctl_ccmd_div_reg_0),
        .I5(\cbus[5]_INST_0_i_8_n_0 ),
        .O(hctl_ccmd_add_reg_1));
  LUT4 #(
    .INIT(16'hB888)) 
    \cbus[5]_INST_0_i_8 
       (.I0(hfpu_dsp_c[5]),
        .I1(hctl_ccmd_mul),
        .I2(\cbus[12]_INST_0_i_3_0 [0]),
        .I3(hctl_ccmd_div),
        .O(\cbus[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \cbus[6]_INST_0 
       (.I0(cbus_6_sn_1),
        .I1(hctl_ccmd_reg),
        .I2(\cbus[6]_INST_0_i_2_n_0 ),
        .I3(hctl_ccmd_int),
        .I4(\cbus[6]_INST_0_i_3_n_0 ),
        .I5(crdy_INST_0_i_1_n_0),
        .O(cbus[6]));
  LUT4 #(
    .INIT(16'hCCA0)) 
    \cbus[6]_INST_0_i_12 
       (.I0(\cbus[12]_INST_0_i_3_0 [1]),
        .I1(hfpu_dsp_c[6]),
        .I2(hctl_ccmd_div),
        .I3(hctl_ccmd_mul),
        .O(\cbus[6]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \cbus[6]_INST_0_i_2 
       (.I0(hctl_ccmd_hlf_reg_0),
        .I1(cbus_13_sn_1),
        .I2(hctl_ccmd_add_reg_4),
        .I3(Q[1]),
        .I4(hctl_ccmd_hlf),
        .I5(\cbus[8] [5]),
        .O(\cbus[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBB8B8888)) 
    \cbus[6]_INST_0_i_3 
       (.I0(\hlfc_f_reg[6]_0 ),
        .I1(hctl_ccmd_add),
        .I2(\hlfc_f_reg[6]_1 ),
        .I3(\hlfc_f_reg[6]_2 ),
        .I4(hctl_ccmd_div_reg_0),
        .I5(\cbus[6]_INST_0_i_12_n_0 ),
        .O(\cbus[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \cbus[7]_INST_0 
       (.I0(cbus_7_sn_1),
        .I1(hctl_ccmd_reg),
        .I2(\cbus[7]_INST_0_i_2_n_0 ),
        .I3(hctl_ccmd_int),
        .I4(hctl_ccmd_add_reg_0),
        .I5(crdy_INST_0_i_1_n_0),
        .O(cbus[7]));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \cbus[7]_INST_0_i_2 
       (.I0(hctl_ccmd_hlf_reg_0),
        .I1(cbus_13_sn_1),
        .I2(hctl_ccmd_add_reg_5),
        .I3(Q[1]),
        .I4(hctl_ccmd_hlf),
        .I5(\cbus[8] [6]),
        .O(\cbus[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBB8B8888)) 
    \cbus[7]_INST_0_i_3 
       (.I0(\cbus[7]_0 ),
        .I1(hctl_ccmd_add),
        .I2(\cbus[7]_1 ),
        .I3(\cbus[7]_2 ),
        .I4(hctl_ccmd_div_reg_0),
        .I5(\cbus[7]_INST_0_i_7_n_0 ),
        .O(hctl_ccmd_add_reg_0));
  LUT4 #(
    .INIT(16'hB888)) 
    \cbus[7]_INST_0_i_7 
       (.I0(hfpu_dsp_c[7]),
        .I1(hctl_ccmd_mul),
        .I2(\cbus[12]_INST_0_i_3_0 [2]),
        .I3(hctl_ccmd_div),
        .O(\cbus[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \cbus[8]_INST_0 
       (.I0(\cbus[8]_0 ),
        .I1(hctl_ccmd_reg),
        .I2(\cbus[8]_INST_0_i_2_n_0 ),
        .I3(hctl_ccmd_int),
        .I4(hctl_ccmd_add_reg_4),
        .I5(crdy_INST_0_i_1_n_0),
        .O(cbus[8]));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \cbus[8]_INST_0_i_2 
       (.I0(hctl_ccmd_hlf_reg_0),
        .I1(cbus_13_sn_1),
        .I2(hctl_ccmd_add_reg_6),
        .I3(Q[1]),
        .I4(hctl_ccmd_hlf),
        .I5(\cbus[8] [7]),
        .O(\cbus[8]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    \cbus[8]_INST_0_i_3 
       (.I0(\cbus[8]_1 ),
        .I1(hctl_ccmd_add),
        .I2(\cbus[8]_2 ),
        .I3(hctl_ccmd_div_reg_0),
        .I4(\cbus[8]_INST_0_i_7_n_0 ),
        .O(hctl_ccmd_add_reg_4));
  LUT4 #(
    .INIT(16'hB888)) 
    \cbus[8]_INST_0_i_7 
       (.I0(hfpu_dsp_c[8]),
        .I1(hctl_ccmd_mul),
        .I2(\cbus[12]_INST_0_i_3_0 [3]),
        .I3(hctl_ccmd_div),
        .O(\cbus[8]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cbus[9]_INST_0 
       (.I0(\cbus[9]_INST_0_i_1_n_0 ),
        .I1(hctl_ccmd_int),
        .I2(hctl_ccmd_add_reg_5),
        .I3(crdy_INST_0_i_1_n_0),
        .O(cbus[9]));
  LUT6 #(
    .INIT(64'hFF40FFFFFF400000)) 
    \cbus[9]_INST_0_i_1 
       (.I0(hctl_ccmd_hlf_reg_0),
        .I1(cbus_13_sn_1),
        .I2(\cbus[11]_INST_0_i_2_n_0 ),
        .I3(cbus_9_sn_1),
        .I4(hctl_ccmd_reg),
        .I5(\cbus[9]_0 ),
        .O(\cbus[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    \cbus[9]_INST_0_i_2 
       (.I0(\cbus[9]_1 ),
        .I1(hctl_ccmd_add),
        .I2(\cbus[9]_2 ),
        .I3(hctl_ccmd_div_reg_0),
        .I4(\cbus[9]_INST_0_i_7_n_0 ),
        .O(hctl_ccmd_add_reg_5));
  LUT4 #(
    .INIT(16'hB888)) 
    \cbus[9]_INST_0_i_7 
       (.I0(hfpu_dsp_c[9]),
        .I1(hctl_ccmd_mul),
        .I2(\cbus[12]_INST_0_i_3_0 [4]),
        .I3(hctl_ccmd_div),
        .O(\cbus[9]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    crdy_INST_0
       (.I0(crdy_f),
        .I1(crdy_INST_0_i_1_n_0),
        .O(E));
  LUT5 #(
    .INIT(32'hE767FFFF)) 
    crdy_INST_0_i_1
       (.I0(\stat_reg[2]_0 [0]),
        .I1(\stat_reg[2]_0 [2]),
        .I2(stat),
        .I3(\stat_reg[2]_5 ),
        .I4(\stat_reg[2]_0 [1]),
        .O(crdy_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0080000FFFFFFFF)) 
    crdy_f_i_1
       (.I0(crdy_f_i_2_n_0),
        .I1(crdy_f_i_3_n_0),
        .I2(stat),
        .I3(\stat_reg[2]_0 [0]),
        .I4(\stat[1]_i_3_n_0 ),
        .I5(crdy_INST_0_i_1_n_0),
        .O(crdy_t));
  LUT2 #(
    .INIT(4'h1)) 
    crdy_f_i_2
       (.I0(ccmd[2]),
        .I1(ccmd[0]),
        .O(crdy_f_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    crdy_f_i_3
       (.I0(ccmd[3]),
        .I1(ccmd[1]),
        .O(crdy_f_i_3_n_0));
  FDRE crdy_f_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(crdy_t),
        .Q(crdy_f),
        .R(SR));
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
        .O(\stat_reg[0]_3 ));
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
    .INIT(16'h4000)) 
    \den[8]_i_1 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(\stat_reg[2]_0 [0]),
        .I2(\stat_reg[2]_0 [1]),
        .I3(hlfa_r_0[0]),
        .O(\hlfa_f_reg[15] [0]));
  LUT4 #(
    .INIT(16'h4000)) 
    \den[9]_i_1 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(\stat_reg[2]_0 [0]),
        .I2(\stat_reg[2]_0 [1]),
        .I3(hlfa_r_0[1]),
        .O(\hlfa_f_reg[15] [1]));
  LUT4 #(
    .INIT(16'h0008)) 
    \dso[10]_i_1 
       (.I0(\stat_reg[2]_0 [1]),
        .I1(\stat_reg[2]_0 [0]),
        .I2(stat),
        .I3(\stat_reg[2]_0 [2]),
        .O(\stat_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h00008600)) 
    hctl_ccmd_add_i_1
       (.I0(ccmd[0]),
        .I1(ccmd[1]),
        .I2(ccmd[3]),
        .I3(ccmd[4]),
        .I4(ccmd[2]),
        .O(hctl_ccmd_add0));
  FDRE hctl_ccmd_add_reg
       (.C(clk),
        .CE(E),
        .D(hctl_ccmd_add0),
        .Q(hctl_ccmd_add),
        .R(SR));
  LUT5 #(
    .INIT(32'h00008000)) 
    hctl_ccmd_cmp_i_1
       (.I0(ccmd[1]),
        .I1(ccmd[0]),
        .I2(ccmd[4]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .O(hctl_ccmd_add1));
  FDRE hctl_ccmd_cmp_reg
       (.C(clk),
        .CE(E),
        .D(hctl_ccmd_add1),
        .Q(hctl_ccmd_cmp),
        .R(SR));
  LUT5 #(
    .INIT(32'h01000000)) 
    hctl_ccmd_div_i_1
       (.I0(ccmd[1]),
        .I1(ccmd[3]),
        .I2(ccmd[0]),
        .I3(ccmd[4]),
        .I4(ccmd[2]),
        .O(hctl_ccmd_div_i_1_n_0));
  FDRE hctl_ccmd_div_reg
       (.C(clk),
        .CE(E),
        .D(hctl_ccmd_div_i_1_n_0),
        .Q(hctl_ccmd_div),
        .R(SR));
  LUT5 #(
    .INIT(32'h00004000)) 
    hctl_ccmd_hlf_i_1
       (.I0(ccmd[0]),
        .I1(ccmd[4]),
        .I2(ccmd[2]),
        .I3(ccmd[1]),
        .I4(ccmd[3]),
        .O(hctl_ccmd_reg60_in));
  FDRE hctl_ccmd_hlf_reg
       (.C(clk),
        .CE(E),
        .D(hctl_ccmd_reg60_in),
        .Q(hctl_ccmd_hlf),
        .R(SR));
  LUT5 #(
    .INIT(32'h08000020)) 
    hctl_ccmd_int_i_1
       (.I0(ccmd[4]),
        .I1(ccmd[1]),
        .I2(ccmd[3]),
        .I3(ccmd[2]),
        .I4(ccmd[0]),
        .O(hctl_ccmd_int0));
  FDRE hctl_ccmd_int_reg
       (.C(clk),
        .CE(E),
        .D(hctl_ccmd_int0),
        .Q(hctl_ccmd_int),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000080)) 
    hctl_ccmd_mul_i_1
       (.I0(ccmd[1]),
        .I1(ccmd[0]),
        .I2(ccmd[4]),
        .I3(ccmd[2]),
        .I4(ccmd[3]),
        .O(p_1_in));
  FDRE hctl_ccmd_mul_reg
       (.C(clk),
        .CE(E),
        .D(p_1_in),
        .Q(hctl_ccmd_mul),
        .R(SR));
  LUT5 #(
    .INIT(32'h044C8880)) 
    hctl_ccmd_reg_i_1
       (.I0(ccmd[2]),
        .I1(ccmd[4]),
        .I2(ccmd[0]),
        .I3(ccmd[1]),
        .I4(ccmd[3]),
        .O(hctl_ccmd_reg0));
  FDRE hctl_ccmd_reg_reg
       (.C(clk),
        .CE(E),
        .D(hctl_ccmd_reg0),
        .Q(hctl_ccmd_reg),
        .R(SR));
  LUT5 #(
    .INIT(32'h40000400)) 
    hctl_ccmd_sub_i_1
       (.I0(ccmd[2]),
        .I1(ccmd[4]),
        .I2(ccmd[0]),
        .I3(ccmd[1]),
        .I4(ccmd[3]),
        .O(hctl_ccmd_sub0));
  FDRE hctl_ccmd_sub_reg
       (.C(clk),
        .CE(E),
        .D(hctl_ccmd_sub0),
        .Q(hctl_ccmd_sub),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[10]_i_4 
       (.I0(abus[3]),
        .I1(\abus[12] ),
        .O(\abus[8] ));
  LUT5 #(
    .INIT(32'hFF54FFFF)) 
    \hlfa_f[11]_i_3 
       (.I0(\stat_reg[2]_2 ),
        .I1(\hlfa_f_reg[8] ),
        .I2(\hlfa_f_reg[8]_0 ),
        .I3(hctl_load_b),
        .I4(rst_n),
        .O(rst_n_1));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[11]_i_6 
       (.I0(abus[4]),
        .I1(\abus[12] ),
        .O(\abus[9] ));
  LUT2 #(
    .INIT(4'hB)) 
    \hlfa_f[12]_i_6 
       (.I0(\hlfa_f_reg[12] ),
        .I1(hctl_load_b),
        .O(\abus[12] ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \hlfa_f[14]_i_6 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\hlfa_f[11]_i_2 ),
        .O(\stat_reg[2]_2 ));
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \hlfa_f[15]_i_3 
       (.I0(\hlfa_f_reg[15]_0 ),
        .I1(stat),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(\stat_reg[2]_0 [1]),
        .O(\stat_reg[3]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[15]_i_5 
       (.I0(rst_n),
        .I1(hctl_load_b),
        .O(rst_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[5]_i_6 
       (.I0(abus[0]),
        .I1(\abus[12] ),
        .O(abus_3_sn_1));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[8]_i_4 
       (.I0(abus[1]),
        .I1(\abus[12] ),
        .O(\abus[6] ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[9]_i_4 
       (.I0(abus[2]),
        .I1(\abus[12] ),
        .O(\abus[7] ));
  LUT6 #(
    .INIT(64'h0044444404444440)) 
    \hlfa_i[15]_i_1 
       (.I0(\hlfa_i[15]_i_2_n_0 ),
        .I1(\hlfa_i[15]_i_3_n_0 ),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[1]),
        .O(hctl_load_b));
  LUT3 #(
    .INIT(8'hFD)) 
    \hlfa_i[15]_i_2 
       (.I0(ccmd[4]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [2]),
        .O(\hlfa_i[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \hlfa_i[15]_i_3 
       (.I0(stat),
        .I1(\stat_reg[2]_0 [0]),
        .O(\hlfa_i[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \hlfb_e[3]_i_6 
       (.I0(hctl_load_b),
        .I1(bbus[11]),
        .I2(bbus[10]),
        .I3(bbus[12]),
        .I4(bbus[13]),
        .O(bbus_11_sn_1));
  LUT5 #(
    .INIT(32'h00000080)) 
    \hlfb_e[3]_i_7 
       (.I0(\hlfb_f_reg[11] [1]),
        .I1(\hlfb_f_reg[1] ),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [1]),
        .I4(\stat_reg[2]_0 [2]),
        .O(\stat_reg[0]_4 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \hlfb_e[5]_i_15 
       (.I0(\hlfb_f_reg[11]_1 ),
        .I1(\hlfb_f_reg[1] ),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [1]),
        .I4(\stat_reg[2]_0 [2]),
        .O(\stat_reg[0]_6 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \hlfb_e[5]_i_4 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\hlfb_f_reg[1] ),
        .O(\stat_reg[2]_1 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \hlfb_f[10]_i_2 
       (.I0(rst_n),
        .I1(\hlfb_f[12]_i_3_n_0 ),
        .I2(bbus[8]),
        .O(rst_n_6));
  LUT6 #(
    .INIT(64'h2020202020FF2020)) 
    \hlfb_f[11]_i_1 
       (.I0(rst_n),
        .I1(\hlfb_f[12]_i_3_n_0 ),
        .I2(bbus[9]),
        .I3(rst_n_3),
        .I4(\hlfb_f_reg[11]_0 [2]),
        .I5(\hlfb_f_reg[11]_2 ),
        .O(rst_n_0[5]));
  LUT5 #(
    .INIT(32'hDDFFDDFD)) 
    \hlfb_f[11]_i_2 
       (.I0(rst_n),
        .I1(hctl_load_b),
        .I2(\hlfb_f_reg[11]_1 ),
        .I3(\stat_reg[2]_1 ),
        .I4(\hlfb_f_reg[11] [2]),
        .O(rst_n_3));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfb_f[12]_i_2 
       (.I0(rst_n),
        .I1(\hlfb_f[12]_i_3_n_0 ),
        .O(rst_n_0[6]));
  LUT6 #(
    .INIT(64'h5555555555555557)) 
    \hlfb_f[12]_i_3 
       (.I0(hctl_load_b),
        .I1(bbus[10]),
        .I2(bbus[11]),
        .I3(bbus[13]),
        .I4(bbus[14]),
        .I5(bbus[12]),
        .O(\hlfb_f[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \hlfb_f[1]_i_3 
       (.I0(\hlfb_f_reg[11] [2]),
        .I1(\hlfb_f_reg[1] ),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [1]),
        .I4(\stat_reg[2]_0 [2]),
        .O(\stat_reg[0]_5 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \hlfb_f[1]_i_4 
       (.I0(\stat_reg[0]_6 ),
        .I1(hctl_load_b),
        .I2(rst_n),
        .O(rst_n_4));
  LUT4 #(
    .INIT(16'hC808)) 
    \hlfb_f[2]_i_1 
       (.I0(\hlfb_f[2]_i_2_n_0 ),
        .I1(rst_n),
        .I2(\hlfb_f_reg[2] ),
        .I3(\hlfb_f_reg[2]_0 ),
        .O(rst_n_0[0]));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \hlfb_f[2]_i_2 
       (.I0(hctl_load_b),
        .I1(\stat_reg[0]_6 ),
        .I2(\hlfb_f_reg[11]_0 [0]),
        .I3(\hlfb_f[12]_i_3_n_0 ),
        .I4(bbus[0]),
        .O(\hlfb_f[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDD0DDDDD)) 
    \hlfb_f[3]_i_3 
       (.I0(bbus[1]),
        .I1(\hlfb_f[12]_i_3_n_0 ),
        .I2(\hlfb_f_reg[11]_0 [1]),
        .I3(\stat_reg[2]_1 ),
        .I4(\hlfb_f_reg[11] [2]),
        .I5(\hlfb_f_reg[11]_1 ),
        .O(bbus_1_sn_1));
  LUT6 #(
    .INIT(64'hDDDDDDDDDD0DDDDD)) 
    \hlfb_f[4]_i_3 
       (.I0(bbus[2]),
        .I1(\hlfb_f[12]_i_3_n_0 ),
        .I2(\hlfb_f_reg[11]_0 [2]),
        .I3(\stat_reg[2]_1 ),
        .I4(\hlfb_f_reg[11] [2]),
        .I5(\hlfb_f_reg[11]_1 ),
        .O(bbus_2_sn_1));
  LUT5 #(
    .INIT(32'h2020FF20)) 
    \hlfb_f[5]_i_1 
       (.I0(rst_n),
        .I1(\hlfb_f[12]_i_3_n_0 ),
        .I2(bbus[3]),
        .I3(\hlfb_f_reg[5] ),
        .I4(rst_n_3),
        .O(rst_n_0[1]));
  LUT5 #(
    .INIT(32'h202020FF)) 
    \hlfb_f[6]_i_1 
       (.I0(rst_n),
        .I1(\hlfb_f[12]_i_3_n_0 ),
        .I2(bbus[4]),
        .I3(\hlfb_f_reg[6] ),
        .I4(rst_n_3),
        .O(rst_n_0[2]));
  LUT5 #(
    .INIT(32'h202020FF)) 
    \hlfb_f[7]_i_1 
       (.I0(rst_n),
        .I1(\hlfb_f[12]_i_3_n_0 ),
        .I2(bbus[5]),
        .I3(\hlfb_f_reg[7] ),
        .I4(rst_n_3),
        .O(rst_n_0[3]));
  LUT5 #(
    .INIT(32'h202020FF)) 
    \hlfb_f[8]_i_1 
       (.I0(rst_n),
        .I1(\hlfb_f[12]_i_3_n_0 ),
        .I2(bbus[6]),
        .I3(\hlfb_f_reg[8] ),
        .I4(rst_n_3),
        .O(rst_n_0[4]));
  LUT3 #(
    .INIT(8'hDF)) 
    \hlfb_f[9]_i_2 
       (.I0(rst_n),
        .I1(\hlfb_f[12]_i_3_n_0 ),
        .I2(bbus[7]),
        .O(rst_n_5));
  LUT3 #(
    .INIT(8'hB8)) 
    \hlfc_e[0]_i_1 
       (.I0(hlfc_e[0]),
        .I1(\stat_reg[0]_1 ),
        .I2(hctl_ccmd_add_reg_7),
        .O(hctl_ccmd_add_reg_8[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \hlfc_e[1]_i_1 
       (.I0(hlfc_e[1]),
        .I1(\stat_reg[0]_1 ),
        .I2(\cbus[14]_INST_0_i_18_n_0 ),
        .O(hctl_ccmd_add_reg_8[1]));
  LUT3 #(
    .INIT(8'h8B)) 
    \hlfc_e[2]_i_1 
       (.I0(hlfc_e[2]),
        .I1(\stat_reg[0]_1 ),
        .I2(\cbus[14]_INST_0_i_16_n_0 ),
        .O(hctl_ccmd_add_reg_8[2]));
  LUT3 #(
    .INIT(8'hA3)) 
    \hlfc_e[3]_i_1 
       (.I0(hlfc_e[3]),
        .I1(\cbus[14]_INST_0_i_19_n_0 ),
        .I2(\stat_reg[0]_1 ),
        .O(hctl_ccmd_add_reg_8[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \hlfc_e[4]_i_1 
       (.I0(hlfc_e[4]),
        .I1(\stat_reg[0]_1 ),
        .I2(\cbus[14]_INST_0_i_15_n_0 ),
        .O(hctl_ccmd_add_reg_8[4]));
  LUT5 #(
    .INIT(32'hBBBBB888)) 
    \hlfc_e[5]_i_1 
       (.I0(hlfc_e[5]),
        .I1(\stat_reg[0]_1 ),
        .I2(hctl_ccmd_add),
        .I3(hlfa_r_0[21]),
        .I4(\hlfc_e[5]_i_2_n_0 ),
        .O(hctl_ccmd_add_reg_8[5]));
  LUT6 #(
    .INIT(64'h00000000CCCCF0AA)) 
    \hlfc_e[5]_i_2 
       (.I0(\hlfc_e_reg[5] ),
        .I1(hlfc_r_hmul[5]),
        .I2(hlfc_e_0[4]),
        .I3(hctl_ccmd_div),
        .I4(hctl_ccmd_mul),
        .I5(\hlfc_i[22]_i_5_n_0 ),
        .O(\hlfc_e[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hlfc_f[0]_i_1 
       (.I0(\hlfc_f_reg[0] ),
        .I1(\stat_reg[0]_1 ),
        .I2(\cbus[0]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0]_0 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \hlfc_f[11]_i_1 
       (.I0(\hlfc_f_reg[11] ),
        .I1(\stat_reg[0]_1 ),
        .I2(\cbus[11]_INST_0_i_2_n_0 ),
        .O(\stat_reg[0]_0 [2]));
  LUT2 #(
    .INIT(4'h1)) 
    \hlfc_f[14]_i_1 
       (.I0(\stat_reg[0]_1 ),
        .I1(\hlfc_f_reg[14] ),
        .O(\stat_reg[0]_0 [3]));
  LUT6 #(
    .INIT(64'h55555555D5555555)) 
    \hlfc_f[15]_i_1 
       (.I0(\stat_reg[0]_1 ),
        .I1(\stat_reg[2]_0 [0]),
        .I2(\stat_reg[2]_0 [2]),
        .I3(\stat_reg[2]_0 [1]),
        .I4(stat),
        .I5(\hlfc_f_reg[15] ),
        .O(\stat_reg[0]_2 ));
  LUT2 #(
    .INIT(4'h1)) 
    \hlfc_f[15]_i_2 
       (.I0(\stat_reg[0]_1 ),
        .I1(cbus_15_sn_1),
        .O(\stat_reg[0]_0 [4]));
  LUT5 #(
    .INIT(32'hFEFEADAF)) 
    \hlfc_f[15]_i_3 
       (.I0(\stat_reg[2]_0 [0]),
        .I1(\stat_reg[2]_0 [2]),
        .I2(\stat_reg[2]_0 [1]),
        .I3(\stat_reg[2]_4 ),
        .I4(stat),
        .O(\stat_reg[0]_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hlfc_f[6]_i_1 
       (.I0(\hlfc_f_reg[6] ),
        .I1(\stat_reg[0]_1 ),
        .I2(\cbus[6]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0]_0 [1]));
  LUT5 #(
    .INIT(32'h78878778)) 
    hlfc_f_t_carry__2_i_5
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[14]),
        .I2(hlfa_r_0[22]),
        .I3(hlfc_f_t_carry),
        .I4(hctl_ccmd_sub),
        .O(hctl_ccmd_add_reg_9[1]));
  LUT5 #(
    .INIT(32'h78878778)) 
    hlfc_f_t_carry__2_i_6
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[13]),
        .I2(hlfa_r_0[22]),
        .I3(hlfc_f_t_carry),
        .I4(hctl_ccmd_sub),
        .O(hctl_ccmd_add_reg_9[0]));
  LUT3 #(
    .INIT(8'h96)) 
    hlfc_f_t_carry_i_1
       (.I0(hctl_ccmd_sub),
        .I1(hlfc_f_t_carry),
        .I2(hlfa_r_0[22]),
        .O(hctl_ccmd_sub_reg_0));
  LUT5 #(
    .INIT(32'hFFFF080B)) 
    \hlfc_i[22]_i_2 
       (.I0(\hlfc_i_reg[22] ),
        .I1(hctl_ccmd_mul),
        .I2(hctl_ccmd_sub_reg_0),
        .I3(\hlfc_i_reg[22]_0 ),
        .I4(\hlfc_i[22]_i_5_n_0 ),
        .O(hctl_ccmd_mul_reg_1));
  LUT4 #(
    .INIT(16'hAAAB)) 
    \hlfc_i[22]_i_5 
       (.I0(hctl_ccmd_add),
        .I1(hctl_ccmd_reg),
        .I2(hctl_ccmd_mul),
        .I3(hctl_ccmd_div),
        .O(\hlfc_i[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7477747774774444)) 
    \hlfc_i[24]_i_1 
       (.I0(\hlfc_i_reg[24] ),
        .I1(hctl_ccmd_add),
        .I2(hctl_ccmd_reg),
        .I3(hctl_ccmd_mul_reg_0),
        .I4(\hlfc_i_reg[24]_0 ),
        .I5(\hlfc_i_reg[24]_1 ),
        .O(D));
  LUT2 #(
    .INIT(4'h1)) 
    \hlfc_i[24]_i_3 
       (.I0(hctl_ccmd_mul),
        .I1(hctl_ccmd_div),
        .O(hctl_ccmd_mul_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \hlfc_i[25]_i_1 
       (.I0(\stat_reg[0]_1 ),
        .O(\stat_reg[0]_7 ));
  LUT6 #(
    .INIT(64'hF1F5F5F5F5F5F5F5)) 
    \hlfc_i[25]_i_4 
       (.I0(hctl_ccmd_div),
        .I1(\hlfc_i_reg[25]_0 ),
        .I2(hctl_ccmd_mul),
        .I3(\hlfc_i_reg[25] ),
        .I4(hctl_ccmd_reg),
        .I5(\hlfc_i_reg[25]_1 ),
        .O(hctl_ccmd_div_reg_3));
  LUT5 #(
    .INIT(32'h1000FFFF)) 
    \hquo[7]_i_1 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(stat),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [1]),
        .I4(rst_n),
        .O(\stat_reg[2]_3 ));
  LUT4 #(
    .INIT(16'h0444)) 
    \hquo[7]_i_2 
       (.I0(stat),
        .I1(\stat_reg[2]_0 [2]),
        .I2(\stat_reg[2]_0 [1]),
        .I3(\stat_reg[2]_0 [0]),
        .O(\stat_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000777DFFFFFFFF)) 
    \stat[0]_i_1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(stat),
        .I2(\stat_reg[2]_0 [2]),
        .I3(\stat_reg[2]_0 [1]),
        .I4(\stat_reg[2]_0 [0]),
        .I5(\stat[0]_i_3_n_0 ),
        .O(stat_nx[0]));
  LUT6 #(
    .INIT(64'hE209FFFFFFFFFFFF)) 
    \stat[0]_i_2 
       (.I0(ccmd[1]),
        .I1(ccmd[0]),
        .I2(ccmd[3]),
        .I3(ccmd[2]),
        .I4(ccmd[4]),
        .I5(\stat[0]_i_4_n_0 ),
        .O(\stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFF37FFFF3F3)) 
    \stat[0]_i_3 
       (.I0(\stat_reg[2]_5 ),
        .I1(\stat_reg[2]_0 [0]),
        .I2(\stat_reg[2]_0 [1]),
        .I3(stat),
        .I4(\stat_reg[2]_0 [2]),
        .I5(\stat_reg[2]_4 ),
        .O(\stat[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[0]_i_4 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(\stat_reg[2]_0 [1]),
        .O(\stat[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF444444F4)) 
    \stat[1]_i_1 
       (.I0(\stat[1]_i_2_n_0 ),
        .I1(\stat[1]_i_3_n_0 ),
        .I2(\stat[1]_i_4_n_0 ),
        .I3(\stat_reg[2]_0 [1]),
        .I4(stat),
        .I5(\stat[3]_i_5_n_0 ),
        .O(stat_nx[1]));
  LUT6 #(
    .INIT(64'hA882882AAAAAAAAA)) 
    \stat[1]_i_2 
       (.I0(\hlfa_i[15]_i_3_n_0 ),
        .I1(ccmd[1]),
        .I2(ccmd[3]),
        .I3(ccmd[2]),
        .I4(ccmd[0]),
        .I5(ccmd[4]),
        .O(\stat[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1011)) 
    \stat[1]_i_3 
       (.I0(\stat_reg[2]_0 [1]),
        .I1(\stat_reg[2]_0 [2]),
        .I2(\stat_reg[2]_4 ),
        .I3(\stat_reg[2]_0 [0]),
        .O(\stat[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \stat[1]_i_4 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(\stat_reg[2]_0 [0]),
        .O(\stat[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFD)) 
    \stat[2]_i_1 
       (.I0(\stat_reg[2]_0 [0]),
        .I1(\stat_reg[2]_4 ),
        .I2(\stat_reg[2]_0 [2]),
        .I3(\stat_reg[2]_0 [1]),
        .I4(\stat[2]_i_3_n_0 ),
        .O(stat_nx[2]));
  LUT6 #(
    .INIT(64'h3CF0A082FCF0A082)) 
    \stat[2]_i_3 
       (.I0(\stat[2]_i_7_n_0 ),
        .I1(\stat_reg[2]_0 [2]),
        .I2(stat),
        .I3(\stat_reg[2]_0 [1]),
        .I4(\stat_reg[2]_0 [0]),
        .I5(\stat_reg[2]_5 ),
        .O(\stat[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FF7FF77FFFFF)) 
    \stat[2]_i_7 
       (.I0(\stat[0]_i_4_n_0 ),
        .I1(ccmd[4]),
        .I2(ccmd[2]),
        .I3(ccmd[1]),
        .I4(ccmd[3]),
        .I5(ccmd[0]),
        .O(\stat[2]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \stat[3]_i_2 
       (.I0(\stat[3]_i_3_n_0 ),
        .I1(\stat[3]_i_4_n_0 ),
        .I2(\stat[3]_i_5_n_0 ),
        .O(stat_nx[3]));
  LUT5 #(
    .INIT(32'h03030200)) 
    \stat[3]_i_3 
       (.I0(\stat_reg[2]_0 [0]),
        .I1(\stat_reg[2]_0 [2]),
        .I2(\stat_reg[2]_0 [1]),
        .I3(\stat_reg[2]_4 ),
        .I4(stat),
        .O(\stat[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000005000010)) 
    \stat[3]_i_4 
       (.I0(\stat_reg[2]_0 [0]),
        .I1(ccmd[0]),
        .I2(ccmd[3]),
        .I3(ccmd[2]),
        .I4(ccmd[1]),
        .I5(\hlfa_i[15]_i_2_n_0 ),
        .O(\stat[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000303040003030)) 
    \stat[3]_i_5 
       (.I0(\hlfc_f_reg[15] ),
        .I1(stat),
        .I2(\stat_reg[2]_0 [1]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(\stat_reg[2]_0 [0]),
        .I5(\stat_reg[3]_2 ),
        .O(\stat[3]_i_5_n_0 ));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[0]),
        .Q(\stat_reg[2]_0 [0]),
        .R(SR));
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
    \hlfa_f_reg[14] ,
    \cbus[12]_INST_0_i_12_0 ,
    CO,
    hctl_ccmd_add_reg,
    hctl_ccmd_add_reg_0,
    \cbus[6]_INST_0_i_15_0 ,
    \cbus[12]_INST_0_i_6_0 ,
    hlfc_f_t_carry__1_0,
    hlfc_f_t_carry__1_1,
    \cbus[12]_INST_0_i_6_1 ,
    hlfc_f_t_carry__1_2,
    hlfc_f_t_carry__1_3,
    \cbus[14]_INST_0_i_24_0 ,
    hlfc_f_t_carry_0,
    hlfc_f_t_carry__0_0,
    hlfc_f_t_carry__0_1,
    hlfc_f_t_carry__0_2,
    hlfc_f_t_carry__0_3,
    \cbus[0]_INST_0_i_3 ,
    p_0_in1_in,
    S,
    \cbus[6]_INST_0_i_13_0 ,
    \cbus[14]_INST_0_i_25_0 ,
    \cbus[12]_INST_0_i_9 ,
    \cbus[14]_INST_0_i_25_1 ,
    hctl_ccmd_add,
    \hlfc_f_reg[1] ,
    \hlfc_f_reg[2] ,
    \hlfc_f_reg[2]_0 ,
    \cbus[6]_INST_0_i_1 );
  output [0:0]O;
  output [3:0]\hlfa_f_reg[14] ;
  output [0:0]\cbus[12]_INST_0_i_12_0 ;
  output [0:0]CO;
  output hctl_ccmd_add_reg;
  output hctl_ccmd_add_reg_0;
  output \cbus[6]_INST_0_i_15_0 ;
  output \cbus[12]_INST_0_i_6_0 ;
  output hlfc_f_t_carry__1_0;
  output hlfc_f_t_carry__1_1;
  output \cbus[12]_INST_0_i_6_1 ;
  output hlfc_f_t_carry__1_2;
  output hlfc_f_t_carry__1_3;
  output \cbus[14]_INST_0_i_24_0 ;
  output hlfc_f_t_carry_0;
  output hlfc_f_t_carry__0_0;
  output hlfc_f_t_carry__0_1;
  output hlfc_f_t_carry__0_2;
  output hlfc_f_t_carry__0_3;
  input \cbus[0]_INST_0_i_3 ;
  input [14:0]p_0_in1_in;
  input [3:0]S;
  input [3:0]\cbus[6]_INST_0_i_13_0 ;
  input [3:0]\cbus[14]_INST_0_i_25_0 ;
  input [3:0]\cbus[12]_INST_0_i_9 ;
  input [0:0]\cbus[14]_INST_0_i_25_1 ;
  input hctl_ccmd_add;
  input \hlfc_f_reg[1] ;
  input \hlfc_f_reg[2] ;
  input \hlfc_f_reg[2]_0 ;
  input \cbus[6]_INST_0_i_1 ;

  wire \<const0> ;
  wire [0:0]CO;
  wire [0:0]O;
  wire [3:0]S;
  wire \cbus[0]_INST_0_i_3 ;
  wire \cbus[12]_INST_0_i_10_n_0 ;
  wire \cbus[12]_INST_0_i_11_n_0 ;
  wire [0:0]\cbus[12]_INST_0_i_12_0 ;
  wire \cbus[12]_INST_0_i_12_n_0 ;
  wire \cbus[12]_INST_0_i_14_n_0 ;
  wire \cbus[12]_INST_0_i_15_n_0 ;
  wire \cbus[12]_INST_0_i_16_n_0 ;
  wire \cbus[12]_INST_0_i_17_n_0 ;
  wire \cbus[12]_INST_0_i_6_0 ;
  wire \cbus[12]_INST_0_i_6_1 ;
  wire \cbus[12]_INST_0_i_6_n_1 ;
  wire \cbus[12]_INST_0_i_6_n_2 ;
  wire \cbus[12]_INST_0_i_6_n_3 ;
  wire \cbus[12]_INST_0_i_8_n_0 ;
  wire \cbus[12]_INST_0_i_8_n_1 ;
  wire \cbus[12]_INST_0_i_8_n_2 ;
  wire \cbus[12]_INST_0_i_8_n_3 ;
  wire [3:0]\cbus[12]_INST_0_i_9 ;
  wire \cbus[14]_INST_0_i_21_n_0 ;
  wire \cbus[14]_INST_0_i_22_n_0 ;
  wire \cbus[14]_INST_0_i_23_n_0 ;
  wire \cbus[14]_INST_0_i_24_0 ;
  wire \cbus[14]_INST_0_i_24_n_0 ;
  wire [3:0]\cbus[14]_INST_0_i_25_0 ;
  wire [0:0]\cbus[14]_INST_0_i_25_1 ;
  wire \cbus[2]_INST_0_i_10_n_0 ;
  wire \cbus[2]_INST_0_i_11_n_0 ;
  wire \cbus[2]_INST_0_i_4_n_0 ;
  wire \cbus[2]_INST_0_i_4_n_1 ;
  wire \cbus[2]_INST_0_i_4_n_2 ;
  wire \cbus[2]_INST_0_i_4_n_3 ;
  wire \cbus[2]_INST_0_i_7_n_0 ;
  wire \cbus[2]_INST_0_i_8_n_0 ;
  wire \cbus[2]_INST_0_i_9_n_0 ;
  wire \cbus[6]_INST_0_i_1 ;
  wire [3:0]\cbus[6]_INST_0_i_13_0 ;
  wire \cbus[6]_INST_0_i_13_n_0 ;
  wire \cbus[6]_INST_0_i_15_0 ;
  wire \cbus[6]_INST_0_i_15_n_0 ;
  wire hctl_ccmd_add;
  wire hctl_ccmd_add_reg;
  wire hctl_ccmd_add_reg_0;
  wire [3:0]\hlfa_f_reg[14] ;
  wire [11:1]hlfc_f0;
  wire \hlfc_f_reg[1] ;
  wire \hlfc_f_reg[2] ;
  wire \hlfc_f_reg[2]_0 ;
  wire hlfc_f_t_carry_0;
  wire hlfc_f_t_carry__0_0;
  wire hlfc_f_t_carry__0_1;
  wire hlfc_f_t_carry__0_2;
  wire hlfc_f_t_carry__0_3;
  wire hlfc_f_t_carry__0_n_0;
  wire hlfc_f_t_carry__0_n_1;
  wire hlfc_f_t_carry__0_n_2;
  wire hlfc_f_t_carry__0_n_3;
  wire hlfc_f_t_carry__0_n_4;
  wire hlfc_f_t_carry__0_n_5;
  wire hlfc_f_t_carry__0_n_6;
  wire hlfc_f_t_carry__0_n_7;
  wire hlfc_f_t_carry__1_0;
  wire hlfc_f_t_carry__1_1;
  wire hlfc_f_t_carry__1_2;
  wire hlfc_f_t_carry__1_3;
  wire hlfc_f_t_carry__1_n_0;
  wire hlfc_f_t_carry__1_n_1;
  wire hlfc_f_t_carry__1_n_2;
  wire hlfc_f_t_carry__1_n_3;
  wire hlfc_f_t_carry__1_n_4;
  wire hlfc_f_t_carry__1_n_5;
  wire hlfc_f_t_carry__1_n_6;
  wire hlfc_f_t_carry__1_n_7;
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
    \cbus[10]_INST_0_i_5 
       (.I0(hlfc_f0[10]),
        .I1(\hlfa_f_reg[14] [3]),
        .I2(hlfc_f_t_carry__1_n_5),
        .O(hlfc_f_t_carry__1_3));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[11]_INST_0_i_5 
       (.I0(hlfc_f0[11]),
        .I1(\hlfa_f_reg[14] [3]),
        .I2(hlfc_f_t_carry__1_n_4),
        .O(hlfc_f_t_carry__1_2));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_10 
       (.I0(hlfc_f_t_carry__1_n_4),
        .O(\cbus[12]_INST_0_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_11 
       (.I0(hlfc_f_t_carry__1_n_5),
        .O(\cbus[12]_INST_0_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_12 
       (.I0(hlfc_f_t_carry__1_n_6),
        .O(\cbus[12]_INST_0_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_14 
       (.I0(hlfc_f_t_carry__1_n_7),
        .O(\cbus[12]_INST_0_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_15 
       (.I0(hlfc_f_t_carry__0_n_4),
        .O(\cbus[12]_INST_0_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_16 
       (.I0(hlfc_f_t_carry__0_n_5),
        .O(\cbus[12]_INST_0_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_17 
       (.I0(hlfc_f_t_carry__0_n_6),
        .O(\cbus[12]_INST_0_i_17_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[12]_INST_0_i_6 
       (.CI(\cbus[12]_INST_0_i_8_n_0 ),
        .CO({CO,\cbus[12]_INST_0_i_6_n_1 ,\cbus[12]_INST_0_i_6_n_2 ,\cbus[12]_INST_0_i_6_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cbus[12]_INST_0_i_12_0 ,hlfc_f0[11:9]}),
        .S({\cbus[14]_INST_0_i_25_1 ,\cbus[12]_INST_0_i_10_n_0 ,\cbus[12]_INST_0_i_11_n_0 ,\cbus[12]_INST_0_i_12_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[12]_INST_0_i_8 
       (.CI(\cbus[2]_INST_0_i_4_n_0 ),
        .CO({\cbus[12]_INST_0_i_8_n_0 ,\cbus[12]_INST_0_i_8_n_1 ,\cbus[12]_INST_0_i_8_n_2 ,\cbus[12]_INST_0_i_8_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(hlfc_f0[8:5]),
        .S({\cbus[12]_INST_0_i_14_n_0 ,\cbus[12]_INST_0_i_15_n_0 ,\cbus[12]_INST_0_i_16_n_0 ,\cbus[12]_INST_0_i_17_n_0 }));
  LUT5 #(
    .INIT(32'h00000004)) 
    \cbus[14]_INST_0_i_10 
       (.I0(\cbus[14]_INST_0_i_21_n_0 ),
        .I1(\cbus[14]_INST_0_i_22_n_0 ),
        .I2(\cbus[14]_INST_0_i_23_n_0 ),
        .I3(O),
        .I4(\cbus[14]_INST_0_i_24_n_0 ),
        .O(\cbus[14]_INST_0_i_24_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[14]_INST_0_i_21 
       (.I0(hlfc_f_t_carry__0_n_4),
        .I1(hlfc_f0[7]),
        .I2(hlfc_f_t_carry__0_n_5),
        .I3(\hlfa_f_reg[14] [3]),
        .I4(hlfc_f0[6]),
        .O(\cbus[14]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h00053305)) 
    \cbus[14]_INST_0_i_22 
       (.I0(hlfc_f_t_carry__0_n_7),
        .I1(hlfc_f0[4]),
        .I2(hlfc_f_t_carry__0_n_6),
        .I3(\hlfa_f_reg[14] [3]),
        .I4(hlfc_f0[5]),
        .O(\cbus[14]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[14]_INST_0_i_23 
       (.I0(hlfc_f_t_carry_n_4),
        .I1(hlfc_f0[3]),
        .I2(hlfc_f_t_carry_n_5),
        .I3(\hlfa_f_reg[14] [3]),
        .I4(hlfc_f0[2]),
        .O(\cbus[14]_INST_0_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[14]_INST_0_i_24 
       (.I0(hlfc_f0[1]),
        .I1(\hlfa_f_reg[14] [3]),
        .I2(hlfc_f_t_carry_n_6),
        .O(\cbus[14]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[14]_INST_0_i_25 
       (.I0(hlfc_f_t_carry__1_n_7),
        .I1(hlfc_f0[8]),
        .I2(hlfc_f_t_carry__1_n_6),
        .I3(\hlfa_f_reg[14] [3]),
        .I4(hlfc_f0[9]),
        .O(\cbus[12]_INST_0_i_6_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[14]_INST_0_i_26 
       (.I0(hlfc_f_t_carry__1_n_5),
        .I1(hlfc_f0[10]),
        .I2(hlfc_f_t_carry__1_n_4),
        .I3(\hlfa_f_reg[14] [3]),
        .I4(hlfc_f0[11]),
        .O(\cbus[12]_INST_0_i_6_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \cbus[1]_INST_0_i_3 
       (.I0(hlfc_f0[1]),
        .I1(\hlfa_f_reg[14] [3]),
        .I2(hlfc_f_t_carry_n_6),
        .I3(hctl_ccmd_add),
        .I4(\hlfc_f_reg[1] ),
        .O(hctl_ccmd_add_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[2]_INST_0_i_10 
       (.I0(hlfc_f_t_carry_n_5),
        .O(\cbus[2]_INST_0_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[2]_INST_0_i_11 
       (.I0(hlfc_f_t_carry_n_6),
        .O(\cbus[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \cbus[2]_INST_0_i_3 
       (.I0(hlfc_f0[2]),
        .I1(\hlfa_f_reg[14] [3]),
        .I2(hlfc_f_t_carry_n_5),
        .I3(hctl_ccmd_add),
        .I4(\hlfc_f_reg[2] ),
        .I5(\hlfc_f_reg[2]_0 ),
        .O(hctl_ccmd_add_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[2]_INST_0_i_4 
       (.CI(\<const0> ),
        .CO({\cbus[2]_INST_0_i_4_n_0 ,\cbus[2]_INST_0_i_4_n_1 ,\cbus[2]_INST_0_i_4_n_2 ,\cbus[2]_INST_0_i_4_n_3 }),
        .CYINIT(\cbus[2]_INST_0_i_7_n_0 ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(hlfc_f0[4:1]),
        .S({\cbus[2]_INST_0_i_8_n_0 ,\cbus[2]_INST_0_i_9_n_0 ,\cbus[2]_INST_0_i_10_n_0 ,\cbus[2]_INST_0_i_11_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[2]_INST_0_i_7 
       (.I0(O),
        .O(\cbus[2]_INST_0_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[2]_INST_0_i_8 
       (.I0(hlfc_f_t_carry__0_n_7),
        .O(\cbus[2]_INST_0_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[2]_INST_0_i_9 
       (.I0(hlfc_f_t_carry_n_4),
        .O(\cbus[2]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[3]_INST_0_i_4 
       (.I0(hlfc_f0[3]),
        .I1(\hlfa_f_reg[14] [3]),
        .I2(hlfc_f_t_carry_n_4),
        .O(hlfc_f_t_carry_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[4]_INST_0_i_4 
       (.I0(hlfc_f0[4]),
        .I1(\hlfa_f_reg[14] [3]),
        .I2(hlfc_f_t_carry__0_n_7),
        .O(hlfc_f_t_carry__0_3));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[5]_INST_0_i_5 
       (.I0(hlfc_f0[5]),
        .I1(\hlfa_f_reg[14] [3]),
        .I2(hlfc_f_t_carry__0_n_6),
        .O(hlfc_f_t_carry__0_2));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \cbus[6]_INST_0_i_13 
       (.I0(hlfc_f0[5]),
        .I1(\hlfa_f_reg[14] [3]),
        .I2(hlfc_f_t_carry__0_n_6),
        .I3(hlfc_f0[4]),
        .I4(hlfc_f_t_carry__0_n_7),
        .I5(\cbus[14]_INST_0_i_21_n_0 ),
        .O(\cbus[6]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \cbus[6]_INST_0_i_15 
       (.I0(hlfc_f0[11]),
        .I1(\hlfa_f_reg[14] [3]),
        .I2(hlfc_f_t_carry__1_n_4),
        .I3(hlfc_f0[10]),
        .I4(hlfc_f_t_carry__1_n_5),
        .I5(\cbus[12]_INST_0_i_6_0 ),
        .O(\cbus[6]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \cbus[6]_INST_0_i_4 
       (.I0(\cbus[14]_INST_0_i_24_n_0 ),
        .I1(O),
        .I2(\cbus[14]_INST_0_i_23_n_0 ),
        .I3(\cbus[6]_INST_0_i_13_n_0 ),
        .I4(\cbus[6]_INST_0_i_1 ),
        .I5(\cbus[6]_INST_0_i_15_n_0 ),
        .O(\cbus[6]_INST_0_i_15_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[6]_INST_0_i_9 
       (.I0(hlfc_f0[6]),
        .I1(\hlfa_f_reg[14] [3]),
        .I2(hlfc_f_t_carry__0_n_5),
        .O(hlfc_f_t_carry__0_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[7]_INST_0_i_4 
       (.I0(hlfc_f0[7]),
        .I1(\hlfa_f_reg[14] [3]),
        .I2(hlfc_f_t_carry__0_n_4),
        .O(hlfc_f_t_carry__0_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[8]_INST_0_i_5 
       (.I0(hlfc_f0[8]),
        .I1(\hlfa_f_reg[14] [3]),
        .I2(hlfc_f_t_carry__1_n_7),
        .O(hlfc_f_t_carry__1_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[9]_INST_0_i_5 
       (.I0(hlfc_f0[9]),
        .I1(\hlfa_f_reg[14] [3]),
        .I2(hlfc_f_t_carry__1_n_6),
        .O(hlfc_f_t_carry__1_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfc_f_t_carry
       (.CI(\<const0> ),
        .CO({hlfc_f_t_carry_n_0,hlfc_f_t_carry_n_1,hlfc_f_t_carry_n_2,hlfc_f_t_carry_n_3}),
        .CYINIT(\cbus[0]_INST_0_i_3 ),
        .DI(p_0_in1_in[3:0]),
        .O({hlfc_f_t_carry_n_4,hlfc_f_t_carry_n_5,hlfc_f_t_carry_n_6,O}),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfc_f_t_carry__0
       (.CI(hlfc_f_t_carry_n_0),
        .CO({hlfc_f_t_carry__0_n_0,hlfc_f_t_carry__0_n_1,hlfc_f_t_carry__0_n_2,hlfc_f_t_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(p_0_in1_in[7:4]),
        .O({hlfc_f_t_carry__0_n_4,hlfc_f_t_carry__0_n_5,hlfc_f_t_carry__0_n_6,hlfc_f_t_carry__0_n_7}),
        .S(\cbus[6]_INST_0_i_13_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfc_f_t_carry__1
       (.CI(hlfc_f_t_carry__0_n_0),
        .CO({hlfc_f_t_carry__1_n_0,hlfc_f_t_carry__1_n_1,hlfc_f_t_carry__1_n_2,hlfc_f_t_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(p_0_in1_in[11:8]),
        .O({hlfc_f_t_carry__1_n_4,hlfc_f_t_carry__1_n_5,hlfc_f_t_carry__1_n_6,hlfc_f_t_carry__1_n_7}),
        .S(\cbus[14]_INST_0_i_25_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfc_f_t_carry__2
       (.CI(hlfc_f_t_carry__1_n_0),
        .CO({hlfc_f_t_carry__2_n_1,hlfc_f_t_carry__2_n_2,hlfc_f_t_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,p_0_in1_in[14:12]}),
        .O(\hlfa_f_reg[14] ),
        .S(\cbus[12]_INST_0_i_9 ));
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
    \cbus[14]_INST_0_i_3 ,
    \cbus[14]_INST_0_i_3_0 ,
    \cbus[14]_INST_0_i_3_1 ,
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
  input \cbus[14]_INST_0_i_3 ;
  input \cbus[14]_INST_0_i_3_0 ;
  input \cbus[14]_INST_0_i_3_1 ;
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
  wire \cbus[14]_INST_0_i_3 ;
  wire \cbus[14]_INST_0_i_3_0 ;
  wire \cbus[14]_INST_0_i_3_1 ;
  wire clk;
  wire [23:8]den;
  wire [0:0]\den_reg[21]_0 ;
  wire [10:0]dso;
  wire [0:0]\dso_reg[10]_0 ;
  wire [10:0]\dso_reg[10]_1 ;
  wire fdiv_n_2;
  wire fdiv_n_3;
  wire hctl_ccmd_div_reg;
  wire [0:0]\hquo_reg[0]_0 ;
  wire [0:0]\hquo_reg[7]_0 ;
  wire [0:0]p_1_in3_in;
  wire [0:0]quo_0;
  wire [12:0]rem0;
  wire [0:0]rem1_carry__2_i_1;
  wire [0:0]rem2_carry__2_i_1;
  wire rst_n;

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
        .\cbus[14]_INST_0_i_13_0 (Q),
        .\cbus[14]_INST_0_i_3 (\cbus[14]_INST_0_i_3 ),
        .\cbus[14]_INST_0_i_3_0 (\cbus[14]_INST_0_i_3_0 ),
        .\cbus[14]_INST_0_i_3_1 (\cbus[14]_INST_0_i_3_1 ),
        .hctl_ccmd_div_reg(hctl_ccmd_div_reg),
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
    \ccmd_f_reg[1]_0 ,
    hlfa_r_0,
    O,
    \hlfa_e_reg[4]_0 ,
    hlfc_e,
    D,
    \hlfa_i_reg[15]_0 ,
    \ccmd_f_reg[3]_0 ,
    hctl_ccmd_sub_reg,
    \hlfa_i_reg[14]_0 ,
    hctl_ccmd_div_reg,
    \hlfa_i_reg[9]_0 ,
    \hlfa_i_reg[15]_1 ,
    \ccmd_f_reg[4]_0 ,
    \hlfa_i_reg[14]_1 ,
    hctl_ccmd_add_reg,
    hctl_ccmd_add_reg_0,
    \hlfa_f_reg[0]_0 ,
    \hlfa_i_reg[1]_0 ,
    \ccmd_f_reg[3]_1 ,
    \ccmd_f_reg[3]_2 ,
    \ccmd_f_reg[3]_3 ,
    \ccmd_f_reg[3]_4 ,
    \ccmd_f_reg[3]_5 ,
    \hlfa_f_reg[3]_0 ,
    \hlfa_f_reg[8]_0 ,
    \hlfa_e_reg[0]_0 ,
    \hlfa_f_reg[9]_0 ,
    \ccmd_f_reg[3]_6 ,
    \hlfa_e_reg[3]_1 ,
    hctl_ccmd_reg_reg,
    hctl_ccmd_reg_reg_0,
    hctl_ccmd_add_reg_1,
    \hlfa_f_reg[12]_0 ,
    \hlfa_i_reg[11]_0 ,
    \hlfa_i_reg[10]_0 ,
    \hlfa_i_reg[7]_0 ,
    \hlfa_i_reg[6]_0 ,
    \hlfa_f_reg[5]_0 ,
    \hlfa_f_reg[4]_0 ,
    \hlfa_i_reg[3]_0 ,
    hctl_ccmd_add_reg_2,
    hctl_ccmd_add_reg_3,
    \ccmd_f_reg[1]_1 ,
    E,
    \hlfa_e_reg[3]_2 ,
    \hlfa_e_reg[4]_1 ,
    rst_n_0,
    \stat_reg[2] ,
    \bbus[12] ,
    \stat_reg[0] ,
    hctl_ccmd_int_reg,
    hctl_ccmd_int_reg_0,
    hlfa_e_dif0_carry__0_0,
    \hlfa_e_reg[4]_2 ,
    hctl_ccmd_mul_reg,
    \ccmd_f_reg[2]_0 ,
    \hlfa_e_reg[5]_0 ,
    \ccmd_f_reg[1]_2 ,
    \hlfa_i_reg[9]_1 ,
    hlfc_f_t_carry__2,
    p_0_in1_in,
    hlfc_f_t_carry__2_0,
    hfpu_dsp_a,
    S,
    \hlfb_f_reg[7] ,
    \hlfb_f_reg[11] ,
    \hlfa_i_reg[15]_2 ,
    \hlfa_e_reg[2]_0 ,
    \hlfa_e_reg[0]_1 ,
    .abus_12_sp_1(abus_12_sn_1),
    \hlfc_f_reg[12] ,
    CO,
    hctl_ccmd_add,
    \hlfc_i_reg[22] ,
    \hlfc_i_reg[22]_0 ,
    \hlfc_i_reg[22]_1 ,
    \hlfc_i_reg[22]_2 ,
    hctl_ccmd_mul,
    \hlfc_i_reg[25] ,
    Q,
    hctl_ccmd_sub,
    \hlfc_i_reg[24] ,
    \hlfc_i_reg[25]_0 ,
    \hlfc_i_reg[25]_1 ,
    \hlfc_i_reg[25]_2 ,
    \hlfb_e_reg[5]_i_9_0 ,
    hlfb_r,
    \hlfc_f_reg[14] ,
    \hlfc_f_reg[14]_0 ,
    \cbus[1]_INST_0_i_3 ,
    hctl_ccmd_reg,
    \hlfc_f_reg[12]_0 ,
    \hlfc_i_reg[23] ,
    \hlfc_i_reg[23]_0 ,
    hfpu_dsp_c,
    \hlfb_f_reg[0] ,
    hlfc_f_t_carry__2_1,
    \hlfb_f_reg[1] ,
    \hlfb_f_reg[1]_0 ,
    rst_n,
    \hlfb_f_reg[3] ,
    \hlfb_f_reg[3]_0 ,
    \hlfb_f_reg[4] ,
    \hlfb_f_reg[4]_0 ,
    hctl_load_b,
    \hlfb_e_reg[2] ,
    bbus,
    \hlfb_e_reg[2]_0 ,
    \hlfb_e_reg[2]_1 ,
    \hlfb_f_reg[0]_0 ,
    hctl_ccmd_int,
    \hlfa_f_reg[13]_0 ,
    abus,
    \hlfa_f_reg[15]_0 ,
    \hlfa_f_reg[12]_1 ,
    \hlfa_f_reg[12]_2 ,
    \hlfa_f_reg[8]_1 ,
    \hlfa_f_reg[8]_2 ,
    \hlfa_f_reg[9]_1 ,
    \hlfa_f_reg[10]_0 ,
    \hlfa_f_reg[11]_0 ,
    \hlfa_f_reg[5]_1 ,
    \hlfc_i_reg[24]_0 ,
    \hlfc_i_reg[25]_3 ,
    hctl_ccmd_div,
    \hlfc_i_reg[25]_4 ,
    \cbus[15]_INST_0_i_4_0 ,
    \cbus[15]_INST_0_i_4_1 ,
    clk,
    SR,
    \ccmd_f_reg[4]_1 ,
    ccmd);
  output [0:0]\hlfa_e_reg[3]_0 ;
  output [0:0]\ccmd_f_reg[1]_0 ;
  output [22:0]hlfa_r_0;
  output [3:0]O;
  output [0:0]\hlfa_e_reg[4]_0 ;
  output [4:0]hlfc_e;
  output [2:0]D;
  output \hlfa_i_reg[15]_0 ;
  output \ccmd_f_reg[3]_0 ;
  output hctl_ccmd_sub_reg;
  output \hlfa_i_reg[14]_0 ;
  output hctl_ccmd_div_reg;
  output \hlfa_i_reg[9]_0 ;
  output \hlfa_i_reg[15]_1 ;
  output [0:0]\ccmd_f_reg[4]_0 ;
  output \hlfa_i_reg[14]_1 ;
  output hctl_ccmd_add_reg;
  output hctl_ccmd_add_reg_0;
  output \hlfa_f_reg[0]_0 ;
  output \hlfa_i_reg[1]_0 ;
  output \ccmd_f_reg[3]_1 ;
  output \ccmd_f_reg[3]_2 ;
  output \ccmd_f_reg[3]_3 ;
  output \ccmd_f_reg[3]_4 ;
  output \ccmd_f_reg[3]_5 ;
  output \hlfa_f_reg[3]_0 ;
  output \hlfa_f_reg[8]_0 ;
  output \hlfa_e_reg[0]_0 ;
  output \hlfa_f_reg[9]_0 ;
  output \ccmd_f_reg[3]_6 ;
  output \hlfa_e_reg[3]_1 ;
  output hctl_ccmd_reg_reg;
  output hctl_ccmd_reg_reg_0;
  output hctl_ccmd_add_reg_1;
  output \hlfa_f_reg[12]_0 ;
  output \hlfa_i_reg[11]_0 ;
  output \hlfa_i_reg[10]_0 ;
  output \hlfa_i_reg[7]_0 ;
  output \hlfa_i_reg[6]_0 ;
  output \hlfa_f_reg[5]_0 ;
  output \hlfa_f_reg[4]_0 ;
  output \hlfa_i_reg[3]_0 ;
  output hctl_ccmd_add_reg_2;
  output hctl_ccmd_add_reg_3;
  output \ccmd_f_reg[1]_1 ;
  output [0:0]E;
  output \hlfa_e_reg[3]_2 ;
  output \hlfa_e_reg[4]_1 ;
  output [2:0]rst_n_0;
  output \stat_reg[2] ;
  output [1:0]\bbus[12] ;
  output \stat_reg[0] ;
  output hctl_ccmd_int_reg;
  output hctl_ccmd_int_reg_0;
  output hlfa_e_dif0_carry__0_0;
  output \hlfa_e_reg[4]_2 ;
  output hctl_ccmd_mul_reg;
  output \ccmd_f_reg[2]_0 ;
  output \hlfa_e_reg[5]_0 ;
  output \ccmd_f_reg[1]_2 ;
  output \hlfa_i_reg[9]_1 ;
  output hlfc_f_t_carry__2;
  output [14:0]p_0_in1_in;
  output [0:0]hlfc_f_t_carry__2_0;
  output [10:0]hfpu_dsp_a;
  output [3:0]S;
  output [3:0]\hlfb_f_reg[7] ;
  output [3:0]\hlfb_f_reg[11] ;
  output [1:0]\hlfa_i_reg[15]_2 ;
  output \hlfa_e_reg[2]_0 ;
  output [0:0]\hlfa_e_reg[0]_1 ;
  input [0:0]\hlfc_f_reg[12] ;
  input [0:0]CO;
  input hctl_ccmd_add;
  input \hlfc_i_reg[22] ;
  input \hlfc_i_reg[22]_0 ;
  input \hlfc_i_reg[22]_1 ;
  input \hlfc_i_reg[22]_2 ;
  input hctl_ccmd_mul;
  input \hlfc_i_reg[25] ;
  input [0:0]Q;
  input hctl_ccmd_sub;
  input \hlfc_i_reg[24] ;
  input \hlfc_i_reg[25]_0 ;
  input \hlfc_i_reg[25]_1 ;
  input \hlfc_i_reg[25]_2 ;
  input [5:0]\hlfb_e_reg[5]_i_9_0 ;
  input [0:0]hlfb_r;
  input [3:0]\hlfc_f_reg[14] ;
  input \hlfc_f_reg[14]_0 ;
  input \cbus[1]_INST_0_i_3 ;
  input hctl_ccmd_reg;
  input \hlfc_f_reg[12]_0 ;
  input \hlfc_i_reg[23] ;
  input \hlfc_i_reg[23]_0 ;
  input [0:0]hfpu_dsp_c;
  input \hlfb_f_reg[0] ;
  input [12:0]hlfc_f_t_carry__2_1;
  input \hlfb_f_reg[1] ;
  input \hlfb_f_reg[1]_0 ;
  input rst_n;
  input \hlfb_f_reg[3] ;
  input \hlfb_f_reg[3]_0 ;
  input \hlfb_f_reg[4] ;
  input \hlfb_f_reg[4]_0 ;
  input hctl_load_b;
  input \hlfb_e_reg[2] ;
  input [1:0]bbus;
  input \hlfb_e_reg[2]_0 ;
  input \hlfb_e_reg[2]_1 ;
  input [2:0]\hlfb_f_reg[0]_0 ;
  input hctl_ccmd_int;
  input \hlfa_f_reg[13]_0 ;
  input [15:0]abus;
  input \hlfa_f_reg[15]_0 ;
  input \hlfa_f_reg[12]_1 ;
  input \hlfa_f_reg[12]_2 ;
  input \hlfa_f_reg[8]_1 ;
  input \hlfa_f_reg[8]_2 ;
  input \hlfa_f_reg[9]_1 ;
  input \hlfa_f_reg[10]_0 ;
  input \hlfa_f_reg[11]_0 ;
  input \hlfa_f_reg[5]_1 ;
  input \hlfc_i_reg[24]_0 ;
  input \hlfc_i_reg[25]_3 ;
  input hctl_ccmd_div;
  input \hlfc_i_reg[25]_4 ;
  input \cbus[15]_INST_0_i_4_0 ;
  input \cbus[15]_INST_0_i_4_1 ;
  input clk;
  input [0:0]SR;
  input [0:0]\ccmd_f_reg[4]_1 ;
  input [4:0]ccmd;
  output abus_12_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]CO;
  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [0:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [15:0]abus;
  wire abus_12_sn_1;
  wire [1:0]bbus;
  wire [1:0]\bbus[12] ;
  wire \cbus[10]_INST_0_i_10_n_0 ;
  wire \cbus[10]_INST_0_i_9_n_0 ;
  wire \cbus[11]_INST_0_i_10_n_0 ;
  wire \cbus[11]_INST_0_i_11_n_0 ;
  wire \cbus[11]_INST_0_i_12_n_0 ;
  wire \cbus[11]_INST_0_i_13_n_0 ;
  wire \cbus[11]_INST_0_i_14_n_0 ;
  wire \cbus[11]_INST_0_i_15_n_0 ;
  wire \cbus[12]_INST_0_i_18_n_0 ;
  wire \cbus[13]_INST_0_i_10_n_0 ;
  wire \cbus[13]_INST_0_i_8_n_0 ;
  wire \cbus[13]_INST_0_i_9_n_0 ;
  wire \cbus[14]_INST_0_i_11_n_0 ;
  wire \cbus[14]_INST_0_i_12_n_0 ;
  wire \cbus[14]_INST_0_i_27_n_0 ;
  wire \cbus[14]_INST_0_i_28_n_0 ;
  wire \cbus[14]_INST_0_i_29_n_0 ;
  wire \cbus[14]_INST_0_i_31_n_0 ;
  wire \cbus[14]_INST_0_i_32_n_0 ;
  wire \cbus[14]_INST_0_i_53_n_0 ;
  wire \cbus[14]_INST_0_i_54_n_0 ;
  wire \cbus[14]_INST_0_i_54_n_1 ;
  wire \cbus[14]_INST_0_i_54_n_2 ;
  wire \cbus[14]_INST_0_i_54_n_3 ;
  wire \cbus[14]_INST_0_i_55_n_0 ;
  wire \cbus[14]_INST_0_i_56_n_0 ;
  wire \cbus[14]_INST_0_i_57_n_0 ;
  wire \cbus[14]_INST_0_i_58_n_0 ;
  wire \cbus[14]_INST_0_i_59_n_0 ;
  wire \cbus[15]_INST_0_i_10_n_0 ;
  wire \cbus[15]_INST_0_i_12_n_0 ;
  wire \cbus[15]_INST_0_i_13_n_0 ;
  wire \cbus[15]_INST_0_i_14_n_0 ;
  wire \cbus[15]_INST_0_i_15_n_0 ;
  wire \cbus[15]_INST_0_i_16_n_0 ;
  wire \cbus[15]_INST_0_i_17_n_0 ;
  wire \cbus[15]_INST_0_i_4_0 ;
  wire \cbus[15]_INST_0_i_4_1 ;
  wire \cbus[15]_INST_0_i_7_n_2 ;
  wire \cbus[15]_INST_0_i_7_n_3 ;
  wire \cbus[15]_INST_0_i_8_n_0 ;
  wire \cbus[15]_INST_0_i_9_n_0 ;
  wire \cbus[1]_INST_0_i_3 ;
  wire \cbus[1]_INST_0_i_5_n_0 ;
  wire \cbus[1]_INST_0_i_7_n_0 ;
  wire \cbus[2]_INST_0_i_12_n_0 ;
  wire \cbus[4]_INST_0_i_8_n_0 ;
  wire \cbus[4]_INST_0_i_9_n_0 ;
  wire \cbus[5]_INST_0_i_11_n_0 ;
  wire \cbus[5]_INST_0_i_9_n_0 ;
  wire \cbus[6]_INST_0_i_18_n_0 ;
  wire \cbus[6]_INST_0_i_19_n_0 ;
  wire \cbus[6]_INST_0_i_21_n_0 ;
  wire \cbus[6]_INST_0_i_22_n_0 ;
  wire \cbus[6]_INST_0_i_23_n_0 ;
  wire \cbus[6]_INST_0_i_24_n_0 ;
  wire \cbus[7]_INST_0_i_10_n_0 ;
  wire \cbus[7]_INST_0_i_8_n_0 ;
  wire \cbus[7]_INST_0_i_9_n_0 ;
  wire \cbus[8]_INST_0_i_10_n_0 ;
  wire \cbus[8]_INST_0_i_8_n_0 ;
  wire \cbus[8]_INST_0_i_9_n_0 ;
  wire \cbus[9]_INST_0_i_8_n_0 ;
  wire [4:0]ccmd;
  wire [3:0]ccmd_f;
  wire [0:0]\ccmd_f_reg[1]_0 ;
  wire \ccmd_f_reg[1]_1 ;
  wire \ccmd_f_reg[1]_2 ;
  wire \ccmd_f_reg[2]_0 ;
  wire \ccmd_f_reg[3]_0 ;
  wire \ccmd_f_reg[3]_1 ;
  wire \ccmd_f_reg[3]_2 ;
  wire \ccmd_f_reg[3]_3 ;
  wire \ccmd_f_reg[3]_4 ;
  wire \ccmd_f_reg[3]_5 ;
  wire \ccmd_f_reg[3]_6 ;
  wire [0:0]\ccmd_f_reg[4]_0 ;
  wire [0:0]\ccmd_f_reg[4]_1 ;
  wire clk;
  wire [15:13]\hadd/hlfc_f0 ;
  wire hctl_ccmd_add;
  wire hctl_ccmd_add_reg;
  wire hctl_ccmd_add_reg_0;
  wire hctl_ccmd_add_reg_1;
  wire hctl_ccmd_add_reg_2;
  wire hctl_ccmd_add_reg_3;
  wire hctl_ccmd_div;
  wire hctl_ccmd_div_reg;
  wire hctl_ccmd_int;
  wire hctl_ccmd_int_reg;
  wire hctl_ccmd_int_reg_0;
  wire hctl_ccmd_mul;
  wire hctl_ccmd_mul_reg;
  wire hctl_ccmd_reg;
  wire hctl_ccmd_reg_reg;
  wire hctl_ccmd_reg_reg_0;
  wire hctl_ccmd_sub;
  wire hctl_ccmd_sub_reg;
  wire hctl_load_b;
  wire [10:0]hfpu_dsp_a;
  wire [0:0]hfpu_dsp_c;
  wire \hlfa_e[0]_i_1_n_0 ;
  wire \hlfa_e[0]_i_2_n_0 ;
  wire \hlfa_e[0]_i_3_n_0 ;
  wire \hlfa_e[1]_i_1_n_0 ;
  wire \hlfa_e[1]_i_2_n_0 ;
  wire \hlfa_e[1]_i_3_n_0 ;
  wire \hlfa_e[1]_i_4_n_0 ;
  wire \hlfa_e[1]_i_5_n_0 ;
  wire \hlfa_e[2]_i_1_n_0 ;
  wire \hlfa_e[2]_i_2_n_0 ;
  wire \hlfa_e[2]_i_3_n_0 ;
  wire \hlfa_e[2]_i_4_n_0 ;
  wire \hlfa_e[2]_i_5_n_0 ;
  wire \hlfa_e[2]_i_6_n_0 ;
  wire \hlfa_e[2]_i_7_n_0 ;
  wire \hlfa_e[3]_i_10_n_0 ;
  wire \hlfa_e[3]_i_11_n_0 ;
  wire \hlfa_e[3]_i_12_n_0 ;
  wire \hlfa_e[3]_i_1_n_0 ;
  wire \hlfa_e[3]_i_2_n_0 ;
  wire \hlfa_e[3]_i_3_n_0 ;
  wire \hlfa_e[3]_i_4_n_0 ;
  wire \hlfa_e[3]_i_5_n_0 ;
  wire \hlfa_e[3]_i_6_n_0 ;
  wire \hlfa_e[3]_i_7_n_0 ;
  wire \hlfa_e[3]_i_8_n_0 ;
  wire \hlfa_e[3]_i_9_n_0 ;
  wire \hlfa_e[4]_i_10_n_0 ;
  wire \hlfa_e[4]_i_11_n_0 ;
  wire \hlfa_e[4]_i_12_n_0 ;
  wire \hlfa_e[4]_i_13_n_0 ;
  wire \hlfa_e[4]_i_14_n_0 ;
  wire \hlfa_e[4]_i_15_n_0 ;
  wire \hlfa_e[4]_i_16_n_0 ;
  wire \hlfa_e[4]_i_1_n_0 ;
  wire \hlfa_e[4]_i_2_n_0 ;
  wire \hlfa_e[4]_i_3_n_0 ;
  wire \hlfa_e[4]_i_4_n_0 ;
  wire \hlfa_e[4]_i_5_n_0 ;
  wire \hlfa_e[4]_i_6_n_0 ;
  wire \hlfa_e[4]_i_7_n_0 ;
  wire \hlfa_e[4]_i_8_n_0 ;
  wire \hlfa_e[4]_i_9_n_0 ;
  wire \hlfa_e[5]_i_10_n_0 ;
  wire \hlfa_e[5]_i_11_n_0 ;
  wire \hlfa_e[5]_i_12_n_0 ;
  wire \hlfa_e[5]_i_13_n_0 ;
  wire \hlfa_e[5]_i_14_n_0 ;
  wire \hlfa_e[5]_i_15_n_0 ;
  wire \hlfa_e[5]_i_16_n_0 ;
  wire \hlfa_e[5]_i_17_n_0 ;
  wire \hlfa_e[5]_i_1_n_0 ;
  wire \hlfa_e[5]_i_2_n_0 ;
  wire \hlfa_e[5]_i_3_n_0 ;
  wire \hlfa_e[5]_i_4_n_0 ;
  wire \hlfa_e[5]_i_5_n_0 ;
  wire \hlfa_e[5]_i_6_n_0 ;
  wire \hlfa_e[5]_i_7_n_0 ;
  wire \hlfa_e[5]_i_8_n_0 ;
  wire \hlfa_e[5]_i_9_n_0 ;
  wire hlfa_e_dif0_carry__0_0;
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
  wire hlfa_e_difl0_carry__0_n_7;
  wire hlfa_e_difl0_carry_i_1_n_0;
  wire hlfa_e_difl0_carry_i_2_n_0;
  wire hlfa_e_difl0_carry_i_3_n_0;
  wire hlfa_e_difl0_carry_i_4_n_0;
  wire hlfa_e_difl0_carry_n_0;
  wire hlfa_e_difl0_carry_n_1;
  wire hlfa_e_difl0_carry_n_2;
  wire hlfa_e_difl0_carry_n_3;
  wire hlfa_e_difl0_carry_n_4;
  wire hlfa_e_difl0_carry_n_7;
  wire \hlfa_e_reg[0]_0 ;
  wire [0:0]\hlfa_e_reg[0]_1 ;
  wire \hlfa_e_reg[2]_0 ;
  wire [0:0]\hlfa_e_reg[3]_0 ;
  wire \hlfa_e_reg[3]_1 ;
  wire \hlfa_e_reg[3]_2 ;
  wire [0:0]\hlfa_e_reg[4]_0 ;
  wire \hlfa_e_reg[4]_1 ;
  wire \hlfa_e_reg[4]_2 ;
  wire \hlfa_e_reg[5]_0 ;
  wire \hlfa_f[0]_i_2_n_0 ;
  wire \hlfa_f[0]_i_3_n_0 ;
  wire \hlfa_f[0]_i_4_n_0 ;
  wire \hlfa_f[0]_i_5_n_0 ;
  wire \hlfa_f[0]_i_6_n_0 ;
  wire \hlfa_f[0]_i_7_n_0 ;
  wire \hlfa_f[0]_i_8_n_0 ;
  wire \hlfa_f[0]_i_9_n_0 ;
  wire \hlfa_f[10]_i_2_n_0 ;
  wire \hlfa_f[10]_i_3_n_0 ;
  wire \hlfa_f[10]_i_5_n_0 ;
  wire \hlfa_f[11]_i_2_n_0 ;
  wire \hlfa_f[11]_i_4_n_0 ;
  wire \hlfa_f[11]_i_5_n_0 ;
  wire \hlfa_f[11]_i_7_n_0 ;
  wire \hlfa_f[12]_i_2_n_0 ;
  wire \hlfa_f[12]_i_3_n_0 ;
  wire \hlfa_f[12]_i_4_n_0 ;
  wire \hlfa_f[12]_i_5_n_0 ;
  wire \hlfa_f[12]_i_7_n_0 ;
  wire \hlfa_f[12]_i_8_n_0 ;
  wire \hlfa_f[13]_i_2_n_0 ;
  wire \hlfa_f[13]_i_3_n_0 ;
  wire \hlfa_f[13]_i_4_n_0 ;
  wire \hlfa_f[13]_i_5_n_0 ;
  wire \hlfa_f[14]_i_2_n_0 ;
  wire \hlfa_f[14]_i_3_n_0 ;
  wire \hlfa_f[14]_i_4_n_0 ;
  wire \hlfa_f[14]_i_5_n_0 ;
  wire \hlfa_f[14]_i_7_n_0 ;
  wire \hlfa_f[14]_i_8_n_0 ;
  wire \hlfa_f[15]_i_1_n_0 ;
  wire \hlfa_f[15]_i_4_n_0 ;
  wire \hlfa_f[15]_i_6_n_0 ;
  wire \hlfa_f[15]_i_7_n_0 ;
  wire \hlfa_f[15]_i_8_n_0 ;
  wire \hlfa_f[15]_i_9_n_0 ;
  wire \hlfa_f[1]_i_2_n_0 ;
  wire \hlfa_f[1]_i_3_n_0 ;
  wire \hlfa_f[2]_i_2_n_0 ;
  wire \hlfa_f[2]_i_3_n_0 ;
  wire \hlfa_f[2]_i_4_n_0 ;
  wire \hlfa_f[2]_i_5_n_0 ;
  wire \hlfa_f[3]_i_2_n_0 ;
  wire \hlfa_f[3]_i_3_n_0 ;
  wire \hlfa_f[3]_i_4_n_0 ;
  wire \hlfa_f[3]_i_5_n_0 ;
  wire \hlfa_f[3]_i_6_n_0 ;
  wire \hlfa_f[3]_i_7_n_0 ;
  wire \hlfa_f[4]_i_2_n_0 ;
  wire \hlfa_f[4]_i_3_n_0 ;
  wire \hlfa_f[4]_i_4_n_0 ;
  wire \hlfa_f[4]_i_5_n_0 ;
  wire \hlfa_f[4]_i_6_n_0 ;
  wire \hlfa_f[5]_i_2_n_0 ;
  wire \hlfa_f[5]_i_3_n_0 ;
  wire \hlfa_f[5]_i_4_n_0 ;
  wire \hlfa_f[5]_i_5_n_0 ;
  wire \hlfa_f[5]_i_7_n_0 ;
  wire \hlfa_f[5]_i_8_n_0 ;
  wire \hlfa_f[6]_i_2_n_0 ;
  wire \hlfa_f[6]_i_3_n_0 ;
  wire \hlfa_f[6]_i_4_n_0 ;
  wire \hlfa_f[6]_i_5_n_0 ;
  wire \hlfa_f[6]_i_6_n_0 ;
  wire \hlfa_f[7]_i_2_n_0 ;
  wire \hlfa_f[7]_i_3_n_0 ;
  wire \hlfa_f[7]_i_4_n_0 ;
  wire \hlfa_f[7]_i_5_n_0 ;
  wire \hlfa_f[7]_i_6_n_0 ;
  wire \hlfa_f[7]_i_7_n_0 ;
  wire \hlfa_f[8]_i_2_n_0 ;
  wire \hlfa_f[8]_i_3_n_0 ;
  wire \hlfa_f[8]_i_5_n_0 ;
  wire \hlfa_f[9]_i_2_n_0 ;
  wire \hlfa_f[9]_i_3_n_0 ;
  wire \hlfa_f[9]_i_5_n_0 ;
  wire \hlfa_f_reg[0]_0 ;
  wire \hlfa_f_reg[10]_0 ;
  wire \hlfa_f_reg[11]_0 ;
  wire \hlfa_f_reg[12]_0 ;
  wire \hlfa_f_reg[12]_1 ;
  wire \hlfa_f_reg[12]_2 ;
  wire \hlfa_f_reg[13]_0 ;
  wire \hlfa_f_reg[15]_0 ;
  wire \hlfa_f_reg[3]_0 ;
  wire \hlfa_f_reg[4]_0 ;
  wire \hlfa_f_reg[5]_0 ;
  wire \hlfa_f_reg[5]_1 ;
  wire \hlfa_f_reg[8]_0 ;
  wire \hlfa_f_reg[8]_1 ;
  wire \hlfa_f_reg[8]_2 ;
  wire \hlfa_f_reg[9]_0 ;
  wire \hlfa_f_reg[9]_1 ;
  wire \hlfa_i_reg[10]_0 ;
  wire \hlfa_i_reg[11]_0 ;
  wire \hlfa_i_reg[14]_0 ;
  wire \hlfa_i_reg[14]_1 ;
  wire \hlfa_i_reg[15]_0 ;
  wire \hlfa_i_reg[15]_1 ;
  wire [1:0]\hlfa_i_reg[15]_2 ;
  wire \hlfa_i_reg[1]_0 ;
  wire \hlfa_i_reg[3]_0 ;
  wire \hlfa_i_reg[6]_0 ;
  wire \hlfa_i_reg[7]_0 ;
  wire \hlfa_i_reg[9]_0 ;
  wire \hlfa_i_reg[9]_1 ;
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
  wire \hlfb_e[2]_i_3_n_0 ;
  wire \hlfb_e[5]_i_10_n_0 ;
  wire \hlfb_e[5]_i_11_n_0 ;
  wire \hlfb_e[5]_i_12_n_0 ;
  wire \hlfb_e[5]_i_13_n_0 ;
  wire \hlfb_e[5]_i_19_n_0 ;
  wire \hlfb_e[5]_i_20_n_0 ;
  wire \hlfb_e_reg[2] ;
  wire \hlfb_e_reg[2]_0 ;
  wire \hlfb_e_reg[2]_1 ;
  wire \hlfb_e_reg[5]_i_5_n_0 ;
  wire \hlfb_e_reg[5]_i_5_n_1 ;
  wire \hlfb_e_reg[5]_i_5_n_2 ;
  wire \hlfb_e_reg[5]_i_5_n_3 ;
  wire [5:0]\hlfb_e_reg[5]_i_9_0 ;
  wire \hlfb_e_reg[5]_i_9_n_3 ;
  wire \hlfb_e_reg[5]_i_9_n_6 ;
  wire \hlfb_f[1]_i_2_n_0 ;
  wire \hlfb_f_reg[0] ;
  wire [2:0]\hlfb_f_reg[0]_0 ;
  wire [3:0]\hlfb_f_reg[11] ;
  wire \hlfb_f_reg[1] ;
  wire \hlfb_f_reg[1]_0 ;
  wire \hlfb_f_reg[3] ;
  wire \hlfb_f_reg[3]_0 ;
  wire \hlfb_f_reg[4] ;
  wire \hlfb_f_reg[4]_0 ;
  wire [3:0]\hlfb_f_reg[7] ;
  wire [0:0]hlfb_r;
  wire [4:0]hlfc_e;
  wire \hlfc_e[5]_i_5_n_0 ;
  wire \hlfc_e[5]_i_6_n_0 ;
  wire \hlfc_e_reg[5]_i_4_n_3 ;
  wire [0:0]\hlfc_f_reg[12] ;
  wire \hlfc_f_reg[12]_0 ;
  wire [3:0]\hlfc_f_reg[14] ;
  wire \hlfc_f_reg[14]_0 ;
  wire hlfc_f_t_carry__2;
  wire [0:0]hlfc_f_t_carry__2_0;
  wire [12:0]hlfc_f_t_carry__2_1;
  wire \hlfc_i[22]_i_4_n_0 ;
  wire \hlfc_i[22]_i_6_n_0 ;
  wire \hlfc_i[24]_i_6_n_0 ;
  wire \hlfc_i_reg[22] ;
  wire \hlfc_i_reg[22]_0 ;
  wire \hlfc_i_reg[22]_1 ;
  wire \hlfc_i_reg[22]_2 ;
  wire \hlfc_i_reg[23] ;
  wire \hlfc_i_reg[23]_0 ;
  wire \hlfc_i_reg[24] ;
  wire \hlfc_i_reg[24]_0 ;
  wire \hlfc_i_reg[25] ;
  wire \hlfc_i_reg[25]_0 ;
  wire \hlfc_i_reg[25]_1 ;
  wire \hlfc_i_reg[25]_2 ;
  wire \hlfc_i_reg[25]_3 ;
  wire \hlfc_i_reg[25]_4 ;
  wire [4:0]p_0_in;
  wire p_0_in11_in;
  wire p_0_in14_in;
  wire [14:0]p_0_in1_in;
  wire p_0_in1_in_0;
  wire p_0_in3_in;
  wire [15:0]p_1_in;
  wire rst_n;
  wire [2:0]rst_n_0;
  wire \stat[2]_i_8_n_0 ;
  wire \stat[2]_i_9_n_0 ;
  wire \stat_reg[0] ;
  wire \stat_reg[2] ;
  wire [3:0]\NLW_cbus[14]_INST_0_i_54_O_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hAA080808)) 
    \cbus[0]_INST_0_i_4 
       (.I0(\hlfc_f_reg[14]_0 ),
        .I1(hlfa_r_0[0]),
        .I2(\cbus[1]_INST_0_i_5_n_0 ),
        .I3(\hlfa_i_reg_n_0_[0] ),
        .I4(\cbus[11]_INST_0_i_15_n_0 ),
        .O(\hlfa_f_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h557FFFFFFFFFAA80)) 
    \cbus[10]_INST_0_i_10 
       (.I0(hlfa_r_0[19]),
        .I1(hlfa_r_0[17]),
        .I2(hlfa_r_0[16]),
        .I3(hlfa_r_0[18]),
        .I4(hlfa_r_0[21]),
        .I5(hlfa_r_0[20]),
        .O(\cbus[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h3FBF3F3F3FFF3F3F)) 
    \cbus[10]_INST_0_i_6 
       (.I0(hlfa_r_0[16]),
        .I1(hlfa_r_0[10]),
        .I2(ccmd_f[3]),
        .I3(\cbus[11]_INST_0_i_13_n_0 ),
        .I4(\cbus[11]_INST_0_i_12_n_0 ),
        .I5(\cbus[10]_INST_0_i_9_n_0 ),
        .O(\hlfa_e_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hD5D5FFD5)) 
    \cbus[10]_INST_0_i_7 
       (.I0(\cbus[11]_INST_0_i_14_n_0 ),
        .I1(p_0_in[0]),
        .I2(\cbus[11]_INST_0_i_15_n_0 ),
        .I3(hlfa_r_0[10]),
        .I4(hlfa_e_dif0_carry__0_i_5_n_0),
        .O(\hlfa_i_reg[10]_0 ));
  LUT5 #(
    .INIT(32'h00060000)) 
    \cbus[10]_INST_0_i_9 
       (.I0(hlfa_r_0[16]),
        .I1(hlfa_r_0[17]),
        .I2(\cbus[10]_INST_0_i_10_n_0 ),
        .I3(hlfa_r_0[18]),
        .I4(\cbus[11]_INST_0_i_11_n_0 ),
        .O(\cbus[10]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00000006)) 
    \cbus[11]_INST_0_i_10 
       (.I0(hlfa_r_0[17]),
        .I1(hlfa_r_0[16]),
        .I2(hlfa_r_0[18]),
        .I3(hlfa_r_0[21]),
        .I4(hlfa_r_0[20]),
        .O(\cbus[11]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \cbus[11]_INST_0_i_11 
       (.I0(ccmd_f[2]),
        .I1(ccmd_f[1]),
        .I2(ccmd_f[0]),
        .O(\cbus[11]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF5D7D7D7)) 
    \cbus[11]_INST_0_i_12 
       (.I0(\cbus[11]_INST_0_i_11_n_0 ),
        .I1(hlfa_r_0[18]),
        .I2(hlfa_r_0[19]),
        .I3(hlfa_r_0[17]),
        .I4(hlfa_r_0[16]),
        .O(\cbus[11]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h03070337)) 
    \cbus[11]_INST_0_i_13 
       (.I0(\cbus[6]_INST_0_i_21_n_0 ),
        .I1(ccmd_f[2]),
        .I2(ccmd_f[1]),
        .I3(ccmd_f[0]),
        .I4(\hlfa_i_reg[14]_1 ),
        .O(\cbus[11]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \cbus[11]_INST_0_i_14 
       (.I0(ccmd_f[3]),
        .I1(ccmd_f[0]),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[1]),
        .I4(\hlfa_i_reg[9]_0 ),
        .O(\cbus[11]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \cbus[11]_INST_0_i_15 
       (.I0(ccmd_f[2]),
        .I1(ccmd_f[3]),
        .I2(ccmd_f[1]),
        .I3(ccmd_f[0]),
        .O(\cbus[11]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0070FFFFFFFFFFFF)) 
    \cbus[11]_INST_0_i_6 
       (.I0(\cbus[11]_INST_0_i_10_n_0 ),
        .I1(\cbus[11]_INST_0_i_11_n_0 ),
        .I2(\cbus[11]_INST_0_i_12_n_0 ),
        .I3(\cbus[11]_INST_0_i_13_n_0 ),
        .I4(ccmd_f[3]),
        .I5(hlfa_r_0[11]),
        .O(\ccmd_f_reg[3]_6 ));
  LUT5 #(
    .INIT(32'hD5D5FFD5)) 
    \cbus[11]_INST_0_i_7 
       (.I0(\cbus[11]_INST_0_i_14_n_0 ),
        .I1(p_0_in[1]),
        .I2(\cbus[11]_INST_0_i_15_n_0 ),
        .I3(hlfa_r_0[11]),
        .I4(hlfa_e_dif0_carry__0_i_5_n_0),
        .O(\hlfa_i_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h008A8A8A00000000)) 
    \cbus[12]_INST_0_i_13 
       (.I0(\cbus[12]_INST_0_i_18_n_0 ),
        .I1(hlfa_e_dif0_carry__0_i_5_n_0),
        .I2(hlfa_r_0[12]),
        .I3(\cbus[11]_INST_0_i_15_n_0 ),
        .I4(p_0_in[2]),
        .I5(\cbus[11]_INST_0_i_14_n_0 ),
        .O(\hlfa_f_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hFCC8FFFFFFFFFFFF)) 
    \cbus[12]_INST_0_i_18 
       (.I0(\hlfa_i_reg[14]_1 ),
        .I1(ccmd_f[1]),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[0]),
        .I4(ccmd_f[3]),
        .I5(hlfa_r_0[12]),
        .O(\cbus[12]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \cbus[12]_INST_0_i_3 
       (.I0(\hlfc_f_reg[12] ),
        .I1(\hlfc_f_reg[14] [3]),
        .I2(\hlfc_f_reg[14] [0]),
        .I3(hctl_ccmd_add),
        .I4(\hlfc_f_reg[12]_0 ),
        .O(hctl_ccmd_add_reg_1));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_9 
       (.I0(\hlfc_f_reg[14] [0]),
        .O(hlfc_f_t_carry__2_0));
  LUT3 #(
    .INIT(8'h15)) 
    \cbus[13]_INST_0_i_10 
       (.I0(ccmd_f[3]),
        .I1(ccmd_f[0]),
        .I2(ccmd_f[2]),
        .O(\cbus[13]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBBBBB888)) 
    \cbus[13]_INST_0_i_7 
       (.I0(\cbus[13]_INST_0_i_8_n_0 ),
        .I1(hctl_ccmd_add),
        .I2(hfpu_dsp_c),
        .I3(hctl_ccmd_mul),
        .I4(\cbus[13]_INST_0_i_9_n_0 ),
        .O(hctl_ccmd_add_reg_3));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[13]_INST_0_i_8 
       (.I0(\hadd/hlfc_f0 [13]),
        .I1(\hlfc_f_reg[14] [3]),
        .I2(\hlfc_f_reg[14] [1]),
        .O(\cbus[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA008000800080)) 
    \cbus[13]_INST_0_i_9 
       (.I0(\hlfc_f_reg[14]_0 ),
        .I1(\ccmd_f_reg[1]_1 ),
        .I2(hlfa_r_0[13]),
        .I3(\cbus[13]_INST_0_i_10_n_0 ),
        .I4(p_0_in[3]),
        .I5(\cbus[11]_INST_0_i_15_n_0 ),
        .O(\cbus[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \cbus[14]_INST_0_i_11 
       (.I0(\cbus[15]_INST_0_i_4_0 ),
        .I1(\cbus[15]_INST_0_i_4_1 ),
        .I2(\cbus[14]_INST_0_i_27_n_0 ),
        .I3(\hadd/hlfc_f0 [15]),
        .I4(\hlfc_f_reg[14] [3]),
        .I5(\cbus[14]_INST_0_i_28_n_0 ),
        .O(\cbus[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h707F7F7FFFFFFFFF)) 
    \cbus[14]_INST_0_i_12 
       (.I0(\cbus[14]_INST_0_i_29_n_0 ),
        .I1(\hlfc_i[22]_i_4_n_0 ),
        .I2(\hlfa_i_reg[14]_1 ),
        .I3(\cbus[14]_INST_0_i_31_n_0 ),
        .I4(\cbus[14]_INST_0_i_32_n_0 ),
        .I5(\hlfc_i_reg[22]_0 ),
        .O(\cbus[14]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h47474747FF00FFFF)) 
    \cbus[14]_INST_0_i_20 
       (.I0(\hadd/hlfc_f0 [14]),
        .I1(\hlfc_f_reg[14] [3]),
        .I2(\hlfc_f_reg[14] [2]),
        .I3(\cbus[14]_INST_0_i_53_n_0 ),
        .I4(\hlfc_f_reg[14]_0 ),
        .I5(hctl_ccmd_add),
        .O(hctl_ccmd_add_reg));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[14]_INST_0_i_27 
       (.I0(\hadd/hlfc_f0 [14]),
        .I1(\hlfc_f_reg[14] [3]),
        .I2(\hlfc_f_reg[14] [2]),
        .O(\cbus[14]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[14]_INST_0_i_28 
       (.I0(\hlfc_f_reg[14] [0]),
        .I1(\hlfc_f_reg[12] ),
        .I2(\hlfc_f_reg[14] [1]),
        .I3(\hlfc_f_reg[14] [3]),
        .I4(\hadd/hlfc_f0 [13]),
        .O(\cbus[14]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0F0400F00FF0F0F0)) 
    \cbus[14]_INST_0_i_29 
       (.I0(hlfa_r_0[22]),
        .I1(\cbus[5]_INST_0_i_9_n_0 ),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[0]),
        .I4(ccmd_f[2]),
        .I5(ccmd_f[1]),
        .O(\cbus[14]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDD000000F0)) 
    \cbus[14]_INST_0_i_3 
       (.I0(\hlfc_i_reg[22]_1 ),
        .I1(\cbus[14]_INST_0_i_11_n_0 ),
        .I2(\cbus[14]_INST_0_i_12_n_0 ),
        .I3(\hlfc_i_reg[23] ),
        .I4(\hlfc_i_reg[23]_0 ),
        .I5(hctl_ccmd_add),
        .O(hctl_ccmd_add_reg_2));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cbus[14]_INST_0_i_30 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\hlfa_i_reg[14]_1 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cbus[14]_INST_0_i_31 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[4]),
        .I4(p_0_in[1]),
        .O(\cbus[14]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \cbus[14]_INST_0_i_32 
       (.I0(ccmd_f[0]),
        .I1(ccmd_f[1]),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[3]),
        .I4(hlfa_r_0[21]),
        .I5(\hlfc_i[22]_i_4_n_0 ),
        .O(\cbus[14]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h07FFFFFFFFFFFFFF)) 
    \cbus[14]_INST_0_i_43 
       (.I0(ccmd_f[2]),
        .I1(ccmd_f[0]),
        .I2(ccmd_f[3]),
        .I3(\ccmd_f_reg[4]_0 ),
        .I4(hctl_ccmd_reg),
        .I5(hlfa_r_0[20]),
        .O(\ccmd_f_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h000F0F1FFFFFFFFF)) 
    \cbus[14]_INST_0_i_44 
       (.I0(\hlfa_i_reg[9]_0 ),
        .I1(\hlfa_i_reg[14]_1 ),
        .I2(ccmd_f[1]),
        .I3(ccmd_f[0]),
        .I4(ccmd_f[2]),
        .I5(ccmd_f[3]),
        .O(\ccmd_f_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hA2AAA2A2AAAAA2A2)) 
    \cbus[14]_INST_0_i_46 
       (.I0(\hlfc_i[22]_i_4_n_0 ),
        .I1(\cbus[11]_INST_0_i_14_n_0 ),
        .I2(\cbus[11]_INST_0_i_15_n_0 ),
        .I3(hlfa_e_dif0_carry__0_i_5_n_0),
        .I4(hlfa_r_0[18]),
        .I5(\cbus[14]_INST_0_i_55_n_0 ),
        .O(\hlfa_e_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0080808088888888)) 
    \cbus[14]_INST_0_i_48 
       (.I0(hctl_ccmd_reg),
        .I1(\ccmd_f_reg[4]_0 ),
        .I2(hlfa_r_0[16]),
        .I3(\cbus[14]_INST_0_i_55_n_0 ),
        .I4(hlfa_e_dif0_carry__0_i_5_n_0),
        .I5(\cbus[11]_INST_0_i_14_n_0 ),
        .O(hctl_ccmd_reg_reg));
  LUT6 #(
    .INIT(64'h0080808088888888)) 
    \cbus[14]_INST_0_i_50 
       (.I0(hctl_ccmd_reg),
        .I1(\ccmd_f_reg[4]_0 ),
        .I2(hlfa_r_0[17]),
        .I3(\cbus[14]_INST_0_i_55_n_0 ),
        .I4(hlfa_e_dif0_carry__0_i_5_n_0),
        .I5(\cbus[11]_INST_0_i_14_n_0 ),
        .O(hctl_ccmd_reg_reg_0));
  LUT6 #(
    .INIT(64'hA2AAA0A0AAAAAAAA)) 
    \cbus[14]_INST_0_i_52 
       (.I0(\hlfc_i[22]_i_4_n_0 ),
        .I1(hlfa_e_dif0_carry__0_i_5_n_0),
        .I2(\cbus[11]_INST_0_i_15_n_0 ),
        .I3(\cbus[14]_INST_0_i_55_n_0 ),
        .I4(hlfa_r_0[19]),
        .I5(\cbus[11]_INST_0_i_14_n_0 ),
        .O(\hlfa_e_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h07770FFF00000FFF)) 
    \cbus[14]_INST_0_i_53 
       (.I0(ccmd_f[3]),
        .I1(\cbus[15]_INST_0_i_16_n_0 ),
        .I2(p_0_in[4]),
        .I3(\cbus[11]_INST_0_i_15_n_0 ),
        .I4(hlfa_r_0[14]),
        .I5(hlfa_e_dif0_carry__0_i_5_n_0),
        .O(\cbus[14]_INST_0_i_53_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[14]_INST_0_i_54 
       (.CI(\<const0> ),
        .CO({\cbus[14]_INST_0_i_54_n_0 ,\cbus[14]_INST_0_i_54_n_1 ,\cbus[14]_INST_0_i_54_n_2 ,\cbus[14]_INST_0_i_54_n_3 }),
        .CYINIT(\<const1> ),
        .DI(hlfa_r_0[19:16]),
        .O({hlfc_e[2:0],\NLW_cbus[14]_INST_0_i_54_O_UNCONNECTED [0]}),
        .S({\cbus[14]_INST_0_i_56_n_0 ,\cbus[14]_INST_0_i_57_n_0 ,\cbus[14]_INST_0_i_58_n_0 ,\cbus[14]_INST_0_i_59_n_0 }));
  LUT5 #(
    .INIT(32'hFCC8FFFF)) 
    \cbus[14]_INST_0_i_55 
       (.I0(\hlfa_i_reg[14]_1 ),
        .I1(ccmd_f[1]),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[0]),
        .I4(ccmd_f[3]),
        .O(\cbus[14]_INST_0_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cbus[14]_INST_0_i_56 
       (.I0(hlfa_r_0[19]),
        .I1(\hlfb_e_reg[5]_i_9_0 [3]),
        .O(\cbus[14]_INST_0_i_56_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cbus[14]_INST_0_i_57 
       (.I0(hlfa_r_0[18]),
        .I1(\hlfb_e_reg[5]_i_9_0 [2]),
        .O(\cbus[14]_INST_0_i_57_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cbus[14]_INST_0_i_58 
       (.I0(hlfa_r_0[17]),
        .I1(\hlfb_e_reg[5]_i_9_0 [1]),
        .O(\cbus[14]_INST_0_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cbus[14]_INST_0_i_59 
       (.I0(hlfa_r_0[16]),
        .I1(\hlfb_e_reg[5]_i_9_0 [0]),
        .O(\cbus[14]_INST_0_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cbus[15]_INST_0_i_10 
       (.I0(hlfa_r_0[22]),
        .I1(\hlfc_f_reg[14] [3]),
        .O(\cbus[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEAEEAAAAAAFFA)) 
    \cbus[15]_INST_0_i_12 
       (.I0(hctl_ccmd_sub_reg),
        .I1(hlfa_r_0[22]),
        .I2(Q),
        .I3(hctl_ccmd_sub),
        .I4(\hlfc_i_reg[24] ),
        .I5(\hlfa_i_reg[9]_0 ),
        .O(\cbus[15]_INST_0_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[15]_INST_0_i_13 
       (.I0(\hlfc_f_reg[14] [3]),
        .O(\cbus[15]_INST_0_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[15]_INST_0_i_14 
       (.I0(\hlfc_f_reg[14] [2]),
        .O(\cbus[15]_INST_0_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[15]_INST_0_i_15 
       (.I0(\hlfc_f_reg[14] [1]),
        .O(\cbus[15]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h11331137)) 
    \cbus[15]_INST_0_i_16 
       (.I0(ccmd_f[2]),
        .I1(ccmd_f[1]),
        .I2(\hlfa_i_reg[14]_1 ),
        .I3(ccmd_f[0]),
        .I4(\hlfa_i_reg[9]_0 ),
        .O(\cbus[15]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000F80800000000)) 
    \cbus[15]_INST_0_i_17 
       (.I0(hlfa_r_0[22]),
        .I1(ccmd_f[1]),
        .I2(ccmd_f[0]),
        .I3(hlfa_r_0[15]),
        .I4(ccmd_f[3]),
        .I5(ccmd_f[2]),
        .O(\cbus[15]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h007F)) 
    \cbus[15]_INST_0_i_3 
       (.I0(hctl_ccmd_add),
        .I1(\hlfc_f_reg[14] [3]),
        .I2(\hadd/hlfc_f0 [15]),
        .I3(\cbus[15]_INST_0_i_8_n_0 ),
        .O(hctl_ccmd_add_reg_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFB08)) 
    \cbus[15]_INST_0_i_4 
       (.I0(\cbus[15]_INST_0_i_9_n_0 ),
        .I1(\hlfc_i_reg[22]_1 ),
        .I2(\cbus[14]_INST_0_i_11_n_0 ),
        .I3(\cbus[15]_INST_0_i_10_n_0 ),
        .I4(\hlfc_i_reg[22]_2 ),
        .I5(\cbus[15]_INST_0_i_12_n_0 ),
        .O(\hlfa_i_reg[15]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[15]_INST_0_i_7 
       (.CI(CO),
        .CO({\cbus[15]_INST_0_i_7_n_2 ,\cbus[15]_INST_0_i_7_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\hadd/hlfc_f0 ),
        .S({\<const0> ,\cbus[15]_INST_0_i_13_n_0 ,\cbus[15]_INST_0_i_14_n_0 ,\cbus[15]_INST_0_i_15_n_0 }));
  LUT6 #(
    .INIT(64'h4444444440000000)) 
    \cbus[15]_INST_0_i_8 
       (.I0(hctl_ccmd_add),
        .I1(\hlfc_f_reg[14]_0 ),
        .I2(\cbus[15]_INST_0_i_16_n_0 ),
        .I3(ccmd_f[3]),
        .I4(hlfa_r_0[15]),
        .I5(\cbus[15]_INST_0_i_17_n_0 ),
        .O(\cbus[15]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD7)) 
    \cbus[15]_INST_0_i_9 
       (.I0(hlfa_r_0[22]),
        .I1(hctl_ccmd_sub),
        .I2(Q),
        .O(\cbus[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8F880000)) 
    \cbus[1]_INST_0_i_4 
       (.I0(\cbus[11]_INST_0_i_15_n_0 ),
        .I1(\hlfa_i_reg_n_0_[1] ),
        .I2(\cbus[1]_INST_0_i_5_n_0 ),
        .I3(hlfa_r_0[1]),
        .I4(\hlfc_f_reg[14]_0 ),
        .I5(\cbus[1]_INST_0_i_3 ),
        .O(\hlfa_i_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h00770F77)) 
    \cbus[1]_INST_0_i_5 
       (.I0(ccmd_f[2]),
        .I1(ccmd_f[0]),
        .I2(\cbus[1]_INST_0_i_7_n_0 ),
        .I3(ccmd_f[3]),
        .I4(\cbus[4]_INST_0_i_8_n_0 ),
        .O(\cbus[1]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h000001FF)) 
    \cbus[1]_INST_0_i_7 
       (.I0(\hlfa_i_reg[9]_0 ),
        .I1(ccmd_f[0]),
        .I2(\hlfa_i_reg[14]_1 ),
        .I3(ccmd_f[1]),
        .I4(ccmd_f[2]),
        .O(\cbus[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7F3FFF7F7FFFF)) 
    \cbus[2]_INST_0_i_12 
       (.I0(hlfa_r_0[2]),
        .I1(ccmd_f[2]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[1]),
        .I4(ccmd_f[0]),
        .I5(\hlfa_i_reg_n_0_[2] ),
        .O(\cbus[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAA2A2A2A2A2A2A2A)) 
    \cbus[2]_INST_0_i_5 
       (.I0(\hlfc_f_reg[14]_0 ),
        .I1(\cbus[11]_INST_0_i_14_n_0 ),
        .I2(\cbus[2]_INST_0_i_12_n_0 ),
        .I3(\cbus[11]_INST_0_i_13_n_0 ),
        .I4(ccmd_f[3]),
        .I5(hlfa_r_0[2]),
        .O(\ccmd_f_reg[3]_5 ));
  LUT5 #(
    .INIT(32'h3F3FFF7F)) 
    \cbus[3]_INST_0_i_5 
       (.I0(\cbus[11]_INST_0_i_10_n_0 ),
        .I1(hlfa_r_0[3]),
        .I2(ccmd_f[3]),
        .I3(\cbus[11]_INST_0_i_12_n_0 ),
        .I4(\cbus[11]_INST_0_i_13_n_0 ),
        .O(\hlfa_f_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hD5D5FFD5)) 
    \cbus[3]_INST_0_i_6 
       (.I0(\cbus[11]_INST_0_i_14_n_0 ),
        .I1(\hlfa_i_reg_n_0_[3] ),
        .I2(\cbus[11]_INST_0_i_15_n_0 ),
        .I3(hlfa_r_0[3]),
        .I4(hlfa_e_dif0_carry__0_i_5_n_0),
        .O(\hlfa_i_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h01FF01FF01FFFFFF)) 
    \cbus[4]_INST_0_i_5 
       (.I0(\cbus[4]_INST_0_i_8_n_0 ),
        .I1(\cbus[4]_INST_0_i_9_n_0 ),
        .I2(\cbus[7]_INST_0_i_8_n_0 ),
        .I3(ccmd_f[3]),
        .I4(hlfa_r_0[4]),
        .I5(\cbus[5]_INST_0_i_11_n_0 ),
        .O(\ccmd_f_reg[3]_4 ));
  LUT6 #(
    .INIT(64'h08080C0008080000)) 
    \cbus[4]_INST_0_i_6 
       (.I0(hlfa_r_0[4]),
        .I1(ccmd_f[2]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[1]),
        .I4(ccmd_f[0]),
        .I5(\hlfa_i_reg_n_0_[4] ),
        .O(\hlfa_f_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \cbus[4]_INST_0_i_8 
       (.I0(ccmd_f[0]),
        .I1(ccmd_f[1]),
        .I2(ccmd_f[2]),
        .I3(\cbus[6]_INST_0_i_21_n_0 ),
        .O(\cbus[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \cbus[4]_INST_0_i_9 
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_r_0[20]),
        .I2(hlfa_r_0[19]),
        .I3(hlfa_r_0[18]),
        .I4(\cbus[8]_INST_0_i_10_n_0 ),
        .I5(\cbus[11]_INST_0_i_11_n_0 ),
        .O(\cbus[4]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \cbus[5]_INST_0_i_11 
       (.I0(\hlfa_i_reg[9]_0 ),
        .I1(ccmd_f[1]),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[0]),
        .O(\cbus[5]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0303FF0B)) 
    \cbus[5]_INST_0_i_4 
       (.I0(\hlfc_i_reg[25]_0 ),
        .I1(\cbus[5]_INST_0_i_9_n_0 ),
        .I2(\cbus[14]_INST_0_i_31_n_0 ),
        .I3(\hlfc_i_reg[25]_1 ),
        .I4(\hlfc_i_reg[25]_2 ),
        .O(hctl_ccmd_sub_reg));
  LUT5 #(
    .INIT(32'h1F1F1FFF)) 
    \cbus[5]_INST_0_i_6 
       (.I0(\cbus[7]_INST_0_i_9_n_0 ),
        .I1(\cbus[7]_INST_0_i_8_n_0 ),
        .I2(ccmd_f[3]),
        .I3(hlfa_r_0[5]),
        .I4(\cbus[5]_INST_0_i_11_n_0 ),
        .O(\ccmd_f_reg[3]_2 ));
  LUT6 #(
    .INIT(64'h08080C0008080000)) 
    \cbus[5]_INST_0_i_7 
       (.I0(hlfa_r_0[5]),
        .I1(ccmd_f[2]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[1]),
        .I4(ccmd_f[0]),
        .I5(\hlfa_i_reg_n_0_[5] ),
        .O(\hlfa_f_reg[5]_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \cbus[5]_INST_0_i_9 
       (.I0(\hlfa_i_reg_n_0_[8] ),
        .I1(\hlfa_i_reg_n_0_[9] ),
        .I2(\cbus[6]_INST_0_i_19_n_0 ),
        .I3(\cbus[6]_INST_0_i_18_n_0 ),
        .O(\cbus[5]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00F2FFFFFFFFFFFF)) 
    \cbus[6]_INST_0_i_10 
       (.I0(\cbus[6]_INST_0_i_21_n_0 ),
        .I1(\cbus[6]_INST_0_i_22_n_0 ),
        .I2(\cbus[6]_INST_0_i_23_n_0 ),
        .I3(\cbus[7]_INST_0_i_8_n_0 ),
        .I4(ccmd_f[3]),
        .I5(hlfa_r_0[6]),
        .O(\ccmd_f_reg[3]_3 ));
  LUT5 #(
    .INIT(32'hD5D5FFD5)) 
    \cbus[6]_INST_0_i_11 
       (.I0(\cbus[11]_INST_0_i_14_n_0 ),
        .I1(\hlfa_i_reg_n_0_[6] ),
        .I2(\cbus[11]_INST_0_i_15_n_0 ),
        .I3(hlfa_r_0[6]),
        .I4(hlfa_e_dif0_carry__0_i_5_n_0),
        .O(\hlfa_i_reg[6]_0 ));
  LUT5 #(
    .INIT(32'hFFFBEEEA)) 
    \cbus[6]_INST_0_i_14 
       (.I0(\cbus[14]_INST_0_i_28_n_0 ),
        .I1(\hlfc_f_reg[14] [3]),
        .I2(\hadd/hlfc_f0 [15]),
        .I3(\hadd/hlfc_f0 [14]),
        .I4(\hlfc_f_reg[14] [2]),
        .O(hlfc_f_t_carry__2));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[6]_INST_0_i_18 
       (.I0(\hlfa_i_reg_n_0_[3] ),
        .I1(\hlfa_i_reg_n_0_[0] ),
        .I2(\hlfa_i_reg_n_0_[2] ),
        .I3(\hlfa_i_reg_n_0_[1] ),
        .O(\cbus[6]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[6]_INST_0_i_19 
       (.I0(\hlfa_i_reg_n_0_[5] ),
        .I1(\hlfa_i_reg_n_0_[4] ),
        .I2(\hlfa_i_reg_n_0_[7] ),
        .I3(\hlfa_i_reg_n_0_[6] ),
        .O(\cbus[6]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cbus[6]_INST_0_i_20 
       (.I0(\cbus[6]_INST_0_i_18_n_0 ),
        .I1(\cbus[6]_INST_0_i_19_n_0 ),
        .I2(\hlfa_i_reg_n_0_[9] ),
        .I3(\hlfa_i_reg_n_0_[8] ),
        .I4(\cbus[14]_INST_0_i_31_n_0 ),
        .O(\hlfa_i_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h000000000000222A)) 
    \cbus[6]_INST_0_i_21 
       (.I0(\cbus[6]_INST_0_i_24_n_0 ),
        .I1(hlfa_r_0[19]),
        .I2(hlfa_r_0[17]),
        .I3(hlfa_r_0[18]),
        .I4(hlfa_r_0[21]),
        .I5(hlfa_r_0[20]),
        .O(\cbus[6]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h8100811100110011)) 
    \cbus[6]_INST_0_i_22 
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_r_0[21]),
        .I2(hlfa_r_0[19]),
        .I3(hlfa_r_0[18]),
        .I4(hlfa_r_0[16]),
        .I5(hlfa_r_0[17]),
        .O(\cbus[6]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hF0870000FFFFFFFF)) 
    \cbus[6]_INST_0_i_23 
       (.I0(hlfa_r_0[16]),
        .I1(hlfa_r_0[17]),
        .I2(hlfa_r_0[19]),
        .I3(hlfa_r_0[18]),
        .I4(\cbus[6]_INST_0_i_21_n_0 ),
        .I5(\cbus[11]_INST_0_i_11_n_0 ),
        .O(\cbus[6]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    \cbus[6]_INST_0_i_24 
       (.I0(p_0_in[2]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .I4(p_0_in[4]),
        .O(\cbus[6]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \cbus[6]_INST_0_i_6 
       (.I0(\cbus[6]_INST_0_i_18_n_0 ),
        .I1(\cbus[6]_INST_0_i_19_n_0 ),
        .I2(\hlfa_i_reg_n_0_[9] ),
        .I3(\hlfa_i_reg_n_0_[8] ),
        .I4(\cbus[14]_INST_0_i_31_n_0 ),
        .O(\hlfa_i_reg[9]_1 ));
  LUT6 #(
    .INIT(64'hD7FFFFEBFFFFFFFF)) 
    \cbus[7]_INST_0_i_10 
       (.I0(hlfa_r_0[19]),
        .I1(hlfa_r_0[17]),
        .I2(hlfa_r_0[16]),
        .I3(hlfa_r_0[21]),
        .I4(hlfa_r_0[20]),
        .I5(hlfa_r_0[18]),
        .O(\cbus[7]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h2A2A002A)) 
    \cbus[7]_INST_0_i_5 
       (.I0(\cbus[11]_INST_0_i_14_n_0 ),
        .I1(\hlfa_i_reg_n_0_[7] ),
        .I2(\cbus[11]_INST_0_i_15_n_0 ),
        .I3(hlfa_r_0[7]),
        .I4(hlfa_e_dif0_carry__0_i_5_n_0),
        .O(\hlfa_i_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hEFEE000000000000)) 
    \cbus[7]_INST_0_i_6 
       (.I0(\cbus[7]_INST_0_i_8_n_0 ),
        .I1(\cbus[7]_INST_0_i_9_n_0 ),
        .I2(\cbus[7]_INST_0_i_10_n_0 ),
        .I3(\cbus[11]_INST_0_i_11_n_0 ),
        .I4(ccmd_f[3]),
        .I5(hlfa_r_0[7]),
        .O(\ccmd_f_reg[3]_1 ));
  LUT4 #(
    .INIT(16'h001F)) 
    \cbus[7]_INST_0_i_8 
       (.I0(\hlfa_i_reg[14]_1 ),
        .I1(ccmd_f[0]),
        .I2(ccmd_f[1]),
        .I3(ccmd_f[2]),
        .O(\cbus[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C4C0C0C4C0C0C)) 
    \cbus[7]_INST_0_i_9 
       (.I0(\cbus[10]_INST_0_i_10_n_0 ),
        .I1(\cbus[11]_INST_0_i_11_n_0 ),
        .I2(\cbus[6]_INST_0_i_21_n_0 ),
        .I3(hlfa_r_0[18]),
        .I4(hlfa_r_0[19]),
        .I5(\cbus[8]_INST_0_i_10_n_0 ),
        .O(\cbus[7]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cbus[8]_INST_0_i_10 
       (.I0(hlfa_r_0[17]),
        .I1(hlfa_r_0[16]),
        .O(\cbus[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h77F7000000000000)) 
    \cbus[8]_INST_0_i_6 
       (.I0(hlfa_r_0[8]),
        .I1(ccmd_f[3]),
        .I2(\cbus[8]_INST_0_i_8_n_0 ),
        .I3(\cbus[11]_INST_0_i_13_n_0 ),
        .I4(\cbus[8]_INST_0_i_9_n_0 ),
        .I5(\cbus[11]_INST_0_i_14_n_0 ),
        .O(\hlfa_f_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFFFDFF)) 
    \cbus[8]_INST_0_i_8 
       (.I0(\cbus[11]_INST_0_i_11_n_0 ),
        .I1(hlfa_r_0[21]),
        .I2(hlfa_r_0[20]),
        .I3(hlfa_r_0[19]),
        .I4(\cbus[8]_INST_0_i_10_n_0 ),
        .I5(hlfa_r_0[18]),
        .O(\cbus[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7F3FFF7F7FFFF)) 
    \cbus[8]_INST_0_i_9 
       (.I0(hlfa_r_0[8]),
        .I1(ccmd_f[2]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[1]),
        .I4(ccmd_f[0]),
        .I5(\hlfa_i_reg_n_0_[8] ),
        .O(\cbus[8]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h77F7000000000000)) 
    \cbus[9]_INST_0_i_6 
       (.I0(hlfa_r_0[9]),
        .I1(ccmd_f[3]),
        .I2(\cbus[11]_INST_0_i_12_n_0 ),
        .I3(\cbus[11]_INST_0_i_13_n_0 ),
        .I4(\cbus[9]_INST_0_i_8_n_0 ),
        .I5(\cbus[11]_INST_0_i_14_n_0 ),
        .O(\hlfa_f_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hF7F7F3FFF7F7FFFF)) 
    \cbus[9]_INST_0_i_8 
       (.I0(hlfa_r_0[9]),
        .I1(ccmd_f[2]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[1]),
        .I4(ccmd_f[0]),
        .I5(\hlfa_i_reg_n_0_[9] ),
        .O(\cbus[9]_INST_0_i_8_n_0 ));
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
  LUT6 #(
    .INIT(64'h4747474747747474)) 
    \hlfa_e[0]_i_1 
       (.I0(abus[10]),
        .I1(hctl_load_b),
        .I2(hlfa_r_0[16]),
        .I3(\hlfa_f[14]_i_2_n_0 ),
        .I4(\hlfa_e[0]_i_2_n_0 ),
        .I5(\hlfa_e[0]_i_3_n_0 ),
        .O(\hlfa_e[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_e[0]_i_2 
       (.I0(\ccmd_f_reg[1]_0 ),
        .I1(\hlfa_f_reg[12]_2 ),
        .O(\hlfa_e[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5053000050500000)) 
    \hlfa_e[0]_i_3 
       (.I0(p_0_in11_in),
        .I1(\hlfa_f[14]_i_3_n_0 ),
        .I2(\hlfa_f[14]_i_2_n_0 ),
        .I3(\hlfa_f[15]_i_8_n_0 ),
        .I4(\hlfa_f[12]_i_5_n_0 ),
        .I5(\hlfa_f[13]_i_4_n_0 ),
        .O(\hlfa_e[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    \hlfa_e[1]_i_1 
       (.I0(\hlfa_e[1]_i_2_n_0 ),
        .I1(hctl_load_b),
        .I2(\hlfa_e[1]_i_3_n_0 ),
        .I3(\hlfa_f[15]_i_4_n_0 ),
        .I4(\hlfa_e[1]_i_4_n_0 ),
        .I5(\hlfa_e[1]_i_5_n_0 ),
        .O(\hlfa_e[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hlfa_e[1]_i_2 
       (.I0(abus[10]),
        .I1(abus[11]),
        .O(\hlfa_e[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0222A8880020A888)) 
    \hlfa_e[1]_i_3 
       (.I0(\hlfa_f[12]_i_5_n_0 ),
        .I1(\hlfa_f[15]_i_8_n_0 ),
        .I2(\hlfa_f[14]_i_2_n_0 ),
        .I3(hlfa_r_0[16]),
        .I4(hlfa_r_0[17]),
        .I5(\hlfa_f[14]_i_3_n_0 ),
        .O(\hlfa_e[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6566)) 
    \hlfa_e[1]_i_4 
       (.I0(hlfa_r_0[17]),
        .I1(\hlfa_f[14]_i_7_n_0 ),
        .I2(\hlfa_f[14]_i_8_n_0 ),
        .I3(hlfa_r_0[16]),
        .O(\hlfa_e[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D2787878)) 
    \hlfa_e[1]_i_5 
       (.I0(\hlfa_e[0]_i_2_n_0 ),
        .I1(p_0_in11_in),
        .I2(hlfa_r_0[17]),
        .I3(hlfa_e_dif0_carry_n_7),
        .I4(hlfa_r_0[16]),
        .I5(\hlfa_f[12]_i_5_n_0 ),
        .O(\hlfa_e[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    \hlfa_e[2]_i_1 
       (.I0(\hlfa_e[2]_i_2_n_0 ),
        .I1(hctl_load_b),
        .I2(\hlfa_f[15]_i_4_n_0 ),
        .I3(\hlfa_e[2]_i_3_n_0 ),
        .I4(\hlfa_e[2]_i_4_n_0 ),
        .I5(\hlfa_e[2]_i_5_n_0 ),
        .O(\hlfa_e[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \hlfa_e[2]_i_2 
       (.I0(abus[12]),
        .I1(abus[11]),
        .I2(abus[10]),
        .O(\hlfa_e[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCC3C36)) 
    \hlfa_e[2]_i_3 
       (.I0(hlfa_r_0[16]),
        .I1(hlfa_r_0[18]),
        .I2(hlfa_r_0[17]),
        .I3(\hlfa_f[14]_i_8_n_0 ),
        .I4(\hlfa_f[14]_i_7_n_0 ),
        .O(\hlfa_e[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA2888AAAA2800)) 
    \hlfa_e[2]_i_4 
       (.I0(\hlfa_f[12]_i_5_n_0 ),
        .I1(hlfa_r_0[18]),
        .I2(hlfa_r_0[17]),
        .I3(\hlfa_f[15]_i_8_n_0 ),
        .I4(\hlfa_e[2]_i_6_n_0 ),
        .I5(\hlfa_f[12]_i_8_n_0 ),
        .O(\hlfa_e[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000AC5C000053A0)) 
    \hlfa_e[2]_i_5 
       (.I0(\hlfa_e[2]_i_7_n_0 ),
        .I1(\hlfa_e_reg[3]_0 ),
        .I2(\ccmd_f_reg[1]_0 ),
        .I3(p_0_in14_in),
        .I4(\hlfa_f_reg[12]_2 ),
        .I5(hlfa_r_0[18]),
        .O(\hlfa_e[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0004040404000000)) 
    \hlfa_e[2]_i_6 
       (.I0(p_0_in11_in),
        .I1(hlfa_e_dif0_carry_n_7),
        .I2(\hlfa_f_reg[12]_2 ),
        .I3(hlfa_r_0[17]),
        .I4(hlfa_r_0[16]),
        .I5(hlfa_r_0[18]),
        .O(\hlfa_e[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    \hlfa_e[2]_i_7 
       (.I0(hlfa_e_dif0_carry_n_7),
        .I1(hlfa_r_0[16]),
        .I2(p_0_in11_in),
        .I3(hlfa_r_0[17]),
        .O(\hlfa_e[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    \hlfa_e[3]_i_1 
       (.I0(\hlfa_e[3]_i_2_n_0 ),
        .I1(hctl_load_b),
        .I2(\hlfa_e[3]_i_3_n_0 ),
        .I3(\hlfa_f[15]_i_4_n_0 ),
        .I4(\hlfa_e[3]_i_4_n_0 ),
        .I5(\hlfa_e[3]_i_5_n_0 ),
        .O(\hlfa_e[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hlfa_e[3]_i_10 
       (.I0(hlfa_r_0[18]),
        .I1(hlfa_r_0[19]),
        .O(\hlfa_e[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hlfa_e[3]_i_11 
       (.I0(\hlfa_e[5]_i_15_n_0 ),
        .I1(hlfa_r_0[19]),
        .I2(\hlfa_e_reg[3]_0 ),
        .O(\hlfa_e[3]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \hlfa_e[3]_i_12 
       (.I0(\hlfa_f_reg[12]_2 ),
        .I1(\hlfa_e_reg[3]_0 ),
        .I2(\ccmd_f_reg[1]_0 ),
        .O(\hlfa_e[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hlfa_e[3]_i_2 
       (.I0(abus[13]),
        .I1(abus[10]),
        .I2(abus[11]),
        .I3(abus[12]),
        .O(\hlfa_e[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h28AA282228AA2800)) 
    \hlfa_e[3]_i_3 
       (.I0(\hlfa_f[12]_i_5_n_0 ),
        .I1(hlfa_r_0[19]),
        .I2(\hlfa_e[3]_i_6_n_0 ),
        .I3(\hlfa_f[15]_i_8_n_0 ),
        .I4(\hlfa_e[3]_i_7_n_0 ),
        .I5(\hlfa_f[12]_i_8_n_0 ),
        .O(\hlfa_e[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFF5C50000F5C5)) 
    \hlfa_e[3]_i_4 
       (.I0(\hlfa_e[3]_i_8_n_0 ),
        .I1(p_0_in3_in),
        .I2(\hlfa_f[14]_i_8_n_0 ),
        .I3(\hlfa_e[3]_i_9_n_0 ),
        .I4(\hlfa_f[14]_i_7_n_0 ),
        .I5(\hlfa_e[3]_i_10_n_0 ),
        .O(\hlfa_e[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44FFF4FF44F4F444)) 
    \hlfa_e[3]_i_5 
       (.I0(\hlfa_e[3]_i_11_n_0 ),
        .I1(\hlfa_e[0]_i_2_n_0 ),
        .I2(\hlfa_e[4]_i_14_n_0 ),
        .I3(hlfa_r_0[19]),
        .I4(hlfa_r_0[18]),
        .I5(\hlfa_e[3]_i_12_n_0 ),
        .O(\hlfa_e[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfa_e[3]_i_6 
       (.I0(hlfa_r_0[18]),
        .I1(hlfa_r_0[17]),
        .O(\hlfa_e[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0444444440000000)) 
    \hlfa_e[3]_i_7 
       (.I0(\hlfa_f_reg[12]_2 ),
        .I1(hlfa_e_dif0_carry_n_7),
        .I2(hlfa_r_0[16]),
        .I3(hlfa_r_0[17]),
        .I4(hlfa_r_0[18]),
        .I5(hlfa_r_0[19]),
        .O(\hlfa_e[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \hlfa_e[3]_i_8 
       (.I0(hlfa_r_0[19]),
        .I1(hlfa_r_0[18]),
        .I2(hlfa_r_0[17]),
        .I3(hlfa_r_0[16]),
        .O(\hlfa_e[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \hlfa_e[3]_i_9 
       (.I0(hlfa_r_0[19]),
        .I1(hlfa_r_0[17]),
        .I2(hlfa_r_0[18]),
        .O(\hlfa_e[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBBB8)) 
    \hlfa_e[4]_i_1 
       (.I0(\hlfa_e[4]_i_2_n_0 ),
        .I1(hctl_load_b),
        .I2(\hlfa_e[4]_i_3_n_0 ),
        .I3(\hlfa_e[4]_i_4_n_0 ),
        .I4(\hlfa_e[4]_i_5_n_0 ),
        .I5(\hlfa_e[4]_i_6_n_0 ),
        .O(\hlfa_e[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hlfa_e[4]_i_10 
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_r_0[19]),
        .I2(hlfa_r_0[18]),
        .I3(hlfa_r_0[17]),
        .O(\hlfa_e[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0444444440000000)) 
    \hlfa_e[4]_i_11 
       (.I0(\hlfa_f_reg[12]_2 ),
        .I1(hlfa_e_dif0_carry_n_7),
        .I2(hlfa_r_0[19]),
        .I3(hlfa_r_0[18]),
        .I4(\cbus[8]_INST_0_i_10_n_0 ),
        .I5(hlfa_r_0[20]),
        .O(\hlfa_e[4]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hlfa_e[4]_i_12 
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_r_0[19]),
        .O(\hlfa_e[4]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h4D)) 
    \hlfa_e[4]_i_13 
       (.I0(\hlfa_e_reg[3]_0 ),
        .I1(\hlfa_e[5]_i_15_n_0 ),
        .I2(hlfa_r_0[19]),
        .O(\hlfa_e[4]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \hlfa_e[4]_i_14 
       (.I0(\hlfa_f_reg[12]_2 ),
        .I1(p_0_in14_in),
        .I2(\ccmd_f_reg[1]_0 ),
        .I3(\hlfa_e_reg[3]_0 ),
        .O(\hlfa_e[4]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfa_e[4]_i_15 
       (.I0(hlfa_r_0[18]),
        .I1(hlfa_r_0[19]),
        .O(\hlfa_e[4]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00040400)) 
    \hlfa_e[4]_i_16 
       (.I0(\ccmd_f_reg[1]_0 ),
        .I1(\hlfa_e_reg[3]_0 ),
        .I2(\hlfa_f_reg[12]_2 ),
        .I3(hlfa_r_0[19]),
        .I4(hlfa_r_0[20]),
        .O(\hlfa_e[4]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \hlfa_e[4]_i_2 
       (.I0(abus[14]),
        .I1(abus[12]),
        .I2(abus[11]),
        .I3(abus[10]),
        .I4(abus[13]),
        .O(\hlfa_e[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000808080008)) 
    \hlfa_e[4]_i_3 
       (.I0(\hlfa_f[12]_i_5_n_0 ),
        .I1(\hlfa_f[7]_i_6_n_0 ),
        .I2(\hlfa_f[14]_i_3_n_0 ),
        .I3(\hlfa_e[4]_i_7_n_0 ),
        .I4(\hlfa_f[14]_i_7_n_0 ),
        .I5(\hlfa_e[4]_i_8_n_0 ),
        .O(\hlfa_e[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \hlfa_e[4]_i_4 
       (.I0(\hlfa_f[14]_i_3_n_0 ),
        .I1(\hlfa_f[14]_i_2_n_0 ),
        .I2(\hlfa_f[15]_i_8_n_0 ),
        .I3(\hlfa_f[12]_i_5_n_0 ),
        .I4(\hlfa_f[13]_i_4_n_0 ),
        .I5(\hlfa_e[4]_i_9_n_0 ),
        .O(\hlfa_e[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8A80)) 
    \hlfa_e[4]_i_5 
       (.I0(\hlfa_f[12]_i_5_n_0 ),
        .I1(\hlfa_e[4]_i_10_n_0 ),
        .I2(\hlfa_f[15]_i_8_n_0 ),
        .I3(\hlfa_e[4]_i_11_n_0 ),
        .I4(\hlfa_f[12]_i_8_n_0 ),
        .I5(\hlfa_e[4]_i_12_n_0 ),
        .O(\hlfa_e[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44F4F888)) 
    \hlfa_e[4]_i_6 
       (.I0(\hlfa_e[4]_i_13_n_0 ),
        .I1(\hlfa_e[0]_i_2_n_0 ),
        .I2(\hlfa_e[4]_i_14_n_0 ),
        .I3(\hlfa_e[4]_i_15_n_0 ),
        .I4(hlfa_r_0[20]),
        .I5(\hlfa_e[4]_i_16_n_0 ),
        .O(\hlfa_e[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF01FEFFFFFFFF)) 
    \hlfa_e[4]_i_7 
       (.I0(hlfa_r_0[19]),
        .I1(hlfa_r_0[18]),
        .I2(hlfa_r_0[17]),
        .I3(hlfa_r_0[20]),
        .I4(\hlfa_f_reg[15]_0 ),
        .I5(p_0_in1_in_0),
        .O(\hlfa_e[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \hlfa_e[4]_i_8 
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_r_0[19]),
        .I2(hlfa_r_0[18]),
        .O(\hlfa_e[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h55555556)) 
    \hlfa_e[4]_i_9 
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_r_0[17]),
        .I2(hlfa_r_0[16]),
        .I3(hlfa_r_0[18]),
        .I4(hlfa_r_0[19]),
        .O(\hlfa_e[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFAEFFFFFFFF)) 
    \hlfa_e[5]_i_1 
       (.I0(hctl_load_b),
        .I1(hlfa_e_difl0_carry_n_7),
        .I2(\hlfa_f_reg[15]_0 ),
        .I3(p_0_in3_in),
        .I4(p_0_in1_in_0),
        .I5(\hlfa_f[15]_i_4_n_0 ),
        .O(\hlfa_e[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08080B08)) 
    \hlfa_e[5]_i_10 
       (.I0(\hlfa_e[5]_i_16_n_0 ),
        .I1(p_0_in11_in),
        .I2(\hlfa_f_reg[12]_2 ),
        .I3(hlfa_e_dif0_carry_n_7),
        .I4(\hlfa_e[5]_i_17_n_0 ),
        .O(\hlfa_e[5]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \hlfa_e[5]_i_11 
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_r_0[19]),
        .O(\hlfa_e[5]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \hlfa_e[5]_i_12 
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_r_0[18]),
        .I2(hlfa_r_0[20]),
        .I3(hlfa_r_0[19]),
        .O(\hlfa_e[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \hlfa_e[5]_i_13 
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_r_0[17]),
        .I2(hlfa_r_0[16]),
        .I3(hlfa_r_0[19]),
        .I4(hlfa_r_0[20]),
        .I5(hlfa_r_0[18]),
        .O(\hlfa_e[5]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h55555556)) 
    \hlfa_e[5]_i_14 
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_r_0[18]),
        .I2(hlfa_r_0[17]),
        .I3(hlfa_r_0[20]),
        .I4(hlfa_r_0[19]),
        .O(\hlfa_e[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h01151515577F7F7F)) 
    \hlfa_e[5]_i_15 
       (.I0(hlfa_r_0[18]),
        .I1(hlfa_r_0[17]),
        .I2(p_0_in11_in),
        .I3(hlfa_r_0[16]),
        .I4(hlfa_e_dif0_carry_n_7),
        .I5(p_0_in14_in),
        .O(\hlfa_e[5]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \hlfa_e[5]_i_16 
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_r_0[17]),
        .I2(hlfa_r_0[19]),
        .I3(hlfa_r_0[20]),
        .I4(hlfa_r_0[18]),
        .O(\hlfa_e[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9555555555555555)) 
    \hlfa_e[5]_i_17 
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_r_0[17]),
        .I2(hlfa_r_0[16]),
        .I3(hlfa_r_0[19]),
        .I4(hlfa_r_0[20]),
        .I5(hlfa_r_0[18]),
        .O(\hlfa_e[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBBBBBB8)) 
    \hlfa_e[5]_i_2 
       (.I0(\hlfa_e[5]_i_3_n_0 ),
        .I1(hctl_load_b),
        .I2(\hlfa_e[5]_i_4_n_0 ),
        .I3(\hlfa_e[5]_i_5_n_0 ),
        .I4(\hlfa_f[15]_i_4_n_0 ),
        .I5(\hlfa_e[5]_i_6_n_0 ),
        .O(\hlfa_e[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h15555555)) 
    \hlfa_e[5]_i_3 
       (.I0(abus[14]),
        .I1(abus[12]),
        .I2(abus[11]),
        .I3(abus[10]),
        .I4(abus[13]),
        .O(\hlfa_e[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC5C5C0CCC5C5CFCC)) 
    \hlfa_e[5]_i_4 
       (.I0(\hlfa_e[5]_i_7_n_0 ),
        .I1(\hlfa_e[5]_i_8_n_0 ),
        .I2(\hlfa_f_reg[12]_2 ),
        .I3(\hlfa_e_reg[3]_0 ),
        .I4(\ccmd_f_reg[1]_0 ),
        .I5(\hlfa_e[5]_i_9_n_0 ),
        .O(\hlfa_e[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h888A8A8888888888)) 
    \hlfa_e[5]_i_5 
       (.I0(\hlfa_f[12]_i_5_n_0 ),
        .I1(\hlfa_e[5]_i_10_n_0 ),
        .I2(\hlfa_f[15]_i_8_n_0 ),
        .I3(hlfa_r_0[21]),
        .I4(\hlfa_e[5]_i_11_n_0 ),
        .I5(\hlfa_f[12]_i_8_n_0 ),
        .O(\hlfa_e[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7774777477740704)) 
    \hlfa_e[5]_i_6 
       (.I0(\hlfa_e[5]_i_12_n_0 ),
        .I1(\hlfa_f[14]_i_7_n_0 ),
        .I2(\hlfa_f[14]_i_8_n_0 ),
        .I3(\hlfa_e[5]_i_13_n_0 ),
        .I4(p_0_in3_in),
        .I5(\hlfa_e[5]_i_14_n_0 ),
        .O(\hlfa_e[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA9AA99A9)) 
    \hlfa_e[5]_i_7 
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_r_0[20]),
        .I2(\hlfa_e_reg[3]_0 ),
        .I3(\hlfa_e[5]_i_15_n_0 ),
        .I4(hlfa_r_0[19]),
        .O(\hlfa_e[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0444444440000000)) 
    \hlfa_e[5]_i_8 
       (.I0(\hlfa_f_reg[12]_2 ),
        .I1(p_0_in14_in),
        .I2(hlfa_r_0[19]),
        .I3(hlfa_r_0[20]),
        .I4(hlfa_r_0[18]),
        .I5(hlfa_r_0[21]),
        .O(\hlfa_e[5]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h95)) 
    \hlfa_e[5]_i_9 
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_r_0[19]),
        .I2(hlfa_r_0[20]),
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
        .O({hlfa_e_dif0_carry__0_n_6,\ccmd_f_reg[1]_0 }),
        .S({\<const0> ,\<const0> ,hlfa_e_dif0_carry__0_i_2_n_0,hlfa_e_dif0_carry__0_i_3_n_0}));
  LUT6 #(
    .INIT(64'hFF7FFFFF00001000)) 
    hlfa_e_dif0_carry__0_i_1
       (.I0(ccmd_f[1]),
        .I1(ccmd_f[2]),
        .I2(\ccmd_f_reg[4]_0 ),
        .I3(ccmd_f[3]),
        .I4(ccmd_f[0]),
        .I5(\hlfb_e_reg[5]_i_9_0 [4]),
        .O(hlfa_e_dif0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hA955A9A9A9A9A9A9)) 
    hlfa_e_dif0_carry__0_i_2
       (.I0(hlfa_r_0[21]),
        .I1(\hlfb_e_reg[5]_i_9_0 [5]),
        .I2(hlfa_e_dif0_carry__0_i_4_n_0),
        .I3(hlfa_e_dif0_carry__0_i_5_n_0),
        .I4(ccmd_f[1]),
        .I5(\ccmd_f_reg[4]_0 ),
        .O(hlfa_e_dif0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    hlfa_e_dif0_carry__0_i_3
       (.I0(hlfa_e_dif0_carry__0_i_1_n_0),
        .I1(hlfa_r_0[20]),
        .O(hlfa_e_dif0_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h00001000)) 
    hlfa_e_dif0_carry__0_i_4
       (.I0(ccmd_f[1]),
        .I1(ccmd_f[2]),
        .I2(\ccmd_f_reg[4]_0 ),
        .I3(ccmd_f[3]),
        .I4(ccmd_f[0]),
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
    .INIT(64'hFF7FEFFF00000000)) 
    hlfa_e_dif0_carry_i_3
       (.I0(ccmd_f[1]),
        .I1(ccmd_f[2]),
        .I2(\ccmd_f_reg[4]_0 ),
        .I3(ccmd_f[3]),
        .I4(ccmd_f[0]),
        .I5(\hlfb_e_reg[5]_i_9_0 [1]),
        .O(hlfa_e_dif0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hFF7FEFFF00000000)) 
    hlfa_e_dif0_carry_i_4
       (.I0(ccmd_f[1]),
        .I1(ccmd_f[2]),
        .I2(\ccmd_f_reg[4]_0 ),
        .I3(ccmd_f[3]),
        .I4(ccmd_f[0]),
        .I5(\hlfb_e_reg[5]_i_9_0 [0]),
        .O(hlfa_e_dif0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    hlfa_e_dif0_carry_i_5
       (.I0(\hlfb_e_reg[5]_i_9_0 [3]),
        .I1(hlfa_e_dif0_carry_i_9_n_0),
        .I2(hlfa_r_0[19]),
        .O(hlfa_e_dif0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    hlfa_e_dif0_carry_i_6
       (.I0(\hlfb_e_reg[5]_i_9_0 [2]),
        .I1(hlfa_e_dif0_carry_i_9_n_0),
        .I2(hlfa_r_0[18]),
        .O(hlfa_e_dif0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h87)) 
    hlfa_e_dif0_carry_i_7
       (.I0(\hlfb_e_reg[5]_i_9_0 [1]),
        .I1(hlfa_e_dif0_carry_i_9_n_0),
        .I2(hlfa_r_0[17]),
        .O(hlfa_e_dif0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h87)) 
    hlfa_e_dif0_carry_i_8
       (.I0(\hlfb_e_reg[5]_i_9_0 [0]),
        .I1(hlfa_e_dif0_carry_i_9_n_0),
        .I2(hlfa_r_0[16]),
        .O(hlfa_e_dif0_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hDFFFFFBF)) 
    hlfa_e_dif0_carry_i_9
       (.I0(ccmd_f[0]),
        .I1(ccmd_f[3]),
        .I2(\ccmd_f_reg[4]_0 ),
        .I3(ccmd_f[2]),
        .I4(ccmd_f[1]),
        .O(hlfa_e_dif0_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfa_e_difl0_carry
       (.CI(\<const0> ),
        .CO({hlfa_e_difl0_carry_n_0,hlfa_e_difl0_carry_n_1,hlfa_e_difl0_carry_n_2,hlfa_e_difl0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI(hlfa_r_0[19:16]),
        .O({hlfa_e_difl0_carry_n_4,p_0_in3_in,p_0_in1_in_0,hlfa_e_difl0_carry_n_7}),
        .S({hlfa_e_difl0_carry_i_1_n_0,hlfa_e_difl0_carry_i_2_n_0,hlfa_e_difl0_carry_i_3_n_0,hlfa_e_difl0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfa_e_difl0_carry__0
       (.CI(hlfa_e_difl0_carry_n_0),
        .CO(hlfa_e_difl0_carry__0_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,hlfa_r_0[20]}),
        .O({hlfa_e_difl0_carry__0_n_6,hlfa_e_difl0_carry__0_n_7}),
        .S({\<const0> ,\<const0> ,hlfa_e_difl0_carry__0_i_1_n_0,hlfa_e_difl0_carry__0_i_2_n_0}));
  LUT6 #(
    .INIT(64'hA955A9A9A9A9A9A9)) 
    hlfa_e_difl0_carry__0_i_1
       (.I0(hlfa_r_0[21]),
        .I1(\hlfb_e_reg[5]_i_9_0 [5]),
        .I2(hlfa_e_dif0_carry__0_i_4_n_0),
        .I3(hlfa_e_dif0_carry__0_i_5_n_0),
        .I4(ccmd_f[1]),
        .I5(\ccmd_f_reg[4]_0 ),
        .O(hlfa_e_difl0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    hlfa_e_difl0_carry__0_i_2
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_e_dif0_carry__0_i_1_n_0),
        .O(hlfa_e_difl0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    hlfa_e_difl0_carry_i_1
       (.I0(hlfa_r_0[19]),
        .I1(\hlfb_e_reg[5]_i_9_0 [3]),
        .I2(hlfa_e_dif0_carry_i_9_n_0),
        .O(hlfa_e_difl0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    hlfa_e_difl0_carry_i_2
       (.I0(hlfa_r_0[18]),
        .I1(\hlfb_e_reg[5]_i_9_0 [2]),
        .I2(hlfa_e_dif0_carry_i_9_n_0),
        .O(hlfa_e_difl0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h95)) 
    hlfa_e_difl0_carry_i_3
       (.I0(hlfa_r_0[17]),
        .I1(\hlfb_e_reg[5]_i_9_0 [1]),
        .I2(hlfa_e_dif0_carry_i_9_n_0),
        .O(hlfa_e_difl0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h95)) 
    hlfa_e_difl0_carry_i_4
       (.I0(hlfa_r_0[16]),
        .I1(\hlfb_e_reg[5]_i_9_0 [0]),
        .I2(hlfa_e_dif0_carry_i_9_n_0),
        .O(hlfa_e_difl0_carry_i_4_n_0));
  FDRE \hlfa_e_reg[0] 
       (.C(clk),
        .CE(\hlfa_e[5]_i_1_n_0 ),
        .D(\hlfa_e[0]_i_1_n_0 ),
        .Q(hlfa_r_0[16]),
        .R(SR));
  FDRE \hlfa_e_reg[1] 
       (.C(clk),
        .CE(\hlfa_e[5]_i_1_n_0 ),
        .D(\hlfa_e[1]_i_1_n_0 ),
        .Q(hlfa_r_0[17]),
        .R(SR));
  FDRE \hlfa_e_reg[2] 
       (.C(clk),
        .CE(\hlfa_e[5]_i_1_n_0 ),
        .D(\hlfa_e[2]_i_1_n_0 ),
        .Q(hlfa_r_0[18]),
        .R(SR));
  FDRE \hlfa_e_reg[3] 
       (.C(clk),
        .CE(\hlfa_e[5]_i_1_n_0 ),
        .D(\hlfa_e[3]_i_1_n_0 ),
        .Q(hlfa_r_0[19]),
        .R(SR));
  FDRE \hlfa_e_reg[4] 
       (.C(clk),
        .CE(\hlfa_e[5]_i_1_n_0 ),
        .D(\hlfa_e[4]_i_1_n_0 ),
        .Q(hlfa_r_0[20]),
        .R(SR));
  FDRE \hlfa_e_reg[5] 
       (.C(clk),
        .CE(\hlfa_e[5]_i_1_n_0 ),
        .D(\hlfa_e[5]_i_2_n_0 ),
        .Q(hlfa_r_0[21]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    \hlfa_f[0]_i_1 
       (.I0(\hlfa_f[0]_i_2_n_0 ),
        .I1(\hlfa_f[0]_i_3_n_0 ),
        .I2(\hlfa_f[11]_i_2_n_0 ),
        .I3(\hlfa_f[0]_i_4_n_0 ),
        .I4(\hlfa_f[3]_i_3_n_0 ),
        .I5(\hlfa_f[0]_i_5_n_0 ),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hEFEEAAAA)) 
    \hlfa_f[0]_i_2 
       (.I0(\hlfa_e[0]_i_2_n_0 ),
        .I1(hlfa_r_0[8]),
        .I2(\hlfa_f[0]_i_6_n_0 ),
        .I3(hlfa_e_dif0_carry_i_9_n_0),
        .I4(\hlfa_f[3]_i_3_n_0 ),
        .O(\hlfa_f[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCB8FCB8FC888888)) 
    \hlfa_f[0]_i_3 
       (.I0(hlfa_r_0[2]),
        .I1(\hlfa_f[15]_i_8_n_0 ),
        .I2(\hlfa_f[14]_i_2_n_0 ),
        .I3(hlfa_e_dif0_carry_i_9_n_0),
        .I4(hlfa_r_0[0]),
        .I5(hlfa_r_0[1]),
        .O(\hlfa_f[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    \hlfa_f[0]_i_4 
       (.I0(hlfa_r_0[4]),
        .I1(hlfa_r_0[0]),
        .I2(hlfa_r_0[1]),
        .I3(hlfa_r_0[2]),
        .I4(hlfa_r_0[3]),
        .I5(hlfa_e_dif0_carry_i_9_n_0),
        .O(\hlfa_f[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFD0FFFF)) 
    \hlfa_f[0]_i_5 
       (.I0(hlfa_e_dif0_carry_i_9_n_0),
        .I1(\hlfa_f[0]_i_7_n_0 ),
        .I2(\hlfa_e[0]_i_2_n_0 ),
        .I3(hctl_load_b),
        .I4(rst_n),
        .O(\hlfa_f[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \hlfa_f[0]_i_6 
       (.I0(\hlfa_f[0]_i_8_n_0 ),
        .I1(hlfa_r_0[7]),
        .I2(hlfa_r_0[6]),
        .I3(hlfa_r_0[5]),
        .I4(hlfa_r_0[4]),
        .O(\hlfa_f[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \hlfa_f[0]_i_7 
       (.I0(\hlfa_f[0]_i_6_n_0 ),
        .I1(\hlfa_f[0]_i_9_n_0 ),
        .I2(hlfa_r_0[15]),
        .I3(hlfa_r_0[14]),
        .I4(hlfa_r_0[12]),
        .I5(hlfa_r_0[13]),
        .O(\hlfa_f[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \hlfa_f[0]_i_8 
       (.I0(hlfa_r_0[0]),
        .I1(hlfa_r_0[1]),
        .I2(hlfa_r_0[2]),
        .I3(hlfa_r_0[3]),
        .O(\hlfa_f[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \hlfa_f[0]_i_9 
       (.I0(hlfa_r_0[8]),
        .I1(hlfa_r_0[10]),
        .I2(hlfa_r_0[9]),
        .I3(hlfa_r_0[11]),
        .O(\hlfa_f[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40454040)) 
    \hlfa_f[10]_i_1 
       (.I0(\hlfa_f_reg[8]_1 ),
        .I1(hlfa_r_0[14]),
        .I2(\hlfa_f[11]_i_2_n_0 ),
        .I3(\hlfa_f[10]_i_2_n_0 ),
        .I4(\hlfa_f[10]_i_3_n_0 ),
        .I5(\hlfa_f_reg[10]_0 ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'h0000000200020002)) 
    \hlfa_f[10]_i_2 
       (.I0(\hlfa_f[10]_i_5_n_0 ),
        .I1(\hlfa_f[15]_i_8_n_0 ),
        .I2(\hlfa_f[14]_i_2_n_0 ),
        .I3(\hlfa_f[14]_i_3_n_0 ),
        .I4(hlfa_r_0[9]),
        .I5(\hlfa_f[13]_i_4_n_0 ),
        .O(\hlfa_f[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0DD0000F0DD)) 
    \hlfa_f[10]_i_3 
       (.I0(\hlfa_f[14]_i_3_n_0 ),
        .I1(hlfa_r_0[2]),
        .I2(hlfa_r_0[11]),
        .I3(\hlfa_f[14]_i_2_n_0 ),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(hlfa_r_0[12]),
        .O(\hlfa_f[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF4F7F7F7)) 
    \hlfa_f[10]_i_5 
       (.I0(hlfa_r_0[6]),
        .I1(p_0_in3_in),
        .I2(\hlfa_f_reg[15]_0 ),
        .I3(hlfa_r_0[8]),
        .I4(p_0_in1_in_0),
        .O(\hlfa_f[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF080B0808)) 
    \hlfa_f[11]_i_1 
       (.I0(hlfa_r_0[15]),
        .I1(\hlfa_f[11]_i_2_n_0 ),
        .I2(\hlfa_f_reg[8]_1 ),
        .I3(\hlfa_f[11]_i_4_n_0 ),
        .I4(\hlfa_f[11]_i_5_n_0 ),
        .I5(\hlfa_f_reg[11]_0 ),
        .O(p_1_in[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[11]_i_2 
       (.I0(p_0_in14_in),
        .I1(\hlfa_f_reg[12]_2 ),
        .O(\hlfa_f[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200020002)) 
    \hlfa_f[11]_i_4 
       (.I0(\hlfa_f[11]_i_7_n_0 ),
        .I1(\hlfa_f[15]_i_8_n_0 ),
        .I2(\hlfa_f[14]_i_2_n_0 ),
        .I3(\hlfa_f[14]_i_3_n_0 ),
        .I4(\hlfa_f[13]_i_4_n_0 ),
        .I5(hlfa_r_0[10]),
        .O(\hlfa_f[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0DD0000F0DD)) 
    \hlfa_f[11]_i_5 
       (.I0(\hlfa_f[14]_i_3_n_0 ),
        .I1(hlfa_r_0[3]),
        .I2(hlfa_r_0[12]),
        .I3(\hlfa_f[14]_i_2_n_0 ),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(hlfa_r_0[13]),
        .O(\hlfa_f[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hDDCFDDFF)) 
    \hlfa_f[11]_i_7 
       (.I0(hlfa_r_0[7]),
        .I1(\hlfa_f_reg[15]_0 ),
        .I2(p_0_in1_in_0),
        .I3(p_0_in3_in),
        .I4(hlfa_r_0[9]),
        .O(\hlfa_f[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h75000000FFFFFFFF)) 
    \hlfa_f[12]_i_1 
       (.I0(\hlfa_f[12]_i_2_n_0 ),
        .I1(\hlfa_f[12]_i_3_n_0 ),
        .I2(\hlfa_f[12]_i_4_n_0 ),
        .I3(\hlfa_f[12]_i_5_n_0 ),
        .I4(\hlfa_f_reg[13]_0 ),
        .I5(\hlfa_f_reg[12]_1 ),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'h0700077707770777)) 
    \hlfa_f[12]_i_2 
       (.I0(\hlfa_f[12]_i_7_n_0 ),
        .I1(hlfa_r_0[13]),
        .I2(hlfa_r_0[14]),
        .I3(\hlfa_f[15]_i_8_n_0 ),
        .I4(hlfa_r_0[4]),
        .I5(\hlfa_f[12]_i_8_n_0 ),
        .O(\hlfa_f[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0035FF35)) 
    \hlfa_f[12]_i_3 
       (.I0(hlfa_r_0[11]),
        .I1(hlfa_r_0[10]),
        .I2(\hlfa_f[14]_i_8_n_0 ),
        .I3(\hlfa_f[14]_i_7_n_0 ),
        .I4(hlfa_r_0[8]),
        .O(\hlfa_f[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \hlfa_f[12]_i_4 
       (.I0(\hlfa_f[15]_i_8_n_0 ),
        .I1(\hlfa_f[14]_i_2_n_0 ),
        .I2(\hlfa_f[14]_i_3_n_0 ),
        .O(\hlfa_f[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hCCCD)) 
    \hlfa_f[12]_i_5 
       (.I0(p_0_in14_in),
        .I1(\hlfa_f_reg[12]_2 ),
        .I2(\hlfa_e_reg[3]_0 ),
        .I3(\ccmd_f_reg[1]_0 ),
        .O(\hlfa_f[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \hlfa_f[12]_i_7 
       (.I0(\hlfa_f_reg[12]_2 ),
        .I1(hlfa_e_dif0_carry_n_7),
        .I2(p_0_in11_in),
        .O(\hlfa_f[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h54005454)) 
    \hlfa_f[12]_i_8 
       (.I0(\hlfa_f_reg[15]_0 ),
        .I1(hlfa_e_difl0_carry_n_4),
        .I2(hlfa_e_difl0_carry__0_n_7),
        .I3(\hlfa_f_reg[12]_2 ),
        .I4(hlfa_e_dif0_carry_n_7),
        .O(\hlfa_f[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \hlfa_f[12]_i_9 
       (.I0(abus[12]),
        .I1(abus[13]),
        .I2(abus[14]),
        .I3(abus[10]),
        .I4(abus[11]),
        .I5(rst_n),
        .O(abus_12_sn_1));
  LUT6 #(
    .INIT(64'hAA888A888A888A88)) 
    \hlfa_f[13]_i_1 
       (.I0(\hlfa_f_reg[13]_0 ),
        .I1(\hlfa_f[13]_i_2_n_0 ),
        .I2(\hlfa_f[13]_i_3_n_0 ),
        .I3(\hlfa_f[15]_i_4_n_0 ),
        .I4(\hlfa_f[13]_i_4_n_0 ),
        .I5(hlfa_r_0[12]),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'h888888A888888888)) 
    \hlfa_f[13]_i_2 
       (.I0(\hlfa_f[12]_i_5_n_0 ),
        .I1(\hlfa_f[13]_i_5_n_0 ),
        .I2(\hlfa_f[14]_i_3_n_0 ),
        .I3(\hlfa_f[14]_i_2_n_0 ),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(hlfa_r_0[5]),
        .O(\hlfa_f[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h77770777)) 
    \hlfa_f[13]_i_3 
       (.I0(\hlfa_f[14]_i_7_n_0 ),
        .I1(hlfa_r_0[9]),
        .I2(hlfa_r_0[11]),
        .I3(\hlfa_f[14]_i_8_n_0 ),
        .I4(p_0_in3_in),
        .O(\hlfa_f[13]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hCD)) 
    \hlfa_f[13]_i_4 
       (.I0(p_0_in1_in_0),
        .I1(\hlfa_f_reg[15]_0 ),
        .I2(p_0_in3_in),
        .O(\hlfa_f[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A0C00)) 
    \hlfa_f[13]_i_5 
       (.I0(hlfa_r_0[15]),
        .I1(hlfa_r_0[14]),
        .I2(\hlfa_f_reg[12]_2 ),
        .I3(hlfa_e_dif0_carry_n_7),
        .I4(p_0_in11_in),
        .O(\hlfa_f[13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000EAEF)) 
    \hlfa_f[14]_i_1 
       (.I0(\hlfa_f[14]_i_2_n_0 ),
        .I1(hlfa_r_0[6]),
        .I2(\hlfa_f[14]_i_3_n_0 ),
        .I3(\hlfa_f[14]_i_4_n_0 ),
        .I4(\hlfa_f[14]_i_5_n_0 ),
        .O(p_1_in[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[14]_i_2 
       (.I0(hlfa_e_dif0_carry_n_7),
        .I1(\hlfa_f_reg[12]_2 ),
        .O(\hlfa_f[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \hlfa_f[14]_i_3 
       (.I0(hlfa_e_difl0_carry__0_n_7),
        .I1(hlfa_e_difl0_carry_n_4),
        .I2(\hlfa_f_reg[15]_0 ),
        .O(\hlfa_f[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h47444777)) 
    \hlfa_f[14]_i_4 
       (.I0(hlfa_r_0[10]),
        .I1(\hlfa_f[14]_i_7_n_0 ),
        .I2(hlfa_r_0[12]),
        .I3(\hlfa_f[14]_i_8_n_0 ),
        .I4(hlfa_r_0[13]),
        .O(\hlfa_f[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBFBFFFF)) 
    \hlfa_f[14]_i_5 
       (.I0(\hlfa_f[15]_i_8_n_0 ),
        .I1(\hlfa_f[12]_i_5_n_0 ),
        .I2(\hlfa_f[14]_i_2_n_0 ),
        .I3(hlfa_r_0[15]),
        .I4(rst_n),
        .I5(hctl_load_b),
        .O(\hlfa_f[14]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[14]_i_7 
       (.I0(p_0_in3_in),
        .I1(\hlfa_f_reg[15]_0 ),
        .O(\hlfa_f[14]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[14]_i_8 
       (.I0(p_0_in1_in_0),
        .I1(\hlfa_f_reg[15]_0 ),
        .O(\hlfa_f[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3332FFFFFFFFFFFF)) 
    \hlfa_f[15]_i_1 
       (.I0(hlfa_e_difl0_carry_n_7),
        .I1(\hlfa_f_reg[15]_0 ),
        .I2(p_0_in3_in),
        .I3(p_0_in1_in_0),
        .I4(\hlfa_f[15]_i_4_n_0 ),
        .I5(\hlfa_f_reg[13]_0 ),
        .O(\hlfa_f[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40444040)) 
    \hlfa_f[15]_i_2 
       (.I0(hctl_load_b),
        .I1(rst_n),
        .I2(\hlfa_f[15]_i_6_n_0 ),
        .I3(\hlfa_f[15]_i_7_n_0 ),
        .I4(hlfa_r_0[14]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0100)) 
    \hlfa_f[15]_i_4 
       (.I0(\hlfa_f[14]_i_3_n_0 ),
        .I1(\hlfa_f[14]_i_2_n_0 ),
        .I2(\hlfa_f[15]_i_8_n_0 ),
        .I3(\hlfa_f[12]_i_5_n_0 ),
        .O(\hlfa_f[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000A300000000)) 
    \hlfa_f[15]_i_6 
       (.I0(hlfa_r_0[7]),
        .I1(\hlfa_f[15]_i_9_n_0 ),
        .I2(\hlfa_f[14]_i_3_n_0 ),
        .I3(\hlfa_f[14]_i_2_n_0 ),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(\hlfa_f[12]_i_5_n_0 ),
        .O(\hlfa_f[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \hlfa_f[15]_i_7 
       (.I0(\hlfa_f[13]_i_4_n_0 ),
        .I1(\hlfa_f[12]_i_5_n_0 ),
        .I2(\hlfa_f[15]_i_8_n_0 ),
        .I3(\hlfa_f[14]_i_2_n_0 ),
        .I4(\hlfa_f[14]_i_3_n_0 ),
        .O(\hlfa_f[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[15]_i_8 
       (.I0(p_0_in11_in),
        .I1(\hlfa_f_reg[12]_2 ),
        .O(\hlfa_f[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF4F7F7F7)) 
    \hlfa_f[15]_i_9 
       (.I0(hlfa_r_0[11]),
        .I1(p_0_in3_in),
        .I2(\hlfa_f_reg[15]_0 ),
        .I3(hlfa_r_0[13]),
        .I4(p_0_in1_in_0),
        .O(\hlfa_f[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4440444444404440)) 
    \hlfa_f[1]_i_1 
       (.I0(hctl_load_b),
        .I1(rst_n),
        .I2(\hlfa_f[1]_i_2_n_0 ),
        .I3(\hlfa_f[1]_i_3_n_0 ),
        .I4(\hlfa_f[15]_i_7_n_0 ),
        .I5(hlfa_r_0[0]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h0000FF0800000808)) 
    \hlfa_f[1]_i_2 
       (.I0(hlfa_r_0[5]),
        .I1(\hlfa_f[11]_i_2_n_0 ),
        .I2(\hlfa_e_reg[3]_0 ),
        .I3(\hlfa_f[3]_i_3_n_0 ),
        .I4(\ccmd_f_reg[1]_0 ),
        .I5(hlfa_r_0[9]),
        .O(\hlfa_f[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA800080)) 
    \hlfa_f[1]_i_3 
       (.I0(\hlfa_f[12]_i_5_n_0 ),
        .I1(\hlfa_f[14]_i_2_n_0 ),
        .I2(hlfa_r_0[2]),
        .I3(\hlfa_f[15]_i_8_n_0 ),
        .I4(hlfa_r_0[3]),
        .O(\hlfa_f[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5540FFFF55405540)) 
    \hlfa_f[2]_i_1 
       (.I0(\hlfa_f[3]_i_2_n_0 ),
        .I1(hlfa_r_0[10]),
        .I2(\hlfa_f[3]_i_3_n_0 ),
        .I3(\hlfa_f[2]_i_2_n_0 ),
        .I4(\hlfa_f_reg[12]_1 ),
        .I5(abus[0]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h00000000FFFF04F7)) 
    \hlfa_f[2]_i_2 
       (.I0(\hlfa_f[2]_i_3_n_0 ),
        .I1(\hlfa_f[7]_i_6_n_0 ),
        .I2(\hlfa_f[14]_i_3_n_0 ),
        .I3(\hlfa_f[2]_i_4_n_0 ),
        .I4(\hlfa_f[11]_i_2_n_0 ),
        .I5(\hlfa_f[2]_i_5_n_0 ),
        .O(\hlfa_f[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h5F5F5355)) 
    \hlfa_f[2]_i_3 
       (.I0(hlfa_r_0[1]),
        .I1(hlfa_r_0[0]),
        .I2(\hlfa_f_reg[15]_0 ),
        .I3(p_0_in1_in_0),
        .I4(p_0_in3_in),
        .O(\hlfa_f[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF4F7F7F7)) 
    \hlfa_f[2]_i_4 
       (.I0(hlfa_r_0[4]),
        .I1(p_0_in11_in),
        .I2(\hlfa_f_reg[12]_2 ),
        .I3(hlfa_r_0[3]),
        .I4(hlfa_e_dif0_carry_n_7),
        .O(\hlfa_f[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00BA)) 
    \hlfa_f[2]_i_5 
       (.I0(\hlfa_e_reg[3]_0 ),
        .I1(hlfa_r_0[6]),
        .I2(p_0_in14_in),
        .I3(\hlfa_f_reg[12]_2 ),
        .O(\hlfa_f[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5540FFFF55405540)) 
    \hlfa_f[3]_i_1 
       (.I0(\hlfa_f[3]_i_2_n_0 ),
        .I1(hlfa_r_0[11]),
        .I2(\hlfa_f[3]_i_3_n_0 ),
        .I3(\hlfa_f[3]_i_4_n_0 ),
        .I4(\hlfa_f_reg[12]_1 ),
        .I5(abus[1]),
        .O(p_1_in[3]));
  LUT3 #(
    .INIT(8'hEF)) 
    \hlfa_f[3]_i_2 
       (.I0(\hlfa_e[0]_i_2_n_0 ),
        .I1(hctl_load_b),
        .I2(rst_n),
        .O(\hlfa_f[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[3]_i_3 
       (.I0(\hlfa_e_reg[3]_0 ),
        .I1(\hlfa_f_reg[12]_2 ),
        .O(\hlfa_f[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF04F7)) 
    \hlfa_f[3]_i_4 
       (.I0(\hlfa_f[3]_i_5_n_0 ),
        .I1(\hlfa_f[7]_i_6_n_0 ),
        .I2(\hlfa_f[14]_i_3_n_0 ),
        .I3(\hlfa_f[3]_i_6_n_0 ),
        .I4(\hlfa_f[11]_i_2_n_0 ),
        .I5(\hlfa_f[3]_i_7_n_0 ),
        .O(\hlfa_f[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h5F5F5355)) 
    \hlfa_f[3]_i_5 
       (.I0(hlfa_r_0[2]),
        .I1(hlfa_r_0[1]),
        .I2(\hlfa_f_reg[15]_0 ),
        .I3(p_0_in1_in_0),
        .I4(p_0_in3_in),
        .O(\hlfa_f[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF4F7F7F7)) 
    \hlfa_f[3]_i_6 
       (.I0(hlfa_r_0[5]),
        .I1(p_0_in11_in),
        .I2(\hlfa_f_reg[12]_2 ),
        .I3(hlfa_r_0[4]),
        .I4(hlfa_e_dif0_carry_n_7),
        .O(\hlfa_f[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00BA)) 
    \hlfa_f[3]_i_7 
       (.I0(\hlfa_e_reg[3]_0 ),
        .I1(hlfa_r_0[7]),
        .I2(p_0_in14_in),
        .I3(\hlfa_f_reg[12]_2 ),
        .O(\hlfa_f[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4445FFFF44454445)) 
    \hlfa_f[4]_i_1 
       (.I0(\hlfa_f[4]_i_2_n_0 ),
        .I1(\hlfa_f[4]_i_3_n_0 ),
        .I2(\hlfa_f[4]_i_4_n_0 ),
        .I3(\hlfa_f[4]_i_5_n_0 ),
        .I4(\hlfa_f_reg[12]_1 ),
        .I5(abus[2]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hFDFFFDFD)) 
    \hlfa_f[4]_i_2 
       (.I0(rst_n),
        .I1(hctl_load_b),
        .I2(\hlfa_e[0]_i_2_n_0 ),
        .I3(hlfa_r_0[12]),
        .I4(\hlfa_f[3]_i_3_n_0 ),
        .O(\hlfa_f[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \hlfa_f[4]_i_3 
       (.I0(\hlfa_f[3]_i_3_n_0 ),
        .I1(hlfa_r_0[8]),
        .I2(\hlfa_f[11]_i_2_n_0 ),
        .O(\hlfa_f[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAABABABAAAAAAAAA)) 
    \hlfa_f[4]_i_4 
       (.I0(\hlfa_f[11]_i_2_n_0 ),
        .I1(\hlfa_f[14]_i_3_n_0 ),
        .I2(\hlfa_f[7]_i_6_n_0 ),
        .I3(\hlfa_f[14]_i_7_n_0 ),
        .I4(hlfa_r_0[0]),
        .I5(\hlfa_f[4]_i_6_n_0 ),
        .O(\hlfa_f[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h333355F0)) 
    \hlfa_f[4]_i_5 
       (.I0(hlfa_r_0[5]),
        .I1(hlfa_r_0[6]),
        .I2(\hlfa_f[14]_i_3_n_0 ),
        .I3(\hlfa_f[14]_i_2_n_0 ),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .O(\hlfa_f[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h5F5F5355)) 
    \hlfa_f[4]_i_6 
       (.I0(hlfa_r_0[3]),
        .I1(hlfa_r_0[2]),
        .I2(\hlfa_f_reg[15]_0 ),
        .I3(p_0_in1_in_0),
        .I4(p_0_in3_in),
        .O(\hlfa_f[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55550100)) 
    \hlfa_f[5]_i_1 
       (.I0(\hlfa_f[5]_i_2_n_0 ),
        .I1(\hlfa_f[11]_i_2_n_0 ),
        .I2(\hlfa_f[5]_i_3_n_0 ),
        .I3(\hlfa_f[5]_i_4_n_0 ),
        .I4(\hlfa_f[5]_i_5_n_0 ),
        .I5(\hlfa_f_reg[5]_1 ),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hFDFFFDFD)) 
    \hlfa_f[5]_i_2 
       (.I0(rst_n),
        .I1(hctl_load_b),
        .I2(\hlfa_e[0]_i_2_n_0 ),
        .I3(hlfa_r_0[13]),
        .I4(\hlfa_f[3]_i_3_n_0 ),
        .O(\hlfa_f[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0BBB0FFF0BBB0F00)) 
    \hlfa_f[5]_i_3 
       (.I0(p_0_in11_in),
        .I1(hlfa_r_0[6]),
        .I2(hlfa_r_0[7]),
        .I3(\hlfa_f[15]_i_8_n_0 ),
        .I4(\hlfa_f[14]_i_2_n_0 ),
        .I5(\hlfa_f[14]_i_3_n_0 ),
        .O(\hlfa_f[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \hlfa_f[5]_i_4 
       (.I0(\hlfa_f[5]_i_7_n_0 ),
        .I1(\hlfa_f[15]_i_8_n_0 ),
        .I2(\hlfa_f[14]_i_2_n_0 ),
        .I3(\hlfa_f[14]_i_3_n_0 ),
        .I4(\hlfa_f[5]_i_8_n_0 ),
        .I5(hlfa_r_0[3]),
        .O(\hlfa_f[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \hlfa_f[5]_i_5 
       (.I0(\hlfa_f[3]_i_3_n_0 ),
        .I1(\hlfa_f[11]_i_2_n_0 ),
        .I2(hlfa_r_0[9]),
        .O(\hlfa_f[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF808FB08)) 
    \hlfa_f[5]_i_7 
       (.I0(hlfa_r_0[1]),
        .I1(p_0_in3_in),
        .I2(\hlfa_f_reg[15]_0 ),
        .I3(hlfa_r_0[4]),
        .I4(p_0_in1_in_0),
        .O(\hlfa_f[5]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \hlfa_f[5]_i_8 
       (.I0(\hlfa_f_reg[15]_0 ),
        .I1(p_0_in1_in_0),
        .I2(p_0_in3_in),
        .O(\hlfa_f[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4445FFFF44454445)) 
    \hlfa_f[6]_i_1 
       (.I0(\hlfa_f[6]_i_2_n_0 ),
        .I1(\hlfa_f[6]_i_3_n_0 ),
        .I2(\hlfa_f[6]_i_4_n_0 ),
        .I3(\hlfa_f[6]_i_5_n_0 ),
        .I4(\hlfa_f_reg[12]_1 ),
        .I5(abus[4]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hFDFFFDFD)) 
    \hlfa_f[6]_i_2 
       (.I0(rst_n),
        .I1(hctl_load_b),
        .I2(\hlfa_e[0]_i_2_n_0 ),
        .I3(hlfa_r_0[14]),
        .I4(\hlfa_f[3]_i_3_n_0 ),
        .O(\hlfa_f[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \hlfa_f[6]_i_3 
       (.I0(\hlfa_f[3]_i_3_n_0 ),
        .I1(hlfa_r_0[10]),
        .I2(\hlfa_f[11]_i_2_n_0 ),
        .O(\hlfa_f[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAABABABAAAAAAAAA)) 
    \hlfa_f[6]_i_4 
       (.I0(\hlfa_f[11]_i_2_n_0 ),
        .I1(\hlfa_f[14]_i_3_n_0 ),
        .I2(\hlfa_f[7]_i_6_n_0 ),
        .I3(\hlfa_f[14]_i_7_n_0 ),
        .I4(hlfa_r_0[2]),
        .I5(\hlfa_f[6]_i_6_n_0 ),
        .O(\hlfa_f[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h333355F0)) 
    \hlfa_f[6]_i_5 
       (.I0(hlfa_r_0[7]),
        .I1(hlfa_r_0[8]),
        .I2(\hlfa_f[14]_i_3_n_0 ),
        .I3(\hlfa_f[14]_i_2_n_0 ),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .O(\hlfa_f[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h5F5F5355)) 
    \hlfa_f[6]_i_6 
       (.I0(hlfa_r_0[5]),
        .I1(hlfa_r_0[4]),
        .I2(\hlfa_f_reg[15]_0 ),
        .I3(p_0_in1_in_0),
        .I4(p_0_in3_in),
        .O(\hlfa_f[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4445FFFF44454445)) 
    \hlfa_f[7]_i_1 
       (.I0(\hlfa_f[7]_i_2_n_0 ),
        .I1(\hlfa_f[7]_i_3_n_0 ),
        .I2(\hlfa_f[7]_i_4_n_0 ),
        .I3(\hlfa_f[7]_i_5_n_0 ),
        .I4(\hlfa_f_reg[12]_1 ),
        .I5(abus[5]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hFFFFFF4F)) 
    \hlfa_f[7]_i_2 
       (.I0(hlfa_r_0[15]),
        .I1(\hlfa_f[3]_i_3_n_0 ),
        .I2(rst_n),
        .I3(hctl_load_b),
        .I4(\hlfa_e[0]_i_2_n_0 ),
        .O(\hlfa_f[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \hlfa_f[7]_i_3 
       (.I0(\hlfa_f[3]_i_3_n_0 ),
        .I1(hlfa_r_0[11]),
        .I2(\hlfa_f[11]_i_2_n_0 ),
        .O(\hlfa_f[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAABABABAAAAAAAAA)) 
    \hlfa_f[7]_i_4 
       (.I0(\hlfa_f[11]_i_2_n_0 ),
        .I1(\hlfa_f[14]_i_3_n_0 ),
        .I2(\hlfa_f[7]_i_6_n_0 ),
        .I3(\hlfa_f[14]_i_7_n_0 ),
        .I4(hlfa_r_0[3]),
        .I5(\hlfa_f[7]_i_7_n_0 ),
        .O(\hlfa_f[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h003AFF3A)) 
    \hlfa_f[7]_i_5 
       (.I0(\hlfa_f[14]_i_3_n_0 ),
        .I1(hlfa_r_0[8]),
        .I2(\hlfa_f[14]_i_2_n_0 ),
        .I3(\hlfa_f[15]_i_8_n_0 ),
        .I4(hlfa_r_0[9]),
        .O(\hlfa_f[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hCD)) 
    \hlfa_f[7]_i_6 
       (.I0(hlfa_e_dif0_carry_n_7),
        .I1(\hlfa_f_reg[12]_2 ),
        .I2(p_0_in11_in),
        .O(\hlfa_f[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h5F5F5355)) 
    \hlfa_f[7]_i_7 
       (.I0(hlfa_r_0[6]),
        .I1(hlfa_r_0[5]),
        .I2(\hlfa_f_reg[15]_0 ),
        .I3(p_0_in1_in_0),
        .I4(p_0_in3_in),
        .O(\hlfa_f[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40454040)) 
    \hlfa_f[8]_i_1 
       (.I0(\hlfa_f_reg[8]_1 ),
        .I1(hlfa_r_0[12]),
        .I2(\hlfa_f[11]_i_2_n_0 ),
        .I3(\hlfa_f[8]_i_2_n_0 ),
        .I4(\hlfa_f[8]_i_3_n_0 ),
        .I5(\hlfa_f_reg[8]_2 ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h0000000200020002)) 
    \hlfa_f[8]_i_2 
       (.I0(\hlfa_f[8]_i_5_n_0 ),
        .I1(\hlfa_f[15]_i_8_n_0 ),
        .I2(\hlfa_f[14]_i_2_n_0 ),
        .I3(\hlfa_f[14]_i_3_n_0 ),
        .I4(hlfa_r_0[7]),
        .I5(\hlfa_f[13]_i_4_n_0 ),
        .O(\hlfa_f[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD0D0000FD0D)) 
    \hlfa_f[8]_i_3 
       (.I0(\hlfa_f[14]_i_3_n_0 ),
        .I1(hlfa_r_0[0]),
        .I2(\hlfa_f[14]_i_2_n_0 ),
        .I3(hlfa_r_0[9]),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(hlfa_r_0[10]),
        .O(\hlfa_f[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF4F7F7F7)) 
    \hlfa_f[8]_i_5 
       (.I0(hlfa_r_0[4]),
        .I1(p_0_in3_in),
        .I2(\hlfa_f_reg[15]_0 ),
        .I3(hlfa_r_0[6]),
        .I4(p_0_in1_in_0),
        .O(\hlfa_f[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40454040)) 
    \hlfa_f[9]_i_1 
       (.I0(\hlfa_f_reg[8]_1 ),
        .I1(hlfa_r_0[13]),
        .I2(\hlfa_f[11]_i_2_n_0 ),
        .I3(\hlfa_f[9]_i_2_n_0 ),
        .I4(\hlfa_f[9]_i_3_n_0 ),
        .I5(\hlfa_f_reg[9]_1 ),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'h0000000200020002)) 
    \hlfa_f[9]_i_2 
       (.I0(\hlfa_f[9]_i_5_n_0 ),
        .I1(\hlfa_f[15]_i_8_n_0 ),
        .I2(\hlfa_f[14]_i_2_n_0 ),
        .I3(\hlfa_f[14]_i_3_n_0 ),
        .I4(\hlfa_f[13]_i_4_n_0 ),
        .I5(hlfa_r_0[8]),
        .O(\hlfa_f[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0DD0000F0DD)) 
    \hlfa_f[9]_i_3 
       (.I0(\hlfa_f[14]_i_3_n_0 ),
        .I1(hlfa_r_0[1]),
        .I2(hlfa_r_0[10]),
        .I3(\hlfa_f[14]_i_2_n_0 ),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(hlfa_r_0[11]),
        .O(\hlfa_f[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF4F7F7F7)) 
    \hlfa_f[9]_i_5 
       (.I0(hlfa_r_0[5]),
        .I1(p_0_in3_in),
        .I2(\hlfa_f_reg[15]_0 ),
        .I3(hlfa_r_0[7]),
        .I4(p_0_in1_in_0),
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
        .D(p_1_in[2]),
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
        .D(p_1_in[7]),
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
    .INIT(64'hFFFFFFFF9090FF90)) 
    \hlfb_e[0]_i_1 
       (.I0(\hlfb_e_reg[5]_i_9_0 [0]),
        .I1(\stat_reg[0] ),
        .I2(\hlfa_e_reg[3]_2 ),
        .I3(hctl_load_b),
        .I4(bbus[0]),
        .I5(\hlfb_e[0]_i_3_n_0 ),
        .O(\bbus[12] [0]));
  LUT6 #(
    .INIT(64'h000000000000E000)) 
    \hlfb_e[0]_i_2 
       (.I0(O[2]),
        .I1(O[1]),
        .I2(hctl_ccmd_int_reg),
        .I3(\hlfb_f_reg[0]_0 [0]),
        .I4(\hlfb_f_reg[0]_0 [1]),
        .I5(\hlfb_f_reg[0]_0 [2]),
        .O(\stat_reg[0] ));
  LUT5 #(
    .INIT(32'h00CA00C0)) 
    \hlfb_e[0]_i_3 
       (.I0(\hlfb_e_reg[5]_i_9_0 [0]),
        .I1(hlfa_r_0[16]),
        .I2(\hlfa_e_reg[4]_0 ),
        .I3(\hlfb_f_reg[0] ),
        .I4(O[3]),
        .O(\hlfb_e[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF28FFFFFF28FF28)) 
    \hlfb_e[2]_i_1 
       (.I0(hctl_load_b),
        .I1(\hlfb_e_reg[2] ),
        .I2(bbus[1]),
        .I3(\hlfb_e[2]_i_3_n_0 ),
        .I4(\hlfb_e_reg[2]_0 ),
        .I5(\hlfa_e_reg[3]_2 ),
        .O(\bbus[12] [1]));
  LUT6 #(
    .INIT(64'h009F009000600060)) 
    \hlfb_e[2]_i_3 
       (.I0(\hlfb_e_reg[2]_1 ),
        .I1(O[2]),
        .I2(\hlfa_e_reg[4]_0 ),
        .I3(\hlfb_f_reg[0] ),
        .I4(O[3]),
        .I5(\hlfb_e_reg[5]_i_9_0 [2]),
        .O(\hlfb_e[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \hlfb_e[3]_i_4 
       (.I0(\hlfb_f_reg[0] ),
        .I1(O[1]),
        .I2(O[2]),
        .O(\stat_reg[2] ));
  LUT6 #(
    .INIT(64'h55FF55FF55FF557D)) 
    \hlfb_e[5]_i_1 
       (.I0(\hlfa_e_reg[3]_2 ),
        .I1(\hlfb_e_reg[5]_i_9_0 [0]),
        .I2(hlfa_r_0[16]),
        .I3(\hlfb_f_reg[0] ),
        .I4(O[2]),
        .I5(O[1]),
        .O(E));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfb_e[5]_i_10 
       (.I0(hlfa_r_0[19]),
        .I1(\hlfb_e_reg[5]_i_9_0 [3]),
        .O(\hlfb_e[5]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfb_e[5]_i_11 
       (.I0(hlfa_r_0[18]),
        .I1(\hlfb_e_reg[5]_i_9_0 [2]),
        .O(\hlfb_e[5]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfb_e[5]_i_12 
       (.I0(hlfa_r_0[17]),
        .I1(\hlfb_e_reg[5]_i_9_0 [1]),
        .O(\hlfb_e[5]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfb_e[5]_i_13 
       (.I0(hlfa_r_0[16]),
        .I1(\hlfb_e_reg[5]_i_9_0 [0]),
        .O(\hlfb_e[5]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfb_e[5]_i_19 
       (.I0(hlfa_r_0[21]),
        .I1(\hlfb_e_reg[5]_i_9_0 [5]),
        .O(\hlfb_e[5]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfb_e[5]_i_20 
       (.I0(hlfa_r_0[20]),
        .I1(\hlfb_e_reg[5]_i_9_0 [4]),
        .O(\hlfb_e[5]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h00F1)) 
    \hlfb_e[5]_i_3 
       (.I0(O[3]),
        .I1(\hlfa_e_reg[4]_0 ),
        .I2(\hlfb_f_reg[0] ),
        .I3(hctl_load_b),
        .O(\hlfa_e_reg[3]_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hlfb_e_reg[5]_i_5 
       (.CI(\<const0> ),
        .CO({\hlfb_e_reg[5]_i_5_n_0 ,\hlfb_e_reg[5]_i_5_n_1 ,\hlfb_e_reg[5]_i_5_n_2 ,\hlfb_e_reg[5]_i_5_n_3 }),
        .CYINIT(\<const1> ),
        .DI(hlfa_r_0[19:16]),
        .O(O),
        .S({\hlfb_e[5]_i_10_n_0 ,\hlfb_e[5]_i_11_n_0 ,\hlfb_e[5]_i_12_n_0 ,\hlfb_e[5]_i_13_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hlfb_e_reg[5]_i_9 
       (.CI(\hlfb_e_reg[5]_i_5_n_0 ),
        .CO(\hlfb_e_reg[5]_i_9_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,hlfa_r_0[20]}),
        .O({\hlfb_e_reg[5]_i_9_n_6 ,\hlfa_e_reg[4]_0 }),
        .S({\<const0> ,\<const0> ,\hlfb_e[5]_i_19_n_0 ,\hlfb_e[5]_i_20_n_0 }));
  LUT4 #(
    .INIT(16'hF0F1)) 
    \hlfb_f[0]_i_4 
       (.I0(\hlfa_e_reg[4]_0 ),
        .I1(O[3]),
        .I2(\hlfb_f_reg[0] ),
        .I3(O[2]),
        .O(\hlfa_e_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hABBAFFFFFFFFFFFF)) 
    \hlfb_f[12]_i_1 
       (.I0(\stat_reg[0] ),
        .I1(\hlfb_f_reg[0] ),
        .I2(hlfa_r_0[16]),
        .I3(\hlfb_e_reg[5]_i_9_0 [0]),
        .I4(\hlfa_e_reg[3]_2 ),
        .I5(rst_n),
        .O(\hlfa_e_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h00000000EAEA00EA)) 
    \hlfb_f[1]_i_1 
       (.I0(\hlfb_f[1]_i_2_n_0 ),
        .I1(hlfc_f_t_carry__2_1[3]),
        .I2(\stat_reg[2] ),
        .I3(\hlfb_f_reg[1] ),
        .I4(hlfc_f_t_carry__2_1[9]),
        .I5(\hlfb_f_reg[1]_0 ),
        .O(rst_n_0[0]));
  LUT6 #(
    .INIT(64'hCCFFCCFFCCF0CC44)) 
    \hlfb_f[1]_i_2 
       (.I0(O[1]),
        .I1(hlfc_f_t_carry__2_1[2]),
        .I2(hlfc_f_t_carry__2_1[5]),
        .I3(\hlfb_f_reg[0] ),
        .I4(O[2]),
        .I5(O[3]),
        .O(\hlfb_f[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h08AA)) 
    \hlfb_f[3]_i_1 
       (.I0(rst_n),
        .I1(\hlfa_e_reg[3]_2 ),
        .I2(\hlfb_f_reg[3] ),
        .I3(\hlfb_f_reg[3]_0 ),
        .O(rst_n_0[1]));
  LUT4 #(
    .INIT(16'h08AA)) 
    \hlfb_f[4]_i_1 
       (.I0(rst_n),
        .I1(\hlfa_e_reg[3]_2 ),
        .I2(\hlfb_f_reg[4] ),
        .I3(\hlfb_f_reg[4]_0 ),
        .O(rst_n_0[2]));
  LUT6 #(
    .INIT(64'h8080800080008000)) 
    \hlfc_e[5]_i_3 
       (.I0(\ccmd_f_reg[1]_1 ),
        .I1(hlfa_r_0[21]),
        .I2(\hlfc_i[22]_i_4_n_0 ),
        .I3(ccmd_f[3]),
        .I4(ccmd_f[0]),
        .I5(ccmd_f[2]),
        .O(\hlfa_e_reg[5]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfc_e[5]_i_5 
       (.I0(hlfa_r_0[21]),
        .I1(\hlfb_e_reg[5]_i_9_0 [5]),
        .O(\hlfc_e[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfc_e[5]_i_6 
       (.I0(hlfa_r_0[20]),
        .I1(\hlfb_e_reg[5]_i_9_0 [4]),
        .O(\hlfc_e[5]_i_6_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hlfc_e_reg[5]_i_4 
       (.CI(\cbus[14]_INST_0_i_54_n_0 ),
        .CO(\hlfc_e_reg[5]_i_4_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,hlfa_r_0[20]}),
        .O(hlfc_e[4:3]),
        .S({\<const0> ,\<const0> ,\hlfc_e[5]_i_5_n_0 ,\hlfc_e[5]_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__0_i_1
       (.I0(hlfa_r_0[7]),
        .I1(hctl_ccmd_add),
        .O(p_0_in1_in[7]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__0_i_2
       (.I0(hlfa_r_0[6]),
        .I1(hctl_ccmd_add),
        .O(p_0_in1_in[6]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__0_i_3
       (.I0(hlfa_r_0[5]),
        .I1(hctl_ccmd_add),
        .O(p_0_in1_in[5]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__0_i_4
       (.I0(hlfa_r_0[4]),
        .I1(hctl_ccmd_add),
        .O(p_0_in1_in[4]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__0_i_5
       (.I0(p_0_in1_in[7]),
        .I1(hlfc_f_t_carry__2_1[7]),
        .I2(hctl_ccmd_add),
        .I3(hctl_ccmd_sub),
        .I4(Q),
        .I5(hlfa_r_0[22]),
        .O(\hlfb_f_reg[7] [3]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__0_i_6
       (.I0(p_0_in1_in[6]),
        .I1(hlfc_f_t_carry__2_1[6]),
        .I2(hctl_ccmd_add),
        .I3(hctl_ccmd_sub),
        .I4(Q),
        .I5(hlfa_r_0[22]),
        .O(\hlfb_f_reg[7] [2]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__0_i_7
       (.I0(p_0_in1_in[5]),
        .I1(hlfc_f_t_carry__2_1[5]),
        .I2(hctl_ccmd_add),
        .I3(hctl_ccmd_sub),
        .I4(Q),
        .I5(hlfa_r_0[22]),
        .O(\hlfb_f_reg[7] [1]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__0_i_8
       (.I0(p_0_in1_in[4]),
        .I1(hlfc_f_t_carry__2_1[4]),
        .I2(hctl_ccmd_add),
        .I3(hctl_ccmd_sub),
        .I4(Q),
        .I5(hlfa_r_0[22]),
        .O(\hlfb_f_reg[7] [0]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__1_i_1
       (.I0(hlfa_r_0[11]),
        .I1(hctl_ccmd_add),
        .O(p_0_in1_in[11]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__1_i_2
       (.I0(hlfa_r_0[10]),
        .I1(hctl_ccmd_add),
        .O(p_0_in1_in[10]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__1_i_3
       (.I0(hlfa_r_0[9]),
        .I1(hctl_ccmd_add),
        .O(p_0_in1_in[9]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__1_i_4
       (.I0(hlfa_r_0[8]),
        .I1(hctl_ccmd_add),
        .O(p_0_in1_in[8]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__1_i_5
       (.I0(p_0_in1_in[11]),
        .I1(hlfc_f_t_carry__2_1[11]),
        .I2(hctl_ccmd_add),
        .I3(hctl_ccmd_sub),
        .I4(Q),
        .I5(hlfa_r_0[22]),
        .O(\hlfb_f_reg[11] [3]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__1_i_6
       (.I0(p_0_in1_in[10]),
        .I1(hlfc_f_t_carry__2_1[10]),
        .I2(hctl_ccmd_add),
        .I3(hctl_ccmd_sub),
        .I4(Q),
        .I5(hlfa_r_0[22]),
        .O(\hlfb_f_reg[11] [2]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__1_i_7
       (.I0(p_0_in1_in[9]),
        .I1(hlfc_f_t_carry__2_1[9]),
        .I2(hctl_ccmd_add),
        .I3(hctl_ccmd_sub),
        .I4(Q),
        .I5(hlfa_r_0[22]),
        .O(\hlfb_f_reg[11] [1]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__1_i_8
       (.I0(p_0_in1_in[8]),
        .I1(hlfc_f_t_carry__2_1[8]),
        .I2(hctl_ccmd_add),
        .I3(hctl_ccmd_sub),
        .I4(Q),
        .I5(hlfa_r_0[22]),
        .O(\hlfb_f_reg[11] [0]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__2_i_1
       (.I0(hlfa_r_0[14]),
        .I1(hctl_ccmd_add),
        .O(p_0_in1_in[14]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__2_i_2
       (.I0(hlfa_r_0[13]),
        .I1(hctl_ccmd_add),
        .O(p_0_in1_in[13]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry__2_i_3
       (.I0(hlfa_r_0[12]),
        .I1(hctl_ccmd_add),
        .O(p_0_in1_in[12]));
  LUT5 #(
    .INIT(32'h69969696)) 
    hlfc_f_t_carry__2_i_4
       (.I0(hlfa_r_0[22]),
        .I1(Q),
        .I2(hctl_ccmd_sub),
        .I3(hctl_ccmd_add),
        .I4(hlfa_r_0[15]),
        .O(\hlfa_i_reg[15]_2 [1]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__2_i_7
       (.I0(p_0_in1_in[12]),
        .I1(hlfc_f_t_carry__2_1[12]),
        .I2(hctl_ccmd_add),
        .I3(hctl_ccmd_sub),
        .I4(Q),
        .I5(hlfa_r_0[22]),
        .O(\hlfa_i_reg[15]_2 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry_i_2
       (.I0(hlfa_r_0[3]),
        .I1(hctl_ccmd_add),
        .O(p_0_in1_in[3]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry_i_3
       (.I0(hlfa_r_0[2]),
        .I1(hctl_ccmd_add),
        .O(p_0_in1_in[2]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry_i_4
       (.I0(hlfa_r_0[1]),
        .I1(hctl_ccmd_add),
        .O(p_0_in1_in[1]));
  LUT2 #(
    .INIT(4'h8)) 
    hlfc_f_t_carry_i_5
       (.I0(hlfa_r_0[0]),
        .I1(hctl_ccmd_add),
        .O(p_0_in1_in[0]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry_i_6
       (.I0(p_0_in1_in[3]),
        .I1(hlfc_f_t_carry__2_1[3]),
        .I2(hctl_ccmd_add),
        .I3(hctl_ccmd_sub),
        .I4(Q),
        .I5(hlfa_r_0[22]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry_i_7
       (.I0(p_0_in1_in[2]),
        .I1(hlfc_f_t_carry__2_1[2]),
        .I2(hctl_ccmd_add),
        .I3(hctl_ccmd_sub),
        .I4(Q),
        .I5(hlfa_r_0[22]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry_i_8
       (.I0(p_0_in1_in[1]),
        .I1(hlfc_f_t_carry__2_1[1]),
        .I2(hctl_ccmd_add),
        .I3(hctl_ccmd_sub),
        .I4(Q),
        .I5(hlfa_r_0[22]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry_i_9
       (.I0(p_0_in1_in[0]),
        .I1(hlfc_f_t_carry__2_1[0]),
        .I2(hctl_ccmd_add),
        .I3(hctl_ccmd_sub),
        .I4(Q),
        .I5(hlfa_r_0[22]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h444F44444F4F4F4F)) 
    \hlfc_i[22]_i_1 
       (.I0(\hlfa_i_reg[15]_0 ),
        .I1(hctl_ccmd_add),
        .I2(\hlfc_i_reg[22] ),
        .I3(\ccmd_f_reg[3]_0 ),
        .I4(\hlfc_i[22]_i_4_n_0 ),
        .I5(\hlfc_i_reg[22]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h8BBBBB8BBBBBBBBB)) 
    \hlfc_i[22]_i_3 
       (.I0(\hlfc_i[22]_i_6_n_0 ),
        .I1(ccmd_f[3]),
        .I2(ccmd_f[0]),
        .I3(hlfa_r_0[22]),
        .I4(ccmd_f[1]),
        .I5(ccmd_f[2]),
        .O(\ccmd_f_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfc_i[22]_i_4 
       (.I0(\ccmd_f_reg[4]_0 ),
        .I1(hctl_ccmd_reg),
        .O(\hlfc_i[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F5D5FFFFF5D5)) 
    \hlfc_i[22]_i_6 
       (.I0(hlfa_r_0[22]),
        .I1(\hlfa_i_reg[14]_1 ),
        .I2(ccmd_f[1]),
        .I3(ccmd_f[2]),
        .I4(ccmd_f[0]),
        .I5(hlfb_r),
        .O(\hlfc_i[22]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hlfc_i[23]_i_1 
       (.I0(hctl_ccmd_add_reg_2),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h0096FF00)) 
    \hlfc_i[24]_i_2 
       (.I0(hlfa_r_0[22]),
        .I1(Q),
        .I2(hctl_ccmd_sub),
        .I3(\hlfc_i_reg[24] ),
        .I4(\hlfa_i_reg[9]_0 ),
        .O(\hlfa_i_reg[15]_1 ));
  LUT6 #(
    .INIT(64'h5575000055750030)) 
    \hlfc_i[24]_i_5 
       (.I0(\hlfc_i[24]_i_6_n_0 ),
        .I1(\hlfa_i_reg[14]_1 ),
        .I2(hctl_ccmd_mul),
        .I3(\hlfc_i_reg[24]_0 ),
        .I4(\hlfa_i_reg[9]_0 ),
        .I5(\hlfc_i_reg[24] ),
        .O(hctl_ccmd_mul_reg));
  LUT5 #(
    .INIT(32'hF3BFBFBF)) 
    \hlfc_i[24]_i_6 
       (.I0(ccmd_f[1]),
        .I1(\hlfc_f_reg[14]_0 ),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[0]),
        .I4(ccmd_f[2]),
        .O(\hlfc_i[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \hlfc_i[25]_i_2 
       (.I0(hctl_ccmd_sub_reg),
        .I1(hctl_ccmd_add),
        .I2(\hlfa_i_reg[14]_0 ),
        .I3(hctl_ccmd_mul),
        .I4(\hlfc_i_reg[25] ),
        .I5(hctl_ccmd_div_reg),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFB0FFB00000DDD0)) 
    \hlfc_i[25]_i_3 
       (.I0(\hlfa_i_reg[14]_1 ),
        .I1(\hlfc_i_reg[24]_0 ),
        .I2(\cbus[5]_INST_0_i_9_n_0 ),
        .I3(\cbus[14]_INST_0_i_31_n_0 ),
        .I4(\hlfc_i_reg[25]_1 ),
        .I5(\hlfc_i_reg[25]_2 ),
        .O(\hlfa_i_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hFF4FFF5FFF4FFFFF)) 
    \hlfc_i[25]_i_5 
       (.I0(\hlfc_i_reg[25]_3 ),
        .I1(\hlfa_i_reg[14]_1 ),
        .I2(hctl_ccmd_div),
        .I3(\hlfc_i_reg[25]_4 ),
        .I4(\cbus[14]_INST_0_i_31_n_0 ),
        .I5(\cbus[5]_INST_0_i_9_n_0 ),
        .O(hctl_ccmd_div_reg));
  LUT4 #(
    .INIT(16'h17C0)) 
    \hlfc_i[25]_i_7 
       (.I0(ccmd_f[1]),
        .I1(ccmd_f[2]),
        .I2(ccmd_f[0]),
        .I3(ccmd_f[3]),
        .O(\ccmd_f_reg[1]_2 ));
  LUT3 #(
    .INIT(8'h01)) 
    \stat[2]_i_2 
       (.I0(hlfa_e_dif0_carry__0_0),
        .I1(\hlfa_e_reg[4]_2 ),
        .I2(hctl_ccmd_int_reg),
        .O(hctl_ccmd_int_reg_0));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \stat[2]_i_4 
       (.I0(hlfa_e_dif0_carry__0_n_6),
        .I1(p_0_in14_in),
        .I2(p_0_in11_in),
        .I3(hlfa_e_dif0_carry_n_7),
        .I4(\hlfa_e_reg[3]_0 ),
        .I5(\ccmd_f_reg[1]_0 ),
        .O(hlfa_e_dif0_carry__0_0));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \stat[2]_i_5 
       (.I0(hlfa_e_difl0_carry__0_n_6),
        .I1(hlfa_e_difl0_carry_n_7),
        .I2(p_0_in3_in),
        .I3(p_0_in1_in_0),
        .I4(hlfa_e_difl0_carry_n_4),
        .I5(hlfa_e_difl0_carry__0_n_7),
        .O(\hlfa_e_reg[4]_2 ));
  LUT6 #(
    .INIT(64'h000000000000FBFF)) 
    \stat[2]_i_6 
       (.I0(O[3]),
        .I1(\stat[2]_i_8_n_0 ),
        .I2(\hlfa_e_reg[4]_0 ),
        .I3(\stat[2]_i_9_n_0 ),
        .I4(\hlfb_e_reg[5]_i_9_n_6 ),
        .I5(hctl_ccmd_int),
        .O(hctl_ccmd_int_reg));
  LUT2 #(
    .INIT(4'h9)) 
    \stat[2]_i_8 
       (.I0(hlfa_r_0[16]),
        .I1(\hlfb_e_reg[5]_i_9_0 [0]),
        .O(\stat[2]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[2]_i_9 
       (.I0(O[1]),
        .I1(O[2]),
        .O(\stat[2]_i_9_n_0 ));
endmodule

module hfpu_hlfb
   (\hlfa_i_reg[15] ,
    \hlfb_i_reg[5]_0 ,
    Q,
    hctl_ccmd_cmp_reg,
    \hlfb_i_reg[5]_1 ,
    \hlfb_f_reg[8]_0 ,
    \hlfb_f_reg[12]_0 ,
    \hlfb_f_reg[9]_0 ,
    \hlfb_f_reg[10]_0 ,
    \hlfb_f_reg[4]_0 ,
    \hlfb_f_reg[5]_0 ,
    \hlfb_f_reg[6]_0 ,
    \hlfb_f_reg[6]_1 ,
    \hlfb_e_reg[0]_0 ,
    \hlfb_e_reg[5]_0 ,
    hlfb_r,
    S,
    .bbus_10_sp_1(bbus_10_sn_1),
    \hlfb_e_reg[0]_1 ,
    hctl_ccmd_div_reg,
    \hlfb_i_reg[11]_0 ,
    \hlfb_i_reg[11]_1 ,
    \hlfb_i_reg[14]_0 ,
    \hlfb_i_reg[12]_0 ,
    \hlfb_i_reg[2]_0 ,
    hfpu_dsp_b,
    \hlfb_e_reg[3]_0 ,
    hlfa_r_0,
    hctl_ccmd_sub,
    \hlfc_i_reg[24] ,
    \cbus[6] ,
    \cbus[6]_0 ,
    hctl_ccmd_cmp,
    \cbus[6]_1 ,
    \hlfb_f_reg[6]_2 ,
    O,
    hctl_load_b,
    bbus,
    \hlfb_e_reg[4]_0 ,
    \hlfb_f_reg[0]_0 ,
    \hlfb_f_reg[0]_1 ,
    \hlfb_e_reg[3]_1 ,
    \hlfb_e_reg[3]_2 ,
    \hlfb_f_reg[9]_1 ,
    \hlfb_f_reg[9]_2 ,
    \hlfb_f_reg[9]_3 ,
    \hlfb_f_reg[10]_1 ,
    \hlfb_f_reg[0]_2 ,
    \hlfb_f_reg[0]_3 ,
    \hlfb_e_reg[3]_3 ,
    \hlfb_e_reg[3]_4 ,
    hctl_ccmd_div,
    hctl_ccmd_mul,
    \hlfc_i_reg[24]_0 ,
    SR,
    E,
    clk,
    D,
    \hlfb_f_reg[0]_4 ,
    \hlfb_f_reg[12]_1 );
  output \hlfa_i_reg[15] ;
  output \hlfb_i_reg[5]_0 ;
  output [0:0]Q;
  output hctl_ccmd_cmp_reg;
  output \hlfb_i_reg[5]_1 ;
  output \hlfb_f_reg[8]_0 ;
  output [12:0]\hlfb_f_reg[12]_0 ;
  output \hlfb_f_reg[9]_0 ;
  output \hlfb_f_reg[10]_0 ;
  output \hlfb_f_reg[4]_0 ;
  output \hlfb_f_reg[5]_0 ;
  output \hlfb_f_reg[6]_0 ;
  output \hlfb_f_reg[6]_1 ;
  output \hlfb_e_reg[0]_0 ;
  output [5:0]\hlfb_e_reg[5]_0 ;
  output [0:0]hlfb_r;
  output [1:0]S;
  output \hlfb_e_reg[0]_1 ;
  output hctl_ccmd_div_reg;
  output \hlfb_i_reg[11]_0 ;
  output \hlfb_i_reg[11]_1 ;
  output \hlfb_i_reg[14]_0 ;
  output \hlfb_i_reg[12]_0 ;
  output \hlfb_i_reg[2]_0 ;
  output [10:0]hfpu_dsp_b;
  output [3:0]\hlfb_e_reg[3]_0 ;
  input [6:0]hlfa_r_0;
  input hctl_ccmd_sub;
  input \hlfc_i_reg[24] ;
  input \cbus[6] ;
  input \cbus[6]_0 ;
  input hctl_ccmd_cmp;
  input \cbus[6]_1 ;
  input \hlfb_f_reg[6]_2 ;
  input [2:0]O;
  input hctl_load_b;
  input [15:0]bbus;
  input \hlfb_e_reg[4]_0 ;
  input \hlfb_f_reg[0]_0 ;
  input \hlfb_f_reg[0]_1 ;
  input \hlfb_e_reg[3]_1 ;
  input \hlfb_e_reg[3]_2 ;
  input \hlfb_f_reg[9]_1 ;
  input \hlfb_f_reg[9]_2 ;
  input \hlfb_f_reg[9]_3 ;
  input \hlfb_f_reg[10]_1 ;
  input \hlfb_f_reg[0]_2 ;
  input \hlfb_f_reg[0]_3 ;
  input [0:0]\hlfb_e_reg[3]_3 ;
  input \hlfb_e_reg[3]_4 ;
  input hctl_ccmd_div;
  input hctl_ccmd_mul;
  input \hlfc_i_reg[24]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input clk;
  input [1:0]D;
  input [0:0]\hlfb_f_reg[0]_4 ;
  input [9:0]\hlfb_f_reg[12]_1 ;
  output bbus_10_sn_1;

  wire \<const0> ;
  wire [1:0]D;
  wire [0:0]E;
  wire [2:0]O;
  wire [0:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire [15:0]bbus;
  wire bbus_10_sn_1;
  wire \cbus[6] ;
  wire \cbus[6]_0 ;
  wire \cbus[6]_1 ;
  wire \cbus[6]_INST_0_i_16_n_0 ;
  wire \cbus[6]_INST_0_i_7_n_0 ;
  wire clk;
  wire hctl_ccmd_cmp;
  wire hctl_ccmd_cmp_reg;
  wire hctl_ccmd_div;
  wire hctl_ccmd_div_reg;
  wire hctl_ccmd_mul;
  wire hctl_ccmd_sub;
  wire hctl_load_b;
  wire [10:0]hfpu_dsp_b;
  wire \hlfa_i_reg[15] ;
  wire [6:0]hlfa_r_0;
  wire \hlfb_e[1]_i_1_n_0 ;
  wire \hlfb_e[1]_i_2_n_0 ;
  wire \hlfb_e[1]_i_3_n_0 ;
  wire \hlfb_e[3]_i_1_n_0 ;
  wire \hlfb_e[3]_i_2_n_0 ;
  wire \hlfb_e[3]_i_3_n_0 ;
  wire \hlfb_e[3]_i_5_n_0 ;
  wire \hlfb_e[4]_i_1_n_0 ;
  wire \hlfb_e[4]_i_2_n_0 ;
  wire \hlfb_e[4]_i_3_n_0 ;
  wire \hlfb_e[4]_i_4_n_0 ;
  wire \hlfb_e[4]_i_5_n_0 ;
  wire \hlfb_e[4]_i_6_n_0 ;
  wire \hlfb_e[4]_i_7_n_0 ;
  wire \hlfb_e[5]_i_14_n_0 ;
  wire \hlfb_e[5]_i_16_n_0 ;
  wire \hlfb_e[5]_i_17_n_0 ;
  wire \hlfb_e[5]_i_18_n_0 ;
  wire \hlfb_e[5]_i_2_n_0 ;
  wire \hlfb_e[5]_i_6_n_0 ;
  wire \hlfb_e[5]_i_7_n_0 ;
  wire \hlfb_e[5]_i_8_n_0 ;
  wire \hlfb_e_reg[0]_0 ;
  wire \hlfb_e_reg[0]_1 ;
  wire [3:0]\hlfb_e_reg[3]_0 ;
  wire \hlfb_e_reg[3]_1 ;
  wire \hlfb_e_reg[3]_2 ;
  wire [0:0]\hlfb_e_reg[3]_3 ;
  wire \hlfb_e_reg[3]_4 ;
  wire \hlfb_e_reg[4]_0 ;
  wire [5:0]\hlfb_e_reg[5]_0 ;
  wire \hlfb_f[0]_i_1_n_0 ;
  wire \hlfb_f[0]_i_2_n_0 ;
  wire \hlfb_f[0]_i_3_n_0 ;
  wire \hlfb_f[0]_i_5_n_0 ;
  wire \hlfb_f[0]_i_6_n_0 ;
  wire \hlfb_f[10]_i_1_n_0 ;
  wire \hlfb_f[9]_i_1_n_0 ;
  wire \hlfb_f_reg[0]_0 ;
  wire \hlfb_f_reg[0]_1 ;
  wire \hlfb_f_reg[0]_2 ;
  wire \hlfb_f_reg[0]_3 ;
  wire [0:0]\hlfb_f_reg[0]_4 ;
  wire \hlfb_f_reg[10]_0 ;
  wire \hlfb_f_reg[10]_1 ;
  wire [12:0]\hlfb_f_reg[12]_0 ;
  wire [9:0]\hlfb_f_reg[12]_1 ;
  wire \hlfb_f_reg[4]_0 ;
  wire \hlfb_f_reg[5]_0 ;
  wire \hlfb_f_reg[6]_0 ;
  wire \hlfb_f_reg[6]_1 ;
  wire \hlfb_f_reg[6]_2 ;
  wire \hlfb_f_reg[8]_0 ;
  wire \hlfb_f_reg[9]_0 ;
  wire \hlfb_f_reg[9]_1 ;
  wire \hlfb_f_reg[9]_2 ;
  wire \hlfb_f_reg[9]_3 ;
  wire \hlfb_i_reg[11]_0 ;
  wire \hlfb_i_reg[11]_1 ;
  wire \hlfb_i_reg[12]_0 ;
  wire \hlfb_i_reg[14]_0 ;
  wire \hlfb_i_reg[2]_0 ;
  wire \hlfb_i_reg[5]_0 ;
  wire \hlfb_i_reg[5]_1 ;
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
  wire [0:0]hlfb_r;
  wire \hlfc_i[25]_i_9_n_0 ;
  wire \hlfc_i_reg[24] ;
  wire \hlfc_i_reg[24]_0 ;
  wire [4:0]p_0_in;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cbus[14]_INST_0_i_37 
       (.I0(\hlfb_i_reg_n_0_[5] ),
        .I1(\hlfb_i_reg_n_0_[1] ),
        .I2(\hlfb_i_reg_n_0_[9] ),
        .I3(\hlfb_i_reg_n_0_[2] ),
        .I4(\cbus[6]_INST_0_i_16_n_0 ),
        .I5(\hlfb_i_reg[14]_0 ),
        .O(\hlfb_i_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \cbus[14]_INST_0_i_38 
       (.I0(\hlfc_i_reg[24] ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[4]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\hlfb_i_reg[12]_0 ));
  LUT5 #(
    .INIT(32'hBEEB5555)) 
    \cbus[15]_INST_0_i_11 
       (.I0(\hlfb_i_reg[5]_0 ),
        .I1(hlfa_r_0[6]),
        .I2(Q),
        .I3(hctl_ccmd_sub),
        .I4(\hlfc_i_reg[24] ),
        .O(\hlfa_i_reg[15] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cbus[5]_INST_0_i_10 
       (.I0(\cbus[6]_INST_0_i_16_n_0 ),
        .I1(\hlfb_i_reg_n_0_[2] ),
        .I2(\hlfb_i_reg_n_0_[9] ),
        .I3(\hlfb_i_reg_n_0_[1] ),
        .I4(\hlfb_i_reg_n_0_[5] ),
        .O(\hlfb_i_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFC20000)) 
    \cbus[6]_INST_0_i_1 
       (.I0(\cbus[6] ),
        .I1(\hlfb_i_reg[5]_1 ),
        .I2(\cbus[6]_0 ),
        .I3(\cbus[6]_INST_0_i_7_n_0 ),
        .I4(hctl_ccmd_cmp),
        .I5(\cbus[6]_1 ),
        .O(hctl_ccmd_cmp_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cbus[6]_INST_0_i_16 
       (.I0(\hlfb_i_reg_n_0_[8] ),
        .I1(\hlfb_i_reg_n_0_[4] ),
        .I2(\hlfb_i_reg_n_0_[0] ),
        .I3(\hlfb_i_reg_n_0_[7] ),
        .I4(\hlfb_i_reg_n_0_[3] ),
        .I5(\hlfb_i_reg_n_0_[6] ),
        .O(\cbus[6]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cbus[6]_INST_0_i_17 
       (.I0(p_0_in[4]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .I4(p_0_in[0]),
        .O(\hlfb_i_reg[14]_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \cbus[6]_INST_0_i_5 
       (.I0(\hlfb_i_reg_n_0_[5] ),
        .I1(\hlfb_i_reg_n_0_[1] ),
        .I2(\hlfb_i_reg_n_0_[9] ),
        .I3(\hlfb_i_reg_n_0_[2] ),
        .I4(\cbus[6]_INST_0_i_16_n_0 ),
        .I5(\hlfb_i_reg[14]_0 ),
        .O(\hlfb_i_reg[5]_1 ));
  LUT5 #(
    .INIT(32'h40040440)) 
    \cbus[6]_INST_0_i_7 
       (.I0(\hlfb_i_reg[5]_0 ),
        .I1(\hlfc_i_reg[24] ),
        .I2(hctl_ccmd_sub),
        .I3(Q),
        .I4(hlfa_r_0[6]),
        .O(\cbus[6]_INST_0_i_7_n_0 ));
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
    .INIT(64'hFF28FFFFFF28FF28)) 
    \hlfb_e[1]_i_1 
       (.I0(hctl_load_b),
        .I1(bbus[10]),
        .I2(bbus[11]),
        .I3(\hlfb_e[1]_i_2_n_0 ),
        .I4(\hlfb_e[1]_i_3_n_0 ),
        .I5(\hlfb_e_reg[4]_0 ),
        .O(\hlfb_e[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6696AAAA66960000)) 
    \hlfb_e[1]_i_2 
       (.I0(\hlfb_e_reg[5]_0 [1]),
        .I1(O[0]),
        .I2(\hlfb_e_reg[5]_0 [0]),
        .I3(hlfa_r_0[0]),
        .I4(\hlfb_f_reg[0]_2 ),
        .I5(\hlfb_f_reg[0]_3 ),
        .O(\hlfb_e[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h95959A99)) 
    \hlfb_e[1]_i_3 
       (.I0(\hlfb_e_reg[5]_0 [1]),
        .I1(\hlfb_e_reg[5]_0 [0]),
        .I2(\hlfb_f_reg[6]_2 ),
        .I3(O[0]),
        .I4(O[1]),
        .O(\hlfb_e[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfb_e[2]_i_2 
       (.I0(bbus[10]),
        .I1(bbus[11]),
        .O(bbus_10_sn_1));
  LUT6 #(
    .INIT(64'h87F087F087C38787)) 
    \hlfb_e[2]_i_4 
       (.I0(\hlfb_e_reg[5]_0 [0]),
        .I1(\hlfb_e_reg[5]_0 [1]),
        .I2(\hlfb_e_reg[5]_0 [2]),
        .I3(\hlfb_f_reg[6]_2 ),
        .I4(O[0]),
        .I5(O[1]),
        .O(\hlfb_e_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hF220)) 
    \hlfb_e[2]_i_5 
       (.I0(\hlfb_e_reg[5]_0 [0]),
        .I1(hlfa_r_0[0]),
        .I2(O[0]),
        .I3(\hlfb_e_reg[5]_0 [1]),
        .O(\hlfb_e_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFBEAAAAAAAAAA)) 
    \hlfb_e[3]_i_1 
       (.I0(\hlfb_e[3]_i_2_n_0 ),
        .I1(\hlfb_e_reg[5]_0 [3]),
        .I2(\hlfb_e[3]_i_3_n_0 ),
        .I3(\hlfb_e_reg[3]_1 ),
        .I4(\hlfb_e[3]_i_5_n_0 ),
        .I5(\hlfb_e_reg[4]_0 ),
        .O(\hlfb_e[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF06040904)) 
    \hlfb_e[3]_i_2 
       (.I0(\hlfb_e_reg[5]_0 [3]),
        .I1(O[2]),
        .I2(\hlfb_f_reg[6]_2 ),
        .I3(\hlfb_e_reg[3]_3 ),
        .I4(\hlfb_e[4]_i_4_n_0 ),
        .I5(\hlfb_e_reg[3]_4 ),
        .O(\hlfb_e[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfb_e[3]_i_3 
       (.I0(\hlfb_e_reg[5]_0 [1]),
        .I1(\hlfb_e_reg[5]_0 [2]),
        .O(\hlfb_e[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0BB03AB03AB03AB0)) 
    \hlfb_e[3]_i_5 
       (.I0(\hlfb_e_reg[3]_2 ),
        .I1(\hlfb_f_reg[9]_1 ),
        .I2(\hlfb_e_reg[5]_0 [3]),
        .I3(\hlfb_e_reg[5]_0 [2]),
        .I4(\hlfb_e_reg[5]_0 [0]),
        .I5(\hlfb_e_reg[5]_0 [1]),
        .O(\hlfb_e[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEAAEFFFFEAAEEAAE)) 
    \hlfb_e[4]_i_1 
       (.I0(\hlfb_e[4]_i_2_n_0 ),
        .I1(hctl_load_b),
        .I2(\hlfb_e[5]_i_6_n_0 ),
        .I3(bbus[14]),
        .I4(\hlfb_e[4]_i_3_n_0 ),
        .I5(\hlfb_e_reg[4]_0 ),
        .O(\hlfb_e[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C0403080700080C)) 
    \hlfb_e[4]_i_2 
       (.I0(\hlfb_e[4]_i_4_n_0 ),
        .I1(\hlfb_e_reg[3]_3 ),
        .I2(\hlfb_f_reg[6]_2 ),
        .I3(O[2]),
        .I4(\hlfb_e_reg[5]_0 [4]),
        .I5(\hlfb_e_reg[5]_0 [3]),
        .O(\hlfb_e[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F07774F0F04474)) 
    \hlfb_e[4]_i_3 
       (.I0(\hlfb_e[4]_i_5_n_0 ),
        .I1(O[1]),
        .I2(\hlfb_e[4]_i_6_n_0 ),
        .I3(O[0]),
        .I4(\hlfb_f_reg[6]_2 ),
        .I5(\hlfb_e[4]_i_7_n_0 ),
        .O(\hlfb_e[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h150115157F577F7F)) 
    \hlfb_e[4]_i_4 
       (.I0(\hlfb_e_reg[5]_0 [2]),
        .I1(\hlfb_e_reg[5]_0 [1]),
        .I2(O[0]),
        .I3(hlfa_r_0[0]),
        .I4(\hlfb_e_reg[5]_0 [0]),
        .I5(O[1]),
        .O(\hlfb_e[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \hlfb_e[4]_i_5 
       (.I0(\hlfb_e_reg[5]_0 [4]),
        .I1(\hlfb_e_reg[5]_0 [3]),
        .I2(\hlfb_e_reg[5]_0 [2]),
        .O(\hlfb_e[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \hlfb_e[4]_i_6 
       (.I0(\hlfb_e_reg[5]_0 [4]),
        .I1(\hlfb_e_reg[5]_0 [2]),
        .I2(\hlfb_e_reg[5]_0 [3]),
        .I3(\hlfb_e_reg[5]_0 [0]),
        .I4(\hlfb_e_reg[5]_0 [1]),
        .O(\hlfb_e[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9555)) 
    \hlfb_e[4]_i_7 
       (.I0(\hlfb_e_reg[5]_0 [4]),
        .I1(\hlfb_e_reg[5]_0 [3]),
        .I2(\hlfb_e_reg[5]_0 [1]),
        .I3(\hlfb_e_reg[5]_0 [2]),
        .O(\hlfb_e[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h555565A665A6AAAA)) 
    \hlfb_e[5]_i_14 
       (.I0(\hlfb_e_reg[5]_0 [5]),
        .I1(\hlfb_e_reg[5]_0 [3]),
        .I2(\hlfb_e[4]_i_4_n_0 ),
        .I3(O[2]),
        .I4(\hlfb_e_reg[5]_0 [4]),
        .I5(\hlfb_e_reg[3]_3 ),
        .O(\hlfb_e[5]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hlfb_e[5]_i_16 
       (.I0(\hlfb_e_reg[5]_0 [5]),
        .I1(\hlfb_e_reg[5]_0 [2]),
        .I2(\hlfb_e_reg[5]_0 [3]),
        .I3(\hlfb_e_reg[5]_0 [4]),
        .O(\hlfb_e[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \hlfb_e[5]_i_17 
       (.I0(\hlfb_e_reg[5]_0 [5]),
        .I1(\hlfb_e_reg[5]_0 [4]),
        .I2(\hlfb_e_reg[5]_0 [3]),
        .I3(\hlfb_e_reg[5]_0 [2]),
        .I4(\hlfb_e_reg[5]_0 [0]),
        .I5(\hlfb_e_reg[5]_0 [1]),
        .O(\hlfb_e[5]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \hlfb_e[5]_i_18 
       (.I0(\hlfb_e_reg[5]_0 [5]),
        .I1(\hlfb_e_reg[5]_0 [1]),
        .I2(\hlfb_e_reg[5]_0 [2]),
        .I3(\hlfb_e_reg[5]_0 [3]),
        .I4(\hlfb_e_reg[5]_0 [4]),
        .O(\hlfb_e[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFF02FFFFFF02FF02)) 
    \hlfb_e[5]_i_2 
       (.I0(hctl_load_b),
        .I1(\hlfb_e[5]_i_6_n_0 ),
        .I2(bbus[14]),
        .I3(\hlfb_e[5]_i_7_n_0 ),
        .I4(\hlfb_e[5]_i_8_n_0 ),
        .I5(\hlfb_e_reg[4]_0 ),
        .O(\hlfb_e[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \hlfb_e[5]_i_6 
       (.I0(bbus[12]),
        .I1(bbus[10]),
        .I2(bbus[11]),
        .I3(bbus[13]),
        .O(\hlfb_e[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88B8B8B8B8888888)) 
    \hlfb_e[5]_i_7 
       (.I0(\hlfb_e[5]_i_14_n_0 ),
        .I1(\hlfb_f_reg[0]_2 ),
        .I2(\hlfb_f_reg[0]_3 ),
        .I3(\hlfb_e_reg[5]_0 [3]),
        .I4(\hlfb_e_reg[5]_0 [4]),
        .I5(\hlfb_e_reg[5]_0 [5]),
        .O(\hlfb_e[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h35353F3335353033)) 
    \hlfb_e[5]_i_8 
       (.I0(\hlfb_e[5]_i_16_n_0 ),
        .I1(\hlfb_e[5]_i_17_n_0 ),
        .I2(\hlfb_f_reg[6]_2 ),
        .I3(O[0]),
        .I4(O[1]),
        .I5(\hlfb_e[5]_i_18_n_0 ),
        .O(\hlfb_e[5]_i_8_n_0 ));
  FDRE \hlfb_e_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
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
        .D(D[1]),
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
    .INIT(64'h8AAA8A888AAA8AAA)) 
    \hlfb_f[0]_i_1 
       (.I0(\hlfb_f_reg[0]_0 ),
        .I1(\hlfb_f[0]_i_2_n_0 ),
        .I2(\hlfb_f[0]_i_3_n_0 ),
        .I3(\hlfb_f_reg[0]_1 ),
        .I4(\hlfb_f[0]_i_5_n_0 ),
        .I5(\hlfb_f[0]_i_6_n_0 ),
        .O(\hlfb_f[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \hlfb_f[0]_i_2 
       (.I0(\hlfb_f_reg[0]_2 ),
        .I1(\hlfb_f_reg[12]_0 [10]),
        .I2(\hlfb_f_reg[12]_0 [9]),
        .I3(\hlfb_f_reg[12]_0 [12]),
        .I4(\hlfb_f_reg[12]_0 [11]),
        .O(\hlfb_f[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h11011111)) 
    \hlfb_f[0]_i_3 
       (.I0(\hlfb_f_reg[12]_0 [1]),
        .I1(\hlfb_f_reg[12]_0 [0]),
        .I2(O[0]),
        .I3(\hlfb_f_reg[6]_2 ),
        .I4(\hlfb_f_reg[12]_0 [2]),
        .O(\hlfb_f[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFE0000)) 
    \hlfb_f[0]_i_5 
       (.I0(\hlfb_f_reg[12]_0 [7]),
        .I1(\hlfb_f_reg[12]_0 [6]),
        .I2(\hlfb_f_reg[12]_0 [8]),
        .I3(\hlfb_f_reg[12]_0 [5]),
        .I4(\hlfb_f_reg[0]_2 ),
        .I5(\hlfb_f_reg[0]_3 ),
        .O(\hlfb_f[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \hlfb_f[0]_i_6 
       (.I0(\hlfb_f_reg[12]_0 [4]),
        .I1(\hlfb_f_reg[12]_0 [2]),
        .I2(\hlfb_f_reg[12]_0 [3]),
        .I3(\hlfb_f_reg[12]_0 [0]),
        .I4(\hlfb_f_reg[12]_0 [1]),
        .O(\hlfb_f[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000F222FFFFFFFF)) 
    \hlfb_f[10]_i_1 
       (.I0(\hlfb_f_reg[12]_0 [11]),
        .I1(\hlfb_f_reg[9]_1 ),
        .I2(\hlfb_f_reg[12]_0 [12]),
        .I3(\hlfb_e_reg[3]_1 ),
        .I4(\hlfb_f_reg[9]_2 ),
        .I5(\hlfb_f_reg[10]_1 ),
        .O(\hlfb_f[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFCACCC0C0CACC)) 
    \hlfb_f[2]_i_3 
       (.I0(\hlfb_f_reg[12]_0 [4]),
        .I1(\hlfb_f_reg[12]_0 [3]),
        .I2(\hlfb_f_reg[6]_2 ),
        .I3(O[0]),
        .I4(O[1]),
        .I5(\hlfb_f_reg[12]_0 [6]),
        .O(\hlfb_f_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h303035333F3F3533)) 
    \hlfb_f[3]_i_2 
       (.I0(\hlfb_f_reg[12]_0 [5]),
        .I1(\hlfb_f_reg[12]_0 [4]),
        .I2(\hlfb_f_reg[6]_2 ),
        .I3(O[0]),
        .I4(O[1]),
        .I5(\hlfb_f_reg[12]_0 [7]),
        .O(\hlfb_f_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0305F3F50300F3FF)) 
    \hlfb_f[4]_i_2 
       (.I0(\hlfb_f_reg[12]_0 [6]),
        .I1(\hlfb_f_reg[12]_0 [8]),
        .I2(\hlfb_f_reg[6]_2 ),
        .I3(O[1]),
        .I4(\hlfb_f_reg[12]_0 [5]),
        .I5(O[0]),
        .O(\hlfb_f_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hACACAFAAACACA0AA)) 
    \hlfb_f[5]_i_2 
       (.I0(\hlfb_f_reg[12]_0 [6]),
        .I1(\hlfb_f_reg[12]_0 [9]),
        .I2(\hlfb_f_reg[6]_2 ),
        .I3(O[0]),
        .I4(O[1]),
        .I5(\hlfb_f_reg[12]_0 [7]),
        .O(\hlfb_f_reg[6]_1 ));
  LUT6 #(
    .INIT(64'h0131CDFD0030CFFF)) 
    \hlfb_f[6]_i_2 
       (.I0(\hlfb_f_reg[12]_0 [8]),
        .I1(\hlfb_f_reg[6]_2 ),
        .I2(O[1]),
        .I3(\hlfb_f_reg[12]_0 [10]),
        .I4(\hlfb_f_reg[12]_0 [7]),
        .I5(O[0]),
        .O(\hlfb_f_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h303035333F3F3533)) 
    \hlfb_f[7]_i_2 
       (.I0(\hlfb_f_reg[12]_0 [9]),
        .I1(\hlfb_f_reg[12]_0 [8]),
        .I2(\hlfb_f_reg[6]_2 ),
        .I3(O[0]),
        .I4(O[1]),
        .I5(\hlfb_f_reg[12]_0 [11]),
        .O(\hlfb_f_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h303035333F3F3533)) 
    \hlfb_f[8]_i_2 
       (.I0(\hlfb_f_reg[12]_0 [10]),
        .I1(\hlfb_f_reg[12]_0 [9]),
        .I2(\hlfb_f_reg[6]_2 ),
        .I3(O[0]),
        .I4(O[1]),
        .I5(\hlfb_f_reg[12]_0 [12]),
        .O(\hlfb_f_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h0000F222FFFFFFFF)) 
    \hlfb_f[9]_i_1 
       (.I0(\hlfb_f_reg[12]_0 [10]),
        .I1(\hlfb_f_reg[9]_1 ),
        .I2(\hlfb_f_reg[12]_0 [11]),
        .I3(\hlfb_e_reg[3]_1 ),
        .I4(\hlfb_f_reg[9]_2 ),
        .I5(\hlfb_f_reg[9]_3 ),
        .O(\hlfb_f[9]_i_1_n_0 ));
  FDRE \hlfb_f_reg[0] 
       (.C(clk),
        .CE(\hlfb_f_reg[0]_4 ),
        .D(\hlfb_f[0]_i_1_n_0 ),
        .Q(\hlfb_f_reg[12]_0 [0]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[10] 
       (.C(clk),
        .CE(\hlfb_f_reg[0]_4 ),
        .D(\hlfb_f[10]_i_1_n_0 ),
        .Q(\hlfb_f_reg[12]_0 [10]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[11] 
       (.C(clk),
        .CE(\hlfb_f_reg[0]_4 ),
        .D(\hlfb_f_reg[12]_1 [8]),
        .Q(\hlfb_f_reg[12]_0 [11]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[12] 
       (.C(clk),
        .CE(\hlfb_f_reg[0]_4 ),
        .D(\hlfb_f_reg[12]_1 [9]),
        .Q(\hlfb_f_reg[12]_0 [12]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[1] 
       (.C(clk),
        .CE(\hlfb_f_reg[0]_4 ),
        .D(\hlfb_f_reg[12]_1 [0]),
        .Q(\hlfb_f_reg[12]_0 [1]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[2] 
       (.C(clk),
        .CE(\hlfb_f_reg[0]_4 ),
        .D(\hlfb_f_reg[12]_1 [1]),
        .Q(\hlfb_f_reg[12]_0 [2]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[3] 
       (.C(clk),
        .CE(\hlfb_f_reg[0]_4 ),
        .D(\hlfb_f_reg[12]_1 [2]),
        .Q(\hlfb_f_reg[12]_0 [3]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[4] 
       (.C(clk),
        .CE(\hlfb_f_reg[0]_4 ),
        .D(\hlfb_f_reg[12]_1 [3]),
        .Q(\hlfb_f_reg[12]_0 [4]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[5] 
       (.C(clk),
        .CE(\hlfb_f_reg[0]_4 ),
        .D(\hlfb_f_reg[12]_1 [4]),
        .Q(\hlfb_f_reg[12]_0 [5]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[6] 
       (.C(clk),
        .CE(\hlfb_f_reg[0]_4 ),
        .D(\hlfb_f_reg[12]_1 [5]),
        .Q(\hlfb_f_reg[12]_0 [6]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[7] 
       (.C(clk),
        .CE(\hlfb_f_reg[0]_4 ),
        .D(\hlfb_f_reg[12]_1 [6]),
        .Q(\hlfb_f_reg[12]_0 [7]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[8] 
       (.C(clk),
        .CE(\hlfb_f_reg[0]_4 ),
        .D(\hlfb_f_reg[12]_1 [7]),
        .Q(\hlfb_f_reg[12]_0 [8]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[9] 
       (.C(clk),
        .CE(\hlfb_f_reg[0]_4 ),
        .D(\hlfb_f[9]_i_1_n_0 ),
        .Q(\hlfb_f_reg[12]_0 [9]),
        .R(\<const0> ));
  FDRE \hlfb_i_reg[0] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(bbus[0]),
        .Q(\hlfb_i_reg_n_0_[0] ),
        .R(SR));
  FDRE \hlfb_i_reg[10] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(bbus[10]),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \hlfb_i_reg[11] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(bbus[11]),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE \hlfb_i_reg[12] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(bbus[12]),
        .Q(p_0_in[2]),
        .R(SR));
  FDRE \hlfb_i_reg[13] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(bbus[13]),
        .Q(p_0_in[3]),
        .R(SR));
  FDRE \hlfb_i_reg[14] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(bbus[14]),
        .Q(p_0_in[4]),
        .R(SR));
  FDRE \hlfb_i_reg[15] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(bbus[15]),
        .Q(Q),
        .R(SR));
  FDRE \hlfb_i_reg[1] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(bbus[1]),
        .Q(\hlfb_i_reg_n_0_[1] ),
        .R(SR));
  FDRE \hlfb_i_reg[2] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(bbus[2]),
        .Q(\hlfb_i_reg_n_0_[2] ),
        .R(SR));
  FDRE \hlfb_i_reg[3] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(bbus[3]),
        .Q(\hlfb_i_reg_n_0_[3] ),
        .R(SR));
  FDRE \hlfb_i_reg[4] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(bbus[4]),
        .Q(\hlfb_i_reg_n_0_[4] ),
        .R(SR));
  FDRE \hlfb_i_reg[5] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(bbus[5]),
        .Q(\hlfb_i_reg_n_0_[5] ),
        .R(SR));
  FDRE \hlfb_i_reg[6] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(bbus[6]),
        .Q(\hlfb_i_reg_n_0_[6] ),
        .R(SR));
  FDRE \hlfb_i_reg[7] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(bbus[7]),
        .Q(\hlfb_i_reg_n_0_[7] ),
        .R(SR));
  FDRE \hlfb_i_reg[8] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(bbus[8]),
        .Q(\hlfb_i_reg_n_0_[8] ),
        .R(SR));
  FDRE \hlfb_i_reg[9] 
       (.C(clk),
        .CE(hctl_load_b),
        .D(bbus[9]),
        .Q(\hlfb_i_reg_n_0_[9] ),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    hlfc_e_carry__0_i_1
       (.I0(\hlfb_e_reg[5]_0 [5]),
        .I1(hlfa_r_0[5]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    hlfc_e_carry__0_i_2
       (.I0(\hlfb_e_reg[5]_0 [4]),
        .I1(hlfa_r_0[4]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    hlfc_e_carry_i_1
       (.I0(\hlfb_e_reg[5]_0 [3]),
        .I1(hlfa_r_0[3]),
        .O(\hlfb_e_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    hlfc_e_carry_i_2
       (.I0(\hlfb_e_reg[5]_0 [2]),
        .I1(hlfa_r_0[2]),
        .O(\hlfb_e_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    hlfc_e_carry_i_3
       (.I0(\hlfb_e_reg[5]_0 [1]),
        .I1(hlfa_r_0[1]),
        .O(\hlfb_e_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    hlfc_e_carry_i_4
       (.I0(\hlfb_e_reg[5]_0 [0]),
        .I1(hlfa_r_0[0]),
        .O(\hlfb_e_reg[3]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \hlfc_i[22]_i_7 
       (.I0(Q),
        .I1(hctl_ccmd_sub),
        .O(hlfb_r));
  LUT6 #(
    .INIT(64'h000000E000000000)) 
    \hlfc_i[24]_i_4 
       (.I0(\hlfb_i_reg[11]_0 ),
        .I1(\hlfc_i_reg[24] ),
        .I2(hctl_ccmd_div),
        .I3(hctl_ccmd_mul),
        .I4(\hlfc_i_reg[24]_0 ),
        .I5(\hlfb_i_reg[5]_0 ),
        .O(hctl_ccmd_div_reg));
  LUT5 #(
    .INIT(32'h00000001)) 
    \hlfc_i[25]_i_6 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[4]),
        .I3(p_0_in[3]),
        .I4(p_0_in[2]),
        .O(\hlfb_i_reg[11]_0 ));
  LUT5 #(
    .INIT(32'h77777747)) 
    \hlfc_i[25]_i_8 
       (.I0(\hlfb_i_reg[11]_0 ),
        .I1(\hlfc_i_reg[24]_0 ),
        .I2(\hlfc_i[25]_i_9_n_0 ),
        .I3(\cbus[6]_INST_0_i_16_n_0 ),
        .I4(\hlfb_i_reg[14]_0 ),
        .O(\hlfb_i_reg[11]_1 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \hlfc_i[25]_i_9 
       (.I0(\hlfb_i_reg_n_0_[5] ),
        .I1(\hlfb_i_reg_n_0_[1] ),
        .I2(\hlfb_i_reg_n_0_[9] ),
        .I3(\hlfb_i_reg_n_0_[2] ),
        .O(\hlfc_i[25]_i_9_n_0 ));
endmodule

module hfpu_hmul
   (hlfc_r_hmul,
    hlfa_r_0,
    \cbus[14]_INST_0_i_47 ,
    S);
  output [5:0]hlfc_r_hmul;
  input [4:0]hlfa_r_0;
  input [3:0]\cbus[14]_INST_0_i_47 ;
  input [1:0]S;

  wire \<const0> ;
  wire [1:0]S;
  wire [3:0]\cbus[14]_INST_0_i_47 ;
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
        .S(\cbus[14]_INST_0_i_47 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfc_e_carry__0
       (.CI(hlfc_e_carry_n_0),
        .CO(hlfc_e_carry__0_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,hlfa_r_0[4]}),
        .O(hlfc_r_hmul[5:4]),
        .S({\<const0> ,\<const0> ,S}));
endmodule

module hfpu_norm
   (hlfc_e,
    hctl_ccmd_cmp_reg,
    Q,
    hctl_ccmd_cmp_reg_0,
    hctl_ccmd_cmp_reg_1,
    \hlfc_i_reg[23]_0 ,
    \hlfc_i_reg[25]_0 ,
    \hlfc_i_reg[23]_1 ,
    \hlfc_i_reg[23]_2 ,
    \hlfc_f_reg[13]_0 ,
    \hlfc_f_reg[1]_0 ,
    \hlfc_f_reg[0]_0 ,
    \hlfc_f_reg[14]_0 ,
    \hlfc_f_reg[12]_0 ,
    \hlfc_f_reg[3]_0 ,
    \hfpu_dsp_c[19] ,
    \hfpu_dsp_c[11] ,
    \hlfc_i_reg[23]_3 ,
    \hlfc_i_reg[25]_1 ,
    hctl_ccmd_cmp_reg_2,
    \hlfc_e_reg[1]_0 ,
    \hlfc_f_reg[2]_0 ,
    \hlfc_f_reg[3]_1 ,
    \hlfc_f_reg[4]_0 ,
    \hlfc_f_reg[5]_0 ,
    \hlfc_f_reg[8]_0 ,
    \hlfc_f_reg[10]_0 ,
    hctl_ccmd_cmp_reg_3,
    \hlfc_e_reg[4]_0 ,
    \hlfc_e_reg[3]_0 ,
    \hlfc_i_reg[22]_0 ,
    \hlfc_i_reg[23]_4 ,
    \hlfc_i_reg[23]_5 ,
    \hlfc_i_reg[23]_6 ,
    \hlfc_i_reg[23]_7 ,
    \cbus[7] ,
    hctl_ccmd_cmp,
    \cbus[5] ,
    \cbus[4] ,
    hctl_ccmd_hlf,
    \hlfc_f_reg[2]_1 ,
    \cbus[0] ,
    \cbus[0]_0 ,
    \cbus[10] ,
    D,
    \hlfc_f_reg[2]_2 ,
    \hlfc_f_reg[3]_2 ,
    \hlfc_f_reg[1]_1 ,
    \hlfc_f_reg[8]_1 ,
    \hlfc_f_reg[9]_0 ,
    \hlfc_f_reg[10]_1 ,
    \hlfc_f_reg[12]_1 ,
    \hlfc_f_reg[4]_1 ,
    \hlfc_f_reg[5]_1 ,
    \hlfc_f_reg[7]_0 ,
    \hlfc_f_reg[13]_1 ,
    hfpu_dsp_c,
    hctl_ccmd_reg,
    \cbus[12] ,
    SR,
    E,
    \hlfc_f_reg[15]_0 ,
    clk,
    \hlfc_i_reg[25]_2 ,
    \hlfc_e_reg[5]_0 );
  output [5:0]hlfc_e;
  output hctl_ccmd_cmp_reg;
  output [7:0]Q;
  output hctl_ccmd_cmp_reg_0;
  output hctl_ccmd_cmp_reg_1;
  output \hlfc_i_reg[23]_0 ;
  output [2:0]\hlfc_i_reg[25]_0 ;
  output \hlfc_i_reg[23]_1 ;
  output \hlfc_i_reg[23]_2 ;
  output \hlfc_f_reg[13]_0 ;
  output \hlfc_f_reg[1]_0 ;
  output \hlfc_f_reg[0]_0 ;
  output \hlfc_f_reg[14]_0 ;
  output \hlfc_f_reg[12]_0 ;
  output \hlfc_f_reg[3]_0 ;
  output \hfpu_dsp_c[19] ;
  output \hfpu_dsp_c[11] ;
  output \hlfc_i_reg[23]_3 ;
  output \hlfc_i_reg[25]_1 ;
  output hctl_ccmd_cmp_reg_2;
  output \hlfc_e_reg[1]_0 ;
  output \hlfc_f_reg[2]_0 ;
  output \hlfc_f_reg[3]_1 ;
  output \hlfc_f_reg[4]_0 ;
  output \hlfc_f_reg[5]_0 ;
  output \hlfc_f_reg[8]_0 ;
  output \hlfc_f_reg[10]_0 ;
  output hctl_ccmd_cmp_reg_3;
  output \hlfc_e_reg[4]_0 ;
  output \hlfc_e_reg[3]_0 ;
  output \hlfc_i_reg[22]_0 ;
  output \hlfc_i_reg[23]_4 ;
  output \hlfc_i_reg[23]_5 ;
  output \hlfc_i_reg[23]_6 ;
  output \hlfc_i_reg[23]_7 ;
  input \cbus[7] ;
  input hctl_ccmd_cmp;
  input \cbus[5] ;
  input \cbus[4] ;
  input hctl_ccmd_hlf;
  input \hlfc_f_reg[2]_1 ;
  input \cbus[0] ;
  input \cbus[0]_0 ;
  input \cbus[10] ;
  input [3:0]D;
  input \hlfc_f_reg[2]_2 ;
  input \hlfc_f_reg[3]_2 ;
  input \hlfc_f_reg[1]_1 ;
  input \hlfc_f_reg[8]_1 ;
  input \hlfc_f_reg[9]_0 ;
  input \hlfc_f_reg[10]_1 ;
  input \hlfc_f_reg[12]_1 ;
  input \hlfc_f_reg[4]_1 ;
  input \hlfc_f_reg[5]_1 ;
  input \hlfc_f_reg[7]_0 ;
  input \hlfc_f_reg[13]_1 ;
  input [7:0]hfpu_dsp_c;
  input hctl_ccmd_reg;
  input \cbus[12] ;
  input [0:0]SR;
  input [0:0]E;
  input [4:0]\hlfc_f_reg[15]_0 ;
  input clk;
  input [0:0]\hlfc_i_reg[25]_2 ;
  input [5:0]\hlfc_e_reg[5]_0 ;

  wire \<const0> ;
  wire [3:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire \cbus[0] ;
  wire \cbus[0]_0 ;
  wire \cbus[10] ;
  wire \cbus[10]_INST_0_i_3_n_0 ;
  wire \cbus[10]_INST_0_i_4_n_0 ;
  wire \cbus[12] ;
  wire \cbus[13]_INST_0_i_6_n_0 ;
  wire \cbus[4] ;
  wire \cbus[5] ;
  wire \cbus[7] ;
  wire \cbus[8]_INST_0_i_4_n_0 ;
  wire clk;
  wire crdy_INST_0_i_4_n_0;
  wire hctl_ccmd_cmp;
  wire hctl_ccmd_cmp_reg;
  wire hctl_ccmd_cmp_reg_0;
  wire hctl_ccmd_cmp_reg_1;
  wire hctl_ccmd_cmp_reg_2;
  wire hctl_ccmd_cmp_reg_3;
  wire hctl_ccmd_hlf;
  wire hctl_ccmd_reg;
  wire [7:0]hfpu_dsp_c;
  wire \hfpu_dsp_c[11] ;
  wire \hfpu_dsp_c[19] ;
  wire [5:0]hlfc_e;
  wire hlfc_e0_carry__0_i_1_n_0;
  wire hlfc_e0_carry__0_i_2_n_0;
  wire hlfc_e0_carry__0_i_3_n_0;
  wire hlfc_e0_carry__0_n_3;
  wire hlfc_e0_carry_i_1_n_0;
  wire hlfc_e0_carry_i_2_n_0;
  wire hlfc_e0_carry_i_3_n_0;
  wire hlfc_e0_carry_i_4_n_0;
  wire hlfc_e0_carry_i_5_n_0;
  wire hlfc_e0_carry_i_6_n_0;
  wire hlfc_e0_carry_i_7_n_0;
  wire hlfc_e0_carry_i_8_n_0;
  wire hlfc_e0_carry_n_0;
  wire hlfc_e0_carry_n_1;
  wire hlfc_e0_carry_n_2;
  wire hlfc_e0_carry_n_3;
  wire [5:0]hlfc_e__0;
  wire \hlfc_e_reg[1]_0 ;
  wire \hlfc_e_reg[3]_0 ;
  wire \hlfc_e_reg[4]_0 ;
  wire [5:0]\hlfc_e_reg[5]_0 ;
  wire \hlfc_f[10]_i_1_n_0 ;
  wire \hlfc_f[10]_i_2_n_0 ;
  wire \hlfc_f[10]_i_3_n_0 ;
  wire \hlfc_f[10]_i_4_n_0 ;
  wire \hlfc_f[10]_i_5_n_0 ;
  wire \hlfc_f[10]_i_6_n_0 ;
  wire \hlfc_f[11]_i_3_n_0 ;
  wire \hlfc_f[11]_i_4_n_0 ;
  wire \hlfc_f[12]_i_1_n_0 ;
  wire \hlfc_f[12]_i_2_n_0 ;
  wire \hlfc_f[12]_i_3_n_0 ;
  wire \hlfc_f[12]_i_4_n_0 ;
  wire \hlfc_f[12]_i_5_n_0 ;
  wire \hlfc_f[12]_i_6_n_0 ;
  wire \hlfc_f[12]_i_7_n_0 ;
  wire \hlfc_f[13]_i_1_n_0 ;
  wire \hlfc_f[1]_i_1_n_0 ;
  wire \hlfc_f[1]_i_2_n_0 ;
  wire \hlfc_f[1]_i_3_n_0 ;
  wire \hlfc_f[2]_i_1_n_0 ;
  wire \hlfc_f[2]_i_2_n_0 ;
  wire \hlfc_f[2]_i_3_n_0 ;
  wire \hlfc_f[3]_i_1_n_0 ;
  wire \hlfc_f[3]_i_2_n_0 ;
  wire \hlfc_f[3]_i_3_n_0 ;
  wire \hlfc_f[4]_i_1_n_0 ;
  wire \hlfc_f[4]_i_2_n_0 ;
  wire \hlfc_f[4]_i_3_n_0 ;
  wire \hlfc_f[5]_i_1_n_0 ;
  wire \hlfc_f[5]_i_2_n_0 ;
  wire \hlfc_f[5]_i_3_n_0 ;
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
  wire \hlfc_f[9]_i_1_n_0 ;
  wire \hlfc_f[9]_i_2_n_0 ;
  wire \hlfc_f[9]_i_3_n_0 ;
  wire \hlfc_f[9]_i_4_n_0 ;
  wire \hlfc_f[9]_i_5_n_0 ;
  wire \hlfc_f_reg[0]_0 ;
  wire \hlfc_f_reg[10]_0 ;
  wire \hlfc_f_reg[10]_1 ;
  wire \hlfc_f_reg[12]_0 ;
  wire \hlfc_f_reg[12]_1 ;
  wire \hlfc_f_reg[13]_0 ;
  wire \hlfc_f_reg[13]_1 ;
  wire \hlfc_f_reg[14]_0 ;
  wire [4:0]\hlfc_f_reg[15]_0 ;
  wire \hlfc_f_reg[1]_0 ;
  wire \hlfc_f_reg[1]_1 ;
  wire \hlfc_f_reg[2]_0 ;
  wire \hlfc_f_reg[2]_1 ;
  wire \hlfc_f_reg[2]_2 ;
  wire \hlfc_f_reg[3]_0 ;
  wire \hlfc_f_reg[3]_1 ;
  wire \hlfc_f_reg[3]_2 ;
  wire \hlfc_f_reg[4]_0 ;
  wire \hlfc_f_reg[4]_1 ;
  wire \hlfc_f_reg[5]_0 ;
  wire \hlfc_f_reg[5]_1 ;
  wire \hlfc_f_reg[7]_0 ;
  wire \hlfc_f_reg[8]_0 ;
  wire \hlfc_f_reg[8]_1 ;
  wire \hlfc_f_reg[9]_0 ;
  wire \hlfc_f_reg_n_0_[0] ;
  wire \hlfc_f_reg_n_0_[1] ;
  wire \hlfc_i_reg[22]_0 ;
  wire \hlfc_i_reg[23]_0 ;
  wire \hlfc_i_reg[23]_1 ;
  wire \hlfc_i_reg[23]_2 ;
  wire \hlfc_i_reg[23]_3 ;
  wire \hlfc_i_reg[23]_4 ;
  wire \hlfc_i_reg[23]_5 ;
  wire \hlfc_i_reg[23]_6 ;
  wire \hlfc_i_reg[23]_7 ;
  wire [2:0]\hlfc_i_reg[25]_0 ;
  wire \hlfc_i_reg[25]_1 ;
  wire [0:0]\hlfc_i_reg[25]_2 ;
  wire hlfc_inf;
  wire [9:0]p_0_in;
  wire [3:0]p_1_in;

  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[0]_INST_0_i_1 
       (.I0(p_0_in[0]),
        .I1(\cbus[8]_INST_0_i_4_n_0 ),
        .O(\hlfc_f_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h4040FF4040404040)) 
    \cbus[0]_INST_0_i_2 
       (.I0(\hlfc_i_reg[25]_0 [1]),
        .I1(hctl_ccmd_hlf),
        .I2(p_0_in[0]),
        .I3(\hlfc_f_reg[2]_1 ),
        .I4(\cbus[0] ),
        .I5(\cbus[0]_0 ),
        .O(\hlfc_i_reg[23]_0 ));
  LUT5 #(
    .INIT(32'hFFFF4544)) 
    \cbus[10]_INST_0_i_1 
       (.I0(\cbus[10]_INST_0_i_3_n_0 ),
        .I1(\cbus[0] ),
        .I2(\cbus[10] ),
        .I3(\cbus[0]_0 ),
        .I4(\cbus[10]_INST_0_i_4_n_0 ),
        .O(\hlfc_i_reg[23]_1 ));
  LUT4 #(
    .INIT(16'hE0FF)) 
    \cbus[10]_INST_0_i_3 
       (.I0(\hlfc_i_reg[25]_0 [1]),
        .I1(hlfc_e__0[0]),
        .I2(hctl_ccmd_hlf),
        .I3(hctl_ccmd_reg),
        .O(\cbus[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00101111)) 
    \cbus[10]_INST_0_i_4 
       (.I0(hctl_ccmd_cmp),
        .I1(hctl_ccmd_reg),
        .I2(\hlfc_i_reg[23]_3 ),
        .I3(hlfc_e__0[0]),
        .I4(\hlfc_i_reg[25]_1 ),
        .O(\cbus[10]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBE00FFFF)) 
    \cbus[11]_INST_0_i_3 
       (.I0(\hlfc_i_reg[25]_0 [1]),
        .I1(hlfc_e__0[0]),
        .I2(hlfc_e__0[1]),
        .I3(hctl_ccmd_hlf),
        .I4(hctl_ccmd_reg),
        .O(\hlfc_i_reg[23]_7 ));
  LUT6 #(
    .INIT(64'h1000001011111111)) 
    \cbus[11]_INST_0_i_4 
       (.I0(hctl_ccmd_cmp),
        .I1(hctl_ccmd_reg),
        .I2(\hlfc_i_reg[23]_3 ),
        .I3(hlfc_e__0[0]),
        .I4(hlfc_e__0[1]),
        .I5(\hlfc_i_reg[25]_1 ),
        .O(hctl_ccmd_cmp_reg_2));
  LUT6 #(
    .INIT(64'h88800008AAAAAAAA)) 
    \cbus[12]_INST_0_i_1 
       (.I0(\cbus[12] ),
        .I1(\hlfc_i_reg[23]_3 ),
        .I2(hlfc_e__0[1]),
        .I3(hlfc_e__0[0]),
        .I4(hlfc_e__0[2]),
        .I5(\hlfc_i_reg[25]_1 ),
        .O(\hlfc_e_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hABFE0000FFFFFFFF)) 
    \cbus[12]_INST_0_i_5 
       (.I0(\hlfc_i_reg[25]_0 [1]),
        .I1(hlfc_e__0[1]),
        .I2(hlfc_e__0[0]),
        .I3(hlfc_e__0[2]),
        .I4(hctl_ccmd_hlf),
        .I5(hctl_ccmd_reg),
        .O(\hlfc_i_reg[23]_6 ));
  LUT6 #(
    .INIT(64'hBAEF0000FFFFFFFF)) 
    \cbus[13]_INST_0_i_3 
       (.I0(\hlfc_i_reg[25]_0 [1]),
        .I1(hlfc_e__0[2]),
        .I2(\cbus[13]_INST_0_i_6_n_0 ),
        .I3(hlfc_e__0[3]),
        .I4(hctl_ccmd_hlf),
        .I5(hctl_ccmd_reg),
        .O(\hlfc_i_reg[23]_5 ));
  LUT4 #(
    .INIT(16'h5556)) 
    \cbus[13]_INST_0_i_5 
       (.I0(hlfc_e__0[3]),
        .I1(hlfc_e__0[1]),
        .I2(hlfc_e__0[0]),
        .I3(hlfc_e__0[2]),
        .O(\hlfc_e_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cbus[13]_INST_0_i_6 
       (.I0(hlfc_e__0[1]),
        .I1(hlfc_e__0[0]),
        .O(\cbus[13]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \cbus[14]_INST_0_i_40 
       (.I0(hfpu_dsp_c[2]),
        .I1(hfpu_dsp_c[1]),
        .I2(hfpu_dsp_c[5]),
        .I3(hfpu_dsp_c[0]),
        .O(\hfpu_dsp_c[11] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[14]_INST_0_i_41 
       (.I0(hfpu_dsp_c[6]),
        .I1(hfpu_dsp_c[4]),
        .I2(hfpu_dsp_c[7]),
        .I3(hfpu_dsp_c[3]),
        .O(\hfpu_dsp_c[19] ));
  LUT4 #(
    .INIT(16'hE0FF)) 
    \cbus[14]_INST_0_i_5 
       (.I0(\hlfc_i_reg[25]_0 [1]),
        .I1(\hlfc_e_reg[4]_0 ),
        .I2(hctl_ccmd_hlf),
        .I3(hctl_ccmd_reg),
        .O(\hlfc_i_reg[23]_4 ));
  LUT6 #(
    .INIT(64'h4444444055555555)) 
    \cbus[14]_INST_0_i_7 
       (.I0(\hlfc_i_reg[25]_0 [1]),
        .I1(hlfc_e__0[4]),
        .I2(hlfc_e__0[2]),
        .I3(hlfc_e__0[3]),
        .I4(hlfc_e__0[1]),
        .I5(hlfc_e__0[5]),
        .O(\hlfc_i_reg[23]_3 ));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \cbus[14]_INST_0_i_8 
       (.I0(hlfc_e__0[4]),
        .I1(hlfc_e__0[2]),
        .I2(hlfc_e__0[3]),
        .I3(hlfc_e__0[1]),
        .I4(hlfc_e__0[0]),
        .O(\hlfc_e_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h1011)) 
    \cbus[14]_INST_0_i_9 
       (.I0(\hlfc_i_reg[25]_0 [2]),
        .I1(hlfc_inf),
        .I2(hlfc_e__0[5]),
        .I3(hlfc_e__0[4]),
        .O(\hlfc_i_reg[25]_1 ));
  LUT4 #(
    .INIT(16'hD0FF)) 
    \cbus[15]_INST_0_i_6 
       (.I0(\hlfc_i_reg[25]_0 [0]),
        .I1(\hlfc_i_reg[25]_0 [1]),
        .I2(hctl_ccmd_hlf),
        .I3(hctl_ccmd_reg),
        .O(\hlfc_i_reg[22]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[1]_INST_0_i_1 
       (.I0(Q[0]),
        .I1(\cbus[8]_INST_0_i_4_n_0 ),
        .O(\hlfc_f_reg[3]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[2]_INST_0_i_1 
       (.I0(Q[1]),
        .I1(\cbus[8]_INST_0_i_4_n_0 ),
        .O(\hlfc_f_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[3]_INST_0_i_1 
       (.I0(Q[2]),
        .I1(\cbus[8]_INST_0_i_4_n_0 ),
        .O(\hlfc_f_reg[5]_0 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \cbus[4]_INST_0_i_1 
       (.I0(\cbus[5] ),
        .I1(\cbus[4] ),
        .I2(hctl_ccmd_cmp),
        .I3(\cbus[8]_INST_0_i_4_n_0 ),
        .I4(Q[3]),
        .O(hctl_ccmd_cmp_reg_1));
  LUT4 #(
    .INIT(16'h8F88)) 
    \cbus[5]_INST_0_i_1 
       (.I0(\cbus[5] ),
        .I1(hctl_ccmd_cmp),
        .I2(\cbus[8]_INST_0_i_4_n_0 ),
        .I3(Q[4]),
        .O(hctl_ccmd_cmp_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[6]_INST_0_i_8 
       (.I0(Q[5]),
        .I1(\cbus[8]_INST_0_i_4_n_0 ),
        .O(\hlfc_f_reg[8]_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cbus[7]_INST_0_i_1 
       (.I0(\cbus[7] ),
        .I1(hctl_ccmd_cmp),
        .I2(\cbus[8]_INST_0_i_4_n_0 ),
        .I3(Q[6]),
        .O(hctl_ccmd_cmp_reg));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[8]_INST_0_i_1 
       (.I0(Q[7]),
        .I1(\cbus[8]_INST_0_i_4_n_0 ),
        .O(\hlfc_f_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFDFFFD)) 
    \cbus[8]_INST_0_i_4 
       (.I0(\hlfc_i_reg[23]_3 ),
        .I1(hctl_ccmd_cmp),
        .I2(\hlfc_i_reg[25]_0 [2]),
        .I3(hlfc_inf),
        .I4(hlfc_e__0[5]),
        .I5(hlfc_e__0[4]),
        .O(\cbus[8]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3A0A)) 
    \cbus[9]_INST_0_i_3 
       (.I0(D[3]),
        .I1(\hlfc_i_reg[25]_0 [1]),
        .I2(hctl_ccmd_hlf),
        .I3(p_0_in[9]),
        .O(\hlfc_i_reg[23]_2 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cbus[9]_INST_0_i_4 
       (.I0(hctl_ccmd_cmp),
        .I1(\hlfc_i_reg[25]_0 [2]),
        .I2(\cbus[8]_INST_0_i_4_n_0 ),
        .I3(p_0_in[9]),
        .O(hctl_ccmd_cmp_reg_3));
  LUT5 #(
    .INIT(32'h0000FEFF)) 
    crdy_INST_0_i_2
       (.I0(p_1_in[1]),
        .I1(p_1_in[2]),
        .I2(p_1_in[3]),
        .I3(p_1_in[0]),
        .I4(\hlfc_f_reg[1]_0 ),
        .O(\hlfc_f_reg[13]_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    crdy_INST_0_i_3
       (.I0(crdy_INST_0_i_4_n_0),
        .I1(\hlfc_f_reg_n_0_[1] ),
        .I2(p_0_in[0]),
        .I3(\hlfc_f_reg_n_0_[0] ),
        .I4(Q[4]),
        .I5(\hlfc_f[10]_i_2_n_0 ),
        .O(\hlfc_f_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    crdy_INST_0_i_4
       (.I0(\hlfc_f[12]_i_5_n_0 ),
        .I1(p_0_in[9]),
        .I2(Q[7]),
        .I3(hlfc_e0_carry_i_6_n_0),
        .I4(Q[6]),
        .I5(Q[5]),
        .O(crdy_INST_0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfc_e0_carry
       (.CI(\<const0> ),
        .CO({hlfc_e0_carry_n_0,hlfc_e0_carry_n_1,hlfc_e0_carry_n_2,hlfc_e0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI(hlfc_e__0[3:0]),
        .O(hlfc_e[3:0]),
        .S({hlfc_e0_carry_i_1_n_0,hlfc_e0_carry_i_2_n_0,hlfc_e0_carry_i_3_n_0,hlfc_e0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfc_e0_carry__0
       (.CI(hlfc_e0_carry_n_0),
        .CO(hlfc_e0_carry__0_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,hlfc_e0_carry__0_i_1_n_0}),
        .O(hlfc_e[5:4]),
        .S({\<const0> ,\<const0> ,hlfc_e0_carry__0_i_2_n_0,hlfc_e0_carry__0_i_3_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    hlfc_e0_carry__0_i_1
       (.I0(p_1_in[1]),
        .I1(p_1_in[2]),
        .I2(p_1_in[3]),
        .O(hlfc_e0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hAAA9)) 
    hlfc_e0_carry__0_i_2
       (.I0(hlfc_e__0[5]),
        .I1(p_1_in[3]),
        .I2(p_1_in[2]),
        .I3(p_1_in[1]),
        .O(hlfc_e0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFE01)) 
    hlfc_e0_carry__0_i_3
       (.I0(p_1_in[3]),
        .I1(p_1_in[2]),
        .I2(p_1_in[1]),
        .I3(hlfc_e__0[4]),
        .O(hlfc_e0_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    hlfc_e0_carry_i_1
       (.I0(hlfc_e__0[3]),
        .I1(p_1_in[1]),
        .I2(p_1_in[2]),
        .I3(p_1_in[3]),
        .I4(hlfc_e0_carry_i_5_n_0),
        .O(hlfc_e0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hA6A6A656A6A6A6A6)) 
    hlfc_e0_carry_i_2
       (.I0(hlfc_e__0[2]),
        .I1(\hlfc_f[10]_i_2_n_0 ),
        .I2(\hlfc_f[7]_i_3_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(hlfc_e0_carry_i_6_n_0),
        .O(hlfc_e0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h5A5A5A5A5A555656)) 
    hlfc_e0_carry_i_3
       (.I0(hlfc_e__0[1]),
        .I1(\hlfc_f[12]_i_5_n_0 ),
        .I2(hlfc_e0_carry_i_7_n_0),
        .I3(\hlfc_f[9]_i_4_n_0 ),
        .I4(hlfc_e0_carry_i_8_n_0),
        .I5(p_1_in[1]),
        .O(hlfc_e0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h5555AA555555AA56)) 
    hlfc_e0_carry_i_4
       (.I0(hlfc_e__0[0]),
        .I1(p_0_in[9]),
        .I2(p_1_in[1]),
        .I3(p_1_in[2]),
        .I4(p_1_in[3]),
        .I5(p_1_in[0]),
        .O(hlfc_e0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000010)) 
    hlfc_e0_carry_i_5
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\hlfc_f[7]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(hlfc_e0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    hlfc_e0_carry_i_6
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(hlfc_e0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    hlfc_e0_carry_i_7
       (.I0(p_1_in[3]),
        .I1(p_1_in[2]),
        .O(hlfc_e0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    hlfc_e0_carry_i_8
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\hlfc_f[7]_i_3_n_0 ),
        .O(hlfc_e0_carry_i_8_n_0));
  FDRE \hlfc_e_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_e_reg[5]_0 [0]),
        .Q(hlfc_e__0[0]),
        .R(SR));
  FDRE \hlfc_e_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_e_reg[5]_0 [1]),
        .Q(hlfc_e__0[1]),
        .R(SR));
  FDRE \hlfc_e_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_e_reg[5]_0 [2]),
        .Q(hlfc_e__0[2]),
        .R(SR));
  FDRE \hlfc_e_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_e_reg[5]_0 [3]),
        .Q(hlfc_e__0[3]),
        .R(SR));
  FDRE \hlfc_e_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_e_reg[5]_0 [4]),
        .Q(hlfc_e__0[4]),
        .R(SR));
  FDRE \hlfc_e_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_e_reg[5]_0 [5]),
        .Q(hlfc_e__0[5]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAFFAAC0AA00AAC0)) 
    \hlfc_f[0]_i_2 
       (.I0(Q[0]),
        .I1(\hlfc_f_reg_n_0_[1] ),
        .I2(p_1_in[1]),
        .I3(p_1_in[3]),
        .I4(p_1_in[2]),
        .I5(p_0_in[0]),
        .O(\hlfc_f_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFF80FFFFFF800000)) 
    \hlfc_f[10]_i_1 
       (.I0(\hlfc_f[10]_i_2_n_0 ),
        .I1(\hlfc_f[10]_i_3_n_0 ),
        .I2(\hlfc_f[10]_i_4_n_0 ),
        .I3(\hlfc_f[10]_i_5_n_0 ),
        .I4(\hlfc_f_reg[2]_2 ),
        .I5(\hlfc_f_reg[10]_1 ),
        .O(\hlfc_f[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \hlfc_f[10]_i_2 
       (.I0(p_1_in[1]),
        .I1(p_1_in[2]),
        .I2(p_1_in[3]),
        .O(\hlfc_f[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    \hlfc_f[10]_i_3 
       (.I0(\hlfc_f[7]_i_3_n_0 ),
        .I1(Q[6]),
        .I2(\hlfc_f[1]_i_3_n_0 ),
        .I3(Q[5]),
        .I4(\hlfc_f[10]_i_6_n_0 ),
        .I5(Q[3]),
        .O(\hlfc_f[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFB3BFF3BFB3BF33)) 
    \hlfc_f[10]_i_4 
       (.I0(p_0_in[0]),
        .I1(\hlfc_f[7]_i_3_n_0 ),
        .I2(hlfc_e0_carry_i_6_n_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\hlfc_f_reg_n_0_[0] ),
        .O(\hlfc_f[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFAC00A0)) 
    \hlfc_f[10]_i_5 
       (.I0(p_1_in[0]),
        .I1(p_0_in[9]),
        .I2(p_1_in[2]),
        .I3(p_1_in[3]),
        .I4(p_1_in[1]),
        .O(\hlfc_f[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \hlfc_f[10]_i_6 
       (.I0(Q[6]),
        .I1(p_0_in[9]),
        .I2(Q[7]),
        .I3(\hlfc_f[10]_i_2_n_0 ),
        .I4(p_1_in[0]),
        .O(\hlfc_f[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBA88)) 
    \hlfc_f[11]_i_2 
       (.I0(p_1_in[2]),
        .I1(p_1_in[3]),
        .I2(p_1_in[0]),
        .I3(p_1_in[1]),
        .I4(\hlfc_f[11]_i_3_n_0 ),
        .I5(\hlfc_f[11]_i_4_n_0 ),
        .O(\hlfc_f_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hF0E00030F0E00020)) 
    \hlfc_f[11]_i_3 
       (.I0(Q[6]),
        .I1(p_0_in[9]),
        .I2(\hlfc_f[10]_i_2_n_0 ),
        .I3(p_1_in[0]),
        .I4(Q[7]),
        .I5(Q[4]),
        .O(\hlfc_f[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF000F000F0F0F020)) 
    \hlfc_f[11]_i_4 
       (.I0(\hlfc_f_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(\hlfc_f[7]_i_3_n_0 ),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\hlfc_f[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88FFFF8A880000)) 
    \hlfc_f[12]_i_1 
       (.I0(\hlfc_f[12]_i_2_n_0 ),
        .I1(\hlfc_f[12]_i_3_n_0 ),
        .I2(\hlfc_f[12]_i_4_n_0 ),
        .I3(\hlfc_f[12]_i_5_n_0 ),
        .I4(\hlfc_f_reg[2]_2 ),
        .I5(\hlfc_f_reg[12]_1 ),
        .O(\hlfc_f[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5F55FFFF5F5D)) 
    \hlfc_f[12]_i_2 
       (.I0(\hlfc_f[12]_i_6_n_0 ),
        .I1(Q[5]),
        .I2(\hlfc_f[12]_i_7_n_0 ),
        .I3(Q[7]),
        .I4(p_0_in[9]),
        .I5(Q[6]),
        .O(\hlfc_f[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hDFDDFFFF)) 
    \hlfc_f[12]_i_3 
       (.I0(\hlfc_f[7]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\hlfc_f[10]_i_2_n_0 ),
        .O(\hlfc_f[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \hlfc_f[12]_i_4 
       (.I0(\hlfc_f[7]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(p_0_in[0]),
        .O(\hlfc_f[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \hlfc_f[12]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\hlfc_f[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \hlfc_f[12]_i_6 
       (.I0(p_1_in[3]),
        .I1(p_1_in[2]),
        .I2(p_1_in[1]),
        .I3(\hlfc_f[7]_i_3_n_0 ),
        .O(\hlfc_f[12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \hlfc_f[12]_i_7 
       (.I0(p_1_in[0]),
        .I1(p_1_in[3]),
        .I2(p_1_in[2]),
        .I3(p_1_in[1]),
        .O(\hlfc_f[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \hlfc_f[13]_i_1 
       (.I0(p_1_in[0]),
        .I1(p_1_in[3]),
        .I2(p_1_in[2]),
        .I3(p_1_in[1]),
        .I4(\hlfc_f_reg[2]_2 ),
        .I5(\hlfc_f_reg[13]_1 ),
        .O(\hlfc_f[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \hlfc_f[15]_i_4 
       (.I0(p_1_in[0]),
        .I1(p_1_in[3]),
        .I2(p_1_in[2]),
        .I3(p_1_in[1]),
        .O(\hlfc_f_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hAAEAFFFFAAEA0000)) 
    \hlfc_f[1]_i_1 
       (.I0(\hlfc_f[1]_i_2_n_0 ),
        .I1(\hlfc_f_reg_n_0_[0] ),
        .I2(\hlfc_f[10]_i_2_n_0 ),
        .I3(\hlfc_f[1]_i_3_n_0 ),
        .I4(\hlfc_f_reg[2]_2 ),
        .I5(\hlfc_f_reg[1]_1 ),
        .O(\hlfc_f[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0880000F088)) 
    \hlfc_f[1]_i_2 
       (.I0(p_1_in[1]),
        .I1(p_0_in[0]),
        .I2(Q[0]),
        .I3(p_1_in[2]),
        .I4(p_1_in[3]),
        .I5(Q[1]),
        .O(\hlfc_f[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \hlfc_f[1]_i_3 
       (.I0(p_0_in[9]),
        .I1(p_1_in[1]),
        .I2(p_1_in[2]),
        .I3(p_1_in[3]),
        .I4(p_1_in[0]),
        .O(\hlfc_f[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \hlfc_f[2]_i_1 
       (.I0(\hlfc_f[2]_i_2_n_0 ),
        .I1(\hlfc_f[2]_i_3_n_0 ),
        .I2(\hlfc_f_reg[2]_2 ),
        .I3(\hlfc_f_reg[2]_1 ),
        .O(\hlfc_f[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAC0AA00AAC0)) 
    \hlfc_f[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(p_1_in[1]),
        .I3(p_1_in[3]),
        .I4(p_1_in[2]),
        .I5(Q[1]),
        .O(\hlfc_f[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4400450044004000)) 
    \hlfc_f[2]_i_3 
       (.I0(\hlfc_f[10]_i_6_n_0 ),
        .I1(\hlfc_f_reg_n_0_[1] ),
        .I2(p_1_in[0]),
        .I3(\hlfc_f[10]_i_2_n_0 ),
        .I4(p_0_in[9]),
        .I5(\hlfc_f_reg_n_0_[0] ),
        .O(\hlfc_f[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \hlfc_f[3]_i_1 
       (.I0(\hlfc_f[3]_i_2_n_0 ),
        .I1(\hlfc_f[3]_i_3_n_0 ),
        .I2(\hlfc_f_reg[2]_2 ),
        .I3(\hlfc_f_reg[3]_2 ),
        .O(\hlfc_f[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAC0AA00AAC0)) 
    \hlfc_f[3]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(p_1_in[1]),
        .I3(p_1_in[3]),
        .I4(p_1_in[2]),
        .I5(Q[2]),
        .O(\hlfc_f[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4400450044004000)) 
    \hlfc_f[3]_i_3 
       (.I0(\hlfc_f[10]_i_6_n_0 ),
        .I1(p_0_in[0]),
        .I2(p_1_in[0]),
        .I3(\hlfc_f[10]_i_2_n_0 ),
        .I4(p_0_in[9]),
        .I5(\hlfc_f_reg_n_0_[1] ),
        .O(\hlfc_f[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \hlfc_f[4]_i_1 
       (.I0(\hlfc_f[4]_i_2_n_0 ),
        .I1(\hlfc_f[4]_i_3_n_0 ),
        .I2(\hlfc_f_reg[2]_2 ),
        .I3(\hlfc_f_reg[4]_1 ),
        .O(\hlfc_f[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAC0AA00AAC0)) 
    \hlfc_f[4]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(p_1_in[1]),
        .I3(p_1_in[3]),
        .I4(p_1_in[2]),
        .I5(Q[3]),
        .O(\hlfc_f[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8B800000000)) 
    \hlfc_f[4]_i_3 
       (.I0(p_0_in[0]),
        .I1(\hlfc_f[1]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(\hlfc_f_reg_n_0_[0] ),
        .I4(\hlfc_f[10]_i_6_n_0 ),
        .I5(\hlfc_f[12]_i_6_n_0 ),
        .O(\hlfc_f[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \hlfc_f[5]_i_1 
       (.I0(\hlfc_f[5]_i_2_n_0 ),
        .I1(\hlfc_f[5]_i_3_n_0 ),
        .I2(\hlfc_f_reg[2]_2 ),
        .I3(\hlfc_f_reg[5]_1 ),
        .O(\hlfc_f[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAC0AA00AAC0)) 
    \hlfc_f[5]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(p_1_in[1]),
        .I3(p_1_in[3]),
        .I4(p_1_in[2]),
        .I5(Q[4]),
        .O(\hlfc_f[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8B800000000)) 
    \hlfc_f[5]_i_3 
       (.I0(Q[0]),
        .I1(\hlfc_f[1]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\hlfc_f_reg_n_0_[1] ),
        .I4(\hlfc_f[10]_i_6_n_0 ),
        .I5(\hlfc_f[12]_i_6_n_0 ),
        .O(\hlfc_f[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF35000500)) 
    \hlfc_f[6]_i_2 
       (.I0(\hlfc_f[6]_i_3_n_0 ),
        .I1(hlfc_e0_carry_i_6_n_0),
        .I2(\hlfc_f[7]_i_3_n_0 ),
        .I3(\hlfc_f[10]_i_2_n_0 ),
        .I4(\hlfc_f_reg_n_0_[0] ),
        .I5(\hlfc_f[6]_i_4_n_0 ),
        .O(\hlfc_f_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00AF2727)) 
    \hlfc_f[6]_i_3 
       (.I0(\hlfc_f[1]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(p_0_in[0]),
        .I4(\hlfc_f[10]_i_6_n_0 ),
        .O(\hlfc_f[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAC0AA00AAC0)) 
    \hlfc_f[6]_i_4 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(p_1_in[1]),
        .I3(p_1_in[3]),
        .I4(p_1_in[2]),
        .I5(Q[5]),
        .O(\hlfc_f[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF04FFFFFF040000)) 
    \hlfc_f[7]_i_1 
       (.I0(\hlfc_f[7]_i_2_n_0 ),
        .I1(\hlfc_f[10]_i_2_n_0 ),
        .I2(\hlfc_f[7]_i_3_n_0 ),
        .I3(\hlfc_f[7]_i_4_n_0 ),
        .I4(\hlfc_f_reg[2]_2 ),
        .I5(\hlfc_f_reg[7]_0 ),
        .O(\hlfc_f[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0047CF47)) 
    \hlfc_f[7]_i_2 
       (.I0(Q[2]),
        .I1(\hlfc_f[1]_i_3_n_0 ),
        .I2(Q[3]),
        .I3(\hlfc_f[10]_i_6_n_0 ),
        .I4(Q[0]),
        .O(\hlfc_f[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \hlfc_f[7]_i_3 
       (.I0(\hlfc_f[1]_i_3_n_0 ),
        .I1(Q[7]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[5]),
        .O(\hlfc_f[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEAAA)) 
    \hlfc_f[7]_i_4 
       (.I0(\hlfc_f[7]_i_5_n_0 ),
        .I1(\hlfc_f_reg_n_0_[1] ),
        .I2(\hlfc_f[7]_i_3_n_0 ),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\hlfc_f[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAC0AA00AAC0)) 
    \hlfc_f[7]_i_5 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(p_1_in[1]),
        .I3(p_1_in[3]),
        .I4(p_1_in[2]),
        .I5(Q[6]),
        .O(\hlfc_f[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8AFF8A00)) 
    \hlfc_f[8]_i_1 
       (.I0(\hlfc_f[8]_i_2_n_0 ),
        .I1(\hlfc_f[8]_i_3_n_0 ),
        .I2(\hlfc_f[10]_i_2_n_0 ),
        .I3(\hlfc_f_reg[2]_2 ),
        .I4(\hlfc_f_reg[8]_1 ),
        .O(\hlfc_f[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFCAC0CACFCFC0CF)) 
    \hlfc_f[8]_i_2 
       (.I0(Q[6]),
        .I1(p_0_in[9]),
        .I2(p_1_in[3]),
        .I3(p_1_in[2]),
        .I4(Q[7]),
        .I5(p_1_in[1]),
        .O(\hlfc_f[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFB8)) 
    \hlfc_f[8]_i_3 
       (.I0(Q[3]),
        .I1(\hlfc_f[1]_i_3_n_0 ),
        .I2(Q[4]),
        .I3(\hlfc_f[10]_i_6_n_0 ),
        .I4(\hlfc_f[8]_i_4_n_0 ),
        .I5(\hlfc_f[8]_i_5_n_0 ),
        .O(\hlfc_f[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \hlfc_f[8]_i_4 
       (.I0(\hlfc_f[10]_i_6_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[7]),
        .I5(Q[1]),
        .O(\hlfc_f[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h202020A02A2A2AAA)) 
    \hlfc_f[8]_i_5 
       (.I0(\hlfc_f[7]_i_3_n_0 ),
        .I1(\hlfc_f_reg_n_0_[0] ),
        .I2(hlfc_e0_carry_i_6_n_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_0_in[0]),
        .O(\hlfc_f[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBABBFFFFBABB0000)) 
    \hlfc_f[9]_i_1 
       (.I0(\hlfc_f[9]_i_2_n_0 ),
        .I1(\hlfc_f[9]_i_3_n_0 ),
        .I2(Q[2]),
        .I3(\hlfc_f[9]_i_4_n_0 ),
        .I4(\hlfc_f_reg[2]_2 ),
        .I5(\hlfc_f_reg[9]_0 ),
        .O(\hlfc_f[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0880000F088)) 
    \hlfc_f[9]_i_2 
       (.I0(p_1_in[1]),
        .I1(Q[7]),
        .I2(p_0_in[9]),
        .I3(p_1_in[2]),
        .I4(p_1_in[3]),
        .I5(p_1_in[0]),
        .O(\hlfc_f[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBABFFFFFFFF)) 
    \hlfc_f[9]_i_3 
       (.I0(\hlfc_f[9]_i_5_n_0 ),
        .I1(\hlfc_f[10]_i_6_n_0 ),
        .I2(Q[5]),
        .I3(\hlfc_f[1]_i_3_n_0 ),
        .I4(Q[4]),
        .I5(\hlfc_f[10]_i_2_n_0 ),
        .O(\hlfc_f[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \hlfc_f[9]_i_4 
       (.I0(Q[7]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(\hlfc_f[10]_i_6_n_0 ),
        .O(\hlfc_f[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00020002AAA2AAAA)) 
    \hlfc_f[9]_i_5 
       (.I0(\hlfc_f[7]_i_3_n_0 ),
        .I1(\hlfc_f_reg_n_0_[1] ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\hlfc_f[9]_i_5_n_0 ));
  FDRE \hlfc_f_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f_reg[15]_0 [0]),
        .Q(\hlfc_f_reg_n_0_[0] ),
        .R(SR));
  FDRE \hlfc_f_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[10]_i_1_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDRE \hlfc_f_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f_reg[15]_0 [2]),
        .Q(p_0_in[9]),
        .R(SR));
  FDRE \hlfc_f_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[12]_i_1_n_0 ),
        .Q(p_1_in[0]),
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
        .D(\hlfc_f_reg[15]_0 [3]),
        .Q(p_1_in[2]),
        .R(SR));
  FDRE \hlfc_f_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f_reg[15]_0 [4]),
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
        .D(\hlfc_f[3]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \hlfc_f_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[4]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \hlfc_f_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[5]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \hlfc_f_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f_reg[15]_0 [1]),
        .Q(Q[3]),
        .R(SR));
  FDRE \hlfc_f_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[7]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \hlfc_f_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[8]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \hlfc_f_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[9]_i_1_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE \hlfc_i_reg[22] 
       (.C(clk),
        .CE(\hlfc_i_reg[25]_2 ),
        .D(D[0]),
        .Q(\hlfc_i_reg[25]_0 [0]),
        .R(SR));
  FDRE \hlfc_i_reg[23] 
       (.C(clk),
        .CE(\hlfc_i_reg[25]_2 ),
        .D(D[1]),
        .Q(\hlfc_i_reg[25]_0 [1]),
        .R(SR));
  FDRE \hlfc_i_reg[24] 
       (.C(clk),
        .CE(\hlfc_i_reg[25]_2 ),
        .D(D[2]),
        .Q(hlfc_inf),
        .R(SR));
  FDRE \hlfc_i_reg[25] 
       (.C(clk),
        .CE(\hlfc_i_reg[25]_2 ),
        .D(D[3]),
        .Q(\hlfc_i_reg[25]_0 [2]),
        .R(SR));
endmodule
