
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
//	Half precision FPU (Half precision floating point unit)
//		(c) 2021	1YEN Toru
//
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
  wire hadd_n_10;
  wire hadd_n_12;
  wire hadd_n_13;
  wire hadd_n_14;
  wire hadd_n_2;
  wire hadd_n_26;
  wire hadd_n_28;
  wire hadd_n_29;
  wire hadd_n_3;
  wire hadd_n_30;
  wire hadd_n_31;
  wire hadd_n_32;
  wire hadd_n_33;
  wire hadd_n_4;
  wire hadd_n_5;
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
  wire hctl_load_d;
  wire hctl_n_100;
  wire hctl_n_101;
  wire hctl_n_102;
  wire hctl_n_103;
  wire hctl_n_104;
  wire hctl_n_105;
  wire hctl_n_106;
  wire hctl_n_107;
  wire hctl_n_108;
  wire hctl_n_124;
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
  wire hctl_n_153;
  wire hctl_n_154;
  wire hctl_n_155;
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
  wire hctl_n_43;
  wire hctl_n_44;
  wire hctl_n_45;
  wire hctl_n_46;
  wire hctl_n_47;
  wire hctl_n_48;
  wire hctl_n_49;
  wire hctl_n_50;
  wire hctl_n_51;
  wire hctl_n_52;
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
  wire hctl_n_74;
  wire hctl_n_75;
  wire hctl_n_76;
  wire hctl_n_77;
  wire hctl_n_78;
  wire hctl_n_79;
  wire hctl_n_81;
  wire hctl_n_82;
  wire hctl_n_83;
  wire hctl_n_84;
  wire hctl_n_85;
  wire hctl_n_86;
  wire hctl_n_87;
  wire hctl_n_88;
  wire hctl_n_89;
  wire hctl_n_90;
  wire hctl_n_91;
  wire hctl_n_92;
  wire hctl_n_93;
  wire hctl_n_94;
  wire hctl_n_95;
  wire hctl_n_96;
  wire hctl_n_97;
  wire hctl_n_98;
  wire hctl_n_99;
  wire hdiv_n_17;
  wire hdiv_n_26;
  wire [10:0]hfpu_dsp_a;
  wire [10:0]hfpu_dsp_b;
  wire [21:0]hfpu_dsp_c;
  wire hlfa_n_101;
  wire hlfa_n_102;
  wire hlfa_n_103;
  wire hlfa_n_104;
  wire hlfa_n_105;
  wire hlfa_n_106;
  wire hlfa_n_35;
  wire hlfa_n_37;
  wire hlfa_n_38;
  wire hlfa_n_39;
  wire hlfa_n_40;
  wire hlfa_n_41;
  wire hlfa_n_42;
  wire hlfa_n_43;
  wire hlfa_n_44;
  wire hlfa_n_45;
  wire hlfa_n_46;
  wire hlfa_n_47;
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
  wire [22:0]hlfa_r_0;
  wire [5:0]hlfb_e;
  wire [12:0]hlfb_f;
  wire hlfb_n_0;
  wire hlfb_n_1;
  wire hlfb_n_18;
  wire hlfb_n_19;
  wire hlfb_n_2;
  wire hlfb_n_20;
  wire hlfb_n_21;
  wire hlfb_n_22;
  wire hlfb_n_23;
  wire hlfb_n_3;
  wire hlfb_n_30;
  wire hlfb_n_31;
  wire hlfb_n_32;
  wire hlfb_n_33;
  wire hlfb_n_34;
  wire hlfb_n_35;
  wire hlfb_n_36;
  wire hlfb_n_37;
  wire hlfb_n_4;
  wire hlfb_n_49;
  wire hlfb_n_50;
  wire hlfb_n_51;
  wire hlfb_n_52;
  wire hlfb_n_53;
  wire hlfb_n_54;
  wire hlfb_n_55;
  wire hlfb_n_56;
  wire hlfb_n_57;
  wire [5:0]hlfc_e;
  wire [5:0]hlfc_e_3;
  wire [0:0]hlfc_e__0;
  wire hlfc_f;
  wire [12:2]hlfc_f0;
  wire [21:16]hlfc_r_hmul;
  wire hlfc_zer;
  wire [7:0]hquo;
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
  wire norm_n_44;
  wire norm_n_45;
  wire norm_n_46;
  wire norm_n_47;
  wire norm_n_48;
  wire norm_n_49;
  wire norm_n_50;
  wire norm_n_7;
  wire p_0_in;
  wire p_0_in0;
  wire p_0_in17_in;
  wire [14:0]p_0_in1_in;
  wire p_0_in1_in_0;
  wire p_0_in23_in;
  wire p_0_in3_in;
  wire p_0_in6_in;
  wire p_0_in9_in;
  wire [9:4]p_0_in_1;
  wire p_0_in__0;
  wire [23:11]p_1_in;
  wire [0:0]p_1_in_2;
  wire p_3_in;
  wire p_4_in;
  wire [13:1]rem0;
  wire [13:13]rem1;
  wire [13:13]rem2;
  wire rst_n;
  wire [2:0]stat;

  hfpu_hadd hadd
       (.CO(hadd_n_26),
        .D(p_4_in),
        .O({hadd_n_0,hadd_n_1,hadd_n_2}),
        .S({hctl_n_141,hctl_n_142,hctl_n_143,hctl_n_144}),
        .\cbus[0]_INST_0_i_2 (hlfb_n_49),
        .\cbus[12]_INST_0_i_12_0 (hlfc_f0),
        .\cbus[12]_INST_0_i_5_0 (hadd_n_33),
        .\cbus[15]_INST_0_i_39_0 (hadd_n_31),
        .\cbus[4]_INST_0_i_3 ({hctl_n_145,hctl_n_146,hctl_n_147,hctl_n_148}),
        .\cbus[8]_INST_0_i_2 ({hctl_n_149,hctl_n_150,hctl_n_151,hctl_n_152}),
        .\cbus[8]_INST_0_i_5_0 (hadd_n_32),
        .\cbus[9]_INST_0_i_2 (hctl_n_124),
        .hctl_ccmd_add(hctl_ccmd_add),
        .hctl_ccmd_add_reg({hadd_n_3,hadd_n_4,hadd_n_5,hadd_n_6}),
        .hctl_ccmd_add_reg_0({hadd_n_7,hadd_n_8,hadd_n_9,hadd_n_10}),
        .hctl_ccmd_add_reg_1({p_0_in,hadd_n_12,hadd_n_13,hadd_n_14}),
        .hctl_ccmd_add_reg_2(hadd_n_28),
        .hctl_ccmd_add_reg_3(hadd_n_29),
        .\hlfc_f_reg[15] ({hlfa_n_101,hlfa_n_102,hlfa_n_103,hctl_n_153}),
        .\hlfc_f_reg[1] (hlfa_n_54),
        .hlfc_f_t_carry_0(hadd_n_30),
        .\hlfc_i_reg[23] (hctl_n_107),
        .\hlfc_i_reg[23]_0 (hlfb_n_3),
        .p_0_in1_in(p_0_in1_in));
  hfpu_fsm hctl
       (.CO(hadd_n_26),
        .D(p_3_in),
        .E(crdy),
        .O({hadd_n_0,hadd_n_1,hadd_n_2}),
        .Q({p_1_in_2,p_0_in_1[9],p_0_in_1[7:4]}),
        .S({hctl_n_141,hctl_n_142,hctl_n_143,hctl_n_144}),
        .SR(p_0_in__0),
        .abus({abus[9:4],abus[2:0]}),
        .\abus[13] (hctl_n_91),
        .\abus[9] (hctl_n_99),
        .abus_0_sp_1(hctl_n_90),
        .abus_1_sp_1(hctl_n_92),
        .abus_2_sp_1(hctl_n_93),
        .abus_4_sp_1(hctl_n_94),
        .abus_5_sp_1(hctl_n_95),
        .abus_6_sp_1(hctl_n_96),
        .abus_7_sp_1(hctl_n_97),
        .abus_8_sp_1(hctl_n_98),
        .bbus(bbus[14:0]),
        .\bbus[12] ({hctl_n_77,hctl_n_78,hctl_n_79}),
        .bbus_10_sp_1(hctl_n_100),
        .cbus(cbus),
        .\cbus[10]_0 (hlfc_e__0),
        .\cbus[10]_1 (hlfa_n_65),
        .\cbus[10]_2 (norm_n_37),
        .\cbus[11] ({hadd_n_7,hadd_n_8,hadd_n_9,hadd_n_10}),
        .\cbus[11]_0 (hlfa_n_66),
        .\cbus[11]_1 (norm_n_19),
        .\cbus[11]_INST_0_i_5 (ccmd_f),
        .\cbus[12]_INST_0_i_2_0 (hquo),
        .\cbus[13]_0 (norm_n_41),
        .\cbus[13]_1 (hlfa_n_46),
        .\cbus[13]_2 (norm_n_39),
        .\cbus[13]_3 (norm_n_49),
        .\cbus[13]_4 (norm_n_38),
        .\cbus[13]_5 (hlfa_n_68),
        .\cbus[14]_0 (norm_n_45),
        .\cbus[14]_INST_0_i_23_0 (hctl_n_107),
        .\cbus[14]_INST_0_i_26 (norm_n_36),
        .\cbus[14]_INST_0_i_26_0 (norm_n_35),
        .\cbus[15] ({norm_n_42,hlfc_zer,norm_n_44}),
        .\cbus[15]_0 (hlfa_n_72),
        .\cbus[15]_1 (hlfa_n_39),
        .\cbus[15]_INST_0_i_10 (hadd_n_32),
        .\cbus[15]_INST_0_i_10_0 (hadd_n_33),
        .\cbus[15]_INST_0_i_38 (hctl_n_35),
        .\cbus[1]_0 (hadd_n_29),
        .\cbus[2]_0 (hlfa_n_55),
        .\cbus[2]_INST_0_i_2_0 (rem1),
        .\cbus[3]_0 (hlfa_n_58),
        .\cbus[3]_INST_0_i_2_0 (rem2),
        .\cbus[4]_0 (hlfa_n_59),
        .\cbus[4]_INST_0_i_3_0 (p_0_in0),
        .\cbus[5]_0 (hlfa_n_60),
        .\cbus[6]_0 (hlfa_n_43),
        .\cbus[6]_1 (hlfa_n_61),
        .\cbus[7]_0 (norm_n_14),
        .\cbus[7]_1 ({hadd_n_3,hadd_n_4,hadd_n_5,hadd_n_6}),
        .\cbus[7]_2 (hlfa_n_62),
        .\cbus[8]_0 (hlfa_n_63),
        .\cbus[8]_INST_0_i_1 (hlfb_n_3),
        .\cbus[8]_INST_0_i_1_0 (hadd_n_31),
        .cbus_0_sp_1(norm_n_7),
        .cbus_10_sp_1(hlfa_n_47),
        .cbus_12_sp_1(norm_n_20),
        .cbus_13_sp_1(hadd_n_28),
        .cbus_14_sp_1(norm_n_40),
        .cbus_1_sp_1(norm_n_15),
        .cbus_2_sp_1(norm_n_16),
        .cbus_3_sp_1(norm_n_17),
        .cbus_4_sp_1(norm_n_47),
        .cbus_5_sp_1(hlfa_n_41),
        .cbus_6_sp_1(hlfb_n_0),
        .cbus_7_sp_1(hlfa_n_37),
        .cbus_8_sp_1(norm_n_18),
        .cbus_9_sp_1(norm_n_46),
        .ccmd(ccmd),
        .\ccmd_f_reg[4] (hctl_n_103),
        .clk(clk),
        .hctl_ccmd_add(hctl_ccmd_add),
        .hctl_ccmd_add_reg_0(hctl_n_25),
        .hctl_ccmd_add_reg_1(hctl_n_26),
        .hctl_ccmd_add_reg_10({hctl_n_55,hctl_n_56,hctl_n_57,hctl_n_58}),
        .hctl_ccmd_add_reg_11(hctl_n_61),
        .hctl_ccmd_add_reg_12(hctl_n_106),
        .hctl_ccmd_add_reg_13({hctl_n_145,hctl_n_146,hctl_n_147,hctl_n_148}),
        .hctl_ccmd_add_reg_14({hctl_n_149,hctl_n_150,hctl_n_151,hctl_n_152}),
        .hctl_ccmd_add_reg_15(hctl_n_153),
        .hctl_ccmd_add_reg_2(hctl_n_27),
        .hctl_ccmd_add_reg_3(hctl_n_28),
        .hctl_ccmd_add_reg_4(hctl_n_29),
        .hctl_ccmd_add_reg_5(hctl_n_30),
        .hctl_ccmd_add_reg_6(hctl_n_31),
        .hctl_ccmd_add_reg_7(hctl_n_32),
        .hctl_ccmd_add_reg_8(hctl_n_33),
        .hctl_ccmd_add_reg_9({hctl_n_44,hctl_n_45,hctl_n_46,hctl_n_47,hctl_n_48,hctl_n_49,hctl_n_50,hctl_n_51}),
        .hctl_ccmd_cmp(hctl_ccmd_cmp),
        .hctl_ccmd_div(hctl_ccmd_div),
        .hctl_ccmd_div_reg_0(hctl_n_38),
        .hctl_ccmd_div_reg_1(hctl_n_63),
        .hctl_ccmd_div_reg_2(hctl_n_101),
        .hctl_ccmd_div_reg_3(hctl_n_102),
        .hctl_ccmd_hlf(hctl_ccmd_hlf),
        .hctl_ccmd_int(hctl_ccmd_int),
        .hctl_ccmd_mul(hctl_ccmd_mul),
        .hctl_ccmd_reg(hctl_ccmd_reg),
        .hctl_ccmd_reg_reg_0(hctl_n_34),
        .hctl_ccmd_reg_reg_1(hctl_n_36),
        .hctl_ccmd_reg_reg_2(hctl_n_108),
        .hctl_ccmd_sub(hctl_ccmd_sub),
        .hctl_load_b(hctl_load_b),
        .hfpu_dsp_c(hfpu_dsp_c[21:8]),
        .\hfpu_dsp_c[21] (hctl_n_105),
        .\hlfa_e_reg[0] (hctl_n_104),
        .\hlfa_e_reg[1] (hctl_n_59),
        .\hlfa_e_reg[1]_0 (hctl_n_62),
        .\hlfa_f[14]_i_3 (hlfa_n_86),
        .\hlfa_f_reg[10] (p_0_in23_in),
        .\hlfa_f_reg[10]_0 (p_0_in17_in),
        .\hlfa_f_reg[12] (hlfa_n_106),
        .\hlfa_f_reg[15] ({p_1_in,hctl_n_138,hctl_n_139,hctl_n_140}),
        .\hlfa_f_reg[15]_0 (hlfa_n_85),
        .hlfa_r_0({hlfa_r_0[22:19],hlfa_r_0[17:0]}),
        .\hlfb_e_reg[1] (hlfb_n_50),
        .\hlfb_e_reg[1]_0 (hlfa_n_81),
        .\hlfb_e_reg[1]_1 (p_0_in9_in),
        .\hlfb_e_reg[2] (hlfb_n_23),
        .\hlfb_e_reg[2]_0 (hlfa_n_82),
        .\hlfb_e_reg[2]_1 (hlfb_n_30),
        .\hlfb_e_reg[4] (hctl_n_83),
        .\hlfb_e_reg[4]_0 (hctl_n_85),
        .\hlfb_e_reg[4]_1 (hlfa_n_78),
        .\hlfb_e_reg[4]_2 (hlfa_n_88),
        .\hlfb_e_reg[5] ({hlfb_e[5:3],hlfb_e[1:0]}),
        .\hlfb_f_reg[10] (hlfa_n_77),
        .\hlfb_f_reg[11] ({p_0_in6_in,p_0_in3_in,hlfc_e[0]}),
        .\hlfb_f_reg[12] (hctl_n_88),
        .\hlfb_f_reg[2] (hlfa_n_74),
        .\hlfb_f_reg[2]_0 (hlfb_n_21),
        .\hlfb_f_reg[3] (hlfa_n_76),
        .\hlfb_f_reg[3]_0 (hlfb_n_4),
        .\hlfb_f_reg[4] (hlfb_f),
        .\hlfb_f_reg[5] (hlfb_n_18),
        .\hlfb_f_reg[6] (hlfb_n_19),
        .\hlfb_f_reg[7] (hlfb_n_20),
        .\hlfb_f_reg[8] (hlfb_n_22),
        .\hlfb_f_reg[9] (hlfa_n_75),
        .hlfc_e({hlfc_e_3[5:3],hlfc_e_3[1]}),
        .hlfc_e_0(hlfc_e[5:1]),
        .\hlfc_e_reg[1] (hlfa_n_56),
        .\hlfc_e_reg[1]_0 (hlfa_n_57),
        .\hlfc_e_reg[3] (hlfa_n_70),
        .\hlfc_e_reg[4] (hlfa_n_38),
        .\hlfc_e_reg[4]_0 (hlfa_n_52),
        .\hlfc_e_reg[5] (hlfa_n_104),
        .\hlfc_f_reg[0] (norm_n_34),
        .\hlfc_f_reg[0]_0 (hlfa_n_53),
        .\hlfc_f_reg[12] (hlfc_f0),
        .\hlfc_f_reg[12]_0 (norm_n_25),
        .\hlfc_f_reg[12]_1 (norm_n_29),
        .\hlfc_f_reg[12]_2 (hlfa_n_67),
        .\hlfc_f_reg[14] (hlfa_n_69),
        .\hlfc_f_reg[15] (norm_n_21),
        .\hlfc_f_reg[15]_0 ({p_0_in,hadd_n_12,hadd_n_13,hadd_n_14}),
        .\hlfc_f_reg[15]_1 (hlfa_n_51),
        .\hlfc_f_reg[2] (norm_n_26),
        .\hlfc_f_reg[2]_0 (norm_n_33),
        .\hlfc_f_reg[3] (norm_n_27),
        .\hlfc_f_reg[3]_0 (norm_n_32),
        .\hlfc_f_reg[5] (norm_n_23),
        .\hlfc_f_reg[5]_0 (norm_n_31),
        .\hlfc_f_reg[9] (norm_n_24),
        .\hlfc_f_reg[9]_0 (norm_n_30),
        .\hlfc_f_reg[9]_1 (hlfa_n_64),
        .hlfc_f_t_carry__2(hctl_n_124),
        .hlfc_f_t_carry__2_0(hlfb_n_2),
        .\hlfc_i_reg[23] (hctl_n_37),
        .\hlfc_i_reg[24] (hlfb_n_31),
        .\hlfc_i_reg[24]_0 (hlfa_n_71),
        .\hlfc_i_reg[24]_1 (hlfa_n_40),
        .hlfc_r_hmul(hlfc_r_hmul),
        .p_0_in1_in(p_0_in1_in),
        .rem0(rem0),
        .rst_n(rst_n),
        .rst_n_0({hctl_n_65,hctl_n_66,hctl_n_67,hctl_n_68,hctl_n_69,hctl_n_70,hctl_n_71,hctl_n_72,hctl_n_73,hctl_n_74}),
        .rst_n_1(hctl_n_76),
        .rst_n_2(hctl_n_86),
        .rst_n_3(hctl_n_87),
        .rst_n_4(hctl_n_155),
        .\stat_reg[0]_0 (hctl_n_64),
        .\stat_reg[0]_1 (hctl_n_89),
        .\stat_reg[1]_0 (hctl_dsft_enb),
        .\stat_reg[1]_1 (hctl_load_d),
        .\stat_reg[1]_2 (hctl_n_81),
        .\stat_reg[1]_3 (hctl_n_82),
        .\stat_reg[1]_4 (hctl_n_84),
        .\stat_reg[1]_5 (norm_n_28),
        .\stat_reg[1]_6 (norm_n_50),
        .\stat_reg[2]_0 (stat),
        .\stat_reg[2]_1 (hctl_n_43),
        .\stat_reg[2]_2 (hctl_n_52),
        .\stat_reg[2]_3 (hctl_n_60),
        .\stat_reg[2]_4 (norm_n_22),
        .\stat_reg[2]_5 (hlfa_n_84),
        .\stat_reg[3]_0 (hlfc_f),
        .\stat_reg[3]_1 (hctl_n_75),
        .\stat_reg[3]_2 (hctl_n_154));
  hfpu_hdiv hdiv
       (.D({p_1_in,hctl_n_138,hctl_n_139,hctl_n_140}),
        .E(hctl_n_52),
        .Q(hquo),
        .SR(p_0_in__0),
        .clk(clk),
        .\den_reg[21]_0 (p_0_in0),
        .\dso_reg[10]_0 (hctl_load_d),
        .\dso_reg[10]_1 (hlfb_f[12:2]),
        .\hquo_reg[0]_0 (hctl_n_154),
        .\hquo_reg[2]_0 (hdiv_n_17),
        .\hquo_reg[3]_0 (hdiv_n_26),
        .\hquo_reg[7]_0 (hctl_dsft_enb),
        .rem0(rem0),
        .rem1_carry__2_i_1(rem1),
        .rem2_carry__2_i_1(rem2),
        .rst_n(rst_n));
  hfpu_hlfa hlfa
       (.D({hlfa_n_35,p_3_in}),
        .E(hlfa_n_79),
        .O({p_0_in6_in,p_0_in3_in,p_0_in1_in_0,hlfc_e[0]}),
        .Q(hlfb_n_2),
        .S(hlfb_n_57),
        .SR(p_0_in__0),
        .abus(abus),
        .abus_13_sp_1(hlfa_n_106),
        .\cbus[14]_INST_0_i_14 (hctl_n_105),
        .\cbus[14]_INST_0_i_30 (hlfb_n_51),
        .\cbus[15]_INST_0_i_10_0 (p_0_in),
        .\cbus[15]_INST_0_i_2 (hlfb_n_33),
        .\cbus[15]_INST_0_i_9_0 (hlfb_n_36),
        .\cbus[15]_INST_0_i_9_1 (hlfb_n_35),
        .\cbus[1]_INST_0_i_2 (hctl_n_101),
        .\cbus[6] (hadd_n_30),
        .ccmd(ccmd),
        .\ccmd_f_reg[0]_0 (p_0_in23_in),
        .\ccmd_f_reg[0]_1 (hlfa_n_57),
        .\ccmd_f_reg[3]_0 (hlfa_n_52),
        .\ccmd_f_reg[3]_1 (hlfa_n_56),
        .\ccmd_f_reg[4]_0 (hlfa_n_38),
        .\ccmd_f_reg[4]_1 (ccmd_f),
        .\ccmd_f_reg[4]_2 (crdy),
        .clk(clk),
        .hctl_ccmd_add(hctl_ccmd_add),
        .hctl_ccmd_add_reg(hlfa_n_51),
        .hctl_ccmd_add_reg_0(hlfa_n_69),
        .hctl_ccmd_cmp(hctl_ccmd_cmp),
        .hctl_ccmd_cmp_reg(hlfa_n_43),
        .hctl_ccmd_div(hctl_ccmd_div),
        .hctl_ccmd_int(hctl_ccmd_int),
        .hctl_ccmd_int_reg(hlfa_n_78),
        .hctl_ccmd_int_reg_0(hlfa_n_84),
        .hctl_ccmd_mul(hctl_ccmd_mul),
        .hctl_ccmd_mul_reg(hlfa_n_71),
        .hctl_ccmd_mul_reg_0(hlfa_n_72),
        .hctl_ccmd_reg(hctl_ccmd_reg),
        .hctl_ccmd_reg_reg(hlfa_n_70),
        .hctl_ccmd_sub(hctl_ccmd_sub),
        .hctl_load_b(hctl_load_b),
        .hfpu_dsp_a(hfpu_dsp_a),
        .hlfa_e_dif0_carry_0(hlfa_n_86),
        .hlfa_e_dif0_carry__0_0(hlfb_e),
        .\hlfa_e_reg[0]_0 (hlfa_n_47),
        .\hlfa_e_reg[2]_0 ({hlfa_n_44,hlfa_n_45}),
        .\hlfa_e_reg[2]_1 (hlfa_n_46),
        .\hlfa_e_reg[3]_0 (p_0_in17_in),
        .\hlfa_e_reg[3]_1 (hlfa_n_105),
        .\hlfa_e_reg[4]_0 (p_0_in9_in),
        .\hlfa_e_reg[4]_1 (hlfa_n_85),
        .\hlfa_e_reg[5]_0 (hlfa_n_87),
        .\hlfa_e_reg[5]_1 (hlfa_n_104),
        .\hlfa_f_reg[0]_0 (hctl_n_64),
        .\hlfa_f_reg[10]_0 (hctl_n_98),
        .\hlfa_f_reg[10]_1 (hctl_n_155),
        .\hlfa_f_reg[11]_0 (hctl_n_99),
        .\hlfa_f_reg[12]_0 (hctl_n_86),
        .\hlfa_f_reg[12]_1 (hctl_n_91),
        .\hlfa_f_reg[13]_0 (hlfa_n_68),
        .\hlfa_f_reg[15]_0 (hctl_n_60),
        .\hlfa_f_reg[1]_0 (hlfa_n_54),
        .\hlfa_f_reg[2]_0 (hctl_n_90),
        .\hlfa_f_reg[3]_0 (hctl_n_92),
        .\hlfa_f_reg[4]_0 (hctl_n_93),
        .\hlfa_f_reg[6]_0 (hctl_n_94),
        .\hlfa_f_reg[7]_0 (hctl_n_95),
        .\hlfa_f_reg[8]_0 (hctl_n_96),
        .\hlfa_f_reg[9]_0 (hctl_n_97),
        .\hlfa_i_reg[0]_0 (hlfa_n_53),
        .\hlfa_i_reg[10]_0 (hlfa_n_65),
        .\hlfa_i_reg[11]_0 (hlfa_n_66),
        .\hlfa_i_reg[12]_0 (hlfa_n_67),
        .\hlfa_i_reg[13]_0 (hlfa_n_49),
        .\hlfa_i_reg[13]_1 (hlfa_n_50),
        .\hlfa_i_reg[15]_0 (hlfa_n_37),
        .\hlfa_i_reg[15]_1 (hlfa_n_40),
        .\hlfa_i_reg[15]_2 (hlfa_n_41),
        .\hlfa_i_reg[15]_3 ({hlfa_n_101,hlfa_n_102,hlfa_n_103}),
        .\hlfa_i_reg[2]_0 (hlfa_n_55),
        .\hlfa_i_reg[3]_0 (hlfa_n_58),
        .\hlfa_i_reg[4]_0 (hlfa_n_39),
        .\hlfa_i_reg[4]_1 (hlfa_n_42),
        .\hlfa_i_reg[4]_2 (hlfa_n_59),
        .\hlfa_i_reg[4]_3 (hlfa_n_89),
        .\hlfa_i_reg[5]_0 (hlfa_n_60),
        .\hlfa_i_reg[6]_0 (hlfa_n_61),
        .\hlfa_i_reg[7]_0 (hlfa_n_62),
        .\hlfa_i_reg[8]_0 (hlfa_n_63),
        .\hlfa_i_reg[9]_0 (hlfa_n_64),
        .hlfa_r_0(hlfa_r_0),
        .\hlfb_e_reg[0] (hlfa_n_80),
        .\hlfb_e_reg[1] (hlfa_n_81),
        .\hlfb_e_reg[1]_0 (hctl_n_84),
        .\hlfb_e_reg[2] (hlfa_n_82),
        .\hlfb_e_reg[3] (hlfa_n_83),
        .\hlfb_e_reg[3]_0 (hlfa_n_88),
        .\hlfb_e_reg[3]_1 (hctl_n_100),
        .\hlfb_e_reg[5] (hctl_n_75),
        .\hlfb_f_reg[10] ({hlfb_f[12:9],hlfb_f[5],hlfb_f[3:2]}),
        .\hlfb_f_reg[11] (hlfa_n_75),
        .\hlfb_f_reg[12] (hlfa_n_77),
        .\hlfb_f_reg[12]_0 (hctl_n_89),
        .\hlfb_f_reg[12]_1 (hctl_n_76),
        .\hlfb_f_reg[1] (hctl_n_82),
        .\hlfb_f_reg[1]_0 (hctl_n_87),
        .\hlfb_f_reg[1]_1 (stat),
        .\hlfb_f_reg[3] (hlfa_n_73),
        .hlfc_e(hlfc_e[5:1]),
        .\hlfc_e_reg[0] (hctl_n_104),
        .\hlfc_e_reg[2] (hctl_n_43),
        .\hlfc_e_reg[2]_0 ({hlfc_e_3[2],hlfc_e_3[0]}),
        .\hlfc_e_reg[2]_1 (hctl_n_102),
        .\hlfc_f_reg[13] (hctl_n_103),
        .\hlfc_f_reg[13]_0 (hctl_n_106),
        .\hlfc_f_reg[15] (hctl_n_63),
        .\hlfc_i_reg[22] (hlfb_n_49),
        .\hlfc_i_reg[22]_0 (hctl_n_35),
        .\hlfc_i_reg[22]_1 (hadd_n_31),
        .\hlfc_i_reg[24] (hlfb_n_1),
        .\hlfc_i_reg[24]_0 (hlfb_n_32),
        .\hlfc_i_reg[25] (hctl_n_38),
        .\hlfc_i_reg[25]_0 (hlfb_n_34),
        .\hlfc_i_reg[25]_1 (hlfb_n_37),
        .rst_n(rst_n),
        .\stat_reg[0] (hlfa_n_74),
        .\stat_reg[1] (hlfa_n_76));
  hfpu_hlfb hlfb
       (.D({hctl_n_77,hctl_n_78,hctl_n_79}),
        .E(hlfa_n_80),
        .O({p_0_in3_in,p_0_in1_in_0}),
        .Q(hlfb_n_2),
        .S({hlfb_n_52,hlfb_n_53,hlfb_n_54,hlfb_n_55}),
        .SR(p_0_in__0),
        .bbus(bbus),
        .bbus_11_sp_1(hlfb_n_30),
        .\cbus[14]_INST_0_i_2 (hlfa_n_49),
        .\cbus[14]_INST_0_i_2_0 (hdiv_n_17),
        .\cbus[14]_INST_0_i_2_1 (hdiv_n_26),
        .\cbus[14]_INST_0_i_2_2 (hctl_n_38),
        .\cbus[6] (norm_n_48),
        .\cbus[6]_0 (hlfa_n_89),
        .clk(clk),
        .hctl_ccmd_cmp(hctl_ccmd_cmp),
        .hctl_ccmd_cmp_reg(hlfb_n_0),
        .hctl_ccmd_div(hctl_ccmd_div),
        .hctl_ccmd_mul(hctl_ccmd_mul),
        .hctl_ccmd_mul_reg(hlfb_n_31),
        .hctl_ccmd_sub(hctl_ccmd_sub),
        .hfpu_dsp_b(hfpu_dsp_b),
        .hlfa_r_0(hlfa_r_0[22:16]),
        .\hlfb_e_reg[1]_0 (hlfb_n_50),
        .\hlfb_e_reg[2]_0 (hlfb_n_23),
        .\hlfb_e_reg[3]_0 (hlfa_n_74),
        .\hlfb_e_reg[3]_1 (hlfa_n_83),
        .\hlfb_e_reg[4]_0 (hlfb_n_56),
        .\hlfb_e_reg[4]_1 (hctl_n_81),
        .\hlfb_e_reg[4]_2 (hctl_n_85),
        .\hlfb_e_reg[5]_0 (hlfb_e),
        .\hlfb_e_reg[5]_1 (hlfb_n_51),
        .\hlfb_e_reg[5]_2 (hlfb_n_57),
        .\hlfb_e_reg[5]_3 (hctl_n_83),
        .\hlfb_e_reg[5]_4 (hlfa_n_88),
        .\hlfb_e_reg[5]_5 (p_0_in9_in),
        .\hlfb_f_reg[0]_0 (hctl_n_86),
        .\hlfb_f_reg[0]_1 (hlfa_n_105),
        .\hlfb_f_reg[0]_2 (hctl_n_84),
        .\hlfb_f_reg[0]_3 (hctl_n_82),
        .\hlfb_f_reg[10]_0 (hlfb_n_22),
        .\hlfb_f_reg[12]_0 (hlfb_f),
        .\hlfb_f_reg[12]_1 (hlfa_n_79),
        .\hlfb_f_reg[12]_2 ({hctl_n_65,hctl_n_66,hctl_n_67,hctl_n_68,hctl_n_69,hctl_n_70,hctl_n_71,hctl_n_72,hctl_n_73,hctl_n_74,hlfa_n_73}),
        .\hlfb_f_reg[3]_0 (hlfb_n_21),
        .\hlfb_f_reg[4]_0 (hlfa_n_76),
        .\hlfb_f_reg[4]_1 (hctl_n_88),
        .\hlfb_f_reg[4]_2 (hctl_n_75),
        .\hlfb_f_reg[5]_0 (hlfb_n_4),
        .\hlfb_f_reg[5]_1 (hctl_n_89),
        .\hlfb_f_reg[7]_0 (hlfb_n_18),
        .\hlfb_f_reg[8]_0 (hlfb_n_19),
        .\hlfb_f_reg[9]_0 (hlfb_n_20),
        .\hlfb_i_reg[0]_0 (hlfb_n_1),
        .\hlfb_i_reg[0]_1 (hlfb_n_3),
        .\hlfb_i_reg[0]_2 (hlfb_n_35),
        .\hlfb_i_reg[12]_0 (hlfb_n_34),
        .\hlfb_i_reg[14]_0 (hlfb_n_32),
        .\hlfb_i_reg[14]_1 (hlfb_n_33),
        .\hlfb_i_reg[15]_0 (hlfb_n_49),
        .\hlfb_i_reg[15]_1 (hctl_load_b),
        .\hlfb_i_reg[4]_0 (hlfb_n_36),
        .\hlfb_i_reg[5]_0 (hlfb_n_37),
        .\hlfc_i_reg[24] (hlfa_n_42),
        .\hlfc_i_reg[24]_0 (hlfa_n_50),
        .rst_n(rst_n));
  hfpu_hmul hmul
       (.S({hlfb_n_52,hlfb_n_53,hlfb_n_54,hlfb_n_55}),
        .\cbus[14]_INST_0_i_30 ({hlfa_n_87,hlfb_n_56}),
        .hlfa_r_0(hlfa_r_0[20:16]),
        .hlfc_r_hmul(hlfc_r_hmul));
  hfpu_norm norm
       (.D({hctl_n_44,hctl_n_45,hctl_n_46,hctl_n_47,hctl_n_48,hctl_n_49,hctl_n_50,hctl_n_51}),
        .E(hlfc_f),
        .Q(hlfc_e__0),
        .SR(p_0_in__0),
        .\cbus[0] (hctl_n_27),
        .\cbus[0]_0 (hctl_n_30),
        .\cbus[11] (hctl_n_36),
        .\cbus[11]_0 (hctl_n_59),
        .\cbus[11]_1 (hlfa_n_47),
        .\cbus[11]_2 (hadd_n_28),
        .\cbus[12] (hlfa_n_46),
        .\cbus[12]_0 (hctl_n_62),
        .\cbus[12]_INST_0_i_1_0 (hctl_n_108),
        .\cbus[14] (hctl_n_37),
        .\cbus[1] (hctl_n_28),
        .\cbus[3] (hctl_n_31),
        .clk(clk),
        .hctl_ccmd_cmp(hctl_ccmd_cmp),
        .hctl_ccmd_cmp_reg(norm_n_14),
        .hctl_ccmd_cmp_reg_0(norm_n_37),
        .hctl_ccmd_hlf(hctl_ccmd_hlf),
        .hctl_ccmd_reg(hctl_ccmd_reg),
        .hctl_ccmd_reg_reg(norm_n_19),
        .hctl_ccmd_reg_reg_0(norm_n_20),
        .hctl_ccmd_reg_reg_1(norm_n_47),
        .hctl_ccmd_reg_reg_2(norm_n_48),
        .hfpu_dsp_c({hfpu_dsp_c[18:17],hfpu_dsp_c[15:10]}),
        .\hfpu_dsp_c[10] (norm_n_36),
        .\hfpu_dsp_c[13] (norm_n_35),
        .hlfc_e(hlfc_e_3),
        .\hlfc_e_reg[3]_0 (norm_n_41),
        .\hlfc_e_reg[3]_1 (norm_n_49),
        .\hlfc_e_reg[4]_0 (norm_n_40),
        .\hlfc_e_reg[4]_1 (norm_n_45),
        .\hlfc_e_reg[5]_0 (norm_n_39),
        .\hlfc_e_reg[5]_1 ({hctl_n_55,hctl_n_56,hctl_n_57,hlfa_n_44,hctl_n_58,hlfa_n_45}),
        .\hlfc_f_reg[0]_0 (norm_n_28),
        .\hlfc_f_reg[10]_0 (norm_n_18),
        .\hlfc_f_reg[10]_1 (norm_n_26),
        .\hlfc_f_reg[10]_2 (norm_n_27),
        .\hlfc_f_reg[10]_3 (hctl_n_61),
        .\hlfc_f_reg[11]_0 (norm_n_29),
        .\hlfc_f_reg[11]_1 (norm_n_46),
        .\hlfc_f_reg[11]_2 (hctl_n_33),
        .\hlfc_f_reg[12]_0 ({p_1_in_2,p_0_in_1[9],p_0_in_1[7:4]}),
        .\hlfc_f_reg[12]_1 (norm_n_22),
        .\hlfc_f_reg[13]_0 (norm_n_21),
        .\hlfc_f_reg[13]_1 (norm_n_30),
        .\hlfc_f_reg[13]_2 (norm_n_31),
        .\hlfc_f_reg[13]_3 (norm_n_32),
        .\hlfc_f_reg[13]_4 (norm_n_33),
        .\hlfc_f_reg[13]_5 (norm_n_34),
        .\hlfc_f_reg[13]_6 (hlfa_n_68),
        .\hlfc_f_reg[14]_0 (norm_n_50),
        .\hlfc_f_reg[1]_0 (norm_n_24),
        .\hlfc_f_reg[1]_1 (hadd_n_29),
        .\hlfc_f_reg[2]_0 (norm_n_7),
        .\hlfc_f_reg[3]_0 (norm_n_15),
        .\hlfc_f_reg[3]_1 (norm_n_23),
        .\hlfc_f_reg[4]_0 (norm_n_16),
        .\hlfc_f_reg[4]_1 (norm_n_25),
        .\hlfc_f_reg[4]_2 (hctl_n_29),
        .\hlfc_f_reg[5]_0 (norm_n_17),
        .\hlfc_f_reg[6]_0 (hctl_n_25),
        .\hlfc_f_reg[7]_0 (hctl_n_26),
        .\hlfc_f_reg[8]_0 (hctl_n_32),
        .\hlfc_i_reg[22]_0 (hctl_n_43),
        .\hlfc_i_reg[23]_0 (norm_n_38),
        .\hlfc_i_reg[25]_0 ({norm_n_42,hlfc_zer,norm_n_44}),
        .\hlfc_i_reg[25]_1 ({hlfa_n_35,hctl_n_34,p_4_in,p_3_in}));
endmodule

module hfpu_fdiv
   (O,
    D,
    rem2_carry__2_i_1_0,
    rem1_carry__2_i_1_0,
    rem0,
    \hquo_reg[2] ,
    \hquo_reg[3] ,
    Q,
    \cbus[14]_INST_0_i_14 ,
    \cbus[14]_INST_0_i_14_0 ,
    rem0_carry__1_0);
  output [0:0]O;
  output [3:0]D;
  output [0:0]rem2_carry__2_i_1_0;
  output [0:0]rem1_carry__2_i_1_0;
  output [12:0]rem0;
  output \hquo_reg[2] ;
  output \hquo_reg[3] ;
  input [15:0]Q;
  input [3:0]\cbus[14]_INST_0_i_14 ;
  input \cbus[14]_INST_0_i_14_0 ;
  input [10:0]rem0_carry__1_0;

  wire \<const0> ;
  wire [3:0]D;
  wire [0:0]O;
  wire [15:0]Q;
  wire [3:0]\cbus[14]_INST_0_i_14 ;
  wire \cbus[14]_INST_0_i_14_0 ;
  wire \hquo_reg[2] ;
  wire \hquo_reg[3] ;
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
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \cbus[14]_INST_0_i_28 
       (.I0(\cbus[14]_INST_0_i_14 [0]),
        .I1(rem0[12]),
        .I2(\cbus[14]_INST_0_i_14 [3]),
        .I3(rem2_carry__2_i_1_0),
        .I4(\cbus[14]_INST_0_i_14_0 ),
        .O(\hquo_reg[2] ));
  LUT4 #(
    .INIT(16'h0040)) 
    \cbus[14]_INST_0_i_29 
       (.I0(\cbus[14]_INST_0_i_14 [1]),
        .I1(O),
        .I2(rem1_carry__2_i_1_0),
        .I3(\cbus[14]_INST_0_i_14 [2]),
        .O(\hquo_reg[3] ));
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
    hctl_ccmd_add_reg_5,
    hctl_ccmd_add_reg_6,
    hctl_ccmd_add_reg_7,
    hctl_ccmd_add_reg_8,
    hctl_ccmd_reg_reg_0,
    \cbus[15]_INST_0_i_38 ,
    hctl_ccmd_reg_reg_1,
    \hlfc_i_reg[23] ,
    hctl_ccmd_div_reg_0,
    \stat_reg[2]_0 ,
    \stat_reg[3]_0 ,
    \stat_reg[2]_1 ,
    hctl_ccmd_add_reg_9,
    \stat_reg[2]_2 ,
    \stat_reg[1]_0 ,
    \stat_reg[1]_1 ,
    hctl_ccmd_add_reg_10,
    \hlfa_e_reg[1] ,
    \stat_reg[2]_3 ,
    hctl_ccmd_add_reg_11,
    \hlfa_e_reg[1]_0 ,
    hctl_ccmd_div_reg_1,
    \stat_reg[0]_0 ,
    rst_n_0,
    \stat_reg[3]_1 ,
    rst_n_1,
    \bbus[12] ,
    hctl_load_b,
    \stat_reg[1]_2 ,
    \stat_reg[1]_3 ,
    \hlfb_e_reg[4] ,
    \stat_reg[1]_4 ,
    \hlfb_e_reg[4]_0 ,
    rst_n_2,
    rst_n_3,
    \hlfb_f_reg[12] ,
    \stat_reg[0]_1 ,
    .abus_0_sp_1(abus_0_sn_1),
    \abus[13] ,
    .abus_1_sp_1(abus_1_sn_1),
    .abus_2_sp_1(abus_2_sn_1),
    .abus_4_sp_1(abus_4_sn_1),
    .abus_5_sp_1(abus_5_sn_1),
    .abus_6_sp_1(abus_6_sn_1),
    .abus_7_sp_1(abus_7_sn_1),
    .abus_8_sp_1(abus_8_sn_1),
    \abus[9] ,
    .bbus_10_sp_1(bbus_10_sn_1),
    hctl_ccmd_div_reg_2,
    hctl_ccmd_div_reg_3,
    \ccmd_f_reg[4] ,
    \hlfa_e_reg[0] ,
    \hfpu_dsp_c[21] ,
    hctl_ccmd_add_reg_12,
    \cbus[14]_INST_0_i_23_0 ,
    hctl_ccmd_reg_reg_2,
    p_0_in1_in,
    hlfc_f_t_carry__2,
    \hlfa_f_reg[15] ,
    S,
    hctl_ccmd_add_reg_13,
    hctl_ccmd_add_reg_14,
    hctl_ccmd_add_reg_15,
    \stat_reg[3]_2 ,
    rst_n_4,
    SR,
    clk,
    \hlfc_f_reg[12] ,
    CO,
    D,
    .cbus_6_sp_1(cbus_6_sn_1),
    \cbus[6]_0 ,
    .cbus_7_sp_1(cbus_7_sn_1),
    Q,
    \cbus[7]_0 ,
    .cbus_0_sp_1(cbus_0_sn_1),
    .cbus_1_sp_1(cbus_1_sn_1),
    \cbus[1]_0 ,
    .cbus_2_sp_1(cbus_2_sn_1),
    .cbus_3_sp_1(cbus_3_sn_1),
    .cbus_4_sp_1(cbus_4_sn_1),
    \cbus[15] ,
    .cbus_8_sp_1(cbus_8_sn_1),
    .cbus_9_sp_1(cbus_9_sn_1),
    \cbus[8]_INST_0_i_1 ,
    \cbus[8]_INST_0_i_1_0 ,
    .cbus_13_sp_1(cbus_13_sn_1),
    .cbus_10_sp_1(cbus_10_sn_1),
    \cbus[10]_0 ,
    \cbus[13]_0 ,
    .cbus_14_sp_1(cbus_14_sn_1),
    \hlfc_i_reg[24] ,
    \hlfc_i_reg[24]_0 ,
    \hlfc_i_reg[24]_1 ,
    .cbus_5_sp_1(cbus_5_sn_1),
    \cbus[15]_0 ,
    \cbus[15]_1 ,
    \stat_reg[2]_4 ,
    \stat_reg[2]_5 ,
    ccmd,
    \stat_reg[1]_5 ,
    \stat_reg[1]_6 ,
    \hlfc_f_reg[15] ,
    \hlfc_f_reg[5] ,
    \hlfc_f_reg[5]_0 ,
    \hlfc_f_reg[9] ,
    \hlfc_f_reg[9]_0 ,
    \hlfc_f_reg[12]_0 ,
    \hlfc_f_reg[12]_1 ,
    \hlfc_f_reg[2] ,
    \hlfc_f_reg[2]_0 ,
    \hlfc_f_reg[3] ,
    \hlfc_f_reg[3]_0 ,
    \hlfc_f_reg[0] ,
    hlfa_r_0,
    \hlfc_e_reg[5] ,
    hlfc_e,
    \hlfa_f_reg[15]_0 ,
    O,
    hfpu_dsp_c,
    \hlfc_f_reg[0]_0 ,
    \hlfc_f_reg[15]_0 ,
    \cbus[2]_0 ,
    \cbus[3]_0 ,
    \cbus[7]_1 ,
    \cbus[4]_0 ,
    \cbus[5]_0 ,
    \cbus[6]_1 ,
    \cbus[7]_2 ,
    \cbus[11] ,
    \cbus[8]_0 ,
    \hlfc_f_reg[9]_1 ,
    \cbus[10]_1 ,
    \cbus[11]_0 ,
    \hlfc_f_reg[12]_2 ,
    \hlfc_f_reg[14] ,
    \cbus[13]_1 ,
    \hlfc_e_reg[3] ,
    \hlfc_e_reg[4] ,
    \hlfc_e_reg[4]_0 ,
    \hlfc_e_reg[1] ,
    \hlfc_e_reg[1]_0 ,
    \hlfa_f[14]_i_3 ,
    \hlfb_f_reg[3] ,
    \hlfb_f_reg[4] ,
    \hlfb_f_reg[3]_0 ,
    bbus,
    \hlfb_f_reg[5] ,
    \hlfb_f_reg[6] ,
    \hlfb_f_reg[7] ,
    \hlfb_e_reg[1] ,
    \hlfb_e_reg[1]_0 ,
    \hlfb_f_reg[2] ,
    \hlfb_f_reg[2]_0 ,
    \hlfb_f_reg[8] ,
    \hlfb_e_reg[2] ,
    \hlfb_e_reg[2]_0 ,
    \hlfb_e_reg[2]_1 ,
    \hlfb_f_reg[11] ,
    \hlfb_e_reg[4]_1 ,
    \hlfb_f_reg[9] ,
    \hlfb_f_reg[10] ,
    \hlfb_e_reg[5] ,
    rst_n,
    \hlfb_e_reg[4]_2 ,
    \hlfb_e_reg[1]_1 ,
    abus,
    \hlfa_f_reg[12] ,
    rem0,
    \cbus[3]_INST_0_i_2_0 ,
    \cbus[4]_INST_0_i_3_0 ,
    \cbus[2]_INST_0_i_2_0 ,
    \cbus[12]_INST_0_i_2_0 ,
    hlfc_e_0,
    hlfc_r_hmul,
    \cbus[11]_INST_0_i_5 ,
    \cbus[14]_INST_0_i_26 ,
    \cbus[14]_INST_0_i_26_0 ,
    \cbus[15]_INST_0_i_10 ,
    \cbus[15]_INST_0_i_10_0 ,
    \cbus[13]_2 ,
    \cbus[13]_3 ,
    \cbus[13]_4 ,
    \cbus[14]_0 ,
    hlfc_f_t_carry__2_0,
    \cbus[10]_2 ,
    \cbus[11]_1 ,
    .cbus_12_sp_1(cbus_12_sn_1),
    \cbus[13]_5 ,
    \hlfa_f_reg[10] ,
    \hlfa_f_reg[10]_0 ,
    \hlfc_f_reg[15]_1 );
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
  output hctl_ccmd_add_reg_5;
  output hctl_ccmd_add_reg_6;
  output hctl_ccmd_add_reg_7;
  output hctl_ccmd_add_reg_8;
  output [0:0]hctl_ccmd_reg_reg_0;
  output \cbus[15]_INST_0_i_38 ;
  output hctl_ccmd_reg_reg_1;
  output \hlfc_i_reg[23] ;
  output hctl_ccmd_div_reg_0;
  output [2:0]\stat_reg[2]_0 ;
  output [0:0]\stat_reg[3]_0 ;
  output \stat_reg[2]_1 ;
  output [7:0]hctl_ccmd_add_reg_9;
  output [0:0]\stat_reg[2]_2 ;
  output [0:0]\stat_reg[1]_0 ;
  output [0:0]\stat_reg[1]_1 ;
  output [3:0]hctl_ccmd_add_reg_10;
  output \hlfa_e_reg[1] ;
  output \stat_reg[2]_3 ;
  output hctl_ccmd_add_reg_11;
  output \hlfa_e_reg[1]_0 ;
  output hctl_ccmd_div_reg_1;
  output \stat_reg[0]_0 ;
  output [9:0]rst_n_0;
  output \stat_reg[3]_1 ;
  output rst_n_1;
  output [2:0]\bbus[12] ;
  output hctl_load_b;
  output \stat_reg[1]_2 ;
  output \stat_reg[1]_3 ;
  output \hlfb_e_reg[4] ;
  output \stat_reg[1]_4 ;
  output \hlfb_e_reg[4]_0 ;
  output rst_n_2;
  output rst_n_3;
  output \hlfb_f_reg[12] ;
  output \stat_reg[0]_1 ;
  output \abus[13] ;
  output \abus[9] ;
  output hctl_ccmd_div_reg_2;
  output hctl_ccmd_div_reg_3;
  output \ccmd_f_reg[4] ;
  output \hlfa_e_reg[0] ;
  output \hfpu_dsp_c[21] ;
  output hctl_ccmd_add_reg_12;
  output \cbus[14]_INST_0_i_23_0 ;
  output hctl_ccmd_reg_reg_2;
  output [14:0]p_0_in1_in;
  output [0:0]hlfc_f_t_carry__2;
  output [15:0]\hlfa_f_reg[15] ;
  output [3:0]S;
  output [3:0]hctl_ccmd_add_reg_13;
  output [3:0]hctl_ccmd_add_reg_14;
  output [0:0]hctl_ccmd_add_reg_15;
  output [0:0]\stat_reg[3]_2 ;
  output rst_n_4;
  input [0:0]SR;
  input clk;
  input [10:0]\hlfc_f_reg[12] ;
  input [0:0]CO;
  input [0:0]D;
  input \cbus[6]_0 ;
  input [5:0]Q;
  input \cbus[7]_0 ;
  input \cbus[1]_0 ;
  input [2:0]\cbus[15] ;
  input \cbus[8]_INST_0_i_1 ;
  input \cbus[8]_INST_0_i_1_0 ;
  input [0:0]\cbus[10]_0 ;
  input \cbus[13]_0 ;
  input \hlfc_i_reg[24] ;
  input \hlfc_i_reg[24]_0 ;
  input \hlfc_i_reg[24]_1 ;
  input \cbus[15]_0 ;
  input \cbus[15]_1 ;
  input \stat_reg[2]_4 ;
  input \stat_reg[2]_5 ;
  input [4:0]ccmd;
  input \stat_reg[1]_5 ;
  input \stat_reg[1]_6 ;
  input \hlfc_f_reg[15] ;
  input \hlfc_f_reg[5] ;
  input \hlfc_f_reg[5]_0 ;
  input \hlfc_f_reg[9] ;
  input \hlfc_f_reg[9]_0 ;
  input \hlfc_f_reg[12]_0 ;
  input \hlfc_f_reg[12]_1 ;
  input \hlfc_f_reg[2] ;
  input \hlfc_f_reg[2]_0 ;
  input \hlfc_f_reg[3] ;
  input \hlfc_f_reg[3]_0 ;
  input \hlfc_f_reg[0] ;
  input [21:0]hlfa_r_0;
  input \hlfc_e_reg[5] ;
  input [3:0]hlfc_e;
  input \hlfa_f_reg[15]_0 ;
  input [2:0]O;
  input [13:0]hfpu_dsp_c;
  input \hlfc_f_reg[0]_0 ;
  input [3:0]\hlfc_f_reg[15]_0 ;
  input \cbus[2]_0 ;
  input \cbus[3]_0 ;
  input [3:0]\cbus[7]_1 ;
  input \cbus[4]_0 ;
  input \cbus[5]_0 ;
  input \cbus[6]_1 ;
  input \cbus[7]_2 ;
  input [3:0]\cbus[11] ;
  input \cbus[8]_0 ;
  input \hlfc_f_reg[9]_1 ;
  input \cbus[10]_1 ;
  input \cbus[11]_0 ;
  input \hlfc_f_reg[12]_2 ;
  input \hlfc_f_reg[14] ;
  input \cbus[13]_1 ;
  input \hlfc_e_reg[3] ;
  input \hlfc_e_reg[4] ;
  input \hlfc_e_reg[4]_0 ;
  input \hlfc_e_reg[1] ;
  input \hlfc_e_reg[1]_0 ;
  input \hlfa_f[14]_i_3 ;
  input \hlfb_f_reg[3] ;
  input [12:0]\hlfb_f_reg[4] ;
  input \hlfb_f_reg[3]_0 ;
  input [14:0]bbus;
  input \hlfb_f_reg[5] ;
  input \hlfb_f_reg[6] ;
  input \hlfb_f_reg[7] ;
  input \hlfb_e_reg[1] ;
  input \hlfb_e_reg[1]_0 ;
  input \hlfb_f_reg[2] ;
  input \hlfb_f_reg[2]_0 ;
  input \hlfb_f_reg[8] ;
  input \hlfb_e_reg[2] ;
  input \hlfb_e_reg[2]_0 ;
  input \hlfb_e_reg[2]_1 ;
  input [2:0]\hlfb_f_reg[11] ;
  input \hlfb_e_reg[4]_1 ;
  input \hlfb_f_reg[9] ;
  input \hlfb_f_reg[10] ;
  input [4:0]\hlfb_e_reg[5] ;
  input rst_n;
  input \hlfb_e_reg[4]_2 ;
  input [0:0]\hlfb_e_reg[1]_1 ;
  input [8:0]abus;
  input \hlfa_f_reg[12] ;
  input [12:0]rem0;
  input [0:0]\cbus[3]_INST_0_i_2_0 ;
  input [0:0]\cbus[4]_INST_0_i_3_0 ;
  input [0:0]\cbus[2]_INST_0_i_2_0 ;
  input [7:0]\cbus[12]_INST_0_i_2_0 ;
  input [4:0]hlfc_e_0;
  input [5:0]hlfc_r_hmul;
  input [0:0]\cbus[11]_INST_0_i_5 ;
  input \cbus[14]_INST_0_i_26 ;
  input \cbus[14]_INST_0_i_26_0 ;
  input \cbus[15]_INST_0_i_10 ;
  input \cbus[15]_INST_0_i_10_0 ;
  input \cbus[13]_2 ;
  input \cbus[13]_3 ;
  input \cbus[13]_4 ;
  input \cbus[14]_0 ;
  input [0:0]hlfc_f_t_carry__2_0;
  input \cbus[10]_2 ;
  input \cbus[11]_1 ;
  input \cbus[13]_5 ;
  input [0:0]\hlfa_f_reg[10] ;
  input [0:0]\hlfa_f_reg[10]_0 ;
  input \hlfc_f_reg[15]_1 ;
  output abus_0_sn_1;
  output abus_1_sn_1;
  output abus_2_sn_1;
  output abus_4_sn_1;
  output abus_5_sn_1;
  output abus_6_sn_1;
  output abus_7_sn_1;
  output abus_8_sn_1;
  output bbus_10_sn_1;
  input cbus_6_sn_1;
  input cbus_7_sn_1;
  input cbus_0_sn_1;
  input cbus_1_sn_1;
  input cbus_2_sn_1;
  input cbus_3_sn_1;
  input cbus_4_sn_1;
  input cbus_8_sn_1;
  input cbus_9_sn_1;
  input cbus_13_sn_1;
  input cbus_10_sn_1;
  input cbus_14_sn_1;
  input cbus_5_sn_1;
  input cbus_12_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]O;
  wire [5:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [8:0]abus;
  wire \abus[13] ;
  wire \abus[9] ;
  wire abus_0_sn_1;
  wire abus_1_sn_1;
  wire abus_2_sn_1;
  wire abus_4_sn_1;
  wire abus_5_sn_1;
  wire abus_6_sn_1;
  wire abus_7_sn_1;
  wire abus_8_sn_1;
  wire [14:0]bbus;
  wire [2:0]\bbus[12] ;
  wire bbus_10_sn_1;
  wire [15:0]cbus;
  wire \cbus[0]_INST_0_i_2_n_0 ;
  wire [0:0]\cbus[10]_0 ;
  wire \cbus[10]_1 ;
  wire \cbus[10]_2 ;
  wire \cbus[10]_INST_0_i_2_n_0 ;
  wire \cbus[10]_INST_0_i_5_n_0 ;
  wire [3:0]\cbus[11] ;
  wire \cbus[11]_0 ;
  wire \cbus[11]_1 ;
  wire [0:0]\cbus[11]_INST_0_i_5 ;
  wire \cbus[11]_INST_0_i_8_n_0 ;
  wire \cbus[11]_INST_0_i_9_n_0 ;
  wire [7:0]\cbus[12]_INST_0_i_2_0 ;
  wire \cbus[12]_INST_0_i_2_n_0 ;
  wire \cbus[12]_INST_0_i_7_n_0 ;
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
  wire \cbus[14]_INST_0_i_18_n_0 ;
  wire \cbus[14]_INST_0_i_1_n_0 ;
  wire \cbus[14]_INST_0_i_21_n_0 ;
  wire \cbus[14]_INST_0_i_23_0 ;
  wire \cbus[14]_INST_0_i_23_n_0 ;
  wire \cbus[14]_INST_0_i_26 ;
  wire \cbus[14]_INST_0_i_26_0 ;
  wire \cbus[14]_INST_0_i_30_n_0 ;
  wire \cbus[14]_INST_0_i_34_n_0 ;
  wire \cbus[14]_INST_0_i_3_n_0 ;
  wire \cbus[14]_INST_0_i_42_n_0 ;
  wire \cbus[14]_INST_0_i_6_n_0 ;
  wire [2:0]\cbus[15] ;
  wire \cbus[15]_0 ;
  wire \cbus[15]_1 ;
  wire \cbus[15]_INST_0_i_10 ;
  wire \cbus[15]_INST_0_i_10_0 ;
  wire \cbus[15]_INST_0_i_14_n_2 ;
  wire \cbus[15]_INST_0_i_14_n_3 ;
  wire \cbus[15]_INST_0_i_1_n_0 ;
  wire \cbus[15]_INST_0_i_2_n_0 ;
  wire \cbus[15]_INST_0_i_33_n_0 ;
  wire \cbus[15]_INST_0_i_34_n_0 ;
  wire \cbus[15]_INST_0_i_35_n_0 ;
  wire \cbus[15]_INST_0_i_37_n_0 ;
  wire \cbus[15]_INST_0_i_38 ;
  wire \cbus[15]_INST_0_i_4_n_0 ;
  wire \cbus[15]_INST_0_i_5_n_0 ;
  wire \cbus[1]_0 ;
  wire \cbus[2]_0 ;
  wire [0:0]\cbus[2]_INST_0_i_2_0 ;
  wire \cbus[2]_INST_0_i_4_n_0 ;
  wire \cbus[3]_0 ;
  wire [0:0]\cbus[3]_INST_0_i_2_0 ;
  wire \cbus[3]_INST_0_i_4_n_0 ;
  wire \cbus[4]_0 ;
  wire \cbus[4]_INST_0_i_1_n_0 ;
  wire [0:0]\cbus[4]_INST_0_i_3_0 ;
  wire \cbus[4]_INST_0_i_6_n_0 ;
  wire \cbus[5]_0 ;
  wire \cbus[5]_INST_0_i_1_n_0 ;
  wire \cbus[5]_INST_0_i_2_n_0 ;
  wire \cbus[5]_INST_0_i_5_n_0 ;
  wire \cbus[6]_0 ;
  wire \cbus[6]_1 ;
  wire \cbus[6]_INST_0_i_11_n_0 ;
  wire \cbus[6]_INST_0_i_1_n_0 ;
  wire \cbus[7]_0 ;
  wire [3:0]\cbus[7]_1 ;
  wire \cbus[7]_2 ;
  wire \cbus[7]_INST_0_i_1_n_0 ;
  wire \cbus[7]_INST_0_i_2_n_0 ;
  wire \cbus[7]_INST_0_i_5_n_0 ;
  wire \cbus[8]_0 ;
  wire \cbus[8]_INST_0_i_1 ;
  wire \cbus[8]_INST_0_i_1_0 ;
  wire \cbus[8]_INST_0_i_7_n_0 ;
  wire \cbus[9]_INST_0_i_1_n_0 ;
  wire \cbus[9]_INST_0_i_2_n_0 ;
  wire \cbus[9]_INST_0_i_5_n_0 ;
  wire \cbus[9]_INST_0_i_7_n_0 ;
  wire cbus_0_sn_1;
  wire cbus_10_sn_1;
  wire cbus_12_sn_1;
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
  wire \ccmd_f_reg[4] ;
  wire clk;
  wire crdy_INST_0_i_1_n_0;
  wire crdy_f;
  wire crdy_f_i_2_n_0;
  wire crdy_t;
  wire [15:13]\hadd/hlfc_f0 ;
  wire hctl_ccmd_add;
  wire hctl_ccmd_add0;
  wire hctl_ccmd_add1;
  wire hctl_ccmd_add_reg_0;
  wire hctl_ccmd_add_reg_1;
  wire [3:0]hctl_ccmd_add_reg_10;
  wire hctl_ccmd_add_reg_11;
  wire hctl_ccmd_add_reg_12;
  wire [3:0]hctl_ccmd_add_reg_13;
  wire [3:0]hctl_ccmd_add_reg_14;
  wire [0:0]hctl_ccmd_add_reg_15;
  wire hctl_ccmd_add_reg_2;
  wire hctl_ccmd_add_reg_3;
  wire hctl_ccmd_add_reg_4;
  wire hctl_ccmd_add_reg_5;
  wire hctl_ccmd_add_reg_6;
  wire hctl_ccmd_add_reg_7;
  wire hctl_ccmd_add_reg_8;
  wire [7:0]hctl_ccmd_add_reg_9;
  wire hctl_ccmd_cmp;
  wire hctl_ccmd_div;
  wire hctl_ccmd_div_i_1_n_0;
  wire hctl_ccmd_div_reg_0;
  wire hctl_ccmd_div_reg_1;
  wire hctl_ccmd_div_reg_2;
  wire hctl_ccmd_div_reg_3;
  wire hctl_ccmd_hlf;
  wire hctl_ccmd_int;
  wire hctl_ccmd_int0;
  wire hctl_ccmd_mul;
  wire hctl_ccmd_mul_i_1_n_0;
  wire hctl_ccmd_reg;
  wire hctl_ccmd_reg0;
  wire hctl_ccmd_reg50_in;
  wire [0:0]hctl_ccmd_reg_reg_0;
  wire hctl_ccmd_reg_reg_1;
  wire hctl_ccmd_reg_reg_2;
  wire hctl_ccmd_sub;
  wire hctl_ccmd_sub0;
  wire hctl_load_b;
  wire [13:0]hfpu_dsp_c;
  wire \hfpu_dsp_c[21] ;
  wire \hlfa_e_reg[0] ;
  wire \hlfa_e_reg[1] ;
  wire \hlfa_e_reg[1]_0 ;
  wire \hlfa_f[14]_i_3 ;
  wire [0:0]\hlfa_f_reg[10] ;
  wire [0:0]\hlfa_f_reg[10]_0 ;
  wire \hlfa_f_reg[12] ;
  wire [15:0]\hlfa_f_reg[15] ;
  wire \hlfa_f_reg[15]_0 ;
  wire \hlfa_i[15]_i_2_n_0 ;
  wire [21:0]hlfa_r_0;
  wire \hlfb_e[0]_i_2_n_0 ;
  wire \hlfb_e[1]_i_3_n_0 ;
  wire \hlfb_e[4]_i_7_n_0 ;
  wire \hlfb_e[5]_i_18_n_0 ;
  wire \hlfb_e_reg[1] ;
  wire \hlfb_e_reg[1]_0 ;
  wire [0:0]\hlfb_e_reg[1]_1 ;
  wire \hlfb_e_reg[2] ;
  wire \hlfb_e_reg[2]_0 ;
  wire \hlfb_e_reg[2]_1 ;
  wire \hlfb_e_reg[4] ;
  wire \hlfb_e_reg[4]_0 ;
  wire \hlfb_e_reg[4]_1 ;
  wire \hlfb_e_reg[4]_2 ;
  wire [4:0]\hlfb_e_reg[5] ;
  wire \hlfb_f[11]_i_3_n_0 ;
  wire \hlfb_f[12]_i_4_n_0 ;
  wire \hlfb_f[2]_i_2_n_0 ;
  wire \hlfb_f[3]_i_2_n_0 ;
  wire \hlfb_f_reg[10] ;
  wire [2:0]\hlfb_f_reg[11] ;
  wire \hlfb_f_reg[12] ;
  wire \hlfb_f_reg[2] ;
  wire \hlfb_f_reg[2]_0 ;
  wire \hlfb_f_reg[3] ;
  wire \hlfb_f_reg[3]_0 ;
  wire [12:0]\hlfb_f_reg[4] ;
  wire \hlfb_f_reg[5] ;
  wire \hlfb_f_reg[6] ;
  wire \hlfb_f_reg[7] ;
  wire \hlfb_f_reg[8] ;
  wire \hlfb_f_reg[9] ;
  wire [3:0]hlfc_e;
  wire \hlfc_e[5]_i_2_n_0 ;
  wire [4:0]hlfc_e_0;
  wire \hlfc_e_reg[1] ;
  wire \hlfc_e_reg[1]_0 ;
  wire \hlfc_e_reg[3] ;
  wire \hlfc_e_reg[4] ;
  wire \hlfc_e_reg[4]_0 ;
  wire \hlfc_e_reg[5] ;
  wire \hlfc_f[15]_i_3_n_0 ;
  wire \hlfc_f_reg[0] ;
  wire \hlfc_f_reg[0]_0 ;
  wire [10:0]\hlfc_f_reg[12] ;
  wire \hlfc_f_reg[12]_0 ;
  wire \hlfc_f_reg[12]_1 ;
  wire \hlfc_f_reg[12]_2 ;
  wire \hlfc_f_reg[14] ;
  wire \hlfc_f_reg[15] ;
  wire [3:0]\hlfc_f_reg[15]_0 ;
  wire \hlfc_f_reg[15]_1 ;
  wire \hlfc_f_reg[2] ;
  wire \hlfc_f_reg[2]_0 ;
  wire \hlfc_f_reg[3] ;
  wire \hlfc_f_reg[3]_0 ;
  wire \hlfc_f_reg[5] ;
  wire \hlfc_f_reg[5]_0 ;
  wire \hlfc_f_reg[9] ;
  wire \hlfc_f_reg[9]_0 ;
  wire \hlfc_f_reg[9]_1 ;
  wire [0:0]hlfc_f_t_carry__2;
  wire [0:0]hlfc_f_t_carry__2_0;
  wire \hlfc_i[24]_i_4_n_0 ;
  wire \hlfc_i_reg[23] ;
  wire \hlfc_i_reg[24] ;
  wire \hlfc_i_reg[24]_0 ;
  wire \hlfc_i_reg[24]_1 ;
  wire [5:0]hlfc_r_hmul;
  wire [14:0]p_0_in1_in;
  wire [12:0]rem0;
  wire rst_n;
  wire [9:0]rst_n_0;
  wire rst_n_1;
  wire rst_n_2;
  wire rst_n_3;
  wire rst_n_4;
  wire [3:3]stat;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_4_n_0 ;
  wire \stat[1]_i_5_n_0 ;
  wire \stat[1]_i_6_n_0 ;
  wire \stat[2]_i_2_n_0 ;
  wire \stat[2]_i_3_n_0 ;
  wire \stat[2]_i_4_n_0 ;
  wire \stat[3]_i_4_n_0 ;
  wire [3:0]stat_nx;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire [0:0]\stat_reg[1]_0 ;
  wire [0:0]\stat_reg[1]_1 ;
  wire \stat_reg[1]_2 ;
  wire \stat_reg[1]_3 ;
  wire \stat_reg[1]_4 ;
  wire \stat_reg[1]_5 ;
  wire \stat_reg[1]_6 ;
  wire [2:0]\stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire [0:0]\stat_reg[2]_2 ;
  wire \stat_reg[2]_3 ;
  wire \stat_reg[2]_4 ;
  wire \stat_reg[2]_5 ;
  wire [0:0]\stat_reg[3]_0 ;
  wire \stat_reg[3]_1 ;
  wire [0:0]\stat_reg[3]_2 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hC808)) 
    \cbus[0]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(crdy_INST_0_i_1_n_0),
        .I2(hctl_ccmd_int),
        .I3(\cbus[0]_INST_0_i_2_n_0 ),
        .O(cbus[0]));
  LUT5 #(
    .INIT(32'hB888BBBB)) 
    \cbus[0]_INST_0_i_2 
       (.I0(O[0]),
        .I1(hctl_ccmd_add),
        .I2(hfpu_dsp_c[0]),
        .I3(hctl_ccmd_mul),
        .I4(\hlfc_f_reg[0]_0 ),
        .O(\cbus[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFE0E0000)) 
    \cbus[10]_INST_0 
       (.I0(\cbus[10]_2 ),
        .I1(\cbus[10]_INST_0_i_2_n_0 ),
        .I2(hctl_ccmd_int),
        .I3(hctl_ccmd_add_reg_11),
        .I4(crdy_INST_0_i_1_n_0),
        .O(cbus[10]));
  LUT6 #(
    .INIT(64'h0000000000F2F2F2)) 
    \cbus[10]_INST_0_i_2 
       (.I0(cbus_13_sn_1),
        .I1(cbus_10_sn_1),
        .I2(hctl_ccmd_reg_reg_1),
        .I3(hctl_ccmd_hlf),
        .I4(\cbus[10]_0 ),
        .I5(\hlfc_i_reg[23] ),
        .O(\cbus[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B8FFB8FF)) 
    \cbus[10]_INST_0_i_3 
       (.I0(\hlfc_f_reg[12] [8]),
        .I1(\hlfc_f_reg[15]_0 [3]),
        .I2(\cbus[11] [2]),
        .I3(hctl_ccmd_add),
        .I4(\cbus[10]_1 ),
        .I5(\cbus[10]_INST_0_i_5_n_0 ),
        .O(hctl_ccmd_add_reg_11));
  LUT4 #(
    .INIT(16'h0F77)) 
    \cbus[10]_INST_0_i_5 
       (.I0(hctl_ccmd_div),
        .I1(\cbus[12]_INST_0_i_2_0 [5]),
        .I2(hfpu_dsp_c[10]),
        .I3(hctl_ccmd_mul),
        .O(\cbus[10]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \cbus[11]_INST_0 
       (.I0(\cbus[11]_1 ),
        .I1(hctl_ccmd_int),
        .I2(hctl_ccmd_add_reg_8),
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
        .I5(\hlfb_f_reg[11] [0]),
        .O(\hlfa_e_reg[0] ));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \cbus[11]_INST_0_i_2 
       (.I0(\cbus[11]_0 ),
        .I1(\cbus[11]_INST_0_i_8_n_0 ),
        .I2(hctl_ccmd_add),
        .I3(\cbus[11] [3]),
        .I4(\hlfc_f_reg[15]_0 [3]),
        .I5(\hlfc_f_reg[12] [9]),
        .O(hctl_ccmd_add_reg_8));
  LUT6 #(
    .INIT(64'hAAAAAAAAEFEEAAAA)) 
    \cbus[11]_INST_0_i_4 
       (.I0(\cbus[11]_INST_0_i_9_n_0 ),
        .I1(\hlfc_e_reg[1] ),
        .I2(\hlfc_e_reg[1]_0 ),
        .I3(hlfa_r_0[17]),
        .I4(hctl_ccmd_div_reg_1),
        .I5(hctl_ccmd_add),
        .O(\hlfa_e_reg[1] ));
  LUT4 #(
    .INIT(16'hCCA0)) 
    \cbus[11]_INST_0_i_8 
       (.I0(\cbus[12]_INST_0_i_2_0 [6]),
        .I1(hfpu_dsp_c[11]),
        .I2(hctl_ccmd_div),
        .I3(hctl_ccmd_mul),
        .O(\cbus[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \cbus[11]_INST_0_i_9 
       (.I0(hlfa_r_0[17]),
        .I1(hctl_ccmd_add),
        .I2(hlfc_r_hmul[1]),
        .I3(hctl_ccmd_mul),
        .I4(hctl_ccmd_div),
        .I5(hlfc_e_0[0]),
        .O(\cbus[11]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \cbus[12]_INST_0 
       (.I0(cbus_12_sn_1),
        .I1(hctl_ccmd_int),
        .I2(\cbus[12]_INST_0_i_2_n_0 ),
        .I3(crdy_INST_0_i_1_n_0),
        .O(cbus[12]));
  LUT6 #(
    .INIT(64'hB8FFB800B8FFB8FF)) 
    \cbus[12]_INST_0_i_2 
       (.I0(\hlfc_f_reg[12] [10]),
        .I1(\hlfc_f_reg[15]_0 [3]),
        .I2(\hlfc_f_reg[15]_0 [0]),
        .I3(hctl_ccmd_add),
        .I4(\hlfc_f_reg[12]_2 ),
        .I5(\cbus[12]_INST_0_i_7_n_0 ),
        .O(\cbus[12]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0F77)) 
    \cbus[12]_INST_0_i_7 
       (.I0(hctl_ccmd_div),
        .I1(\cbus[12]_INST_0_i_2_0 [7]),
        .I2(hfpu_dsp_c[12]),
        .I3(hctl_ccmd_mul),
        .O(\cbus[12]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cbus[12]_INST_0_i_8 
       (.I0(hctl_ccmd_reg),
        .I1(hctl_ccmd_cmp),
        .O(hctl_ccmd_reg_reg_2));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_9 
       (.I0(\hlfc_f_reg[15]_0 [0]),
        .O(hlfc_f_t_carry__2));
  LUT6 #(
    .INIT(64'h00000000AAAAFFAE)) 
    \cbus[13]_INST_0 
       (.I0(\cbus[13]_INST_0_i_1_n_0 ),
        .I1(cbus_13_sn_1),
        .I2(\cbus[13]_INST_0_i_2_n_0 ),
        .I3(hctl_ccmd_reg_reg_1),
        .I4(\cbus[13]_0 ),
        .I5(\cbus[13]_INST_0_i_4_n_0 ),
        .O(cbus[13]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAFBBB)) 
    \cbus[13]_INST_0_i_1 
       (.I0(hctl_ccmd_int),
        .I1(\cbus[13]_2 ),
        .I2(\cbus[13]_3 ),
        .I3(\cbus[13]_4 ),
        .I4(hctl_ccmd_reg),
        .I5(hctl_ccmd_cmp),
        .O(\cbus[13]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \cbus[13]_INST_0_i_2 
       (.I0(\cbus[14]_INST_0_i_18_n_0 ),
        .I1(\hlfa_e_reg[1]_0 ),
        .I2(\cbus[13]_1 ),
        .O(\cbus[13]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \cbus[13]_INST_0_i_4 
       (.I0(\cbus[13]_5 ),
        .I1(hctl_ccmd_int),
        .I2(crdy_INST_0_i_1_n_0),
        .O(\cbus[13]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \cbus[13]_INST_0_i_7 
       (.I0(\cbus[11]_INST_0_i_5 ),
        .I1(hctl_ccmd_reg),
        .I2(hctl_ccmd_mul),
        .I3(hctl_ccmd_div),
        .I4(hctl_ccmd_add),
        .O(\ccmd_f_reg[4] ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \cbus[13]_INST_0_i_8 
       (.I0(\hadd/hlfc_f0 [13]),
        .I1(\hlfc_f_reg[15]_0 [3]),
        .I2(\hlfc_f_reg[15]_0 [1]),
        .I3(hctl_ccmd_add),
        .I4(hctl_ccmd_mul),
        .I5(hfpu_dsp_c[13]),
        .O(hctl_ccmd_add_reg_12));
  LUT6 #(
    .INIT(64'h00000000AAAAFFAE)) 
    \cbus[14]_INST_0 
       (.I0(\cbus[14]_INST_0_i_1_n_0 ),
        .I1(cbus_13_sn_1),
        .I2(\cbus[14]_INST_0_i_3_n_0 ),
        .I3(hctl_ccmd_reg_reg_1),
        .I4(cbus_14_sn_1),
        .I5(\cbus[14]_INST_0_i_6_n_0 ),
        .O(cbus[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAFBBB)) 
    \cbus[14]_INST_0_i_1 
       (.I0(hctl_ccmd_int),
        .I1(\cbus[13]_2 ),
        .I2(\cbus[13]_4 ),
        .I3(\cbus[14]_0 ),
        .I4(hctl_ccmd_reg),
        .I5(hctl_ccmd_cmp),
        .O(\cbus[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000347)) 
    \cbus[14]_INST_0_i_11 
       (.I0(\hadd/hlfc_f0 [14]),
        .I1(\hlfc_f_reg[15]_0 [3]),
        .I2(\hlfc_f_reg[15]_0 [2]),
        .I3(\hadd/hlfc_f0 [15]),
        .I4(\cbus[14]_INST_0_i_23_n_0 ),
        .O(\cbus[14]_INST_0_i_23_0 ));
  LUT6 #(
    .INIT(64'hA0A0B0A0B3B3B3B3)) 
    \cbus[14]_INST_0_i_15 
       (.I0(hctl_ccmd_add),
        .I1(\cbus[14]_INST_0_i_30_n_0 ),
        .I2(hlfa_r_0[19]),
        .I3(\hlfc_e_reg[4] ),
        .I4(\hlfc_e_reg[4]_0 ),
        .I5(\hlfc_i[24]_i_4_n_0 ),
        .O(\cbus[14]_INST_0_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cbus[14]_INST_0_i_17 
       (.I0(\hlfa_e_reg[1] ),
        .I1(cbus_10_sn_1),
        .O(\hlfa_e_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h7070707070707077)) 
    \cbus[14]_INST_0_i_18 
       (.I0(hlfa_r_0[18]),
        .I1(hctl_ccmd_add),
        .I2(\cbus[14]_INST_0_i_34_n_0 ),
        .I3(\hlfc_e_reg[3] ),
        .I4(hctl_ccmd_div),
        .I5(hctl_ccmd_mul),
        .O(\cbus[14]_INST_0_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \cbus[14]_INST_0_i_19 
       (.I0(\cbus[15] [1]),
        .I1(hctl_ccmd_hlf),
        .I2(hctl_ccmd_reg),
        .O(\hlfc_i_reg[23] ));
  LUT5 #(
    .INIT(32'h15111555)) 
    \cbus[14]_INST_0_i_21 
       (.I0(\hlfc_f_reg[14] ),
        .I1(hctl_ccmd_add),
        .I2(\hadd/hlfc_f0 [14]),
        .I3(\hlfc_f_reg[15]_0 [3]),
        .I4(\hlfc_f_reg[15]_0 [2]),
        .O(\cbus[14]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[14]_INST_0_i_23 
       (.I0(\hlfc_f_reg[15]_0 [0]),
        .I1(\hlfc_f_reg[12] [10]),
        .I2(\hlfc_f_reg[15]_0 [1]),
        .I3(\hlfc_f_reg[15]_0 [3]),
        .I4(\hadd/hlfc_f0 [13]),
        .O(\cbus[14]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hA9AA)) 
    \cbus[14]_INST_0_i_3 
       (.I0(\cbus[14]_INST_0_i_15_n_0 ),
        .I1(\cbus[13]_1 ),
        .I2(\hlfa_e_reg[1]_0 ),
        .I3(\cbus[14]_INST_0_i_18_n_0 ),
        .O(\cbus[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCDCFCDFCFDFFFD)) 
    \cbus[14]_INST_0_i_30 
       (.I0(hctl_ccmd_reg),
        .I1(hctl_ccmd_add),
        .I2(hctl_ccmd_mul),
        .I3(hctl_ccmd_div),
        .I4(hlfc_e_0[3]),
        .I5(hlfc_r_hmul[4]),
        .O(\cbus[14]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF808)) 
    \cbus[14]_INST_0_i_33 
       (.I0(hctl_ccmd_div),
        .I1(hlfc_e_0[1]),
        .I2(hctl_ccmd_mul),
        .I3(hlfc_r_hmul[2]),
        .I4(hctl_ccmd_add),
        .O(hctl_ccmd_div_reg_3));
  LUT6 #(
    .INIT(64'hCCFCCDFDCFFFCDFD)) 
    \cbus[14]_INST_0_i_34 
       (.I0(hctl_ccmd_reg),
        .I1(hctl_ccmd_add),
        .I2(hctl_ccmd_mul),
        .I3(hlfc_r_hmul[3]),
        .I4(hctl_ccmd_div),
        .I5(hlfc_e_0[2]),
        .O(\cbus[14]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \cbus[14]_INST_0_i_39 
       (.I0(\cbus[14]_INST_0_i_42_n_0 ),
        .I1(\cbus[14]_INST_0_i_26 ),
        .I2(\cbus[14]_INST_0_i_26_0 ),
        .I3(hfpu_dsp_c[13]),
        .I4(hfpu_dsp_c[0]),
        .I5(hfpu_dsp_c[12]),
        .O(\hfpu_dsp_c[21] ));
  LUT2 #(
    .INIT(4'hE)) 
    \cbus[14]_INST_0_i_4 
       (.I0(hctl_ccmd_reg_reg_0),
        .I1(\cbus[15]_INST_0_i_2_n_0 ),
        .O(hctl_ccmd_reg_reg_1));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \cbus[14]_INST_0_i_42 
       (.I0(hctl_ccmd_mul),
        .I1(hfpu_dsp_c[11]),
        .I2(hfpu_dsp_c[1]),
        .I3(hfpu_dsp_c[8]),
        .O(\cbus[14]_INST_0_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \cbus[14]_INST_0_i_6 
       (.I0(\cbus[14]_INST_0_i_21_n_0 ),
        .I1(hctl_ccmd_int),
        .I2(crdy_INST_0_i_1_n_0),
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[15]_INST_0_i_14 
       (.CI(CO),
        .CO({\cbus[15]_INST_0_i_14_n_2 ,\cbus[15]_INST_0_i_14_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\hadd/hlfc_f0 ),
        .S({\<const0> ,\cbus[15]_INST_0_i_33_n_0 ,\cbus[15]_INST_0_i_34_n_0 ,\cbus[15]_INST_0_i_35_n_0 }));
  LUT6 #(
    .INIT(64'hFFFFEEFEAAAAEEFE)) 
    \cbus[15]_INST_0_i_2 
       (.I0(hctl_ccmd_hlf),
        .I1(\cbus[15]_0 ),
        .I2(hctl_ccmd_div_reg_0),
        .I3(\cbus[15]_1 ),
        .I4(hctl_ccmd_add),
        .I5(cbus_5_sn_1),
        .O(\cbus[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000015)) 
    \cbus[15]_INST_0_i_24 
       (.I0(\cbus[14]_INST_0_i_23_n_0 ),
        .I1(\hadd/hlfc_f0 [15]),
        .I2(\hlfc_f_reg[15]_0 [3]),
        .I3(\cbus[15]_INST_0_i_37_n_0 ),
        .I4(\cbus[15]_INST_0_i_10 ),
        .I5(\cbus[15]_INST_0_i_10_0 ),
        .O(\cbus[15]_INST_0_i_38 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \cbus[15]_INST_0_i_30 
       (.I0(hctl_ccmd_div),
        .I1(hctl_ccmd_mul),
        .I2(hctl_ccmd_reg),
        .I3(\cbus[11]_INST_0_i_5 ),
        .O(hctl_ccmd_div_reg_1));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[15]_INST_0_i_33 
       (.I0(\hlfc_f_reg[15]_0 [3]),
        .O(\cbus[15]_INST_0_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[15]_INST_0_i_34 
       (.I0(\hlfc_f_reg[15]_0 [2]),
        .O(\cbus[15]_INST_0_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[15]_INST_0_i_35 
       (.I0(\hlfc_f_reg[15]_0 [1]),
        .O(\cbus[15]_INST_0_i_35_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[15]_INST_0_i_37 
       (.I0(\hadd/hlfc_f0 [14]),
        .I1(\hlfc_f_reg[15]_0 [3]),
        .I2(\hlfc_f_reg[15]_0 [2]),
        .O(\cbus[15]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hDF55)) 
    \cbus[15]_INST_0_i_4 
       (.I0(hctl_ccmd_reg),
        .I1(\cbus[15] [1]),
        .I2(\cbus[15] [0]),
        .I3(hctl_ccmd_hlf),
        .O(\cbus[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h15550000FFFFFFFF)) 
    \cbus[15]_INST_0_i_5 
       (.I0(\hlfc_f_reg[15]_1 ),
        .I1(hctl_ccmd_add),
        .I2(\hlfc_f_reg[15]_0 [3]),
        .I3(\hadd/hlfc_f0 [15]),
        .I4(hctl_ccmd_int),
        .I5(crdy_INST_0_i_1_n_0),
        .O(\cbus[15]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[15]_INST_0_i_7 
       (.I0(hctl_ccmd_div),
        .I1(hctl_ccmd_mul),
        .O(hctl_ccmd_div_reg_0));
  LUT4 #(
    .INIT(16'hC808)) 
    \cbus[1]_INST_0 
       (.I0(cbus_1_sn_1),
        .I1(crdy_INST_0_i_1_n_0),
        .I2(hctl_ccmd_int),
        .I3(\cbus[1]_0 ),
        .O(cbus[1]));
  LUT4 #(
    .INIT(16'h0FDD)) 
    \cbus[1]_INST_0_i_4 
       (.I0(hctl_ccmd_div),
        .I1(rem0[12]),
        .I2(hfpu_dsp_c[1]),
        .I3(hctl_ccmd_mul),
        .O(hctl_ccmd_div_reg_2));
  LUT4 #(
    .INIT(16'hC808)) 
    \cbus[2]_INST_0 
       (.I0(cbus_2_sn_1),
        .I1(crdy_INST_0_i_1_n_0),
        .I2(hctl_ccmd_int),
        .I3(hctl_ccmd_add_reg_2),
        .O(cbus[2]));
  LUT6 #(
    .INIT(64'hB8FFB800B8FFB8FF)) 
    \cbus[2]_INST_0_i_2 
       (.I0(\hlfc_f_reg[12] [0]),
        .I1(\hlfc_f_reg[15]_0 [3]),
        .I2(O[1]),
        .I3(hctl_ccmd_add),
        .I4(\cbus[2]_0 ),
        .I5(\cbus[2]_INST_0_i_4_n_0 ),
        .O(hctl_ccmd_add_reg_2));
  LUT4 #(
    .INIT(16'h0FDD)) 
    \cbus[2]_INST_0_i_4 
       (.I0(hctl_ccmd_div),
        .I1(\cbus[2]_INST_0_i_2_0 ),
        .I2(hfpu_dsp_c[2]),
        .I3(hctl_ccmd_mul),
        .O(\cbus[2]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \cbus[3]_INST_0 
       (.I0(cbus_3_sn_1),
        .I1(crdy_INST_0_i_1_n_0),
        .I2(hctl_ccmd_int),
        .I3(hctl_ccmd_add_reg_3),
        .O(cbus[3]));
  LUT6 #(
    .INIT(64'hB8FFB800B8FFB8FF)) 
    \cbus[3]_INST_0_i_2 
       (.I0(\hlfc_f_reg[12] [1]),
        .I1(\hlfc_f_reg[15]_0 [3]),
        .I2(O[2]),
        .I3(hctl_ccmd_add),
        .I4(\cbus[3]_0 ),
        .I5(\cbus[3]_INST_0_i_4_n_0 ),
        .O(hctl_ccmd_add_reg_3));
  LUT4 #(
    .INIT(16'h0FDD)) 
    \cbus[3]_INST_0_i_4 
       (.I0(hctl_ccmd_div),
        .I1(\cbus[3]_INST_0_i_2_0 ),
        .I2(hfpu_dsp_c[3]),
        .I3(hctl_ccmd_mul),
        .O(\cbus[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF008A0000008A00)) 
    \cbus[4]_INST_0 
       (.I0(\cbus[4]_INST_0_i_1_n_0 ),
        .I1(cbus_4_sn_1),
        .I2(\cbus[6]_0 ),
        .I3(crdy_INST_0_i_1_n_0),
        .I4(hctl_ccmd_int),
        .I5(hctl_ccmd_add_reg_4),
        .O(cbus[4]));
  LUT6 #(
    .INIT(64'h4F4F4F4FFF4F4F4F)) 
    \cbus[4]_INST_0_i_1 
       (.I0(hctl_ccmd_add_reg_5),
        .I1(hctl_ccmd_add_reg_0),
        .I2(hctl_ccmd_reg),
        .I3(Q[0]),
        .I4(hctl_ccmd_hlf),
        .I5(\cbus[15] [1]),
        .O(\cbus[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B8FFB8FF)) 
    \cbus[4]_INST_0_i_3 
       (.I0(\hlfc_f_reg[12] [2]),
        .I1(\hlfc_f_reg[15]_0 [3]),
        .I2(\cbus[7]_1 [0]),
        .I3(hctl_ccmd_add),
        .I4(\cbus[4]_0 ),
        .I5(\cbus[4]_INST_0_i_6_n_0 ),
        .O(hctl_ccmd_add_reg_4));
  LUT4 #(
    .INIT(16'h0FDD)) 
    \cbus[4]_INST_0_i_6 
       (.I0(hctl_ccmd_div),
        .I1(\cbus[4]_INST_0_i_3_0 ),
        .I2(hfpu_dsp_c[4]),
        .I3(hctl_ccmd_mul),
        .O(\cbus[4]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF0200020)) 
    \cbus[5]_INST_0 
       (.I0(\cbus[5]_INST_0_i_1_n_0 ),
        .I1(\cbus[5]_INST_0_i_2_n_0 ),
        .I2(crdy_INST_0_i_1_n_0),
        .I3(hctl_ccmd_int),
        .I4(hctl_ccmd_add_reg_6),
        .O(cbus[5]));
  LUT6 #(
    .INIT(64'h4F4F4F4FFF4F4F4F)) 
    \cbus[5]_INST_0_i_1 
       (.I0(hctl_ccmd_add_reg_5),
        .I1(hctl_ccmd_add_reg_1),
        .I2(hctl_ccmd_reg),
        .I3(Q[1]),
        .I4(hctl_ccmd_hlf),
        .I5(\cbus[15] [1]),
        .O(\cbus[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007707)) 
    \cbus[5]_INST_0_i_2 
       (.I0(cbus_5_sn_1),
        .I1(hctl_ccmd_cmp),
        .I2(Q[1]),
        .I3(\cbus[7]_0 ),
        .I4(hctl_ccmd_reg),
        .O(\cbus[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B8FFB8FF)) 
    \cbus[5]_INST_0_i_3 
       (.I0(\hlfc_f_reg[12] [3]),
        .I1(\hlfc_f_reg[15]_0 [3]),
        .I2(\cbus[7]_1 [1]),
        .I3(hctl_ccmd_add),
        .I4(\cbus[5]_0 ),
        .I5(\cbus[5]_INST_0_i_5_n_0 ),
        .O(hctl_ccmd_add_reg_6));
  LUT4 #(
    .INIT(16'h0F77)) 
    \cbus[5]_INST_0_i_5 
       (.I0(hctl_ccmd_div),
        .I1(\cbus[12]_INST_0_i_2_0 [0]),
        .I2(hfpu_dsp_c[5]),
        .I3(hctl_ccmd_mul),
        .O(\cbus[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF008A0000008A00)) 
    \cbus[6]_INST_0 
       (.I0(\cbus[6]_INST_0_i_1_n_0 ),
        .I1(cbus_6_sn_1),
        .I2(\cbus[6]_0 ),
        .I3(crdy_INST_0_i_1_n_0),
        .I4(hctl_ccmd_int),
        .I5(hctl_ccmd_add_reg_0),
        .O(cbus[6]));
  LUT6 #(
    .INIT(64'h4F4F4F4FFF4F4F4F)) 
    \cbus[6]_INST_0_i_1 
       (.I0(hctl_ccmd_add_reg_5),
        .I1(hctl_ccmd_add_reg_7),
        .I2(hctl_ccmd_reg),
        .I3(Q[2]),
        .I4(hctl_ccmd_hlf),
        .I5(\cbus[15] [1]),
        .O(\cbus[6]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0F77)) 
    \cbus[6]_INST_0_i_11 
       (.I0(hctl_ccmd_div),
        .I1(\cbus[12]_INST_0_i_2_0 [1]),
        .I2(hfpu_dsp_c[6]),
        .I3(hctl_ccmd_mul),
        .O(\cbus[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B8FFB8FF)) 
    \cbus[6]_INST_0_i_4 
       (.I0(\hlfc_f_reg[12] [4]),
        .I1(\hlfc_f_reg[15]_0 [3]),
        .I2(\cbus[7]_1 [2]),
        .I3(hctl_ccmd_add),
        .I4(\cbus[6]_1 ),
        .I5(\cbus[6]_INST_0_i_11_n_0 ),
        .O(hctl_ccmd_add_reg_0));
  LUT5 #(
    .INIT(32'hF0200020)) 
    \cbus[7]_INST_0 
       (.I0(\cbus[7]_INST_0_i_1_n_0 ),
        .I1(\cbus[7]_INST_0_i_2_n_0 ),
        .I2(crdy_INST_0_i_1_n_0),
        .I3(hctl_ccmd_int),
        .I4(hctl_ccmd_add_reg_1),
        .O(cbus[7]));
  LUT6 #(
    .INIT(64'h4F4F4F4FFF4F4F4F)) 
    \cbus[7]_INST_0_i_1 
       (.I0(hctl_ccmd_add_reg_5),
        .I1(\cbus[9]_INST_0_i_2_n_0 ),
        .I2(hctl_ccmd_reg),
        .I3(Q[3]),
        .I4(hctl_ccmd_hlf),
        .I5(\cbus[15] [1]),
        .O(\cbus[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007707)) 
    \cbus[7]_INST_0_i_2 
       (.I0(cbus_7_sn_1),
        .I1(hctl_ccmd_cmp),
        .I2(Q[3]),
        .I3(\cbus[7]_0 ),
        .I4(hctl_ccmd_reg),
        .O(\cbus[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B8FFB8FF)) 
    \cbus[7]_INST_0_i_3 
       (.I0(\hlfc_f_reg[12] [5]),
        .I1(\hlfc_f_reg[15]_0 [3]),
        .I2(\cbus[7]_1 [3]),
        .I3(hctl_ccmd_add),
        .I4(\cbus[7]_2 ),
        .I5(\cbus[7]_INST_0_i_5_n_0 ),
        .O(hctl_ccmd_add_reg_1));
  LUT4 #(
    .INIT(16'h0F77)) 
    \cbus[7]_INST_0_i_5 
       (.I0(hctl_ccmd_div),
        .I1(\cbus[12]_INST_0_i_2_0 [2]),
        .I2(hfpu_dsp_c[7]),
        .I3(hctl_ccmd_mul),
        .O(\cbus[7]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \cbus[8]_INST_0 
       (.I0(cbus_8_sn_1),
        .I1(crdy_INST_0_i_1_n_0),
        .I2(hctl_ccmd_int),
        .I3(hctl_ccmd_add_reg_7),
        .O(cbus[8]));
  LUT6 #(
    .INIT(64'hB8FFB800B8FFB8FF)) 
    \cbus[8]_INST_0_i_2 
       (.I0(\hlfc_f_reg[12] [6]),
        .I1(\hlfc_f_reg[15]_0 [3]),
        .I2(\cbus[11] [0]),
        .I3(hctl_ccmd_add),
        .I4(\cbus[8]_0 ),
        .I5(\cbus[8]_INST_0_i_7_n_0 ),
        .O(hctl_ccmd_add_reg_7));
  LUT4 #(
    .INIT(16'h0F77)) 
    \cbus[8]_INST_0_i_7 
       (.I0(hctl_ccmd_div),
        .I1(\cbus[12]_INST_0_i_2_0 [3]),
        .I2(hfpu_dsp_c[8]),
        .I3(hctl_ccmd_mul),
        .O(\cbus[8]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8808)) 
    \cbus[9]_INST_0 
       (.I0(\cbus[9]_INST_0_i_1_n_0 ),
        .I1(crdy_INST_0_i_1_n_0),
        .I2(hctl_ccmd_int),
        .I3(\cbus[9]_INST_0_i_2_n_0 ),
        .O(cbus[9]));
  LUT5 #(
    .INIT(32'hBBBBABAA)) 
    \cbus[9]_INST_0_i_1 
       (.I0(hctl_ccmd_int),
        .I1(cbus_9_sn_1),
        .I2(hctl_ccmd_add_reg_5),
        .I3(hctl_ccmd_add_reg_8),
        .I4(\cbus[9]_INST_0_i_5_n_0 ),
        .O(\cbus[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B8FFB8FF)) 
    \cbus[9]_INST_0_i_2 
       (.I0(\hlfc_f_reg[12] [7]),
        .I1(\hlfc_f_reg[15]_0 [3]),
        .I2(\cbus[11] [1]),
        .I3(hctl_ccmd_add),
        .I4(\hlfc_f_reg[9]_1 ),
        .I5(\cbus[9]_INST_0_i_7_n_0 ),
        .O(\cbus[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFFEFFEEEFEEEF)) 
    \cbus[9]_INST_0_i_4 
       (.I0(\cbus[15]_INST_0_i_2_n_0 ),
        .I1(hctl_ccmd_reg_reg_0),
        .I2(hctl_ccmd_add),
        .I3(\cbus[8]_INST_0_i_1 ),
        .I4(\cbus[8]_INST_0_i_1_0 ),
        .I5(\cbus[15]_INST_0_i_38 ),
        .O(hctl_ccmd_add_reg_5));
  LUT5 #(
    .INIT(32'h4F00FFFF)) 
    \cbus[9]_INST_0_i_5 
       (.I0(\cbus[15] [1]),
        .I1(Q[4]),
        .I2(hctl_ccmd_hlf),
        .I3(\cbus[15]_INST_0_i_2_n_0 ),
        .I4(hctl_ccmd_reg),
        .O(\cbus[9]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0F77)) 
    \cbus[9]_INST_0_i_7 
       (.I0(hctl_ccmd_div),
        .I1(\cbus[12]_INST_0_i_2_0 [4]),
        .I2(hfpu_dsp_c[9]),
        .I3(hctl_ccmd_mul),
        .O(\cbus[9]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    crdy_INST_0
       (.I0(crdy_f),
        .I1(crdy_INST_0_i_1_n_0),
        .O(E));
  LUT5 #(
    .INIT(32'h4C003000)) 
    crdy_INST_0_i_1
       (.I0(\stat_reg[2]_4 ),
        .I1(\stat_reg[2]_0 [2]),
        .I2(stat),
        .I3(\stat_reg[2]_0 [1]),
        .I4(\stat_reg[2]_0 [0]),
        .O(crdy_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFAAEAAAA)) 
    crdy_f_i_1
       (.I0(crdy_INST_0_i_1_n_0),
        .I1(crdy_f_i_2_n_0),
        .I2(\stat_reg[2]_0 [0]),
        .I3(stat),
        .I4(\stat[1]_i_3_n_0 ),
        .O(crdy_t));
  LUT4 #(
    .INIT(16'h0001)) 
    crdy_f_i_2
       (.I0(ccmd[0]),
        .I1(ccmd[2]),
        .I2(ccmd[1]),
        .I3(ccmd[3]),
        .O(crdy_f_i_2_n_0));
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
    .INIT(16'h1222)) 
    \den[23]_i_1 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(stat),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [1]),
        .O(\stat_reg[2]_2 ));
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
        .I2(\stat_reg[2]_0 [2]),
        .I3(stat),
        .O(\stat_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h41001000)) 
    hctl_ccmd_add_i_1
       (.I0(ccmd[2]),
        .I1(ccmd[3]),
        .I2(ccmd[0]),
        .I3(ccmd[4]),
        .I4(ccmd[1]),
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
       (.I0(ccmd[4]),
        .I1(ccmd[0]),
        .I2(ccmd[1]),
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
    .INIT(32'h00001000)) 
    hctl_ccmd_div_i_1
       (.I0(ccmd[1]),
        .I1(ccmd[3]),
        .I2(ccmd[4]),
        .I3(ccmd[2]),
        .I4(ccmd[0]),
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
       (.I0(ccmd[3]),
        .I1(ccmd[1]),
        .I2(ccmd[4]),
        .I3(ccmd[2]),
        .I4(ccmd[0]),
        .O(hctl_ccmd_reg50_in));
  FDRE hctl_ccmd_hlf_reg
       (.C(clk),
        .CE(E),
        .D(hctl_ccmd_reg50_in),
        .Q(hctl_ccmd_hlf),
        .R(SR));
  LUT5 #(
    .INIT(32'h20040000)) 
    hctl_ccmd_int_i_1
       (.I0(ccmd[1]),
        .I1(ccmd[3]),
        .I2(ccmd[0]),
        .I3(ccmd[2]),
        .I4(ccmd[4]),
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
       (.I0(ccmd[4]),
        .I1(ccmd[0]),
        .I2(ccmd[1]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .O(hctl_ccmd_mul_i_1_n_0));
  FDRE hctl_ccmd_mul_reg
       (.C(clk),
        .CE(E),
        .D(hctl_ccmd_mul_i_1_n_0),
        .Q(hctl_ccmd_mul),
        .R(SR));
  LUT5 #(
    .INIT(32'h542A0000)) 
    hctl_ccmd_reg_i_1
       (.I0(ccmd[3]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[2]),
        .I4(ccmd[4]),
        .O(hctl_ccmd_reg0));
  FDRE hctl_ccmd_reg_reg
       (.C(clk),
        .CE(E),
        .D(hctl_ccmd_reg0),
        .Q(hctl_ccmd_reg),
        .R(SR));
  LUT5 #(
    .INIT(32'h40100000)) 
    hctl_ccmd_sub_i_1
       (.I0(ccmd[2]),
        .I1(ccmd[3]),
        .I2(ccmd[1]),
        .I3(ccmd[0]),
        .I4(ccmd[4]),
        .O(hctl_ccmd_sub0));
  FDRE hctl_ccmd_sub_reg
       (.C(clk),
        .CE(E),
        .D(hctl_ccmd_sub0),
        .Q(hctl_ccmd_sub),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[10]_i_2 
       (.I0(abus[7]),
        .I1(\abus[13] ),
        .O(abus_8_sn_1));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[11]_i_2 
       (.I0(abus[8]),
        .I1(\abus[13] ),
        .O(\abus[9] ));
  LUT5 #(
    .INIT(32'hFF54FFFF)) 
    \hlfa_f[11]_i_3 
       (.I0(\stat_reg[0]_0 ),
        .I1(\hlfa_f_reg[10] ),
        .I2(\hlfa_f_reg[10]_0 ),
        .I3(hctl_load_b),
        .I4(rst_n),
        .O(rst_n_4));
  LUT2 #(
    .INIT(4'hB)) 
    \hlfa_f[12]_i_4 
       (.I0(\hlfa_f_reg[12] ),
        .I1(hctl_load_b),
        .O(\abus[13] ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \hlfa_f[14]_i_6 
       (.I0(\hlfa_f[14]_i_3 ),
        .I1(\stat_reg[2]_0 [0]),
        .I2(\stat_reg[2]_0 [2]),
        .I3(\stat_reg[2]_0 [1]),
        .O(\stat_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \hlfa_f[15]_i_3 
       (.I0(\hlfa_f_reg[15]_0 ),
        .I1(\stat_reg[2]_0 [2]),
        .I2(\stat_reg[2]_0 [1]),
        .I3(\stat_reg[2]_0 [0]),
        .I4(stat),
        .O(\stat_reg[2]_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[15]_i_5 
       (.I0(rst_n),
        .I1(hctl_load_b),
        .O(rst_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[2]_i_2 
       (.I0(abus[0]),
        .I1(\abus[13] ),
        .O(abus_0_sn_1));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[3]_i_2 
       (.I0(abus[1]),
        .I1(\abus[13] ),
        .O(abus_1_sn_1));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[4]_i_2 
       (.I0(abus[2]),
        .I1(\abus[13] ),
        .O(abus_2_sn_1));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[6]_i_2 
       (.I0(abus[3]),
        .I1(\abus[13] ),
        .O(abus_4_sn_1));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[7]_i_2 
       (.I0(abus[4]),
        .I1(\abus[13] ),
        .O(abus_5_sn_1));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[8]_i_2 
       (.I0(abus[5]),
        .I1(\abus[13] ),
        .O(abus_6_sn_1));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[9]_i_2 
       (.I0(abus[6]),
        .I1(\abus[13] ),
        .O(abus_7_sn_1));
  LUT6 #(
    .INIT(64'h0222022202220220)) 
    \hlfa_i[15]_i_1 
       (.I0(\hlfa_i[15]_i_2_n_0 ),
        .I1(stat),
        .I2(ccmd[3]),
        .I3(ccmd[2]),
        .I4(ccmd[0]),
        .I5(ccmd[1]),
        .O(hctl_load_b));
  LUT4 #(
    .INIT(16'h0100)) 
    \hlfa_i[15]_i_2 
       (.I0(\stat_reg[2]_0 [0]),
        .I1(\stat_reg[2]_0 [2]),
        .I2(\stat_reg[2]_0 [1]),
        .I3(ccmd[4]),
        .O(\hlfa_i[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF60)) 
    \hlfb_e[0]_i_1 
       (.I0(\hlfb_e_reg[5] [0]),
        .I1(\hlfb_f_reg[3] ),
        .I2(\stat_reg[3]_1 ),
        .I3(\hlfb_e[0]_i_2_n_0 ),
        .O(\bbus[12] [0]));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \hlfb_e[0]_i_2 
       (.I0(bbus[10]),
        .I1(hctl_load_b),
        .I2(\hlfb_e_reg[5] [0]),
        .I3(\stat_reg[1]_3 ),
        .I4(\stat_reg[1]_4 ),
        .I5(hlfa_r_0[16]),
        .O(\hlfb_e[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \hlfb_e[1]_i_1 
       (.I0(\hlfb_e_reg[1] ),
        .I1(\stat_reg[3]_1 ),
        .I2(\hlfb_e[1]_i_3_n_0 ),
        .I3(\hlfb_e_reg[1]_0 ),
        .O(\bbus[12] [1]));
  LUT6 #(
    .INIT(64'h60FF606060606060)) 
    \hlfb_e[1]_i_3 
       (.I0(bbus[10]),
        .I1(bbus[11]),
        .I2(hctl_load_b),
        .I3(\hlfb_e_reg[1]_1 ),
        .I4(\hlfb_e_reg[5] [1]),
        .I5(\stat_reg[1]_3 ),
        .O(\hlfb_e[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4FFFFF4F4F4F4F4F)) 
    \hlfb_e[2]_i_1 
       (.I0(\hlfb_e_reg[2] ),
        .I1(\stat_reg[3]_1 ),
        .I2(\hlfb_e_reg[2]_0 ),
        .I3(\hlfb_e_reg[2]_1 ),
        .I4(bbus[12]),
        .I5(hctl_load_b),
        .O(\bbus[12] [2]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \hlfb_e[3]_i_7 
       (.I0(hctl_load_b),
        .I1(bbus[10]),
        .I2(bbus[11]),
        .I3(bbus[12]),
        .I4(bbus[13]),
        .O(bbus_10_sn_1));
  LUT5 #(
    .INIT(32'h00000200)) 
    \hlfb_e[4]_i_3 
       (.I0(\hlfb_f_reg[11] [1]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [2]),
        .I3(\stat_reg[2]_0 [0]),
        .I4(\hlfb_e_reg[4]_1 ),
        .O(\stat_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF87B48484)) 
    \hlfb_e[4]_i_5 
       (.I0(\hlfb_e_reg[4]_2 ),
        .I1(\stat_reg[1]_4 ),
        .I2(\hlfb_e_reg[5] [3]),
        .I3(\hlfb_e_reg[5] [2]),
        .I4(\stat_reg[1]_3 ),
        .I5(\hlfb_e[4]_i_7_n_0 ),
        .O(\hlfb_e_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h800000002AAAAAAA)) 
    \hlfb_e[4]_i_7 
       (.I0(hctl_load_b),
        .I1(bbus[12]),
        .I2(bbus[11]),
        .I3(bbus[10]),
        .I4(bbus[13]),
        .I5(bbus[14]),
        .O(\hlfb_e[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \hlfb_e[5]_i_15 
       (.I0(\hlfb_e_reg[1]_1 ),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [2]),
        .I3(\stat_reg[2]_0 [0]),
        .I4(\hlfb_e_reg[4]_1 ),
        .O(\stat_reg[1]_4 ));
  LUT6 #(
    .INIT(64'h000000002AAAAAAA)) 
    \hlfb_e[5]_i_18 
       (.I0(hctl_load_b),
        .I1(bbus[12]),
        .I2(bbus[11]),
        .I3(bbus[10]),
        .I4(bbus[13]),
        .I5(bbus[14]),
        .O(\hlfb_e[5]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \hlfb_e[5]_i_4 
       (.I0(\hlfb_e_reg[4]_1 ),
        .I1(\stat_reg[2]_0 [0]),
        .I2(\stat_reg[2]_0 [2]),
        .I3(\stat_reg[2]_0 [1]),
        .O(\stat_reg[0]_1 ));
  LUT3 #(
    .INIT(8'h01)) 
    \hlfb_e[5]_i_5 
       (.I0(hctl_load_b),
        .I1(\stat_reg[1]_3 ),
        .I2(\stat_reg[1]_4 ),
        .O(\stat_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEEEEAAA)) 
    \hlfb_e[5]_i_7 
       (.I0(\hlfb_e[5]_i_18_n_0 ),
        .I1(\stat_reg[1]_3 ),
        .I2(\hlfb_e_reg[5] [3]),
        .I3(\hlfb_e_reg[5] [2]),
        .I4(\hlfb_e_reg[5] [4]),
        .I5(\stat_reg[1]_4 ),
        .O(\hlfb_e_reg[4] ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \hlfb_f[10]_i_1 
       (.I0(rst_n_0[9]),
        .I1(bbus[8]),
        .I2(\hlfb_f_reg[10] ),
        .I3(rst_n_1),
        .O(rst_n_0[7]));
  LUT6 #(
    .INIT(64'h8F88888888888888)) 
    \hlfb_f[11]_i_1 
       (.I0(rst_n_0[9]),
        .I1(bbus[9]),
        .I2(\stat_reg[1]_3 ),
        .I3(\hlfb_f_reg[3] ),
        .I4(rst_n),
        .I5(\hlfb_f[11]_i_3_n_0 ),
        .O(rst_n_0[8]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \hlfb_f[11]_i_2 
       (.I0(\hlfb_f_reg[11] [2]),
        .I1(\stat_reg[2]_0 [1]),
        .I2(\stat_reg[2]_0 [2]),
        .I3(\stat_reg[2]_0 [0]),
        .I4(\hlfb_e_reg[4]_1 ),
        .O(\stat_reg[1]_3 ));
  LUT3 #(
    .INIT(8'h04)) 
    \hlfb_f[11]_i_3 
       (.I0(\stat_reg[1]_4 ),
        .I1(\hlfb_f_reg[4] [12]),
        .I2(hctl_load_b),
        .O(\hlfb_f[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfb_f[12]_i_2 
       (.I0(rst_n),
        .I1(\hlfb_f[12]_i_4_n_0 ),
        .O(rst_n_0[9]));
  LUT4 #(
    .INIT(16'h0004)) 
    \hlfb_f[12]_i_3 
       (.I0(hctl_load_b),
        .I1(rst_n),
        .I2(\stat_reg[1]_3 ),
        .I3(\stat_reg[1]_4 ),
        .O(rst_n_1));
  LUT6 #(
    .INIT(64'h5555555555555557)) 
    \hlfb_f[12]_i_4 
       (.I0(hctl_load_b),
        .I1(bbus[11]),
        .I2(bbus[10]),
        .I3(bbus[14]),
        .I4(bbus[12]),
        .I5(bbus[13]),
        .O(\hlfb_f[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \hlfb_f[1]_i_3 
       (.I0(hctl_load_b),
        .I1(rst_n),
        .I2(\stat_reg[1]_4 ),
        .O(rst_n_3));
  LUT5 #(
    .INIT(32'hA222AAAA)) 
    \hlfb_f[2]_i_1 
       (.I0(\hlfb_f[2]_i_2_n_0 ),
        .I1(\stat_reg[3]_1 ),
        .I2(\hlfb_f_reg[2] ),
        .I3(\hlfb_f_reg[4] [4]),
        .I4(\hlfb_f_reg[2]_0 ),
        .O(rst_n_0[0]));
  LUT6 #(
    .INIT(64'h88888888FF8F8888)) 
    \hlfb_f[2]_i_2 
       (.I0(rst_n_0[9]),
        .I1(bbus[0]),
        .I2(\stat_reg[1]_3 ),
        .I3(\hlfb_f_reg[4] [10]),
        .I4(rst_n_2),
        .I5(\stat_reg[1]_4 ),
        .O(\hlfb_f[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA222AAAA)) 
    \hlfb_f[3]_i_1 
       (.I0(\hlfb_f[3]_i_2_n_0 ),
        .I1(\stat_reg[3]_1 ),
        .I2(\hlfb_f_reg[3] ),
        .I3(\hlfb_f_reg[4] [4]),
        .I4(\hlfb_f_reg[3]_0 ),
        .O(rst_n_0[1]));
  LUT6 #(
    .INIT(64'h88888888FF8F8888)) 
    \hlfb_f[3]_i_2 
       (.I0(rst_n_0[9]),
        .I1(bbus[1]),
        .I2(\stat_reg[1]_3 ),
        .I3(\hlfb_f_reg[4] [11]),
        .I4(rst_n_2),
        .I5(\stat_reg[1]_4 ),
        .O(\hlfb_f[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFB00FBFB)) 
    \hlfb_f[4]_i_3 
       (.I0(hctl_load_b),
        .I1(\hlfb_f_reg[4] [12]),
        .I2(\stat_reg[1]_4 ),
        .I3(\hlfb_f[12]_i_4_n_0 ),
        .I4(bbus[2]),
        .O(\hlfb_f_reg[12] ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \hlfb_f[5]_i_1 
       (.I0(rst_n_0[9]),
        .I1(bbus[3]),
        .I2(\hlfb_f_reg[5] ),
        .I3(rst_n_1),
        .O(rst_n_0[2]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \hlfb_f[6]_i_1 
       (.I0(rst_n_0[9]),
        .I1(bbus[4]),
        .I2(\hlfb_f_reg[6] ),
        .I3(rst_n_1),
        .O(rst_n_0[3]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \hlfb_f[7]_i_1 
       (.I0(rst_n_0[9]),
        .I1(bbus[5]),
        .I2(\hlfb_f_reg[7] ),
        .I3(rst_n_1),
        .O(rst_n_0[4]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \hlfb_f[8]_i_1 
       (.I0(rst_n_0[9]),
        .I1(bbus[6]),
        .I2(\hlfb_f_reg[8] ),
        .I3(rst_n_1),
        .O(rst_n_0[5]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \hlfb_f[9]_i_1 
       (.I0(rst_n_0[9]),
        .I1(bbus[7]),
        .I2(\hlfb_f_reg[9] ),
        .I3(rst_n_1),
        .O(rst_n_0[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \hlfc_e[1]_i_1 
       (.I0(\hlfa_e_reg[1] ),
        .I1(\stat_reg[2]_1 ),
        .I2(hlfc_e[0]),
        .O(hctl_ccmd_add_reg_10[0]));
  LUT3 #(
    .INIT(8'h3A)) 
    \hlfc_e[3]_i_1 
       (.I0(hlfc_e[1]),
        .I1(\cbus[14]_INST_0_i_18_n_0 ),
        .I2(\stat_reg[2]_1 ),
        .O(hctl_ccmd_add_reg_10[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \hlfc_e[4]_i_1 
       (.I0(\cbus[14]_INST_0_i_15_n_0 ),
        .I1(\stat_reg[2]_1 ),
        .I2(hlfc_e[2]),
        .O(hctl_ccmd_add_reg_10[2]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \hlfc_e[5]_i_1 
       (.I0(hctl_ccmd_add),
        .I1(hlfa_r_0[20]),
        .I2(\hlfc_e[5]_i_2_n_0 ),
        .I3(\hlfc_e_reg[5] ),
        .I4(\stat_reg[2]_1 ),
        .I5(hlfc_e[3]),
        .O(hctl_ccmd_add_reg_10[3]));
  LUT6 #(
    .INIT(64'hCCCDCFCDFCFDFFFD)) 
    \hlfc_e[5]_i_2 
       (.I0(hctl_ccmd_reg),
        .I1(hctl_ccmd_add),
        .I2(hctl_ccmd_mul),
        .I3(hctl_ccmd_div),
        .I4(hlfc_e_0[4]),
        .I5(hlfc_r_hmul[5]),
        .O(\hlfc_e[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hlfc_f[0]_i_1 
       (.I0(\cbus[0]_INST_0_i_2_n_0 ),
        .I1(\stat_reg[2]_1 ),
        .I2(\hlfc_f_reg[0] ),
        .O(hctl_ccmd_add_reg_9[0]));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \hlfc_f[12]_i_1 
       (.I0(\cbus[12]_INST_0_i_2_n_0 ),
        .I1(\stat_reg[2]_1 ),
        .I2(\hlfc_f_reg[12]_0 ),
        .I3(\hlfc_f_reg[12]_1 ),
        .O(hctl_ccmd_add_reg_9[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfc_f[14]_i_1 
       (.I0(\stat_reg[2]_1 ),
        .I1(\cbus[14]_INST_0_i_21_n_0 ),
        .O(hctl_ccmd_add_reg_9[6]));
  LUT5 #(
    .INIT(32'hAABABABA)) 
    \hlfc_f[15]_i_1 
       (.I0(\stat_reg[2]_1 ),
        .I1(\hlfc_f[15]_i_3_n_0 ),
        .I2(stat),
        .I3(\hlfc_f_reg[15] ),
        .I4(Q[5]),
        .O(\stat_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    \hlfc_f[15]_i_2 
       (.I0(\hlfc_f_reg[15]_1 ),
        .I1(hctl_ccmd_add),
        .I2(\hlfc_f_reg[15]_0 [3]),
        .I3(\hadd/hlfc_f0 [15]),
        .I4(\stat_reg[2]_1 ),
        .O(hctl_ccmd_add_reg_9[7]));
  LUT3 #(
    .INIT(8'h7F)) 
    \hlfc_f[15]_i_3 
       (.I0(\stat_reg[2]_0 [1]),
        .I1(\stat_reg[2]_0 [0]),
        .I2(\stat_reg[2]_0 [2]),
        .O(\hlfc_f[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \hlfc_f[2]_i_1 
       (.I0(hctl_ccmd_add_reg_2),
        .I1(\stat_reg[2]_1 ),
        .I2(\hlfc_f_reg[2] ),
        .I3(\hlfc_f_reg[2]_0 ),
        .O(hctl_ccmd_add_reg_9[1]));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \hlfc_f[3]_i_1 
       (.I0(hctl_ccmd_add_reg_3),
        .I1(\stat_reg[2]_1 ),
        .I2(\hlfc_f_reg[3] ),
        .I3(\hlfc_f_reg[3]_0 ),
        .O(hctl_ccmd_add_reg_9[2]));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \hlfc_f[5]_i_1 
       (.I0(hctl_ccmd_add_reg_6),
        .I1(\stat_reg[2]_1 ),
        .I2(\hlfc_f_reg[5] ),
        .I3(\hlfc_f_reg[5]_0 ),
        .O(hctl_ccmd_add_reg_9[3]));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \hlfc_f[9]_i_1 
       (.I0(\cbus[9]_INST_0_i_2_n_0 ),
        .I1(\stat_reg[2]_1 ),
        .I2(\hlfc_f_reg[9] ),
        .I3(\hlfc_f_reg[9]_0 ),
        .O(hctl_ccmd_add_reg_9[4]));
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
        .I2(\hlfb_f_reg[4] [7]),
        .I3(hlfc_f_t_carry__2_0),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(hctl_ccmd_add_reg_13[3]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__0_i_6
       (.I0(p_0_in1_in[6]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[4] [6]),
        .I3(hlfc_f_t_carry__2_0),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(hctl_ccmd_add_reg_13[2]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__0_i_7
       (.I0(p_0_in1_in[5]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[4] [5]),
        .I3(hlfc_f_t_carry__2_0),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(hctl_ccmd_add_reg_13[1]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__0_i_8
       (.I0(p_0_in1_in[4]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[4] [4]),
        .I3(hlfc_f_t_carry__2_0),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(hctl_ccmd_add_reg_13[0]));
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
        .I2(\hlfb_f_reg[4] [11]),
        .I3(hlfc_f_t_carry__2_0),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(hctl_ccmd_add_reg_14[3]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__1_i_6
       (.I0(p_0_in1_in[10]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[4] [10]),
        .I3(hlfc_f_t_carry__2_0),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(hctl_ccmd_add_reg_14[2]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__1_i_7
       (.I0(p_0_in1_in[9]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[4] [9]),
        .I3(hlfc_f_t_carry__2_0),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(hctl_ccmd_add_reg_14[1]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry__1_i_8
       (.I0(p_0_in1_in[8]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[4] [8]),
        .I3(hlfc_f_t_carry__2_0),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(hctl_ccmd_add_reg_14[0]));
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
        .I2(\hlfb_f_reg[4] [12]),
        .I3(hlfc_f_t_carry__2_0),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(hctl_ccmd_add_reg_15));
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
        .I2(\hlfb_f_reg[4] [3]),
        .I3(hlfc_f_t_carry__2_0),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry_i_7
       (.I0(p_0_in1_in[2]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[4] [2]),
        .I3(hlfc_f_t_carry__2_0),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry_i_8
       (.I0(p_0_in1_in[1]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[4] [1]),
        .I3(hlfc_f_t_carry__2_0),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    hlfc_f_t_carry_i_9
       (.I0(p_0_in1_in[0]),
        .I1(hctl_ccmd_add),
        .I2(\hlfb_f_reg[4] [0]),
        .I3(hlfc_f_t_carry__2_0),
        .I4(hctl_ccmd_sub),
        .I5(hlfa_r_0[21]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h0000FFFFD0DDD0DD)) 
    \hlfc_i[24]_i_1 
       (.I0(\hlfc_i_reg[24] ),
        .I1(\hlfc_i_reg[24]_0 ),
        .I2(hctl_ccmd_reg),
        .I3(\hlfc_i[24]_i_4_n_0 ),
        .I4(\hlfc_i_reg[24]_1 ),
        .I5(hctl_ccmd_add),
        .O(hctl_ccmd_reg_reg_0));
  LUT2 #(
    .INIT(4'h1)) 
    \hlfc_i[24]_i_4 
       (.I0(hctl_ccmd_mul),
        .I1(hctl_ccmd_div),
        .O(\hlfc_i[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h000302F0)) 
    \hlfc_i[25]_i_1 
       (.I0(\stat_reg[2]_5 ),
        .I1(\stat_reg[2]_0 [2]),
        .I2(\stat_reg[2]_0 [1]),
        .I3(\stat_reg[2]_0 [0]),
        .I4(stat),
        .O(\stat_reg[2]_1 ));
  LUT5 #(
    .INIT(32'h1000FFFF)) 
    \hquo[7]_i_1 
       (.I0(stat),
        .I1(\stat_reg[2]_0 [2]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [1]),
        .I4(rst_n),
        .O(\stat_reg[3]_2 ));
  LUT4 #(
    .INIT(16'h0700)) 
    \hquo[7]_i_2 
       (.I0(\stat_reg[2]_0 [1]),
        .I1(\stat_reg[2]_0 [0]),
        .I2(stat),
        .I3(\stat_reg[2]_0 [2]),
        .O(\stat_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEFFEFFE)) 
    \stat[0]_i_1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(\stat[0]_i_3_n_0 ),
        .I2(\stat_reg[2]_0 [2]),
        .I3(stat),
        .I4(\stat_reg[2]_0 [1]),
        .I5(\stat_reg[2]_0 [0]),
        .O(stat_nx[0]));
  LUT6 #(
    .INIT(64'h8000004480004444)) 
    \stat[0]_i_2 
       (.I0(\stat_reg[2]_0 [1]),
        .I1(\stat_reg[2]_0 [0]),
        .I2(\stat_reg[2]_4 ),
        .I3(stat),
        .I4(\stat_reg[2]_0 [2]),
        .I5(\stat_reg[2]_5 ),
        .O(\stat[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h5B1E0000)) 
    \stat[0]_i_3 
       (.I0(ccmd[3]),
        .I1(ccmd[1]),
        .I2(ccmd[2]),
        .I3(ccmd[0]),
        .I4(\hlfa_i[15]_i_2_n_0 ),
        .O(\stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4444F444)) 
    \stat[1]_i_1 
       (.I0(\stat[1]_i_2_n_0 ),
        .I1(\stat[1]_i_3_n_0 ),
        .I2(\stat[1]_i_4_n_0 ),
        .I3(\stat_reg[2]_0 [0]),
        .I4(\stat_reg[2]_0 [1]),
        .I5(\stat[1]_i_5_n_0 ),
        .O(stat_nx[1]));
  LUT6 #(
    .INIT(64'hA8828AA2AAAAAAAA)) 
    \stat[1]_i_2 
       (.I0(\stat[1]_i_6_n_0 ),
        .I1(ccmd[2]),
        .I2(ccmd[1]),
        .I3(ccmd[3]),
        .I4(ccmd[0]),
        .I5(ccmd[4]),
        .O(\stat[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1011)) 
    \stat[1]_i_3 
       (.I0(\stat_reg[2]_0 [1]),
        .I1(\stat_reg[2]_0 [2]),
        .I2(\stat_reg[2]_5 ),
        .I3(\stat_reg[2]_0 [0]),
        .O(\stat[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[1]_i_4 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(stat),
        .O(\stat[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h10000F0000000F00)) 
    \stat[1]_i_5 
       (.I0(\stat_reg[1]_5 ),
        .I1(\stat_reg[1]_6 ),
        .I2(stat),
        .I3(\stat_reg[2]_0 [1]),
        .I4(\stat_reg[2]_0 [0]),
        .I5(\stat_reg[2]_0 [2]),
        .O(\stat[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[1]_i_6 
       (.I0(\stat_reg[2]_0 [0]),
        .I1(stat),
        .O(\stat[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2333333323333303)) 
    \stat[2]_i_1 
       (.I0(\stat_reg[2]_4 ),
        .I1(\stat[2]_i_2_n_0 ),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(\stat_reg[2]_0 [1]),
        .I5(\stat_reg[2]_5 ),
        .O(stat_nx[2]));
  LUT5 #(
    .INIT(32'h4EA0EA04)) 
    \stat[2]_i_2 
       (.I0(\stat_reg[2]_0 [0]),
        .I1(\stat[2]_i_3_n_0 ),
        .I2(\stat_reg[2]_0 [2]),
        .I3(stat),
        .I4(\stat_reg[2]_0 [1]),
        .O(\stat[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFB9FFFFFFFFFFFFF)) 
    \stat[2]_i_3 
       (.I0(ccmd[2]),
        .I1(ccmd[3]),
        .I2(ccmd[0]),
        .I3(ccmd[1]),
        .I4(ccmd[4]),
        .I5(\stat[2]_i_4_n_0 ),
        .O(\stat[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[2]_i_4 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(\stat_reg[2]_0 [1]),
        .O(\stat[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000E000A)) 
    \stat[3]_i_2 
       (.I0(stat),
        .I1(\stat_reg[2]_0 [0]),
        .I2(\stat_reg[2]_0 [1]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(\stat_reg[2]_5 ),
        .I5(\stat[3]_i_4_n_0 ),
        .O(stat_nx[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF40420000)) 
    \stat[3]_i_4 
       (.I0(ccmd[3]),
        .I1(ccmd[1]),
        .I2(ccmd[2]),
        .I3(ccmd[0]),
        .I4(\hlfa_i[15]_i_2_n_0 ),
        .I5(\stat[1]_i_5_n_0 ),
        .O(\stat[3]_i_4_n_0 ));
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
    hctl_ccmd_add_reg,
    hctl_ccmd_add_reg_0,
    hctl_ccmd_add_reg_1,
    \cbus[12]_INST_0_i_12_0 ,
    CO,
    D,
    hctl_ccmd_add_reg_2,
    hctl_ccmd_add_reg_3,
    hlfc_f_t_carry_0,
    \cbus[15]_INST_0_i_39_0 ,
    \cbus[8]_INST_0_i_5_0 ,
    \cbus[12]_INST_0_i_5_0 ,
    \cbus[0]_INST_0_i_2 ,
    p_0_in1_in,
    S,
    \cbus[4]_INST_0_i_3 ,
    \cbus[8]_INST_0_i_2 ,
    \hlfc_f_reg[15] ,
    \cbus[9]_INST_0_i_2 ,
    \hlfc_i_reg[23] ,
    \hlfc_i_reg[23]_0 ,
    hctl_ccmd_add,
    \hlfc_f_reg[1] );
  output [2:0]O;
  output [3:0]hctl_ccmd_add_reg;
  output [3:0]hctl_ccmd_add_reg_0;
  output [3:0]hctl_ccmd_add_reg_1;
  output [10:0]\cbus[12]_INST_0_i_12_0 ;
  output [0:0]CO;
  output [0:0]D;
  output hctl_ccmd_add_reg_2;
  output hctl_ccmd_add_reg_3;
  output hlfc_f_t_carry_0;
  output \cbus[15]_INST_0_i_39_0 ;
  output \cbus[8]_INST_0_i_5_0 ;
  output \cbus[12]_INST_0_i_5_0 ;
  input \cbus[0]_INST_0_i_2 ;
  input [14:0]p_0_in1_in;
  input [3:0]S;
  input [3:0]\cbus[4]_INST_0_i_3 ;
  input [3:0]\cbus[8]_INST_0_i_2 ;
  input [3:0]\hlfc_f_reg[15] ;
  input [0:0]\cbus[9]_INST_0_i_2 ;
  input \hlfc_i_reg[23] ;
  input \hlfc_i_reg[23]_0 ;
  input hctl_ccmd_add;
  input \hlfc_f_reg[1] ;

  wire \<const0> ;
  wire [0:0]CO;
  wire [0:0]D;
  wire [2:0]O;
  wire [3:0]S;
  wire \cbus[0]_INST_0_i_2 ;
  wire \cbus[12]_INST_0_i_10_n_0 ;
  wire \cbus[12]_INST_0_i_11_n_0 ;
  wire [10:0]\cbus[12]_INST_0_i_12_0 ;
  wire \cbus[12]_INST_0_i_12_n_0 ;
  wire \cbus[12]_INST_0_i_5_0 ;
  wire \cbus[12]_INST_0_i_5_n_1 ;
  wire \cbus[12]_INST_0_i_5_n_2 ;
  wire \cbus[12]_INST_0_i_5_n_3 ;
  wire \cbus[14]_INST_0_i_10_n_0 ;
  wire \cbus[14]_INST_0_i_12_n_0 ;
  wire \cbus[14]_INST_0_i_13_n_0 ;
  wire \cbus[14]_INST_0_i_24_n_0 ;
  wire \cbus[14]_INST_0_i_25_n_0 ;
  wire \cbus[15]_INST_0_i_39_0 ;
  wire \cbus[15]_INST_0_i_39_n_0 ;
  wire \cbus[4]_INST_0_i_10_n_0 ;
  wire \cbus[4]_INST_0_i_11_n_0 ;
  wire [3:0]\cbus[4]_INST_0_i_3 ;
  wire \cbus[4]_INST_0_i_4_n_0 ;
  wire \cbus[4]_INST_0_i_4_n_1 ;
  wire \cbus[4]_INST_0_i_4_n_2 ;
  wire \cbus[4]_INST_0_i_4_n_3 ;
  wire \cbus[4]_INST_0_i_7_n_0 ;
  wire \cbus[4]_INST_0_i_8_n_0 ;
  wire \cbus[4]_INST_0_i_9_n_0 ;
  wire \cbus[6]_INST_0_i_15_n_0 ;
  wire \cbus[8]_INST_0_i_10_n_0 ;
  wire \cbus[8]_INST_0_i_11_n_0 ;
  wire [3:0]\cbus[8]_INST_0_i_2 ;
  wire \cbus[8]_INST_0_i_5_0 ;
  wire \cbus[8]_INST_0_i_5_n_0 ;
  wire \cbus[8]_INST_0_i_5_n_1 ;
  wire \cbus[8]_INST_0_i_5_n_2 ;
  wire \cbus[8]_INST_0_i_5_n_3 ;
  wire \cbus[8]_INST_0_i_8_n_0 ;
  wire \cbus[8]_INST_0_i_9_n_0 ;
  wire [0:0]\cbus[9]_INST_0_i_2 ;
  wire hctl_ccmd_add;
  wire [3:0]hctl_ccmd_add_reg;
  wire [3:0]hctl_ccmd_add_reg_0;
  wire [3:0]hctl_ccmd_add_reg_1;
  wire hctl_ccmd_add_reg_2;
  wire hctl_ccmd_add_reg_3;
  wire [1:1]hlfc_f0;
  wire [3:0]\hlfc_f_reg[15] ;
  wire \hlfc_f_reg[1] ;
  wire hlfc_f_t_carry_0;
  wire hlfc_f_t_carry__0_n_0;
  wire hlfc_f_t_carry__0_n_1;
  wire hlfc_f_t_carry__0_n_2;
  wire hlfc_f_t_carry__0_n_3;
  wire hlfc_f_t_carry__1_n_0;
  wire hlfc_f_t_carry__1_n_1;
  wire hlfc_f_t_carry__1_n_2;
  wire hlfc_f_t_carry__1_n_3;
  wire hlfc_f_t_carry__2_n_1;
  wire hlfc_f_t_carry__2_n_2;
  wire hlfc_f_t_carry__2_n_3;
  wire hlfc_f_t_carry_n_0;
  wire hlfc_f_t_carry_n_1;
  wire hlfc_f_t_carry_n_2;
  wire hlfc_f_t_carry_n_3;
  wire hlfc_f_t_carry_n_6;
  wire \hlfc_i_reg[23] ;
  wire \hlfc_i_reg[23]_0 ;
  wire [14:0]p_0_in1_in;

  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_10 
       (.I0(hctl_ccmd_add_reg_0[3]),
        .O(\cbus[12]_INST_0_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_11 
       (.I0(hctl_ccmd_add_reg_0[2]),
        .O(\cbus[12]_INST_0_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_12 
       (.I0(hctl_ccmd_add_reg_0[1]),
        .O(\cbus[12]_INST_0_i_12_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[12]_INST_0_i_5 
       (.CI(\cbus[8]_INST_0_i_5_n_0 ),
        .CO({CO,\cbus[12]_INST_0_i_5_n_1 ,\cbus[12]_INST_0_i_5_n_2 ,\cbus[12]_INST_0_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\cbus[12]_INST_0_i_12_0 [10:7]),
        .S({\cbus[9]_INST_0_i_2 ,\cbus[12]_INST_0_i_10_n_0 ,\cbus[12]_INST_0_i_11_n_0 ,\cbus[12]_INST_0_i_12_n_0 }));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \cbus[14]_INST_0_i_10 
       (.I0(\cbus[12]_INST_0_i_12_0 [8]),
        .I1(hctl_ccmd_add_reg_1[3]),
        .I2(hctl_ccmd_add_reg_0[2]),
        .I3(\cbus[12]_INST_0_i_12_0 [9]),
        .I4(hctl_ccmd_add_reg_0[3]),
        .I5(\cbus[8]_INST_0_i_5_0 ),
        .O(\cbus[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \cbus[14]_INST_0_i_12 
       (.I0(\cbus[12]_INST_0_i_12_0 [3]),
        .I1(hctl_ccmd_add_reg_1[3]),
        .I2(hctl_ccmd_add_reg[1]),
        .I3(\cbus[12]_INST_0_i_12_0 [2]),
        .I4(hctl_ccmd_add_reg[0]),
        .I5(\cbus[14]_INST_0_i_24_n_0 ),
        .O(\cbus[14]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFEA)) 
    \cbus[14]_INST_0_i_13 
       (.I0(\cbus[14]_INST_0_i_25_n_0 ),
        .I1(hlfc_f0),
        .I2(hctl_ccmd_add_reg_1[3]),
        .I3(hlfc_f_t_carry_n_6),
        .I4(O[0]),
        .O(\cbus[14]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFBFFFF0000)) 
    \cbus[14]_INST_0_i_2 
       (.I0(\cbus[14]_INST_0_i_10_n_0 ),
        .I1(\hlfc_i_reg[23] ),
        .I2(\cbus[14]_INST_0_i_12_n_0 ),
        .I3(\cbus[14]_INST_0_i_13_n_0 ),
        .I4(\hlfc_i_reg[23]_0 ),
        .I5(hctl_ccmd_add),
        .O(hctl_ccmd_add_reg_2));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[14]_INST_0_i_22 
       (.I0(hctl_ccmd_add_reg_0[1]),
        .I1(\cbus[12]_INST_0_i_12_0 [7]),
        .I2(hctl_ccmd_add_reg_0[0]),
        .I3(hctl_ccmd_add_reg_1[3]),
        .I4(\cbus[12]_INST_0_i_12_0 [6]),
        .O(\cbus[8]_INST_0_i_5_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[14]_INST_0_i_24 
       (.I0(hctl_ccmd_add_reg[2]),
        .I1(\cbus[12]_INST_0_i_12_0 [4]),
        .I2(hctl_ccmd_add_reg[3]),
        .I3(hctl_ccmd_add_reg_1[3]),
        .I4(\cbus[12]_INST_0_i_12_0 [5]),
        .O(\cbus[14]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[14]_INST_0_i_25 
       (.I0(O[2]),
        .I1(\cbus[12]_INST_0_i_12_0 [1]),
        .I2(O[1]),
        .I3(hctl_ccmd_add_reg_1[3]),
        .I4(\cbus[12]_INST_0_i_12_0 [0]),
        .O(\cbus[14]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cbus[15]_INST_0_i_25 
       (.I0(O[0]),
        .I1(\cbus[6]_INST_0_i_15_n_0 ),
        .I2(\cbus[14]_INST_0_i_25_n_0 ),
        .I3(\cbus[14]_INST_0_i_24_n_0 ),
        .I4(\cbus[15]_INST_0_i_39_n_0 ),
        .O(\cbus[15]_INST_0_i_39_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[15]_INST_0_i_38 
       (.I0(hctl_ccmd_add_reg_0[3]),
        .I1(\cbus[12]_INST_0_i_12_0 [9]),
        .I2(hctl_ccmd_add_reg_0[2]),
        .I3(hctl_ccmd_add_reg_1[3]),
        .I4(\cbus[12]_INST_0_i_12_0 [8]),
        .O(\cbus[12]_INST_0_i_5_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[15]_INST_0_i_39 
       (.I0(hctl_ccmd_add_reg[0]),
        .I1(\cbus[12]_INST_0_i_12_0 [2]),
        .I2(hctl_ccmd_add_reg[1]),
        .I3(hctl_ccmd_add_reg_1[3]),
        .I4(\cbus[12]_INST_0_i_12_0 [3]),
        .O(\cbus[15]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \cbus[1]_INST_0_i_2 
       (.I0(hlfc_f0),
        .I1(hctl_ccmd_add_reg_1[3]),
        .I2(hlfc_f_t_carry_n_6),
        .I3(hctl_ccmd_add),
        .I4(\hlfc_f_reg[1] ),
        .O(hctl_ccmd_add_reg_3));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[4]_INST_0_i_10 
       (.I0(O[1]),
        .O(\cbus[4]_INST_0_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[4]_INST_0_i_11 
       (.I0(hlfc_f_t_carry_n_6),
        .O(\cbus[4]_INST_0_i_11_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[4]_INST_0_i_4 
       (.CI(\<const0> ),
        .CO({\cbus[4]_INST_0_i_4_n_0 ,\cbus[4]_INST_0_i_4_n_1 ,\cbus[4]_INST_0_i_4_n_2 ,\cbus[4]_INST_0_i_4_n_3 }),
        .CYINIT(\cbus[4]_INST_0_i_7_n_0 ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cbus[12]_INST_0_i_12_0 [2:0],hlfc_f0}),
        .S({\cbus[4]_INST_0_i_8_n_0 ,\cbus[4]_INST_0_i_9_n_0 ,\cbus[4]_INST_0_i_10_n_0 ,\cbus[4]_INST_0_i_11_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[4]_INST_0_i_7 
       (.I0(O[0]),
        .O(\cbus[4]_INST_0_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[4]_INST_0_i_8 
       (.I0(hctl_ccmd_add_reg[0]),
        .O(\cbus[4]_INST_0_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[4]_INST_0_i_9 
       (.I0(O[2]),
        .O(\cbus[4]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[6]_INST_0_i_15 
       (.I0(hlfc_f0),
        .I1(hctl_ccmd_add_reg_1[3]),
        .I2(hlfc_f_t_carry_n_6),
        .O(\cbus[6]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \cbus[6]_INST_0_i_9 
       (.I0(\cbus[14]_INST_0_i_10_n_0 ),
        .I1(\hlfc_i_reg[23] ),
        .I2(\cbus[14]_INST_0_i_12_n_0 ),
        .I3(\cbus[14]_INST_0_i_25_n_0 ),
        .I4(\cbus[6]_INST_0_i_15_n_0 ),
        .I5(O[0]),
        .O(hlfc_f_t_carry_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[8]_INST_0_i_10 
       (.I0(hctl_ccmd_add_reg[2]),
        .O(\cbus[8]_INST_0_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[8]_INST_0_i_11 
       (.I0(hctl_ccmd_add_reg[1]),
        .O(\cbus[8]_INST_0_i_11_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[8]_INST_0_i_5 
       (.CI(\cbus[4]_INST_0_i_4_n_0 ),
        .CO({\cbus[8]_INST_0_i_5_n_0 ,\cbus[8]_INST_0_i_5_n_1 ,\cbus[8]_INST_0_i_5_n_2 ,\cbus[8]_INST_0_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\cbus[12]_INST_0_i_12_0 [6:3]),
        .S({\cbus[8]_INST_0_i_8_n_0 ,\cbus[8]_INST_0_i_9_n_0 ,\cbus[8]_INST_0_i_10_n_0 ,\cbus[8]_INST_0_i_11_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[8]_INST_0_i_8 
       (.I0(hctl_ccmd_add_reg_0[0]),
        .O(\cbus[8]_INST_0_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[8]_INST_0_i_9 
       (.I0(hctl_ccmd_add_reg[3]),
        .O(\cbus[8]_INST_0_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfc_f_t_carry
       (.CI(\<const0> ),
        .CO({hlfc_f_t_carry_n_0,hlfc_f_t_carry_n_1,hlfc_f_t_carry_n_2,hlfc_f_t_carry_n_3}),
        .CYINIT(\cbus[0]_INST_0_i_2 ),
        .DI(p_0_in1_in[3:0]),
        .O({O[2:1],hlfc_f_t_carry_n_6,O[0]}),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfc_f_t_carry__0
       (.CI(hlfc_f_t_carry_n_0),
        .CO({hlfc_f_t_carry__0_n_0,hlfc_f_t_carry__0_n_1,hlfc_f_t_carry__0_n_2,hlfc_f_t_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(p_0_in1_in[7:4]),
        .O(hctl_ccmd_add_reg),
        .S(\cbus[4]_INST_0_i_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfc_f_t_carry__1
       (.CI(hlfc_f_t_carry__0_n_0),
        .CO({hlfc_f_t_carry__1_n_0,hlfc_f_t_carry__1_n_1,hlfc_f_t_carry__1_n_2,hlfc_f_t_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(p_0_in1_in[11:8]),
        .O(hctl_ccmd_add_reg_0),
        .S(\cbus[8]_INST_0_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfc_f_t_carry__2
       (.CI(hlfc_f_t_carry__1_n_0),
        .CO({hlfc_f_t_carry__2_n_1,hlfc_f_t_carry__2_n_2,hlfc_f_t_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,p_0_in1_in[14:12]}),
        .O(hctl_ccmd_add_reg_1),
        .S(\hlfc_f_reg[15] ));
  LUT1 #(
    .INIT(2'h1)) 
    \hlfc_i[23]_i_1 
       (.I0(hctl_ccmd_add_reg_2),
        .O(D));
endmodule

module hfpu_hdiv
   (\den_reg[21]_0 ,
    rem2_carry__2_i_1,
    rem1_carry__2_i_1,
    rem0,
    SR,
    \hquo_reg[2]_0 ,
    Q,
    \hquo_reg[3]_0 ,
    rst_n,
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
  output \hquo_reg[2]_0 ;
  output [7:0]Q;
  output \hquo_reg[3]_0 ;
  input rst_n;
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
  wire \cbus[14]_INST_0_i_40_n_0 ;
  wire clk;
  wire [23:8]den;
  wire [0:0]\den_reg[21]_0 ;
  wire [10:0]dso;
  wire [0:0]\dso_reg[10]_0 ;
  wire [10:0]\dso_reg[10]_1 ;
  wire fdiv_n_2;
  wire fdiv_n_3;
  wire [0:0]\hquo_reg[0]_0 ;
  wire \hquo_reg[2]_0 ;
  wire \hquo_reg[3]_0 ;
  wire [0:0]\hquo_reg[7]_0 ;
  wire [0:0]p_1_in3_in;
  wire [0:0]quo_0;
  wire [12:0]rem0;
  wire [0:0]rem1_carry__2_i_1;
  wire [0:0]rem2_carry__2_i_1;
  wire rst_n;

  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[14]_INST_0_i_40 
       (.I0(Q[0]),
        .I1(Q[6]),
        .I2(Q[1]),
        .I3(Q[7]),
        .O(\cbus[14]_INST_0_i_40_n_0 ));
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
        .\cbus[14]_INST_0_i_14 (Q[5:2]),
        .\cbus[14]_INST_0_i_14_0 (\cbus[14]_INST_0_i_40_n_0 ),
        .\hquo_reg[2] (\hquo_reg[2]_0 ),
        .\hquo_reg[3] (\hquo_reg[3]_0 ),
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
    \ccmd_f_reg[0]_0 ,
    hlfa_r_0,
    O,
    \hlfa_e_reg[4]_0 ,
    hlfc_e,
    D,
    \hlfa_i_reg[15]_0 ,
    \ccmd_f_reg[4]_0 ,
    \hlfa_i_reg[4]_0 ,
    \hlfa_i_reg[15]_1 ,
    \hlfa_i_reg[15]_2 ,
    \hlfa_i_reg[4]_1 ,
    hctl_ccmd_cmp_reg,
    \hlfa_e_reg[2]_0 ,
    \hlfa_e_reg[2]_1 ,
    \hlfa_e_reg[0]_0 ,
    \ccmd_f_reg[4]_1 ,
    \hlfa_i_reg[13]_0 ,
    \hlfa_i_reg[13]_1 ,
    hctl_ccmd_add_reg,
    \ccmd_f_reg[3]_0 ,
    \hlfa_i_reg[0]_0 ,
    \hlfa_f_reg[1]_0 ,
    \hlfa_i_reg[2]_0 ,
    \ccmd_f_reg[3]_1 ,
    \ccmd_f_reg[0]_1 ,
    \hlfa_i_reg[3]_0 ,
    \hlfa_i_reg[4]_2 ,
    \hlfa_i_reg[5]_0 ,
    \hlfa_i_reg[6]_0 ,
    \hlfa_i_reg[7]_0 ,
    \hlfa_i_reg[8]_0 ,
    \hlfa_i_reg[9]_0 ,
    \hlfa_i_reg[10]_0 ,
    \hlfa_i_reg[11]_0 ,
    \hlfa_i_reg[12]_0 ,
    \hlfa_f_reg[13]_0 ,
    hctl_ccmd_add_reg_0,
    hctl_ccmd_reg_reg,
    hctl_ccmd_mul_reg,
    hctl_ccmd_mul_reg_0,
    \hlfb_f_reg[3] ,
    \stat_reg[0] ,
    \hlfb_f_reg[11] ,
    \stat_reg[1] ,
    \hlfb_f_reg[12] ,
    hctl_ccmd_int_reg,
    E,
    \hlfb_e_reg[0] ,
    \hlfb_e_reg[1] ,
    \hlfb_e_reg[2] ,
    \hlfb_e_reg[3] ,
    hctl_ccmd_int_reg_0,
    \hlfa_e_reg[4]_1 ,
    hlfa_e_dif0_carry_0,
    \hlfa_e_reg[5]_0 ,
    \hlfb_e_reg[3]_0 ,
    \hlfa_i_reg[4]_3 ,
    hfpu_dsp_a,
    \hlfa_i_reg[15]_3 ,
    \hlfa_e_reg[5]_1 ,
    \hlfa_e_reg[3]_1 ,
    .abus_13_sp_1(abus_13_sn_1),
    S,
    \cbus[14]_INST_0_i_30 ,
    hctl_ccmd_add,
    \hlfc_i_reg[22] ,
    hctl_ccmd_mul,
    hctl_ccmd_div,
    \hlfc_i_reg[22]_0 ,
    \hlfc_i_reg[22]_1 ,
    \hlfc_i_reg[24] ,
    Q,
    hctl_ccmd_sub,
    \cbus[6] ,
    hctl_ccmd_cmp,
    \hlfc_e_reg[2] ,
    \hlfc_e_reg[2]_0 ,
    \hlfa_f_reg[10]_0 ,
    \hlfa_f_reg[10]_1 ,
    \hlfa_f_reg[9]_0 ,
    \hlfa_f_reg[11]_0 ,
    hctl_load_b,
    \hlfa_f_reg[12]_0 ,
    \hlfa_f_reg[12]_1 ,
    rst_n,
    \hlfa_f_reg[2]_0 ,
    \hlfa_f_reg[3]_0 ,
    \hlfa_f_reg[4]_0 ,
    abus,
    \hlfa_f_reg[6]_0 ,
    \hlfa_f_reg[7]_0 ,
    \hlfa_f_reg[8]_0 ,
    \hlfa_f_reg[15]_0 ,
    hlfa_e_dif0_carry__0_0,
    \hlfa_f_reg[0]_0 ,
    \hlfc_f_reg[15] ,
    \cbus[14]_INST_0_i_14 ,
    \cbus[1]_INST_0_i_2 ,
    \hlfc_f_reg[13] ,
    \hlfc_f_reg[13]_0 ,
    \hlfc_e_reg[2]_1 ,
    hctl_ccmd_reg,
    \hlfc_i_reg[24]_0 ,
    \cbus[15]_INST_0_i_2 ,
    \hlfc_e_reg[0] ,
    \hlfb_f_reg[10] ,
    \hlfb_f_reg[1] ,
    \hlfb_f_reg[1]_0 ,
    \hlfb_f_reg[12]_0 ,
    \hlfb_f_reg[1]_1 ,
    \hlfb_f_reg[12]_1 ,
    \hlfb_e_reg[5] ,
    \hlfb_e_reg[1]_0 ,
    \hlfb_e_reg[3]_1 ,
    hctl_ccmd_int,
    \hlfc_i_reg[25] ,
    \hlfc_i_reg[25]_0 ,
    \hlfc_i_reg[25]_1 ,
    \cbus[15]_INST_0_i_9_0 ,
    \cbus[15]_INST_0_i_9_1 ,
    \cbus[15]_INST_0_i_10_0 ,
    clk,
    SR,
    \ccmd_f_reg[4]_2 ,
    ccmd);
  output [0:0]\hlfa_e_reg[3]_0 ;
  output [0:0]\ccmd_f_reg[0]_0 ;
  output [22:0]hlfa_r_0;
  output [3:0]O;
  output [0:0]\hlfa_e_reg[4]_0 ;
  output [4:0]hlfc_e;
  output [1:0]D;
  output \hlfa_i_reg[15]_0 ;
  output \ccmd_f_reg[4]_0 ;
  output \hlfa_i_reg[4]_0 ;
  output \hlfa_i_reg[15]_1 ;
  output \hlfa_i_reg[15]_2 ;
  output \hlfa_i_reg[4]_1 ;
  output hctl_ccmd_cmp_reg;
  output [1:0]\hlfa_e_reg[2]_0 ;
  output \hlfa_e_reg[2]_1 ;
  output \hlfa_e_reg[0]_0 ;
  output [0:0]\ccmd_f_reg[4]_1 ;
  output \hlfa_i_reg[13]_0 ;
  output \hlfa_i_reg[13]_1 ;
  output hctl_ccmd_add_reg;
  output \ccmd_f_reg[3]_0 ;
  output \hlfa_i_reg[0]_0 ;
  output \hlfa_f_reg[1]_0 ;
  output \hlfa_i_reg[2]_0 ;
  output \ccmd_f_reg[3]_1 ;
  output \ccmd_f_reg[0]_1 ;
  output \hlfa_i_reg[3]_0 ;
  output \hlfa_i_reg[4]_2 ;
  output \hlfa_i_reg[5]_0 ;
  output \hlfa_i_reg[6]_0 ;
  output \hlfa_i_reg[7]_0 ;
  output \hlfa_i_reg[8]_0 ;
  output \hlfa_i_reg[9]_0 ;
  output \hlfa_i_reg[10]_0 ;
  output \hlfa_i_reg[11]_0 ;
  output \hlfa_i_reg[12]_0 ;
  output \hlfa_f_reg[13]_0 ;
  output hctl_ccmd_add_reg_0;
  output hctl_ccmd_reg_reg;
  output hctl_ccmd_mul_reg;
  output hctl_ccmd_mul_reg_0;
  output [0:0]\hlfb_f_reg[3] ;
  output \stat_reg[0] ;
  output \hlfb_f_reg[11] ;
  output \stat_reg[1] ;
  output \hlfb_f_reg[12] ;
  output hctl_ccmd_int_reg;
  output [0:0]E;
  output [0:0]\hlfb_e_reg[0] ;
  output \hlfb_e_reg[1] ;
  output \hlfb_e_reg[2] ;
  output \hlfb_e_reg[3] ;
  output hctl_ccmd_int_reg_0;
  output \hlfa_e_reg[4]_1 ;
  output hlfa_e_dif0_carry_0;
  output [0:0]\hlfa_e_reg[5]_0 ;
  output \hlfb_e_reg[3]_0 ;
  output \hlfa_i_reg[4]_3 ;
  output [10:0]hfpu_dsp_a;
  output [2:0]\hlfa_i_reg[15]_3 ;
  output \hlfa_e_reg[5]_1 ;
  output \hlfa_e_reg[3]_1 ;
  input [0:0]S;
  input [0:0]\cbus[14]_INST_0_i_30 ;
  input hctl_ccmd_add;
  input \hlfc_i_reg[22] ;
  input hctl_ccmd_mul;
  input hctl_ccmd_div;
  input \hlfc_i_reg[22]_0 ;
  input \hlfc_i_reg[22]_1 ;
  input \hlfc_i_reg[24] ;
  input [0:0]Q;
  input hctl_ccmd_sub;
  input \cbus[6] ;
  input hctl_ccmd_cmp;
  input \hlfc_e_reg[2] ;
  input [1:0]\hlfc_e_reg[2]_0 ;
  input \hlfa_f_reg[10]_0 ;
  input \hlfa_f_reg[10]_1 ;
  input \hlfa_f_reg[9]_0 ;
  input \hlfa_f_reg[11]_0 ;
  input hctl_load_b;
  input \hlfa_f_reg[12]_0 ;
  input \hlfa_f_reg[12]_1 ;
  input rst_n;
  input \hlfa_f_reg[2]_0 ;
  input \hlfa_f_reg[3]_0 ;
  input \hlfa_f_reg[4]_0 ;
  input [15:0]abus;
  input \hlfa_f_reg[6]_0 ;
  input \hlfa_f_reg[7]_0 ;
  input \hlfa_f_reg[8]_0 ;
  input \hlfa_f_reg[15]_0 ;
  input [5:0]hlfa_e_dif0_carry__0_0;
  input \hlfa_f_reg[0]_0 ;
  input \hlfc_f_reg[15] ;
  input \cbus[14]_INST_0_i_14 ;
  input \cbus[1]_INST_0_i_2 ;
  input \hlfc_f_reg[13] ;
  input \hlfc_f_reg[13]_0 ;
  input \hlfc_e_reg[2]_1 ;
  input hctl_ccmd_reg;
  input \hlfc_i_reg[24]_0 ;
  input \cbus[15]_INST_0_i_2 ;
  input \hlfc_e_reg[0] ;
  input [6:0]\hlfb_f_reg[10] ;
  input \hlfb_f_reg[1] ;
  input \hlfb_f_reg[1]_0 ;
  input \hlfb_f_reg[12]_0 ;
  input [2:0]\hlfb_f_reg[1]_1 ;
  input \hlfb_f_reg[12]_1 ;
  input \hlfb_e_reg[5] ;
  input \hlfb_e_reg[1]_0 ;
  input \hlfb_e_reg[3]_1 ;
  input hctl_ccmd_int;
  input \hlfc_i_reg[25] ;
  input \hlfc_i_reg[25]_0 ;
  input \hlfc_i_reg[25]_1 ;
  input \cbus[15]_INST_0_i_9_0 ;
  input \cbus[15]_INST_0_i_9_1 ;
  input [0:0]\cbus[15]_INST_0_i_10_0 ;
  input clk;
  input [0:0]SR;
  input [0:0]\ccmd_f_reg[4]_2 ;
  input [4:0]ccmd;
  output abus_13_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [0:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [15:0]abus;
  wire abus_13_sn_1;
  wire \cbus[14]_INST_0_i_14 ;
  wire [0:0]\cbus[14]_INST_0_i_30 ;
  wire \cbus[14]_INST_0_i_32_n_0 ;
  wire \cbus[14]_INST_0_i_37_n_0 ;
  wire \cbus[14]_INST_0_i_38_n_0 ;
  wire \cbus[14]_INST_0_i_41_n_0 ;
  wire \cbus[14]_INST_0_i_41_n_1 ;
  wire \cbus[14]_INST_0_i_41_n_2 ;
  wire \cbus[14]_INST_0_i_41_n_3 ;
  wire \cbus[14]_INST_0_i_45_n_0 ;
  wire \cbus[14]_INST_0_i_46_n_0 ;
  wire \cbus[14]_INST_0_i_47_n_0 ;
  wire \cbus[14]_INST_0_i_48_n_0 ;
  wire [0:0]\cbus[15]_INST_0_i_10_0 ;
  wire \cbus[15]_INST_0_i_11_n_0 ;
  wire \cbus[15]_INST_0_i_12_n_0 ;
  wire \cbus[15]_INST_0_i_18_n_0 ;
  wire \cbus[15]_INST_0_i_2 ;
  wire \cbus[15]_INST_0_i_23_n_0 ;
  wire \cbus[15]_INST_0_i_26_n_0 ;
  wire \cbus[15]_INST_0_i_27_n_0 ;
  wire \cbus[15]_INST_0_i_28_n_0 ;
  wire \cbus[15]_INST_0_i_31_n_0 ;
  wire \cbus[15]_INST_0_i_40_n_0 ;
  wire \cbus[15]_INST_0_i_41_n_0 ;
  wire \cbus[15]_INST_0_i_9_0 ;
  wire \cbus[15]_INST_0_i_9_1 ;
  wire \cbus[1]_INST_0_i_2 ;
  wire \cbus[6] ;
  wire \cbus[6]_INST_0_i_13_n_0 ;
  wire \cbus[6]_INST_0_i_14_n_0 ;
  wire [4:0]ccmd;
  wire [3:0]ccmd_f;
  wire [0:0]\ccmd_f_reg[0]_0 ;
  wire \ccmd_f_reg[0]_1 ;
  wire \ccmd_f_reg[3]_0 ;
  wire \ccmd_f_reg[3]_1 ;
  wire \ccmd_f_reg[4]_0 ;
  wire [0:0]\ccmd_f_reg[4]_1 ;
  wire [0:0]\ccmd_f_reg[4]_2 ;
  wire clk;
  wire hctl_ccmd_add;
  wire hctl_ccmd_add_reg;
  wire hctl_ccmd_add_reg_0;
  wire hctl_ccmd_cmp;
  wire hctl_ccmd_cmp_reg;
  wire hctl_ccmd_div;
  wire hctl_ccmd_int;
  wire hctl_ccmd_int_reg;
  wire hctl_ccmd_int_reg_0;
  wire hctl_ccmd_mul;
  wire hctl_ccmd_mul_reg;
  wire hctl_ccmd_mul_reg_0;
  wire hctl_ccmd_reg;
  wire hctl_ccmd_reg_reg;
  wire hctl_ccmd_sub;
  wire hctl_load_b;
  wire [10:0]hfpu_dsp_a;
  wire \hlfa_e[0]_i_1_n_0 ;
  wire \hlfa_e[0]_i_2_n_0 ;
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
  wire \hlfa_e[5]_i_18_n_0 ;
  wire \hlfa_e[5]_i_19_n_0 ;
  wire \hlfa_e[5]_i_1_n_0 ;
  wire \hlfa_e[5]_i_20_n_0 ;
  wire \hlfa_e[5]_i_2_n_0 ;
  wire \hlfa_e[5]_i_3_n_0 ;
  wire \hlfa_e[5]_i_4_n_0 ;
  wire \hlfa_e[5]_i_5_n_0 ;
  wire \hlfa_e[5]_i_6_n_0 ;
  wire \hlfa_e[5]_i_7_n_0 ;
  wire \hlfa_e[5]_i_8_n_0 ;
  wire \hlfa_e[5]_i_9_n_0 ;
  wire hlfa_e_dif0_carry_0;
  wire [5:0]hlfa_e_dif0_carry__0_0;
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
  wire [1:0]\hlfa_e_reg[2]_0 ;
  wire \hlfa_e_reg[2]_1 ;
  wire [0:0]\hlfa_e_reg[3]_0 ;
  wire \hlfa_e_reg[3]_1 ;
  wire [0:0]\hlfa_e_reg[4]_0 ;
  wire \hlfa_e_reg[4]_1 ;
  wire [0:0]\hlfa_e_reg[5]_0 ;
  wire \hlfa_e_reg[5]_1 ;
  wire \hlfa_f[0]_i_2_n_0 ;
  wire \hlfa_f[0]_i_3_n_0 ;
  wire \hlfa_f[0]_i_4_n_0 ;
  wire \hlfa_f[0]_i_5_n_0 ;
  wire \hlfa_f[0]_i_6_n_0 ;
  wire \hlfa_f[0]_i_7_n_0 ;
  wire \hlfa_f[0]_i_8_n_0 ;
  wire \hlfa_f[0]_i_9_n_0 ;
  wire \hlfa_f[10]_i_3_n_0 ;
  wire \hlfa_f[10]_i_4_n_0 ;
  wire \hlfa_f[10]_i_5_n_0 ;
  wire \hlfa_f[11]_i_4_n_0 ;
  wire \hlfa_f[11]_i_5_n_0 ;
  wire \hlfa_f[11]_i_6_n_0 ;
  wire \hlfa_f[11]_i_7_n_0 ;
  wire \hlfa_f[12]_i_2_n_0 ;
  wire \hlfa_f[12]_i_3_n_0 ;
  wire \hlfa_f[13]_i_2_n_0 ;
  wire \hlfa_f[13]_i_3_n_0 ;
  wire \hlfa_f[13]_i_4_n_0 ;
  wire \hlfa_f[13]_i_5_n_0 ;
  wire \hlfa_f[13]_i_6_n_0 ;
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
  wire \hlfa_f[2]_i_3_n_0 ;
  wire \hlfa_f[2]_i_4_n_0 ;
  wire \hlfa_f[2]_i_5_n_0 ;
  wire \hlfa_f[3]_i_3_n_0 ;
  wire \hlfa_f[3]_i_4_n_0 ;
  wire \hlfa_f[3]_i_5_n_0 ;
  wire \hlfa_f[4]_i_3_n_0 ;
  wire \hlfa_f[4]_i_4_n_0 ;
  wire \hlfa_f[4]_i_5_n_0 ;
  wire \hlfa_f[4]_i_6_n_0 ;
  wire \hlfa_f[4]_i_7_n_0 ;
  wire \hlfa_f[5]_i_2_n_0 ;
  wire \hlfa_f[5]_i_3_n_0 ;
  wire \hlfa_f[5]_i_4_n_0 ;
  wire \hlfa_f[5]_i_5_n_0 ;
  wire \hlfa_f[5]_i_6_n_0 ;
  wire \hlfa_f[6]_i_3_n_0 ;
  wire \hlfa_f[6]_i_4_n_0 ;
  wire \hlfa_f[6]_i_5_n_0 ;
  wire \hlfa_f[6]_i_6_n_0 ;
  wire \hlfa_f[6]_i_7_n_0 ;
  wire \hlfa_f[6]_i_8_n_0 ;
  wire \hlfa_f[7]_i_3_n_0 ;
  wire \hlfa_f[7]_i_4_n_0 ;
  wire \hlfa_f[7]_i_5_n_0 ;
  wire \hlfa_f[7]_i_6_n_0 ;
  wire \hlfa_f[7]_i_7_n_0 ;
  wire \hlfa_f[8]_i_3_n_0 ;
  wire \hlfa_f[8]_i_4_n_0 ;
  wire \hlfa_f[8]_i_5_n_0 ;
  wire \hlfa_f[8]_i_6_n_0 ;
  wire \hlfa_f[9]_i_3_n_0 ;
  wire \hlfa_f[9]_i_4_n_0 ;
  wire \hlfa_f[9]_i_5_n_0 ;
  wire \hlfa_f_reg[0]_0 ;
  wire \hlfa_f_reg[10]_0 ;
  wire \hlfa_f_reg[10]_1 ;
  wire \hlfa_f_reg[11]_0 ;
  wire \hlfa_f_reg[12]_0 ;
  wire \hlfa_f_reg[12]_1 ;
  wire \hlfa_f_reg[13]_0 ;
  wire \hlfa_f_reg[15]_0 ;
  wire \hlfa_f_reg[1]_0 ;
  wire \hlfa_f_reg[2]_0 ;
  wire \hlfa_f_reg[3]_0 ;
  wire \hlfa_f_reg[4]_0 ;
  wire \hlfa_f_reg[6]_0 ;
  wire \hlfa_f_reg[7]_0 ;
  wire \hlfa_f_reg[8]_0 ;
  wire \hlfa_f_reg[9]_0 ;
  wire \hlfa_i_reg[0]_0 ;
  wire \hlfa_i_reg[10]_0 ;
  wire \hlfa_i_reg[11]_0 ;
  wire \hlfa_i_reg[12]_0 ;
  wire \hlfa_i_reg[13]_0 ;
  wire \hlfa_i_reg[13]_1 ;
  wire \hlfa_i_reg[15]_0 ;
  wire \hlfa_i_reg[15]_1 ;
  wire \hlfa_i_reg[15]_2 ;
  wire [2:0]\hlfa_i_reg[15]_3 ;
  wire \hlfa_i_reg[2]_0 ;
  wire \hlfa_i_reg[3]_0 ;
  wire \hlfa_i_reg[4]_0 ;
  wire \hlfa_i_reg[4]_1 ;
  wire \hlfa_i_reg[4]_2 ;
  wire \hlfa_i_reg[4]_3 ;
  wire \hlfa_i_reg[5]_0 ;
  wire \hlfa_i_reg[6]_0 ;
  wire \hlfa_i_reg[7]_0 ;
  wire \hlfa_i_reg[8]_0 ;
  wire \hlfa_i_reg[9]_0 ;
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
  wire \hlfb_e[2]_i_5_n_0 ;
  wire \hlfb_e[3]_i_6_n_0 ;
  wire \hlfb_e[5]_i_11_n_0 ;
  wire \hlfb_e[5]_i_12_n_0 ;
  wire \hlfb_e[5]_i_13_n_0 ;
  wire \hlfb_e[5]_i_14_n_0 ;
  wire \hlfb_e[5]_i_21_n_0 ;
  wire [0:0]\hlfb_e_reg[0] ;
  wire \hlfb_e_reg[1] ;
  wire \hlfb_e_reg[1]_0 ;
  wire \hlfb_e_reg[2] ;
  wire \hlfb_e_reg[3] ;
  wire \hlfb_e_reg[3]_0 ;
  wire \hlfb_e_reg[3]_1 ;
  wire \hlfb_e_reg[5] ;
  wire \hlfb_e_reg[5]_i_17_n_3 ;
  wire \hlfb_e_reg[5]_i_17_n_6 ;
  wire \hlfb_e_reg[5]_i_3_n_0 ;
  wire \hlfb_e_reg[5]_i_3_n_1 ;
  wire \hlfb_e_reg[5]_i_3_n_2 ;
  wire \hlfb_e_reg[5]_i_3_n_3 ;
  wire \hlfb_f[1]_i_2_n_0 ;
  wire [6:0]\hlfb_f_reg[10] ;
  wire \hlfb_f_reg[11] ;
  wire \hlfb_f_reg[12] ;
  wire \hlfb_f_reg[12]_0 ;
  wire \hlfb_f_reg[12]_1 ;
  wire \hlfb_f_reg[1] ;
  wire \hlfb_f_reg[1]_0 ;
  wire [2:0]\hlfb_f_reg[1]_1 ;
  wire [0:0]\hlfb_f_reg[3] ;
  wire [4:0]hlfc_e;
  wire \hlfc_e[5]_i_6_n_0 ;
  wire \hlfc_e_reg[0] ;
  wire \hlfc_e_reg[2] ;
  wire [1:0]\hlfc_e_reg[2]_0 ;
  wire \hlfc_e_reg[2]_1 ;
  wire \hlfc_e_reg[5]_i_4_n_3 ;
  wire \hlfc_f_reg[13] ;
  wire \hlfc_f_reg[13]_0 ;
  wire \hlfc_f_reg[15] ;
  wire \hlfc_i[24]_i_6_n_0 ;
  wire \hlfc_i[25]_i_3_n_0 ;
  wire \hlfc_i[25]_i_4_n_0 ;
  wire \hlfc_i[25]_i_5_n_0 ;
  wire \hlfc_i[25]_i_6_n_0 ;
  wire \hlfc_i_reg[22] ;
  wire \hlfc_i_reg[22]_0 ;
  wire \hlfc_i_reg[22]_1 ;
  wire \hlfc_i_reg[24] ;
  wire \hlfc_i_reg[24]_0 ;
  wire \hlfc_i_reg[25] ;
  wire \hlfc_i_reg[25]_0 ;
  wire \hlfc_i_reg[25]_1 ;
  wire [4:0]p_0_in;
  wire p_0_in11_in;
  wire p_0_in14_in;
  wire p_0_in1_in;
  wire p_0_in3_in;
  wire [15:0]p_1_in;
  wire rst_n;
  wire \stat[3]_i_8_n_0 ;
  wire \stat[3]_i_9_n_0 ;
  wire \stat_reg[0] ;
  wire \stat_reg[1] ;
  wire [3:0]\NLW_cbus[14]_INST_0_i_41_O_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h7077FFFF)) 
    \cbus[0]_INST_0_i_3 
       (.I0(\hlfa_i_reg_n_0_[0] ),
        .I1(\cbus[15]_INST_0_i_31_n_0 ),
        .I2(\ccmd_f_reg[3]_0 ),
        .I3(hlfa_r_0[0]),
        .I4(\hlfc_f_reg[15] ),
        .O(\hlfa_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hA888AAAAA888A888)) 
    \cbus[10]_INST_0_i_4 
       (.I0(\hlfc_f_reg[15] ),
        .I1(\ccmd_f_reg[3]_1 ),
        .I2(\cbus[15]_INST_0_i_31_n_0 ),
        .I3(p_0_in[0]),
        .I4(\ccmd_f_reg[0]_1 ),
        .I5(hlfa_r_0[10]),
        .O(\hlfa_i_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000F200)) 
    \cbus[11]_INST_0_i_5 
       (.I0(hlfa_r_0[16]),
        .I1(\ccmd_f_reg[0]_1 ),
        .I2(\ccmd_f_reg[3]_1 ),
        .I3(\hlfc_f_reg[15] ),
        .I4(hctl_ccmd_add),
        .I5(\hlfc_e_reg[0] ),
        .O(\hlfa_e_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hA888AAAAA888A888)) 
    \cbus[11]_INST_0_i_7 
       (.I0(\hlfc_f_reg[13] ),
        .I1(\ccmd_f_reg[3]_1 ),
        .I2(\cbus[15]_INST_0_i_31_n_0 ),
        .I3(p_0_in[1]),
        .I4(\ccmd_f_reg[0]_1 ),
        .I5(hlfa_r_0[11]),
        .O(\hlfa_i_reg[11]_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \cbus[12]_INST_0_i_13 
       (.I0(\hlfa_i_reg[4]_1 ),
        .I1(ccmd_f[3]),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[0]),
        .I4(ccmd_f[1]),
        .O(\ccmd_f_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hA888AAAAA888A888)) 
    \cbus[12]_INST_0_i_6 
       (.I0(\hlfc_f_reg[15] ),
        .I1(\ccmd_f_reg[3]_1 ),
        .I2(\cbus[15]_INST_0_i_31_n_0 ),
        .I3(p_0_in[2]),
        .I4(\ccmd_f_reg[0]_1 ),
        .I5(hlfa_r_0[12]),
        .O(\hlfa_i_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2220000)) 
    \cbus[13]_INST_0_i_6 
       (.I0(hlfa_r_0[13]),
        .I1(\ccmd_f_reg[3]_0 ),
        .I2(\cbus[15]_INST_0_i_31_n_0 ),
        .I3(p_0_in[3]),
        .I4(\hlfc_f_reg[13] ),
        .I5(\hlfc_f_reg[13]_0 ),
        .O(\hlfa_f_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hFFD00000FFD0FFC0)) 
    \cbus[14]_INST_0_i_16 
       (.I0(\ccmd_f_reg[0]_1 ),
        .I1(\cbus[14]_INST_0_i_32_n_0 ),
        .I2(\hlfc_f_reg[15] ),
        .I3(\hlfc_e_reg[2]_1 ),
        .I4(hlfa_r_0[18]),
        .I5(hctl_ccmd_add),
        .O(\hlfa_e_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h00000000FBBBFBFB)) 
    \cbus[14]_INST_0_i_26 
       (.I0(\hlfa_i_reg[13]_1 ),
        .I1(\hlfc_f_reg[15] ),
        .I2(\hlfc_i[25]_i_5_n_0 ),
        .I3(\cbus[14]_INST_0_i_37_n_0 ),
        .I4(\cbus[14]_INST_0_i_38_n_0 ),
        .I5(\cbus[14]_INST_0_i_14 ),
        .O(\hlfa_i_reg[13]_0 ));
  LUT5 #(
    .INIT(32'hE7C7F7C7)) 
    \cbus[14]_INST_0_i_31 
       (.I0(ccmd_f[0]),
        .I1(ccmd_f[2]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[1]),
        .I4(\hlfa_i_reg[13]_1 ),
        .O(\ccmd_f_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    \cbus[14]_INST_0_i_32 
       (.I0(ccmd_f[0]),
        .I1(ccmd_f[1]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[2]),
        .I4(\ccmd_f_reg[3]_1 ),
        .O(\cbus[14]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h8880888888808880)) 
    \cbus[14]_INST_0_i_35 
       (.I0(hctl_ccmd_reg),
        .I1(\ccmd_f_reg[4]_1 ),
        .I2(\cbus[15]_INST_0_i_31_n_0 ),
        .I3(\ccmd_f_reg[3]_1 ),
        .I4(\ccmd_f_reg[0]_1 ),
        .I5(hlfa_r_0[19]),
        .O(hctl_ccmd_reg_reg));
  LUT6 #(
    .INIT(64'h4000444440004000)) 
    \cbus[14]_INST_0_i_36 
       (.I0(hctl_ccmd_add),
        .I1(\hlfc_f_reg[15] ),
        .I2(p_0_in[4]),
        .I3(\cbus[15]_INST_0_i_31_n_0 ),
        .I4(\ccmd_f_reg[3]_0 ),
        .I5(hlfa_r_0[14]),
        .O(hctl_ccmd_add_reg_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cbus[14]_INST_0_i_37 
       (.I0(ccmd_f[2]),
        .I1(ccmd_f[3]),
        .I2(ccmd_f[1]),
        .I3(hlfa_r_0[22]),
        .O(\cbus[14]_INST_0_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cbus[14]_INST_0_i_38 
       (.I0(\hlfa_i_reg_n_0_[5] ),
        .I1(\hlfa_i_reg_n_0_[8] ),
        .I2(\hlfa_i_reg_n_0_[7] ),
        .I3(\hlfa_i_reg_n_0_[4] ),
        .I4(\cbus[6]_INST_0_i_14_n_0 ),
        .O(\cbus[14]_INST_0_i_38_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[14]_INST_0_i_41 
       (.CI(\<const0> ),
        .CO({\cbus[14]_INST_0_i_41_n_0 ,\cbus[14]_INST_0_i_41_n_1 ,\cbus[14]_INST_0_i_41_n_2 ,\cbus[14]_INST_0_i_41_n_3 }),
        .CYINIT(\<const1> ),
        .DI(hlfa_r_0[19:16]),
        .O({hlfc_e[2:0],\NLW_cbus[14]_INST_0_i_41_O_UNCONNECTED [0]}),
        .S({\cbus[14]_INST_0_i_45_n_0 ,\cbus[14]_INST_0_i_46_n_0 ,\cbus[14]_INST_0_i_47_n_0 ,\cbus[14]_INST_0_i_48_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \cbus[14]_INST_0_i_45 
       (.I0(hlfa_r_0[19]),
        .I1(hlfa_e_dif0_carry__0_0[3]),
        .O(\cbus[14]_INST_0_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cbus[14]_INST_0_i_46 
       (.I0(hlfa_r_0[18]),
        .I1(hlfa_e_dif0_carry__0_0[2]),
        .O(\cbus[14]_INST_0_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cbus[14]_INST_0_i_47 
       (.I0(hlfa_r_0[17]),
        .I1(hlfa_e_dif0_carry__0_0[1]),
        .O(\cbus[14]_INST_0_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cbus[14]_INST_0_i_48 
       (.I0(hlfa_r_0[16]),
        .I1(hlfa_e_dif0_carry__0_0[0]),
        .O(\cbus[14]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04F70000)) 
    \cbus[15]_INST_0_i_10 
       (.I0(\cbus[15]_INST_0_i_23_n_0 ),
        .I1(\hlfc_i_reg[22]_0 ),
        .I2(\hlfc_i_reg[22]_1 ),
        .I3(\cbus[15]_INST_0_i_26_n_0 ),
        .I4(\hlfa_i_reg[15]_1 ),
        .I5(\cbus[15]_INST_0_i_27_n_0 ),
        .O(\hlfa_i_reg[15]_0 ));
  LUT6 #(
    .INIT(64'h0F0008080F0F0808)) 
    \cbus[15]_INST_0_i_11 
       (.I0(\cbus[15]_INST_0_i_28_n_0 ),
        .I1(\ccmd_f_reg[4]_0 ),
        .I2(hctl_ccmd_mul),
        .I3(\hlfc_i_reg[22] ),
        .I4(hctl_ccmd_div),
        .I5(\hlfa_i_reg[4]_0 ),
        .O(\cbus[15]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8080FFD5FFFFFFFF)) 
    \cbus[15]_INST_0_i_12 
       (.I0(\hlfa_i_reg[13]_1 ),
        .I1(\hlfa_i_reg[4]_1 ),
        .I2(\hlfc_i_reg[24]_0 ),
        .I3(\hlfc_i_reg[25]_1 ),
        .I4(\hlfc_i_reg[25]_0 ),
        .I5(\hlfa_i_reg[4]_3 ),
        .O(\cbus[15]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4000444440004000)) 
    \cbus[15]_INST_0_i_13 
       (.I0(hctl_ccmd_add),
        .I1(\hlfc_f_reg[15] ),
        .I2(\cbus[15]_INST_0_i_31_n_0 ),
        .I3(hlfa_r_0[22]),
        .I4(\ccmd_f_reg[3]_0 ),
        .I5(hlfa_r_0[15]),
        .O(hctl_ccmd_add_reg));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cbus[15]_INST_0_i_15 
       (.I0(p_0_in[3]),
        .I1(p_0_in[4]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .O(\hlfa_i_reg[13]_1 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cbus[15]_INST_0_i_16 
       (.I0(\cbus[6]_INST_0_i_14_n_0 ),
        .I1(\hlfa_i_reg_n_0_[4] ),
        .I2(\hlfa_i_reg_n_0_[7] ),
        .I3(\hlfa_i_reg_n_0_[8] ),
        .I4(\hlfa_i_reg_n_0_[5] ),
        .I5(\cbus[6]_INST_0_i_13_n_0 ),
        .O(\hlfa_i_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hF200F2F2F200F200)) 
    \cbus[15]_INST_0_i_18 
       (.I0(\hlfc_i[25]_i_6_n_0 ),
        .I1(\cbus[6]_INST_0_i_14_n_0 ),
        .I2(\cbus[6]_INST_0_i_13_n_0 ),
        .I3(\hlfc_i_reg[25]_0 ),
        .I4(\cbus[15]_INST_0_i_9_0 ),
        .I5(\cbus[15]_INST_0_i_9_1 ),
        .O(\cbus[15]_INST_0_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hD7)) 
    \cbus[15]_INST_0_i_23 
       (.I0(hlfa_r_0[22]),
        .I1(Q),
        .I2(hctl_ccmd_sub),
        .O(\cbus[15]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cbus[15]_INST_0_i_26 
       (.I0(hlfa_r_0[22]),
        .I1(\cbus[15]_INST_0_i_10_0 ),
        .O(\cbus[15]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEEEAEAAFAFAAA)) 
    \cbus[15]_INST_0_i_27 
       (.I0(\hlfa_i_reg[15]_2 ),
        .I1(hlfa_r_0[22]),
        .I2(\hlfc_i_reg[24] ),
        .I3(Q),
        .I4(hctl_ccmd_sub),
        .I5(\hlfa_i_reg[4]_1 ),
        .O(\cbus[15]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFF0C08FF080C080C)) 
    \cbus[15]_INST_0_i_28 
       (.I0(\hlfa_i_reg[13]_1 ),
        .I1(\cbus[15]_INST_0_i_40_n_0 ),
        .I2(\cbus[15]_INST_0_i_41_n_0 ),
        .I3(ccmd_f[1]),
        .I4(hlfa_r_0[22]),
        .I5(hlfa_e_dif0_carry__0_i_4_n_0),
        .O(\cbus[15]_INST_0_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cbus[15]_INST_0_i_29 
       (.I0(\ccmd_f_reg[4]_1 ),
        .I1(hctl_ccmd_reg),
        .O(\ccmd_f_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8B8B8B8B8)) 
    \cbus[15]_INST_0_i_3 
       (.I0(\hlfa_i_reg[15]_0 ),
        .I1(hctl_ccmd_add),
        .I2(\cbus[15]_INST_0_i_11_n_0 ),
        .I3(\hlfc_i_reg[22] ),
        .I4(\cbus[15]_INST_0_i_12_n_0 ),
        .I5(hctl_ccmd_mul),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h0020)) 
    \cbus[15]_INST_0_i_31 
       (.I0(ccmd_f[2]),
        .I1(ccmd_f[3]),
        .I2(ccmd_f[1]),
        .I3(ccmd_f[0]),
        .O(\cbus[15]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFAAAAAAAAAAAA)) 
    \cbus[15]_INST_0_i_32 
       (.I0(\ccmd_f_reg[0]_1 ),
        .I1(ccmd_f[3]),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[0]),
        .I4(ccmd_f[1]),
        .I5(\hlfa_i_reg[4]_1 ),
        .O(\ccmd_f_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[15]_INST_0_i_40 
       (.I0(ccmd_f[3]),
        .I1(ccmd_f[2]),
        .O(\cbus[15]_INST_0_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hEB00EBFF)) 
    \cbus[15]_INST_0_i_41 
       (.I0(ccmd_f[1]),
        .I1(hctl_ccmd_sub),
        .I2(Q),
        .I3(ccmd_f[0]),
        .I4(hlfa_r_0[22]),
        .O(\cbus[15]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hD0FFFFFFD0FF0000)) 
    \cbus[15]_INST_0_i_6 
       (.I0(\hlfa_i_reg[13]_1 ),
        .I1(\hlfa_i_reg[4]_1 ),
        .I2(\cbus[15]_INST_0_i_2 ),
        .I3(\cbus[15]_INST_0_i_18_n_0 ),
        .I4(hctl_ccmd_mul),
        .I5(\hlfc_i[25]_i_4_n_0 ),
        .O(hctl_ccmd_mul_reg_0));
  LUT6 #(
    .INIT(64'hA200A28AA200A2AA)) 
    \cbus[15]_INST_0_i_8 
       (.I0(\hlfa_i_reg[4]_3 ),
        .I1(\hlfc_i_reg[24]_0 ),
        .I2(\hlfa_i_reg[13]_1 ),
        .I3(\hlfc_i_reg[25]_0 ),
        .I4(\hlfc_i_reg[25]_1 ),
        .I5(\hlfa_i_reg[4]_1 ),
        .O(\hlfa_i_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h96000000FFFFFFFF)) 
    \cbus[15]_INST_0_i_9 
       (.I0(hlfa_r_0[22]),
        .I1(hctl_ccmd_sub),
        .I2(Q),
        .I3(\hlfa_i_reg[4]_1 ),
        .I4(\hlfc_i_reg[24] ),
        .I5(\cbus[15]_INST_0_i_18_n_0 ),
        .O(\hlfa_i_reg[15]_2 ));
  LUT6 #(
    .INIT(64'hF2220000FFFFFFFF)) 
    \cbus[1]_INST_0_i_3 
       (.I0(hlfa_r_0[1]),
        .I1(\ccmd_f_reg[3]_0 ),
        .I2(\cbus[15]_INST_0_i_31_n_0 ),
        .I3(\hlfa_i_reg_n_0_[1] ),
        .I4(\hlfc_f_reg[15] ),
        .I5(\cbus[1]_INST_0_i_2 ),
        .O(\hlfa_f_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hA888AAAAA888A888)) 
    \cbus[2]_INST_0_i_3 
       (.I0(\hlfc_f_reg[15] ),
        .I1(\ccmd_f_reg[3]_1 ),
        .I2(\cbus[15]_INST_0_i_31_n_0 ),
        .I3(\hlfa_i_reg_n_0_[2] ),
        .I4(\ccmd_f_reg[0]_1 ),
        .I5(hlfa_r_0[2]),
        .O(\hlfa_i_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hA888AAAAA888A888)) 
    \cbus[3]_INST_0_i_3 
       (.I0(\hlfc_f_reg[15] ),
        .I1(\ccmd_f_reg[3]_1 ),
        .I2(\cbus[15]_INST_0_i_31_n_0 ),
        .I3(\hlfa_i_reg_n_0_[3] ),
        .I4(\ccmd_f_reg[0]_1 ),
        .I5(hlfa_r_0[3]),
        .O(\hlfa_i_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hA888AAAAA888A888)) 
    \cbus[4]_INST_0_i_5 
       (.I0(\hlfc_f_reg[15] ),
        .I1(\ccmd_f_reg[3]_1 ),
        .I2(\cbus[15]_INST_0_i_31_n_0 ),
        .I3(\hlfa_i_reg_n_0_[4] ),
        .I4(\ccmd_f_reg[0]_1 ),
        .I5(hlfa_r_0[4]),
        .O(\hlfa_i_reg[4]_2 ));
  LUT6 #(
    .INIT(64'hA888AAAAA888A888)) 
    \cbus[5]_INST_0_i_4 
       (.I0(\hlfc_f_reg[15] ),
        .I1(\ccmd_f_reg[3]_1 ),
        .I2(\cbus[15]_INST_0_i_31_n_0 ),
        .I3(\hlfa_i_reg_n_0_[5] ),
        .I4(\ccmd_f_reg[0]_1 ),
        .I5(hlfa_r_0[5]),
        .O(\hlfa_i_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hA888AAAAA888A888)) 
    \cbus[6]_INST_0_i_10 
       (.I0(\hlfc_f_reg[15] ),
        .I1(\ccmd_f_reg[3]_1 ),
        .I2(\cbus[15]_INST_0_i_31_n_0 ),
        .I3(\hlfa_i_reg_n_0_[6] ),
        .I4(\ccmd_f_reg[0]_1 ),
        .I5(hlfa_r_0[6]),
        .O(\hlfa_i_reg[6]_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cbus[6]_INST_0_i_13 
       (.I0(p_0_in[0]),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\cbus[6]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cbus[6]_INST_0_i_14 
       (.I0(\hlfa_i_reg_n_0_[0] ),
        .I1(\hlfa_i_reg_n_0_[6] ),
        .I2(\hlfa_i_reg_n_0_[3] ),
        .I3(\hlfa_i_reg_n_0_[9] ),
        .I4(\hlfa_i_reg_n_0_[2] ),
        .I5(\hlfa_i_reg_n_0_[1] ),
        .O(\cbus[6]_INST_0_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \cbus[6]_INST_0_i_3 
       (.I0(\hlfa_i_reg[15]_2 ),
        .I1(\cbus[6] ),
        .I2(hctl_ccmd_cmp),
        .O(hctl_ccmd_cmp_reg));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \cbus[6]_INST_0_i_7 
       (.I0(\cbus[6]_INST_0_i_13_n_0 ),
        .I1(\cbus[6]_INST_0_i_14_n_0 ),
        .I2(\hlfa_i_reg_n_0_[4] ),
        .I3(\hlfa_i_reg_n_0_[7] ),
        .I4(\hlfa_i_reg_n_0_[8] ),
        .I5(\hlfa_i_reg_n_0_[5] ),
        .O(\hlfa_i_reg[4]_3 ));
  LUT6 #(
    .INIT(64'hA888AAAAA888A888)) 
    \cbus[7]_INST_0_i_4 
       (.I0(\hlfc_f_reg[15] ),
        .I1(\ccmd_f_reg[3]_1 ),
        .I2(\cbus[15]_INST_0_i_31_n_0 ),
        .I3(\hlfa_i_reg_n_0_[7] ),
        .I4(\ccmd_f_reg[0]_1 ),
        .I5(hlfa_r_0[7]),
        .O(\hlfa_i_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hA888AAAAA888A888)) 
    \cbus[8]_INST_0_i_6 
       (.I0(\hlfc_f_reg[15] ),
        .I1(\ccmd_f_reg[3]_1 ),
        .I2(\cbus[15]_INST_0_i_31_n_0 ),
        .I3(\hlfa_i_reg_n_0_[8] ),
        .I4(\ccmd_f_reg[0]_1 ),
        .I5(hlfa_r_0[8]),
        .O(\hlfa_i_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hA888AAAAA888A888)) 
    \cbus[9]_INST_0_i_6 
       (.I0(\hlfc_f_reg[15] ),
        .I1(\ccmd_f_reg[3]_1 ),
        .I2(\cbus[15]_INST_0_i_31_n_0 ),
        .I3(\hlfa_i_reg_n_0_[9] ),
        .I4(\ccmd_f_reg[0]_1 ),
        .I5(hlfa_r_0[9]),
        .O(\hlfa_i_reg[9]_0 ));
  FDRE \ccmd_f_reg[0] 
       (.C(clk),
        .CE(\ccmd_f_reg[4]_2 ),
        .D(ccmd[0]),
        .Q(ccmd_f[0]),
        .R(SR));
  FDRE \ccmd_f_reg[1] 
       (.C(clk),
        .CE(\ccmd_f_reg[4]_2 ),
        .D(ccmd[1]),
        .Q(ccmd_f[1]),
        .R(SR));
  FDRE \ccmd_f_reg[2] 
       (.C(clk),
        .CE(\ccmd_f_reg[4]_2 ),
        .D(ccmd[2]),
        .Q(ccmd_f[2]),
        .R(SR));
  FDRE \ccmd_f_reg[3] 
       (.C(clk),
        .CE(\ccmd_f_reg[4]_2 ),
        .D(ccmd[3]),
        .Q(ccmd_f[3]),
        .R(SR));
  FDRE \ccmd_f_reg[4] 
       (.C(clk),
        .CE(\ccmd_f_reg[4]_2 ),
        .D(ccmd[4]),
        .Q(\ccmd_f_reg[4]_1 ),
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
    .INIT(64'h4747477447744774)) 
    \hlfa_e[0]_i_1 
       (.I0(abus[10]),
        .I1(hctl_load_b),
        .I2(hlfa_r_0[16]),
        .I3(\hlfa_e[0]_i_2_n_0 ),
        .I4(\hlfa_f[15]_i_4_n_0 ),
        .I5(\hlfa_f[15]_i_7_n_0 ),
        .O(\hlfa_e[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF0100000000)) 
    \hlfa_e[0]_i_2 
       (.I0(p_0_in11_in),
        .I1(p_0_in14_in),
        .I2(\hlfa_e_reg[3]_0 ),
        .I3(\ccmd_f_reg[0]_0 ),
        .I4(\hlfa_f_reg[0]_0 ),
        .I5(hlfa_e_dif0_carry_n_7),
        .O(\hlfa_e[0]_i_2_n_0 ));
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
       (.I0(abus[11]),
        .I1(abus[10]),
        .O(\hlfa_e[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4414144414441444)) 
    \hlfa_e[1]_i_3 
       (.I0(\hlfa_f[13]_i_2_n_0 ),
        .I1(hlfa_r_0[17]),
        .I2(\hlfa_e[4]_i_11_n_0 ),
        .I3(p_0_in11_in),
        .I4(hlfa_e_dif0_carry_n_7),
        .I5(hlfa_r_0[16]),
        .O(\hlfa_e[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6566)) 
    \hlfa_e[1]_i_4 
       (.I0(hlfa_r_0[17]),
        .I1(\hlfa_f[14]_i_7_n_0 ),
        .I2(\hlfa_f[13]_i_6_n_0 ),
        .I3(hlfa_r_0[16]),
        .O(\hlfa_e[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0200A8A822208888)) 
    \hlfa_e[1]_i_5 
       (.I0(\hlfa_f[13]_i_2_n_0 ),
        .I1(\hlfa_f[15]_i_8_n_0 ),
        .I2(\hlfa_f[14]_i_3_n_0 ),
        .I3(\hlfa_f[14]_i_4_n_0 ),
        .I4(hlfa_r_0[17]),
        .I5(hlfa_r_0[16]),
        .O(\hlfa_e[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB8B88)) 
    \hlfa_e[2]_i_1 
       (.I0(\hlfa_e[2]_i_2_n_0 ),
        .I1(hctl_load_b),
        .I2(\hlfa_e[2]_i_3_n_0 ),
        .I3(\hlfa_f[15]_i_4_n_0 ),
        .I4(\hlfa_e[2]_i_4_n_0 ),
        .I5(\hlfa_e[2]_i_5_n_0 ),
        .O(\hlfa_e[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \hlfa_e[2]_i_2 
       (.I0(abus[12]),
        .I1(abus[10]),
        .I2(abus[11]),
        .O(\hlfa_e[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h131F0000131FF5F1)) 
    \hlfa_e[2]_i_3 
       (.I0(\hlfa_f[14]_i_8_n_0 ),
        .I1(\hlfa_f[15]_i_7_n_0 ),
        .I2(hlfa_r_0[17]),
        .I3(hlfa_r_0[16]),
        .I4(hlfa_r_0[18]),
        .I5(\hlfa_f[14]_i_7_n_0 ),
        .O(\hlfa_e[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
    \hlfa_e[2]_i_4 
       (.I0(\hlfa_e[2]_i_6_n_0 ),
        .I1(\hlfa_f[13]_i_2_n_0 ),
        .I2(\hlfa_f[15]_i_8_n_0 ),
        .I3(\hlfa_f[14]_i_3_n_0 ),
        .I4(\hlfa_f[14]_i_4_n_0 ),
        .I5(hlfa_r_0[18]),
        .O(\hlfa_e[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2288228828880000)) 
    \hlfa_e[2]_i_5 
       (.I0(\hlfa_f[13]_i_2_n_0 ),
        .I1(hlfa_r_0[18]),
        .I2(hlfa_r_0[16]),
        .I3(hlfa_r_0[17]),
        .I4(\hlfa_f[14]_i_3_n_0 ),
        .I5(\hlfa_f[15]_i_8_n_0 ),
        .O(\hlfa_e[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000074B800008B44)) 
    \hlfa_e[2]_i_6 
       (.I0(\hlfa_e[2]_i_7_n_0 ),
        .I1(\ccmd_f_reg[0]_0 ),
        .I2(\hlfa_e_reg[3]_0 ),
        .I3(p_0_in14_in),
        .I4(\hlfa_f_reg[0]_0 ),
        .I5(hlfa_r_0[18]),
        .O(\hlfa_e[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h077F)) 
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
        .I3(\hlfa_f[13]_i_2_n_0 ),
        .I4(\hlfa_e[3]_i_4_n_0 ),
        .I5(\hlfa_e[3]_i_5_n_0 ),
        .O(\hlfa_e[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5556)) 
    \hlfa_e[3]_i_10 
       (.I0(hlfa_r_0[19]),
        .I1(hlfa_r_0[16]),
        .I2(hlfa_r_0[18]),
        .I3(hlfa_r_0[17]),
        .O(\hlfa_e[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hlfa_e[3]_i_2 
       (.I0(abus[13]),
        .I1(abus[11]),
        .I2(abus[10]),
        .I3(abus[12]),
        .O(\hlfa_e[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2020200020002000)) 
    \hlfa_e[3]_i_3 
       (.I0(\hlfa_e[5]_i_8_n_0 ),
        .I1(\hlfa_f[14]_i_4_n_0 ),
        .I2(\hlfa_f[13]_i_2_n_0 ),
        .I3(\hlfa_e[3]_i_6_n_0 ),
        .I4(\hlfa_f[14]_i_8_n_0 ),
        .I5(\hlfa_e[3]_i_7_n_0 ),
        .O(\hlfa_e[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3C3C38787F0FF)) 
    \hlfa_e[3]_i_4 
       (.I0(hlfa_r_0[16]),
        .I1(\hlfa_e[3]_i_8_n_0 ),
        .I2(hlfa_r_0[19]),
        .I3(\hlfa_f[14]_i_4_n_0 ),
        .I4(\hlfa_f[14]_i_3_n_0 ),
        .I5(\hlfa_f[15]_i_8_n_0 ),
        .O(\hlfa_e[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000060)) 
    \hlfa_e[3]_i_5 
       (.I0(hlfa_r_0[19]),
        .I1(hlfa_r_0[18]),
        .I2(\hlfa_f[11]_i_4_n_0 ),
        .I3(\hlfa_e_reg[3]_0 ),
        .I4(\ccmd_f_reg[0]_0 ),
        .I5(\hlfa_e[3]_i_9_n_0 ),
        .O(\hlfa_e[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F99990F0F000F)) 
    \hlfa_e[3]_i_6 
       (.I0(hlfa_r_0[19]),
        .I1(hlfa_r_0[18]),
        .I2(\hlfa_e[3]_i_10_n_0 ),
        .I3(p_0_in1_in),
        .I4(\hlfa_f_reg[15]_0 ),
        .I5(p_0_in3_in),
        .O(\hlfa_e[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \hlfa_e[3]_i_7 
       (.I0(hlfa_r_0[19]),
        .I1(hlfa_r_0[17]),
        .I2(hlfa_r_0[18]),
        .O(\hlfa_e[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfa_e[3]_i_8 
       (.I0(hlfa_r_0[18]),
        .I1(hlfa_r_0[17]),
        .O(\hlfa_e[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h06090300)) 
    \hlfa_e[3]_i_9 
       (.I0(\hlfa_e[5]_i_20_n_0 ),
        .I1(hlfa_r_0[19]),
        .I2(\hlfa_f_reg[0]_0 ),
        .I3(\hlfa_e_reg[3]_0 ),
        .I4(\ccmd_f_reg[0]_0 ),
        .O(\hlfa_e[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    \hlfa_e[4]_i_1 
       (.I0(\hlfa_e[4]_i_2_n_0 ),
        .I1(hctl_load_b),
        .I2(\hlfa_f[15]_i_4_n_0 ),
        .I3(\hlfa_e[4]_i_3_n_0 ),
        .I4(\hlfa_e[4]_i_4_n_0 ),
        .I5(\hlfa_e[4]_i_5_n_0 ),
        .O(\hlfa_e[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \hlfa_e[4]_i_10 
       (.I0(\hlfa_e_reg[3]_0 ),
        .I1(hlfa_r_0[19]),
        .I2(\hlfa_e[5]_i_20_n_0 ),
        .O(\hlfa_e[4]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_e[4]_i_11 
       (.I0(\ccmd_f_reg[0]_0 ),
        .I1(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_e[4]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00040400)) 
    \hlfa_e[4]_i_12 
       (.I0(\ccmd_f_reg[0]_0 ),
        .I1(\hlfa_e_reg[3]_0 ),
        .I2(\hlfa_f_reg[0]_0 ),
        .I3(hlfa_r_0[19]),
        .I4(hlfa_r_0[20]),
        .O(\hlfa_e[4]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \hlfa_e[4]_i_13 
       (.I0(\hlfa_f_reg[0]_0 ),
        .I1(p_0_in14_in),
        .I2(\hlfa_e_reg[3]_0 ),
        .I3(\ccmd_f_reg[0]_0 ),
        .O(\hlfa_e[4]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfa_e[4]_i_14 
       (.I0(hlfa_r_0[19]),
        .I1(hlfa_r_0[18]),
        .O(\hlfa_e[4]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9555)) 
    \hlfa_e[4]_i_15 
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_r_0[17]),
        .I2(hlfa_r_0[19]),
        .I3(hlfa_r_0[18]),
        .O(\hlfa_e[4]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \hlfa_e[4]_i_16 
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_r_0[17]),
        .I2(hlfa_r_0[16]),
        .I3(hlfa_r_0[19]),
        .I4(hlfa_r_0[18]),
        .O(\hlfa_e[4]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \hlfa_e[4]_i_2 
       (.I0(abus[14]),
        .I1(abus[12]),
        .I2(abus[10]),
        .I3(abus[11]),
        .I4(abus[13]),
        .O(\hlfa_e[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7707770700007707)) 
    \hlfa_e[4]_i_3 
       (.I0(\hlfa_e[4]_i_6_n_0 ),
        .I1(\hlfa_f[14]_i_8_n_0 ),
        .I2(\hlfa_f[15]_i_7_n_0 ),
        .I3(\hlfa_e[4]_i_7_n_0 ),
        .I4(\hlfa_f[14]_i_7_n_0 ),
        .I5(\hlfa_e[4]_i_8_n_0 ),
        .O(\hlfa_e[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80000080AAAAAAAA)) 
    \hlfa_e[4]_i_4 
       (.I0(\hlfa_f[13]_i_2_n_0 ),
        .I1(\hlfa_e[5]_i_8_n_0 ),
        .I2(\hlfa_f[14]_i_4_n_0 ),
        .I3(hlfa_r_0[19]),
        .I4(hlfa_r_0[20]),
        .I5(\hlfa_e[4]_i_9_n_0 ),
        .O(\hlfa_e[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8FFF8FFF4F4F4)) 
    \hlfa_e[4]_i_5 
       (.I0(\hlfa_e[4]_i_10_n_0 ),
        .I1(\hlfa_e[4]_i_11_n_0 ),
        .I2(\hlfa_e[4]_i_12_n_0 ),
        .I3(\hlfa_e[4]_i_13_n_0 ),
        .I4(\hlfa_e[4]_i_14_n_0 ),
        .I5(hlfa_r_0[20]),
        .O(\hlfa_e[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \hlfa_e[4]_i_6 
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_r_0[17]),
        .I2(hlfa_r_0[19]),
        .I3(hlfa_r_0[18]),
        .O(\hlfa_e[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h55555556)) 
    \hlfa_e[4]_i_7 
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_r_0[19]),
        .I2(hlfa_r_0[18]),
        .I3(hlfa_r_0[17]),
        .I4(hlfa_r_0[16]),
        .O(\hlfa_e[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \hlfa_e[4]_i_8 
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_r_0[18]),
        .I2(hlfa_r_0[19]),
        .O(\hlfa_e[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF8FBFBFB)) 
    \hlfa_e[4]_i_9 
       (.I0(\hlfa_e[4]_i_15_n_0 ),
        .I1(p_0_in11_in),
        .I2(\hlfa_f_reg[0]_0 ),
        .I3(hlfa_e_dif0_carry_n_7),
        .I4(\hlfa_e[4]_i_16_n_0 ),
        .O(\hlfa_e[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFAFFFAFFFAEFF)) 
    \hlfa_e[5]_i_1 
       (.I0(hctl_load_b),
        .I1(hlfa_e_difl0_carry_n_7),
        .I2(\hlfa_f_reg[15]_0 ),
        .I3(\hlfa_f[15]_i_4_n_0 ),
        .I4(p_0_in3_in),
        .I5(p_0_in1_in),
        .O(\hlfa_e[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBBBBBBBBFFFFFFF)) 
    \hlfa_e[5]_i_10 
       (.I0(\hlfa_f_reg[0]_0 ),
        .I1(p_0_in11_in),
        .I2(hlfa_r_0[17]),
        .I3(hlfa_r_0[18]),
        .I4(\hlfa_e[5]_i_19_n_0 ),
        .I5(hlfa_r_0[21]),
        .O(\hlfa_e[5]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h55555556)) 
    \hlfa_e[5]_i_11 
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_r_0[18]),
        .I2(hlfa_r_0[17]),
        .I3(hlfa_r_0[20]),
        .I4(hlfa_r_0[19]),
        .O(\hlfa_e[5]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h5556)) 
    \hlfa_e[5]_i_12 
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_r_0[18]),
        .I2(hlfa_r_0[20]),
        .I3(hlfa_r_0[19]),
        .O(\hlfa_e[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \hlfa_e[5]_i_13 
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_r_0[19]),
        .I2(hlfa_r_0[20]),
        .I3(hlfa_r_0[18]),
        .I4(hlfa_r_0[17]),
        .I5(hlfa_r_0[16]),
        .O(\hlfa_e[5]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h95)) 
    \hlfa_e[5]_i_14 
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_r_0[19]),
        .I2(hlfa_r_0[20]),
        .O(\hlfa_e[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFBBBBBBBBFFFFFFF)) 
    \hlfa_e[5]_i_15 
       (.I0(\hlfa_f_reg[0]_0 ),
        .I1(p_0_in14_in),
        .I2(hlfa_r_0[19]),
        .I3(hlfa_r_0[20]),
        .I4(hlfa_r_0[18]),
        .I5(hlfa_r_0[21]),
        .O(\hlfa_e[5]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA95A9)) 
    \hlfa_e[5]_i_16 
       (.I0(hlfa_r_0[21]),
        .I1(\hlfa_e_reg[3]_0 ),
        .I2(hlfa_r_0[19]),
        .I3(\hlfa_e[5]_i_20_n_0 ),
        .I4(hlfa_r_0[20]),
        .O(\hlfa_e[5]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfa_e[5]_i_17 
       (.I0(hlfa_r_0[17]),
        .I1(hlfa_r_0[16]),
        .O(\hlfa_e[5]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \hlfa_e[5]_i_18 
       (.I0(hlfa_r_0[19]),
        .I1(hlfa_r_0[20]),
        .I2(hlfa_r_0[18]),
        .O(\hlfa_e[5]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfa_e[5]_i_19 
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_r_0[19]),
        .O(\hlfa_e[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8B8BBBBBBBB)) 
    \hlfa_e[5]_i_2 
       (.I0(\hlfa_e[5]_i_3_n_0 ),
        .I1(hctl_load_b),
        .I2(\hlfa_e[5]_i_4_n_0 ),
        .I3(\hlfa_f[15]_i_4_n_0 ),
        .I4(\hlfa_e[5]_i_5_n_0 ),
        .I5(\hlfa_e[5]_i_6_n_0 ),
        .O(\hlfa_e[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000077F077FFFFF)) 
    \hlfa_e[5]_i_20 
       (.I0(hlfa_e_dif0_carry_n_7),
        .I1(hlfa_r_0[16]),
        .I2(p_0_in11_in),
        .I3(hlfa_r_0[17]),
        .I4(p_0_in14_in),
        .I5(hlfa_r_0[18]),
        .O(\hlfa_e[5]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h15555555)) 
    \hlfa_e[5]_i_3 
       (.I0(abus[14]),
        .I1(abus[12]),
        .I2(abus[10]),
        .I3(abus[11]),
        .I4(abus[13]),
        .O(\hlfa_e[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA2000AAAAAAAA)) 
    \hlfa_e[5]_i_4 
       (.I0(\hlfa_f[13]_i_2_n_0 ),
        .I1(\hlfa_e[5]_i_7_n_0 ),
        .I2(\hlfa_f[14]_i_4_n_0 ),
        .I3(\hlfa_e[5]_i_8_n_0 ),
        .I4(\hlfa_e[5]_i_9_n_0 ),
        .I5(\hlfa_e[5]_i_10_n_0 ),
        .O(\hlfa_e[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF22F222F222F2)) 
    \hlfa_e[5]_i_5 
       (.I0(\hlfa_f[14]_i_8_n_0 ),
        .I1(\hlfa_e[5]_i_11_n_0 ),
        .I2(\hlfa_f[14]_i_7_n_0 ),
        .I3(\hlfa_e[5]_i_12_n_0 ),
        .I4(\hlfa_e[5]_i_13_n_0 ),
        .I5(\hlfa_f[15]_i_7_n_0 ),
        .O(\hlfa_e[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF00D8D8)) 
    \hlfa_e[5]_i_6 
       (.I0(\hlfa_e_reg[3]_0 ),
        .I1(\hlfa_e[5]_i_14_n_0 ),
        .I2(\hlfa_e[5]_i_15_n_0 ),
        .I3(\hlfa_e[5]_i_16_n_0 ),
        .I4(\ccmd_f_reg[0]_0 ),
        .I5(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_e[5]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \hlfa_e[5]_i_7 
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_r_0[19]),
        .I2(hlfa_r_0[20]),
        .O(\hlfa_e[5]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hCD)) 
    \hlfa_e[5]_i_8 
       (.I0(p_0_in11_in),
        .I1(\hlfa_f_reg[0]_0 ),
        .I2(hlfa_e_dif0_carry_n_7),
        .O(\hlfa_e[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0004040404000000)) 
    \hlfa_e[5]_i_9 
       (.I0(p_0_in11_in),
        .I1(hlfa_e_dif0_carry_n_7),
        .I2(\hlfa_f_reg[0]_0 ),
        .I3(\hlfa_e[5]_i_17_n_0 ),
        .I4(\hlfa_e[5]_i_18_n_0 ),
        .I5(hlfa_r_0[21]),
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
        .O({hlfa_e_dif0_carry__0_n_6,\ccmd_f_reg[0]_0 }),
        .S({\<const0> ,\<const0> ,hlfa_e_dif0_carry__0_i_2_n_0,hlfa_e_dif0_carry__0_i_3_n_0}));
  LUT6 #(
    .INIT(64'hF7FFFFFF00000040)) 
    hlfa_e_dif0_carry__0_i_1
       (.I0(ccmd_f[0]),
        .I1(\ccmd_f_reg[4]_1 ),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[2]),
        .I4(ccmd_f[1]),
        .I5(hlfa_e_dif0_carry__0_0[4]),
        .O(hlfa_e_dif0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h6AAA6AAA6AAA5555)) 
    hlfa_e_dif0_carry__0_i_2
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_e_dif0_carry__0_i_4_n_0),
        .I2(ccmd_f[1]),
        .I3(\ccmd_f_reg[4]_1 ),
        .I4(hlfa_e_dif0_carry__0_0[5]),
        .I5(hlfa_e_dif0_carry__0_i_5_n_0),
        .O(hlfa_e_dif0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    hlfa_e_dif0_carry__0_i_3
       (.I0(hlfa_e_dif0_carry__0_i_1_n_0),
        .I1(hlfa_r_0[20]),
        .O(hlfa_e_dif0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    hlfa_e_dif0_carry__0_i_4
       (.I0(ccmd_f[0]),
        .I1(ccmd_f[2]),
        .I2(ccmd_f[3]),
        .O(hlfa_e_dif0_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000040)) 
    hlfa_e_dif0_carry__0_i_5
       (.I0(ccmd_f[0]),
        .I1(\ccmd_f_reg[4]_1 ),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[2]),
        .I4(ccmd_f[1]),
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
    .INIT(64'hBFFDFFFF00000000)) 
    hlfa_e_dif0_carry_i_3
       (.I0(ccmd_f[3]),
        .I1(ccmd_f[2]),
        .I2(ccmd_f[0]),
        .I3(ccmd_f[1]),
        .I4(\ccmd_f_reg[4]_1 ),
        .I5(hlfa_e_dif0_carry__0_0[1]),
        .O(hlfa_e_dif0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hBFFDFFFF00000000)) 
    hlfa_e_dif0_carry_i_4
       (.I0(ccmd_f[3]),
        .I1(ccmd_f[2]),
        .I2(ccmd_f[0]),
        .I3(ccmd_f[1]),
        .I4(\ccmd_f_reg[4]_1 ),
        .I5(hlfa_e_dif0_carry__0_0[0]),
        .O(hlfa_e_dif0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    hlfa_e_dif0_carry_i_5
       (.I0(hlfa_e_dif0_carry__0_0[3]),
        .I1(hlfa_e_dif0_carry_i_9_n_0),
        .I2(hlfa_r_0[19]),
        .O(hlfa_e_dif0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    hlfa_e_dif0_carry_i_6
       (.I0(hlfa_e_dif0_carry__0_0[2]),
        .I1(hlfa_e_dif0_carry_i_9_n_0),
        .I2(hlfa_r_0[18]),
        .O(hlfa_e_dif0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h87)) 
    hlfa_e_dif0_carry_i_7
       (.I0(hlfa_e_dif0_carry__0_0[1]),
        .I1(hlfa_e_dif0_carry_i_9_n_0),
        .I2(hlfa_r_0[17]),
        .O(hlfa_e_dif0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h87)) 
    hlfa_e_dif0_carry_i_8
       (.I0(hlfa_e_dif0_carry__0_0[0]),
        .I1(hlfa_e_dif0_carry_i_9_n_0),
        .I2(hlfa_r_0[16]),
        .O(hlfa_e_dif0_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFD7FFF)) 
    hlfa_e_dif0_carry_i_9
       (.I0(\ccmd_f_reg[4]_1 ),
        .I1(ccmd_f[1]),
        .I2(ccmd_f[0]),
        .I3(ccmd_f[2]),
        .I4(ccmd_f[3]),
        .O(hlfa_e_dif0_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfa_e_difl0_carry
       (.CI(\<const0> ),
        .CO({hlfa_e_difl0_carry_n_0,hlfa_e_difl0_carry_n_1,hlfa_e_difl0_carry_n_2,hlfa_e_difl0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI(hlfa_r_0[19:16]),
        .O({hlfa_e_difl0_carry_n_4,p_0_in3_in,p_0_in1_in,hlfa_e_difl0_carry_n_7}),
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
    .INIT(64'h6AAA6AAA6AAA5555)) 
    hlfa_e_difl0_carry__0_i_1
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_e_dif0_carry__0_i_4_n_0),
        .I2(ccmd_f[1]),
        .I3(\ccmd_f_reg[4]_1 ),
        .I4(hlfa_e_dif0_carry__0_0[5]),
        .I5(hlfa_e_dif0_carry__0_i_5_n_0),
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
        .I1(hlfa_e_dif0_carry__0_0[3]),
        .I2(hlfa_e_dif0_carry_i_9_n_0),
        .O(hlfa_e_difl0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    hlfa_e_difl0_carry_i_2
       (.I0(hlfa_r_0[18]),
        .I1(hlfa_e_dif0_carry__0_0[2]),
        .I2(hlfa_e_dif0_carry_i_9_n_0),
        .O(hlfa_e_difl0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h95)) 
    hlfa_e_difl0_carry_i_3
       (.I0(hlfa_r_0[17]),
        .I1(hlfa_e_dif0_carry__0_0[1]),
        .I2(hlfa_e_dif0_carry_i_9_n_0),
        .O(hlfa_e_difl0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h95)) 
    hlfa_e_difl0_carry_i_4
       (.I0(hlfa_r_0[16]),
        .I1(hlfa_e_dif0_carry__0_0[0]),
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
    .INIT(64'h00000000FFB80000)) 
    \hlfa_f[0]_i_1 
       (.I0(\hlfa_f[0]_i_2_n_0 ),
        .I1(\hlfa_f[11]_i_4_n_0 ),
        .I2(\hlfa_f[0]_i_3_n_0 ),
        .I3(\hlfa_f[0]_i_4_n_0 ),
        .I4(\hlfa_f_reg[12]_0 ),
        .I5(\hlfa_f[0]_i_5_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    \hlfa_f[0]_i_2 
       (.I0(hlfa_r_0[4]),
        .I1(hlfa_r_0[1]),
        .I2(hlfa_r_0[0]),
        .I3(hlfa_r_0[2]),
        .I4(hlfa_r_0[3]),
        .I5(hlfa_e_dif0_carry_i_9_n_0),
        .O(\hlfa_f[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCB8FCB8FC888888)) 
    \hlfa_f[0]_i_3 
       (.I0(hlfa_r_0[2]),
        .I1(\hlfa_f[15]_i_8_n_0 ),
        .I2(\hlfa_f[14]_i_3_n_0 ),
        .I3(hlfa_e_dif0_carry_i_9_n_0),
        .I4(hlfa_r_0[0]),
        .I5(hlfa_r_0[1]),
        .O(\hlfa_f[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \hlfa_f[0]_i_4 
       (.I0(\hlfa_e_reg[3]_0 ),
        .I1(\ccmd_f_reg[0]_0 ),
        .I2(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_f[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h008800A800000020)) 
    \hlfa_f[0]_i_5 
       (.I0(\hlfa_f[0]_i_6_n_0 ),
        .I1(\ccmd_f_reg[0]_0 ),
        .I2(\hlfa_e_reg[3]_0 ),
        .I3(\hlfa_f_reg[0]_0 ),
        .I4(hlfa_r_0[8]),
        .I5(\hlfa_f[0]_i_7_n_0 ),
        .O(\hlfa_f[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h555555555555555D)) 
    \hlfa_f[0]_i_6 
       (.I0(hlfa_e_dif0_carry_i_9_n_0),
        .I1(\hlfa_f[0]_i_8_n_0 ),
        .I2(hlfa_r_0[4]),
        .I3(hlfa_r_0[5]),
        .I4(hlfa_r_0[6]),
        .I5(hlfa_r_0[7]),
        .O(\hlfa_f[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \hlfa_f[0]_i_7 
       (.I0(\hlfa_f[0]_i_9_n_0 ),
        .I1(hlfa_r_0[10]),
        .I2(hlfa_r_0[11]),
        .I3(hlfa_r_0[8]),
        .I4(hlfa_r_0[15]),
        .I5(hlfa_e_dif0_carry_i_9_n_0),
        .O(\hlfa_f[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \hlfa_f[0]_i_8 
       (.I0(hlfa_r_0[1]),
        .I1(hlfa_r_0[0]),
        .I2(hlfa_r_0[2]),
        .I3(hlfa_r_0[3]),
        .O(\hlfa_f[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \hlfa_f[0]_i_9 
       (.I0(hlfa_r_0[9]),
        .I1(hlfa_r_0[14]),
        .I2(hlfa_r_0[12]),
        .I3(hlfa_r_0[13]),
        .O(\hlfa_f[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABABBBAAABAAA)) 
    \hlfa_f[10]_i_1 
       (.I0(\hlfa_f_reg[10]_0 ),
        .I1(\hlfa_f_reg[10]_1 ),
        .I2(hlfa_r_0[14]),
        .I3(\hlfa_f[11]_i_4_n_0 ),
        .I4(\hlfa_f[10]_i_3_n_0 ),
        .I5(\hlfa_f[10]_i_4_n_0 ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'h00000F44FFFF0F44)) 
    \hlfa_f[10]_i_3 
       (.I0(hlfa_r_0[2]),
        .I1(\hlfa_f[14]_i_4_n_0 ),
        .I2(hlfa_r_0[11]),
        .I3(\hlfa_f[14]_i_3_n_0 ),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(hlfa_r_0[12]),
        .O(\hlfa_f[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \hlfa_f[10]_i_4 
       (.I0(\hlfa_f[10]_i_5_n_0 ),
        .I1(hlfa_r_0[8]),
        .I2(\hlfa_f[14]_i_8_n_0 ),
        .I3(\hlfa_f[14]_i_3_n_0 ),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(\hlfa_f[14]_i_4_n_0 ),
        .O(\hlfa_f[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF808FB08)) 
    \hlfa_f[10]_i_5 
       (.I0(hlfa_r_0[6]),
        .I1(p_0_in3_in),
        .I2(\hlfa_f_reg[15]_0 ),
        .I3(hlfa_r_0[9]),
        .I4(p_0_in1_in),
        .O(\hlfa_f[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABABBBAAABAAA)) 
    \hlfa_f[11]_i_1 
       (.I0(\hlfa_f_reg[11]_0 ),
        .I1(\hlfa_f_reg[10]_1 ),
        .I2(hlfa_r_0[15]),
        .I3(\hlfa_f[11]_i_4_n_0 ),
        .I4(\hlfa_f[11]_i_5_n_0 ),
        .I5(\hlfa_f[11]_i_6_n_0 ),
        .O(p_1_in[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[11]_i_4 
       (.I0(p_0_in14_in),
        .I1(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_f[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000002A)) 
    \hlfa_f[11]_i_5 
       (.I0(\hlfa_f[11]_i_7_n_0 ),
        .I1(hlfa_r_0[9]),
        .I2(\hlfa_f[14]_i_8_n_0 ),
        .I3(\hlfa_f[14]_i_3_n_0 ),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(\hlfa_f[14]_i_4_n_0 ),
        .O(\hlfa_f[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0DD0000F0DD)) 
    \hlfa_f[11]_i_6 
       (.I0(\hlfa_f[14]_i_4_n_0 ),
        .I1(hlfa_r_0[3]),
        .I2(hlfa_r_0[12]),
        .I3(\hlfa_f[14]_i_3_n_0 ),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(hlfa_r_0[13]),
        .O(\hlfa_f[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h33330FBB)) 
    \hlfa_f[11]_i_7 
       (.I0(p_0_in1_in),
        .I1(hlfa_r_0[10]),
        .I2(hlfa_r_0[7]),
        .I3(p_0_in3_in),
        .I4(\hlfa_f_reg[15]_0 ),
        .O(\hlfa_f[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h75000000FFFFFFFF)) 
    \hlfa_f[12]_i_1 
       (.I0(\hlfa_f[12]_i_2_n_0 ),
        .I1(\hlfa_f[12]_i_3_n_0 ),
        .I2(\hlfa_f[13]_i_3_n_0 ),
        .I3(\hlfa_f[13]_i_2_n_0 ),
        .I4(\hlfa_f_reg[12]_0 ),
        .I5(\hlfa_f_reg[12]_1 ),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'h00000F77FFFF0F77)) 
    \hlfa_f[12]_i_2 
       (.I0(\hlfa_f[14]_i_4_n_0 ),
        .I1(hlfa_r_0[4]),
        .I2(hlfa_r_0[13]),
        .I3(\hlfa_f[14]_i_3_n_0 ),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(hlfa_r_0[14]),
        .O(\hlfa_f[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000077707770777)) 
    \hlfa_f[12]_i_3 
       (.I0(\hlfa_f[15]_i_7_n_0 ),
        .I1(hlfa_r_0[11]),
        .I2(\hlfa_f[14]_i_8_n_0 ),
        .I3(hlfa_r_0[10]),
        .I4(\hlfa_f[14]_i_7_n_0 ),
        .I5(hlfa_r_0[8]),
        .O(\hlfa_f[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \hlfa_f[12]_i_5 
       (.I0(abus[13]),
        .I1(abus[12]),
        .I2(abus[14]),
        .I3(abus[11]),
        .I4(abus[10]),
        .I5(rst_n),
        .O(abus_13_sn_1));
  LUT6 #(
    .INIT(64'h0000200020202020)) 
    \hlfa_f[13]_i_1 
       (.I0(rst_n),
        .I1(hctl_load_b),
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
        .I2(\ccmd_f_reg[0]_0 ),
        .I3(\hlfa_e_reg[3]_0 ),
        .O(\hlfa_f[13]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \hlfa_f[13]_i_3 
       (.I0(\hlfa_f[14]_i_3_n_0 ),
        .I1(\hlfa_f[15]_i_8_n_0 ),
        .I2(\hlfa_f[14]_i_4_n_0 ),
        .O(\hlfa_f[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000B0BFBFBFB0BF)) 
    \hlfa_f[13]_i_4 
       (.I0(p_0_in3_in),
        .I1(hlfa_r_0[11]),
        .I2(\hlfa_f[13]_i_6_n_0 ),
        .I3(hlfa_r_0[12]),
        .I4(\hlfa_f[14]_i_7_n_0 ),
        .I5(hlfa_r_0[9]),
        .O(\hlfa_f[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000F77FFFF0F77)) 
    \hlfa_f[13]_i_5 
       (.I0(\hlfa_f[14]_i_4_n_0 ),
        .I1(hlfa_r_0[5]),
        .I2(hlfa_r_0[14]),
        .I3(\hlfa_f[14]_i_3_n_0 ),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(hlfa_r_0[15]),
        .O(\hlfa_f[13]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[13]_i_6 
       (.I0(p_0_in1_in),
        .I1(\hlfa_f_reg[15]_0 ),
        .O(\hlfa_f[13]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA888A8AA)) 
    \hlfa_f[14]_i_1 
       (.I0(\hlfa_f[14]_i_2_n_0 ),
        .I1(\hlfa_f[14]_i_3_n_0 ),
        .I2(hlfa_r_0[6]),
        .I3(\hlfa_f[14]_i_4_n_0 ),
        .I4(\hlfa_f[14]_i_5_n_0 ),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'h0000000020200020)) 
    \hlfa_f[14]_i_2 
       (.I0(rst_n),
        .I1(hctl_load_b),
        .I2(\hlfa_f[13]_i_2_n_0 ),
        .I3(\hlfa_f[14]_i_3_n_0 ),
        .I4(hlfa_r_0[15]),
        .I5(\hlfa_f[15]_i_8_n_0 ),
        .O(\hlfa_f[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[14]_i_3 
       (.I0(hlfa_e_dif0_carry_n_7),
        .I1(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_f[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \hlfa_f[14]_i_4 
       (.I0(hlfa_e_difl0_carry_n_4),
        .I1(hlfa_e_difl0_carry__0_n_7),
        .I2(\hlfa_f_reg[15]_0 ),
        .O(\hlfa_f[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000077707770777)) 
    \hlfa_f[14]_i_5 
       (.I0(\hlfa_f[14]_i_7_n_0 ),
        .I1(hlfa_r_0[10]),
        .I2(\hlfa_f[15]_i_7_n_0 ),
        .I3(hlfa_r_0[13]),
        .I4(hlfa_r_0[12]),
        .I5(\hlfa_f[14]_i_8_n_0 ),
        .O(\hlfa_f[14]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[14]_i_7 
       (.I0(p_0_in3_in),
        .I1(\hlfa_f_reg[15]_0 ),
        .O(\hlfa_f[14]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \hlfa_f[14]_i_8 
       (.I0(\hlfa_f_reg[15]_0 ),
        .I1(p_0_in1_in),
        .I2(p_0_in3_in),
        .O(\hlfa_f[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3F3F3F2FFFFFFFFF)) 
    \hlfa_f[15]_i_1 
       (.I0(hlfa_e_difl0_carry_n_7),
        .I1(\hlfa_f_reg[15]_0 ),
        .I2(\hlfa_f[15]_i_4_n_0 ),
        .I3(p_0_in3_in),
        .I4(p_0_in1_in),
        .I5(\hlfa_f_reg[12]_0 ),
        .O(\hlfa_f[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4440404040404040)) 
    \hlfa_f[15]_i_2 
       (.I0(hctl_load_b),
        .I1(rst_n),
        .I2(\hlfa_f[15]_i_6_n_0 ),
        .I3(\hlfa_f[15]_i_7_n_0 ),
        .I4(\hlfa_f[15]_i_4_n_0 ),
        .I5(hlfa_r_0[14]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0002)) 
    \hlfa_f[15]_i_4 
       (.I0(\hlfa_f[13]_i_2_n_0 ),
        .I1(\hlfa_f[14]_i_4_n_0 ),
        .I2(\hlfa_f[15]_i_8_n_0 ),
        .I3(\hlfa_f[14]_i_3_n_0 ),
        .O(\hlfa_f[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000A030)) 
    \hlfa_f[15]_i_6 
       (.I0(hlfa_r_0[7]),
        .I1(\hlfa_f[15]_i_9_n_0 ),
        .I2(\hlfa_f[13]_i_2_n_0 ),
        .I3(\hlfa_f[14]_i_4_n_0 ),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(\hlfa_f[14]_i_3_n_0 ),
        .O(\hlfa_f[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hCD)) 
    \hlfa_f[15]_i_7 
       (.I0(p_0_in1_in),
        .I1(\hlfa_f_reg[15]_0 ),
        .I2(p_0_in3_in),
        .O(\hlfa_f[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[15]_i_8 
       (.I0(p_0_in11_in),
        .I1(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_f[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF5F5F3FF)) 
    \hlfa_f[15]_i_9 
       (.I0(hlfa_r_0[11]),
        .I1(hlfa_r_0[13]),
        .I2(\hlfa_f_reg[15]_0 ),
        .I3(p_0_in1_in),
        .I4(p_0_in3_in),
        .O(\hlfa_f[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8A8A8A8A8A8A8)) 
    \hlfa_f[1]_i_1 
       (.I0(\hlfa_f_reg[12]_0 ),
        .I1(\hlfa_f[1]_i_2_n_0 ),
        .I2(\hlfa_f[1]_i_3_n_0 ),
        .I3(\hlfa_f[15]_i_7_n_0 ),
        .I4(\hlfa_f[15]_i_4_n_0 ),
        .I5(hlfa_r_0[0]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hAA800080)) 
    \hlfa_f[1]_i_2 
       (.I0(\hlfa_f[13]_i_2_n_0 ),
        .I1(\hlfa_f[14]_i_3_n_0 ),
        .I2(hlfa_r_0[2]),
        .I3(\hlfa_f[15]_i_8_n_0 ),
        .I4(hlfa_r_0[3]),
        .O(\hlfa_f[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000008888F888)) 
    \hlfa_f[1]_i_3 
       (.I0(hlfa_r_0[9]),
        .I1(\hlfa_f[6]_i_4_n_0 ),
        .I2(hlfa_r_0[5]),
        .I3(\hlfa_f[11]_i_4_n_0 ),
        .I4(\hlfa_e_reg[3]_0 ),
        .I5(\ccmd_f_reg[0]_0 ),
        .O(\hlfa_f[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBBBBBABBAA)) 
    \hlfa_f[2]_i_1 
       (.I0(\hlfa_f_reg[2]_0 ),
        .I1(\hlfa_f[2]_i_3_n_0 ),
        .I2(hlfa_r_0[6]),
        .I3(\hlfa_f[6]_i_4_n_0 ),
        .I4(\hlfa_f[11]_i_4_n_0 ),
        .I5(\hlfa_f[2]_i_4_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hDDDDDDDDFDFFFDFD)) 
    \hlfa_f[2]_i_3 
       (.I0(rst_n),
        .I1(hctl_load_b),
        .I2(\ccmd_f_reg[0]_0 ),
        .I3(hlfa_r_0[10]),
        .I4(\hlfa_e_reg[3]_0 ),
        .I5(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_f[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFE0C0EF0F20002)) 
    \hlfa_f[2]_i_4 
       (.I0(\hlfa_f[2]_i_5_n_0 ),
        .I1(\hlfa_f[14]_i_3_n_0 ),
        .I2(\hlfa_f[15]_i_8_n_0 ),
        .I3(\hlfa_f[14]_i_4_n_0 ),
        .I4(hlfa_r_0[4]),
        .I5(hlfa_r_0[3]),
        .O(\hlfa_f[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hCC00CCAC)) 
    \hlfa_f[2]_i_5 
       (.I0(hlfa_r_0[0]),
        .I1(hlfa_r_0[1]),
        .I2(p_0_in1_in),
        .I3(\hlfa_f_reg[15]_0 ),
        .I4(p_0_in3_in),
        .O(\hlfa_f[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBBBBBABBAA)) 
    \hlfa_f[3]_i_1 
       (.I0(\hlfa_f_reg[3]_0 ),
        .I1(\hlfa_f[3]_i_3_n_0 ),
        .I2(hlfa_r_0[7]),
        .I3(\hlfa_f[6]_i_4_n_0 ),
        .I4(\hlfa_f[11]_i_4_n_0 ),
        .I5(\hlfa_f[3]_i_4_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hDDDDDDDDFDFFFDFD)) 
    \hlfa_f[3]_i_3 
       (.I0(rst_n),
        .I1(hctl_load_b),
        .I2(\ccmd_f_reg[0]_0 ),
        .I3(hlfa_r_0[11]),
        .I4(\hlfa_e_reg[3]_0 ),
        .I5(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_f[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFEF0F20C0E0002)) 
    \hlfa_f[3]_i_4 
       (.I0(\hlfa_f[3]_i_5_n_0 ),
        .I1(\hlfa_f[14]_i_3_n_0 ),
        .I2(\hlfa_f[15]_i_8_n_0 ),
        .I3(\hlfa_f[14]_i_4_n_0 ),
        .I4(hlfa_r_0[4]),
        .I5(hlfa_r_0[5]),
        .O(\hlfa_f[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0ACAA)) 
    \hlfa_f[3]_i_5 
       (.I0(hlfa_r_0[2]),
        .I1(hlfa_r_0[1]),
        .I2(\hlfa_f_reg[15]_0 ),
        .I3(p_0_in1_in),
        .I4(p_0_in3_in),
        .O(\hlfa_f[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBABBBABBBABA)) 
    \hlfa_f[4]_i_1 
       (.I0(\hlfa_f_reg[4]_0 ),
        .I1(\hlfa_f[4]_i_3_n_0 ),
        .I2(\hlfa_f[6]_i_4_n_0 ),
        .I3(\hlfa_f[4]_i_4_n_0 ),
        .I4(\hlfa_f[4]_i_5_n_0 ),
        .I5(\hlfa_f[4]_i_6_n_0 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hDDDDDDDDFDFFFDFD)) 
    \hlfa_f[4]_i_3 
       (.I0(rst_n),
        .I1(hctl_load_b),
        .I2(\ccmd_f_reg[0]_0 ),
        .I3(hlfa_r_0[12]),
        .I4(\hlfa_e_reg[3]_0 ),
        .I5(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_f[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[4]_i_4 
       (.I0(\hlfa_f[11]_i_4_n_0 ),
        .I1(hlfa_r_0[8]),
        .O(\hlfa_f[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0100000001010101)) 
    \hlfa_f[4]_i_5 
       (.I0(\hlfa_f[14]_i_4_n_0 ),
        .I1(\hlfa_f[15]_i_8_n_0 ),
        .I2(\hlfa_f[14]_i_3_n_0 ),
        .I3(\hlfa_f[14]_i_8_n_0 ),
        .I4(hlfa_r_0[2]),
        .I5(\hlfa_f[4]_i_7_n_0 ),
        .O(\hlfa_f[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEBAEEAA)) 
    \hlfa_f[4]_i_6 
       (.I0(\hlfa_f[11]_i_4_n_0 ),
        .I1(\hlfa_f[15]_i_8_n_0 ),
        .I2(\hlfa_f[14]_i_3_n_0 ),
        .I3(hlfa_r_0[6]),
        .I4(hlfa_r_0[5]),
        .O(\hlfa_f[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h55550FDD)) 
    \hlfa_f[4]_i_7 
       (.I0(hlfa_r_0[3]),
        .I1(p_0_in1_in),
        .I2(hlfa_r_0[0]),
        .I3(p_0_in3_in),
        .I4(\hlfa_f_reg[15]_0 ),
        .O(\hlfa_f[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F4F444F4444)) 
    \hlfa_f[5]_i_1 
       (.I0(\hlfa_f_reg[12]_1 ),
        .I1(abus[3]),
        .I2(\hlfa_f[5]_i_2_n_0 ),
        .I3(\hlfa_f[5]_i_3_n_0 ),
        .I4(\hlfa_f[5]_i_4_n_0 ),
        .I5(\hlfa_f[5]_i_5_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hDDDDDDDDFDFFFDFD)) 
    \hlfa_f[5]_i_2 
       (.I0(rst_n),
        .I1(hctl_load_b),
        .I2(\ccmd_f_reg[0]_0 ),
        .I3(hlfa_r_0[13]),
        .I4(\hlfa_e_reg[3]_0 ),
        .I5(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_f[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABAAFBFAAFAEFFFE)) 
    \hlfa_f[5]_i_3 
       (.I0(\hlfa_f[11]_i_4_n_0 ),
        .I1(\hlfa_f[14]_i_3_n_0 ),
        .I2(\hlfa_f[15]_i_8_n_0 ),
        .I3(\hlfa_f[14]_i_4_n_0 ),
        .I4(hlfa_r_0[7]),
        .I5(hlfa_r_0[6]),
        .O(\hlfa_f[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \hlfa_f[5]_i_4 
       (.I0(\hlfa_f[5]_i_6_n_0 ),
        .I1(hlfa_r_0[3]),
        .I2(\hlfa_f[14]_i_8_n_0 ),
        .I3(\hlfa_f[14]_i_3_n_0 ),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(\hlfa_f[14]_i_4_n_0 ),
        .O(\hlfa_f[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \hlfa_f[5]_i_5 
       (.I0(\hlfa_f[6]_i_4_n_0 ),
        .I1(hlfa_r_0[9]),
        .I2(\hlfa_f[11]_i_4_n_0 ),
        .O(\hlfa_f[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAF022)) 
    \hlfa_f[5]_i_6 
       (.I0(hlfa_r_0[4]),
        .I1(p_0_in1_in),
        .I2(hlfa_r_0[1]),
        .I3(p_0_in3_in),
        .I4(\hlfa_f_reg[15]_0 ),
        .O(\hlfa_f[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBABBBABBBABA)) 
    \hlfa_f[6]_i_1 
       (.I0(\hlfa_f_reg[6]_0 ),
        .I1(\hlfa_f[6]_i_3_n_0 ),
        .I2(\hlfa_f[6]_i_4_n_0 ),
        .I3(\hlfa_f[6]_i_5_n_0 ),
        .I4(\hlfa_f[6]_i_6_n_0 ),
        .I5(\hlfa_f[6]_i_7_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hDDDDDDDDFDFFFDFD)) 
    \hlfa_f[6]_i_3 
       (.I0(rst_n),
        .I1(hctl_load_b),
        .I2(\ccmd_f_reg[0]_0 ),
        .I3(hlfa_r_0[14]),
        .I4(\hlfa_e_reg[3]_0 ),
        .I5(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_f[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[6]_i_4 
       (.I0(\hlfa_e_reg[3]_0 ),
        .I1(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_f[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hlfa_f[6]_i_5 
       (.I0(\hlfa_f[11]_i_4_n_0 ),
        .I1(hlfa_r_0[10]),
        .O(\hlfa_f[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0100000001010101)) 
    \hlfa_f[6]_i_6 
       (.I0(\hlfa_f[14]_i_4_n_0 ),
        .I1(\hlfa_f[15]_i_8_n_0 ),
        .I2(\hlfa_f[14]_i_3_n_0 ),
        .I3(\hlfa_f[14]_i_8_n_0 ),
        .I4(hlfa_r_0[4]),
        .I5(\hlfa_f[6]_i_8_n_0 ),
        .O(\hlfa_f[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFEBAEEAA)) 
    \hlfa_f[6]_i_7 
       (.I0(\hlfa_f[11]_i_4_n_0 ),
        .I1(\hlfa_f[15]_i_8_n_0 ),
        .I2(\hlfa_f[14]_i_3_n_0 ),
        .I3(hlfa_r_0[8]),
        .I4(hlfa_r_0[7]),
        .O(\hlfa_f[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h55550FDD)) 
    \hlfa_f[6]_i_8 
       (.I0(hlfa_r_0[5]),
        .I1(p_0_in1_in),
        .I2(hlfa_r_0[2]),
        .I3(p_0_in3_in),
        .I4(\hlfa_f_reg[15]_0 ),
        .O(\hlfa_f[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBAAABAAAA)) 
    \hlfa_f[7]_i_1 
       (.I0(\hlfa_f_reg[7]_0 ),
        .I1(\hlfa_f[7]_i_3_n_0 ),
        .I2(\hlfa_f[11]_i_4_n_0 ),
        .I3(\hlfa_f[7]_i_4_n_0 ),
        .I4(\hlfa_f[7]_i_5_n_0 ),
        .I5(\hlfa_f[7]_i_6_n_0 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hDDDDDDDDFDFFFDFD)) 
    \hlfa_f[7]_i_3 
       (.I0(rst_n),
        .I1(hctl_load_b),
        .I2(\ccmd_f_reg[0]_0 ),
        .I3(hlfa_r_0[15]),
        .I4(\hlfa_e_reg[3]_0 ),
        .I5(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_f[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0BBB0FFF0BBB00F0)) 
    \hlfa_f[7]_i_4 
       (.I0(p_0_in11_in),
        .I1(hlfa_r_0[8]),
        .I2(\hlfa_f[15]_i_8_n_0 ),
        .I3(hlfa_r_0[9]),
        .I4(\hlfa_f[14]_i_3_n_0 ),
        .I5(\hlfa_f[14]_i_4_n_0 ),
        .O(\hlfa_f[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \hlfa_f[7]_i_5 
       (.I0(\hlfa_f[7]_i_7_n_0 ),
        .I1(hlfa_r_0[5]),
        .I2(\hlfa_f[14]_i_8_n_0 ),
        .I3(\hlfa_f[14]_i_3_n_0 ),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(\hlfa_f[14]_i_4_n_0 ),
        .O(\hlfa_f[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \hlfa_f[7]_i_6 
       (.I0(\hlfa_f[6]_i_4_n_0 ),
        .I1(hlfa_r_0[11]),
        .I2(\hlfa_f[11]_i_4_n_0 ),
        .O(\hlfa_f[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hCCAACC0C)) 
    \hlfa_f[7]_i_7 
       (.I0(hlfa_r_0[3]),
        .I1(hlfa_r_0[6]),
        .I2(p_0_in1_in),
        .I3(\hlfa_f_reg[15]_0 ),
        .I4(p_0_in3_in),
        .O(\hlfa_f[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABABBBAAABAAA)) 
    \hlfa_f[8]_i_1 
       (.I0(\hlfa_f_reg[8]_0 ),
        .I1(\hlfa_f_reg[10]_1 ),
        .I2(hlfa_r_0[12]),
        .I3(\hlfa_f[11]_i_4_n_0 ),
        .I4(\hlfa_f[8]_i_3_n_0 ),
        .I5(\hlfa_f[8]_i_4_n_0 ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h0CCC00C00CCC08C8)) 
    \hlfa_f[8]_i_3 
       (.I0(\hlfa_f[14]_i_4_n_0 ),
        .I1(\hlfa_f[8]_i_5_n_0 ),
        .I2(\hlfa_f[15]_i_8_n_0 ),
        .I3(hlfa_r_0[10]),
        .I4(\hlfa_f[14]_i_3_n_0 ),
        .I5(hlfa_r_0[0]),
        .O(\hlfa_f[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \hlfa_f[8]_i_4 
       (.I0(\hlfa_f[8]_i_6_n_0 ),
        .I1(hlfa_r_0[4]),
        .I2(\hlfa_f[14]_i_7_n_0 ),
        .I3(\hlfa_f[14]_i_3_n_0 ),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(\hlfa_f[14]_i_4_n_0 ),
        .O(\hlfa_f[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \hlfa_f[8]_i_5 
       (.I0(hlfa_r_0[9]),
        .I1(p_0_in11_in),
        .I2(hlfa_e_dif0_carry_n_7),
        .I3(\hlfa_f_reg[0]_0 ),
        .O(\hlfa_f[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0ACAA)) 
    \hlfa_f[8]_i_6 
       (.I0(hlfa_r_0[7]),
        .I1(hlfa_r_0[6]),
        .I2(\hlfa_f_reg[15]_0 ),
        .I3(p_0_in1_in),
        .I4(p_0_in3_in),
        .O(\hlfa_f[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABABBBAAABAAA)) 
    \hlfa_f[9]_i_1 
       (.I0(\hlfa_f_reg[9]_0 ),
        .I1(\hlfa_f_reg[10]_1 ),
        .I2(hlfa_r_0[13]),
        .I3(\hlfa_f[11]_i_4_n_0 ),
        .I4(\hlfa_f[9]_i_3_n_0 ),
        .I5(\hlfa_f[9]_i_4_n_0 ),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'h33335555333300F0)) 
    \hlfa_f[9]_i_3 
       (.I0(hlfa_r_0[10]),
        .I1(hlfa_r_0[11]),
        .I2(\hlfa_f[14]_i_4_n_0 ),
        .I3(hlfa_r_0[1]),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(\hlfa_f[14]_i_3_n_0 ),
        .O(\hlfa_f[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \hlfa_f[9]_i_4 
       (.I0(\hlfa_f[9]_i_5_n_0 ),
        .I1(hlfa_r_0[7]),
        .I2(\hlfa_f[14]_i_8_n_0 ),
        .I3(\hlfa_f[14]_i_3_n_0 ),
        .I4(\hlfa_f[15]_i_8_n_0 ),
        .I5(\hlfa_f[14]_i_4_n_0 ),
        .O(\hlfa_f[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF808FB08)) 
    \hlfa_f[9]_i_5 
       (.I0(hlfa_r_0[5]),
        .I1(p_0_in3_in),
        .I2(\hlfa_f_reg[15]_0 ),
        .I3(hlfa_r_0[8]),
        .I4(p_0_in1_in),
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
  LUT5 #(
    .INIT(32'h28822828)) 
    \hlfb_e[1]_i_4 
       (.I0(\hlfb_e_reg[1]_0 ),
        .I1(O[1]),
        .I2(hlfa_e_dif0_carry__0_0[1]),
        .I3(hlfa_r_0[16]),
        .I4(hlfa_e_dif0_carry__0_0[0]),
        .O(\hlfb_e_reg[1] ));
  LUT5 #(
    .INIT(32'h906F9F6F)) 
    \hlfb_e[2]_i_3 
       (.I0(\hlfb_e[2]_i_5_n_0 ),
        .I1(O[2]),
        .I2(\hlfb_e_reg[1]_0 ),
        .I3(hlfa_e_dif0_carry__0_0[2]),
        .I4(\hlfb_f_reg[1] ),
        .O(\hlfb_e_reg[2] ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \hlfb_e[2]_i_5 
       (.I0(hlfa_r_0[16]),
        .I1(hlfa_e_dif0_carry__0_0[0]),
        .I2(O[1]),
        .I3(hlfa_e_dif0_carry__0_0[1]),
        .O(\hlfb_e[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \hlfb_e[3]_i_3 
       (.I0(hctl_ccmd_int_reg),
        .I1(\hlfb_f_reg[1]_1 [0]),
        .I2(\hlfb_f_reg[1]_1 [2]),
        .I3(\hlfb_f_reg[1]_1 [1]),
        .I4(O[1]),
        .I5(O[2]),
        .O(\stat_reg[0] ));
  LUT6 #(
    .INIT(64'hCDCECECDCCCCCFCC)) 
    \hlfb_e[3]_i_5 
       (.I0(\hlfb_e[3]_i_6_n_0 ),
        .I1(\hlfb_e_reg[3]_1 ),
        .I2(\hlfb_f_reg[12]_0 ),
        .I3(O[3]),
        .I4(hlfa_e_dif0_carry__0_0[3]),
        .I5(\hlfa_e_reg[4]_0 ),
        .O(\hlfb_e_reg[3] ));
  LUT6 #(
    .INIT(64'h00000BBF0BBFFFFF)) 
    \hlfb_e[3]_i_6 
       (.I0(hlfa_r_0[16]),
        .I1(hlfa_e_dif0_carry__0_0[0]),
        .I2(O[1]),
        .I3(hlfa_e_dif0_carry__0_0[1]),
        .I4(O[2]),
        .I5(hlfa_e_dif0_carry__0_0[2]),
        .O(\hlfb_e[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0E0F0F0EFFFFFFFF)) 
    \hlfb_e[5]_i_1 
       (.I0(O[1]),
        .I1(O[2]),
        .I2(\hlfb_f_reg[12]_0 ),
        .I3(hlfa_e_dif0_carry__0_0[0]),
        .I4(hlfa_r_0[16]),
        .I5(\hlfb_e_reg[5] ),
        .O(\hlfb_e_reg[0] ));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfb_e[5]_i_11 
       (.I0(hlfa_r_0[19]),
        .I1(hlfa_e_dif0_carry__0_0[3]),
        .O(\hlfb_e[5]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfb_e[5]_i_12 
       (.I0(hlfa_r_0[18]),
        .I1(hlfa_e_dif0_carry__0_0[2]),
        .O(\hlfb_e[5]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfb_e[5]_i_13 
       (.I0(hlfa_r_0[17]),
        .I1(hlfa_e_dif0_carry__0_0[1]),
        .O(\hlfb_e[5]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfb_e[5]_i_14 
       (.I0(hlfa_r_0[16]),
        .I1(hlfa_e_dif0_carry__0_0[0]),
        .O(\hlfb_e[5]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \hlfb_e[5]_i_16 
       (.I0(O[3]),
        .I1(hlfa_e_dif0_carry__0_0[3]),
        .I2(\hlfb_e[3]_i_6_n_0 ),
        .O(\hlfb_e_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfb_e[5]_i_21 
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_e_dif0_carry__0_0[4]),
        .O(\hlfb_e[5]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF1FFFF)) 
    \hlfb_e[5]_i_9 
       (.I0(O[1]),
        .I1(O[2]),
        .I2(\hlfb_f_reg[1]_1 [1]),
        .I3(\hlfb_f_reg[1]_1 [2]),
        .I4(\hlfb_f_reg[1]_1 [0]),
        .I5(hctl_ccmd_int_reg),
        .O(\stat_reg[1] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hlfb_e_reg[5]_i_17 
       (.CI(\hlfb_e_reg[5]_i_3_n_0 ),
        .CO(\hlfb_e_reg[5]_i_17_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,hlfa_r_0[20]}),
        .O({\hlfb_e_reg[5]_i_17_n_6 ,\hlfa_e_reg[4]_0 }),
        .S({\<const0> ,\<const0> ,S,\hlfb_e[5]_i_21_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hlfb_e_reg[5]_i_3 
       (.CI(\<const0> ),
        .CO({\hlfb_e_reg[5]_i_3_n_0 ,\hlfb_e_reg[5]_i_3_n_1 ,\hlfb_e_reg[5]_i_3_n_2 ,\hlfb_e_reg[5]_i_3_n_3 }),
        .CYINIT(\<const1> ),
        .DI(hlfa_r_0[19:16]),
        .O(O),
        .S({\hlfb_e[5]_i_11_n_0 ,\hlfb_e[5]_i_12_n_0 ,\hlfb_e[5]_i_13_n_0 ,\hlfb_e[5]_i_14_n_0 }));
  LUT4 #(
    .INIT(16'hF0F1)) 
    \hlfb_f[0]_i_3 
       (.I0(O[2]),
        .I1(O[3]),
        .I2(\hlfb_f_reg[12]_0 ),
        .I3(\hlfa_e_reg[4]_0 ),
        .O(\hlfa_e_reg[3]_1 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \hlfb_f[10]_i_2 
       (.I0(\stat_reg[0] ),
        .I1(\hlfb_f_reg[10] [6]),
        .I2(\hlfb_f_reg[10] [5]),
        .I3(\stat_reg[1] ),
        .O(\hlfb_f_reg[12] ));
  LUT6 #(
    .INIT(64'h0E0F0F0EFFFFFFFF)) 
    \hlfb_f[12]_i_1 
       (.I0(O[1]),
        .I1(O[2]),
        .I2(\hlfb_f_reg[12]_0 ),
        .I3(hlfa_e_dif0_carry__0_0[0]),
        .I4(hlfa_r_0[16]),
        .I5(\hlfb_f_reg[12]_1 ),
        .O(E));
  LUT6 #(
    .INIT(64'hEA00EAEA00000000)) 
    \hlfb_f[1]_i_1 
       (.I0(\hlfb_f[1]_i_2_n_0 ),
        .I1(\hlfb_f_reg[10] [1]),
        .I2(\stat_reg[0] ),
        .I3(\hlfb_f_reg[10] [3]),
        .I4(\hlfb_f_reg[1] ),
        .I5(\hlfb_f_reg[1]_0 ),
        .O(\hlfb_f_reg[3] ));
  LUT6 #(
    .INIT(64'hAAFFAAFFAAF0AA22)) 
    \hlfb_f[1]_i_2 
       (.I0(\hlfb_f_reg[10] [0]),
        .I1(O[1]),
        .I2(\hlfb_f_reg[10] [2]),
        .I3(\hlfb_f_reg[12]_0 ),
        .I4(O[2]),
        .I5(O[3]),
        .O(\hlfb_f[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \hlfb_f[9]_i_2 
       (.I0(\stat_reg[0] ),
        .I1(\hlfb_f_reg[10] [5]),
        .I2(\hlfb_f_reg[10] [4]),
        .I3(\stat_reg[1] ),
        .O(\hlfb_f_reg[11] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hlfc_e[0]_i_1 
       (.I0(\hlfa_e_reg[0]_0 ),
        .I1(\hlfc_e_reg[2] ),
        .I2(\hlfc_e_reg[2]_0 [0]),
        .O(\hlfa_e_reg[2]_0 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \hlfc_e[2]_i_1 
       (.I0(\hlfa_e_reg[2]_1 ),
        .I1(\hlfc_e_reg[2] ),
        .I2(\hlfc_e_reg[2]_0 [1]),
        .O(\hlfa_e_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0080)) 
    \hlfc_e[5]_i_3 
       (.I0(hlfa_r_0[21]),
        .I1(hctl_ccmd_reg),
        .I2(\ccmd_f_reg[4]_1 ),
        .I3(\ccmd_f_reg[3]_0 ),
        .I4(hctl_ccmd_div),
        .I5(hctl_ccmd_mul),
        .O(\hlfa_e_reg[5]_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfc_e[5]_i_6 
       (.I0(hlfa_r_0[20]),
        .I1(hlfa_e_dif0_carry__0_0[4]),
        .O(\hlfc_e[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    hlfc_e_carry__0_i_1
       (.I0(hlfa_r_0[21]),
        .I1(hlfa_e_dif0_carry__0_0[5]),
        .O(\hlfa_e_reg[5]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hlfc_e_reg[5]_i_4 
       (.CI(\cbus[14]_INST_0_i_41_n_0 ),
        .CO(\hlfc_e_reg[5]_i_4_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,hlfa_r_0[20]}),
        .O(hlfc_e[4:3]),
        .S({\<const0> ,\<const0> ,\cbus[14]_INST_0_i_30 ,\hlfc_e[5]_i_6_n_0 }));
  LUT5 #(
    .INIT(32'h69969696)) 
    hlfc_f_t_carry__2_i_4
       (.I0(hlfa_r_0[22]),
        .I1(hctl_ccmd_sub),
        .I2(Q),
        .I3(hlfa_r_0[15]),
        .I4(hctl_ccmd_add),
        .O(\hlfa_i_reg[15]_3 [2]));
  LUT5 #(
    .INIT(32'h78878778)) 
    hlfc_f_t_carry__2_i_5
       (.I0(hlfa_r_0[14]),
        .I1(hctl_ccmd_add),
        .I2(hlfa_r_0[22]),
        .I3(hctl_ccmd_sub),
        .I4(Q),
        .O(\hlfa_i_reg[15]_3 [1]));
  LUT5 #(
    .INIT(32'h78878778)) 
    hlfc_f_t_carry__2_i_6
       (.I0(hlfa_r_0[13]),
        .I1(hctl_ccmd_add),
        .I2(hlfa_r_0[22]),
        .I3(hctl_ccmd_sub),
        .I4(Q),
        .O(\hlfa_i_reg[15]_3 [0]));
  LUT6 #(
    .INIT(64'h0C00FFFF08000800)) 
    \hlfc_i[24]_i_3 
       (.I0(\hlfc_i_reg[24] ),
        .I1(hctl_ccmd_mul),
        .I2(\hlfc_i_reg[24]_0 ),
        .I3(\hlfa_i_reg[13]_1 ),
        .I4(\hlfc_i[24]_i_6_n_0 ),
        .I5(\hlfa_i_reg[4]_1 ),
        .O(hctl_ccmd_mul_reg));
  LUT5 #(
    .INIT(32'h960000FF)) 
    \hlfc_i[24]_i_5 
       (.I0(hlfa_r_0[22]),
        .I1(hctl_ccmd_sub),
        .I2(Q),
        .I3(\hlfc_i_reg[24] ),
        .I4(\hlfa_i_reg[4]_1 ),
        .O(\hlfa_i_reg[15]_1 ));
  LUT5 #(
    .INIT(32'hF7C7FFFF)) 
    \hlfc_i[24]_i_6 
       (.I0(ccmd_f[0]),
        .I1(ccmd_f[2]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[1]),
        .I4(\hlfc_f_reg[15] ),
        .O(\hlfc_i[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8B8B8BBB8)) 
    \hlfc_i[25]_i_2 
       (.I0(\hlfa_i_reg[15]_2 ),
        .I1(hctl_ccmd_add),
        .I2(\hlfc_i[25]_i_3_n_0 ),
        .I3(\hlfc_i[25]_i_4_n_0 ),
        .I4(hctl_ccmd_mul),
        .I5(\cbus[15]_INST_0_i_12_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h000A8000AAAAAAAA)) 
    \hlfc_i[25]_i_3 
       (.I0(\hlfc_i_reg[25] ),
        .I1(\hlfa_i_reg[4]_1 ),
        .I2(\hlfc_i_reg[24] ),
        .I3(\hlfa_i_reg[13]_1 ),
        .I4(\hlfc_i_reg[24]_0 ),
        .I5(\cbus[15]_INST_0_i_18_n_0 ),
        .O(\hlfc_i[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000020002)) 
    \hlfc_i[25]_i_4 
       (.I0(\ccmd_f_reg[4]_0 ),
        .I1(hctl_ccmd_div),
        .I2(\hlfc_i[25]_i_5_n_0 ),
        .I3(\cbus[6]_INST_0_i_13_n_0 ),
        .I4(\cbus[6]_INST_0_i_14_n_0 ),
        .I5(\hlfc_i[25]_i_6_n_0 ),
        .O(\hlfc_i[25]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF38F)) 
    \hlfc_i[25]_i_5 
       (.I0(ccmd_f[1]),
        .I1(ccmd_f[0]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[2]),
        .O(\hlfc_i[25]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \hlfc_i[25]_i_6 
       (.I0(\hlfa_i_reg_n_0_[4] ),
        .I1(\hlfa_i_reg_n_0_[7] ),
        .I2(\hlfa_i_reg_n_0_[8] ),
        .I3(\hlfa_i_reg_n_0_[5] ),
        .O(\hlfc_i[25]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \stat[3]_i_3 
       (.I0(hctl_ccmd_int_reg),
        .I1(\hlfa_e_reg[4]_1 ),
        .I2(hlfa_e_dif0_carry_0),
        .O(hctl_ccmd_int_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0400)) 
    \stat[3]_i_5 
       (.I0(O[3]),
        .I1(\stat[3]_i_8_n_0 ),
        .I2(\hlfa_e_reg[4]_0 ),
        .I3(\stat[3]_i_9_n_0 ),
        .I4(hctl_ccmd_int),
        .I5(\hlfb_e_reg[5]_i_17_n_6 ),
        .O(hctl_ccmd_int_reg));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \stat[3]_i_6 
       (.I0(hlfa_e_difl0_carry__0_n_6),
        .I1(hlfa_e_difl0_carry_n_7),
        .I2(p_0_in1_in),
        .I3(p_0_in3_in),
        .I4(hlfa_e_difl0_carry__0_n_7),
        .I5(hlfa_e_difl0_carry_n_4),
        .O(\hlfa_e_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \stat[3]_i_7 
       (.I0(hlfa_e_dif0_carry__0_n_6),
        .I1(p_0_in14_in),
        .I2(hlfa_e_dif0_carry_n_7),
        .I3(p_0_in11_in),
        .I4(\ccmd_f_reg[0]_0 ),
        .I5(\hlfa_e_reg[3]_0 ),
        .O(hlfa_e_dif0_carry_0));
  LUT2 #(
    .INIT(4'h9)) 
    \stat[3]_i_8 
       (.I0(hlfa_r_0[16]),
        .I1(hlfa_e_dif0_carry__0_0[0]),
        .O(\stat[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[3]_i_9 
       (.I0(O[2]),
        .I1(O[1]),
        .O(\stat[3]_i_9_n_0 ));
endmodule

module hfpu_hlfb
   (hctl_ccmd_cmp_reg,
    \hlfb_i_reg[0]_0 ,
    Q,
    \hlfb_i_reg[0]_1 ,
    \hlfb_f_reg[5]_0 ,
    \hlfb_f_reg[12]_0 ,
    \hlfb_f_reg[7]_0 ,
    \hlfb_f_reg[8]_0 ,
    \hlfb_f_reg[9]_0 ,
    \hlfb_f_reg[3]_0 ,
    \hlfb_f_reg[10]_0 ,
    \hlfb_e_reg[2]_0 ,
    \hlfb_e_reg[5]_0 ,
    .bbus_11_sp_1(bbus_11_sn_1),
    hctl_ccmd_mul_reg,
    \hlfb_i_reg[14]_0 ,
    \hlfb_i_reg[14]_1 ,
    \hlfb_i_reg[12]_0 ,
    \hlfb_i_reg[0]_2 ,
    \hlfb_i_reg[4]_0 ,
    \hlfb_i_reg[5]_0 ,
    hfpu_dsp_b,
    \hlfb_i_reg[15]_0 ,
    \hlfb_e_reg[1]_0 ,
    \hlfb_e_reg[5]_1 ,
    S,
    \hlfb_e_reg[4]_0 ,
    \hlfb_e_reg[5]_2 ,
    \cbus[6] ,
    \cbus[6]_0 ,
    hctl_ccmd_cmp,
    \hlfc_i_reg[24] ,
    hctl_ccmd_sub,
    hlfa_r_0,
    \cbus[14]_INST_0_i_2 ,
    \cbus[14]_INST_0_i_2_0 ,
    \cbus[14]_INST_0_i_2_1 ,
    \cbus[14]_INST_0_i_2_2 ,
    \hlfb_e_reg[3]_0 ,
    \hlfb_e_reg[4]_1 ,
    \hlfb_f_reg[4]_0 ,
    rst_n,
    \hlfb_f_reg[4]_1 ,
    \hlfb_f_reg[4]_2 ,
    \hlfb_f_reg[5]_1 ,
    O,
    \hlfb_f_reg[0]_0 ,
    \hlfb_f_reg[0]_1 ,
    \hlfb_e_reg[3]_1 ,
    \hlfb_e_reg[4]_2 ,
    \hlfb_e_reg[5]_3 ,
    \hlfb_f_reg[0]_2 ,
    \hlfb_e_reg[5]_4 ,
    \hlfb_e_reg[5]_5 ,
    \hlfb_f_reg[0]_3 ,
    bbus,
    \hlfc_i_reg[24]_0 ,
    hctl_ccmd_mul,
    hctl_ccmd_div,
    SR,
    E,
    clk,
    D,
    \hlfb_i_reg[15]_1 ,
    \hlfb_f_reg[12]_1 ,
    \hlfb_f_reg[12]_2 );
  output hctl_ccmd_cmp_reg;
  output \hlfb_i_reg[0]_0 ;
  output [0:0]Q;
  output \hlfb_i_reg[0]_1 ;
  output \hlfb_f_reg[5]_0 ;
  output [12:0]\hlfb_f_reg[12]_0 ;
  output \hlfb_f_reg[7]_0 ;
  output \hlfb_f_reg[8]_0 ;
  output \hlfb_f_reg[9]_0 ;
  output \hlfb_f_reg[3]_0 ;
  output \hlfb_f_reg[10]_0 ;
  output \hlfb_e_reg[2]_0 ;
  output [5:0]\hlfb_e_reg[5]_0 ;
  output hctl_ccmd_mul_reg;
  output \hlfb_i_reg[14]_0 ;
  output \hlfb_i_reg[14]_1 ;
  output \hlfb_i_reg[12]_0 ;
  output \hlfb_i_reg[0]_2 ;
  output \hlfb_i_reg[4]_0 ;
  output \hlfb_i_reg[5]_0 ;
  output [10:0]hfpu_dsp_b;
  output \hlfb_i_reg[15]_0 ;
  output \hlfb_e_reg[1]_0 ;
  output [0:0]\hlfb_e_reg[5]_1 ;
  output [3:0]S;
  output [0:0]\hlfb_e_reg[4]_0 ;
  output [0:0]\hlfb_e_reg[5]_2 ;
  input \cbus[6] ;
  input \cbus[6]_0 ;
  input hctl_ccmd_cmp;
  input \hlfc_i_reg[24] ;
  input hctl_ccmd_sub;
  input [6:0]hlfa_r_0;
  input \cbus[14]_INST_0_i_2 ;
  input \cbus[14]_INST_0_i_2_0 ;
  input \cbus[14]_INST_0_i_2_1 ;
  input \cbus[14]_INST_0_i_2_2 ;
  input \hlfb_e_reg[3]_0 ;
  input \hlfb_e_reg[4]_1 ;
  input \hlfb_f_reg[4]_0 ;
  input rst_n;
  input \hlfb_f_reg[4]_1 ;
  input \hlfb_f_reg[4]_2 ;
  input \hlfb_f_reg[5]_1 ;
  input [1:0]O;
  input \hlfb_f_reg[0]_0 ;
  input \hlfb_f_reg[0]_1 ;
  input \hlfb_e_reg[3]_1 ;
  input \hlfb_e_reg[4]_2 ;
  input \hlfb_e_reg[5]_3 ;
  input \hlfb_f_reg[0]_2 ;
  input \hlfb_e_reg[5]_4 ;
  input [0:0]\hlfb_e_reg[5]_5 ;
  input \hlfb_f_reg[0]_3 ;
  input [15:0]bbus;
  input \hlfc_i_reg[24]_0 ;
  input hctl_ccmd_mul;
  input hctl_ccmd_div;
  input [0:0]SR;
  input [0:0]E;
  input clk;
  input [2:0]D;
  input [0:0]\hlfb_i_reg[15]_1 ;
  input [0:0]\hlfb_f_reg[12]_1 ;
  input [10:0]\hlfb_f_reg[12]_2 ;
  output bbus_11_sn_1;

  wire \<const0> ;
  wire [2:0]D;
  wire [0:0]E;
  wire [1:0]O;
  wire [0:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [15:0]bbus;
  wire bbus_11_sn_1;
  wire \cbus[14]_INST_0_i_2 ;
  wire \cbus[14]_INST_0_i_27_n_0 ;
  wire \cbus[14]_INST_0_i_2_0 ;
  wire \cbus[14]_INST_0_i_2_1 ;
  wire \cbus[14]_INST_0_i_2_2 ;
  wire \cbus[6] ;
  wire \cbus[6]_0 ;
  wire \cbus[6]_INST_0_i_6_n_0 ;
  wire \cbus[6]_INST_0_i_8_n_0 ;
  wire clk;
  wire hctl_ccmd_cmp;
  wire hctl_ccmd_cmp_reg;
  wire hctl_ccmd_div;
  wire hctl_ccmd_mul;
  wire hctl_ccmd_mul_reg;
  wire hctl_ccmd_sub;
  wire [10:0]hfpu_dsp_b;
  wire [6:0]hlfa_r_0;
  wire \hlfb_e[3]_i_1_n_0 ;
  wire \hlfb_e[3]_i_2_n_0 ;
  wire \hlfb_e[3]_i_4_n_0 ;
  wire \hlfb_e[4]_i_1_n_0 ;
  wire \hlfb_e[4]_i_2_n_0 ;
  wire \hlfb_e[4]_i_4_n_0 ;
  wire \hlfb_e[4]_i_6_n_0 ;
  wire \hlfb_e[5]_i_10_n_0 ;
  wire \hlfb_e[5]_i_19_n_0 ;
  wire \hlfb_e[5]_i_2_n_0 ;
  wire \hlfb_e[5]_i_6_n_0 ;
  wire \hlfb_e[5]_i_8_n_0 ;
  wire \hlfb_e_reg[1]_0 ;
  wire \hlfb_e_reg[2]_0 ;
  wire \hlfb_e_reg[3]_0 ;
  wire \hlfb_e_reg[3]_1 ;
  wire [0:0]\hlfb_e_reg[4]_0 ;
  wire \hlfb_e_reg[4]_1 ;
  wire \hlfb_e_reg[4]_2 ;
  wire [5:0]\hlfb_e_reg[5]_0 ;
  wire [0:0]\hlfb_e_reg[5]_1 ;
  wire [0:0]\hlfb_e_reg[5]_2 ;
  wire \hlfb_e_reg[5]_3 ;
  wire \hlfb_e_reg[5]_4 ;
  wire [0:0]\hlfb_e_reg[5]_5 ;
  wire \hlfb_f[0]_i_1_n_0 ;
  wire \hlfb_f[0]_i_2_n_0 ;
  wire \hlfb_f[0]_i_4_n_0 ;
  wire \hlfb_f[0]_i_5_n_0 ;
  wire \hlfb_f[0]_i_6_n_0 ;
  wire \hlfb_f[4]_i_1_n_0 ;
  wire \hlfb_f[4]_i_2_n_0 ;
  wire \hlfb_f_reg[0]_0 ;
  wire \hlfb_f_reg[0]_1 ;
  wire \hlfb_f_reg[0]_2 ;
  wire \hlfb_f_reg[0]_3 ;
  wire \hlfb_f_reg[10]_0 ;
  wire [12:0]\hlfb_f_reg[12]_0 ;
  wire [0:0]\hlfb_f_reg[12]_1 ;
  wire [10:0]\hlfb_f_reg[12]_2 ;
  wire \hlfb_f_reg[3]_0 ;
  wire \hlfb_f_reg[4]_0 ;
  wire \hlfb_f_reg[4]_1 ;
  wire \hlfb_f_reg[4]_2 ;
  wire \hlfb_f_reg[5]_0 ;
  wire \hlfb_f_reg[5]_1 ;
  wire \hlfb_f_reg[7]_0 ;
  wire \hlfb_f_reg[8]_0 ;
  wire \hlfb_f_reg[9]_0 ;
  wire \hlfb_i_reg[0]_0 ;
  wire \hlfb_i_reg[0]_1 ;
  wire \hlfb_i_reg[0]_2 ;
  wire \hlfb_i_reg[12]_0 ;
  wire \hlfb_i_reg[14]_0 ;
  wire \hlfb_i_reg[14]_1 ;
  wire \hlfb_i_reg[15]_0 ;
  wire [0:0]\hlfb_i_reg[15]_1 ;
  wire \hlfb_i_reg[4]_0 ;
  wire \hlfb_i_reg[5]_0 ;
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
  wire [4:0]p_0_in;
  wire rst_n;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hA200A2A2AAAAAAAA)) 
    \cbus[14]_INST_0_i_14 
       (.I0(\cbus[14]_INST_0_i_2 ),
        .I1(\hlfb_i_reg[0]_0 ),
        .I2(\cbus[14]_INST_0_i_27_n_0 ),
        .I3(\cbus[14]_INST_0_i_2_0 ),
        .I4(\cbus[14]_INST_0_i_2_1 ),
        .I5(\cbus[14]_INST_0_i_2_2 ),
        .O(\hlfb_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \cbus[14]_INST_0_i_27 
       (.I0(\hlfc_i_reg[24] ),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[3]),
        .I5(p_0_in[4]),
        .O(\cbus[14]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \cbus[15]_INST_0_i_17 
       (.I0(\hlfb_i_reg[14]_0 ),
        .I1(\hlfc_i_reg[24]_0 ),
        .I2(\hlfb_i_reg[12]_0 ),
        .I3(\hlfb_i_reg[0]_2 ),
        .I4(\hlfb_i_reg[4]_0 ),
        .O(\hlfb_i_reg[14]_1 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cbus[15]_INST_0_i_19 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\hlfb_i_reg[14]_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cbus[15]_INST_0_i_20 
       (.I0(p_0_in[2]),
        .I1(p_0_in[0]),
        .I2(p_0_in[4]),
        .I3(p_0_in[1]),
        .I4(p_0_in[3]),
        .O(\hlfb_i_reg[12]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cbus[15]_INST_0_i_21 
       (.I0(\hlfb_i_reg[4]_0 ),
        .I1(\hlfb_i_reg_n_0_[5] ),
        .I2(\hlfb_i_reg_n_0_[8] ),
        .I3(\hlfb_i_reg_n_0_[2] ),
        .I4(\hlfb_i_reg_n_0_[0] ),
        .O(\hlfb_i_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cbus[15]_INST_0_i_22 
       (.I0(\hlfb_i_reg[12]_0 ),
        .I1(\hlfb_i_reg_n_0_[0] ),
        .I2(\hlfb_i_reg_n_0_[2] ),
        .I3(\hlfb_i_reg_n_0_[8] ),
        .I4(\hlfb_i_reg_n_0_[5] ),
        .I5(\hlfb_i_reg[4]_0 ),
        .O(\hlfb_i_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \cbus[15]_INST_0_i_36 
       (.I0(\hlfb_i_reg_n_0_[0] ),
        .I1(\hlfb_i_reg_n_0_[2] ),
        .I2(\hlfb_i_reg_n_0_[8] ),
        .I3(\hlfb_i_reg_n_0_[5] ),
        .O(\hlfb_i_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cbus[6]_INST_0_i_12 
       (.I0(\hlfb_i_reg_n_0_[4] ),
        .I1(\hlfb_i_reg_n_0_[7] ),
        .I2(\hlfb_i_reg_n_0_[9] ),
        .I3(\hlfb_i_reg_n_0_[3] ),
        .I4(\hlfb_i_reg_n_0_[1] ),
        .I5(\hlfb_i_reg_n_0_[6] ),
        .O(\hlfb_i_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hFFAEAAAA)) 
    \cbus[6]_INST_0_i_2 
       (.I0(\cbus[6] ),
        .I1(\cbus[6]_INST_0_i_6_n_0 ),
        .I2(\cbus[6]_0 ),
        .I3(\cbus[6]_INST_0_i_8_n_0 ),
        .I4(hctl_ccmd_cmp),
        .O(hctl_ccmd_cmp_reg));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \cbus[6]_INST_0_i_6 
       (.I0(\hlfb_i_reg_n_0_[0] ),
        .I1(\hlfb_i_reg_n_0_[2] ),
        .I2(\hlfb_i_reg_n_0_[8] ),
        .I3(\hlfb_i_reg_n_0_[5] ),
        .I4(\hlfb_i_reg[4]_0 ),
        .I5(\hlfb_i_reg[12]_0 ),
        .O(\cbus[6]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h80080880)) 
    \cbus[6]_INST_0_i_8 
       (.I0(\hlfb_i_reg[0]_0 ),
        .I1(\hlfc_i_reg[24] ),
        .I2(Q),
        .I3(hctl_ccmd_sub),
        .I4(hlfa_r_0[6]),
        .O(\cbus[6]_INST_0_i_8_n_0 ));
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
  LUT5 #(
    .INIT(32'h95959A99)) 
    \hlfb_e[1]_i_2 
       (.I0(\hlfb_e_reg[5]_0 [1]),
        .I1(\hlfb_e_reg[5]_0 [0]),
        .I2(\hlfb_f_reg[5]_1 ),
        .I3(O[0]),
        .I4(O[1]),
        .O(\hlfb_e_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hF0F04B4B5A4B4B4B)) 
    \hlfb_e[2]_i_2 
       (.I0(\hlfb_f_reg[5]_1 ),
        .I1(O[1]),
        .I2(\hlfb_e_reg[5]_0 [2]),
        .I3(O[0]),
        .I4(\hlfb_e_reg[5]_0 [1]),
        .I5(\hlfb_e_reg[5]_0 [0]),
        .O(\hlfb_e_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfb_e[2]_i_4 
       (.I0(bbus[11]),
        .I1(bbus[10]),
        .O(bbus_11_sn_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF600000)) 
    \hlfb_e[3]_i_1 
       (.I0(\hlfb_e_reg[5]_0 [3]),
        .I1(\hlfb_e[3]_i_2_n_0 ),
        .I2(\hlfb_e_reg[3]_0 ),
        .I3(\hlfb_e[3]_i_4_n_0 ),
        .I4(\hlfb_f_reg[4]_2 ),
        .I5(\hlfb_e_reg[3]_1 ),
        .O(\hlfb_e[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfb_e[3]_i_2 
       (.I0(\hlfb_e_reg[5]_0 [2]),
        .I1(\hlfb_e_reg[5]_0 [1]),
        .O(\hlfb_e[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h70FFFF007080F000)) 
    \hlfb_e[3]_i_4 
       (.I0(\hlfb_e_reg[5]_0 [0]),
        .I1(\hlfb_e_reg[5]_0 [1]),
        .I2(\hlfb_f_reg[4]_0 ),
        .I3(\hlfb_e_reg[5]_0 [3]),
        .I4(\hlfb_e_reg[5]_0 [2]),
        .I5(\hlfb_e_reg[4]_1 ),
        .O(\hlfb_e[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF600000)) 
    \hlfb_e[4]_i_1 
       (.I0(\hlfb_e_reg[5]_0 [4]),
        .I1(\hlfb_e[4]_i_2_n_0 ),
        .I2(\hlfb_e_reg[4]_1 ),
        .I3(\hlfb_e[4]_i_4_n_0 ),
        .I4(\hlfb_f_reg[4]_2 ),
        .I5(\hlfb_e_reg[4]_2 ),
        .O(\hlfb_e[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfb_e[4]_i_2 
       (.I0(\hlfb_e_reg[5]_0 [3]),
        .I1(\hlfb_e_reg[5]_0 [2]),
        .O(\hlfb_e[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6A00FFFF6A006A00)) 
    \hlfb_e[4]_i_4 
       (.I0(\hlfb_e_reg[5]_0 [4]),
        .I1(\hlfb_e_reg[5]_0 [3]),
        .I2(\hlfb_e[3]_i_2_n_0 ),
        .I3(\hlfb_e_reg[3]_0 ),
        .I4(\hlfb_e[4]_i_6_n_0 ),
        .I5(\hlfb_f_reg[4]_0 ),
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
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \hlfb_e[5]_i_10 
       (.I0(\hlfb_e_reg[5]_0 [5]),
        .I1(\hlfb_e_reg[5]_0 [1]),
        .I2(\hlfb_e_reg[5]_0 [2]),
        .I3(\hlfb_e_reg[5]_0 [0]),
        .I4(\hlfb_e_reg[5]_0 [4]),
        .I5(\hlfb_e_reg[5]_0 [3]),
        .O(\hlfb_e[5]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hlfb_e[5]_i_19 
       (.I0(\hlfb_e_reg[5]_0 [4]),
        .I1(\hlfb_e_reg[5]_0 [3]),
        .O(\hlfb_e[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEEEFEEEFEEE)) 
    \hlfb_e[5]_i_2 
       (.I0(\hlfb_e[5]_i_6_n_0 ),
        .I1(\hlfb_e_reg[5]_3 ),
        .I2(\hlfb_f_reg[4]_2 ),
        .I3(\hlfb_e[5]_i_8_n_0 ),
        .I4(\hlfb_f_reg[4]_0 ),
        .I5(\hlfb_e[5]_i_10_n_0 ),
        .O(\hlfb_e[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfb_e[5]_i_20 
       (.I0(\hlfb_e_reg[5]_0 [5]),
        .I1(hlfa_r_0[5]),
        .O(\hlfb_e_reg[5]_2 ));
  LUT5 #(
    .INIT(32'h022AA880)) 
    \hlfb_e[5]_i_6 
       (.I0(\hlfb_f_reg[0]_2 ),
        .I1(\hlfb_e_reg[5]_0 [4]),
        .I2(\hlfb_e_reg[5]_4 ),
        .I3(\hlfb_e_reg[5]_5 ),
        .I4(\hlfb_e_reg[5]_0 [5]),
        .O(\hlfb_e[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3CECCCCC28288888)) 
    \hlfb_e[5]_i_8 
       (.I0(\hlfb_e_reg[4]_1 ),
        .I1(\hlfb_e_reg[5]_0 [5]),
        .I2(\hlfb_e_reg[5]_0 [2]),
        .I3(\hlfb_e_reg[5]_0 [1]),
        .I4(\hlfb_e[5]_i_19_n_0 ),
        .I5(\hlfb_e_reg[3]_0 ),
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
        .D(D[1]),
        .Q(\hlfb_e_reg[5]_0 [1]),
        .R(SR));
  FDRE \hlfb_e_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
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
    .INIT(64'hAAAAAA20AAAAAA2A)) 
    \hlfb_f[0]_i_1 
       (.I0(\hlfb_f_reg[0]_0 ),
        .I1(\hlfb_f[0]_i_2_n_0 ),
        .I2(\hlfb_f_reg[0]_1 ),
        .I3(\hlfb_f[0]_i_4_n_0 ),
        .I4(\hlfb_f[0]_i_5_n_0 ),
        .I5(\hlfb_f[0]_i_6_n_0 ),
        .O(\hlfb_f[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03030103)) 
    \hlfb_f[0]_i_2 
       (.I0(\hlfb_f_reg[12]_0 [2]),
        .I1(\hlfb_f_reg[12]_0 [1]),
        .I2(\hlfb_f_reg[12]_0 [0]),
        .I3(O[0]),
        .I4(\hlfb_f_reg[5]_1 ),
        .O(\hlfb_f[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE0)) 
    \hlfb_f[0]_i_4 
       (.I0(\hlfb_f_reg[0]_3 ),
        .I1(\hlfb_f_reg[0]_2 ),
        .I2(\hlfb_f_reg[12]_0 [7]),
        .I3(\hlfb_f_reg[12]_0 [6]),
        .I4(\hlfb_f_reg[12]_0 [8]),
        .I5(\hlfb_f_reg[12]_0 [5]),
        .O(\hlfb_f[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \hlfb_f[0]_i_5 
       (.I0(\hlfb_f_reg[0]_2 ),
        .I1(\hlfb_f_reg[12]_0 [12]),
        .I2(\hlfb_f_reg[12]_0 [11]),
        .I3(\hlfb_f_reg[12]_0 [10]),
        .I4(\hlfb_f_reg[12]_0 [9]),
        .O(\hlfb_f[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \hlfb_f[0]_i_6 
       (.I0(\hlfb_f_reg[12]_0 [1]),
        .I1(\hlfb_f_reg[12]_0 [0]),
        .I2(\hlfb_f_reg[12]_0 [2]),
        .I3(\hlfb_f_reg[12]_0 [3]),
        .I4(\hlfb_f_reg[12]_0 [4]),
        .O(\hlfb_f[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \hlfb_f[2]_i_3 
       (.I0(\hlfb_f_reg[4]_0 ),
        .I1(\hlfb_f_reg[12]_0 [3]),
        .I2(\hlfb_e_reg[4]_1 ),
        .I3(\hlfb_f_reg[12]_0 [6]),
        .O(\hlfb_f_reg[3]_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \hlfb_f[3]_i_3 
       (.I0(\hlfb_e_reg[3]_0 ),
        .I1(\hlfb_f_reg[12]_0 [5]),
        .I2(\hlfb_f_reg[12]_0 [7]),
        .I3(\hlfb_e_reg[4]_1 ),
        .O(\hlfb_f_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hF800F8000000FF00)) 
    \hlfb_f[4]_i_1 
       (.I0(\hlfb_f_reg[4]_0 ),
        .I1(\hlfb_f_reg[12]_0 [5]),
        .I2(\hlfb_f[4]_i_2_n_0 ),
        .I3(rst_n),
        .I4(\hlfb_f_reg[4]_1 ),
        .I5(\hlfb_f_reg[4]_2 ),
        .O(\hlfb_f[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \hlfb_f[4]_i_2 
       (.I0(\hlfb_e_reg[3]_0 ),
        .I1(\hlfb_f_reg[12]_0 [6]),
        .I2(\hlfb_f_reg[12]_0 [8]),
        .I3(\hlfb_e_reg[4]_1 ),
        .O(\hlfb_f[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0131CDFD0030CFFF)) 
    \hlfb_f[5]_i_2 
       (.I0(\hlfb_f_reg[12]_0 [7]),
        .I1(\hlfb_f_reg[5]_1 ),
        .I2(O[1]),
        .I3(\hlfb_f_reg[12]_0 [9]),
        .I4(\hlfb_f_reg[12]_0 [6]),
        .I5(O[0]),
        .O(\hlfb_f_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h0100CDCF3130FDFF)) 
    \hlfb_f[6]_i_2 
       (.I0(\hlfb_f_reg[12]_0 [8]),
        .I1(\hlfb_f_reg[5]_1 ),
        .I2(O[1]),
        .I3(O[0]),
        .I4(\hlfb_f_reg[12]_0 [7]),
        .I5(\hlfb_f_reg[12]_0 [10]),
        .O(\hlfb_f_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h01310030CDFDCFFF)) 
    \hlfb_f[7]_i_2 
       (.I0(\hlfb_f_reg[12]_0 [9]),
        .I1(\hlfb_f_reg[5]_1 ),
        .I2(O[1]),
        .I3(\hlfb_f_reg[12]_0 [11]),
        .I4(O[0]),
        .I5(\hlfb_f_reg[12]_0 [8]),
        .O(\hlfb_f_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h03050300F3F5F3FF)) 
    \hlfb_f[8]_i_2 
       (.I0(\hlfb_f_reg[12]_0 [10]),
        .I1(\hlfb_f_reg[12]_0 [12]),
        .I2(\hlfb_f_reg[5]_1 ),
        .I3(O[1]),
        .I4(O[0]),
        .I5(\hlfb_f_reg[12]_0 [9]),
        .O(\hlfb_f_reg[10]_0 ));
  FDRE \hlfb_f_reg[0] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_1 ),
        .D(\hlfb_f[0]_i_1_n_0 ),
        .Q(\hlfb_f_reg[12]_0 [0]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[10] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_1 ),
        .D(\hlfb_f_reg[12]_2 [8]),
        .Q(\hlfb_f_reg[12]_0 [10]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[11] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_1 ),
        .D(\hlfb_f_reg[12]_2 [9]),
        .Q(\hlfb_f_reg[12]_0 [11]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[12] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_1 ),
        .D(\hlfb_f_reg[12]_2 [10]),
        .Q(\hlfb_f_reg[12]_0 [12]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[1] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_1 ),
        .D(\hlfb_f_reg[12]_2 [0]),
        .Q(\hlfb_f_reg[12]_0 [1]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[2] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_1 ),
        .D(\hlfb_f_reg[12]_2 [1]),
        .Q(\hlfb_f_reg[12]_0 [2]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[3] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_1 ),
        .D(\hlfb_f_reg[12]_2 [2]),
        .Q(\hlfb_f_reg[12]_0 [3]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[4] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_1 ),
        .D(\hlfb_f[4]_i_1_n_0 ),
        .Q(\hlfb_f_reg[12]_0 [4]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[5] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_1 ),
        .D(\hlfb_f_reg[12]_2 [3]),
        .Q(\hlfb_f_reg[12]_0 [5]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[6] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_1 ),
        .D(\hlfb_f_reg[12]_2 [4]),
        .Q(\hlfb_f_reg[12]_0 [6]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[7] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_1 ),
        .D(\hlfb_f_reg[12]_2 [5]),
        .Q(\hlfb_f_reg[12]_0 [7]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[8] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_1 ),
        .D(\hlfb_f_reg[12]_2 [6]),
        .Q(\hlfb_f_reg[12]_0 [8]),
        .R(\<const0> ));
  FDRE \hlfb_f_reg[9] 
       (.C(clk),
        .CE(\hlfb_f_reg[12]_1 ),
        .D(\hlfb_f_reg[12]_2 [7]),
        .Q(\hlfb_f_reg[12]_0 [9]),
        .R(\<const0> ));
  FDRE \hlfb_i_reg[0] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_1 ),
        .D(bbus[0]),
        .Q(\hlfb_i_reg_n_0_[0] ),
        .R(SR));
  FDRE \hlfb_i_reg[10] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_1 ),
        .D(bbus[10]),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \hlfb_i_reg[11] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_1 ),
        .D(bbus[11]),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE \hlfb_i_reg[12] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_1 ),
        .D(bbus[12]),
        .Q(p_0_in[2]),
        .R(SR));
  FDRE \hlfb_i_reg[13] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_1 ),
        .D(bbus[13]),
        .Q(p_0_in[3]),
        .R(SR));
  FDRE \hlfb_i_reg[14] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_1 ),
        .D(bbus[14]),
        .Q(p_0_in[4]),
        .R(SR));
  FDRE \hlfb_i_reg[15] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_1 ),
        .D(bbus[15]),
        .Q(Q),
        .R(SR));
  FDRE \hlfb_i_reg[1] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_1 ),
        .D(bbus[1]),
        .Q(\hlfb_i_reg_n_0_[1] ),
        .R(SR));
  FDRE \hlfb_i_reg[2] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_1 ),
        .D(bbus[2]),
        .Q(\hlfb_i_reg_n_0_[2] ),
        .R(SR));
  FDRE \hlfb_i_reg[3] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_1 ),
        .D(bbus[3]),
        .Q(\hlfb_i_reg_n_0_[3] ),
        .R(SR));
  FDRE \hlfb_i_reg[4] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_1 ),
        .D(bbus[4]),
        .Q(\hlfb_i_reg_n_0_[4] ),
        .R(SR));
  FDRE \hlfb_i_reg[5] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_1 ),
        .D(bbus[5]),
        .Q(\hlfb_i_reg_n_0_[5] ),
        .R(SR));
  FDRE \hlfb_i_reg[6] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_1 ),
        .D(bbus[6]),
        .Q(\hlfb_i_reg_n_0_[6] ),
        .R(SR));
  FDRE \hlfb_i_reg[7] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_1 ),
        .D(bbus[7]),
        .Q(\hlfb_i_reg_n_0_[7] ),
        .R(SR));
  FDRE \hlfb_i_reg[8] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_1 ),
        .D(bbus[8]),
        .Q(\hlfb_i_reg_n_0_[8] ),
        .R(SR));
  FDRE \hlfb_i_reg[9] 
       (.C(clk),
        .CE(\hlfb_i_reg[15]_1 ),
        .D(bbus[9]),
        .Q(\hlfb_i_reg_n_0_[9] ),
        .R(SR));
  LUT2 #(
    .INIT(4'h9)) 
    \hlfc_e[5]_i_5 
       (.I0(\hlfb_e_reg[5]_0 [5]),
        .I1(hlfa_r_0[5]),
        .O(\hlfb_e_reg[5]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    hlfc_e_carry__0_i_2
       (.I0(\hlfb_e_reg[5]_0 [4]),
        .I1(hlfa_r_0[4]),
        .O(\hlfb_e_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    hlfc_e_carry_i_1
       (.I0(\hlfb_e_reg[5]_0 [3]),
        .I1(hlfa_r_0[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    hlfc_e_carry_i_2
       (.I0(\hlfb_e_reg[5]_0 [2]),
        .I1(hlfa_r_0[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    hlfc_e_carry_i_3
       (.I0(\hlfb_e_reg[5]_0 [1]),
        .I1(hlfa_r_0[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    hlfc_e_carry_i_4
       (.I0(\hlfb_e_reg[5]_0 [0]),
        .I1(hlfa_r_0[0]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h96)) 
    hlfc_f_t_carry_i_1
       (.I0(Q),
        .I1(hctl_ccmd_sub),
        .I2(hlfa_r_0[6]),
        .O(\hlfb_i_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF1FFFFFFFFFF)) 
    \hlfc_i[24]_i_2 
       (.I0(\hlfb_i_reg[14]_0 ),
        .I1(\hlfc_i_reg[24] ),
        .I2(\hlfb_i_reg[0]_0 ),
        .I3(\hlfc_i_reg[24]_0 ),
        .I4(hctl_ccmd_mul),
        .I5(hctl_ccmd_div),
        .O(hctl_ccmd_mul_reg));
endmodule

module hfpu_hmul
   (hlfc_r_hmul,
    hlfa_r_0,
    S,
    \cbus[14]_INST_0_i_30 );
  output [5:0]hlfc_r_hmul;
  input [4:0]hlfa_r_0;
  input [3:0]S;
  input [1:0]\cbus[14]_INST_0_i_30 ;

  wire \<const0> ;
  wire [3:0]S;
  wire [1:0]\cbus[14]_INST_0_i_30 ;
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
        .S({\<const0> ,\<const0> ,\cbus[14]_INST_0_i_30 }));
endmodule

module hfpu_norm
   (hlfc_e,
    Q,
    \hlfc_f_reg[2]_0 ,
    \hlfc_f_reg[12]_0 ,
    hctl_ccmd_cmp_reg,
    \hlfc_f_reg[3]_0 ,
    \hlfc_f_reg[4]_0 ,
    \hlfc_f_reg[5]_0 ,
    \hlfc_f_reg[10]_0 ,
    hctl_ccmd_reg_reg,
    hctl_ccmd_reg_reg_0,
    \hlfc_f_reg[13]_0 ,
    \hlfc_f_reg[12]_1 ,
    \hlfc_f_reg[3]_1 ,
    \hlfc_f_reg[1]_0 ,
    \hlfc_f_reg[4]_1 ,
    \hlfc_f_reg[10]_1 ,
    \hlfc_f_reg[10]_2 ,
    \hlfc_f_reg[0]_0 ,
    \hlfc_f_reg[11]_0 ,
    \hlfc_f_reg[13]_1 ,
    \hlfc_f_reg[13]_2 ,
    \hlfc_f_reg[13]_3 ,
    \hlfc_f_reg[13]_4 ,
    \hlfc_f_reg[13]_5 ,
    \hfpu_dsp_c[13] ,
    \hfpu_dsp_c[10] ,
    hctl_ccmd_cmp_reg_0,
    \hlfc_i_reg[23]_0 ,
    \hlfc_e_reg[5]_0 ,
    \hlfc_e_reg[4]_0 ,
    \hlfc_e_reg[3]_0 ,
    \hlfc_i_reg[25]_0 ,
    \hlfc_e_reg[4]_1 ,
    \hlfc_f_reg[11]_1 ,
    hctl_ccmd_reg_reg_1,
    hctl_ccmd_reg_reg_2,
    \hlfc_e_reg[3]_1 ,
    \hlfc_f_reg[14]_0 ,
    \cbus[0] ,
    \cbus[0]_0 ,
    hctl_ccmd_reg,
    \cbus[1] ,
    \hlfc_f_reg[4]_2 ,
    \cbus[3] ,
    \hlfc_f_reg[10]_3 ,
    \cbus[11] ,
    \cbus[11]_0 ,
    \cbus[11]_1 ,
    \cbus[11]_2 ,
    \cbus[12] ,
    \cbus[12]_0 ,
    \hlfc_f_reg[1]_1 ,
    \hlfc_i_reg[22]_0 ,
    \hlfc_f_reg[8]_0 ,
    \hlfc_f_reg[13]_6 ,
    \hlfc_f_reg[7]_0 ,
    \hlfc_f_reg[6]_0 ,
    \hlfc_f_reg[11]_2 ,
    hfpu_dsp_c,
    hctl_ccmd_cmp,
    \cbus[12]_INST_0_i_1_0 ,
    \cbus[14] ,
    hctl_ccmd_hlf,
    SR,
    E,
    D,
    clk,
    \hlfc_i_reg[25]_1 ,
    \hlfc_e_reg[5]_1 );
  output [5:0]hlfc_e;
  output [0:0]Q;
  output \hlfc_f_reg[2]_0 ;
  output [5:0]\hlfc_f_reg[12]_0 ;
  output hctl_ccmd_cmp_reg;
  output \hlfc_f_reg[3]_0 ;
  output \hlfc_f_reg[4]_0 ;
  output \hlfc_f_reg[5]_0 ;
  output \hlfc_f_reg[10]_0 ;
  output hctl_ccmd_reg_reg;
  output hctl_ccmd_reg_reg_0;
  output \hlfc_f_reg[13]_0 ;
  output \hlfc_f_reg[12]_1 ;
  output \hlfc_f_reg[3]_1 ;
  output \hlfc_f_reg[1]_0 ;
  output \hlfc_f_reg[4]_1 ;
  output \hlfc_f_reg[10]_1 ;
  output \hlfc_f_reg[10]_2 ;
  output \hlfc_f_reg[0]_0 ;
  output \hlfc_f_reg[11]_0 ;
  output \hlfc_f_reg[13]_1 ;
  output \hlfc_f_reg[13]_2 ;
  output \hlfc_f_reg[13]_3 ;
  output \hlfc_f_reg[13]_4 ;
  output \hlfc_f_reg[13]_5 ;
  output \hfpu_dsp_c[13] ;
  output \hfpu_dsp_c[10] ;
  output hctl_ccmd_cmp_reg_0;
  output \hlfc_i_reg[23]_0 ;
  output \hlfc_e_reg[5]_0 ;
  output \hlfc_e_reg[4]_0 ;
  output \hlfc_e_reg[3]_0 ;
  output [2:0]\hlfc_i_reg[25]_0 ;
  output \hlfc_e_reg[4]_1 ;
  output \hlfc_f_reg[11]_1 ;
  output hctl_ccmd_reg_reg_1;
  output hctl_ccmd_reg_reg_2;
  output \hlfc_e_reg[3]_1 ;
  output \hlfc_f_reg[14]_0 ;
  input \cbus[0] ;
  input \cbus[0]_0 ;
  input hctl_ccmd_reg;
  input \cbus[1] ;
  input \hlfc_f_reg[4]_2 ;
  input \cbus[3] ;
  input \hlfc_f_reg[10]_3 ;
  input \cbus[11] ;
  input \cbus[11]_0 ;
  input \cbus[11]_1 ;
  input \cbus[11]_2 ;
  input \cbus[12] ;
  input \cbus[12]_0 ;
  input \hlfc_f_reg[1]_1 ;
  input \hlfc_i_reg[22]_0 ;
  input \hlfc_f_reg[8]_0 ;
  input \hlfc_f_reg[13]_6 ;
  input \hlfc_f_reg[7]_0 ;
  input \hlfc_f_reg[6]_0 ;
  input \hlfc_f_reg[11]_2 ;
  input [7:0]hfpu_dsp_c;
  input hctl_ccmd_cmp;
  input \cbus[12]_INST_0_i_1_0 ;
  input \cbus[14] ;
  input hctl_ccmd_hlf;
  input [0:0]SR;
  input [0:0]E;
  input [7:0]D;
  input clk;
  input [3:0]\hlfc_i_reg[25]_1 ;
  input [5:0]\hlfc_e_reg[5]_1 ;

  wire \<const0> ;
  wire [7:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \cbus[0] ;
  wire \cbus[0]_0 ;
  wire \cbus[11] ;
  wire \cbus[11]_0 ;
  wire \cbus[11]_1 ;
  wire \cbus[11]_2 ;
  wire \cbus[11]_INST_0_i_3_n_0 ;
  wire \cbus[11]_INST_0_i_6_n_0 ;
  wire \cbus[12] ;
  wire \cbus[12]_0 ;
  wire \cbus[12]_INST_0_i_1_0 ;
  wire \cbus[12]_INST_0_i_3_n_0 ;
  wire \cbus[12]_INST_0_i_4_n_0 ;
  wire \cbus[14] ;
  wire \cbus[14]_INST_0_i_20_n_0 ;
  wire \cbus[1] ;
  wire \cbus[3] ;
  wire \cbus[8]_INST_0_i_3_n_0 ;
  wire clk;
  wire hctl_ccmd_cmp;
  wire hctl_ccmd_cmp_reg;
  wire hctl_ccmd_cmp_reg_0;
  wire hctl_ccmd_hlf;
  wire hctl_ccmd_reg;
  wire hctl_ccmd_reg_reg;
  wire hctl_ccmd_reg_reg_0;
  wire hctl_ccmd_reg_reg_1;
  wire hctl_ccmd_reg_reg_2;
  wire [7:0]hfpu_dsp_c;
  wire \hfpu_dsp_c[10] ;
  wire \hfpu_dsp_c[13] ;
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
  wire [5:1]hlfc_e__0;
  wire \hlfc_e_reg[3]_0 ;
  wire \hlfc_e_reg[3]_1 ;
  wire \hlfc_e_reg[4]_0 ;
  wire \hlfc_e_reg[4]_1 ;
  wire \hlfc_e_reg[5]_0 ;
  wire [5:0]\hlfc_e_reg[5]_1 ;
  wire \hlfc_f[10]_i_1_n_0 ;
  wire \hlfc_f[10]_i_2_n_0 ;
  wire \hlfc_f[10]_i_3_n_0 ;
  wire \hlfc_f[10]_i_4_n_0 ;
  wire \hlfc_f[10]_i_5_n_0 ;
  wire \hlfc_f[11]_i_1_n_0 ;
  wire \hlfc_f[11]_i_2_n_0 ;
  wire \hlfc_f[11]_i_3_n_0 ;
  wire \hlfc_f[11]_i_4_n_0 ;
  wire \hlfc_f[11]_i_5_n_0 ;
  wire \hlfc_f[11]_i_6_n_0 ;
  wire \hlfc_f[13]_i_1_n_0 ;
  wire \hlfc_f[1]_i_1_n_0 ;
  wire \hlfc_f[1]_i_2_n_0 ;
  wire \hlfc_f[1]_i_3_n_0 ;
  wire \hlfc_f[4]_i_1_n_0 ;
  wire \hlfc_f[4]_i_2_n_0 ;
  wire \hlfc_f[4]_i_3_n_0 ;
  wire \hlfc_f[6]_i_1_n_0 ;
  wire \hlfc_f[6]_i_2_n_0 ;
  wire \hlfc_f[6]_i_3_n_0 ;
  wire \hlfc_f[6]_i_4_n_0 ;
  wire \hlfc_f[7]_i_1_n_0 ;
  wire \hlfc_f[7]_i_2_n_0 ;
  wire \hlfc_f[7]_i_3_n_0 ;
  wire \hlfc_f[7]_i_4_n_0 ;
  wire \hlfc_f[7]_i_5_n_0 ;
  wire \hlfc_f[7]_i_6_n_0 ;
  wire \hlfc_f[8]_i_1_n_0 ;
  wire \hlfc_f[8]_i_2_n_0 ;
  wire \hlfc_f[8]_i_3_n_0 ;
  wire \hlfc_f[8]_i_4_n_0 ;
  wire \hlfc_f[8]_i_5_n_0 ;
  wire \hlfc_f[8]_i_6_n_0 ;
  wire \hlfc_f[9]_i_4_n_0 ;
  wire \hlfc_f[9]_i_5_n_0 ;
  wire \hlfc_f_reg[0]_0 ;
  wire \hlfc_f_reg[10]_0 ;
  wire \hlfc_f_reg[10]_1 ;
  wire \hlfc_f_reg[10]_2 ;
  wire \hlfc_f_reg[10]_3 ;
  wire \hlfc_f_reg[11]_0 ;
  wire \hlfc_f_reg[11]_1 ;
  wire \hlfc_f_reg[11]_2 ;
  wire [5:0]\hlfc_f_reg[12]_0 ;
  wire \hlfc_f_reg[12]_1 ;
  wire \hlfc_f_reg[13]_0 ;
  wire \hlfc_f_reg[13]_1 ;
  wire \hlfc_f_reg[13]_2 ;
  wire \hlfc_f_reg[13]_3 ;
  wire \hlfc_f_reg[13]_4 ;
  wire \hlfc_f_reg[13]_5 ;
  wire \hlfc_f_reg[13]_6 ;
  wire \hlfc_f_reg[14]_0 ;
  wire \hlfc_f_reg[1]_0 ;
  wire \hlfc_f_reg[1]_1 ;
  wire \hlfc_f_reg[2]_0 ;
  wire \hlfc_f_reg[3]_0 ;
  wire \hlfc_f_reg[3]_1 ;
  wire \hlfc_f_reg[4]_0 ;
  wire \hlfc_f_reg[4]_1 ;
  wire \hlfc_f_reg[4]_2 ;
  wire \hlfc_f_reg[5]_0 ;
  wire \hlfc_f_reg[6]_0 ;
  wire \hlfc_f_reg[7]_0 ;
  wire \hlfc_f_reg[8]_0 ;
  wire \hlfc_f_reg_n_0_[0] ;
  wire \hlfc_f_reg_n_0_[1] ;
  wire \hlfc_i_reg[22]_0 ;
  wire \hlfc_i_reg[23]_0 ;
  wire [2:0]\hlfc_i_reg[25]_0 ;
  wire [3:0]\hlfc_i_reg[25]_1 ;
  wire hlfc_inf;
  wire [8:0]p_0_in;
  wire [3:1]p_1_in;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h5D0C5D0C0000FF00)) 
    \cbus[0]_INST_0_i_1 
       (.I0(\cbus[8]_INST_0_i_3_n_0 ),
        .I1(\cbus[0] ),
        .I2(\cbus[0]_0 ),
        .I3(p_0_in[0]),
        .I4(hctl_ccmd_cmp_reg),
        .I5(hctl_ccmd_reg),
        .O(\hlfc_f_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h00101111)) 
    \cbus[10]_INST_0_i_1 
       (.I0(hctl_ccmd_cmp),
        .I1(hctl_ccmd_reg),
        .I2(\hlfc_i_reg[23]_0 ),
        .I3(Q),
        .I4(\hlfc_e_reg[5]_0 ),
        .O(hctl_ccmd_cmp_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF54454444)) 
    \cbus[11]_INST_0_i_1 
       (.I0(\cbus[11]_INST_0_i_3_n_0 ),
        .I1(\cbus[11] ),
        .I2(\cbus[11]_0 ),
        .I3(\cbus[11]_1 ),
        .I4(\cbus[11]_2 ),
        .I5(\cbus[11]_INST_0_i_6_n_0 ),
        .O(hctl_ccmd_reg_reg));
  LUT5 #(
    .INIT(32'hDFFD5555)) 
    \cbus[11]_INST_0_i_3 
       (.I0(hctl_ccmd_reg),
        .I1(\hlfc_i_reg[25]_0 [1]),
        .I2(hlfc_e__0[1]),
        .I3(Q),
        .I4(hctl_ccmd_hlf),
        .O(\cbus[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1000001011111111)) 
    \cbus[11]_INST_0_i_6 
       (.I0(hctl_ccmd_cmp),
        .I1(hctl_ccmd_reg),
        .I2(\hlfc_i_reg[23]_0 ),
        .I3(Q),
        .I4(hlfc_e__0[1]),
        .I5(\hlfc_e_reg[5]_0 ),
        .O(\cbus[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF54454444)) 
    \cbus[12]_INST_0_i_1 
       (.I0(\cbus[12]_INST_0_i_3_n_0 ),
        .I1(\cbus[11] ),
        .I2(\cbus[12] ),
        .I3(\cbus[12]_0 ),
        .I4(\cbus[11]_2 ),
        .I5(\cbus[12]_INST_0_i_4_n_0 ),
        .O(hctl_ccmd_reg_reg_0));
  LUT6 #(
    .INIT(64'hDFDFDFFD55555555)) 
    \cbus[12]_INST_0_i_3 
       (.I0(hctl_ccmd_reg),
        .I1(\hlfc_i_reg[25]_0 [1]),
        .I2(hlfc_e__0[2]),
        .I3(Q),
        .I4(hlfc_e__0[1]),
        .I5(hctl_ccmd_hlf),
        .O(\cbus[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88800008AAAAAAAA)) 
    \cbus[12]_INST_0_i_4 
       (.I0(\cbus[12]_INST_0_i_1_0 ),
        .I1(\hlfc_i_reg[23]_0 ),
        .I2(hlfc_e__0[1]),
        .I3(Q),
        .I4(hlfc_e__0[2]),
        .I5(\hlfc_e_reg[5]_0 ),
        .O(\cbus[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBEAAAAAAAA)) 
    \cbus[13]_INST_0_i_3 
       (.I0(\cbus[14] ),
        .I1(hlfc_e__0[3]),
        .I2(hlfc_e__0[2]),
        .I3(hlfc_e__0[1]),
        .I4(Q),
        .I5(hctl_ccmd_hlf),
        .O(\hlfc_e_reg[3]_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \cbus[13]_INST_0_i_5 
       (.I0(hlfc_e__0[3]),
        .I1(hlfc_e__0[2]),
        .I2(hlfc_e__0[1]),
        .I3(Q),
        .O(\hlfc_e_reg[3]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cbus[14]_INST_0_i_20 
       (.I0(hlfc_e__0[1]),
        .I1(Q),
        .O(\cbus[14]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \cbus[14]_INST_0_i_43 
       (.I0(hfpu_dsp_c[0]),
        .I1(hfpu_dsp_c[7]),
        .I2(hfpu_dsp_c[1]),
        .I3(hfpu_dsp_c[5]),
        .O(\hfpu_dsp_c[10] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[14]_INST_0_i_44 
       (.I0(hfpu_dsp_c[3]),
        .I1(hfpu_dsp_c[4]),
        .I2(hfpu_dsp_c[6]),
        .I3(hfpu_dsp_c[2]),
        .O(\hfpu_dsp_c[13] ));
  LUT6 #(
    .INIT(64'hEEEEEEBEAAAAAAAA)) 
    \cbus[14]_INST_0_i_5 
       (.I0(\cbus[14] ),
        .I1(hlfc_e__0[4]),
        .I2(\cbus[14]_INST_0_i_20_n_0 ),
        .I3(hlfc_e__0[3]),
        .I4(hlfc_e__0[2]),
        .I5(hctl_ccmd_hlf),
        .O(\hlfc_e_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h000B)) 
    \cbus[14]_INST_0_i_7 
       (.I0(hlfc_e__0[5]),
        .I1(hlfc_e__0[4]),
        .I2(hlfc_inf),
        .I3(\hlfc_i_reg[25]_0 [2]),
        .O(\hlfc_e_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h4444444055555555)) 
    \cbus[14]_INST_0_i_8 
       (.I0(\hlfc_i_reg[25]_0 [1]),
        .I1(hlfc_e__0[4]),
        .I2(hlfc_e__0[3]),
        .I3(hlfc_e__0[2]),
        .I4(hlfc_e__0[1]),
        .I5(hlfc_e__0[5]),
        .O(\hlfc_i_reg[23]_0 ));
  LUT5 #(
    .INIT(32'h55555556)) 
    \cbus[14]_INST_0_i_9 
       (.I0(hlfc_e__0[4]),
        .I1(hlfc_e__0[1]),
        .I2(Q),
        .I3(hlfc_e__0[3]),
        .I4(hlfc_e__0[2]),
        .O(\hlfc_e_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h5D0C5D0C0000FF00)) 
    \cbus[1]_INST_0_i_1 
       (.I0(\cbus[8]_INST_0_i_3_n_0 ),
        .I1(\cbus[1] ),
        .I2(\cbus[0]_0 ),
        .I3(p_0_in[1]),
        .I4(hctl_ccmd_cmp_reg),
        .I5(hctl_ccmd_reg),
        .O(\hlfc_f_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h5D0C5D0C0000FF00)) 
    \cbus[2]_INST_0_i_1 
       (.I0(\cbus[8]_INST_0_i_3_n_0 ),
        .I1(\hlfc_f_reg[4]_2 ),
        .I2(\cbus[0]_0 ),
        .I3(p_0_in[2]),
        .I4(hctl_ccmd_cmp_reg),
        .I5(hctl_ccmd_reg),
        .O(\hlfc_f_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h5D0C5D0C0000FF00)) 
    \cbus[3]_INST_0_i_1 
       (.I0(\cbus[8]_INST_0_i_3_n_0 ),
        .I1(\cbus[3] ),
        .I2(\cbus[0]_0 ),
        .I3(p_0_in[3]),
        .I4(hctl_ccmd_cmp_reg),
        .I5(hctl_ccmd_reg),
        .O(\hlfc_f_reg[5]_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \cbus[4]_INST_0_i_2 
       (.I0(hctl_ccmd_reg),
        .I1(hctl_ccmd_cmp_reg),
        .I2(\hlfc_f_reg[12]_0 [0]),
        .O(hctl_ccmd_reg_reg_1));
  LUT3 #(
    .INIT(8'hBA)) 
    \cbus[6]_INST_0_i_5 
       (.I0(hctl_ccmd_reg),
        .I1(hctl_ccmd_cmp_reg),
        .I2(\hlfc_f_reg[12]_0 [2]),
        .O(hctl_ccmd_reg_reg_2));
  LUT6 #(
    .INIT(64'h5D0C5D0C0000FF00)) 
    \cbus[8]_INST_0_i_1 
       (.I0(\cbus[8]_INST_0_i_3_n_0 ),
        .I1(\hlfc_f_reg[10]_3 ),
        .I2(\cbus[0]_0 ),
        .I3(p_0_in[8]),
        .I4(hctl_ccmd_cmp_reg),
        .I5(hctl_ccmd_reg),
        .O(\hlfc_f_reg[10]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \cbus[8]_INST_0_i_3 
       (.I0(\hlfc_i_reg[25]_0 [1]),
        .I1(hctl_ccmd_hlf),
        .O(\cbus[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFDD)) 
    \cbus[8]_INST_0_i_4 
       (.I0(\hlfc_i_reg[23]_0 ),
        .I1(hctl_ccmd_cmp),
        .I2(hlfc_e__0[5]),
        .I3(hlfc_e__0[4]),
        .I4(hlfc_inf),
        .I5(\hlfc_i_reg[25]_0 [2]),
        .O(hctl_ccmd_cmp_reg));
  LUT5 #(
    .INIT(32'h0000DD0D)) 
    \cbus[9]_INST_0_i_3 
       (.I0(\hlfc_f_reg[12]_0 [4]),
        .I1(hctl_ccmd_cmp_reg),
        .I2(\hlfc_i_reg[25]_0 [2]),
        .I3(hctl_ccmd_cmp),
        .I4(hctl_ccmd_reg),
        .O(\hlfc_f_reg[11]_1 ));
  LUT6 #(
    .INIT(64'h7777777777777770)) 
    crdy_INST_0_i_2
       (.I0(\hlfc_f_reg[12]_0 [5]),
        .I1(\hlfc_f_reg[13]_0 ),
        .I2(p_0_in[0]),
        .I3(\hlfc_f_reg_n_0_[1] ),
        .I4(\hlfc_f_reg_n_0_[0] ),
        .I5(hlfc_e0_carry_i_5_n_0),
        .O(\hlfc_f_reg[12]_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hlfc_e0_carry
       (.CI(\<const0> ),
        .CO({hlfc_e0_carry_n_0,hlfc_e0_carry_n_1,hlfc_e0_carry_n_2,hlfc_e0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({hlfc_e__0[3:1],Q}),
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
        .I1(p_1_in[3]),
        .I2(p_1_in[2]),
        .O(hlfc_e0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hAAA9)) 
    hlfc_e0_carry__0_i_2
       (.I0(hlfc_e__0[5]),
        .I1(p_1_in[2]),
        .I2(p_1_in[3]),
        .I3(p_1_in[1]),
        .O(hlfc_e0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFE01)) 
    hlfc_e0_carry__0_i_3
       (.I0(p_1_in[2]),
        .I1(p_1_in[3]),
        .I2(p_1_in[1]),
        .I3(hlfc_e__0[4]),
        .O(hlfc_e0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA56)) 
    hlfc_e0_carry_i_1
       (.I0(hlfc_e__0[3]),
        .I1(\hlfc_f_reg[12]_0 [5]),
        .I2(hlfc_e0_carry_i_5_n_0),
        .I3(p_1_in[1]),
        .I4(p_1_in[3]),
        .I5(p_1_in[2]),
        .O(hlfc_e0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h99999959AAAAAAAA)) 
    hlfc_e0_carry_i_2
       (.I0(hlfc_e__0[2]),
        .I1(\hlfc_f[11]_i_2_n_0 ),
        .I2(\hlfc_f[7]_i_3_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(\hlfc_f_reg[13]_0 ),
        .O(hlfc_e0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h6A6A6A666A666A66)) 
    hlfc_e0_carry_i_3
       (.I0(hlfc_e__0[1]),
        .I1(hlfc_e0_carry_i_6_n_0),
        .I2(hlfc_e0_carry_i_7_n_0),
        .I3(\hlfc_f[8]_i_3_n_0 ),
        .I4(\hlfc_f[7]_i_3_n_0 ),
        .I5(\hlfc_f[11]_i_2_n_0 ),
        .O(hlfc_e0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h595959595959595A)) 
    hlfc_e0_carry_i_4
       (.I0(Q),
        .I1(p_1_in[2]),
        .I2(p_1_in[3]),
        .I3(\hlfc_f_reg[12]_0 [5]),
        .I4(p_1_in[1]),
        .I5(\hlfc_f_reg[12]_0 [4]),
        .O(hlfc_e0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    hlfc_e0_carry_i_5
       (.I0(\hlfc_f_reg[13]_0 ),
        .I1(\hlfc_f_reg[12]_0 [4]),
        .I2(\hlfc_f[7]_i_6_n_0 ),
        .I3(\hlfc_f_reg[12]_0 [1]),
        .I4(\hlfc_f_reg[12]_0 [2]),
        .I5(\hlfc_f[11]_i_3_n_0 ),
        .O(hlfc_e0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    hlfc_e0_carry_i_6
       (.I0(p_1_in[3]),
        .I1(p_1_in[2]),
        .I2(p_1_in[1]),
        .O(hlfc_e0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    hlfc_e0_carry_i_7
       (.I0(\hlfc_f_reg[12]_0 [5]),
        .I1(\hlfc_f[11]_i_3_n_0 ),
        .I2(\hlfc_f_reg[12]_0 [2]),
        .I3(\hlfc_f_reg[12]_0 [1]),
        .I4(\hlfc_f[7]_i_6_n_0 ),
        .I5(hlfc_e0_carry_i_8_n_0),
        .O(hlfc_e0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    hlfc_e0_carry_i_8
       (.I0(\hlfc_f_reg[12]_0 [4]),
        .I1(p_1_in[2]),
        .I2(p_1_in[3]),
        .I3(p_1_in[1]),
        .O(hlfc_e0_carry_i_8_n_0));
  FDRE \hlfc_e_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_e_reg[5]_1 [0]),
        .Q(Q),
        .R(SR));
  FDRE \hlfc_e_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_e_reg[5]_1 [1]),
        .Q(hlfc_e__0[1]),
        .R(SR));
  FDRE \hlfc_e_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_e_reg[5]_1 [2]),
        .Q(hlfc_e__0[2]),
        .R(SR));
  FDRE \hlfc_e_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_e_reg[5]_1 [3]),
        .Q(hlfc_e__0[3]),
        .R(SR));
  FDRE \hlfc_e_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_e_reg[5]_1 [4]),
        .Q(hlfc_e__0[4]),
        .R(SR));
  FDRE \hlfc_e_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_e_reg[5]_1 [5]),
        .Q(hlfc_e__0[5]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFF8F0F80F080008)) 
    \hlfc_f[0]_i_2 
       (.I0(p_1_in[1]),
        .I1(\hlfc_f_reg_n_0_[1] ),
        .I2(p_1_in[3]),
        .I3(p_1_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\hlfc_f_reg[13]_5 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBB8B8888)) 
    \hlfc_f[10]_i_1 
       (.I0(\hlfc_f_reg[10]_3 ),
        .I1(\hlfc_i_reg[22]_0 ),
        .I2(\hlfc_f[10]_i_2_n_0 ),
        .I3(\hlfc_f[10]_i_3_n_0 ),
        .I4(\hlfc_f[10]_i_4_n_0 ),
        .I5(\hlfc_f[10]_i_5_n_0 ),
        .O(\hlfc_f[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4473447FFFFFFFFF)) 
    \hlfc_f[10]_i_2 
       (.I0(p_0_in[0]),
        .I1(\hlfc_f[7]_i_3_n_0 ),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(\hlfc_f_reg_n_0_[0] ),
        .I5(\hlfc_f_reg[13]_0 ),
        .O(\hlfc_f[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \hlfc_f[10]_i_3 
       (.I0(p_1_in[2]),
        .I1(p_1_in[3]),
        .I2(p_1_in[1]),
        .I3(\hlfc_f[11]_i_2_n_0 ),
        .O(\hlfc_f[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEC4644EEEC4646)) 
    \hlfc_f[10]_i_4 
       (.I0(\hlfc_f[1]_i_2_n_0 ),
        .I1(\hlfc_f_reg[12]_0 [3]),
        .I2(p_0_in[8]),
        .I3(\hlfc_f_reg[12]_0 [0]),
        .I4(\hlfc_f_reg[12]_0 [2]),
        .I5(\hlfc_f_reg[12]_0 [1]),
        .O(\hlfc_f[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFAC00A0)) 
    \hlfc_f[10]_i_5 
       (.I0(\hlfc_f_reg[12]_0 [5]),
        .I1(\hlfc_f_reg[12]_0 [4]),
        .I2(p_1_in[2]),
        .I3(p_1_in[3]),
        .I4(p_1_in[1]),
        .O(\hlfc_f[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8888888)) 
    \hlfc_f[11]_i_1 
       (.I0(\hlfc_f_reg[11]_2 ),
        .I1(\hlfc_i_reg[22]_0 ),
        .I2(\hlfc_f_reg_n_0_[1] ),
        .I3(\hlfc_f[11]_i_2_n_0 ),
        .I4(\hlfc_f[11]_i_3_n_0 ),
        .I5(\hlfc_f[11]_i_4_n_0 ),
        .O(\hlfc_f[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \hlfc_f[11]_i_2 
       (.I0(\hlfc_f_reg[12]_0 [2]),
        .I1(\hlfc_f_reg[12]_0 [1]),
        .I2(\hlfc_f_reg[12]_0 [3]),
        .I3(p_0_in[8]),
        .I4(\hlfc_f[1]_i_2_n_0 ),
        .O(\hlfc_f[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \hlfc_f[11]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(\hlfc_f_reg[12]_0 [0]),
        .I3(p_0_in[3]),
        .O(\hlfc_f[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCFCFDFFCCFCCD)) 
    \hlfc_f[11]_i_4 
       (.I0(\hlfc_f[11]_i_5_n_0 ),
        .I1(\hlfc_f[11]_i_6_n_0 ),
        .I2(p_1_in[1]),
        .I3(p_1_in[2]),
        .I4(p_1_in[3]),
        .I5(\hlfc_f_reg[12]_0 [5]),
        .O(\hlfc_f[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h03D3)) 
    \hlfc_f[11]_i_5 
       (.I0(\hlfc_f_reg[12]_0 [1]),
        .I1(p_0_in[8]),
        .I2(\hlfc_f[1]_i_2_n_0 ),
        .I3(\hlfc_f_reg[12]_0 [3]),
        .O(\hlfc_f[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAA08)) 
    \hlfc_f[11]_i_6 
       (.I0(\hlfc_f[11]_i_2_n_0 ),
        .I1(p_0_in[1]),
        .I2(\hlfc_f_reg[12]_0 [0]),
        .I3(p_0_in[3]),
        .O(\hlfc_f[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA08AA08AA0AAA08)) 
    \hlfc_f[12]_i_2 
       (.I0(\hlfc_f[11]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\hlfc_f_reg[12]_0 [0]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\hlfc_f_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDFFFFDDFD)) 
    \hlfc_f[12]_i_3 
       (.I0(\hlfc_f_reg[13]_0 ),
        .I1(\hlfc_f_reg[12]_0 [4]),
        .I2(\hlfc_f_reg[12]_0 [2]),
        .I3(\hlfc_f_reg[12]_0 [3]),
        .I4(p_0_in[8]),
        .I5(\hlfc_f_reg[12]_0 [5]),
        .O(\hlfc_f_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h8888888B88888888)) 
    \hlfc_f[13]_i_1 
       (.I0(\hlfc_f_reg[13]_6 ),
        .I1(\hlfc_i_reg[22]_0 ),
        .I2(p_1_in[2]),
        .I3(p_1_in[3]),
        .I4(p_1_in[1]),
        .I5(\hlfc_f_reg[12]_0 [5]),
        .O(\hlfc_f[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \hlfc_f[15]_i_4 
       (.I0(p_1_in[1]),
        .I1(p_1_in[3]),
        .I2(p_1_in[2]),
        .O(\hlfc_f_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8B888888)) 
    \hlfc_f[1]_i_1 
       (.I0(\hlfc_f_reg[1]_1 ),
        .I1(\hlfc_i_reg[22]_0 ),
        .I2(\hlfc_f[1]_i_2_n_0 ),
        .I3(\hlfc_f_reg[13]_0 ),
        .I4(\hlfc_f_reg_n_0_[0] ),
        .I5(\hlfc_f[1]_i_3_n_0 ),
        .O(\hlfc_f[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \hlfc_f[1]_i_2 
       (.I0(\hlfc_f_reg[12]_0 [5]),
        .I1(p_1_in[1]),
        .I2(p_1_in[3]),
        .I3(p_1_in[2]),
        .I4(\hlfc_f_reg[12]_0 [4]),
        .O(\hlfc_f[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF088F000F088)) 
    \hlfc_f[1]_i_3 
       (.I0(p_1_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_1_in[3]),
        .I4(p_1_in[2]),
        .I5(p_0_in[1]),
        .O(\hlfc_f[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0F0000000F000)) 
    \hlfc_f[2]_i_2 
       (.I0(p_0_in[8]),
        .I1(\hlfc_f_reg[12]_0 [3]),
        .I2(\hlfc_f_reg[13]_0 ),
        .I3(\hlfc_f_reg_n_0_[1] ),
        .I4(\hlfc_f[1]_i_2_n_0 ),
        .I5(\hlfc_f_reg_n_0_[0] ),
        .O(\hlfc_f_reg[10]_1 ));
  LUT6 #(
    .INIT(64'hFFF8F0F80F080008)) 
    \hlfc_f[2]_i_3 
       (.I0(p_1_in[1]),
        .I1(p_0_in[1]),
        .I2(p_1_in[3]),
        .I3(p_1_in[2]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\hlfc_f_reg[13]_4 ));
  LUT6 #(
    .INIT(64'hE0E0F0000000F000)) 
    \hlfc_f[3]_i_2 
       (.I0(p_0_in[8]),
        .I1(\hlfc_f_reg[12]_0 [3]),
        .I2(\hlfc_f_reg[13]_0 ),
        .I3(p_0_in[0]),
        .I4(\hlfc_f[1]_i_2_n_0 ),
        .I5(\hlfc_f_reg_n_0_[1] ),
        .O(\hlfc_f_reg[10]_2 ));
  LUT6 #(
    .INIT(64'hF0FFF088F000F088)) 
    \hlfc_f[3]_i_3 
       (.I0(p_1_in[1]),
        .I1(p_0_in[2]),
        .I2(\hlfc_f_reg[12]_0 [0]),
        .I3(p_1_in[3]),
        .I4(p_1_in[2]),
        .I5(p_0_in[3]),
        .O(\hlfc_f_reg[13]_3 ));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    \hlfc_f[4]_i_1 
       (.I0(\hlfc_f_reg[4]_2 ),
        .I1(\hlfc_i_reg[22]_0 ),
        .I2(\hlfc_f[4]_i_2_n_0 ),
        .I3(\hlfc_f[10]_i_3_n_0 ),
        .I4(\hlfc_f[4]_i_3_n_0 ),
        .O(\hlfc_f[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100FD0001FFFDFF)) 
    \hlfc_f[4]_i_2 
       (.I0(\hlfc_f_reg_n_0_[0] ),
        .I1(p_0_in[8]),
        .I2(\hlfc_f_reg[12]_0 [3]),
        .I3(\hlfc_f[1]_i_2_n_0 ),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\hlfc_f[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8080000F808)) 
    \hlfc_f[4]_i_3 
       (.I0(p_1_in[1]),
        .I1(p_0_in[3]),
        .I2(p_1_in[2]),
        .I3(\hlfc_f_reg[12]_0 [0]),
        .I4(p_1_in[3]),
        .I5(\hlfc_f_reg[12]_0 [1]),
        .O(\hlfc_f[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2F30000000000)) 
    \hlfc_f[5]_i_2 
       (.I0(p_0_in[1]),
        .I1(\hlfc_f[8]_i_6_n_0 ),
        .I2(\hlfc_f_reg_n_0_[1] ),
        .I3(p_0_in[2]),
        .I4(\hlfc_f[1]_i_2_n_0 ),
        .I5(\hlfc_f[10]_i_3_n_0 ),
        .O(\hlfc_f_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hFFFFF0880000F088)) 
    \hlfc_f[5]_i_3 
       (.I0(p_1_in[1]),
        .I1(\hlfc_f_reg[12]_0 [0]),
        .I2(\hlfc_f_reg[12]_0 [1]),
        .I3(p_1_in[2]),
        .I4(p_1_in[3]),
        .I5(\hlfc_f_reg[12]_0 [2]),
        .O(\hlfc_f_reg[13]_2 ));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    \hlfc_f[6]_i_1 
       (.I0(\hlfc_f_reg[6]_0 ),
        .I1(\hlfc_i_reg[22]_0 ),
        .I2(\hlfc_f[6]_i_2_n_0 ),
        .I3(\hlfc_f[10]_i_3_n_0 ),
        .I4(\hlfc_f[6]_i_3_n_0 ),
        .O(\hlfc_f[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h03030353F3F3F353)) 
    \hlfc_f[6]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[3]),
        .I2(\hlfc_f[1]_i_2_n_0 ),
        .I3(\hlfc_f_reg[12]_0 [3]),
        .I4(p_0_in[8]),
        .I5(p_0_in[2]),
        .O(\hlfc_f[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEAAAAAA)) 
    \hlfc_f[6]_i_3 
       (.I0(\hlfc_f[6]_i_4_n_0 ),
        .I1(\hlfc_f_reg[12]_0 [0]),
        .I2(p_0_in[3]),
        .I3(\hlfc_f_reg_n_0_[0] ),
        .I4(\hlfc_f[11]_i_2_n_0 ),
        .O(\hlfc_f[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FF8800F00088)) 
    \hlfc_f[6]_i_4 
       (.I0(p_1_in[1]),
        .I1(\hlfc_f_reg[12]_0 [1]),
        .I2(\hlfc_f_reg[12]_0 [2]),
        .I3(p_1_in[3]),
        .I4(p_1_in[2]),
        .I5(\hlfc_f_reg[12]_0 [3]),
        .O(\hlfc_f[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8B8BB)) 
    \hlfc_f[7]_i_1 
       (.I0(\hlfc_f_reg[7]_0 ),
        .I1(\hlfc_i_reg[22]_0 ),
        .I2(\hlfc_f[7]_i_2_n_0 ),
        .I3(\hlfc_f[7]_i_3_n_0 ),
        .I4(\hlfc_f[7]_i_4_n_0 ),
        .I5(\hlfc_f[7]_i_5_n_0 ),
        .O(\hlfc_f[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA088AA88A0880088)) 
    \hlfc_f[7]_i_2 
       (.I0(\hlfc_f[10]_i_3_n_0 ),
        .I1(\hlfc_f_reg[12]_0 [0]),
        .I2(p_0_in[1]),
        .I3(\hlfc_f[1]_i_2_n_0 ),
        .I4(\hlfc_f[7]_i_6_n_0 ),
        .I5(p_0_in[3]),
        .O(\hlfc_f[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \hlfc_f[7]_i_3 
       (.I0(p_0_in[3]),
        .I1(\hlfc_f_reg[12]_0 [0]),
        .O(\hlfc_f[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \hlfc_f[7]_i_4 
       (.I0(\hlfc_f_reg_n_0_[1] ),
        .I1(\hlfc_f[1]_i_2_n_0 ),
        .I2(p_0_in[8]),
        .I3(\hlfc_f_reg[12]_0 [3]),
        .I4(\hlfc_f_reg[12]_0 [1]),
        .I5(\hlfc_f_reg[12]_0 [2]),
        .O(\hlfc_f[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FF8800F00088)) 
    \hlfc_f[7]_i_5 
       (.I0(p_1_in[1]),
        .I1(\hlfc_f_reg[12]_0 [2]),
        .I2(\hlfc_f_reg[12]_0 [3]),
        .I3(p_1_in[3]),
        .I4(p_1_in[2]),
        .I5(p_0_in[8]),
        .O(\hlfc_f[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \hlfc_f[7]_i_6 
       (.I0(\hlfc_f_reg[12]_0 [3]),
        .I1(p_0_in[8]),
        .O(\hlfc_f[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8B888B8B)) 
    \hlfc_f[8]_i_1 
       (.I0(\hlfc_f_reg[8]_0 ),
        .I1(\hlfc_i_reg[22]_0 ),
        .I2(\hlfc_f[8]_i_2_n_0 ),
        .I3(p_0_in[2]),
        .I4(\hlfc_f[8]_i_3_n_0 ),
        .I5(\hlfc_f[8]_i_4_n_0 ),
        .O(\hlfc_f[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h444444444F444FFF)) 
    \hlfc_f[8]_i_2 
       (.I0(\hlfc_f[10]_i_3_n_0 ),
        .I1(\hlfc_f[8]_i_5_n_0 ),
        .I2(\hlfc_f_reg[12]_0 [0]),
        .I3(\hlfc_f[1]_i_2_n_0 ),
        .I4(\hlfc_f_reg[12]_0 [1]),
        .I5(\hlfc_f[8]_i_6_n_0 ),
        .O(\hlfc_f[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \hlfc_f[8]_i_3 
       (.I0(\hlfc_f[1]_i_2_n_0 ),
        .I1(\hlfc_f_reg[12]_0 [3]),
        .I2(p_0_in[8]),
        .I3(\hlfc_f_reg[12]_0 [1]),
        .I4(\hlfc_f_reg[12]_0 [2]),
        .O(\hlfc_f[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FF000F808F808)) 
    \hlfc_f[8]_i_4 
       (.I0(p_1_in[1]),
        .I1(\hlfc_f_reg[12]_0 [3]),
        .I2(p_1_in[3]),
        .I3(\hlfc_f_reg[12]_0 [4]),
        .I4(p_0_in[8]),
        .I5(p_1_in[2]),
        .O(\hlfc_f[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DDDFFFFFFFF)) 
    \hlfc_f[8]_i_5 
       (.I0(p_0_in[0]),
        .I1(\hlfc_f[7]_i_3_n_0 ),
        .I2(\hlfc_f_reg_n_0_[0] ),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(\hlfc_f_reg[13]_0 ),
        .O(\hlfc_f[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \hlfc_f[8]_i_6 
       (.I0(p_0_in[8]),
        .I1(\hlfc_f_reg[12]_0 [3]),
        .I2(\hlfc_f[1]_i_2_n_0 ),
        .O(\hlfc_f[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFB0000)) 
    \hlfc_f[9]_i_2 
       (.I0(\hlfc_f_reg_n_0_[1] ),
        .I1(\hlfc_f[11]_i_2_n_0 ),
        .I2(p_0_in[3]),
        .I3(\hlfc_f_reg[12]_0 [0]),
        .I4(\hlfc_f_reg[13]_0 ),
        .I5(\hlfc_f[9]_i_4_n_0 ),
        .O(\hlfc_f_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFF0FF808F000F808)) 
    \hlfc_f[9]_i_3 
       (.I0(p_1_in[1]),
        .I1(p_0_in[8]),
        .I2(p_1_in[3]),
        .I3(\hlfc_f_reg[12]_0 [5]),
        .I4(p_1_in[2]),
        .I5(\hlfc_f_reg[12]_0 [4]),
        .O(\hlfc_f_reg[13]_1 ));
  LUT6 #(
    .INIT(64'h440F730F440F7F0F)) 
    \hlfc_f[9]_i_4 
       (.I0(p_0_in[3]),
        .I1(\hlfc_f[7]_i_6_n_0 ),
        .I2(\hlfc_f_reg[12]_0 [2]),
        .I3(\hlfc_f[1]_i_2_n_0 ),
        .I4(\hlfc_f_reg[12]_0 [1]),
        .I5(\hlfc_f[9]_i_5_n_0 ),
        .O(\hlfc_f[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAAAE)) 
    \hlfc_f[9]_i_5 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\hlfc_f_reg[12]_0 [0]),
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
        .D(\hlfc_f[11]_i_1_n_0 ),
        .Q(\hlfc_f_reg[12]_0 [4]),
        .R(SR));
  FDRE \hlfc_f_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(\hlfc_f_reg[12]_0 [5]),
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
        .D(D[6]),
        .Q(p_1_in[2]),
        .R(SR));
  FDRE \hlfc_f_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
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
        .D(D[1]),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \hlfc_f_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE \hlfc_f_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[4]_i_1_n_0 ),
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
        .Q(\hlfc_f_reg[12]_0 [0]),
        .R(SR));
  FDRE \hlfc_f_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[7]_i_1_n_0 ),
        .Q(\hlfc_f_reg[12]_0 [1]),
        .R(SR));
  FDRE \hlfc_f_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\hlfc_f[8]_i_1_n_0 ),
        .Q(\hlfc_f_reg[12]_0 [2]),
        .R(SR));
  FDRE \hlfc_f_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(\hlfc_f_reg[12]_0 [3]),
        .R(SR));
  FDRE \hlfc_i_reg[22] 
       (.C(clk),
        .CE(\hlfc_i_reg[22]_0 ),
        .D(\hlfc_i_reg[25]_1 [0]),
        .Q(\hlfc_i_reg[25]_0 [0]),
        .R(SR));
  FDRE \hlfc_i_reg[23] 
       (.C(clk),
        .CE(\hlfc_i_reg[22]_0 ),
        .D(\hlfc_i_reg[25]_1 [1]),
        .Q(\hlfc_i_reg[25]_0 [1]),
        .R(SR));
  FDRE \hlfc_i_reg[24] 
       (.C(clk),
        .CE(\hlfc_i_reg[22]_0 ),
        .D(\hlfc_i_reg[25]_1 [2]),
        .Q(hlfc_inf),
        .R(SR));
  FDRE \hlfc_i_reg[25] 
       (.C(clk),
        .CE(\hlfc_i_reg[22]_0 ),
        .D(\hlfc_i_reg[25]_1 [3]),
        .Q(\hlfc_i_reg[25]_0 [2]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0001)) 
    \stat[1]_i_7 
       (.I0(hlfc_e0_carry_i_5_n_0),
        .I1(\hlfc_f_reg_n_0_[0] ),
        .I2(\hlfc_f_reg_n_0_[1] ),
        .I3(p_0_in[0]),
        .O(\hlfc_f_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \stat[1]_i_8 
       (.I0(p_1_in[2]),
        .I1(p_1_in[3]),
        .I2(p_1_in[1]),
        .I3(\hlfc_f_reg[12]_0 [5]),
        .O(\hlfc_f_reg[14]_0 ));
endmodule
