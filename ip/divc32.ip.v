
(* STRUCTURAL_NETLIST = "yes" *)
module divc32
   (clk,
    rst_n,
    ccmd,
    abus,
    bbus,
    crdy,
    cbus);
//
//	Division Co-processor (32/32=32...32 bits)
//		(c) 2021	1YEN Toru
//
//
//	2021/05/22	ver.1.00
//		step division using 4 bits flush divider
//		32/32=32...32: 14~17 cycles, including data transfer 6 cycles
//		16/16=16...16: 7~10 cycles, including data transfer 3 cycles
//
  input clk;
  input rst_n;
  input [4:0]ccmd;
  input [15:0]abus;
  input [15:0]bbus;
  output crdy;
  output [15:0]cbus;

  wire [15:0]abus;
  wire [31:0]add_out;
  wire [15:0]bbus;
  wire [15:0]cbus;
  wire [4:0]ccmd;
  wire clk;
  wire crdy;
  wire dctl_load_rem;
  wire dctl_long;
  wire dctl_n_100;
  wire dctl_n_101;
  wire dctl_n_102;
  wire dctl_n_119;
  wire dctl_n_121;
  wire dctl_n_122;
  wire dctl_n_123;
  wire dctl_n_124;
  wire dctl_n_125;
  wire dctl_n_126;
  wire dctl_n_127;
  wire dctl_n_128;
  wire dctl_n_129;
  wire dctl_n_130;
  wire dctl_n_131;
  wire dctl_n_132;
  wire dctl_n_133;
  wire dctl_n_134;
  wire dctl_n_135;
  wire dctl_n_136;
  wire dctl_n_137;
  wire dctl_n_138;
  wire dctl_n_139;
  wire dctl_n_140;
  wire dctl_n_141;
  wire dctl_n_142;
  wire dctl_n_143;
  wire dctl_n_144;
  wire dctl_n_145;
  wire dctl_n_146;
  wire dctl_n_147;
  wire dctl_n_148;
  wire dctl_n_149;
  wire dctl_n_150;
  wire dctl_n_151;
  wire dctl_n_152;
  wire dctl_n_153;
  wire dctl_n_154;
  wire dctl_n_155;
  wire dctl_n_156;
  wire dctl_n_157;
  wire dctl_n_158;
  wire dctl_n_159;
  wire dctl_n_160;
  wire dctl_n_161;
  wire dctl_n_162;
  wire dctl_n_163;
  wire dctl_n_164;
  wire dctl_n_165;
  wire dctl_n_166;
  wire dctl_n_167;
  wire dctl_n_168;
  wire dctl_n_169;
  wire dctl_n_170;
  wire dctl_n_171;
  wire dctl_n_172;
  wire dctl_n_173;
  wire dctl_n_174;
  wire dctl_n_175;
  wire dctl_n_176;
  wire dctl_n_177;
  wire dctl_n_178;
  wire dctl_n_179;
  wire dctl_n_180;
  wire dctl_n_181;
  wire dctl_n_182;
  wire dctl_n_183;
  wire dctl_n_184;
  wire dctl_n_185;
  wire dctl_n_186;
  wire dctl_n_187;
  wire dctl_n_188;
  wire dctl_n_189;
  wire dctl_n_190;
  wire dctl_n_191;
  wire dctl_n_192;
  wire dctl_n_193;
  wire dctl_n_194;
  wire dctl_n_195;
  wire dctl_n_196;
  wire dctl_n_197;
  wire dctl_n_198;
  wire dctl_n_199;
  wire dctl_n_200;
  wire dctl_n_201;
  wire dctl_n_202;
  wire dctl_n_203;
  wire dctl_n_204;
  wire dctl_n_205;
  wire dctl_n_206;
  wire dctl_n_207;
  wire dctl_n_208;
  wire dctl_n_209;
  wire dctl_n_210;
  wire dctl_n_211;
  wire dctl_n_212;
  wire dctl_n_213;
  wire dctl_n_214;
  wire dctl_n_215;
  wire dctl_n_216;
  wire dctl_n_35;
  wire dctl_n_36;
  wire dctl_n_37;
  wire dctl_n_38;
  wire dctl_n_39;
  wire dctl_n_40;
  wire dctl_n_41;
  wire dctl_n_42;
  wire dctl_n_43;
  wire dctl_n_44;
  wire dctl_n_45;
  wire dctl_n_46;
  wire dctl_n_47;
  wire dctl_n_48;
  wire dctl_n_49;
  wire dctl_n_50;
  wire dctl_n_51;
  wire dctl_n_52;
  wire dctl_n_53;
  wire dctl_n_54;
  wire dctl_n_55;
  wire dctl_n_56;
  wire dctl_n_57;
  wire dctl_n_58;
  wire dctl_n_59;
  wire dctl_n_60;
  wire dctl_n_61;
  wire dctl_n_62;
  wire dctl_n_63;
  wire dctl_n_64;
  wire dctl_n_65;
  wire dctl_n_66;
  wire dctl_n_67;
  wire dctl_n_68;
  wire dctl_n_69;
  wire dctl_n_70;
  wire dctl_n_71;
  wire dctl_n_72;
  wire dctl_n_73;
  wire dctl_n_74;
  wire dctl_n_75;
  wire dctl_n_76;
  wire dctl_n_77;
  wire dctl_n_78;
  wire dctl_n_79;
  wire dctl_n_80;
  wire dctl_n_81;
  wire dctl_n_82;
  wire dctl_n_83;
  wire dctl_n_84;
  wire dctl_n_85;
  wire dctl_n_86;
  wire dctl_n_87;
  wire dctl_n_88;
  wire dctl_n_89;
  wire dctl_n_90;
  wire dctl_n_91;
  wire dctl_n_92;
  wire dctl_n_93;
  wire dctl_n_94;
  wire dctl_n_95;
  wire dctl_n_96;
  wire dctl_n_97;
  wire dctl_n_98;
  wire dctl_n_99;
  wire dctl_quoh_rd;
  wire [3:3]den2;
  wire [31:0]dso_0;
  wire dso_msb;
  wire fdiv_n_10;
  wire fdiv_n_11;
  wire fdiv_n_12;
  wire fdiv_n_13;
  wire fdiv_n_14;
  wire fdiv_n_15;
  wire fdiv_n_16;
  wire fdiv_n_17;
  wire fdiv_n_18;
  wire fdiv_n_19;
  wire fdiv_n_20;
  wire fdiv_n_21;
  wire fdiv_n_22;
  wire fdiv_n_23;
  wire fdiv_n_24;
  wire fdiv_n_25;
  wire fdiv_n_26;
  wire fdiv_n_27;
  wire fdiv_n_28;
  wire fdiv_n_29;
  wire fdiv_n_3;
  wire fdiv_n_30;
  wire fdiv_n_31;
  wire fdiv_n_32;
  wire fdiv_n_33;
  wire fdiv_n_34;
  wire fdiv_n_36;
  wire fdiv_n_37;
  wire fdiv_n_38;
  wire fdiv_n_39;
  wire fdiv_n_4;
  wire fdiv_n_40;
  wire fdiv_n_41;
  wire fdiv_n_42;
  wire fdiv_n_43;
  wire fdiv_n_44;
  wire fdiv_n_45;
  wire fdiv_n_46;
  wire fdiv_n_47;
  wire fdiv_n_48;
  wire fdiv_n_49;
  wire fdiv_n_5;
  wire fdiv_n_50;
  wire fdiv_n_51;
  wire fdiv_n_52;
  wire fdiv_n_53;
  wire fdiv_n_54;
  wire fdiv_n_55;
  wire fdiv_n_56;
  wire fdiv_n_57;
  wire fdiv_n_58;
  wire fdiv_n_59;
  wire fdiv_n_6;
  wire fdiv_n_60;
  wire fdiv_n_61;
  wire fdiv_n_62;
  wire fdiv_n_63;
  wire fdiv_n_64;
  wire fdiv_n_65;
  wire fdiv_n_66;
  wire fdiv_n_67;
  wire fdiv_n_7;
  wire fdiv_n_8;
  wire fdiv_n_9;
  wire p_0_in0;
  wire [0:0]p_1_in5_in;
  wire [31:0]p_2_in;
  wire [31:0]quo;
  wire rden_n_1;
  wire rden_n_10;
  wire rden_n_11;
  wire rden_n_12;
  wire rden_n_13;
  wire rden_n_14;
  wire rden_n_15;
  wire rden_n_16;
  wire rden_n_17;
  wire rden_n_18;
  wire rden_n_19;
  wire rden_n_2;
  wire rden_n_20;
  wire rden_n_21;
  wire rden_n_22;
  wire rden_n_23;
  wire rden_n_24;
  wire rden_n_25;
  wire rden_n_26;
  wire rden_n_27;
  wire rden_n_28;
  wire rden_n_29;
  wire rden_n_3;
  wire rden_n_30;
  wire rden_n_31;
  wire rden_n_32;
  wire rden_n_33;
  wire rden_n_34;
  wire rden_n_35;
  wire rden_n_36;
  wire rden_n_37;
  wire rden_n_38;
  wire rden_n_39;
  wire rden_n_4;
  wire rden_n_40;
  wire rden_n_41;
  wire rden_n_42;
  wire rden_n_43;
  wire rden_n_44;
  wire rden_n_45;
  wire rden_n_46;
  wire rden_n_47;
  wire rden_n_48;
  wire rden_n_49;
  wire rden_n_5;
  wire rden_n_50;
  wire rden_n_51;
  wire rden_n_52;
  wire rden_n_53;
  wire rden_n_54;
  wire rden_n_55;
  wire rden_n_56;
  wire rden_n_57;
  wire rden_n_58;
  wire rden_n_59;
  wire rden_n_60;
  wire rden_n_61;
  wire rden_n_62;
  wire rden_n_63;
  wire rden_n_64;
  wire rden_n_65;
  wire rden_n_66;
  wire rden_n_67;
  wire rden_n_68;
  wire rden_n_69;
  wire rden_n_7;
  wire rden_n_70;
  wire rden_n_71;
  wire rden_n_72;
  wire rden_n_73;
  wire rden_n_74;
  wire rden_n_75;
  wire rden_n_76;
  wire rden_n_77;
  wire rden_n_78;
  wire rden_n_79;
  wire rden_n_8;
  wire rden_n_80;
  wire rden_n_81;
  wire rden_n_82;
  wire rden_n_83;
  wire rden_n_84;
  wire rden_n_85;
  wire rden_n_86;
  wire rden_n_87;
  wire rden_n_88;
  wire rden_n_89;
  wire rden_n_9;
  wire rden_n_90;
  wire rden_n_91;
  wire rden_n_92;
  wire rden_n_93;
  wire rden_n_94;
  wire rden_n_95;
  wire rden_n_96;
  wire rden_n_97;
  wire rden_n_98;
  wire rden_n_99;
  wire rdso_n_33;
  wire [31:0]rem;
  wire [33:33]rem1;
  wire [33:33]rem2;
  wire [33:33]rem3;
  wire rquo_n_0;
  wire rquo_n_33;
  wire rquo_n_34;
  wire rquo_n_35;
  wire rquo_n_36;
  wire rquo_n_37;
  wire rquo_n_38;
  wire rquo_n_39;
  wire rquo_n_40;
  wire rquo_n_41;
  wire rquo_n_42;
  wire rquo_n_43;
  wire rquo_n_44;
  wire rquo_n_45;
  wire rquo_n_46;
  wire rquo_n_47;
  wire rst_n;

  divc_add dadd
       (.DI({dctl_n_36,dctl_n_37,dctl_n_38,dctl_n_39}),
        .S({dctl_n_125,dctl_n_126,dctl_n_127,dctl_n_128}),
        .add_out(add_out),
        .\remden_reg[11] ({dctl_n_44,dctl_n_45,dctl_n_46,dctl_n_47}),
        .\remden_reg[11]_0 ({dctl_n_133,dctl_n_134,dctl_n_135,dctl_n_136}),
        .\remden_reg[15] ({dctl_n_48,dctl_n_49,dctl_n_50,dctl_n_51}),
        .\remden_reg[15]_0 ({dctl_n_137,dctl_n_138,dctl_n_139,dctl_n_140}),
        .\remden_reg[19] ({dctl_n_52,dctl_n_53,dctl_n_54,dctl_n_55}),
        .\remden_reg[19]_0 ({dctl_n_141,dctl_n_142,dctl_n_143,dctl_n_144}),
        .\remden_reg[23] ({dctl_n_56,dctl_n_57,dctl_n_58,dctl_n_59}),
        .\remden_reg[23]_0 ({dctl_n_145,dctl_n_146,dctl_n_147,dctl_n_148}),
        .\remden_reg[27] ({dctl_n_60,dctl_n_61,dctl_n_62,dctl_n_63}),
        .\remden_reg[27]_0 ({dctl_n_149,dctl_n_150,dctl_n_151,dctl_n_152}),
        .\remden_reg[31] ({dctl_n_64,dctl_n_65,dctl_n_66}),
        .\remden_reg[31]_0 ({dctl_n_121,dctl_n_122,dctl_n_123,dctl_n_124}),
        .\remden_reg[7] ({dctl_n_40,dctl_n_41,dctl_n_42,dctl_n_43}),
        .\remden_reg[7]_0 ({dctl_n_129,dctl_n_130,dctl_n_131,dctl_n_132}));
  divc_ctl dctl
       (.D(p_2_in),
        .DI({dctl_n_36,dctl_n_37,dctl_n_38,dctl_n_39}),
        .E(dctl_n_35),
        .O(p_0_in0),
        .Q({den2,rden_n_7,rden_n_8,rden_n_9,rden_n_10,rden_n_11,rden_n_12,rden_n_13,rden_n_14,rden_n_15,rden_n_16,rden_n_17,rden_n_18,rden_n_19,rden_n_20,rden_n_21,rden_n_22,rden_n_23,rden_n_24,rden_n_25,rden_n_26,rden_n_27,rden_n_28,rden_n_29,rden_n_30,rden_n_31,rden_n_32,rden_n_33,rden_n_34,rden_n_35,rden_n_36,rden_n_37}),
        .S({dctl_n_125,dctl_n_126,dctl_n_127,dctl_n_128}),
        .SR(rdso_n_33),
        .abus(abus),
        .add_out(add_out),
        .bbus(bbus),
        .cbus(cbus),
        .\cbus[15] (rem),
        .\cbus[15]_0 (rquo_n_47),
        .cbus_0_sp_1(rquo_n_0),
        .cbus_10_sp_1(rquo_n_42),
        .cbus_11_sp_1(rquo_n_43),
        .cbus_12_sp_1(rquo_n_44),
        .cbus_13_sp_1(rquo_n_45),
        .cbus_14_sp_1(rquo_n_46),
        .cbus_1_sp_1(rquo_n_33),
        .cbus_2_sp_1(rquo_n_34),
        .cbus_3_sp_1(rquo_n_35),
        .cbus_4_sp_1(rquo_n_36),
        .cbus_5_sp_1(rquo_n_37),
        .cbus_6_sp_1(rquo_n_38),
        .cbus_7_sp_1(rquo_n_39),
        .cbus_8_sp_1(rquo_n_40),
        .cbus_9_sp_1(rquo_n_41),
        .ccmd(ccmd),
        .\ccmd[0] (dctl_n_102),
        .\ccmd[3] (dctl_n_101),
        .clk(clk),
        .crdy_reg_0(crdy),
        .crdy_reg_1(dctl_n_119),
        .dctl_load_rem(dctl_load_rem),
        .dctl_long(dctl_long),
        .dctl_quoh_rd(dctl_quoh_rd),
        .\dctl_stat_reg[0] (dctl_n_100),
        .dso_msb(dso_msb),
        .out({dctl_n_153,dctl_n_154,dctl_n_155,dctl_n_156,dctl_n_157,dctl_n_158,dctl_n_159,dctl_n_160,dctl_n_161,dctl_n_162,dctl_n_163,dctl_n_164,dctl_n_165,dctl_n_166,dctl_n_167,dctl_n_168,dctl_n_169,dctl_n_170,dctl_n_171,dctl_n_172,dctl_n_173,dctl_n_174,dctl_n_175,dctl_n_176,dctl_n_177,dctl_n_178,dctl_n_179,dctl_n_180,dctl_n_181,dctl_n_182,dctl_n_183,dctl_n_184}),
        .\quo[31]_i_8 (dso_0),
        .\quo_reg[1] (rem1),
        .\quo_reg[2] (rem2),
        .\quo_reg[3] (rem3),
        .\rem[31]_i_8 (quo),
        .\rem_reg[11] ({dctl_n_44,dctl_n_45,dctl_n_46,dctl_n_47}),
        .\rem_reg[11]_0 (fdiv_n_44),
        .\rem_reg[11]_1 (fdiv_n_45),
        .\rem_reg[11]_2 (fdiv_n_46),
        .\rem_reg[11]_3 (fdiv_n_47),
        .\rem_reg[15] ({dctl_n_48,dctl_n_49,dctl_n_50,dctl_n_51}),
        .\rem_reg[15]_0 (fdiv_n_48),
        .\rem_reg[15]_1 (fdiv_n_49),
        .\rem_reg[15]_2 (fdiv_n_50),
        .\rem_reg[15]_3 (fdiv_n_51),
        .\rem_reg[19] ({dctl_n_52,dctl_n_53,dctl_n_54,dctl_n_55}),
        .\rem_reg[19]_0 (fdiv_n_52),
        .\rem_reg[19]_1 (fdiv_n_53),
        .\rem_reg[19]_2 (fdiv_n_54),
        .\rem_reg[19]_3 (fdiv_n_55),
        .\rem_reg[23] ({dctl_n_56,dctl_n_57,dctl_n_58,dctl_n_59}),
        .\rem_reg[23]_0 (fdiv_n_56),
        .\rem_reg[23]_1 (fdiv_n_57),
        .\rem_reg[23]_2 (fdiv_n_58),
        .\rem_reg[23]_3 (fdiv_n_59),
        .\rem_reg[27] ({dctl_n_60,dctl_n_61,dctl_n_62,dctl_n_63}),
        .\rem_reg[27]_0 (fdiv_n_60),
        .\rem_reg[27]_1 (fdiv_n_61),
        .\rem_reg[27]_2 (fdiv_n_62),
        .\rem_reg[27]_3 (fdiv_n_63),
        .\rem_reg[30] ({dctl_n_64,dctl_n_65,dctl_n_66}),
        .\rem_reg[31] (fdiv_n_64),
        .\rem_reg[31]_0 (fdiv_n_65),
        .\rem_reg[31]_1 (fdiv_n_66),
        .\rem_reg[31]_2 (fdiv_n_67),
        .\rem_reg[3] (fdiv_n_36),
        .\rem_reg[3]_0 (fdiv_n_37),
        .\rem_reg[3]_1 (fdiv_n_38),
        .\rem_reg[3]_2 (fdiv_n_39),
        .\rem_reg[7] ({dctl_n_40,dctl_n_41,dctl_n_42,dctl_n_43}),
        .\rem_reg[7]_0 (fdiv_n_40),
        .\rem_reg[7]_1 (fdiv_n_41),
        .\rem_reg[7]_2 (fdiv_n_42),
        .\rem_reg[7]_3 (fdiv_n_43),
        .\remden_reg[11] ({dctl_n_133,dctl_n_134,dctl_n_135,dctl_n_136}),
        .\remden_reg[15] ({dctl_n_137,dctl_n_138,dctl_n_139,dctl_n_140}),
        .\remden_reg[19] ({dctl_n_141,dctl_n_142,dctl_n_143,dctl_n_144}),
        .\remden_reg[23] ({dctl_n_145,dctl_n_146,dctl_n_147,dctl_n_148}),
        .\remden_reg[27] ({dctl_n_67,dctl_n_68,dctl_n_69,dctl_n_70,dctl_n_71,dctl_n_72,dctl_n_73,dctl_n_74,dctl_n_75,dctl_n_76,dctl_n_77,dctl_n_78,dctl_n_79,dctl_n_80,dctl_n_81,dctl_n_82,dctl_n_83,dctl_n_84,dctl_n_85,dctl_n_86,dctl_n_87,dctl_n_88,dctl_n_89,dctl_n_90,dctl_n_91,dctl_n_92,dctl_n_93,dctl_n_94,dctl_n_95,dctl_n_96,dctl_n_97,dctl_n_98}),
        .\remden_reg[27]_0 ({dctl_n_149,dctl_n_150,dctl_n_151,dctl_n_152}),
        .\remden_reg[30] ({dctl_n_185,dctl_n_186,dctl_n_187,dctl_n_188,dctl_n_189,dctl_n_190,dctl_n_191,dctl_n_192,dctl_n_193,dctl_n_194,dctl_n_195,dctl_n_196,dctl_n_197,dctl_n_198,dctl_n_199,dctl_n_200,dctl_n_201,dctl_n_202,dctl_n_203,dctl_n_204,dctl_n_205,dctl_n_206,dctl_n_207,dctl_n_208,dctl_n_209,dctl_n_210,dctl_n_211,dctl_n_212,dctl_n_213,dctl_n_214,dctl_n_215,dctl_n_216}),
        .\remden_reg[31] ({dctl_n_121,dctl_n_122,dctl_n_123,dctl_n_124}),
        .\remden_reg[7] ({dctl_n_129,dctl_n_130,dctl_n_131,dctl_n_132}),
        .rst_n(rst_n),
        .rst_n_0(dctl_n_99));
  divc_fdiv fdiv
       (.DI({rden_n_38,rden_n_39,rden_n_40,den2}),
        .O({fdiv_n_3,fdiv_n_4,fdiv_n_5,fdiv_n_6}),
        .Q({rden_n_7,rden_n_8,rden_n_9}),
        .S({rden_n_2,rden_n_3,rden_n_4,rden_n_5}),
        .abus(abus),
        .abus_0_sp_1(fdiv_n_52),
        .abus_10_sp_1(fdiv_n_62),
        .abus_11_sp_1(fdiv_n_63),
        .abus_12_sp_1(fdiv_n_64),
        .abus_13_sp_1(fdiv_n_65),
        .abus_14_sp_1(fdiv_n_66),
        .abus_15_sp_1(fdiv_n_67),
        .abus_1_sp_1(fdiv_n_53),
        .abus_2_sp_1(fdiv_n_54),
        .abus_3_sp_1(fdiv_n_55),
        .abus_4_sp_1(fdiv_n_56),
        .abus_5_sp_1(fdiv_n_57),
        .abus_6_sp_1(fdiv_n_58),
        .abus_7_sp_1(fdiv_n_59),
        .abus_8_sp_1(fdiv_n_60),
        .abus_9_sp_1(fdiv_n_61),
        .bbus(bbus),
        .bbus_0_sp_1(fdiv_n_36),
        .bbus_10_sp_1(fdiv_n_46),
        .bbus_11_sp_1(fdiv_n_47),
        .bbus_12_sp_1(fdiv_n_48),
        .bbus_13_sp_1(fdiv_n_49),
        .bbus_14_sp_1(fdiv_n_50),
        .bbus_15_sp_1(fdiv_n_51),
        .bbus_1_sp_1(fdiv_n_37),
        .bbus_2_sp_1(fdiv_n_38),
        .bbus_3_sp_1(fdiv_n_39),
        .bbus_4_sp_1(fdiv_n_40),
        .bbus_5_sp_1(fdiv_n_41),
        .bbus_6_sp_1(fdiv_n_42),
        .bbus_7_sp_1(fdiv_n_43),
        .bbus_8_sp_1(fdiv_n_44),
        .bbus_9_sp_1(fdiv_n_45),
        .dctl_load_rem(dctl_load_rem),
        .\dso_reg[11] ({fdiv_n_11,fdiv_n_12,fdiv_n_13,fdiv_n_14}),
        .\dso_reg[15] ({fdiv_n_15,fdiv_n_16,fdiv_n_17,fdiv_n_18}),
        .\dso_reg[19] ({fdiv_n_19,fdiv_n_20,fdiv_n_21,fdiv_n_22}),
        .\dso_reg[23] ({fdiv_n_23,fdiv_n_24,fdiv_n_25,fdiv_n_26}),
        .\dso_reg[27] ({fdiv_n_27,fdiv_n_28,fdiv_n_29,fdiv_n_30}),
        .\dso_reg[31] ({fdiv_n_31,fdiv_n_32,fdiv_n_33,fdiv_n_34}),
        .p_1_in5_in(p_1_in5_in),
        .\quo_reg[3] (rden_n_1),
        .rem0_carry__7_i_1_0(p_0_in0),
        .rem1_carry_0(rden_n_97),
        .rem1_carry__7_i_1_0(rem1),
        .rem2_carry__0_0({rden_n_45,rden_n_46,rden_n_47,rden_n_48}),
        .rem2_carry__0_1({rden_n_41,rden_n_42,rden_n_43,rden_n_44}),
        .rem2_carry__1_0({rden_n_53,rden_n_54,rden_n_55,rden_n_56}),
        .rem2_carry__1_1({rden_n_49,rden_n_50,rden_n_51,rden_n_52}),
        .rem2_carry__2_0({rden_n_61,rden_n_62,rden_n_63,rden_n_64}),
        .rem2_carry__2_1({rden_n_57,rden_n_58,rden_n_59,rden_n_60}),
        .rem2_carry__3_0({rden_n_69,rden_n_70,rden_n_71,rden_n_72}),
        .rem2_carry__3_1({rden_n_65,rden_n_66,rden_n_67,rden_n_68}),
        .rem2_carry__4_0({rden_n_77,rden_n_78,rden_n_79,rden_n_80}),
        .rem2_carry__4_1({rden_n_73,rden_n_74,rden_n_75,rden_n_76}),
        .rem2_carry__5_0({rden_n_85,rden_n_86,rden_n_87,rden_n_88}),
        .rem2_carry__5_1({rden_n_81,rden_n_82,rden_n_83,rden_n_84}),
        .rem2_carry__6_0({rden_n_93,rden_n_94,rden_n_95,rden_n_96}),
        .rem2_carry__6_1({rden_n_89,rden_n_90,rden_n_91,rden_n_92}),
        .rem2_carry__7_i_1_0(rem2),
        .\remden_reg[28] ({fdiv_n_7,fdiv_n_8,fdiv_n_9,fdiv_n_10}),
        .\remden_reg[35] (rden_n_99),
        .\remden_reg[39] (rden_n_98),
        .\remden_reg[62] (rem3),
        .\remden_reg[63] (dso_0[31:1]));
  divc_reg_den rden
       (.D({dctl_n_67,dctl_n_68,dctl_n_69,dctl_n_70,dctl_n_71,dctl_n_72,dctl_n_73,dctl_n_74,dctl_n_75,dctl_n_76,dctl_n_77,dctl_n_78,dctl_n_79,dctl_n_80,dctl_n_81,dctl_n_82,dctl_n_83,dctl_n_84,dctl_n_85,dctl_n_86,dctl_n_87,dctl_n_88,dctl_n_89,dctl_n_90,dctl_n_91,dctl_n_92,dctl_n_93,dctl_n_94,dctl_n_95,dctl_n_96,dctl_n_97,dctl_n_98}),
        .DI({rden_n_38,rden_n_39,rden_n_40}),
        .O({fdiv_n_3,fdiv_n_4,fdiv_n_5,fdiv_n_6}),
        .Q({den2,rden_n_7,rden_n_8,rden_n_9,rden_n_10,rden_n_11,rden_n_12,rden_n_13,rden_n_14,rden_n_15,rden_n_16,rden_n_17,rden_n_18,rden_n_19,rden_n_20,rden_n_21,rden_n_22,rden_n_23,rden_n_24,rden_n_25,rden_n_26,rden_n_27,rden_n_28,rden_n_29,rden_n_30,rden_n_31,rden_n_32,rden_n_33,rden_n_34,rden_n_35,rden_n_36,rden_n_37}),
        .S({rden_n_2,rden_n_3,rden_n_4,rden_n_5}),
        .clk(clk),
        .p_1_in5_in(p_1_in5_in),
        .rem1_carry(rem2),
        .rem2_carry(rem3),
        .rem3_carry__6(dso_0),
        .\remden_reg[28]_0 (rden_n_99),
        .\remden_reg[29]_0 (rden_n_98),
        .\remden_reg[30]_0 (rden_n_97),
        .\remden_reg[31]_0 (dctl_n_100),
        .\remden_reg[35]_0 (rem1),
        .\remden_reg[38]_0 ({rden_n_41,rden_n_42,rden_n_43,rden_n_44}),
        .\remden_reg[38]_1 ({rden_n_45,rden_n_46,rden_n_47,rden_n_48}),
        .\remden_reg[39]_0 ({fdiv_n_7,fdiv_n_8,fdiv_n_9,fdiv_n_10}),
        .\remden_reg[42]_0 ({rden_n_49,rden_n_50,rden_n_51,rden_n_52}),
        .\remden_reg[42]_1 ({rden_n_53,rden_n_54,rden_n_55,rden_n_56}),
        .\remden_reg[43]_0 ({fdiv_n_11,fdiv_n_12,fdiv_n_13,fdiv_n_14}),
        .\remden_reg[46]_0 ({rden_n_57,rden_n_58,rden_n_59,rden_n_60}),
        .\remden_reg[46]_1 ({rden_n_61,rden_n_62,rden_n_63,rden_n_64}),
        .\remden_reg[47]_0 ({fdiv_n_15,fdiv_n_16,fdiv_n_17,fdiv_n_18}),
        .\remden_reg[50]_0 ({rden_n_65,rden_n_66,rden_n_67,rden_n_68}),
        .\remden_reg[50]_1 ({rden_n_69,rden_n_70,rden_n_71,rden_n_72}),
        .\remden_reg[51]_0 ({fdiv_n_19,fdiv_n_20,fdiv_n_21,fdiv_n_22}),
        .\remden_reg[54]_0 ({rden_n_73,rden_n_74,rden_n_75,rden_n_76}),
        .\remden_reg[54]_1 ({rden_n_77,rden_n_78,rden_n_79,rden_n_80}),
        .\remden_reg[55]_0 ({fdiv_n_23,fdiv_n_24,fdiv_n_25,fdiv_n_26}),
        .\remden_reg[58]_0 ({rden_n_81,rden_n_82,rden_n_83,rden_n_84}),
        .\remden_reg[58]_1 ({rden_n_85,rden_n_86,rden_n_87,rden_n_88}),
        .\remden_reg[59]_0 ({fdiv_n_27,fdiv_n_28,fdiv_n_29,fdiv_n_30}),
        .\remden_reg[62]_0 ({rden_n_89,rden_n_90,rden_n_91,rden_n_92}),
        .\remden_reg[62]_1 ({rden_n_93,rden_n_94,rden_n_95,rden_n_96}),
        .\remden_reg[63]_0 (rden_n_1),
        .\remden_reg[63]_1 ({fdiv_n_31,fdiv_n_32,fdiv_n_33,fdiv_n_34}),
        .\remden_reg[64]_0 (dctl_n_99),
        .\remden_reg[64]_1 (p_0_in0));
  divc_reg_dso rdso
       (.D({dctl_n_185,dctl_n_186,dctl_n_187,dctl_n_188,dctl_n_189,dctl_n_190,dctl_n_191,dctl_n_192,dctl_n_193,dctl_n_194,dctl_n_195,dctl_n_196,dctl_n_197,dctl_n_198,dctl_n_199,dctl_n_200,dctl_n_201,dctl_n_202,dctl_n_203,dctl_n_204,dctl_n_205,dctl_n_206,dctl_n_207,dctl_n_208,dctl_n_209,dctl_n_210,dctl_n_211,dctl_n_212,dctl_n_213,dctl_n_214,dctl_n_215,dctl_n_216}),
        .E(dctl_n_101),
        .Q(dso_0),
        .SR(rdso_n_33),
        .clk(clk),
        .dctl_long(dctl_long),
        .dso_msb(dso_msb),
        .rst_n(rst_n));
  divc_reg_quo rquo
       (.D(p_2_in),
        .E(dctl_n_35),
        .Q(quo),
        .SR(rdso_n_33),
        .\cbus[0] (dctl_n_119),
        .clk(clk),
        .dctl_quoh_rd(dctl_quoh_rd),
        .\quo_reg[16]_0 (rquo_n_0),
        .\quo_reg[17]_0 (rquo_n_33),
        .\quo_reg[18]_0 (rquo_n_34),
        .\quo_reg[19]_0 (rquo_n_35),
        .\quo_reg[20]_0 (rquo_n_36),
        .\quo_reg[21]_0 (rquo_n_37),
        .\quo_reg[22]_0 (rquo_n_38),
        .\quo_reg[23]_0 (rquo_n_39),
        .\quo_reg[24]_0 (rquo_n_40),
        .\quo_reg[25]_0 (rquo_n_41),
        .\quo_reg[26]_0 (rquo_n_42),
        .\quo_reg[27]_0 (rquo_n_43),
        .\quo_reg[28]_0 (rquo_n_44),
        .\quo_reg[29]_0 (rquo_n_45),
        .\quo_reg[30]_0 (rquo_n_46),
        .\quo_reg[31]_0 (rquo_n_47));
  divc_reg_rem rrem
       (.D({dctl_n_153,dctl_n_154,dctl_n_155,dctl_n_156,dctl_n_157,dctl_n_158,dctl_n_159,dctl_n_160,dctl_n_161,dctl_n_162,dctl_n_163,dctl_n_164,dctl_n_165,dctl_n_166,dctl_n_167,dctl_n_168,dctl_n_169,dctl_n_170,dctl_n_171,dctl_n_172,dctl_n_173,dctl_n_174,dctl_n_175,dctl_n_176,dctl_n_177,dctl_n_178,dctl_n_179,dctl_n_180,dctl_n_181,dctl_n_182,dctl_n_183,dctl_n_184}),
        .E(dctl_n_102),
        .Q(rem),
        .SR(rdso_n_33),
        .clk(clk));
endmodule

module divc_add
   (add_out,
    DI,
    S,
    \remden_reg[7] ,
    \remden_reg[7]_0 ,
    \remden_reg[11] ,
    \remden_reg[11]_0 ,
    \remden_reg[15] ,
    \remden_reg[15]_0 ,
    \remden_reg[19] ,
    \remden_reg[19]_0 ,
    \remden_reg[23] ,
    \remden_reg[23]_0 ,
    \remden_reg[27] ,
    \remden_reg[27]_0 ,
    \remden_reg[31] ,
    \remden_reg[31]_0 );
  output [31:0]add_out;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\remden_reg[7] ;
  input [3:0]\remden_reg[7]_0 ;
  input [3:0]\remden_reg[11] ;
  input [3:0]\remden_reg[11]_0 ;
  input [3:0]\remden_reg[15] ;
  input [3:0]\remden_reg[15]_0 ;
  input [3:0]\remden_reg[19] ;
  input [3:0]\remden_reg[19]_0 ;
  input [3:0]\remden_reg[23] ;
  input [3:0]\remden_reg[23]_0 ;
  input [3:0]\remden_reg[27] ;
  input [3:0]\remden_reg[27]_0 ;
  input [2:0]\remden_reg[31] ;
  input [3:0]\remden_reg[31]_0 ;

  wire \<const0> ;
  wire [3:0]DI;
  wire [3:0]S;
  wire [31:0]add_out;
  wire add_out0_carry__0_n_0;
  wire add_out0_carry__0_n_1;
  wire add_out0_carry__0_n_2;
  wire add_out0_carry__0_n_3;
  wire add_out0_carry__1_n_0;
  wire add_out0_carry__1_n_1;
  wire add_out0_carry__1_n_2;
  wire add_out0_carry__1_n_3;
  wire add_out0_carry__2_n_0;
  wire add_out0_carry__2_n_1;
  wire add_out0_carry__2_n_2;
  wire add_out0_carry__2_n_3;
  wire add_out0_carry__3_n_0;
  wire add_out0_carry__3_n_1;
  wire add_out0_carry__3_n_2;
  wire add_out0_carry__3_n_3;
  wire add_out0_carry__4_n_0;
  wire add_out0_carry__4_n_1;
  wire add_out0_carry__4_n_2;
  wire add_out0_carry__4_n_3;
  wire add_out0_carry__5_n_0;
  wire add_out0_carry__5_n_1;
  wire add_out0_carry__5_n_2;
  wire add_out0_carry__5_n_3;
  wire add_out0_carry__6_n_1;
  wire add_out0_carry__6_n_2;
  wire add_out0_carry__6_n_3;
  wire add_out0_carry_n_0;
  wire add_out0_carry_n_1;
  wire add_out0_carry_n_2;
  wire add_out0_carry_n_3;
  wire [3:0]\remden_reg[11] ;
  wire [3:0]\remden_reg[11]_0 ;
  wire [3:0]\remden_reg[15] ;
  wire [3:0]\remden_reg[15]_0 ;
  wire [3:0]\remden_reg[19] ;
  wire [3:0]\remden_reg[19]_0 ;
  wire [3:0]\remden_reg[23] ;
  wire [3:0]\remden_reg[23]_0 ;
  wire [3:0]\remden_reg[27] ;
  wire [3:0]\remden_reg[27]_0 ;
  wire [2:0]\remden_reg[31] ;
  wire [3:0]\remden_reg[31]_0 ;
  wire [3:0]\remden_reg[7] ;
  wire [3:0]\remden_reg[7]_0 ;

  GND GND
       (.G(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_out0_carry
       (.CI(\<const0> ),
        .CO({add_out0_carry_n_0,add_out0_carry_n_1,add_out0_carry_n_2,add_out0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI(DI),
        .O(add_out[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_out0_carry__0
       (.CI(add_out0_carry_n_0),
        .CO({add_out0_carry__0_n_0,add_out0_carry__0_n_1,add_out0_carry__0_n_2,add_out0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(\remden_reg[7] ),
        .O(add_out[7:4]),
        .S(\remden_reg[7]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_out0_carry__1
       (.CI(add_out0_carry__0_n_0),
        .CO({add_out0_carry__1_n_0,add_out0_carry__1_n_1,add_out0_carry__1_n_2,add_out0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(\remden_reg[11] ),
        .O(add_out[11:8]),
        .S(\remden_reg[11]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_out0_carry__2
       (.CI(add_out0_carry__1_n_0),
        .CO({add_out0_carry__2_n_0,add_out0_carry__2_n_1,add_out0_carry__2_n_2,add_out0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(\remden_reg[15] ),
        .O(add_out[15:12]),
        .S(\remden_reg[15]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_out0_carry__3
       (.CI(add_out0_carry__2_n_0),
        .CO({add_out0_carry__3_n_0,add_out0_carry__3_n_1,add_out0_carry__3_n_2,add_out0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(\remden_reg[19] ),
        .O(add_out[19:16]),
        .S(\remden_reg[19]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_out0_carry__4
       (.CI(add_out0_carry__3_n_0),
        .CO({add_out0_carry__4_n_0,add_out0_carry__4_n_1,add_out0_carry__4_n_2,add_out0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI(\remden_reg[23] ),
        .O(add_out[23:20]),
        .S(\remden_reg[23]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_out0_carry__5
       (.CI(add_out0_carry__4_n_0),
        .CO({add_out0_carry__5_n_0,add_out0_carry__5_n_1,add_out0_carry__5_n_2,add_out0_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI(\remden_reg[27] ),
        .O(add_out[27:24]),
        .S(\remden_reg[27]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_out0_carry__6
       (.CI(add_out0_carry__5_n_0),
        .CO({add_out0_carry__6_n_1,add_out0_carry__6_n_2,add_out0_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\remden_reg[31] }),
        .O(add_out[31:28]),
        .S(\remden_reg[31]_0 ));
endmodule

module divc_ctl
   (dctl_long,
    crdy_reg_0,
    dctl_load_rem,
    D,
    E,
    DI,
    \rem_reg[7] ,
    \rem_reg[11] ,
    \rem_reg[15] ,
    \rem_reg[19] ,
    \rem_reg[23] ,
    \rem_reg[27] ,
    \rem_reg[30] ,
    \remden_reg[27] ,
    rst_n_0,
    \dctl_stat_reg[0] ,
    \ccmd[3] ,
    \ccmd[0] ,
    cbus,
    crdy_reg_1,
    dctl_quoh_rd,
    \remden_reg[31] ,
    S,
    \remden_reg[7] ,
    \remden_reg[11] ,
    \remden_reg[15] ,
    \remden_reg[19] ,
    \remden_reg[23] ,
    \remden_reg[27]_0 ,
    out,
    \remden_reg[30] ,
    SR,
    O,
    clk,
    Q,
    dso_msb,
    abus,
    \rem[31]_i_8 ,
    add_out,
    bbus,
    \quo_reg[1] ,
    \quo_reg[2] ,
    \quo_reg[3] ,
    ccmd,
    \cbus[15] ,
    \quo[31]_i_8 ,
    rst_n,
    .cbus_0_sp_1(cbus_0_sn_1),
    .cbus_1_sp_1(cbus_1_sn_1),
    .cbus_2_sp_1(cbus_2_sn_1),
    .cbus_3_sp_1(cbus_3_sn_1),
    .cbus_4_sp_1(cbus_4_sn_1),
    .cbus_5_sp_1(cbus_5_sn_1),
    .cbus_6_sp_1(cbus_6_sn_1),
    .cbus_7_sp_1(cbus_7_sn_1),
    .cbus_8_sp_1(cbus_8_sn_1),
    .cbus_9_sp_1(cbus_9_sn_1),
    .cbus_10_sp_1(cbus_10_sn_1),
    .cbus_11_sp_1(cbus_11_sn_1),
    .cbus_12_sp_1(cbus_12_sn_1),
    .cbus_13_sp_1(cbus_13_sn_1),
    .cbus_14_sp_1(cbus_14_sn_1),
    \cbus[15]_0 ,
    \rem_reg[3] ,
    \rem_reg[3]_0 ,
    \rem_reg[3]_1 ,
    \rem_reg[3]_2 ,
    \rem_reg[7]_0 ,
    \rem_reg[7]_1 ,
    \rem_reg[7]_2 ,
    \rem_reg[7]_3 ,
    \rem_reg[11]_0 ,
    \rem_reg[11]_1 ,
    \rem_reg[11]_2 ,
    \rem_reg[11]_3 ,
    \rem_reg[15]_0 ,
    \rem_reg[15]_1 ,
    \rem_reg[15]_2 ,
    \rem_reg[15]_3 ,
    \rem_reg[19]_0 ,
    \rem_reg[19]_1 ,
    \rem_reg[19]_2 ,
    \rem_reg[19]_3 ,
    \rem_reg[23]_0 ,
    \rem_reg[23]_1 ,
    \rem_reg[23]_2 ,
    \rem_reg[23]_3 ,
    \rem_reg[27]_0 ,
    \rem_reg[27]_1 ,
    \rem_reg[27]_2 ,
    \rem_reg[27]_3 ,
    \rem_reg[31] ,
    \rem_reg[31]_0 ,
    \rem_reg[31]_1 ,
    \rem_reg[31]_2 );
  output dctl_long;
  output crdy_reg_0;
  output dctl_load_rem;
  output [31:0]D;
  output [0:0]E;
  output [3:0]DI;
  output [3:0]\rem_reg[7] ;
  output [3:0]\rem_reg[11] ;
  output [3:0]\rem_reg[15] ;
  output [3:0]\rem_reg[19] ;
  output [3:0]\rem_reg[23] ;
  output [3:0]\rem_reg[27] ;
  output [2:0]\rem_reg[30] ;
  output [31:0]\remden_reg[27] ;
  output rst_n_0;
  output \dctl_stat_reg[0] ;
  output [0:0]\ccmd[3] ;
  output [0:0]\ccmd[0] ;
  output [15:0]cbus;
  output crdy_reg_1;
  output dctl_quoh_rd;
  output [3:0]\remden_reg[31] ;
  output [3:0]S;
  output [3:0]\remden_reg[7] ;
  output [3:0]\remden_reg[11] ;
  output [3:0]\remden_reg[15] ;
  output [3:0]\remden_reg[19] ;
  output [3:0]\remden_reg[23] ;
  output [3:0]\remden_reg[27]_0 ;
  output [31:0]out;
  output [31:0]\remden_reg[30] ;
  input [0:0]SR;
  input [0:0]O;
  input clk;
  input [31:0]Q;
  input dso_msb;
  input [15:0]abus;
  input [31:0]\rem[31]_i_8 ;
  input [31:0]add_out;
  input [15:0]bbus;
  input [0:0]\quo_reg[1] ;
  input [0:0]\quo_reg[2] ;
  input [0:0]\quo_reg[3] ;
  input [4:0]ccmd;
  input [31:0]\cbus[15] ;
  input [31:0]\quo[31]_i_8 ;
  input rst_n;
  input \cbus[15]_0 ;
  input \rem_reg[3] ;
  input \rem_reg[3]_0 ;
  input \rem_reg[3]_1 ;
  input \rem_reg[3]_2 ;
  input \rem_reg[7]_0 ;
  input \rem_reg[7]_1 ;
  input \rem_reg[7]_2 ;
  input \rem_reg[7]_3 ;
  input \rem_reg[11]_0 ;
  input \rem_reg[11]_1 ;
  input \rem_reg[11]_2 ;
  input \rem_reg[11]_3 ;
  input \rem_reg[15]_0 ;
  input \rem_reg[15]_1 ;
  input \rem_reg[15]_2 ;
  input \rem_reg[15]_3 ;
  input \rem_reg[19]_0 ;
  input \rem_reg[19]_1 ;
  input \rem_reg[19]_2 ;
  input \rem_reg[19]_3 ;
  input \rem_reg[23]_0 ;
  input \rem_reg[23]_1 ;
  input \rem_reg[23]_2 ;
  input \rem_reg[23]_3 ;
  input \rem_reg[27]_0 ;
  input \rem_reg[27]_1 ;
  input \rem_reg[27]_2 ;
  input \rem_reg[27]_3 ;
  input \rem_reg[31] ;
  input \rem_reg[31]_0 ;
  input \rem_reg[31]_1 ;
  input \rem_reg[31]_2 ;
  input cbus_0_sn_1;
  input cbus_1_sn_1;
  input cbus_2_sn_1;
  input cbus_3_sn_1;
  input cbus_4_sn_1;
  input cbus_5_sn_1;
  input cbus_6_sn_1;
  input cbus_7_sn_1;
  input cbus_8_sn_1;
  input cbus_9_sn_1;
  input cbus_10_sn_1;
  input cbus_11_sn_1;
  input cbus_12_sn_1;
  input cbus_13_sn_1;
  input cbus_14_sn_1;

  wire \<const1> ;
  wire [31:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [0:0]O;
  wire [31:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [15:0]abus;
  wire [31:0]add_out;
  wire [15:0]bbus;
  wire [15:0]cbus;
  wire [31:0]\cbus[15] ;
  wire \cbus[15]_0 ;
  wire \cbus[15]_INST_0_i_1_n_0 ;
  wire cbus_0_sn_1;
  wire cbus_10_sn_1;
  wire cbus_11_sn_1;
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
  wire [0:0]\ccmd[0] ;
  wire [0:0]\ccmd[3] ;
  wire clk;
  wire crdy_reg_0;
  wire crdy_reg_1;
  wire dctl_den_wr;
  wire dctl_dso_wr;
  wire dctl_dvw_wr;
  wire dctl_load_rem;
  wire dctl_long;
  wire dctl_long_f;
  wire dctl_quoh_rd;
  wire dctl_remh_rd;
  wire dctl_sign;
  wire dctl_sign_f;
  wire \dctl_stat_reg[0] ;
  wire \dso[31]_i_6_n_0 ;
  wire dso_msb;
  wire fsm_n_134;
  wire [31:0]out;
  wire \quo[31]_i_10_n_0 ;
  wire \quo[31]_i_11_n_0 ;
  wire \quo[31]_i_12_n_0 ;
  wire \quo[31]_i_4_n_0 ;
  wire [31:0]\quo[31]_i_8 ;
  wire [0:0]\quo_reg[1] ;
  wire [0:0]\quo_reg[2] ;
  wire [0:0]\quo_reg[3] ;
  wire \rem[31]_i_3_n_0 ;
  wire [31:0]\rem[31]_i_8 ;
  wire [3:0]\rem_reg[11] ;
  wire \rem_reg[11]_0 ;
  wire \rem_reg[11]_1 ;
  wire \rem_reg[11]_2 ;
  wire \rem_reg[11]_3 ;
  wire [3:0]\rem_reg[15] ;
  wire \rem_reg[15]_0 ;
  wire \rem_reg[15]_1 ;
  wire \rem_reg[15]_2 ;
  wire \rem_reg[15]_3 ;
  wire [3:0]\rem_reg[19] ;
  wire \rem_reg[19]_0 ;
  wire \rem_reg[19]_1 ;
  wire \rem_reg[19]_2 ;
  wire \rem_reg[19]_3 ;
  wire [3:0]\rem_reg[23] ;
  wire \rem_reg[23]_0 ;
  wire \rem_reg[23]_1 ;
  wire \rem_reg[23]_2 ;
  wire \rem_reg[23]_3 ;
  wire [3:0]\rem_reg[27] ;
  wire \rem_reg[27]_0 ;
  wire \rem_reg[27]_1 ;
  wire \rem_reg[27]_2 ;
  wire \rem_reg[27]_3 ;
  wire [2:0]\rem_reg[30] ;
  wire \rem_reg[31] ;
  wire \rem_reg[31]_0 ;
  wire \rem_reg[31]_1 ;
  wire \rem_reg[31]_2 ;
  wire \rem_reg[3] ;
  wire \rem_reg[3]_0 ;
  wire \rem_reg[3]_1 ;
  wire \rem_reg[3]_2 ;
  wire [3:0]\rem_reg[7] ;
  wire \rem_reg[7]_0 ;
  wire \rem_reg[7]_1 ;
  wire \rem_reg[7]_2 ;
  wire \rem_reg[7]_3 ;
  wire \remden[64]_i_5_n_0 ;
  wire [3:0]\remden_reg[11] ;
  wire [3:0]\remden_reg[15] ;
  wire [3:0]\remden_reg[19] ;
  wire [3:0]\remden_reg[23] ;
  wire [31:0]\remden_reg[27] ;
  wire [3:0]\remden_reg[27]_0 ;
  wire [31:0]\remden_reg[30] ;
  wire [3:0]\remden_reg[31] ;
  wire [3:0]\remden_reg[7] ;
  wire rst_n;
  wire rst_n_0;

  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \cbus[0]_INST_0 
       (.I0(\cbus[15]_INST_0_i_1_n_0 ),
        .I1(\cbus[15] [0]),
        .I2(dctl_remh_rd),
        .I3(\cbus[15] [16]),
        .I4(cbus_0_sn_1),
        .O(cbus[0]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \cbus[10]_INST_0 
       (.I0(\cbus[15]_INST_0_i_1_n_0 ),
        .I1(\cbus[15] [10]),
        .I2(dctl_remh_rd),
        .I3(\cbus[15] [26]),
        .I4(cbus_10_sn_1),
        .O(cbus[10]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \cbus[11]_INST_0 
       (.I0(\cbus[15]_INST_0_i_1_n_0 ),
        .I1(\cbus[15] [11]),
        .I2(dctl_remh_rd),
        .I3(\cbus[15] [27]),
        .I4(cbus_11_sn_1),
        .O(cbus[11]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \cbus[12]_INST_0 
       (.I0(\cbus[15]_INST_0_i_1_n_0 ),
        .I1(\cbus[15] [12]),
        .I2(dctl_remh_rd),
        .I3(\cbus[15] [28]),
        .I4(cbus_12_sn_1),
        .O(cbus[12]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \cbus[13]_INST_0 
       (.I0(\cbus[15]_INST_0_i_1_n_0 ),
        .I1(\cbus[15] [13]),
        .I2(dctl_remh_rd),
        .I3(\cbus[15] [29]),
        .I4(cbus_13_sn_1),
        .O(cbus[13]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \cbus[14]_INST_0 
       (.I0(\cbus[15]_INST_0_i_1_n_0 ),
        .I1(\cbus[15] [14]),
        .I2(dctl_remh_rd),
        .I3(\cbus[15] [30]),
        .I4(cbus_14_sn_1),
        .O(cbus[14]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \cbus[15]_INST_0 
       (.I0(\cbus[15]_INST_0_i_1_n_0 ),
        .I1(\cbus[15] [15]),
        .I2(dctl_remh_rd),
        .I3(\cbus[15] [31]),
        .I4(\cbus[15]_0 ),
        .O(cbus[15]));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \cbus[15]_INST_0_i_1 
       (.I0(ccmd[2]),
        .I1(crdy_reg_0),
        .I2(ccmd[4]),
        .I3(ccmd[1]),
        .I4(ccmd[3]),
        .I5(ccmd[0]),
        .O(\cbus[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \cbus[15]_INST_0_i_2 
       (.I0(ccmd[0]),
        .I1(ccmd[3]),
        .I2(ccmd[1]),
        .I3(ccmd[4]),
        .I4(crdy_reg_0),
        .I5(ccmd[2]),
        .O(dctl_remh_rd));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \cbus[15]_INST_0_i_4 
       (.I0(ccmd[3]),
        .I1(ccmd[2]),
        .I2(ccmd[1]),
        .I3(ccmd[0]),
        .I4(ccmd[4]),
        .I5(crdy_reg_0),
        .O(dctl_quoh_rd));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \cbus[15]_INST_0_i_5 
       (.I0(crdy_reg_0),
        .I1(ccmd[4]),
        .I2(ccmd[0]),
        .I3(ccmd[1]),
        .I4(ccmd[2]),
        .I5(ccmd[3]),
        .O(crdy_reg_1));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \cbus[1]_INST_0 
       (.I0(\cbus[15]_INST_0_i_1_n_0 ),
        .I1(\cbus[15] [1]),
        .I2(dctl_remh_rd),
        .I3(\cbus[15] [17]),
        .I4(cbus_1_sn_1),
        .O(cbus[1]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \cbus[2]_INST_0 
       (.I0(\cbus[15]_INST_0_i_1_n_0 ),
        .I1(\cbus[15] [2]),
        .I2(dctl_remh_rd),
        .I3(\cbus[15] [18]),
        .I4(cbus_2_sn_1),
        .O(cbus[2]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \cbus[3]_INST_0 
       (.I0(\cbus[15]_INST_0_i_1_n_0 ),
        .I1(\cbus[15] [3]),
        .I2(dctl_remh_rd),
        .I3(\cbus[15] [19]),
        .I4(cbus_3_sn_1),
        .O(cbus[3]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \cbus[4]_INST_0 
       (.I0(\cbus[15]_INST_0_i_1_n_0 ),
        .I1(\cbus[15] [4]),
        .I2(dctl_remh_rd),
        .I3(\cbus[15] [20]),
        .I4(cbus_4_sn_1),
        .O(cbus[4]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \cbus[5]_INST_0 
       (.I0(\cbus[15]_INST_0_i_1_n_0 ),
        .I1(\cbus[15] [5]),
        .I2(dctl_remh_rd),
        .I3(\cbus[15] [21]),
        .I4(cbus_5_sn_1),
        .O(cbus[5]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \cbus[6]_INST_0 
       (.I0(\cbus[15]_INST_0_i_1_n_0 ),
        .I1(\cbus[15] [6]),
        .I2(dctl_remh_rd),
        .I3(\cbus[15] [22]),
        .I4(cbus_6_sn_1),
        .O(cbus[6]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \cbus[7]_INST_0 
       (.I0(\cbus[15]_INST_0_i_1_n_0 ),
        .I1(\cbus[15] [7]),
        .I2(dctl_remh_rd),
        .I3(\cbus[15] [23]),
        .I4(cbus_7_sn_1),
        .O(cbus[7]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \cbus[8]_INST_0 
       (.I0(\cbus[15]_INST_0_i_1_n_0 ),
        .I1(\cbus[15] [8]),
        .I2(dctl_remh_rd),
        .I3(\cbus[15] [24]),
        .I4(cbus_8_sn_1),
        .O(cbus[8]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \cbus[9]_INST_0 
       (.I0(\cbus[15]_INST_0_i_1_n_0 ),
        .I1(\cbus[15] [9]),
        .I2(dctl_remh_rd),
        .I3(\cbus[15] [25]),
        .I4(cbus_9_sn_1),
        .O(cbus[9]));
  FDSE crdy_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_134),
        .Q(crdy_reg_0),
        .S(SR));
  LUT6 #(
    .INIT(64'h0010FFFF00100000)) 
    dctl_long_f_i_1
       (.I0(ccmd[4]),
        .I1(ccmd[2]),
        .I2(ccmd[3]),
        .I3(ccmd[1]),
        .I4(crdy_reg_0),
        .I5(dctl_long_f),
        .O(dctl_long));
  FDRE dctl_long_f_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(dctl_long),
        .Q(dctl_long_f),
        .R(SR));
  FDRE dctl_sign_f_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(dctl_sign),
        .Q(dctl_sign_f),
        .R(SR));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \dso[31]_i_15 
       (.I0(ccmd[3]),
        .I1(ccmd[0]),
        .I2(ccmd[1]),
        .I3(ccmd[4]),
        .I4(crdy_reg_0),
        .I5(ccmd[2]),
        .O(dctl_dso_wr));
  LUT6 #(
    .INIT(64'h3200000000000000)) 
    \dso[31]_i_5 
       (.I0(ccmd[0]),
        .I1(ccmd[4]),
        .I2(crdy_reg_0),
        .I3(ccmd[2]),
        .I4(ccmd[1]),
        .I5(ccmd[3]),
        .O(dctl_dvw_wr));
  LUT4 #(
    .INIT(16'h0008)) 
    \dso[31]_i_6 
       (.I0(ccmd[2]),
        .I1(crdy_reg_0),
        .I2(ccmd[4]),
        .I3(ccmd[1]),
        .O(\dso[31]_i_6_n_0 ));
  divc_fsm fsm
       (.D(D),
        .DI(DI[3:1]),
        .E(E),
        .O(O),
        .Q(Q),
        .S(S),
        .SR(SR),
        .abus(abus),
        .add_out(add_out),
        .add_out0_carry__6(\quo[31]_i_8 ),
        .bbus(bbus),
        .ccmd(ccmd),
        .\ccmd[0] (\ccmd[0] ),
        .\ccmd[3] (\ccmd[3] ),
        .clk(clk),
        .crdy_reg(fsm_n_134),
        .dctl_den_wr(dctl_den_wr),
        .dctl_dso_wr(dctl_dso_wr),
        .dctl_dvw_wr(dctl_dvw_wr),
        .dctl_load_rem(dctl_load_rem),
        .dctl_sign(dctl_sign),
        .dctl_sign_f(dctl_sign_f),
        .dctl_sign_f_reg(crdy_reg_0),
        .\dctl_stat_reg[0]_0 (\dctl_stat_reg[0] ),
        .\dctl_stat_reg[2]_0 (dctl_long),
        .dso_msb(dso_msb),
        .\dso_reg[31] (\dso[31]_i_6_n_0 ),
        .out(out),
        .\quo[31]_i_5_0 (\quo[31]_i_10_n_0 ),
        .\quo_reg[1] (\quo_reg[1] ),
        .\quo_reg[2] (\quo_reg[2] ),
        .\quo_reg[31] (\quo[31]_i_4_n_0 ),
        .\quo_reg[3] (\quo_reg[3] ),
        .\rem[31]_i_8_0 (\rem[31]_i_8 ),
        .\rem_reg[0] (DI[0]),
        .\rem_reg[11] (\rem_reg[11] ),
        .\rem_reg[11]_0 (\rem_reg[11]_0 ),
        .\rem_reg[11]_1 (\rem_reg[11]_1 ),
        .\rem_reg[11]_2 (\rem_reg[11]_2 ),
        .\rem_reg[11]_3 (\rem_reg[11]_3 ),
        .\rem_reg[15] (\rem_reg[15] ),
        .\rem_reg[15]_0 (\rem_reg[15]_0 ),
        .\rem_reg[15]_1 (\rem_reg[15]_1 ),
        .\rem_reg[15]_2 (\rem_reg[15]_2 ),
        .\rem_reg[15]_3 (\rem_reg[15]_3 ),
        .\rem_reg[19] (\rem_reg[19] ),
        .\rem_reg[19]_0 (\rem_reg[19]_0 ),
        .\rem_reg[19]_1 (\rem_reg[19]_1 ),
        .\rem_reg[19]_2 (\rem_reg[19]_2 ),
        .\rem_reg[19]_3 (\rem_reg[19]_3 ),
        .\rem_reg[23] (\rem_reg[23] ),
        .\rem_reg[23]_0 (\rem_reg[23]_0 ),
        .\rem_reg[23]_1 (\rem_reg[23]_1 ),
        .\rem_reg[23]_2 (\rem_reg[23]_2 ),
        .\rem_reg[23]_3 (\rem_reg[23]_3 ),
        .\rem_reg[27] (\rem_reg[27] ),
        .\rem_reg[27]_0 (\rem_reg[27]_0 ),
        .\rem_reg[27]_1 (\rem_reg[27]_1 ),
        .\rem_reg[27]_2 (\rem_reg[27]_2 ),
        .\rem_reg[27]_3 (\rem_reg[27]_3 ),
        .\rem_reg[30] (\rem_reg[30] ),
        .\rem_reg[31] (\cbus[15] ),
        .\rem_reg[31]_0 (\rem[31]_i_3_n_0 ),
        .\rem_reg[31]_1 (\rem_reg[31] ),
        .\rem_reg[31]_2 (\rem_reg[31]_0 ),
        .\rem_reg[31]_3 (\rem_reg[31]_1 ),
        .\rem_reg[31]_4 (\rem_reg[31]_2 ),
        .\rem_reg[3] (\rem_reg[3] ),
        .\rem_reg[3]_0 (\rem_reg[3]_0 ),
        .\rem_reg[3]_1 (\rem_reg[3]_1 ),
        .\rem_reg[3]_2 (\rem_reg[3]_2 ),
        .\rem_reg[7] (\rem_reg[7] ),
        .\rem_reg[7]_0 (\rem_reg[7]_0 ),
        .\rem_reg[7]_1 (\rem_reg[7]_1 ),
        .\rem_reg[7]_2 (\rem_reg[7]_2 ),
        .\rem_reg[7]_3 (\rem_reg[7]_3 ),
        .\remden_reg[11] (\remden_reg[11] ),
        .\remden_reg[15] (\remden_reg[15] ),
        .\remden_reg[19] (\remden_reg[19] ),
        .\remden_reg[23] (\remden_reg[23] ),
        .\remden_reg[27] (\remden_reg[27] ),
        .\remden_reg[27]_0 (\remden_reg[27]_0 ),
        .\remden_reg[30] (\remden_reg[30] ),
        .\remden_reg[31] (\remden_reg[31] ),
        .\remden_reg[64] (\remden[64]_i_5_n_0 ),
        .\remden_reg[7] (\remden_reg[7] ),
        .rst_n(rst_n),
        .rst_n_0(rst_n_0));
  LUT6 #(
    .INIT(64'h101510151015FFFF)) 
    \quo[31]_i_10 
       (.I0(Q[31]),
        .I1(\quo[31]_i_8 [31]),
        .I2(dctl_long),
        .I3(\quo[31]_i_8 [15]),
        .I4(\quo[31]_i_11_n_0 ),
        .I5(\quo[31]_i_12_n_0 ),
        .O(\quo[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \quo[31]_i_11 
       (.I0(dctl_sign_f),
        .I1(crdy_reg_0),
        .O(\quo[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2002000000000000)) 
    \quo[31]_i_12 
       (.I0(crdy_reg_0),
        .I1(ccmd[4]),
        .I2(ccmd[2]),
        .I3(ccmd[1]),
        .I4(ccmd[3]),
        .I5(ccmd[0]),
        .O(\quo[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \quo[31]_i_4 
       (.I0(crdy_reg_0),
        .I1(ccmd[4]),
        .O(\quo[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \rem[31]_i_3 
       (.I0(ccmd[4]),
        .I1(crdy_reg_0),
        .I2(ccmd[2]),
        .O(\rem[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \remden[15]_i_3 
       (.I0(ccmd[3]),
        .I1(ccmd[0]),
        .I2(ccmd[1]),
        .I3(ccmd[4]),
        .I4(crdy_reg_0),
        .I5(ccmd[2]),
        .O(dctl_den_wr));
  LUT6 #(
    .INIT(64'h0000808000009000)) 
    \remden[64]_i_5 
       (.I0(ccmd[3]),
        .I1(ccmd[1]),
        .I2(ccmd[2]),
        .I3(crdy_reg_0),
        .I4(ccmd[4]),
        .I5(ccmd[0]),
        .O(\remden[64]_i_5_n_0 ));
endmodule

module divc_fdiv
   (\remden_reg[62] ,
    rem2_carry__7_i_1_0,
    rem1_carry__7_i_1_0,
    O,
    \remden_reg[28] ,
    \dso_reg[11] ,
    \dso_reg[15] ,
    \dso_reg[19] ,
    \dso_reg[23] ,
    \dso_reg[27] ,
    \dso_reg[31] ,
    rem0_carry__7_i_1_0,
    .bbus_0_sp_1(bbus_0_sn_1),
    .bbus_1_sp_1(bbus_1_sn_1),
    .bbus_2_sp_1(bbus_2_sn_1),
    .bbus_3_sp_1(bbus_3_sn_1),
    .bbus_4_sp_1(bbus_4_sn_1),
    .bbus_5_sp_1(bbus_5_sn_1),
    .bbus_6_sp_1(bbus_6_sn_1),
    .bbus_7_sp_1(bbus_7_sn_1),
    .bbus_8_sp_1(bbus_8_sn_1),
    .bbus_9_sp_1(bbus_9_sn_1),
    .bbus_10_sp_1(bbus_10_sn_1),
    .bbus_11_sp_1(bbus_11_sn_1),
    .bbus_12_sp_1(bbus_12_sn_1),
    .bbus_13_sp_1(bbus_13_sn_1),
    .bbus_14_sp_1(bbus_14_sn_1),
    .bbus_15_sp_1(bbus_15_sn_1),
    .abus_0_sp_1(abus_0_sn_1),
    .abus_1_sp_1(abus_1_sn_1),
    .abus_2_sp_1(abus_2_sn_1),
    .abus_3_sp_1(abus_3_sn_1),
    .abus_4_sp_1(abus_4_sn_1),
    .abus_5_sp_1(abus_5_sn_1),
    .abus_6_sp_1(abus_6_sn_1),
    .abus_7_sp_1(abus_7_sn_1),
    .abus_8_sp_1(abus_8_sn_1),
    .abus_9_sp_1(abus_9_sn_1),
    .abus_10_sp_1(abus_10_sn_1),
    .abus_11_sp_1(abus_11_sn_1),
    .abus_12_sp_1(abus_12_sn_1),
    .abus_13_sp_1(abus_13_sn_1),
    .abus_14_sp_1(abus_14_sn_1),
    .abus_15_sp_1(abus_15_sn_1),
    p_1_in5_in,
    DI,
    S,
    rem2_carry__0_0,
    rem2_carry__0_1,
    rem2_carry__1_0,
    rem2_carry__1_1,
    rem2_carry__2_0,
    rem2_carry__2_1,
    rem2_carry__3_0,
    rem2_carry__3_1,
    rem2_carry__4_0,
    rem2_carry__4_1,
    rem2_carry__5_0,
    rem2_carry__5_1,
    rem2_carry__6_0,
    rem2_carry__6_1,
    \quo_reg[3] ,
    Q,
    rem1_carry_0,
    \remden_reg[39] ,
    \remden_reg[35] ,
    dctl_load_rem,
    bbus,
    abus,
    \remden_reg[63] );
  output [0:0]\remden_reg[62] ;
  output [0:0]rem2_carry__7_i_1_0;
  output [0:0]rem1_carry__7_i_1_0;
  output [3:0]O;
  output [3:0]\remden_reg[28] ;
  output [3:0]\dso_reg[11] ;
  output [3:0]\dso_reg[15] ;
  output [3:0]\dso_reg[19] ;
  output [3:0]\dso_reg[23] ;
  output [3:0]\dso_reg[27] ;
  output [3:0]\dso_reg[31] ;
  output [0:0]rem0_carry__7_i_1_0;
  input [0:0]p_1_in5_in;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]rem2_carry__0_0;
  input [3:0]rem2_carry__0_1;
  input [3:0]rem2_carry__1_0;
  input [3:0]rem2_carry__1_1;
  input [3:0]rem2_carry__2_0;
  input [3:0]rem2_carry__2_1;
  input [3:0]rem2_carry__3_0;
  input [3:0]rem2_carry__3_1;
  input [3:0]rem2_carry__4_0;
  input [3:0]rem2_carry__4_1;
  input [3:0]rem2_carry__5_0;
  input [3:0]rem2_carry__5_1;
  input [3:0]rem2_carry__6_0;
  input [3:0]rem2_carry__6_1;
  input [0:0]\quo_reg[3] ;
  input [2:0]Q;
  input [0:0]rem1_carry_0;
  input [0:0]\remden_reg[39] ;
  input [0:0]\remden_reg[35] ;
  input dctl_load_rem;
  input [15:0]bbus;
  input [15:0]abus;
  input [30:0]\remden_reg[63] ;
  output bbus_0_sn_1;
  output bbus_1_sn_1;
  output bbus_2_sn_1;
  output bbus_3_sn_1;
  output bbus_4_sn_1;
  output bbus_5_sn_1;
  output bbus_6_sn_1;
  output bbus_7_sn_1;
  output bbus_8_sn_1;
  output bbus_9_sn_1;
  output bbus_10_sn_1;
  output bbus_11_sn_1;
  output bbus_12_sn_1;
  output bbus_13_sn_1;
  output bbus_14_sn_1;
  output bbus_15_sn_1;
  output abus_0_sn_1;
  output abus_1_sn_1;
  output abus_2_sn_1;
  output abus_3_sn_1;
  output abus_4_sn_1;
  output abus_5_sn_1;
  output abus_6_sn_1;
  output abus_7_sn_1;
  output abus_8_sn_1;
  output abus_9_sn_1;
  output abus_10_sn_1;
  output abus_11_sn_1;
  output abus_12_sn_1;
  output abus_13_sn_1;
  output abus_14_sn_1;
  output abus_15_sn_1;

  wire \<const0> ;
  wire [3:0]DI;
  wire [3:0]O;
  wire [2:0]Q;
  wire [3:0]S;
  wire [15:0]abus;
  wire abus_0_sn_1;
  wire abus_10_sn_1;
  wire abus_11_sn_1;
  wire abus_12_sn_1;
  wire abus_13_sn_1;
  wire abus_14_sn_1;
  wire abus_15_sn_1;
  wire abus_1_sn_1;
  wire abus_2_sn_1;
  wire abus_3_sn_1;
  wire abus_4_sn_1;
  wire abus_5_sn_1;
  wire abus_6_sn_1;
  wire abus_7_sn_1;
  wire abus_8_sn_1;
  wire abus_9_sn_1;
  wire [15:0]bbus;
  wire bbus_0_sn_1;
  wire bbus_10_sn_1;
  wire bbus_11_sn_1;
  wire bbus_12_sn_1;
  wire bbus_13_sn_1;
  wire bbus_14_sn_1;
  wire bbus_15_sn_1;
  wire bbus_1_sn_1;
  wire bbus_2_sn_1;
  wire bbus_3_sn_1;
  wire bbus_4_sn_1;
  wire bbus_5_sn_1;
  wire bbus_6_sn_1;
  wire bbus_7_sn_1;
  wire bbus_8_sn_1;
  wire bbus_9_sn_1;
  wire dctl_load_rem;
  wire [3:0]\dso_reg[11] ;
  wire [3:0]\dso_reg[15] ;
  wire [3:0]\dso_reg[19] ;
  wire [3:0]\dso_reg[23] ;
  wire [3:0]\dso_reg[27] ;
  wire [3:0]\dso_reg[31] ;
  wire [0:0]p_1_in3_in;
  wire [0:0]p_1_in5_in;
  wire [0:0]\quo_reg[3] ;
  wire rem0_carry__0_i_1_n_0;
  wire rem0_carry__0_i_2_n_0;
  wire rem0_carry__0_i_3_n_0;
  wire rem0_carry__0_i_4_n_0;
  wire rem0_carry__0_n_0;
  wire rem0_carry__0_n_1;
  wire rem0_carry__0_n_2;
  wire rem0_carry__0_n_3;
  wire rem0_carry__1_i_1_n_0;
  wire rem0_carry__1_i_2_n_0;
  wire rem0_carry__1_i_3_n_0;
  wire rem0_carry__1_i_4_n_0;
  wire rem0_carry__1_n_0;
  wire rem0_carry__1_n_1;
  wire rem0_carry__1_n_2;
  wire rem0_carry__1_n_3;
  wire rem0_carry__2_i_1_n_0;
  wire rem0_carry__2_i_2_n_0;
  wire rem0_carry__2_i_3_n_0;
  wire rem0_carry__2_i_4_n_0;
  wire rem0_carry__2_n_0;
  wire rem0_carry__2_n_1;
  wire rem0_carry__2_n_2;
  wire rem0_carry__2_n_3;
  wire rem0_carry__3_i_1_n_0;
  wire rem0_carry__3_i_2_n_0;
  wire rem0_carry__3_i_3_n_0;
  wire rem0_carry__3_i_4_n_0;
  wire rem0_carry__3_n_0;
  wire rem0_carry__3_n_1;
  wire rem0_carry__3_n_2;
  wire rem0_carry__3_n_3;
  wire rem0_carry__4_i_1_n_0;
  wire rem0_carry__4_i_2_n_0;
  wire rem0_carry__4_i_3_n_0;
  wire rem0_carry__4_i_4_n_0;
  wire rem0_carry__4_n_0;
  wire rem0_carry__4_n_1;
  wire rem0_carry__4_n_2;
  wire rem0_carry__4_n_3;
  wire rem0_carry__5_i_1_n_0;
  wire rem0_carry__5_i_2_n_0;
  wire rem0_carry__5_i_3_n_0;
  wire rem0_carry__5_i_4_n_0;
  wire rem0_carry__5_n_0;
  wire rem0_carry__5_n_1;
  wire rem0_carry__5_n_2;
  wire rem0_carry__5_n_3;
  wire rem0_carry__6_i_1_n_0;
  wire rem0_carry__6_i_2_n_0;
  wire rem0_carry__6_i_3_n_0;
  wire rem0_carry__6_i_4_n_0;
  wire rem0_carry__6_n_0;
  wire rem0_carry__6_n_1;
  wire rem0_carry__6_n_2;
  wire rem0_carry__6_n_3;
  wire [0:0]rem0_carry__7_i_1_0;
  wire rem0_carry__7_i_1_n_0;
  wire rem0_carry_i_1_n_0;
  wire rem0_carry_i_2_n_0;
  wire rem0_carry_i_3_n_0;
  wire rem0_carry_i_4_n_0;
  wire rem0_carry_n_0;
  wire rem0_carry_n_1;
  wire rem0_carry_n_2;
  wire rem0_carry_n_3;
  wire [32:1]rem1;
  wire [0:0]rem1_carry_0;
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
  wire rem1_carry__2_i_1_n_0;
  wire rem1_carry__2_i_2_n_0;
  wire rem1_carry__2_i_3_n_0;
  wire rem1_carry__2_i_4_n_0;
  wire rem1_carry__2_n_0;
  wire rem1_carry__2_n_1;
  wire rem1_carry__2_n_2;
  wire rem1_carry__2_n_3;
  wire rem1_carry__3_i_1_n_0;
  wire rem1_carry__3_i_2_n_0;
  wire rem1_carry__3_i_3_n_0;
  wire rem1_carry__3_i_4_n_0;
  wire rem1_carry__3_n_0;
  wire rem1_carry__3_n_1;
  wire rem1_carry__3_n_2;
  wire rem1_carry__3_n_3;
  wire rem1_carry__4_i_1_n_0;
  wire rem1_carry__4_i_2_n_0;
  wire rem1_carry__4_i_3_n_0;
  wire rem1_carry__4_i_4_n_0;
  wire rem1_carry__4_n_0;
  wire rem1_carry__4_n_1;
  wire rem1_carry__4_n_2;
  wire rem1_carry__4_n_3;
  wire rem1_carry__5_i_1_n_0;
  wire rem1_carry__5_i_2_n_0;
  wire rem1_carry__5_i_3_n_0;
  wire rem1_carry__5_i_4_n_0;
  wire rem1_carry__5_n_0;
  wire rem1_carry__5_n_1;
  wire rem1_carry__5_n_2;
  wire rem1_carry__5_n_3;
  wire rem1_carry__6_i_1_n_0;
  wire rem1_carry__6_i_2_n_0;
  wire rem1_carry__6_i_3_n_0;
  wire rem1_carry__6_i_4_n_0;
  wire rem1_carry__6_n_0;
  wire rem1_carry__6_n_1;
  wire rem1_carry__6_n_2;
  wire rem1_carry__6_n_3;
  wire [0:0]rem1_carry__7_i_1_0;
  wire rem1_carry__7_i_1_n_0;
  wire rem1_carry_i_1_n_0;
  wire rem1_carry_i_2_n_0;
  wire rem1_carry_i_3_n_0;
  wire rem1_carry_i_4_n_0;
  wire rem1_carry_n_0;
  wire rem1_carry_n_1;
  wire rem1_carry_n_2;
  wire rem1_carry_n_3;
  wire [32:1]rem2;
  wire [3:0]rem2_carry__0_0;
  wire [3:0]rem2_carry__0_1;
  wire rem2_carry__0_i_1_n_0;
  wire rem2_carry__0_i_2_n_0;
  wire rem2_carry__0_i_3_n_0;
  wire rem2_carry__0_i_4_n_0;
  wire rem2_carry__0_n_0;
  wire rem2_carry__0_n_1;
  wire rem2_carry__0_n_2;
  wire rem2_carry__0_n_3;
  wire [3:0]rem2_carry__1_0;
  wire [3:0]rem2_carry__1_1;
  wire rem2_carry__1_i_1_n_0;
  wire rem2_carry__1_i_2_n_0;
  wire rem2_carry__1_i_3_n_0;
  wire rem2_carry__1_i_4_n_0;
  wire rem2_carry__1_n_0;
  wire rem2_carry__1_n_1;
  wire rem2_carry__1_n_2;
  wire rem2_carry__1_n_3;
  wire [3:0]rem2_carry__2_0;
  wire [3:0]rem2_carry__2_1;
  wire rem2_carry__2_i_1_n_0;
  wire rem2_carry__2_i_2_n_0;
  wire rem2_carry__2_i_3_n_0;
  wire rem2_carry__2_i_4_n_0;
  wire rem2_carry__2_n_0;
  wire rem2_carry__2_n_1;
  wire rem2_carry__2_n_2;
  wire rem2_carry__2_n_3;
  wire [3:0]rem2_carry__3_0;
  wire [3:0]rem2_carry__3_1;
  wire rem2_carry__3_i_1_n_0;
  wire rem2_carry__3_i_2_n_0;
  wire rem2_carry__3_i_3_n_0;
  wire rem2_carry__3_i_4_n_0;
  wire rem2_carry__3_n_0;
  wire rem2_carry__3_n_1;
  wire rem2_carry__3_n_2;
  wire rem2_carry__3_n_3;
  wire [3:0]rem2_carry__4_0;
  wire [3:0]rem2_carry__4_1;
  wire rem2_carry__4_i_1_n_0;
  wire rem2_carry__4_i_2_n_0;
  wire rem2_carry__4_i_3_n_0;
  wire rem2_carry__4_i_4_n_0;
  wire rem2_carry__4_n_0;
  wire rem2_carry__4_n_1;
  wire rem2_carry__4_n_2;
  wire rem2_carry__4_n_3;
  wire [3:0]rem2_carry__5_0;
  wire [3:0]rem2_carry__5_1;
  wire rem2_carry__5_i_1_n_0;
  wire rem2_carry__5_i_2_n_0;
  wire rem2_carry__5_i_3_n_0;
  wire rem2_carry__5_i_4_n_0;
  wire rem2_carry__5_n_0;
  wire rem2_carry__5_n_1;
  wire rem2_carry__5_n_2;
  wire rem2_carry__5_n_3;
  wire [3:0]rem2_carry__6_0;
  wire [3:0]rem2_carry__6_1;
  wire rem2_carry__6_i_1_n_0;
  wire rem2_carry__6_i_2_n_0;
  wire rem2_carry__6_i_3_n_0;
  wire rem2_carry__6_i_4_n_0;
  wire rem2_carry__6_n_0;
  wire rem2_carry__6_n_1;
  wire rem2_carry__6_n_2;
  wire rem2_carry__6_n_3;
  wire [0:0]rem2_carry__7_i_1_0;
  wire rem2_carry__7_i_1_n_0;
  wire rem2_carry_i_2_n_0;
  wire rem2_carry_i_3_n_0;
  wire rem2_carry_i_4_n_0;
  wire rem2_carry_n_0;
  wire rem2_carry_n_1;
  wire rem2_carry_n_2;
  wire rem2_carry_n_3;
  wire [32:1]rem3;
  wire rem3_carry__0_n_0;
  wire rem3_carry__0_n_1;
  wire rem3_carry__0_n_2;
  wire rem3_carry__0_n_3;
  wire rem3_carry__1_n_0;
  wire rem3_carry__1_n_1;
  wire rem3_carry__1_n_2;
  wire rem3_carry__1_n_3;
  wire rem3_carry__2_n_0;
  wire rem3_carry__2_n_1;
  wire rem3_carry__2_n_2;
  wire rem3_carry__2_n_3;
  wire rem3_carry__3_n_0;
  wire rem3_carry__3_n_1;
  wire rem3_carry__3_n_2;
  wire rem3_carry__3_n_3;
  wire rem3_carry__4_n_0;
  wire rem3_carry__4_n_1;
  wire rem3_carry__4_n_2;
  wire rem3_carry__4_n_3;
  wire rem3_carry__5_n_0;
  wire rem3_carry__5_n_1;
  wire rem3_carry__5_n_2;
  wire rem3_carry__5_n_3;
  wire rem3_carry__6_n_0;
  wire rem3_carry__6_n_1;
  wire rem3_carry__6_n_2;
  wire rem3_carry__6_n_3;
  wire rem3_carry_n_0;
  wire rem3_carry_n_1;
  wire rem3_carry_n_2;
  wire rem3_carry_n_3;
  wire [3:0]\remden_reg[28] ;
  wire [0:0]\remden_reg[35] ;
  wire [0:0]\remden_reg[39] ;
  wire [0:0]\remden_reg[62] ;
  wire [30:0]\remden_reg[63] ;

  GND GND
       (.G(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry
       (.CI(\<const0> ),
        .CO({rem0_carry_n_0,rem0_carry_n_1,rem0_carry_n_2,rem0_carry_n_3}),
        .CYINIT(rem0_carry_i_1_n_0),
        .DI({rem1[3:1],Q[0]}),
        .O(O),
        .S({rem0_carry_i_2_n_0,rem0_carry_i_3_n_0,rem0_carry_i_4_n_0,\remden_reg[35] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry__0
       (.CI(rem0_carry_n_0),
        .CO({rem0_carry__0_n_0,rem0_carry__0_n_1,rem0_carry__0_n_2,rem0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem1[7:4]),
        .O(\remden_reg[28] ),
        .S({rem0_carry__0_i_1_n_0,rem0_carry__0_i_2_n_0,rem0_carry__0_i_3_n_0,rem0_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__0_i_1
       (.I0(rem1[7]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [6]),
        .O(rem0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__0_i_2
       (.I0(rem1[6]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [5]),
        .O(rem0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__0_i_3
       (.I0(rem1[5]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [4]),
        .O(rem0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__0_i_4
       (.I0(rem1[4]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [3]),
        .O(rem0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry__1
       (.CI(rem0_carry__0_n_0),
        .CO({rem0_carry__1_n_0,rem0_carry__1_n_1,rem0_carry__1_n_2,rem0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem1[11:8]),
        .O(\dso_reg[11] ),
        .S({rem0_carry__1_i_1_n_0,rem0_carry__1_i_2_n_0,rem0_carry__1_i_3_n_0,rem0_carry__1_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__1_i_1
       (.I0(rem1[11]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [10]),
        .O(rem0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__1_i_2
       (.I0(rem1[10]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [9]),
        .O(rem0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__1_i_3
       (.I0(rem1[9]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [8]),
        .O(rem0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__1_i_4
       (.I0(rem1[8]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [7]),
        .O(rem0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry__2
       (.CI(rem0_carry__1_n_0),
        .CO({rem0_carry__2_n_0,rem0_carry__2_n_1,rem0_carry__2_n_2,rem0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem1[15:12]),
        .O(\dso_reg[15] ),
        .S({rem0_carry__2_i_1_n_0,rem0_carry__2_i_2_n_0,rem0_carry__2_i_3_n_0,rem0_carry__2_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__2_i_1
       (.I0(rem1[15]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [14]),
        .O(rem0_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__2_i_2
       (.I0(rem1[14]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [13]),
        .O(rem0_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__2_i_3
       (.I0(rem1[13]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [12]),
        .O(rem0_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__2_i_4
       (.I0(rem1[12]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [11]),
        .O(rem0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry__3
       (.CI(rem0_carry__2_n_0),
        .CO({rem0_carry__3_n_0,rem0_carry__3_n_1,rem0_carry__3_n_2,rem0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem1[19:16]),
        .O(\dso_reg[19] ),
        .S({rem0_carry__3_i_1_n_0,rem0_carry__3_i_2_n_0,rem0_carry__3_i_3_n_0,rem0_carry__3_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__3_i_1
       (.I0(rem1[19]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [18]),
        .O(rem0_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__3_i_2
       (.I0(rem1[18]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [17]),
        .O(rem0_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__3_i_3
       (.I0(rem1[17]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [16]),
        .O(rem0_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__3_i_4
       (.I0(rem1[16]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [15]),
        .O(rem0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry__4
       (.CI(rem0_carry__3_n_0),
        .CO({rem0_carry__4_n_0,rem0_carry__4_n_1,rem0_carry__4_n_2,rem0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem1[23:20]),
        .O(\dso_reg[23] ),
        .S({rem0_carry__4_i_1_n_0,rem0_carry__4_i_2_n_0,rem0_carry__4_i_3_n_0,rem0_carry__4_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__4_i_1
       (.I0(rem1[23]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [22]),
        .O(rem0_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__4_i_2
       (.I0(rem1[22]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [21]),
        .O(rem0_carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__4_i_3
       (.I0(rem1[21]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [20]),
        .O(rem0_carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__4_i_4
       (.I0(rem1[20]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [19]),
        .O(rem0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry__5
       (.CI(rem0_carry__4_n_0),
        .CO({rem0_carry__5_n_0,rem0_carry__5_n_1,rem0_carry__5_n_2,rem0_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem1[27:24]),
        .O(\dso_reg[27] ),
        .S({rem0_carry__5_i_1_n_0,rem0_carry__5_i_2_n_0,rem0_carry__5_i_3_n_0,rem0_carry__5_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__5_i_1
       (.I0(rem1[27]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [26]),
        .O(rem0_carry__5_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__5_i_2
       (.I0(rem1[26]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [25]),
        .O(rem0_carry__5_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__5_i_3
       (.I0(rem1[25]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [24]),
        .O(rem0_carry__5_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__5_i_4
       (.I0(rem1[24]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [23]),
        .O(rem0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry__6
       (.CI(rem0_carry__5_n_0),
        .CO({rem0_carry__6_n_0,rem0_carry__6_n_1,rem0_carry__6_n_2,rem0_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem1[31:28]),
        .O(\dso_reg[31] ),
        .S({rem0_carry__6_i_1_n_0,rem0_carry__6_i_2_n_0,rem0_carry__6_i_3_n_0,rem0_carry__6_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__6_i_1
       (.I0(rem1[31]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [30]),
        .O(rem0_carry__6_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__6_i_2
       (.I0(rem1[30]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [29]),
        .O(rem0_carry__6_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__6_i_3
       (.I0(rem1[29]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [28]),
        .O(rem0_carry__6_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry__6_i_4
       (.I0(rem1[28]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [27]),
        .O(rem0_carry__6_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry__7
       (.CI(rem0_carry__6_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(rem0_carry__7_i_1_0),
        .S({\<const0> ,\<const0> ,\<const0> ,rem0_carry__7_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rem0_carry__7_i_1
       (.I0(rem1[32]),
        .I1(rem1_carry__7_i_1_0),
        .O(rem0_carry__7_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rem0_carry_i_1
       (.I0(rem1_carry__7_i_1_0),
        .O(rem0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry_i_2
       (.I0(rem1[3]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [2]),
        .O(rem0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry_i_3
       (.I0(rem1[2]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [1]),
        .O(rem0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry_i_4
       (.I0(rem1[1]),
        .I1(rem1_carry__7_i_1_0),
        .I2(\remden_reg[63] [0]),
        .O(rem0_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry
       (.CI(\<const0> ),
        .CO({rem1_carry_n_0,rem1_carry_n_1,rem1_carry_n_2,rem1_carry_n_3}),
        .CYINIT(rem1_carry_i_1_n_0),
        .DI({rem2[3:1],Q[1]}),
        .O(rem1[4:1]),
        .S({rem1_carry_i_2_n_0,rem1_carry_i_3_n_0,rem1_carry_i_4_n_0,\remden_reg[39] }));
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
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [6]),
        .O(rem1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__0_i_2
       (.I0(rem2[6]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [5]),
        .O(rem1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__0_i_3
       (.I0(rem2[5]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [4]),
        .O(rem1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__0_i_4
       (.I0(rem2[4]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [3]),
        .O(rem1_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry__1
       (.CI(rem1_carry__0_n_0),
        .CO({rem1_carry__1_n_0,rem1_carry__1_n_1,rem1_carry__1_n_2,rem1_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2[11:8]),
        .O(rem1[12:9]),
        .S({rem1_carry__1_i_1_n_0,rem1_carry__1_i_2_n_0,rem1_carry__1_i_3_n_0,rem1_carry__1_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__1_i_1
       (.I0(rem2[11]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [10]),
        .O(rem1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__1_i_2
       (.I0(rem2[10]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [9]),
        .O(rem1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__1_i_3
       (.I0(rem2[9]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [8]),
        .O(rem1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__1_i_4
       (.I0(rem2[8]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [7]),
        .O(rem1_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry__2
       (.CI(rem1_carry__1_n_0),
        .CO({rem1_carry__2_n_0,rem1_carry__2_n_1,rem1_carry__2_n_2,rem1_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2[15:12]),
        .O(rem1[16:13]),
        .S({rem1_carry__2_i_1_n_0,rem1_carry__2_i_2_n_0,rem1_carry__2_i_3_n_0,rem1_carry__2_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__2_i_1
       (.I0(rem2[15]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [14]),
        .O(rem1_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__2_i_2
       (.I0(rem2[14]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [13]),
        .O(rem1_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__2_i_3
       (.I0(rem2[13]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [12]),
        .O(rem1_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__2_i_4
       (.I0(rem2[12]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [11]),
        .O(rem1_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry__3
       (.CI(rem1_carry__2_n_0),
        .CO({rem1_carry__3_n_0,rem1_carry__3_n_1,rem1_carry__3_n_2,rem1_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2[19:16]),
        .O(rem1[20:17]),
        .S({rem1_carry__3_i_1_n_0,rem1_carry__3_i_2_n_0,rem1_carry__3_i_3_n_0,rem1_carry__3_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__3_i_1
       (.I0(rem2[19]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [18]),
        .O(rem1_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__3_i_2
       (.I0(rem2[18]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [17]),
        .O(rem1_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__3_i_3
       (.I0(rem2[17]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [16]),
        .O(rem1_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__3_i_4
       (.I0(rem2[16]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [15]),
        .O(rem1_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry__4
       (.CI(rem1_carry__3_n_0),
        .CO({rem1_carry__4_n_0,rem1_carry__4_n_1,rem1_carry__4_n_2,rem1_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2[23:20]),
        .O(rem1[24:21]),
        .S({rem1_carry__4_i_1_n_0,rem1_carry__4_i_2_n_0,rem1_carry__4_i_3_n_0,rem1_carry__4_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__4_i_1
       (.I0(rem2[23]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [22]),
        .O(rem1_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__4_i_2
       (.I0(rem2[22]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [21]),
        .O(rem1_carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__4_i_3
       (.I0(rem2[21]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [20]),
        .O(rem1_carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__4_i_4
       (.I0(rem2[20]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [19]),
        .O(rem1_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry__5
       (.CI(rem1_carry__4_n_0),
        .CO({rem1_carry__5_n_0,rem1_carry__5_n_1,rem1_carry__5_n_2,rem1_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2[27:24]),
        .O(rem1[28:25]),
        .S({rem1_carry__5_i_1_n_0,rem1_carry__5_i_2_n_0,rem1_carry__5_i_3_n_0,rem1_carry__5_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__5_i_1
       (.I0(rem2[27]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [26]),
        .O(rem1_carry__5_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__5_i_2
       (.I0(rem2[26]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [25]),
        .O(rem1_carry__5_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__5_i_3
       (.I0(rem2[25]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [24]),
        .O(rem1_carry__5_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__5_i_4
       (.I0(rem2[24]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [23]),
        .O(rem1_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry__6
       (.CI(rem1_carry__5_n_0),
        .CO({rem1_carry__6_n_0,rem1_carry__6_n_1,rem1_carry__6_n_2,rem1_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2[31:28]),
        .O(rem1[32:29]),
        .S({rem1_carry__6_i_1_n_0,rem1_carry__6_i_2_n_0,rem1_carry__6_i_3_n_0,rem1_carry__6_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__6_i_1
       (.I0(rem2[31]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [30]),
        .O(rem1_carry__6_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__6_i_2
       (.I0(rem2[30]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [29]),
        .O(rem1_carry__6_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__6_i_3
       (.I0(rem2[29]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [28]),
        .O(rem1_carry__6_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry__6_i_4
       (.I0(rem2[28]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [27]),
        .O(rem1_carry__6_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry__7
       (.CI(rem1_carry__6_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(rem1_carry__7_i_1_0),
        .S({\<const0> ,\<const0> ,\<const0> ,rem1_carry__7_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rem1_carry__7_i_1
       (.I0(rem2[32]),
        .I1(rem2_carry__7_i_1_0),
        .O(rem1_carry__7_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rem1_carry_i_1
       (.I0(rem2_carry__7_i_1_0),
        .O(rem1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry_i_2
       (.I0(rem2[3]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [2]),
        .O(rem1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry_i_3
       (.I0(rem2[2]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [1]),
        .O(rem1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry_i_4
       (.I0(rem2[1]),
        .I1(rem2_carry__7_i_1_0),
        .I2(\remden_reg[63] [0]),
        .O(rem1_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry
       (.CI(\<const0> ),
        .CO({rem2_carry_n_0,rem2_carry_n_1,rem2_carry_n_2,rem2_carry_n_3}),
        .CYINIT(p_1_in3_in),
        .DI({rem3[3:1],Q[2]}),
        .O(rem2[4:1]),
        .S({rem2_carry_i_2_n_0,rem2_carry_i_3_n_0,rem2_carry_i_4_n_0,rem1_carry_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry__0
       (.CI(rem2_carry_n_0),
        .CO({rem2_carry__0_n_0,rem2_carry__0_n_1,rem2_carry__0_n_2,rem2_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem3[7:4]),
        .O(rem2[8:5]),
        .S({rem2_carry__0_i_1_n_0,rem2_carry__0_i_2_n_0,rem2_carry__0_i_3_n_0,rem2_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__0_i_1
       (.I0(rem3[7]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [6]),
        .O(rem2_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__0_i_2
       (.I0(rem3[6]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [5]),
        .O(rem2_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__0_i_3
       (.I0(rem3[5]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [4]),
        .O(rem2_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__0_i_4
       (.I0(rem3[4]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [3]),
        .O(rem2_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry__1
       (.CI(rem2_carry__0_n_0),
        .CO({rem2_carry__1_n_0,rem2_carry__1_n_1,rem2_carry__1_n_2,rem2_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem3[11:8]),
        .O(rem2[12:9]),
        .S({rem2_carry__1_i_1_n_0,rem2_carry__1_i_2_n_0,rem2_carry__1_i_3_n_0,rem2_carry__1_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__1_i_1
       (.I0(rem3[11]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [10]),
        .O(rem2_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__1_i_2
       (.I0(rem3[10]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [9]),
        .O(rem2_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__1_i_3
       (.I0(rem3[9]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [8]),
        .O(rem2_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__1_i_4
       (.I0(rem3[8]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [7]),
        .O(rem2_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry__2
       (.CI(rem2_carry__1_n_0),
        .CO({rem2_carry__2_n_0,rem2_carry__2_n_1,rem2_carry__2_n_2,rem2_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem3[15:12]),
        .O(rem2[16:13]),
        .S({rem2_carry__2_i_1_n_0,rem2_carry__2_i_2_n_0,rem2_carry__2_i_3_n_0,rem2_carry__2_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__2_i_1
       (.I0(rem3[15]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [14]),
        .O(rem2_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__2_i_2
       (.I0(rem3[14]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [13]),
        .O(rem2_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__2_i_3
       (.I0(rem3[13]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [12]),
        .O(rem2_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__2_i_4
       (.I0(rem3[12]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [11]),
        .O(rem2_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry__3
       (.CI(rem2_carry__2_n_0),
        .CO({rem2_carry__3_n_0,rem2_carry__3_n_1,rem2_carry__3_n_2,rem2_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem3[19:16]),
        .O(rem2[20:17]),
        .S({rem2_carry__3_i_1_n_0,rem2_carry__3_i_2_n_0,rem2_carry__3_i_3_n_0,rem2_carry__3_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__3_i_1
       (.I0(rem3[19]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [18]),
        .O(rem2_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__3_i_2
       (.I0(rem3[18]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [17]),
        .O(rem2_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__3_i_3
       (.I0(rem3[17]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [16]),
        .O(rem2_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__3_i_4
       (.I0(rem3[16]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [15]),
        .O(rem2_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry__4
       (.CI(rem2_carry__3_n_0),
        .CO({rem2_carry__4_n_0,rem2_carry__4_n_1,rem2_carry__4_n_2,rem2_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem3[23:20]),
        .O(rem2[24:21]),
        .S({rem2_carry__4_i_1_n_0,rem2_carry__4_i_2_n_0,rem2_carry__4_i_3_n_0,rem2_carry__4_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__4_i_1
       (.I0(rem3[23]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [22]),
        .O(rem2_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__4_i_2
       (.I0(rem3[22]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [21]),
        .O(rem2_carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__4_i_3
       (.I0(rem3[21]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [20]),
        .O(rem2_carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__4_i_4
       (.I0(rem3[20]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [19]),
        .O(rem2_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry__5
       (.CI(rem2_carry__4_n_0),
        .CO({rem2_carry__5_n_0,rem2_carry__5_n_1,rem2_carry__5_n_2,rem2_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem3[27:24]),
        .O(rem2[28:25]),
        .S({rem2_carry__5_i_1_n_0,rem2_carry__5_i_2_n_0,rem2_carry__5_i_3_n_0,rem2_carry__5_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__5_i_1
       (.I0(rem3[27]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [26]),
        .O(rem2_carry__5_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__5_i_2
       (.I0(rem3[26]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [25]),
        .O(rem2_carry__5_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__5_i_3
       (.I0(rem3[25]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [24]),
        .O(rem2_carry__5_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__5_i_4
       (.I0(rem3[24]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [23]),
        .O(rem2_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry__6
       (.CI(rem2_carry__5_n_0),
        .CO({rem2_carry__6_n_0,rem2_carry__6_n_1,rem2_carry__6_n_2,rem2_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem3[31:28]),
        .O(rem2[32:29]),
        .S({rem2_carry__6_i_1_n_0,rem2_carry__6_i_2_n_0,rem2_carry__6_i_3_n_0,rem2_carry__6_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__6_i_1
       (.I0(rem3[31]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [30]),
        .O(rem2_carry__6_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__6_i_2
       (.I0(rem3[30]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [29]),
        .O(rem2_carry__6_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__6_i_3
       (.I0(rem3[29]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [28]),
        .O(rem2_carry__6_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry__6_i_4
       (.I0(rem3[28]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [27]),
        .O(rem2_carry__6_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry__7
       (.CI(rem2_carry__6_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(rem2_carry__7_i_1_0),
        .S({\<const0> ,\<const0> ,\<const0> ,rem2_carry__7_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rem2_carry__7_i_1
       (.I0(rem3[32]),
        .I1(\remden_reg[62] ),
        .O(rem2_carry__7_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rem2_carry_i_1
       (.I0(\remden_reg[62] ),
        .O(p_1_in3_in));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry_i_2
       (.I0(rem3[3]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [2]),
        .O(rem2_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry_i_3
       (.I0(rem3[2]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [1]),
        .O(rem2_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry_i_4
       (.I0(rem3[1]),
        .I1(\remden_reg[62] ),
        .I2(\remden_reg[63] [0]),
        .O(rem2_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry
       (.CI(\<const0> ),
        .CO({rem3_carry_n_0,rem3_carry_n_1,rem3_carry_n_2,rem3_carry_n_3}),
        .CYINIT(p_1_in5_in),
        .DI(DI),
        .O(rem3[4:1]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry__0
       (.CI(rem3_carry_n_0),
        .CO({rem3_carry__0_n_0,rem3_carry__0_n_1,rem3_carry__0_n_2,rem3_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2_carry__0_0),
        .O(rem3[8:5]),
        .S(rem2_carry__0_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry__1
       (.CI(rem3_carry__0_n_0),
        .CO({rem3_carry__1_n_0,rem3_carry__1_n_1,rem3_carry__1_n_2,rem3_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2_carry__1_0),
        .O(rem3[12:9]),
        .S(rem2_carry__1_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry__2
       (.CI(rem3_carry__1_n_0),
        .CO({rem3_carry__2_n_0,rem3_carry__2_n_1,rem3_carry__2_n_2,rem3_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2_carry__2_0),
        .O(rem3[16:13]),
        .S(rem2_carry__2_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry__3
       (.CI(rem3_carry__2_n_0),
        .CO({rem3_carry__3_n_0,rem3_carry__3_n_1,rem3_carry__3_n_2,rem3_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2_carry__3_0),
        .O(rem3[20:17]),
        .S(rem2_carry__3_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry__4
       (.CI(rem3_carry__3_n_0),
        .CO({rem3_carry__4_n_0,rem3_carry__4_n_1,rem3_carry__4_n_2,rem3_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2_carry__4_0),
        .O(rem3[24:21]),
        .S(rem2_carry__4_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry__5
       (.CI(rem3_carry__4_n_0),
        .CO({rem3_carry__5_n_0,rem3_carry__5_n_1,rem3_carry__5_n_2,rem3_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2_carry__5_0),
        .O(rem3[28:25]),
        .S(rem2_carry__5_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry__6
       (.CI(rem3_carry__5_n_0),
        .CO({rem3_carry__6_n_0,rem3_carry__6_n_1,rem3_carry__6_n_2,rem3_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2_carry__6_0),
        .O(rem3[32:29]),
        .S(rem2_carry__6_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry__7
       (.CI(rem3_carry__6_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\remden_reg[62] ),
        .S({\<const0> ,\<const0> ,\<const0> ,\quo_reg[3] }));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[11]_i_11 
       (.I0(\dso_reg[11] [3]),
        .I1(dctl_load_rem),
        .I2(bbus[11]),
        .O(bbus_11_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[11]_i_13 
       (.I0(\dso_reg[11] [2]),
        .I1(dctl_load_rem),
        .I2(bbus[10]),
        .O(bbus_10_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[11]_i_15 
       (.I0(\dso_reg[11] [1]),
        .I1(dctl_load_rem),
        .I2(bbus[9]),
        .O(bbus_9_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[11]_i_17 
       (.I0(\dso_reg[11] [0]),
        .I1(dctl_load_rem),
        .I2(bbus[8]),
        .O(bbus_8_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[15]_i_11 
       (.I0(\dso_reg[15] [3]),
        .I1(dctl_load_rem),
        .I2(bbus[15]),
        .O(bbus_15_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[15]_i_13 
       (.I0(\dso_reg[15] [2]),
        .I1(dctl_load_rem),
        .I2(bbus[14]),
        .O(bbus_14_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[15]_i_15 
       (.I0(\dso_reg[15] [1]),
        .I1(dctl_load_rem),
        .I2(bbus[13]),
        .O(bbus_13_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[15]_i_17 
       (.I0(\dso_reg[15] [0]),
        .I1(dctl_load_rem),
        .I2(bbus[12]),
        .O(bbus_12_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[19]_i_11 
       (.I0(\dso_reg[19] [3]),
        .I1(dctl_load_rem),
        .I2(abus[3]),
        .O(abus_3_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[19]_i_13 
       (.I0(\dso_reg[19] [2]),
        .I1(dctl_load_rem),
        .I2(abus[2]),
        .O(abus_2_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[19]_i_15 
       (.I0(\dso_reg[19] [1]),
        .I1(dctl_load_rem),
        .I2(abus[1]),
        .O(abus_1_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[19]_i_17 
       (.I0(\dso_reg[19] [0]),
        .I1(dctl_load_rem),
        .I2(abus[0]),
        .O(abus_0_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[23]_i_11 
       (.I0(\dso_reg[23] [3]),
        .I1(dctl_load_rem),
        .I2(abus[7]),
        .O(abus_7_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[23]_i_13 
       (.I0(\dso_reg[23] [2]),
        .I1(dctl_load_rem),
        .I2(abus[6]),
        .O(abus_6_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[23]_i_15 
       (.I0(\dso_reg[23] [1]),
        .I1(dctl_load_rem),
        .I2(abus[5]),
        .O(abus_5_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[23]_i_17 
       (.I0(\dso_reg[23] [0]),
        .I1(dctl_load_rem),
        .I2(abus[4]),
        .O(abus_4_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[27]_i_11 
       (.I0(\dso_reg[27] [3]),
        .I1(dctl_load_rem),
        .I2(abus[11]),
        .O(abus_11_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[27]_i_13 
       (.I0(\dso_reg[27] [2]),
        .I1(dctl_load_rem),
        .I2(abus[10]),
        .O(abus_10_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[27]_i_15 
       (.I0(\dso_reg[27] [1]),
        .I1(dctl_load_rem),
        .I2(abus[9]),
        .O(abus_9_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[27]_i_17 
       (.I0(\dso_reg[27] [0]),
        .I1(dctl_load_rem),
        .I2(abus[8]),
        .O(abus_8_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[31]_i_14 
       (.I0(\dso_reg[31] [3]),
        .I1(dctl_load_rem),
        .I2(abus[15]),
        .O(abus_15_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[31]_i_16 
       (.I0(\dso_reg[31] [2]),
        .I1(dctl_load_rem),
        .I2(abus[14]),
        .O(abus_14_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[31]_i_18 
       (.I0(\dso_reg[31] [1]),
        .I1(dctl_load_rem),
        .I2(abus[13]),
        .O(abus_13_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[31]_i_20 
       (.I0(\dso_reg[31] [0]),
        .I1(dctl_load_rem),
        .I2(abus[12]),
        .O(abus_12_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[3]_i_11 
       (.I0(O[3]),
        .I1(dctl_load_rem),
        .I2(bbus[3]),
        .O(bbus_3_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[3]_i_13 
       (.I0(O[2]),
        .I1(dctl_load_rem),
        .I2(bbus[2]),
        .O(bbus_2_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[3]_i_15 
       (.I0(O[1]),
        .I1(dctl_load_rem),
        .I2(bbus[1]),
        .O(bbus_1_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[3]_i_17 
       (.I0(O[0]),
        .I1(dctl_load_rem),
        .I2(bbus[0]),
        .O(bbus_0_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[7]_i_11 
       (.I0(\remden_reg[28] [3]),
        .I1(dctl_load_rem),
        .I2(bbus[7]),
        .O(bbus_7_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[7]_i_13 
       (.I0(\remden_reg[28] [2]),
        .I1(dctl_load_rem),
        .I2(bbus[6]),
        .O(bbus_6_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[7]_i_15 
       (.I0(\remden_reg[28] [1]),
        .I1(dctl_load_rem),
        .I2(bbus[5]),
        .O(bbus_5_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \rem[7]_i_17 
       (.I0(\remden_reg[28] [0]),
        .I1(dctl_load_rem),
        .I2(bbus[4]),
        .O(bbus_4_sn_1));
endmodule

module divc_fsm
   (dctl_sign,
    dctl_load_rem,
    D,
    E,
    \rem_reg[0] ,
    DI,
    \rem_reg[7] ,
    \rem_reg[11] ,
    \rem_reg[15] ,
    \rem_reg[19] ,
    \rem_reg[23] ,
    \rem_reg[27] ,
    \rem_reg[30] ,
    \remden_reg[27] ,
    rst_n_0,
    \dctl_stat_reg[0]_0 ,
    \ccmd[3] ,
    \ccmd[0] ,
    \remden_reg[31] ,
    S,
    \remden_reg[7] ,
    \remden_reg[11] ,
    \remden_reg[15] ,
    \remden_reg[19] ,
    \remden_reg[23] ,
    \remden_reg[27]_0 ,
    crdy_reg,
    out,
    \remden_reg[30] ,
    SR,
    O,
    clk,
    \dctl_stat_reg[2]_0 ,
    Q,
    dso_msb,
    abus,
    \rem[31]_i_8_0 ,
    add_out,
    bbus,
    \quo_reg[1] ,
    \quo_reg[2] ,
    \quo_reg[3] ,
    \quo_reg[31] ,
    ccmd,
    \rem_reg[31] ,
    add_out0_carry__6,
    rst_n,
    dctl_den_wr,
    \remden_reg[64] ,
    dctl_dvw_wr,
    \dso_reg[31] ,
    dctl_dso_wr,
    dctl_sign_f,
    dctl_sign_f_reg,
    \rem_reg[31]_0 ,
    \quo[31]_i_5_0 ,
    \rem_reg[3] ,
    \rem_reg[3]_0 ,
    \rem_reg[3]_1 ,
    \rem_reg[3]_2 ,
    \rem_reg[7]_0 ,
    \rem_reg[7]_1 ,
    \rem_reg[7]_2 ,
    \rem_reg[7]_3 ,
    \rem_reg[11]_0 ,
    \rem_reg[11]_1 ,
    \rem_reg[11]_2 ,
    \rem_reg[11]_3 ,
    \rem_reg[15]_0 ,
    \rem_reg[15]_1 ,
    \rem_reg[15]_2 ,
    \rem_reg[15]_3 ,
    \rem_reg[19]_0 ,
    \rem_reg[19]_1 ,
    \rem_reg[19]_2 ,
    \rem_reg[19]_3 ,
    \rem_reg[23]_0 ,
    \rem_reg[23]_1 ,
    \rem_reg[23]_2 ,
    \rem_reg[23]_3 ,
    \rem_reg[27]_0 ,
    \rem_reg[27]_1 ,
    \rem_reg[27]_2 ,
    \rem_reg[27]_3 ,
    \rem_reg[31]_1 ,
    \rem_reg[31]_2 ,
    \rem_reg[31]_3 ,
    \rem_reg[31]_4 );
  output dctl_sign;
  output dctl_load_rem;
  output [31:0]D;
  output [0:0]E;
  output \rem_reg[0] ;
  output [2:0]DI;
  output [3:0]\rem_reg[7] ;
  output [3:0]\rem_reg[11] ;
  output [3:0]\rem_reg[15] ;
  output [3:0]\rem_reg[19] ;
  output [3:0]\rem_reg[23] ;
  output [3:0]\rem_reg[27] ;
  output [2:0]\rem_reg[30] ;
  output [31:0]\remden_reg[27] ;
  output rst_n_0;
  output \dctl_stat_reg[0]_0 ;
  output [0:0]\ccmd[3] ;
  output [0:0]\ccmd[0] ;
  output [3:0]\remden_reg[31] ;
  output [3:0]S;
  output [3:0]\remden_reg[7] ;
  output [3:0]\remden_reg[11] ;
  output [3:0]\remden_reg[15] ;
  output [3:0]\remden_reg[19] ;
  output [3:0]\remden_reg[23] ;
  output [3:0]\remden_reg[27]_0 ;
  output crdy_reg;
  output [31:0]out;
  output [31:0]\remden_reg[30] ;
  input [0:0]SR;
  input [0:0]O;
  input clk;
  input \dctl_stat_reg[2]_0 ;
  input [31:0]Q;
  input dso_msb;
  input [15:0]abus;
  input [31:0]\rem[31]_i_8_0 ;
  input [31:0]add_out;
  input [15:0]bbus;
  input [0:0]\quo_reg[1] ;
  input [0:0]\quo_reg[2] ;
  input [0:0]\quo_reg[3] ;
  input \quo_reg[31] ;
  input [4:0]ccmd;
  input [31:0]\rem_reg[31] ;
  input [31:0]add_out0_carry__6;
  input rst_n;
  input dctl_den_wr;
  input \remden_reg[64] ;
  input dctl_dvw_wr;
  input \dso_reg[31] ;
  input dctl_dso_wr;
  input dctl_sign_f;
  input dctl_sign_f_reg;
  input \rem_reg[31]_0 ;
  input \quo[31]_i_5_0 ;
  input \rem_reg[3] ;
  input \rem_reg[3]_0 ;
  input \rem_reg[3]_1 ;
  input \rem_reg[3]_2 ;
  input \rem_reg[7]_0 ;
  input \rem_reg[7]_1 ;
  input \rem_reg[7]_2 ;
  input \rem_reg[7]_3 ;
  input \rem_reg[11]_0 ;
  input \rem_reg[11]_1 ;
  input \rem_reg[11]_2 ;
  input \rem_reg[11]_3 ;
  input \rem_reg[15]_0 ;
  input \rem_reg[15]_1 ;
  input \rem_reg[15]_2 ;
  input \rem_reg[15]_3 ;
  input \rem_reg[19]_0 ;
  input \rem_reg[19]_1 ;
  input \rem_reg[19]_2 ;
  input \rem_reg[19]_3 ;
  input \rem_reg[23]_0 ;
  input \rem_reg[23]_1 ;
  input \rem_reg[23]_2 ;
  input \rem_reg[23]_3 ;
  input \rem_reg[27]_0 ;
  input \rem_reg[27]_1 ;
  input \rem_reg[27]_2 ;
  input \rem_reg[27]_3 ;
  input \rem_reg[31]_1 ;
  input \rem_reg[31]_2 ;
  input \rem_reg[31]_3 ;
  input \rem_reg[31]_4 ;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire [0:0]O;
  wire [31:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [15:0]abus;
  wire [31:0]add_out;
  wire add_out0_carry__0_i_10_n_0;
  wire add_out0_carry__0_i_11_n_0;
  wire add_out0_carry__0_i_12_n_0;
  wire add_out0_carry__0_i_9_n_0;
  wire add_out0_carry__1_i_10_n_0;
  wire add_out0_carry__1_i_11_n_0;
  wire add_out0_carry__1_i_12_n_0;
  wire add_out0_carry__1_i_9_n_0;
  wire add_out0_carry__2_i_10_n_0;
  wire add_out0_carry__2_i_11_n_0;
  wire add_out0_carry__2_i_12_n_0;
  wire add_out0_carry__2_i_9_n_0;
  wire add_out0_carry__3_i_10_n_0;
  wire add_out0_carry__3_i_11_n_0;
  wire add_out0_carry__3_i_12_n_0;
  wire add_out0_carry__3_i_9_n_0;
  wire add_out0_carry__4_i_10_n_0;
  wire add_out0_carry__4_i_11_n_0;
  wire add_out0_carry__4_i_12_n_0;
  wire add_out0_carry__4_i_9_n_0;
  wire add_out0_carry__5_i_10_n_0;
  wire add_out0_carry__5_i_11_n_0;
  wire add_out0_carry__5_i_12_n_0;
  wire add_out0_carry__5_i_9_n_0;
  wire [31:0]add_out0_carry__6;
  wire add_out0_carry__6_i_10_n_0;
  wire add_out0_carry__6_i_11_n_0;
  wire add_out0_carry__6_i_12_n_0;
  wire add_out0_carry__6_i_8_n_0;
  wire add_out0_carry__6_i_9_n_0;
  wire add_out0_carry_i_10_n_0;
  wire add_out0_carry_i_11_n_0;
  wire add_out0_carry_i_12_n_0;
  wire add_out0_carry_i_13_n_0;
  wire add_out0_carry_i_14_n_0;
  wire add_out0_carry_i_9_n_0;
  wire [15:0]bbus;
  wire [4:0]ccmd;
  wire [0:0]\ccmd[0] ;
  wire [0:0]\ccmd[3] ;
  wire chg_quo_sgn;
  wire chg_quo_sgn_i_1_n_0;
  wire chg_rem_sgn;
  wire chg_rem_sgn_i_1_n_0;
  wire clk;
  wire crdy_i_3_n_0;
  wire crdy_i_4_n_0;
  wire crdy_i_5_n_0;
  wire crdy_i_6_n_0;
  wire crdy_reg;
  wire [2:0]dctl_cmd_0;
  wire dctl_den_wr;
  wire dctl_dso_wr;
  wire dctl_dvw_wr;
  wire dctl_load_rem;
  wire [3:0]dctl_next;
  wire dctl_sign;
  wire dctl_sign_f;
  wire dctl_sign_f_i_2_n_0;
  wire dctl_sign_f_reg;
  wire dctl_start__1;
  wire [3:0]dctl_stat;
  wire \dctl_stat[0]_i_2_n_0 ;
  wire \dctl_stat[0]_i_3_n_0 ;
  wire \dctl_stat[0]_i_4_n_0 ;
  wire \dctl_stat[0]_i_5_n_0 ;
  wire \dctl_stat[0]_i_6_n_0 ;
  wire \dctl_stat[0]_i_7_n_0 ;
  wire \dctl_stat[3]_i_2_n_0 ;
  wire \dctl_stat[3]_i_4_n_0 ;
  wire \dctl_stat[3]_i_5_n_0 ;
  wire \dctl_stat[3]_i_6_n_0 ;
  wire \dctl_stat[3]_i_7_n_0 ;
  wire \dctl_stat[3]_i_8_n_0 ;
  wire \dctl_stat[3]_i_9_n_0 ;
  wire \dctl_stat_reg[0]_0 ;
  wire \dctl_stat_reg[2]_0 ;
  wire \dso[11]_i_10_n_0 ;
  wire \dso[11]_i_11_n_0 ;
  wire \dso[11]_i_12_n_0 ;
  wire \dso[11]_i_13_n_0 ;
  wire \dso[11]_i_2_n_0 ;
  wire \dso[11]_i_3_n_0 ;
  wire \dso[11]_i_4_n_0 ;
  wire \dso[11]_i_5_n_0 ;
  wire \dso[11]_i_6_n_0 ;
  wire \dso[11]_i_7_n_0 ;
  wire \dso[11]_i_8_n_0 ;
  wire \dso[11]_i_9_n_0 ;
  wire \dso[15]_i_10_n_0 ;
  wire \dso[15]_i_11_n_0 ;
  wire \dso[15]_i_12_n_0 ;
  wire \dso[15]_i_13_n_0 ;
  wire \dso[15]_i_2_n_0 ;
  wire \dso[15]_i_3_n_0 ;
  wire \dso[15]_i_4_n_0 ;
  wire \dso[15]_i_5_n_0 ;
  wire \dso[15]_i_6_n_0 ;
  wire \dso[15]_i_7_n_0 ;
  wire \dso[15]_i_8_n_0 ;
  wire \dso[15]_i_9_n_0 ;
  wire \dso[19]_i_2_n_0 ;
  wire \dso[19]_i_3_n_0 ;
  wire \dso[19]_i_4_n_0 ;
  wire \dso[19]_i_5_n_0 ;
  wire \dso[19]_i_6_n_0 ;
  wire \dso[19]_i_7_n_0 ;
  wire \dso[19]_i_8_n_0 ;
  wire \dso[19]_i_9_n_0 ;
  wire \dso[23]_i_2_n_0 ;
  wire \dso[23]_i_3_n_0 ;
  wire \dso[23]_i_4_n_0 ;
  wire \dso[23]_i_5_n_0 ;
  wire \dso[23]_i_6_n_0 ;
  wire \dso[23]_i_7_n_0 ;
  wire \dso[23]_i_8_n_0 ;
  wire \dso[23]_i_9_n_0 ;
  wire \dso[27]_i_2_n_0 ;
  wire \dso[27]_i_3_n_0 ;
  wire \dso[27]_i_4_n_0 ;
  wire \dso[27]_i_5_n_0 ;
  wire \dso[27]_i_6_n_0 ;
  wire \dso[27]_i_7_n_0 ;
  wire \dso[27]_i_8_n_0 ;
  wire \dso[27]_i_9_n_0 ;
  wire \dso[31]_i_10_n_0 ;
  wire \dso[31]_i_11_n_0 ;
  wire \dso[31]_i_12_n_0 ;
  wire \dso[31]_i_13_n_0 ;
  wire \dso[31]_i_14_n_0 ;
  wire \dso[31]_i_4_n_0 ;
  wire \dso[31]_i_7_n_0 ;
  wire \dso[31]_i_8_n_0 ;
  wire \dso[31]_i_9_n_0 ;
  wire \dso[3]_i_10_n_0 ;
  wire \dso[3]_i_11_n_0 ;
  wire \dso[3]_i_12_n_0 ;
  wire \dso[3]_i_13_n_0 ;
  wire \dso[3]_i_2_n_0 ;
  wire \dso[3]_i_3_n_0 ;
  wire \dso[3]_i_4_n_0 ;
  wire \dso[3]_i_5_n_0 ;
  wire \dso[3]_i_6_n_0 ;
  wire \dso[3]_i_7_n_0 ;
  wire \dso[3]_i_8_n_0 ;
  wire \dso[3]_i_9_n_0 ;
  wire \dso[7]_i_10_n_0 ;
  wire \dso[7]_i_11_n_0 ;
  wire \dso[7]_i_12_n_0 ;
  wire \dso[7]_i_13_n_0 ;
  wire \dso[7]_i_2_n_0 ;
  wire \dso[7]_i_3_n_0 ;
  wire \dso[7]_i_4_n_0 ;
  wire \dso[7]_i_5_n_0 ;
  wire \dso[7]_i_6_n_0 ;
  wire \dso[7]_i_7_n_0 ;
  wire \dso[7]_i_8_n_0 ;
  wire \dso[7]_i_9_n_0 ;
  wire dso_msb;
  wire \dso_reg[11]_i_1_n_0 ;
  wire \dso_reg[11]_i_1_n_1 ;
  wire \dso_reg[11]_i_1_n_2 ;
  wire \dso_reg[11]_i_1_n_3 ;
  wire \dso_reg[15]_i_1_n_0 ;
  wire \dso_reg[15]_i_1_n_1 ;
  wire \dso_reg[15]_i_1_n_2 ;
  wire \dso_reg[15]_i_1_n_3 ;
  wire \dso_reg[19]_i_1_n_0 ;
  wire \dso_reg[19]_i_1_n_1 ;
  wire \dso_reg[19]_i_1_n_2 ;
  wire \dso_reg[19]_i_1_n_3 ;
  wire \dso_reg[23]_i_1_n_0 ;
  wire \dso_reg[23]_i_1_n_1 ;
  wire \dso_reg[23]_i_1_n_2 ;
  wire \dso_reg[23]_i_1_n_3 ;
  wire \dso_reg[27]_i_1_n_0 ;
  wire \dso_reg[27]_i_1_n_1 ;
  wire \dso_reg[27]_i_1_n_2 ;
  wire \dso_reg[27]_i_1_n_3 ;
  wire \dso_reg[31] ;
  wire \dso_reg[31]_i_2_n_1 ;
  wire \dso_reg[31]_i_2_n_2 ;
  wire \dso_reg[31]_i_2_n_3 ;
  wire \dso_reg[3]_i_1_n_0 ;
  wire \dso_reg[3]_i_1_n_1 ;
  wire \dso_reg[3]_i_1_n_2 ;
  wire \dso_reg[3]_i_1_n_3 ;
  wire \dso_reg[7]_i_1_n_0 ;
  wire \dso_reg[7]_i_1_n_1 ;
  wire \dso_reg[7]_i_1_n_2 ;
  wire \dso_reg[7]_i_1_n_3 ;
  wire fdiv_rem_msb_f;
  wire [31:0]out;
  wire \quo[31]_i_3_n_0 ;
  wire \quo[31]_i_5_0 ;
  wire \quo[31]_i_5_n_0 ;
  wire \quo[31]_i_6_n_0 ;
  wire \quo[31]_i_7_n_0 ;
  wire \quo[31]_i_8_n_0 ;
  wire \quo[31]_i_9_n_0 ;
  wire [0:0]\quo_reg[1] ;
  wire [0:0]\quo_reg[2] ;
  wire \quo_reg[31] ;
  wire [0:0]\quo_reg[3] ;
  wire \rdso/dso1__0 ;
  wire \rem[11]_i_10_n_0 ;
  wire \rem[11]_i_12_n_0 ;
  wire \rem[11]_i_14_n_0 ;
  wire \rem[11]_i_16_n_0 ;
  wire \rem[11]_i_2_n_0 ;
  wire \rem[11]_i_3_n_0 ;
  wire \rem[11]_i_4_n_0 ;
  wire \rem[11]_i_5_n_0 ;
  wire \rem[11]_i_6_n_0 ;
  wire \rem[11]_i_7_n_0 ;
  wire \rem[11]_i_8_n_0 ;
  wire \rem[11]_i_9_n_0 ;
  wire \rem[15]_i_10_n_0 ;
  wire \rem[15]_i_12_n_0 ;
  wire \rem[15]_i_14_n_0 ;
  wire \rem[15]_i_16_n_0 ;
  wire \rem[15]_i_2_n_0 ;
  wire \rem[15]_i_3_n_0 ;
  wire \rem[15]_i_4_n_0 ;
  wire \rem[15]_i_5_n_0 ;
  wire \rem[15]_i_6_n_0 ;
  wire \rem[15]_i_7_n_0 ;
  wire \rem[15]_i_8_n_0 ;
  wire \rem[15]_i_9_n_0 ;
  wire \rem[19]_i_10_n_0 ;
  wire \rem[19]_i_12_n_0 ;
  wire \rem[19]_i_14_n_0 ;
  wire \rem[19]_i_16_n_0 ;
  wire \rem[19]_i_2_n_0 ;
  wire \rem[19]_i_3_n_0 ;
  wire \rem[19]_i_4_n_0 ;
  wire \rem[19]_i_5_n_0 ;
  wire \rem[19]_i_6_n_0 ;
  wire \rem[19]_i_7_n_0 ;
  wire \rem[19]_i_8_n_0 ;
  wire \rem[19]_i_9_n_0 ;
  wire \rem[23]_i_10_n_0 ;
  wire \rem[23]_i_12_n_0 ;
  wire \rem[23]_i_14_n_0 ;
  wire \rem[23]_i_16_n_0 ;
  wire \rem[23]_i_2_n_0 ;
  wire \rem[23]_i_3_n_0 ;
  wire \rem[23]_i_4_n_0 ;
  wire \rem[23]_i_5_n_0 ;
  wire \rem[23]_i_6_n_0 ;
  wire \rem[23]_i_7_n_0 ;
  wire \rem[23]_i_8_n_0 ;
  wire \rem[23]_i_9_n_0 ;
  wire \rem[27]_i_10_n_0 ;
  wire \rem[27]_i_12_n_0 ;
  wire \rem[27]_i_14_n_0 ;
  wire \rem[27]_i_16_n_0 ;
  wire \rem[27]_i_2_n_0 ;
  wire \rem[27]_i_3_n_0 ;
  wire \rem[27]_i_4_n_0 ;
  wire \rem[27]_i_5_n_0 ;
  wire \rem[27]_i_6_n_0 ;
  wire \rem[27]_i_7_n_0 ;
  wire \rem[27]_i_8_n_0 ;
  wire \rem[27]_i_9_n_0 ;
  wire \rem[31]_i_10_n_0 ;
  wire \rem[31]_i_11_n_0 ;
  wire \rem[31]_i_12_n_0 ;
  wire \rem[31]_i_13_n_0 ;
  wire \rem[31]_i_15_n_0 ;
  wire \rem[31]_i_17_n_0 ;
  wire \rem[31]_i_19_n_0 ;
  wire \rem[31]_i_4_n_0 ;
  wire \rem[31]_i_5_n_0 ;
  wire \rem[31]_i_6_n_0 ;
  wire \rem[31]_i_7_n_0 ;
  wire [31:0]\rem[31]_i_8_0 ;
  wire \rem[31]_i_8_n_0 ;
  wire \rem[31]_i_9_n_0 ;
  wire \rem[3]_i_10_n_0 ;
  wire \rem[3]_i_12_n_0 ;
  wire \rem[3]_i_14_n_0 ;
  wire \rem[3]_i_16_n_0 ;
  wire \rem[3]_i_2_n_0 ;
  wire \rem[3]_i_3_n_0 ;
  wire \rem[3]_i_4_n_0 ;
  wire \rem[3]_i_5_n_0 ;
  wire \rem[3]_i_6_n_0 ;
  wire \rem[3]_i_7_n_0 ;
  wire \rem[3]_i_8_n_0 ;
  wire \rem[3]_i_9_n_0 ;
  wire \rem[7]_i_10_n_0 ;
  wire \rem[7]_i_12_n_0 ;
  wire \rem[7]_i_14_n_0 ;
  wire \rem[7]_i_16_n_0 ;
  wire \rem[7]_i_2_n_0 ;
  wire \rem[7]_i_3_n_0 ;
  wire \rem[7]_i_4_n_0 ;
  wire \rem[7]_i_5_n_0 ;
  wire \rem[7]_i_6_n_0 ;
  wire \rem[7]_i_7_n_0 ;
  wire \rem[7]_i_8_n_0 ;
  wire \rem[7]_i_9_n_0 ;
  wire \rem_reg[0] ;
  wire [3:0]\rem_reg[11] ;
  wire \rem_reg[11]_0 ;
  wire \rem_reg[11]_1 ;
  wire \rem_reg[11]_2 ;
  wire \rem_reg[11]_3 ;
  wire \rem_reg[11]_i_1_n_0 ;
  wire \rem_reg[11]_i_1_n_1 ;
  wire \rem_reg[11]_i_1_n_2 ;
  wire \rem_reg[11]_i_1_n_3 ;
  wire [3:0]\rem_reg[15] ;
  wire \rem_reg[15]_0 ;
  wire \rem_reg[15]_1 ;
  wire \rem_reg[15]_2 ;
  wire \rem_reg[15]_3 ;
  wire \rem_reg[15]_i_1_n_0 ;
  wire \rem_reg[15]_i_1_n_1 ;
  wire \rem_reg[15]_i_1_n_2 ;
  wire \rem_reg[15]_i_1_n_3 ;
  wire [3:0]\rem_reg[19] ;
  wire \rem_reg[19]_0 ;
  wire \rem_reg[19]_1 ;
  wire \rem_reg[19]_2 ;
  wire \rem_reg[19]_3 ;
  wire \rem_reg[19]_i_1_n_0 ;
  wire \rem_reg[19]_i_1_n_1 ;
  wire \rem_reg[19]_i_1_n_2 ;
  wire \rem_reg[19]_i_1_n_3 ;
  wire [3:0]\rem_reg[23] ;
  wire \rem_reg[23]_0 ;
  wire \rem_reg[23]_1 ;
  wire \rem_reg[23]_2 ;
  wire \rem_reg[23]_3 ;
  wire \rem_reg[23]_i_1_n_0 ;
  wire \rem_reg[23]_i_1_n_1 ;
  wire \rem_reg[23]_i_1_n_2 ;
  wire \rem_reg[23]_i_1_n_3 ;
  wire [3:0]\rem_reg[27] ;
  wire \rem_reg[27]_0 ;
  wire \rem_reg[27]_1 ;
  wire \rem_reg[27]_2 ;
  wire \rem_reg[27]_3 ;
  wire \rem_reg[27]_i_1_n_0 ;
  wire \rem_reg[27]_i_1_n_1 ;
  wire \rem_reg[27]_i_1_n_2 ;
  wire \rem_reg[27]_i_1_n_3 ;
  wire [2:0]\rem_reg[30] ;
  wire [31:0]\rem_reg[31] ;
  wire \rem_reg[31]_0 ;
  wire \rem_reg[31]_1 ;
  wire \rem_reg[31]_2 ;
  wire \rem_reg[31]_3 ;
  wire \rem_reg[31]_4 ;
  wire \rem_reg[31]_i_2_n_1 ;
  wire \rem_reg[31]_i_2_n_2 ;
  wire \rem_reg[31]_i_2_n_3 ;
  wire \rem_reg[3] ;
  wire \rem_reg[3]_0 ;
  wire \rem_reg[3]_1 ;
  wire \rem_reg[3]_2 ;
  wire \rem_reg[3]_i_1_n_0 ;
  wire \rem_reg[3]_i_1_n_1 ;
  wire \rem_reg[3]_i_1_n_2 ;
  wire \rem_reg[3]_i_1_n_3 ;
  wire [3:0]\rem_reg[7] ;
  wire \rem_reg[7]_0 ;
  wire \rem_reg[7]_1 ;
  wire \rem_reg[7]_2 ;
  wire \rem_reg[7]_3 ;
  wire \rem_reg[7]_i_1_n_0 ;
  wire \rem_reg[7]_i_1_n_1 ;
  wire \rem_reg[7]_i_1_n_2 ;
  wire \rem_reg[7]_i_1_n_3 ;
  wire \remden[15]_i_2_n_0 ;
  wire \remden[31]_i_3_n_0 ;
  wire \remden[31]_i_4_n_0 ;
  wire \remden[31]_i_5_n_0 ;
  wire \remden[31]_i_6_n_0 ;
  wire \remden[31]_i_7_n_0 ;
  wire \remden[64]_i_10_n_0 ;
  wire \remden[64]_i_11_n_0 ;
  wire \remden[64]_i_12_n_0 ;
  wire \remden[64]_i_13_n_0 ;
  wire \remden[64]_i_14_n_0 ;
  wire \remden[64]_i_6_n_0 ;
  wire \remden[64]_i_7_n_0 ;
  wire \remden[64]_i_8_n_0 ;
  wire \remden[64]_i_9_n_0 ;
  wire [3:0]\remden_reg[11] ;
  wire [3:0]\remden_reg[15] ;
  wire [3:0]\remden_reg[19] ;
  wire [3:0]\remden_reg[23] ;
  wire [31:0]\remden_reg[27] ;
  wire [3:0]\remden_reg[27]_0 ;
  wire [31:0]\remden_reg[30] ;
  wire [3:0]\remden_reg[31] ;
  wire \remden_reg[64] ;
  wire [3:0]\remden_reg[7] ;
  wire rst_n;
  wire rst_n_0;
  wire set_sgn;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__0_i_1
       (.I0(\rem_reg[31] [7]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[7] [3]));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__0_i_10
       (.I0(\rem_reg[31] [6]),
        .I1(add_out0_carry__6[6]),
        .I2(\rem[31]_i_8_0 [6]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__0_i_11
       (.I0(\rem_reg[31] [5]),
        .I1(add_out0_carry__6[5]),
        .I2(\rem[31]_i_8_0 [5]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__0_i_12
       (.I0(\rem_reg[31] [4]),
        .I1(add_out0_carry__6[4]),
        .I2(\rem[31]_i_8_0 [4]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__0_i_2
       (.I0(\rem_reg[31] [6]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[7] [2]));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__0_i_3
       (.I0(\rem_reg[31] [5]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[7] [1]));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__0_i_4
       (.I0(\rem_reg[31] [4]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[7] [0]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__0_i_5
       (.I0(\rem_reg[7] [3]),
        .I1(Q[7]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[7]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__0_i_9_n_0),
        .O(\remden_reg[7] [3]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__0_i_6
       (.I0(\rem_reg[7] [2]),
        .I1(Q[6]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[6]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__0_i_10_n_0),
        .O(\remden_reg[7] [2]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__0_i_7
       (.I0(\rem_reg[7] [1]),
        .I1(Q[5]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[5]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__0_i_11_n_0),
        .O(\remden_reg[7] [1]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__0_i_8
       (.I0(\rem_reg[7] [0]),
        .I1(Q[4]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[4]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__0_i_12_n_0),
        .O(\remden_reg[7] [0]));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__0_i_9
       (.I0(\rem_reg[31] [7]),
        .I1(add_out0_carry__6[7]),
        .I2(\rem[31]_i_8_0 [7]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__1_i_1
       (.I0(\rem_reg[31] [11]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[11] [3]));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__1_i_10
       (.I0(\rem_reg[31] [10]),
        .I1(add_out0_carry__6[10]),
        .I2(\rem[31]_i_8_0 [10]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__1_i_11
       (.I0(\rem_reg[31] [9]),
        .I1(add_out0_carry__6[9]),
        .I2(\rem[31]_i_8_0 [9]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__1_i_12
       (.I0(\rem_reg[31] [8]),
        .I1(add_out0_carry__6[8]),
        .I2(\rem[31]_i_8_0 [8]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__1_i_12_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__1_i_2
       (.I0(\rem_reg[31] [10]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[11] [2]));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__1_i_3
       (.I0(\rem_reg[31] [9]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[11] [1]));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__1_i_4
       (.I0(\rem_reg[31] [8]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[11] [0]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__1_i_5
       (.I0(\rem_reg[11] [3]),
        .I1(Q[11]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[11]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__1_i_9_n_0),
        .O(\remden_reg[11] [3]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__1_i_6
       (.I0(\rem_reg[11] [2]),
        .I1(Q[10]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[10]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__1_i_10_n_0),
        .O(\remden_reg[11] [2]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__1_i_7
       (.I0(\rem_reg[11] [1]),
        .I1(Q[9]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[9]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__1_i_11_n_0),
        .O(\remden_reg[11] [1]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__1_i_8
       (.I0(\rem_reg[11] [0]),
        .I1(Q[8]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[8]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__1_i_12_n_0),
        .O(\remden_reg[11] [0]));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__1_i_9
       (.I0(\rem_reg[31] [11]),
        .I1(add_out0_carry__6[11]),
        .I2(\rem[31]_i_8_0 [11]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__1_i_9_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__2_i_1
       (.I0(\rem_reg[31] [15]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[15] [3]));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__2_i_10
       (.I0(\rem_reg[31] [14]),
        .I1(add_out0_carry__6[14]),
        .I2(\rem[31]_i_8_0 [14]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__2_i_10_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__2_i_11
       (.I0(\rem_reg[31] [13]),
        .I1(add_out0_carry__6[13]),
        .I2(\rem[31]_i_8_0 [13]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__2_i_11_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__2_i_12
       (.I0(\rem_reg[31] [12]),
        .I1(add_out0_carry__6[12]),
        .I2(\rem[31]_i_8_0 [12]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__2_i_12_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__2_i_2
       (.I0(\rem_reg[31] [14]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[15] [2]));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__2_i_3
       (.I0(\rem_reg[31] [13]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[15] [1]));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__2_i_4
       (.I0(\rem_reg[31] [12]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[15] [0]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__2_i_5
       (.I0(\rem_reg[15] [3]),
        .I1(Q[15]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[15]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__2_i_9_n_0),
        .O(\remden_reg[15] [3]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__2_i_6
       (.I0(\rem_reg[15] [2]),
        .I1(Q[14]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[14]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__2_i_10_n_0),
        .O(\remden_reg[15] [2]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__2_i_7
       (.I0(\rem_reg[15] [1]),
        .I1(Q[13]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[13]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__2_i_11_n_0),
        .O(\remden_reg[15] [1]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__2_i_8
       (.I0(\rem_reg[15] [0]),
        .I1(Q[12]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[12]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__2_i_12_n_0),
        .O(\remden_reg[15] [0]));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__2_i_9
       (.I0(\rem_reg[31] [15]),
        .I1(add_out0_carry__6[15]),
        .I2(\rem[31]_i_8_0 [15]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__2_i_9_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__3_i_1
       (.I0(\rem_reg[31] [19]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[19] [3]));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__3_i_10
       (.I0(\rem_reg[31] [18]),
        .I1(add_out0_carry__6[18]),
        .I2(\rem[31]_i_8_0 [18]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__3_i_10_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__3_i_11
       (.I0(\rem_reg[31] [17]),
        .I1(add_out0_carry__6[17]),
        .I2(\rem[31]_i_8_0 [17]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__3_i_11_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__3_i_12
       (.I0(\rem_reg[31] [16]),
        .I1(add_out0_carry__6[16]),
        .I2(\rem[31]_i_8_0 [16]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__3_i_12_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__3_i_2
       (.I0(\rem_reg[31] [18]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[19] [2]));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__3_i_3
       (.I0(\rem_reg[31] [17]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[19] [1]));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__3_i_4
       (.I0(\rem_reg[31] [16]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[19] [0]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__3_i_5
       (.I0(\rem_reg[19] [3]),
        .I1(Q[19]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[19]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__3_i_9_n_0),
        .O(\remden_reg[19] [3]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__3_i_6
       (.I0(\rem_reg[19] [2]),
        .I1(Q[18]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[18]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__3_i_10_n_0),
        .O(\remden_reg[19] [2]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__3_i_7
       (.I0(\rem_reg[19] [1]),
        .I1(Q[17]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[17]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__3_i_11_n_0),
        .O(\remden_reg[19] [1]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__3_i_8
       (.I0(\rem_reg[19] [0]),
        .I1(Q[16]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[16]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__3_i_12_n_0),
        .O(\remden_reg[19] [0]));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__3_i_9
       (.I0(\rem_reg[31] [19]),
        .I1(add_out0_carry__6[19]),
        .I2(\rem[31]_i_8_0 [19]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__3_i_9_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__4_i_1
       (.I0(\rem_reg[31] [23]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[23] [3]));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__4_i_10
       (.I0(\rem_reg[31] [22]),
        .I1(add_out0_carry__6[22]),
        .I2(\rem[31]_i_8_0 [22]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__4_i_10_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__4_i_11
       (.I0(\rem_reg[31] [21]),
        .I1(add_out0_carry__6[21]),
        .I2(\rem[31]_i_8_0 [21]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__4_i_11_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__4_i_12
       (.I0(\rem_reg[31] [20]),
        .I1(add_out0_carry__6[20]),
        .I2(\rem[31]_i_8_0 [20]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__4_i_12_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__4_i_2
       (.I0(\rem_reg[31] [22]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[23] [2]));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__4_i_3
       (.I0(\rem_reg[31] [21]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[23] [1]));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__4_i_4
       (.I0(\rem_reg[31] [20]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[23] [0]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__4_i_5
       (.I0(\rem_reg[23] [3]),
        .I1(Q[23]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[23]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__4_i_9_n_0),
        .O(\remden_reg[23] [3]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__4_i_6
       (.I0(\rem_reg[23] [2]),
        .I1(Q[22]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[22]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__4_i_10_n_0),
        .O(\remden_reg[23] [2]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__4_i_7
       (.I0(\rem_reg[23] [1]),
        .I1(Q[21]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[21]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__4_i_11_n_0),
        .O(\remden_reg[23] [1]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__4_i_8
       (.I0(\rem_reg[23] [0]),
        .I1(Q[20]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[20]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__4_i_12_n_0),
        .O(\remden_reg[23] [0]));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__4_i_9
       (.I0(\rem_reg[31] [23]),
        .I1(add_out0_carry__6[23]),
        .I2(\rem[31]_i_8_0 [23]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__4_i_9_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__5_i_1
       (.I0(\rem_reg[31] [27]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[27] [3]));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__5_i_10
       (.I0(\rem_reg[31] [26]),
        .I1(add_out0_carry__6[26]),
        .I2(\rem[31]_i_8_0 [26]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__5_i_10_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__5_i_11
       (.I0(\rem_reg[31] [25]),
        .I1(add_out0_carry__6[25]),
        .I2(\rem[31]_i_8_0 [25]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__5_i_11_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__5_i_12
       (.I0(\rem_reg[31] [24]),
        .I1(add_out0_carry__6[24]),
        .I2(\rem[31]_i_8_0 [24]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__5_i_12_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__5_i_2
       (.I0(\rem_reg[31] [26]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[27] [2]));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__5_i_3
       (.I0(\rem_reg[31] [25]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[27] [1]));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__5_i_4
       (.I0(\rem_reg[31] [24]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[27] [0]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__5_i_5
       (.I0(\rem_reg[27] [3]),
        .I1(Q[27]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[27]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__5_i_9_n_0),
        .O(\remden_reg[27]_0 [3]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__5_i_6
       (.I0(\rem_reg[27] [2]),
        .I1(Q[26]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[26]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__5_i_10_n_0),
        .O(\remden_reg[27]_0 [2]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__5_i_7
       (.I0(\rem_reg[27] [1]),
        .I1(Q[25]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[25]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__5_i_11_n_0),
        .O(\remden_reg[27]_0 [1]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__5_i_8
       (.I0(\rem_reg[27] [0]),
        .I1(Q[24]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[24]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__5_i_12_n_0),
        .O(\remden_reg[27]_0 [0]));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__5_i_9
       (.I0(\rem_reg[31] [27]),
        .I1(add_out0_carry__6[27]),
        .I2(\rem[31]_i_8_0 [27]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__5_i_9_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__6_i_1
       (.I0(\rem_reg[31] [30]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[30] [2]));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__6_i_10
       (.I0(\rem_reg[31] [30]),
        .I1(add_out0_carry__6[30]),
        .I2(\rem[31]_i_8_0 [30]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__6_i_10_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__6_i_11
       (.I0(\rem_reg[31] [29]),
        .I1(add_out0_carry__6[29]),
        .I2(\rem[31]_i_8_0 [29]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__6_i_11_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__6_i_12
       (.I0(\rem_reg[31] [28]),
        .I1(add_out0_carry__6[28]),
        .I2(\rem[31]_i_8_0 [28]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__6_i_12_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__6_i_2
       (.I0(\rem_reg[31] [29]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[30] [1]));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry__6_i_3
       (.I0(\rem_reg[31] [28]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(\rem_reg[30] [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAA65AA6565)) 
    add_out0_carry__6_i_4
       (.I0(add_out0_carry__6_i_8_n_0),
        .I1(Q[31]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[31]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__6_i_9_n_0),
        .O(\remden_reg[31] [3]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__6_i_5
       (.I0(\rem_reg[30] [2]),
        .I1(Q[30]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[30]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__6_i_10_n_0),
        .O(\remden_reg[31] [2]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__6_i_6
       (.I0(\rem_reg[30] [1]),
        .I1(Q[29]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[29]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__6_i_11_n_0),
        .O(\remden_reg[31] [1]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry__6_i_7
       (.I0(\rem_reg[30] [0]),
        .I1(Q[28]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[28]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry__6_i_12_n_0),
        .O(\remden_reg[31] [0]));
  LUT4 #(
    .INIT(16'hDFFF)) 
    add_out0_carry__6_i_8
       (.I0(dctl_cmd_0[0]),
        .I1(dctl_cmd_0[1]),
        .I2(dctl_cmd_0[2]),
        .I3(\rem_reg[31] [31]),
        .O(add_out0_carry__6_i_8_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry__6_i_9
       (.I0(\rem_reg[31] [31]),
        .I1(add_out0_carry__6[31]),
        .I2(\rem[31]_i_8_0 [31]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry__6_i_9_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry_i_1
       (.I0(\rem_reg[31] [3]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(DI[2]));
  LUT3 #(
    .INIT(8'h02)) 
    add_out0_carry_i_10
       (.I0(dctl_cmd_0[1]),
        .I1(dctl_cmd_0[2]),
        .I2(dctl_cmd_0[0]),
        .O(add_out0_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry_i_11
       (.I0(\rem_reg[31] [3]),
        .I1(add_out0_carry__6[3]),
        .I2(\rem[31]_i_8_0 [3]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry_i_12
       (.I0(\rem_reg[31] [2]),
        .I1(add_out0_carry__6[2]),
        .I2(\rem[31]_i_8_0 [2]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry_i_13
       (.I0(\rem_reg[31] [1]),
        .I1(add_out0_carry__6[1]),
        .I2(\rem[31]_i_8_0 [1]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h00CC0F0000550000)) 
    add_out0_carry_i_14
       (.I0(\rem_reg[31] [0]),
        .I1(add_out0_carry__6[0]),
        .I2(\rem[31]_i_8_0 [0]),
        .I3(dctl_cmd_0[1]),
        .I4(dctl_cmd_0[2]),
        .I5(dctl_cmd_0[0]),
        .O(add_out0_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry_i_2
       (.I0(\rem_reg[31] [2]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h0800)) 
    add_out0_carry_i_3
       (.I0(\rem_reg[31] [1]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h3B3C)) 
    add_out0_carry_i_4
       (.I0(\rem_reg[31] [0]),
        .I1(dctl_cmd_0[2]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[0]),
        .O(\rem_reg[0] ));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry_i_5
       (.I0(DI[2]),
        .I1(Q[3]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[3]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry_i_11_n_0),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry_i_6
       (.I0(DI[1]),
        .I1(Q[2]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[2]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry_i_12_n_0),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry_i_7
       (.I0(DI[0]),
        .I1(Q[1]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[1]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry_i_13_n_0),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    add_out0_carry_i_8
       (.I0(\rem_reg[0] ),
        .I1(Q[0]),
        .I2(add_out0_carry_i_9_n_0),
        .I3(add_out0_carry__6[0]),
        .I4(add_out0_carry_i_10_n_0),
        .I5(add_out0_carry_i_14_n_0),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h04)) 
    add_out0_carry_i_9
       (.I0(dctl_cmd_0[1]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[2]),
        .O(add_out0_carry_i_9_n_0));
  LUT5 #(
    .INIT(32'h28FF2800)) 
    chg_quo_sgn_i_1
       (.I0(dctl_sign),
        .I1(dso_msb),
        .I2(Q[31]),
        .I3(set_sgn),
        .I4(chg_quo_sgn),
        .O(chg_quo_sgn_i_1_n_0));
  FDRE chg_quo_sgn_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(chg_quo_sgn_i_1_n_0),
        .Q(chg_quo_sgn),
        .R(SR));
  LUT4 #(
    .INIT(16'h8F80)) 
    chg_rem_sgn_i_1
       (.I0(dctl_sign),
        .I1(Q[31]),
        .I2(set_sgn),
        .I3(chg_rem_sgn),
        .O(chg_rem_sgn_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000A0040000A000)) 
    chg_rem_sgn_i_2
       (.I0(dctl_stat[2]),
        .I1(\dctl_stat_reg[2]_0 ),
        .I2(dctl_stat[3]),
        .I3(dctl_stat[0]),
        .I4(dctl_stat[1]),
        .I5(dctl_start__1),
        .O(set_sgn));
  FDRE chg_rem_sgn_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(chg_rem_sgn_i_1_n_0),
        .Q(chg_rem_sgn),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000FFFF00008000)) 
    crdy_i_2
       (.I0(crdy_i_3_n_0),
        .I1(crdy_i_4_n_0),
        .I2(crdy_i_5_n_0),
        .I3(crdy_i_6_n_0),
        .I4(dctl_start__1),
        .I5(dctl_sign_f_reg),
        .O(crdy_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    crdy_i_3
       (.I0(dctl_sign),
        .I1(chg_rem_sgn),
        .I2(chg_quo_sgn),
        .I3(dctl_stat[0]),
        .I4(\dctl_stat_reg[2]_0 ),
        .I5(dctl_stat[2]),
        .O(crdy_i_3_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    crdy_i_4
       (.I0(\dctl_stat_reg[2]_0 ),
        .I1(dctl_stat[2]),
        .I2(dctl_stat[0]),
        .O(crdy_i_4_n_0));
  LUT4 #(
    .INIT(16'h1288)) 
    crdy_i_5
       (.I0(dctl_stat[1]),
        .I1(dctl_stat[0]),
        .I2(dctl_stat[2]),
        .I3(dctl_stat[3]),
        .O(crdy_i_5_n_0));
  LUT5 #(
    .INIT(32'h0DDDFFFF)) 
    crdy_i_6
       (.I0(fdiv_rem_msb_f),
        .I1(dctl_stat[1]),
        .I2(dctl_sign),
        .I3(dctl_stat[0]),
        .I4(chg_quo_sgn),
        .O(crdy_i_6_n_0));
  LUT4 #(
    .INIT(16'h4004)) 
    crdy_i_7
       (.I0(ccmd[4]),
        .I1(ccmd[3]),
        .I2(ccmd[1]),
        .I3(ccmd[2]),
        .O(dctl_start__1));
  LUT6 #(
    .INIT(64'h0082FFFF00820000)) 
    dctl_sign_f_i_1
       (.I0(dctl_sign_f_i_2_n_0),
        .I1(ccmd[1]),
        .I2(ccmd[2]),
        .I3(ccmd[4]),
        .I4(dctl_sign_f_reg),
        .I5(dctl_sign_f),
        .O(dctl_sign));
  LUT2 #(
    .INIT(4'h8)) 
    dctl_sign_f_i_2
       (.I0(ccmd[0]),
        .I1(ccmd[3]),
        .O(dctl_sign_f_i_2_n_0));
  LUT6 #(
    .INIT(64'hEFEEEEEEEEEEEEEE)) 
    \dctl_stat[0]_i_1 
       (.I0(\dctl_stat[0]_i_2_n_0 ),
        .I1(\dctl_stat[0]_i_3_n_0 ),
        .I2(dctl_stat[0]),
        .I3(chg_quo_sgn),
        .I4(chg_rem_sgn),
        .I5(\dctl_stat[0]_i_4_n_0 ),
        .O(dctl_next[0]));
  LUT5 #(
    .INIT(32'h501A101A)) 
    \dctl_stat[0]_i_2 
       (.I0(dctl_stat[1]),
        .I1(dctl_stat[2]),
        .I2(dctl_stat[3]),
        .I3(dctl_stat[0]),
        .I4(\dctl_stat[0]_i_5_n_0 ),
        .O(\dctl_stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000F0B00000F000)) 
    \dctl_stat[0]_i_3 
       (.I0(\dctl_stat[0]_i_5_n_0 ),
        .I1(\dctl_stat_reg[2]_0 ),
        .I2(\dctl_stat[0]_i_6_n_0 ),
        .I3(dctl_stat[2]),
        .I4(dctl_stat[1]),
        .I5(dctl_start__1),
        .O(\dctl_stat[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dctl_stat[0]_i_4 
       (.I0(dctl_stat[3]),
        .I1(dctl_stat[2]),
        .O(\dctl_stat[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF757F7F7F7F7F7F7)) 
    \dctl_stat[0]_i_5 
       (.I0(Q[31]),
        .I1(dctl_sign_f),
        .I2(dctl_sign_f_reg),
        .I3(ccmd[4]),
        .I4(\dctl_stat[0]_i_7_n_0 ),
        .I5(dctl_sign_f_i_2_n_0),
        .O(\dctl_stat[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00007D55)) 
    \dctl_stat[0]_i_6 
       (.I0(dctl_stat[3]),
        .I1(fdiv_rem_msb_f),
        .I2(chg_quo_sgn),
        .I3(chg_rem_sgn),
        .I4(dctl_stat[0]),
        .O(\dctl_stat[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dctl_stat[0]_i_7 
       (.I0(ccmd[2]),
        .I1(ccmd[1]),
        .O(\dctl_stat[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF003B3380)) 
    \dctl_stat[1]_i_1 
       (.I0(\dctl_stat[3]_i_6_n_0 ),
        .I1(dctl_stat[3]),
        .I2(dctl_stat[2]),
        .I3(dctl_stat[0]),
        .I4(dctl_stat[1]),
        .I5(\dctl_stat[3]_i_4_n_0 ),
        .O(dctl_next[1]));
  LUT6 #(
    .INIT(64'h0F0A0A0B0F0A0A0A)) 
    \dctl_stat[2]_i_1 
       (.I0(dctl_stat[2]),
        .I1(\dctl_stat_reg[2]_0 ),
        .I2(dctl_stat[3]),
        .I3(dctl_stat[0]),
        .I4(dctl_stat[1]),
        .I5(dctl_start__1),
        .O(dctl_next[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \dctl_stat[3]_i_1 
       (.I0(\dctl_stat[3]_i_2_n_0 ),
        .I1(dctl_load_rem),
        .I2(\dctl_stat[3]_i_4_n_0 ),
        .I3(\dctl_stat[3]_i_5_n_0 ),
        .I4(\dctl_stat[3]_i_6_n_0 ),
        .I5(\dctl_stat[3]_i_7_n_0 ),
        .O(dctl_next[3]));
  LUT6 #(
    .INIT(64'h0404000004000000)) 
    \dctl_stat[3]_i_2 
       (.I0(\dctl_stat[3]_i_8_n_0 ),
        .I1(dctl_stat[0]),
        .I2(dctl_stat[1]),
        .I3(Q[31]),
        .I4(dctl_sign),
        .I5(dso_msb),
        .O(\dctl_stat[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40004040)) 
    \dctl_stat[3]_i_3 
       (.I0(dctl_stat[3]),
        .I1(dctl_stat[1]),
        .I2(dctl_stat[0]),
        .I3(dctl_stat[2]),
        .I4(\dctl_stat_reg[2]_0 ),
        .O(dctl_load_rem));
  LUT6 #(
    .INIT(64'h00000000000000A8)) 
    \dctl_stat[3]_i_4 
       (.I0(fdiv_rem_msb_f),
        .I1(chg_quo_sgn),
        .I2(chg_rem_sgn),
        .I3(\dctl_stat[3]_i_8_n_0 ),
        .I4(dctl_stat[0]),
        .I5(dctl_stat[1]),
        .O(\dctl_stat[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0E0F000F0)) 
    \dctl_stat[3]_i_5 
       (.I0(dso_msb),
        .I1(Q[31]),
        .I2(\dctl_stat[3]_i_9_n_0 ),
        .I3(\dctl_stat_reg[2]_0 ),
        .I4(dctl_sign),
        .I5(dctl_stat[3]),
        .O(\dctl_stat[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dctl_stat[3]_i_6 
       (.I0(chg_quo_sgn),
        .I1(chg_rem_sgn),
        .O(\dctl_stat[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0208)) 
    \dctl_stat[3]_i_7 
       (.I0(dctl_stat[3]),
        .I1(dctl_stat[2]),
        .I2(dctl_stat[0]),
        .I3(dctl_stat[1]),
        .O(\dctl_stat[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \dctl_stat[3]_i_8 
       (.I0(dctl_stat[3]),
        .I1(dctl_stat[2]),
        .O(\dctl_stat[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000032)) 
    \dctl_stat[3]_i_9 
       (.I0(dctl_stat[3]),
        .I1(dctl_stat[2]),
        .I2(dctl_start__1),
        .I3(dctl_stat[1]),
        .I4(dctl_stat[0]),
        .O(\dctl_stat[3]_i_9_n_0 ));
  FDRE \dctl_stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(dctl_next[0]),
        .Q(dctl_stat[0]),
        .R(SR));
  FDRE \dctl_stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(dctl_next[1]),
        .Q(dctl_stat[1]),
        .R(SR));
  FDRE \dctl_stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(dctl_next[2]),
        .Q(dctl_stat[2]),
        .R(SR));
  FDRE \dctl_stat_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(dctl_next[3]),
        .Q(dctl_stat[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \dso[11]_i_10 
       (.I0(add_out[11]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[2]),
        .I3(dctl_cmd_0[1]),
        .I4(\dctl_stat_reg[2]_0 ),
        .I5(bbus[11]),
        .O(\dso[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \dso[11]_i_11 
       (.I0(add_out[10]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[2]),
        .I3(dctl_cmd_0[1]),
        .I4(\dctl_stat_reg[2]_0 ),
        .I5(bbus[10]),
        .O(\dso[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \dso[11]_i_12 
       (.I0(add_out[9]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[2]),
        .I3(dctl_cmd_0[1]),
        .I4(\dctl_stat_reg[2]_0 ),
        .I5(bbus[9]),
        .O(\dso[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \dso[11]_i_13 
       (.I0(add_out[8]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[2]),
        .I3(dctl_cmd_0[1]),
        .I4(\dctl_stat_reg[2]_0 ),
        .I5(bbus[8]),
        .O(\dso[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[11]_i_2 
       (.I0(Q[11]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[11]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__1_i_9_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[11]_i_3 
       (.I0(Q[10]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[10]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__1_i_10_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[11]_i_4 
       (.I0(Q[9]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[9]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__1_i_11_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[11]_i_5 
       (.I0(Q[8]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[8]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__1_i_12_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEF011F0EEF0EEF0)) 
    \dso[11]_i_6 
       (.I0(add_out0_carry__1_i_9_n_0),
        .I1(\rem[11]_i_10_n_0 ),
        .I2(\dso[11]_i_10_n_0 ),
        .I3(\dso[31]_i_4_n_0 ),
        .I4(\rem[31]_i_13_n_0 ),
        .I5(\rem_reg[31] [11]),
        .O(\dso[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEF011F0EEF0EEF0)) 
    \dso[11]_i_7 
       (.I0(add_out0_carry__1_i_10_n_0),
        .I1(\rem[11]_i_12_n_0 ),
        .I2(\dso[11]_i_11_n_0 ),
        .I3(\dso[31]_i_4_n_0 ),
        .I4(\rem[31]_i_13_n_0 ),
        .I5(\rem_reg[31] [10]),
        .O(\dso[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEEF011F0EEF0EEF0)) 
    \dso[11]_i_8 
       (.I0(add_out0_carry__1_i_11_n_0),
        .I1(\rem[11]_i_14_n_0 ),
        .I2(\dso[11]_i_12_n_0 ),
        .I3(\dso[31]_i_4_n_0 ),
        .I4(\rem[31]_i_13_n_0 ),
        .I5(\rem_reg[31] [9]),
        .O(\dso[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEF011F0EEF0EEF0)) 
    \dso[11]_i_9 
       (.I0(add_out0_carry__1_i_12_n_0),
        .I1(\rem[11]_i_16_n_0 ),
        .I2(\dso[11]_i_13_n_0 ),
        .I3(\dso[31]_i_4_n_0 ),
        .I4(\rem[31]_i_13_n_0 ),
        .I5(\rem_reg[31] [8]),
        .O(\dso[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \dso[15]_i_10 
       (.I0(add_out[15]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[2]),
        .I3(dctl_cmd_0[1]),
        .I4(\dctl_stat_reg[2]_0 ),
        .I5(bbus[15]),
        .O(\dso[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \dso[15]_i_11 
       (.I0(add_out[14]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[2]),
        .I3(dctl_cmd_0[1]),
        .I4(\dctl_stat_reg[2]_0 ),
        .I5(bbus[14]),
        .O(\dso[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \dso[15]_i_12 
       (.I0(add_out[13]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[2]),
        .I3(dctl_cmd_0[1]),
        .I4(\dctl_stat_reg[2]_0 ),
        .I5(bbus[13]),
        .O(\dso[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \dso[15]_i_13 
       (.I0(add_out[12]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[2]),
        .I3(dctl_cmd_0[1]),
        .I4(\dctl_stat_reg[2]_0 ),
        .I5(bbus[12]),
        .O(\dso[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[15]_i_2 
       (.I0(Q[15]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[15]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__2_i_9_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[15]_i_3 
       (.I0(Q[14]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[14]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__2_i_10_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[15]_i_4 
       (.I0(Q[13]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[13]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__2_i_11_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[15]_i_5 
       (.I0(Q[12]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[12]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__2_i_12_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEF011F0EEF0EEF0)) 
    \dso[15]_i_6 
       (.I0(add_out0_carry__2_i_9_n_0),
        .I1(\rem[15]_i_10_n_0 ),
        .I2(\dso[15]_i_10_n_0 ),
        .I3(\dso[31]_i_4_n_0 ),
        .I4(\rem[31]_i_13_n_0 ),
        .I5(\rem_reg[31] [15]),
        .O(\dso[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEF011F0EEF0EEF0)) 
    \dso[15]_i_7 
       (.I0(add_out0_carry__2_i_10_n_0),
        .I1(\rem[15]_i_12_n_0 ),
        .I2(\dso[15]_i_11_n_0 ),
        .I3(\dso[31]_i_4_n_0 ),
        .I4(\rem[31]_i_13_n_0 ),
        .I5(\rem_reg[31] [14]),
        .O(\dso[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEEF011F0EEF0EEF0)) 
    \dso[15]_i_8 
       (.I0(add_out0_carry__2_i_11_n_0),
        .I1(\rem[15]_i_14_n_0 ),
        .I2(\dso[15]_i_12_n_0 ),
        .I3(\dso[31]_i_4_n_0 ),
        .I4(\rem[31]_i_13_n_0 ),
        .I5(\rem_reg[31] [13]),
        .O(\dso[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEF011F0EEF0EEF0)) 
    \dso[15]_i_9 
       (.I0(add_out0_carry__2_i_12_n_0),
        .I1(\rem[15]_i_16_n_0 ),
        .I2(\dso[15]_i_13_n_0 ),
        .I3(\dso[31]_i_4_n_0 ),
        .I4(\rem[31]_i_13_n_0 ),
        .I5(\rem_reg[31] [12]),
        .O(\dso[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[19]_i_2 
       (.I0(Q[19]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[19]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__3_i_9_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[19]_i_3 
       (.I0(Q[18]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[18]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__3_i_10_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[19]_i_4 
       (.I0(Q[17]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[17]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__3_i_11_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[19]_i_5 
       (.I0(Q[16]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[16]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__3_i_12_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111F000EEEEF000)) 
    \dso[19]_i_6 
       (.I0(add_out0_carry__3_i_9_n_0),
        .I1(\rem[19]_i_10_n_0 ),
        .I2(abus[3]),
        .I3(\dso[31]_i_14_n_0 ),
        .I4(\dso[31]_i_4_n_0 ),
        .I5(\rem_reg[19] [3]),
        .O(\dso[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1111F000EEEEF000)) 
    \dso[19]_i_7 
       (.I0(add_out0_carry__3_i_10_n_0),
        .I1(\rem[19]_i_12_n_0 ),
        .I2(abus[2]),
        .I3(\dso[31]_i_14_n_0 ),
        .I4(\dso[31]_i_4_n_0 ),
        .I5(\rem_reg[19] [2]),
        .O(\dso[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1111F000EEEEF000)) 
    \dso[19]_i_8 
       (.I0(add_out0_carry__3_i_11_n_0),
        .I1(\rem[19]_i_14_n_0 ),
        .I2(abus[1]),
        .I3(\dso[31]_i_14_n_0 ),
        .I4(\dso[31]_i_4_n_0 ),
        .I5(\rem_reg[19] [1]),
        .O(\dso[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1111F000EEEEF000)) 
    \dso[19]_i_9 
       (.I0(add_out0_carry__3_i_12_n_0),
        .I1(\rem[19]_i_16_n_0 ),
        .I2(abus[0]),
        .I3(\dso[31]_i_14_n_0 ),
        .I4(\dso[31]_i_4_n_0 ),
        .I5(\rem_reg[19] [0]),
        .O(\dso[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[23]_i_2 
       (.I0(Q[23]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[23]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__4_i_9_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[23]_i_3 
       (.I0(Q[22]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[22]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__4_i_10_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[23]_i_4 
       (.I0(Q[21]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[21]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__4_i_11_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[23]_i_5 
       (.I0(Q[20]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[20]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__4_i_12_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111F000EEEEF000)) 
    \dso[23]_i_6 
       (.I0(add_out0_carry__4_i_9_n_0),
        .I1(\rem[23]_i_10_n_0 ),
        .I2(abus[7]),
        .I3(\dso[31]_i_14_n_0 ),
        .I4(\dso[31]_i_4_n_0 ),
        .I5(\rem_reg[23] [3]),
        .O(\dso[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1111F000EEEEF000)) 
    \dso[23]_i_7 
       (.I0(add_out0_carry__4_i_10_n_0),
        .I1(\rem[23]_i_12_n_0 ),
        .I2(abus[6]),
        .I3(\dso[31]_i_14_n_0 ),
        .I4(\dso[31]_i_4_n_0 ),
        .I5(\rem_reg[23] [2]),
        .O(\dso[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1111F000EEEEF000)) 
    \dso[23]_i_8 
       (.I0(add_out0_carry__4_i_11_n_0),
        .I1(\rem[23]_i_14_n_0 ),
        .I2(abus[5]),
        .I3(\dso[31]_i_14_n_0 ),
        .I4(\dso[31]_i_4_n_0 ),
        .I5(\rem_reg[23] [1]),
        .O(\dso[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1111F000EEEEF000)) 
    \dso[23]_i_9 
       (.I0(add_out0_carry__4_i_12_n_0),
        .I1(\rem[23]_i_16_n_0 ),
        .I2(abus[4]),
        .I3(\dso[31]_i_14_n_0 ),
        .I4(\dso[31]_i_4_n_0 ),
        .I5(\rem_reg[23] [0]),
        .O(\dso[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[27]_i_2 
       (.I0(Q[27]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[27]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__5_i_9_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[27]_i_3 
       (.I0(Q[26]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[26]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__5_i_10_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[27]_i_4 
       (.I0(Q[25]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[25]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__5_i_11_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[27]_i_5 
       (.I0(Q[24]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[24]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__5_i_12_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111F000EEEEF000)) 
    \dso[27]_i_6 
       (.I0(add_out0_carry__5_i_9_n_0),
        .I1(\rem[27]_i_10_n_0 ),
        .I2(abus[11]),
        .I3(\dso[31]_i_14_n_0 ),
        .I4(\dso[31]_i_4_n_0 ),
        .I5(\rem_reg[27] [3]),
        .O(\dso[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1111F000EEEEF000)) 
    \dso[27]_i_7 
       (.I0(add_out0_carry__5_i_10_n_0),
        .I1(\rem[27]_i_12_n_0 ),
        .I2(abus[10]),
        .I3(\dso[31]_i_14_n_0 ),
        .I4(\dso[31]_i_4_n_0 ),
        .I5(\rem_reg[27] [2]),
        .O(\dso[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1111F000EEEEF000)) 
    \dso[27]_i_8 
       (.I0(add_out0_carry__5_i_11_n_0),
        .I1(\rem[27]_i_14_n_0 ),
        .I2(abus[9]),
        .I3(\dso[31]_i_14_n_0 ),
        .I4(\dso[31]_i_4_n_0 ),
        .I5(\rem_reg[27] [1]),
        .O(\dso[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1111F000EEEEF000)) 
    \dso[27]_i_9 
       (.I0(add_out0_carry__5_i_12_n_0),
        .I1(\rem[27]_i_16_n_0 ),
        .I2(abus[8]),
        .I3(\dso[31]_i_14_n_0 ),
        .I4(\dso[31]_i_4_n_0 ),
        .I5(\rem_reg[27] [0]),
        .O(\dso[27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFEFEFEFEFE)) 
    \dso[31]_i_1 
       (.I0(\rdso/dso1__0 ),
        .I1(\dso[31]_i_4_n_0 ),
        .I2(dctl_dvw_wr),
        .I3(ccmd[3]),
        .I4(ccmd[0]),
        .I5(\dso_reg[31] ),
        .O(\ccmd[3] ));
  LUT6 #(
    .INIT(64'hEEEEF0001111F000)) 
    \dso[31]_i_10 
       (.I0(add_out0_carry__6_i_9_n_0),
        .I1(\rem[31]_i_12_n_0 ),
        .I2(abus[15]),
        .I3(\dso[31]_i_14_n_0 ),
        .I4(\dso[31]_i_4_n_0 ),
        .I5(add_out0_carry__6_i_8_n_0),
        .O(\dso[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1111F000EEEEF000)) 
    \dso[31]_i_11 
       (.I0(add_out0_carry__6_i_10_n_0),
        .I1(\rem[31]_i_15_n_0 ),
        .I2(abus[14]),
        .I3(\dso[31]_i_14_n_0 ),
        .I4(\dso[31]_i_4_n_0 ),
        .I5(\rem_reg[30] [2]),
        .O(\dso[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h1111F000EEEEF000)) 
    \dso[31]_i_12 
       (.I0(add_out0_carry__6_i_11_n_0),
        .I1(\rem[31]_i_17_n_0 ),
        .I2(abus[13]),
        .I3(\dso[31]_i_14_n_0 ),
        .I4(\dso[31]_i_4_n_0 ),
        .I5(\rem_reg[30] [1]),
        .O(\dso[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h1111F000EEEEF000)) 
    \dso[31]_i_13 
       (.I0(add_out0_carry__6_i_12_n_0),
        .I1(\rem[31]_i_19_n_0 ),
        .I2(abus[12]),
        .I3(\dso[31]_i_14_n_0 ),
        .I4(\dso[31]_i_4_n_0 ),
        .I5(\rem_reg[30] [0]),
        .O(\dso[31]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \dso[31]_i_14 
       (.I0(dctl_dso_wr),
        .I1(\dctl_stat_reg[2]_0 ),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\dso[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \dso[31]_i_3 
       (.I0(dctl_cmd_0[0]),
        .I1(dctl_cmd_0[2]),
        .I2(dctl_cmd_0[1]),
        .I3(\dctl_stat_reg[2]_0 ),
        .O(\rdso/dso1__0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \dso[31]_i_4 
       (.I0(\dctl_stat_reg[2]_0 ),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[2]),
        .I3(dctl_cmd_0[1]),
        .O(\dso[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[31]_i_7 
       (.I0(Q[30]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[30]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__6_i_10_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[31]_i_8 
       (.I0(Q[29]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[29]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__6_i_11_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[31]_i_9 
       (.I0(Q[28]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[28]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__6_i_12_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \dso[3]_i_10 
       (.I0(add_out[3]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[2]),
        .I3(dctl_cmd_0[1]),
        .I4(\dctl_stat_reg[2]_0 ),
        .I5(bbus[3]),
        .O(\dso[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \dso[3]_i_11 
       (.I0(add_out[2]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[2]),
        .I3(dctl_cmd_0[1]),
        .I4(\dctl_stat_reg[2]_0 ),
        .I5(bbus[2]),
        .O(\dso[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \dso[3]_i_12 
       (.I0(add_out[1]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[2]),
        .I3(dctl_cmd_0[1]),
        .I4(\dctl_stat_reg[2]_0 ),
        .I5(bbus[1]),
        .O(\dso[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \dso[3]_i_13 
       (.I0(add_out[0]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[2]),
        .I3(dctl_cmd_0[1]),
        .I4(\dctl_stat_reg[2]_0 ),
        .I5(bbus[0]),
        .O(\dso[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[3]_i_2 
       (.I0(Q[3]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[3]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry_i_11_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[3]_i_3 
       (.I0(Q[2]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[2]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry_i_12_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[3]_i_4 
       (.I0(Q[1]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[1]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry_i_13_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[3]_i_5 
       (.I0(Q[0]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[0]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry_i_14_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEF011F0EEF0EEF0)) 
    \dso[3]_i_6 
       (.I0(add_out0_carry_i_11_n_0),
        .I1(\rem[3]_i_10_n_0 ),
        .I2(\dso[3]_i_10_n_0 ),
        .I3(\dso[31]_i_4_n_0 ),
        .I4(\rem[31]_i_13_n_0 ),
        .I5(\rem_reg[31] [3]),
        .O(\dso[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEF011F0EEF0EEF0)) 
    \dso[3]_i_7 
       (.I0(add_out0_carry_i_12_n_0),
        .I1(\rem[3]_i_12_n_0 ),
        .I2(\dso[3]_i_11_n_0 ),
        .I3(\dso[31]_i_4_n_0 ),
        .I4(\rem[31]_i_13_n_0 ),
        .I5(\rem_reg[31] [2]),
        .O(\dso[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEEF011F0EEF0EEF0)) 
    \dso[3]_i_8 
       (.I0(add_out0_carry_i_13_n_0),
        .I1(\rem[3]_i_14_n_0 ),
        .I2(\dso[3]_i_12_n_0 ),
        .I3(\dso[31]_i_4_n_0 ),
        .I4(\rem[31]_i_13_n_0 ),
        .I5(\rem_reg[31] [1]),
        .O(\dso[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h11F0EEF0)) 
    \dso[3]_i_9 
       (.I0(add_out0_carry_i_14_n_0),
        .I1(\rem[3]_i_16_n_0 ),
        .I2(\dso[3]_i_13_n_0 ),
        .I3(\dso[31]_i_4_n_0 ),
        .I4(\rem_reg[0] ),
        .O(\dso[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \dso[7]_i_10 
       (.I0(add_out[7]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[2]),
        .I3(dctl_cmd_0[1]),
        .I4(\dctl_stat_reg[2]_0 ),
        .I5(bbus[7]),
        .O(\dso[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \dso[7]_i_11 
       (.I0(add_out[6]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[2]),
        .I3(dctl_cmd_0[1]),
        .I4(\dctl_stat_reg[2]_0 ),
        .I5(bbus[6]),
        .O(\dso[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \dso[7]_i_12 
       (.I0(add_out[5]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[2]),
        .I3(dctl_cmd_0[1]),
        .I4(\dctl_stat_reg[2]_0 ),
        .I5(bbus[5]),
        .O(\dso[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \dso[7]_i_13 
       (.I0(add_out[4]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[2]),
        .I3(dctl_cmd_0[1]),
        .I4(\dctl_stat_reg[2]_0 ),
        .I5(bbus[4]),
        .O(\dso[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[7]_i_2 
       (.I0(Q[7]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[7]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__0_i_9_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[7]_i_3 
       (.I0(Q[6]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[6]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__0_i_10_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[7]_i_4 
       (.I0(Q[5]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[5]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__0_i_11_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \dso[7]_i_5 
       (.I0(Q[4]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[4]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__0_i_12_n_0),
        .I5(\dso[31]_i_4_n_0 ),
        .O(\dso[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEF011F0EEF0EEF0)) 
    \dso[7]_i_6 
       (.I0(add_out0_carry__0_i_9_n_0),
        .I1(\rem[7]_i_10_n_0 ),
        .I2(\dso[7]_i_10_n_0 ),
        .I3(\dso[31]_i_4_n_0 ),
        .I4(\rem[31]_i_13_n_0 ),
        .I5(\rem_reg[31] [7]),
        .O(\dso[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEF011F0EEF0EEF0)) 
    \dso[7]_i_7 
       (.I0(add_out0_carry__0_i_10_n_0),
        .I1(\rem[7]_i_12_n_0 ),
        .I2(\dso[7]_i_11_n_0 ),
        .I3(\dso[31]_i_4_n_0 ),
        .I4(\rem[31]_i_13_n_0 ),
        .I5(\rem_reg[31] [6]),
        .O(\dso[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEEF011F0EEF0EEF0)) 
    \dso[7]_i_8 
       (.I0(add_out0_carry__0_i_11_n_0),
        .I1(\rem[7]_i_14_n_0 ),
        .I2(\dso[7]_i_12_n_0 ),
        .I3(\dso[31]_i_4_n_0 ),
        .I4(\rem[31]_i_13_n_0 ),
        .I5(\rem_reg[31] [5]),
        .O(\dso[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEF011F0EEF0EEF0)) 
    \dso[7]_i_9 
       (.I0(add_out0_carry__0_i_12_n_0),
        .I1(\rem[7]_i_16_n_0 ),
        .I2(\dso[7]_i_13_n_0 ),
        .I3(\dso[31]_i_4_n_0 ),
        .I4(\rem[31]_i_13_n_0 ),
        .I5(\rem_reg[31] [4]),
        .O(\dso[7]_i_9_n_0 ));
  CARRY4 \dso_reg[11]_i_1 
       (.CI(\dso_reg[7]_i_1_n_0 ),
        .CO({\dso_reg[11]_i_1_n_0 ,\dso_reg[11]_i_1_n_1 ,\dso_reg[11]_i_1_n_2 ,\dso_reg[11]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\dso[11]_i_2_n_0 ,\dso[11]_i_3_n_0 ,\dso[11]_i_4_n_0 ,\dso[11]_i_5_n_0 }),
        .O(\remden_reg[30] [11:8]),
        .S({\dso[11]_i_6_n_0 ,\dso[11]_i_7_n_0 ,\dso[11]_i_8_n_0 ,\dso[11]_i_9_n_0 }));
  CARRY4 \dso_reg[15]_i_1 
       (.CI(\dso_reg[11]_i_1_n_0 ),
        .CO({\dso_reg[15]_i_1_n_0 ,\dso_reg[15]_i_1_n_1 ,\dso_reg[15]_i_1_n_2 ,\dso_reg[15]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\dso[15]_i_2_n_0 ,\dso[15]_i_3_n_0 ,\dso[15]_i_4_n_0 ,\dso[15]_i_5_n_0 }),
        .O(\remden_reg[30] [15:12]),
        .S({\dso[15]_i_6_n_0 ,\dso[15]_i_7_n_0 ,\dso[15]_i_8_n_0 ,\dso[15]_i_9_n_0 }));
  CARRY4 \dso_reg[19]_i_1 
       (.CI(\dso_reg[15]_i_1_n_0 ),
        .CO({\dso_reg[19]_i_1_n_0 ,\dso_reg[19]_i_1_n_1 ,\dso_reg[19]_i_1_n_2 ,\dso_reg[19]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\dso[19]_i_2_n_0 ,\dso[19]_i_3_n_0 ,\dso[19]_i_4_n_0 ,\dso[19]_i_5_n_0 }),
        .O(\remden_reg[30] [19:16]),
        .S({\dso[19]_i_6_n_0 ,\dso[19]_i_7_n_0 ,\dso[19]_i_8_n_0 ,\dso[19]_i_9_n_0 }));
  CARRY4 \dso_reg[23]_i_1 
       (.CI(\dso_reg[19]_i_1_n_0 ),
        .CO({\dso_reg[23]_i_1_n_0 ,\dso_reg[23]_i_1_n_1 ,\dso_reg[23]_i_1_n_2 ,\dso_reg[23]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\dso[23]_i_2_n_0 ,\dso[23]_i_3_n_0 ,\dso[23]_i_4_n_0 ,\dso[23]_i_5_n_0 }),
        .O(\remden_reg[30] [23:20]),
        .S({\dso[23]_i_6_n_0 ,\dso[23]_i_7_n_0 ,\dso[23]_i_8_n_0 ,\dso[23]_i_9_n_0 }));
  CARRY4 \dso_reg[27]_i_1 
       (.CI(\dso_reg[23]_i_1_n_0 ),
        .CO({\dso_reg[27]_i_1_n_0 ,\dso_reg[27]_i_1_n_1 ,\dso_reg[27]_i_1_n_2 ,\dso_reg[27]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\dso[27]_i_2_n_0 ,\dso[27]_i_3_n_0 ,\dso[27]_i_4_n_0 ,\dso[27]_i_5_n_0 }),
        .O(\remden_reg[30] [27:24]),
        .S({\dso[27]_i_6_n_0 ,\dso[27]_i_7_n_0 ,\dso[27]_i_8_n_0 ,\dso[27]_i_9_n_0 }));
  CARRY4 \dso_reg[31]_i_2 
       (.CI(\dso_reg[27]_i_1_n_0 ),
        .CO({\dso_reg[31]_i_2_n_1 ,\dso_reg[31]_i_2_n_2 ,\dso_reg[31]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\dso[31]_i_7_n_0 ,\dso[31]_i_8_n_0 ,\dso[31]_i_9_n_0 }),
        .O(\remden_reg[30] [31:28]),
        .S({\dso[31]_i_10_n_0 ,\dso[31]_i_11_n_0 ,\dso[31]_i_12_n_0 ,\dso[31]_i_13_n_0 }));
  CARRY4 \dso_reg[3]_i_1 
       (.CI(\<const0> ),
        .CO({\dso_reg[3]_i_1_n_0 ,\dso_reg[3]_i_1_n_1 ,\dso_reg[3]_i_1_n_2 ,\dso_reg[3]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\dso[3]_i_2_n_0 ,\dso[3]_i_3_n_0 ,\dso[3]_i_4_n_0 ,\dso[3]_i_5_n_0 }),
        .O(\remden_reg[30] [3:0]),
        .S({\dso[3]_i_6_n_0 ,\dso[3]_i_7_n_0 ,\dso[3]_i_8_n_0 ,\dso[3]_i_9_n_0 }));
  CARRY4 \dso_reg[7]_i_1 
       (.CI(\dso_reg[3]_i_1_n_0 ),
        .CO({\dso_reg[7]_i_1_n_0 ,\dso_reg[7]_i_1_n_1 ,\dso_reg[7]_i_1_n_2 ,\dso_reg[7]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\dso[7]_i_2_n_0 ,\dso[7]_i_3_n_0 ,\dso[7]_i_4_n_0 ,\dso[7]_i_5_n_0 }),
        .O(\remden_reg[30] [7:4]),
        .S({\dso[7]_i_6_n_0 ,\dso[7]_i_7_n_0 ,\dso[7]_i_8_n_0 ,\dso[7]_i_9_n_0 }));
  FDRE fdiv_rem_msb_f_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(O),
        .Q(fdiv_rem_msb_f),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFF22F222F222F2)) 
    \quo[0]_i_1 
       (.I0(bbus[0]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(O),
        .I4(add_out[0]),
        .I5(\quo[31]_i_6_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[10]_i_1 
       (.I0(bbus[10]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [6]),
        .I4(add_out[10]),
        .I5(\quo[31]_i_6_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[11]_i_1 
       (.I0(bbus[11]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [7]),
        .I4(add_out[11]),
        .I5(\quo[31]_i_6_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[12]_i_1 
       (.I0(bbus[12]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [8]),
        .I4(add_out[12]),
        .I5(\quo[31]_i_6_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[13]_i_1 
       (.I0(bbus[13]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [9]),
        .I4(add_out[13]),
        .I5(\quo[31]_i_6_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[14]_i_1 
       (.I0(bbus[14]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [10]),
        .I4(add_out[14]),
        .I5(\quo[31]_i_6_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[15]_i_1 
       (.I0(bbus[15]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [11]),
        .I4(add_out[15]),
        .I5(\quo[31]_i_6_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[16]_i_1 
       (.I0(abus[0]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [12]),
        .I4(\quo[31]_i_6_n_0 ),
        .I5(add_out[16]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[17]_i_1 
       (.I0(abus[1]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [13]),
        .I4(\quo[31]_i_6_n_0 ),
        .I5(add_out[17]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[18]_i_1 
       (.I0(abus[2]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [14]),
        .I4(\quo[31]_i_6_n_0 ),
        .I5(add_out[18]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[19]_i_1 
       (.I0(abus[3]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [15]),
        .I4(\quo[31]_i_6_n_0 ),
        .I5(add_out[19]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hFFFF22F222F222F2)) 
    \quo[1]_i_1 
       (.I0(bbus[1]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\quo_reg[1] ),
        .I4(add_out[1]),
        .I5(\quo[31]_i_6_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[20]_i_1 
       (.I0(abus[4]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [16]),
        .I4(\quo[31]_i_6_n_0 ),
        .I5(add_out[20]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[21]_i_1 
       (.I0(abus[5]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [17]),
        .I4(\quo[31]_i_6_n_0 ),
        .I5(add_out[21]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[22]_i_1 
       (.I0(abus[6]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [18]),
        .I4(\quo[31]_i_6_n_0 ),
        .I5(add_out[22]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[23]_i_1 
       (.I0(abus[7]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [19]),
        .I4(\quo[31]_i_6_n_0 ),
        .I5(add_out[23]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[24]_i_1 
       (.I0(abus[8]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [20]),
        .I4(\quo[31]_i_6_n_0 ),
        .I5(add_out[24]),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[25]_i_1 
       (.I0(abus[9]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [21]),
        .I4(\quo[31]_i_6_n_0 ),
        .I5(add_out[25]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[26]_i_1 
       (.I0(abus[10]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [22]),
        .I4(\quo[31]_i_6_n_0 ),
        .I5(add_out[26]),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[27]_i_1 
       (.I0(abus[11]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [23]),
        .I4(\quo[31]_i_6_n_0 ),
        .I5(add_out[27]),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[28]_i_1 
       (.I0(abus[12]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [24]),
        .I4(\quo[31]_i_6_n_0 ),
        .I5(add_out[28]),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[29]_i_1 
       (.I0(abus[13]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [25]),
        .I4(\quo[31]_i_6_n_0 ),
        .I5(add_out[29]),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hFFFF22F222F222F2)) 
    \quo[2]_i_1 
       (.I0(bbus[2]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\quo_reg[2] ),
        .I4(add_out[2]),
        .I5(\quo[31]_i_6_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[30]_i_1 
       (.I0(abus[14]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [26]),
        .I4(\quo[31]_i_6_n_0 ),
        .I5(add_out[30]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAEAAAAA)) 
    \quo[31]_i_1 
       (.I0(\quo[31]_i_3_n_0 ),
        .I1(\quo_reg[31] ),
        .I2(ccmd[2]),
        .I3(ccmd[3]),
        .I4(ccmd[1]),
        .I5(ccmd[0]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[31]_i_2 
       (.I0(abus[15]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [27]),
        .I4(\quo[31]_i_6_n_0 ),
        .I5(add_out[31]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF40)) 
    \quo[31]_i_3 
       (.I0(dctl_cmd_0[2]),
        .I1(dctl_cmd_0[1]),
        .I2(dctl_cmd_0[0]),
        .I3(\quo[31]_i_7_n_0 ),
        .I4(\remden[31]_i_4_n_0 ),
        .I5(\quo[31]_i_8_n_0 ),
        .O(\quo[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFEFEFEFEFE)) 
    \quo[31]_i_5 
       (.I0(\quo[31]_i_7_n_0 ),
        .I1(\remden[31]_i_4_n_0 ),
        .I2(\quo[31]_i_8_n_0 ),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[1]),
        .I5(dctl_cmd_0[0]),
        .O(\quo[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \quo[31]_i_6 
       (.I0(dctl_cmd_0[0]),
        .I1(dctl_cmd_0[1]),
        .I2(dctl_cmd_0[2]),
        .O(\quo[31]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \quo[31]_i_7 
       (.I0(dctl_stat[1]),
        .I1(dctl_stat[0]),
        .I2(dctl_stat[3]),
        .O(\quo[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h33333333BAAAAAAA)) 
    \quo[31]_i_8 
       (.I0(\quo[31]_i_9_n_0 ),
        .I1(dctl_stat[3]),
        .I2(\quo[31]_i_5_0 ),
        .I3(\dctl_stat_reg[2]_0 ),
        .I4(dctl_start__1),
        .I5(dctl_stat[2]),
        .O(\quo[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \quo[31]_i_9 
       (.I0(dctl_stat[0]),
        .I1(dctl_stat[1]),
        .O(\quo[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF22F222F222F2)) 
    \quo[3]_i_1 
       (.I0(bbus[3]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\quo_reg[3] ),
        .I4(add_out[3]),
        .I5(\quo[31]_i_6_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[4]_i_1 
       (.I0(bbus[4]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [0]),
        .I4(add_out[4]),
        .I5(\quo[31]_i_6_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[5]_i_1 
       (.I0(bbus[5]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [1]),
        .I4(add_out[5]),
        .I5(\quo[31]_i_6_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[6]_i_1 
       (.I0(bbus[6]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [2]),
        .I4(add_out[6]),
        .I5(\quo[31]_i_6_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[7]_i_1 
       (.I0(bbus[7]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [3]),
        .I4(add_out[7]),
        .I5(\quo[31]_i_6_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[8]_i_1 
       (.I0(bbus[8]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [4]),
        .I4(add_out[8]),
        .I5(\quo[31]_i_6_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \quo[9]_i_1 
       (.I0(bbus[9]),
        .I1(\quo[31]_i_3_n_0 ),
        .I2(\quo[31]_i_5_n_0 ),
        .I3(\rem[31]_i_8_0 [5]),
        .I4(add_out[9]),
        .I5(\quo[31]_i_6_n_0 ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[11]_i_10 
       (.I0(Q[11]),
        .I1(add_out0_carry__6[11]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[11]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[11]_i_12 
       (.I0(Q[10]),
        .I1(add_out0_carry__6[10]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[11]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[11]_i_14 
       (.I0(Q[9]),
        .I1(add_out0_carry__6[9]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[11]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[11]_i_16 
       (.I0(Q[8]),
        .I1(add_out0_carry__6[8]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[11]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[11]_i_2 
       (.I0(Q[11]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[11]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__1_i_9_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[11]_i_3 
       (.I0(Q[10]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[10]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__1_i_10_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[11]_i_4 
       (.I0(Q[9]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[9]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__1_i_11_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[11]_i_5 
       (.I0(Q[8]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[8]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__1_i_12_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[11]_i_6 
       (.I0(add_out0_carry__1_i_9_n_0),
        .I1(\rem[11]_i_10_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [11]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[11]_3 ),
        .O(\rem[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[11]_i_7 
       (.I0(add_out0_carry__1_i_10_n_0),
        .I1(\rem[11]_i_12_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [10]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[11]_2 ),
        .O(\rem[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[11]_i_8 
       (.I0(add_out0_carry__1_i_11_n_0),
        .I1(\rem[11]_i_14_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [9]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[11]_1 ),
        .O(\rem[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[11]_i_9 
       (.I0(add_out0_carry__1_i_12_n_0),
        .I1(\rem[11]_i_16_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [8]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[11]_0 ),
        .O(\rem[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[15]_i_10 
       (.I0(Q[15]),
        .I1(add_out0_carry__6[15]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[15]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[15]_i_12 
       (.I0(Q[14]),
        .I1(add_out0_carry__6[14]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[15]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[15]_i_14 
       (.I0(Q[13]),
        .I1(add_out0_carry__6[13]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[15]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[15]_i_16 
       (.I0(Q[12]),
        .I1(add_out0_carry__6[12]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[15]_i_2 
       (.I0(Q[15]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[15]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__2_i_9_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[15]_i_3 
       (.I0(Q[14]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[14]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__2_i_10_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[15]_i_4 
       (.I0(Q[13]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[13]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__2_i_11_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[15]_i_5 
       (.I0(Q[12]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[12]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__2_i_12_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[15]_i_6 
       (.I0(add_out0_carry__2_i_9_n_0),
        .I1(\rem[15]_i_10_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [15]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[15]_3 ),
        .O(\rem[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[15]_i_7 
       (.I0(add_out0_carry__2_i_10_n_0),
        .I1(\rem[15]_i_12_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [14]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[15]_2 ),
        .O(\rem[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[15]_i_8 
       (.I0(add_out0_carry__2_i_11_n_0),
        .I1(\rem[15]_i_14_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [13]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[15]_1 ),
        .O(\rem[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[15]_i_9 
       (.I0(add_out0_carry__2_i_12_n_0),
        .I1(\rem[15]_i_16_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [12]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[15]_0 ),
        .O(\rem[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[19]_i_10 
       (.I0(Q[19]),
        .I1(add_out0_carry__6[19]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[19]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[19]_i_12 
       (.I0(Q[18]),
        .I1(add_out0_carry__6[18]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[19]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[19]_i_14 
       (.I0(Q[17]),
        .I1(add_out0_carry__6[17]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[19]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[19]_i_16 
       (.I0(Q[16]),
        .I1(add_out0_carry__6[16]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[19]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[19]_i_2 
       (.I0(Q[19]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[19]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__3_i_9_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[19]_i_3 
       (.I0(Q[18]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[18]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__3_i_10_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[19]_i_4 
       (.I0(Q[17]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[17]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__3_i_11_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[19]_i_5 
       (.I0(Q[16]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[16]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__3_i_12_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[19]_i_6 
       (.I0(add_out0_carry__3_i_9_n_0),
        .I1(\rem[19]_i_10_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [19]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[19]_3 ),
        .O(\rem[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[19]_i_7 
       (.I0(add_out0_carry__3_i_10_n_0),
        .I1(\rem[19]_i_12_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [18]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[19]_2 ),
        .O(\rem[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[19]_i_8 
       (.I0(add_out0_carry__3_i_11_n_0),
        .I1(\rem[19]_i_14_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [17]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[19]_1 ),
        .O(\rem[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[19]_i_9 
       (.I0(add_out0_carry__3_i_12_n_0),
        .I1(\rem[19]_i_16_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [16]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[19]_0 ),
        .O(\rem[19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[23]_i_10 
       (.I0(Q[23]),
        .I1(add_out0_carry__6[23]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[23]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[23]_i_12 
       (.I0(Q[22]),
        .I1(add_out0_carry__6[22]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[23]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[23]_i_14 
       (.I0(Q[21]),
        .I1(add_out0_carry__6[21]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[23]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[23]_i_16 
       (.I0(Q[20]),
        .I1(add_out0_carry__6[20]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[23]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[23]_i_2 
       (.I0(Q[23]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[23]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__4_i_9_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[23]_i_3 
       (.I0(Q[22]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[22]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__4_i_10_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[23]_i_4 
       (.I0(Q[21]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[21]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__4_i_11_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[23]_i_5 
       (.I0(Q[20]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[20]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__4_i_12_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[23]_i_6 
       (.I0(add_out0_carry__4_i_9_n_0),
        .I1(\rem[23]_i_10_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [23]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[23]_3 ),
        .O(\rem[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[23]_i_7 
       (.I0(add_out0_carry__4_i_10_n_0),
        .I1(\rem[23]_i_12_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [22]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[23]_2 ),
        .O(\rem[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[23]_i_8 
       (.I0(add_out0_carry__4_i_11_n_0),
        .I1(\rem[23]_i_14_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [21]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[23]_1 ),
        .O(\rem[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[23]_i_9 
       (.I0(add_out0_carry__4_i_12_n_0),
        .I1(\rem[23]_i_16_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [20]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[23]_0 ),
        .O(\rem[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[27]_i_10 
       (.I0(Q[27]),
        .I1(add_out0_carry__6[27]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[27]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[27]_i_12 
       (.I0(Q[26]),
        .I1(add_out0_carry__6[26]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[27]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[27]_i_14 
       (.I0(Q[25]),
        .I1(add_out0_carry__6[25]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[27]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[27]_i_16 
       (.I0(Q[24]),
        .I1(add_out0_carry__6[24]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[27]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[27]_i_2 
       (.I0(Q[27]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[27]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__5_i_9_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[27]_i_3 
       (.I0(Q[26]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[26]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__5_i_10_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[27]_i_4 
       (.I0(Q[25]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[25]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__5_i_11_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[27]_i_5 
       (.I0(Q[24]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[24]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__5_i_12_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[27]_i_6 
       (.I0(add_out0_carry__5_i_9_n_0),
        .I1(\rem[27]_i_10_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [27]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[27]_3 ),
        .O(\rem[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[27]_i_7 
       (.I0(add_out0_carry__5_i_10_n_0),
        .I1(\rem[27]_i_12_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [26]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[27]_2 ),
        .O(\rem[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[27]_i_8 
       (.I0(add_out0_carry__5_i_11_n_0),
        .I1(\rem[27]_i_14_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [25]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[27]_1 ),
        .O(\rem[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[27]_i_9 
       (.I0(add_out0_carry__5_i_12_n_0),
        .I1(\rem[27]_i_16_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [24]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[27]_0 ),
        .O(\rem[27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAFFFFFFFF)) 
    \rem[31]_i_1 
       (.I0(dctl_load_rem),
        .I1(ccmd[0]),
        .I2(ccmd[1]),
        .I3(ccmd[3]),
        .I4(\rem_reg[31]_0 ),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\ccmd[0] ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[31]_i_10 
       (.I0(add_out0_carry__6_i_11_n_0),
        .I1(\rem[31]_i_17_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [29]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[31]_2 ),
        .O(\rem[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[31]_i_11 
       (.I0(add_out0_carry__6_i_12_n_0),
        .I1(\rem[31]_i_19_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [28]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[31]_1 ),
        .O(\rem[31]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[31]_i_12 
       (.I0(Q[31]),
        .I1(add_out0_carry__6[31]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[31]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \rem[31]_i_13 
       (.I0(dctl_cmd_0[2]),
        .I1(dctl_cmd_0[1]),
        .I2(dctl_cmd_0[0]),
        .O(\rem[31]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[31]_i_15 
       (.I0(Q[30]),
        .I1(add_out0_carry__6[30]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[31]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[31]_i_17 
       (.I0(Q[29]),
        .I1(add_out0_carry__6[29]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[31]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[31]_i_19 
       (.I0(Q[28]),
        .I1(add_out0_carry__6[28]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[31]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rem[31]_i_4 
       (.I0(dctl_cmd_0[1]),
        .I1(dctl_cmd_0[2]),
        .O(\rem[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[31]_i_5 
       (.I0(Q[30]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[30]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__6_i_10_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[31]_i_6 
       (.I0(Q[29]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[29]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__6_i_11_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[31]_i_7 
       (.I0(Q[28]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[28]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__6_i_12_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[31]_i_8 
       (.I0(add_out0_carry__6_i_9_n_0),
        .I1(\rem[31]_i_12_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [31]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[31]_4 ),
        .O(\rem[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[31]_i_9 
       (.I0(add_out0_carry__6_i_10_n_0),
        .I1(\rem[31]_i_15_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [30]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[31]_3 ),
        .O(\rem[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[3]_i_10 
       (.I0(Q[3]),
        .I1(add_out0_carry__6[3]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[3]_i_12 
       (.I0(Q[2]),
        .I1(add_out0_carry__6[2]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[3]_i_14 
       (.I0(Q[1]),
        .I1(add_out0_carry__6[1]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[3]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[3]_i_16 
       (.I0(Q[0]),
        .I1(add_out0_carry__6[0]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[3]_i_2 
       (.I0(Q[3]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[3]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry_i_11_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[3]_i_3 
       (.I0(Q[2]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[2]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry_i_12_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[3]_i_4 
       (.I0(Q[1]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[1]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry_i_13_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[3]_i_5 
       (.I0(Q[0]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[0]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry_i_14_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[3]_i_6 
       (.I0(add_out0_carry_i_11_n_0),
        .I1(\rem[3]_i_10_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [3]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[3]_2 ),
        .O(\rem[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[3]_i_7 
       (.I0(add_out0_carry_i_12_n_0),
        .I1(\rem[3]_i_12_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [2]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[3]_1 ),
        .O(\rem[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[3]_i_8 
       (.I0(add_out0_carry_i_13_n_0),
        .I1(\rem[3]_i_14_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [1]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[3]_0 ),
        .O(\rem[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF1E001E)) 
    \rem[3]_i_9 
       (.I0(add_out0_carry_i_14_n_0),
        .I1(\rem[3]_i_16_n_0 ),
        .I2(\rem_reg[0] ),
        .I3(\rem[31]_i_4_n_0 ),
        .I4(\rem_reg[3] ),
        .O(\rem[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[7]_i_10 
       (.I0(Q[7]),
        .I1(add_out0_carry__6[7]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[7]_i_12 
       (.I0(Q[6]),
        .I1(add_out0_carry__6[6]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[7]_i_14 
       (.I0(Q[5]),
        .I1(add_out0_carry__6[5]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[7]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00050030)) 
    \rem[7]_i_16 
       (.I0(Q[4]),
        .I1(add_out0_carry__6[4]),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[2]),
        .I4(dctl_cmd_0[0]),
        .O(\rem[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[7]_i_2 
       (.I0(Q[7]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[7]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__0_i_9_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[7]_i_3 
       (.I0(Q[6]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[6]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__0_i_10_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[7]_i_4 
       (.I0(Q[5]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[5]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__0_i_11_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4F44)) 
    \rem[7]_i_5 
       (.I0(Q[4]),
        .I1(add_out0_carry_i_9_n_0),
        .I2(add_out0_carry__6[4]),
        .I3(add_out0_carry_i_10_n_0),
        .I4(add_out0_carry__0_i_12_n_0),
        .I5(\rem[31]_i_4_n_0 ),
        .O(\rem[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[7]_i_6 
       (.I0(add_out0_carry__0_i_9_n_0),
        .I1(\rem[7]_i_10_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [7]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[7]_3 ),
        .O(\rem[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[7]_i_7 
       (.I0(add_out0_carry__0_i_10_n_0),
        .I1(\rem[7]_i_12_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [6]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[7]_2 ),
        .O(\rem[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[7]_i_8 
       (.I0(add_out0_carry__0_i_11_n_0),
        .I1(\rem[7]_i_14_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [5]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[7]_1 ),
        .O(\rem[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1EE0000E1EE)) 
    \rem[7]_i_9 
       (.I0(add_out0_carry__0_i_12_n_0),
        .I1(\rem[7]_i_16_n_0 ),
        .I2(\rem[31]_i_13_n_0 ),
        .I3(\rem_reg[31] [4]),
        .I4(\rem[31]_i_4_n_0 ),
        .I5(\rem_reg[7]_0 ),
        .O(\rem[7]_i_9_n_0 ));
  CARRY4 \rem_reg[11]_i_1 
       (.CI(\rem_reg[7]_i_1_n_0 ),
        .CO({\rem_reg[11]_i_1_n_0 ,\rem_reg[11]_i_1_n_1 ,\rem_reg[11]_i_1_n_2 ,\rem_reg[11]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\rem[11]_i_2_n_0 ,\rem[11]_i_3_n_0 ,\rem[11]_i_4_n_0 ,\rem[11]_i_5_n_0 }),
        .O(out[11:8]),
        .S({\rem[11]_i_6_n_0 ,\rem[11]_i_7_n_0 ,\rem[11]_i_8_n_0 ,\rem[11]_i_9_n_0 }));
  CARRY4 \rem_reg[15]_i_1 
       (.CI(\rem_reg[11]_i_1_n_0 ),
        .CO({\rem_reg[15]_i_1_n_0 ,\rem_reg[15]_i_1_n_1 ,\rem_reg[15]_i_1_n_2 ,\rem_reg[15]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\rem[15]_i_2_n_0 ,\rem[15]_i_3_n_0 ,\rem[15]_i_4_n_0 ,\rem[15]_i_5_n_0 }),
        .O(out[15:12]),
        .S({\rem[15]_i_6_n_0 ,\rem[15]_i_7_n_0 ,\rem[15]_i_8_n_0 ,\rem[15]_i_9_n_0 }));
  CARRY4 \rem_reg[19]_i_1 
       (.CI(\rem_reg[15]_i_1_n_0 ),
        .CO({\rem_reg[19]_i_1_n_0 ,\rem_reg[19]_i_1_n_1 ,\rem_reg[19]_i_1_n_2 ,\rem_reg[19]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\rem[19]_i_2_n_0 ,\rem[19]_i_3_n_0 ,\rem[19]_i_4_n_0 ,\rem[19]_i_5_n_0 }),
        .O(out[19:16]),
        .S({\rem[19]_i_6_n_0 ,\rem[19]_i_7_n_0 ,\rem[19]_i_8_n_0 ,\rem[19]_i_9_n_0 }));
  CARRY4 \rem_reg[23]_i_1 
       (.CI(\rem_reg[19]_i_1_n_0 ),
        .CO({\rem_reg[23]_i_1_n_0 ,\rem_reg[23]_i_1_n_1 ,\rem_reg[23]_i_1_n_2 ,\rem_reg[23]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\rem[23]_i_2_n_0 ,\rem[23]_i_3_n_0 ,\rem[23]_i_4_n_0 ,\rem[23]_i_5_n_0 }),
        .O(out[23:20]),
        .S({\rem[23]_i_6_n_0 ,\rem[23]_i_7_n_0 ,\rem[23]_i_8_n_0 ,\rem[23]_i_9_n_0 }));
  CARRY4 \rem_reg[27]_i_1 
       (.CI(\rem_reg[23]_i_1_n_0 ),
        .CO({\rem_reg[27]_i_1_n_0 ,\rem_reg[27]_i_1_n_1 ,\rem_reg[27]_i_1_n_2 ,\rem_reg[27]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\rem[27]_i_2_n_0 ,\rem[27]_i_3_n_0 ,\rem[27]_i_4_n_0 ,\rem[27]_i_5_n_0 }),
        .O(out[27:24]),
        .S({\rem[27]_i_6_n_0 ,\rem[27]_i_7_n_0 ,\rem[27]_i_8_n_0 ,\rem[27]_i_9_n_0 }));
  CARRY4 \rem_reg[31]_i_2 
       (.CI(\rem_reg[27]_i_1_n_0 ),
        .CO({\rem_reg[31]_i_2_n_1 ,\rem_reg[31]_i_2_n_2 ,\rem_reg[31]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\rem[31]_i_5_n_0 ,\rem[31]_i_6_n_0 ,\rem[31]_i_7_n_0 }),
        .O(out[31:28]),
        .S({\rem[31]_i_8_n_0 ,\rem[31]_i_9_n_0 ,\rem[31]_i_10_n_0 ,\rem[31]_i_11_n_0 }));
  CARRY4 \rem_reg[3]_i_1 
       (.CI(\<const0> ),
        .CO({\rem_reg[3]_i_1_n_0 ,\rem_reg[3]_i_1_n_1 ,\rem_reg[3]_i_1_n_2 ,\rem_reg[3]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\rem[3]_i_2_n_0 ,\rem[3]_i_3_n_0 ,\rem[3]_i_4_n_0 ,\rem[3]_i_5_n_0 }),
        .O(out[3:0]),
        .S({\rem[3]_i_6_n_0 ,\rem[3]_i_7_n_0 ,\rem[3]_i_8_n_0 ,\rem[3]_i_9_n_0 }));
  CARRY4 \rem_reg[7]_i_1 
       (.CI(\rem_reg[3]_i_1_n_0 ),
        .CO({\rem_reg[7]_i_1_n_0 ,\rem_reg[7]_i_1_n_1 ,\rem_reg[7]_i_1_n_2 ,\rem_reg[7]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\rem[7]_i_2_n_0 ,\rem[7]_i_3_n_0 ,\rem[7]_i_4_n_0 ,\rem[7]_i_5_n_0 }),
        .O(out[7:4]),
        .S({\rem[7]_i_6_n_0 ,\rem[7]_i_7_n_0 ,\rem[7]_i_8_n_0 ,\rem[7]_i_9_n_0 }));
  LUT4 #(
    .INIT(16'hF888)) 
    \remden[0]_i_1 
       (.I0(add_out[0]),
        .I1(\remden[31]_i_6_n_0 ),
        .I2(bbus[0]),
        .I3(\remden[15]_i_2_n_0 ),
        .O(\remden_reg[27] [0]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[10]_i_1 
       (.I0(Q[6]),
        .I1(rst_n_0),
        .I2(\remden[15]_i_2_n_0 ),
        .I3(bbus[10]),
        .I4(add_out[10]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [10]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[11]_i_1 
       (.I0(Q[7]),
        .I1(rst_n_0),
        .I2(\remden[15]_i_2_n_0 ),
        .I3(bbus[11]),
        .I4(add_out[11]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [11]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[12]_i_1 
       (.I0(Q[8]),
        .I1(rst_n_0),
        .I2(\remden[15]_i_2_n_0 ),
        .I3(bbus[12]),
        .I4(add_out[12]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [12]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[13]_i_1 
       (.I0(Q[9]),
        .I1(rst_n_0),
        .I2(\remden[15]_i_2_n_0 ),
        .I3(bbus[13]),
        .I4(add_out[13]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [13]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[14]_i_1 
       (.I0(Q[10]),
        .I1(rst_n_0),
        .I2(\remden[15]_i_2_n_0 ),
        .I3(bbus[14]),
        .I4(add_out[14]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [14]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[15]_i_1 
       (.I0(Q[11]),
        .I1(rst_n_0),
        .I2(\remden[15]_i_2_n_0 ),
        .I3(bbus[15]),
        .I4(add_out[15]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [15]));
  LUT5 #(
    .INIT(32'h88888088)) 
    \remden[15]_i_2 
       (.I0(dctl_den_wr),
        .I1(rst_n),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[0]),
        .I4(dctl_cmd_0[2]),
        .O(\remden[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[16]_i_1 
       (.I0(Q[12]),
        .I1(rst_n_0),
        .I2(\remden[31]_i_5_n_0 ),
        .I3(abus[0]),
        .I4(add_out[16]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [16]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[17]_i_1 
       (.I0(Q[13]),
        .I1(rst_n_0),
        .I2(\remden[31]_i_5_n_0 ),
        .I3(abus[1]),
        .I4(add_out[17]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [17]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[18]_i_1 
       (.I0(Q[14]),
        .I1(rst_n_0),
        .I2(\remden[31]_i_5_n_0 ),
        .I3(abus[2]),
        .I4(add_out[18]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [18]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[19]_i_1 
       (.I0(Q[15]),
        .I1(rst_n_0),
        .I2(\remden[31]_i_5_n_0 ),
        .I3(abus[3]),
        .I4(add_out[19]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [19]));
  LUT4 #(
    .INIT(16'hF888)) 
    \remden[1]_i_1 
       (.I0(add_out[1]),
        .I1(\remden[31]_i_6_n_0 ),
        .I2(bbus[1]),
        .I3(\remden[15]_i_2_n_0 ),
        .O(\remden_reg[27] [1]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[20]_i_1 
       (.I0(Q[16]),
        .I1(rst_n_0),
        .I2(\remden[31]_i_5_n_0 ),
        .I3(abus[4]),
        .I4(add_out[20]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [20]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[21]_i_1 
       (.I0(Q[17]),
        .I1(rst_n_0),
        .I2(\remden[31]_i_5_n_0 ),
        .I3(abus[5]),
        .I4(add_out[21]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [21]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[22]_i_1 
       (.I0(Q[18]),
        .I1(rst_n_0),
        .I2(\remden[31]_i_5_n_0 ),
        .I3(abus[6]),
        .I4(add_out[22]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [22]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[23]_i_1 
       (.I0(Q[19]),
        .I1(rst_n_0),
        .I2(\remden[31]_i_5_n_0 ),
        .I3(abus[7]),
        .I4(add_out[23]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [23]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[24]_i_1 
       (.I0(Q[20]),
        .I1(rst_n_0),
        .I2(\remden[31]_i_5_n_0 ),
        .I3(abus[8]),
        .I4(add_out[24]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [24]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[25]_i_1 
       (.I0(Q[21]),
        .I1(rst_n_0),
        .I2(\remden[31]_i_5_n_0 ),
        .I3(abus[9]),
        .I4(add_out[25]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [25]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[26]_i_1 
       (.I0(Q[22]),
        .I1(rst_n_0),
        .I2(\remden[31]_i_5_n_0 ),
        .I3(abus[10]),
        .I4(add_out[26]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [26]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[27]_i_1 
       (.I0(Q[23]),
        .I1(rst_n_0),
        .I2(\remden[31]_i_5_n_0 ),
        .I3(abus[11]),
        .I4(add_out[27]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [27]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[28]_i_1 
       (.I0(Q[24]),
        .I1(rst_n_0),
        .I2(\remden[31]_i_5_n_0 ),
        .I3(abus[12]),
        .I4(add_out[28]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [28]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[29]_i_1 
       (.I0(Q[25]),
        .I1(rst_n_0),
        .I2(\remden[31]_i_5_n_0 ),
        .I3(abus[13]),
        .I4(add_out[29]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [29]));
  LUT4 #(
    .INIT(16'hF888)) 
    \remden[2]_i_1 
       (.I0(add_out[2]),
        .I1(\remden[31]_i_6_n_0 ),
        .I2(bbus[2]),
        .I3(\remden[15]_i_2_n_0 ),
        .O(\remden_reg[27] [2]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[30]_i_1 
       (.I0(Q[26]),
        .I1(rst_n_0),
        .I2(\remden[31]_i_5_n_0 ),
        .I3(abus[14]),
        .I4(add_out[30]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [30]));
  LUT3 #(
    .INIT(8'hFE)) 
    \remden[31]_i_1 
       (.I0(\remden[31]_i_3_n_0 ),
        .I1(rst_n_0),
        .I2(\remden[31]_i_4_n_0 ),
        .O(\dctl_stat_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[31]_i_2 
       (.I0(Q[27]),
        .I1(rst_n_0),
        .I2(\remden[31]_i_5_n_0 ),
        .I3(abus[15]),
        .I4(add_out[31]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [31]));
  LUT6 #(
    .INIT(64'h000022227575FFAA)) 
    \remden[31]_i_3 
       (.I0(dctl_stat[0]),
        .I1(dctl_stat[2]),
        .I2(\dctl_stat_reg[2]_0 ),
        .I3(\remden[31]_i_7_n_0 ),
        .I4(dctl_stat[1]),
        .I5(dctl_stat[3]),
        .O(\remden[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000BFF0A0A)) 
    \remden[31]_i_4 
       (.I0(\dctl_stat[0]_i_4_n_0 ),
        .I1(Q[31]),
        .I2(dso_msb),
        .I3(dctl_sign),
        .I4(dctl_stat[0]),
        .I5(dctl_stat[1]),
        .O(\remden[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88888088)) 
    \remden[31]_i_5 
       (.I0(\remden_reg[64] ),
        .I1(rst_n),
        .I2(dctl_cmd_0[1]),
        .I3(dctl_cmd_0[0]),
        .I4(dctl_cmd_0[2]),
        .O(\remden[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \remden[31]_i_6 
       (.I0(dctl_cmd_0[2]),
        .I1(dctl_cmd_0[0]),
        .I2(dctl_cmd_0[1]),
        .I3(rst_n),
        .O(\remden[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF1F000000)) 
    \remden[31]_i_7 
       (.I0(Q[31]),
        .I1(dso_msb),
        .I2(dctl_sign),
        .I3(\dctl_stat_reg[2]_0 ),
        .I4(dctl_start__1),
        .I5(dctl_stat[2]),
        .O(\remden[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \remden[3]_i_1 
       (.I0(add_out[3]),
        .I1(\remden[31]_i_6_n_0 ),
        .I2(bbus[3]),
        .I3(\remden[15]_i_2_n_0 ),
        .O(\remden_reg[27] [3]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[4]_i_1 
       (.I0(Q[0]),
        .I1(rst_n_0),
        .I2(\remden[15]_i_2_n_0 ),
        .I3(bbus[4]),
        .I4(add_out[4]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [4]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[5]_i_1 
       (.I0(Q[1]),
        .I1(rst_n_0),
        .I2(\remden[15]_i_2_n_0 ),
        .I3(bbus[5]),
        .I4(add_out[5]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [5]));
  LUT5 #(
    .INIT(32'hFFFF5575)) 
    \remden[64]_i_1 
       (.I0(rst_n),
        .I1(dctl_cmd_0[1]),
        .I2(dctl_cmd_0[0]),
        .I3(dctl_cmd_0[2]),
        .I4(\remden_reg[64] ),
        .O(rst_n_0));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \remden[64]_i_10 
       (.I0(dctl_start__1),
        .I1(dctl_stat[1]),
        .I2(dctl_stat[0]),
        .I3(dctl_stat[3]),
        .I4(\dctl_stat_reg[2]_0 ),
        .I5(dctl_stat[2]),
        .O(\remden[64]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF23)) 
    \remden[64]_i_11 
       (.I0(fdiv_rem_msb_f),
        .I1(dctl_stat[1]),
        .I2(dctl_stat[2]),
        .I3(chg_quo_sgn),
        .I4(dctl_stat[0]),
        .O(\remden[64]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \remden[64]_i_12 
       (.I0(chg_quo_sgn),
        .I1(chg_rem_sgn),
        .O(\remden[64]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0091)) 
    \remden[64]_i_13 
       (.I0(dctl_stat[2]),
        .I1(dctl_stat[0]),
        .I2(dctl_stat[3]),
        .I3(Q[31]),
        .O(\remden[64]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \remden[64]_i_14 
       (.I0(dctl_stat[0]),
        .I1(chg_quo_sgn),
        .I2(fdiv_rem_msb_f),
        .I3(dctl_stat[2]),
        .I4(dctl_stat[3]),
        .O(\remden[64]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEEEEEAAA)) 
    \remden[64]_i_2 
       (.I0(\remden[64]_i_6_n_0 ),
        .I1(\remden[64]_i_7_n_0 ),
        .I2(\remden[64]_i_8_n_0 ),
        .I3(dctl_sign),
        .I4(\remden[64]_i_9_n_0 ),
        .I5(dctl_stat[1]),
        .O(dctl_cmd_0[1]));
  LUT6 #(
    .INIT(64'hFFFF000000AB0000)) 
    \remden[64]_i_3 
       (.I0(\remden[64]_i_10_n_0 ),
        .I1(dctl_stat[1]),
        .I2(\dctl_stat[3]_i_8_n_0 ),
        .I3(\dctl_stat[0]_i_5_n_0 ),
        .I4(\remden[64]_i_11_n_0 ),
        .I5(\dctl_stat[3]_i_7_n_0 ),
        .O(dctl_cmd_0[0]));
  LUT6 #(
    .INIT(64'h000BF03000000000)) 
    \remden[64]_i_4 
       (.I0(fdiv_rem_msb_f),
        .I1(\remden[64]_i_12_n_0 ),
        .I2(dctl_stat[1]),
        .I3(dctl_stat[0]),
        .I4(dctl_stat[2]),
        .I5(dctl_stat[3]),
        .O(dctl_cmd_0[2]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \remden[64]_i_6 
       (.I0(dctl_stat[1]),
        .I1(chg_quo_sgn),
        .I2(dctl_stat[0]),
        .I3(dctl_stat[2]),
        .I4(dctl_stat[3]),
        .O(\remden[64]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000020)) 
    \remden[64]_i_7 
       (.I0(\dctl_stat_reg[2]_0 ),
        .I1(ccmd[4]),
        .I2(ccmd[3]),
        .I3(ccmd[1]),
        .I4(ccmd[2]),
        .I5(dctl_stat[3]),
        .O(\remden[64]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \remden[64]_i_8 
       (.I0(\remden[64]_i_13_n_0 ),
        .I1(add_out0_carry__6[15]),
        .I2(\dctl_stat_reg[2]_0 ),
        .I3(add_out0_carry__6[31]),
        .O(\remden[64]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEFEAAAAA)) 
    \remden[64]_i_9 
       (.I0(\remden[64]_i_14_n_0 ),
        .I1(add_out0_carry__6[31]),
        .I2(\dctl_stat_reg[2]_0 ),
        .I3(add_out0_carry__6[15]),
        .I4(\dctl_stat[0]_i_4_n_0 ),
        .I5(dctl_stat[0]),
        .O(\remden[64]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[6]_i_1 
       (.I0(Q[2]),
        .I1(rst_n_0),
        .I2(\remden[15]_i_2_n_0 ),
        .I3(bbus[6]),
        .I4(add_out[6]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [6]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[7]_i_1 
       (.I0(Q[3]),
        .I1(rst_n_0),
        .I2(\remden[15]_i_2_n_0 ),
        .I3(bbus[7]),
        .I4(add_out[7]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [7]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[8]_i_1 
       (.I0(Q[4]),
        .I1(rst_n_0),
        .I2(\remden[15]_i_2_n_0 ),
        .I3(bbus[8]),
        .I4(add_out[8]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [8]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \remden[9]_i_1 
       (.I0(Q[5]),
        .I1(rst_n_0),
        .I2(\remden[15]_i_2_n_0 ),
        .I3(bbus[9]),
        .I4(add_out[9]),
        .I5(\remden[31]_i_6_n_0 ),
        .O(\remden_reg[27] [9]));
endmodule

module divc_reg_den
   (p_1_in5_in,
    \remden_reg[63]_0 ,
    S,
    Q,
    DI,
    \remden_reg[38]_0 ,
    \remden_reg[38]_1 ,
    \remden_reg[42]_0 ,
    \remden_reg[42]_1 ,
    \remden_reg[46]_0 ,
    \remden_reg[46]_1 ,
    \remden_reg[50]_0 ,
    \remden_reg[50]_1 ,
    \remden_reg[54]_0 ,
    \remden_reg[54]_1 ,
    \remden_reg[58]_0 ,
    \remden_reg[58]_1 ,
    \remden_reg[62]_0 ,
    \remden_reg[62]_1 ,
    \remden_reg[30]_0 ,
    \remden_reg[29]_0 ,
    \remden_reg[28]_0 ,
    rem3_carry__6,
    rem2_carry,
    rem1_carry,
    \remden_reg[35]_0 ,
    \remden_reg[31]_0 ,
    D,
    clk,
    \remden_reg[64]_0 ,
    \remden_reg[64]_1 ,
    \remden_reg[63]_1 ,
    \remden_reg[59]_0 ,
    \remden_reg[55]_0 ,
    \remden_reg[51]_0 ,
    \remden_reg[47]_0 ,
    \remden_reg[43]_0 ,
    \remden_reg[39]_0 ,
    O);
  output [0:0]p_1_in5_in;
  output [0:0]\remden_reg[63]_0 ;
  output [3:0]S;
  output [31:0]Q;
  output [2:0]DI;
  output [3:0]\remden_reg[38]_0 ;
  output [3:0]\remden_reg[38]_1 ;
  output [3:0]\remden_reg[42]_0 ;
  output [3:0]\remden_reg[42]_1 ;
  output [3:0]\remden_reg[46]_0 ;
  output [3:0]\remden_reg[46]_1 ;
  output [3:0]\remden_reg[50]_0 ;
  output [3:0]\remden_reg[50]_1 ;
  output [3:0]\remden_reg[54]_0 ;
  output [3:0]\remden_reg[54]_1 ;
  output [3:0]\remden_reg[58]_0 ;
  output [3:0]\remden_reg[58]_1 ;
  output [3:0]\remden_reg[62]_0 ;
  output [3:0]\remden_reg[62]_1 ;
  output [0:0]\remden_reg[30]_0 ;
  output [0:0]\remden_reg[29]_0 ;
  output [0:0]\remden_reg[28]_0 ;
  input [31:0]rem3_carry__6;
  input [0:0]rem2_carry;
  input [0:0]rem1_carry;
  input [0:0]\remden_reg[35]_0 ;
  input \remden_reg[31]_0 ;
  input [31:0]D;
  input clk;
  input \remden_reg[64]_0 ;
  input [0:0]\remden_reg[64]_1 ;
  input [3:0]\remden_reg[63]_1 ;
  input [3:0]\remden_reg[59]_0 ;
  input [3:0]\remden_reg[55]_0 ;
  input [3:0]\remden_reg[51]_0 ;
  input [3:0]\remden_reg[47]_0 ;
  input [3:0]\remden_reg[43]_0 ;
  input [3:0]\remden_reg[39]_0 ;
  input [3:0]O;

  wire \<const0> ;
  wire [31:0]D;
  wire [2:0]DI;
  wire [3:0]O;
  wire [31:0]Q;
  wire [3:0]S;
  wire clk;
  wire [0:0]p_1_in5_in;
  wire [0:0]rem1_carry;
  wire [0:0]rem2_carry;
  wire [31:0]rem3_carry__6;
  wire [0:0]\remden_reg[28]_0 ;
  wire [0:0]\remden_reg[29]_0 ;
  wire [0:0]\remden_reg[30]_0 ;
  wire \remden_reg[31]_0 ;
  wire [0:0]\remden_reg[35]_0 ;
  wire [3:0]\remden_reg[38]_0 ;
  wire [3:0]\remden_reg[38]_1 ;
  wire [3:0]\remden_reg[39]_0 ;
  wire [3:0]\remden_reg[42]_0 ;
  wire [3:0]\remden_reg[42]_1 ;
  wire [3:0]\remden_reg[43]_0 ;
  wire [3:0]\remden_reg[46]_0 ;
  wire [3:0]\remden_reg[46]_1 ;
  wire [3:0]\remden_reg[47]_0 ;
  wire [3:0]\remden_reg[50]_0 ;
  wire [3:0]\remden_reg[50]_1 ;
  wire [3:0]\remden_reg[51]_0 ;
  wire [3:0]\remden_reg[54]_0 ;
  wire [3:0]\remden_reg[54]_1 ;
  wire [3:0]\remden_reg[55]_0 ;
  wire [3:0]\remden_reg[58]_0 ;
  wire [3:0]\remden_reg[58]_1 ;
  wire [3:0]\remden_reg[59]_0 ;
  wire [3:0]\remden_reg[62]_0 ;
  wire [3:0]\remden_reg[62]_1 ;
  wire [0:0]\remden_reg[63]_0 ;
  wire [3:0]\remden_reg[63]_1 ;
  wire \remden_reg[64]_0 ;
  wire [0:0]\remden_reg[64]_1 ;
  wire \remden_reg_n_0_[63] ;
  wire \remden_reg_n_0_[64] ;

  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'h69)) 
    rem0_carry_i_5
       (.I0(Q[28]),
        .I1(\remden_reg[35]_0 ),
        .I2(rem3_carry__6[0]),
        .O(\remden_reg[28]_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    rem1_carry_i_5
       (.I0(Q[29]),
        .I1(rem1_carry),
        .I2(rem3_carry__6[0]),
        .O(\remden_reg[29]_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    rem2_carry_i_5
       (.I0(Q[30]),
        .I1(rem2_carry),
        .I2(rem3_carry__6[0]),
        .O(\remden_reg[30]_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__0_i_1
       (.I0(\remden_reg[38]_1 [3]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[7]),
        .O(\remden_reg[38]_0 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__0_i_2
       (.I0(\remden_reg[38]_1 [2]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[6]),
        .O(\remden_reg[38]_0 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__0_i_3
       (.I0(\remden_reg[38]_1 [1]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[5]),
        .O(\remden_reg[38]_0 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__0_i_4
       (.I0(\remden_reg[38]_1 [0]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[4]),
        .O(\remden_reg[38]_0 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__1_i_1
       (.I0(\remden_reg[42]_1 [3]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[11]),
        .O(\remden_reg[42]_0 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__1_i_2
       (.I0(\remden_reg[42]_1 [2]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[10]),
        .O(\remden_reg[42]_0 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__1_i_3
       (.I0(\remden_reg[42]_1 [1]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[9]),
        .O(\remden_reg[42]_0 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__1_i_4
       (.I0(\remden_reg[42]_1 [0]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[8]),
        .O(\remden_reg[42]_0 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__2_i_1
       (.I0(\remden_reg[46]_1 [3]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[15]),
        .O(\remden_reg[46]_0 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__2_i_2
       (.I0(\remden_reg[46]_1 [2]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[14]),
        .O(\remden_reg[46]_0 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__2_i_3
       (.I0(\remden_reg[46]_1 [1]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[13]),
        .O(\remden_reg[46]_0 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__2_i_4
       (.I0(\remden_reg[46]_1 [0]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[12]),
        .O(\remden_reg[46]_0 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__3_i_1
       (.I0(\remden_reg[50]_1 [3]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[19]),
        .O(\remden_reg[50]_0 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__3_i_2
       (.I0(\remden_reg[50]_1 [2]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[18]),
        .O(\remden_reg[50]_0 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__3_i_3
       (.I0(\remden_reg[50]_1 [1]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[17]),
        .O(\remden_reg[50]_0 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__3_i_4
       (.I0(\remden_reg[50]_1 [0]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[16]),
        .O(\remden_reg[50]_0 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__4_i_1
       (.I0(\remden_reg[54]_1 [3]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[23]),
        .O(\remden_reg[54]_0 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__4_i_2
       (.I0(\remden_reg[54]_1 [2]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[22]),
        .O(\remden_reg[54]_0 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__4_i_3
       (.I0(\remden_reg[54]_1 [1]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[21]),
        .O(\remden_reg[54]_0 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__4_i_4
       (.I0(\remden_reg[54]_1 [0]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[20]),
        .O(\remden_reg[54]_0 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__5_i_1
       (.I0(\remden_reg[58]_1 [3]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[27]),
        .O(\remden_reg[58]_0 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__5_i_2
       (.I0(\remden_reg[58]_1 [2]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[26]),
        .O(\remden_reg[58]_0 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__5_i_3
       (.I0(\remden_reg[58]_1 [1]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[25]),
        .O(\remden_reg[58]_0 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__5_i_4
       (.I0(\remden_reg[58]_1 [0]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[24]),
        .O(\remden_reg[58]_0 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__6_i_1
       (.I0(\remden_reg[62]_1 [3]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[31]),
        .O(\remden_reg[62]_0 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__6_i_2
       (.I0(\remden_reg[62]_1 [2]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[30]),
        .O(\remden_reg[62]_0 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__6_i_3
       (.I0(\remden_reg[62]_1 [1]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[29]),
        .O(\remden_reg[62]_0 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry__6_i_4
       (.I0(\remden_reg[62]_1 [0]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[28]),
        .O(\remden_reg[62]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    rem3_carry__7_i_1
       (.I0(\remden_reg_n_0_[63] ),
        .I1(\remden_reg_n_0_[64] ),
        .O(\remden_reg[63]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    rem3_carry_i_1
       (.I0(\remden_reg_n_0_[64] ),
        .O(p_1_in5_in));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry_i_2
       (.I0(DI[2]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[3]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry_i_3
       (.I0(DI[1]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[2]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry_i_4
       (.I0(DI[0]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[1]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h69)) 
    rem3_carry_i_5
       (.I0(Q[31]),
        .I1(\remden_reg_n_0_[64] ),
        .I2(rem3_carry__6[0]),
        .O(S[0]));
  FDRE \remden_reg[0] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE \remden_reg[10] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[10]),
        .Q(Q[10]),
        .R(\<const0> ));
  FDRE \remden_reg[11] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[11]),
        .Q(Q[11]),
        .R(\<const0> ));
  FDRE \remden_reg[12] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[12]),
        .Q(Q[12]),
        .R(\<const0> ));
  FDRE \remden_reg[13] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[13]),
        .Q(Q[13]),
        .R(\<const0> ));
  FDRE \remden_reg[14] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[14]),
        .Q(Q[14]),
        .R(\<const0> ));
  FDRE \remden_reg[15] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[15]),
        .Q(Q[15]),
        .R(\<const0> ));
  FDRE \remden_reg[16] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[16]),
        .Q(Q[16]),
        .R(\<const0> ));
  FDRE \remden_reg[17] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[17]),
        .Q(Q[17]),
        .R(\<const0> ));
  FDRE \remden_reg[18] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[18]),
        .Q(Q[18]),
        .R(\<const0> ));
  FDRE \remden_reg[19] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[19]),
        .Q(Q[19]),
        .R(\<const0> ));
  FDRE \remden_reg[1] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE \remden_reg[20] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[20]),
        .Q(Q[20]),
        .R(\<const0> ));
  FDRE \remden_reg[21] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[21]),
        .Q(Q[21]),
        .R(\<const0> ));
  FDRE \remden_reg[22] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[22]),
        .Q(Q[22]),
        .R(\<const0> ));
  FDRE \remden_reg[23] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[23]),
        .Q(Q[23]),
        .R(\<const0> ));
  FDRE \remden_reg[24] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[24]),
        .Q(Q[24]),
        .R(\<const0> ));
  FDRE \remden_reg[25] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[25]),
        .Q(Q[25]),
        .R(\<const0> ));
  FDRE \remden_reg[26] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[26]),
        .Q(Q[26]),
        .R(\<const0> ));
  FDRE \remden_reg[27] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[27]),
        .Q(Q[27]),
        .R(\<const0> ));
  FDRE \remden_reg[28] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[28]),
        .Q(Q[28]),
        .R(\<const0> ));
  FDRE \remden_reg[29] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[29]),
        .Q(Q[29]),
        .R(\<const0> ));
  FDRE \remden_reg[2] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE \remden_reg[30] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[30]),
        .Q(Q[30]),
        .R(\<const0> ));
  FDRE \remden_reg[31] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[31]),
        .Q(Q[31]),
        .R(\<const0> ));
  FDRE \remden_reg[32] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(O[0]),
        .Q(DI[0]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[33] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(O[1]),
        .Q(DI[1]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[34] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(O[2]),
        .Q(DI[2]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[35] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(O[3]),
        .Q(\remden_reg[38]_1 [0]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[36] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[39]_0 [0]),
        .Q(\remden_reg[38]_1 [1]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[37] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[39]_0 [1]),
        .Q(\remden_reg[38]_1 [2]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[38] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[39]_0 [2]),
        .Q(\remden_reg[38]_1 [3]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[39] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[39]_0 [3]),
        .Q(\remden_reg[42]_1 [0]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[3] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(\<const0> ));
  FDRE \remden_reg[40] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[43]_0 [0]),
        .Q(\remden_reg[42]_1 [1]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[41] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[43]_0 [1]),
        .Q(\remden_reg[42]_1 [2]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[42] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[43]_0 [2]),
        .Q(\remden_reg[42]_1 [3]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[43] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[43]_0 [3]),
        .Q(\remden_reg[46]_1 [0]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[44] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[47]_0 [0]),
        .Q(\remden_reg[46]_1 [1]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[45] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[47]_0 [1]),
        .Q(\remden_reg[46]_1 [2]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[46] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[47]_0 [2]),
        .Q(\remden_reg[46]_1 [3]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[47] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[47]_0 [3]),
        .Q(\remden_reg[50]_1 [0]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[48] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[51]_0 [0]),
        .Q(\remden_reg[50]_1 [1]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[49] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[51]_0 [1]),
        .Q(\remden_reg[50]_1 [2]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[4] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(\<const0> ));
  FDRE \remden_reg[50] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[51]_0 [2]),
        .Q(\remden_reg[50]_1 [3]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[51] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[51]_0 [3]),
        .Q(\remden_reg[54]_1 [0]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[52] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[55]_0 [0]),
        .Q(\remden_reg[54]_1 [1]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[53] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[55]_0 [1]),
        .Q(\remden_reg[54]_1 [2]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[54] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[55]_0 [2]),
        .Q(\remden_reg[54]_1 [3]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[55] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[55]_0 [3]),
        .Q(\remden_reg[58]_1 [0]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[56] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[59]_0 [0]),
        .Q(\remden_reg[58]_1 [1]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[57] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[59]_0 [1]),
        .Q(\remden_reg[58]_1 [2]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[58] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[59]_0 [2]),
        .Q(\remden_reg[58]_1 [3]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[59] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[59]_0 [3]),
        .Q(\remden_reg[62]_1 [0]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[5] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(\<const0> ));
  FDRE \remden_reg[60] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[63]_1 [0]),
        .Q(\remden_reg[62]_1 [1]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[61] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[63]_1 [1]),
        .Q(\remden_reg[62]_1 [2]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[62] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[63]_1 [2]),
        .Q(\remden_reg[62]_1 [3]),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[63] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[63]_1 [3]),
        .Q(\remden_reg_n_0_[63] ),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[64] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(\remden_reg[64]_1 ),
        .Q(\remden_reg_n_0_[64] ),
        .R(\remden_reg[64]_0 ));
  FDRE \remden_reg[6] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(\<const0> ));
  FDRE \remden_reg[7] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(\<const0> ));
  FDRE \remden_reg[8] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[8]),
        .Q(Q[8]),
        .R(\<const0> ));
  FDRE \remden_reg[9] 
       (.C(clk),
        .CE(\remden_reg[31]_0 ),
        .D(D[9]),
        .Q(Q[9]),
        .R(\<const0> ));
endmodule

module divc_reg_dso
   (dso_msb,
    Q,
    SR,
    dctl_long,
    rst_n,
    E,
    D,
    clk);
  output dso_msb;
  output [31:0]Q;
  output [0:0]SR;
  input dctl_long;
  input rst_n;
  input [0:0]E;
  input [31:0]D;
  input clk;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire clk;
  wire dctl_long;
  wire dso_msb;
  wire rst_n;

  LUT3 #(
    .INIT(8'hB8)) 
    chg_quo_sgn_i_2
       (.I0(Q[31]),
        .I1(dctl_long),
        .I2(Q[15]),
        .O(dso_msb));
  LUT1 #(
    .INIT(2'h1)) 
    crdy_i_1
       (.I0(rst_n),
        .O(SR));
  FDRE \dso_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \dso_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \dso_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \dso_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \dso_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \dso_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \dso_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \dso_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \dso_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \dso_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \dso_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \dso_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \dso_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \dso_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \dso_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \dso_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \dso_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \dso_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \dso_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE \dso_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE \dso_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE \dso_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE \dso_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \dso_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE \dso_reg[31] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE \dso_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \dso_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \dso_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \dso_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \dso_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \dso_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \dso_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

module divc_reg_quo
   (\quo_reg[16]_0 ,
    Q,
    \quo_reg[17]_0 ,
    \quo_reg[18]_0 ,
    \quo_reg[19]_0 ,
    \quo_reg[20]_0 ,
    \quo_reg[21]_0 ,
    \quo_reg[22]_0 ,
    \quo_reg[23]_0 ,
    \quo_reg[24]_0 ,
    \quo_reg[25]_0 ,
    \quo_reg[26]_0 ,
    \quo_reg[27]_0 ,
    \quo_reg[28]_0 ,
    \quo_reg[29]_0 ,
    \quo_reg[30]_0 ,
    \quo_reg[31]_0 ,
    dctl_quoh_rd,
    \cbus[0] ,
    SR,
    E,
    D,
    clk);
  output \quo_reg[16]_0 ;
  output [31:0]Q;
  output \quo_reg[17]_0 ;
  output \quo_reg[18]_0 ;
  output \quo_reg[19]_0 ;
  output \quo_reg[20]_0 ;
  output \quo_reg[21]_0 ;
  output \quo_reg[22]_0 ;
  output \quo_reg[23]_0 ;
  output \quo_reg[24]_0 ;
  output \quo_reg[25]_0 ;
  output \quo_reg[26]_0 ;
  output \quo_reg[27]_0 ;
  output \quo_reg[28]_0 ;
  output \quo_reg[29]_0 ;
  output \quo_reg[30]_0 ;
  output \quo_reg[31]_0 ;
  input dctl_quoh_rd;
  input \cbus[0] ;
  input [0:0]SR;
  input [0:0]E;
  input [31:0]D;
  input clk;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire \cbus[0] ;
  wire clk;
  wire dctl_quoh_rd;
  wire \quo_reg[16]_0 ;
  wire \quo_reg[17]_0 ;
  wire \quo_reg[18]_0 ;
  wire \quo_reg[19]_0 ;
  wire \quo_reg[20]_0 ;
  wire \quo_reg[21]_0 ;
  wire \quo_reg[22]_0 ;
  wire \quo_reg[23]_0 ;
  wire \quo_reg[24]_0 ;
  wire \quo_reg[25]_0 ;
  wire \quo_reg[26]_0 ;
  wire \quo_reg[27]_0 ;
  wire \quo_reg[28]_0 ;
  wire \quo_reg[29]_0 ;
  wire \quo_reg[30]_0 ;
  wire \quo_reg[31]_0 ;

  LUT4 #(
    .INIT(16'hF888)) 
    \cbus[0]_INST_0_i_1 
       (.I0(Q[16]),
        .I1(dctl_quoh_rd),
        .I2(Q[0]),
        .I3(\cbus[0] ),
        .O(\quo_reg[16]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cbus[10]_INST_0_i_1 
       (.I0(Q[26]),
        .I1(dctl_quoh_rd),
        .I2(Q[10]),
        .I3(\cbus[0] ),
        .O(\quo_reg[26]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cbus[11]_INST_0_i_1 
       (.I0(Q[27]),
        .I1(dctl_quoh_rd),
        .I2(Q[11]),
        .I3(\cbus[0] ),
        .O(\quo_reg[27]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cbus[12]_INST_0_i_1 
       (.I0(Q[28]),
        .I1(dctl_quoh_rd),
        .I2(Q[12]),
        .I3(\cbus[0] ),
        .O(\quo_reg[28]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cbus[13]_INST_0_i_1 
       (.I0(Q[29]),
        .I1(dctl_quoh_rd),
        .I2(Q[13]),
        .I3(\cbus[0] ),
        .O(\quo_reg[29]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cbus[14]_INST_0_i_1 
       (.I0(Q[30]),
        .I1(dctl_quoh_rd),
        .I2(Q[14]),
        .I3(\cbus[0] ),
        .O(\quo_reg[30]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cbus[15]_INST_0_i_3 
       (.I0(Q[31]),
        .I1(dctl_quoh_rd),
        .I2(Q[15]),
        .I3(\cbus[0] ),
        .O(\quo_reg[31]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cbus[1]_INST_0_i_1 
       (.I0(Q[17]),
        .I1(dctl_quoh_rd),
        .I2(Q[1]),
        .I3(\cbus[0] ),
        .O(\quo_reg[17]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cbus[2]_INST_0_i_1 
       (.I0(Q[18]),
        .I1(dctl_quoh_rd),
        .I2(Q[2]),
        .I3(\cbus[0] ),
        .O(\quo_reg[18]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cbus[3]_INST_0_i_1 
       (.I0(Q[19]),
        .I1(dctl_quoh_rd),
        .I2(Q[3]),
        .I3(\cbus[0] ),
        .O(\quo_reg[19]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cbus[4]_INST_0_i_1 
       (.I0(Q[20]),
        .I1(dctl_quoh_rd),
        .I2(Q[4]),
        .I3(\cbus[0] ),
        .O(\quo_reg[20]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cbus[5]_INST_0_i_1 
       (.I0(Q[21]),
        .I1(dctl_quoh_rd),
        .I2(Q[5]),
        .I3(\cbus[0] ),
        .O(\quo_reg[21]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cbus[6]_INST_0_i_1 
       (.I0(Q[22]),
        .I1(dctl_quoh_rd),
        .I2(Q[6]),
        .I3(\cbus[0] ),
        .O(\quo_reg[22]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cbus[7]_INST_0_i_1 
       (.I0(Q[23]),
        .I1(dctl_quoh_rd),
        .I2(Q[7]),
        .I3(\cbus[0] ),
        .O(\quo_reg[23]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cbus[8]_INST_0_i_1 
       (.I0(Q[24]),
        .I1(dctl_quoh_rd),
        .I2(Q[8]),
        .I3(\cbus[0] ),
        .O(\quo_reg[24]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cbus[9]_INST_0_i_1 
       (.I0(Q[25]),
        .I1(dctl_quoh_rd),
        .I2(Q[9]),
        .I3(\cbus[0] ),
        .O(\quo_reg[25]_0 ));
  FDRE \quo_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \quo_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \quo_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \quo_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \quo_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \quo_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \quo_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \quo_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \quo_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \quo_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \quo_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \quo_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \quo_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \quo_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \quo_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \quo_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \quo_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \quo_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \quo_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE \quo_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE \quo_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE \quo_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE \quo_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \quo_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE \quo_reg[31] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE \quo_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \quo_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \quo_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \quo_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \quo_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \quo_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \quo_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

module divc_reg_rem
   (Q,
    SR,
    E,
    D,
    clk);
  output [31:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input [31:0]D;
  input clk;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire clk;

  FDRE \rem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \rem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \rem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \rem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \rem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \rem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \rem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \rem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \rem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \rem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \rem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \rem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \rem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \rem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \rem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \rem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \rem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \rem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \rem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE \rem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE \rem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE \rem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE \rem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \rem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE \rem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE \rem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \rem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \rem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \rem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \rem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \rem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \rem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule
