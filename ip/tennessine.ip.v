
(* STRUCTURAL_NETLIST = "yes" *)
module tennessine
   (clk,
    rst_n,
    brdy,
    irq,
    cpuid,
    irq_lev,
    irq_vec,
    fdat,
    bdatr,
    fadr,
    bcmd,
    badr,
    bdatw,
    tnsn_dsp_c,
    tnsn_dsp_a,
    tnsn_dsp_b);
//
//	Tennessine 8 bit CPU core
//		(c) 2023	1YEN Toru
//
//
//	2023/09/30	ver.1.02
//		change instruction fetch latency: 0 => 1
//		corresponding to Xilinx Vivado
//
//	2023/07/08	ver.1.00
//
  input clk;
  input rst_n;
  input brdy;
  input irq;
  input [1:0]cpuid;
  input [1:0]irq_lev;
  input [5:0]irq_vec;
  input [15:0]fdat;
  input [15:0]bdatr;
  output [15:0]fadr;
  output [2:0]bcmd;
  output [15:0]badr;
  output [15:0]bdatw;
  input [17:0]tnsn_dsp_c;
  output [8:0]tnsn_dsp_a;
  output [8:0]tnsn_dsp_b;

  wire [14:1]abus_0;
  wire alu_n_0;
  wire alu_n_1;
  wire alu_n_19;
  wire alu_n_2;
  wire alu_n_20;
  wire alu_n_21;
  wire alu_n_22;
  wire alu_n_23;
  wire alu_n_4;
  wire [10:10]\art/add/tout ;
  wire [7:7]\art/p_0_in ;
  wire [15:0]badr;
  wire \bank/grn1 ;
  wire [6:0]bbus_0;
  wire [2:0]bcmd;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire brdy;
  wire [15:0]cbus;
  wire [3:3]cbus_sel_cr;
  wire clk;
  wire [1:0]cpuid;
  (* DONT_TOUCH *) wire ctl_fetch;
  wire ctl_n_1;
  wire ctl_n_10;
  wire ctl_n_11;
  wire ctl_n_12;
  wire ctl_n_13;
  wire ctl_n_14;
  wire ctl_n_15;
  wire ctl_n_16;
  wire ctl_n_17;
  wire ctl_n_18;
  wire ctl_n_19;
  wire ctl_n_2;
  wire ctl_n_20;
  wire ctl_n_21;
  wire ctl_n_6;
  wire ctl_n_7;
  wire ctl_n_8;
  wire ctl_n_9;
  wire [15:0]data0;
  wire [15:0]fadr;
  wire [15:0]fch_ir;
  wire fch_irq_req;
  wire fch_n_105;
  wire fch_n_123;
  wire fch_n_124;
  wire fch_n_125;
  wire fch_n_126;
  wire fch_n_127;
  wire fch_n_128;
  wire fch_n_129;
  wire fch_n_130;
  wire fch_n_131;
  wire fch_n_132;
  wire fch_n_133;
  wire fch_n_134;
  wire fch_n_135;
  wire fch_n_140;
  wire fch_n_141;
  wire fch_n_142;
  wire fch_n_143;
  wire fch_n_144;
  wire fch_n_145;
  wire fch_n_146;
  wire fch_n_147;
  wire fch_n_148;
  wire fch_n_149;
  wire fch_n_150;
  wire fch_n_151;
  wire fch_n_152;
  wire fch_n_153;
  wire fch_n_154;
  wire fch_n_155;
  wire fch_n_156;
  wire fch_n_157;
  wire fch_n_158;
  wire fch_n_159;
  wire fch_n_160;
  wire fch_n_161;
  wire fch_n_162;
  wire fch_n_163;
  wire fch_n_164;
  wire fch_n_165;
  wire fch_n_166;
  wire fch_n_167;
  wire fch_n_168;
  wire fch_n_169;
  wire fch_n_170;
  wire fch_n_171;
  wire fch_n_172;
  wire fch_n_173;
  wire fch_n_174;
  wire fch_n_175;
  wire fch_n_176;
  wire fch_n_193;
  wire fch_n_194;
  wire fch_n_195;
  wire fch_n_196;
  wire fch_n_197;
  wire fch_n_198;
  wire fch_n_199;
  wire fch_n_200;
  wire fch_n_202;
  wire fch_n_203;
  wire fch_n_204;
  wire fch_n_205;
  wire fch_n_207;
  wire fch_n_208;
  wire fch_n_209;
  wire fch_n_210;
  wire fch_n_211;
  wire fch_n_212;
  wire fch_n_213;
  wire fch_n_214;
  wire fch_n_215;
  wire fch_n_216;
  wire fch_n_217;
  wire fch_n_65;
  wire fch_n_66;
  wire fch_n_67;
  wire fch_n_68;
  wire fch_n_69;
  wire fch_n_70;
  wire fch_n_71;
  wire fch_n_72;
  wire fch_n_73;
  wire fch_n_74;
  wire fch_n_75;
  wire fch_n_76;
  wire fch_n_77;
  wire fch_n_78;
  wire fch_n_79;
  wire fch_n_80;
  wire fch_n_81;
  wire fch_n_82;
  wire fch_n_83;
  wire fch_n_84;
  wire fch_n_85;
  wire fch_n_86;
  wire fch_n_87;
  wire fch_n_88;
  wire fch_n_89;
  wire fch_n_90;
  wire fch_n_91;
  wire fch_n_92;
  wire fch_n_93;
  wire fch_n_94;
  wire [15:0]fch_pc;
  wire [15:0]fdat;
  wire irq;
  wire [1:0]irq_lev;
  wire [5:0]irq_vec;
  wire [15:1]\ivec/p_0_in ;
  wire mem_n_10;
  wire mem_n_11;
  wire mem_n_12;
  wire mem_n_13;
  wire mem_n_14;
  wire mem_n_15;
  wire mem_n_16;
  wire mem_n_17;
  wire mem_n_18;
  wire mem_n_3;
  wire mem_n_4;
  wire mem_n_5;
  wire mem_n_6;
  wire mem_n_7;
  wire mem_n_8;
  wire mem_n_9;
  wire [2:0]read_cyc;
  wire rgf_iv_ve;
  wire rgf_n_0;
  wire rgf_n_1;
  wire rgf_n_10;
  wire rgf_n_100;
  wire rgf_n_101;
  wire rgf_n_102;
  wire rgf_n_103;
  wire rgf_n_104;
  wire rgf_n_105;
  wire rgf_n_106;
  wire rgf_n_107;
  wire rgf_n_108;
  wire rgf_n_109;
  wire rgf_n_11;
  wire rgf_n_110;
  wire rgf_n_111;
  wire rgf_n_112;
  wire rgf_n_113;
  wire rgf_n_114;
  wire rgf_n_115;
  wire rgf_n_116;
  wire rgf_n_117;
  wire rgf_n_118;
  wire rgf_n_119;
  wire rgf_n_12;
  wire rgf_n_120;
  wire rgf_n_121;
  wire rgf_n_122;
  wire rgf_n_123;
  wire rgf_n_124;
  wire rgf_n_125;
  wire rgf_n_126;
  wire rgf_n_127;
  wire rgf_n_13;
  wire rgf_n_132;
  wire rgf_n_133;
  wire rgf_n_14;
  wire rgf_n_15;
  wire rgf_n_16;
  wire rgf_n_17;
  wire rgf_n_18;
  wire rgf_n_19;
  wire rgf_n_2;
  wire rgf_n_20;
  wire rgf_n_208;
  wire rgf_n_209;
  wire rgf_n_21;
  wire rgf_n_210;
  wire rgf_n_211;
  wire rgf_n_212;
  wire rgf_n_213;
  wire rgf_n_214;
  wire rgf_n_215;
  wire rgf_n_216;
  wire rgf_n_217;
  wire rgf_n_218;
  wire rgf_n_219;
  wire rgf_n_22;
  wire rgf_n_220;
  wire rgf_n_221;
  wire rgf_n_222;
  wire rgf_n_223;
  wire rgf_n_224;
  wire rgf_n_225;
  wire rgf_n_226;
  wire rgf_n_227;
  wire rgf_n_228;
  wire rgf_n_229;
  wire rgf_n_23;
  wire rgf_n_230;
  wire rgf_n_231;
  wire rgf_n_232;
  wire rgf_n_233;
  wire rgf_n_234;
  wire rgf_n_235;
  wire rgf_n_237;
  wire rgf_n_238;
  wire rgf_n_239;
  wire rgf_n_24;
  wire rgf_n_240;
  wire rgf_n_241;
  wire rgf_n_242;
  wire rgf_n_25;
  wire rgf_n_259;
  wire rgf_n_26;
  wire rgf_n_260;
  wire rgf_n_27;
  wire rgf_n_28;
  wire rgf_n_29;
  wire rgf_n_3;
  wire rgf_n_30;
  wire rgf_n_31;
  wire rgf_n_32;
  wire rgf_n_33;
  wire rgf_n_34;
  wire rgf_n_35;
  wire rgf_n_36;
  wire rgf_n_37;
  wire rgf_n_38;
  wire rgf_n_39;
  wire rgf_n_4;
  wire rgf_n_40;
  wire rgf_n_41;
  wire rgf_n_42;
  wire rgf_n_43;
  wire rgf_n_44;
  wire rgf_n_45;
  wire rgf_n_46;
  wire rgf_n_47;
  wire rgf_n_48;
  wire rgf_n_49;
  wire rgf_n_5;
  wire rgf_n_50;
  wire rgf_n_51;
  wire rgf_n_52;
  wire rgf_n_53;
  wire rgf_n_54;
  wire rgf_n_55;
  wire rgf_n_56;
  wire rgf_n_57;
  wire rgf_n_58;
  wire rgf_n_59;
  wire rgf_n_6;
  wire rgf_n_60;
  wire rgf_n_61;
  wire rgf_n_62;
  wire rgf_n_63;
  wire rgf_n_64;
  wire rgf_n_65;
  wire rgf_n_66;
  wire rgf_n_67;
  wire rgf_n_68;
  wire rgf_n_69;
  wire rgf_n_7;
  wire rgf_n_70;
  wire rgf_n_71;
  wire rgf_n_72;
  wire rgf_n_73;
  wire rgf_n_74;
  wire rgf_n_75;
  wire rgf_n_76;
  wire rgf_n_77;
  wire rgf_n_78;
  wire rgf_n_79;
  wire rgf_n_8;
  wire rgf_n_80;
  wire rgf_n_81;
  wire rgf_n_82;
  wire rgf_n_83;
  wire rgf_n_84;
  wire rgf_n_85;
  wire rgf_n_86;
  wire rgf_n_87;
  wire rgf_n_88;
  wire rgf_n_89;
  wire rgf_n_9;
  wire rgf_n_90;
  wire rgf_n_91;
  wire rgf_n_92;
  wire rgf_n_93;
  wire rgf_n_94;
  wire rgf_n_95;
  wire rgf_n_96;
  wire rgf_n_97;
  wire rgf_n_98;
  wire rgf_n_99;
  wire [3:0]rgf_sr_flag;
  wire [1:0]rgf_sr_ie;
  wire rgf_sr_nh;
  wire rst_n;
  wire [15:0]sp_dec_0;
  wire [15:0]\sptr/p_0_in ;
  wire [15:0]\sptr/sp__0 ;
  wire [1:0]sr_bank;
  wire [7:1]\sreg/p_2_in ;
  wire [2:0]stat;
  wire [1:0]stat_nx;
  wire [8:0]tnsn_dsp_a;
  wire [8:0]tnsn_dsp_b;
  wire [17:0]tnsn_dsp_c;

  tnsn_alu alu
       (.DI({fch_n_159,fch_n_160,fch_n_161}),
        .O({alu_n_0,alu_n_1,alu_n_2}),
        .S({fch_n_155,fch_n_156,fch_n_157,fch_n_158}),
        .abus_0({abus_0[14:7],abus_0[3],abus_0[1]}),
        .bbus_0({bbus_0[6:4],bbus_0[2],bbus_0[0]}),
        .cbus1_carry(alu_n_23),
        .cbus1_carry__0(alu_n_21),
        .cbus1_carry__0_0(alu_n_22),
        .cbus1_carry__2_i_4({data0[15:7],data0[4:3],data0[1:0]}),
        .\grn[0]_i_3 ({fch_n_166,fch_n_167,fch_n_168,fch_n_169}),
        .\grn[4]_i_4 ({fch_n_162,fch_n_163,fch_n_164,fch_n_165}),
        .\iv_reg[11] ({fch_n_170,fch_n_171,fch_n_172,fch_n_173}),
        .\iv_reg[15] ({fch_n_147,fch_n_148,fch_n_149,fch_n_150}),
        .\iv_reg[1] (fch_n_93),
        .\iv_reg[1]_0 (fch_n_94),
        .\iv_reg[1]_1 (mem_n_11),
        .\iv_reg[4] ({fch_n_151,fch_n_152,fch_n_153,fch_n_154}),
        .\iv_reg[4]_0 ({fch_n_210,fch_n_211,fch_n_212,fch_n_213}),
        .\sr[6]_i_4 (fch_n_175),
        .\sr[6]_i_4_0 ({fch_n_214,fch_n_215}),
        .\tnsn_dsp_c[1] (alu_n_19),
        .tout__1_carry(alu_n_20),
        .tout__1_carry__0_i_8({\art/p_0_in ,alu_n_4}),
        .tout__1_carry__1_i_3(\art/add/tout ));
  tnsn_fsm ctl
       (.D({fch_n_135,stat_nx}),
        .Q(stat),
        .SR(rgf_n_208),
        .\bdatw[15]_INST_0_i_14 (fch_n_144),
        .\bdatw[15]_INST_0_i_14_0 (fch_n_143),
        .\bdatw[15]_INST_0_i_14_1 (fch_n_141),
        .\bdatw[15]_INST_0_i_41_0 (rgf_sr_flag[1]),
        .brdy(brdy),
        .clk(clk),
        .fch_irq_req(fch_irq_req),
        .\grn[15]_i_13 (fch_n_133),
        .irq(irq),
        .out({fch_ir[15:10],fch_ir[7:6],fch_ir[1:0]}),
        .\sr[4]_i_9 (fch_n_123),
        .\stat[0]_i_2 (rgf_n_235),
        .\stat[0]_i_2_0 (fch_n_142),
        .\stat[0]_i_2_1 (fch_n_140),
        .\stat_reg[0]_0 (ctl_n_2),
        .\stat_reg[0]_1 (ctl_n_9),
        .\stat_reg[0]_2 (ctl_n_10),
        .\stat_reg[0]_3 (ctl_n_14),
        .\stat_reg[0]_4 (ctl_n_15),
        .\stat_reg[0]_5 (ctl_n_16),
        .\stat_reg[0]_6 (ctl_n_17),
        .\stat_reg[0]_7 (ctl_n_19),
        .\stat_reg[1]_0 (ctl_n_7),
        .\stat_reg[1]_1 (ctl_n_8),
        .\stat_reg[1]_2 (ctl_n_12),
        .\stat_reg[1]_3 (ctl_n_20),
        .\stat_reg[2]_0 (ctl_n_1),
        .\stat_reg[2]_1 (ctl_n_6),
        .\stat_reg[2]_2 (ctl_n_11),
        .\stat_reg[2]_3 (ctl_n_13),
        .\stat_reg[2]_4 (ctl_n_18),
        .\stat_reg[2]_5 (ctl_n_21),
        .tnsn_dsp_a(tnsn_dsp_a[8]),
        .\tnsn_dsp_a[8] (fch_n_124),
        .\tnsn_dsp_a[8]_0 (fch_n_145),
        .\tnsn_dsp_a[8]_1 (fch_n_146));
  tnsn_fch fch
       (.D(\sptr/sp__0 ),
        .DI({fch_n_159,fch_n_160,fch_n_161}),
        .E({fch_n_193,fch_n_194}),
        .O({alu_n_0,alu_n_1,alu_n_2}),
        .Q(stat),
        .S({fch_n_155,fch_n_156,fch_n_157,fch_n_158}),
        .SR(rgf_n_208),
        .abus_0({abus_0[14:7],abus_0[3],abus_0[1]}),
        .badr(badr),
        .\badr[15]_INST_0_i_16_0 (ctl_n_14),
        .\badr[15]_INST_0_i_1_0 ({\ivec/p_0_in ,rgf_iv_ve}),
        .\badr[15]_INST_0_i_1_1 ({rgf_n_16,rgf_n_17,rgf_n_18,rgf_n_19,rgf_n_20,rgf_n_21,rgf_n_22,rgf_n_23,rgf_n_24,rgf_n_25,rgf_n_26,rgf_n_27,rgf_n_28,rgf_n_29,rgf_n_30,rgf_n_31}),
        .\badr[15]_INST_0_i_1_2 ({rgf_n_112,rgf_n_113,rgf_n_114,rgf_n_115,rgf_n_116,rgf_n_117,rgf_n_118,rgf_n_119,rgf_n_120,rgf_n_121,rgf_n_122,rgf_n_123,rgf_n_124,rgf_n_125,rgf_n_126,rgf_n_127}),
        .\badr[15]_INST_0_i_1_3 ({rgf_n_80,rgf_n_81,rgf_n_82,rgf_n_83,rgf_n_84,rgf_n_85,rgf_n_86,rgf_n_87,rgf_n_88,rgf_n_89,rgf_n_90,rgf_n_91,rgf_n_92,rgf_n_93,rgf_n_94,rgf_n_95}),
        .\badr[15]_INST_0_i_35_0 (fch_n_131),
        .\badr[15]_INST_0_i_36_0 (rgf_n_241),
        .\badr[15]_INST_0_i_38_0 (fch_n_128),
        .\badr[15]_INST_0_i_38_1 (fch_n_130),
        .\badr[15]_INST_0_i_63_0 (ctl_n_17),
        .badr_10_sp_1(rgf_n_228),
        .badr_11_sp_1(rgf_n_229),
        .badr_14_sp_1(rgf_n_230),
        .badr_2_sp_1(rgf_n_226),
        .badr_9_sp_1(rgf_n_227),
        .bbus_0({bbus_0[6:4],bbus_0[2],bbus_0[0]}),
        .\bcmd[1] (rgf_n_237),
        .bdatr({bdatr[14],bdatr[12],bdatr[10],bdatr[1]}),
        .bdatw(bdatw),
        .\bdatw[11]_INST_0_i_2_0 ({fch_n_166,fch_n_167,fch_n_168,fch_n_169}),
        .\bdatw[13]_INST_0_i_17_0 (ctl_n_8),
        .\bdatw[15] (\sptr/p_0_in ),
        .\bdatw[15]_INST_0_i_1_0 ({\sreg/p_2_in [7:4],rgf_n_132,rgf_n_133,\sreg/p_2_in [1],rgf_sr_nh,rgf_sr_flag,rgf_sr_ie,sr_bank}),
        .\bdatw[15]_INST_0_i_1_1 ({rgf_n_32,rgf_n_33,rgf_n_34,rgf_n_35,rgf_n_36,rgf_n_37,rgf_n_38,rgf_n_39,rgf_n_40,rgf_n_41,rgf_n_42,rgf_n_43,rgf_n_44,rgf_n_45,rgf_n_46,rgf_n_47}),
        .\bdatw[15]_INST_0_i_1_2 ({rgf_n_48,rgf_n_49,rgf_n_50,rgf_n_51,rgf_n_52,rgf_n_53,rgf_n_54,rgf_n_55,rgf_n_56,rgf_n_57,rgf_n_58,rgf_n_59,rgf_n_60,rgf_n_61,rgf_n_62,rgf_n_63}),
        .\bdatw[15]_INST_0_i_22_0 ({rgf_n_96,rgf_n_97,rgf_n_98,rgf_n_99,rgf_n_100,rgf_n_101,rgf_n_102,rgf_n_103,rgf_n_104,rgf_n_105,rgf_n_106,rgf_n_107,rgf_n_108,rgf_n_109,rgf_n_110,rgf_n_111}),
        .\bdatw[15]_INST_0_i_27_0 (rgf_n_240),
        .\bdatw[15]_INST_0_i_5_0 ({rgf_n_64,rgf_n_65,rgf_n_66,rgf_n_67,rgf_n_68,rgf_n_69,rgf_n_70,rgf_n_71,rgf_n_72,rgf_n_73,rgf_n_74,rgf_n_75,rgf_n_76,rgf_n_77,rgf_n_78,rgf_n_79}),
        .\bdatw[15]_INST_0_i_5_1 ({rgf_n_0,rgf_n_1,rgf_n_2,rgf_n_3,rgf_n_4,rgf_n_5,rgf_n_6,rgf_n_7,rgf_n_8,rgf_n_9,rgf_n_10,rgf_n_11,rgf_n_12,rgf_n_13,rgf_n_14,rgf_n_15}),
        .bdatw_0_sp_1(rgf_n_232),
        .brdy(brdy),
        .brdy_0(fch_n_142),
        .brdy_1(fch_n_176),
        .brdy_2(fch_n_216),
        .brdy_3(fch_n_217),
        .cbus1_carry(fch_n_125),
        .clk(clk),
        .cpuid(cpuid),
        .ctl_fetch_fl_reg_0(ctl_fetch),
        .ctl_fetch_fl_reg_1(ctl_n_20),
        .ctl_fetch_fl_reg_2(ctl_n_10),
        .ctl_fetch_fl_reg_3(ctl_n_11),
        .ctl_fetch_fl_reg_4(ctl_n_21),
        .ctl_fetch_inferred_i_3_0(rgf_n_239),
        .ctl_fetch_inferred_i_4_0(ctl_n_15),
        .\eir_fl_reg[1]_0 (ctl_n_19),
        .\eir_fl_reg[1]_1 (rgf_n_259),
        .fch_irq_req(fch_irq_req),
        .fch_pc(fch_pc),
        .fdat(fdat),
        .\grn[1]_i_10_0 (fch_n_67),
        .\grn[7]_i_3_0 (mem_n_12),
        .\grn_reg[0] (ctl_n_9),
        .\grn_reg[0]_0 (rgf_n_224),
        .in0(ctl_fetch),
        .irq_lev(irq_lev),
        .irq_vec(irq_vec),
        .\iv[15]_i_2_0 (ctl_n_7),
        .\iv[15]_i_6_0 (rgf_n_242),
        .\iv_reg[0] (mem_n_18),
        .\iv_reg[0]_0 (ctl_n_6),
        .\iv_reg[11] (mem_n_5),
        .\iv_reg[13] (mem_n_4),
        .\iv_reg[14] (mem_n_10),
        .\iv_reg[15] ({data0[15:7],data0[4:3],data0[1:0]}),
        .\iv_reg[15]_0 (mem_n_3),
        .\iv_reg[1] (alu_n_19),
        .\iv_reg[2] (alu_n_23),
        .\iv_reg[2]_0 (mem_n_17),
        .\iv_reg[3] (mem_n_16),
        .\iv_reg[4] (mem_n_15),
        .\iv_reg[5] (alu_n_22),
        .\iv_reg[5]_0 (mem_n_14),
        .\iv_reg[6] (mem_n_13),
        .\iv_reg[6]_0 (alu_n_21),
        .\iv_reg[7] ({\art/p_0_in ,alu_n_4}),
        .\iv_reg[8] (mem_n_7),
        .\iv_reg[9] (mem_n_6),
        .out({fch_ir[15:10],fch_ir[7:6],fch_ir[1:0]}),
        .\pc_reg[15] ({fch_n_77,fch_n_78,fch_n_79,fch_n_80,fch_n_81,fch_n_82,fch_n_83,fch_n_84,fch_n_85,fch_n_86,fch_n_87,fch_n_88,fch_n_89,fch_n_90,fch_n_91,fch_n_92}),
        .\pc_reg[15]_0 (fadr),
        .\pc_reg[1] (mem_n_8),
        .read_cyc(read_cyc),
        .\read_cyc_reg[1] (cbus),
        .rst_n(rst_n),
        .rst_n_0(fch_n_126),
        .rst_n_fl_reg_0(fch_n_133),
        .rst_n_fl_reg_1({fch_n_135,stat_nx}),
        .rst_n_fl_reg_2(fch_n_140),
        .rst_n_fl_reg_3(fch_n_143),
        .rst_n_fl_reg_4(fch_n_144),
        .rst_n_fl_reg_5(fch_n_145),
        .sp_dec_0(sp_dec_0),
        .\sp_reg[10] (rgf_n_218),
        .\sp_reg[11] ({fch_n_170,fch_n_171,fch_n_172,fch_n_173}),
        .\sp_reg[11]_0 (rgf_n_219),
        .\sp_reg[12] (rgf_n_220),
        .\sp_reg[13] (rgf_n_221),
        .\sp_reg[14] (rgf_n_222),
        .\sp_reg[15] ({fch_n_147,fch_n_148,fch_n_149,fch_n_150}),
        .\sp_reg[15]_0 (rgf_n_223),
        .\sp_reg[1] (mem_n_9),
        .\sp_reg[1]_0 (rgf_n_209),
        .\sp_reg[2] (rgf_n_210),
        .\sp_reg[3] (rgf_n_211),
        .\sp_reg[4] (rgf_n_212),
        .\sp_reg[5] (rgf_n_213),
        .\sp_reg[6] (rgf_n_214),
        .\sp_reg[7] ({fch_n_151,fch_n_152,fch_n_153,fch_n_154}),
        .\sp_reg[7]_0 ({fch_n_162,fch_n_163,fch_n_164,fch_n_165}),
        .\sp_reg[7]_1 (fch_n_175),
        .\sp_reg[7]_2 ({fch_n_210,fch_n_211,fch_n_212,fch_n_213}),
        .\sp_reg[7]_3 ({fch_n_214,fch_n_215}),
        .\sp_reg[7]_4 (rgf_n_215),
        .\sp_reg[8] (rgf_n_216),
        .\sp_reg[9] (rgf_n_217),
        .\sr[4]_i_3_0 (alu_n_20),
        .\sr[4]_i_5_0 (ctl_n_18),
        .\sr_reg[13] ({fch_n_68,fch_n_69,fch_n_70,fch_n_71,fch_n_72,fch_n_73,fch_n_74,fch_n_75}),
        .\sr_reg[1] ({fch_n_197,fch_n_198}),
        .\sr_reg[1]_0 ({fch_n_204,fch_n_205}),
        .\sr_reg[1]_1 ({\bank/grn1 ,fch_n_207}),
        .\sr_reg[4] (fch_n_146),
        .\sr_reg[5] (rgf_n_234),
        .\sr_reg[6] (rgf_n_233),
        .\sr_reg[6]_0 (\art/add/tout ),
        .\stat_reg[0] (bcmd[0]),
        .\stat_reg[0]_0 (bcmd[1]),
        .\stat_reg[0]_1 (fch_n_65),
        .\stat_reg[0]_2 (fch_n_66),
        .\stat_reg[0]_3 (fch_n_76),
        .\stat_reg[0]_4 (fch_n_127),
        .\stat_reg[0]_5 (fch_n_134),
        .\stat_reg[0]_6 (bcmd[2]),
        .\stat_reg[0]_7 (fch_n_141),
        .\stat_reg[0]_8 (ctl_n_12),
        .\stat_reg[1] (fch_n_105),
        .\stat_reg[1]_0 (fch_n_174),
        .\stat_reg[1]_1 (rgf_n_238),
        .\stat_reg[2] (fch_n_93),
        .\stat_reg[2]_0 (fch_n_94),
        .\stat_reg[2]_1 (fch_n_123),
        .\stat_reg[2]_10 (ctl_n_2),
        .\stat_reg[2]_2 (fch_n_129),
        .\stat_reg[2]_3 (fch_n_132),
        .\stat_reg[2]_4 ({fch_n_195,fch_n_196}),
        .\stat_reg[2]_5 ({fch_n_199,fch_n_200}),
        .\stat_reg[2]_6 (cbus_sel_cr),
        .\stat_reg[2]_7 ({fch_n_202,fch_n_203}),
        .\stat_reg[2]_8 ({fch_n_208,fch_n_209}),
        .\stat_reg[2]_9 (rgf_n_260),
        .tnsn_dsp_a(tnsn_dsp_a[7:0]),
        .\tnsn_dsp_a[7]_INST_0_i_8_0 (ctl_n_13),
        .tnsn_dsp_a_1_sp_1(rgf_n_225),
        .tnsn_dsp_a_7_sp_1(rgf_n_231),
        .tnsn_dsp_b(tnsn_dsp_b),
        .\tnsn_dsp_b[8]_INST_0_i_1_0 (fch_n_124),
        .tnsn_dsp_b_8_sp_1(ctl_n_1),
        .tnsn_dsp_c({tnsn_dsp_c[14],tnsn_dsp_c[12],tnsn_dsp_c[10],tnsn_dsp_c[7:2],tnsn_dsp_c[0]}));
  tnsn_mem mem
       (.SR(rgf_n_208),
        .bdatr(bdatr),
        .\bdatr[1]_0 (mem_n_9),
        .bdatr_1_sp_1(mem_n_8),
        .clk(clk),
        .\pc_reg[1] (fch_n_67),
        .\pc_reg[1]_0 (alu_n_19),
        .read_cyc(read_cyc),
        .\read_cyc_reg[0] (mem_n_12),
        .\read_cyc_reg[0]_0 (mem_n_13),
        .\read_cyc_reg[0]_1 (mem_n_16),
        .\read_cyc_reg[0]_2 (fch_n_176),
        .\read_cyc_reg[1] (mem_n_3),
        .\read_cyc_reg[1]_0 (mem_n_4),
        .\read_cyc_reg[1]_1 (mem_n_5),
        .\read_cyc_reg[1]_2 (mem_n_6),
        .\read_cyc_reg[1]_3 (mem_n_7),
        .\read_cyc_reg[1]_4 (mem_n_10),
        .\read_cyc_reg[1]_5 (fch_n_217),
        .\read_cyc_reg[2] (mem_n_14),
        .\read_cyc_reg[2]_0 (mem_n_15),
        .\read_cyc_reg[2]_1 (mem_n_17),
        .\read_cyc_reg[2]_2 (mem_n_18),
        .\read_cyc_reg[2]_3 (fch_n_216),
        .\sp_reg[1] (fch_n_105),
        .\sp_reg[1]_0 (fch_n_125),
        .tnsn_dsp_c({tnsn_dsp_c[15],tnsn_dsp_c[13],tnsn_dsp_c[11],tnsn_dsp_c[9:8],tnsn_dsp_c[1]}),
        .tnsn_dsp_c_1_sp_1(mem_n_11));
  tnsn_rgf rgf
       (.D(cbus),
        .E({\bank/grn1 ,fch_n_207}),
        .Q({stat[2],stat[0]}),
        .SR(rgf_n_208),
        .\badr[15]_INST_0_i_59 ({fch_ir[14],fch_ir[12:11]}),
        .\badr[15]_INST_0_i_59_0 (ctl_n_16),
        .\badr[1]_INST_0_i_1 (fch_n_129),
        .\badr[1]_INST_0_i_1_0 (fch_n_128),
        .\badr[1]_INST_0_i_1_1 (fch_n_130),
        .\badr[7]_INST_0_i_1 (fch_n_132),
        .\badr[7]_INST_0_i_1_0 (fch_n_131),
        .\bdatw[8]_INST_0_i_2 (fch_n_134),
        .brdy(brdy),
        .clk(clk),
        .fadr(fadr),
        .fch_irq_req(fch_irq_req),
        .fch_pc(fch_pc),
        .\grn_reg[0] (fch_n_127),
        .\grn_reg[15] ({rgf_n_16,rgf_n_17,rgf_n_18,rgf_n_19,rgf_n_20,rgf_n_21,rgf_n_22,rgf_n_23,rgf_n_24,rgf_n_25,rgf_n_26,rgf_n_27,rgf_n_28,rgf_n_29,rgf_n_30,rgf_n_31}),
        .\grn_reg[15]_0 ({rgf_n_32,rgf_n_33,rgf_n_34,rgf_n_35,rgf_n_36,rgf_n_37,rgf_n_38,rgf_n_39,rgf_n_40,rgf_n_41,rgf_n_42,rgf_n_43,rgf_n_44,rgf_n_45,rgf_n_46,rgf_n_47}),
        .\grn_reg[15]_1 ({rgf_n_48,rgf_n_49,rgf_n_50,rgf_n_51,rgf_n_52,rgf_n_53,rgf_n_54,rgf_n_55,rgf_n_56,rgf_n_57,rgf_n_58,rgf_n_59,rgf_n_60,rgf_n_61,rgf_n_62,rgf_n_63}),
        .\grn_reg[15]_10 ({fch_n_199,fch_n_200}),
        .\grn_reg[15]_11 ({fch_n_193,fch_n_194}),
        .\grn_reg[15]_12 ({fch_n_195,fch_n_196}),
        .\grn_reg[15]_2 ({rgf_n_64,rgf_n_65,rgf_n_66,rgf_n_67,rgf_n_68,rgf_n_69,rgf_n_70,rgf_n_71,rgf_n_72,rgf_n_73,rgf_n_74,rgf_n_75,rgf_n_76,rgf_n_77,rgf_n_78,rgf_n_79}),
        .\grn_reg[15]_3 ({rgf_n_80,rgf_n_81,rgf_n_82,rgf_n_83,rgf_n_84,rgf_n_85,rgf_n_86,rgf_n_87,rgf_n_88,rgf_n_89,rgf_n_90,rgf_n_91,rgf_n_92,rgf_n_93,rgf_n_94,rgf_n_95}),
        .\grn_reg[15]_4 ({rgf_n_96,rgf_n_97,rgf_n_98,rgf_n_99,rgf_n_100,rgf_n_101,rgf_n_102,rgf_n_103,rgf_n_104,rgf_n_105,rgf_n_106,rgf_n_107,rgf_n_108,rgf_n_109,rgf_n_110,rgf_n_111}),
        .\grn_reg[15]_5 ({rgf_n_112,rgf_n_113,rgf_n_114,rgf_n_115,rgf_n_116,rgf_n_117,rgf_n_118,rgf_n_119,rgf_n_120,rgf_n_121,rgf_n_122,rgf_n_123,rgf_n_124,rgf_n_125,rgf_n_126,rgf_n_127}),
        .\grn_reg[15]_6 ({fch_n_208,fch_n_209}),
        .\grn_reg[15]_7 ({fch_n_204,fch_n_205}),
        .\grn_reg[15]_8 ({fch_n_202,fch_n_203}),
        .\grn_reg[15]_9 ({fch_n_197,fch_n_198}),
        .irq(irq),
        .irq_lev(irq_lev),
        .irq_lev_0_sp_1(rgf_n_259),
        .\iv_reg[0] (rgf_n_235),
        .\iv_reg[0]_0 (cbus_sel_cr),
        .\iv_reg[15] ({\ivec/p_0_in ,rgf_iv_ve}),
        .out({rgf_n_0,rgf_n_1,rgf_n_2,rgf_n_3,rgf_n_4,rgf_n_5,rgf_n_6,rgf_n_7,rgf_n_8,rgf_n_9,rgf_n_10,rgf_n_11,rgf_n_12,rgf_n_13,rgf_n_14,rgf_n_15}),
        .\pc_reg[15] ({fch_n_77,fch_n_78,fch_n_79,fch_n_80,fch_n_81,fch_n_82,fch_n_83,fch_n_84,fch_n_85,fch_n_86,fch_n_87,fch_n_88,fch_n_89,fch_n_90,fch_n_91,fch_n_92}),
        .\pc_reg[7] (rgf_n_231),
        .rst_n(rst_n),
        .sp_dec_0(sp_dec_0),
        .\sp_reg[0] (rgf_n_232),
        .\sp_reg[10] (rgf_n_218),
        .\sp_reg[10]_0 (rgf_n_228),
        .\sp_reg[11] (rgf_n_219),
        .\sp_reg[11]_0 (rgf_n_229),
        .\sp_reg[12] (rgf_n_220),
        .\sp_reg[13] (rgf_n_221),
        .\sp_reg[14] (rgf_n_222),
        .\sp_reg[14]_0 (rgf_n_230),
        .\sp_reg[15] (\sptr/p_0_in ),
        .\sp_reg[15]_0 (rgf_n_223),
        .\sp_reg[15]_1 (fch_n_65),
        .\sp_reg[15]_2 (fch_n_66),
        .\sp_reg[15]_3 (\sptr/sp__0 ),
        .\sp_reg[1] (rgf_n_209),
        .\sp_reg[1]_0 (rgf_n_225),
        .\sp_reg[2] (rgf_n_210),
        .\sp_reg[2]_0 (rgf_n_226),
        .\sp_reg[3] (rgf_n_211),
        .\sp_reg[4] (rgf_n_212),
        .\sp_reg[5] (rgf_n_213),
        .\sp_reg[6] (rgf_n_214),
        .\sp_reg[7] (rgf_n_215),
        .\sp_reg[8] (rgf_n_216),
        .\sp_reg[9] (rgf_n_217),
        .\sp_reg[9]_0 (rgf_n_227),
        .\sr_reg[0] (rgf_n_240),
        .\sr_reg[0]_0 (fch_n_126),
        .\sr_reg[13] ({fch_n_68,fch_n_69,fch_n_70,fch_n_71,fch_n_72,fch_n_73,fch_n_74,fch_n_75}),
        .\sr_reg[15] ({\sreg/p_2_in [7:4],rgf_n_132,rgf_n_133,\sreg/p_2_in [1],rgf_sr_nh,rgf_sr_flag,rgf_sr_ie,sr_bank}),
        .\sr_reg[1] (rgf_n_224),
        .\sr_reg[4] (rgf_n_260),
        .\sr_reg[5] (rgf_n_234),
        .\sr_reg[5]_0 (rgf_n_238),
        .\sr_reg[5]_1 (rgf_n_241),
        .\sr_reg[5]_2 (fch_n_76),
        .\sr_reg[6] (rgf_n_233),
        .\sr_reg[7] (rgf_n_239),
        .\sr_reg[7]_0 (rgf_n_242),
        .\stat[0]_i_4 (fch_n_174),
        .\stat_reg[0] (rgf_n_237));
endmodule

module tnsn_alu
   (O,
    tout__1_carry__0_i_8,
    tout__1_carry__1_i_3,
    cbus1_carry__2_i_4,
    \tnsn_dsp_c[1] ,
    tout__1_carry,
    cbus1_carry__0,
    cbus1_carry__0_0,
    cbus1_carry,
    DI,
    S,
    \iv_reg[4] ,
    \iv_reg[4]_0 ,
    \sr[6]_i_4 ,
    \sr[6]_i_4_0 ,
    abus_0,
    bbus_0,
    \grn[0]_i_3 ,
    \grn[4]_i_4 ,
    \iv_reg[11] ,
    \iv_reg[15] ,
    \iv_reg[1] ,
    \iv_reg[1]_0 ,
    \iv_reg[1]_1 );
  output [2:0]O;
  output [1:0]tout__1_carry__0_i_8;
  output [0:0]tout__1_carry__1_i_3;
  output [12:0]cbus1_carry__2_i_4;
  output \tnsn_dsp_c[1] ;
  output tout__1_carry;
  output cbus1_carry__0;
  output cbus1_carry__0_0;
  output cbus1_carry;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\iv_reg[4] ;
  input [3:0]\iv_reg[4]_0 ;
  input [0:0]\sr[6]_i_4 ;
  input [1:0]\sr[6]_i_4_0 ;
  input [9:0]abus_0;
  input [4:0]bbus_0;
  input [3:0]\grn[0]_i_3 ;
  input [3:0]\grn[4]_i_4 ;
  input [3:0]\iv_reg[11] ;
  input [3:0]\iv_reg[15] ;
  input \iv_reg[1] ;
  input \iv_reg[1]_0 ;
  input \iv_reg[1]_1 ;

  wire [2:0]DI;
  wire [2:0]O;
  wire [3:0]S;
  wire [9:0]abus_0;
  wire [4:0]bbus_0;
  wire cbus1_carry;
  wire cbus1_carry__0;
  wire cbus1_carry__0_0;
  wire [12:0]cbus1_carry__2_i_4;
  wire [3:0]\grn[0]_i_3 ;
  wire [3:0]\grn[4]_i_4 ;
  wire [3:0]\iv_reg[11] ;
  wire [3:0]\iv_reg[15] ;
  wire \iv_reg[1] ;
  wire \iv_reg[1]_0 ;
  wire \iv_reg[1]_1 ;
  wire [3:0]\iv_reg[4] ;
  wire [3:0]\iv_reg[4]_0 ;
  wire [0:0]\sr[6]_i_4 ;
  wire [1:0]\sr[6]_i_4_0 ;
  wire \tnsn_dsp_c[1] ;
  wire tout__1_carry;
  wire [1:0]tout__1_carry__0_i_8;
  wire [0:0]tout__1_carry__1_i_3;

  tnsn_alu_art art
       (.DI(DI),
        .O(O),
        .S(S),
        .abus_0(abus_0),
        .bbus_0(bbus_0),
        .cbus1_carry_0(cbus1_carry),
        .cbus1_carry__0_0(cbus1_carry__0),
        .cbus1_carry__0_1(cbus1_carry__0_0),
        .cbus1_carry__2_i_4(cbus1_carry__2_i_4),
        .\grn[0]_i_3 (\grn[0]_i_3 ),
        .\grn[4]_i_4 (\grn[4]_i_4 ),
        .\iv_reg[11] (\iv_reg[11] ),
        .\iv_reg[15] (\iv_reg[15] ),
        .\iv_reg[1] (\iv_reg[1] ),
        .\iv_reg[1]_0 (\iv_reg[1]_0 ),
        .\iv_reg[1]_1 (\iv_reg[1]_1 ),
        .\iv_reg[4] (\iv_reg[4] ),
        .\iv_reg[4]_0 (\iv_reg[4]_0 ),
        .\sr[6]_i_4 (\sr[6]_i_4 ),
        .\sr[6]_i_4_0 (\sr[6]_i_4_0 ),
        .\tnsn_dsp_c[1] (\tnsn_dsp_c[1] ),
        .tout__1_carry(tout__1_carry),
        .tout__1_carry__0_i_8(tout__1_carry__0_i_8),
        .tout__1_carry__1_i_3(tout__1_carry__1_i_3));
endmodule

module tnsn_alu_add
   (O,
    tout__1_carry__0_i_8,
    tout__1_carry__1_i_3,
    \tnsn_dsp_c[1] ,
    tout__1_carry_0,
    cbus1_carry__0,
    cbus1_carry__0_0,
    cbus1_carry,
    DI,
    S,
    \iv_reg[4] ,
    \iv_reg[4]_0 ,
    \sr[6]_i_4 ,
    \sr[6]_i_4_0 ,
    \iv_reg[2] ,
    \iv_reg[1] ,
    \iv_reg[1]_0 ,
    \iv_reg[1]_1 ,
    \iv_reg[6] );
  output [2:0]O;
  output [1:0]tout__1_carry__0_i_8;
  output [0:0]tout__1_carry__1_i_3;
  output \tnsn_dsp_c[1] ;
  output tout__1_carry_0;
  output cbus1_carry__0;
  output cbus1_carry__0_0;
  output cbus1_carry;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\iv_reg[4] ;
  input [3:0]\iv_reg[4]_0 ;
  input [0:0]\sr[6]_i_4 ;
  input [1:0]\sr[6]_i_4_0 ;
  input [1:0]\iv_reg[2] ;
  input \iv_reg[1] ;
  input \iv_reg[1]_0 ;
  input \iv_reg[1]_1 ;
  input [1:0]\iv_reg[6] ;

  wire \<const0> ;
  wire [2:0]DI;
  wire [2:0]O;
  wire [3:0]S;
  wire cbus1_carry;
  wire cbus1_carry__0;
  wire cbus1_carry__0_0;
  wire \iv_reg[1] ;
  wire \iv_reg[1]_0 ;
  wire \iv_reg[1]_1 ;
  wire [1:0]\iv_reg[2] ;
  wire [3:0]\iv_reg[4] ;
  wire [3:0]\iv_reg[4]_0 ;
  wire [1:0]\iv_reg[6] ;
  wire \sr[4]_i_18_n_0 ;
  wire [0:0]\sr[6]_i_4 ;
  wire [1:0]\sr[6]_i_4_0 ;
  wire \tnsn_dsp_c[1] ;
  wire tout__1_carry_0;
  wire [1:0]tout__1_carry__0_i_8;
  wire tout__1_carry__0_n_0;
  wire tout__1_carry__0_n_1;
  wire tout__1_carry__0_n_2;
  wire tout__1_carry__0_n_3;
  wire tout__1_carry__0_n_5;
  wire tout__1_carry__0_n_6;
  wire [0:0]tout__1_carry__1_i_3;
  wire tout__1_carry__1_n_3;
  wire tout__1_carry_n_0;
  wire tout__1_carry_n_1;
  wire tout__1_carry_n_2;
  wire tout__1_carry_n_3;
  wire tout__1_carry_n_5;
  wire [3:0]NLW_tout__1_carry__1_O_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \grn[1]_i_3 
       (.I0(\iv_reg[2] [0]),
        .I1(\iv_reg[1] ),
        .I2(O[1]),
        .I3(\iv_reg[1]_0 ),
        .I4(\iv_reg[1]_1 ),
        .O(\tnsn_dsp_c[1] ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \grn[2]_i_3 
       (.I0(tout__1_carry_n_5),
        .I1(\iv_reg[1]_0 ),
        .I2(\iv_reg[1] ),
        .I3(\iv_reg[2] [1]),
        .O(cbus1_carry));
  LUT4 #(
    .INIT(16'h2F20)) 
    \grn[5]_i_3 
       (.I0(tout__1_carry__0_n_6),
        .I1(\iv_reg[1]_0 ),
        .I2(\iv_reg[1] ),
        .I3(\iv_reg[6] [0]),
        .O(cbus1_carry__0_0));
  LUT4 #(
    .INIT(16'h2F20)) 
    \grn[6]_i_4 
       (.I0(tout__1_carry__0_n_5),
        .I1(\iv_reg[1]_0 ),
        .I2(\iv_reg[1] ),
        .I3(\iv_reg[6] [1]),
        .O(cbus1_carry__0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sr[4]_i_12 
       (.I0(\iv_reg[1]_0 ),
        .I1(\sr[4]_i_18_n_0 ),
        .I2(O[0]),
        .I3(O[1]),
        .I4(tout__1_carry_n_5),
        .I5(O[2]),
        .O(tout__1_carry_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_18 
       (.I0(tout__1_carry__0_i_8[0]),
        .I1(tout__1_carry__0_i_8[1]),
        .I2(tout__1_carry__0_n_6),
        .I3(tout__1_carry__0_n_5),
        .O(\sr[4]_i_18_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry
       (.CI(\<const0> ),
        .CO({tout__1_carry_n_0,tout__1_carry_n_1,tout__1_carry_n_2,tout__1_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({DI,\<const0> }),
        .O({O[2],tout__1_carry_n_5,O[1:0]}),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__0
       (.CI(tout__1_carry_n_0),
        .CO({tout__1_carry__0_n_0,tout__1_carry__0_n_1,tout__1_carry__0_n_2,tout__1_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(\iv_reg[4] ),
        .O({tout__1_carry__0_i_8[1],tout__1_carry__0_n_5,tout__1_carry__0_n_6,tout__1_carry__0_i_8[0]}),
        .S(\iv_reg[4]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__1
       (.CI(tout__1_carry__0_n_0),
        .CO(tout__1_carry__1_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\sr[6]_i_4 }),
        .O({tout__1_carry__1_i_3,NLW_tout__1_carry__1_O_UNCONNECTED[0]}),
        .S({\<const0> ,\<const0> ,\sr[6]_i_4_0 }));
endmodule

module tnsn_alu_art
   (O,
    tout__1_carry__0_i_8,
    tout__1_carry__1_i_3,
    cbus1_carry__2_i_4,
    \tnsn_dsp_c[1] ,
    tout__1_carry,
    cbus1_carry__0_0,
    cbus1_carry__0_1,
    cbus1_carry_0,
    DI,
    S,
    \iv_reg[4] ,
    \iv_reg[4]_0 ,
    \sr[6]_i_4 ,
    \sr[6]_i_4_0 ,
    abus_0,
    bbus_0,
    \grn[0]_i_3 ,
    \grn[4]_i_4 ,
    \iv_reg[11] ,
    \iv_reg[15] ,
    \iv_reg[1] ,
    \iv_reg[1]_0 ,
    \iv_reg[1]_1 );
  output [2:0]O;
  output [1:0]tout__1_carry__0_i_8;
  output [0:0]tout__1_carry__1_i_3;
  output [12:0]cbus1_carry__2_i_4;
  output \tnsn_dsp_c[1] ;
  output tout__1_carry;
  output cbus1_carry__0_0;
  output cbus1_carry__0_1;
  output cbus1_carry_0;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\iv_reg[4] ;
  input [3:0]\iv_reg[4]_0 ;
  input [0:0]\sr[6]_i_4 ;
  input [1:0]\sr[6]_i_4_0 ;
  input [9:0]abus_0;
  input [4:0]bbus_0;
  input [3:0]\grn[0]_i_3 ;
  input [3:0]\grn[4]_i_4 ;
  input [3:0]\iv_reg[11] ;
  input [3:0]\iv_reg[15] ;
  input \iv_reg[1] ;
  input \iv_reg[1]_0 ;
  input \iv_reg[1]_1 ;

  wire \<const0> ;
  wire [2:0]DI;
  wire [2:0]O;
  wire [3:0]S;
  wire [9:0]abus_0;
  wire [4:0]bbus_0;
  wire cbus1_carry_0;
  wire cbus1_carry__0_0;
  wire cbus1_carry__0_1;
  wire cbus1_carry__0_n_0;
  wire cbus1_carry__0_n_1;
  wire cbus1_carry__0_n_2;
  wire cbus1_carry__0_n_3;
  wire cbus1_carry__1_n_0;
  wire cbus1_carry__1_n_1;
  wire cbus1_carry__1_n_2;
  wire cbus1_carry__1_n_3;
  wire [12:0]cbus1_carry__2_i_4;
  wire cbus1_carry__2_n_1;
  wire cbus1_carry__2_n_2;
  wire cbus1_carry__2_n_3;
  wire cbus1_carry_n_0;
  wire cbus1_carry_n_1;
  wire cbus1_carry_n_2;
  wire cbus1_carry_n_3;
  wire [6:2]data0;
  wire [3:0]\grn[0]_i_3 ;
  wire [3:0]\grn[4]_i_4 ;
  wire [3:0]\iv_reg[11] ;
  wire [3:0]\iv_reg[15] ;
  wire \iv_reg[1] ;
  wire \iv_reg[1]_0 ;
  wire \iv_reg[1]_1 ;
  wire [3:0]\iv_reg[4] ;
  wire [3:0]\iv_reg[4]_0 ;
  wire [0:0]\sr[6]_i_4 ;
  wire [1:0]\sr[6]_i_4_0 ;
  wire \tnsn_dsp_c[1] ;
  wire tout__1_carry;
  wire [1:0]tout__1_carry__0_i_8;
  wire [0:0]tout__1_carry__1_i_3;

  GND GND
       (.G(\<const0> ));
  tnsn_alu_add add
       (.DI(DI),
        .O(O),
        .S(S),
        .cbus1_carry(cbus1_carry_0),
        .cbus1_carry__0(cbus1_carry__0_0),
        .cbus1_carry__0_0(cbus1_carry__0_1),
        .\iv_reg[1] (\iv_reg[1] ),
        .\iv_reg[1]_0 (\iv_reg[1]_0 ),
        .\iv_reg[1]_1 (\iv_reg[1]_1 ),
        .\iv_reg[2] ({data0[2],cbus1_carry__2_i_4[1]}),
        .\iv_reg[4] (\iv_reg[4] ),
        .\iv_reg[4]_0 (\iv_reg[4]_0 ),
        .\iv_reg[6] (data0[6:5]),
        .\sr[6]_i_4 (\sr[6]_i_4 ),
        .\sr[6]_i_4_0 (\sr[6]_i_4_0 ),
        .\tnsn_dsp_c[1] (\tnsn_dsp_c[1] ),
        .tout__1_carry_0(tout__1_carry),
        .tout__1_carry__0_i_8(tout__1_carry__0_i_8),
        .tout__1_carry__1_i_3(tout__1_carry__1_i_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cbus1_carry
       (.CI(\<const0> ),
        .CO({cbus1_carry_n_0,cbus1_carry_n_1,cbus1_carry_n_2,cbus1_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({abus_0[1],bbus_0[1],abus_0[0],bbus_0[0]}),
        .O({cbus1_carry__2_i_4[2],data0[2],cbus1_carry__2_i_4[1:0]}),
        .S(\grn[0]_i_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cbus1_carry__0
       (.CI(cbus1_carry_n_0),
        .CO({cbus1_carry__0_n_0,cbus1_carry__0_n_1,cbus1_carry__0_n_2,cbus1_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({abus_0[2],bbus_0[4:2]}),
        .O({cbus1_carry__2_i_4[4],data0[6:5],cbus1_carry__2_i_4[3]}),
        .S(\grn[4]_i_4 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cbus1_carry__1
       (.CI(cbus1_carry__0_n_0),
        .CO({cbus1_carry__1_n_0,cbus1_carry__1_n_1,cbus1_carry__1_n_2,cbus1_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(abus_0[6:3]),
        .O(cbus1_carry__2_i_4[8:5]),
        .S(\iv_reg[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cbus1_carry__2
       (.CI(cbus1_carry__1_n_0),
        .CO({cbus1_carry__2_n_1,cbus1_carry__2_n_2,cbus1_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,abus_0[9:7]}),
        .O(cbus1_carry__2_i_4[12:9]),
        .S(\iv_reg[15] ));
endmodule

module tnsn_fch
   (.out({ir[15],ir[14],ir[13],ir[12],ir[11],ir[10],ir[7],ir[6],ir[1],ir[0]}),
    \stat_reg[0] ,
    bdatw,
    \stat_reg[0]_0 ,
    bbus_0,
    D,
    \read_cyc_reg[1] ,
    \stat_reg[0]_1 ,
    \stat_reg[0]_2 ,
    \grn[1]_i_10_0 ,
    \sr_reg[13] ,
    \stat_reg[0]_3 ,
    \pc_reg[15] ,
    \stat_reg[2] ,
    \stat_reg[2]_0 ,
    abus_0,
    \stat_reg[1] ,
    tnsn_dsp_a,
    tnsn_dsp_b,
    \stat_reg[2]_1 ,
    \tnsn_dsp_b[8]_INST_0_i_1_0 ,
    cbus1_carry,
    rst_n_0,
    \stat_reg[0]_4 ,
    \badr[15]_INST_0_i_38_0 ,
    \stat_reg[2]_2 ,
    \badr[15]_INST_0_i_38_1 ,
    \badr[15]_INST_0_i_35_0 ,
    \stat_reg[2]_3 ,
    rst_n_fl_reg_0,
    \stat_reg[0]_5 ,
    rst_n_fl_reg_1,
    in0,
    \stat_reg[0]_6 ,
    rst_n_fl_reg_2,
    \stat_reg[0]_7 ,
    brdy_0,
    rst_n_fl_reg_3,
    rst_n_fl_reg_4,
    rst_n_fl_reg_5,
    \sr_reg[4] ,
    \sp_reg[15] ,
    \sp_reg[7] ,
    S,
    DI,
    \sp_reg[7]_0 ,
    \bdatw[11]_INST_0_i_2_0 ,
    \sp_reg[11] ,
    \stat_reg[1]_0 ,
    \sp_reg[7]_1 ,
    brdy_1,
    badr,
    E,
    \stat_reg[2]_4 ,
    \sr_reg[1] ,
    \stat_reg[2]_5 ,
    \stat_reg[2]_6 ,
    \stat_reg[2]_7 ,
    \sr_reg[1]_0 ,
    \sr_reg[1]_1 ,
    \stat_reg[2]_8 ,
    \sp_reg[7]_2 ,
    \sp_reg[7]_3 ,
    brdy_2,
    brdy_3,
    fch_irq_req,
    clk,
    ctl_fetch_fl_reg_0,
    rst_n,
    \bcmd[1] ,
    Q,
    \bdatw[15] ,
    sp_dec_0,
    \sp_reg[1] ,
    \sp_reg[1]_0 ,
    \sp_reg[2] ,
    \sp_reg[3] ,
    \sp_reg[4] ,
    \sp_reg[5] ,
    \sp_reg[6] ,
    \sp_reg[7]_4 ,
    \sp_reg[8] ,
    \sp_reg[9] ,
    \sp_reg[10] ,
    \sp_reg[11]_0 ,
    \sp_reg[12] ,
    \sp_reg[13] ,
    \sp_reg[14] ,
    \sp_reg[15]_0 ,
    \bdatw[15]_INST_0_i_1_0 ,
    \pc_reg[15]_0 ,
    fch_pc,
    O,
    \iv_reg[15] ,
    \iv_reg[11] ,
    \iv_reg[2] ,
    tnsn_dsp_c,
    \iv_reg[2]_0 ,
    \iv_reg[3] ,
    \iv_reg[7] ,
    \iv_reg[4] ,
    \sr_reg[5] ,
    \iv_reg[5] ,
    \iv_reg[5]_0 ,
    \sr_reg[6] ,
    \iv_reg[6] ,
    \iv_reg[6]_0 ,
    \grn[7]_i_3_0 ,
    \iv_reg[15]_0 ,
    \iv_reg[14] ,
    bdatr,
    \iv_reg[13] ,
    \iv_reg[9] ,
    \iv_reg[8] ,
    \pc_reg[1] ,
    read_cyc,
    \iv_reg[1] ,
    \iv_reg[0] ,
    .tnsn_dsp_b_8_sp_1(tnsn_dsp_b_8_sn_1),
    \sr[4]_i_5_0 ,
    \sr_reg[6]_0 ,
    cpuid,
    \iv_reg[0]_0 ,
    brdy,
    \bdatw[15]_INST_0_i_1_1 ,
    \bdatw[15]_INST_0_i_22_0 ,
    .tnsn_dsp_a_7_sp_1(tnsn_dsp_a_7_sn_1),
    .tnsn_dsp_a_1_sp_1(tnsn_dsp_a_1_sn_1),
    .badr_2_sp_1(badr_2_sn_1),
    .badr_9_sp_1(badr_9_sn_1),
    .badr_10_sp_1(badr_10_sn_1),
    .badr_11_sp_1(badr_11_sn_1),
    .badr_14_sp_1(badr_14_sn_1),
    \badr[15]_INST_0_i_1_0 ,
    \bdatw[15]_INST_0_i_1_2 ,
    \bdatw[15]_INST_0_i_5_0 ,
    \badr[15]_INST_0_i_1_1 ,
    \bdatw[15]_INST_0_i_5_1 ,
    \badr[15]_INST_0_i_1_2 ,
    \badr[15]_INST_0_i_1_3 ,
    \badr[15]_INST_0_i_16_0 ,
    \bdatw[15]_INST_0_i_27_0 ,
    \badr[15]_INST_0_i_63_0 ,
    \stat_reg[2]_9 ,
    ctl_fetch_fl_reg_1,
    \badr[15]_INST_0_i_36_0 ,
    \iv[15]_i_2_0 ,
    \grn_reg[0] ,
    ctl_fetch_fl_reg_2,
    ctl_fetch_fl_reg_3,
    .bdatw_0_sp_1(bdatw_0_sn_1),
    \bdatw[13]_INST_0_i_17_0 ,
    \tnsn_dsp_a[7]_INST_0_i_8_0 ,
    ctl_fetch_fl_reg_4,
    ctl_fetch_inferred_i_4_0,
    \stat_reg[0]_8 ,
    \stat_reg[1]_1 ,
    ctl_fetch_inferred_i_3_0,
    \eir_fl_reg[1]_0 ,
    irq_vec,
    \eir_fl_reg[1]_1 ,
    \iv[15]_i_6_0 ,
    \stat_reg[2]_10 ,
    \sr[4]_i_3_0 ,
    \grn_reg[0]_0 ,
    irq_lev,
    SR,
    fdat);
  output \stat_reg[0] ;
  output [15:0]bdatw;
  output \stat_reg[0]_0 ;
  output [4:0]bbus_0;
  output [15:0]D;
  output [15:0]\read_cyc_reg[1] ;
  output \stat_reg[0]_1 ;
  output \stat_reg[0]_2 ;
  output \grn[1]_i_10_0 ;
  output [7:0]\sr_reg[13] ;
  output \stat_reg[0]_3 ;
  output [15:0]\pc_reg[15] ;
  output \stat_reg[2] ;
  output \stat_reg[2]_0 ;
  output [9:0]abus_0;
  output \stat_reg[1] ;
  output [7:0]tnsn_dsp_a;
  output [8:0]tnsn_dsp_b;
  output \stat_reg[2]_1 ;
  output \tnsn_dsp_b[8]_INST_0_i_1_0 ;
  output cbus1_carry;
  output rst_n_0;
  output \stat_reg[0]_4 ;
  output \badr[15]_INST_0_i_38_0 ;
  output \stat_reg[2]_2 ;
  output \badr[15]_INST_0_i_38_1 ;
  output \badr[15]_INST_0_i_35_0 ;
  output \stat_reg[2]_3 ;
  output rst_n_fl_reg_0;
  output \stat_reg[0]_5 ;
  output [2:0]rst_n_fl_reg_1;
  output in0;
  output \stat_reg[0]_6 ;
  output rst_n_fl_reg_2;
  output \stat_reg[0]_7 ;
  output brdy_0;
  output rst_n_fl_reg_3;
  output rst_n_fl_reg_4;
  output rst_n_fl_reg_5;
  output \sr_reg[4] ;
  output [3:0]\sp_reg[15] ;
  output [3:0]\sp_reg[7] ;
  output [3:0]S;
  output [2:0]DI;
  output [3:0]\sp_reg[7]_0 ;
  output [3:0]\bdatw[11]_INST_0_i_2_0 ;
  output [3:0]\sp_reg[11] ;
  output \stat_reg[1]_0 ;
  output [0:0]\sp_reg[7]_1 ;
  output brdy_1;
  output [15:0]badr;
  output [1:0]E;
  output [1:0]\stat_reg[2]_4 ;
  output [1:0]\sr_reg[1] ;
  output [1:0]\stat_reg[2]_5 ;
  output [0:0]\stat_reg[2]_6 ;
  output [1:0]\stat_reg[2]_7 ;
  output [1:0]\sr_reg[1]_0 ;
  output [1:0]\sr_reg[1]_1 ;
  output [1:0]\stat_reg[2]_8 ;
  output [3:0]\sp_reg[7]_2 ;
  output [1:0]\sp_reg[7]_3 ;
  output brdy_2;
  output brdy_3;
  input fch_irq_req;
  input clk;
  input ctl_fetch_fl_reg_0;
  input rst_n;
  input \bcmd[1] ;
  input [2:0]Q;
  input [15:0]\bdatw[15] ;
  input [15:0]sp_dec_0;
  input \sp_reg[1] ;
  input \sp_reg[1]_0 ;
  input \sp_reg[2] ;
  input \sp_reg[3] ;
  input \sp_reg[4] ;
  input \sp_reg[5] ;
  input \sp_reg[6] ;
  input \sp_reg[7]_4 ;
  input \sp_reg[8] ;
  input \sp_reg[9] ;
  input \sp_reg[10] ;
  input \sp_reg[11]_0 ;
  input \sp_reg[12] ;
  input \sp_reg[13] ;
  input \sp_reg[14] ;
  input \sp_reg[15]_0 ;
  input [15:0]\bdatw[15]_INST_0_i_1_0 ;
  input [15:0]\pc_reg[15]_0 ;
  input [15:0]fch_pc;
  input [2:0]O;
  input [12:0]\iv_reg[15] ;
  input \iv_reg[11] ;
  input \iv_reg[2] ;
  input [9:0]tnsn_dsp_c;
  input \iv_reg[2]_0 ;
  input \iv_reg[3] ;
  input [1:0]\iv_reg[7] ;
  input \iv_reg[4] ;
  input \sr_reg[5] ;
  input \iv_reg[5] ;
  input \iv_reg[5]_0 ;
  input \sr_reg[6] ;
  input \iv_reg[6] ;
  input \iv_reg[6]_0 ;
  input \grn[7]_i_3_0 ;
  input \iv_reg[15]_0 ;
  input \iv_reg[14] ;
  input [3:0]bdatr;
  input \iv_reg[13] ;
  input \iv_reg[9] ;
  input \iv_reg[8] ;
  input \pc_reg[1] ;
  input [2:0]read_cyc;
  input \iv_reg[1] ;
  input \iv_reg[0] ;
  input \sr[4]_i_5_0 ;
  input [0:0]\sr_reg[6]_0 ;
  input [1:0]cpuid;
  input \iv_reg[0]_0 ;
  input brdy;
  input [15:0]\bdatw[15]_INST_0_i_1_1 ;
  input [15:0]\bdatw[15]_INST_0_i_22_0 ;
  input [15:0]\badr[15]_INST_0_i_1_0 ;
  input [15:0]\bdatw[15]_INST_0_i_1_2 ;
  input [15:0]\bdatw[15]_INST_0_i_5_0 ;
  input [15:0]\badr[15]_INST_0_i_1_1 ;
  input [15:0]\bdatw[15]_INST_0_i_5_1 ;
  input [15:0]\badr[15]_INST_0_i_1_2 ;
  input [15:0]\badr[15]_INST_0_i_1_3 ;
  input \badr[15]_INST_0_i_16_0 ;
  input \bdatw[15]_INST_0_i_27_0 ;
  input \badr[15]_INST_0_i_63_0 ;
  input \stat_reg[2]_9 ;
  input ctl_fetch_fl_reg_1;
  input \badr[15]_INST_0_i_36_0 ;
  input \iv[15]_i_2_0 ;
  input \grn_reg[0] ;
  input ctl_fetch_fl_reg_2;
  input ctl_fetch_fl_reg_3;
  input \bdatw[13]_INST_0_i_17_0 ;
  input \tnsn_dsp_a[7]_INST_0_i_8_0 ;
  input ctl_fetch_fl_reg_4;
  input ctl_fetch_inferred_i_4_0;
  input \stat_reg[0]_8 ;
  input \stat_reg[1]_1 ;
  input ctl_fetch_inferred_i_3_0;
  input \eir_fl_reg[1]_0 ;
  input [5:0]irq_vec;
  input \eir_fl_reg[1]_1 ;
  input \iv[15]_i_6_0 ;
  input \stat_reg[2]_10 ;
  input \sr[4]_i_3_0 ;
  input \grn_reg[0]_0 ;
  input [1:0]irq_lev;
  input [0:0]SR;
  input [15:0]fdat;
     output [15:0]ir;
  input tnsn_dsp_b_8_sn_1;
  input tnsn_dsp_a_7_sn_1;
  input tnsn_dsp_a_1_sn_1;
  input badr_2_sn_1;
  input badr_9_sn_1;
  input badr_10_sn_1;
  input badr_11_sn_1;
  input badr_14_sn_1;
  input bdatw_0_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]D;
  wire [2:0]DI;
  wire [1:0]E;
  wire [2:0]O;
  wire [2:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [9:0]abus_0;
  wire [15:0]badr;
  wire \badr[0]_INST_0_i_1_n_0 ;
  wire \badr[0]_INST_0_i_2_n_0 ;
  wire \badr[0]_INST_0_i_3_n_0 ;
  wire \badr[0]_INST_0_i_4_n_0 ;
  wire \badr[0]_INST_0_i_5_n_0 ;
  wire \badr[0]_INST_0_i_6_n_0 ;
  wire \badr[0]_INST_0_i_7_n_0 ;
  wire \badr[10]_INST_0_i_2_n_0 ;
  wire \badr[10]_INST_0_i_3_n_0 ;
  wire \badr[10]_INST_0_i_5_n_0 ;
  wire \badr[10]_INST_0_i_6_n_0 ;
  wire \badr[10]_INST_0_i_7_n_0 ;
  wire \badr[11]_INST_0_i_2_n_0 ;
  wire \badr[11]_INST_0_i_3_n_0 ;
  wire \badr[11]_INST_0_i_5_n_0 ;
  wire \badr[11]_INST_0_i_6_n_0 ;
  wire \badr[11]_INST_0_i_7_n_0 ;
  wire \badr[12]_INST_0_i_2_n_0 ;
  wire \badr[12]_INST_0_i_3_n_0 ;
  wire \badr[12]_INST_0_i_4_n_0 ;
  wire \badr[12]_INST_0_i_5_n_0 ;
  wire \badr[12]_INST_0_i_6_n_0 ;
  wire \badr[12]_INST_0_i_7_n_0 ;
  wire \badr[13]_INST_0_i_2_n_0 ;
  wire \badr[13]_INST_0_i_3_n_0 ;
  wire \badr[13]_INST_0_i_4_n_0 ;
  wire \badr[13]_INST_0_i_5_n_0 ;
  wire \badr[13]_INST_0_i_6_n_0 ;
  wire \badr[13]_INST_0_i_7_n_0 ;
  wire \badr[14]_INST_0_i_2_n_0 ;
  wire \badr[14]_INST_0_i_3_n_0 ;
  wire \badr[14]_INST_0_i_5_n_0 ;
  wire \badr[14]_INST_0_i_6_n_0 ;
  wire \badr[14]_INST_0_i_7_n_0 ;
  wire \badr[15]_INST_0_i_10_n_0 ;
  wire \badr[15]_INST_0_i_12_n_0 ;
  wire \badr[15]_INST_0_i_16_0 ;
  wire \badr[15]_INST_0_i_17_n_0 ;
  wire \badr[15]_INST_0_i_18_n_0 ;
  wire \badr[15]_INST_0_i_19_n_0 ;
  wire [15:0]\badr[15]_INST_0_i_1_0 ;
  wire [15:0]\badr[15]_INST_0_i_1_1 ;
  wire [15:0]\badr[15]_INST_0_i_1_2 ;
  wire [15:0]\badr[15]_INST_0_i_1_3 ;
  wire \badr[15]_INST_0_i_1_n_0 ;
  wire \badr[15]_INST_0_i_20_n_0 ;
  wire \badr[15]_INST_0_i_21_n_0 ;
  wire \badr[15]_INST_0_i_22_n_0 ;
  wire \badr[15]_INST_0_i_23_n_0 ;
  wire \badr[15]_INST_0_i_24_n_0 ;
  wire \badr[15]_INST_0_i_25_n_0 ;
  wire \badr[15]_INST_0_i_26_n_0 ;
  wire \badr[15]_INST_0_i_28_n_0 ;
  wire \badr[15]_INST_0_i_29_n_0 ;
  wire \badr[15]_INST_0_i_2_n_0 ;
  wire \badr[15]_INST_0_i_30_n_0 ;
  wire \badr[15]_INST_0_i_31_n_0 ;
  wire \badr[15]_INST_0_i_32_n_0 ;
  wire \badr[15]_INST_0_i_33_n_0 ;
  wire \badr[15]_INST_0_i_34_n_0 ;
  wire \badr[15]_INST_0_i_35_0 ;
  wire \badr[15]_INST_0_i_35_n_0 ;
  wire \badr[15]_INST_0_i_36_0 ;
  wire \badr[15]_INST_0_i_36_n_0 ;
  wire \badr[15]_INST_0_i_37_n_0 ;
  wire \badr[15]_INST_0_i_38_0 ;
  wire \badr[15]_INST_0_i_38_1 ;
  wire \badr[15]_INST_0_i_38_n_0 ;
  wire \badr[15]_INST_0_i_39_n_0 ;
  wire \badr[15]_INST_0_i_3_n_0 ;
  wire \badr[15]_INST_0_i_40_n_0 ;
  wire \badr[15]_INST_0_i_41_n_0 ;
  wire \badr[15]_INST_0_i_42_n_0 ;
  wire \badr[15]_INST_0_i_43_n_0 ;
  wire \badr[15]_INST_0_i_44_n_0 ;
  wire \badr[15]_INST_0_i_45_n_0 ;
  wire \badr[15]_INST_0_i_46_n_0 ;
  wire \badr[15]_INST_0_i_47_n_0 ;
  wire \badr[15]_INST_0_i_48_n_0 ;
  wire \badr[15]_INST_0_i_49_n_0 ;
  wire \badr[15]_INST_0_i_4_n_0 ;
  wire \badr[15]_INST_0_i_50_n_0 ;
  wire \badr[15]_INST_0_i_51_n_0 ;
  wire \badr[15]_INST_0_i_52_n_0 ;
  wire \badr[15]_INST_0_i_53_n_0 ;
  wire \badr[15]_INST_0_i_54_n_0 ;
  wire \badr[15]_INST_0_i_55_n_0 ;
  wire \badr[15]_INST_0_i_56_n_0 ;
  wire \badr[15]_INST_0_i_57_n_0 ;
  wire \badr[15]_INST_0_i_58_n_0 ;
  wire \badr[15]_INST_0_i_59_n_0 ;
  wire \badr[15]_INST_0_i_5_n_0 ;
  wire \badr[15]_INST_0_i_60_n_0 ;
  wire \badr[15]_INST_0_i_61_n_0 ;
  wire \badr[15]_INST_0_i_62_n_0 ;
  wire \badr[15]_INST_0_i_63_0 ;
  wire \badr[15]_INST_0_i_63_n_0 ;
  wire \badr[15]_INST_0_i_64_n_0 ;
  wire \badr[15]_INST_0_i_65_n_0 ;
  wire \badr[15]_INST_0_i_66_n_0 ;
  wire \badr[15]_INST_0_i_67_n_0 ;
  wire \badr[15]_INST_0_i_68_n_0 ;
  wire \badr[15]_INST_0_i_69_n_0 ;
  wire \badr[15]_INST_0_i_6_n_0 ;
  wire \badr[15]_INST_0_i_70_n_0 ;
  wire \badr[15]_INST_0_i_71_n_0 ;
  wire \badr[15]_INST_0_i_72_n_0 ;
  wire \badr[15]_INST_0_i_73_n_0 ;
  wire \badr[15]_INST_0_i_74_n_0 ;
  wire \badr[15]_INST_0_i_75_n_0 ;
  wire \badr[15]_INST_0_i_76_n_0 ;
  wire \badr[15]_INST_0_i_77_n_0 ;
  wire \badr[15]_INST_0_i_78_n_0 ;
  wire \badr[15]_INST_0_i_79_n_0 ;
  wire \badr[15]_INST_0_i_7_n_0 ;
  wire \badr[15]_INST_0_i_80_n_0 ;
  wire \badr[15]_INST_0_i_81_n_0 ;
  wire \badr[15]_INST_0_i_83_n_0 ;
  wire \badr[15]_INST_0_i_84_n_0 ;
  wire \badr[15]_INST_0_i_85_n_0 ;
  wire \badr[15]_INST_0_i_86_n_0 ;
  wire \badr[15]_INST_0_i_87_n_0 ;
  wire \badr[15]_INST_0_i_88_n_0 ;
  wire \badr[15]_INST_0_i_89_n_0 ;
  wire \badr[15]_INST_0_i_8_n_0 ;
  wire \badr[15]_INST_0_i_90_n_0 ;
  wire \badr[15]_INST_0_i_91_n_0 ;
  wire \badr[15]_INST_0_i_92_n_0 ;
  wire \badr[15]_INST_0_i_94_n_0 ;
  wire \badr[15]_INST_0_i_95_n_0 ;
  wire \badr[15]_INST_0_i_96_n_0 ;
  wire \badr[15]_INST_0_i_9_n_0 ;
  wire \badr[1]_INST_0_i_2_n_0 ;
  wire \badr[1]_INST_0_i_3_n_0 ;
  wire \badr[1]_INST_0_i_4_n_0 ;
  wire \badr[1]_INST_0_i_6_n_0 ;
  wire \badr[1]_INST_0_i_7_n_0 ;
  wire \badr[2]_INST_0_i_1_n_0 ;
  wire \badr[2]_INST_0_i_2_n_0 ;
  wire \badr[2]_INST_0_i_3_n_0 ;
  wire \badr[2]_INST_0_i_4_n_0 ;
  wire \badr[2]_INST_0_i_6_n_0 ;
  wire \badr[2]_INST_0_i_7_n_0 ;
  wire \badr[3]_INST_0_i_2_n_0 ;
  wire \badr[3]_INST_0_i_3_n_0 ;
  wire \badr[3]_INST_0_i_4_n_0 ;
  wire \badr[3]_INST_0_i_5_n_0 ;
  wire \badr[3]_INST_0_i_6_n_0 ;
  wire \badr[3]_INST_0_i_7_n_0 ;
  wire \badr[4]_INST_0_i_1_n_0 ;
  wire \badr[4]_INST_0_i_2_n_0 ;
  wire \badr[4]_INST_0_i_3_n_0 ;
  wire \badr[4]_INST_0_i_4_n_0 ;
  wire \badr[4]_INST_0_i_5_n_0 ;
  wire \badr[4]_INST_0_i_6_n_0 ;
  wire \badr[4]_INST_0_i_7_n_0 ;
  wire \badr[5]_INST_0_i_1_n_0 ;
  wire \badr[5]_INST_0_i_2_n_0 ;
  wire \badr[5]_INST_0_i_3_n_0 ;
  wire \badr[5]_INST_0_i_4_n_0 ;
  wire \badr[5]_INST_0_i_5_n_0 ;
  wire \badr[5]_INST_0_i_6_n_0 ;
  wire \badr[5]_INST_0_i_7_n_0 ;
  wire \badr[6]_INST_0_i_1_n_0 ;
  wire \badr[6]_INST_0_i_2_n_0 ;
  wire \badr[6]_INST_0_i_3_n_0 ;
  wire \badr[6]_INST_0_i_4_n_0 ;
  wire \badr[6]_INST_0_i_5_n_0 ;
  wire \badr[6]_INST_0_i_6_n_0 ;
  wire \badr[6]_INST_0_i_7_n_0 ;
  wire \badr[7]_INST_0_i_2_n_0 ;
  wire \badr[7]_INST_0_i_3_n_0 ;
  wire \badr[7]_INST_0_i_4_n_0 ;
  wire \badr[7]_INST_0_i_5_n_0 ;
  wire \badr[7]_INST_0_i_6_n_0 ;
  wire \badr[8]_INST_0_i_1_n_0 ;
  wire \badr[8]_INST_0_i_2_n_0 ;
  wire \badr[8]_INST_0_i_3_n_0 ;
  wire \badr[8]_INST_0_i_4_n_0 ;
  wire \badr[8]_INST_0_i_5_n_0 ;
  wire \badr[8]_INST_0_i_6_n_0 ;
  wire \badr[8]_INST_0_i_7_n_0 ;
  wire \badr[9]_INST_0_i_1_n_0 ;
  wire \badr[9]_INST_0_i_2_n_0 ;
  wire \badr[9]_INST_0_i_3_n_0 ;
  wire \badr[9]_INST_0_i_4_n_0 ;
  wire \badr[9]_INST_0_i_6_n_0 ;
  wire \badr[9]_INST_0_i_7_n_0 ;
  wire badr_10_sn_1;
  wire badr_11_sn_1;
  wire badr_14_sn_1;
  wire badr_2_sn_1;
  wire badr_9_sn_1;
  wire [4:0]bbus_0;
  wire \bcmd[0]_INST_0_i_1_n_0 ;
  wire \bcmd[0]_INST_0_i_2_n_0 ;
  wire \bcmd[0]_INST_0_i_3_n_0 ;
  wire \bcmd[0]_INST_0_i_4_n_0 ;
  wire \bcmd[0]_INST_0_i_5_n_0 ;
  wire \bcmd[0]_INST_0_i_7_n_0 ;
  wire \bcmd[1] ;
  wire \bcmd[1]_INST_0_i_1_n_0 ;
  wire \bcmd[1]_INST_0_i_3_n_0 ;
  wire \bcmd[1]_INST_0_i_4_n_0 ;
  wire \bcmd[1]_INST_0_i_5_n_0 ;
  wire \bcmd[1]_INST_0_i_6_n_0 ;
  wire \bcmd[1]_INST_0_i_7_n_0 ;
  wire \bcmd[1]_INST_0_i_8_n_0 ;
  wire \bcmd[2]_INST_0_i_1_n_0 ;
  wire [3:0]bdatr;
  wire [15:0]bdatw;
  wire \bdatw[10]_INST_0_i_10_n_0 ;
  wire \bdatw[10]_INST_0_i_11_n_0 ;
  wire \bdatw[10]_INST_0_i_12_n_0 ;
  wire \bdatw[10]_INST_0_i_13_n_0 ;
  wire \bdatw[10]_INST_0_i_14_n_0 ;
  wire \bdatw[10]_INST_0_i_15_n_0 ;
  wire \bdatw[10]_INST_0_i_16_n_0 ;
  wire \bdatw[10]_INST_0_i_17_n_0 ;
  wire \bdatw[10]_INST_0_i_18_n_0 ;
  wire \bdatw[10]_INST_0_i_1_n_0 ;
  wire \bdatw[10]_INST_0_i_2_n_0 ;
  wire \bdatw[10]_INST_0_i_3_n_0 ;
  wire \bdatw[10]_INST_0_i_4_n_0 ;
  wire \bdatw[10]_INST_0_i_5_n_0 ;
  wire \bdatw[10]_INST_0_i_6_n_0 ;
  wire \bdatw[10]_INST_0_i_7_n_0 ;
  wire \bdatw[10]_INST_0_i_8_n_0 ;
  wire \bdatw[10]_INST_0_i_9_n_0 ;
  wire \bdatw[11]_INST_0_i_10_n_0 ;
  wire \bdatw[11]_INST_0_i_11_n_0 ;
  wire \bdatw[11]_INST_0_i_12_n_0 ;
  wire \bdatw[11]_INST_0_i_13_n_0 ;
  wire \bdatw[11]_INST_0_i_14_n_0 ;
  wire \bdatw[11]_INST_0_i_15_n_0 ;
  wire \bdatw[11]_INST_0_i_16_n_0 ;
  wire \bdatw[11]_INST_0_i_17_n_0 ;
  wire \bdatw[11]_INST_0_i_18_n_0 ;
  wire \bdatw[11]_INST_0_i_1_n_0 ;
  wire [3:0]\bdatw[11]_INST_0_i_2_0 ;
  wire \bdatw[11]_INST_0_i_2_n_0 ;
  wire \bdatw[11]_INST_0_i_3_n_0 ;
  wire \bdatw[11]_INST_0_i_4_n_0 ;
  wire \bdatw[11]_INST_0_i_5_n_0 ;
  wire \bdatw[11]_INST_0_i_6_n_0 ;
  wire \bdatw[11]_INST_0_i_7_n_0 ;
  wire \bdatw[11]_INST_0_i_8_n_0 ;
  wire \bdatw[11]_INST_0_i_9_n_0 ;
  wire \bdatw[12]_INST_0_i_10_n_0 ;
  wire \bdatw[12]_INST_0_i_11_n_0 ;
  wire \bdatw[12]_INST_0_i_12_n_0 ;
  wire \bdatw[12]_INST_0_i_13_n_0 ;
  wire \bdatw[12]_INST_0_i_14_n_0 ;
  wire \bdatw[12]_INST_0_i_15_n_0 ;
  wire \bdatw[12]_INST_0_i_16_n_0 ;
  wire \bdatw[12]_INST_0_i_17_n_0 ;
  wire \bdatw[12]_INST_0_i_1_n_0 ;
  wire \bdatw[12]_INST_0_i_2_n_0 ;
  wire \bdatw[12]_INST_0_i_3_n_0 ;
  wire \bdatw[12]_INST_0_i_4_n_0 ;
  wire \bdatw[12]_INST_0_i_5_n_0 ;
  wire \bdatw[12]_INST_0_i_6_n_0 ;
  wire \bdatw[12]_INST_0_i_7_n_0 ;
  wire \bdatw[12]_INST_0_i_8_n_0 ;
  wire \bdatw[12]_INST_0_i_9_n_0 ;
  wire \bdatw[13]_INST_0_i_10_n_0 ;
  wire \bdatw[13]_INST_0_i_11_n_0 ;
  wire \bdatw[13]_INST_0_i_12_n_0 ;
  wire \bdatw[13]_INST_0_i_13_n_0 ;
  wire \bdatw[13]_INST_0_i_14_n_0 ;
  wire \bdatw[13]_INST_0_i_15_n_0 ;
  wire \bdatw[13]_INST_0_i_16_n_0 ;
  wire \bdatw[13]_INST_0_i_17_0 ;
  wire \bdatw[13]_INST_0_i_17_n_0 ;
  wire \bdatw[13]_INST_0_i_18_n_0 ;
  wire \bdatw[13]_INST_0_i_1_n_0 ;
  wire \bdatw[13]_INST_0_i_2_n_0 ;
  wire \bdatw[13]_INST_0_i_3_n_0 ;
  wire \bdatw[13]_INST_0_i_4_n_0 ;
  wire \bdatw[13]_INST_0_i_5_n_0 ;
  wire \bdatw[13]_INST_0_i_6_n_0 ;
  wire \bdatw[13]_INST_0_i_7_n_0 ;
  wire \bdatw[13]_INST_0_i_8_n_0 ;
  wire \bdatw[13]_INST_0_i_9_n_0 ;
  wire \bdatw[14]_INST_0_i_10_n_0 ;
  wire \bdatw[14]_INST_0_i_11_n_0 ;
  wire \bdatw[14]_INST_0_i_12_n_0 ;
  wire \bdatw[14]_INST_0_i_13_n_0 ;
  wire \bdatw[14]_INST_0_i_14_n_0 ;
  wire \bdatw[14]_INST_0_i_15_n_0 ;
  wire \bdatw[14]_INST_0_i_16_n_0 ;
  wire \bdatw[14]_INST_0_i_17_n_0 ;
  wire \bdatw[14]_INST_0_i_18_n_0 ;
  wire \bdatw[14]_INST_0_i_19_n_0 ;
  wire \bdatw[14]_INST_0_i_1_n_0 ;
  wire \bdatw[14]_INST_0_i_2_n_0 ;
  wire \bdatw[14]_INST_0_i_3_n_0 ;
  wire \bdatw[14]_INST_0_i_4_n_0 ;
  wire \bdatw[14]_INST_0_i_5_n_0 ;
  wire \bdatw[14]_INST_0_i_6_n_0 ;
  wire \bdatw[14]_INST_0_i_7_n_0 ;
  wire \bdatw[14]_INST_0_i_8_n_0 ;
  wire \bdatw[14]_INST_0_i_9_n_0 ;
  wire [15:0]\bdatw[15] ;
  wire \bdatw[15]_INST_0_i_10_n_0 ;
  wire \bdatw[15]_INST_0_i_11_n_0 ;
  wire \bdatw[15]_INST_0_i_12_n_0 ;
  wire \bdatw[15]_INST_0_i_13_n_0 ;
  wire \bdatw[15]_INST_0_i_14_n_0 ;
  wire \bdatw[15]_INST_0_i_15_n_0 ;
  wire \bdatw[15]_INST_0_i_16_n_0 ;
  wire \bdatw[15]_INST_0_i_17_n_0 ;
  wire \bdatw[15]_INST_0_i_18_n_0 ;
  wire \bdatw[15]_INST_0_i_19_n_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_1_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_1_1 ;
  wire [15:0]\bdatw[15]_INST_0_i_1_2 ;
  wire \bdatw[15]_INST_0_i_1_n_0 ;
  wire \bdatw[15]_INST_0_i_20_n_0 ;
  wire \bdatw[15]_INST_0_i_21_n_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_22_0 ;
  wire \bdatw[15]_INST_0_i_22_n_0 ;
  wire \bdatw[15]_INST_0_i_23_n_0 ;
  wire \bdatw[15]_INST_0_i_24_n_0 ;
  wire \bdatw[15]_INST_0_i_25_n_0 ;
  wire \bdatw[15]_INST_0_i_26_n_0 ;
  wire \bdatw[15]_INST_0_i_27_0 ;
  wire \bdatw[15]_INST_0_i_27_n_0 ;
  wire \bdatw[15]_INST_0_i_28_n_0 ;
  wire \bdatw[15]_INST_0_i_29_n_0 ;
  wire \bdatw[15]_INST_0_i_2_n_0 ;
  wire \bdatw[15]_INST_0_i_30_n_0 ;
  wire \bdatw[15]_INST_0_i_31_n_0 ;
  wire \bdatw[15]_INST_0_i_32_n_0 ;
  wire \bdatw[15]_INST_0_i_33_n_0 ;
  wire \bdatw[15]_INST_0_i_34_n_0 ;
  wire \bdatw[15]_INST_0_i_35_n_0 ;
  wire \bdatw[15]_INST_0_i_36_n_0 ;
  wire \bdatw[15]_INST_0_i_37_n_0 ;
  wire \bdatw[15]_INST_0_i_38_n_0 ;
  wire \bdatw[15]_INST_0_i_39_n_0 ;
  wire \bdatw[15]_INST_0_i_3_n_0 ;
  wire \bdatw[15]_INST_0_i_40_n_0 ;
  wire \bdatw[15]_INST_0_i_42_n_0 ;
  wire \bdatw[15]_INST_0_i_43_n_0 ;
  wire \bdatw[15]_INST_0_i_44_n_0 ;
  wire \bdatw[15]_INST_0_i_45_n_0 ;
  wire \bdatw[15]_INST_0_i_46_n_0 ;
  wire \bdatw[15]_INST_0_i_47_n_0 ;
  wire \bdatw[15]_INST_0_i_48_n_0 ;
  wire \bdatw[15]_INST_0_i_49_n_0 ;
  wire \bdatw[15]_INST_0_i_50_n_0 ;
  wire \bdatw[15]_INST_0_i_52_n_0 ;
  wire \bdatw[15]_INST_0_i_53_n_0 ;
  wire \bdatw[15]_INST_0_i_54_n_0 ;
  wire \bdatw[15]_INST_0_i_55_n_0 ;
  wire \bdatw[15]_INST_0_i_56_n_0 ;
  wire \bdatw[15]_INST_0_i_57_n_0 ;
  wire \bdatw[15]_INST_0_i_58_n_0 ;
  wire \bdatw[15]_INST_0_i_59_n_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_5_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_5_1 ;
  wire \bdatw[15]_INST_0_i_5_n_0 ;
  wire \bdatw[15]_INST_0_i_60_n_0 ;
  wire \bdatw[15]_INST_0_i_61_n_0 ;
  wire \bdatw[15]_INST_0_i_62_n_0 ;
  wire \bdatw[15]_INST_0_i_63_n_0 ;
  wire \bdatw[15]_INST_0_i_64_n_0 ;
  wire \bdatw[15]_INST_0_i_6_n_0 ;
  wire \bdatw[15]_INST_0_i_70_n_0 ;
  wire \bdatw[15]_INST_0_i_71_n_0 ;
  wire \bdatw[15]_INST_0_i_72_n_0 ;
  wire \bdatw[15]_INST_0_i_73_n_0 ;
  wire \bdatw[15]_INST_0_i_74_n_0 ;
  wire \bdatw[15]_INST_0_i_75_n_0 ;
  wire \bdatw[15]_INST_0_i_76_n_0 ;
  wire \bdatw[15]_INST_0_i_77_n_0 ;
  wire \bdatw[15]_INST_0_i_78_n_0 ;
  wire \bdatw[15]_INST_0_i_79_n_0 ;
  wire \bdatw[15]_INST_0_i_7_n_0 ;
  wire \bdatw[15]_INST_0_i_80_n_0 ;
  wire \bdatw[15]_INST_0_i_81_n_0 ;
  wire \bdatw[15]_INST_0_i_82_n_0 ;
  wire \bdatw[15]_INST_0_i_8_n_0 ;
  wire \bdatw[15]_INST_0_i_9_n_0 ;
  wire \bdatw[8]_INST_0_i_10_n_0 ;
  wire \bdatw[8]_INST_0_i_11_n_0 ;
  wire \bdatw[8]_INST_0_i_12_n_0 ;
  wire \bdatw[8]_INST_0_i_13_n_0 ;
  wire \bdatw[8]_INST_0_i_14_n_0 ;
  wire \bdatw[8]_INST_0_i_15_n_0 ;
  wire \bdatw[8]_INST_0_i_16_n_0 ;
  wire \bdatw[8]_INST_0_i_17_n_0 ;
  wire \bdatw[8]_INST_0_i_18_n_0 ;
  wire \bdatw[8]_INST_0_i_1_n_0 ;
  wire \bdatw[8]_INST_0_i_3_n_0 ;
  wire \bdatw[8]_INST_0_i_4_n_0 ;
  wire \bdatw[8]_INST_0_i_5_n_0 ;
  wire \bdatw[8]_INST_0_i_7_n_0 ;
  wire \bdatw[8]_INST_0_i_8_n_0 ;
  wire \bdatw[8]_INST_0_i_9_n_0 ;
  wire \bdatw[9]_INST_0_i_10_n_0 ;
  wire \bdatw[9]_INST_0_i_11_n_0 ;
  wire \bdatw[9]_INST_0_i_12_n_0 ;
  wire \bdatw[9]_INST_0_i_13_n_0 ;
  wire \bdatw[9]_INST_0_i_14_n_0 ;
  wire \bdatw[9]_INST_0_i_15_n_0 ;
  wire \bdatw[9]_INST_0_i_16_n_0 ;
  wire \bdatw[9]_INST_0_i_17_n_0 ;
  wire \bdatw[9]_INST_0_i_18_n_0 ;
  wire \bdatw[9]_INST_0_i_19_n_0 ;
  wire \bdatw[9]_INST_0_i_1_n_0 ;
  wire \bdatw[9]_INST_0_i_20_n_0 ;
  wire \bdatw[9]_INST_0_i_2_n_0 ;
  wire \bdatw[9]_INST_0_i_3_n_0 ;
  wire \bdatw[9]_INST_0_i_4_n_0 ;
  wire \bdatw[9]_INST_0_i_5_n_0 ;
  wire \bdatw[9]_INST_0_i_6_n_0 ;
  wire \bdatw[9]_INST_0_i_7_n_0 ;
  wire \bdatw[9]_INST_0_i_8_n_0 ;
  wire \bdatw[9]_INST_0_i_9_n_0 ;
  wire bdatw_0_sn_1;
  wire brdy;
  wire brdy_0;
  wire brdy_1;
  wire brdy_2;
  wire brdy_3;
  wire cbus1_carry;
  wire clk;
  wire [1:0]cpuid;
  wire ctl_fetch_ext;
  wire ctl_fetch_ext_fl;
  wire ctl_fetch_ext_fl_i_2_n_0;
  wire ctl_fetch_ext_fl_i_3_n_0;
  wire ctl_fetch_ext_fl_i_5_n_0;
  wire ctl_fetch_ext_fl_i_6_n_0;
  wire ctl_fetch_fl;
  wire ctl_fetch_fl_reg_0;
  wire ctl_fetch_fl_reg_1;
  wire ctl_fetch_fl_reg_2;
  wire ctl_fetch_fl_reg_3;
  wire ctl_fetch_fl_reg_4;
  wire ctl_fetch_inferred_i_10_n_0;
  wire ctl_fetch_inferred_i_12_n_0;
  wire ctl_fetch_inferred_i_14_n_0;
  wire ctl_fetch_inferred_i_15_n_0;
  wire ctl_fetch_inferred_i_16_n_0;
  wire ctl_fetch_inferred_i_18_n_0;
  wire ctl_fetch_inferred_i_19_n_0;
  wire ctl_fetch_inferred_i_3_0;
  wire ctl_fetch_inferred_i_3_n_0;
  wire ctl_fetch_inferred_i_4_0;
  wire ctl_fetch_inferred_i_4_n_0;
  wire ctl_fetch_inferred_i_5_n_0;
  wire ctl_fetch_inferred_i_7_n_0;
  wire ctl_fetch_inferred_i_8_n_0;
  wire ctl_fetch_inferred_i_9_n_0;
  (* DONT_TOUCH *) wire [15:0]eir;
  wire eir_fl0;
  wire \eir_fl[15]_i_1_n_0 ;
  wire \eir_fl[1]_i_1_n_0 ;
  wire \eir_fl[2]_i_1_n_0 ;
  wire \eir_fl[3]_i_1_n_0 ;
  wire \eir_fl[4]_i_1_n_0 ;
  wire \eir_fl[5]_i_1_n_0 ;
  wire \eir_fl[6]_i_2_n_0 ;
  wire \eir_fl_reg[1]_0 ;
  wire \eir_fl_reg[1]_1 ;
  wire \eir_fl_reg_n_0_[0] ;
  wire \eir_fl_reg_n_0_[10] ;
  wire \eir_fl_reg_n_0_[11] ;
  wire \eir_fl_reg_n_0_[12] ;
  wire \eir_fl_reg_n_0_[13] ;
  wire \eir_fl_reg_n_0_[14] ;
  wire \eir_fl_reg_n_0_[15] ;
  wire \eir_fl_reg_n_0_[1] ;
  wire \eir_fl_reg_n_0_[2] ;
  wire \eir_fl_reg_n_0_[3] ;
  wire \eir_fl_reg_n_0_[4] ;
  wire \eir_fl_reg_n_0_[5] ;
  wire \eir_fl_reg_n_0_[6] ;
  wire \eir_fl_reg_n_0_[7] ;
  wire \eir_fl_reg_n_0_[8] ;
  wire \eir_fl_reg_n_0_[9] ;
  wire [1:0]fch_irq_lev;
  wire fch_irq_lev0;
  wire \fch_irq_lev[0]_i_1_n_0 ;
  wire \fch_irq_lev[1]_i_1_n_0 ;
  wire \fch_irq_lev[1]_i_5_n_0 ;
  wire \fch_irq_lev[1]_i_6_n_0 ;
  wire \fch_irq_lev[1]_i_7_n_0 ;
  wire \fch_irq_lev[1]_i_8_n_0 ;
  wire \fch_irq_lev[1]_i_9_n_0 ;
  wire fch_irq_req;
  wire fch_irq_req_fl;
  wire [15:0]fch_pc;
  wire [15:0]fdat;
  wire \grn[0]_i_10_n_0 ;
  wire \grn[0]_i_11_n_0 ;
  wire \grn[0]_i_12_n_0 ;
  wire \grn[0]_i_13_n_0 ;
  wire \grn[0]_i_2_n_0 ;
  wire \grn[0]_i_3_n_0 ;
  wire \grn[0]_i_4_n_0 ;
  wire \grn[0]_i_5_n_0 ;
  wire \grn[0]_i_6_n_0 ;
  wire \grn[0]_i_8_n_0 ;
  wire \grn[0]_i_9_n_0 ;
  wire \grn[10]_i_2_n_0 ;
  wire \grn[10]_i_3_n_0 ;
  wire \grn[10]_i_4_n_0 ;
  wire \grn[11]_i_2_n_0 ;
  wire \grn[11]_i_4_n_0 ;
  wire \grn[12]_i_2_n_0 ;
  wire \grn[12]_i_3_n_0 ;
  wire \grn[12]_i_4_n_0 ;
  wire \grn[13]_i_2_n_0 ;
  wire \grn[13]_i_4_n_0 ;
  wire \grn[14]_i_10_n_0 ;
  wire \grn[14]_i_11_n_0 ;
  wire \grn[14]_i_12_n_0 ;
  wire \grn[14]_i_13_n_0 ;
  wire \grn[14]_i_14_n_0 ;
  wire \grn[14]_i_2_n_0 ;
  wire \grn[14]_i_3_n_0 ;
  wire \grn[14]_i_4_n_0 ;
  wire \grn[14]_i_5_n_0 ;
  wire \grn[14]_i_6_n_0 ;
  wire \grn[14]_i_7_n_0 ;
  wire \grn[14]_i_9_n_0 ;
  wire \grn[15]_i_11_n_0 ;
  wire \grn[15]_i_12_n_0 ;
  wire \grn[15]_i_13_n_0 ;
  wire \grn[15]_i_14_n_0 ;
  wire \grn[15]_i_15_n_0 ;
  wire \grn[15]_i_16_n_0 ;
  wire \grn[15]_i_18_n_0 ;
  wire \grn[15]_i_20_n_0 ;
  wire \grn[15]_i_21_n_0 ;
  wire \grn[15]_i_22_n_0 ;
  wire \grn[15]_i_23_n_0 ;
  wire \grn[15]_i_24_n_0 ;
  wire \grn[15]_i_25_n_0 ;
  wire \grn[15]_i_26_n_0 ;
  wire \grn[15]_i_27_n_0 ;
  wire \grn[15]_i_28_n_0 ;
  wire \grn[15]_i_30_n_0 ;
  wire \grn[15]_i_31_n_0 ;
  wire \grn[15]_i_32_n_0 ;
  wire \grn[15]_i_33_n_0 ;
  wire \grn[15]_i_34_n_0 ;
  wire \grn[15]_i_35_n_0 ;
  wire \grn[15]_i_36_n_0 ;
  wire \grn[15]_i_37_n_0 ;
  wire \grn[15]_i_38_n_0 ;
  wire \grn[15]_i_39_n_0 ;
  wire \grn[15]_i_3_n_0 ;
  wire \grn[15]_i_40_n_0 ;
  wire \grn[15]_i_41_n_0 ;
  wire \grn[15]_i_42_n_0 ;
  wire \grn[15]_i_43_n_0 ;
  wire \grn[15]_i_44_n_0 ;
  wire \grn[15]_i_45_n_0 ;
  wire \grn[15]_i_46_n_0 ;
  wire \grn[15]_i_47_n_0 ;
  wire \grn[15]_i_48_n_0 ;
  wire \grn[15]_i_49_n_0 ;
  wire \grn[15]_i_4_n_0 ;
  wire \grn[15]_i_50_n_0 ;
  wire \grn[15]_i_51_n_0 ;
  wire \grn[15]_i_52_n_0 ;
  wire \grn[15]_i_53_n_0 ;
  wire \grn[15]_i_54_n_0 ;
  wire \grn[15]_i_55_n_0 ;
  wire \grn[15]_i_56_n_0 ;
  wire \grn[15]_i_57_n_0 ;
  wire \grn[15]_i_58_n_0 ;
  wire \grn[15]_i_59_n_0 ;
  wire \grn[15]_i_60_n_0 ;
  wire \grn[15]_i_61_n_0 ;
  wire \grn[15]_i_62_n_0 ;
  wire \grn[15]_i_63_n_0 ;
  wire \grn[15]_i_64_n_0 ;
  wire \grn[15]_i_65_n_0 ;
  wire \grn[15]_i_66_n_0 ;
  wire \grn[15]_i_67_n_0 ;
  wire \grn[15]_i_68_n_0 ;
  wire \grn[15]_i_69_n_0 ;
  wire \grn[15]_i_6_n_0 ;
  wire \grn[15]_i_70_n_0 ;
  wire \grn[15]_i_71_n_0 ;
  wire \grn[15]_i_72_n_0 ;
  wire \grn[15]_i_73_n_0 ;
  wire \grn[15]_i_74_n_0 ;
  wire \grn[15]_i_7_n_0 ;
  wire \grn[15]_i_8_n_0 ;
  wire \grn[1]_i_10_0 ;
  wire \grn[1]_i_10_n_0 ;
  wire \grn[1]_i_11_n_0 ;
  wire \grn[1]_i_12_n_0 ;
  wire \grn[1]_i_13_n_0 ;
  wire \grn[1]_i_14_n_0 ;
  wire \grn[1]_i_15_n_0 ;
  wire \grn[1]_i_16_n_0 ;
  wire \grn[1]_i_17_n_0 ;
  wire \grn[1]_i_19_n_0 ;
  wire \grn[1]_i_20_n_0 ;
  wire \grn[1]_i_21_n_0 ;
  wire \grn[1]_i_2_n_0 ;
  wire \grn[1]_i_5_n_0 ;
  wire \grn[1]_i_6_n_0 ;
  wire \grn[1]_i_9_n_0 ;
  wire \grn[2]_i_10_n_0 ;
  wire \grn[2]_i_11_n_0 ;
  wire \grn[2]_i_12_n_0 ;
  wire \grn[2]_i_13_n_0 ;
  wire \grn[2]_i_14_n_0 ;
  wire \grn[2]_i_15_n_0 ;
  wire \grn[2]_i_2_n_0 ;
  wire \grn[2]_i_5_n_0 ;
  wire \grn[2]_i_6_n_0 ;
  wire \grn[2]_i_7_n_0 ;
  wire \grn[2]_i_8_n_0 ;
  wire \grn[2]_i_9_n_0 ;
  wire \grn[3]_i_10_n_0 ;
  wire \grn[3]_i_11_n_0 ;
  wire \grn[3]_i_12_n_0 ;
  wire \grn[3]_i_13_n_0 ;
  wire \grn[3]_i_14_n_0 ;
  wire \grn[3]_i_15_n_0 ;
  wire \grn[3]_i_16_n_0 ;
  wire \grn[3]_i_17_n_0 ;
  wire \grn[3]_i_2_n_0 ;
  wire \grn[3]_i_3_n_0 ;
  wire \grn[3]_i_4_n_0 ;
  wire \grn[3]_i_6_n_0 ;
  wire \grn[3]_i_7_n_0 ;
  wire \grn[3]_i_8_n_0 ;
  wire \grn[3]_i_9_n_0 ;
  wire \grn[4]_i_10_n_0 ;
  wire \grn[4]_i_12_n_0 ;
  wire \grn[4]_i_13_n_0 ;
  wire \grn[4]_i_14_n_0 ;
  wire \grn[4]_i_15_n_0 ;
  wire \grn[4]_i_16_n_0 ;
  wire \grn[4]_i_17_n_0 ;
  wire \grn[4]_i_18_n_0 ;
  wire \grn[4]_i_19_n_0 ;
  wire \grn[4]_i_20_n_0 ;
  wire \grn[4]_i_21_n_0 ;
  wire \grn[4]_i_22_n_0 ;
  wire \grn[4]_i_2_n_0 ;
  wire \grn[4]_i_4_n_0 ;
  wire \grn[4]_i_5_n_0 ;
  wire \grn[4]_i_6_n_0 ;
  wire \grn[4]_i_7_n_0 ;
  wire \grn[4]_i_8_n_0 ;
  wire \grn[4]_i_9_n_0 ;
  wire \grn[5]_i_10_n_0 ;
  wire \grn[5]_i_11_n_0 ;
  wire \grn[5]_i_12_n_0 ;
  wire \grn[5]_i_13_n_0 ;
  wire \grn[5]_i_14_n_0 ;
  wire \grn[5]_i_15_n_0 ;
  wire \grn[5]_i_16_n_0 ;
  wire \grn[5]_i_17_n_0 ;
  wire \grn[5]_i_2_n_0 ;
  wire \grn[5]_i_5_n_0 ;
  wire \grn[5]_i_6_n_0 ;
  wire \grn[5]_i_7_n_0 ;
  wire \grn[5]_i_8_n_0 ;
  wire \grn[5]_i_9_n_0 ;
  wire \grn[6]_i_10_n_0 ;
  wire \grn[6]_i_11_n_0 ;
  wire \grn[6]_i_12_n_0 ;
  wire \grn[6]_i_13_n_0 ;
  wire \grn[6]_i_14_n_0 ;
  wire \grn[6]_i_15_n_0 ;
  wire \grn[6]_i_16_n_0 ;
  wire \grn[6]_i_17_n_0 ;
  wire \grn[6]_i_18_n_0 ;
  wire \grn[6]_i_19_n_0 ;
  wire \grn[6]_i_20_n_0 ;
  wire \grn[6]_i_21_n_0 ;
  wire \grn[6]_i_22_n_0 ;
  wire \grn[6]_i_23_n_0 ;
  wire \grn[6]_i_24_n_0 ;
  wire \grn[6]_i_2_n_0 ;
  wire \grn[6]_i_5_n_0 ;
  wire \grn[6]_i_6_n_0 ;
  wire \grn[6]_i_7_n_0 ;
  wire \grn[6]_i_8_n_0 ;
  wire \grn[6]_i_9_n_0 ;
  wire \grn[7]_i_10_n_0 ;
  wire \grn[7]_i_12_n_0 ;
  wire \grn[7]_i_13_n_0 ;
  wire \grn[7]_i_14_n_0 ;
  wire \grn[7]_i_15_n_0 ;
  wire \grn[7]_i_16_n_0 ;
  wire \grn[7]_i_3_0 ;
  wire \grn[7]_i_3_n_0 ;
  wire \grn[7]_i_4_n_0 ;
  wire \grn[7]_i_5_n_0 ;
  wire \grn[7]_i_6_n_0 ;
  wire \grn[7]_i_7_n_0 ;
  wire \grn[7]_i_8_n_0 ;
  wire \grn[7]_i_9_n_0 ;
  wire \grn[8]_i_2_n_0 ;
  wire \grn[8]_i_4_n_0 ;
  wire \grn[9]_i_2_n_0 ;
  wire \grn[9]_i_4_n_0 ;
  wire \grn_reg[0] ;
  wire \grn_reg[0]_0 ;
  wire \grn_reg[15]_i_29_n_0 ;
  wire in0;
  (* DONT_TOUCH *) wire [15:0]ir;
  wire [15:0]ir_fl;
  wire [1:0]irq_lev;
  wire [5:0]irq_vec;
  wire \iv[15]_i_10_n_0 ;
  wire \iv[15]_i_11_n_0 ;
  wire \iv[15]_i_12_n_0 ;
  wire \iv[15]_i_13_n_0 ;
  wire \iv[15]_i_14_n_0 ;
  wire \iv[15]_i_15_n_0 ;
  wire \iv[15]_i_18_n_0 ;
  wire \iv[15]_i_19_n_0 ;
  wire \iv[15]_i_20_n_0 ;
  wire \iv[15]_i_21_n_0 ;
  wire \iv[15]_i_22_n_0 ;
  wire \iv[15]_i_24_n_0 ;
  wire \iv[15]_i_25_n_0 ;
  wire \iv[15]_i_26_n_0 ;
  wire \iv[15]_i_27_n_0 ;
  wire \iv[15]_i_2_0 ;
  wire \iv[15]_i_2_n_0 ;
  wire \iv[15]_i_3_n_0 ;
  wire \iv[15]_i_4_n_0 ;
  wire \iv[15]_i_5_n_0 ;
  wire \iv[15]_i_6_0 ;
  wire \iv[15]_i_6_n_0 ;
  wire \iv[15]_i_8_n_0 ;
  wire \iv[15]_i_9_n_0 ;
  wire \iv_reg[0] ;
  wire \iv_reg[0]_0 ;
  wire \iv_reg[11] ;
  wire \iv_reg[13] ;
  wire \iv_reg[14] ;
  wire [12:0]\iv_reg[15] ;
  wire \iv_reg[15]_0 ;
  wire \iv_reg[1] ;
  wire \iv_reg[2] ;
  wire \iv_reg[2]_0 ;
  wire \iv_reg[3] ;
  wire \iv_reg[4] ;
  wire \iv_reg[5] ;
  wire \iv_reg[5]_0 ;
  wire \iv_reg[6] ;
  wire \iv_reg[6]_0 ;
  wire [1:0]\iv_reg[7] ;
  wire \iv_reg[8] ;
  wire \iv_reg[9] ;
  wire \pc[15]_i_2_n_0 ;
  wire \pc[15]_i_3_n_0 ;
  wire [15:0]\pc_reg[15] ;
  wire [15:0]\pc_reg[15]_0 ;
  wire \pc_reg[1] ;
  wire [2:0]read_cyc;
  wire [15:0]\read_cyc_reg[1] ;
  wire rst_n;
  wire rst_n_0;
  wire rst_n_fl;
  wire rst_n_fl_reg_0;
  wire [2:0]rst_n_fl_reg_1;
  wire rst_n_fl_reg_2;
  wire rst_n_fl_reg_3;
  wire rst_n_fl_reg_4;
  wire rst_n_fl_reg_5;
  wire \sp[0]_i_10_n_0 ;
  wire \sp[0]_i_11_n_0 ;
  wire \sp[0]_i_4_n_0 ;
  wire \sp[0]_i_5_n_0 ;
  wire \sp[0]_i_6_n_0 ;
  wire \sp[0]_i_7_n_0 ;
  wire \sp[0]_i_8_n_0 ;
  wire \sp[0]_i_9_n_0 ;
  wire \sp[15]_i_2_n_0 ;
  wire [15:0]sp_dec_0;
  wire \sp_reg[10] ;
  wire [3:0]\sp_reg[11] ;
  wire \sp_reg[11]_0 ;
  wire \sp_reg[12] ;
  wire \sp_reg[13] ;
  wire \sp_reg[14] ;
  wire [3:0]\sp_reg[15] ;
  wire \sp_reg[15]_0 ;
  wire \sp_reg[1] ;
  wire \sp_reg[1]_0 ;
  wire \sp_reg[2] ;
  wire \sp_reg[3] ;
  wire \sp_reg[4] ;
  wire \sp_reg[5] ;
  wire \sp_reg[6] ;
  wire [3:0]\sp_reg[7] ;
  wire [3:0]\sp_reg[7]_0 ;
  wire [0:0]\sp_reg[7]_1 ;
  wire [3:0]\sp_reg[7]_2 ;
  wire [1:0]\sp_reg[7]_3 ;
  wire \sp_reg[7]_4 ;
  wire \sp_reg[8] ;
  wire \sp_reg[9] ;
  wire \sr[12]_i_2_n_0 ;
  wire \sr[13]_i_10_n_0 ;
  wire \sr[13]_i_11_n_0 ;
  wire \sr[13]_i_12_n_0 ;
  wire \sr[13]_i_2_n_0 ;
  wire \sr[13]_i_3_n_0 ;
  wire \sr[13]_i_4_n_0 ;
  wire \sr[13]_i_6_n_0 ;
  wire \sr[13]_i_7_n_0 ;
  wire \sr[13]_i_8_n_0 ;
  wire \sr[13]_i_9_n_0 ;
  wire \sr[2]_i_2_n_0 ;
  wire \sr[3]_i_2_n_0 ;
  wire \sr[3]_i_3_n_0 ;
  wire \sr[4]_i_10_n_0 ;
  wire \sr[4]_i_11_n_0 ;
  wire \sr[4]_i_14_n_0 ;
  wire \sr[4]_i_15_n_0 ;
  wire \sr[4]_i_16_n_0 ;
  wire \sr[4]_i_17_n_0 ;
  wire \sr[4]_i_19_n_0 ;
  wire \sr[4]_i_2_n_0 ;
  wire \sr[4]_i_3_0 ;
  wire \sr[4]_i_3_n_0 ;
  wire \sr[4]_i_4_n_0 ;
  wire \sr[4]_i_5_0 ;
  wire \sr[4]_i_5_n_0 ;
  wire \sr[4]_i_6_n_0 ;
  wire \sr[4]_i_7_n_0 ;
  wire \sr[4]_i_8_n_0 ;
  wire \sr[4]_i_9_n_0 ;
  wire \sr[5]_i_3_n_0 ;
  wire \sr[5]_i_4_n_0 ;
  wire \sr[5]_i_5_n_0 ;
  wire \sr[6]_i_10_n_0 ;
  wire \sr[6]_i_11_n_0 ;
  wire \sr[6]_i_12_n_0 ;
  wire \sr[6]_i_13_n_0 ;
  wire \sr[6]_i_14_n_0 ;
  wire \sr[6]_i_15_n_0 ;
  wire \sr[6]_i_16_n_0 ;
  wire \sr[6]_i_3_n_0 ;
  wire \sr[6]_i_4_n_0 ;
  wire \sr[6]_i_5_n_0 ;
  wire \sr[6]_i_6_n_0 ;
  wire \sr[6]_i_7_n_0 ;
  wire \sr[6]_i_8_n_0 ;
  wire \sr[6]_i_9_n_0 ;
  wire \sr[7]_i_2_n_0 ;
  wire [7:0]\sr_reg[13] ;
  wire [1:0]\sr_reg[1] ;
  wire [1:0]\sr_reg[1]_0 ;
  wire [1:0]\sr_reg[1]_1 ;
  wire \sr_reg[4] ;
  wire \sr_reg[5] ;
  wire \sr_reg[6] ;
  wire [0:0]\sr_reg[6]_0 ;
  wire \stat[0]_i_13_n_0 ;
  wire \stat[0]_i_15_n_0 ;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_5_n_0 ;
  wire \stat[0]_i_6_n_0 ;
  wire \stat[0]_i_7_n_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_4_n_0 ;
  wire \stat[1]_i_6_n_0 ;
  wire \stat[1]_i_7_n_0 ;
  wire \stat[2]_i_10_n_0 ;
  wire \stat[2]_i_11_n_0 ;
  wire \stat[2]_i_3_n_0 ;
  wire \stat[2]_i_4_n_0 ;
  wire \stat[2]_i_6_n_0 ;
  wire \stat[2]_i_7_n_0 ;
  wire \stat[2]_i_9_n_0 ;
  wire \stat_reg[0] ;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[0]_2 ;
  wire \stat_reg[0]_3 ;
  wire \stat_reg[0]_4 ;
  wire \stat_reg[0]_5 ;
  wire \stat_reg[0]_6 ;
  wire \stat_reg[0]_7 ;
  wire \stat_reg[0]_8 ;
  wire \stat_reg[1] ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;
  wire \stat_reg[2] ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_10 ;
  wire \stat_reg[2]_2 ;
  wire \stat_reg[2]_3 ;
  wire [1:0]\stat_reg[2]_4 ;
  wire [1:0]\stat_reg[2]_5 ;
  wire [0:0]\stat_reg[2]_6 ;
  wire [1:0]\stat_reg[2]_7 ;
  wire [1:0]\stat_reg[2]_8 ;
  wire \stat_reg[2]_9 ;
  wire [7:0]tnsn_dsp_a;
  wire \tnsn_dsp_a[7]_INST_0_i_10_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_11_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_12_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_13_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_14_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_15_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_16_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_17_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_18_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_19_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_20_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_21_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_22_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_23_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_24_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_25_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_26_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_27_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_28_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_29_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_2_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_30_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_31_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_32_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_33_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_34_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_35_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_36_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_37_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_38_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_39_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_3_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_40_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_4_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_5_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_6_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_7_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_8_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_8_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_9_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_5_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_7_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_8_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_9_n_0 ;
  wire tnsn_dsp_a_1_sn_1;
  wire tnsn_dsp_a_7_sn_1;
  wire [8:0]tnsn_dsp_b;
  wire \tnsn_dsp_b[8]_INST_0_i_1_0 ;
  wire \tnsn_dsp_b[8]_INST_0_i_1_n_0 ;
  wire tnsn_dsp_b_8_sn_1;
  wire [9:0]tnsn_dsp_c;
  wire tout__1_carry_i_10_n_0;
  wire tout__1_carry_i_8_n_0;
  wire tout__1_carry_i_9_n_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h0E)) 
    \badr[0]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(\badr[0]_INST_0_i_1_n_0 ),
        .O(badr[0]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \badr[0]_INST_0_i_1 
       (.I0(\badr[0]_INST_0_i_2_n_0 ),
        .I1(\badr[0]_INST_0_i_3_n_0 ),
        .I2(\badr[0]_INST_0_i_4_n_0 ),
        .I3(\badr[0]_INST_0_i_5_n_0 ),
        .I4(\badr[0]_INST_0_i_6_n_0 ),
        .I5(\badr[0]_INST_0_i_7_n_0 ),
        .O(\badr[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[0]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(sp_dec_0[0]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_2 [0]),
        .O(\badr[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFD00FDFFFF00FF)) 
    \badr[0]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\pc_reg[15]_0 [0]),
        .I4(\stat_reg[2]_3 ),
        .I5(\badr[15]_INST_0_i_1_3 [0]),
        .O(\badr[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \badr[0]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_38_1 ),
        .I1(\bdatw[15]_INST_0_i_22_0 [0]),
        .I2(\bdatw[15]_INST_0_i_1_1 [0]),
        .I3(\badr[15]_INST_0_i_38_0 ),
        .I4(\bdatw[15] [0]),
        .I5(\stat_reg[2]_2 ),
        .O(\badr[0]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[0]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_1 [0]),
        .I2(\badr[15]_INST_0_i_35_0 ),
        .I3(\badr[15]_INST_0_i_1_1 [0]),
        .O(\badr[0]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[0]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [0]),
        .I2(\badr[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_0 [0]),
        .O(\badr[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[0]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_1_2 [0]),
        .I4(\badr[15]_INST_0_i_17_n_0 ),
        .I5(\badr[15]_INST_0_i_1_0 [0]),
        .O(\badr[0]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[10]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(abus_0[5]),
        .O(badr[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[10]_INST_0_i_1 
       (.I0(\badr[10]_INST_0_i_2_n_0 ),
        .I1(\badr[10]_INST_0_i_3_n_0 ),
        .I2(badr_10_sn_1),
        .I3(\badr[10]_INST_0_i_5_n_0 ),
        .I4(\badr[10]_INST_0_i_6_n_0 ),
        .I5(\badr[10]_INST_0_i_7_n_0 ),
        .O(abus_0[5]));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[10]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_1_2 [10]),
        .I4(\badr[15]_INST_0_i_35_0 ),
        .I5(\badr[15]_INST_0_i_1_1 [10]),
        .O(\badr[10]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[10]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_0 [10]),
        .I2(\badr[15]_INST_0_i_18_n_0 ),
        .I3(sp_dec_0[10]),
        .O(\badr[10]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[10]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_1 [10]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 [10]),
        .O(\badr[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0200FFFF02000200)) 
    \badr[10]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_1_3 [10]),
        .I4(\badr[15]_INST_0_i_19_n_0 ),
        .I5(\bdatw[15]_INST_0_i_1_2 [10]),
        .O(\badr[10]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[10]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [10]),
        .I2(\stat_reg[2]_3 ),
        .I3(\pc_reg[15]_0 [10]),
        .O(\badr[10]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[11]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(abus_0[6]),
        .O(badr[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[11]_INST_0_i_1 
       (.I0(\badr[11]_INST_0_i_2_n_0 ),
        .I1(\badr[11]_INST_0_i_3_n_0 ),
        .I2(badr_11_sn_1),
        .I3(\badr[11]_INST_0_i_5_n_0 ),
        .I4(\badr[11]_INST_0_i_6_n_0 ),
        .I5(\badr[11]_INST_0_i_7_n_0 ),
        .O(abus_0[6]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[11]_INST_0_i_2 
       (.I0(\stat_reg[2]_3 ),
        .I1(\pc_reg[15]_0 [11]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_2 [11]),
        .O(\badr[11]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[11]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_1 [11]),
        .I2(\badr[15]_INST_0_i_35_0 ),
        .I3(\badr[15]_INST_0_i_1_1 [11]),
        .O(\badr[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h02FF020200FF0000)) 
    \badr[11]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_20_n_0 ),
        .I4(\bdatw[15]_INST_0_i_1_0 [11]),
        .I5(\badr[15]_INST_0_i_1_3 [11]),
        .O(\badr[11]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[11]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_0 [11]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 [11]),
        .O(\badr[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[11]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_1_2 [11]),
        .I4(\badr[15]_INST_0_i_18_n_0 ),
        .I5(sp_dec_0[11]),
        .O(\badr[11]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[12]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(abus_0[7]),
        .O(badr[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[12]_INST_0_i_1 
       (.I0(\badr[12]_INST_0_i_2_n_0 ),
        .I1(\badr[12]_INST_0_i_3_n_0 ),
        .I2(\badr[12]_INST_0_i_4_n_0 ),
        .I3(\badr[12]_INST_0_i_5_n_0 ),
        .I4(\badr[12]_INST_0_i_6_n_0 ),
        .I5(\badr[12]_INST_0_i_7_n_0 ),
        .O(abus_0[7]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[12]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [12]),
        .I2(\badr[15]_INST_0_i_21_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_1 [12]),
        .O(\badr[12]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[12]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_0 [12]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_2 [12]),
        .O(\badr[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \badr[12]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_38_0 ),
        .I1(\bdatw[15]_INST_0_i_1_1 [12]),
        .I2(\stat_reg[2]_2 ),
        .I3(\bdatw[15] [12]),
        .I4(\bdatw[15]_INST_0_i_22_0 [12]),
        .I5(\badr[15]_INST_0_i_38_1 ),
        .O(\badr[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[12]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_1_2 [12]),
        .I4(\badr[15]_INST_0_i_35_0 ),
        .I5(\badr[15]_INST_0_i_1_1 [12]),
        .O(\badr[12]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[12]_INST_0_i_6 
       (.I0(\stat_reg[2]_3 ),
        .I1(\pc_reg[15]_0 [12]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 [12]),
        .O(\badr[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h02FF020200FF0000)) 
    \badr[12]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_18_n_0 ),
        .I4(sp_dec_0[12]),
        .I5(\badr[15]_INST_0_i_1_3 [12]),
        .O(\badr[12]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[13]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(abus_0[8]),
        .O(badr[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[13]_INST_0_i_1 
       (.I0(\badr[13]_INST_0_i_2_n_0 ),
        .I1(\badr[13]_INST_0_i_3_n_0 ),
        .I2(\badr[13]_INST_0_i_4_n_0 ),
        .I3(\badr[13]_INST_0_i_5_n_0 ),
        .I4(\badr[13]_INST_0_i_6_n_0 ),
        .I5(\badr[13]_INST_0_i_7_n_0 ),
        .O(abus_0[8]));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[13]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_1_2 [13]),
        .I4(\badr[15]_INST_0_i_35_0 ),
        .I5(\badr[15]_INST_0_i_1_1 [13]),
        .O(\badr[13]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[13]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(sp_dec_0[13]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_2 [13]),
        .O(\badr[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \badr[13]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_38_0 ),
        .I1(\bdatw[15]_INST_0_i_1_1 [13]),
        .I2(\stat_reg[2]_2 ),
        .I3(\bdatw[15] [13]),
        .I4(\bdatw[15]_INST_0_i_22_0 [13]),
        .I5(\badr[15]_INST_0_i_38_1 ),
        .O(\badr[13]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[13]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_1 [13]),
        .I2(\stat_reg[2]_3 ),
        .I3(\pc_reg[15]_0 [13]),
        .O(\badr[13]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[13]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [13]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 [13]),
        .O(\badr[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h02FF020200FF0000)) 
    \badr[13]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_5_0 [13]),
        .I5(\badr[15]_INST_0_i_1_3 [13]),
        .O(\badr[13]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[14]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(abus_0[9]),
        .O(badr[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[14]_INST_0_i_1 
       (.I0(\badr[14]_INST_0_i_2_n_0 ),
        .I1(\badr[14]_INST_0_i_3_n_0 ),
        .I2(badr_14_sn_1),
        .I3(\badr[14]_INST_0_i_5_n_0 ),
        .I4(\badr[14]_INST_0_i_6_n_0 ),
        .I5(\badr[14]_INST_0_i_7_n_0 ),
        .O(abus_0[9]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[14]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(sp_dec_0[14]),
        .I2(\badr[15]_INST_0_i_35_0 ),
        .I3(\badr[15]_INST_0_i_1_1 [14]),
        .O(\badr[14]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[14]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [14]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_2 [14]),
        .O(\badr[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[14]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_1_2 [14]),
        .I4(\badr[15]_INST_0_i_12_n_0 ),
        .I5(\bdatw[15]_INST_0_i_5_0 [14]),
        .O(\badr[14]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[14]_INST_0_i_6 
       (.I0(\stat_reg[2]_3 ),
        .I1(\pc_reg[15]_0 [14]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 [14]),
        .O(\badr[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h02FF020200FF0000)) 
    \badr[14]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_21_n_0 ),
        .I4(\bdatw[15]_INST_0_i_5_1 [14]),
        .I5(\badr[15]_INST_0_i_1_3 [14]),
        .O(\badr[14]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \badr[15]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(\badr[15]_INST_0_i_1_n_0 ),
        .O(badr[15]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \badr[15]_INST_0_i_1 
       (.I0(\badr[15]_INST_0_i_2_n_0 ),
        .I1(\badr[15]_INST_0_i_3_n_0 ),
        .I2(\badr[15]_INST_0_i_4_n_0 ),
        .I3(\badr[15]_INST_0_i_5_n_0 ),
        .I4(\badr[15]_INST_0_i_6_n_0 ),
        .I5(\badr[15]_INST_0_i_7_n_0 ),
        .O(\badr[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEFEEEE)) 
    \badr[15]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_31_n_0 ),
        .I1(\iv_reg[0]_0 ),
        .I2(\badr[15]_INST_0_i_32_n_0 ),
        .I3(\badr[15]_INST_0_i_33_n_0 ),
        .I4(\grn[15]_i_23_n_0 ),
        .I5(\badr[15]_INST_0_i_34_n_0 ),
        .O(\badr[15]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \badr[15]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_35_n_0 ),
        .O(\badr[15]_INST_0_i_35_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \badr[15]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_10_n_0 ),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \badr[15]_INST_0_i_13 
       (.I0(\badr[15]_INST_0_i_36_n_0 ),
        .I1(\badr[15]_INST_0_i_37_n_0 ),
        .I2(\badr[15]_INST_0_i_8_n_0 ),
        .I3(\badr[15]_INST_0_i_9_n_0 ),
        .O(\stat_reg[2]_3 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \badr[15]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_10_n_0 ),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_38_n_0 ),
        .O(\badr[15]_INST_0_i_38_1 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \badr[15]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_35_n_0 ),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_38_n_0 ),
        .O(\badr[15]_INST_0_i_38_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \badr[15]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_36_n_0 ),
        .I1(\badr[15]_INST_0_i_37_n_0 ),
        .I2(\badr[15]_INST_0_i_8_n_0 ),
        .I3(\badr[15]_INST_0_i_38_n_0 ),
        .O(\stat_reg[2]_2 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \badr[15]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_36_n_0 ),
        .I1(\badr[15]_INST_0_i_37_n_0 ),
        .I2(\badr[15]_INST_0_i_8_n_0 ),
        .I3(\badr[15]_INST_0_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \badr[15]_INST_0_i_18 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_37_n_0 ),
        .I3(\badr[15]_INST_0_i_36_n_0 ),
        .O(\badr[15]_INST_0_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \badr[15]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_35_n_0 ),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[15]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_1_2 [15]),
        .I4(\badr[15]_INST_0_i_35_0 ),
        .I5(\badr[15]_INST_0_i_1_1 [15]),
        .O(\badr[15]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \badr[15]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_36_n_0 ),
        .I1(\badr[15]_INST_0_i_37_n_0 ),
        .I2(\badr[15]_INST_0_i_8_n_0 ),
        .I3(\badr[15]_INST_0_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \badr[15]_INST_0_i_21 
       (.I0(\badr[15]_INST_0_i_35_n_0 ),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \badr[15]_INST_0_i_22 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(ir[15]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_18_n_0 ),
        .I4(\badr[15]_INST_0_i_39_n_0 ),
        .O(\badr[15]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8088AAAA)) 
    \badr[15]_INST_0_i_23 
       (.I0(ir[15]),
        .I1(\badr[15]_INST_0_i_40_n_0 ),
        .I2(ir[14]),
        .I3(ir[11]),
        .I4(ir[8]),
        .I5(Q[0]),
        .O(\badr[15]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \badr[15]_INST_0_i_24 
       (.I0(\bdatw[15]_INST_0_i_46_n_0 ),
        .I1(\badr[15]_INST_0_i_41_n_0 ),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_42_n_0 ),
        .I4(ir[10]),
        .I5(\badr[15]_INST_0_i_43_n_0 ),
        .O(\badr[15]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF700)) 
    \badr[15]_INST_0_i_25 
       (.I0(\badr[15]_INST_0_i_44_n_0 ),
        .I1(ctl_fetch_inferred_i_15_n_0),
        .I2(ir[13]),
        .I3(\badr[15]_INST_0_i_45_n_0 ),
        .I4(ctl_fetch_inferred_i_16_n_0),
        .I5(ir[15]),
        .O(\badr[15]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBA000000FFFFFFFF)) 
    \badr[15]_INST_0_i_26 
       (.I0(\grn[15]_i_35_n_0 ),
        .I1(\badr[15]_INST_0_i_46_n_0 ),
        .I2(ir[3]),
        .I3(ir[0]),
        .I4(\badr[15]_INST_0_i_47_n_0 ),
        .I5(\grn[15]_i_23_n_0 ),
        .O(\badr[15]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFB8BB)) 
    \badr[15]_INST_0_i_28 
       (.I0(\badr[15]_INST_0_i_48_n_0 ),
        .I1(ir[11]),
        .I2(\grn[15]_i_33_n_0 ),
        .I3(ir[4]),
        .I4(\bdatw[15]_INST_0_i_46_n_0 ),
        .I5(\badr[15]_INST_0_i_49_n_0 ),
        .O(\badr[15]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \badr[15]_INST_0_i_29 
       (.I0(\badr[15]_INST_0_i_50_n_0 ),
        .I1(\badr[15]_INST_0_i_51_n_0 ),
        .I2(\fch_irq_lev[1]_i_6_n_0 ),
        .I3(\grn[15]_i_45_n_0 ),
        .I4(ir[1]),
        .I5(ctl_fetch_inferred_i_9_n_0),
        .O(\badr[15]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hB0BB)) 
    \badr[15]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_0 [15]),
        .I2(\stat_reg[2]_3 ),
        .I3(\pc_reg[15]_0 [15]),
        .O(\badr[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7F7F777F7F7F)) 
    \badr[15]_INST_0_i_30 
       (.I0(\badr[15]_INST_0_i_47_n_0 ),
        .I1(ir[1]),
        .I2(\grn[15]_i_35_n_0 ),
        .I3(ir[3]),
        .I4(ctl_fetch_inferred_i_8_n_0),
        .I5(\bcmd[1]_INST_0_i_8_n_0 ),
        .O(\badr[15]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAABABBBB)) 
    \badr[15]_INST_0_i_31 
       (.I0(\bdatw[15]_INST_0_i_27_0 ),
        .I1(ir[15]),
        .I2(\badr[15]_INST_0_i_52_n_0 ),
        .I3(\badr[15]_INST_0_i_53_n_0 ),
        .I4(\badr[15]_INST_0_i_54_n_0 ),
        .I5(\badr[15]_INST_0_i_55_n_0 ),
        .O(\badr[15]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h1131313111311131)) 
    \badr[15]_INST_0_i_32 
       (.I0(ir[15]),
        .I1(Q[0]),
        .I2(ir[10]),
        .I3(\badr[15]_INST_0_i_40_n_0 ),
        .I4(ir[14]),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF470000)) 
    \badr[15]_INST_0_i_33 
       (.I0(\badr[15]_INST_0_i_56_n_0 ),
        .I1(ir[11]),
        .I2(\badr[15]_INST_0_i_57_n_0 ),
        .I3(\bdatw[15]_INST_0_i_46_n_0 ),
        .I4(\bdatw[15]_INST_0_i_50_n_0 ),
        .I5(ir[15]),
        .O(\badr[15]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00800080A0A00080)) 
    \badr[15]_INST_0_i_34 
       (.I0(\grn_reg[0] ),
        .I1(ir[3]),
        .I2(ir[2]),
        .I3(\badr[15]_INST_0_i_46_n_0 ),
        .I4(\badr[15]_INST_0_i_58_n_0 ),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0455)) 
    \badr[15]_INST_0_i_35 
       (.I0(\iv_reg[0]_0 ),
        .I1(\badr[15]_INST_0_i_32_n_0 ),
        .I2(\badr[15]_INST_0_i_33_n_0 ),
        .I3(\grn[15]_i_23_n_0 ),
        .I4(\badr[15]_INST_0_i_34_n_0 ),
        .I5(\badr[15]_INST_0_i_31_n_0 ),
        .O(\badr[15]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h45554444FFFFFFFF)) 
    \badr[15]_INST_0_i_36 
       (.I0(\badr[15]_INST_0_i_59_n_0 ),
        .I1(Q[2]),
        .I2(\badr[15]_INST_0_i_60_n_0 ),
        .I3(\badr[15]_INST_0_i_61_n_0 ),
        .I4(\badr[15]_INST_0_i_62_n_0 ),
        .I5(\badr[15]_INST_0_i_63_n_0 ),
        .O(\badr[15]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABFBB)) 
    \badr[15]_INST_0_i_37 
       (.I0(\badr[15]_INST_0_i_34_n_0 ),
        .I1(\grn[15]_i_23_n_0 ),
        .I2(\badr[15]_INST_0_i_33_n_0 ),
        .I3(\badr[15]_INST_0_i_32_n_0 ),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\badr[15]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00202222)) 
    \badr[15]_INST_0_i_38 
       (.I0(\badr[15]_INST_0_i_30_n_0 ),
        .I1(\badr[15]_INST_0_i_29_n_0 ),
        .I2(\badr[15]_INST_0_i_64_n_0 ),
        .I3(\badr[15]_INST_0_i_49_n_0 ),
        .I4(\badr[15]_INST_0_i_16_0 ),
        .I5(\iv_reg[0]_0 ),
        .O(\badr[15]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \badr[15]_INST_0_i_39 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_13_n_0 ),
        .I1(ir[8]),
        .I2(ir[10]),
        .I3(ir[9]),
        .I4(ir[11]),
        .I5(\grn[15]_i_45_n_0 ),
        .O(\badr[15]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \badr[15]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_38_1 ),
        .I1(\bdatw[15]_INST_0_i_22_0 [15]),
        .I2(\bdatw[15]_INST_0_i_1_1 [15]),
        .I3(\badr[15]_INST_0_i_38_0 ),
        .I4(\stat_reg[2]_2 ),
        .I5(\bdatw[15] [15]),
        .O(\badr[15]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_40 
       (.I0(ir[13]),
        .I1(ir[12]),
        .O(\badr[15]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFDDFFFFFFFF)) 
    \badr[15]_INST_0_i_41 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[6]),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(ir[3]),
        .O(\badr[15]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0E0B07031F4F8FCF)) 
    \badr[15]_INST_0_i_42 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[3]),
        .I3(ir[7]),
        .I4(ir[6]),
        .I5(ir[0]),
        .O(\badr[15]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h7777777077777777)) 
    \badr[15]_INST_0_i_43 
       (.I0(\grn[15]_i_43_n_0 ),
        .I1(ir[3]),
        .I2(\badr[15]_INST_0_i_65_n_0 ),
        .I3(\badr[15]_INST_0_i_66_n_0 ),
        .I4(\badr[15]_INST_0_i_67_n_0 ),
        .I5(\badr[15]_INST_0_i_68_n_0 ),
        .O(\badr[15]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \badr[15]_INST_0_i_44 
       (.I0(\fch_irq_lev[1]_i_9_n_0 ),
        .I1(ir[8]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_13_n_0 ),
        .I3(ir[12]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_18_n_0 ),
        .I5(fch_irq_req),
        .O(\badr[15]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DF75D57F)) 
    \badr[15]_INST_0_i_45 
       (.I0(ir[13]),
        .I1(\bdatw[15]_INST_0_i_1_0 [7]),
        .I2(ir[12]),
        .I3(ir[11]),
        .I4(\bdatw[15]_INST_0_i_1_0 [6]),
        .I5(ir[14]),
        .O(\badr[15]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \badr[15]_INST_0_i_46 
       (.I0(ir[10]),
        .I1(ir[6]),
        .I2(ir[4]),
        .I3(ir[5]),
        .I4(\grn[15]_i_52_n_0 ),
        .I5(ir[7]),
        .O(\badr[15]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \badr[15]_INST_0_i_47 
       (.I0(ir[15]),
        .I1(Q[0]),
        .I2(ir[14]),
        .I3(ir[13]),
        .I4(ir[11]),
        .I5(ir[12]),
        .O(\badr[15]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAFFFFA8AA0000)) 
    \badr[15]_INST_0_i_48 
       (.I0(\grn[15]_i_54_n_0 ),
        .I1(\grn[15]_i_52_n_0 ),
        .I2(\badr[15]_INST_0_i_69_n_0 ),
        .I3(\badr[15]_INST_0_i_70_n_0 ),
        .I4(ir[10]),
        .I5(\badr[15]_INST_0_i_71_n_0 ),
        .O(\badr[15]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \badr[15]_INST_0_i_49 
       (.I0(\grn[15]_i_45_n_0 ),
        .I1(\badr[15]_INST_0_i_72_n_0 ),
        .I2(ir[2]),
        .I3(ir[4]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_17_n_0 ),
        .I5(\badr[15]_INST_0_i_73_n_0 ),
        .O(\badr[15]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0200FFFF02000200)) 
    \badr[15]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_1_3 [15]),
        .I4(\badr[15]_INST_0_i_17_n_0 ),
        .I5(\badr[15]_INST_0_i_1_0 [15]),
        .O(\badr[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000400040404040)) 
    \badr[15]_INST_0_i_50 
       (.I0(Q[0]),
        .I1(ir[15]),
        .I2(ir[9]),
        .I3(ir[11]),
        .I4(ir[14]),
        .I5(\badr[15]_INST_0_i_40_n_0 ),
        .O(\badr[15]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \badr[15]_INST_0_i_51 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_5_n_0 ),
        .I1(ir[7]),
        .I2(ir[11]),
        .I3(ir[10]),
        .I4(Q[0]),
        .I5(ir[15]),
        .O(\badr[15]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h4474FFFFFFFFFFFF)) 
    \badr[15]_INST_0_i_52 
       (.I0(\badr[15]_INST_0_i_74_n_0 ),
        .I1(ir[6]),
        .I2(ir[10]),
        .I3(\badr[15]_INST_0_i_75_n_0 ),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h2311FFFF33117755)) 
    \badr[15]_INST_0_i_53 
       (.I0(ir[10]),
        .I1(Q[0]),
        .I2(ir[6]),
        .I3(\grn[15]_i_43_n_0 ),
        .I4(ir[11]),
        .I5(ir[8]),
        .O(\badr[15]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033333733)) 
    \badr[15]_INST_0_i_54 
       (.I0(Q[0]),
        .I1(\bdatw[15]_INST_0_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(ir[10]),
        .I4(ir[9]),
        .I5(\bdatw[15]_INST_0_i_46_n_0 ),
        .O(\badr[15]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h4044104055555555)) 
    \badr[15]_INST_0_i_55 
       (.I0(ctl_fetch_fl_reg_1),
        .I1(ir[12]),
        .I2(ir[14]),
        .I3(ir[11]),
        .I4(ir[13]),
        .I5(\eir_fl_reg[1]_0 ),
        .O(\badr[15]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hABAAFFFFABAA0000)) 
    \badr[15]_INST_0_i_56 
       (.I0(\badr[15]_INST_0_i_76_n_0 ),
        .I1(\badr[15]_INST_0_i_77_n_0 ),
        .I2(\badr[15]_INST_0_i_78_n_0 ),
        .I3(\badr[15]_INST_0_i_79_n_0 ),
        .I4(ir[10]),
        .I5(\badr[15]_INST_0_i_80_n_0 ),
        .O(\badr[15]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000808)) 
    \badr[15]_INST_0_i_57 
       (.I0(ir[5]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[6]),
        .I4(ir[8]),
        .I5(ir[7]),
        .O(\badr[15]_INST_0_i_57_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \badr[15]_INST_0_i_58 
       (.I0(ir[10]),
        .I1(ir[8]),
        .I2(ir[9]),
        .O(\badr[15]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h4440444044404444)) 
    \badr[15]_INST_0_i_59 
       (.I0(ir[11]),
        .I1(ctl_fetch_fl_reg_1),
        .I2(\badr[15]_INST_0_i_81_n_0 ),
        .I3(\badr[15]_INST_0_i_36_0 ),
        .I4(\badr[15]_INST_0_i_83_n_0 ),
        .I5(\badr[15]_INST_0_i_84_n_0 ),
        .O(\badr[15]_INST_0_i_59_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[15]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(sp_dec_0[15]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_2 [15]),
        .O(\badr[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAFBAAAAAAAAAAAA)) 
    \badr[15]_INST_0_i_60 
       (.I0(\badr[15]_INST_0_i_85_n_0 ),
        .I1(\badr[15]_INST_0_i_86_n_0 ),
        .I2(\badr[15]_INST_0_i_87_n_0 ),
        .I3(ir[15]),
        .I4(ir[12]),
        .I5(ir[14]),
        .O(\badr[15]_INST_0_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_61 
       (.I0(ir[11]),
        .I1(Q[1]),
        .O(\badr[15]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFF8F)) 
    \badr[15]_INST_0_i_62 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(ir[15]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFBFBFBB)) 
    \badr[15]_INST_0_i_63 
       (.I0(\badr[15]_INST_0_i_55_n_0 ),
        .I1(\badr[15]_INST_0_i_54_n_0 ),
        .I2(\badr[15]_INST_0_i_53_n_0 ),
        .I3(\badr[15]_INST_0_i_88_n_0 ),
        .I4(\badr[15]_INST_0_i_89_n_0 ),
        .I5(ir[15]),
        .O(\badr[15]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \badr[15]_INST_0_i_64 
       (.I0(\bdatw[15]_INST_0_i_46_n_0 ),
        .I1(\badr[15]_INST_0_i_90_n_0 ),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_71_n_0 ),
        .I4(ir[10]),
        .I5(\badr[15]_INST_0_i_91_n_0 ),
        .O(\badr[15]_INST_0_i_64_n_0 ));
  LUT5 #(
    .INIT(32'h0000110F)) 
    \badr[15]_INST_0_i_65 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(ir[0]),
        .I3(ir[6]),
        .I4(ir[3]),
        .O(\badr[15]_INST_0_i_65_n_0 ));
  LUT4 #(
    .INIT(16'h777F)) 
    \badr[15]_INST_0_i_66 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[0]),
        .I3(ir[7]),
        .O(\badr[15]_INST_0_i_66_n_0 ));
  LUT4 #(
    .INIT(16'hE0EE)) 
    \badr[15]_INST_0_i_67 
       (.I0(ir[5]),
        .I1(ir[4]),
        .I2(ir[3]),
        .I3(ir[6]),
        .O(\badr[15]_INST_0_i_67_n_0 ));
  LUT5 #(
    .INIT(32'hFFD5F5D5)) 
    \badr[15]_INST_0_i_68 
       (.I0(ir[6]),
        .I1(ir[0]),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(ir[4]),
        .O(\badr[15]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h22AA22AAA228AAAA)) 
    \badr[15]_INST_0_i_69 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[4]),
        .I3(ir[3]),
        .I4(ir[1]),
        .I5(ir[5]),
        .O(\badr[15]_INST_0_i_69_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[15]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [15]),
        .I2(\badr[15]_INST_0_i_21_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_1 [15]),
        .O(\badr[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAEEAAAAAAE)) 
    \badr[15]_INST_0_i_70 
       (.I0(ir[7]),
        .I1(ir[1]),
        .I2(ir[4]),
        .I3(ir[5]),
        .I4(ir[6]),
        .I5(ir[3]),
        .O(\badr[15]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h0108040CEF7FBF3F)) 
    \badr[15]_INST_0_i_71 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[1]),
        .I3(ir[6]),
        .I4(ir[7]),
        .I5(ir[4]),
        .O(\badr[15]_INST_0_i_71_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \badr[15]_INST_0_i_72 
       (.I0(ir[7]),
        .I1(ir[6]),
        .O(\badr[15]_INST_0_i_72_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \badr[15]_INST_0_i_73 
       (.I0(ir[5]),
        .I1(ir[1]),
        .I2(ir[3]),
        .O(\badr[15]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000404000)) 
    \badr[15]_INST_0_i_74 
       (.I0(Q[0]),
        .I1(ir[10]),
        .I2(ir[7]),
        .I3(ir[4]),
        .I4(ir[3]),
        .I5(ir[5]),
        .O(\badr[15]_INST_0_i_74_n_0 ));
  LUT5 #(
    .INIT(32'h10010101)) 
    \badr[15]_INST_0_i_75 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(Q[0]),
        .I3(ir[3]),
        .I4(ir[7]),
        .O(\badr[15]_INST_0_i_75_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \badr[15]_INST_0_i_76 
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(ir[5]),
        .O(\badr[15]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h0000570057575757)) 
    \badr[15]_INST_0_i_77 
       (.I0(ir[7]),
        .I1(ir[5]),
        .I2(ir[3]),
        .I3(ir[6]),
        .I4(ir[4]),
        .I5(ir[2]),
        .O(\badr[15]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFF7FFF7F7777)) 
    \badr[15]_INST_0_i_78 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(ir[3]),
        .I4(ir[4]),
        .I5(ir[5]),
        .O(\badr[15]_INST_0_i_78_n_0 ));
  LUT5 #(
    .INIT(32'hDDD0FFFF)) 
    \badr[15]_INST_0_i_79 
       (.I0(ir[3]),
        .I1(ir[2]),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(ir[6]),
        .O(\badr[15]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFBBAB)) 
    \badr[15]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_23_n_0 ),
        .I2(\badr[15]_INST_0_i_24_n_0 ),
        .I3(\badr[15]_INST_0_i_25_n_0 ),
        .I4(\badr[15]_INST_0_i_26_n_0 ),
        .I5(\iv_reg[0]_0 ),
        .O(\badr[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFEF7FBF3108040C0)) 
    \badr[15]_INST_0_i_80 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[2]),
        .I3(ir[6]),
        .I4(ir[7]),
        .I5(ir[5]),
        .O(\badr[15]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h00020A02A002AA02)) 
    \badr[15]_INST_0_i_81 
       (.I0(\badr[15]_INST_0_i_92_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [6]),
        .I2(ir[14]),
        .I3(ir[12]),
        .I4(\bdatw[15]_INST_0_i_1_0 [7]),
        .I5(\grn[15]_i_33_n_0 ),
        .O(\badr[15]_INST_0_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h3037)) 
    \badr[15]_INST_0_i_83 
       (.I0(fch_irq_req),
        .I1(ir[0]),
        .I2(Q[0]),
        .I3(ir[1]),
        .O(\badr[15]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_84 
       (.I0(\grn[15]_i_45_n_0 ),
        .I1(ir[10]),
        .I2(ir[7]),
        .I3(ir[2]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_5_n_0 ),
        .I5(\stat[2]_i_11_n_0 ),
        .O(\badr[15]_INST_0_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h0202020A02020202)) 
    \badr[15]_INST_0_i_85 
       (.I0(\badr[15]_INST_0_i_94_n_0 ),
        .I1(ir[14]),
        .I2(Q[0]),
        .I3(ir[12]),
        .I4(ir[13]),
        .I5(\bdatw[15]_INST_0_i_1_0 [5]),
        .O(\badr[15]_INST_0_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2222FFFFF00F)) 
    \badr[15]_INST_0_i_86 
       (.I0(ir[10]),
        .I1(\grn[15]_i_43_n_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [7]),
        .I3(\bdatw[15]_INST_0_i_1_0 [5]),
        .I4(Q[0]),
        .I5(ir[13]),
        .O(\badr[15]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hF100000000000000)) 
    \badr[15]_INST_0_i_87 
       (.I0(ir[6]),
        .I1(\badr[15]_INST_0_i_95_n_0 ),
        .I2(\badr[15]_INST_0_i_96_n_0 ),
        .I3(ir[8]),
        .I4(ir[13]),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA88AA2AA)) 
    \badr[15]_INST_0_i_88 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[3]),
        .I3(ir[4]),
        .I4(ir[7]),
        .I5(\badr[15]_INST_0_i_63_0 ),
        .O(\badr[15]_INST_0_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFFBAAAA)) 
    \badr[15]_INST_0_i_89 
       (.I0(\grn[15]_i_52_n_0 ),
        .I1(\grn[15]_i_42_n_0 ),
        .I2(Q[0]),
        .I3(\iv[15]_i_10_n_0 ),
        .I4(ir[10]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBAABABBBBBBBB)) 
    \badr[15]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_22_n_0 ),
        .I1(\iv_reg[0]_0 ),
        .I2(\badr[15]_INST_0_i_16_0 ),
        .I3(\badr[15]_INST_0_i_28_n_0 ),
        .I4(\badr[15]_INST_0_i_29_n_0 ),
        .I5(\badr[15]_INST_0_i_30_n_0 ),
        .O(\badr[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFDDFFFFFFFF)) 
    \badr[15]_INST_0_i_90 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[6]),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(ir[4]),
        .O(\badr[15]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hFBFB0BFBFBFBFBFB)) 
    \badr[15]_INST_0_i_91 
       (.I0(ir[7]),
        .I1(ir[4]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(\badr[15]_INST_0_i_69_n_0 ),
        .I5(\badr[15]_INST_0_i_70_n_0 ),
        .O(\badr[15]_INST_0_i_91_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_92 
       (.I0(ir[13]),
        .I1(Q[0]),
        .O(\badr[15]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE4E4FF55)) 
    \badr[15]_INST_0_i_94 
       (.I0(ir[13]),
        .I1(\bdatw[15]_INST_0_i_1_0 [4]),
        .I2(\bdatw[15]_INST_0_i_1_0 [7]),
        .I3(\bdatw[15]_INST_0_i_1_0 [6]),
        .I4(ir[12]),
        .I5(ir[15]),
        .O(\badr[15]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'hCCC4CCCCC000CCC0)) 
    \badr[15]_INST_0_i_95 
       (.I0(ir[3]),
        .I1(ir[10]),
        .I2(ir[5]),
        .I3(ir[4]),
        .I4(ir[7]),
        .I5(Q[0]),
        .O(\badr[15]_INST_0_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h0000F26000000000)) 
    \badr[15]_INST_0_i_96 
       (.I0(ir[4]),
        .I1(ir[3]),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(Q[0]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_96_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[1]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(abus_0[0]),
        .O(badr[1]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \badr[1]_INST_0_i_1 
       (.I0(\badr[1]_INST_0_i_2_n_0 ),
        .I1(\badr[1]_INST_0_i_3_n_0 ),
        .I2(\badr[1]_INST_0_i_4_n_0 ),
        .I3(tnsn_dsp_a_1_sn_1),
        .I4(\badr[1]_INST_0_i_6_n_0 ),
        .O(abus_0[0]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[1]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(sp_dec_0[1]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_2 [1]),
        .O(\badr[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h02FF020200FF0000)) 
    \badr[1]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\stat_reg[2]_3 ),
        .I4(\pc_reg[15]_0 [1]),
        .I5(\badr[15]_INST_0_i_1_3 [1]),
        .O(\badr[1]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[1]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_1 [1]),
        .I2(\badr[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_0 [1]),
        .O(\badr[1]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \badr[1]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_1_0 [1]),
        .I1(\badr[15]_INST_0_i_17_n_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [1]),
        .I3(\badr[15]_INST_0_i_20_n_0 ),
        .I4(\badr[1]_INST_0_i_7_n_0 ),
        .O(\badr[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0080000C00800000)) 
    \badr[1]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_1_2 [1]),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_9_n_0 ),
        .I3(\badr[15]_INST_0_i_31_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .I5(\badr[15]_INST_0_i_1_1 [1]),
        .O(\badr[1]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \badr[2]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(\badr[2]_INST_0_i_1_n_0 ),
        .O(badr[2]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \badr[2]_INST_0_i_1 
       (.I0(\badr[2]_INST_0_i_2_n_0 ),
        .I1(\badr[2]_INST_0_i_3_n_0 ),
        .I2(\badr[2]_INST_0_i_4_n_0 ),
        .I3(badr_2_sn_1),
        .I4(\badr[2]_INST_0_i_6_n_0 ),
        .O(\badr[2]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[2]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(sp_dec_0[2]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_2 [2]),
        .O(\badr[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFD00FDFFFF00FF)) 
    \badr[2]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\pc_reg[15]_0 [2]),
        .I4(\stat_reg[2]_3 ),
        .I5(\badr[15]_INST_0_i_1_3 [2]),
        .O(\badr[2]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[2]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_1 [2]),
        .I2(\badr[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_0 [2]),
        .O(\badr[2]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \badr[2]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_1_0 [2]),
        .I1(\badr[15]_INST_0_i_17_n_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [2]),
        .I3(\badr[15]_INST_0_i_20_n_0 ),
        .I4(\badr[2]_INST_0_i_7_n_0 ),
        .O(\badr[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0080000C00800000)) 
    \badr[2]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_1_2 [2]),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_9_n_0 ),
        .I3(\badr[15]_INST_0_i_31_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .I5(\badr[15]_INST_0_i_1_1 [2]),
        .O(\badr[2]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[3]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(abus_0[1]),
        .O(badr[3]));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \badr[3]_INST_0_i_1 
       (.I0(\badr[3]_INST_0_i_2_n_0 ),
        .I1(\badr[3]_INST_0_i_3_n_0 ),
        .I2(\badr[3]_INST_0_i_4_n_0 ),
        .I3(\badr[3]_INST_0_i_5_n_0 ),
        .O(abus_0[1]));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[3]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_1_2 [3]),
        .I4(\badr[15]_INST_0_i_21_n_0 ),
        .I5(\bdatw[15]_INST_0_i_5_1 [3]),
        .O(\badr[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \badr[3]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_38_0 ),
        .I1(\bdatw[15]_INST_0_i_1_1 [3]),
        .I2(\bdatw[15] [3]),
        .I3(\stat_reg[2]_2 ),
        .I4(\bdatw[15]_INST_0_i_22_0 [3]),
        .I5(\badr[15]_INST_0_i_38_1 ),
        .O(\badr[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \badr[3]_INST_0_i_4 
       (.I0(\badr[3]_INST_0_i_6_n_0 ),
        .I1(\badr[15]_INST_0_i_1_1 [3]),
        .I2(\badr[15]_INST_0_i_35_0 ),
        .I3(sp_dec_0[3]),
        .I4(\badr[15]_INST_0_i_18_n_0 ),
        .O(\badr[3]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA2A200A2)) 
    \badr[3]_INST_0_i_5 
       (.I0(\badr[3]_INST_0_i_7_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_2 [3]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\pc_reg[15]_0 [3]),
        .I4(\stat_reg[2]_3 ),
        .O(\badr[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0300000200000002)) 
    \badr[3]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_1_0 [3]),
        .I1(\badr[15]_INST_0_i_36_n_0 ),
        .I2(\badr[15]_INST_0_i_37_n_0 ),
        .I3(\badr[15]_INST_0_i_8_n_0 ),
        .I4(\badr[15]_INST_0_i_9_n_0 ),
        .I5(\badr[15]_INST_0_i_1_0 [3]),
        .O(\badr[3]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFF1FFFD)) 
    \badr[3]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_5_0 [3]),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_9_n_0 ),
        .I3(\badr[15]_INST_0_i_10_n_0 ),
        .I4(\badr[15]_INST_0_i_1_3 [3]),
        .O(\badr[3]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \badr[4]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(\badr[4]_INST_0_i_1_n_0 ),
        .O(badr[4]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \badr[4]_INST_0_i_1 
       (.I0(\badr[4]_INST_0_i_2_n_0 ),
        .I1(\badr[4]_INST_0_i_3_n_0 ),
        .I2(\badr[4]_INST_0_i_4_n_0 ),
        .I3(\badr[4]_INST_0_i_5_n_0 ),
        .I4(\badr[4]_INST_0_i_6_n_0 ),
        .O(\badr[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[4]_INST_0_i_2 
       (.I0(\stat_reg[2]_3 ),
        .I1(\pc_reg[15]_0 [4]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_2 [4]),
        .O(\badr[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFD00FDFFFF00FF)) 
    \badr[4]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(sp_dec_0[4]),
        .I4(\badr[15]_INST_0_i_18_n_0 ),
        .I5(\badr[15]_INST_0_i_1_3 [4]),
        .O(\badr[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \badr[4]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_38_1 ),
        .I1(\bdatw[15]_INST_0_i_22_0 [4]),
        .I2(\bdatw[15] [4]),
        .I3(\stat_reg[2]_2 ),
        .I4(\bdatw[15]_INST_0_i_1_1 [4]),
        .I5(\badr[15]_INST_0_i_38_0 ),
        .O(\badr[4]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[4]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_1 [4]),
        .I2(\badr[15]_INST_0_i_35_0 ),
        .I3(\badr[15]_INST_0_i_1_1 [4]),
        .O(\badr[4]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \badr[4]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_1_0 [4]),
        .I1(\badr[15]_INST_0_i_17_n_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [4]),
        .I3(\badr[15]_INST_0_i_20_n_0 ),
        .I4(\badr[4]_INST_0_i_7_n_0 ),
        .O(\badr[4]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h20032000)) 
    \badr[4]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_1_2 [4]),
        .I1(\badr[15]_INST_0_i_10_n_0 ),
        .I2(\badr[15]_INST_0_i_8_n_0 ),
        .I3(\badr[15]_INST_0_i_9_n_0 ),
        .I4(\bdatw[15]_INST_0_i_5_0 [4]),
        .O(\badr[4]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \badr[5]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(\badr[5]_INST_0_i_1_n_0 ),
        .O(badr[5]));
  LUT4 #(
    .INIT(16'h0002)) 
    \badr[5]_INST_0_i_1 
       (.I0(\badr[5]_INST_0_i_2_n_0 ),
        .I1(\badr[5]_INST_0_i_3_n_0 ),
        .I2(\badr[5]_INST_0_i_4_n_0 ),
        .I3(\badr[5]_INST_0_i_5_n_0 ),
        .O(\badr[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA2A200A2)) 
    \badr[5]_INST_0_i_2 
       (.I0(\badr[5]_INST_0_i_6_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_2 [5]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\pc_reg[15]_0 [5]),
        .I4(\stat_reg[2]_3 ),
        .O(\badr[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \badr[5]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_38_1 ),
        .I1(\bdatw[15]_INST_0_i_22_0 [5]),
        .I2(\bdatw[15]_INST_0_i_1_1 [5]),
        .I3(\badr[15]_INST_0_i_38_0 ),
        .I4(\bdatw[15] [5]),
        .I5(\stat_reg[2]_2 ),
        .O(\badr[5]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[5]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [5]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 [5]),
        .O(\badr[5]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \badr[5]_INST_0_i_5 
       (.I0(sp_dec_0[5]),
        .I1(\badr[15]_INST_0_i_18_n_0 ),
        .I2(\bdatw[15]_INST_0_i_5_1 [5]),
        .I3(\badr[15]_INST_0_i_21_n_0 ),
        .I4(\badr[5]_INST_0_i_7_n_0 ),
        .O(\badr[5]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFF1FFFD)) 
    \badr[5]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_5_0 [5]),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_9_n_0 ),
        .I3(\badr[15]_INST_0_i_10_n_0 ),
        .I4(\badr[15]_INST_0_i_1_3 [5]),
        .O(\badr[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0080000C00800000)) 
    \badr[5]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_1_2 [5]),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_9_n_0 ),
        .I3(\badr[15]_INST_0_i_31_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .I5(\badr[15]_INST_0_i_1_1 [5]),
        .O(\badr[5]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \badr[6]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(\badr[6]_INST_0_i_1_n_0 ),
        .O(badr[6]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \badr[6]_INST_0_i_1 
       (.I0(\badr[6]_INST_0_i_2_n_0 ),
        .I1(\badr[6]_INST_0_i_3_n_0 ),
        .I2(\badr[6]_INST_0_i_4_n_0 ),
        .I3(\badr[6]_INST_0_i_5_n_0 ),
        .I4(\badr[6]_INST_0_i_6_n_0 ),
        .O(\badr[6]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[6]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(sp_dec_0[6]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_2 [6]),
        .O(\badr[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFD00FDFFFF00FF)) 
    \badr[6]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\pc_reg[15]_0 [6]),
        .I4(\stat_reg[2]_3 ),
        .I5(\badr[15]_INST_0_i_1_3 [6]),
        .O(\badr[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \badr[6]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_38_0 ),
        .I1(\bdatw[15]_INST_0_i_1_1 [6]),
        .I2(\bdatw[15] [6]),
        .I3(\stat_reg[2]_2 ),
        .I4(\bdatw[15]_INST_0_i_22_0 [6]),
        .I5(\badr[15]_INST_0_i_38_1 ),
        .O(\badr[6]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[6]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [6]),
        .I2(\badr[15]_INST_0_i_21_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_1 [6]),
        .O(\badr[6]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \badr[6]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_1_0 [6]),
        .I1(\badr[15]_INST_0_i_17_n_0 ),
        .I2(\bdatw[15]_INST_0_i_5_0 [6]),
        .I3(\badr[15]_INST_0_i_12_n_0 ),
        .I4(\badr[6]_INST_0_i_7_n_0 ),
        .O(\badr[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0080000C00800000)) 
    \badr[6]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_1_2 [6]),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_9_n_0 ),
        .I3(\badr[15]_INST_0_i_31_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .I5(\badr[15]_INST_0_i_1_1 [6]),
        .O(\badr[6]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[7]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(abus_0[2]),
        .O(badr[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \badr[7]_INST_0_i_1 
       (.I0(\badr[7]_INST_0_i_2_n_0 ),
        .I1(\badr[7]_INST_0_i_3_n_0 ),
        .I2(\badr[7]_INST_0_i_4_n_0 ),
        .I3(\badr[7]_INST_0_i_5_n_0 ),
        .I4(\badr[7]_INST_0_i_6_n_0 ),
        .I5(tnsn_dsp_a_7_sn_1),
        .O(abus_0[2]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[7]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_1 [7]),
        .I2(\badr[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_0 [7]),
        .O(\badr[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \badr[7]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_38_0 ),
        .I1(\bdatw[15]_INST_0_i_1_1 [7]),
        .I2(\bdatw[15] [7]),
        .I3(\stat_reg[2]_2 ),
        .I4(\bdatw[15]_INST_0_i_22_0 [7]),
        .I5(\badr[15]_INST_0_i_38_1 ),
        .O(\badr[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[7]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_1_2 [7]),
        .I4(\badr[15]_INST_0_i_20_n_0 ),
        .I5(\bdatw[15]_INST_0_i_1_0 [7]),
        .O(\badr[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0200FFFF02000200)) 
    \badr[7]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_1_3 [7]),
        .I4(\badr[15]_INST_0_i_17_n_0 ),
        .I5(\badr[15]_INST_0_i_1_0 [7]),
        .O(\badr[7]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[7]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(sp_dec_0[7]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_2 [7]),
        .O(\badr[7]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \badr[8]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(\badr[8]_INST_0_i_1_n_0 ),
        .O(badr[8]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \badr[8]_INST_0_i_1 
       (.I0(\badr[8]_INST_0_i_2_n_0 ),
        .I1(\badr[8]_INST_0_i_3_n_0 ),
        .I2(\badr[8]_INST_0_i_4_n_0 ),
        .I3(\badr[8]_INST_0_i_5_n_0 ),
        .I4(\badr[8]_INST_0_i_6_n_0 ),
        .I5(\badr[8]_INST_0_i_7_n_0 ),
        .O(\badr[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[8]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_1_2 [8]),
        .I4(\badr[15]_INST_0_i_35_0 ),
        .I5(\badr[15]_INST_0_i_1_1 [8]),
        .O(\badr[8]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB0BB)) 
    \badr[8]_INST_0_i_3 
       (.I0(\stat_reg[2]_3 ),
        .I1(\pc_reg[15]_0 [8]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_2 [8]),
        .O(\badr[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \badr[8]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_38_0 ),
        .I1(\bdatw[15]_INST_0_i_1_1 [8]),
        .I2(\stat_reg[2]_2 ),
        .I3(\bdatw[15] [8]),
        .I4(\bdatw[15]_INST_0_i_22_0 [8]),
        .I5(\badr[15]_INST_0_i_38_1 ),
        .O(\badr[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h02FF020200FF0000)) 
    \badr[8]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_5_0 [8]),
        .I5(\badr[15]_INST_0_i_1_3 [8]),
        .O(\badr[8]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[8]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(sp_dec_0[8]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 [8]),
        .O(\badr[8]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[8]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [8]),
        .I2(\badr[15]_INST_0_i_21_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_1 [8]),
        .O(\badr[8]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \badr[9]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(\badr[9]_INST_0_i_1_n_0 ),
        .O(badr[9]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \badr[9]_INST_0_i_1 
       (.I0(\badr[9]_INST_0_i_2_n_0 ),
        .I1(\badr[9]_INST_0_i_3_n_0 ),
        .I2(\badr[9]_INST_0_i_4_n_0 ),
        .I3(badr_9_sn_1),
        .I4(\badr[9]_INST_0_i_6_n_0 ),
        .I5(\badr[9]_INST_0_i_7_n_0 ),
        .O(\badr[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[9]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_1_2 [9]),
        .I4(\badr[15]_INST_0_i_17_n_0 ),
        .I5(\badr[15]_INST_0_i_1_0 [9]),
        .O(\badr[9]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB0BB)) 
    \badr[9]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(sp_dec_0[9]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_2 [9]),
        .O(\badr[9]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[9]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_1 [9]),
        .I2(\badr[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_0 [9]),
        .O(\badr[9]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[9]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [9]),
        .I2(\stat_reg[2]_3 ),
        .I3(\pc_reg[15]_0 [9]),
        .O(\badr[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0200FFFF02000200)) 
    \badr[9]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_1_3 [9]),
        .I4(\badr[15]_INST_0_i_35_0 ),
        .I5(\badr[15]_INST_0_i_1_1 [9]),
        .O(\badr[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000222)) 
    \bcmd[0]_INST_0 
       (.I0(\bcmd[0]_INST_0_i_1_n_0 ),
        .I1(\bcmd[0]_INST_0_i_2_n_0 ),
        .I2(ir[10]),
        .I3(ir[7]),
        .I4(ir[6]),
        .I5(\bcmd[0]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000C001CC01)) 
    \bcmd[0]_INST_0_i_1 
       (.I0(ir[2]),
        .I1(ir[9]),
        .I2(ir[5]),
        .I3(ir[11]),
        .I4(ir[6]),
        .I5(\bcmd[0]_INST_0_i_4_n_0 ),
        .O(\bcmd[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCFFA)) 
    \bcmd[0]_INST_0_i_2 
       (.I0(ir[4]),
        .I1(Q[0]),
        .I2(ir[11]),
        .I3(ir[12]),
        .O(\bcmd[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFEBFBEBFFFBFBF)) 
    \bcmd[0]_INST_0_i_3 
       (.I0(\bcmd[0]_INST_0_i_5_n_0 ),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[3]),
        .I4(ir[6]),
        .I5(ir[1]),
        .O(\bcmd[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h77FFF7FFFFFFFFFD)) 
    \bcmd[0]_INST_0_i_4 
       (.I0(ctl_fetch_fl_reg_1),
        .I1(ir[14]),
        .I2(ir[10]),
        .I3(ir[13]),
        .I4(ir[7]),
        .I5(ir[12]),
        .O(\bcmd[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \bcmd[0]_INST_0_i_5 
       (.I0(Q[0]),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(ir[7]),
        .I4(ir[8]),
        .I5(\bcmd[0]_INST_0_i_7_n_0 ),
        .O(\bcmd[0]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bcmd[0]_INST_0_i_7 
       (.I0(ir[3]),
        .I1(ir[2]),
        .I2(ir[5]),
        .I3(ir[4]),
        .O(\bcmd[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000000E)) 
    \bcmd[1]_INST_0 
       (.I0(\bcmd[1]_INST_0_i_1_n_0 ),
        .I1(\bcmd[1] ),
        .I2(\bcmd[1]_INST_0_i_3_n_0 ),
        .I3(\bcmd[1]_INST_0_i_4_n_0 ),
        .I4(\bcmd[1]_INST_0_i_5_n_0 ),
        .I5(\bcmd[1]_INST_0_i_6_n_0 ),
        .O(\stat_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bcmd[1]_INST_0_i_1 
       (.I0(ir[11]),
        .I1(ir[12]),
        .O(\bcmd[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33FFFFBBFCFFFFFE)) 
    \bcmd[1]_INST_0_i_3 
       (.I0(ir[2]),
        .I1(ir[12]),
        .I2(ir[10]),
        .I3(ir[9]),
        .I4(ir[11]),
        .I5(ir[13]),
        .O(\bcmd[1]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF6)) 
    \bcmd[1]_INST_0_i_4 
       (.I0(ir[13]),
        .I1(ir[14]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(ir[15]),
        .O(\bcmd[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF3FFE0FFE)) 
    \bcmd[1]_INST_0_i_5 
       (.I0(ir[1]),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[10]),
        .I5(\bcmd[0]_INST_0_i_2_n_0 ),
        .O(\bcmd[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7FF7777)) 
    \bcmd[1]_INST_0_i_6 
       (.I0(ir[8]),
        .I1(ir[6]),
        .I2(ir[3]),
        .I3(ir[5]),
        .I4(ir[10]),
        .I5(\bcmd[1]_INST_0_i_7_n_0 ),
        .O(\bcmd[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000002F2F2F2F2)) 
    \bcmd[1]_INST_0_i_7 
       (.I0(ir[0]),
        .I1(ir[8]),
        .I2(ir[3]),
        .I3(ir[6]),
        .I4(ir[5]),
        .I5(\bcmd[1]_INST_0_i_8_n_0 ),
        .O(\bcmd[1]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \bcmd[1]_INST_0_i_8 
       (.I0(ir[5]),
        .I1(ir[4]),
        .I2(ir[6]),
        .I3(ir[10]),
        .O(\bcmd[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \bcmd[2]_INST_0 
       (.I0(\bcmd[2]_INST_0_i_1_n_0 ),
        .I1(ir[11]),
        .I2(ir[9]),
        .I3(ir[7]),
        .I4(ir[10]),
        .I5(ir[8]),
        .O(\stat_reg[0]_6 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \bcmd[2]_INST_0_i_1 
       (.I0(\iv_reg[0]_0 ),
        .I1(Q[0]),
        .I2(ir[15]),
        .I3(ir[13]),
        .I4(ir[14]),
        .I5(ir[12]),
        .O(\bcmd[2]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bctl/read_cyc[1]_i_1 
       (.I0(\stat_reg[0]_6 ),
        .I1(brdy),
        .I2(read_cyc[1]),
        .O(brdy_3));
  LUT3 #(
    .INIT(8'hB8)) 
    \bctl/read_cyc[2]_i_1 
       (.I0(\stat_reg[0] ),
        .I1(brdy),
        .I2(read_cyc[2]),
        .O(brdy_2));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[0]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(bbus_0[0]),
        .O(bdatw[0]));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[10]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0]_6 ),
        .I2(\bdatw[10]_INST_0_i_1_n_0 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bdatw[10]));
  LUT6 #(
    .INIT(64'h00000000B0BB0000)) 
    \bdatw[10]_INST_0_i_1 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [10]),
        .I2(\stat_reg[0]_5 ),
        .I3(\bdatw[15] [10]),
        .I4(\bdatw[10]_INST_0_i_3_n_0 ),
        .I5(\bdatw[10]_INST_0_i_4_n_0 ),
        .O(\bdatw[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[10]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_31_n_0 ),
        .I1(sp_dec_0[2]),
        .I2(\bdatw[15]_INST_0_i_1_2 [2]),
        .I3(\bdatw[15]_INST_0_i_21_n_0 ),
        .I4(\badr[15]_INST_0_i_1_3 [2]),
        .I5(\bdatw[15]_INST_0_i_23_n_0 ),
        .O(\bdatw[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBB0BBB0B0000BB0B)) 
    \bdatw[10]_INST_0_i_11 
       (.I0(\bdatw[14]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_22_0 [10]),
        .I2(eir[10]),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_15_n_0 ),
        .I5(\bdatw[10]_INST_0_i_16_n_0 ),
        .O(\bdatw[10]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[10]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_24_n_0 ),
        .I1(\pc_reg[15]_0 [10]),
        .I2(\bdatw[15]_INST_0_i_11_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 [10]),
        .O(\bdatw[10]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[10]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_5_1 [10]),
        .I1(\bdatw[15]_INST_0_i_27_n_0 ),
        .I2(\bdatw[15]_INST_0_i_5_0 [10]),
        .I3(\bdatw[15]_INST_0_i_28_n_0 ),
        .I4(\bdatw[10]_INST_0_i_17_n_0 ),
        .O(\bdatw[10]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A2020808A202)) 
    \bdatw[10]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[10]_INST_0_i_18_n_0 ),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(ir[1]),
        .I4(\bdatw[15]_INST_0_i_14_n_0 ),
        .I5(ir[2]),
        .O(\bdatw[10]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \bdatw[10]_INST_0_i_15 
       (.I0(eir[2]),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_15_n_0 ),
        .O(\bdatw[10]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBAB5BABABABABABA)) 
    \bdatw[10]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(ir[9]),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(ir[0]),
        .I4(ir[1]),
        .I5(\bdatw[11]_INST_0_i_18_n_0 ),
        .O(\bdatw[10]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[10]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_23_n_0 ),
        .I1(\badr[15]_INST_0_i_1_3 [10]),
        .I2(\bdatw[15]_INST_0_i_20_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_1 [10]),
        .O(\bdatw[10]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \bdatw[10]_INST_0_i_18 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(ir[2]),
        .O(\bdatw[10]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bdatw[10]_INST_0_i_2 
       (.I0(\bdatw[10]_INST_0_i_5_n_0 ),
        .I1(\bdatw[10]_INST_0_i_6_n_0 ),
        .I2(\bdatw[10]_INST_0_i_7_n_0 ),
        .I3(\bdatw[10]_INST_0_i_8_n_0 ),
        .I4(\bdatw[10]_INST_0_i_9_n_0 ),
        .I5(\bdatw[10]_INST_0_i_10_n_0 ),
        .O(\bdatw[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA2A200A2)) 
    \bdatw[10]_INST_0_i_3 
       (.I0(\bdatw[10]_INST_0_i_11_n_0 ),
        .I1(sp_dec_0[10]),
        .I2(\bdatw[15]_INST_0_i_31_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_2 [10]),
        .I4(\bdatw[15]_INST_0_i_21_n_0 ),
        .O(\bdatw[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \bdatw[10]_INST_0_i_4 
       (.I0(\bdatw[10]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_33_n_0 ),
        .I2(\badr[15]_INST_0_i_1_1 [10]),
        .I3(\bdatw[15]_INST_0_i_30_n_0 ),
        .I4(\badr[15]_INST_0_i_1_2 [10]),
        .I5(\bdatw[10]_INST_0_i_13_n_0 ),
        .O(\bdatw[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \bdatw[10]_INST_0_i_5 
       (.I0(\stat_reg[0]_5 ),
        .I1(\bdatw[15] [2]),
        .I2(\bdatw[10]_INST_0_i_14_n_0 ),
        .I3(\bdatw[10]_INST_0_i_15_n_0 ),
        .I4(\bdatw[15]_INST_0_i_1_0 [2]),
        .I5(\bdatw[13]_INST_0_i_4_n_0 ),
        .O(\bdatw[10]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[10]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_30_n_0 ),
        .I1(\badr[15]_INST_0_i_1_2 [2]),
        .I2(\bdatw[15]_INST_0_i_28_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_0 [2]),
        .O(\bdatw[10]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[10]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_33_n_0 ),
        .I1(\badr[15]_INST_0_i_1_1 [2]),
        .I2(\bdatw[15]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_1 [2]),
        .O(\bdatw[10]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[10]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_11_n_0 ),
        .I1(\badr[15]_INST_0_i_1_0 [2]),
        .I2(\bdatw[14]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_22_0 [2]),
        .O(\bdatw[10]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[10]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_24_n_0 ),
        .I1(\pc_reg[15]_0 [2]),
        .I2(\bdatw[15]_INST_0_i_20_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_1 [2]),
        .O(\bdatw[10]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[11]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0]_6 ),
        .I2(\bdatw[11]_INST_0_i_1_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(bdatw[11]));
  LUT5 #(
    .INIT(32'h00000051)) 
    \bdatw[11]_INST_0_i_1 
       (.I0(\bdatw[11]_INST_0_i_3_n_0 ),
        .I1(\bdatw[15] [11]),
        .I2(\stat_reg[0]_5 ),
        .I3(\bdatw[11]_INST_0_i_4_n_0 ),
        .I4(\bdatw[11]_INST_0_i_5_n_0 ),
        .O(\bdatw[11]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[11]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_33_n_0 ),
        .I1(\badr[15]_INST_0_i_1_1 [3]),
        .I2(\bdatw[15]_INST_0_i_24_n_0 ),
        .I3(\pc_reg[15]_0 [3]),
        .O(\bdatw[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[11]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_23_n_0 ),
        .I1(\badr[15]_INST_0_i_1_3 [3]),
        .I2(\badr[15]_INST_0_i_1_2 [3]),
        .I3(\bdatw[15]_INST_0_i_30_n_0 ),
        .I4(\bdatw[15]_INST_0_i_5_0 [3]),
        .I5(\bdatw[15]_INST_0_i_28_n_0 ),
        .O(\bdatw[11]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[11]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_22_0 [11]),
        .I1(\bdatw[14]_INST_0_i_15_n_0 ),
        .I2(\badr[15]_INST_0_i_1_0 [11]),
        .I3(\bdatw[15]_INST_0_i_11_n_0 ),
        .I4(\bdatw[11]_INST_0_i_17_n_0 ),
        .O(\bdatw[11]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[11]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_33_n_0 ),
        .I1(\badr[15]_INST_0_i_1_1 [11]),
        .I2(\bdatw[15]_INST_0_i_21_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_2 [11]),
        .O(\bdatw[11]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hC044444444444444)) 
    \bdatw[11]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_56_n_0 ),
        .I1(\bdatw[14]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_57_n_0 ),
        .I3(\bdatw[11]_INST_0_i_18_n_0 ),
        .I4(ir[0]),
        .I5(ir[1]),
        .O(\bdatw[11]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \bdatw[11]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_1_0 [3]),
        .I1(\bdatw[15]_INST_0_i_53_n_0 ),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_14_n_0 ),
        .I4(\bdatw[15]_INST_0_i_15_n_0 ),
        .I5(\bdatw[15]_INST_0_i_16_n_0 ),
        .O(\bdatw[11]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAA000002A0A0AAA8)) 
    \bdatw[11]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_60_n_0 ),
        .I2(ir[2]),
        .I3(ir[3]),
        .I4(\bdatw[15]_INST_0_i_13_n_0 ),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[11]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[11]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_0 [11]),
        .I2(\bdatw[15]_INST_0_i_30_n_0 ),
        .I3(\badr[15]_INST_0_i_1_2 [11]),
        .O(\bdatw[11]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[11]_INST_0_i_18 
       (.I0(ir[3]),
        .I1(ir[2]),
        .O(\bdatw[11]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \bdatw[11]_INST_0_i_2 
       (.I0(\bdatw[11]_INST_0_i_6_n_0 ),
        .I1(\bdatw[11]_INST_0_i_7_n_0 ),
        .I2(\bdatw[11]_INST_0_i_8_n_0 ),
        .I3(\bdatw[11]_INST_0_i_9_n_0 ),
        .I4(\bdatw[11]_INST_0_i_10_n_0 ),
        .I5(\bdatw[11]_INST_0_i_11_n_0 ),
        .O(\bdatw[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[11]_INST_0_i_3 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [11]),
        .I2(\badr[15]_INST_0_i_1_3 [11]),
        .I3(\bdatw[15]_INST_0_i_23_n_0 ),
        .I4(eir[11]),
        .I5(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEFFFFEFEEEFEE)) 
    \bdatw[11]_INST_0_i_4 
       (.I0(\bdatw[11]_INST_0_i_12_n_0 ),
        .I1(\bdatw[11]_INST_0_i_13_n_0 ),
        .I2(\bdatw[11]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_15_n_0 ),
        .I4(\bdatw[15]_INST_0_i_20_n_0 ),
        .I5(\bdatw[15]_INST_0_i_1_1 [11]),
        .O(\bdatw[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[11]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_31_n_0 ),
        .I1(sp_dec_0[11]),
        .I2(\bdatw[15]_INST_0_i_5_1 [11]),
        .I3(\bdatw[15]_INST_0_i_27_n_0 ),
        .I4(\pc_reg[15]_0 [11]),
        .I5(\bdatw[15]_INST_0_i_24_n_0 ),
        .O(\bdatw[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[11]_INST_0_i_6 
       (.I0(\stat_reg[0]_5 ),
        .I1(\bdatw[15] [3]),
        .I2(eir[3]),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_1_1 [3]),
        .I5(\bdatw[15]_INST_0_i_20_n_0 ),
        .O(\bdatw[11]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[11]_INST_0_i_7 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [3]),
        .O(\bdatw[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF22F2)) 
    \bdatw[11]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_1_2 [3]),
        .I1(\bdatw[15]_INST_0_i_21_n_0 ),
        .I2(\bdatw[15]_INST_0_i_5_1 [3]),
        .I3(\bdatw[15]_INST_0_i_27_n_0 ),
        .I4(\bdatw[11]_INST_0_i_15_n_0 ),
        .I5(\bdatw[11]_INST_0_i_16_n_0 ),
        .O(\bdatw[11]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[11]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_31_n_0 ),
        .I1(sp_dec_0[3]),
        .I2(\bdatw[14]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_22_0 [3]),
        .O(\bdatw[11]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[12]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0]_6 ),
        .I2(\bdatw[12]_INST_0_i_1_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(bdatw[12]));
  LUT6 #(
    .INIT(64'h0000000000000051)) 
    \bdatw[12]_INST_0_i_1 
       (.I0(\bdatw[12]_INST_0_i_3_n_0 ),
        .I1(\bdatw[15] [12]),
        .I2(\stat_reg[0]_5 ),
        .I3(\bdatw[12]_INST_0_i_4_n_0 ),
        .I4(\bdatw[12]_INST_0_i_5_n_0 ),
        .I5(\bdatw[12]_INST_0_i_6_n_0 ),
        .O(\bdatw[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[12]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_30_n_0 ),
        .I1(\badr[15]_INST_0_i_1_2 [4]),
        .I2(\bdatw[15]_INST_0_i_5_0 [4]),
        .I3(\bdatw[15]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_15_n_0 ),
        .I5(\bdatw[12]_INST_0_i_16_n_0 ),
        .O(\bdatw[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000040)) 
    \bdatw[12]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_57_n_0 ),
        .I1(ir[3]),
        .I2(ir[2]),
        .I3(ir[0]),
        .I4(ir[1]),
        .I5(\bdatw[15]_INST_0_i_56_n_0 ),
        .O(\bdatw[12]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[12]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_31_n_0 ),
        .I1(sp_dec_0[12]),
        .I2(\bdatw[15]_INST_0_i_21_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_2 [12]),
        .O(\bdatw[12]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[12]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_1 [12]),
        .I2(\bdatw[15]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_1 [12]),
        .O(\bdatw[12]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[12]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_11_n_0 ),
        .I1(\badr[15]_INST_0_i_1_0 [4]),
        .I2(\bdatw[15]_INST_0_i_20_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_1 [4]),
        .O(\bdatw[12]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[12]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_21_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_2 [4]),
        .I2(\bdatw[15]_INST_0_i_33_n_0 ),
        .I3(\badr[15]_INST_0_i_1_1 [4]),
        .O(\bdatw[12]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h4C4C7C7C4C4C737C)) 
    \bdatw[12]_INST_0_i_16 
       (.I0(ir[4]),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(ir[2]),
        .I4(ir[3]),
        .I5(\bdatw[12]_INST_0_i_17_n_0 ),
        .O(\bdatw[12]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[12]_INST_0_i_17 
       (.I0(ir[1]),
        .I1(ir[0]),
        .O(\bdatw[12]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000051)) 
    \bdatw[12]_INST_0_i_2 
       (.I0(\bdatw[12]_INST_0_i_7_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [4]),
        .I2(\bdatw[13]_INST_0_i_4_n_0 ),
        .I3(\bdatw[12]_INST_0_i_8_n_0 ),
        .I4(\bdatw[12]_INST_0_i_9_n_0 ),
        .I5(\bdatw[12]_INST_0_i_10_n_0 ),
        .O(\bdatw[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[12]_INST_0_i_3 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [12]),
        .I2(\badr[15]_INST_0_i_1_1 [12]),
        .I3(\bdatw[15]_INST_0_i_33_n_0 ),
        .I4(eir[12]),
        .I5(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF222F2F2)) 
    \bdatw[12]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_1_2 [12]),
        .I1(\bdatw[15]_INST_0_i_30_n_0 ),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[12]_INST_0_i_11_n_0 ),
        .I4(\bdatw[14]_INST_0_i_13_n_0 ),
        .I5(\bdatw[12]_INST_0_i_12_n_0 ),
        .O(\bdatw[12]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[12]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_1_3 [12]),
        .I1(\bdatw[15]_INST_0_i_23_n_0 ),
        .I2(\pc_reg[15]_0 [12]),
        .I3(\bdatw[15]_INST_0_i_24_n_0 ),
        .I4(\bdatw[12]_INST_0_i_13_n_0 ),
        .O(\bdatw[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[12]_INST_0_i_6 
       (.I0(\bdatw[14]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_22_0 [12]),
        .I2(\badr[15]_INST_0_i_1_0 [12]),
        .I3(\bdatw[15]_INST_0_i_11_n_0 ),
        .I4(\bdatw[15]_INST_0_i_5_0 [12]),
        .I5(\bdatw[15]_INST_0_i_28_n_0 ),
        .O(\bdatw[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[12]_INST_0_i_7 
       (.I0(\stat_reg[0]_5 ),
        .I1(\bdatw[15] [4]),
        .I2(sp_dec_0[4]),
        .I3(\bdatw[15]_INST_0_i_31_n_0 ),
        .I4(eir[4]),
        .I5(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[12]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[12]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_1_3 [4]),
        .I1(\bdatw[15]_INST_0_i_23_n_0 ),
        .I2(\pc_reg[15]_0 [4]),
        .I3(\bdatw[15]_INST_0_i_24_n_0 ),
        .I4(\bdatw[12]_INST_0_i_14_n_0 ),
        .O(\bdatw[12]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[12]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_22_0 [4]),
        .I1(\bdatw[14]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_5_1 [4]),
        .I3(\bdatw[15]_INST_0_i_27_n_0 ),
        .I4(\bdatw[12]_INST_0_i_15_n_0 ),
        .O(\bdatw[12]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[13]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0]_6 ),
        .I2(\bdatw[13]_INST_0_i_1_n_0 ),
        .I3(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bdatw[13]));
  LUT6 #(
    .INIT(64'h0000000000000051)) 
    \bdatw[13]_INST_0_i_1 
       (.I0(\bdatw[13]_INST_0_i_3_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [13]),
        .I2(\bdatw[13]_INST_0_i_4_n_0 ),
        .I3(\bdatw[13]_INST_0_i_5_n_0 ),
        .I4(\bdatw[13]_INST_0_i_6_n_0 ),
        .I5(\bdatw[13]_INST_0_i_7_n_0 ),
        .O(\bdatw[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[13]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_1_2 [5]),
        .I1(\bdatw[15]_INST_0_i_21_n_0 ),
        .I2(\bdatw[15]_INST_0_i_5_0 [5]),
        .I3(\bdatw[15]_INST_0_i_28_n_0 ),
        .I4(\bdatw[13]_INST_0_i_16_n_0 ),
        .O(\bdatw[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[13]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_33_n_0 ),
        .I1(\badr[15]_INST_0_i_1_1 [5]),
        .I2(\bdatw[15]_INST_0_i_22_0 [5]),
        .I3(\bdatw[14]_INST_0_i_15_n_0 ),
        .I4(\bdatw[15]_INST_0_i_5_1 [5]),
        .I5(\bdatw[15]_INST_0_i_27_n_0 ),
        .O(\bdatw[13]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[13]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_33_n_0 ),
        .I1(\badr[15]_INST_0_i_1_1 [13]),
        .I2(\bdatw[15]_INST_0_i_11_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 [13]),
        .O(\bdatw[13]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[13]_INST_0_i_13 
       (.I0(\bdatw[14]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_22_0 [13]),
        .I2(\bdatw[15]_INST_0_i_31_n_0 ),
        .I3(sp_dec_0[13]),
        .O(\bdatw[13]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00004000)) 
    \bdatw[13]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_57_n_0 ),
        .I1(ir[3]),
        .I2(ir[2]),
        .I3(ir[0]),
        .I4(ir[1]),
        .I5(\bdatw[15]_INST_0_i_56_n_0 ),
        .O(\bdatw[13]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[13]_INST_0_i_15 
       (.I0(\bdatw[13]_INST_0_i_17_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_23_n_0 ),
        .I3(\badr[15]_INST_0_i_1_3 [5]),
        .O(\bdatw[13]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[13]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_1 [5]),
        .I2(\bdatw[15]_INST_0_i_30_n_0 ),
        .I3(\badr[15]_INST_0_i_1_2 [5]),
        .O(\bdatw[13]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h47CC47CC47CC4733)) 
    \bdatw[13]_INST_0_i_17 
       (.I0(ir[5]),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(ir[4]),
        .I3(\bdatw[15]_INST_0_i_13_n_0 ),
        .I4(\bdatw[15]_INST_0_i_59_n_0 ),
        .I5(\bdatw[13]_INST_0_i_18_n_0 ),
        .O(\bdatw[13]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[13]_INST_0_i_18 
       (.I0(ir[1]),
        .I1(ir[0]),
        .O(\bdatw[13]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000051)) 
    \bdatw[13]_INST_0_i_2 
       (.I0(\bdatw[13]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [5]),
        .I2(\bdatw[13]_INST_0_i_4_n_0 ),
        .I3(\bdatw[13]_INST_0_i_9_n_0 ),
        .I4(\bdatw[13]_INST_0_i_10_n_0 ),
        .I5(\bdatw[13]_INST_0_i_11_n_0 ),
        .O(\bdatw[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[13]_INST_0_i_3 
       (.I0(\stat_reg[0]_5 ),
        .I1(\bdatw[15] [13]),
        .I2(\bdatw[15]_INST_0_i_5_0 [13]),
        .I3(\bdatw[15]_INST_0_i_28_n_0 ),
        .I4(eir[13]),
        .I5(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \bdatw[13]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_16_n_0 ),
        .I4(\bdatw[15]_INST_0_i_17_n_0 ),
        .I5(\bdatw[15]_INST_0_i_18_n_0 ),
        .O(\bdatw[13]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[13]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_1_2 [13]),
        .I1(\bdatw[15]_INST_0_i_30_n_0 ),
        .I2(\bdatw[15]_INST_0_i_5_1 [13]),
        .I3(\bdatw[15]_INST_0_i_27_n_0 ),
        .I4(\bdatw[13]_INST_0_i_12_n_0 ),
        .O(\bdatw[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEFFAEFFAE)) 
    \bdatw[13]_INST_0_i_6 
       (.I0(\bdatw[13]_INST_0_i_13_n_0 ),
        .I1(\pc_reg[15]_0 [13]),
        .I2(\bdatw[15]_INST_0_i_24_n_0 ),
        .I3(\bdatw[15]_INST_0_i_15_n_0 ),
        .I4(\bdatw[13]_INST_0_i_14_n_0 ),
        .I5(\bdatw[14]_INST_0_i_13_n_0 ),
        .O(\bdatw[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[13]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_1 [13]),
        .I2(\badr[15]_INST_0_i_1_3 [13]),
        .I3(\bdatw[15]_INST_0_i_23_n_0 ),
        .I4(\bdatw[15]_INST_0_i_1_2 [13]),
        .I5(\bdatw[15]_INST_0_i_21_n_0 ),
        .O(\bdatw[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[13]_INST_0_i_8 
       (.I0(\stat_reg[0]_5 ),
        .I1(\bdatw[15] [5]),
        .I2(\badr[15]_INST_0_i_1_0 [5]),
        .I3(\bdatw[15]_INST_0_i_11_n_0 ),
        .I4(eir[5]),
        .I5(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[13]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[13]_INST_0_i_9 
       (.I0(sp_dec_0[5]),
        .I1(\bdatw[15]_INST_0_i_31_n_0 ),
        .I2(\pc_reg[15]_0 [5]),
        .I3(\bdatw[15]_INST_0_i_24_n_0 ),
        .I4(\bdatw[13]_INST_0_i_15_n_0 ),
        .O(\bdatw[13]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[14]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0]_6 ),
        .I2(\bdatw[14]_INST_0_i_1_n_0 ),
        .I3(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bdatw[14]));
  LUT6 #(
    .INIT(64'h0000000000000051)) 
    \bdatw[14]_INST_0_i_1 
       (.I0(\bdatw[14]_INST_0_i_3_n_0 ),
        .I1(\bdatw[15] [14]),
        .I2(\stat_reg[0]_5 ),
        .I3(\bdatw[14]_INST_0_i_4_n_0 ),
        .I4(\bdatw[14]_INST_0_i_5_n_0 ),
        .I5(\bdatw[14]_INST_0_i_6_n_0 ),
        .O(\bdatw[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[14]_INST_0_i_10 
       (.I0(\bdatw[14]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_22_0 [6]),
        .I2(\pc_reg[15]_0 [6]),
        .I3(\bdatw[15]_INST_0_i_24_n_0 ),
        .I4(\bdatw[15]_INST_0_i_15_n_0 ),
        .I5(\bdatw[14]_INST_0_i_18_n_0 ),
        .O(\bdatw[14]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[14]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_0 [14]),
        .I2(\bdatw[15]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_1 [14]),
        .O(\bdatw[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFF10000000)) 
    \bdatw[14]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_57_n_0 ),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(ir[3]),
        .I4(ir[2]),
        .I5(\bdatw[15]_INST_0_i_56_n_0 ),
        .O(\bdatw[14]_INST_0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \bdatw[14]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(ir[10]),
        .O(\bdatw[14]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[14]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_1 [14]),
        .I2(\bdatw[15]_INST_0_i_33_n_0 ),
        .I3(\badr[15]_INST_0_i_1_1 [14]),
        .O(\bdatw[14]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \bdatw[14]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_14_n_0 ),
        .I4(\bdatw[15]_INST_0_i_18_n_0 ),
        .I5(\bdatw[15]_INST_0_i_61_n_0 ),
        .O(\bdatw[14]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[14]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_30_n_0 ),
        .I1(\badr[15]_INST_0_i_1_2 [6]),
        .I2(\bdatw[15]_INST_0_i_23_n_0 ),
        .I3(\badr[15]_INST_0_i_1_3 [6]),
        .O(\bdatw[14]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[14]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_21_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_2 [6]),
        .I2(\bdatw[15]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_1 [6]),
        .O(\bdatw[14]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h47CC47CC473347CC)) 
    \bdatw[14]_INST_0_i_18 
       (.I0(ir[6]),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(ir[5]),
        .I3(\bdatw[15]_INST_0_i_13_n_0 ),
        .I4(\bdatw[14]_INST_0_i_19_n_0 ),
        .I5(\bdatw[15]_INST_0_i_59_n_0 ),
        .O(\bdatw[14]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[14]_INST_0_i_19 
       (.I0(ir[1]),
        .I1(ir[0]),
        .O(\bdatw[14]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000051)) 
    \bdatw[14]_INST_0_i_2 
       (.I0(\bdatw[14]_INST_0_i_7_n_0 ),
        .I1(\bdatw[15] [6]),
        .I2(\stat_reg[0]_5 ),
        .I3(\bdatw[14]_INST_0_i_8_n_0 ),
        .I4(\bdatw[14]_INST_0_i_9_n_0 ),
        .I5(\bdatw[14]_INST_0_i_10_n_0 ),
        .O(\bdatw[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[14]_INST_0_i_3 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [14]),
        .I2(eir[14]),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\pc_reg[15]_0 [14]),
        .I5(\bdatw[15]_INST_0_i_24_n_0 ),
        .O(\bdatw[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEFFAEFFAE)) 
    \bdatw[14]_INST_0_i_4 
       (.I0(\bdatw[14]_INST_0_i_11_n_0 ),
        .I1(sp_dec_0[14]),
        .I2(\bdatw[15]_INST_0_i_31_n_0 ),
        .I3(\bdatw[15]_INST_0_i_15_n_0 ),
        .I4(\bdatw[14]_INST_0_i_12_n_0 ),
        .I5(\bdatw[14]_INST_0_i_13_n_0 ),
        .O(\bdatw[14]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[14]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_1_3 [14]),
        .I1(\bdatw[15]_INST_0_i_23_n_0 ),
        .I2(\badr[15]_INST_0_i_1_2 [14]),
        .I3(\bdatw[15]_INST_0_i_30_n_0 ),
        .I4(\bdatw[14]_INST_0_i_14_n_0 ),
        .O(\bdatw[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[14]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_21_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_2 [14]),
        .I2(\bdatw[15]_INST_0_i_22_0 [14]),
        .I3(\bdatw[14]_INST_0_i_15_n_0 ),
        .I4(\badr[15]_INST_0_i_1_0 [14]),
        .I5(\bdatw[15]_INST_0_i_11_n_0 ),
        .O(\bdatw[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[14]_INST_0_i_7 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [6]),
        .I2(sp_dec_0[6]),
        .I3(\bdatw[15]_INST_0_i_31_n_0 ),
        .I4(eir[6]),
        .I5(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[14]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[14]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_1_1 [6]),
        .I1(\bdatw[15]_INST_0_i_20_n_0 ),
        .I2(\badr[15]_INST_0_i_1_1 [6]),
        .I3(\bdatw[15]_INST_0_i_33_n_0 ),
        .I4(\bdatw[14]_INST_0_i_16_n_0 ),
        .O(\bdatw[14]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[14]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_5_0 [6]),
        .I1(\bdatw[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_1_0 [6]),
        .I3(\bdatw[15]_INST_0_i_11_n_0 ),
        .I4(\bdatw[14]_INST_0_i_17_n_0 ),
        .O(\bdatw[14]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[15]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0]_6 ),
        .I2(\bdatw[15]_INST_0_i_1_n_0 ),
        .I3(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bdatw[15]));
  LUT5 #(
    .INIT(32'h00000051)) 
    \bdatw[15]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(\bdatw[15] [15]),
        .I2(\stat_reg[0]_5 ),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[15]_INST_0_i_6_n_0 ),
        .O(\bdatw[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[15]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_33_n_0 ),
        .I1(\badr[15]_INST_0_i_1_1 [7]),
        .I2(\badr[15]_INST_0_i_1_3 [7]),
        .I3(\bdatw[15]_INST_0_i_23_n_0 ),
        .I4(\badr[15]_INST_0_i_1_0 [7]),
        .I5(\bdatw[15]_INST_0_i_11_n_0 ),
        .O(\bdatw[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFFFFFFF)) 
    \bdatw[15]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_13_n_0 ),
        .I4(\bdatw[15]_INST_0_i_17_n_0 ),
        .I5(\bdatw[15]_INST_0_i_18_n_0 ),
        .O(\bdatw[15]_INST_0_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \bdatw[15]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[15]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDD0FFFFFFFF)) 
    \bdatw[15]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_34_n_0 ),
        .I1(\bdatw[15]_INST_0_i_35_n_0 ),
        .I2(\bdatw[15]_INST_0_i_36_n_0 ),
        .I3(\bdatw[15]_INST_0_i_37_n_0 ),
        .I4(\bdatw[15]_INST_0_i_38_n_0 ),
        .I5(ctl_fetch_fl_reg_1),
        .O(\bdatw[15]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEFFAEFFFF)) 
    \bdatw[15]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_39_n_0 ),
        .I1(\bdatw[15]_INST_0_i_40_n_0 ),
        .I2(\bdatw[13]_INST_0_i_17_0 ),
        .I3(\bdatw[15]_INST_0_i_42_n_0 ),
        .I4(\bdatw[15]_INST_0_i_43_n_0 ),
        .I5(\bdatw[15]_INST_0_i_44_n_0 ),
        .O(\bdatw[15]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB8B8B8)) 
    \bdatw[15]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_45_n_0 ),
        .I1(ir[12]),
        .I2(\tnsn_dsp_a[8]_INST_0_i_5_n_0 ),
        .I3(\bdatw[15]_INST_0_i_46_n_0 ),
        .I4(ir[15]),
        .I5(\bdatw[15]_INST_0_i_47_n_0 ),
        .O(\bdatw[15]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \bdatw[15]_INST_0_i_16 
       (.I0(\iv_reg[0]_0 ),
        .I1(Q[0]),
        .I2(ir[15]),
        .I3(\bdatw[15]_INST_0_i_46_n_0 ),
        .I4(ir[2]),
        .I5(\bdatw[15]_INST_0_i_48_n_0 ),
        .O(\bdatw[15]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000010000000F)) 
    \bdatw[15]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_49_n_0 ),
        .I1(\bdatw[15]_INST_0_i_46_n_0 ),
        .I2(ir[15]),
        .I3(Q[0]),
        .I4(\iv_reg[0]_0 ),
        .I5(\bdatw[15]_INST_0_i_50_n_0 ),
        .O(\bdatw[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \bdatw[15]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_48_n_0 ),
        .I1(\iv_reg[0]_0 ),
        .I2(Q[0]),
        .I3(ir[15]),
        .I4(\bdatw[15]_INST_0_i_46_n_0 ),
        .I5(ir[1]),
        .O(\bdatw[15]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[15]_INST_0_i_19 
       (.I0(\bdatw[15]_INST_0_i_30_n_0 ),
        .I1(\badr[15]_INST_0_i_1_2 [15]),
        .I2(\bdatw[15]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_1 [15]),
        .O(\bdatw[15]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000051)) 
    \bdatw[15]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_7_n_0 ),
        .I1(\bdatw[15] [7]),
        .I2(\stat_reg[0]_5 ),
        .I3(\bdatw[15]_INST_0_i_8_n_0 ),
        .I4(\bdatw[15]_INST_0_i_9_n_0 ),
        .I5(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(\bdatw[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[15]_INST_0_i_20 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_27_0 ),
        .I4(\bdatw[15]_INST_0_i_52_n_0 ),
        .I5(\bdatw[15]_INST_0_i_17_n_0 ),
        .O(\bdatw[15]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[15]_INST_0_i_21 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_16_n_0 ),
        .I4(\bdatw[15]_INST_0_i_53_n_0 ),
        .I5(\bdatw[15]_INST_0_i_27_0 ),
        .O(\bdatw[15]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[15]_INST_0_i_22 
       (.I0(\bdatw[15]_INST_0_i_5_0 [15]),
        .I1(\bdatw[15]_INST_0_i_28_n_0 ),
        .I2(sp_dec_0[15]),
        .I3(\bdatw[15]_INST_0_i_31_n_0 ),
        .I4(\bdatw[15]_INST_0_i_54_n_0 ),
        .O(\bdatw[15]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \bdatw[15]_INST_0_i_23 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_27_0 ),
        .I4(\bdatw[15]_INST_0_i_16_n_0 ),
        .I5(\bdatw[15]_INST_0_i_55_n_0 ),
        .O(\bdatw[15]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \bdatw[15]_INST_0_i_24 
       (.I0(\bdatw[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_13_n_0 ),
        .I4(\bdatw[15]_INST_0_i_17_n_0 ),
        .I5(\bdatw[15]_INST_0_i_18_n_0 ),
        .O(\bdatw[15]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hC044444444444444)) 
    \bdatw[15]_INST_0_i_25 
       (.I0(\bdatw[15]_INST_0_i_56_n_0 ),
        .I1(\bdatw[14]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_57_n_0 ),
        .I3(\bdatw[15]_INST_0_i_58_n_0 ),
        .I4(ir[0]),
        .I5(ir[1]),
        .O(\bdatw[15]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h44447777CCC3CCC3)) 
    \bdatw[15]_INST_0_i_26 
       (.I0(ir[7]),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_59_n_0 ),
        .I3(\bdatw[15]_INST_0_i_60_n_0 ),
        .I4(ir[6]),
        .I5(\bdatw[15]_INST_0_i_13_n_0 ),
        .O(\bdatw[15]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[15]_INST_0_i_27 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_16_n_0 ),
        .I4(\bdatw[15]_INST_0_i_61_n_0 ),
        .I5(\bdatw[15]_INST_0_i_18_n_0 ),
        .O(\bdatw[15]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \bdatw[15]_INST_0_i_28 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_18_n_0 ),
        .I2(\bdatw[15]_INST_0_i_16_n_0 ),
        .I3(\bdatw[15]_INST_0_i_15_n_0 ),
        .I4(\bdatw[15]_INST_0_i_13_n_0 ),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[15]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[15]_INST_0_i_29 
       (.I0(\bdatw[15]_INST_0_i_21_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_2 [7]),
        .I2(\bdatw[15]_INST_0_i_20_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_1 [7]),
        .O(\bdatw[15]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[15]_INST_0_i_3 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [15]),
        .I2(\badr[15]_INST_0_i_1_0 [15]),
        .I3(\bdatw[15]_INST_0_i_11_n_0 ),
        .I4(eir[15]),
        .I5(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \bdatw[15]_INST_0_i_30 
       (.I0(\bdatw[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_14_n_0 ),
        .I4(\bdatw[15]_INST_0_i_53_n_0 ),
        .I5(\bdatw[15]_INST_0_i_27_0 ),
        .O(\bdatw[15]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    \bdatw[15]_INST_0_i_31 
       (.I0(\bdatw[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_16_n_0 ),
        .I4(\bdatw[15]_INST_0_i_18_n_0 ),
        .I5(\bdatw[15]_INST_0_i_17_n_0 ),
        .O(\bdatw[15]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[15]_INST_0_i_32 
       (.I0(\bdatw[15]_INST_0_i_24_n_0 ),
        .I1(\pc_reg[15]_0 [7]),
        .I2(\bdatw[14]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_22_0 [7]),
        .O(\bdatw[15]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[15]_INST_0_i_33 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_16_n_0 ),
        .I4(\bdatw[15]_INST_0_i_55_n_0 ),
        .I5(\bdatw[15]_INST_0_i_27_0 ),
        .O(\bdatw[15]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \bdatw[15]_INST_0_i_34 
       (.I0(\bdatw[15]_INST_0_i_62_n_0 ),
        .I1(\grn[15]_i_45_n_0 ),
        .I2(\bcmd[0]_INST_0_i_7_n_0 ),
        .I3(\bdatw[15]_INST_0_i_63_n_0 ),
        .I4(ir[8]),
        .I5(\bcmd[1] ),
        .O(\bdatw[15]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFF3FFFFFFFFFFFD)) 
    \bdatw[15]_INST_0_i_35 
       (.I0(ir[0]),
        .I1(ir[6]),
        .I2(ir[11]),
        .I3(ir[9]),
        .I4(ir[7]),
        .I5(ir[8]),
        .O(\bdatw[15]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAA2222A22A22A)) 
    \bdatw[15]_INST_0_i_36 
       (.I0(\bdatw[15]_INST_0_i_64_n_0 ),
        .I1(ctl_fetch_inferred_i_18_n_0),
        .I2(ir[5]),
        .I3(ir[4]),
        .I4(ir[6]),
        .I5(ir[3]),
        .O(\bdatw[15]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \bdatw[15]_INST_0_i_37 
       (.I0(Q[0]),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[12]),
        .O(\bdatw[15]_INST_0_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \bdatw[15]_INST_0_i_38 
       (.I0(ir[11]),
        .I1(ir[8]),
        .I2(ir[10]),
        .O(\bdatw[15]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCFCFD00)) 
    \bdatw[15]_INST_0_i_39 
       (.I0(\stat_reg[2]_9 ),
        .I1(\iv_reg[0]_0 ),
        .I2(Q[0]),
        .I3(ir[12]),
        .I4(ir[13]),
        .I5(ir[15]),
        .O(\bdatw[15]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \bdatw[15]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_16_n_0 ),
        .I4(\bdatw[15]_INST_0_i_17_n_0 ),
        .I5(\bdatw[15]_INST_0_i_18_n_0 ),
        .O(\stat_reg[0]_5 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_40 
       (.I0(ir[13]),
        .I1(ir[12]),
        .O(\bdatw[15]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFEFAAAAAFAF)) 
    \bdatw[15]_INST_0_i_42 
       (.I0(\bdatw[15]_INST_0_i_70_n_0 ),
        .I1(ir[9]),
        .I2(ir[10]),
        .I3(\bdatw[15]_INST_0_i_71_n_0 ),
        .I4(ir[11]),
        .I5(ir[8]),
        .O(\bdatw[15]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hBABAFFBAFFFFFFFF)) 
    \bdatw[15]_INST_0_i_43 
       (.I0(\bdatw[15]_INST_0_i_38_n_0 ),
        .I1(\bdatw[15]_INST_0_i_72_n_0 ),
        .I2(ctl_fetch_inferred_i_8_n_0),
        .I3(\bdatw[15]_INST_0_i_73_n_0 ),
        .I4(\bdatw[15]_INST_0_i_74_n_0 ),
        .I5(\bdatw[15]_INST_0_i_64_n_0 ),
        .O(\bdatw[15]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000B487FFFFFFFF)) 
    \bdatw[15]_INST_0_i_44 
       (.I0(\bdatw[15]_INST_0_i_1_0 [7]),
        .I1(ir[12]),
        .I2(ir[11]),
        .I3(\bdatw[15]_INST_0_i_1_0 [6]),
        .I4(ir[14]),
        .I5(ir[13]),
        .O(\bdatw[15]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h40FFFFFF40FF0000)) 
    \bdatw[15]_INST_0_i_45 
       (.I0(\bdatw[15]_INST_0_i_75_n_0 ),
        .I1(\bdatw[15]_INST_0_i_76_n_0 ),
        .I2(ctl_fetch_inferred_i_8_n_0),
        .I3(\tnsn_dsp_a[8]_INST_0_i_8_n_0 ),
        .I4(ir[13]),
        .I5(\stat_reg[2]_9 ),
        .O(\bdatw[15]_INST_0_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \bdatw[15]_INST_0_i_46 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(ir[13]),
        .O(\bdatw[15]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h90FF90FFFFFF90FF)) 
    \bdatw[15]_INST_0_i_47 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(rst_n_fl_reg_0),
        .I3(\eir_fl_reg[1]_0 ),
        .I4(ir[15]),
        .I5(\bdatw[15]_INST_0_i_46_n_0 ),
        .O(\bdatw[15]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D5DDDDDD)) 
    \bdatw[15]_INST_0_i_48 
       (.I0(ir[11]),
        .I1(\bdatw[15]_INST_0_i_77_n_0 ),
        .I2(\bdatw[15]_INST_0_i_78_n_0 ),
        .I3(ir[9]),
        .I4(\bdatw[15]_INST_0_i_79_n_0 ),
        .I5(\bdatw[15]_INST_0_i_80_n_0 ),
        .O(\bdatw[15]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hD0FFDDFFD000DDFF)) 
    \bdatw[15]_INST_0_i_49 
       (.I0(ctl_fetch_inferred_i_18_n_0),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[15]_INST_0_i_64_n_0 ),
        .I3(ir[11]),
        .I4(ir[0]),
        .I5(\grn[15]_i_33_n_0 ),
        .O(\bdatw[15]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \bdatw[15]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_20_n_0 ),
        .I2(\bdatw[15]_INST_0_i_1_1 [15]),
        .I3(\bdatw[15]_INST_0_i_21_n_0 ),
        .I4(\bdatw[15]_INST_0_i_1_2 [15]),
        .I5(\bdatw[15]_INST_0_i_22_n_0 ),
        .O(\bdatw[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \bdatw[15]_INST_0_i_50 
       (.I0(fch_irq_req),
        .I1(\tnsn_dsp_a[7]_INST_0_i_18_n_0 ),
        .I2(ir[12]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_13_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(rst_n_fl_reg_2),
        .O(\bdatw[15]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'hFFBF)) 
    \bdatw[15]_INST_0_i_52 
       (.I0(ir[2]),
        .I1(ir[1]),
        .I2(\bcmd[2]_INST_0_i_1_n_0 ),
        .I3(\bdatw[15]_INST_0_i_48_n_0 ),
        .O(\bdatw[15]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFDDFF)) 
    \bdatw[15]_INST_0_i_53 
       (.I0(ir[1]),
        .I1(\bdatw[15]_INST_0_i_48_n_0 ),
        .I2(\bdatw[15]_INST_0_i_50_n_0 ),
        .I3(ctl_fetch_fl_reg_2),
        .I4(\bdatw[15]_INST_0_i_46_n_0 ),
        .I5(\bdatw[15]_INST_0_i_49_n_0 ),
        .O(\bdatw[15]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[15]_INST_0_i_54 
       (.I0(\bdatw[14]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_22_0 [15]),
        .I2(\bdatw[15]_INST_0_i_33_n_0 ),
        .I3(\badr[15]_INST_0_i_1_1 [15]),
        .O(\bdatw[15]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF2FFF0FF22FF)) 
    \bdatw[15]_INST_0_i_55 
       (.I0(ir[1]),
        .I1(\bdatw[15]_INST_0_i_48_n_0 ),
        .I2(\bdatw[15]_INST_0_i_50_n_0 ),
        .I3(ctl_fetch_fl_reg_2),
        .I4(\bdatw[15]_INST_0_i_46_n_0 ),
        .I5(\bdatw[15]_INST_0_i_49_n_0 ),
        .O(\bdatw[15]_INST_0_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_56 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .O(\bdatw[15]_INST_0_i_56_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[15]_INST_0_i_57 
       (.I0(\bdatw[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[15]_INST_0_i_57_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[15]_INST_0_i_58 
       (.I0(ir[2]),
        .I1(ir[3]),
        .O(\bdatw[15]_INST_0_i_58_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[15]_INST_0_i_59 
       (.I0(ir[3]),
        .I1(ir[2]),
        .O(\bdatw[15]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[15]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_23_n_0 ),
        .I1(\badr[15]_INST_0_i_1_3 [15]),
        .I2(\pc_reg[15]_0 [15]),
        .I3(\bdatw[15]_INST_0_i_24_n_0 ),
        .I4(\bdatw[15]_INST_0_i_15_n_0 ),
        .I5(\bdatw[15]_INST_0_i_25_n_0 ),
        .O(\bdatw[15]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bdatw[15]_INST_0_i_60 
       (.I0(ir[1]),
        .I1(ir[0]),
        .O(\bdatw[15]_INST_0_i_60_n_0 ));
  LUT5 #(
    .INIT(32'hBABABAFA)) 
    \bdatw[15]_INST_0_i_61 
       (.I0(\bdatw[15]_INST_0_i_27_0 ),
        .I1(\bdatw[15]_INST_0_i_50_n_0 ),
        .I2(ctl_fetch_fl_reg_2),
        .I3(\bdatw[15]_INST_0_i_46_n_0 ),
        .I4(\bdatw[15]_INST_0_i_49_n_0 ),
        .O(\bdatw[15]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \bdatw[15]_INST_0_i_62 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(ir[12]),
        .I3(ir[14]),
        .I4(ir[13]),
        .I5(Q[0]),
        .O(\bdatw[15]_INST_0_i_62_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[15]_INST_0_i_63 
       (.I0(ir[10]),
        .I1(ir[1]),
        .O(\bdatw[15]_INST_0_i_63_n_0 ));
  LUT5 #(
    .INIT(32'hFCFC4720)) 
    \bdatw[15]_INST_0_i_64 
       (.I0(ir[6]),
        .I1(ir[9]),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[10]),
        .O(\bdatw[15]_INST_0_i_64_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bdatw[15]_INST_0_i_67 
       (.I0(ir[9]),
        .I1(ir[11]),
        .I2(ir[1]),
        .I3(ir[10]),
        .O(rst_n_fl_reg_4));
  LUT5 #(
    .INIT(32'h00000200)) 
    \bdatw[15]_INST_0_i_69 
       (.I0(ir[0]),
        .I1(ir[2]),
        .I2(ir[3]),
        .I3(Q[0]),
        .I4(ir[4]),
        .O(\stat_reg[0]_7 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[15]_INST_0_i_7 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [7]),
        .I2(eir[7]),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_15_n_0 ),
        .I5(\bdatw[15]_INST_0_i_26_n_0 ),
        .O(\bdatw[15]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bdatw[15]_INST_0_i_70 
       (.I0(ir[14]),
        .I1(ir[12]),
        .O(\bdatw[15]_INST_0_i_70_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bdatw[15]_INST_0_i_71 
       (.I0(ir[7]),
        .I1(ir[6]),
        .O(\bdatw[15]_INST_0_i_71_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \bdatw[15]_INST_0_i_72 
       (.I0(ir[10]),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(ir[6]),
        .O(\bdatw[15]_INST_0_i_72_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \bdatw[15]_INST_0_i_73 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(ir[7]),
        .O(\bdatw[15]_INST_0_i_73_n_0 ));
  LUT3 #(
    .INIT(8'hE6)) 
    \bdatw[15]_INST_0_i_74 
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(ir[5]),
        .O(\bdatw[15]_INST_0_i_74_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bdatw[15]_INST_0_i_75 
       (.I0(ir[11]),
        .I1(ir[14]),
        .O(\bdatw[15]_INST_0_i_75_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[15]_INST_0_i_76 
       (.I0(ir[10]),
        .I1(ir[6]),
        .O(\bdatw[15]_INST_0_i_76_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \bdatw[15]_INST_0_i_77 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[7]),
        .O(\bdatw[15]_INST_0_i_77_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bdatw[15]_INST_0_i_78 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[10]),
        .O(\bdatw[15]_INST_0_i_78_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \bdatw[15]_INST_0_i_79 
       (.I0(ir[5]),
        .I1(ir[4]),
        .I2(ir[3]),
        .O(\bdatw[15]_INST_0_i_79_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[15]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_5_1 [7]),
        .I1(\bdatw[15]_INST_0_i_27_n_0 ),
        .I2(\bdatw[15]_INST_0_i_5_0 [7]),
        .I3(\bdatw[15]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_29_n_0 ),
        .O(\bdatw[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2222600602022206)) 
    \bdatw[15]_INST_0_i_80 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(ir[9]),
        .I5(ir[6]),
        .O(\bdatw[15]_INST_0_i_80_n_0 ));
  LUT5 #(
    .INIT(32'hF7FA7F77)) 
    \bdatw[15]_INST_0_i_81 
       (.I0(ir[6]),
        .I1(ir[0]),
        .I2(ir[5]),
        .I3(ir[4]),
        .I4(ir[3]),
        .O(\bdatw[15]_INST_0_i_81_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[15]_INST_0_i_82 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[10]),
        .O(\bdatw[15]_INST_0_i_82_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[15]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_1_2 [7]),
        .I1(\bdatw[15]_INST_0_i_30_n_0 ),
        .I2(sp_dec_0[7]),
        .I3(\bdatw[15]_INST_0_i_31_n_0 ),
        .I4(\bdatw[15]_INST_0_i_32_n_0 ),
        .O(\bdatw[15]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[1]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(bdatw[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[2]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bdatw[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[3]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(bdatw[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[4]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(bdatw[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[5]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bdatw[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[6]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bdatw[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[7]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bdatw[7]));
  LUT4 #(
    .INIT(16'h8A02)) 
    \bdatw[8]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0]_6 ),
        .I2(\bdatw[8]_INST_0_i_1_n_0 ),
        .I3(bbus_0[0]),
        .O(bdatw[8]));
  LUT6 #(
    .INIT(64'h00000000B0BB0000)) 
    \bdatw[8]_INST_0_i_1 
       (.I0(\stat_reg[0]_5 ),
        .I1(\bdatw[15] [8]),
        .I2(\bdatw[13]_INST_0_i_4_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_0 [8]),
        .I4(\bdatw[8]_INST_0_i_3_n_0 ),
        .I5(\bdatw[8]_INST_0_i_4_n_0 ),
        .O(\bdatw[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[8]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_24_n_0 ),
        .I1(\pc_reg[15]_0 [0]),
        .I2(\bdatw[15]_INST_0_i_5_1 [0]),
        .I3(\bdatw[15]_INST_0_i_27_n_0 ),
        .I4(\badr[15]_INST_0_i_1_0 [0]),
        .I5(\bdatw[15]_INST_0_i_11_n_0 ),
        .O(\bdatw[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBB0BBB0B0000BB0B)) 
    \bdatw[8]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_33_n_0 ),
        .I1(\badr[15]_INST_0_i_1_1 [8]),
        .I2(eir[8]),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_15_n_0 ),
        .I5(\bdatw[8]_INST_0_i_16_n_0 ),
        .O(\bdatw[8]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[8]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_31_n_0 ),
        .I1(sp_dec_0[8]),
        .I2(\bdatw[15]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_1 [8]),
        .O(\bdatw[8]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[8]_INST_0_i_13 
       (.I0(\badr[15]_INST_0_i_1_3 [8]),
        .I1(\bdatw[15]_INST_0_i_23_n_0 ),
        .I2(\badr[15]_INST_0_i_1_0 [8]),
        .I3(\bdatw[15]_INST_0_i_11_n_0 ),
        .I4(\bdatw[8]_INST_0_i_17_n_0 ),
        .O(\bdatw[8]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \bdatw[8]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_1_2 [0]),
        .I1(\bdatw[8]_INST_0_i_18_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_13_n_0 ),
        .I4(\bdatw[15]_INST_0_i_15_n_0 ),
        .I5(\bdatw[15]_INST_0_i_16_n_0 ),
        .O(\bdatw[8]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8282020282820220)) 
    \bdatw[8]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(ir[1]),
        .I4(ir[0]),
        .I5(ctl_fetch_inferred_i_14_n_0),
        .O(\bdatw[8]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABABABAB5BA)) 
    \bdatw[8]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(ir[7]),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(\bdatw[11]_INST_0_i_18_n_0 ),
        .I4(ir[0]),
        .I5(ir[1]),
        .O(\bdatw[8]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[8]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_30_n_0 ),
        .I1(\badr[15]_INST_0_i_1_2 [8]),
        .I2(\bdatw[15]_INST_0_i_28_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_0 [8]),
        .O(\bdatw[8]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFAFFFFFFFFF)) 
    \bdatw[8]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_27_0 ),
        .I1(\bdatw[15]_INST_0_i_49_n_0 ),
        .I2(\bcmd[2]_INST_0_i_1_n_0 ),
        .I3(\bdatw[9]_INST_0_i_19_n_0 ),
        .I4(\bdatw[15]_INST_0_i_48_n_0 ),
        .I5(ir[1]),
        .O(\bdatw[8]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[8]_INST_0_i_2 
       (.I0(\bdatw[8]_INST_0_i_5_n_0 ),
        .I1(bdatw_0_sn_1),
        .I2(\bdatw[8]_INST_0_i_7_n_0 ),
        .I3(\bdatw[8]_INST_0_i_8_n_0 ),
        .I4(\bdatw[8]_INST_0_i_9_n_0 ),
        .I5(\bdatw[8]_INST_0_i_10_n_0 ),
        .O(bbus_0[0]));
  LUT5 #(
    .INIT(32'hA2A200A2)) 
    \bdatw[8]_INST_0_i_3 
       (.I0(\bdatw[8]_INST_0_i_11_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_2 [8]),
        .I2(\bdatw[15]_INST_0_i_21_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_1 [8]),
        .I4(\bdatw[15]_INST_0_i_20_n_0 ),
        .O(\bdatw[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \bdatw[8]_INST_0_i_4 
       (.I0(\bdatw[8]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_24_n_0 ),
        .I2(\pc_reg[15]_0 [8]),
        .I3(\bdatw[14]_INST_0_i_15_n_0 ),
        .I4(\bdatw[15]_INST_0_i_22_0 [8]),
        .I5(\bdatw[8]_INST_0_i_13_n_0 ),
        .O(\bdatw[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[8]_INST_0_i_5 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [0]),
        .I2(eir[0]),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\badr[15]_INST_0_i_1_1 [0]),
        .I5(\bdatw[15]_INST_0_i_33_n_0 ),
        .O(\bdatw[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2FFF2)) 
    \bdatw[8]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_22_0 [0]),
        .I1(\bdatw[14]_INST_0_i_15_n_0 ),
        .I2(\bdatw[8]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_1 [0]),
        .I4(\bdatw[15]_INST_0_i_20_n_0 ),
        .I5(\bdatw[8]_INST_0_i_15_n_0 ),
        .O(\bdatw[8]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[8]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_0 [0]),
        .I2(\bdatw[15]_INST_0_i_23_n_0 ),
        .I3(\badr[15]_INST_0_i_1_3 [0]),
        .O(\bdatw[8]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[8]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_31_n_0 ),
        .I1(sp_dec_0[0]),
        .I2(\bdatw[15]_INST_0_i_21_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_2 [0]),
        .O(\bdatw[8]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[9]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0]_6 ),
        .I2(\bdatw[9]_INST_0_i_1_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(bdatw[9]));
  LUT6 #(
    .INIT(64'h00000000B0BB0000)) 
    \bdatw[9]_INST_0_i_1 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [9]),
        .I2(\stat_reg[0]_5 ),
        .I3(\bdatw[15] [9]),
        .I4(\bdatw[9]_INST_0_i_3_n_0 ),
        .I5(\bdatw[9]_INST_0_i_4_n_0 ),
        .O(\bdatw[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[9]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_21_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_2 [1]),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[9]_INST_0_i_15_n_0 ),
        .I4(\pc_reg[15]_0 [1]),
        .I5(\bdatw[15]_INST_0_i_24_n_0 ),
        .O(\bdatw[9]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0000BB0B)) 
    \bdatw[9]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_1 [9]),
        .I2(eir[9]),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[9]_INST_0_i_16_n_0 ),
        .O(\bdatw[9]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[9]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_31_n_0 ),
        .I1(sp_dec_0[9]),
        .I2(\bdatw[15]_INST_0_i_21_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_2 [9]),
        .O(\bdatw[9]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[9]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_5_1 [9]),
        .I1(\bdatw[15]_INST_0_i_27_n_0 ),
        .I2(\pc_reg[15]_0 [9]),
        .I3(\bdatw[15]_INST_0_i_24_n_0 ),
        .I4(\bdatw[9]_INST_0_i_17_n_0 ),
        .O(\bdatw[9]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0008003800080008)) 
    \bdatw[9]_INST_0_i_14 
       (.I0(eir[1]),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_15_n_0 ),
        .I4(\bdatw[9]_INST_0_i_18_n_0 ),
        .I5(sp_dec_0[1]),
        .O(\bdatw[9]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h22226666AAA9EEEE)) 
    \bdatw[9]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(ir[3]),
        .I3(ir[2]),
        .I4(ir[0]),
        .I5(ir[1]),
        .O(\bdatw[9]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000C008888C0CC)) 
    \bdatw[9]_INST_0_i_16 
       (.I0(ir[8]),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[13]_INST_0_i_18_n_0 ),
        .I3(\bdatw[11]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_13_n_0 ),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[9]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[9]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_33_n_0 ),
        .I1(\badr[15]_INST_0_i_1_1 [9]),
        .I2(\bdatw[14]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_22_0 [9]),
        .O(\bdatw[9]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFFFFFFF)) 
    \bdatw[9]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_49_n_0 ),
        .I1(\bdatw[9]_INST_0_i_19_n_0 ),
        .I2(ir[1]),
        .I3(\bdatw[15]_INST_0_i_48_n_0 ),
        .I4(ir[2]),
        .I5(\bcmd[2]_INST_0_i_1_n_0 ),
        .O(\bdatw[9]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \bdatw[9]_INST_0_i_19 
       (.I0(rst_n_fl_reg_2),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[9]_INST_0_i_20_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_18_n_0 ),
        .I4(fch_irq_req),
        .I5(ctl_fetch_fl_reg_2),
        .O(\bdatw[9]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bdatw[9]_INST_0_i_2 
       (.I0(\bdatw[9]_INST_0_i_5_n_0 ),
        .I1(\bdatw[9]_INST_0_i_6_n_0 ),
        .I2(\bdatw[9]_INST_0_i_7_n_0 ),
        .I3(\bdatw[9]_INST_0_i_8_n_0 ),
        .I4(\bdatw[9]_INST_0_i_9_n_0 ),
        .I5(\bdatw[9]_INST_0_i_10_n_0 ),
        .O(\bdatw[9]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bdatw[9]_INST_0_i_20 
       (.I0(ir[12]),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(ir[7]),
        .I4(ir[6]),
        .O(\bdatw[9]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hA2A200A2)) 
    \bdatw[9]_INST_0_i_3 
       (.I0(\bdatw[9]_INST_0_i_11_n_0 ),
        .I1(\badr[15]_INST_0_i_1_3 [9]),
        .I2(\bdatw[15]_INST_0_i_23_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 [9]),
        .I4(\bdatw[15]_INST_0_i_11_n_0 ),
        .O(\bdatw[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \bdatw[9]_INST_0_i_4 
       (.I0(\bdatw[9]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_28_n_0 ),
        .I2(\bdatw[15]_INST_0_i_5_0 [9]),
        .I3(\bdatw[15]_INST_0_i_30_n_0 ),
        .I4(\badr[15]_INST_0_i_1_2 [9]),
        .I5(\bdatw[9]_INST_0_i_13_n_0 ),
        .O(\bdatw[9]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0D0D000D)) 
    \bdatw[9]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_1_0 [1]),
        .I1(\bdatw[13]_INST_0_i_4_n_0 ),
        .I2(\bdatw[9]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15] [1]),
        .I4(\stat_reg[0]_5 ),
        .O(\bdatw[9]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[9]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_33_n_0 ),
        .I1(\badr[15]_INST_0_i_1_1 [1]),
        .I2(\bdatw[15]_INST_0_i_11_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 [1]),
        .O(\bdatw[9]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[9]_INST_0_i_7 
       (.I0(\bdatw[14]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_22_0 [1]),
        .I2(\bdatw[15]_INST_0_i_28_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_0 [1]),
        .O(\bdatw[9]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[9]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_30_n_0 ),
        .I1(\badr[15]_INST_0_i_1_2 [1]),
        .I2(\bdatw[15]_INST_0_i_23_n_0 ),
        .I3(\badr[15]_INST_0_i_1_3 [1]),
        .O(\bdatw[9]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[9]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_27_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_1 [1]),
        .I2(\bdatw[15]_INST_0_i_20_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_1 [1]),
        .O(\bdatw[9]_INST_0_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    cbus1_carry__0_i_1
       (.I0(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bbus_0[4]));
  LUT1 #(
    .INIT(2'h1)) 
    cbus1_carry__0_i_2
       (.I0(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bbus_0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    cbus1_carry__0_i_3
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(bbus_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    cbus1_carry__0_i_4
       (.I0(abus_0[2]),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\sp_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__0_i_5
       (.I0(\badr[6]_INST_0_i_1_n_0 ),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\sp_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__0_i_6
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(\sp_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__0_i_7
       (.I0(\badr[4]_INST_0_i_1_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\sp_reg[7]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    cbus1_carry__1_i_1
       (.I0(\badr[9]_INST_0_i_1_n_0 ),
        .O(abus_0[4]));
  LUT1 #(
    .INIT(2'h1)) 
    cbus1_carry__1_i_2
       (.I0(\badr[8]_INST_0_i_1_n_0 ),
        .O(abus_0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    cbus1_carry__1_i_3
       (.I0(abus_0[6]),
        .I1(\bdatw[11]_INST_0_i_1_n_0 ),
        .O(\sp_reg[11] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    cbus1_carry__1_i_4
       (.I0(abus_0[5]),
        .I1(\bdatw[10]_INST_0_i_1_n_0 ),
        .O(\sp_reg[11] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__1_i_5
       (.I0(\badr[9]_INST_0_i_1_n_0 ),
        .I1(\bdatw[9]_INST_0_i_1_n_0 ),
        .O(\sp_reg[11] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__1_i_6
       (.I0(\badr[8]_INST_0_i_1_n_0 ),
        .I1(\bdatw[8]_INST_0_i_1_n_0 ),
        .O(\sp_reg[11] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__2_i_1
       (.I0(\bdatw[15]_INST_0_i_1_n_0 ),
        .I1(\badr[15]_INST_0_i_1_n_0 ),
        .O(\sp_reg[15] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    cbus1_carry__2_i_2
       (.I0(abus_0[9]),
        .I1(\bdatw[14]_INST_0_i_1_n_0 ),
        .O(\sp_reg[15] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    cbus1_carry__2_i_3
       (.I0(abus_0[8]),
        .I1(\bdatw[13]_INST_0_i_1_n_0 ),
        .O(\sp_reg[15] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    cbus1_carry__2_i_4
       (.I0(abus_0[7]),
        .I1(\bdatw[12]_INST_0_i_1_n_0 ),
        .O(\sp_reg[15] [0]));
  LUT1 #(
    .INIT(2'h1)) 
    cbus1_carry_i_1
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bbus_0[1]));
  LUT2 #(
    .INIT(4'h9)) 
    cbus1_carry_i_2
       (.I0(abus_0[1]),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\bdatw[11]_INST_0_i_2_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry_i_3
       (.I0(\badr[2]_INST_0_i_1_n_0 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(\bdatw[11]_INST_0_i_2_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    cbus1_carry_i_4
       (.I0(abus_0[0]),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(\bdatw[11]_INST_0_i_2_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    cbus1_carry_i_5
       (.I0(\badr[0]_INST_0_i_1_n_0 ),
        .I1(bbus_0[0]),
        .O(\bdatw[11]_INST_0_i_2_0 [0]));
  LUT5 #(
    .INIT(32'h00000002)) 
    ctl_fetch_ext_fl_i_1
       (.I0(ctl_fetch_ext_fl_i_2_n_0),
        .I1(ctl_fetch_ext_fl_i_3_n_0),
        .I2(ir[2]),
        .I3(ir[12]),
        .I4(Q[1]),
        .O(ctl_fetch_ext));
  LUT5 #(
    .INIT(32'h00000002)) 
    ctl_fetch_ext_fl_i_2
       (.I0(rst_n_fl_reg_3),
        .I1(ir[10]),
        .I2(ir[1]),
        .I3(ir[11]),
        .I4(ir[9]),
        .O(ctl_fetch_ext_fl_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    ctl_fetch_ext_fl_i_3
       (.I0(Q[2]),
        .I1(ir[0]),
        .I2(ctl_fetch_ext_fl_i_5_n_0),
        .I3(ctl_fetch_ext_fl_i_6_n_0),
        .I4(Q[0]),
        .I5(ir[13]),
        .O(ctl_fetch_ext_fl_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    ctl_fetch_ext_fl_i_4
       (.I0(ir[6]),
        .I1(ir[8]),
        .I2(ir[5]),
        .I3(ir[7]),
        .O(rst_n_fl_reg_3));
  LUT2 #(
    .INIT(4'hE)) 
    ctl_fetch_ext_fl_i_5
       (.I0(ir[4]),
        .I1(ir[3]),
        .O(ctl_fetch_ext_fl_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_ext_fl_i_6
       (.I0(ir[14]),
        .I1(ir[15]),
        .O(ctl_fetch_ext_fl_i_6_n_0));
  FDRE ctl_fetch_ext_fl_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(ctl_fetch_ext),
        .Q(ctl_fetch_ext_fl),
        .R(\<const0> ));
  FDRE ctl_fetch_fl_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(ctl_fetch_fl_reg_0),
        .Q(ctl_fetch_fl),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h000D0D0D0D0D0D0D)) 
    ctl_fetch_inferred_i_1
       (.I0(ctl_fetch_fl_reg_2),
        .I1(ctl_fetch_inferred_i_3_n_0),
        .I2(ctl_fetch_inferred_i_4_n_0),
        .I3(ir[0]),
        .I4(ctl_fetch_inferred_i_5_n_0),
        .I5(ctl_fetch_fl_reg_3),
        .O(in0));
  LUT6 #(
    .INIT(64'h7FFFFFFF00FFFFFF)) 
    ctl_fetch_inferred_i_10
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[5]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[10]),
        .O(ctl_fetch_inferred_i_10_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    ctl_fetch_inferred_i_11
       (.I0(ir[12]),
        .I1(ir[11]),
        .I2(ir[13]),
        .I3(ir[14]),
        .O(rst_n_fl_reg_0));
  LUT6 #(
    .INIT(64'hFFFD0000FFFDDFFD)) 
    ctl_fetch_inferred_i_12
       (.I0(ctl_fetch_inferred_i_18_n_0),
        .I1(ctl_fetch_inferred_i_19_n_0),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(ctl_fetch_inferred_i_4_0),
        .I5(\grn[15]_i_35_n_0 ),
        .O(ctl_fetch_inferred_i_12_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ctl_fetch_inferred_i_14
       (.I0(ir[2]),
        .I1(ir[3]),
        .O(ctl_fetch_inferred_i_14_n_0));
  LUT3 #(
    .INIT(8'h4B)) 
    ctl_fetch_inferred_i_15
       (.I0(\bdatw[15]_INST_0_i_1_0 [4]),
        .I1(ir[12]),
        .I2(ir[11]),
        .O(ctl_fetch_inferred_i_15_n_0));
  LUT6 #(
    .INIT(64'h0000000069990000)) 
    ctl_fetch_inferred_i_16
       (.I0(ir[11]),
        .I1(\bdatw[15]_INST_0_i_1_0 [5]),
        .I2(ir[12]),
        .I3(\bdatw[15]_INST_0_i_1_0 [7]),
        .I4(ir[14]),
        .I5(ir[13]),
        .O(ctl_fetch_inferred_i_16_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    ctl_fetch_inferred_i_18
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[7]),
        .I3(ir[10]),
        .O(ctl_fetch_inferred_i_18_n_0));
  LUT3 #(
    .INIT(8'h4F)) 
    ctl_fetch_inferred_i_19
       (.I0(ir[5]),
        .I1(ir[4]),
        .I2(ir[3]),
        .O(ctl_fetch_inferred_i_19_n_0));
  LUT6 #(
    .INIT(64'hA2A2A200AAAAAAAA)) 
    ctl_fetch_inferred_i_3
       (.I0(ctl_fetch_inferred_i_7_n_0),
        .I1(ctl_fetch_inferred_i_8_n_0),
        .I2(ctl_fetch_inferred_i_9_n_0),
        .I3(ctl_fetch_inferred_i_10_n_0),
        .I4(brdy),
        .I5(rst_n_fl_reg_0),
        .O(ctl_fetch_inferred_i_3_n_0));
  LUT6 #(
    .INIT(64'h404040FF40404040)) 
    ctl_fetch_inferred_i_4
       (.I0(ctl_fetch_inferred_i_12_n_0),
        .I1(ctl_fetch_fl_reg_1),
        .I2(rst_n_fl_reg_0),
        .I3(\tnsn_dsp_a[7]_INST_0_i_7_n_0 ),
        .I4(ctl_fetch_fl_reg_4),
        .I5(\stat[2]_i_9_n_0 ),
        .O(ctl_fetch_inferred_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000004444444F)) 
    ctl_fetch_inferred_i_5
       (.I0(Q[2]),
        .I1(\stat[2]_i_9_n_0 ),
        .I2(\fch_irq_lev[1]_i_7_n_0 ),
        .I3(ctl_fetch_inferred_i_14_n_0),
        .I4(Q[1]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_7_n_0 ),
        .O(ctl_fetch_inferred_i_5_n_0));
  LUT5 #(
    .INIT(32'h33323032)) 
    ctl_fetch_inferred_i_7
       (.I0(ctl_fetch_inferred_i_15_n_0),
        .I1(ctl_fetch_inferred_i_16_n_0),
        .I2(ir[14]),
        .I3(ir[13]),
        .I4(ctl_fetch_inferred_i_3_0),
        .O(ctl_fetch_inferred_i_7_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    ctl_fetch_inferred_i_8
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(ir[8]),
        .O(ctl_fetch_inferred_i_8_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    ctl_fetch_inferred_i_9
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[4]),
        .O(ctl_fetch_inferred_i_9_n_0));
  LUT3 #(
    .INIT(8'hFB)) 
    \eir_fl[15]_i_1 
       (.I0(fch_irq_lev0),
        .I1(rst_n),
        .I2(ctl_fetch_fl_reg_0),
        .O(\eir_fl[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[1]_i_1 
       (.I0(irq_vec[0]),
        .I1(fch_irq_lev0),
        .I2(eir[1]),
        .O(\eir_fl[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[2]_i_1 
       (.I0(irq_vec[1]),
        .I1(fch_irq_lev0),
        .I2(eir[2]),
        .O(\eir_fl[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[3]_i_1 
       (.I0(irq_vec[2]),
        .I1(fch_irq_lev0),
        .I2(eir[3]),
        .O(\eir_fl[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[4]_i_1 
       (.I0(irq_vec[3]),
        .I1(fch_irq_lev0),
        .I2(eir[4]),
        .O(\eir_fl[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[5]_i_1 
       (.I0(irq_vec[4]),
        .I1(fch_irq_lev0),
        .I2(eir[5]),
        .O(\eir_fl[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \eir_fl[6]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(rst_n),
        .O(eir_fl0));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[6]_i_2 
       (.I0(irq_vec[5]),
        .I1(fch_irq_lev0),
        .I2(eir[6]),
        .O(\eir_fl[6]_i_2_n_0 ));
  FDRE \eir_fl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[0]),
        .Q(\eir_fl_reg_n_0_[0] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  FDRE \eir_fl_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[10]),
        .Q(\eir_fl_reg_n_0_[10] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  FDRE \eir_fl_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[11]),
        .Q(\eir_fl_reg_n_0_[11] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  FDRE \eir_fl_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[12]),
        .Q(\eir_fl_reg_n_0_[12] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  FDRE \eir_fl_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[13]),
        .Q(\eir_fl_reg_n_0_[13] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  FDRE \eir_fl_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[14]),
        .Q(\eir_fl_reg_n_0_[14] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  FDRE \eir_fl_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[15]),
        .Q(\eir_fl_reg_n_0_[15] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  FDRE \eir_fl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl[1]_i_1_n_0 ),
        .Q(\eir_fl_reg_n_0_[1] ),
        .R(eir_fl0));
  FDRE \eir_fl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl[2]_i_1_n_0 ),
        .Q(\eir_fl_reg_n_0_[2] ),
        .R(eir_fl0));
  FDRE \eir_fl_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl[3]_i_1_n_0 ),
        .Q(\eir_fl_reg_n_0_[3] ),
        .R(eir_fl0));
  FDRE \eir_fl_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl[4]_i_1_n_0 ),
        .Q(\eir_fl_reg_n_0_[4] ),
        .R(eir_fl0));
  FDRE \eir_fl_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl[5]_i_1_n_0 ),
        .Q(\eir_fl_reg_n_0_[5] ),
        .R(eir_fl0));
  FDRE \eir_fl_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl[6]_i_2_n_0 ),
        .Q(\eir_fl_reg_n_0_[6] ),
        .R(eir_fl0));
  FDRE \eir_fl_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[7]),
        .Q(\eir_fl_reg_n_0_[7] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  FDRE \eir_fl_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[8]),
        .Q(\eir_fl_reg_n_0_[8] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  FDRE \eir_fl_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[9]),
        .Q(\eir_fl_reg_n_0_[9] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    eir_inferred_i_1
       (.I0(rst_n_fl),
        .I1(\eir_fl_reg_n_0_[15] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[15]),
        .O(eir[15]));
  LUT4 #(
    .INIT(16'hA808)) 
    eir_inferred_i_10
       (.I0(rst_n_fl),
        .I1(\eir_fl_reg_n_0_[6] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[6]),
        .O(eir[6]));
  LUT4 #(
    .INIT(16'hA808)) 
    eir_inferred_i_11
       (.I0(rst_n_fl),
        .I1(\eir_fl_reg_n_0_[5] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[5]),
        .O(eir[5]));
  LUT4 #(
    .INIT(16'hA808)) 
    eir_inferred_i_12
       (.I0(rst_n_fl),
        .I1(\eir_fl_reg_n_0_[4] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[4]),
        .O(eir[4]));
  LUT4 #(
    .INIT(16'hA808)) 
    eir_inferred_i_13
       (.I0(rst_n_fl),
        .I1(\eir_fl_reg_n_0_[3] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[3]),
        .O(eir[3]));
  LUT4 #(
    .INIT(16'hA808)) 
    eir_inferred_i_14
       (.I0(rst_n_fl),
        .I1(\eir_fl_reg_n_0_[2] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[2]),
        .O(eir[2]));
  LUT4 #(
    .INIT(16'hA808)) 
    eir_inferred_i_15
       (.I0(rst_n_fl),
        .I1(\eir_fl_reg_n_0_[1] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[1]),
        .O(eir[1]));
  LUT4 #(
    .INIT(16'hA808)) 
    eir_inferred_i_16
       (.I0(rst_n_fl),
        .I1(\eir_fl_reg_n_0_[0] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[0]),
        .O(eir[0]));
  LUT4 #(
    .INIT(16'hA808)) 
    eir_inferred_i_2
       (.I0(rst_n_fl),
        .I1(\eir_fl_reg_n_0_[14] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[14]),
        .O(eir[14]));
  LUT4 #(
    .INIT(16'hA808)) 
    eir_inferred_i_3
       (.I0(rst_n_fl),
        .I1(\eir_fl_reg_n_0_[13] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[13]),
        .O(eir[13]));
  LUT4 #(
    .INIT(16'hA808)) 
    eir_inferred_i_4
       (.I0(rst_n_fl),
        .I1(\eir_fl_reg_n_0_[12] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[12]),
        .O(eir[12]));
  LUT4 #(
    .INIT(16'hA808)) 
    eir_inferred_i_5
       (.I0(rst_n_fl),
        .I1(\eir_fl_reg_n_0_[11] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[11]),
        .O(eir[11]));
  LUT4 #(
    .INIT(16'hA808)) 
    eir_inferred_i_6
       (.I0(rst_n_fl),
        .I1(\eir_fl_reg_n_0_[10] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[10]),
        .O(eir[10]));
  LUT4 #(
    .INIT(16'hA808)) 
    eir_inferred_i_7
       (.I0(rst_n_fl),
        .I1(\eir_fl_reg_n_0_[9] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[9]),
        .O(eir[9]));
  LUT4 #(
    .INIT(16'hA808)) 
    eir_inferred_i_8
       (.I0(rst_n_fl),
        .I1(\eir_fl_reg_n_0_[8] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[8]),
        .O(eir[8]));
  LUT4 #(
    .INIT(16'hA808)) 
    eir_inferred_i_9
       (.I0(rst_n_fl),
        .I1(\eir_fl_reg_n_0_[7] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[7]),
        .O(eir[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \fch_irq_lev[0]_i_1 
       (.I0(irq_lev[0]),
        .I1(fch_irq_lev0),
        .I2(fch_irq_lev[0]),
        .O(\fch_irq_lev[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \fch_irq_lev[1]_i_1 
       (.I0(irq_lev[1]),
        .I1(fch_irq_lev0),
        .I2(fch_irq_lev[1]),
        .O(\fch_irq_lev[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \fch_irq_lev[1]_i_2 
       (.I0(\eir_fl_reg[1]_1 ),
        .I1(\eir_fl_reg[1]_0 ),
        .I2(ir[11]),
        .I3(\fch_irq_lev[1]_i_5_n_0 ),
        .I4(\fch_irq_lev[1]_i_6_n_0 ),
        .I5(\fch_irq_lev[1]_i_7_n_0 ),
        .O(fch_irq_lev0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fch_irq_lev[1]_i_5 
       (.I0(ir[15]),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(ir[13]),
        .O(\fch_irq_lev[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \fch_irq_lev[1]_i_6 
       (.I0(ir[3]),
        .I1(ir[2]),
        .I2(ir[0]),
        .O(\fch_irq_lev[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \fch_irq_lev[1]_i_7 
       (.I0(\fch_irq_lev[1]_i_8_n_0 ),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(ir[4]),
        .I4(ir[1]),
        .I5(\fch_irq_lev[1]_i_9_n_0 ),
        .O(\fch_irq_lev[1]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \fch_irq_lev[1]_i_8 
       (.I0(ir[7]),
        .I1(ir[5]),
        .O(\fch_irq_lev[1]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \fch_irq_lev[1]_i_9 
       (.I0(ir[10]),
        .I1(ir[9]),
        .O(\fch_irq_lev[1]_i_9_n_0 ));
  FDRE \fch_irq_lev_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch_irq_lev[0]_i_1_n_0 ),
        .Q(fch_irq_lev[0]),
        .R(SR));
  FDRE \fch_irq_lev_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch_irq_lev[1]_i_1_n_0 ),
        .Q(fch_irq_lev[1]),
        .R(SR));
  FDRE fch_irq_req_fl_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fch_irq_req),
        .Q(fch_irq_req_fl),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \grn[0]_i_1 
       (.I0(\grn[0]_i_2_n_0 ),
        .I1(\stat_reg[2]_0 ),
        .I2(O[0]),
        .I3(\grn[0]_i_3_n_0 ),
        .I4(\grn[0]_i_4_n_0 ),
        .O(\read_cyc_reg[1] [0]));
  LUT6 #(
    .INIT(64'h50505F5FCFC0CFC0)) 
    \grn[0]_i_10 
       (.I0(abus_0[0]),
        .I1(\badr[0]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(\badr[2]_INST_0_i_1_n_0 ),
        .I4(abus_0[1]),
        .I5(bbus_0[0]),
        .O(\grn[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFCFCFA0AFC0C0)) 
    \grn[0]_i_11 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(\badr[4]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(abus_0[2]),
        .I4(bbus_0[0]),
        .I5(\badr[6]_INST_0_i_1_n_0 ),
        .O(\grn[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \grn[0]_i_12 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [6]),
        .O(\grn[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h30303F3F5F505F50)) 
    \grn[0]_i_13 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(\badr[4]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(abus_0[1]),
        .I4(\badr[2]_INST_0_i_1_n_0 ),
        .I5(bbus_0[0]),
        .O(\grn[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \grn[0]_i_2 
       (.I0(\grn[0]_i_5_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(\grn[0]_i_6_n_0 ),
        .I3(\grn[6]_i_12_n_0 ),
        .O(\grn[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \grn[0]_i_3 
       (.I0(\stat_reg[1] ),
        .I1(tnsn_dsp_c[0]),
        .I2(\iv_reg[15] [0]),
        .I3(\stat_reg[2] ),
        .I4(\iv_reg[0] ),
        .O(\grn[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \grn[0]_i_4 
       (.I0(\grn[0]_i_8_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[0]_i_9_n_0 ),
        .O(\grn[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF1D001DFF1DFF)) 
    \grn[0]_i_5 
       (.I0(\grn[0]_i_10_n_0 ),
        .I1(\grn[6]_i_14_n_0 ),
        .I2(\grn[0]_i_11_n_0 ),
        .I3(\sr[6]_i_6_n_0 ),
        .I4(\grn[0]_i_12_n_0 ),
        .I5(\tnsn_dsp_b[8]_INST_0_i_1_0 ),
        .O(\grn[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h101011001010FFEE)) 
    \grn[0]_i_6 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\grn[0]_i_13_n_0 ),
        .I3(\grn[4]_i_22_n_0 ),
        .I4(\grn[6]_i_14_n_0 ),
        .I5(\grn[4]_i_19_n_0 ),
        .O(\grn[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA3A33F30FFFF)) 
    \grn[0]_i_8 
       (.I0(\badr[0]_INST_0_i_1_n_0 ),
        .I1(bbus_0[0]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\badr[8]_INST_0_i_1_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(\grn[15]_i_30_n_0 ),
        .O(\grn[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h848C848C0FF00800)) 
    \grn[0]_i_9 
       (.I0(bbus_0[0]),
        .I1(\grn[4]_i_10_n_0 ),
        .I2(\badr[0]_INST_0_i_1_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[15]_i_27_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .O(\grn[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \grn[10]_i_1 
       (.I0(\grn[10]_i_2_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[10]_i_3_n_0 ),
        .I3(\grn[10]_i_4_n_0 ),
        .O(\read_cyc_reg[1] [10]));
  LUT6 #(
    .INIT(64'hFFFC88FFFFFCBBFF)) 
    \grn[10]_i_2 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\badr[2]_INST_0_i_1_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(abus_0[5]),
        .O(\grn[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \grn[10]_i_3 
       (.I0(\iv_reg[14] ),
        .I1(bdatr[1]),
        .I2(\iv_reg[15] [7]),
        .I3(\stat_reg[2] ),
        .I4(tnsn_dsp_c[7]),
        .I5(\stat_reg[1] ),
        .O(\grn[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0800AAAA)) 
    \grn[10]_i_4 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(abus_0[5]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[15]_i_28_n_0 ),
        .O(\grn[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \grn[11]_i_1 
       (.I0(\grn[11]_i_2_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\stat_reg[2] ),
        .I3(\iv_reg[15] [8]),
        .I4(\iv_reg[11] ),
        .I5(\grn[11]_i_4_n_0 ),
        .O(\read_cyc_reg[1] [11]));
  LUT6 #(
    .INIT(64'hFAFFFAFFF30FF3FF)) 
    \grn[11]_i_2 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(abus_0[6]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(abus_0[1]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\grn[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0800AAAA)) 
    \grn[11]_i_4 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(abus_0[6]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[15]_i_28_n_0 ),
        .O(\grn[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \grn[12]_i_1 
       (.I0(\grn[12]_i_2_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[12]_i_3_n_0 ),
        .I3(\grn[12]_i_4_n_0 ),
        .O(\read_cyc_reg[1] [12]));
  LUT6 #(
    .INIT(64'hFF8BFFFFFF8BCCFF)) 
    \grn[12]_i_2 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(abus_0[7]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I4(\grn[15]_i_30_n_0 ),
        .I5(\badr[4]_INST_0_i_1_n_0 ),
        .O(\grn[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \grn[12]_i_3 
       (.I0(\iv_reg[14] ),
        .I1(bdatr[2]),
        .I2(\iv_reg[15] [9]),
        .I3(\stat_reg[2] ),
        .I4(tnsn_dsp_c[8]),
        .I5(\stat_reg[1] ),
        .O(\grn[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0800AAAA)) 
    \grn[12]_i_4 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(abus_0[7]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[15]_i_28_n_0 ),
        .O(\grn[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \grn[13]_i_1 
       (.I0(\grn[13]_i_2_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\stat_reg[2] ),
        .I3(\iv_reg[15] [10]),
        .I4(\iv_reg[13] ),
        .I5(\grn[13]_i_4_n_0 ),
        .O(\read_cyc_reg[1] [13]));
  LUT6 #(
    .INIT(64'hFF8BFFFFFF8BCCFF)) 
    \grn[13]_i_2 
       (.I0(\bdatw[13]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(abus_0[8]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I4(\grn[15]_i_30_n_0 ),
        .I5(\badr[5]_INST_0_i_1_n_0 ),
        .O(\grn[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0800AAAA)) 
    \grn[13]_i_4 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(abus_0[8]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[15]_i_28_n_0 ),
        .O(\grn[13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \grn[14]_i_1 
       (.I0(\grn[14]_i_2_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[14]_i_4_n_0 ),
        .I3(\grn[14]_i_5_n_0 ),
        .O(\read_cyc_reg[1] [14]));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \grn[14]_i_10 
       (.I0(ir[10]),
        .I1(\grn[14]_i_12_n_0 ),
        .I2(ir[11]),
        .I3(Q[1]),
        .I4(ir[1]),
        .I5(ir[6]),
        .O(\grn[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBBEEFFFFBBEEFFC3)) 
    \grn[14]_i_11 
       (.I0(\grn[14]_i_13_n_0 ),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(ir[7]),
        .I5(Q[0]),
        .O(\grn[14]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[14]_i_12 
       (.I0(ir[0]),
        .I1(ir[8]),
        .O(\grn[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFFFFFBBBBBB8B)) 
    \grn[14]_i_13 
       (.I0(\grn[14]_i_14_n_0 ),
        .I1(ir[6]),
        .I2(\grn[15]_i_42_n_0 ),
        .I3(\grn[15]_i_52_n_0 ),
        .I4(ir[3]),
        .I5(Q[0]),
        .O(\grn[14]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hBCBCBCFC)) 
    \grn[14]_i_14 
       (.I0(ir[5]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[4]),
        .I4(ir[3]),
        .O(\grn[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFC88FFFFFCBBFF)) 
    \grn[14]_i_2 
       (.I0(\bdatw[14]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\badr[6]_INST_0_i_1_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(abus_0[9]),
        .O(\grn[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \grn[14]_i_3 
       (.I0(Q[2]),
        .I1(\grn[14]_i_6_n_0 ),
        .I2(ir[15]),
        .I3(\grn[14]_i_7_n_0 ),
        .O(\grn[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \grn[14]_i_4 
       (.I0(\iv_reg[14] ),
        .I1(bdatr[3]),
        .I2(\iv_reg[15] [11]),
        .I3(\stat_reg[2] ),
        .I4(tnsn_dsp_c[9]),
        .I5(\stat_reg[1] ),
        .O(\grn[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0800AAAA)) 
    \grn[14]_i_5 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(abus_0[9]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[15]_i_28_n_0 ),
        .O(\grn[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7F7F7F700F7F7)) 
    \grn[14]_i_6 
       (.I0(\grn[14]_i_9_n_0 ),
        .I1(\grn[14]_i_10_n_0 ),
        .I2(\grn[15]_i_21_n_0 ),
        .I3(\grn[14]_i_11_n_0 ),
        .I4(rst_n_fl_reg_0),
        .I5(Q[1]),
        .O(\grn[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF99D5)) 
    \grn[14]_i_7 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[11]),
        .I3(ir[12]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\grn[14]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \grn[14]_i_9 
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(Q[0]),
        .O(\grn[14]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \grn[15]_i_1 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn_reg[0]_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .I4(\grn[15]_i_7_n_0 ),
        .O(E[1]));
  LUT6 #(
    .INIT(64'h0305000000000000)) 
    \grn[15]_i_11 
       (.I0(\badr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[14]_i_3_n_0 ),
        .I5(\grn[15]_i_30_n_0 ),
        .O(\grn[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h45FF4500CFFFCFFF)) 
    \grn[15]_i_12 
       (.I0(\grn[15]_i_31_n_0 ),
        .I1(\grn[15]_i_32_n_0 ),
        .I2(ir[10]),
        .I3(ir[11]),
        .I4(\grn[15]_i_33_n_0 ),
        .I5(ir[4]),
        .O(\grn[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAA08080808080808)) 
    \grn[15]_i_13 
       (.I0(\grn_reg[0] ),
        .I1(ir[10]),
        .I2(\grn[15]_i_34_n_0 ),
        .I3(ir[4]),
        .I4(\grn[15]_i_35_n_0 ),
        .I5(brdy),
        .O(\grn[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hD575D555FFFFFFFF)) 
    \grn[15]_i_14 
       (.I0(\eir_fl_reg[1]_0 ),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(ir[14]),
        .I4(ir[11]),
        .I5(ir[15]),
        .O(\grn[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h88808080AA80A280)) 
    \grn[15]_i_15 
       (.I0(\bcmd[2]_INST_0_i_1_n_0 ),
        .I1(ir[11]),
        .I2(\grn[15]_i_36_n_0 ),
        .I3(ir[5]),
        .I4(\grn[15]_i_31_n_0 ),
        .I5(\grn[15]_i_33_n_0 ),
        .O(\grn[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h8000500000005000)) 
    \grn[15]_i_16 
       (.I0(ir[10]),
        .I1(\bdatw[15]_INST_0_i_58_n_0 ),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[6]),
        .I5(ir[7]),
        .O(\grn[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \grn[15]_i_18 
       (.I0(ir[5]),
        .I1(brdy),
        .O(\grn[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EECECECE)) 
    \grn[15]_i_19 
       (.I0(\grn[15]_i_37_n_0 ),
        .I1(ir[15]),
        .I2(Q[0]),
        .I3(brdy),
        .I4(ir[11]),
        .I5(\grn[15]_i_38_n_0 ),
        .O(\stat_reg[0]_4 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \grn[15]_i_1__0 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\grn_reg[0]_0 ),
        .I4(\grn[15]_i_7_n_0 ),
        .O(\stat_reg[2]_4 [1]));
  LUT5 #(
    .INIT(32'h04000000)) 
    \grn[15]_i_1__1 
       (.I0(\grn[15]_i_4_n_0 ),
        .I1(\grn[15]_i_3_n_0 ),
        .I2(\grn_reg[0]_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .I4(\grn[15]_i_7_n_0 ),
        .O(\sr_reg[1] [1]));
  LUT5 #(
    .INIT(32'h00040000)) 
    \grn[15]_i_1__2 
       (.I0(\grn[15]_i_4_n_0 ),
        .I1(\grn[15]_i_3_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\grn_reg[0]_0 ),
        .I4(\grn[15]_i_7_n_0 ),
        .O(\stat_reg[2]_5 [1]));
  LUT5 #(
    .INIT(32'h00040000)) 
    \grn[15]_i_1__3 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\grn_reg[0]_0 ),
        .I4(\grn[15]_i_7_n_0 ),
        .O(\stat_reg[2]_7 [1]));
  LUT5 #(
    .INIT(32'h04000000)) 
    \grn[15]_i_1__4 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn_reg[0]_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .I4(\grn[15]_i_7_n_0 ),
        .O(\sr_reg[1]_0 [1]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \grn[15]_i_1__5 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn_reg[0]_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .I4(\grn[15]_i_7_n_0 ),
        .O(\sr_reg[1]_1 [1]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \grn[15]_i_1__6 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\grn_reg[0]_0 ),
        .I4(\grn[15]_i_7_n_0 ),
        .O(\stat_reg[2]_8 [1]));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \grn[15]_i_2 
       (.I0(\grn[15]_i_8_n_0 ),
        .I1(\stat_reg[2] ),
        .I2(\iv_reg[15] [12]),
        .I3(\iv_reg[15]_0 ),
        .I4(\grn[15]_i_11_n_0 ),
        .O(\read_cyc_reg[1] [15]));
  LUT6 #(
    .INIT(64'hF0C0FECEFECEFECE)) 
    \grn[15]_i_20 
       (.I0(\grn[15]_i_39_n_0 ),
        .I1(ir[15]),
        .I2(Q[0]),
        .I3(\grn[15]_i_40_n_0 ),
        .I4(\grn[15]_i_41_n_0 ),
        .I5(ir[8]),
        .O(\grn[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \grn[15]_i_21 
       (.I0(\grn[15]_i_42_n_0 ),
        .I1(ir[2]),
        .I2(ir[3]),
        .I3(ir[14]),
        .I4(ir[12]),
        .I5(ir[13]),
        .O(\grn[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \grn[15]_i_22 
       (.I0(\grn[15]_i_43_n_0 ),
        .I1(ir[15]),
        .I2(Q[0]),
        .I3(ir[6]),
        .I4(ir[8]),
        .I5(\grn[15]_i_44_n_0 ),
        .O(\grn[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \grn[15]_i_23 
       (.I0(ir[15]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_18_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_13_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_17_n_0 ),
        .I4(\grn[15]_i_45_n_0 ),
        .I5(Q[0]),
        .O(\grn[15]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    \grn[15]_i_24 
       (.I0(ir[14]),
        .I1(Q[0]),
        .I2(ir[15]),
        .I3(ir[13]),
        .I4(ir[12]),
        .O(\grn[15]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \grn[15]_i_25 
       (.I0(Q[0]),
        .I1(ir[11]),
        .I2(ir[13]),
        .I3(ir[15]),
        .O(\grn[15]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \grn[15]_i_26 
       (.I0(\grn[15]_i_46_n_0 ),
        .I1(\grn[15]_i_47_n_0 ),
        .I2(ir[15]),
        .I3(ir[13]),
        .O(\grn[15]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[15]_i_27 
       (.I0(\grn[14]_i_3_n_0 ),
        .I1(\grn[15]_i_30_n_0 ),
        .O(\grn[15]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \grn[15]_i_28 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\grn[15]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h0B0B000B)) 
    \grn[15]_i_3 
       (.I0(\grn[15]_i_12_n_0 ),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .I2(\grn[15]_i_13_n_0 ),
        .I3(ir[9]),
        .I4(\grn[15]_i_14_n_0 ),
        .O(\grn[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AB00FF00ABAB)) 
    \grn[15]_i_30 
       (.I0(\grn[15]_i_48_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_5_n_0 ),
        .I2(\grn[15]_i_49_n_0 ),
        .I3(\grn[15]_i_50_n_0 ),
        .I4(ir[15]),
        .I5(Q[1]),
        .O(\grn[15]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h001F)) 
    \grn[15]_i_31 
       (.I0(ir[8]),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(ir[10]),
        .O(\grn[15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFECE00000000)) 
    \grn[15]_i_32 
       (.I0(\grn[15]_i_51_n_0 ),
        .I1(\grn[15]_i_52_n_0 ),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(\grn[15]_i_53_n_0 ),
        .I5(\grn[15]_i_54_n_0 ),
        .O(\grn[15]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'hFF6EFFFF)) 
    \grn[15]_i_33 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(ir[9]),
        .I4(ir[10]),
        .O(\grn[15]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \grn[15]_i_34 
       (.I0(\bdatw[15]_INST_0_i_71_n_0 ),
        .I1(\grn[15]_i_52_n_0 ),
        .I2(ir[5]),
        .I3(brdy),
        .I4(ir[1]),
        .I5(ir[3]),
        .O(\grn[15]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \grn[15]_i_35 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[6]),
        .I3(ir[8]),
        .O(\grn[15]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h8888888A88888888)) 
    \grn[15]_i_36 
       (.I0(ir[10]),
        .I1(\grn[15]_i_55_n_0 ),
        .I2(\bdatw[15]_INST_0_i_59_n_0 ),
        .I3(ir[7]),
        .I4(\grn[15]_i_52_n_0 ),
        .I5(\grn[15]_i_56_n_0 ),
        .O(\grn[15]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444454444)) 
    \grn[15]_i_37 
       (.I0(\bdatw[15]_INST_0_i_46_n_0 ),
        .I1(\grn[15]_i_57_n_0 ),
        .I2(\grn[15]_i_58_n_0 ),
        .I3(ir[7]),
        .I4(ir[10]),
        .I5(Q[0]),
        .O(\grn[15]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h5155111115115111)) 
    \grn[15]_i_38 
       (.I0(ctl_fetch_fl_reg_1),
        .I1(\eir_fl_reg[1]_0 ),
        .I2(ir[13]),
        .I3(ir[11]),
        .I4(ir[14]),
        .I5(ir[12]),
        .O(\grn[15]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA8A808A8A)) 
    \grn[15]_i_39 
       (.I0(ctl_fetch_inferred_i_7_n_0),
        .I1(\grn[15]_i_59_n_0 ),
        .I2(ir[11]),
        .I3(\grn[15]_i_33_n_0 ),
        .I4(ir[3]),
        .I5(\bdatw[15]_INST_0_i_46_n_0 ),
        .O(\grn[15]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h5151515100515151)) 
    \grn[15]_i_4 
       (.I0(\grn[15]_i_15_n_0 ),
        .I1(ir[10]),
        .I2(\grn[15]_i_14_n_0 ),
        .I3(\grn[15]_i_16_n_0 ),
        .I4(\grn_reg[0] ),
        .I5(\grn[15]_i_18_n_0 ),
        .O(\grn[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00F7F7F7F7F7F7F7)) 
    \grn[15]_i_40 
       (.I0(ir[3]),
        .I1(rst_n_fl_reg_0),
        .I2(\grn[15]_i_60_n_0 ),
        .I3(brdy),
        .I4(\bdatw[10]_INST_0_i_18_n_0 ),
        .I5(\badr[15]_INST_0_i_39_n_0 ),
        .O(\grn[15]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h0AAAA2AA)) 
    \grn[15]_i_41 
       (.I0(ir[15]),
        .I1(ir[11]),
        .I2(ir[14]),
        .I3(ir[13]),
        .I4(ir[12]),
        .O(\grn[15]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \grn[15]_i_42 
       (.I0(ir[4]),
        .I1(ir[5]),
        .O(\grn[15]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \grn[15]_i_43 
       (.I0(ir[7]),
        .I1(ir[9]),
        .O(\grn[15]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF3B)) 
    \grn[15]_i_44 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(brdy),
        .I3(ir[11]),
        .I4(ir[10]),
        .I5(Q[2]),
        .O(\grn[15]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \grn[15]_i_45 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(ir[14]),
        .O(\grn[15]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8BBBBBBBB)) 
    \grn[15]_i_46 
       (.I0(\grn[15]_i_61_n_0 ),
        .I1(ir[8]),
        .I2(Q[0]),
        .I3(ir[11]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\grn[15]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hBCFC8CFCFC00CCFC)) 
    \grn[15]_i_47 
       (.I0(\grn[15]_i_62_n_0 ),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\grn[15]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h8088808080808080)) 
    \grn[15]_i_48 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_8_0 ),
        .I1(rst_n_fl_reg_0),
        .I2(\grn[15]_i_63_n_0 ),
        .I3(ir[8]),
        .I4(\grn[15]_i_64_n_0 ),
        .I5(ir[6]),
        .O(\grn[15]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hE0FF0000E0FFE0FF)) 
    \grn[15]_i_49 
       (.I0(ir[6]),
        .I1(ir[10]),
        .I2(ir[7]),
        .I3(\grn[15]_i_65_n_0 ),
        .I4(\grn[15]_i_66_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_4_n_0 ),
        .O(\grn[15]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001FA7)) 
    \grn[15]_i_50 
       (.I0(ir[12]),
        .I1(ir[11]),
        .I2(ir[13]),
        .I3(ir[14]),
        .I4(Q[0]),
        .I5(\iv_reg[0]_0 ),
        .O(\grn[15]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFEFF)) 
    \grn[15]_i_51 
       (.I0(ir[3]),
        .I1(ir[5]),
        .I2(ir[4]),
        .I3(ir[1]),
        .I4(ir[6]),
        .O(\grn[15]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \grn[15]_i_52 
       (.I0(ir[8]),
        .I1(ir[9]),
        .O(\grn[15]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \grn[15]_i_53 
       (.I0(ir[1]),
        .I1(ir[6]),
        .O(\grn[15]_i_53_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \grn[15]_i_54 
       (.I0(ir[4]),
        .I1(ir[9]),
        .I2(ir[7]),
        .O(\grn[15]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h4000000022222222)) 
    \grn[15]_i_55 
       (.I0(ir[5]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[2]),
        .I4(ir[6]),
        .I5(ir[7]),
        .O(\grn[15]_i_55_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \grn[15]_i_56 
       (.I0(ir[6]),
        .I1(ir[4]),
        .I2(ir[5]),
        .O(\grn[15]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4F004400)) 
    \grn[15]_i_57 
       (.I0(ir[10]),
        .I1(\grn[15]_i_67_n_0 ),
        .I2(Q[0]),
        .I3(ir[11]),
        .I4(\grn[15]_i_68_n_0 ),
        .I5(\grn[15]_i_69_n_0 ),
        .O(\grn[15]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'hD0FAF0FA)) 
    \grn[15]_i_58 
       (.I0(ir[8]),
        .I1(ir[3]),
        .I2(ir[9]),
        .I3(ir[11]),
        .I4(\grn[15]_i_56_n_0 ),
        .O(\grn[15]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000E0FFE0FF)) 
    \grn[15]_i_59 
       (.I0(ir[8]),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(ir[3]),
        .I4(\grn[15]_i_70_n_0 ),
        .I5(ir[10]),
        .O(\grn[15]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hFEC2FEFEC2C2C2C2)) 
    \grn[15]_i_6 
       (.I0(\grn[15]_i_20_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\grn[15]_i_21_n_0 ),
        .I4(\grn[15]_i_22_n_0 ),
        .I5(\grn[15]_i_23_n_0 ),
        .O(\grn[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h04CC44CC55FF55FF)) 
    \grn[15]_i_60 
       (.I0(\grn[15]_i_35_n_0 ),
        .I1(ctl_fetch_inferred_i_9_n_0),
        .I2(ir[0]),
        .I3(brdy),
        .I4(\grn[15]_i_71_n_0 ),
        .I5(ctl_fetch_inferred_i_18_n_0),
        .O(\grn[15]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h5FFDFFFDD7FDF7FD)) 
    \grn[15]_i_61 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(Q[0]),
        .I3(ir[9]),
        .I4(brdy),
        .I5(ir[5]),
        .O(\grn[15]_i_61_n_0 ));
  LUT3 #(
    .INIT(8'hC7)) 
    \grn[15]_i_62 
       (.I0(ir[3]),
        .I1(ir[5]),
        .I2(ir[4]),
        .O(\grn[15]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h0000100010000010)) 
    \grn[15]_i_63 
       (.I0(\grn[15]_i_52_n_0 ),
        .I1(ir[6]),
        .I2(ir[10]),
        .I3(ir[7]),
        .I4(ir[5]),
        .I5(ir[4]),
        .O(\grn[15]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[15]_i_64 
       (.I0(ir[9]),
        .I1(ir[10]),
        .O(\grn[15]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \grn[15]_i_65 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[11]),
        .I3(ir[12]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\grn[15]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \grn[15]_i_66 
       (.I0(Q[0]),
        .I1(ir[10]),
        .I2(ir[1]),
        .I3(ir[14]),
        .I4(ir[13]),
        .I5(\grn[15]_i_72_n_0 ),
        .O(\grn[15]_i_66_n_0 ));
  LUT5 #(
    .INIT(32'h40433303)) 
    \grn[15]_i_67 
       (.I0(ir[6]),
        .I1(Q[0]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(ir[9]),
        .O(\grn[15]_i_67_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \grn[15]_i_68 
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(ir[6]),
        .O(\grn[15]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h2000200000002000)) 
    \grn[15]_i_69 
       (.I0(\grn[15]_i_73_n_0 ),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(ir[8]),
        .I3(ir[10]),
        .I4(ir[11]),
        .I5(ir[9]),
        .O(\grn[15]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h0004444444044444)) 
    \grn[15]_i_7 
       (.I0(\iv_reg[0]_0 ),
        .I1(\grn[15]_i_24_n_0 ),
        .I2(\grn[15]_i_25_n_0 ),
        .I3(ir[12]),
        .I4(ir[14]),
        .I5(\grn[15]_i_26_n_0 ),
        .O(\grn[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF5FDD)) 
    \grn[15]_i_70 
       (.I0(ctl_fetch_inferred_i_8_n_0),
        .I1(ctl_fetch_ext_fl_i_5_n_0),
        .I2(ir[0]),
        .I3(ir[6]),
        .I4(ir[5]),
        .I5(\grn[15]_i_74_n_0 ),
        .O(\grn[15]_i_70_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \grn[15]_i_71 
       (.I0(ir[5]),
        .I1(ir[6]),
        .O(\grn[15]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \grn[15]_i_72 
       (.I0(ir[11]),
        .I1(ir[12]),
        .O(\grn[15]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h33333B3BF3333B3B)) 
    \grn[15]_i_73 
       (.I0(ir[11]),
        .I1(ir[9]),
        .I2(ir[5]),
        .I3(ir[3]),
        .I4(Q[0]),
        .I5(ir[4]),
        .O(\grn[15]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF00800000)) 
    \grn[15]_i_74 
       (.I0(ir[8]),
        .I1(ir[0]),
        .I2(\grn[15]_i_56_n_0 ),
        .I3(ir[7]),
        .I4(ir[9]),
        .I5(ir[3]),
        .O(\grn[15]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h0020AAAAAAAAAAAA)) 
    \grn[15]_i_8 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_1_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I4(\grn[15]_i_28_n_0 ),
        .I5(\tnsn_dsp_b[8]_INST_0_i_1_0 ),
        .O(\grn[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \grn[15]_i_9 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(tnsn_dsp_b_8_sn_1),
        .I3(\grn_reg[15]_i_29_n_0 ),
        .I4(\grn[15]_i_30_n_0 ),
        .O(\stat_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBAAA)) 
    \grn[1]_i_1 
       (.I0(\grn[1]_i_2_n_0 ),
        .I1(read_cyc[1]),
        .I2(read_cyc[2]),
        .I3(bdatr[0]),
        .I4(\iv_reg[1] ),
        .I5(\grn[1]_i_10_0 ),
        .O(\read_cyc_reg[1] [1]));
  LUT6 #(
    .INIT(64'h40A05060000010A0)) 
    \grn[1]_i_10 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\grn[15]_i_30_n_0 ),
        .I3(\grn[14]_i_3_n_0 ),
        .I4(\bdatw[9]_INST_0_i_2_n_0 ),
        .I5(abus_0[0]),
        .O(\grn[1]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[1]_i_11 
       (.I0(\sr[4]_i_16_n_0 ),
        .I1(\sr[4]_i_17_n_0 ),
        .O(\grn[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF77747774)) 
    \grn[1]_i_12 
       (.I0(\grn[4]_i_16_n_0 ),
        .I1(\grn[4]_i_15_n_0 ),
        .I2(\grn[1]_i_19_n_0 ),
        .I3(\grn[1]_i_20_n_0 ),
        .I4(\grn[5]_i_14_n_0 ),
        .I5(\grn[6]_i_14_n_0 ),
        .O(\grn[1]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \grn[1]_i_13 
       (.I0(abus_0[2]),
        .I1(\grn[4]_i_15_n_0 ),
        .I2(\sr[6]_i_14_n_0 ),
        .I3(\grn[6]_i_14_n_0 ),
        .I4(\grn[1]_i_21_n_0 ),
        .O(\grn[1]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \grn[1]_i_14 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\grn[15]_i_30_n_0 ),
        .O(\grn[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0EAEA)) 
    \grn[1]_i_15 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(\grn[6]_i_15_n_0 ),
        .I2(\grn[6]_i_14_n_0 ),
        .I3(\grn[7]_i_14_n_0 ),
        .I4(\grn[4]_i_15_n_0 ),
        .I5(\sr[6]_i_9_n_0 ),
        .O(\grn[1]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \grn[1]_i_16 
       (.I0(\grn[6]_i_14_n_0 ),
        .I1(\grn[5]_i_16_n_0 ),
        .O(\grn[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h8BBB8BBB8BBB8B88)) 
    \grn[1]_i_17 
       (.I0(\grn[5]_i_15_n_0 ),
        .I1(\grn[6]_i_14_n_0 ),
        .I2(\grn[4]_i_16_n_0 ),
        .I3(\grn[4]_i_15_n_0 ),
        .I4(\grn[1]_i_20_n_0 ),
        .I5(\grn[1]_i_19_n_0 ),
        .O(\grn[1]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[1]_i_19 
       (.I0(abus_0[1]),
        .I1(bbus_0[0]),
        .O(\grn[1]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h0E0E0E00)) 
    \grn[1]_i_2 
       (.I0(\grn[1]_i_5_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(\grn[1]_i_6_n_0 ),
        .I3(tnsn_dsp_b_8_sn_1),
        .I4(\stat_reg[2]_1 ),
        .O(\grn[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[1]_i_20 
       (.I0(bbus_0[0]),
        .I1(\badr[4]_INST_0_i_1_n_0 ),
        .O(\grn[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h505FCFCF505FC0C0)) 
    \grn[1]_i_21 
       (.I0(\badr[2]_INST_0_i_1_n_0 ),
        .I1(abus_0[0]),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(\badr[4]_INST_0_i_1_n_0 ),
        .I4(bbus_0[0]),
        .I5(abus_0[1]),
        .O(\grn[1]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \grn[1]_i_4 
       (.I0(\grn[1]_i_9_n_0 ),
        .I1(\grn[1]_i_10_n_0 ),
        .O(\grn[1]_i_10_0 ));
  LUT6 #(
    .INIT(64'h3737373434343734)) 
    \grn[1]_i_5 
       (.I0(\grn[1]_i_11_n_0 ),
        .I1(\grn[3]_i_15_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\grn[1]_i_12_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(\grn[1]_i_13_n_0 ),
        .O(\grn[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEBAAAAAFEBAEEEE)) 
    \grn[1]_i_6 
       (.I0(\grn[1]_i_14_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\grn[1]_i_15_n_0 ),
        .I3(\grn[1]_i_16_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .I5(\grn[1]_i_17_n_0 ),
        .O(\grn[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \grn[1]_i_7 
       (.I0(\grn[14]_i_3_n_0 ),
        .I1(\grn[15]_i_30_n_0 ),
        .O(\stat_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h00820A82A082AA82)) 
    \grn[1]_i_9 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(abus_0[0]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I4(\badr[9]_INST_0_i_1_n_0 ),
        .I5(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(\grn[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \grn[2]_i_1 
       (.I0(\grn[2]_i_2_n_0 ),
        .I1(\iv_reg[2] ),
        .I2(tnsn_dsp_c[1]),
        .I3(\stat_reg[1] ),
        .I4(\iv_reg[2]_0 ),
        .I5(\grn[2]_i_5_n_0 ),
        .O(\read_cyc_reg[1] [2]));
  LUT6 #(
    .INIT(64'hFFC0B8FFFFF3B8FF)) 
    \grn[2]_i_10 
       (.I0(\badr[2]_INST_0_i_1_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(abus_0[5]),
        .O(\grn[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h484C484C0FF00400)) 
    \grn[2]_i_11 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\grn[4]_i_10_n_0 ),
        .I2(\badr[2]_INST_0_i_1_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[15]_i_27_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .O(\grn[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2EFF)) 
    \grn[2]_i_12 
       (.I0(\badr[6]_INST_0_i_1_n_0 ),
        .I1(bbus_0[0]),
        .I2(abus_0[2]),
        .I3(\grn[4]_i_15_n_0 ),
        .O(\grn[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h3F30AFAF3F30A0A0)) 
    \grn[2]_i_13 
       (.I0(\badr[2]_INST_0_i_1_n_0 ),
        .I1(abus_0[1]),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(\badr[5]_INST_0_i_1_n_0 ),
        .I4(bbus_0[0]),
        .I5(\badr[4]_INST_0_i_1_n_0 ),
        .O(\grn[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h30303F3FA0AFA0AF)) 
    \grn[2]_i_14 
       (.I0(abus_0[2]),
        .I1(\badr[6]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(\badr[5]_INST_0_i_1_n_0 ),
        .I4(\badr[4]_INST_0_i_1_n_0 ),
        .I5(bbus_0[0]),
        .O(\grn[2]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h40E000F0)) 
    \grn[2]_i_15 
       (.I0(bbus_0[0]),
        .I1(\badr[6]_INST_0_i_1_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(abus_0[2]),
        .I4(\grn[4]_i_15_n_0 ),
        .O(\grn[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0E000E0E0E000E00)) 
    \grn[2]_i_2 
       (.I0(\grn[2]_i_6_n_0 ),
        .I1(\grn[2]_i_7_n_0 ),
        .I2(\grn[6]_i_12_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\grn[2]_i_8_n_0 ),
        .I5(\grn[2]_i_9_n_0 ),
        .O(\grn[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \grn[2]_i_5 
       (.I0(\grn[2]_i_10_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[2]_i_11_n_0 ),
        .O(\grn[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000F05F5F3F3F)) 
    \grn[2]_i_6 
       (.I0(\grn[2]_i_12_n_0 ),
        .I1(\grn[2]_i_13_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\grn[6]_i_13_n_0 ),
        .I4(\grn[6]_i_14_n_0 ),
        .I5(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\grn[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0055110500001105)) 
    \grn[2]_i_7 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\grn[6]_i_13_n_0 ),
        .I2(\grn[6]_i_18_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I4(\grn[6]_i_14_n_0 ),
        .I5(\grn[2]_i_14_n_0 ),
        .O(\grn[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h88A8AAAA88A80000)) 
    \grn[2]_i_8 
       (.I0(\grn[6]_i_21_n_0 ),
        .I1(\grn[2]_i_15_n_0 ),
        .I2(\grn[6]_i_20_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I4(\grn[6]_i_14_n_0 ),
        .I5(\grn[2]_i_13_n_0 ),
        .O(\grn[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \grn[2]_i_9 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(abus_0[0]),
        .I3(\grn[3]_i_10_n_0 ),
        .O(\grn[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF08)) 
    \grn[3]_i_1 
       (.I0(O[2]),
        .I1(\stat_reg[2] ),
        .I2(\stat_reg[2]_0 ),
        .I3(\grn[3]_i_2_n_0 ),
        .I4(\grn[3]_i_3_n_0 ),
        .I5(\grn[3]_i_4_n_0 ),
        .O(\read_cyc_reg[1] [3]));
  LUT3 #(
    .INIT(8'h8F)) 
    \grn[3]_i_10 
       (.I0(\tnsn_dsp_b[8]_INST_0_i_1_n_0 ),
        .I1(abus_0[2]),
        .I2(\grn[3]_i_15_n_0 ),
        .O(\grn[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBFAABFAABFAAAAAA)) 
    \grn[3]_i_11 
       (.I0(\grn[6]_i_12_n_0 ),
        .I1(\grn[4]_i_21_n_0 ),
        .I2(\grn[3]_i_16_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\grn[6]_i_14_n_0 ),
        .I5(\grn[3]_i_17_n_0 ),
        .O(\grn[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCF5FC05FCF50C050)) 
    \grn[3]_i_12 
       (.I0(abus_0[1]),
        .I1(\badr[4]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(bbus_0[0]),
        .I4(\badr[6]_INST_0_i_1_n_0 ),
        .I5(\badr[5]_INST_0_i_1_n_0 ),
        .O(\grn[3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFF00BF00)) 
    \grn[3]_i_13 
       (.I0(bbus_0[0]),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(abus_0[2]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(\grn[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h303F303F5F5F5050)) 
    \grn[3]_i_14 
       (.I0(abus_0[2]),
        .I1(\bdatw[15]_INST_0_i_1_0 [6]),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(abus_0[0]),
        .I4(\badr[0]_INST_0_i_1_n_0 ),
        .I5(bbus_0[0]),
        .O(\grn[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \grn[3]_i_15 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(bbus_0[0]),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(\grn[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACC0F000FFF)) 
    \grn[3]_i_16 
       (.I0(abus_0[2]),
        .I1(\bdatw[15]_INST_0_i_1_0 [6]),
        .I2(\badr[5]_INST_0_i_1_n_0 ),
        .I3(bbus_0[0]),
        .I4(\badr[6]_INST_0_i_1_n_0 ),
        .I5(\grn[4]_i_15_n_0 ),
        .O(\grn[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFAFA0A0A03F303F3)) 
    \grn[3]_i_17 
       (.I0(\badr[0]_INST_0_i_1_n_0 ),
        .I1(abus_0[0]),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(abus_0[1]),
        .I4(\badr[2]_INST_0_i_1_n_0 ),
        .I5(bbus_0[0]),
        .O(\grn[3]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \grn[3]_i_2 
       (.I0(\stat_reg[1] ),
        .I1(tnsn_dsp_c[2]),
        .I2(\iv_reg[3] ),
        .I3(\iv_reg[15] [2]),
        .I4(\stat_reg[2] ),
        .O(\grn[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \grn[3]_i_3 
       (.I0(\grn[3]_i_6_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[3]_i_7_n_0 ),
        .O(\grn[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFAA08)) 
    \grn[3]_i_4 
       (.I0(\grn[3]_i_8_n_0 ),
        .I1(\grn[3]_i_9_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\grn[3]_i_10_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .I5(\grn[3]_i_11_n_0 ),
        .O(\grn[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFBACFFE8B988BDC)) 
    \grn[3]_i_6 
       (.I0(\grn[15]_i_30_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(abus_0[1]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(abus_0[6]),
        .I5(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\grn[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hC06000C0)) 
    \grn[3]_i_7 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\grn[4]_i_10_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(abus_0[1]),
        .O(\grn[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h11111F111F1F1F1F)) 
    \grn[3]_i_8 
       (.I0(\grn[3]_i_12_n_0 ),
        .I1(\grn[6]_i_14_n_0 ),
        .I2(\grn[3]_i_13_n_0 ),
        .I3(\grn[6]_i_17_n_0 ),
        .I4(\grn[3]_i_14_n_0 ),
        .I5(\grn[4]_i_17_n_0 ),
        .O(\grn[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \grn[3]_i_9 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(\badr[2]_INST_0_i_1_n_0 ),
        .O(\grn[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \grn[4]_i_1 
       (.I0(\grn[4]_i_2_n_0 ),
        .I1(\stat_reg[2]_0 ),
        .I2(\iv_reg[7] [0]),
        .I3(\grn[4]_i_4_n_0 ),
        .I4(\grn[4]_i_5_n_0 ),
        .O(\read_cyc_reg[1] [4]));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[4]_i_10 
       (.I0(\grn[15]_i_30_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .O(\grn[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFC0B8FFFFF3B8FF)) 
    \grn[4]_i_12 
       (.I0(\badr[4]_INST_0_i_1_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(abus_0[7]),
        .O(\grn[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h408F4FC0408440C0)) 
    \grn[4]_i_13 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\grn[4]_i_10_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\badr[4]_INST_0_i_1_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I5(\grn[15]_i_27_n_0 ),
        .O(\grn[4]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \grn[4]_i_14 
       (.I0(\badr[0]_INST_0_i_1_n_0 ),
        .I1(bbus_0[0]),
        .I2(\bdatw[15]_INST_0_i_1_0 [6]),
        .O(\grn[4]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \grn[4]_i_15 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(bbus_0[0]),
        .O(\grn[4]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \grn[4]_i_16 
       (.I0(abus_0[0]),
        .I1(\badr[2]_INST_0_i_1_n_0 ),
        .I2(bbus_0[0]),
        .O(\grn[4]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h4CCC)) 
    \grn[4]_i_17 
       (.I0(\grn[6]_i_14_n_0 ),
        .I1(\grn[6]_i_21_n_0 ),
        .I2(abus_0[2]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .O(\grn[4]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \grn[4]_i_18 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(bbus_0[0]),
        .I2(\badr[4]_INST_0_i_1_n_0 ),
        .O(\grn[4]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \grn[4]_i_19 
       (.I0(bbus_0[0]),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\badr[0]_INST_0_i_1_n_0 ),
        .O(\grn[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF8A)) 
    \grn[4]_i_2 
       (.I0(\grn[4]_i_6_n_0 ),
        .I1(\grn[4]_i_7_n_0 ),
        .I2(\grn[4]_i_8_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\grn[4]_i_9_n_0 ),
        .I5(\grn[6]_i_12_n_0 ),
        .O(\grn[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAF30A030AF3FA03F)) 
    \grn[4]_i_20 
       (.I0(abus_0[1]),
        .I1(\badr[4]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(bbus_0[0]),
        .I4(abus_0[0]),
        .I5(\badr[2]_INST_0_i_1_n_0 ),
        .O(\grn[4]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \grn[4]_i_21 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(\grn[6]_i_14_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\grn[4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0AFAF3F303F30)) 
    \grn[4]_i_22 
       (.I0(\bdatw[15]_INST_0_i_1_0 [6]),
        .I1(\badr[0]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(abus_0[2]),
        .I4(\badr[6]_INST_0_i_1_n_0 ),
        .I5(bbus_0[0]),
        .O(\grn[4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE00FEFEFEFF)) 
    \grn[4]_i_3 
       (.I0(tnsn_dsp_b_8_sn_1),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[15]_i_30_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(\grn[4]_i_10_n_0 ),
        .O(\stat_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \grn[4]_i_4 
       (.I0(\stat_reg[2] ),
        .I1(\iv_reg[15] [3]),
        .I2(tnsn_dsp_c[3]),
        .I3(\stat_reg[1] ),
        .I4(\iv_reg[4] ),
        .O(\grn[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \grn[4]_i_5 
       (.I0(\grn[4]_i_12_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[4]_i_13_n_0 ),
        .O(\grn[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAABA)) 
    \grn[4]_i_6 
       (.I0(\grn[3]_i_10_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(abus_0[1]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\grn[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000004700FFFF)) 
    \grn[4]_i_7 
       (.I0(\grn[4]_i_14_n_0 ),
        .I1(\grn[4]_i_15_n_0 ),
        .I2(\grn[4]_i_16_n_0 ),
        .I3(\grn[6]_i_17_n_0 ),
        .I4(\grn[4]_i_17_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\grn[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF74FF00FF74)) 
    \grn[4]_i_8 
       (.I0(abus_0[2]),
        .I1(bbus_0[0]),
        .I2(\badr[6]_INST_0_i_1_n_0 ),
        .I3(\grn[6]_i_14_n_0 ),
        .I4(\grn[4]_i_15_n_0 ),
        .I5(\grn[4]_i_18_n_0 ),
        .O(\grn[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00008D00FF008D00)) 
    \grn[4]_i_9 
       (.I0(\grn[6]_i_14_n_0 ),
        .I1(\grn[4]_i_19_n_0 ),
        .I2(\grn[4]_i_20_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\grn[4]_i_21_n_0 ),
        .I5(\grn[4]_i_22_n_0 ),
        .O(\grn[4]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \grn[5]_i_1 
       (.I0(\grn[5]_i_2_n_0 ),
        .O(\read_cyc_reg[1] [5]));
  LUT5 #(
    .INIT(32'h5D5DFF5D)) 
    \grn[5]_i_10 
       (.I0(\grn[6]_i_21_n_0 ),
        .I1(\grn[6]_i_17_n_0 ),
        .I2(\grn[0]_i_10_n_0 ),
        .I3(\grn[6]_i_19_n_0 ),
        .I4(\grn[5]_i_14_n_0 ),
        .O(\grn[5]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h04F7FFFF)) 
    \grn[5]_i_11 
       (.I0(\sr[6]_i_14_n_0 ),
        .I1(\grn[4]_i_15_n_0 ),
        .I2(\grn[6]_i_14_n_0 ),
        .I3(abus_0[2]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .O(\grn[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10101F10)) 
    \grn[5]_i_12 
       (.I0(\grn[0]_i_13_n_0 ),
        .I1(\grn[6]_i_14_n_0 ),
        .I2(\bdatw[11]_INST_0_i_2_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[5]_i_15_n_0 ),
        .I5(\grn[6]_i_12_n_0 ),
        .O(\grn[5]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h8088A088)) 
    \grn[5]_i_13 
       (.I0(\grn[6]_i_14_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\grn[5]_i_16_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\grn[5]_i_17_n_0 ),
        .O(\grn[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0AFAFC0CFC0CF)) 
    \grn[5]_i_14 
       (.I0(\badr[6]_INST_0_i_1_n_0 ),
        .I1(\badr[5]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(abus_0[2]),
        .I4(\bdatw[15]_INST_0_i_1_0 [6]),
        .I5(bbus_0[0]),
        .O(\grn[5]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h30305F50)) 
    \grn[5]_i_15 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(\badr[6]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(abus_0[2]),
        .I4(bbus_0[0]),
        .O(\grn[5]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hD1FF)) 
    \grn[5]_i_16 
       (.I0(abus_0[0]),
        .I1(bbus_0[0]),
        .I2(\badr[0]_INST_0_i_1_n_0 ),
        .I3(\grn[4]_i_15_n_0 ),
        .O(\grn[5]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \grn[5]_i_17 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(abus_0[2]),
        .I2(bbus_0[0]),
        .I3(\bdatw[15]_INST_0_i_1_0 [6]),
        .I4(\grn[4]_i_15_n_0 ),
        .O(\grn[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001101)) 
    \grn[5]_i_2 
       (.I0(\iv_reg[5] ),
        .I1(\iv_reg[5]_0 ),
        .I2(tnsn_dsp_c[4]),
        .I3(\stat_reg[1] ),
        .I4(\grn[5]_i_5_n_0 ),
        .I5(\grn[5]_i_6_n_0 ),
        .O(\grn[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \grn[5]_i_5 
       (.I0(\grn[5]_i_7_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[5]_i_8_n_0 ),
        .O(\grn[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF8A)) 
    \grn[5]_i_6 
       (.I0(\grn[5]_i_9_n_0 ),
        .I1(\grn[5]_i_10_n_0 ),
        .I2(\grn[5]_i_11_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\grn[5]_i_12_n_0 ),
        .I5(\grn[5]_i_13_n_0 ),
        .O(\grn[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFC0B8FFFFF3B8FF)) 
    \grn[5]_i_7 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\bdatw[13]_INST_0_i_2_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(abus_0[8]),
        .O(\grn[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h408F4FC0408440C0)) 
    \grn[5]_i_8 
       (.I0(\bdatw[13]_INST_0_i_2_n_0 ),
        .I1(\grn[4]_i_10_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\badr[5]_INST_0_i_1_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I5(\grn[15]_i_27_n_0 ),
        .O(\grn[5]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hAAAB)) 
    \grn[5]_i_9 
       (.I0(\grn[3]_i_10_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\badr[4]_INST_0_i_1_n_0 ),
        .O(\grn[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \grn[6]_i_1 
       (.I0(\grn[6]_i_2_n_0 ),
        .I1(\iv_reg[6] ),
        .I2(\stat_reg[1] ),
        .I3(tnsn_dsp_c[5]),
        .I4(\iv_reg[6]_0 ),
        .I5(\grn[6]_i_5_n_0 ),
        .O(\read_cyc_reg[1] [6]));
  LUT6 #(
    .INIT(64'hCC0CC808C000C808)) 
    \grn[6]_i_10 
       (.I0(\grn[6]_i_20_n_0 ),
        .I1(\grn[6]_i_21_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\grn[6]_i_22_n_0 ),
        .I4(\grn[6]_i_14_n_0 ),
        .I5(\grn[6]_i_23_n_0 ),
        .O(\grn[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hAAAB)) 
    \grn[6]_i_11 
       (.I0(\grn[3]_i_10_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\badr[5]_INST_0_i_1_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\grn[6]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h3FEE3FFF)) 
    \grn[6]_i_12 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\grn[14]_i_3_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(tnsn_dsp_b_8_sn_1),
        .O(\grn[6]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h3F3FAFA0)) 
    \grn[6]_i_13 
       (.I0(\badr[2]_INST_0_i_1_n_0 ),
        .I1(abus_0[0]),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(\badr[0]_INST_0_i_1_n_0 ),
        .I4(bbus_0[0]),
        .O(\grn[6]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h6566)) 
    \grn[6]_i_14 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(bbus_0[0]),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(\grn[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0AFAFCFC0CFC0)) 
    \grn[6]_i_15 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(\badr[6]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(\badr[4]_INST_0_i_1_n_0 ),
        .I4(abus_0[1]),
        .I5(bbus_0[0]),
        .O(\grn[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000510155555555)) 
    \grn[6]_i_16 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(\badr[6]_INST_0_i_1_n_0 ),
        .I2(bbus_0[0]),
        .I3(abus_0[2]),
        .I4(\grn[6]_i_24_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\grn[6]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[6]_i_17 
       (.I0(\grn[6]_i_14_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .O(\grn[6]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h30303F3FAFA0AFA0)) 
    \grn[6]_i_18 
       (.I0(\badr[2]_INST_0_i_1_n_0 ),
        .I1(abus_0[0]),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(\badr[0]_INST_0_i_1_n_0 ),
        .I4(\bdatw[15]_INST_0_i_1_0 [6]),
        .I5(bbus_0[0]),
        .O(\grn[6]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \grn[6]_i_19 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(\grn[6]_i_14_n_0 ),
        .O(\grn[6]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \grn[6]_i_2 
       (.I0(\grn[6]_i_6_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[6]_i_7_n_0 ),
        .O(\grn[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5F50C0C05F50CFCF)) 
    \grn[6]_i_20 
       (.I0(abus_0[2]),
        .I1(\badr[6]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(\badr[0]_INST_0_i_1_n_0 ),
        .I4(bbus_0[0]),
        .I5(\bdatw[15]_INST_0_i_1_0 [6]),
        .O(\grn[6]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \grn[6]_i_21 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(bbus_0[0]),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\grn[6]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h0F4F0F0B)) 
    \grn[6]_i_22 
       (.I0(\grn[6]_i_14_n_0 ),
        .I1(\grn[4]_i_15_n_0 ),
        .I2(abus_0[2]),
        .I3(bbus_0[0]),
        .I4(\badr[6]_INST_0_i_1_n_0 ),
        .O(\grn[6]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFC0C0505F505F)) 
    \grn[6]_i_23 
       (.I0(abus_0[0]),
        .I1(\badr[2]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(abus_0[1]),
        .I4(\badr[4]_INST_0_i_1_n_0 ),
        .I5(bbus_0[0]),
        .O(\grn[6]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h5DFB)) 
    \grn[6]_i_24 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(bbus_0[0]),
        .I2(\bdatw[11]_INST_0_i_2_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(\grn[6]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E0EEE0E0)) 
    \grn[6]_i_5 
       (.I0(\grn[6]_i_8_n_0 ),
        .I1(\grn[6]_i_9_n_0 ),
        .I2(\bdatw[11]_INST_0_i_2_n_0 ),
        .I3(\grn[6]_i_10_n_0 ),
        .I4(\grn[6]_i_11_n_0 ),
        .I5(\grn[6]_i_12_n_0 ),
        .O(\grn[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFC0B8FFFFF3B8FF)) 
    \grn[6]_i_6 
       (.I0(\badr[6]_INST_0_i_1_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\bdatw[14]_INST_0_i_2_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(abus_0[9]),
        .O(\grn[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3C000B0A3F00A0A0)) 
    \grn[6]_i_7 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(\badr[6]_INST_0_i_1_n_0 ),
        .I3(\grn[4]_i_10_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\grn[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h202A202A303F0000)) 
    \grn[6]_i_8 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(\grn[6]_i_13_n_0 ),
        .I2(\grn[6]_i_14_n_0 ),
        .I3(\grn[6]_i_15_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\grn[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEFFAEAE)) 
    \grn[6]_i_9 
       (.I0(\grn[6]_i_16_n_0 ),
        .I1(\grn[6]_i_17_n_0 ),
        .I2(\grn[6]_i_18_n_0 ),
        .I3(\grn[6]_i_15_n_0 ),
        .I4(\grn[6]_i_19_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\grn[6]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \grn[7]_i_1 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn_reg[0]_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .O(E[0]));
  LUT5 #(
    .INIT(32'h0000DD0D)) 
    \grn[7]_i_10 
       (.I0(\grn[6]_i_17_n_0 ),
        .I1(\grn[2]_i_13_n_0 ),
        .I2(\grn[6]_i_19_n_0 ),
        .I3(\grn[3]_i_14_n_0 ),
        .I4(\grn[7]_i_16_n_0 ),
        .O(\grn[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000080900000B090)) 
    \grn[7]_i_12 
       (.I0(abus_0[2]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\grn[14]_i_3_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\grn[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h8A222000)) 
    \grn[7]_i_13 
       (.I0(\grn[4]_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(abus_0[2]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .O(\grn[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \grn[7]_i_14 
       (.I0(\badr[0]_INST_0_i_1_n_0 ),
        .I1(bbus_0[0]),
        .I2(abus_0[0]),
        .O(\grn[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \grn[7]_i_15 
       (.I0(abus_0[1]),
        .I1(\badr[2]_INST_0_i_1_n_0 ),
        .I2(bbus_0[0]),
        .O(\grn[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \grn[7]_i_16 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(abus_0[2]),
        .I2(\grn[6]_i_21_n_0 ),
        .O(\grn[7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \grn[7]_i_1__0 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\grn_reg[0]_0 ),
        .O(\stat_reg[2]_4 [0]));
  LUT4 #(
    .INIT(16'h0400)) 
    \grn[7]_i_1__1 
       (.I0(\grn[15]_i_4_n_0 ),
        .I1(\grn[15]_i_3_n_0 ),
        .I2(\grn_reg[0]_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .O(\sr_reg[1] [0]));
  LUT4 #(
    .INIT(16'h0004)) 
    \grn[7]_i_1__2 
       (.I0(\grn[15]_i_4_n_0 ),
        .I1(\grn[15]_i_3_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\grn_reg[0]_0 ),
        .O(\stat_reg[2]_5 [0]));
  LUT4 #(
    .INIT(16'h0004)) 
    \grn[7]_i_1__3 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\grn_reg[0]_0 ),
        .O(\stat_reg[2]_7 [0]));
  LUT4 #(
    .INIT(16'h0400)) 
    \grn[7]_i_1__4 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn_reg[0]_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .O(\sr_reg[1]_0 [0]));
  LUT4 #(
    .INIT(16'h0800)) 
    \grn[7]_i_1__5 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn_reg[0]_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .O(\sr_reg[1]_1 [0]));
  LUT4 #(
    .INIT(16'h0008)) 
    \grn[7]_i_1__6 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\grn_reg[0]_0 ),
        .O(\stat_reg[2]_8 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    \grn[7]_i_2 
       (.I0(\grn[7]_i_3_n_0 ),
        .O(\read_cyc_reg[1] [7]));
  LUT5 #(
    .INIT(32'h008A0000)) 
    \grn[7]_i_3 
       (.I0(\grn[7]_i_4_n_0 ),
        .I1(\stat_reg[2]_0 ),
        .I2(\iv_reg[7] [1]),
        .I3(\grn[7]_i_5_n_0 ),
        .I4(\grn[7]_i_6_n_0 ),
        .O(\grn[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFFEEEF)) 
    \grn[7]_i_4 
       (.I0(\grn[7]_i_7_n_0 ),
        .I1(\grn[7]_i_8_n_0 ),
        .I2(\grn[7]_i_9_n_0 ),
        .I3(\grn[3]_i_10_n_0 ),
        .I4(\grn[7]_i_10_n_0 ),
        .I5(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\grn[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \grn[7]_i_5 
       (.I0(\stat_reg[2] ),
        .I1(\iv_reg[15] [4]),
        .I2(\grn[7]_i_3_0 ),
        .I3(tnsn_dsp_c[6]),
        .I4(\stat_reg[1] ),
        .O(\grn[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055151111)) 
    \grn[7]_i_6 
       (.I0(\grn[7]_i_12_n_0 ),
        .I1(\grn[15]_i_27_n_0 ),
        .I2(\tnsn_dsp_b[8]_INST_0_i_1_n_0 ),
        .I3(\badr[15]_INST_0_i_1_n_0 ),
        .I4(\grn[15]_i_28_n_0 ),
        .I5(\grn[7]_i_13_n_0 ),
        .O(\grn[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00D0)) 
    \grn[7]_i_7 
       (.I0(abus_0[2]),
        .I1(\sr[6]_i_6_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\grn[6]_i_12_n_0 ),
        .O(\grn[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2E002E000000FF00)) 
    \grn[7]_i_8 
       (.I0(\grn[7]_i_14_n_0 ),
        .I1(\grn[4]_i_15_n_0 ),
        .I2(\grn[7]_i_15_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\grn[2]_i_14_n_0 ),
        .I5(\grn[6]_i_14_n_0 ),
        .O(\grn[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \grn[7]_i_9 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\badr[6]_INST_0_i_1_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .O(\grn[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \grn[8]_i_1 
       (.I0(\grn[8]_i_2_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\stat_reg[2] ),
        .I3(\iv_reg[15] [5]),
        .I4(\iv_reg[8] ),
        .I5(\grn[8]_i_4_n_0 ),
        .O(\read_cyc_reg[1] [8]));
  LUT6 #(
    .INIT(64'hFFFF5F0AEEEEFFFF)) 
    \grn[8]_i_2 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\badr[0]_INST_0_i_1_n_0 ),
        .I2(bbus_0[0]),
        .I3(\badr[8]_INST_0_i_1_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(\grn[15]_i_30_n_0 ),
        .O(\grn[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0020AAAA)) 
    \grn[8]_i_4 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\badr[8]_INST_0_i_1_n_0 ),
        .I4(\grn[15]_i_28_n_0 ),
        .O(\grn[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \grn[9]_i_1 
       (.I0(\grn[9]_i_2_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\stat_reg[2] ),
        .I3(\iv_reg[15] [6]),
        .I4(\iv_reg[9] ),
        .I5(\grn[9]_i_4_n_0 ),
        .O(\read_cyc_reg[1] [9]));
  LUT6 #(
    .INIT(64'hFFFFCACAF0FFFFFF)) 
    \grn[9]_i_2 
       (.I0(\badr[9]_INST_0_i_1_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(abus_0[0]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(\grn[15]_i_30_n_0 ),
        .O(\grn[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0020AAAA)) 
    \grn[9]_i_4 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\badr[9]_INST_0_i_1_n_0 ),
        .I4(\grn[15]_i_28_n_0 ),
        .O(\grn[9]_i_4_n_0 ));
  MUXF7 \grn_reg[15]_i_29 
       (.I0(\grn[14]_i_6_n_0 ),
        .I1(\grn[14]_i_7_n_0 ),
        .O(\grn_reg[15]_i_29_n_0 ),
        .S(ir[15]));
  FDRE \ir_fl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[0]),
        .Q(ir_fl[0]),
        .R(SR));
  FDRE \ir_fl_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[10]),
        .Q(ir_fl[10]),
        .R(SR));
  FDRE \ir_fl_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[11]),
        .Q(ir_fl[11]),
        .R(SR));
  FDRE \ir_fl_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[12]),
        .Q(ir_fl[12]),
        .R(SR));
  FDRE \ir_fl_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[13]),
        .Q(ir_fl[13]),
        .R(SR));
  FDRE \ir_fl_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[14]),
        .Q(ir_fl[14]),
        .R(SR));
  FDRE \ir_fl_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[15]),
        .Q(ir_fl[15]),
        .R(SR));
  FDRE \ir_fl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[1]),
        .Q(ir_fl[1]),
        .R(SR));
  FDRE \ir_fl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[2]),
        .Q(ir_fl[2]),
        .R(SR));
  FDRE \ir_fl_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[3]),
        .Q(ir_fl[3]),
        .R(SR));
  FDRE \ir_fl_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[4]),
        .Q(ir_fl[4]),
        .R(SR));
  FDRE \ir_fl_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[5]),
        .Q(ir_fl[5]),
        .R(SR));
  FDRE \ir_fl_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[6]),
        .Q(ir_fl[6]),
        .R(SR));
  FDRE \ir_fl_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[7]),
        .Q(ir_fl[7]),
        .R(SR));
  FDRE \ir_fl_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[8]),
        .Q(ir_fl[8]),
        .R(SR));
  FDRE \ir_fl_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[9]),
        .Q(ir_fl[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h08A80808)) 
    ir_inferred_i_1
       (.I0(rst_n_fl),
        .I1(ir_fl[15]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[15]),
        .O(ir[15]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    ir_inferred_i_10
       (.I0(rst_n_fl),
        .I1(ir_fl[6]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[6]),
        .O(ir[6]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    ir_inferred_i_11
       (.I0(rst_n_fl),
        .I1(ir_fl[5]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[5]),
        .O(ir[5]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    ir_inferred_i_12
       (.I0(rst_n_fl),
        .I1(ir_fl[4]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[4]),
        .O(ir[4]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    ir_inferred_i_13
       (.I0(rst_n_fl),
        .I1(ir_fl[3]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[3]),
        .O(ir[3]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    ir_inferred_i_14
       (.I0(rst_n_fl),
        .I1(ir_fl[2]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[2]),
        .O(ir[2]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    ir_inferred_i_15
       (.I0(rst_n_fl),
        .I1(ir_fl[1]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[1]),
        .O(ir[1]));
  LUT5 #(
    .INIT(32'hA8A8A808)) 
    ir_inferred_i_16
       (.I0(rst_n_fl),
        .I1(ir_fl[0]),
        .I2(ctl_fetch_fl),
        .I3(fdat[0]),
        .I4(fch_irq_req_fl),
        .O(ir[0]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    ir_inferred_i_2
       (.I0(rst_n_fl),
        .I1(ir_fl[14]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[14]),
        .O(ir[14]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    ir_inferred_i_3
       (.I0(rst_n_fl),
        .I1(ir_fl[13]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[13]),
        .O(ir[13]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    ir_inferred_i_4
       (.I0(rst_n_fl),
        .I1(ir_fl[12]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[12]),
        .O(ir[12]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    ir_inferred_i_5
       (.I0(rst_n_fl),
        .I1(ir_fl[11]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[11]),
        .O(ir[11]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    ir_inferred_i_6
       (.I0(rst_n_fl),
        .I1(ir_fl[10]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[10]),
        .O(ir[10]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    ir_inferred_i_7
       (.I0(rst_n_fl),
        .I1(ir_fl[9]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[9]),
        .O(ir[9]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    ir_inferred_i_8
       (.I0(rst_n_fl),
        .I1(ir_fl[8]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[8]),
        .O(ir[8]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    ir_inferred_i_9
       (.I0(rst_n_fl),
        .I1(ir_fl[7]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[7]),
        .O(ir[7]));
  LUT4 #(
    .INIT(16'h0004)) 
    \iv[15]_i_1 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\iv[15]_i_2_n_0 ),
        .O(\stat_reg[2]_6 ));
  LUT2 #(
    .INIT(4'h8)) 
    \iv[15]_i_10 
       (.I0(ir[7]),
        .I1(ir[3]),
        .O(\iv[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF001000000000000)) 
    \iv[15]_i_11 
       (.I0(ctl_fetch_ext_fl_i_5_n_0),
        .I1(\fch_irq_lev[1]_i_8_n_0 ),
        .I2(ir[8]),
        .I3(ir[11]),
        .I4(\iv[15]_i_21_n_0 ),
        .I5(brdy),
        .O(\iv[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3DFFFFFFFFFFFF3D)) 
    \iv[15]_i_12 
       (.I0(ir[1]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[13]),
        .I4(ir[12]),
        .I5(ir[14]),
        .O(\iv[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA2A002000)) 
    \iv[15]_i_13 
       (.I0(\iv[15]_i_22_n_0 ),
        .I1(\tnsn_dsp_a[8]_INST_0_i_9_n_0 ),
        .I2(ir[14]),
        .I3(ir[13]),
        .I4(\bdatw[15]_INST_0_i_1_0 [7]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_24_n_0 ),
        .O(\iv[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0C000A0A0)) 
    \iv[15]_i_14 
       (.I0(\iv[15]_i_6_0 ),
        .I1(\iv[15]_i_24_n_0 ),
        .I2(ir[12]),
        .I3(ir[14]),
        .I4(ir[13]),
        .I5(ir[15]),
        .O(\iv[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \iv[15]_i_15 
       (.I0(ir[14]),
        .I1(ir[13]),
        .O(\iv[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0040444044400040)) 
    \iv[15]_i_18 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(\bdatw[15]_INST_0_i_1_0 [4]),
        .I3(ir[14]),
        .I4(\bdatw[15]_INST_0_i_1_0 [5]),
        .I5(\bdatw[15]_INST_0_i_1_0 [7]),
        .O(\iv[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2B2AA7A72B2AA3A3)) 
    \iv[15]_i_19 
       (.I0(ir[15]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(\bdatw[15]_INST_0_i_1_0 [5]),
        .I4(ir[14]),
        .I5(\bdatw[15]_INST_0_i_1_0 [6]),
        .O(\iv[15]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBABBBABABABA)) 
    \iv[15]_i_2 
       (.I0(\stat_reg[0]_4 ),
        .I1(\iv[15]_i_3_n_0 ),
        .I2(\iv_reg[0]_0 ),
        .I3(\iv[15]_i_4_n_0 ),
        .I4(\iv[15]_i_5_n_0 ),
        .I5(\iv[15]_i_6_n_0 ),
        .O(\iv[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAFBFFFFFFFFF)) 
    \iv[15]_i_20 
       (.I0(\iv[15]_i_25_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [7]),
        .I2(ir[13]),
        .I3(ir[14]),
        .I4(ir[15]),
        .I5(ir[12]),
        .O(\iv[15]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[15]_i_21 
       (.I0(ir[10]),
        .I1(ir[6]),
        .O(\iv[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBABABBABBBAB)) 
    \iv[15]_i_22 
       (.I0(ir[12]),
        .I1(ir[15]),
        .I2(ir[13]),
        .I3(\bdatw[15]_INST_0_i_1_0 [6]),
        .I4(\bdatw[15]_INST_0_i_1_0 [5]),
        .I5(ir[14]),
        .O(\iv[15]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h7C)) 
    \iv[15]_i_24 
       (.I0(ir[6]),
        .I1(ir[8]),
        .I2(ir[7]),
        .O(\iv[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AFAF9F8F)) 
    \iv[15]_i_25 
       (.I0(ir[5]),
        .I1(ir[4]),
        .I2(ctl_fetch_inferred_i_18_n_0),
        .I3(ir[3]),
        .I4(ir[6]),
        .I5(\iv[15]_i_26_n_0 ),
        .O(\iv[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
    \iv[15]_i_26 
       (.I0(\iv[15]_i_27_n_0 ),
        .I1(ir[10]),
        .I2(ir[7]),
        .I3(ir[3]),
        .I4(ir[8]),
        .I5(\grn[15]_i_56_n_0 ),
        .O(\iv[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00F011F155F5FFFF)) 
    \iv[15]_i_27 
       (.I0(ir[10]),
        .I1(ir[8]),
        .I2(\bdatw[15]_INST_0_i_1_0 [7]),
        .I3(ir[14]),
        .I4(ir[7]),
        .I5(ir[9]),
        .O(\iv[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    \iv[15]_i_3 
       (.I0(ir[0]),
        .I1(\fch_irq_lev[1]_i_5_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_17_n_0 ),
        .I3(\bcmd[0]_INST_0_i_7_n_0 ),
        .I4(\iv[15]_i_2_0 ),
        .I5(\iv[15]_i_8_n_0 ),
        .O(\iv[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF080000)) 
    \iv[15]_i_4 
       (.I0(ir[11]),
        .I1(ir[8]),
        .I2(\bcmd[1]_INST_0_i_8_n_0 ),
        .I3(\iv[15]_i_9_n_0 ),
        .I4(\iv[15]_i_10_n_0 ),
        .I5(\iv[15]_i_11_n_0 ),
        .O(\iv[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF76FF)) 
    \iv[15]_i_5 
       (.I0(ir[13]),
        .I1(ir[9]),
        .I2(ir[2]),
        .I3(Q[0]),
        .I4(ir[15]),
        .I5(\iv[15]_i_12_n_0 ),
        .O(\iv[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEFFFEFFFE)) 
    \iv[15]_i_6 
       (.I0(Q[0]),
        .I1(ir[11]),
        .I2(\iv[15]_i_13_n_0 ),
        .I3(\iv[15]_i_14_n_0 ),
        .I4(\iv[15]_i_15_n_0 ),
        .I5(ir[15]),
        .O(\iv[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2020200020202020)) 
    \iv[15]_i_8 
       (.I0(ir[11]),
        .I1(Q[1]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_8_0 ),
        .I3(\iv[15]_i_18_n_0 ),
        .I4(\iv[15]_i_19_n_0 ),
        .I5(\iv[15]_i_20_n_0 ),
        .O(\iv[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \iv[15]_i_9 
       (.I0(ir[6]),
        .I1(ir[8]),
        .I2(ir[11]),
        .I3(brdy),
        .I4(ir[10]),
        .I5(ir[5]),
        .O(\iv[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[0]_i_1 
       (.I0(\read_cyc_reg[1] [0]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\pc_reg[15]_0 [0]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[0]),
        .O(\pc_reg[15] [0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[10]_i_1 
       (.I0(\read_cyc_reg[1] [10]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\pc_reg[15]_0 [10]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[10]),
        .O(\pc_reg[15] [10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[11]_i_1 
       (.I0(\read_cyc_reg[1] [11]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\pc_reg[15]_0 [11]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[11]),
        .O(\pc_reg[15] [11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[12]_i_1 
       (.I0(\read_cyc_reg[1] [12]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\pc_reg[15]_0 [12]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[12]),
        .O(\pc_reg[15] [12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[13]_i_1 
       (.I0(\read_cyc_reg[1] [13]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\pc_reg[15]_0 [13]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[13]),
        .O(\pc_reg[15] [13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[14]_i_1 
       (.I0(\read_cyc_reg[1] [14]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\pc_reg[15]_0 [14]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[14]),
        .O(\pc_reg[15] [14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[15]_i_1 
       (.I0(\read_cyc_reg[1] [15]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\pc_reg[15]_0 [15]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[15]),
        .O(\pc_reg[15] [15]));
  LUT4 #(
    .INIT(16'h0008)) 
    \pc[15]_i_2 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\iv[15]_i_2_n_0 ),
        .O(\pc[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFD)) 
    \pc[15]_i_3 
       (.I0(ctl_fetch_ext_fl_i_2_n_0),
        .I1(ctl_fetch_ext_fl_i_3_n_0),
        .I2(ir[2]),
        .I3(ir[12]),
        .I4(Q[1]),
        .I5(ctl_fetch_fl_reg_0),
        .O(\pc[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \pc[1]_i_1 
       (.I0(\grn[1]_i_2_n_0 ),
        .I1(\pc_reg[1] ),
        .I2(\pc[15]_i_2_n_0 ),
        .I3(\pc_reg[15]_0 [1]),
        .I4(\pc[15]_i_3_n_0 ),
        .I5(fch_pc[1]),
        .O(\pc_reg[15] [1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[2]_i_1 
       (.I0(\read_cyc_reg[1] [2]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\pc_reg[15]_0 [2]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[2]),
        .O(\pc_reg[15] [2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[3]_i_1 
       (.I0(\read_cyc_reg[1] [3]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\pc_reg[15]_0 [3]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[3]),
        .O(\pc_reg[15] [3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[4]_i_1 
       (.I0(\read_cyc_reg[1] [4]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\pc_reg[15]_0 [4]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[4]),
        .O(\pc_reg[15] [4]));
  LUT5 #(
    .INIT(32'h74777444)) 
    \pc[5]_i_1 
       (.I0(\grn[5]_i_2_n_0 ),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\pc_reg[15]_0 [5]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[5]),
        .O(\pc_reg[15] [5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[6]_i_1 
       (.I0(\read_cyc_reg[1] [6]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\pc_reg[15]_0 [6]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[6]),
        .O(\pc_reg[15] [6]));
  LUT5 #(
    .INIT(32'h74777444)) 
    \pc[7]_i_1 
       (.I0(\grn[7]_i_3_n_0 ),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\pc_reg[15]_0 [7]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[7]),
        .O(\pc_reg[15] [7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[8]_i_1 
       (.I0(\read_cyc_reg[1] [8]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\pc_reg[15]_0 [8]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[8]),
        .O(\pc_reg[15] [8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[9]_i_1 
       (.I0(\read_cyc_reg[1] [9]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\pc_reg[15]_0 [9]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[9]),
        .O(\pc_reg[15] [9]));
  LUT5 #(
    .INIT(32'h0EFF0E00)) 
    \read_cyc[0]_i_1 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(\badr[0]_INST_0_i_1_n_0 ),
        .I3(brdy),
        .I4(read_cyc[0]),
        .O(brdy_1));
  FDRE rst_n_fl_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rst_n),
        .Q(rst_n_fl),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \sp[0]_i_1 
       (.I0(\read_cyc_reg[1] [0]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\stat_reg[0]_1 ),
        .I3(\bdatw[15] [0]),
        .I4(\stat_reg[0]_2 ),
        .I5(sp_dec_0[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hF5FFFFFFEEEEEEEE)) 
    \sp[0]_i_10 
       (.I0(ir[9]),
        .I1(ir[6]),
        .I2(Q[0]),
        .I3(ir[11]),
        .I4(ir[12]),
        .I5(ir[10]),
        .O(\sp[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0CFFFFEE)) 
    \sp[0]_i_11 
       (.I0(ir[1]),
        .I1(ir[4]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(ir[8]),
        .O(\sp[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001005)) 
    \sp[0]_i_2 
       (.I0(\sp[0]_i_4_n_0 ),
        .I1(Q[0]),
        .I2(ir[12]),
        .I3(ir[11]),
        .I4(\sp[0]_i_5_n_0 ),
        .I5(\sp[0]_i_6_n_0 ),
        .O(\stat_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FFF1)) 
    \sp[0]_i_3 
       (.I0(fch_irq_req),
        .I1(Q[0]),
        .I2(ir[12]),
        .I3(ir[11]),
        .I4(ir[10]),
        .I5(\sp[0]_i_7_n_0 ),
        .O(\stat_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h00FFFF0200FFFFFF)) 
    \sp[0]_i_4 
       (.I0(Q[0]),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(ir[3]),
        .I4(ir[5]),
        .I5(ir[1]),
        .O(\sp[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFE)) 
    \sp[0]_i_5 
       (.I0(ir[10]),
        .I1(ir[11]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(\sp[0]_i_8_n_0 ),
        .O(\sp[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7EFFFFFFFF)) 
    \sp[0]_i_6 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(ir[14]),
        .I3(ir[15]),
        .I4(\iv_reg[0]_0 ),
        .I5(brdy),
        .O(\sp[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEF6AFF7)) 
    \sp[0]_i_7 
       (.I0(ir[3]),
        .I1(ir[7]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(ir[0]),
        .I5(\sp[0]_i_9_n_0 ),
        .O(\sp[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h3FFF3FFE)) 
    \sp[0]_i_8 
       (.I0(ir[4]),
        .I1(ir[7]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(ir[2]),
        .O(\sp[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFFFFFFFFFFFE)) 
    \sp[0]_i_9 
       (.I0(\sp[0]_i_6_n_0 ),
        .I1(\sp[0]_i_10_n_0 ),
        .I2(\sp[0]_i_11_n_0 ),
        .I3(ir[2]),
        .I4(ir[9]),
        .I5(ir[8]),
        .O(\sp[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[10]_i_1 
       (.I0(\read_cyc_reg[1] [10]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp_reg[10] ),
        .O(D[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[11]_i_1 
       (.I0(\read_cyc_reg[1] [11]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp_reg[11]_0 ),
        .O(D[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[12]_i_1 
       (.I0(\read_cyc_reg[1] [12]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp_reg[12] ),
        .O(D[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[13]_i_1 
       (.I0(\read_cyc_reg[1] [13]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp_reg[13] ),
        .O(D[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[14]_i_1 
       (.I0(\read_cyc_reg[1] [14]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp_reg[14] ),
        .O(D[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[15]_i_1 
       (.I0(\read_cyc_reg[1] [15]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp_reg[15]_0 ),
        .O(D[15]));
  LUT4 #(
    .INIT(16'h0400)) 
    \sp[15]_i_2 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\iv[15]_i_2_n_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .O(\sp[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    \sp[1]_i_1 
       (.I0(\grn[1]_i_2_n_0 ),
        .I1(\sp_reg[1] ),
        .I2(\grn[1]_i_10_0 ),
        .I3(\sp[15]_i_2_n_0 ),
        .I4(\sp_reg[1]_0 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sp[1]_i_5 
       (.I0(\stat_reg[2]_0 ),
        .I1(O[1]),
        .I2(\stat_reg[2] ),
        .I3(\iv_reg[15] [1]),
        .O(cbus1_carry));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[2]_i_1 
       (.I0(\read_cyc_reg[1] [2]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp_reg[2] ),
        .O(D[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[3]_i_1 
       (.I0(\read_cyc_reg[1] [3]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp_reg[3] ),
        .O(D[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[4]_i_1 
       (.I0(\read_cyc_reg[1] [4]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp_reg[4] ),
        .O(D[4]));
  LUT3 #(
    .INIT(8'h74)) 
    \sp[5]_i_1 
       (.I0(\grn[5]_i_2_n_0 ),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp_reg[5] ),
        .O(D[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[6]_i_1 
       (.I0(\read_cyc_reg[1] [6]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp_reg[6] ),
        .O(D[6]));
  LUT3 #(
    .INIT(8'h74)) 
    \sp[7]_i_1 
       (.I0(\grn[7]_i_3_n_0 ),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp_reg[7]_4 ),
        .O(D[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[8]_i_1 
       (.I0(\read_cyc_reg[1] [8]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp_reg[8] ),
        .O(D[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[9]_i_1 
       (.I0(\read_cyc_reg[1] [9]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp_reg[9] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFF540000FF54FF54)) 
    \sr[12]_i_1 
       (.I0(rst_n_0),
        .I1(\sr[13]_i_2_n_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [12]),
        .I3(cpuid[0]),
        .I4(\sr[12]_i_2_n_0 ),
        .I5(\sr[13]_i_4_n_0 ),
        .O(\sr_reg[13] [6]));
  LUT5 #(
    .INIT(32'hFFFFE0FF)) 
    \sr[12]_i_2 
       (.I0(\stat_reg[0]_3 ),
        .I1(\sr[13]_i_6_n_0 ),
        .I2(cpuid[0]),
        .I3(rst_n),
        .I4(\bdatw[15]_INST_0_i_1_0 [12]),
        .O(\sr[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF540000FF54FF54)) 
    \sr[13]_i_1 
       (.I0(rst_n_0),
        .I1(\sr[13]_i_2_n_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [13]),
        .I3(cpuid[1]),
        .I4(\sr[13]_i_3_n_0 ),
        .I5(\sr[13]_i_4_n_0 ),
        .O(\sr_reg[13] [7]));
  LUT6 #(
    .INIT(64'h000F080003FF0000)) 
    \sr[13]_i_10 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(ir[10]),
        .I4(ir[11]),
        .I5(ir[8]),
        .O(\sr[13]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \sr[13]_i_11 
       (.I0(ir[11]),
        .I1(ir[9]),
        .I2(ir[8]),
        .O(\sr[13]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h23034003)) 
    \sr[13]_i_12 
       (.I0(ir[3]),
        .I1(ir[5]),
        .I2(ir[4]),
        .I3(ir[6]),
        .I4(ir[7]),
        .O(\sr[13]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \sr[13]_i_2 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\iv[15]_i_2_n_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .O(\sr[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFE0FF)) 
    \sr[13]_i_3 
       (.I0(\stat_reg[0]_3 ),
        .I1(\sr[13]_i_6_n_0 ),
        .I2(cpuid[1]),
        .I3(rst_n),
        .I4(\bdatw[15]_INST_0_i_1_0 [13]),
        .O(\sr[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[13]_i_4 
       (.I0(\sr[3]_i_3_n_0 ),
        .I1(\sr[13]_i_2_n_0 ),
        .O(\sr[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000000E)) 
    \sr[13]_i_5 
       (.I0(ir[15]),
        .I1(ir[14]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\sr[13]_i_7_n_0 ),
        .O(\stat_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \sr[13]_i_6 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(ir[11]),
        .I3(Q[1]),
        .I4(ctl_fetch_inferred_i_14_n_0),
        .I5(\sr[13]_i_8_n_0 ),
        .O(\sr[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF00F4FCFFF0F4FCF)) 
    \sr[13]_i_7 
       (.I0(ir[11]),
        .I1(ir[14]),
        .I2(ir[15]),
        .I3(ir[12]),
        .I4(ir[13]),
        .I5(\sr[13]_i_9_n_0 ),
        .O(\sr[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \sr[13]_i_8 
       (.I0(\bdatw[15]_INST_0_i_82_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_13_n_0 ),
        .I2(Q[2]),
        .I3(brdy),
        .I4(Q[0]),
        .I5(\fch_irq_lev[1]_i_5_n_0 ),
        .O(\sr[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFBAAAAAAAAAAAAAA)) 
    \sr[13]_i_9 
       (.I0(\sr[13]_i_10_n_0 ),
        .I1(ir[7]),
        .I2(ir[6]),
        .I3(ir[10]),
        .I4(\sr[13]_i_11_n_0 ),
        .I5(\sr[13]_i_12_n_0 ),
        .O(\sr[13]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \sr[15]_i_1 
       (.I0(rst_n),
        .I1(\sr[3]_i_3_n_0 ),
        .O(rst_n_0));
  LUT6 #(
    .INIT(64'h2AAA2A0A20AA2000)) 
    \sr[2]_i_1 
       (.I0(rst_n),
        .I1(\sr[2]_i_2_n_0 ),
        .I2(\sr[3]_i_3_n_0 ),
        .I3(\sr[13]_i_2_n_0 ),
        .I4(\bdatw[15]_INST_0_i_1_0 [2]),
        .I5(\read_cyc_reg[1] [2]),
        .O(\sr_reg[13] [0]));
  LUT3 #(
    .INIT(8'h47)) 
    \sr[2]_i_2 
       (.I0(fch_irq_lev[0]),
        .I1(\sr[13]_i_6_n_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [2]),
        .O(\sr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2AAA2A0A20AA2000)) 
    \sr[3]_i_1 
       (.I0(rst_n),
        .I1(\sr[3]_i_2_n_0 ),
        .I2(\sr[3]_i_3_n_0 ),
        .I3(\sr[13]_i_2_n_0 ),
        .I4(\bdatw[15]_INST_0_i_1_0 [3]),
        .I5(\read_cyc_reg[1] [3]),
        .O(\sr_reg[13] [1]));
  LUT3 #(
    .INIT(8'h47)) 
    \sr[3]_i_2 
       (.I0(fch_irq_lev[1]),
        .I1(\sr[13]_i_6_n_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [3]),
        .O(\sr[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \sr[3]_i_3 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\iv[15]_i_2_n_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .O(\sr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888888A8A8A8AA)) 
    \sr[4]_i_1 
       (.I0(rst_n),
        .I1(\sr[4]_i_2_n_0 ),
        .I2(\sr[4]_i_3_n_0 ),
        .I3(\sr[4]_i_4_n_0 ),
        .I4(\sr[4]_i_5_n_0 ),
        .I5(\sr[4]_i_6_n_0 ),
        .O(\sr_reg[13] [2]));
  LUT6 #(
    .INIT(64'hFFE3FFE3FFE0FFE3)) 
    \sr[4]_i_10 
       (.I0(\sr[4]_i_15_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\sr[6]_i_6_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\sr[4]_i_16_n_0 ),
        .I5(\sr[4]_i_17_n_0 ),
        .O(\sr[4]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h4C1900FF)) 
    \sr[4]_i_11 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\grn_reg[15]_i_29_n_0 ),
        .I3(\grn[14]_i_3_n_0 ),
        .I4(\grn[15]_i_30_n_0 ),
        .O(\sr[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC8CBCFCFC8CBC)) 
    \sr[4]_i_14 
       (.I0(\grn[5]_i_16_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\grn[1]_i_21_n_0 ),
        .I4(\grn[6]_i_14_n_0 ),
        .I5(\grn[5]_i_15_n_0 ),
        .O(\sr[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0AFAFC0CFC0CF)) 
    \sr[4]_i_15 
       (.I0(\sr[4]_i_19_n_0 ),
        .I1(\grn[1]_i_21_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\grn[6]_i_23_n_0 ),
        .I4(\grn[5]_i_14_n_0 ),
        .I5(\grn[6]_i_14_n_0 ),
        .O(\sr[4]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \sr[4]_i_16 
       (.I0(abus_0[2]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .O(\sr[4]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sr[4]_i_17 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(\badr[0]_INST_0_i_1_n_0 ),
        .O(\sr[4]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h0F33AAAA)) 
    \sr[4]_i_19 
       (.I0(abus_0[2]),
        .I1(\badr[5]_INST_0_i_1_n_0 ),
        .I2(\badr[6]_INST_0_i_1_n_0 ),
        .I3(bbus_0[0]),
        .I4(\grn[4]_i_15_n_0 ),
        .O(\sr[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFEEFE)) 
    \sr[4]_i_2 
       (.I0(\grn[4]_i_5_n_0 ),
        .I1(\grn[4]_i_4_n_0 ),
        .I2(\iv_reg[7] [0]),
        .I3(\stat_reg[2]_0 ),
        .I4(\grn[4]_i_2_n_0 ),
        .I5(\sr[13]_i_4_n_0 ),
        .O(\sr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0004FFFF)) 
    \sr[4]_i_3 
       (.I0(\sr[4]_i_7_n_0 ),
        .I1(\grn[7]_i_6_n_0 ),
        .I2(\grn[1]_i_10_0 ),
        .I3(\grn[3]_i_3_n_0 ),
        .I4(\stat_reg[0]_3 ),
        .I5(\sr[4]_i_8_n_0 ),
        .O(\sr[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_4 
       (.I0(\grn[6]_i_5_n_0 ),
        .I1(\grn[3]_i_4_n_0 ),
        .I2(\grn[5]_i_6_n_0 ),
        .I3(\grn[2]_i_2_n_0 ),
        .O(\sr[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF4FFFFFFFF)) 
    \sr[4]_i_5 
       (.I0(\sr[4]_i_9_n_0 ),
        .I1(\sr[4]_i_10_n_0 ),
        .I2(\grn[6]_i_12_n_0 ),
        .I3(\grn[0]_i_2_n_0 ),
        .I4(\grn[4]_i_2_n_0 ),
        .I5(\grn[7]_i_4_n_0 ),
        .O(\sr[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \sr[4]_i_6 
       (.I0(\sr[13]_i_4_n_0 ),
        .I1(\stat_reg[0]_3 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [4]),
        .O(\sr[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sr[4]_i_7 
       (.I0(\grn[0]_i_4_n_0 ),
        .I1(\sr[4]_i_11_n_0 ),
        .I2(\grn[2]_i_5_n_0 ),
        .I3(\grn[4]_i_5_n_0 ),
        .I4(\grn[5]_i_5_n_0 ),
        .I5(\grn[6]_i_2_n_0 ),
        .O(\sr[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF45EF)) 
    \sr[4]_i_8 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\grn[4]_i_10_n_0 ),
        .I3(tout__1_carry_i_10_n_0),
        .I4(\bdatw[15]_INST_0_i_1_0 [4]),
        .I5(\sr[4]_i_3_0 ),
        .O(\sr[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAFFFFFFFFFFEA)) 
    \sr[4]_i_9 
       (.I0(\sr[4]_i_5_0 ),
        .I1(\sr[4]_i_14_n_0 ),
        .I2(\grn[1]_i_15_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[15]_i_30_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .O(\sr[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8A008A000000FF00)) 
    \sr[5]_i_1 
       (.I0(\sr_reg[5] ),
        .I1(\sr[5]_i_3_n_0 ),
        .I2(\sr[5]_i_4_n_0 ),
        .I3(rst_n),
        .I4(\grn[5]_i_2_n_0 ),
        .I5(\sr[13]_i_4_n_0 ),
        .O(\sr_reg[13] [3]));
  LUT6 #(
    .INIT(64'h00000960FFFFFFFF)) 
    \sr[5]_i_3 
       (.I0(\bdatw[15]_INST_0_i_2_n_0 ),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[2]),
        .I3(\iv_reg[7] [1]),
        .I4(\stat_reg[2]_0 ),
        .I5(\stat_reg[0]_3 ),
        .O(\sr[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD2FFFFFFFFFFFFFF)) 
    \sr[5]_i_4 
       (.I0(\sr[6]_i_7_n_0 ),
        .I1(\sr[5]_i_5_n_0 ),
        .I2(\grn[7]_i_4_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I4(\stat_reg[2]_1 ),
        .I5(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\sr[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0FDF0F0)) 
    \sr[5]_i_5 
       (.I0(abus_0[2]),
        .I1(\sr[6]_i_6_n_0 ),
        .I2(\grn[6]_i_12_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\sr[6]_i_8_n_0 ),
        .O(\sr[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8A008A000000FF00)) 
    \sr[6]_i_1 
       (.I0(\sr_reg[6] ),
        .I1(\sr[6]_i_3_n_0 ),
        .I2(\sr[6]_i_4_n_0 ),
        .I3(rst_n),
        .I4(\sr[6]_i_5_n_0 ),
        .I5(\sr[13]_i_4_n_0 ),
        .O(\sr_reg[13] [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[6]_i_10 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(bbus_0[0]),
        .I2(\badr[6]_INST_0_i_1_n_0 ),
        .O(\sr[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFDDDDDDDDDDDD)) 
    \sr[6]_i_11 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(\grn[6]_i_14_n_0 ),
        .I2(bbus_0[0]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[4]_i_15_n_0 ),
        .I5(abus_0[2]),
        .O(\sr[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3A003A00FF000000)) 
    \sr[6]_i_12 
       (.I0(\badr[4]_INST_0_i_1_n_0 ),
        .I1(abus_0[1]),
        .I2(bbus_0[0]),
        .I3(\grn[6]_i_14_n_0 ),
        .I4(\sr[6]_i_16_n_0 ),
        .I5(\grn[4]_i_15_n_0 ),
        .O(\sr[6]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \sr[6]_i_13 
       (.I0(abus_0[1]),
        .I1(\badr[4]_INST_0_i_1_n_0 ),
        .I2(bbus_0[0]),
        .O(\sr[6]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \sr[6]_i_14 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(\badr[6]_INST_0_i_1_n_0 ),
        .I2(bbus_0[0]),
        .O(\sr[6]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sr[6]_i_15 
       (.I0(\badr[0]_INST_0_i_1_n_0 ),
        .I1(bbus_0[0]),
        .O(\sr[6]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \sr[6]_i_16 
       (.I0(\badr[2]_INST_0_i_1_n_0 ),
        .I1(abus_0[0]),
        .I2(bbus_0[0]),
        .O(\sr[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0F022FF)) 
    \sr[6]_i_3 
       (.I0(abus_0[2]),
        .I1(\sr[6]_i_6_n_0 ),
        .I2(\sr[6]_i_7_n_0 ),
        .I3(\sr[6]_i_8_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .I5(\grn[6]_i_12_n_0 ),
        .O(\sr[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAA28)) 
    \sr[6]_i_4 
       (.I0(\stat_reg[0]_3 ),
        .I1(\sr_reg[6]_0 ),
        .I2(tout__1_carry_i_8_n_0),
        .I3(\stat_reg[2]_0 ),
        .O(\sr[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001101)) 
    \sr[6]_i_5 
       (.I0(\grn[6]_i_5_n_0 ),
        .I1(\iv_reg[6]_0 ),
        .I2(tnsn_dsp_c[5]),
        .I3(\stat_reg[1] ),
        .I4(\iv_reg[6] ),
        .I5(\grn[6]_i_2_n_0 ),
        .O(\sr[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \sr[6]_i_6 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(bbus_0[0]),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(\sr[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000775F000F)) 
    \sr[6]_i_7 
       (.I0(\grn[6]_i_19_n_0 ),
        .I1(\sr[6]_i_9_n_0 ),
        .I2(\sr[6]_i_10_n_0 ),
        .I3(\grn[4]_i_15_n_0 ),
        .I4(\sr[6]_i_11_n_0 ),
        .I5(\sr[6]_i_12_n_0 ),
        .O(\sr[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA03F3FAFA03030)) 
    \sr[6]_i_8 
       (.I0(\sr[6]_i_13_n_0 ),
        .I1(\sr[6]_i_14_n_0 ),
        .I2(\grn[6]_i_14_n_0 ),
        .I3(\sr[6]_i_15_n_0 ),
        .I4(\grn[4]_i_15_n_0 ),
        .I5(\grn[4]_i_16_n_0 ),
        .O(\sr[6]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sr[6]_i_9 
       (.I0(abus_0[2]),
        .I1(bbus_0[0]),
        .I2(\bdatw[15]_INST_0_i_1_0 [6]),
        .O(\sr[6]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h880C)) 
    \sr[7]_i_1 
       (.I0(\sr[7]_i_2_n_0 ),
        .I1(rst_n),
        .I2(\grn[7]_i_3_n_0 ),
        .I3(\sr[13]_i_4_n_0 ),
        .O(\sr_reg[13] [5]));
  LUT6 #(
    .INIT(64'h33F3AAAAFFFFAAAA)) 
    \sr[7]_i_2 
       (.I0(\bdatw[15]_INST_0_i_1_0 [7]),
        .I1(\grn[7]_i_6_n_0 ),
        .I2(\iv_reg[7] [1]),
        .I3(\stat_reg[2]_0 ),
        .I4(\stat_reg[0]_3 ),
        .I5(\grn[7]_i_4_n_0 ),
        .O(\sr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    \stat[0]_i_1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(ir[12]),
        .I4(ir[15]),
        .I5(\stat[0]_i_3_n_0 ),
        .O(rst_n_fl_reg_1[0]));
  LUT3 #(
    .INIT(8'h73)) 
    \stat[0]_i_10 
       (.I0(brdy),
        .I1(ir[0]),
        .I2(ir[1]),
        .O(brdy_0));
  LUT3 #(
    .INIT(8'h01)) 
    \stat[0]_i_11 
       (.I0(ir[13]),
        .I1(ir[14]),
        .I2(ir[11]),
        .O(rst_n_fl_reg_2));
  LUT6 #(
    .INIT(64'hBFFFBFBFBFBFBFBF)) 
    \stat[0]_i_13 
       (.I0(\stat[0]_i_15_n_0 ),
        .I1(ir[11]),
        .I2(\iv[15]_i_15_n_0 ),
        .I3(ir[3]),
        .I4(Q[0]),
        .I5(ir[10]),
        .O(\stat[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \stat[0]_i_14 
       (.I0(Q[1]),
        .I1(ir[0]),
        .I2(ir[1]),
        .O(\stat_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h7F3F)) 
    \stat[0]_i_15 
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[10]),
        .O(\stat[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0002AAAA00020002)) 
    \stat[0]_i_2 
       (.I0(\stat_reg[0]_8 ),
        .I1(ir[12]),
        .I2(ir[15]),
        .I3(\stat[0]_i_5_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_7_n_0 ),
        .I5(\stat[2]_i_9_n_0 ),
        .O(\stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C0CAE0CFF0CAE)) 
    \stat[0]_i_3 
       (.I0(\stat_reg[2]_9 ),
        .I1(\stat[0]_i_6_n_0 ),
        .I2(\stat[0]_i_7_n_0 ),
        .I3(Q[0]),
        .I4(ir[13]),
        .I5(\tnsn_dsp_a[8]_INST_0_i_8_n_0 ),
        .O(\stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDEDECFFCCFCF)) 
    \stat[0]_i_5 
       (.I0(\bdatw[15]_INST_0_i_1_0 [6]),
        .I1(Q[1]),
        .I2(ir[11]),
        .I3(\bdatw[15]_INST_0_i_1_0 [5]),
        .I4(ir[14]),
        .I5(ir[13]),
        .O(\stat[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hC3070307)) 
    \stat[0]_i_6 
       (.I0(ir[4]),
        .I1(ir[10]),
        .I2(ir[6]),
        .I3(ir[5]),
        .I4(ir[3]),
        .O(\stat[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF99109999)) 
    \stat[0]_i_7 
       (.I0(Q[0]),
        .I1(brdy),
        .I2(ir[3]),
        .I3(ir[6]),
        .I4(ir[10]),
        .I5(\stat[0]_i_13_n_0 ),
        .O(\stat[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h000011F0)) 
    \stat[1]_i_1 
       (.I0(\stat[1]_i_2_n_0 ),
        .I1(\stat[1]_i_3_n_0 ),
        .I2(\stat[2]_i_4_n_0 ),
        .I3(\stat[1]_i_4_n_0 ),
        .I4(ir[15]),
        .O(rst_n_fl_reg_1[1]));
  LUT6 #(
    .INIT(64'hF7F4F7F7F7F4C4C4)) 
    \stat[1]_i_2 
       (.I0(\stat_reg[2]_9 ),
        .I1(ir[12]),
        .I2(Q[1]),
        .I3(\stat_reg[1]_1 ),
        .I4(ir[14]),
        .I5(\stat[1]_i_6_n_0 ),
        .O(\stat[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFBABF5F5)) 
    \stat[1]_i_3 
       (.I0(\stat[1]_i_7_n_0 ),
        .I1(brdy),
        .I2(Q[2]),
        .I3(ir[1]),
        .I4(Q[0]),
        .O(\stat[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \stat[1]_i_4 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\bdatw[15]_INST_0_i_1_0 [6]),
        .I5(ir[13]),
        .O(\stat[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA0F1F5F5)) 
    \stat[1]_i_6 
       (.I0(ir[11]),
        .I1(ir[1]),
        .I2(Q[1]),
        .I3(ir[0]),
        .I4(\stat[2]_i_9_n_0 ),
        .O(\stat[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stat[1]_i_7 
       (.I0(ir[12]),
        .I1(Q[1]),
        .I2(ir[14]),
        .I3(ir[11]),
        .O(\stat[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2A2AAA2AAAAAAAAA)) 
    \stat[2]_i_10 
       (.I0(ir[14]),
        .I1(ir[12]),
        .I2(ir[11]),
        .I3(\stat[2]_i_11_n_0 ),
        .I4(Q[0]),
        .I5(ctl_fetch_inferred_i_18_n_0),
        .O(\stat[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stat[2]_i_11 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[3]),
        .I3(ir[4]),
        .O(\stat[2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h40405140)) 
    \stat[2]_i_2 
       (.I0(ir[15]),
        .I1(\stat[2]_i_3_n_0 ),
        .I2(\stat[2]_i_4_n_0 ),
        .I3(\stat_reg[2]_10 ),
        .I4(\stat[2]_i_6_n_0 ),
        .O(rst_n_fl_reg_1[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA8A)) 
    \stat[2]_i_3 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(\bdatw[15]_INST_0_i_1_0 [6]),
        .I3(Q[0]),
        .I4(ir[14]),
        .I5(\iv_reg[0]_0 ),
        .O(\stat[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4111)) 
    \stat[2]_i_4 
       (.I0(Q[0]),
        .I1(ir[11]),
        .I2(ir[12]),
        .I3(\bdatw[15]_INST_0_i_1_0 [7]),
        .I4(ir[14]),
        .I5(\stat[2]_i_7_n_0 ),
        .O(\stat[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h550F550355F05503)) 
    \stat[2]_i_6 
       (.I0(\stat_reg[2]_9 ),
        .I1(\stat[2]_i_9_n_0 ),
        .I2(ir[11]),
        .I3(ir[12]),
        .I4(ir[14]),
        .I5(\bdatw[15]_INST_0_i_1_0 [5]),
        .O(\stat[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBAA)) 
    \stat[2]_i_7 
       (.I0(\stat[2]_i_10_n_0 ),
        .I1(ir[3]),
        .I2(ctl_fetch_inferred_i_9_n_0),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\stat[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \stat[2]_i_9 
       (.I0(ir[10]),
        .I1(ir[8]),
        .I2(ir[7]),
        .I3(ir[9]),
        .I4(ir[2]),
        .I5(\stat[2]_i_11_n_0 ),
        .O(\stat[2]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_a[0]_INST_0 
       (.I0(\badr[0]_INST_0_i_1_n_0 ),
        .I1(\stat_reg[1] ),
        .O(tnsn_dsp_a[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[1]_INST_0 
       (.I0(abus_0[0]),
        .I1(\stat_reg[1] ),
        .O(tnsn_dsp_a[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_a[2]_INST_0 
       (.I0(\badr[2]_INST_0_i_1_n_0 ),
        .I1(\stat_reg[1] ),
        .O(tnsn_dsp_a[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[3]_INST_0 
       (.I0(abus_0[1]),
        .I1(\stat_reg[1] ),
        .O(tnsn_dsp_a[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_a[4]_INST_0 
       (.I0(\badr[4]_INST_0_i_1_n_0 ),
        .I1(\stat_reg[1] ),
        .O(tnsn_dsp_a[4]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_a[5]_INST_0 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(\stat_reg[1] ),
        .O(tnsn_dsp_a[5]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_a[6]_INST_0 
       (.I0(\badr[6]_INST_0_i_1_n_0 ),
        .I1(\stat_reg[1] ),
        .O(tnsn_dsp_a[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[7]_INST_0 
       (.I0(abus_0[2]),
        .I1(\stat_reg[1] ),
        .O(tnsn_dsp_a[7]));
  LUT3 #(
    .INIT(8'h9F)) 
    \tnsn_dsp_a[7]_INST_0_i_1 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(tnsn_dsp_b_8_sn_1),
        .O(\stat_reg[1] ));
  LUT2 #(
    .INIT(4'hE)) 
    \tnsn_dsp_a[7]_INST_0_i_10 
       (.I0(ir[15]),
        .I1(Q[1]),
        .O(\tnsn_dsp_a[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00FE00FE000000FE)) 
    \tnsn_dsp_a[7]_INST_0_i_11 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_19_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_20_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_21_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_22_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_23_n_0 ),
        .I5(Q[0]),
        .O(\tnsn_dsp_a[7]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000000E)) 
    \tnsn_dsp_a[7]_INST_0_i_12 
       (.I0(\stat_reg[2]_9 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_24_n_0 ),
        .I2(ir[13]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_25_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tnsn_dsp_a[7]_INST_0_i_13 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[5]),
        .I3(ir[4]),
        .O(\tnsn_dsp_a[7]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0F3CCFFC8BB88BB8)) 
    \tnsn_dsp_a[7]_INST_0_i_14 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_26_n_0 ),
        .I1(ir[14]),
        .I2(ir[11]),
        .I3(\bdatw[15]_INST_0_i_1_0 [7]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_27_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_28_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h80A280A8FFFFFFFF)) 
    \tnsn_dsp_a[7]_INST_0_i_15 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_29_n_0 ),
        .I1(ir[11]),
        .I2(ir[14]),
        .I3(ir[15]),
        .I4(\bdatw[15]_INST_0_i_1_0 [6]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_8_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF000CDCDFFFFCDCD)) 
    \tnsn_dsp_a[7]_INST_0_i_16 
       (.I0(ir[14]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_30_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_31_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_32_n_0 ),
        .I4(ir[11]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_33_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tnsn_dsp_a[7]_INST_0_i_17 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[11]),
        .O(\tnsn_dsp_a[7]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \tnsn_dsp_a[7]_INST_0_i_18 
       (.I0(ir[3]),
        .I1(ir[2]),
        .I2(ir[0]),
        .I3(ir[1]),
        .O(\tnsn_dsp_a[7]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h7F77)) 
    \tnsn_dsp_a[7]_INST_0_i_19 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(ir[10]),
        .I3(ir[9]),
        .O(\tnsn_dsp_a[7]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000455555555)) 
    \tnsn_dsp_a[7]_INST_0_i_2 
       (.I0(Q[1]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_4_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_5_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_6_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_7_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_8_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45FF45FFFFFF45FF)) 
    \tnsn_dsp_a[7]_INST_0_i_20 
       (.I0(ir[6]),
        .I1(ir[9]),
        .I2(ir[7]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_34_n_0 ),
        .I4(ir[10]),
        .I5(ir[8]),
        .O(\tnsn_dsp_a[7]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFAFA3AFAFA3AFAFA)) 
    \tnsn_dsp_a[7]_INST_0_i_21 
       (.I0(ir[10]),
        .I1(ir[4]),
        .I2(ir[9]),
        .I3(ir[7]),
        .I4(ir[5]),
        .I5(ir[3]),
        .O(\tnsn_dsp_a[7]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h2222002000000020)) 
    \tnsn_dsp_a[7]_INST_0_i_22 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_35_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_36_n_0 ),
        .I2(ir[10]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[11]),
        .O(\tnsn_dsp_a[7]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h50410541)) 
    \tnsn_dsp_a[7]_INST_0_i_23 
       (.I0(ir[14]),
        .I1(\bdatw[15]_INST_0_i_1_0 [6]),
        .I2(ir[11]),
        .I3(ir[12]),
        .I4(\bdatw[15]_INST_0_i_1_0 [7]),
        .O(\tnsn_dsp_a[7]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \tnsn_dsp_a[7]_INST_0_i_24 
       (.I0(ir[15]),
        .I1(ir[12]),
        .O(\tnsn_dsp_a[7]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h41054141)) 
    \tnsn_dsp_a[7]_INST_0_i_25 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(ir[11]),
        .I3(ir[15]),
        .I4(\bdatw[15]_INST_0_i_1_0 [5]),
        .O(\tnsn_dsp_a[7]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hE0EEAAAAFFFFAAAA)) 
    \tnsn_dsp_a[7]_INST_0_i_26 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_37_n_0 ),
        .I1(ir[3]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_38_n_0 ),
        .I3(ir[11]),
        .I4(ir[9]),
        .I5(ir[8]),
        .O(\tnsn_dsp_a[7]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h400F)) 
    \tnsn_dsp_a[7]_INST_0_i_27 
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[6]),
        .O(\tnsn_dsp_a[7]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \tnsn_dsp_a[7]_INST_0_i_28 
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(ir[6]),
        .I3(ir[10]),
        .O(\tnsn_dsp_a[7]_INST_0_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[7]_INST_0_i_29 
       (.I0(ir[13]),
        .I1(ir[12]),
        .O(\tnsn_dsp_a[7]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h5555555544444544)) 
    \tnsn_dsp_a[7]_INST_0_i_3 
       (.I0(Q[2]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_9_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_10_n_0 ),
        .I3(ir[13]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_11_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_12_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h41000500)) 
    \tnsn_dsp_a[7]_INST_0_i_30 
       (.I0(ir[15]),
        .I1(\bdatw[15]_INST_0_i_1_0 [7]),
        .I2(\bdatw[15]_INST_0_i_1_0 [5]),
        .I3(ir[14]),
        .I4(ir[12]),
        .O(\tnsn_dsp_a[7]_INST_0_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \tnsn_dsp_a[7]_INST_0_i_31 
       (.I0(ir[15]),
        .I1(\bdatw[15]_INST_0_i_1_0 [4]),
        .I2(ir[12]),
        .O(\tnsn_dsp_a[7]_INST_0_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h73)) 
    \tnsn_dsp_a[7]_INST_0_i_32 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(\bdatw[15]_INST_0_i_1_0 [5]),
        .O(\tnsn_dsp_a[7]_INST_0_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h7777F77F)) 
    \tnsn_dsp_a[7]_INST_0_i_33 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(\bdatw[15]_INST_0_i_1_0 [7]),
        .I3(\bdatw[15]_INST_0_i_1_0 [5]),
        .I4(ir[15]),
        .O(\tnsn_dsp_a[7]_INST_0_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[7]_INST_0_i_34 
       (.I0(ir[11]),
        .I1(Q[0]),
        .O(\tnsn_dsp_a[7]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h444400004FFF0F0F)) 
    \tnsn_dsp_a[7]_INST_0_i_35 
       (.I0(ir[5]),
        .I1(ir[3]),
        .I2(ir[9]),
        .I3(ir[4]),
        .I4(ir[7]),
        .I5(Q[0]),
        .O(\tnsn_dsp_a[7]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000808)) 
    \tnsn_dsp_a[7]_INST_0_i_36 
       (.I0(ir[3]),
        .I1(ir[7]),
        .I2(ir[5]),
        .I3(ir[4]),
        .I4(Q[0]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_39_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hDDFDFFFFDDFDDDFD)) 
    \tnsn_dsp_a[7]_INST_0_i_37 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[11]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_40_n_0 ),
        .I5(ir[9]),
        .O(\tnsn_dsp_a[7]_INST_0_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hBBBBFFBF)) 
    \tnsn_dsp_a[7]_INST_0_i_38 
       (.I0(ir[5]),
        .I1(ir[7]),
        .I2(ir[6]),
        .I3(ir[3]),
        .I4(ir[4]),
        .O(\tnsn_dsp_a[7]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFF7FFF3F)) 
    \tnsn_dsp_a[7]_INST_0_i_39 
       (.I0(ir[10]),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(ir[6]),
        .I4(ir[9]),
        .I5(ir[7]),
        .O(\tnsn_dsp_a[7]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \tnsn_dsp_a[7]_INST_0_i_4 
       (.I0(Q[2]),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(ir[3]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_13_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tnsn_dsp_a[7]_INST_0_i_40 
       (.I0(ir[4]),
        .I1(ir[5]),
        .O(\tnsn_dsp_a[7]_INST_0_i_40_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \tnsn_dsp_a[7]_INST_0_i_5 
       (.I0(ir[8]),
        .I1(ir[9]),
        .O(\tnsn_dsp_a[7]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \tnsn_dsp_a[7]_INST_0_i_6 
       (.I0(ir[1]),
        .I1(ir[10]),
        .I2(Q[0]),
        .O(\tnsn_dsp_a[7]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \tnsn_dsp_a[7]_INST_0_i_7 
       (.I0(ir[11]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[14]),
        .I4(ir[15]),
        .O(\tnsn_dsp_a[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0FF00FFE0FFFF)) 
    \tnsn_dsp_a[7]_INST_0_i_8 
       (.I0(ir[15]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_14_n_0 ),
        .I2(ir[12]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_15_n_0 ),
        .I4(ir[13]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_16_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \tnsn_dsp_a[7]_INST_0_i_9 
       (.I0(Q[1]),
        .I1(\fch_irq_lev[1]_i_5_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_17_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_13_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_18_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \tnsn_dsp_a[8]_INST_0_i_2 
       (.I0(abus_0[2]),
        .I1(\tnsn_dsp_b[8]_INST_0_i_1_n_0 ),
        .O(\tnsn_dsp_b[8]_INST_0_i_1_0 ));
  LUT6 #(
    .INIT(64'h000080FF00008000)) 
    \tnsn_dsp_a[8]_INST_0_i_3 
       (.I0(ir[13]),
        .I1(ir[11]),
        .I2(ir[14]),
        .I3(ir[15]),
        .I4(ir[12]),
        .I5(\tnsn_dsp_a[8]_INST_0_i_5_n_0 ),
        .O(rst_n_fl_reg_5));
  LUT6 #(
    .INIT(64'hFFFFC055FFFFFFFF)) 
    \tnsn_dsp_a[8]_INST_0_i_4 
       (.I0(\stat_reg[2]_9 ),
        .I1(\tnsn_dsp_a[8]_INST_0_i_7_n_0 ),
        .I2(\tnsn_dsp_a[8]_INST_0_i_8_n_0 ),
        .I3(ir[13]),
        .I4(ir[15]),
        .I5(ir[12]),
        .O(\sr_reg[4] ));
  LUT5 #(
    .INIT(32'h4F45101A)) 
    \tnsn_dsp_a[8]_INST_0_i_5 
       (.I0(ir[14]),
        .I1(\bdatw[15]_INST_0_i_1_0 [6]),
        .I2(ir[13]),
        .I3(\bdatw[15]_INST_0_i_1_0 [5]),
        .I4(ir[11]),
        .O(\tnsn_dsp_a[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFFF7FFFFFFFAFFF)) 
    \tnsn_dsp_a[8]_INST_0_i_7 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[14]),
        .I3(\tnsn_dsp_a[8]_INST_0_i_9_n_0 ),
        .I4(ir[11]),
        .I5(ir[8]),
        .O(\tnsn_dsp_a[8]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hBE)) 
    \tnsn_dsp_a[8]_INST_0_i_8 
       (.I0(ir[14]),
        .I1(ir[11]),
        .I2(\bdatw[15]_INST_0_i_1_0 [7]),
        .O(\tnsn_dsp_a[8]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[8]_INST_0_i_9 
       (.I0(ir[10]),
        .I1(ir[9]),
        .O(\tnsn_dsp_a[8]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_b[0]_INST_0 
       (.I0(bbus_0[0]),
        .I1(\stat_reg[1] ),
        .O(tnsn_dsp_b[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_b[1]_INST_0 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(\stat_reg[1] ),
        .O(tnsn_dsp_b[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_b[2]_INST_0 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\stat_reg[1] ),
        .O(tnsn_dsp_b[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_b[3]_INST_0 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(\stat_reg[1] ),
        .O(tnsn_dsp_b[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_b[4]_INST_0 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\stat_reg[1] ),
        .O(tnsn_dsp_b[4]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_b[5]_INST_0 
       (.I0(\bdatw[13]_INST_0_i_2_n_0 ),
        .I1(\stat_reg[1] ),
        .O(tnsn_dsp_b[5]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_b[6]_INST_0 
       (.I0(\bdatw[14]_INST_0_i_2_n_0 ),
        .I1(\stat_reg[1] ),
        .O(tnsn_dsp_b[6]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_b[7]_INST_0 
       (.I0(\bdatw[15]_INST_0_i_2_n_0 ),
        .I1(\stat_reg[1] ),
        .O(tnsn_dsp_b[7]));
  LUT3 #(
    .INIT(8'h08)) 
    \tnsn_dsp_b[8]_INST_0 
       (.I0(tnsn_dsp_b_8_sn_1),
        .I1(\tnsn_dsp_b[8]_INST_0_i_1_n_0 ),
        .I2(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(tnsn_dsp_b[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_b[8]_INST_0_i_1 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\tnsn_dsp_b[8]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    tout__1_carry__0_i_1
       (.I0(\bdatw[15]_INST_0_i_2_n_0 ),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[2]),
        .O(\sp_reg[7] [3]));
  LUT3 #(
    .INIT(8'h06)) 
    tout__1_carry__0_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(\badr[5]_INST_0_i_1_n_0 ),
        .O(\sp_reg[7] [2]));
  LUT3 #(
    .INIT(8'h06)) 
    tout__1_carry__0_i_3
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\badr[4]_INST_0_i_1_n_0 ),
        .O(\sp_reg[7] [1]));
  LUT3 #(
    .INIT(8'h28)) 
    tout__1_carry__0_i_4
       (.I0(abus_0[1]),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_8_n_0),
        .O(\sp_reg[7] [0]));
  LUT5 #(
    .INIT(32'h9696A55A)) 
    tout__1_carry__0_i_5
       (.I0(\bdatw[15]_INST_0_i_2_n_0 ),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[2]),
        .I3(\bdatw[14]_INST_0_i_2_n_0 ),
        .I4(\badr[6]_INST_0_i_1_n_0 ),
        .O(\sp_reg[7]_2 [3]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__0_i_6
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(\sp_reg[7] [2]),
        .I3(\badr[6]_INST_0_i_1_n_0 ),
        .O(\sp_reg[7]_2 [2]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__0_i_7
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(\badr[5]_INST_0_i_1_n_0 ),
        .I3(\sp_reg[7] [1]),
        .O(\sp_reg[7]_2 [1]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__0_i_8
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\badr[4]_INST_0_i_1_n_0 ),
        .I3(\sp_reg[7] [0]),
        .O(\sp_reg[7]_2 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    tout__1_carry__1_i_1
       (.I0(\bdatw[15]_INST_0_i_2_n_0 ),
        .I1(tout__1_carry_i_8_n_0),
        .O(\sp_reg[7]_1 ));
  LUT3 #(
    .INIT(8'h69)) 
    tout__1_carry__1_i_2
       (.I0(\bdatw[15]_INST_0_i_2_n_0 ),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[2]),
        .O(\sp_reg[7]_3 [1]));
  LUT3 #(
    .INIT(8'hF6)) 
    tout__1_carry__1_i_3
       (.I0(\bdatw[15]_INST_0_i_2_n_0 ),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[2]),
        .O(\sp_reg[7]_3 [0]));
  LUT3 #(
    .INIT(8'h06)) 
    tout__1_carry_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(\badr[2]_INST_0_i_1_n_0 ),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h0010)) 
    tout__1_carry_i_10
       (.I0(tnsn_dsp_b_8_sn_1),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .O(tout__1_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(abus_0[0]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h099F)) 
    tout__1_carry_i_3
       (.I0(bbus_0[0]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(\badr[0]_INST_0_i_1_n_0 ),
        .I3(tout__1_carry_i_9_n_0),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry_i_4
       (.I0(abus_0[1]),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_8_n_0),
        .I3(DI[2]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry_i_5
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(\badr[2]_INST_0_i_1_n_0 ),
        .I3(DI[1]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry_i_6
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(abus_0[0]),
        .I3(DI[0]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry_i_7
       (.I0(bbus_0[0]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(\badr[0]_INST_0_i_1_n_0 ),
        .I3(tout__1_carry_i_9_n_0),
        .O(S[0]));
  LUT4 #(
    .INIT(16'hAAEF)) 
    tout__1_carry_i_8
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\grn[4]_i_10_n_0 ),
        .I3(tout__1_carry_i_10_n_0),
        .O(tout__1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFEF00110000)) 
    tout__1_carry_i_9
       (.I0(tnsn_dsp_b_8_sn_1),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I5(\bdatw[15]_INST_0_i_1_0 [6]),
        .O(tout__1_carry_i_9_n_0));
endmodule

module tnsn_fsm
   (tnsn_dsp_a,
    \stat_reg[2]_0 ,
    \stat_reg[0]_0 ,
    Q,
    \stat_reg[2]_1 ,
    \stat_reg[1]_0 ,
    \stat_reg[1]_1 ,
    \stat_reg[0]_1 ,
    \stat_reg[0]_2 ,
    \stat_reg[2]_2 ,
    \stat_reg[1]_2 ,
    \stat_reg[2]_3 ,
    \stat_reg[0]_3 ,
    \stat_reg[0]_4 ,
    \stat_reg[0]_5 ,
    \stat_reg[0]_6 ,
    \stat_reg[2]_4 ,
    \stat_reg[0]_7 ,
    \stat_reg[1]_3 ,
    \stat_reg[2]_5 ,
    \tnsn_dsp_a[8] ,
    out,
    \bdatw[15]_INST_0_i_14 ,
    \bdatw[15]_INST_0_i_14_0 ,
    \bdatw[15]_INST_0_i_14_1 ,
    \bdatw[15]_INST_0_i_41_0 ,
    \grn[15]_i_13 ,
    fch_irq_req,
    irq,
    \stat[0]_i_2 ,
    \stat[0]_i_2_0 ,
    \stat[0]_i_2_1 ,
    brdy,
    \sr[4]_i_9 ,
    \tnsn_dsp_a[8]_0 ,
    \tnsn_dsp_a[8]_1 ,
    SR,
    D,
    clk);
  output [0:0]tnsn_dsp_a;
  output \stat_reg[2]_0 ;
  output \stat_reg[0]_0 ;
  output [2:0]Q;
  output \stat_reg[2]_1 ;
  output \stat_reg[1]_0 ;
  output \stat_reg[1]_1 ;
  output \stat_reg[0]_1 ;
  output \stat_reg[0]_2 ;
  output \stat_reg[2]_2 ;
  output \stat_reg[1]_2 ;
  output \stat_reg[2]_3 ;
  output \stat_reg[0]_3 ;
  output \stat_reg[0]_4 ;
  output \stat_reg[0]_5 ;
  output \stat_reg[0]_6 ;
  output \stat_reg[2]_4 ;
  output \stat_reg[0]_7 ;
  output \stat_reg[1]_3 ;
  output \stat_reg[2]_5 ;
  input \tnsn_dsp_a[8] ;
  input [9:0]out;
  input \bdatw[15]_INST_0_i_14 ;
  input \bdatw[15]_INST_0_i_14_0 ;
  input \bdatw[15]_INST_0_i_14_1 ;
  input [0:0]\bdatw[15]_INST_0_i_41_0 ;
  input \grn[15]_i_13 ;
  input fch_irq_req;
  input irq;
  input \stat[0]_i_2 ;
  input \stat[0]_i_2_0 ;
  input \stat[0]_i_2_1 ;
  input brdy;
  input \sr[4]_i_9 ;
  input \tnsn_dsp_a[8]_0 ;
  input \tnsn_dsp_a[8]_1 ;
  input [0:0]SR;
  input [2:0]D;
  input clk;

  wire \<const1> ;
  wire [2:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \bdatw[15]_INST_0_i_14 ;
  wire \bdatw[15]_INST_0_i_14_0 ;
  wire \bdatw[15]_INST_0_i_14_1 ;
  wire [0:0]\bdatw[15]_INST_0_i_41_0 ;
  wire \bdatw[15]_INST_0_i_65_n_0 ;
  wire \bdatw[15]_INST_0_i_66_n_0 ;
  wire \bdatw[15]_INST_0_i_68_n_0 ;
  wire brdy;
  wire clk;
  wire fch_irq_req;
  wire \grn[15]_i_13 ;
  wire irq;
  wire \iv[15]_i_16_n_0 ;
  wire \iv[15]_i_17_n_0 ;
  wire [9:0]out;
  wire \sr[4]_i_9 ;
  wire \stat[0]_i_2 ;
  wire \stat[0]_i_2_0 ;
  wire \stat[0]_i_2_1 ;
  wire \stat[0]_i_8_n_0 ;
  wire \stat[2]_i_8_n_0 ;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[0]_2 ;
  wire \stat_reg[0]_3 ;
  wire \stat_reg[0]_4 ;
  wire \stat_reg[0]_5 ;
  wire \stat_reg[0]_6 ;
  wire \stat_reg[0]_7 ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;
  wire \stat_reg[1]_2 ;
  wire \stat_reg[1]_3 ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_2 ;
  wire \stat_reg[2]_3 ;
  wire \stat_reg[2]_4 ;
  wire \stat_reg[2]_5 ;
  wire [0:0]tnsn_dsp_a;
  wire \tnsn_dsp_a[8] ;
  wire \tnsn_dsp_a[8]_0 ;
  wire \tnsn_dsp_a[8]_1 ;

  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_27 
       (.I0(Q[0]),
        .I1(out[9]),
        .O(\stat_reg[0]_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_93 
       (.I0(Q[0]),
        .I1(out[7]),
        .O(\stat_reg[0]_5 ));
  LUT2 #(
    .INIT(4'hB)) 
    \badr[15]_INST_0_i_97 
       (.I0(Q[0]),
        .I1(out[4]),
        .O(\stat_reg[0]_6 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bcmd[0]_INST_0_i_6 
       (.I0(out[9]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\stat_reg[1]_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bcmd[2]_INST_0_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\stat_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h88888A8888888888)) 
    \bdatw[15]_INST_0_i_41 
       (.I0(\bdatw[15]_INST_0_i_65_n_0 ),
        .I1(\bdatw[15]_INST_0_i_66_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14 ),
        .I3(\bdatw[15]_INST_0_i_14_0 ),
        .I4(\bdatw[15]_INST_0_i_68_n_0 ),
        .I5(\bdatw[15]_INST_0_i_14_1 ),
        .O(\stat_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0000FF01FFFFFFFF)) 
    \bdatw[15]_INST_0_i_65 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(out[5]),
        .I3(\bdatw[15]_INST_0_i_41_0 ),
        .I4(Q[0]),
        .I5(out[8]),
        .O(\bdatw[15]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC444444F4)) 
    \bdatw[15]_INST_0_i_66 
       (.I0(\bdatw[15]_INST_0_i_41_0 ),
        .I1(out[8]),
        .I2(out[5]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\bdatw[15]_INST_0_i_66_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bdatw[15]_INST_0_i_68 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\bdatw[15]_INST_0_i_68_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    ctl_fetch_inferred_i_13
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(out[1]),
        .O(\stat_reg[2]_5 ));
  LUT4 #(
    .INIT(16'h0001)) 
    ctl_fetch_inferred_i_2
       (.I0(out[9]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\stat_reg[0]_2 ));
  LUT2 #(
    .INIT(4'h8)) 
    ctl_fetch_inferred_i_20
       (.I0(Q[0]),
        .I1(brdy),
        .O(\stat_reg[0]_4 ));
  LUT6 #(
    .INIT(64'hAAAAFEFFFFFFFEFF)) 
    ctl_fetch_inferred_i_6
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(fch_irq_req),
        .I3(irq),
        .I4(Q[0]),
        .I5(out[1]),
        .O(\stat_reg[2]_2 ));
  LUT3 #(
    .INIT(8'h01)) 
    \fch_irq_lev[1]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\stat_reg[0]_7 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \grn[15]_i_17 
       (.I0(\grn[15]_i_13 ),
        .I1(Q[0]),
        .I2(out[9]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\stat_reg[0]_1 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \iv[15]_i_16 
       (.I0(Q[0]),
        .I1(brdy),
        .I2(out[1]),
        .O(\iv[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \iv[15]_i_17 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(out[2]),
        .I4(out[3]),
        .I5(out[1]),
        .O(\iv[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    \iv[15]_i_7 
       (.I0(out[2]),
        .I1(out[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\iv[15]_i_16_n_0 ),
        .I5(\iv[15]_i_17_n_0 ),
        .O(\stat_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sr[4]_i_13 
       (.I0(\stat_reg[2]_0 ),
        .I1(\sr[4]_i_9 ),
        .O(\stat_reg[2]_4 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[0]_i_12 
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(\stat_reg[2]_3 ));
  LUT6 #(
    .INIT(64'hDFDD0FFFDDDD0000)) 
    \stat[0]_i_4 
       (.I0(\stat[0]_i_8_n_0 ),
        .I1(\stat[0]_i_2 ),
        .I2(\stat[0]_i_2_0 ),
        .I3(Q[1]),
        .I4(\stat[0]_i_2_1 ),
        .I5(\stat_reg[2]_3 ),
        .O(\stat_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF91FF)) 
    \stat[0]_i_8 
       (.I0(Q[0]),
        .I1(brdy),
        .I2(out[0]),
        .I3(out[1]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\stat[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1111111F11111110)) 
    \stat[2]_i_5 
       (.I0(Q[0]),
        .I1(\stat_reg[2]_1 ),
        .I2(out[8]),
        .I3(out[6]),
        .I4(out[5]),
        .I5(\stat[2]_i_8_n_0 ),
        .O(\stat_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h1055000000AA4000)) 
    \stat[2]_i_8 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(brdy),
        .I3(out[1]),
        .I4(out[0]),
        .I5(Q[1]),
        .O(\stat[2]_i_8_n_0 ));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[8]_INST_0 
       (.I0(\stat_reg[2]_0 ),
        .I1(\tnsn_dsp_a[8] ),
        .O(tnsn_dsp_a));
  LUT5 #(
    .INIT(32'h01000101)) 
    \tnsn_dsp_a[8]_INST_0_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\tnsn_dsp_a[8]_0 ),
        .I4(\tnsn_dsp_a[8]_1 ),
        .O(\stat_reg[2]_0 ));
endmodule

module tnsn_mem
   (read_cyc,
    \read_cyc_reg[1] ,
    \read_cyc_reg[1]_0 ,
    \read_cyc_reg[1]_1 ,
    \read_cyc_reg[1]_2 ,
    \read_cyc_reg[1]_3 ,
    .bdatr_1_sp_1(bdatr_1_sn_1),
    \bdatr[1]_0 ,
    \read_cyc_reg[1]_4 ,
    .tnsn_dsp_c_1_sp_1(tnsn_dsp_c_1_sn_1),
    \read_cyc_reg[0] ,
    \read_cyc_reg[0]_0 ,
    \read_cyc_reg[2] ,
    \read_cyc_reg[2]_0 ,
    \read_cyc_reg[0]_1 ,
    \read_cyc_reg[2]_1 ,
    \read_cyc_reg[2]_2 ,
    SR,
    \read_cyc_reg[2]_3 ,
    clk,
    \read_cyc_reg[1]_5 ,
    \read_cyc_reg[0]_2 ,
    bdatr,
    \sp_reg[1] ,
    tnsn_dsp_c,
    \pc_reg[1] ,
    \pc_reg[1]_0 ,
    \sp_reg[1]_0 );
  output [2:0]read_cyc;
  output \read_cyc_reg[1] ;
  output \read_cyc_reg[1]_0 ;
  output \read_cyc_reg[1]_1 ;
  output \read_cyc_reg[1]_2 ;
  output \read_cyc_reg[1]_3 ;
  output \bdatr[1]_0 ;
  output \read_cyc_reg[1]_4 ;
  output \read_cyc_reg[0] ;
  output \read_cyc_reg[0]_0 ;
  output \read_cyc_reg[2] ;
  output \read_cyc_reg[2]_0 ;
  output \read_cyc_reg[0]_1 ;
  output \read_cyc_reg[2]_1 ;
  output \read_cyc_reg[2]_2 ;
  input [0:0]SR;
  input \read_cyc_reg[2]_3 ;
  input clk;
  input \read_cyc_reg[1]_5 ;
  input \read_cyc_reg[0]_2 ;
  input [15:0]bdatr;
  input \sp_reg[1] ;
  input [5:0]tnsn_dsp_c;
  input \pc_reg[1] ;
  input \pc_reg[1]_0 ;
  input \sp_reg[1]_0 ;
  output bdatr_1_sn_1;
  output tnsn_dsp_c_1_sn_1;

  wire [0:0]SR;
  wire [15:0]bdatr;
  wire \bdatr[1]_0 ;
  wire bdatr_1_sn_1;
  wire clk;
  wire \pc_reg[1] ;
  wire \pc_reg[1]_0 ;
  wire [2:0]read_cyc;
  wire \read_cyc_reg[0] ;
  wire \read_cyc_reg[0]_0 ;
  wire \read_cyc_reg[0]_1 ;
  wire \read_cyc_reg[0]_2 ;
  wire \read_cyc_reg[1] ;
  wire \read_cyc_reg[1]_0 ;
  wire \read_cyc_reg[1]_1 ;
  wire \read_cyc_reg[1]_2 ;
  wire \read_cyc_reg[1]_3 ;
  wire \read_cyc_reg[1]_4 ;
  wire \read_cyc_reg[1]_5 ;
  wire \read_cyc_reg[2] ;
  wire \read_cyc_reg[2]_0 ;
  wire \read_cyc_reg[2]_1 ;
  wire \read_cyc_reg[2]_2 ;
  wire \read_cyc_reg[2]_3 ;
  wire \sp_reg[1] ;
  wire \sp_reg[1]_0 ;
  wire [5:0]tnsn_dsp_c;
  wire tnsn_dsp_c_1_sn_1;

  tnsn_mem_bctl bctl
       (.SR(SR),
        .bdatr(bdatr),
        .\bdatr[1]_0 (\bdatr[1]_0 ),
        .bdatr_1_sp_1(bdatr_1_sn_1),
        .clk(clk),
        .\pc_reg[1] (\pc_reg[1] ),
        .\pc_reg[1]_0 (\pc_reg[1]_0 ),
        .\read_cyc_reg[0]_0 (read_cyc[0]),
        .\read_cyc_reg[0]_1 (\read_cyc_reg[0] ),
        .\read_cyc_reg[0]_2 (\read_cyc_reg[0]_0 ),
        .\read_cyc_reg[0]_3 (\read_cyc_reg[0]_1 ),
        .\read_cyc_reg[0]_4 (\read_cyc_reg[0]_2 ),
        .\read_cyc_reg[1]_0 (read_cyc[1]),
        .\read_cyc_reg[1]_1 (\read_cyc_reg[1] ),
        .\read_cyc_reg[1]_2 (\read_cyc_reg[1]_0 ),
        .\read_cyc_reg[1]_3 (\read_cyc_reg[1]_1 ),
        .\read_cyc_reg[1]_4 (\read_cyc_reg[1]_2 ),
        .\read_cyc_reg[1]_5 (\read_cyc_reg[1]_3 ),
        .\read_cyc_reg[1]_6 (\read_cyc_reg[1]_4 ),
        .\read_cyc_reg[1]_7 (\read_cyc_reg[1]_5 ),
        .\read_cyc_reg[2]_0 (read_cyc[2]),
        .\read_cyc_reg[2]_1 (\read_cyc_reg[2] ),
        .\read_cyc_reg[2]_2 (\read_cyc_reg[2]_0 ),
        .\read_cyc_reg[2]_3 (\read_cyc_reg[2]_1 ),
        .\read_cyc_reg[2]_4 (\read_cyc_reg[2]_2 ),
        .\read_cyc_reg[2]_5 (\read_cyc_reg[2]_3 ),
        .\sp_reg[1] (\sp_reg[1] ),
        .\sp_reg[1]_0 (\sp_reg[1]_0 ),
        .tnsn_dsp_c(tnsn_dsp_c),
        .tnsn_dsp_c_1_sp_1(tnsn_dsp_c_1_sn_1));
endmodule

module tnsn_mem_bctl
   (\read_cyc_reg[2]_0 ,
    \read_cyc_reg[1]_0 ,
    \read_cyc_reg[0]_0 ,
    \read_cyc_reg[1]_1 ,
    \read_cyc_reg[1]_2 ,
    \read_cyc_reg[1]_3 ,
    \read_cyc_reg[1]_4 ,
    \read_cyc_reg[1]_5 ,
    .bdatr_1_sp_1(bdatr_1_sn_1),
    \bdatr[1]_0 ,
    \read_cyc_reg[1]_6 ,
    .tnsn_dsp_c_1_sp_1(tnsn_dsp_c_1_sn_1),
    \read_cyc_reg[0]_1 ,
    \read_cyc_reg[0]_2 ,
    \read_cyc_reg[2]_1 ,
    \read_cyc_reg[2]_2 ,
    \read_cyc_reg[0]_3 ,
    \read_cyc_reg[2]_3 ,
    \read_cyc_reg[2]_4 ,
    SR,
    \read_cyc_reg[2]_5 ,
    clk,
    \read_cyc_reg[1]_7 ,
    \read_cyc_reg[0]_4 ,
    bdatr,
    \sp_reg[1] ,
    tnsn_dsp_c,
    \pc_reg[1] ,
    \pc_reg[1]_0 ,
    \sp_reg[1]_0 );
  output \read_cyc_reg[2]_0 ;
  output \read_cyc_reg[1]_0 ;
  output \read_cyc_reg[0]_0 ;
  output \read_cyc_reg[1]_1 ;
  output \read_cyc_reg[1]_2 ;
  output \read_cyc_reg[1]_3 ;
  output \read_cyc_reg[1]_4 ;
  output \read_cyc_reg[1]_5 ;
  output \bdatr[1]_0 ;
  output \read_cyc_reg[1]_6 ;
  output \read_cyc_reg[0]_1 ;
  output \read_cyc_reg[0]_2 ;
  output \read_cyc_reg[2]_1 ;
  output \read_cyc_reg[2]_2 ;
  output \read_cyc_reg[0]_3 ;
  output \read_cyc_reg[2]_3 ;
  output \read_cyc_reg[2]_4 ;
  input [0:0]SR;
  input \read_cyc_reg[2]_5 ;
  input clk;
  input \read_cyc_reg[1]_7 ;
  input \read_cyc_reg[0]_4 ;
  input [15:0]bdatr;
  input \sp_reg[1] ;
  input [5:0]tnsn_dsp_c;
  input \pc_reg[1] ;
  input \pc_reg[1]_0 ;
  input \sp_reg[1]_0 ;
  output bdatr_1_sn_1;
  output tnsn_dsp_c_1_sn_1;

  wire \<const1> ;
  wire [0:0]SR;
  wire [15:0]bdatr;
  wire \bdatr[1]_0 ;
  wire bdatr_1_sn_1;
  wire clk;
  wire \grn[1]_i_18_n_0 ;
  wire \pc_reg[1] ;
  wire \pc_reg[1]_0 ;
  wire \read_cyc_reg[0]_0 ;
  wire \read_cyc_reg[0]_1 ;
  wire \read_cyc_reg[0]_2 ;
  wire \read_cyc_reg[0]_3 ;
  wire \read_cyc_reg[0]_4 ;
  wire \read_cyc_reg[1]_0 ;
  wire \read_cyc_reg[1]_1 ;
  wire \read_cyc_reg[1]_2 ;
  wire \read_cyc_reg[1]_3 ;
  wire \read_cyc_reg[1]_4 ;
  wire \read_cyc_reg[1]_5 ;
  wire \read_cyc_reg[1]_6 ;
  wire \read_cyc_reg[1]_7 ;
  wire \read_cyc_reg[2]_0 ;
  wire \read_cyc_reg[2]_1 ;
  wire \read_cyc_reg[2]_2 ;
  wire \read_cyc_reg[2]_3 ;
  wire \read_cyc_reg[2]_4 ;
  wire \read_cyc_reg[2]_5 ;
  wire \sp[1]_i_4_n_0 ;
  wire \sp_reg[1] ;
  wire \sp_reg[1]_0 ;
  wire [5:0]tnsn_dsp_c;
  wire tnsn_dsp_c_1_sn_1;

  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h8A888088)) 
    \grn[0]_i_7 
       (.I0(\read_cyc_reg[2]_0 ),
        .I1(bdatr[0]),
        .I2(\read_cyc_reg[0]_0 ),
        .I3(\read_cyc_reg[1]_0 ),
        .I4(bdatr[8]),
        .O(\read_cyc_reg[2]_4 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \grn[11]_i_3 
       (.I0(\read_cyc_reg[1]_0 ),
        .I1(\read_cyc_reg[2]_0 ),
        .I2(bdatr[11]),
        .I3(\sp_reg[1] ),
        .I4(tnsn_dsp_c[3]),
        .O(\read_cyc_reg[1]_3 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \grn[13]_i_3 
       (.I0(\read_cyc_reg[1]_0 ),
        .I1(\read_cyc_reg[2]_0 ),
        .I2(bdatr[13]),
        .I3(\sp_reg[1] ),
        .I4(tnsn_dsp_c[4]),
        .O(\read_cyc_reg[1]_2 ));
  LUT2 #(
    .INIT(4'hB)) 
    \grn[14]_i_8 
       (.I0(\read_cyc_reg[1]_0 ),
        .I1(\read_cyc_reg[2]_0 ),
        .O(\read_cyc_reg[1]_6 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \grn[15]_i_10 
       (.I0(\read_cyc_reg[1]_0 ),
        .I1(\read_cyc_reg[2]_0 ),
        .I2(bdatr[15]),
        .I3(\sp_reg[1] ),
        .I4(tnsn_dsp_c[5]),
        .O(\read_cyc_reg[1]_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \grn[1]_i_18 
       (.I0(\read_cyc_reg[2]_0 ),
        .I1(\read_cyc_reg[1]_0 ),
        .O(\grn[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \grn[1]_i_8 
       (.I0(\sp_reg[1] ),
        .I1(tnsn_dsp_c[0]),
        .I2(\grn[1]_i_18_n_0 ),
        .I3(bdatr[1]),
        .I4(\read_cyc_reg[0]_0 ),
        .I5(bdatr[9]),
        .O(tnsn_dsp_c_1_sn_1));
  LUT5 #(
    .INIT(32'hA0A8A020)) 
    \grn[2]_i_4 
       (.I0(\read_cyc_reg[2]_0 ),
        .I1(\read_cyc_reg[1]_0 ),
        .I2(bdatr[2]),
        .I3(\read_cyc_reg[0]_0 ),
        .I4(bdatr[10]),
        .O(\read_cyc_reg[2]_3 ));
  LUT5 #(
    .INIT(32'hEF004000)) 
    \grn[3]_i_5 
       (.I0(\read_cyc_reg[0]_0 ),
        .I1(bdatr[11]),
        .I2(\read_cyc_reg[1]_0 ),
        .I3(\read_cyc_reg[2]_0 ),
        .I4(bdatr[3]),
        .O(\read_cyc_reg[0]_3 ));
  LUT5 #(
    .INIT(32'hA0A8A020)) 
    \grn[4]_i_11 
       (.I0(\read_cyc_reg[2]_0 ),
        .I1(\read_cyc_reg[1]_0 ),
        .I2(bdatr[4]),
        .I3(\read_cyc_reg[0]_0 ),
        .I4(bdatr[12]),
        .O(\read_cyc_reg[2]_2 ));
  LUT5 #(
    .INIT(32'hA0A8A020)) 
    \grn[5]_i_4 
       (.I0(\read_cyc_reg[2]_0 ),
        .I1(\read_cyc_reg[1]_0 ),
        .I2(bdatr[5]),
        .I3(\read_cyc_reg[0]_0 ),
        .I4(bdatr[13]),
        .O(\read_cyc_reg[2]_1 ));
  LUT5 #(
    .INIT(32'hEF004000)) 
    \grn[6]_i_3 
       (.I0(\read_cyc_reg[0]_0 ),
        .I1(bdatr[14]),
        .I2(\read_cyc_reg[1]_0 ),
        .I3(\read_cyc_reg[2]_0 ),
        .I4(bdatr[6]),
        .O(\read_cyc_reg[0]_2 ));
  LUT5 #(
    .INIT(32'hEF004000)) 
    \grn[7]_i_11 
       (.I0(\read_cyc_reg[0]_0 ),
        .I1(bdatr[15]),
        .I2(\read_cyc_reg[1]_0 ),
        .I3(\read_cyc_reg[2]_0 ),
        .I4(bdatr[7]),
        .O(\read_cyc_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \grn[8]_i_3 
       (.I0(\read_cyc_reg[1]_0 ),
        .I1(\read_cyc_reg[2]_0 ),
        .I2(bdatr[8]),
        .I3(\sp_reg[1] ),
        .I4(tnsn_dsp_c[1]),
        .O(\read_cyc_reg[1]_5 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \grn[9]_i_3 
       (.I0(\read_cyc_reg[1]_0 ),
        .I1(\read_cyc_reg[2]_0 ),
        .I2(bdatr[9]),
        .I3(\sp_reg[1] ),
        .I4(tnsn_dsp_c[2]),
        .O(\read_cyc_reg[1]_4 ));
  LUT5 #(
    .INIT(32'hEEEEFEEE)) 
    \pc[1]_i_2 
       (.I0(\pc_reg[1] ),
        .I1(\pc_reg[1]_0 ),
        .I2(bdatr[1]),
        .I3(\read_cyc_reg[2]_0 ),
        .I4(\read_cyc_reg[1]_0 ),
        .O(bdatr_1_sn_1));
  FDRE \read_cyc_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\read_cyc_reg[0]_4 ),
        .Q(\read_cyc_reg[0]_0 ),
        .R(SR));
  FDRE \read_cyc_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\read_cyc_reg[1]_7 ),
        .Q(\read_cyc_reg[1]_0 ),
        .R(SR));
  FDRE \read_cyc_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\read_cyc_reg[2]_5 ),
        .Q(\read_cyc_reg[2]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \sp[1]_i_2 
       (.I0(\read_cyc_reg[1]_6 ),
        .I1(bdatr[1]),
        .I2(\sp_reg[1] ),
        .I3(tnsn_dsp_c[0]),
        .I4(\sp[1]_i_4_n_0 ),
        .I5(\sp_reg[1]_0 ),
        .O(\bdatr[1]_0 ));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \sp[1]_i_4 
       (.I0(bdatr[9]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[1]),
        .I3(\read_cyc_reg[1]_0 ),
        .I4(\read_cyc_reg[2]_0 ),
        .O(\sp[1]_i_4_n_0 ));
endmodule

module tnsn_rgf
   (out,
    \grn_reg[15] ,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    \grn_reg[15]_2 ,
    \grn_reg[15]_3 ,
    \grn_reg[15]_4 ,
    \grn_reg[15]_5 ,
    \sr_reg[15] ,
    fadr,
    \sp_reg[15] ,
    \iv_reg[15] ,
    sp_dec_0,
    SR,
    \sp_reg[1] ,
    \sp_reg[2] ,
    \sp_reg[3] ,
    \sp_reg[4] ,
    \sp_reg[5] ,
    \sp_reg[6] ,
    \sp_reg[7] ,
    \sp_reg[8] ,
    \sp_reg[9] ,
    \sp_reg[10] ,
    \sp_reg[11] ,
    \sp_reg[12] ,
    \sp_reg[13] ,
    \sp_reg[14] ,
    \sp_reg[15]_0 ,
    \sr_reg[1] ,
    \sp_reg[1]_0 ,
    \sp_reg[2]_0 ,
    \sp_reg[9]_0 ,
    \sp_reg[10]_0 ,
    \sp_reg[11]_0 ,
    \sp_reg[14]_0 ,
    \pc_reg[7] ,
    \sp_reg[0] ,
    \sr_reg[6] ,
    \sr_reg[5] ,
    \iv_reg[0] ,
    fch_irq_req,
    \stat_reg[0] ,
    \sr_reg[5]_0 ,
    \sr_reg[7] ,
    \sr_reg[0] ,
    \sr_reg[5]_1 ,
    \sr_reg[7]_0 ,
    fch_pc,
    .irq_lev_0_sp_1(irq_lev_0_sn_1),
    \sr_reg[4] ,
    rst_n,
    \sp_reg[15]_1 ,
    \sp_reg[15]_2 ,
    \grn_reg[0] ,
    \badr[1]_INST_0_i_1 ,
    \badr[1]_INST_0_i_1_0 ,
    \badr[1]_INST_0_i_1_1 ,
    \badr[7]_INST_0_i_1 ,
    \badr[7]_INST_0_i_1_0 ,
    \bdatw[8]_INST_0_i_2 ,
    \sr_reg[5]_2 ,
    Q,
    brdy,
    \stat[0]_i_4 ,
    irq_lev,
    irq,
    \badr[15]_INST_0_i_59 ,
    \badr[15]_INST_0_i_59_0 ,
    E,
    D,
    clk,
    \grn_reg[15]_6 ,
    \grn_reg[15]_7 ,
    \grn_reg[15]_8 ,
    \grn_reg[15]_9 ,
    \grn_reg[15]_10 ,
    \grn_reg[15]_11 ,
    \grn_reg[15]_12 ,
    \sr_reg[13] ,
    \sr_reg[0]_0 ,
    \pc_reg[15] ,
    \sp_reg[15]_3 ,
    \iv_reg[0]_0 );
  output [15:0]out;
  output [15:0]\grn_reg[15] ;
  output [15:0]\grn_reg[15]_0 ;
  output [15:0]\grn_reg[15]_1 ;
  output [15:0]\grn_reg[15]_2 ;
  output [15:0]\grn_reg[15]_3 ;
  output [15:0]\grn_reg[15]_4 ;
  output [15:0]\grn_reg[15]_5 ;
  output [15:0]\sr_reg[15] ;
  output [15:0]fadr;
  output [15:0]\sp_reg[15] ;
  output [15:0]\iv_reg[15] ;
  output [15:0]sp_dec_0;
  output [0:0]SR;
  output \sp_reg[1] ;
  output \sp_reg[2] ;
  output \sp_reg[3] ;
  output \sp_reg[4] ;
  output \sp_reg[5] ;
  output \sp_reg[6] ;
  output \sp_reg[7] ;
  output \sp_reg[8] ;
  output \sp_reg[9] ;
  output \sp_reg[10] ;
  output \sp_reg[11] ;
  output \sp_reg[12] ;
  output \sp_reg[13] ;
  output \sp_reg[14] ;
  output \sp_reg[15]_0 ;
  output \sr_reg[1] ;
  output \sp_reg[1]_0 ;
  output \sp_reg[2]_0 ;
  output \sp_reg[9]_0 ;
  output \sp_reg[10]_0 ;
  output \sp_reg[11]_0 ;
  output \sp_reg[14]_0 ;
  output \pc_reg[7] ;
  output \sp_reg[0] ;
  output \sr_reg[6] ;
  output \sr_reg[5] ;
  output \iv_reg[0] ;
  output fch_irq_req;
  output \stat_reg[0] ;
  output \sr_reg[5]_0 ;
  output \sr_reg[7] ;
  output \sr_reg[0] ;
  output \sr_reg[5]_1 ;
  output \sr_reg[7]_0 ;
  output [15:0]fch_pc;
  output \sr_reg[4] ;
  input rst_n;
  input \sp_reg[15]_1 ;
  input \sp_reg[15]_2 ;
  input \grn_reg[0] ;
  input \badr[1]_INST_0_i_1 ;
  input \badr[1]_INST_0_i_1_0 ;
  input \badr[1]_INST_0_i_1_1 ;
  input \badr[7]_INST_0_i_1 ;
  input \badr[7]_INST_0_i_1_0 ;
  input \bdatw[8]_INST_0_i_2 ;
  input \sr_reg[5]_2 ;
  input [1:0]Q;
  input brdy;
  input \stat[0]_i_4 ;
  input [1:0]irq_lev;
  input irq;
  input [2:0]\badr[15]_INST_0_i_59 ;
  input \badr[15]_INST_0_i_59_0 ;
  input [1:0]E;
  input [15:0]D;
  input clk;
  input [1:0]\grn_reg[15]_6 ;
  input [1:0]\grn_reg[15]_7 ;
  input [1:0]\grn_reg[15]_8 ;
  input [1:0]\grn_reg[15]_9 ;
  input [1:0]\grn_reg[15]_10 ;
  input [1:0]\grn_reg[15]_11 ;
  input [1:0]\grn_reg[15]_12 ;
  input [7:0]\sr_reg[13] ;
  input \sr_reg[0]_0 ;
  input [15:0]\pc_reg[15] ;
  input [15:0]\sp_reg[15]_3 ;
  input [0:0]\iv_reg[0]_0 ;
  output irq_lev_0_sn_1;

  wire [15:0]D;
  wire [1:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [2:0]\badr[15]_INST_0_i_59 ;
  wire \badr[15]_INST_0_i_59_0 ;
  wire \badr[1]_INST_0_i_1 ;
  wire \badr[1]_INST_0_i_1_0 ;
  wire \badr[1]_INST_0_i_1_1 ;
  wire \badr[7]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_1_0 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire brdy;
  wire clk;
  wire [15:0]fadr;
  wire fch_irq_req;
  wire [15:0]fch_pc;
  wire \grn_reg[0] ;
  wire [15:0]\grn_reg[15] ;
  wire [15:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;
  wire [1:0]\grn_reg[15]_10 ;
  wire [1:0]\grn_reg[15]_11 ;
  wire [1:0]\grn_reg[15]_12 ;
  wire [15:0]\grn_reg[15]_2 ;
  wire [15:0]\grn_reg[15]_3 ;
  wire [15:0]\grn_reg[15]_4 ;
  wire [15:0]\grn_reg[15]_5 ;
  wire [1:0]\grn_reg[15]_6 ;
  wire [1:0]\grn_reg[15]_7 ;
  wire [1:0]\grn_reg[15]_8 ;
  wire [1:0]\grn_reg[15]_9 ;
  wire irq;
  wire [1:0]irq_lev;
  wire irq_lev_0_sn_1;
  wire \iv_reg[0] ;
  wire [0:0]\iv_reg[0]_0 ;
  wire [15:0]\iv_reg[15] ;
  wire [15:0]out;
  wire [15:0]\pc_reg[15] ;
  wire \pc_reg[7] ;
  wire rst_n;
  wire [15:0]sp_dec_0;
  wire \sp_reg[0] ;
  wire \sp_reg[10] ;
  wire \sp_reg[10]_0 ;
  wire \sp_reg[11] ;
  wire \sp_reg[11]_0 ;
  wire \sp_reg[12] ;
  wire \sp_reg[13] ;
  wire \sp_reg[14] ;
  wire \sp_reg[14]_0 ;
  wire [15:0]\sp_reg[15] ;
  wire \sp_reg[15]_0 ;
  wire \sp_reg[15]_1 ;
  wire \sp_reg[15]_2 ;
  wire [15:0]\sp_reg[15]_3 ;
  wire \sp_reg[1] ;
  wire \sp_reg[1]_0 ;
  wire \sp_reg[2] ;
  wire \sp_reg[2]_0 ;
  wire \sp_reg[3] ;
  wire \sp_reg[4] ;
  wire \sp_reg[5] ;
  wire \sp_reg[6] ;
  wire \sp_reg[7] ;
  wire \sp_reg[8] ;
  wire \sp_reg[9] ;
  wire \sp_reg[9]_0 ;
  wire \sr_reg[0] ;
  wire \sr_reg[0]_0 ;
  wire [7:0]\sr_reg[13] ;
  wire [15:0]\sr_reg[15] ;
  wire \sr_reg[1] ;
  wire \sr_reg[4] ;
  wire \sr_reg[5] ;
  wire \sr_reg[5]_0 ;
  wire \sr_reg[5]_1 ;
  wire \sr_reg[5]_2 ;
  wire \sr_reg[6] ;
  wire \sr_reg[7] ;
  wire \sr_reg[7]_0 ;
  wire sreg_n_27;
  wire \stat[0]_i_4 ;
  wire \stat_reg[0] ;

  tnsn_rgf_bank bank
       (.D(D),
        .E(E),
        .SR(SR),
        .\badr[14]_INST_0_i_1 ({\sp_reg[15] [14],\sp_reg[15] [11:9],\sp_reg[15] [2:1]}),
        .\badr[1]_INST_0_i_1 (\badr[1]_INST_0_i_1 ),
        .\badr[1]_INST_0_i_1_0 (\badr[1]_INST_0_i_1_0 ),
        .\badr[1]_INST_0_i_1_1 (\badr[1]_INST_0_i_1_1 ),
        .clk(clk),
        .\grn_reg[15] (\grn_reg[15] ),
        .\grn_reg[15]_0 (\grn_reg[15]_0 ),
        .\grn_reg[15]_1 (\grn_reg[15]_1 ),
        .\grn_reg[15]_10 (\grn_reg[15]_10 ),
        .\grn_reg[15]_11 (\grn_reg[15]_11 ),
        .\grn_reg[15]_12 (\grn_reg[15]_12 ),
        .\grn_reg[15]_2 (\grn_reg[15]_2 ),
        .\grn_reg[15]_3 (\grn_reg[15]_3 ),
        .\grn_reg[15]_4 (\grn_reg[15]_4 ),
        .\grn_reg[15]_5 (\grn_reg[15]_5 ),
        .\grn_reg[15]_6 (\grn_reg[15]_6 ),
        .\grn_reg[15]_7 (\grn_reg[15]_7 ),
        .\grn_reg[15]_8 (\grn_reg[15]_8 ),
        .\grn_reg[15]_9 (\grn_reg[15]_9 ),
        .out(out),
        .rst_n(rst_n),
        .\sp_reg[10] (\sp_reg[10]_0 ),
        .\sp_reg[11] (\sp_reg[11]_0 ),
        .\sp_reg[14] (\sp_reg[14]_0 ),
        .\sp_reg[1] (\sp_reg[1]_0 ),
        .\sp_reg[2] (\sp_reg[2]_0 ),
        .\sp_reg[9] (\sp_reg[9]_0 ));
  tnsn_rgf_ivec ivec
       (.D(D),
        .SR(SR),
        .clk(clk),
        .\iv_reg[0]_0 (\iv_reg[0]_0 ),
        .\iv_reg[15]_0 (\iv_reg[15] ));
  tnsn_rgf_pcnt pcnt
       (.S(sreg_n_27),
        .SR(SR),
        .\badr[7]_INST_0_i_1 (\badr[7]_INST_0_i_1 ),
        .\badr[7]_INST_0_i_1_0 (\badr[7]_INST_0_i_1_0 ),
        .\badr[7]_INST_0_i_1_1 (\grn_reg[15] [7]),
        .clk(clk),
        .fadr(fadr),
        .fch_pc(fch_pc),
        .\pc_reg[15]_0 (\pc_reg[15] ),
        .\pc_reg[7]_0 (\pc_reg[7] ));
  tnsn_rgf_sptr sptr
       (.SR(SR),
        .\bdatw[8]_INST_0_i_2 (\bdatw[8]_INST_0_i_2 ),
        .clk(clk),
        .out(\sp_reg[15] ),
        .sp_dec_0(sp_dec_0),
        .\sp_reg[0]_0 (\sp_reg[0] ),
        .\sp_reg[10]_0 (\sp_reg[10] ),
        .\sp_reg[11]_0 (\sp_reg[11] ),
        .\sp_reg[12]_0 (\sp_reg[12] ),
        .\sp_reg[13]_0 (\sp_reg[13] ),
        .\sp_reg[14]_0 (\sp_reg[14] ),
        .\sp_reg[15]_0 (\sp_reg[15]_0 ),
        .\sp_reg[15]_1 (\sp_reg[15]_1 ),
        .\sp_reg[15]_2 (\sp_reg[15]_2 ),
        .\sp_reg[15]_3 (\sp_reg[15]_3 ),
        .\sp_reg[1]_0 (\sp_reg[1] ),
        .\sp_reg[2]_0 (\sp_reg[2] ),
        .\sp_reg[3]_0 (\sp_reg[3] ),
        .\sp_reg[4]_0 (\sp_reg[4] ),
        .\sp_reg[5]_0 (\sp_reg[5] ),
        .\sp_reg[6]_0 (\sp_reg[6] ),
        .\sp_reg[7]_0 (\sp_reg[7] ),
        .\sp_reg[8]_0 (\sp_reg[8] ),
        .\sp_reg[9]_0 (\sp_reg[9] ));
  tnsn_rgf_sreg sreg
       (.Q(Q),
        .S(sreg_n_27),
        .\badr[15]_INST_0_i_59 (\badr[15]_INST_0_i_59 ),
        .\badr[15]_INST_0_i_59_0 (\badr[15]_INST_0_i_59_0 ),
        .brdy(brdy),
        .clk(clk),
        .fadr(fadr[1]),
        .fch_irq_req(fch_irq_req),
        .\grn_reg[0] (\grn_reg[0] ),
        .irq(irq),
        .irq_lev(irq_lev),
        .irq_lev_0_sp_1(irq_lev_0_sn_1),
        .\iv_reg[0] (\iv_reg[0] ),
        .\sr_reg[0]_0 (\sr_reg[0] ),
        .\sr_reg[0]_1 (\sr_reg[0]_0 ),
        .\sr_reg[13]_0 (\sr_reg[13] ),
        .\sr_reg[15]_0 (\sr_reg[15] ),
        .\sr_reg[1]_0 (\sr_reg[1] ),
        .\sr_reg[4]_0 (\sr_reg[4] ),
        .\sr_reg[5]_0 (\sr_reg[5] ),
        .\sr_reg[5]_1 (\sr_reg[5]_0 ),
        .\sr_reg[5]_2 (\sr_reg[5]_1 ),
        .\sr_reg[5]_3 (\sr_reg[5]_2 ),
        .\sr_reg[6]_0 (\sr_reg[6] ),
        .\sr_reg[7]_0 (\sr_reg[7] ),
        .\sr_reg[7]_1 (\sr_reg[7]_0 ),
        .\stat[0]_i_4 (\iv_reg[15] [0]),
        .\stat[0]_i_4_0 (\stat[0]_i_4 ),
        .\stat_reg[0] (\stat_reg[0] ));
endmodule

module tnsn_rgf_bank
   (.out({gr00[15],gr00[14],gr00[13],gr00[12],gr00[11],gr00[10],gr00[9],gr00[8],gr00[7],gr00[6],gr00[5],gr00[4],gr00[3],gr00[2],gr00[1],gr00[0]}),
    .\grn_reg[15] ({gr01[15],gr01[14],gr01[13],gr01[12],gr01[11],gr01[10],gr01[9],gr01[8],gr01[7],gr01[6],gr01[5],gr01[4],gr01[3],gr01[2],gr01[1],gr01[0]}),
    .\grn_reg[15]_0 ({gr02[15],gr02[14],gr02[13],gr02[12],gr02[11],gr02[10],gr02[9],gr02[8],gr02[7],gr02[6],gr02[5],gr02[4],gr02[3],gr02[2],gr02[1],gr02[0]}),
    .\grn_reg[15]_1 ({gr03[15],gr03[14],gr03[13],gr03[12],gr03[11],gr03[10],gr03[9],gr03[8],gr03[7],gr03[6],gr03[5],gr03[4],gr03[3],gr03[2],gr03[1],gr03[0]}),
    .\grn_reg[15]_2 ({gr04[15],gr04[14],gr04[13],gr04[12],gr04[11],gr04[10],gr04[9],gr04[8],gr04[7],gr04[6],gr04[5],gr04[4],gr04[3],gr04[2],gr04[1],gr04[0]}),
    .\grn_reg[15]_3 ({gr05[15],gr05[14],gr05[13],gr05[12],gr05[11],gr05[10],gr05[9],gr05[8],gr05[7],gr05[6],gr05[5],gr05[4],gr05[3],gr05[2],gr05[1],gr05[0]}),
    .\grn_reg[15]_4 ({gr06[15],gr06[14],gr06[13],gr06[12],gr06[11],gr06[10],gr06[9],gr06[8],gr06[7],gr06[6],gr06[5],gr06[4],gr06[3],gr06[2],gr06[1],gr06[0]}),
    .\grn_reg[15]_5 ({gr07[15],gr07[14],gr07[13],gr07[12],gr07[11],gr07[10],gr07[9],gr07[8],gr07[7],gr07[6],gr07[5],gr07[4],gr07[3],gr07[2],gr07[1],gr07[0]}),
    SR,
    \sp_reg[1] ,
    \sp_reg[2] ,
    \sp_reg[9] ,
    \sp_reg[10] ,
    \sp_reg[11] ,
    \sp_reg[14] ,
    rst_n,
    \badr[14]_INST_0_i_1 ,
    \badr[1]_INST_0_i_1 ,
    \badr[1]_INST_0_i_1_0 ,
    \badr[1]_INST_0_i_1_1 ,
    E,
    D,
    clk,
    \grn_reg[15]_6 ,
    \grn_reg[15]_7 ,
    \grn_reg[15]_8 ,
    \grn_reg[15]_9 ,
    \grn_reg[15]_10 ,
    \grn_reg[15]_11 ,
    \grn_reg[15]_12 );
  output [0:0]SR;
  output \sp_reg[1] ;
  output \sp_reg[2] ;
  output \sp_reg[9] ;
  output \sp_reg[10] ;
  output \sp_reg[11] ;
  output \sp_reg[14] ;
  input rst_n;
  input [5:0]\badr[14]_INST_0_i_1 ;
  input \badr[1]_INST_0_i_1 ;
  input \badr[1]_INST_0_i_1_0 ;
  input \badr[1]_INST_0_i_1_1 ;
  input [1:0]E;
  input [15:0]D;
  input clk;
  input [1:0]\grn_reg[15]_6 ;
  input [1:0]\grn_reg[15]_7 ;
  input [1:0]\grn_reg[15]_8 ;
  input [1:0]\grn_reg[15]_9 ;
  input [1:0]\grn_reg[15]_10 ;
  input [1:0]\grn_reg[15]_11 ;
  input [1:0]\grn_reg[15]_12 ;
     output [15:0]gr00;
     output [15:0]gr01;
     output [15:0]gr02;
     output [15:0]gr03;
     output [15:0]gr04;
     output [15:0]gr05;
     output [15:0]gr06;
     output [15:0]gr07;

  wire [15:0]D;
  wire [1:0]E;
  wire [0:0]SR;
  wire [5:0]\badr[14]_INST_0_i_1 ;
  wire \badr[1]_INST_0_i_1 ;
  wire \badr[1]_INST_0_i_1_0 ;
  wire \badr[1]_INST_0_i_1_1 ;
  wire clk;
  (* DONT_TOUCH *) wire [15:0]gr00;
  (* DONT_TOUCH *) wire [15:0]gr01;
  (* DONT_TOUCH *) wire [15:0]gr02;
  (* DONT_TOUCH *) wire [15:0]gr03;
  (* DONT_TOUCH *) wire [15:0]gr04;
  (* DONT_TOUCH *) wire [15:0]gr05;
  (* DONT_TOUCH *) wire [15:0]gr06;
  (* DONT_TOUCH *) wire [15:0]gr07;
  wire [1:0]\grn_reg[15]_10 ;
  wire [1:0]\grn_reg[15]_11 ;
  wire [1:0]\grn_reg[15]_12 ;
  wire [1:0]\grn_reg[15]_6 ;
  wire [1:0]\grn_reg[15]_7 ;
  wire [1:0]\grn_reg[15]_8 ;
  wire [1:0]\grn_reg[15]_9 ;
  wire rst_n;
  wire \sp_reg[10] ;
  wire \sp_reg[11] ;
  wire \sp_reg[14] ;
  wire \sp_reg[1] ;
  wire \sp_reg[2] ;
  wire \sp_reg[9] ;

  LUT6 #(
    .INIT(64'h88F888F8FFFF88F8)) 
    \badr[1]_INST_0_i_5 
       (.I0(\badr[14]_INST_0_i_1 [0]),
        .I1(\badr[1]_INST_0_i_1 ),
        .I2(gr02[1]),
        .I3(\badr[1]_INST_0_i_1_0 ),
        .I4(gr06[1]),
        .I5(\badr[1]_INST_0_i_1_1 ),
        .O(\sp_reg[1] ));
  LUT6 #(
    .INIT(64'h88F888F8FFFF88F8)) 
    \badr[2]_INST_0_i_5 
       (.I0(\badr[14]_INST_0_i_1 [1]),
        .I1(\badr[1]_INST_0_i_1 ),
        .I2(gr02[2]),
        .I3(\badr[1]_INST_0_i_1_0 ),
        .I4(gr06[2]),
        .I5(\badr[1]_INST_0_i_1_1 ),
        .O(\sp_reg[2] ));
  tnsn_rgf_grn grn00
       (.D(D),
        .E(E),
        .Q(gr00),
        .SR(SR),
        .\badr[14]_INST_0_i_1 (\badr[14]_INST_0_i_1 [5:2]),
        .\badr[14]_INST_0_i_1_0 (\badr[1]_INST_0_i_1 ),
        .\badr[14]_INST_0_i_1_1 ({gr02[14],gr02[11:9]}),
        .\badr[14]_INST_0_i_1_2 (\badr[1]_INST_0_i_1_0 ),
        .\badr[14]_INST_0_i_1_3 ({gr06[14],gr06[11:9]}),
        .\badr[14]_INST_0_i_1_4 (\badr[1]_INST_0_i_1_1 ),
        .clk(clk),
        .\sp_reg[10] (\sp_reg[10] ),
        .\sp_reg[11] (\sp_reg[11] ),
        .\sp_reg[14] (\sp_reg[14] ),
        .\sp_reg[9] (\sp_reg[9] ));
  tnsn_rgf_grn_0 grn01
       (.D(D),
        .Q(gr01),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_6 ));
  tnsn_rgf_grn_1 grn02
       (.D(D),
        .Q(gr02),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_7 ));
  tnsn_rgf_grn_2 grn03
       (.D(D),
        .Q(gr03),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_8 ));
  tnsn_rgf_grn_3 grn04
       (.D(D),
        .Q(gr04),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_9 ));
  tnsn_rgf_grn_4 grn05
       (.D(D),
        .Q(gr05),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_10 ));
  tnsn_rgf_grn_5 grn06
       (.D(D),
        .Q(gr06),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_11 ));
  tnsn_rgf_grn_6 grn07
       (.D(D),
        .Q(gr07),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_12 ),
        .rst_n(rst_n));
endmodule

module tnsn_rgf_grn
   (\sp_reg[9] ,
    \sp_reg[10] ,
    \sp_reg[11] ,
    \sp_reg[14] ,
    Q,
    \badr[14]_INST_0_i_1 ,
    \badr[14]_INST_0_i_1_0 ,
    \badr[14]_INST_0_i_1_1 ,
    \badr[14]_INST_0_i_1_2 ,
    \badr[14]_INST_0_i_1_3 ,
    \badr[14]_INST_0_i_1_4 ,
    SR,
    E,
    D,
    clk);
  output \sp_reg[9] ;
  output \sp_reg[10] ;
  output \sp_reg[11] ;
  output \sp_reg[14] ;
  output [15:0]Q;
  input [3:0]\badr[14]_INST_0_i_1 ;
  input \badr[14]_INST_0_i_1_0 ;
  input [3:0]\badr[14]_INST_0_i_1_1 ;
  input \badr[14]_INST_0_i_1_2 ;
  input [3:0]\badr[14]_INST_0_i_1_3 ;
  input \badr[14]_INST_0_i_1_4 ;
  input [0:0]SR;
  input [1:0]E;
  input [15:0]D;
  input clk;

  wire [15:0]D;
  wire [1:0]E;
  wire [15:0]Q;
  wire [0:0]SR;
  wire [3:0]\badr[14]_INST_0_i_1 ;
  wire \badr[14]_INST_0_i_1_0 ;
  wire [3:0]\badr[14]_INST_0_i_1_1 ;
  wire \badr[14]_INST_0_i_1_2 ;
  wire [3:0]\badr[14]_INST_0_i_1_3 ;
  wire \badr[14]_INST_0_i_1_4 ;
  wire clk;
  wire \sp_reg[10] ;
  wire \sp_reg[11] ;
  wire \sp_reg[14] ;
  wire \sp_reg[9] ;

  LUT6 #(
    .INIT(64'h88F888F8FFFF88F8)) 
    \badr[10]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_1 [1]),
        .I1(\badr[14]_INST_0_i_1_0 ),
        .I2(\badr[14]_INST_0_i_1_1 [1]),
        .I3(\badr[14]_INST_0_i_1_2 ),
        .I4(\badr[14]_INST_0_i_1_3 [1]),
        .I5(\badr[14]_INST_0_i_1_4 ),
        .O(\sp_reg[10] ));
  LUT6 #(
    .INIT(64'h88F888F8FFFF88F8)) 
    \badr[11]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_1 [2]),
        .I1(\badr[14]_INST_0_i_1_0 ),
        .I2(\badr[14]_INST_0_i_1_1 [2]),
        .I3(\badr[14]_INST_0_i_1_2 ),
        .I4(\badr[14]_INST_0_i_1_3 [2]),
        .I5(\badr[14]_INST_0_i_1_4 ),
        .O(\sp_reg[11] ));
  LUT6 #(
    .INIT(64'h88F888F8FFFF88F8)) 
    \badr[14]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_1 [3]),
        .I1(\badr[14]_INST_0_i_1_0 ),
        .I2(\badr[14]_INST_0_i_1_1 [3]),
        .I3(\badr[14]_INST_0_i_1_2 ),
        .I4(\badr[14]_INST_0_i_1_3 [3]),
        .I5(\badr[14]_INST_0_i_1_4 ),
        .O(\sp_reg[14] ));
  LUT6 #(
    .INIT(64'h88F888F8FFFF88F8)) 
    \badr[9]_INST_0_i_5 
       (.I0(\badr[14]_INST_0_i_1 [0]),
        .I1(\badr[14]_INST_0_i_1_0 ),
        .I2(\badr[14]_INST_0_i_1_1 [0]),
        .I3(\badr[14]_INST_0_i_1_2 ),
        .I4(\badr[14]_INST_0_i_1_3 [0]),
        .I5(\badr[14]_INST_0_i_1_4 ),
        .O(\sp_reg[9] ));
  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(E[0]),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(E[1]),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(E[1]),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(E[1]),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(E[1]),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(E[1]),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(E[1]),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(E[0]),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(E[0]),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(E[0]),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(E[0]),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(E[0]),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(E[0]),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(E[0]),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(E[1]),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(E[1]),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "tnsn_rgf_grn" *) 
module tnsn_rgf_grn_0
   (Q,
    SR,
    \grn_reg[15]_0 ,
    D,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [1:0]\grn_reg[15]_0 ;
  input [15:0]D;
  input clk;

  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [1:0]\grn_reg[15]_0 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "tnsn_rgf_grn" *) 
module tnsn_rgf_grn_1
   (Q,
    SR,
    \grn_reg[15]_0 ,
    D,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [1:0]\grn_reg[15]_0 ;
  input [15:0]D;
  input clk;

  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [1:0]\grn_reg[15]_0 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "tnsn_rgf_grn" *) 
module tnsn_rgf_grn_2
   (Q,
    SR,
    \grn_reg[15]_0 ,
    D,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [1:0]\grn_reg[15]_0 ;
  input [15:0]D;
  input clk;

  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [1:0]\grn_reg[15]_0 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "tnsn_rgf_grn" *) 
module tnsn_rgf_grn_3
   (Q,
    SR,
    \grn_reg[15]_0 ,
    D,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [1:0]\grn_reg[15]_0 ;
  input [15:0]D;
  input clk;

  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [1:0]\grn_reg[15]_0 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "tnsn_rgf_grn" *) 
module tnsn_rgf_grn_4
   (Q,
    SR,
    \grn_reg[15]_0 ,
    D,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [1:0]\grn_reg[15]_0 ;
  input [15:0]D;
  input clk;

  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [1:0]\grn_reg[15]_0 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "tnsn_rgf_grn" *) 
module tnsn_rgf_grn_5
   (Q,
    SR,
    \grn_reg[15]_0 ,
    D,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [1:0]\grn_reg[15]_0 ;
  input [15:0]D;
  input clk;

  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [1:0]\grn_reg[15]_0 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "tnsn_rgf_grn" *) 
module tnsn_rgf_grn_6
   (SR,
    Q,
    rst_n,
    \grn_reg[15]_0 ,
    D,
    clk);
  output [0:0]SR;
  output [15:0]Q;
  input rst_n;
  input [1:0]\grn_reg[15]_0 ;
  input [15:0]D;
  input clk;

  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [1:0]\grn_reg[15]_0 ;
  wire rst_n;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [0]),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 [1]),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \stat[2]_i_1 
       (.I0(rst_n),
        .O(SR));
endmodule

module tnsn_rgf_ivec
   (.\iv_reg[15]_0 ({iv[15],iv[14],iv[13],iv[12],iv[11],iv[10],iv[9],iv[8],iv[7],iv[6],iv[5],iv[4],iv[3],iv[2],iv[1],iv[0]}),
    SR,
    \iv_reg[0]_0 ,
    D,
    clk);
  input [0:0]SR;
  input [0:0]\iv_reg[0]_0 ;
  input [15:0]D;
  input clk;
     output [15:0]iv;

  wire [15:0]D;
  wire [0:0]SR;
  wire clk;
  (* DONT_TOUCH *) wire [15:0]iv;
  wire [0:0]\iv_reg[0]_0 ;

  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[0] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[0]),
        .Q(iv[0]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[10] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[10]),
        .Q(iv[10]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[11] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[11]),
        .Q(iv[11]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[12] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[12]),
        .Q(iv[12]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[13] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[13]),
        .Q(iv[13]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[14] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[14]),
        .Q(iv[14]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[15] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[15]),
        .Q(iv[15]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[1] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[1]),
        .Q(iv[1]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[2] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[2]),
        .Q(iv[2]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[3] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[3]),
        .Q(iv[3]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[4] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[4]),
        .Q(iv[4]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[5] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[5]),
        .Q(iv[5]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[6] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[6]),
        .Q(iv[6]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[7] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[7]),
        .Q(iv[7]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[8] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[8]),
        .Q(iv[8]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[9] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[9]),
        .Q(iv[9]),
        .R(SR));
endmodule

module tnsn_rgf_pcnt
   (.fadr({pc[15],pc[14],pc[13],pc[12],pc[11],pc[10],pc[9],pc[8],pc[7],pc[6],pc[5],pc[4],pc[3],pc[2],pc[1],pc[0]}),
    \pc_reg[7]_0 ,
    fch_pc,
    \badr[7]_INST_0_i_1 ,
    \badr[7]_INST_0_i_1_0 ,
    \badr[7]_INST_0_i_1_1 ,
    S,
    SR,
    \pc_reg[15]_0 ,
    clk);
  output \pc_reg[7]_0 ;
  output [15:0]fch_pc;
  input \badr[7]_INST_0_i_1 ;
  input \badr[7]_INST_0_i_1_0 ;
  input [0:0]\badr[7]_INST_0_i_1_1 ;
  input [0:0]S;
  input [0:0]SR;
  input [15:0]\pc_reg[15]_0 ;
  input clk;
     output [15:0]pc;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]S;
  wire [0:0]SR;
  wire \badr[7]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_1_0 ;
  wire [0:0]\badr[7]_INST_0_i_1_1 ;
  wire clk;
  wire [15:0]fch_pc;
  (* DONT_TOUCH *) wire [15:0]pc;
  wire \pc_reg[11]_i_2_n_0 ;
  wire \pc_reg[11]_i_2_n_1 ;
  wire \pc_reg[11]_i_2_n_2 ;
  wire \pc_reg[11]_i_2_n_3 ;
  wire [15:0]\pc_reg[15]_0 ;
  wire \pc_reg[15]_i_4_n_1 ;
  wire \pc_reg[15]_i_4_n_2 ;
  wire \pc_reg[15]_i_4_n_3 ;
  wire \pc_reg[3]_i_2_n_0 ;
  wire \pc_reg[3]_i_2_n_1 ;
  wire \pc_reg[3]_i_2_n_2 ;
  wire \pc_reg[3]_i_2_n_3 ;
  wire \pc_reg[7]_0 ;
  wire \pc_reg[7]_i_2_n_0 ;
  wire \pc_reg[7]_i_2_n_1 ;
  wire \pc_reg[7]_i_2_n_2 ;
  wire \pc_reg[7]_i_2_n_3 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \badr[7]_INST_0_i_7 
       (.I0(pc[7]),
        .I1(\badr[7]_INST_0_i_1 ),
        .I2(\badr[7]_INST_0_i_1_0 ),
        .I3(\badr[7]_INST_0_i_1_1 ),
        .O(\pc_reg[7]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_0 [0]),
        .Q(pc[0]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_0 [10]),
        .Q(pc[10]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_0 [11]),
        .Q(pc[11]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_reg[11]_i_2 
       (.CI(\pc_reg[7]_i_2_n_0 ),
        .CO({\pc_reg[11]_i_2_n_0 ,\pc_reg[11]_i_2_n_1 ,\pc_reg[11]_i_2_n_2 ,\pc_reg[11]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(fch_pc[11:8]),
        .S(pc[11:8]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_0 [12]),
        .Q(pc[12]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_0 [13]),
        .Q(pc[13]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_0 [14]),
        .Q(pc[14]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_0 [15]),
        .Q(pc[15]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_reg[15]_i_4 
       (.CI(\pc_reg[11]_i_2_n_0 ),
        .CO({\pc_reg[15]_i_4_n_1 ,\pc_reg[15]_i_4_n_2 ,\pc_reg[15]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(fch_pc[15:12]),
        .S(pc[15:12]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_0 [1]),
        .Q(pc[1]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_0 [2]),
        .Q(pc[2]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_0 [3]),
        .Q(pc[3]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_reg[3]_i_2 
       (.CI(\<const0> ),
        .CO({\pc_reg[3]_i_2_n_0 ,\pc_reg[3]_i_2_n_1 ,\pc_reg[3]_i_2_n_2 ,\pc_reg[3]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,pc[1],\<const0> }),
        .O(fch_pc[3:0]),
        .S({pc[3:2],S,pc[0]}));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_0 [4]),
        .Q(pc[4]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_0 [5]),
        .Q(pc[5]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_0 [6]),
        .Q(pc[6]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_0 [7]),
        .Q(pc[7]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_reg[7]_i_2 
       (.CI(\pc_reg[3]_i_2_n_0 ),
        .CO({\pc_reg[7]_i_2_n_0 ,\pc_reg[7]_i_2_n_1 ,\pc_reg[7]_i_2_n_2 ,\pc_reg[7]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(fch_pc[7:4]),
        .S(pc[7:4]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_0 [8]),
        .Q(pc[8]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_0 [9]),
        .Q(pc[9]),
        .R(SR));
endmodule

module tnsn_rgf_sptr
   (.out({sp[15],sp[14],sp[13],sp[12],sp[11],sp[10],sp[9],sp[8],sp[7],sp[6],sp[5],sp[4],sp[3],sp[2],sp[1],sp[0]}),
    sp_dec_0,
    \sp_reg[1]_0 ,
    \sp_reg[2]_0 ,
    \sp_reg[3]_0 ,
    \sp_reg[4]_0 ,
    \sp_reg[5]_0 ,
    \sp_reg[6]_0 ,
    \sp_reg[7]_0 ,
    \sp_reg[8]_0 ,
    \sp_reg[9]_0 ,
    \sp_reg[10]_0 ,
    \sp_reg[11]_0 ,
    \sp_reg[12]_0 ,
    \sp_reg[13]_0 ,
    \sp_reg[14]_0 ,
    \sp_reg[15]_0 ,
    \sp_reg[0]_0 ,
    \sp_reg[15]_1 ,
    \sp_reg[15]_2 ,
    \bdatw[8]_INST_0_i_2 ,
    SR,
    \sp_reg[15]_3 ,
    clk);
  output [15:0]sp_dec_0;
  output \sp_reg[1]_0 ;
  output \sp_reg[2]_0 ;
  output \sp_reg[3]_0 ;
  output \sp_reg[4]_0 ;
  output \sp_reg[5]_0 ;
  output \sp_reg[6]_0 ;
  output \sp_reg[7]_0 ;
  output \sp_reg[8]_0 ;
  output \sp_reg[9]_0 ;
  output \sp_reg[10]_0 ;
  output \sp_reg[11]_0 ;
  output \sp_reg[12]_0 ;
  output \sp_reg[13]_0 ;
  output \sp_reg[14]_0 ;
  output \sp_reg[15]_0 ;
  output \sp_reg[0]_0 ;
  input \sp_reg[15]_1 ;
  input \sp_reg[15]_2 ;
  input \bdatw[8]_INST_0_i_2 ;
  input [0:0]SR;
  input [15:0]\sp_reg[15]_3 ;
  input clk;
     output [15:0]sp;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]SR;
  wire \bdatw[8]_INST_0_i_2 ;
  wire clk;
  (* DONT_TOUCH *) wire [15:0]sp;
  wire [15:0]sp_dec_0;
  wire sp_dec_0__0_carry__0_n_0;
  wire sp_dec_0__0_carry__0_n_1;
  wire sp_dec_0__0_carry__0_n_2;
  wire sp_dec_0__0_carry__0_n_3;
  wire sp_dec_0__0_carry__0_n_4;
  wire sp_dec_0__0_carry__0_n_5;
  wire sp_dec_0__0_carry__0_n_6;
  wire sp_dec_0__0_carry__0_n_7;
  wire sp_dec_0__0_carry__1_n_0;
  wire sp_dec_0__0_carry__1_n_1;
  wire sp_dec_0__0_carry__1_n_2;
  wire sp_dec_0__0_carry__1_n_3;
  wire sp_dec_0__0_carry__1_n_4;
  wire sp_dec_0__0_carry__1_n_5;
  wire sp_dec_0__0_carry__1_n_6;
  wire sp_dec_0__0_carry__1_n_7;
  wire sp_dec_0__0_carry__2_n_1;
  wire sp_dec_0__0_carry__2_n_2;
  wire sp_dec_0__0_carry__2_n_3;
  wire sp_dec_0__0_carry__2_n_4;
  wire sp_dec_0__0_carry__2_n_5;
  wire sp_dec_0__0_carry__2_n_6;
  wire sp_dec_0__0_carry__2_n_7;
  wire sp_dec_0__0_carry_i_1_n_0;
  wire sp_dec_0__0_carry_n_0;
  wire sp_dec_0__0_carry_n_1;
  wire sp_dec_0__0_carry_n_2;
  wire sp_dec_0__0_carry_n_3;
  wire sp_dec_0__0_carry_n_4;
  wire sp_dec_0__0_carry_n_5;
  wire sp_dec_0__0_carry_n_6;
  wire sp_dec_0_carry__0_i_1_n_0;
  wire sp_dec_0_carry__0_i_2_n_0;
  wire sp_dec_0_carry__0_i_3_n_0;
  wire sp_dec_0_carry__0_i_4_n_0;
  wire sp_dec_0_carry__0_n_0;
  wire sp_dec_0_carry__0_n_1;
  wire sp_dec_0_carry__0_n_2;
  wire sp_dec_0_carry__0_n_3;
  wire sp_dec_0_carry__1_i_1_n_0;
  wire sp_dec_0_carry__1_i_2_n_0;
  wire sp_dec_0_carry__1_i_3_n_0;
  wire sp_dec_0_carry__1_i_4_n_0;
  wire sp_dec_0_carry__1_n_0;
  wire sp_dec_0_carry__1_n_1;
  wire sp_dec_0_carry__1_n_2;
  wire sp_dec_0_carry__1_n_3;
  wire sp_dec_0_carry__2_i_1_n_0;
  wire sp_dec_0_carry__2_i_2_n_0;
  wire sp_dec_0_carry__2_i_3_n_0;
  wire sp_dec_0_carry__2_i_4_n_0;
  wire sp_dec_0_carry__2_n_1;
  wire sp_dec_0_carry__2_n_2;
  wire sp_dec_0_carry__2_n_3;
  wire sp_dec_0_carry_i_1_n_0;
  wire sp_dec_0_carry_i_2_n_0;
  wire sp_dec_0_carry_i_3_n_0;
  wire sp_dec_0_carry_n_0;
  wire sp_dec_0_carry_n_1;
  wire sp_dec_0_carry_n_2;
  wire sp_dec_0_carry_n_3;
  wire \sp_reg[0]_0 ;
  wire \sp_reg[10]_0 ;
  wire \sp_reg[11]_0 ;
  wire \sp_reg[12]_0 ;
  wire \sp_reg[13]_0 ;
  wire \sp_reg[14]_0 ;
  wire \sp_reg[15]_0 ;
  wire \sp_reg[15]_1 ;
  wire \sp_reg[15]_2 ;
  wire [15:0]\sp_reg[15]_3 ;
  wire \sp_reg[1]_0 ;
  wire \sp_reg[2]_0 ;
  wire \sp_reg[3]_0 ;
  wire \sp_reg[4]_0 ;
  wire \sp_reg[5]_0 ;
  wire \sp_reg[6]_0 ;
  wire \sp_reg[7]_0 ;
  wire \sp_reg[8]_0 ;
  wire \sp_reg[9]_0 ;
  wire [3:0]NLW_sp_dec_0_carry_O_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[8]_INST_0_i_6 
       (.I0(sp[0]),
        .I1(\bdatw[8]_INST_0_i_2 ),
        .O(\sp_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[10]_i_2 
       (.I0(sp_dec_0__0_carry__1_n_5),
        .I1(\sp_reg[15]_1 ),
        .I2(sp[10]),
        .I3(\sp_reg[15]_2 ),
        .I4(sp_dec_0[10]),
        .O(\sp_reg[10]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[11]_i_2 
       (.I0(sp_dec_0__0_carry__1_n_4),
        .I1(\sp_reg[15]_1 ),
        .I2(sp[11]),
        .I3(\sp_reg[15]_2 ),
        .I4(sp_dec_0[11]),
        .O(\sp_reg[11]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[12]_i_2 
       (.I0(sp_dec_0__0_carry__2_n_7),
        .I1(\sp_reg[15]_1 ),
        .I2(sp[12]),
        .I3(\sp_reg[15]_2 ),
        .I4(sp_dec_0[12]),
        .O(\sp_reg[12]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[13]_i_2 
       (.I0(sp_dec_0__0_carry__2_n_6),
        .I1(\sp_reg[15]_1 ),
        .I2(sp[13]),
        .I3(\sp_reg[15]_2 ),
        .I4(sp_dec_0[13]),
        .O(\sp_reg[13]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[14]_i_2 
       (.I0(sp_dec_0__0_carry__2_n_5),
        .I1(\sp_reg[15]_1 ),
        .I2(sp[14]),
        .I3(\sp_reg[15]_2 ),
        .I4(sp_dec_0[14]),
        .O(\sp_reg[14]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[15]_i_3 
       (.I0(sp_dec_0__0_carry__2_n_4),
        .I1(\sp_reg[15]_1 ),
        .I2(sp[15]),
        .I3(\sp_reg[15]_2 ),
        .I4(sp_dec_0[15]),
        .O(\sp_reg[15]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[1]_i_3 
       (.I0(sp_dec_0__0_carry_n_6),
        .I1(\sp_reg[15]_1 ),
        .I2(sp[1]),
        .I3(\sp_reg[15]_2 ),
        .I4(sp_dec_0[1]),
        .O(\sp_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[2]_i_2 
       (.I0(sp_dec_0__0_carry_n_5),
        .I1(\sp_reg[15]_1 ),
        .I2(sp[2]),
        .I3(\sp_reg[15]_2 ),
        .I4(sp_dec_0[2]),
        .O(\sp_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[3]_i_2 
       (.I0(sp_dec_0__0_carry_n_4),
        .I1(\sp_reg[15]_1 ),
        .I2(sp[3]),
        .I3(\sp_reg[15]_2 ),
        .I4(sp_dec_0[3]),
        .O(\sp_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[4]_i_2 
       (.I0(sp_dec_0__0_carry__0_n_7),
        .I1(\sp_reg[15]_1 ),
        .I2(sp[4]),
        .I3(\sp_reg[15]_2 ),
        .I4(sp_dec_0[4]),
        .O(\sp_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[5]_i_2 
       (.I0(sp_dec_0__0_carry__0_n_6),
        .I1(\sp_reg[15]_1 ),
        .I2(sp[5]),
        .I3(\sp_reg[15]_2 ),
        .I4(sp_dec_0[5]),
        .O(\sp_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[6]_i_2 
       (.I0(sp_dec_0__0_carry__0_n_5),
        .I1(\sp_reg[15]_1 ),
        .I2(sp[6]),
        .I3(\sp_reg[15]_2 ),
        .I4(sp_dec_0[6]),
        .O(\sp_reg[6]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[7]_i_2 
       (.I0(sp_dec_0__0_carry__0_n_4),
        .I1(\sp_reg[15]_1 ),
        .I2(sp[7]),
        .I3(\sp_reg[15]_2 ),
        .I4(sp_dec_0[7]),
        .O(\sp_reg[7]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[8]_i_2 
       (.I0(sp_dec_0__0_carry__1_n_7),
        .I1(\sp_reg[15]_1 ),
        .I2(sp[8]),
        .I3(\sp_reg[15]_2 ),
        .I4(sp_dec_0[8]),
        .O(\sp_reg[8]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[9]_i_2 
       (.I0(sp_dec_0__0_carry__1_n_6),
        .I1(\sp_reg[15]_1 ),
        .I2(sp[9]),
        .I3(\sp_reg[15]_2 ),
        .I4(sp_dec_0[9]),
        .O(\sp_reg[9]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sp_dec_0__0_carry
       (.CI(\<const0> ),
        .CO({sp_dec_0__0_carry_n_0,sp_dec_0__0_carry_n_1,sp_dec_0__0_carry_n_2,sp_dec_0__0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,sp[1],\<const0> }),
        .O({sp_dec_0__0_carry_n_4,sp_dec_0__0_carry_n_5,sp_dec_0__0_carry_n_6,sp_dec_0[0]}),
        .S({sp[3:2],sp_dec_0__0_carry_i_1_n_0,sp[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sp_dec_0__0_carry__0
       (.CI(sp_dec_0__0_carry_n_0),
        .CO({sp_dec_0__0_carry__0_n_0,sp_dec_0__0_carry__0_n_1,sp_dec_0__0_carry__0_n_2,sp_dec_0__0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({sp_dec_0__0_carry__0_n_4,sp_dec_0__0_carry__0_n_5,sp_dec_0__0_carry__0_n_6,sp_dec_0__0_carry__0_n_7}),
        .S(sp[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sp_dec_0__0_carry__1
       (.CI(sp_dec_0__0_carry__0_n_0),
        .CO({sp_dec_0__0_carry__1_n_0,sp_dec_0__0_carry__1_n_1,sp_dec_0__0_carry__1_n_2,sp_dec_0__0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({sp_dec_0__0_carry__1_n_4,sp_dec_0__0_carry__1_n_5,sp_dec_0__0_carry__1_n_6,sp_dec_0__0_carry__1_n_7}),
        .S(sp[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sp_dec_0__0_carry__2
       (.CI(sp_dec_0__0_carry__1_n_0),
        .CO({sp_dec_0__0_carry__2_n_1,sp_dec_0__0_carry__2_n_2,sp_dec_0__0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({sp_dec_0__0_carry__2_n_4,sp_dec_0__0_carry__2_n_5,sp_dec_0__0_carry__2_n_6,sp_dec_0__0_carry__2_n_7}),
        .S(sp[15:12]));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0__0_carry_i_1
       (.I0(sp[1]),
        .O(sp_dec_0__0_carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sp_dec_0_carry
       (.CI(\<const0> ),
        .CO({sp_dec_0_carry_n_0,sp_dec_0_carry_n_1,sp_dec_0_carry_n_2,sp_dec_0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({sp[3:1],\<const0> }),
        .O({sp_dec_0[3:1],NLW_sp_dec_0_carry_O_UNCONNECTED[0]}),
        .S({sp_dec_0_carry_i_1_n_0,sp_dec_0_carry_i_2_n_0,sp_dec_0_carry_i_3_n_0,sp[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sp_dec_0_carry__0
       (.CI(sp_dec_0_carry_n_0),
        .CO({sp_dec_0_carry__0_n_0,sp_dec_0_carry__0_n_1,sp_dec_0_carry__0_n_2,sp_dec_0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(sp[7:4]),
        .O(sp_dec_0[7:4]),
        .S({sp_dec_0_carry__0_i_1_n_0,sp_dec_0_carry__0_i_2_n_0,sp_dec_0_carry__0_i_3_n_0,sp_dec_0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__0_i_1
       (.I0(sp[7]),
        .O(sp_dec_0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__0_i_2
       (.I0(sp[6]),
        .O(sp_dec_0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__0_i_3
       (.I0(sp[5]),
        .O(sp_dec_0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__0_i_4
       (.I0(sp[4]),
        .O(sp_dec_0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sp_dec_0_carry__1
       (.CI(sp_dec_0_carry__0_n_0),
        .CO({sp_dec_0_carry__1_n_0,sp_dec_0_carry__1_n_1,sp_dec_0_carry__1_n_2,sp_dec_0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(sp[11:8]),
        .O(sp_dec_0[11:8]),
        .S({sp_dec_0_carry__1_i_1_n_0,sp_dec_0_carry__1_i_2_n_0,sp_dec_0_carry__1_i_3_n_0,sp_dec_0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__1_i_1
       (.I0(sp[11]),
        .O(sp_dec_0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__1_i_2
       (.I0(sp[10]),
        .O(sp_dec_0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__1_i_3
       (.I0(sp[9]),
        .O(sp_dec_0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__1_i_4
       (.I0(sp[8]),
        .O(sp_dec_0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sp_dec_0_carry__2
       (.CI(sp_dec_0_carry__1_n_0),
        .CO({sp_dec_0_carry__2_n_1,sp_dec_0_carry__2_n_2,sp_dec_0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,sp[14:12]}),
        .O(sp_dec_0[15:12]),
        .S({sp_dec_0_carry__2_i_1_n_0,sp_dec_0_carry__2_i_2_n_0,sp_dec_0_carry__2_i_3_n_0,sp_dec_0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__2_i_1
       (.I0(sp[15]),
        .O(sp_dec_0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__2_i_2
       (.I0(sp[14]),
        .O(sp_dec_0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__2_i_3
       (.I0(sp[13]),
        .O(sp_dec_0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__2_i_4
       (.I0(sp[12]),
        .O(sp_dec_0_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry_i_1
       (.I0(sp[3]),
        .O(sp_dec_0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry_i_2
       (.I0(sp[2]),
        .O(sp_dec_0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry_i_3
       (.I0(sp[1]),
        .O(sp_dec_0_carry_i_3_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_3 [0]),
        .Q(sp[0]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_3 [10]),
        .Q(sp[10]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_3 [11]),
        .Q(sp[11]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_3 [12]),
        .Q(sp[12]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_3 [13]),
        .Q(sp[13]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_3 [14]),
        .Q(sp[14]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_3 [15]),
        .Q(sp[15]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_3 [1]),
        .Q(sp[1]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_3 [2]),
        .Q(sp[2]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_3 [3]),
        .Q(sp[3]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_3 [4]),
        .Q(sp[4]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_3 [5]),
        .Q(sp[5]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_3 [6]),
        .Q(sp[6]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_3 [7]),
        .Q(sp[7]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_3 [8]),
        .Q(sp[8]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_3 [9]),
        .Q(sp[9]),
        .R(SR));
endmodule

module tnsn_rgf_sreg
   (.\sr_reg[15]_0 ({sr[15],sr[14],sr[13],sr[12],sr[11],sr[10],sr[9],sr[8],sr[7],sr[6],sr[5],sr[4],sr[3],sr[2],sr[1],sr[0]}),
    \sr_reg[1]_0 ,
    \sr_reg[6]_0 ,
    \sr_reg[5]_0 ,
    \iv_reg[0] ,
    fch_irq_req,
    \stat_reg[0] ,
    \sr_reg[5]_1 ,
    \sr_reg[7]_0 ,
    \sr_reg[0]_0 ,
    \sr_reg[5]_2 ,
    \sr_reg[7]_1 ,
    S,
    .irq_lev_0_sp_1(irq_lev_0_sn_1),
    \sr_reg[4]_0 ,
    \grn_reg[0] ,
    \sr_reg[5]_3 ,
    \stat[0]_i_4 ,
    Q,
    brdy,
    \stat[0]_i_4_0 ,
    irq_lev,
    irq,
    \badr[15]_INST_0_i_59 ,
    \badr[15]_INST_0_i_59_0 ,
    fadr,
    \sr_reg[13]_0 ,
    clk,
    \sr_reg[0]_1 );
  output \sr_reg[1]_0 ;
  output \sr_reg[6]_0 ;
  output \sr_reg[5]_0 ;
  output \iv_reg[0] ;
  output fch_irq_req;
  output \stat_reg[0] ;
  output \sr_reg[5]_1 ;
  output \sr_reg[7]_0 ;
  output \sr_reg[0]_0 ;
  output \sr_reg[5]_2 ;
  output \sr_reg[7]_1 ;
  output [0:0]S;
  output \sr_reg[4]_0 ;
  input \grn_reg[0] ;
  input \sr_reg[5]_3 ;
  input [0:0]\stat[0]_i_4 ;
  input [1:0]Q;
  input brdy;
  input \stat[0]_i_4_0 ;
  input [1:0]irq_lev;
  input irq;
  input [2:0]\badr[15]_INST_0_i_59 ;
  input \badr[15]_INST_0_i_59_0 ;
  input [0:0]fadr;
  input [7:0]\sr_reg[13]_0 ;
  input clk;
  input \sr_reg[0]_1 ;
     output [15:0]sr;
  output irq_lev_0_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]Q;
  wire [0:0]S;
  wire [2:0]\badr[15]_INST_0_i_59 ;
  wire \badr[15]_INST_0_i_59_0 ;
  wire brdy;
  wire clk;
  wire [0:0]fadr;
  wire fch_irq_req;
  wire \grn_reg[0] ;
  wire irq;
  wire [1:0]irq_lev;
  wire irq_lev_0_sn_1;
  wire \iv_reg[0] ;
  (* DONT_TOUCH *) wire [15:0]sr;
  wire \sr_reg[0]_0 ;
  wire \sr_reg[0]_1 ;
  wire [7:0]\sr_reg[13]_0 ;
  wire \sr_reg[1]_0 ;
  wire \sr_reg[4]_0 ;
  wire \sr_reg[5]_0 ;
  wire \sr_reg[5]_1 ;
  wire \sr_reg[5]_2 ;
  wire \sr_reg[5]_3 ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[7]_0 ;
  wire \sr_reg[7]_1 ;
  wire [0:0]\stat[0]_i_4 ;
  wire \stat[0]_i_4_0 ;
  wire \stat_reg[0] ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h8008A20808082A08)) 
    \badr[15]_INST_0_i_82 
       (.I0(\badr[15]_INST_0_i_59_0 ),
        .I1(\badr[15]_INST_0_i_59 [2]),
        .I2(sr[5]),
        .I3(\badr[15]_INST_0_i_59 [1]),
        .I4(sr[4]),
        .I5(sr[7]),
        .O(\sr_reg[5]_2 ));
  LUT6 #(
    .INIT(64'hBAAAFFBAAAAAAAAA)) 
    \bcmd[1]_INST_0_i_2 
       (.I0(Q[0]),
        .I1(irq_lev[0]),
        .I2(sr[2]),
        .I3(sr[3]),
        .I4(irq_lev[1]),
        .I5(irq),
        .O(\stat_reg[0] ));
  LUT3 #(
    .INIT(8'hBA)) 
    \bdatw[15]_INST_0_i_51 
       (.I0(sr[0]),
        .I1(sr[8]),
        .I2(sr[1]),
        .O(\sr_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h4B78)) 
    ctl_fetch_inferred_i_17
       (.I0(sr[7]),
        .I1(\badr[15]_INST_0_i_59 [1]),
        .I2(\badr[15]_INST_0_i_59 [0]),
        .I3(sr[6]),
        .O(\sr_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h40F4000000000000)) 
    \fch_irq_lev[1]_i_3 
       (.I0(irq_lev[0]),
        .I1(sr[2]),
        .I2(sr[3]),
        .I3(irq_lev[1]),
        .I4(irq),
        .I5(brdy),
        .O(irq_lev_0_sn_1));
  LUT5 #(
    .INIT(32'h2020A220)) 
    fch_irq_req_fl_i_1
       (.I0(irq),
        .I1(irq_lev[1]),
        .I2(sr[3]),
        .I3(sr[2]),
        .I4(irq_lev[0]),
        .O(fch_irq_req));
  LUT4 #(
    .INIT(16'hF2FF)) 
    \grn[15]_i_5 
       (.I0(sr[1]),
        .I1(sr[8]),
        .I2(sr[0]),
        .I3(\grn_reg[0] ),
        .O(\sr_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \iv[15]_i_23 
       (.I0(sr[7]),
        .I1(sr[5]),
        .I2(\badr[15]_INST_0_i_59 [2]),
        .I3(sr[4]),
        .O(\sr_reg[7]_1 ));
  LUT6 #(
    .INIT(64'h6555AA6555555555)) 
    \pc[3]_i_3 
       (.I0(fadr),
        .I1(irq_lev[0]),
        .I2(sr[2]),
        .I3(sr[3]),
        .I4(irq_lev[1]),
        .I5(irq),
        .O(S));
  LUT2 #(
    .INIT(4'hE)) 
    \sr[5]_i_2 
       (.I0(sr[5]),
        .I1(\sr_reg[5]_3 ),
        .O(\sr_reg[5]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sr[6]_i_2 
       (.I0(sr[6]),
        .I1(\sr_reg[5]_3 ),
        .O(\sr_reg[6]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[0]),
        .Q(sr[0]),
        .R(\sr_reg[0]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[10]),
        .Q(sr[10]),
        .R(\sr_reg[0]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[11]),
        .Q(sr[11]),
        .R(\sr_reg[0]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[13]_0 [6]),
        .Q(sr[12]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[13]_0 [7]),
        .Q(sr[13]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[14]),
        .Q(sr[14]),
        .R(\sr_reg[0]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[15]),
        .Q(sr[15]),
        .R(\sr_reg[0]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[1]),
        .Q(sr[1]),
        .R(\sr_reg[0]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[13]_0 [0]),
        .Q(sr[2]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[13]_0 [1]),
        .Q(sr[3]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[13]_0 [2]),
        .Q(sr[4]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[13]_0 [3]),
        .Q(sr[5]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[13]_0 [4]),
        .Q(sr[6]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[13]_0 [5]),
        .Q(sr[7]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[8]),
        .Q(sr[8]),
        .R(\sr_reg[0]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[9]),
        .Q(sr[9]),
        .R(\sr_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFCAF000000000)) 
    \stat[0]_i_9 
       (.I0(fch_irq_req),
        .I1(\stat[0]_i_4 ),
        .I2(Q[0]),
        .I3(brdy),
        .I4(Q[1]),
        .I5(\stat[0]_i_4_0 ),
        .O(\iv_reg[0] ));
  LUT2 #(
    .INIT(4'h6)) 
    \stat[1]_i_5 
       (.I0(sr[5]),
        .I1(\badr[15]_INST_0_i_59 [0]),
        .O(\sr_reg[5]_1 ));
  LUT5 #(
    .INIT(32'h59A9A959)) 
    \tnsn_dsp_a[8]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_59 [0]),
        .I1(sr[4]),
        .I2(\badr[15]_INST_0_i_59 [2]),
        .I3(sr[5]),
        .I4(sr[7]),
        .O(\sr_reg[4]_0 ));
endmodule
