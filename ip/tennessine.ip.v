
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
//	2025/02/22	ver.1.04
//		expand: cpuid[3:0]
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
  input [3:0]cpuid;
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

  wire [15:0]abus_0;
  wire [5:0]abus_sel_cr;
  wire [1:0]acmd;
  wire alu_n_0;
  wire alu_n_1;
  wire alu_n_2;
  wire alu_n_25;
  wire alu_n_3;
  wire alu_n_5;
  wire alu_n_6;
  wire alu_n_7;
  wire [10:10]\art/add/tout ;
  wire [7:7]\art/p_0_in ;
  wire [15:0]badr;
  wire \bank/gr0_bus1 ;
  wire \bank/gr1_bus1 ;
  wire \bank/gr2_bus1 ;
  wire \bank/gr3_bus1 ;
  wire \bank/gr4_bus1 ;
  wire \bank/gr5_bus1 ;
  wire \bank/gr6_bus1 ;
  wire \bank/gr7_bus1 ;
  wire [0:0]bank_sel;
  wire [14:0]bbus_0;
  wire [11:8]bbus_rn;
  wire [5:0]bbus_sel_cr;
  wire [2:0]bcmd;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire brdy;
  wire [15:0]cbus;
  wire [3:3]cbus_sel_cr;
  wire [2:2]cbus_sel_cr__0;
  wire clk;
  wire [3:0]cpuid;
  (* DONT_TOUCH *) wire ctl_fetch;
  wire ctl_n_0;
  wire ctl_n_10;
  wire ctl_n_11;
  wire ctl_n_12;
  wire ctl_n_13;
  wire ctl_n_14;
  wire ctl_n_15;
  wire ctl_n_16;
  wire ctl_n_18;
  wire ctl_n_19;
  wire ctl_n_20;
  wire ctl_n_21;
  wire ctl_n_22;
  wire ctl_n_23;
  wire ctl_n_24;
  wire ctl_n_25;
  wire ctl_n_26;
  wire ctl_n_27;
  wire ctl_n_28;
  wire ctl_n_29;
  wire ctl_n_30;
  wire ctl_n_31;
  wire ctl_n_4;
  wire ctl_n_5;
  wire ctl_n_6;
  wire ctl_n_7;
  wire ctl_n_8;
  wire ctl_n_9;
  wire [2:0]ctl_selc_rn;
  wire ctl_selc_rnh;
  wire ctl_sp_dec;
  wire ctl_sp_inc;
  wire ctl_sr_ldie;
  wire ctl_sr_upd;
  wire [15:0]data0;
  wire [15:0]fadr;
  wire [15:0]fch_ir;
  wire fch_irq_req;
  wire fch_n_100;
  wire fch_n_101;
  wire fch_n_102;
  wire fch_n_103;
  wire fch_n_104;
  wire fch_n_110;
  wire fch_n_111;
  wire fch_n_112;
  wire fch_n_113;
  wire fch_n_114;
  wire fch_n_115;
  wire fch_n_116;
  wire fch_n_117;
  wire fch_n_118;
  wire fch_n_119;
  wire fch_n_12;
  wire fch_n_13;
  wire fch_n_135;
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
  wire fch_n_17;
  wire fch_n_173;
  wire fch_n_190;
  wire fch_n_191;
  wire fch_n_192;
  wire fch_n_193;
  wire fch_n_194;
  wire fch_n_195;
  wire fch_n_196;
  wire fch_n_197;
  wire fch_n_198;
  wire fch_n_199;
  wire fch_n_20;
  wire fch_n_200;
  wire fch_n_201;
  wire fch_n_202;
  wire fch_n_203;
  wire fch_n_204;
  wire fch_n_205;
  wire fch_n_206;
  wire fch_n_207;
  wire fch_n_208;
  wire fch_n_209;
  wire fch_n_21;
  wire fch_n_210;
  wire fch_n_211;
  wire fch_n_212;
  wire fch_n_214;
  wire fch_n_215;
  wire fch_n_27;
  wire fch_n_28;
  wire fch_n_29;
  wire fch_n_46;
  wire fch_n_47;
  wire fch_n_48;
  wire fch_n_49;
  wire fch_n_50;
  wire fch_n_51;
  wire fch_n_52;
  wire fch_n_53;
  wire fch_n_54;
  wire fch_n_55;
  wire fch_n_56;
  wire fch_n_57;
  wire fch_n_58;
  wire fch_n_59;
  wire fch_n_60;
  wire fch_n_61;
  wire fch_n_62;
  wire fch_n_63;
  wire fch_n_64;
  wire fch_n_65;
  wire fch_n_66;
  wire fch_n_67;
  wire fch_n_68;
  wire fch_n_92;
  wire fch_n_98;
  wire fch_n_99;
  wire [15:0]fch_pc;
  wire [15:0]fdat;
  wire irq;
  wire [1:0]irq_lev;
  wire [5:0]irq_vec;
  wire [7:1]\ivec/p_0_in ;
  wire mem_n_10;
  wire mem_n_11;
  wire mem_n_12;
  wire mem_n_5;
  wire mem_n_6;
  wire mem_n_7;
  wire mem_n_8;
  wire mem_n_9;
  wire [7:4]p_0_in;
  wire [2:0]read_cyc;
  wire rgf_iv_ve;
  wire rgf_n_0;
  wire rgf_n_1;
  wire rgf_n_10;
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
  wire rgf_n_128;
  wire rgf_n_129;
  wire rgf_n_13;
  wire rgf_n_14;
  wire rgf_n_140;
  wire rgf_n_141;
  wire rgf_n_142;
  wire rgf_n_143;
  wire rgf_n_144;
  wire rgf_n_145;
  wire rgf_n_146;
  wire rgf_n_147;
  wire rgf_n_148;
  wire rgf_n_149;
  wire rgf_n_15;
  wire rgf_n_150;
  wire rgf_n_151;
  wire rgf_n_152;
  wire rgf_n_153;
  wire rgf_n_154;
  wire rgf_n_155;
  wire rgf_n_156;
  wire rgf_n_157;
  wire rgf_n_158;
  wire rgf_n_159;
  wire rgf_n_160;
  wire rgf_n_161;
  wire rgf_n_162;
  wire rgf_n_163;
  wire rgf_n_164;
  wire rgf_n_165;
  wire rgf_n_166;
  wire rgf_n_167;
  wire rgf_n_168;
  wire rgf_n_169;
  wire rgf_n_170;
  wire rgf_n_171;
  wire rgf_n_172;
  wire rgf_n_173;
  wire rgf_n_174;
  wire rgf_n_175;
  wire rgf_n_176;
  wire rgf_n_177;
  wire rgf_n_178;
  wire rgf_n_179;
  wire rgf_n_180;
  wire rgf_n_181;
  wire rgf_n_182;
  wire rgf_n_183;
  wire rgf_n_2;
  wire rgf_n_20;
  wire rgf_n_201;
  wire rgf_n_202;
  wire rgf_n_203;
  wire rgf_n_204;
  wire rgf_n_205;
  wire rgf_n_206;
  wire rgf_n_207;
  wire rgf_n_208;
  wire rgf_n_209;
  wire rgf_n_21;
  wire rgf_n_3;
  wire rgf_n_4;
  wire rgf_n_5;
  wire rgf_n_6;
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
  wire rgf_n_9;
  wire [3:0]rgf_sr_flag;
  wire [1:0]rgf_sr_ie;
  wire rgf_sr_nh;
  wire rst_n;
  wire [7:0]sp_dec_0;
  wire [7:0]\sptr/p_0_in ;
  wire [15:0]\sptr/sp__0 ;
  wire [1:0]sr_bank;
  wire [7:1]\sreg/p_2_in ;
  wire [2:0]stat;
  wire [2:0]stat_nx;
  wire [8:0]tnsn_dsp_a;
  wire [8:0]tnsn_dsp_b;
  wire [17:0]tnsn_dsp_c;

  tnsn_alu alu
       (.DI({fch_n_199,fch_n_200,fch_n_201}),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .S({fch_n_195,fch_n_196,fch_n_197,fch_n_198}),
        .abus_0(abus_0[14:0]),
        .data0(data0),
        .\grn[0]_i_5 ({rgf_n_169,rgf_n_170,rgf_n_171,rgf_n_172}),
        .\grn[12]_i_2 ({fch_n_151,rgf_n_181,rgf_n_182,rgf_n_183}),
        .\grn[4]_i_5 ({rgf_n_173,rgf_n_174,rgf_n_175,rgf_n_176}),
        .\grn[8]_i_2 ({rgf_n_177,rgf_n_178,rgf_n_179,rgf_n_180}),
        .\iv_reg[7] ({fch_n_204,fch_n_205,fch_n_206,fch_n_207}),
        .\iv_reg[7]_0 ({fch_n_209,fch_n_210,fch_n_211,fch_n_212}),
        .\sr[4]_i_20 (fch_n_117),
        .\sr[6]_i_2 (fch_n_208),
        .\sr[6]_i_2_0 ({fch_n_202,fch_n_203}),
        .tout__1_carry(alu_n_25),
        .tout__1_carry__0_i_8({\art/p_0_in ,alu_n_5,alu_n_6,alu_n_7}),
        .tout__1_carry__1_i_3(\art/add/tout ));
  tnsn_fsm ctl
       (.D({stat_nx[2],stat_nx[0]}),
        .Q(stat),
        .SR(rgf_n_66),
        .\bdatw[11]_INST_0_i_36 (fch_n_21),
        .brdy(brdy),
        .brdy_0(ctl_n_5),
        .clk(clk),
        .cpuid(cpuid),
        .ctl_fetch_ext(ctl_n_31),
        .ctl_fetch_ext_fl_reg(fch_n_12),
        .ctl_sr_ldie(ctl_sr_ldie),
        .ctl_sr_upd(ctl_sr_upd),
        .fch_ir({fch_ir[15:14],fch_ir[11],fch_ir[1:0]}),
        .fch_irq_req(fch_irq_req),
        .\grn[7]_i_25 (fch_n_17),
        .\iv[15]_i_12 (fch_n_27),
        .\iv[15]_i_3 (fch_n_20),
        .out(rgf_iv_ve),
        .\sr_reg[12] (ctl_n_25),
        .\sr_reg[13] (ctl_n_24),
        .\sr_reg[14] (ctl_n_23),
        .\sr_reg[15] (ctl_n_22),
        .\sr_reg[15]_0 (\sreg/p_2_in [7:4]),
        .\stat_reg[0]_0 (ctl_n_7),
        .\stat_reg[0]_1 (ctl_n_8),
        .\stat_reg[0]_2 (ctl_n_9),
        .\stat_reg[0]_3 (ctl_n_11),
        .\stat_reg[0]_4 (ctl_n_12),
        .\stat_reg[0]_5 (ctl_n_13),
        .\stat_reg[0]_6 (ctl_n_15),
        .\stat_reg[0]_7 (ctl_n_18),
        .\stat_reg[1]_0 (ctl_n_0),
        .\stat_reg[1]_1 (ctl_n_4),
        .\stat_reg[1]_2 (ctl_n_6),
        .\stat_reg[1]_3 (ctl_n_19),
        .\stat_reg[1]_4 (ctl_n_21),
        .\stat_reg[1]_5 (ctl_n_26),
        .\stat_reg[1]_6 (ctl_n_27),
        .\stat_reg[1]_7 (fch_n_156),
        .\stat_reg[1]_8 (fch_n_13),
        .\stat_reg[1]_9 (fch_n_28),
        .\stat_reg[2]_0 (ctl_n_10),
        .\stat_reg[2]_1 (ctl_n_14),
        .\stat_reg[2]_2 (ctl_n_16),
        .\stat_reg[2]_3 (ctl_n_20),
        .\stat_reg[2]_4 (ctl_n_28),
        .\stat_reg[2]_5 (ctl_n_29),
        .\stat_reg[2]_6 (ctl_n_30));
  tnsn_fch fch
       (.D({stat_nx[2],stat_nx[0]}),
        .DI({fch_n_199,fch_n_200,fch_n_201}),
        .E({fch_n_190,fch_n_191}),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .Q(stat),
        .S({fch_n_195,fch_n_196,fch_n_197,fch_n_198}),
        .SR(rgf_n_66),
        .abus_0(abus_0),
        .abus_sel_cr({abus_sel_cr[5],abus_sel_cr[3:0]}),
        .badr(badr),
        .\badr[13]_INST_0_i_1 (fch_n_154),
        .\badr[15]_INST_0_i_1 (fch_n_151),
        .\badr[15]_INST_0_i_25_0 (ctl_n_28),
        .\badr[15]_INST_0_i_28_0 (ctl_n_16),
        .\badr[15]_INST_0_i_34_0 (ctl_n_14),
        .\badr[6]_INST_0_i_1 ({fch_n_209,fch_n_210,fch_n_211,fch_n_212}),
        .\badr[7]_INST_0_i_1 ({fch_n_202,fch_n_203}),
        .\badr[7]_INST_0_i_1_0 ({fch_n_204,fch_n_205,fch_n_206,fch_n_207}),
        .bank_sel(bank_sel),
        .bbus_rn(bbus_rn),
        .bbus_sel_cr({bbus_sel_cr[5],bbus_sel_cr[3:0]}),
        .bcmd(bcmd[2]),
        .\bcmd[0]_0 (ctl_n_27),
        .\bcmd[1] (ctl_n_20),
        .bcmd_0_sp_1(ctl_n_6),
        .bdatr({bdatr[15:14],bdatr[12:8]}),
        .bdatw(bdatw),
        .\bdatw[10]_INST_0_i_1_0 (fch_n_147),
        .\bdatw[11]_INST_0_i_1_0 ({rgf_n_8,rgf_n_9,rgf_n_10,rgf_n_11}),
        .\bdatw[11]_INST_0_i_1_1 ({rgf_n_12,rgf_n_13,rgf_n_14,rgf_n_15}),
        .\bdatw[11]_INST_0_i_41 (rgf_n_63),
        .\bdatw[11]_INST_0_i_4_0 ({rgf_n_4,rgf_n_5,rgf_n_6,rgf_n_7}),
        .\bdatw[11]_INST_0_i_4_1 ({rgf_n_0,rgf_n_1,rgf_n_2,rgf_n_3}),
        .\bdatw[12]_INST_0_i_2_0 (rgf_n_126),
        .\bdatw[12]_INST_0_i_2_1 (rgf_n_114),
        .\bdatw[12]_INST_0_i_2_2 (rgf_n_106),
        .\bdatw[13]_INST_0_i_2_0 (rgf_n_127),
        .\bdatw[13]_INST_0_i_2_1 (rgf_n_115),
        .\bdatw[13]_INST_0_i_2_2 (rgf_n_107),
        .\bdatw[14]_INST_0_i_2_0 (rgf_n_128),
        .\bdatw[14]_INST_0_i_2_1 (rgf_n_116),
        .\bdatw[14]_INST_0_i_2_2 (rgf_n_108),
        .\bdatw[15]_INST_0_i_15_0 (fch_n_13),
        .\bdatw[15]_INST_0_i_3_0 (rgf_n_129),
        .\bdatw[15]_INST_0_i_3_1 (rgf_n_117),
        .\bdatw[15]_INST_0_i_3_2 (rgf_n_109),
        .\bdatw[15]_INST_0_i_8_0 (ctl_n_21),
        .\bdatw[8]_INST_0_i_15_0 (ctl_n_26),
        .\bdatw[9]_INST_0_i_1_0 (fch_n_148),
        .\bdatw[9]_INST_0_i_1_1 (fch_n_149),
        .\bdatw[9]_INST_0_i_1_2 (fch_n_150),
        .bdatw_10_sp_1(rgf_n_124),
        .bdatw_11_sp_1(rgf_n_125),
        .bdatw_8_sp_1(rgf_n_122),
        .bdatw_9_sp_1(rgf_n_123),
        .brdy(brdy),
        .brdy_0(fch_n_173),
        .brdy_1(fch_n_214),
        .brdy_2(fch_n_215),
        .cbus({cbus[15:14],cbus[12:0]}),
        .clk(clk),
        .cpuid(cpuid),
        .ctl_fetch_ext(ctl_n_31),
        .ctl_fetch_fl_reg_0(ctl_fetch),
        .ctl_fetch_fl_reg_1(rgf_n_64),
        .ctl_fetch_inferred_i_2_0(ctl_n_15),
        .ctl_fetch_inferred_i_4_0(ctl_n_9),
        .ctl_selc_rn(ctl_selc_rn),
        .ctl_selc_rnh(ctl_selc_rnh),
        .ctl_sp_dec(ctl_sp_dec),
        .ctl_sp_inc(ctl_sp_inc),
        .ctl_sr_ldie(ctl_sr_ldie),
        .ctl_sr_upd(ctl_sr_upd),
        .data0(data0),
        .\eir_fl_reg[1]_0 (ctl_n_13),
        .fch_irq_req(fch_irq_req),
        .fch_pc(fch_pc),
        .fdat(fdat),
        .gr0_bus1(\bank/gr0_bus1 ),
        .gr1_bus1(\bank/gr1_bus1 ),
        .gr2_bus1(\bank/gr2_bus1 ),
        .gr3_bus1(\bank/gr3_bus1 ),
        .gr4_bus1(\bank/gr4_bus1 ),
        .gr5_bus1(\bank/gr5_bus1 ),
        .gr6_bus1(\bank/gr6_bus1 ),
        .gr7_bus1(\bank/gr7_bus1 ),
        .\grn[15]_i_3__0_0 (fch_n_152),
        .\grn[15]_i_3__0_1 (fch_n_155),
        .\grn[1]_i_6_0 (rgf_n_208),
        .\grn[1]_i_6_1 (rgf_n_204),
        .\grn[1]_i_8_0 (rgf_n_164),
        .\grn[1]_i_9_0 (rgf_n_167),
        .\grn[2]_i_8_0 (rgf_n_151),
        .\grn[2]_i_8_1 (rgf_n_150),
        .\grn[4]_i_19 ({\ivec/p_0_in [7],\ivec/p_0_in [3:1],rgf_iv_ve}),
        .\grn[4]_i_20_0 ({\sptr/p_0_in [7],\sptr/p_0_in [3:0]}),
        .\grn[4]_i_6_0 (rgf_n_202),
        .\grn[4]_i_6_1 (rgf_n_153),
        .\grn[4]_i_6_2 (rgf_n_155),
        .\grn[4]_i_9_0 (rgf_n_160),
        .\grn[5]_i_6_0 (rgf_n_156),
        .\grn[5]_i_7_0 (rgf_n_159),
        .\grn[6]_i_10_0 (rgf_n_168),
        .\grn[6]_i_6_0 (rgf_n_207),
        .\grn[6]_i_6_1 (rgf_n_145),
        .\grn[7]_i_2_0 (cbus_sel_cr),
        .\grn[7]_i_3_0 (cbus_sel_cr__0),
        .\grn[7]_i_3_1 (ctl_n_29),
        .\grn[7]_i_4_0 (fch_n_52),
        .\grn[7]_i_4_1 (ctl_n_8),
        .in0(ctl_fetch),
        .irq(irq),
        .irq_lev(irq_lev),
        .irq_vec(irq_vec),
        .\iv[15]_i_10_0 (ctl_n_12),
        .\iv[15]_i_2_0 (fch_n_153),
        .\iv[15]_i_4_0 (ctl_n_5),
        .\iv_reg[0] (ctl_n_0),
        .\iv_reg[0]_0 (rgf_n_205),
        .\iv_reg[0]_1 (mem_n_5),
        .\iv_reg[11] (rgf_n_144),
        .\iv_reg[15] (rgf_n_140),
        .\iv_reg[1] (mem_n_6),
        .\iv_reg[2] (mem_n_7),
        .\iv_reg[3] (rgf_n_141),
        .\iv_reg[3]_0 (mem_n_8),
        .\iv_reg[4] (mem_n_9),
        .\iv_reg[5] (mem_n_10),
        .\iv_reg[6] (mem_n_11),
        .\iv_reg[7] (fch_n_92),
        .\iv_reg[7]_0 ({\art/p_0_in ,alu_n_5,alu_n_6,alu_n_7}),
        .\iv_reg[7]_1 (rgf_n_143),
        .\iv_reg[7]_2 (rgf_n_146),
        .\iv_reg[7]_3 (mem_n_12),
        .out({fch_ir[15:11],fch_ir[1:0]}),
        .p_0_in(p_0_in),
        .\pc_reg[13] (cbus[13]),
        .\pc_reg[15] ({fch_n_53,fch_n_54,fch_n_55,fch_n_56,fch_n_57,fch_n_58,fch_n_59,fch_n_60,fch_n_61,fch_n_62,fch_n_63,fch_n_64,fch_n_65,fch_n_66,fch_n_67,fch_n_68}),
        .\pc_reg[15]_0 (fadr),
        .read_cyc(read_cyc),
        .\read_cyc_reg[2] ({\sptr/sp__0 [15:14],\sptr/sp__0 [12:0]}),
        .rst_n(rst_n),
        .rst_n_fl_reg_0(fch_n_17),
        .rst_n_fl_reg_1(fch_n_20),
        .rst_n_fl_reg_2(fch_n_28),
        .rst_n_fl_reg_3(bbus_0),
        .sp_dec_0({sp_dec_0[7],sp_dec_0[3:0]}),
        .\sp_reg[10] (rgf_n_76),
        .\sp_reg[11] (rgf_n_77),
        .\sp_reg[12] (rgf_n_78),
        .\sp_reg[14] (rgf_n_80),
        .\sp_reg[15] (rgf_n_81),
        .\sp_reg[1] (rgf_n_67),
        .\sp_reg[2] (rgf_n_68),
        .\sp_reg[3] (rgf_n_69),
        .\sp_reg[4] (rgf_n_70),
        .\sp_reg[5] (rgf_n_71),
        .\sp_reg[6] (rgf_n_72),
        .\sp_reg[7] (rgf_n_73),
        .\sp_reg[8] (rgf_n_74),
        .\sp_reg[9] (rgf_n_75),
        .\sr[4]_i_12_0 (rgf_n_163),
        .\sr[4]_i_14_0 (rgf_n_166),
        .\sr[4]_i_3_0 (rgf_n_147),
        .\sr[4]_i_3_1 (rgf_n_209),
        .\sr[4]_i_3_2 (rgf_n_154),
        .\sr[4]_i_4_0 (rgf_n_206),
        .\sr[4]_i_4_1 (rgf_n_203),
        .\sr[4]_i_5_0 (rgf_n_148),
        .\sr[4]_i_5_1 (rgf_n_161),
        .\sr[4]_i_5_2 (rgf_n_152),
        .\sr[4]_i_5_3 (rgf_n_149),
        .\sr[4]_i_7_0 (alu_n_25),
        .\sr[4]_i_9_0 (rgf_n_158),
        .\sr[4]_i_9_1 (rgf_n_157),
        .\sr[4]_i_9_2 (rgf_n_162),
        .\sr[5]_i_2_0 (rgf_n_201),
        .\sr[6]_i_3_0 (rgf_n_142),
        .\sr[6]_i_3_1 (rgf_n_165),
        .\sr_reg[0] (fch_n_98),
        .\sr_reg[0]_0 (fch_n_99),
        .\sr_reg[0]_1 (fch_n_100),
        .\sr_reg[0]_2 (fch_n_101),
        .\sr_reg[0]_3 (fch_n_102),
        .\sr_reg[0]_4 (fch_n_103),
        .\sr_reg[0]_5 (fch_n_104),
        .\sr_reg[0]_6 (fch_n_110),
        .\sr_reg[0]_7 (fch_n_116),
        .\sr_reg[10] (fch_n_112),
        .\sr_reg[11] (fch_n_111),
        .\sr_reg[12] (ctl_n_25),
        .\sr_reg[13] (ctl_n_24),
        .\sr_reg[14] (ctl_n_23),
        .\sr_reg[15] ({fch_n_48,fch_n_49,fch_n_50,fch_n_51}),
        .\sr_reg[15]_0 ({\sreg/p_2_in [7:4],rgf_n_20,rgf_n_21,\sreg/p_2_in [1],rgf_sr_nh,rgf_sr_flag,rgf_sr_ie,sr_bank}),
        .\sr_reg[15]_1 (ctl_n_22),
        .\sr_reg[1] (fch_n_115),
        .\sr_reg[2] (fch_n_29),
        .\sr_reg[3] (fch_n_46),
        .\sr_reg[4] (fch_n_27),
        .\sr_reg[4]_0 (fch_n_194),
        .\sr_reg[5] (fch_n_193),
        .\sr_reg[6] (fch_n_47),
        .\sr_reg[6]_0 (\art/add/tout ),
        .\sr_reg[7] (fch_n_192),
        .\sr_reg[8] (fch_n_114),
        .\sr_reg[9] (fch_n_113),
        .\stat_reg[0] (acmd),
        .\stat_reg[0]_0 (bcmd[0]),
        .\stat_reg[0]_1 (ctl_n_18),
        .\stat_reg[0]_2 (ctl_n_4),
        .\stat_reg[1] (fch_n_12),
        .\stat_reg[1]_0 (bcmd[1]),
        .\stat_reg[1]_1 (fch_n_21),
        .\stat_reg[1]_2 (fch_n_156),
        .\stat_reg[2] (ctl_n_19),
        .\stat_reg[2]_0 (ctl_n_10),
        .\tnsn_dsp_a[7]_INST_0_i_19_0 (ctl_n_7),
        .\tnsn_dsp_a[7]_INST_0_i_2_0 (fch_n_119),
        .\tnsn_dsp_a[7]_INST_0_i_3_0 (fch_n_118),
        .\tnsn_dsp_a[7]_INST_0_i_3_1 (fch_n_145),
        .\tnsn_dsp_a[7]_INST_0_i_7_0 (ctl_n_30),
        .\tnsn_dsp_a[7]_INST_0_i_7_1 (rgf_n_65),
        .\tnsn_dsp_a[7]_INST_0_i_8_0 (ctl_n_11),
        .\tnsn_dsp_a[8]_INST_0_i_5_0 (fch_n_135),
        .tnsn_dsp_b(tnsn_dsp_b),
        .\tnsn_dsp_b[0]_0 (rgf_n_118),
        .\tnsn_dsp_b[1]_0 (rgf_n_119),
        .\tnsn_dsp_b[2]_0 (rgf_n_120),
        .\tnsn_dsp_b[3]_0 (rgf_n_121),
        .tnsn_dsp_b_0_sp_1(rgf_n_110),
        .tnsn_dsp_b_1_sp_1(rgf_n_111),
        .tnsn_dsp_b_2_sp_1(rgf_n_112),
        .tnsn_dsp_b_3_sp_1(rgf_n_113),
        .tnsn_dsp_c(tnsn_dsp_c[15:0]),
        .tnsn_dsp_c_13_sp_1(fch_n_146),
        .tout__1_carry_i_8_0(fch_n_208),
        .tout__1_carry_i_9_0(fch_n_117));
  tnsn_mem mem
       (.D(\sptr/sp__0 [13]),
        .SR(rgf_n_66),
        .bdatr(bdatr),
        .bdatr_10_sp_1(mem_n_7),
        .bdatr_11_sp_1(mem_n_8),
        .bdatr_12_sp_1(mem_n_9),
        .bdatr_13_sp_1(mem_n_10),
        .bdatr_14_sp_1(mem_n_11),
        .bdatr_15_sp_1(mem_n_12),
        .bdatr_8_sp_1(mem_n_5),
        .bdatr_9_sp_1(mem_n_6),
        .clk(clk),
        .\iv_reg[13] (fch_n_146),
        .\iv_reg[13]_0 (fch_n_154),
        .read_cyc(read_cyc),
        .\read_cyc_reg[0] (fch_n_173),
        .\read_cyc_reg[1] (fch_n_215),
        .\read_cyc_reg[2] (cbus[13]),
        .\read_cyc_reg[2]_0 (fch_n_214),
        .\sp_reg[13] (cbus_sel_cr__0),
        .\sp_reg[13]_0 (rgf_n_79));
  tnsn_rgf rgf
       (.D(cbus),
        .E({fch_n_190,fch_n_191}),
        .SR(rgf_n_66),
        .abus_0(abus_0),
        .abus_sel_cr({abus_sel_cr[5],abus_sel_cr[3:0]}),
        .\badr[0]_INST_0_i_1 (rgf_n_158),
        .\badr[2]_INST_0_i_1 (rgf_n_151),
        .\badr[2]_INST_0_i_1_0 (rgf_n_157),
        .\badr[6]_INST_0_i_1 (rgf_n_163),
        .bank_sel(bank_sel),
        .bbus_rn(bbus_rn),
        .bbus_sel_cr({bbus_sel_cr[5],bbus_sel_cr[3:0]}),
        .\bdatw[10]_INST_0_i_1 (rgf_n_201),
        .\bdatw[11]_INST_0_i_1 (rgf_n_146),
        .\bdatw[11]_INST_0_i_1_0 ({rgf_n_169,rgf_n_170,rgf_n_171,rgf_n_172}),
        .\bdatw[11]_INST_0_i_1_1 (fch_n_103),
        .\bdatw[11]_INST_0_i_1_2 (fch_n_104),
        .\bdatw[11]_INST_0_i_2 ({rgf_n_177,rgf_n_178,rgf_n_179,rgf_n_180}),
        .\bdatw[12]_INST_0_i_4 (fch_n_100),
        .\bdatw[12]_INST_0_i_4_0 (fch_n_101),
        .\bdatw[14]_INST_0_i_2 ({rgf_n_181,rgf_n_182,rgf_n_183}),
        .\bdatw[15]_INST_0_i_15 (fch_ir[14:12]),
        .\bdatw[15]_INST_0_i_2 ({rgf_n_173,rgf_n_174,rgf_n_175,rgf_n_176}),
        .\bdatw[8]_INST_0_i_1 (rgf_n_150),
        .\bdatw[8]_INST_0_i_10 (fch_n_98),
        .\bdatw[8]_INST_0_i_10_0 (fch_n_99),
        .\bdatw[8]_INST_0_i_1_0 (rgf_n_155),
        .\bdatw[8]_INST_0_i_1_1 (rgf_n_160),
        .\bdatw[8]_INST_0_i_1_2 (rgf_n_162),
        .\bdatw[8]_INST_0_i_1_3 (rgf_n_164),
        .\bdatw[8]_INST_0_i_1_4 (rgf_n_165),
        .\bdatw[8]_INST_0_i_2 (fch_n_102),
        .\bdatw[8]_INST_0_i_2_0 (fch_n_110),
        .cbus1_carry__2(bbus_0),
        .clk(clk),
        .ctl_selc_rn(ctl_selc_rn),
        .ctl_selc_rnh(ctl_selc_rnh),
        .ctl_sp_dec(ctl_sp_dec),
        .ctl_sp_inc(ctl_sp_inc),
        .fch_irq_req(fch_irq_req),
        .fch_pc(fch_pc),
        .gr0_bus1(\bank/gr0_bus1 ),
        .gr1_bus1(\bank/gr1_bus1 ),
        .gr2_bus1(\bank/gr2_bus1 ),
        .gr3_bus1(\bank/gr3_bus1 ),
        .gr4_bus1(\bank/gr4_bus1 ),
        .gr5_bus1(\bank/gr5_bus1 ),
        .gr6_bus1(\bank/gr6_bus1 ),
        .gr7_bus1(\bank/gr7_bus1 ),
        .\grn[0]_i_6 (fch_n_119),
        .\grn[4]_i_11 (rgf_n_148),
        .\grn[4]_i_16 (fch_n_92),
        .\grn[5]_i_17 (rgf_n_206),
        .\grn[6]_i_13 (rgf_n_142),
        .\grn[6]_i_13_0 (rgf_n_202),
        .\grn[6]_i_13_1 (rgf_n_203),
        .\grn[6]_i_13_2 (rgf_n_204),
        .\grn[6]_i_19 (rgf_n_207),
        .\grn[6]_i_20 (rgf_n_208),
        .\grn[6]_i_21 (rgf_n_149),
        .\grn[7]_i_28 (rgf_n_141),
        .\grn[7]_i_30 (rgf_n_143),
        .\grn[7]_i_34 (rgf_n_156),
        .\grn[7]_i_36 (rgf_n_209),
        .\grn[7]_i_38 (rgf_n_147),
        .\grn[7]_i_39 (rgf_n_161),
        .\grn[7]_i_8 (fch_n_148),
        .\grn[7]_i_8_0 (acmd),
        .\grn[7]_i_8_1 (fch_n_150),
        .\grn_reg[0] (rgf_n_110),
        .\grn_reg[0]_0 (rgf_n_118),
        .\grn_reg[12] (rgf_n_106),
        .\grn_reg[12]_0 (rgf_n_114),
        .\grn_reg[13] (rgf_n_107),
        .\grn_reg[13]_0 (rgf_n_115),
        .\grn_reg[14] (rgf_n_108),
        .\grn_reg[14]_0 (rgf_n_116),
        .\grn_reg[15] (rgf_n_109),
        .\grn_reg[15]_0 (rgf_n_117),
        .\grn_reg[1] (rgf_n_111),
        .\grn_reg[1]_0 (rgf_n_119),
        .\grn_reg[2] (rgf_n_112),
        .\grn_reg[2]_0 (rgf_n_120),
        .\grn_reg[3] ({rgf_n_4,rgf_n_5,rgf_n_6,rgf_n_7}),
        .\grn_reg[3]_0 ({rgf_n_8,rgf_n_9,rgf_n_10,rgf_n_11}),
        .\grn_reg[3]_1 ({rgf_n_12,rgf_n_13,rgf_n_14,rgf_n_15}),
        .\grn_reg[3]_2 (rgf_n_113),
        .\grn_reg[3]_3 (rgf_n_121),
        .\grn_reg[7] (fch_n_152),
        .\grn_reg[7]_0 (fch_n_153),
        .\grn_reg[8] (fch_n_155),
        .\grn_reg[8]_0 (fch_n_52),
        .irq(irq),
        .irq_lev(irq_lev),
        .\iv_reg[0] (cbus_sel_cr),
        .\iv_reg[7] ({\ivec/p_0_in [7],\ivec/p_0_in [3:1],rgf_iv_ve}),
        .\iv_reg[7]_0 (rgf_n_166),
        .out({rgf_n_0,rgf_n_1,rgf_n_2,rgf_n_3}),
        .p_0_in(p_0_in),
        .\pc_reg[15] (fadr),
        .\pc_reg[15]_0 ({fch_n_53,fch_n_54,fch_n_55,fch_n_56,fch_n_57,fch_n_58,fch_n_59,fch_n_60,fch_n_61,fch_n_62,fch_n_63,fch_n_64,fch_n_65,fch_n_66,fch_n_67,fch_n_68}),
        .rst_n(rst_n),
        .\sp_reg[10] (rgf_n_76),
        .\sp_reg[11] (rgf_n_77),
        .\sp_reg[12] (rgf_n_78),
        .\sp_reg[13] (rgf_n_79),
        .\sp_reg[14] (rgf_n_80),
        .\sp_reg[15] (rgf_n_81),
        .\sp_reg[15]_0 (\sptr/sp__0 ),
        .\sp_reg[1] (rgf_n_67),
        .\sp_reg[2] (rgf_n_68),
        .\sp_reg[3] (rgf_n_69),
        .\sp_reg[4] (rgf_n_70),
        .\sp_reg[5] (rgf_n_71),
        .\sp_reg[6] (rgf_n_72),
        .\sp_reg[7] ({\sptr/p_0_in [7],\sptr/p_0_in [3:0]}),
        .\sp_reg[7]_0 ({sp_dec_0[7],sp_dec_0[3:0]}),
        .\sp_reg[7]_1 (rgf_n_73),
        .\sp_reg[8] (rgf_n_74),
        .\sp_reg[9] (rgf_n_75),
        .\sr[4]_i_10 (fch_n_149),
        .\sr[4]_i_10_0 (fch_n_147),
        .\sr_reg[0] (fch_n_116),
        .\sr_reg[10] (rgf_n_124),
        .\sr_reg[10]_0 (fch_n_112),
        .\sr_reg[11] (rgf_n_125),
        .\sr_reg[11]_0 (fch_n_111),
        .\sr_reg[12] (rgf_n_126),
        .\sr_reg[13] (rgf_n_127),
        .\sr_reg[14] (rgf_n_128),
        .\sr_reg[15] ({\sreg/p_2_in [7:4],rgf_n_20,rgf_n_21,\sreg/p_2_in [1],rgf_sr_nh,rgf_sr_flag,rgf_sr_ie,sr_bank}),
        .\sr_reg[15]_0 (rgf_n_129),
        .\sr_reg[15]_1 ({fch_n_48,fch_n_49,fch_n_50,fch_n_51}),
        .\sr_reg[1] (fch_n_115),
        .\sr_reg[2] (fch_n_29),
        .\sr_reg[3] (fch_n_46),
        .\sr_reg[4] (fch_n_194),
        .\sr_reg[5] (rgf_n_63),
        .\sr_reg[5]_0 (rgf_n_64),
        .\sr_reg[5]_1 (rgf_n_65),
        .\sr_reg[5]_2 (fch_n_193),
        .\sr_reg[6] (rgf_n_145),
        .\sr_reg[6]_0 (rgf_n_152),
        .\sr_reg[6]_1 (rgf_n_153),
        .\sr_reg[6]_2 (rgf_n_154),
        .\sr_reg[6]_3 (rgf_n_159),
        .\sr_reg[6]_4 (rgf_n_167),
        .\sr_reg[6]_5 (rgf_n_168),
        .\sr_reg[6]_6 (rgf_n_205),
        .\sr_reg[6]_7 (fch_n_47),
        .\sr_reg[7] (fch_n_192),
        .\sr_reg[8] (rgf_n_122),
        .\sr_reg[8]_0 (fch_n_114),
        .\sr_reg[9] (rgf_n_123),
        .\sr_reg[9]_0 (fch_n_113),
        .tnsn_dsp_a(tnsn_dsp_a),
        .\tnsn_dsp_a[7]_INST_0_i_2 (rgf_n_144),
        .\tnsn_dsp_a[8]_0 (fch_n_145),
        .tnsn_dsp_a_7_sp_1(fch_n_118),
        .tnsn_dsp_a_8_sp_1(fch_n_135),
        .\tnsn_dsp_b[8]_INST_0_i_1 (rgf_n_140));
endmodule

module tnsn_alu
   (O,
    tout__1_carry__0_i_8,
    tout__1_carry__1_i_3,
    data0,
    tout__1_carry,
    DI,
    S,
    \iv_reg[7] ,
    \iv_reg[7]_0 ,
    \sr[6]_i_2 ,
    \sr[6]_i_2_0 ,
    abus_0,
    \grn[0]_i_5 ,
    \grn[4]_i_5 ,
    \grn[8]_i_2 ,
    \grn[12]_i_2 ,
    \sr[4]_i_20 );
  output [3:0]O;
  output [3:0]tout__1_carry__0_i_8;
  output [0:0]tout__1_carry__1_i_3;
  output [15:0]data0;
  output tout__1_carry;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\iv_reg[7] ;
  input [3:0]\iv_reg[7]_0 ;
  input [0:0]\sr[6]_i_2 ;
  input [1:0]\sr[6]_i_2_0 ;
  input [14:0]abus_0;
  input [3:0]\grn[0]_i_5 ;
  input [3:0]\grn[4]_i_5 ;
  input [3:0]\grn[8]_i_2 ;
  input [3:0]\grn[12]_i_2 ;
  input \sr[4]_i_20 ;

  wire [2:0]DI;
  wire [3:0]O;
  wire [3:0]S;
  wire [14:0]abus_0;
  wire [15:0]data0;
  wire [3:0]\grn[0]_i_5 ;
  wire [3:0]\grn[12]_i_2 ;
  wire [3:0]\grn[4]_i_5 ;
  wire [3:0]\grn[8]_i_2 ;
  wire [3:0]\iv_reg[7] ;
  wire [3:0]\iv_reg[7]_0 ;
  wire \sr[4]_i_20 ;
  wire [0:0]\sr[6]_i_2 ;
  wire [1:0]\sr[6]_i_2_0 ;
  wire tout__1_carry;
  wire [3:0]tout__1_carry__0_i_8;
  wire [0:0]tout__1_carry__1_i_3;

  tnsn_alu_art art
       (.DI(DI),
        .O(O),
        .S(S),
        .abus_0(abus_0),
        .data0(data0),
        .\grn[0]_i_5 (\grn[0]_i_5 ),
        .\grn[12]_i_2 (\grn[12]_i_2 ),
        .\grn[4]_i_5 (\grn[4]_i_5 ),
        .\grn[8]_i_2 (\grn[8]_i_2 ),
        .\iv_reg[7] (\iv_reg[7] ),
        .\iv_reg[7]_0 (\iv_reg[7]_0 ),
        .\sr[4]_i_20 (\sr[4]_i_20 ),
        .\sr[6]_i_2 (\sr[6]_i_2 ),
        .\sr[6]_i_2_0 (\sr[6]_i_2_0 ),
        .tout__1_carry(tout__1_carry),
        .tout__1_carry__0_i_8(tout__1_carry__0_i_8),
        .tout__1_carry__1_i_3(tout__1_carry__1_i_3));
endmodule

module tnsn_alu_add
   (O,
    tout__1_carry__0_i_8,
    tout__1_carry__1_i_3,
    tout__1_carry_0,
    DI,
    S,
    \iv_reg[7] ,
    \iv_reg[7]_0 ,
    \sr[6]_i_2 ,
    \sr[6]_i_2_0 ,
    \sr[4]_i_20 );
  output [3:0]O;
  output [3:0]tout__1_carry__0_i_8;
  output [0:0]tout__1_carry__1_i_3;
  output tout__1_carry_0;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\iv_reg[7] ;
  input [3:0]\iv_reg[7]_0 ;
  input [0:0]\sr[6]_i_2 ;
  input [1:0]\sr[6]_i_2_0 ;
  input \sr[4]_i_20 ;

  wire \<const0> ;
  wire [2:0]DI;
  wire [3:0]O;
  wire [3:0]S;
  wire [3:0]\iv_reg[7] ;
  wire [3:0]\iv_reg[7]_0 ;
  wire \sr[4]_i_20 ;
  wire \sr[4]_i_35_n_0 ;
  wire [0:0]\sr[6]_i_2 ;
  wire [1:0]\sr[6]_i_2_0 ;
  wire tout__1_carry_0;
  wire [3:0]tout__1_carry__0_i_8;
  wire tout__1_carry__0_n_0;
  wire tout__1_carry__0_n_1;
  wire tout__1_carry__0_n_2;
  wire tout__1_carry__0_n_3;
  wire [0:0]tout__1_carry__1_i_3;
  wire tout__1_carry__1_n_3;
  wire tout__1_carry_n_0;
  wire tout__1_carry_n_1;
  wire tout__1_carry_n_2;
  wire tout__1_carry_n_3;
  wire [3:0]NLW_tout__1_carry__1_O_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sr[4]_i_33 
       (.I0(\sr[4]_i_20 ),
        .I1(tout__1_carry__0_i_8[3]),
        .I2(\sr[4]_i_35_n_0 ),
        .I3(O[3]),
        .I4(O[2]),
        .I5(O[1]),
        .O(tout__1_carry_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_35 
       (.I0(tout__1_carry__0_i_8[2]),
        .I1(tout__1_carry__0_i_8[1]),
        .I2(O[0]),
        .I3(tout__1_carry__0_i_8[0]),
        .O(\sr[4]_i_35_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry
       (.CI(\<const0> ),
        .CO({tout__1_carry_n_0,tout__1_carry_n_1,tout__1_carry_n_2,tout__1_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({DI,\<const0> }),
        .O(O),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__0
       (.CI(tout__1_carry_n_0),
        .CO({tout__1_carry__0_n_0,tout__1_carry__0_n_1,tout__1_carry__0_n_2,tout__1_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(\iv_reg[7] ),
        .O(tout__1_carry__0_i_8),
        .S(\iv_reg[7]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__1
       (.CI(tout__1_carry__0_n_0),
        .CO(tout__1_carry__1_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\sr[6]_i_2 }),
        .O({tout__1_carry__1_i_3,NLW_tout__1_carry__1_O_UNCONNECTED[0]}),
        .S({\<const0> ,\<const0> ,\sr[6]_i_2_0 }));
endmodule

module tnsn_alu_art
   (O,
    tout__1_carry__0_i_8,
    tout__1_carry__1_i_3,
    data0,
    tout__1_carry,
    DI,
    S,
    \iv_reg[7] ,
    \iv_reg[7]_0 ,
    \sr[6]_i_2 ,
    \sr[6]_i_2_0 ,
    abus_0,
    \grn[0]_i_5 ,
    \grn[4]_i_5 ,
    \grn[8]_i_2 ,
    \grn[12]_i_2 ,
    \sr[4]_i_20 );
  output [3:0]O;
  output [3:0]tout__1_carry__0_i_8;
  output [0:0]tout__1_carry__1_i_3;
  output [15:0]data0;
  output tout__1_carry;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\iv_reg[7] ;
  input [3:0]\iv_reg[7]_0 ;
  input [0:0]\sr[6]_i_2 ;
  input [1:0]\sr[6]_i_2_0 ;
  input [14:0]abus_0;
  input [3:0]\grn[0]_i_5 ;
  input [3:0]\grn[4]_i_5 ;
  input [3:0]\grn[8]_i_2 ;
  input [3:0]\grn[12]_i_2 ;
  input \sr[4]_i_20 ;

  wire \<const0> ;
  wire [2:0]DI;
  wire [3:0]O;
  wire [3:0]S;
  wire [14:0]abus_0;
  wire cbus1_carry__0_n_0;
  wire cbus1_carry__0_n_1;
  wire cbus1_carry__0_n_2;
  wire cbus1_carry__0_n_3;
  wire cbus1_carry__1_n_0;
  wire cbus1_carry__1_n_1;
  wire cbus1_carry__1_n_2;
  wire cbus1_carry__1_n_3;
  wire cbus1_carry__2_n_1;
  wire cbus1_carry__2_n_2;
  wire cbus1_carry__2_n_3;
  wire cbus1_carry_n_0;
  wire cbus1_carry_n_1;
  wire cbus1_carry_n_2;
  wire cbus1_carry_n_3;
  wire [15:0]data0;
  wire [3:0]\grn[0]_i_5 ;
  wire [3:0]\grn[12]_i_2 ;
  wire [3:0]\grn[4]_i_5 ;
  wire [3:0]\grn[8]_i_2 ;
  wire [3:0]\iv_reg[7] ;
  wire [3:0]\iv_reg[7]_0 ;
  wire \sr[4]_i_20 ;
  wire [0:0]\sr[6]_i_2 ;
  wire [1:0]\sr[6]_i_2_0 ;
  wire tout__1_carry;
  wire [3:0]tout__1_carry__0_i_8;
  wire [0:0]tout__1_carry__1_i_3;

  GND GND
       (.G(\<const0> ));
  tnsn_alu_add add
       (.DI(DI),
        .O(O),
        .S(S),
        .\iv_reg[7] (\iv_reg[7] ),
        .\iv_reg[7]_0 (\iv_reg[7]_0 ),
        .\sr[4]_i_20 (\sr[4]_i_20 ),
        .\sr[6]_i_2 (\sr[6]_i_2 ),
        .\sr[6]_i_2_0 (\sr[6]_i_2_0 ),
        .tout__1_carry_0(tout__1_carry),
        .tout__1_carry__0_i_8(tout__1_carry__0_i_8),
        .tout__1_carry__1_i_3(tout__1_carry__1_i_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cbus1_carry
       (.CI(\<const0> ),
        .CO({cbus1_carry_n_0,cbus1_carry_n_1,cbus1_carry_n_2,cbus1_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI(abus_0[3:0]),
        .O(data0[3:0]),
        .S(\grn[0]_i_5 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cbus1_carry__0
       (.CI(cbus1_carry_n_0),
        .CO({cbus1_carry__0_n_0,cbus1_carry__0_n_1,cbus1_carry__0_n_2,cbus1_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(abus_0[7:4]),
        .O(data0[7:4]),
        .S(\grn[4]_i_5 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cbus1_carry__1
       (.CI(cbus1_carry__0_n_0),
        .CO({cbus1_carry__1_n_0,cbus1_carry__1_n_1,cbus1_carry__1_n_2,cbus1_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(abus_0[11:8]),
        .O(data0[11:8]),
        .S(\grn[8]_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cbus1_carry__2
       (.CI(cbus1_carry__1_n_0),
        .CO({cbus1_carry__2_n_1,cbus1_carry__2_n_2,cbus1_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,abus_0[14:12]}),
        .O(data0[15:12]),
        .S(\grn[12]_i_2 ));
endmodule

module tnsn_fch
   (.out({ir[15],ir[14],ir[13],ir[12],ir[11],ir[1],ir[0]}),
    ctl_selc_rn,
    D,
    \stat_reg[1] ,
    \bdatw[15]_INST_0_i_15_0 ,
    \stat_reg[0] ,
    ctl_sr_upd,
    rst_n_fl_reg_0,
    ctl_sp_dec,
    \stat_reg[1]_0 ,
    rst_n_fl_reg_1,
    \stat_reg[1]_1 ,
    ctl_sp_inc,
    \stat_reg[0]_0 ,
    ctl_selc_rnh,
    bcmd,
    in0,
    \sr_reg[4] ,
    rst_n_fl_reg_2,
    \sr_reg[2] ,
    \grn[7]_i_3_0 ,
    cbus,
    \sr_reg[3] ,
    \sr_reg[6] ,
    \sr_reg[15] ,
    \grn[7]_i_4_0 ,
    \pc_reg[15] ,
    \read_cyc_reg[2] ,
    gr7_bus1,
    gr4_bus1,
    gr3_bus1,
    gr0_bus1,
    gr2_bus1,
    gr1_bus1,
    gr6_bus1,
    gr5_bus1,
    \iv_reg[7] ,
    abus_sel_cr,
    \sr_reg[0] ,
    \sr_reg[0]_0 ,
    \sr_reg[0]_1 ,
    \sr_reg[0]_2 ,
    \sr_reg[0]_3 ,
    \sr_reg[0]_4 ,
    \sr_reg[0]_5 ,
    bbus_sel_cr,
    \sr_reg[0]_6 ,
    \sr_reg[11] ,
    \sr_reg[10] ,
    \sr_reg[9] ,
    \sr_reg[8] ,
    \sr_reg[1] ,
    \sr_reg[0]_7 ,
    tout__1_carry_i_9_0,
    \tnsn_dsp_a[7]_INST_0_i_3_0 ,
    \tnsn_dsp_a[7]_INST_0_i_2_0 ,
    rst_n_fl_reg_3,
    \tnsn_dsp_a[8]_INST_0_i_5_0 ,
    tnsn_dsp_b,
    \tnsn_dsp_a[7]_INST_0_i_3_1 ,
    .tnsn_dsp_c_13_sp_1(tnsn_dsp_c_13_sn_1),
    \bdatw[10]_INST_0_i_1_0 ,
    \bdatw[9]_INST_0_i_1_0 ,
    \bdatw[9]_INST_0_i_1_1 ,
    \bdatw[9]_INST_0_i_1_2 ,
    \badr[15]_INST_0_i_1 ,
    \grn[15]_i_3__0_0 ,
    \iv[15]_i_2_0 ,
    \badr[13]_INST_0_i_1 ,
    \grn[15]_i_3__0_1 ,
    \stat_reg[1]_2 ,
    bdatw,
    brdy_0,
    badr,
    E,
    \sr_reg[7] ,
    \sr_reg[5] ,
    \sr_reg[4]_0 ,
    S,
    DI,
    \badr[7]_INST_0_i_1 ,
    \badr[7]_INST_0_i_1_0 ,
    tout__1_carry_i_8_0,
    \badr[6]_INST_0_i_1 ,
    \grn[7]_i_2_0 ,
    brdy_1,
    brdy_2,
    fch_irq_req,
    clk,
    ctl_fetch_fl_reg_0,
    rst_n,
    ctl_fetch_ext,
    \stat_reg[2] ,
    \stat_reg[2]_0 ,
    brdy,
    \stat_reg[0]_1 ,
    \stat_reg[0]_2 ,
    \iv_reg[0] ,
    Q,
    \bcmd[1] ,
    \bdatw[15]_INST_0_i_8_0 ,
    .bcmd_0_sp_1(bcmd_0_sn_1),
    \grn[7]_i_4_1 ,
    \iv[15]_i_10_0 ,
    \bcmd[0]_0 ,
    \iv[15]_i_4_0 ,
    \grn[7]_i_3_1 ,
    \badr[15]_INST_0_i_25_0 ,
    \tnsn_dsp_a[7]_INST_0_i_19_0 ,
    \eir_fl_reg[1]_0 ,
    \badr[15]_INST_0_i_34_0 ,
    ctl_fetch_inferred_i_2_0,
    \sr_reg[15]_0 ,
    \tnsn_dsp_a[7]_INST_0_i_7_0 ,
    \tnsn_dsp_a[7]_INST_0_i_8_0 ,
    ctl_fetch_fl_reg_1,
    \bdatw[11]_INST_0_i_41 ,
    \badr[15]_INST_0_i_28_0 ,
    \tnsn_dsp_a[7]_INST_0_i_7_1 ,
    irq,
    ctl_fetch_inferred_i_4_0,
    \sr_reg[12] ,
    cpuid,
    \sr_reg[13] ,
    \sr_reg[14] ,
    \sr_reg[15]_1 ,
    fch_pc,
    \pc_reg[15]_0 ,
    \pc_reg[13] ,
    sp_dec_0,
    \grn[4]_i_20_0 ,
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
    \sp_reg[14] ,
    \sp_reg[15] ,
    ctl_sr_ldie,
    bank_sel,
    \grn[4]_i_19 ,
    \bdatw[11]_INST_0_i_1_0 ,
    \bdatw[11]_INST_0_i_1_1 ,
    \bdatw[8]_INST_0_i_15_0 ,
    O,
    data0,
    tnsn_dsp_c,
    \iv_reg[7]_0 ,
    \sr[4]_i_7_0 ,
    abus_0,
    \iv_reg[3] ,
    \iv_reg[0]_0 ,
    \sr[5]_i_2_0 ,
    \iv_reg[7]_1 ,
    \iv_reg[7]_2 ,
    \sr[4]_i_5_0 ,
    \sr[4]_i_3_0 ,
    \sr[4]_i_4_0 ,
    \sr[4]_i_4_1 ,
    \sr[4]_i_3_1 ,
    \grn[4]_i_6_0 ,
    \grn[1]_i_6_0 ,
    \grn[2]_i_8_0 ,
    \grn[6]_i_10_0 ,
    \grn[2]_i_8_1 ,
    \grn[6]_i_6_0 ,
    \sr[4]_i_12_0 ,
    \grn[1]_i_6_1 ,
    \sr[4]_i_5_1 ,
    \grn[1]_i_9_0 ,
    \iv_reg[15] ,
    \grn[5]_i_6_0 ,
    \sr[4]_i_3_2 ,
    \grn[5]_i_7_0 ,
    \grn[1]_i_8_0 ,
    \grn[6]_i_6_1 ,
    \sr[4]_i_14_0 ,
    \grn[4]_i_9_0 ,
    \sr[6]_i_3_0 ,
    \iv_reg[11] ,
    \sr[4]_i_9_0 ,
    \sr[4]_i_9_1 ,
    \sr[4]_i_9_2 ,
    \sr[6]_i_3_1 ,
    \iv_reg[3]_0 ,
    \iv_reg[7]_3 ,
    read_cyc,
    bdatr,
    \sr[4]_i_5_2 ,
    \sr[4]_i_5_3 ,
    \grn[4]_i_6_1 ,
    \grn[4]_i_6_2 ,
    \bdatw[11]_INST_0_i_4_0 ,
    \bdatw[11]_INST_0_i_4_1 ,
    \sr_reg[6]_0 ,
    \iv_reg[4] ,
    \iv_reg[1] ,
    \iv_reg[5] ,
    \iv_reg[2] ,
    \iv_reg[0]_1 ,
    \iv_reg[6] ,
    irq_lev,
    irq_vec,
    SR,
    .tnsn_dsp_b_0_sp_1(tnsn_dsp_b_0_sn_1),
    \tnsn_dsp_b[0]_0 ,
    .tnsn_dsp_b_1_sp_1(tnsn_dsp_b_1_sn_1),
    \tnsn_dsp_b[1]_0 ,
    .tnsn_dsp_b_2_sp_1(tnsn_dsp_b_2_sn_1),
    \tnsn_dsp_b[2]_0 ,
    .tnsn_dsp_b_3_sp_1(tnsn_dsp_b_3_sn_1),
    \tnsn_dsp_b[3]_0 ,
    p_0_in,
    bbus_rn,
    .bdatw_8_sp_1(bdatw_8_sn_1),
    .bdatw_9_sp_1(bdatw_9_sn_1),
    .bdatw_10_sp_1(bdatw_10_sn_1),
    .bdatw_11_sp_1(bdatw_11_sn_1),
    \bdatw[12]_INST_0_i_2_0 ,
    \bdatw[12]_INST_0_i_2_1 ,
    \bdatw[12]_INST_0_i_2_2 ,
    \bdatw[13]_INST_0_i_2_0 ,
    \bdatw[13]_INST_0_i_2_1 ,
    \bdatw[13]_INST_0_i_2_2 ,
    \bdatw[14]_INST_0_i_2_0 ,
    \bdatw[14]_INST_0_i_2_1 ,
    \bdatw[14]_INST_0_i_2_2 ,
    \bdatw[15]_INST_0_i_3_0 ,
    \bdatw[15]_INST_0_i_3_1 ,
    \bdatw[15]_INST_0_i_3_2 ,
    fdat);
  output [2:0]ctl_selc_rn;
  output [1:0]D;
  output \stat_reg[1] ;
  output \bdatw[15]_INST_0_i_15_0 ;
  output [1:0]\stat_reg[0] ;
  output ctl_sr_upd;
  output rst_n_fl_reg_0;
  output ctl_sp_dec;
  output \stat_reg[1]_0 ;
  output rst_n_fl_reg_1;
  output \stat_reg[1]_1 ;
  output ctl_sp_inc;
  output \stat_reg[0]_0 ;
  output ctl_selc_rnh;
  output [0:0]bcmd;
  output in0;
  output \sr_reg[4] ;
  output rst_n_fl_reg_2;
  output \sr_reg[2] ;
  output [0:0]\grn[7]_i_3_0 ;
  output [14:0]cbus;
  output \sr_reg[3] ;
  output \sr_reg[6] ;
  output [3:0]\sr_reg[15] ;
  output \grn[7]_i_4_0 ;
  output [15:0]\pc_reg[15] ;
  output [14:0]\read_cyc_reg[2] ;
  output gr7_bus1;
  output gr4_bus1;
  output gr3_bus1;
  output gr0_bus1;
  output gr2_bus1;
  output gr1_bus1;
  output gr6_bus1;
  output gr5_bus1;
  output \iv_reg[7] ;
  output [4:0]abus_sel_cr;
  output \sr_reg[0] ;
  output \sr_reg[0]_0 ;
  output \sr_reg[0]_1 ;
  output \sr_reg[0]_2 ;
  output \sr_reg[0]_3 ;
  output \sr_reg[0]_4 ;
  output \sr_reg[0]_5 ;
  output [4:0]bbus_sel_cr;
  output \sr_reg[0]_6 ;
  output \sr_reg[11] ;
  output \sr_reg[10] ;
  output \sr_reg[9] ;
  output \sr_reg[8] ;
  output \sr_reg[1] ;
  output \sr_reg[0]_7 ;
  output tout__1_carry_i_9_0;
  output \tnsn_dsp_a[7]_INST_0_i_3_0 ;
  output \tnsn_dsp_a[7]_INST_0_i_2_0 ;
  output [14:0]rst_n_fl_reg_3;
  output \tnsn_dsp_a[8]_INST_0_i_5_0 ;
  output [8:0]tnsn_dsp_b;
  output \tnsn_dsp_a[7]_INST_0_i_3_1 ;
  output \bdatw[10]_INST_0_i_1_0 ;
  output \bdatw[9]_INST_0_i_1_0 ;
  output \bdatw[9]_INST_0_i_1_1 ;
  output \bdatw[9]_INST_0_i_1_2 ;
  output [0:0]\badr[15]_INST_0_i_1 ;
  output \grn[15]_i_3__0_0 ;
  output \iv[15]_i_2_0 ;
  output \badr[13]_INST_0_i_1 ;
  output \grn[15]_i_3__0_1 ;
  output \stat_reg[1]_2 ;
  output [15:0]bdatw;
  output brdy_0;
  output [15:0]badr;
  output [1:0]E;
  output \sr_reg[7] ;
  output \sr_reg[5] ;
  output \sr_reg[4]_0 ;
  output [3:0]S;
  output [2:0]DI;
  output [1:0]\badr[7]_INST_0_i_1 ;
  output [3:0]\badr[7]_INST_0_i_1_0 ;
  output [0:0]tout__1_carry_i_8_0;
  output [3:0]\badr[6]_INST_0_i_1 ;
  output [0:0]\grn[7]_i_2_0 ;
  output brdy_1;
  output brdy_2;
  input fch_irq_req;
  input clk;
  input ctl_fetch_fl_reg_0;
  input rst_n;
  input ctl_fetch_ext;
  input \stat_reg[2] ;
  input \stat_reg[2]_0 ;
  input brdy;
  input \stat_reg[0]_1 ;
  input \stat_reg[0]_2 ;
  input \iv_reg[0] ;
  input [2:0]Q;
  input \bcmd[1] ;
  input \bdatw[15]_INST_0_i_8_0 ;
  input \grn[7]_i_4_1 ;
  input \iv[15]_i_10_0 ;
  input \bcmd[0]_0 ;
  input \iv[15]_i_4_0 ;
  input \grn[7]_i_3_1 ;
  input \badr[15]_INST_0_i_25_0 ;
  input \tnsn_dsp_a[7]_INST_0_i_19_0 ;
  input \eir_fl_reg[1]_0 ;
  input \badr[15]_INST_0_i_34_0 ;
  input ctl_fetch_inferred_i_2_0;
  input [15:0]\sr_reg[15]_0 ;
  input \tnsn_dsp_a[7]_INST_0_i_7_0 ;
  input \tnsn_dsp_a[7]_INST_0_i_8_0 ;
  input ctl_fetch_fl_reg_1;
  input \bdatw[11]_INST_0_i_41 ;
  input \badr[15]_INST_0_i_28_0 ;
  input \tnsn_dsp_a[7]_INST_0_i_7_1 ;
  input irq;
  input ctl_fetch_inferred_i_4_0;
  input \sr_reg[12] ;
  input [3:0]cpuid;
  input \sr_reg[13] ;
  input \sr_reg[14] ;
  input \sr_reg[15]_1 ;
  input [15:0]fch_pc;
  input [15:0]\pc_reg[15]_0 ;
  input [0:0]\pc_reg[13] ;
  input [4:0]sp_dec_0;
  input [4:0]\grn[4]_i_20_0 ;
  input \sp_reg[1] ;
  input \sp_reg[2] ;
  input \sp_reg[3] ;
  input \sp_reg[4] ;
  input \sp_reg[5] ;
  input \sp_reg[6] ;
  input \sp_reg[7] ;
  input \sp_reg[8] ;
  input \sp_reg[9] ;
  input \sp_reg[10] ;
  input \sp_reg[11] ;
  input \sp_reg[12] ;
  input \sp_reg[14] ;
  input \sp_reg[15] ;
  input ctl_sr_ldie;
  input [0:0]bank_sel;
  input [4:0]\grn[4]_i_19 ;
  input [3:0]\bdatw[11]_INST_0_i_1_0 ;
  input [3:0]\bdatw[11]_INST_0_i_1_1 ;
  input \bdatw[8]_INST_0_i_15_0 ;
  input [3:0]O;
  input [15:0]data0;
  input [15:0]tnsn_dsp_c;
  input [3:0]\iv_reg[7]_0 ;
  input \sr[4]_i_7_0 ;
  input [15:0]abus_0;
  input \iv_reg[3] ;
  input \iv_reg[0]_0 ;
  input \sr[5]_i_2_0 ;
  input \iv_reg[7]_1 ;
  input \iv_reg[7]_2 ;
  input \sr[4]_i_5_0 ;
  input \sr[4]_i_3_0 ;
  input \sr[4]_i_4_0 ;
  input \sr[4]_i_4_1 ;
  input \sr[4]_i_3_1 ;
  input \grn[4]_i_6_0 ;
  input \grn[1]_i_6_0 ;
  input \grn[2]_i_8_0 ;
  input \grn[6]_i_10_0 ;
  input \grn[2]_i_8_1 ;
  input \grn[6]_i_6_0 ;
  input \sr[4]_i_12_0 ;
  input \grn[1]_i_6_1 ;
  input \sr[4]_i_5_1 ;
  input \grn[1]_i_9_0 ;
  input \iv_reg[15] ;
  input \grn[5]_i_6_0 ;
  input \sr[4]_i_3_2 ;
  input \grn[5]_i_7_0 ;
  input \grn[1]_i_8_0 ;
  input \grn[6]_i_6_1 ;
  input \sr[4]_i_14_0 ;
  input \grn[4]_i_9_0 ;
  input \sr[6]_i_3_0 ;
  input \iv_reg[11] ;
  input \sr[4]_i_9_0 ;
  input \sr[4]_i_9_1 ;
  input \sr[4]_i_9_2 ;
  input \sr[6]_i_3_1 ;
  input \iv_reg[3]_0 ;
  input \iv_reg[7]_3 ;
  input [2:0]read_cyc;
  input [6:0]bdatr;
  input \sr[4]_i_5_2 ;
  input \sr[4]_i_5_3 ;
  input \grn[4]_i_6_1 ;
  input \grn[4]_i_6_2 ;
  input [3:0]\bdatw[11]_INST_0_i_4_0 ;
  input [3:0]\bdatw[11]_INST_0_i_4_1 ;
  input [0:0]\sr_reg[6]_0 ;
  input \iv_reg[4] ;
  input \iv_reg[1] ;
  input \iv_reg[5] ;
  input \iv_reg[2] ;
  input \iv_reg[0]_1 ;
  input \iv_reg[6] ;
  input [1:0]irq_lev;
  input [5:0]irq_vec;
  input [0:0]SR;
  input \tnsn_dsp_b[0]_0 ;
  input \tnsn_dsp_b[1]_0 ;
  input \tnsn_dsp_b[2]_0 ;
  input \tnsn_dsp_b[3]_0 ;
  input [3:0]p_0_in;
  input [3:0]bbus_rn;
  input \bdatw[12]_INST_0_i_2_0 ;
  input \bdatw[12]_INST_0_i_2_1 ;
  input \bdatw[12]_INST_0_i_2_2 ;
  input \bdatw[13]_INST_0_i_2_0 ;
  input \bdatw[13]_INST_0_i_2_1 ;
  input \bdatw[13]_INST_0_i_2_2 ;
  input \bdatw[14]_INST_0_i_2_0 ;
  input \bdatw[14]_INST_0_i_2_1 ;
  input \bdatw[14]_INST_0_i_2_2 ;
  input \bdatw[15]_INST_0_i_3_0 ;
  input \bdatw[15]_INST_0_i_3_1 ;
  input \bdatw[15]_INST_0_i_3_2 ;
  input [15:0]fdat;
     output [15:0]ir;
  output tnsn_dsp_c_13_sn_1;
  input bcmd_0_sn_1;
  input tnsn_dsp_b_0_sn_1;
  input tnsn_dsp_b_1_sn_1;
  input tnsn_dsp_b_2_sn_1;
  input tnsn_dsp_b_3_sn_1;
  input bdatw_8_sn_1;
  input bdatw_9_sn_1;
  input bdatw_10_sn_1;
  input bdatw_11_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]D;
  wire [2:0]DI;
  wire [1:0]E;
  wire [3:0]O;
  wire [2:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [15:0]abus_0;
  wire [4:0]abus_sel_cr;
  wire [4:2]acmd;
  wire [3:0]alu_sr_flag;
  wire [15:0]badr;
  wire \badr[13]_INST_0_i_1 ;
  wire [0:0]\badr[15]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_25_0 ;
  wire \badr[15]_INST_0_i_26_n_0 ;
  wire \badr[15]_INST_0_i_27_n_0 ;
  wire \badr[15]_INST_0_i_28_0 ;
  wire \badr[15]_INST_0_i_28_n_0 ;
  wire \badr[15]_INST_0_i_29_n_0 ;
  wire \badr[15]_INST_0_i_30_n_0 ;
  wire \badr[15]_INST_0_i_31_n_0 ;
  wire \badr[15]_INST_0_i_32_n_0 ;
  wire \badr[15]_INST_0_i_33_n_0 ;
  wire \badr[15]_INST_0_i_34_0 ;
  wire \badr[15]_INST_0_i_34_n_0 ;
  wire \badr[15]_INST_0_i_35_n_0 ;
  wire \badr[15]_INST_0_i_36_n_0 ;
  wire \badr[15]_INST_0_i_37_n_0 ;
  wire \badr[15]_INST_0_i_38_n_0 ;
  wire \badr[15]_INST_0_i_39_n_0 ;
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
  wire \badr[15]_INST_0_i_60_n_0 ;
  wire \badr[15]_INST_0_i_61_n_0 ;
  wire \badr[15]_INST_0_i_62_n_0 ;
  wire \badr[15]_INST_0_i_63_n_0 ;
  wire \badr[15]_INST_0_i_64_n_0 ;
  wire \badr[15]_INST_0_i_65_n_0 ;
  wire \badr[15]_INST_0_i_67_n_0 ;
  wire \badr[15]_INST_0_i_68_n_0 ;
  wire \badr[15]_INST_0_i_69_n_0 ;
  wire [3:0]\badr[6]_INST_0_i_1 ;
  wire [1:0]\badr[7]_INST_0_i_1 ;
  wire [3:0]\badr[7]_INST_0_i_1_0 ;
  wire [0:0]bank_sel;
  wire [15:15]bbus_0;
  wire [3:0]bbus_rn;
  wire [4:0]bbus_sel_cr;
  wire [0:0]bcmd;
  wire \bcmd[0]_0 ;
  wire \bcmd[0]_INST_0_i_11_n_0 ;
  wire \bcmd[0]_INST_0_i_2_n_0 ;
  wire \bcmd[0]_INST_0_i_3_n_0 ;
  wire \bcmd[0]_INST_0_i_4_n_0 ;
  wire \bcmd[0]_INST_0_i_5_n_0 ;
  wire \bcmd[0]_INST_0_i_7_n_0 ;
  wire \bcmd[0]_INST_0_i_9_n_0 ;
  wire \bcmd[1] ;
  wire \bcmd[1]_INST_0_i_1_n_0 ;
  wire \bcmd[1]_INST_0_i_2_n_0 ;
  wire \bcmd[1]_INST_0_i_5_n_0 ;
  wire \bcmd[1]_INST_0_i_6_n_0 ;
  wire \bcmd[1]_INST_0_i_7_n_0 ;
  wire \bcmd[1]_INST_0_i_8_n_0 ;
  wire \bcmd[1]_INST_0_i_9_n_0 ;
  wire \bcmd[2]_INST_0_i_1_n_0 ;
  wire bcmd_0_sn_1;
  wire [6:0]bdatr;
  wire [15:0]bdatw;
  wire \bdatw[10]_INST_0_i_12_n_0 ;
  wire \bdatw[10]_INST_0_i_13_n_0 ;
  wire \bdatw[10]_INST_0_i_14_n_0 ;
  wire \bdatw[10]_INST_0_i_15_n_0 ;
  wire \bdatw[10]_INST_0_i_17_n_0 ;
  wire \bdatw[10]_INST_0_i_18_n_0 ;
  wire \bdatw[10]_INST_0_i_1_0 ;
  wire \bdatw[10]_INST_0_i_22_n_0 ;
  wire \bdatw[10]_INST_0_i_4_n_0 ;
  wire \bdatw[10]_INST_0_i_7_n_0 ;
  wire \bdatw[11]_INST_0_i_12_n_0 ;
  wire \bdatw[11]_INST_0_i_15_n_0 ;
  wire \bdatw[11]_INST_0_i_16_n_0 ;
  wire [3:0]\bdatw[11]_INST_0_i_1_0 ;
  wire [3:0]\bdatw[11]_INST_0_i_1_1 ;
  wire \bdatw[11]_INST_0_i_23_n_0 ;
  wire \bdatw[11]_INST_0_i_24_n_0 ;
  wire \bdatw[11]_INST_0_i_25_n_0 ;
  wire \bdatw[11]_INST_0_i_26_n_0 ;
  wire \bdatw[11]_INST_0_i_32_n_0 ;
  wire \bdatw[11]_INST_0_i_36_n_0 ;
  wire \bdatw[11]_INST_0_i_37_n_0 ;
  wire \bdatw[11]_INST_0_i_38_n_0 ;
  wire \bdatw[11]_INST_0_i_40_n_0 ;
  wire \bdatw[11]_INST_0_i_41 ;
  wire \bdatw[11]_INST_0_i_42_n_0 ;
  wire \bdatw[11]_INST_0_i_43_n_0 ;
  wire \bdatw[11]_INST_0_i_44_n_0 ;
  wire \bdatw[11]_INST_0_i_45_n_0 ;
  wire \bdatw[11]_INST_0_i_46_n_0 ;
  wire \bdatw[11]_INST_0_i_47_n_0 ;
  wire [3:0]\bdatw[11]_INST_0_i_4_0 ;
  wire [3:0]\bdatw[11]_INST_0_i_4_1 ;
  wire \bdatw[11]_INST_0_i_4_n_0 ;
  wire \bdatw[11]_INST_0_i_7_n_0 ;
  wire \bdatw[12]_INST_0_i_2_0 ;
  wire \bdatw[12]_INST_0_i_2_1 ;
  wire \bdatw[12]_INST_0_i_2_2 ;
  wire \bdatw[12]_INST_0_i_5_n_0 ;
  wire \bdatw[12]_INST_0_i_6_n_0 ;
  wire \bdatw[13]_INST_0_i_2_0 ;
  wire \bdatw[13]_INST_0_i_2_1 ;
  wire \bdatw[13]_INST_0_i_2_2 ;
  wire \bdatw[13]_INST_0_i_5_n_0 ;
  wire \bdatw[13]_INST_0_i_6_n_0 ;
  wire \bdatw[14]_INST_0_i_2_0 ;
  wire \bdatw[14]_INST_0_i_2_1 ;
  wire \bdatw[14]_INST_0_i_2_2 ;
  wire \bdatw[14]_INST_0_i_5_n_0 ;
  wire \bdatw[14]_INST_0_i_6_n_0 ;
  wire \bdatw[15]_INST_0_i_10_n_0 ;
  wire \bdatw[15]_INST_0_i_11_n_0 ;
  wire \bdatw[15]_INST_0_i_12_n_0 ;
  wire \bdatw[15]_INST_0_i_13_n_0 ;
  wire \bdatw[15]_INST_0_i_14_n_0 ;
  wire \bdatw[15]_INST_0_i_15_0 ;
  wire \bdatw[15]_INST_0_i_24_n_0 ;
  wire \bdatw[15]_INST_0_i_25_n_0 ;
  wire \bdatw[15]_INST_0_i_26_n_0 ;
  wire \bdatw[15]_INST_0_i_28_n_0 ;
  wire \bdatw[15]_INST_0_i_32_n_0 ;
  wire \bdatw[15]_INST_0_i_34_n_0 ;
  wire \bdatw[15]_INST_0_i_3_0 ;
  wire \bdatw[15]_INST_0_i_3_1 ;
  wire \bdatw[15]_INST_0_i_3_2 ;
  wire \bdatw[15]_INST_0_i_40_n_0 ;
  wire \bdatw[15]_INST_0_i_41_n_0 ;
  wire \bdatw[15]_INST_0_i_43_n_0 ;
  wire \bdatw[15]_INST_0_i_44_n_0 ;
  wire \bdatw[15]_INST_0_i_45_n_0 ;
  wire \bdatw[15]_INST_0_i_47_n_0 ;
  wire \bdatw[15]_INST_0_i_48_n_0 ;
  wire \bdatw[15]_INST_0_i_49_n_0 ;
  wire \bdatw[15]_INST_0_i_50_n_0 ;
  wire \bdatw[15]_INST_0_i_54_n_0 ;
  wire \bdatw[15]_INST_0_i_55_n_0 ;
  wire \bdatw[15]_INST_0_i_7_n_0 ;
  wire \bdatw[15]_INST_0_i_8_0 ;
  wire \bdatw[15]_INST_0_i_9_n_0 ;
  wire \bdatw[8]_INST_0_i_12_n_0 ;
  wire \bdatw[8]_INST_0_i_13_n_0 ;
  wire \bdatw[8]_INST_0_i_14_n_0 ;
  wire \bdatw[8]_INST_0_i_15_0 ;
  wire \bdatw[8]_INST_0_i_15_n_0 ;
  wire \bdatw[8]_INST_0_i_17_n_0 ;
  wire \bdatw[8]_INST_0_i_18_n_0 ;
  wire \bdatw[8]_INST_0_i_4_n_0 ;
  wire \bdatw[8]_INST_0_i_7_n_0 ;
  wire \bdatw[9]_INST_0_i_12_n_0 ;
  wire \bdatw[9]_INST_0_i_13_n_0 ;
  wire \bdatw[9]_INST_0_i_14_n_0 ;
  wire \bdatw[9]_INST_0_i_16_n_0 ;
  wire \bdatw[9]_INST_0_i_17_n_0 ;
  wire \bdatw[9]_INST_0_i_1_0 ;
  wire \bdatw[9]_INST_0_i_1_1 ;
  wire \bdatw[9]_INST_0_i_1_2 ;
  wire \bdatw[9]_INST_0_i_4_n_0 ;
  wire \bdatw[9]_INST_0_i_7_n_0 ;
  wire bdatw_10_sn_1;
  wire bdatw_11_sn_1;
  wire bdatw_8_sn_1;
  wire bdatw_9_sn_1;
  wire brdy;
  wire brdy_0;
  wire brdy_1;
  wire brdy_2;
  wire [14:0]cbus;
  wire clk;
  wire [3:0]cpuid;
  wire ctl_fetch_ext;
  wire ctl_fetch_ext_fl;
  wire ctl_fetch_fl;
  wire ctl_fetch_fl_reg_0;
  wire ctl_fetch_fl_reg_1;
  wire ctl_fetch_inferred_i_10_n_0;
  wire ctl_fetch_inferred_i_11_n_0;
  wire ctl_fetch_inferred_i_12_n_0;
  wire ctl_fetch_inferred_i_13_n_0;
  wire ctl_fetch_inferred_i_15_n_0;
  wire ctl_fetch_inferred_i_16_n_0;
  wire ctl_fetch_inferred_i_17_n_0;
  wire ctl_fetch_inferred_i_2_0;
  wire ctl_fetch_inferred_i_2_n_0;
  wire ctl_fetch_inferred_i_3_n_0;
  wire ctl_fetch_inferred_i_4_0;
  wire ctl_fetch_inferred_i_4_n_0;
  wire ctl_fetch_inferred_i_5_n_0;
  wire ctl_fetch_inferred_i_6_n_0;
  wire ctl_fetch_inferred_i_7_n_0;
  wire ctl_fetch_inferred_i_8_n_0;
  wire ctl_fetch_inferred_i_9_n_0;
  wire [1:0]ctl_sela;
  wire [2:0]ctl_sela_rn;
  wire [2:0]ctl_selb_0;
  wire [2:0]ctl_selb_rn;
  wire [1:0]ctl_selc;
  wire [2:0]ctl_selc_rn;
  wire ctl_selc_rnh;
  wire ctl_sp_dec;
  wire ctl_sp_inc;
  wire ctl_sr_ldie;
  wire ctl_sr_upd;
  wire [15:0]data0;
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
  wire \fch_irq_lev[0]_i_1_n_0 ;
  wire \fch_irq_lev[1]_i_1_n_0 ;
  wire \fch_irq_lev[1]_i_2_n_0 ;
  wire \fch_irq_lev[1]_i_3_n_0 ;
  wire \fch_irq_lev[1]_i_4_n_0 ;
  wire fch_irq_req;
  wire fch_irq_req_fl;
  wire [15:0]fch_pc;
  wire [15:0]fdat;
  wire gr0_bus1;
  wire gr1_bus1;
  wire gr2_bus1;
  wire gr3_bus1;
  wire gr4_bus1;
  wire gr5_bus1;
  wire gr6_bus1;
  wire gr7_bus1;
  wire \grn[0]_i_10_n_0 ;
  wire \grn[0]_i_11_n_0 ;
  wire \grn[0]_i_2_n_0 ;
  wire \grn[0]_i_3_n_0 ;
  wire \grn[0]_i_5_n_0 ;
  wire \grn[0]_i_6_n_0 ;
  wire \grn[0]_i_7_n_0 ;
  wire \grn[0]_i_9_n_0 ;
  wire \grn[10]_i_2_n_0 ;
  wire \grn[10]_i_3_n_0 ;
  wire \grn[10]_i_4_n_0 ;
  wire \grn[10]_i_5_n_0 ;
  wire \grn[11]_i_2_n_0 ;
  wire \grn[11]_i_3_n_0 ;
  wire \grn[11]_i_4_n_0 ;
  wire \grn[11]_i_5_n_0 ;
  wire \grn[11]_i_6_n_0 ;
  wire \grn[12]_i_2_n_0 ;
  wire \grn[12]_i_3_n_0 ;
  wire \grn[12]_i_4_n_0 ;
  wire \grn[13]_i_4_n_0 ;
  wire \grn[13]_i_5_n_0 ;
  wire \grn[14]_i_2_n_0 ;
  wire \grn[14]_i_3_n_0 ;
  wire \grn[14]_i_4_n_0 ;
  wire \grn[14]_i_5_n_0 ;
  wire \grn[14]_i_6_n_0 ;
  wire \grn[15]_i_10_n_0 ;
  wire \grn[15]_i_12_n_0 ;
  wire \grn[15]_i_3__0_0 ;
  wire \grn[15]_i_3__0_1 ;
  wire \grn[15]_i_4_n_0 ;
  wire \grn[15]_i_5_n_0 ;
  wire \grn[15]_i_6_n_0 ;
  wire \grn[15]_i_7_n_0 ;
  wire \grn[15]_i_8_n_0 ;
  wire \grn[15]_i_9_n_0 ;
  wire \grn[1]_i_10_n_0 ;
  wire \grn[1]_i_11_n_0 ;
  wire \grn[1]_i_12_n_0 ;
  wire \grn[1]_i_13_n_0 ;
  wire \grn[1]_i_2_n_0 ;
  wire \grn[1]_i_3_n_0 ;
  wire \grn[1]_i_5_n_0 ;
  wire \grn[1]_i_6_0 ;
  wire \grn[1]_i_6_1 ;
  wire \grn[1]_i_6_n_0 ;
  wire \grn[1]_i_7_n_0 ;
  wire \grn[1]_i_8_0 ;
  wire \grn[1]_i_8_n_0 ;
  wire \grn[1]_i_9_0 ;
  wire \grn[1]_i_9_n_0 ;
  wire \grn[2]_i_10_n_0 ;
  wire \grn[2]_i_13_n_0 ;
  wire \grn[2]_i_14_n_0 ;
  wire \grn[2]_i_15_n_0 ;
  wire \grn[2]_i_16_n_0 ;
  wire \grn[2]_i_17_n_0 ;
  wire \grn[2]_i_2_n_0 ;
  wire \grn[2]_i_3_n_0 ;
  wire \grn[2]_i_5_n_0 ;
  wire \grn[2]_i_6_n_0 ;
  wire \grn[2]_i_7_n_0 ;
  wire \grn[2]_i_8_0 ;
  wire \grn[2]_i_8_1 ;
  wire \grn[2]_i_8_n_0 ;
  wire \grn[2]_i_9_n_0 ;
  wire \grn[3]_i_10_n_0 ;
  wire \grn[3]_i_13_n_0 ;
  wire \grn[3]_i_15_n_0 ;
  wire \grn[3]_i_3_n_0 ;
  wire \grn[3]_i_4_n_0 ;
  wire \grn[3]_i_5_n_0 ;
  wire \grn[3]_i_6_n_0 ;
  wire \grn[3]_i_7_n_0 ;
  wire \grn[3]_i_8_n_0 ;
  wire \grn[4]_i_10_n_0 ;
  wire \grn[4]_i_15_n_0 ;
  wire \grn[4]_i_16_n_0 ;
  wire \grn[4]_i_17_n_0 ;
  wire \grn[4]_i_18_n_0 ;
  wire [4:0]\grn[4]_i_19 ;
  wire [4:0]\grn[4]_i_20_0 ;
  wire \grn[4]_i_23_n_0 ;
  wire \grn[4]_i_2_n_0 ;
  wire \grn[4]_i_3_n_0 ;
  wire \grn[4]_i_5_n_0 ;
  wire \grn[4]_i_6_0 ;
  wire \grn[4]_i_6_1 ;
  wire \grn[4]_i_6_2 ;
  wire \grn[4]_i_6_n_0 ;
  wire \grn[4]_i_7_n_0 ;
  wire \grn[4]_i_8_n_0 ;
  wire \grn[4]_i_9_0 ;
  wire \grn[4]_i_9_n_0 ;
  wire \grn[5]_i_10_n_0 ;
  wire \grn[5]_i_11_n_0 ;
  wire \grn[5]_i_12_n_0 ;
  wire \grn[5]_i_13_n_0 ;
  wire \grn[5]_i_14_n_0 ;
  wire \grn[5]_i_16_n_0 ;
  wire \grn[5]_i_19_n_0 ;
  wire \grn[5]_i_2_n_0 ;
  wire \grn[5]_i_3_n_0 ;
  wire \grn[5]_i_5_n_0 ;
  wire \grn[5]_i_6_0 ;
  wire \grn[5]_i_6_n_0 ;
  wire \grn[5]_i_7_0 ;
  wire \grn[5]_i_7_n_0 ;
  wire \grn[5]_i_8_n_0 ;
  wire \grn[5]_i_9_n_0 ;
  wire \grn[6]_i_10_0 ;
  wire \grn[6]_i_10_n_0 ;
  wire \grn[6]_i_11_n_0 ;
  wire \grn[6]_i_12_n_0 ;
  wire \grn[6]_i_18_n_0 ;
  wire \grn[6]_i_2_n_0 ;
  wire \grn[6]_i_3_n_0 ;
  wire \grn[6]_i_5_n_0 ;
  wire \grn[6]_i_6_0 ;
  wire \grn[6]_i_6_1 ;
  wire \grn[6]_i_6_n_0 ;
  wire \grn[6]_i_7_n_0 ;
  wire \grn[6]_i_8_n_0 ;
  wire \grn[6]_i_9_n_0 ;
  wire \grn[7]_i_11_n_0 ;
  wire \grn[7]_i_12_n_0 ;
  wire \grn[7]_i_13_n_0 ;
  wire \grn[7]_i_14_n_0 ;
  wire \grn[7]_i_15_n_0 ;
  wire \grn[7]_i_16_n_0 ;
  wire \grn[7]_i_17_n_0 ;
  wire \grn[7]_i_19_n_0 ;
  wire \grn[7]_i_21_n_0 ;
  wire \grn[7]_i_22_n_0 ;
  wire \grn[7]_i_23_n_0 ;
  wire \grn[7]_i_25_n_0 ;
  wire \grn[7]_i_26_n_0 ;
  wire [0:0]\grn[7]_i_2_0 ;
  wire \grn[7]_i_31_n_0 ;
  wire [0:0]\grn[7]_i_3_0 ;
  wire \grn[7]_i_3_1 ;
  wire \grn[7]_i_4_0 ;
  wire \grn[7]_i_4_1 ;
  wire \grn[7]_i_4__0_n_0 ;
  wire \grn[7]_i_5_n_0 ;
  wire \grn[7]_i_7_n_0 ;
  wire \grn[7]_i_8_n_0 ;
  wire \grn[7]_i_9_n_0 ;
  wire \grn[8]_i_2_n_0 ;
  wire \grn[8]_i_3_n_0 ;
  wire \grn[8]_i_4_n_0 ;
  wire \grn[9]_i_2_n_0 ;
  wire \grn[9]_i_3_n_0 ;
  wire \grn[9]_i_4_n_0 ;
  wire in0;
  (* DONT_TOUCH *) wire [15:0]ir;
  wire [15:0]ir_fl;
  wire irq;
  wire [1:0]irq_lev;
  wire [5:0]irq_vec;
  wire \iv[15]_i_10_0 ;
  wire \iv[15]_i_10_n_0 ;
  wire \iv[15]_i_11_n_0 ;
  wire \iv[15]_i_12_n_0 ;
  wire \iv[15]_i_2_0 ;
  wire \iv[15]_i_4_0 ;
  wire \iv[15]_i_4_n_0 ;
  wire \iv[15]_i_5_n_0 ;
  wire \iv[15]_i_6_n_0 ;
  wire \iv[15]_i_7_n_0 ;
  wire \iv[15]_i_8_n_0 ;
  wire \iv[15]_i_9_n_0 ;
  wire \iv_reg[0] ;
  wire \iv_reg[0]_0 ;
  wire \iv_reg[0]_1 ;
  wire \iv_reg[11] ;
  wire \iv_reg[15] ;
  wire \iv_reg[1] ;
  wire \iv_reg[2] ;
  wire \iv_reg[3] ;
  wire \iv_reg[3]_0 ;
  wire \iv_reg[4] ;
  wire \iv_reg[5] ;
  wire \iv_reg[6] ;
  wire \iv_reg[7] ;
  wire [3:0]\iv_reg[7]_0 ;
  wire \iv_reg[7]_1 ;
  wire \iv_reg[7]_2 ;
  wire \iv_reg[7]_3 ;
  wire \mem/bwbf/bdatw2 ;
  wire \mem/bwbf/bdatw3 ;
  wire [3:0]p_0_in;
  wire [11:0]p_1_in;
  wire [3:0]p_2_in;
  wire \pc[15]_i_4_n_0 ;
  wire [0:0]\pc_reg[13] ;
  wire [15:0]\pc_reg[15] ;
  wire [15:0]\pc_reg[15]_0 ;
  wire [2:0]read_cyc;
  wire \read_cyc[1]_i_2_n_0 ;
  wire [14:0]\read_cyc_reg[2] ;
  wire [7:7]\rgf/abus_pc ;
  wire [3:0]\rgf/bbus_sp ;
  wire [5:0]\rgf/cbus_sel_cr ;
  wire [7:7]\rgf/sptr/p_0_in0_in ;
  wire [7:7]\rgf/sptr/p_1_in1_in ;
  wire rst_n;
  wire rst_n_fl;
  wire rst_n_fl_reg_0;
  wire rst_n_fl_reg_1;
  wire rst_n_fl_reg_2;
  wire [14:0]rst_n_fl_reg_3;
  wire \sp[0]_i_4_n_0 ;
  wire \sp[0]_i_5_n_0 ;
  wire [4:0]sp_dec_0;
  wire \sp_reg[10] ;
  wire \sp_reg[11] ;
  wire \sp_reg[12] ;
  wire \sp_reg[14] ;
  wire \sp_reg[15] ;
  wire \sp_reg[1] ;
  wire \sp_reg[2] ;
  wire \sp_reg[3] ;
  wire \sp_reg[4] ;
  wire \sp_reg[5] ;
  wire \sp_reg[6] ;
  wire \sp_reg[7] ;
  wire \sp_reg[8] ;
  wire \sp_reg[9] ;
  wire \sr[2]_i_2_n_0 ;
  wire \sr[3]_i_2_n_0 ;
  wire \sr[4]_i_10_n_0 ;
  wire \sr[4]_i_11_n_0 ;
  wire \sr[4]_i_12_0 ;
  wire \sr[4]_i_12_n_0 ;
  wire \sr[4]_i_13_n_0 ;
  wire \sr[4]_i_14_0 ;
  wire \sr[4]_i_14_n_0 ;
  wire \sr[4]_i_15_n_0 ;
  wire \sr[4]_i_16_n_0 ;
  wire \sr[4]_i_17_n_0 ;
  wire \sr[4]_i_18_n_0 ;
  wire \sr[4]_i_19_n_0 ;
  wire \sr[4]_i_20_n_0 ;
  wire \sr[4]_i_21_n_0 ;
  wire \sr[4]_i_22_n_0 ;
  wire \sr[4]_i_23_n_0 ;
  wire \sr[4]_i_25_n_0 ;
  wire \sr[4]_i_26_n_0 ;
  wire \sr[4]_i_27_n_0 ;
  wire \sr[4]_i_28_n_0 ;
  wire \sr[4]_i_29_n_0 ;
  wire \sr[4]_i_30_n_0 ;
  wire \sr[4]_i_31_n_0 ;
  wire \sr[4]_i_32_n_0 ;
  wire \sr[4]_i_3_0 ;
  wire \sr[4]_i_3_1 ;
  wire \sr[4]_i_3_2 ;
  wire \sr[4]_i_3_n_0 ;
  wire \sr[4]_i_4_0 ;
  wire \sr[4]_i_4_1 ;
  wire \sr[4]_i_4_n_0 ;
  wire \sr[4]_i_5_0 ;
  wire \sr[4]_i_5_1 ;
  wire \sr[4]_i_5_2 ;
  wire \sr[4]_i_5_3 ;
  wire \sr[4]_i_5_n_0 ;
  wire \sr[4]_i_6_n_0 ;
  wire \sr[4]_i_7_0 ;
  wire \sr[4]_i_7_n_0 ;
  wire \sr[4]_i_8_n_0 ;
  wire \sr[4]_i_9_0 ;
  wire \sr[4]_i_9_1 ;
  wire \sr[4]_i_9_2 ;
  wire \sr[4]_i_9_n_0 ;
  wire \sr[5]_i_2_0 ;
  wire \sr[5]_i_3_n_0 ;
  wire \sr[6]_i_2_n_0 ;
  wire \sr[6]_i_3_0 ;
  wire \sr[6]_i_3_1 ;
  wire \sr[6]_i_3_n_0 ;
  wire \sr[6]_i_4_n_0 ;
  wire \sr[6]_i_5_n_0 ;
  wire \sr[6]_i_7_n_0 ;
  wire \sr[6]_i_8_n_0 ;
  wire \sr[7]_i_4_n_0 ;
  wire \sr[7]_i_5_n_0 ;
  wire \sr[7]_i_6_n_0 ;
  wire \sr_reg[0] ;
  wire \sr_reg[0]_0 ;
  wire \sr_reg[0]_1 ;
  wire \sr_reg[0]_2 ;
  wire \sr_reg[0]_3 ;
  wire \sr_reg[0]_4 ;
  wire \sr_reg[0]_5 ;
  wire \sr_reg[0]_6 ;
  wire \sr_reg[0]_7 ;
  wire \sr_reg[10] ;
  wire \sr_reg[11] ;
  wire \sr_reg[12] ;
  wire \sr_reg[13] ;
  wire \sr_reg[14] ;
  wire [3:0]\sr_reg[15] ;
  wire [15:0]\sr_reg[15]_0 ;
  wire \sr_reg[15]_1 ;
  wire \sr_reg[1] ;
  wire \sr_reg[2] ;
  wire \sr_reg[3] ;
  wire \sr_reg[4] ;
  wire \sr_reg[4]_0 ;
  wire \sr_reg[5] ;
  wire \sr_reg[6] ;
  wire [0:0]\sr_reg[6]_0 ;
  wire \sr_reg[7] ;
  wire \sr_reg[8] ;
  wire \sr_reg[9] ;
  wire \stat[0]_i_10_n_0 ;
  wire \stat[0]_i_11_n_0 ;
  wire \stat[0]_i_12_n_0 ;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_4_n_0 ;
  wire \stat[0]_i_6_n_0 ;
  wire \stat[0]_i_7_n_0 ;
  wire \stat[0]_i_8_n_0 ;
  wire \stat[0]_i_9_n_0 ;
  wire \stat[2]_i_3_n_0 ;
  wire [1:0]\stat_reg[0] ;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[0]_2 ;
  wire \stat_reg[1] ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;
  wire \stat_reg[1]_2 ;
  wire \stat_reg[2] ;
  wire \stat_reg[2]_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_10_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_11_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_12_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_13_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_14_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_15_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_16_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_17_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_18_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_19_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_19_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_20_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_21_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_23_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_24_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_25_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_26_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_28_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_29_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_2_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_30_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_31_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_33_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_34_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_35_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_36_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_37_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_38_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_39_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_3_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_3_1 ;
  wire \tnsn_dsp_a[7]_INST_0_i_4_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_5_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_6_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_7_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_7_1 ;
  wire \tnsn_dsp_a[7]_INST_0_i_7_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_8_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_8_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_9_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_10_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_11_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_12_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_13_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_14_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_15_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_16_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_17_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_18_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_19_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_20_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_21_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_24_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_25_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_5_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_6_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_7_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_8_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_9_n_0 ;
  wire [8:0]tnsn_dsp_b;
  wire \tnsn_dsp_b[0]_0 ;
  wire \tnsn_dsp_b[1]_0 ;
  wire \tnsn_dsp_b[2]_0 ;
  wire \tnsn_dsp_b[3]_0 ;
  wire tnsn_dsp_b_0_sn_1;
  wire tnsn_dsp_b_1_sn_1;
  wire tnsn_dsp_b_2_sn_1;
  wire tnsn_dsp_b_3_sn_1;
  wire [15:0]tnsn_dsp_c;
  wire tnsn_dsp_c_13_sn_1;
  wire tout__1_carry_i_10_n_0;
  wire tout__1_carry_i_11_n_0;
  wire [0:0]tout__1_carry_i_8_0;
  wire tout__1_carry_i_8_n_0;
  wire tout__1_carry_i_9_0;
  wire tout__1_carry_i_9_n_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[0]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(abus_0[0]),
        .O(badr[0]));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[10]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(abus_0[10]),
        .O(badr[10]));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[11]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(abus_0[11]),
        .O(badr[11]));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[12]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(abus_0[12]),
        .O(badr[12]));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[13]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(abus_0[13]),
        .O(badr[13]));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[14]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(abus_0[14]),
        .O(badr[14]));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[15]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(abus_0[15]),
        .O(badr[15]));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \badr[15]_INST_0_i_10 
       (.I0(bank_sel),
        .I1(ctl_sela_rn[0]),
        .I2(ctl_sela_rn[1]),
        .I3(ctl_sela_rn[2]),
        .I4(ctl_sela[0]),
        .I5(ctl_sela[1]),
        .O(gr2_bus1));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \badr[15]_INST_0_i_11 
       (.I0(bank_sel),
        .I1(ctl_sela_rn[1]),
        .I2(ctl_sela_rn[0]),
        .I3(ctl_sela_rn[2]),
        .I4(ctl_sela[0]),
        .I5(ctl_sela[1]),
        .O(gr1_bus1));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \badr[15]_INST_0_i_12 
       (.I0(bank_sel),
        .I1(ctl_sela_rn[1]),
        .I2(ctl_sela_rn[0]),
        .I3(ctl_sela_rn[2]),
        .I4(ctl_sela[0]),
        .I5(ctl_sela[1]),
        .O(gr0_bus1));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \badr[15]_INST_0_i_13 
       (.I0(bank_sel),
        .I1(ctl_sela_rn[1]),
        .I2(ctl_sela_rn[0]),
        .I3(ctl_sela[0]),
        .I4(ctl_sela[1]),
        .I5(ctl_sela_rn[2]),
        .O(gr7_bus1));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \badr[15]_INST_0_i_14 
       (.I0(bank_sel),
        .I1(ctl_sela_rn[2]),
        .I2(ctl_sela_rn[1]),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela[0]),
        .I5(ctl_sela[1]),
        .O(gr6_bus1));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \badr[15]_INST_0_i_15 
       (.I0(bank_sel),
        .I1(ctl_sela_rn[2]),
        .I2(ctl_sela_rn[0]),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela[0]),
        .I5(ctl_sela[1]),
        .O(gr5_bus1));
  LUT5 #(
    .INIT(32'h00001000)) 
    \badr[15]_INST_0_i_16 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[2]),
        .I2(ctl_sela_rn[0]),
        .I3(ctl_sela[1]),
        .I4(ctl_sela[0]),
        .O(abus_sel_cr[1]));
  LUT5 #(
    .INIT(32'h00000100)) 
    \badr[15]_INST_0_i_17 
       (.I0(ctl_sela_rn[2]),
        .I1(ctl_sela_rn[0]),
        .I2(ctl_sela_rn[1]),
        .I3(ctl_sela[1]),
        .I4(ctl_sela[0]),
        .O(abus_sel_cr[0]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \badr[15]_INST_0_i_18 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(ctl_sela_rn[2]),
        .I3(ctl_sela[1]),
        .I4(ctl_sela[0]),
        .O(abus_sel_cr[3]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \badr[15]_INST_0_i_19 
       (.I0(ctl_sela_rn[2]),
        .I1(ctl_sela_rn[0]),
        .I2(ctl_sela_rn[1]),
        .I3(ctl_sela[1]),
        .I4(ctl_sela[0]),
        .O(abus_sel_cr[4]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \badr[15]_INST_0_i_20 
       (.I0(ctl_sela_rn[2]),
        .I1(ctl_sela_rn[0]),
        .I2(ctl_sela_rn[1]),
        .I3(ctl_sela[1]),
        .I4(ctl_sela[0]),
        .O(abus_sel_cr[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFD0D0FFD0)) 
    \badr[15]_INST_0_i_21 
       (.I0(\badr[15]_INST_0_i_26_n_0 ),
        .I1(\badr[15]_INST_0_i_27_n_0 ),
        .I2(ir[1]),
        .I3(ir[4]),
        .I4(\bdatw[15]_INST_0_i_26_n_0 ),
        .I5(\badr[15]_INST_0_i_28_n_0 ),
        .O(ctl_sela_rn[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \badr[15]_INST_0_i_22 
       (.I0(\badr[15]_INST_0_i_29_n_0 ),
        .I1(ir[2]),
        .I2(\bdatw[15]_INST_0_i_26_n_0 ),
        .I3(ir[5]),
        .I4(\badr[15]_INST_0_i_30_n_0 ),
        .I5(\bcmd[1]_INST_0_i_1_n_0 ),
        .O(ctl_sela_rn[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \badr[15]_INST_0_i_23 
       (.I0(\badr[15]_INST_0_i_31_n_0 ),
        .I1(ir[0]),
        .I2(\bdatw[15]_INST_0_i_26_n_0 ),
        .I3(ir[3]),
        .I4(\badr[15]_INST_0_i_32_n_0 ),
        .I5(\badr[15]_INST_0_i_33_n_0 ),
        .O(ctl_sela_rn[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFDFFFD)) 
    \badr[15]_INST_0_i_24 
       (.I0(\badr[15]_INST_0_i_26_n_0 ),
        .I1(\badr[15]_INST_0_i_34_n_0 ),
        .I2(\badr[15]_INST_0_i_35_n_0 ),
        .I3(\badr[15]_INST_0_i_36_n_0 ),
        .I4(\tnsn_dsp_a[8]_INST_0_i_12_n_0 ),
        .I5(\badr[15]_INST_0_i_37_n_0 ),
        .O(ctl_sela[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_25 
       (.I0(\badr[15]_INST_0_i_38_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_18_n_0 ),
        .I2(\badr[15]_INST_0_i_39_n_0 ),
        .I3(\badr[15]_INST_0_i_40_n_0 ),
        .I4(\badr[15]_INST_0_i_41_n_0 ),
        .I5(\bdatw[15]_INST_0_i_43_n_0 ),
        .O(ctl_sela[1]));
  LUT6 #(
    .INIT(64'hDDDDDDDDD0D0D000)) 
    \badr[15]_INST_0_i_26 
       (.I0(\bdatw[10]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_42_n_0 ),
        .I2(\badr[15]_INST_0_i_43_n_0 ),
        .I3(\tnsn_dsp_a[8]_INST_0_i_24_n_0 ),
        .I4(ir[3]),
        .I5(\bcmd[0]_INST_0_i_5_n_0 ),
        .O(\badr[15]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \badr[15]_INST_0_i_27 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_16_n_0 ),
        .I1(\badr[15]_INST_0_i_44_n_0 ),
        .I2(rst_n_fl_reg_0),
        .I3(\badr[15]_INST_0_i_45_n_0 ),
        .I4(\badr[15]_INST_0_i_46_n_0 ),
        .I5(\badr[15]_INST_0_i_47_n_0 ),
        .O(\badr[15]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEFE)) 
    \badr[15]_INST_0_i_28 
       (.I0(\badr[15]_INST_0_i_48_n_0 ),
        .I1(\badr[15]_INST_0_i_49_n_0 ),
        .I2(\badr[15]_INST_0_i_50_n_0 ),
        .I3(\bcmd[0]_INST_0_i_9_n_0 ),
        .I4(ir[1]),
        .I5(\badr[15]_INST_0_i_51_n_0 ),
        .O(\badr[15]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \badr[15]_INST_0_i_29 
       (.I0(\badr[15]_INST_0_i_52_n_0 ),
        .I1(\badr[15]_INST_0_i_53_n_0 ),
        .I2(\tnsn_dsp_a[8]_INST_0_i_16_n_0 ),
        .I3(\badr[15]_INST_0_i_44_n_0 ),
        .I4(rst_n_fl_reg_0),
        .I5(\badr[15]_INST_0_i_45_n_0 ),
        .O(\badr[15]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4FFF44444444)) 
    \badr[15]_INST_0_i_30 
       (.I0(\badr[15]_INST_0_i_54_n_0 ),
        .I1(ir[10]),
        .I2(\badr[15]_INST_0_i_55_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_33_n_0 ),
        .I4(ir[4]),
        .I5(\badr[15]_INST_0_i_56_n_0 ),
        .O(\badr[15]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \badr[15]_INST_0_i_31 
       (.I0(\badr[15]_INST_0_i_44_n_0 ),
        .I1(\tnsn_dsp_a[8]_INST_0_i_16_n_0 ),
        .I2(\badr[15]_INST_0_i_52_n_0 ),
        .I3(\badr[15]_INST_0_i_57_n_0 ),
        .I4(rst_n_fl_reg_0),
        .I5(\badr[15]_INST_0_i_58_n_0 ),
        .O(\badr[15]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCFCCDFDDCFCC)) 
    \badr[15]_INST_0_i_32 
       (.I0(\bcmd[1] ),
        .I1(\bcmd[1]_INST_0_i_2_n_0 ),
        .I2(\badr[15]_INST_0_i_54_n_0 ),
        .I3(ir[8]),
        .I4(\badr[15]_INST_0_i_59_n_0 ),
        .I5(\bdatw[15]_INST_0_i_8_0 ),
        .O(\badr[15]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F4FFF0F0F0F)) 
    \badr[15]_INST_0_i_33 
       (.I0(\badr[15]_INST_0_i_42_n_0 ),
        .I1(ir[10]),
        .I2(\stat_reg[1]_1 ),
        .I3(\badr[15]_INST_0_i_60_n_0 ),
        .I4(ir[0]),
        .I5(ir[5]),
        .O(\badr[15]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF111F)) 
    \badr[15]_INST_0_i_34 
       (.I0(\badr[15]_INST_0_i_61_n_0 ),
        .I1(\badr[15]_INST_0_i_62_n_0 ),
        .I2(\bcmd[0]_INST_0_i_5_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_35_n_0 ),
        .I4(\badr[15]_INST_0_i_63_n_0 ),
        .I5(\bdatw[15]_INST_0_i_54_n_0 ),
        .O(\badr[15]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCDCCCDCF)) 
    \badr[15]_INST_0_i_35 
       (.I0(ir[14]),
        .I1(rst_n_fl_reg_0),
        .I2(\grn[7]_i_3_1 ),
        .I3(ir[11]),
        .I4(ir[12]),
        .I5(\bdatw[15]_INST_0_i_49_n_0 ),
        .O(\badr[15]_INST_0_i_35_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \badr[15]_INST_0_i_36 
       (.I0(ir[10]),
        .I1(ir[6]),
        .O(\badr[15]_INST_0_i_36_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1110)) 
    \badr[15]_INST_0_i_37 
       (.I0(ir[10]),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .I2(ir[7]),
        .I3(ir[9]),
        .I4(\sr[7]_i_5_n_0 ),
        .O(\badr[15]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFF32FF32FFFFFF32)) 
    \badr[15]_INST_0_i_38 
       (.I0(ir[5]),
        .I1(\badr[15]_INST_0_i_61_n_0 ),
        .I2(ir[3]),
        .I3(\badr[15]_INST_0_i_63_n_0 ),
        .I4(\badr[15]_INST_0_i_59_n_0 ),
        .I5(\bcmd[1] ),
        .O(\badr[15]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEEEFEFFFFEEFE)) 
    \badr[15]_INST_0_i_39 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_9_n_0 ),
        .I1(\tnsn_dsp_a[8]_INST_0_i_19_n_0 ),
        .I2(\badr[15]_INST_0_i_64_n_0 ),
        .I3(\bdatw[15]_INST_0_i_44_n_0 ),
        .I4(\stat[0]_i_7_n_0 ),
        .I5(\bdatw[11]_INST_0_i_25_n_0 ),
        .O(\badr[15]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFBFFFBF)) 
    \badr[15]_INST_0_i_40 
       (.I0(\bdatw[15]_INST_0_i_49_n_0 ),
        .I1(\badr[15]_INST_0_i_54_n_0 ),
        .I2(\read_cyc[1]_i_2_n_0 ),
        .I3(\badr[15]_INST_0_i_65_n_0 ),
        .I4(\badr[15]_INST_0_i_25_0 ),
        .I5(\badr[15]_INST_0_i_45_n_0 ),
        .O(\badr[15]_INST_0_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAAAA)) 
    \badr[15]_INST_0_i_41 
       (.I0(rst_n_fl_reg_0),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(\iv[15]_i_11_n_0 ),
        .I4(ir[3]),
        .O(\badr[15]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7FFFF)) 
    \badr[15]_INST_0_i_42 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(bcmd_0_sn_1),
        .I3(\bcmd[0]_INST_0_i_7_n_0 ),
        .I4(ir[6]),
        .I5(ir[3]),
        .O(\badr[15]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \badr[15]_INST_0_i_43 
       (.I0(\bcmd[0]_0 ),
        .I1(\bcmd[0]_INST_0_i_7_n_0 ),
        .I2(ir[15]),
        .I3(\bcmd[0]_INST_0_i_11_n_0 ),
        .I4(ir[3]),
        .I5(Q[0]),
        .O(\badr[15]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \badr[15]_INST_0_i_44 
       (.I0(bcmd_0_sn_1),
        .I1(\bcmd[0]_INST_0_i_4_n_0 ),
        .I2(ir[9]),
        .I3(ir[7]),
        .I4(ir[8]),
        .I5(ir[10]),
        .O(\badr[15]_INST_0_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \badr[15]_INST_0_i_45 
       (.I0(ir[8]),
        .I1(\badr[15]_INST_0_i_67_n_0 ),
        .I2(ir[7]),
        .I3(bcmd_0_sn_1),
        .I4(\bcmd[0]_INST_0_i_4_n_0 ),
        .O(\badr[15]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \badr[15]_INST_0_i_46 
       (.I0(ir[4]),
        .I1(\bcmd[0]_INST_0_i_5_n_0 ),
        .I2(bcmd_0_sn_1),
        .I3(\bcmd[0]_INST_0_i_7_n_0 ),
        .I4(ir[10]),
        .I5(\badr[15]_INST_0_i_68_n_0 ),
        .O(\badr[15]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \badr[15]_INST_0_i_47 
       (.I0(\bcmd[0]_INST_0_i_5_n_0 ),
        .I1(ir[7]),
        .I2(ir[5]),
        .I3(\bcmd[1]_INST_0_i_6_n_0 ),
        .I4(\bcmd[0]_INST_0_i_4_n_0 ),
        .I5(bcmd_0_sn_1),
        .O(\badr[15]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A0000000800)) 
    \badr[15]_INST_0_i_48 
       (.I0(ir[9]),
        .I1(ir[11]),
        .I2(ctl_fetch_inferred_i_2_0),
        .I3(ir[15]),
        .I4(ir[14]),
        .I5(\badr[15]_INST_0_i_69_n_0 ),
        .O(\badr[15]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \badr[15]_INST_0_i_49 
       (.I0(\bdatw[15]_INST_0_i_8_0 ),
        .I1(\bdatw[9]_INST_0_i_17_n_0 ),
        .I2(\bcmd[1]_INST_0_i_9_n_0 ),
        .I3(ir[15]),
        .I4(\bcmd[0]_INST_0_i_11_n_0 ),
        .I5(\bcmd[1]_INST_0_i_8_n_0 ),
        .O(\badr[15]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \badr[15]_INST_0_i_50 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(ir[15]),
        .I2(\bcmd[0]_INST_0_i_11_n_0 ),
        .I3(\bcmd[1]_INST_0_i_8_n_0 ),
        .I4(\badr[15]_INST_0_i_28_0 ),
        .I5(\bdatw[11]_INST_0_i_25_n_0 ),
        .O(\badr[15]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \badr[15]_INST_0_i_51 
       (.I0(ir[5]),
        .I1(\bcmd[0]_INST_0_i_7_n_0 ),
        .I2(bcmd_0_sn_1),
        .I3(\bcmd[1]_INST_0_i_7_n_0 ),
        .I4(ir[3]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \badr[15]_INST_0_i_52 
       (.I0(\bcmd[1]_INST_0_i_7_n_0 ),
        .I1(bcmd_0_sn_1),
        .I2(\bcmd[0]_INST_0_i_7_n_0 ),
        .I3(ir[4]),
        .I4(ir[3]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_53 
       (.I0(\bcmd[0]_INST_0_i_5_n_0 ),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(ir[4]),
        .I4(\bcmd[0]_INST_0_i_4_n_0 ),
        .I5(bcmd_0_sn_1),
        .O(\badr[15]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80FFFFFF88FF)) 
    \badr[15]_INST_0_i_54 
       (.I0(ir[12]),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[15]),
        .I4(ctl_fetch_inferred_i_2_0),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_55 
       (.I0(\bcmd[0]_INST_0_i_5_n_0 ),
        .I1(\bcmd[0]_0 ),
        .I2(\bcmd[0]_INST_0_i_7_n_0 ),
        .I3(ir[15]),
        .I4(\bcmd[1]_INST_0_i_6_n_0 ),
        .I5(ir[5]),
        .O(\badr[15]_INST_0_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_56 
       (.I0(ir[3]),
        .I1(ir[2]),
        .O(\badr[15]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000050D)) 
    \badr[15]_INST_0_i_57 
       (.I0(\bcmd[0]_INST_0_i_11_n_0 ),
        .I1(ir[10]),
        .I2(\bcmd[0]_INST_0_i_5_n_0 ),
        .I3(\badr[15]_INST_0_i_67_n_0 ),
        .I4(\bcmd[0]_INST_0_i_4_n_0 ),
        .I5(bcmd_0_sn_1),
        .O(\badr[15]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \badr[15]_INST_0_i_58 
       (.I0(ir[3]),
        .I1(\bcmd[0]_INST_0_i_11_n_0 ),
        .I2(ir[15]),
        .I3(\bcmd[0]_INST_0_i_7_n_0 ),
        .I4(\bcmd[0]_0 ),
        .I5(\bcmd[0]_INST_0_i_5_n_0 ),
        .O(\badr[15]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \badr[15]_INST_0_i_59 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(\bcmd[1]_INST_0_i_9_n_0 ),
        .I3(ir[15]),
        .I4(\bcmd[0]_INST_0_i_11_n_0 ),
        .I5(\bcmd[1]_INST_0_i_8_n_0 ),
        .O(\badr[15]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \badr[15]_INST_0_i_60 
       (.I0(ir[3]),
        .I1(\bcmd[0]_INST_0_i_7_n_0 ),
        .I2(bcmd_0_sn_1),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(ir[4]),
        .O(\badr[15]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFFFF)) 
    \badr[15]_INST_0_i_61 
       (.I0(ir[4]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(bcmd_0_sn_1),
        .I4(ir[7]),
        .I5(\bcmd[0]_INST_0_i_4_n_0 ),
        .O(\badr[15]_INST_0_i_61_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \badr[15]_INST_0_i_62 
       (.I0(ir[5]),
        .I1(ir[3]),
        .I2(ir[6]),
        .O(\badr[15]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \badr[15]_INST_0_i_63 
       (.I0(ir[8]),
        .I1(bcmd_0_sn_1),
        .I2(\bcmd[0]_INST_0_i_4_n_0 ),
        .I3(\bcmd[1]_INST_0_i_6_n_0 ),
        .I4(ir[5]),
        .I5(ir[7]),
        .O(\badr[15]_INST_0_i_63_n_0 ));
  LUT4 #(
    .INIT(16'hF04F)) 
    \badr[15]_INST_0_i_64 
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(ir[6]),
        .I3(ir[5]),
        .O(\badr[15]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \badr[15]_INST_0_i_65 
       (.I0(ir[5]),
        .I1(\bcmd[1]_INST_0_i_6_n_0 ),
        .I2(\bcmd[1]_INST_0_i_8_n_0 ),
        .I3(ir[13]),
        .I4(ir[12]),
        .I5(ir[14]),
        .O(\badr[15]_INST_0_i_65_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \badr[15]_INST_0_i_67 
       (.I0(ir[4]),
        .I1(ir[3]),
        .I2(ir[6]),
        .I3(ir[5]),
        .O(\badr[15]_INST_0_i_67_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \badr[15]_INST_0_i_68 
       (.I0(ir[6]),
        .I1(ir[3]),
        .O(\badr[15]_INST_0_i_68_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \badr[15]_INST_0_i_69 
       (.I0(ir[13]),
        .I1(ir[12]),
        .O(\badr[15]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \badr[15]_INST_0_i_8 
       (.I0(bank_sel),
        .I1(ctl_sela_rn[1]),
        .I2(ctl_sela_rn[2]),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela[0]),
        .I5(ctl_sela[1]),
        .O(gr4_bus1));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \badr[15]_INST_0_i_9 
       (.I0(bank_sel),
        .I1(ctl_sela_rn[1]),
        .I2(ctl_sela_rn[0]),
        .I3(ctl_sela_rn[2]),
        .I4(ctl_sela[0]),
        .I5(ctl_sela[1]),
        .O(gr3_bus1));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[1]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(abus_0[1]),
        .O(badr[1]));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[2]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(abus_0[2]),
        .O(badr[2]));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[3]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(abus_0[3]),
        .O(badr[3]));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[4]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(abus_0[4]),
        .O(badr[4]));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[5]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(abus_0[5]),
        .O(badr[5]));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[6]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(abus_0[6]),
        .O(badr[6]));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[7]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(abus_0[7]),
        .O(badr[7]));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[8]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(abus_0[8]),
        .O(badr[8]));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[9]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(abus_0[9]),
        .O(badr[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F222222)) 
    \bcmd[0]_INST_0 
       (.I0(rst_n_fl_reg_0),
        .I1(Q[0]),
        .I2(\bcmd[0]_INST_0_i_2_n_0 ),
        .I3(ir[3]),
        .I4(ir[6]),
        .I5(\bcmd[0]_INST_0_i_3_n_0 ),
        .O(\stat_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bcmd[0]_INST_0_i_1 
       (.I0(ir[10]),
        .I1(ir[6]),
        .I2(\bcmd[0]_INST_0_i_4_n_0 ),
        .I3(ir[15]),
        .I4(\bcmd[0]_INST_0_i_5_n_0 ),
        .I5(\bcmd[0]_0 ),
        .O(rst_n_fl_reg_0));
  LUT3 #(
    .INIT(8'hFE)) 
    \bcmd[0]_INST_0_i_11 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(ir[4]),
        .O(\bcmd[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    \bcmd[0]_INST_0_i_2 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[10]),
        .I3(bcmd_0_sn_1),
        .I4(\bcmd[0]_INST_0_i_7_n_0 ),
        .I5(ir[5]),
        .O(\bcmd[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00000000)) 
    \bcmd[0]_INST_0_i_3 
       (.I0(ir[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(rst_n_fl_reg_2),
        .I4(\bcmd[0]_INST_0_i_9_n_0 ),
        .I5(ir[1]),
        .O(\bcmd[0]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \bcmd[0]_INST_0_i_4 
       (.I0(ir[12]),
        .I1(ir[13]),
        .I2(ir[14]),
        .O(\bcmd[0]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bcmd[0]_INST_0_i_5 
       (.I0(ir[9]),
        .I1(ir[8]),
        .O(\bcmd[0]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bcmd[0]_INST_0_i_7 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[7]),
        .O(\bcmd[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bcmd[0]_INST_0_i_8 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(ir[15]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(ir[4]),
        .I5(\bcmd[1]_INST_0_i_8_n_0 ),
        .O(rst_n_fl_reg_2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \bcmd[0]_INST_0_i_9 
       (.I0(\eir_fl_reg[1]_0 ),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(ir[13]),
        .I4(\bcmd[1]_INST_0_i_8_n_0 ),
        .I5(\bcmd[0]_INST_0_i_11_n_0 ),
        .O(\bcmd[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEAAA)) 
    \bcmd[1]_INST_0 
       (.I0(\bcmd[1]_INST_0_i_1_n_0 ),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(ir[6]),
        .I4(ir[10]),
        .I5(\bcmd[2]_INST_0_i_1_n_0 ),
        .O(\stat_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABFFFFFFFF)) 
    \bcmd[1]_INST_0_i_1 
       (.I0(\bcmd[1]_INST_0_i_2_n_0 ),
        .I1(\bcmd[1] ),
        .I2(ir[1]),
        .I3(rst_n_fl_reg_1),
        .I4(Q[1]),
        .I5(\bcmd[1]_INST_0_i_5_n_0 ),
        .O(\bcmd[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \bcmd[1]_INST_0_i_2 
       (.I0(ir[5]),
        .I1(\bcmd[1]_INST_0_i_6_n_0 ),
        .I2(ir[3]),
        .I3(\bcmd[1]_INST_0_i_7_n_0 ),
        .I4(bcmd_0_sn_1),
        .I5(\bcmd[0]_INST_0_i_7_n_0 ),
        .O(\bcmd[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \bcmd[1]_INST_0_i_4 
       (.I0(\bcmd[1]_INST_0_i_8_n_0 ),
        .I1(\bcmd[1]_INST_0_i_6_n_0 ),
        .I2(ir[5]),
        .I3(ir[15]),
        .I4(\bcmd[1]_INST_0_i_9_n_0 ),
        .I5(ir[0]),
        .O(rst_n_fl_reg_1));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \bcmd[1]_INST_0_i_5 
       (.I0(ir[3]),
        .I1(ir[6]),
        .I2(\bcmd[0]_INST_0_i_7_n_0 ),
        .I3(bcmd_0_sn_1),
        .I4(\bcmd[0]_INST_0_i_5_n_0 ),
        .I5(ir[5]),
        .O(\bcmd[1]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bcmd[1]_INST_0_i_6 
       (.I0(ir[4]),
        .I1(ir[6]),
        .O(\bcmd[1]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \bcmd[1]_INST_0_i_7 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[10]),
        .O(\bcmd[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bcmd[1]_INST_0_i_8 
       (.I0(ir[3]),
        .I1(ir[2]),
        .I2(ir[8]),
        .I3(ir[10]),
        .I4(ir[9]),
        .I5(ir[7]),
        .O(\bcmd[1]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bcmd[1]_INST_0_i_9 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[11]),
        .O(\bcmd[1]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \bcmd[2]_INST_0 
       (.I0(\bcmd[2]_INST_0_i_1_n_0 ),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[7]),
        .O(bcmd));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \bcmd[2]_INST_0_i_1 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(bcmd_0_sn_1),
        .O(\bcmd[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \bctl/read_cyc[1]_i_1 
       (.I0(\read_cyc[1]_i_2_n_0 ),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(brdy),
        .I5(read_cyc[1]),
        .O(brdy_2));
  LUT3 #(
    .INIT(8'hB8)) 
    \bctl/read_cyc[2]_i_1 
       (.I0(\stat_reg[0]_0 ),
        .I1(brdy),
        .I2(read_cyc[2]),
        .O(brdy_1));
  LUT4 #(
    .INIT(16'hF088)) 
    \bdatw[10]_INST_0 
       (.I0(\mem/bwbf/bdatw3 ),
        .I1(rst_n_fl_reg_3[2]),
        .I2(rst_n_fl_reg_3[10]),
        .I3(\mem/bwbf/bdatw2 ),
        .O(bdatw[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[10]_INST_0_i_1 
       (.I0(p_1_in[2]),
        .I1(\bdatw[10]_INST_0_i_4_n_0 ),
        .I2(tnsn_dsp_b_2_sn_1),
        .I3(\tnsn_dsp_b[2]_0 ),
        .I4(\bdatw[10]_INST_0_i_7_n_0 ),
        .I5(p_2_in[2]),
        .O(rst_n_fl_reg_3[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \bdatw[10]_INST_0_i_12 
       (.I0(\bcmd[2]_INST_0_i_1_n_0 ),
        .I1(ir[7]),
        .I2(\bcmd[1]_INST_0_i_7_n_0 ),
        .I3(\bdatw[10]_INST_0_i_22_n_0 ),
        .I4(ir[6]),
        .I5(\bdatw[8]_INST_0_i_13_n_0 ),
        .O(\bdatw[10]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00F0FDFD00F0)) 
    \bdatw[10]_INST_0_i_13 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(\bdatw[8]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_11_n_0 ),
        .I5(ir[3]),
        .O(\bdatw[10]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bdatw[10]_INST_0_i_14 
       (.I0(\bdatw[11]_INST_0_i_36_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .I4(bank_sel),
        .I5(\bdatw[11]_INST_0_i_4_1 [2]),
        .O(\bdatw[10]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bdatw[10]_INST_0_i_15 
       (.I0(\bdatw[11]_INST_0_i_36_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[1]),
        .I3(ctl_selb_rn[0]),
        .I4(bank_sel),
        .I5(\bdatw[11]_INST_0_i_4_0 [2]),
        .O(\bdatw[10]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000AC000)) 
    \bdatw[10]_INST_0_i_16 
       (.I0(\grn[4]_i_20_0 [2]),
        .I1(sp_dec_0[2]),
        .I2(ctl_selb_rn[2]),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[1]),
        .I5(\bdatw[11]_INST_0_i_38_n_0 ),
        .O(\rgf/bbus_sp [2]));
  LUT6 #(
    .INIT(64'h0000000000000A0C)) 
    \bdatw[10]_INST_0_i_17 
       (.I0(\pc_reg[15]_0 [2]),
        .I1(\sr_reg[15]_0 [2]),
        .I2(ctl_selb_rn[2]),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[1]),
        .I5(\bdatw[11]_INST_0_i_38_n_0 ),
        .O(\bdatw[10]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[10]_INST_0_i_18 
       (.I0(ir[1]),
        .I1(ir[0]),
        .O(\bdatw[10]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \bdatw[10]_INST_0_i_2 
       (.I0(p_1_in[10]),
        .I1(bbus_rn[2]),
        .I2(bdatw_10_sn_1),
        .I3(\bdatw[15]_INST_0_i_7_n_0 ),
        .I4(eir[10]),
        .I5(ctl_selb_0[0]),
        .O(rst_n_fl_reg_3[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[10]_INST_0_i_22 
       (.I0(ir[4]),
        .I1(ir[5]),
        .O(\bdatw[10]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF04CC)) 
    \bdatw[10]_INST_0_i_3 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(\bdatw[10]_INST_0_i_12_n_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[10]_INST_0_i_13_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[10]_INST_0_i_4 
       (.I0(\sr_reg[0] ),
        .I1(\bdatw[11]_INST_0_i_1_0 [2]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[11]_INST_0_i_1_1 [2]),
        .I4(\bdatw[10]_INST_0_i_14_n_0 ),
        .I5(\bdatw[10]_INST_0_i_15_n_0 ),
        .O(\bdatw[10]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \bdatw[10]_INST_0_i_7 
       (.I0(\rgf/bbus_sp [2]),
        .I1(bbus_sel_cr[3]),
        .I2(\grn[4]_i_19 [2]),
        .I3(\bdatw[10]_INST_0_i_17_n_0 ),
        .O(\bdatw[10]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[10]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_7_n_0 ),
        .I1(eir[2]),
        .I2(ctl_selb_0[0]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'hCCFCFFFFEEFEEEFE)) 
    \bdatw[10]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_11_n_0 ),
        .I1(\bdatw[11]_INST_0_i_26_n_0 ),
        .I2(ir[9]),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[11]_INST_0_i_24_n_0 ),
        .I5(\bdatw[10]_INST_0_i_18_n_0 ),
        .O(p_1_in[10]));
  LUT4 #(
    .INIT(16'hF088)) 
    \bdatw[11]_INST_0 
       (.I0(\mem/bwbf/bdatw3 ),
        .I1(rst_n_fl_reg_3[3]),
        .I2(rst_n_fl_reg_3[11]),
        .I3(\mem/bwbf/bdatw2 ),
        .O(bdatw[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[11]_INST_0_i_1 
       (.I0(p_1_in[3]),
        .I1(\bdatw[11]_INST_0_i_4_n_0 ),
        .I2(tnsn_dsp_b_3_sn_1),
        .I3(\tnsn_dsp_b[3]_0 ),
        .I4(\bdatw[11]_INST_0_i_7_n_0 ),
        .I5(p_2_in[3]),
        .O(rst_n_fl_reg_3[3]));
  LUT6 #(
    .INIT(64'hDCDCDCD0FFDCFFD0)) 
    \bdatw[11]_INST_0_i_12 
       (.I0(\stat_reg[1]_1 ),
        .I1(\bdatw[15]_INST_0_i_11_n_0 ),
        .I2(ir[2]),
        .I3(ir[3]),
        .I4(\bdatw[11]_INST_0_i_25_n_0 ),
        .I5(\bdatw[8]_INST_0_i_12_n_0 ),
        .O(\bdatw[11]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \bdatw[11]_INST_0_i_13 
       (.I0(bank_sel),
        .I1(\bdatw[11]_INST_0_i_32_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(ctl_selb_0[1]),
        .I4(ctl_selb_0[0]),
        .I5(ctl_selb_0[2]),
        .O(\sr_reg[0] ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \bdatw[11]_INST_0_i_14 
       (.I0(bank_sel),
        .I1(ctl_selb_rn[1]),
        .I2(ctl_selb_rn[2]),
        .I3(ctl_selb_rn[0]),
        .I4(\bdatw[11]_INST_0_i_36_n_0 ),
        .O(\sr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bdatw[11]_INST_0_i_15 
       (.I0(\bdatw[11]_INST_0_i_36_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .I4(bank_sel),
        .I5(\bdatw[11]_INST_0_i_4_1 [3]),
        .O(\bdatw[11]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bdatw[11]_INST_0_i_16 
       (.I0(\bdatw[11]_INST_0_i_36_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[1]),
        .I3(ctl_selb_rn[0]),
        .I4(bank_sel),
        .I5(\bdatw[11]_INST_0_i_4_0 [3]),
        .O(\bdatw[11]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bdatw[11]_INST_0_i_17 
       (.I0(bank_sel),
        .I1(ctl_selb_rn[1]),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[2]),
        .I4(\bdatw[11]_INST_0_i_36_n_0 ),
        .O(\sr_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \bdatw[11]_INST_0_i_18 
       (.I0(bank_sel),
        .I1(\bdatw[11]_INST_0_i_32_n_0 ),
        .I2(ctl_selb_0[1]),
        .I3(ctl_selb_0[0]),
        .I4(ctl_selb_0[2]),
        .I5(ctl_selb_rn[2]),
        .O(\sr_reg[0]_6 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \bdatw[11]_INST_0_i_19 
       (.I0(bank_sel),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[1]),
        .I3(ctl_selb_rn[0]),
        .I4(\bdatw[11]_INST_0_i_36_n_0 ),
        .O(\sr_reg[0]_4 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \bdatw[11]_INST_0_i_2 
       (.I0(p_1_in[11]),
        .I1(bbus_rn[3]),
        .I2(bdatw_11_sn_1),
        .I3(\bdatw[15]_INST_0_i_7_n_0 ),
        .I4(eir[11]),
        .I5(ctl_selb_0[0]),
        .O(rst_n_fl_reg_3[11]));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \bdatw[11]_INST_0_i_20 
       (.I0(bank_sel),
        .I1(\bdatw[11]_INST_0_i_37_n_0 ),
        .I2(ctl_selb_rn[1]),
        .I3(ctl_selb_0[1]),
        .I4(ctl_selb_0[0]),
        .I5(ctl_selb_0[2]),
        .O(\sr_reg[0]_5 ));
  LUT6 #(
    .INIT(64'h00000000000AC000)) 
    \bdatw[11]_INST_0_i_21 
       (.I0(\grn[4]_i_20_0 [3]),
        .I1(sp_dec_0[3]),
        .I2(ctl_selb_rn[2]),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[1]),
        .I5(\bdatw[11]_INST_0_i_38_n_0 ),
        .O(\rgf/bbus_sp [3]));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \bdatw[11]_INST_0_i_22 
       (.I0(ctl_selb_rn[1]),
        .I1(ctl_selb_rn[0]),
        .I2(ctl_selb_rn[2]),
        .I3(ctl_selb_0[0]),
        .I4(ctl_selb_0[1]),
        .I5(ctl_selb_0[2]),
        .O(bbus_sel_cr[3]));
  LUT6 #(
    .INIT(64'h0000000000000A0C)) 
    \bdatw[11]_INST_0_i_23 
       (.I0(\pc_reg[15]_0 [3]),
        .I1(\sr_reg[15]_0 [3]),
        .I2(ctl_selb_rn[2]),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[1]),
        .I5(\bdatw[11]_INST_0_i_38_n_0 ),
        .O(\bdatw[11]_INST_0_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \bdatw[11]_INST_0_i_24 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ir[2]),
        .I2(ir[3]),
        .O(\bdatw[11]_INST_0_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bdatw[11]_INST_0_i_25 
       (.I0(ir[0]),
        .I1(ir[1]),
        .O(\bdatw[11]_INST_0_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \bdatw[11]_INST_0_i_26 
       (.I0(\bdatw[15]_INST_0_i_11_n_0 ),
        .I1(ir[2]),
        .I2(ir[3]),
        .O(\bdatw[11]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
    \bdatw[11]_INST_0_i_3 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(\bdatw[15]_INST_0_i_28_n_0 ),
        .I3(ir[0]),
        .I4(ir[1]),
        .I5(\bdatw[11]_INST_0_i_12_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \bdatw[11]_INST_0_i_30 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_rn[0]),
        .I2(ctl_selb_rn[1]),
        .I3(ctl_selb_0[0]),
        .I4(ctl_selb_0[1]),
        .I5(ctl_selb_0[2]),
        .O(bbus_sel_cr[0]));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \bdatw[11]_INST_0_i_31 
       (.I0(ctl_selb_rn[1]),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_0[0]),
        .I4(ctl_selb_0[1]),
        .I5(ctl_selb_0[2]),
        .O(bbus_sel_cr[1]));
  LUT5 #(
    .INIT(32'hFFFF5557)) 
    \bdatw[11]_INST_0_i_32 
       (.I0(ir[1]),
        .I1(\fch_irq_lev[1]_i_2_n_0 ),
        .I2(\bcmd[1]_INST_0_i_2_n_0 ),
        .I3(ir[0]),
        .I4(\bdatw[15]_INST_0_i_41_n_0 ),
        .O(\bdatw[11]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h00008020AAAAAAAA)) 
    \bdatw[11]_INST_0_i_33 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(ir[6]),
        .I3(\bdatw[10]_INST_0_i_22_n_0 ),
        .I4(\bdatw[15]_INST_0_i_44_n_0 ),
        .I5(\bdatw[15]_INST_0_i_26_n_0 ),
        .O(ctl_selb_rn[2]));
  LUT6 #(
    .INIT(64'h00008020AAAAAAAA)) 
    \bdatw[11]_INST_0_i_34 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(ir[6]),
        .I3(\bdatw[10]_INST_0_i_22_n_0 ),
        .I4(\bdatw[15]_INST_0_i_44_n_0 ),
        .I5(\bdatw[15]_INST_0_i_26_n_0 ),
        .O(ctl_selb_rn[1]));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \bdatw[11]_INST_0_i_35 
       (.I0(\bdatw[15]_INST_0_i_41_n_0 ),
        .I1(ir[0]),
        .I2(\bcmd[1]_INST_0_i_2_n_0 ),
        .I3(\fch_irq_lev[1]_i_2_n_0 ),
        .O(ctl_selb_rn[0]));
  LUT6 #(
    .INIT(64'hAAABFFFFAAABAAAB)) 
    \bdatw[11]_INST_0_i_36 
       (.I0(ctl_selb_0[2]),
        .I1(\bdatw[15]_INST_0_i_24_n_0 ),
        .I2(\bdatw[11]_INST_0_i_40_n_0 ),
        .I3(\bdatw[8]_INST_0_i_15_0 ),
        .I4(\bdatw[11]_INST_0_i_42_n_0 ),
        .I5(\bdatw[15]_INST_0_i_41_n_0 ),
        .O(\bdatw[11]_INST_0_i_36_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF5557)) 
    \bdatw[11]_INST_0_i_37 
       (.I0(ir[2]),
        .I1(\fch_irq_lev[1]_i_2_n_0 ),
        .I2(\bcmd[1]_INST_0_i_2_n_0 ),
        .I3(ir[0]),
        .I4(\bdatw[15]_INST_0_i_41_n_0 ),
        .O(\bdatw[11]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBA)) 
    \bdatw[11]_INST_0_i_38 
       (.I0(ctl_selb_0[2]),
        .I1(\bdatw[11]_INST_0_i_42_n_0 ),
        .I2(\bdatw[15]_INST_0_i_41_n_0 ),
        .I3(\bdatw[15]_INST_0_i_24_n_0 ),
        .I4(\bdatw[11]_INST_0_i_40_n_0 ),
        .I5(\bdatw[8]_INST_0_i_15_0 ),
        .O(\bdatw[11]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[11]_INST_0_i_4 
       (.I0(\sr_reg[0] ),
        .I1(\bdatw[11]_INST_0_i_1_0 [3]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[11]_INST_0_i_1_1 [3]),
        .I4(\bdatw[11]_INST_0_i_15_n_0 ),
        .I5(\bdatw[11]_INST_0_i_16_n_0 ),
        .O(\bdatw[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[11]_INST_0_i_40 
       (.I0(Q[0]),
        .I1(\bdatw[15]_INST_0_i_25_n_0 ),
        .I2(\bdatw[15]_INST_0_i_50_n_0 ),
        .I3(\bdatw[15]_INST_0_i_49_n_0 ),
        .I4(\bdatw[11]_INST_0_i_43_n_0 ),
        .I5(\bdatw[15]_INST_0_i_54_n_0 ),
        .O(\bdatw[11]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFBFFFBFBF)) 
    \bdatw[11]_INST_0_i_42 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(\bdatw[11]_INST_0_i_44_n_0 ),
        .I2(\bdatw[11]_INST_0_i_45_n_0 ),
        .I3(\bcmd[1] ),
        .I4(\badr[15]_INST_0_i_59_n_0 ),
        .I5(Q[1]),
        .O(\bdatw[11]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h000011110000FF13)) 
    \bdatw[11]_INST_0_i_43 
       (.I0(\bdatw[11]_INST_0_i_46_n_0 ),
        .I1(\iv[15]_i_5_n_0 ),
        .I2(ir[9]),
        .I3(\bdatw[11]_INST_0_i_47_n_0 ),
        .I4(bcmd_0_sn_1),
        .I5(\bcmd[0]_INST_0_i_7_n_0 ),
        .O(\bdatw[11]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \bdatw[11]_INST_0_i_44 
       (.I0(\bcmd[0]_INST_0_i_7_n_0 ),
        .I1(bcmd_0_sn_1),
        .I2(\bcmd[1]_INST_0_i_7_n_0 ),
        .I3(ir[3]),
        .I4(ir[4]),
        .I5(ir[6]),
        .O(\bdatw[11]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \bdatw[11]_INST_0_i_45 
       (.I0(ir[5]),
        .I1(\bcmd[0]_INST_0_i_7_n_0 ),
        .I2(bcmd_0_sn_1),
        .I3(\bcmd[1]_INST_0_i_7_n_0 ),
        .I4(ir[3]),
        .I5(ir[4]),
        .O(\bdatw[11]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \bdatw[11]_INST_0_i_46 
       (.I0(ir[8]),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(ir[12]),
        .O(\bdatw[11]_INST_0_i_46_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatw[11]_INST_0_i_47 
       (.I0(ir[8]),
        .I1(ir[6]),
        .I2(ir[10]),
        .O(\bdatw[11]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \bdatw[11]_INST_0_i_7 
       (.I0(\rgf/bbus_sp [3]),
        .I1(bbus_sel_cr[3]),
        .I2(\grn[4]_i_19 [3]),
        .I3(\bdatw[11]_INST_0_i_23_n_0 ),
        .O(\bdatw[11]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[11]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_7_n_0 ),
        .I1(eir[3]),
        .I2(ctl_selb_0[0]),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hFFD1FFD1FFFFFFD1)) 
    \bdatw[11]_INST_0_i_9 
       (.I0(\bdatw[11]_INST_0_i_24_n_0 ),
        .I1(\bdatw[11]_INST_0_i_25_n_0 ),
        .I2(\bdatw[15]_INST_0_i_11_n_0 ),
        .I3(\bdatw[11]_INST_0_i_26_n_0 ),
        .I4(ir[10]),
        .I5(\stat_reg[1]_1 ),
        .O(p_1_in[11]));
  LUT4 #(
    .INIT(16'hF088)) 
    \bdatw[12]_INST_0 
       (.I0(\mem/bwbf/bdatw3 ),
        .I1(rst_n_fl_reg_3[4]),
        .I2(rst_n_fl_reg_3[12]),
        .I3(\mem/bwbf/bdatw2 ),
        .O(bdatw[12]));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \bdatw[12]_INST_0_i_1 
       (.I0(p_1_in[4]),
        .I1(p_0_in[0]),
        .I2(\bdatw[15]_INST_0_i_7_n_0 ),
        .I3(eir[4]),
        .I4(ctl_selb_0[0]),
        .O(rst_n_fl_reg_3[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFF01)) 
    \bdatw[12]_INST_0_i_2 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(\bdatw[15]_INST_0_i_9_n_0 ),
        .I3(\bdatw[15]_INST_0_i_10_n_0 ),
        .I4(\bdatw[15]_INST_0_i_11_n_0 ),
        .I5(\bdatw[12]_INST_0_i_5_n_0 ),
        .O(rst_n_fl_reg_3[12]));
  LUT6 #(
    .INIT(64'hFF01FF01FFFFFF01)) 
    \bdatw[12]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_13_n_0 ),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(\bdatw[12]_INST_0_i_6_n_0 ),
        .I4(ir[3]),
        .I5(\stat_reg[1]_1 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    \bdatw[12]_INST_0_i_5 
       (.I0(ctl_selb_0[0]),
        .I1(eir[12]),
        .I2(\bdatw[15]_INST_0_i_7_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_0 ),
        .I4(\bdatw[12]_INST_0_i_2_1 ),
        .I5(\bdatw[12]_INST_0_i_2_2 ),
        .O(\bdatw[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF0C5D0CFF0CFF0C)) 
    \bdatw[12]_INST_0_i_6 
       (.I0(\bdatw[8]_INST_0_i_18_n_0 ),
        .I1(ir[4]),
        .I2(\bdatw[8]_INST_0_i_12_n_0 ),
        .I3(\bdatw[15]_INST_0_i_11_n_0 ),
        .I4(ir[3]),
        .I5(ir[2]),
        .O(\bdatw[12]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF088)) 
    \bdatw[13]_INST_0 
       (.I0(\mem/bwbf/bdatw3 ),
        .I1(rst_n_fl_reg_3[5]),
        .I2(rst_n_fl_reg_3[13]),
        .I3(\mem/bwbf/bdatw2 ),
        .O(bdatw[13]));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \bdatw[13]_INST_0_i_1 
       (.I0(p_1_in[5]),
        .I1(p_0_in[1]),
        .I2(\bdatw[15]_INST_0_i_7_n_0 ),
        .I3(eir[5]),
        .I4(ctl_selb_0[0]),
        .O(rst_n_fl_reg_3[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFF04)) 
    \bdatw[13]_INST_0_i_2 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(\bdatw[15]_INST_0_i_9_n_0 ),
        .I3(\bdatw[15]_INST_0_i_10_n_0 ),
        .I4(\bdatw[15]_INST_0_i_11_n_0 ),
        .I5(\bdatw[13]_INST_0_i_5_n_0 ),
        .O(rst_n_fl_reg_3[13]));
  LUT6 #(
    .INIT(64'hFF04FF04FFFFFF04)) 
    \bdatw[13]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_13_n_0 ),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(\bdatw[13]_INST_0_i_6_n_0 ),
        .I4(ir[4]),
        .I5(\stat_reg[1]_1 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    \bdatw[13]_INST_0_i_5 
       (.I0(ctl_selb_0[0]),
        .I1(eir[13]),
        .I2(\bdatw[15]_INST_0_i_7_n_0 ),
        .I3(\bdatw[13]_INST_0_i_2_0 ),
        .I4(\bdatw[13]_INST_0_i_2_1 ),
        .I5(\bdatw[13]_INST_0_i_2_2 ),
        .O(\bdatw[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF0C5D0CFF0CFF0C)) 
    \bdatw[13]_INST_0_i_6 
       (.I0(\bdatw[9]_INST_0_i_17_n_0 ),
        .I1(ir[5]),
        .I2(\bdatw[8]_INST_0_i_12_n_0 ),
        .I3(\bdatw[15]_INST_0_i_11_n_0 ),
        .I4(ir[3]),
        .I5(ir[2]),
        .O(\bdatw[13]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF088)) 
    \bdatw[14]_INST_0 
       (.I0(\mem/bwbf/bdatw3 ),
        .I1(rst_n_fl_reg_3[6]),
        .I2(rst_n_fl_reg_3[14]),
        .I3(\mem/bwbf/bdatw2 ),
        .O(bdatw[14]));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \bdatw[14]_INST_0_i_1 
       (.I0(p_1_in[6]),
        .I1(p_0_in[2]),
        .I2(\bdatw[15]_INST_0_i_7_n_0 ),
        .I3(eir[6]),
        .I4(ctl_selb_0[0]),
        .O(rst_n_fl_reg_3[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFF04)) 
    \bdatw[14]_INST_0_i_2 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(\bdatw[15]_INST_0_i_9_n_0 ),
        .I3(\bdatw[15]_INST_0_i_10_n_0 ),
        .I4(\bdatw[15]_INST_0_i_11_n_0 ),
        .I5(\bdatw[14]_INST_0_i_5_n_0 ),
        .O(rst_n_fl_reg_3[14]));
  LUT6 #(
    .INIT(64'hFF04FF04FFFFFF04)) 
    \bdatw[14]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_13_n_0 ),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(\bdatw[14]_INST_0_i_6_n_0 ),
        .I4(ir[5]),
        .I5(\stat_reg[1]_1 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    \bdatw[14]_INST_0_i_5 
       (.I0(ctl_selb_0[0]),
        .I1(eir[14]),
        .I2(\bdatw[15]_INST_0_i_7_n_0 ),
        .I3(\bdatw[14]_INST_0_i_2_0 ),
        .I4(\bdatw[14]_INST_0_i_2_1 ),
        .I5(\bdatw[14]_INST_0_i_2_2 ),
        .O(\bdatw[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF0C5D0CFF0CFF0C)) 
    \bdatw[14]_INST_0_i_6 
       (.I0(\bdatw[10]_INST_0_i_18_n_0 ),
        .I1(ir[6]),
        .I2(\bdatw[8]_INST_0_i_12_n_0 ),
        .I3(\bdatw[15]_INST_0_i_11_n_0 ),
        .I4(ir[3]),
        .I5(ir[2]),
        .O(\bdatw[14]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF088)) 
    \bdatw[15]_INST_0 
       (.I0(\mem/bwbf/bdatw3 ),
        .I1(rst_n_fl_reg_3[7]),
        .I2(bbus_0),
        .I3(\mem/bwbf/bdatw2 ),
        .O(bdatw[15]));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \bdatw[15]_INST_0_i_1 
       (.I0(\stat_reg[1]_0 ),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(ir[10]),
        .I5(\bcmd[2]_INST_0_i_1_n_0 ),
        .O(\mem/bwbf/bdatw3 ));
  LUT5 #(
    .INIT(32'h4FFF4444)) 
    \bdatw[15]_INST_0_i_10 
       (.I0(\stat_reg[1]_1 ),
        .I1(ir[10]),
        .I2(ir[3]),
        .I3(ir[2]),
        .I4(\bdatw[15]_INST_0_i_11_n_0 ),
        .O(\bdatw[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \bdatw[15]_INST_0_i_11 
       (.I0(ir[6]),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(\bcmd[0]_INST_0_i_7_n_0 ),
        .I4(bcmd_0_sn_1),
        .I5(\bcmd[1]_INST_0_i_7_n_0 ),
        .O(\bdatw[15]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    \bdatw[15]_INST_0_i_12 
       (.I0(ctl_selb_0[0]),
        .I1(eir[15]),
        .I2(\bdatw[15]_INST_0_i_7_n_0 ),
        .I3(\bdatw[15]_INST_0_i_3_0 ),
        .I4(\bdatw[15]_INST_0_i_3_1 ),
        .I5(\bdatw[15]_INST_0_i_3_2 ),
        .O(\bdatw[15]_INST_0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \bdatw[15]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ir[3]),
        .I2(ir[2]),
        .O(\bdatw[15]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hC8CCC8CCFFFFC8CC)) 
    \bdatw[15]_INST_0_i_14 
       (.I0(\bdatw[11]_INST_0_i_25_n_0 ),
        .I1(\bdatw[15]_INST_0_i_11_n_0 ),
        .I2(ir[3]),
        .I3(ir[2]),
        .I4(ir[7]),
        .I5(\bdatw[8]_INST_0_i_12_n_0 ),
        .O(\bdatw[15]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hABAB0000ABAB00AB)) 
    \bdatw[15]_INST_0_i_15 
       (.I0(bcmd_0_sn_1),
        .I1(\bdatw[15]_INST_0_i_32_n_0 ),
        .I2(\bdatw[11]_INST_0_i_41 ),
        .I3(\bdatw[15]_INST_0_i_34_n_0 ),
        .I4(\eir_fl_reg[1]_0 ),
        .I5(\sr_reg[4] ),
        .O(\stat_reg[1]_1 ));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \bdatw[15]_INST_0_i_2 
       (.I0(p_1_in[7]),
        .I1(p_0_in[3]),
        .I2(\bdatw[15]_INST_0_i_7_n_0 ),
        .I3(eir[7]),
        .I4(ctl_selb_0[0]),
        .O(rst_n_fl_reg_3[7]));
  LUT5 #(
    .INIT(32'hFFF4FFFF)) 
    \bdatw[15]_INST_0_i_22 
       (.I0(Q[1]),
        .I1(\sp[0]_i_5_n_0 ),
        .I2(\bdatw[15]_INST_0_i_40_n_0 ),
        .I3(\bdatw[15]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_41_n_0 ),
        .O(ctl_selb_0[1]));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \bdatw[15]_INST_0_i_23 
       (.I0(\iv[15]_i_10_0 ),
        .I1(\bdatw[8]_INST_0_i_12_n_0 ),
        .I2(\bdatw[15]_INST_0_i_43_n_0 ),
        .I3(\bdatw[15]_INST_0_i_11_n_0 ),
        .I4(\bdatw[15]_INST_0_i_28_n_0 ),
        .O(ctl_selb_0[2]));
  LUT6 #(
    .INIT(64'hAAAAABAAAEAAABAA)) 
    \bdatw[15]_INST_0_i_24 
       (.I0(\bdatw[15]_INST_0_i_11_n_0 ),
        .I1(ir[4]),
        .I2(\bdatw[15]_INST_0_i_44_n_0 ),
        .I3(ir[6]),
        .I4(ir[3]),
        .I5(ir[5]),
        .O(\bdatw[15]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \bdatw[15]_INST_0_i_25 
       (.I0(\bcmd[1]_INST_0_i_8_n_0 ),
        .I1(\bcmd[0]_INST_0_i_11_n_0 ),
        .I2(\bdatw[15]_INST_0_i_45_n_0 ),
        .I3(ir[0]),
        .I4(ir[1]),
        .I5(\bdatw[15]_INST_0_i_8_0 ),
        .O(\bdatw[15]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bdatw[15]_INST_0_i_26 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_9_n_0 ),
        .I1(\tnsn_dsp_a[8]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_47_n_0 ),
        .I3(\bdatw[15]_INST_0_i_48_n_0 ),
        .I4(\bdatw[15]_INST_0_i_49_n_0 ),
        .I5(\bdatw[15]_INST_0_i_50_n_0 ),
        .O(\bdatw[15]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \bdatw[15]_INST_0_i_28 
       (.I0(ir[6]),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(\bcmd[1]_INST_0_i_7_n_0 ),
        .I4(bcmd_0_sn_1),
        .I5(\bcmd[0]_INST_0_i_7_n_0 ),
        .O(\bdatw[15]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFF08)) 
    \bdatw[15]_INST_0_i_3 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(\bdatw[15]_INST_0_i_9_n_0 ),
        .I3(\bdatw[15]_INST_0_i_10_n_0 ),
        .I4(\bdatw[15]_INST_0_i_11_n_0 ),
        .I5(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(bbus_0));
  LUT3 #(
    .INIT(8'h04)) 
    \bdatw[15]_INST_0_i_32 
       (.I0(ir[12]),
        .I1(\sr_reg[15]_0 [6]),
        .I2(ir[14]),
        .O(\bdatw[15]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \bdatw[15]_INST_0_i_34 
       (.I0(ir[14]),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(\sr_reg[15]_0 [6]),
        .O(\bdatw[15]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h2300450001226722)) 
    \bdatw[15]_INST_0_i_35 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(\sr_reg[15]_0 [4]),
        .I3(ir[12]),
        .I4(\sr_reg[15]_0 [7]),
        .I5(\sr_reg[15]_0 [5]),
        .O(\sr_reg[4] ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \bdatw[15]_INST_0_i_36 
       (.I0(bank_sel),
        .I1(ctl_selb_rn[0]),
        .I2(ctl_selb_rn[1]),
        .I3(ctl_selb_rn[2]),
        .I4(\bdatw[11]_INST_0_i_36_n_0 ),
        .O(\sr_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \bdatw[15]_INST_0_i_37 
       (.I0(bank_sel),
        .I1(ctl_selb_rn[1]),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[2]),
        .I4(\bdatw[11]_INST_0_i_36_n_0 ),
        .O(\sr_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \bdatw[15]_INST_0_i_38 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_rn[0]),
        .I2(ctl_selb_rn[1]),
        .I3(ctl_selb_0[0]),
        .I4(ctl_selb_0[1]),
        .I5(ctl_selb_0[2]),
        .O(bbus_sel_cr[4]));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \bdatw[15]_INST_0_i_39 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_rn[0]),
        .I2(ctl_selb_rn[1]),
        .I3(ctl_selb_0[0]),
        .I4(ctl_selb_0[1]),
        .I5(ctl_selb_0[2]),
        .O(bbus_sel_cr[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \bdatw[15]_INST_0_i_4 
       (.I0(\stat_reg[1]_0 ),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(ir[10]),
        .I5(\bcmd[2]_INST_0_i_1_n_0 ),
        .O(\mem/bwbf/bdatw2 ));
  LUT6 #(
    .INIT(64'h0000001300000010)) 
    \bdatw[15]_INST_0_i_40 
       (.I0(ir[6]),
        .I1(ir[4]),
        .I2(ir[3]),
        .I3(\bcmd[1]_INST_0_i_7_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_24_n_0 ),
        .I5(ir[5]),
        .O(\bdatw[15]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bdatw[15]_INST_0_i_41 
       (.I0(\bdatw[15]_INST_0_i_50_n_0 ),
        .I1(\bdatw[15]_INST_0_i_49_n_0 ),
        .I2(\bdatw[15]_INST_0_i_48_n_0 ),
        .I3(\bdatw[15]_INST_0_i_47_n_0 ),
        .I4(\bdatw[15]_INST_0_i_54_n_0 ),
        .I5(\bdatw[15]_INST_0_i_55_n_0 ),
        .O(\bdatw[15]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000EEF0)) 
    \bdatw[15]_INST_0_i_43 
       (.I0(\bdatw[15]_INST_0_i_32_n_0 ),
        .I1(\bdatw[11]_INST_0_i_41 ),
        .I2(\bdatw[15]_INST_0_i_34_n_0 ),
        .I3(ir[11]),
        .I4(\badr[15]_INST_0_i_28_0 ),
        .I5(Q[0]),
        .O(\bdatw[15]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \bdatw[15]_INST_0_i_44 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[7]),
        .I4(bcmd_0_sn_1),
        .I5(\bcmd[0]_INST_0_i_5_n_0 ),
        .O(\bdatw[15]_INST_0_i_44_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bdatw[15]_INST_0_i_45 
       (.I0(ir[15]),
        .I1(ir[11]),
        .I2(ir[12]),
        .I3(ir[13]),
        .I4(ir[14]),
        .O(\bdatw[15]_INST_0_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \bdatw[15]_INST_0_i_47 
       (.I0(ir[8]),
        .I1(\bcmd[0]_INST_0_i_4_n_0 ),
        .I2(bcmd_0_sn_1),
        .I3(ir[6]),
        .I4(ir[10]),
        .O(\bdatw[15]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000001011)) 
    \bdatw[15]_INST_0_i_48 
       (.I0(\bcmd[0]_INST_0_i_7_n_0 ),
        .I1(bcmd_0_sn_1),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ir[10]),
        .I5(ir[9]),
        .O(\bdatw[15]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \bdatw[15]_INST_0_i_49 
       (.I0(\bcmd[0]_INST_0_i_7_n_0 ),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ir[9]),
        .I5(\eir_fl_reg[1]_0 ),
        .O(\bdatw[15]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FF40FFFFFF40)) 
    \bdatw[15]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_13_n_0 ),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(\bdatw[15]_INST_0_i_14_n_0 ),
        .I4(ir[6]),
        .I5(\stat_reg[1]_1 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h0000100001011000)) 
    \bdatw[15]_INST_0_i_50 
       (.I0(\bcmd[0]_INST_0_i_4_n_0 ),
        .I1(bcmd_0_sn_1),
        .I2(ir[9]),
        .I3(ir[6]),
        .I4(ir[10]),
        .I5(ir[7]),
        .O(\bdatw[15]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000075)) 
    \bdatw[15]_INST_0_i_54 
       (.I0(bcmd_0_sn_1),
        .I1(\badr[15]_INST_0_i_34_0 ),
        .I2(ir[10]),
        .I3(\tnsn_dsp_a[8]_INST_0_i_21_n_0 ),
        .I4(ir[8]),
        .I5(\bcmd[0]_INST_0_i_4_n_0 ),
        .O(\bdatw[15]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000084)) 
    \bdatw[15]_INST_0_i_55 
       (.I0(ir[3]),
        .I1(ir[6]),
        .I2(\bdatw[10]_INST_0_i_22_n_0 ),
        .I3(\bcmd[0]_INST_0_i_7_n_0 ),
        .I4(bcmd_0_sn_1),
        .I5(\bcmd[0]_INST_0_i_5_n_0 ),
        .O(\bdatw[15]_INST_0_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_7 
       (.I0(ctl_selb_0[1]),
        .I1(ctl_selb_0[2]),
        .O(\bdatw[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFFFFFFFFFF)) 
    \bdatw[15]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_24_n_0 ),
        .I1(Q[0]),
        .I2(\bdatw[15]_INST_0_i_25_n_0 ),
        .I3(\bdatw[15]_INST_0_i_26_n_0 ),
        .I4(\grn[7]_i_4_1 ),
        .I5(\stat_reg[1]_1 ),
        .O(ctl_selb_0[0]));
  LUT3 #(
    .INIT(8'h7F)) 
    \bdatw[15]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ir[2]),
        .I2(ir[3]),
        .O(\bdatw[15]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF088)) 
    \bdatw[8]_INST_0 
       (.I0(\mem/bwbf/bdatw3 ),
        .I1(rst_n_fl_reg_3[0]),
        .I2(rst_n_fl_reg_3[8]),
        .I3(\mem/bwbf/bdatw2 ),
        .O(bdatw[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[8]_INST_0_i_1 
       (.I0(p_1_in[0]),
        .I1(\bdatw[8]_INST_0_i_4_n_0 ),
        .I2(tnsn_dsp_b_0_sn_1),
        .I3(\tnsn_dsp_b[0]_0 ),
        .I4(\bdatw[8]_INST_0_i_7_n_0 ),
        .I5(p_2_in[0]),
        .O(rst_n_fl_reg_3[0]));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \bdatw[8]_INST_0_i_12 
       (.I0(\grn[7]_i_3_1 ),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(ir[12]),
        .O(\bdatw[8]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[8]_INST_0_i_13 
       (.I0(ir[3]),
        .I1(ir[2]),
        .O(\bdatw[8]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bdatw[8]_INST_0_i_14 
       (.I0(\bdatw[11]_INST_0_i_36_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .I4(bank_sel),
        .I5(\bdatw[11]_INST_0_i_4_1 [0]),
        .O(\bdatw[8]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bdatw[8]_INST_0_i_15 
       (.I0(\bdatw[11]_INST_0_i_36_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[1]),
        .I3(ctl_selb_rn[0]),
        .I4(bank_sel),
        .I5(\bdatw[11]_INST_0_i_4_0 [0]),
        .O(\bdatw[8]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000AC000)) 
    \bdatw[8]_INST_0_i_16 
       (.I0(\grn[4]_i_20_0 [0]),
        .I1(sp_dec_0[0]),
        .I2(ctl_selb_rn[2]),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[1]),
        .I5(\bdatw[11]_INST_0_i_38_n_0 ),
        .O(\rgf/bbus_sp [0]));
  LUT6 #(
    .INIT(64'h0000000000000A0C)) 
    \bdatw[8]_INST_0_i_17 
       (.I0(\pc_reg[15]_0 [0]),
        .I1(\sr_reg[15]_0 [0]),
        .I2(ctl_selb_rn[2]),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[1]),
        .I5(\bdatw[11]_INST_0_i_38_n_0 ),
        .O(\bdatw[8]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[8]_INST_0_i_18 
       (.I0(ir[0]),
        .I1(ir[1]),
        .O(\bdatw[8]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \bdatw[8]_INST_0_i_2 
       (.I0(p_1_in[8]),
        .I1(bbus_rn[0]),
        .I2(bdatw_8_sn_1),
        .I3(\bdatw[15]_INST_0_i_7_n_0 ),
        .I4(eir[8]),
        .I5(ctl_selb_0[0]),
        .O(rst_n_fl_reg_3[8]));
  LUT6 #(
    .INIT(64'hBBBBAAAABBBBAFA0)) 
    \bdatw[8]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_11_n_0 ),
        .I1(\bdatw[8]_INST_0_i_12_n_0 ),
        .I2(\bdatw[8]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_28_n_0 ),
        .I4(ir[0]),
        .I5(ir[1]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[8]_INST_0_i_4 
       (.I0(\sr_reg[0] ),
        .I1(\bdatw[11]_INST_0_i_1_0 [0]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[11]_INST_0_i_1_1 [0]),
        .I4(\bdatw[8]_INST_0_i_14_n_0 ),
        .I5(\bdatw[8]_INST_0_i_15_n_0 ),
        .O(\bdatw[8]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \bdatw[8]_INST_0_i_7 
       (.I0(\rgf/bbus_sp [0]),
        .I1(bbus_sel_cr[3]),
        .I2(\grn[4]_i_19 [0]),
        .I3(\bdatw[8]_INST_0_i_17_n_0 ),
        .O(\bdatw[8]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[8]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_7_n_0 ),
        .I1(eir[0]),
        .I2(ctl_selb_0[0]),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'hCCFCFFFFEEFEEEFE)) 
    \bdatw[8]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_11_n_0 ),
        .I1(\bdatw[11]_INST_0_i_26_n_0 ),
        .I2(ir[7]),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[11]_INST_0_i_24_n_0 ),
        .I5(\bdatw[8]_INST_0_i_18_n_0 ),
        .O(p_1_in[8]));
  LUT4 #(
    .INIT(16'hF088)) 
    \bdatw[9]_INST_0 
       (.I0(\mem/bwbf/bdatw3 ),
        .I1(rst_n_fl_reg_3[1]),
        .I2(rst_n_fl_reg_3[9]),
        .I3(\mem/bwbf/bdatw2 ),
        .O(bdatw[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[9]_INST_0_i_1 
       (.I0(p_1_in[1]),
        .I1(\bdatw[9]_INST_0_i_4_n_0 ),
        .I2(tnsn_dsp_b_1_sn_1),
        .I3(\tnsn_dsp_b[1]_0 ),
        .I4(\bdatw[9]_INST_0_i_7_n_0 ),
        .I5(p_2_in[1]),
        .O(rst_n_fl_reg_3[1]));
  LUT6 #(
    .INIT(64'hFF0CFF0CFF0CDD0C)) 
    \bdatw[9]_INST_0_i_12 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(\bdatw[8]_INST_0_i_12_n_0 ),
        .I3(\bdatw[15]_INST_0_i_11_n_0 ),
        .I4(ir[2]),
        .I5(ir[3]),
        .O(\bdatw[9]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bdatw[9]_INST_0_i_13 
       (.I0(\bdatw[11]_INST_0_i_36_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .I4(bank_sel),
        .I5(\bdatw[11]_INST_0_i_4_1 [1]),
        .O(\bdatw[9]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bdatw[9]_INST_0_i_14 
       (.I0(\bdatw[11]_INST_0_i_36_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[1]),
        .I3(ctl_selb_rn[0]),
        .I4(bank_sel),
        .I5(\bdatw[11]_INST_0_i_4_0 [1]),
        .O(\bdatw[9]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000AC000)) 
    \bdatw[9]_INST_0_i_15 
       (.I0(\grn[4]_i_20_0 [1]),
        .I1(sp_dec_0[1]),
        .I2(ctl_selb_rn[2]),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[1]),
        .I5(\bdatw[11]_INST_0_i_38_n_0 ),
        .O(\rgf/bbus_sp [1]));
  LUT6 #(
    .INIT(64'h0000000000000A0C)) 
    \bdatw[9]_INST_0_i_16 
       (.I0(\pc_reg[15]_0 [1]),
        .I1(\sr_reg[15]_0 [1]),
        .I2(ctl_selb_rn[2]),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[1]),
        .I5(\bdatw[11]_INST_0_i_38_n_0 ),
        .O(\bdatw[9]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[9]_INST_0_i_17 
       (.I0(ir[0]),
        .I1(ir[1]),
        .O(\bdatw[9]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \bdatw[9]_INST_0_i_2 
       (.I0(p_1_in[9]),
        .I1(bbus_rn[1]),
        .I2(bdatw_9_sn_1),
        .I3(\bdatw[15]_INST_0_i_7_n_0 ),
        .I4(eir[9]),
        .I5(ctl_selb_0[0]),
        .O(rst_n_fl_reg_3[9]));
  LUT5 #(
    .INIT(32'hFFFF04CC)) 
    \bdatw[9]_INST_0_i_3 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(\bdatw[10]_INST_0_i_12_n_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[9]_INST_0_i_12_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[9]_INST_0_i_4 
       (.I0(\sr_reg[0] ),
        .I1(\bdatw[11]_INST_0_i_1_0 [1]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[11]_INST_0_i_1_1 [1]),
        .I4(\bdatw[9]_INST_0_i_13_n_0 ),
        .I5(\bdatw[9]_INST_0_i_14_n_0 ),
        .O(\bdatw[9]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \bdatw[9]_INST_0_i_7 
       (.I0(\rgf/bbus_sp [1]),
        .I1(bbus_sel_cr[3]),
        .I2(\grn[4]_i_19 [1]),
        .I3(\bdatw[9]_INST_0_i_16_n_0 ),
        .O(\bdatw[9]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[9]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_7_n_0 ),
        .I1(eir[1]),
        .I2(ctl_selb_0[0]),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'hCCFCFFFFEEFEEEFE)) 
    \bdatw[9]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_11_n_0 ),
        .I1(\bdatw[11]_INST_0_i_26_n_0 ),
        .I2(ir[8]),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[11]_INST_0_i_24_n_0 ),
        .I5(\bdatw[9]_INST_0_i_17_n_0 ),
        .O(p_1_in[9]));
  LUT3 #(
    .INIT(8'hE0)) 
    \bwbf/bdatw[0]_INST_0 
       (.I0(\mem/bwbf/bdatw2 ),
        .I1(\mem/bwbf/bdatw3 ),
        .I2(rst_n_fl_reg_3[0]),
        .O(bdatw[0]));
  LUT3 #(
    .INIT(8'hE0)) 
    \bwbf/bdatw[1]_INST_0 
       (.I0(\mem/bwbf/bdatw2 ),
        .I1(\mem/bwbf/bdatw3 ),
        .I2(rst_n_fl_reg_3[1]),
        .O(bdatw[1]));
  LUT3 #(
    .INIT(8'hE0)) 
    \bwbf/bdatw[2]_INST_0 
       (.I0(\mem/bwbf/bdatw2 ),
        .I1(\mem/bwbf/bdatw3 ),
        .I2(rst_n_fl_reg_3[2]),
        .O(bdatw[2]));
  LUT3 #(
    .INIT(8'hE0)) 
    \bwbf/bdatw[3]_INST_0 
       (.I0(\mem/bwbf/bdatw2 ),
        .I1(\mem/bwbf/bdatw3 ),
        .I2(rst_n_fl_reg_3[3]),
        .O(bdatw[3]));
  LUT3 #(
    .INIT(8'hE0)) 
    \bwbf/bdatw[4]_INST_0 
       (.I0(\mem/bwbf/bdatw2 ),
        .I1(\mem/bwbf/bdatw3 ),
        .I2(rst_n_fl_reg_3[4]),
        .O(bdatw[4]));
  LUT3 #(
    .INIT(8'hE0)) 
    \bwbf/bdatw[5]_INST_0 
       (.I0(\mem/bwbf/bdatw2 ),
        .I1(\mem/bwbf/bdatw3 ),
        .I2(rst_n_fl_reg_3[5]),
        .O(bdatw[5]));
  LUT3 #(
    .INIT(8'hE0)) 
    \bwbf/bdatw[6]_INST_0 
       (.I0(\mem/bwbf/bdatw2 ),
        .I1(\mem/bwbf/bdatw3 ),
        .I2(rst_n_fl_reg_3[6]),
        .O(bdatw[6]));
  LUT3 #(
    .INIT(8'hE0)) 
    \bwbf/bdatw[7]_INST_0 
       (.I0(\mem/bwbf/bdatw2 ),
        .I1(\mem/bwbf/bdatw3 ),
        .I2(rst_n_fl_reg_3[7]),
        .O(bdatw[7]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__2_i_1
       (.I0(bbus_0),
        .I1(abus_0[15]),
        .O(\badr[15]_INST_0_i_1 ));
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
    .INIT(64'hFFFFFFFFFFFFBAAA)) 
    ctl_fetch_inferred_i_1
       (.I0(ctl_fetch_inferred_i_2_n_0),
        .I1(ctl_fetch_inferred_i_3_n_0),
        .I2(ir[13]),
        .I3(ir[14]),
        .I4(ctl_fetch_inferred_i_4_n_0),
        .I5(ctl_fetch_inferred_i_5_n_0),
        .O(in0));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    ctl_fetch_inferred_i_10
       (.I0(ir[10]),
        .I1(ir[3]),
        .I2(ctl_fetch_inferred_i_4_0),
        .I3(ir[12]),
        .I4(ir[13]),
        .I5(ir[14]),
        .O(ctl_fetch_inferred_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFF3FFF3FFF30080)) 
    ctl_fetch_inferred_i_11
       (.I0(\sr_reg[15]_0 [4]),
        .I1(ctl_fetch_inferred_i_15_n_0),
        .I2(ir[12]),
        .I3(ir[11]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(ctl_fetch_inferred_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBA000000)) 
    ctl_fetch_inferred_i_12
       (.I0(ir[5]),
        .I1(ir[3]),
        .I2(ir[8]),
        .I3(Q[0]),
        .I4(brdy),
        .I5(ctl_fetch_inferred_i_16_n_0),
        .O(ctl_fetch_inferred_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFCAAAE888)) 
    ctl_fetch_inferred_i_13
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(\sr_reg[15]_0 [7]),
        .I4(\sr_reg[15]_0 [5]),
        .I5(ctl_fetch_inferred_i_17_n_0),
        .O(ctl_fetch_inferred_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_inferred_i_15
       (.I0(ir[13]),
        .I1(ir[14]),
        .O(ctl_fetch_inferred_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF8080FF80)) 
    ctl_fetch_inferred_i_16
       (.I0(\bcmd[0]_INST_0_i_5_n_0 ),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(Q[1]),
        .I4(ir[0]),
        .I5(ir[15]),
        .O(ctl_fetch_inferred_i_16_n_0));
  LUT6 #(
    .INIT(64'h00FF000100000001)) 
    ctl_fetch_inferred_i_17
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(ir[14]),
        .I3(ir[12]),
        .I4(ir[13]),
        .I5(\sr_reg[15]_0 [6]),
        .O(ctl_fetch_inferred_i_17_n_0));
  LUT6 #(
    .INIT(64'hCD05CDC5CDCDCDC5)) 
    ctl_fetch_inferred_i_2
       (.I0(ctl_fetch_inferred_i_6_n_0),
        .I1(Q[0]),
        .I2(\bcmd[1]_INST_0_i_9_n_0 ),
        .I3(ctl_fetch_inferred_i_7_n_0),
        .I4(ir[8]),
        .I5(ctl_fetch_inferred_i_8_n_0),
        .O(ctl_fetch_inferred_i_2_n_0));
  LUT5 #(
    .INIT(32'h0000DF5F)) 
    ctl_fetch_inferred_i_3
       (.I0(brdy),
        .I1(ir[10]),
        .I2(ir[6]),
        .I3(ir[3]),
        .I4(ctl_fetch_inferred_i_9_n_0),
        .O(ctl_fetch_inferred_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    ctl_fetch_inferred_i_4
       (.I0(ctl_fetch_inferred_i_10_n_0),
        .I1(Q[2]),
        .I2(ir[1]),
        .I3(Q[1]),
        .I4(ctl_fetch_inferred_i_11_n_0),
        .I5(ctl_fetch_inferred_i_12_n_0),
        .O(ctl_fetch_inferred_i_4_n_0));
  MUXF7 ctl_fetch_inferred_i_5
       (.I0(ctl_fetch_inferred_i_13_n_0),
        .I1(ctl_fetch_fl_reg_1),
        .O(ctl_fetch_inferred_i_5_n_0),
        .S(ir[11]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    ctl_fetch_inferred_i_6
       (.I0(\fch_irq_lev[1]_i_3_n_0 ),
        .I1(ctl_fetch_inferred_i_2_0),
        .I2(ir[1]),
        .I3(irq),
        .I4(fch_irq_req),
        .O(ctl_fetch_inferred_i_6_n_0));
  LUT5 #(
    .INIT(32'h8F88FFF8)) 
    ctl_fetch_inferred_i_7
       (.I0(ir[1]),
        .I1(Q[1]),
        .I2(ir[10]),
        .I3(ir[6]),
        .I4(ir[3]),
        .O(ctl_fetch_inferred_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ctl_fetch_inferred_i_8
       (.I0(ir[13]),
        .I1(ir[14]),
        .O(ctl_fetch_inferred_i_8_n_0));
  LUT5 #(
    .INIT(32'h2AAA28AA)) 
    ctl_fetch_inferred_i_9
       (.I0(ir[10]),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(ir[4]),
        .O(ctl_fetch_inferred_i_9_n_0));
  LUT4 #(
    .INIT(16'hFF8F)) 
    \eir_fl[15]_i_1 
       (.I0(\fch_irq_lev[1]_i_2_n_0 ),
        .I1(brdy),
        .I2(rst_n),
        .I3(ctl_fetch_fl_reg_0),
        .O(\eir_fl[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF780)) 
    \eir_fl[1]_i_1 
       (.I0(\fch_irq_lev[1]_i_2_n_0 ),
        .I1(brdy),
        .I2(irq_vec[0]),
        .I3(eir[1]),
        .O(\eir_fl[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF780)) 
    \eir_fl[2]_i_1 
       (.I0(\fch_irq_lev[1]_i_2_n_0 ),
        .I1(brdy),
        .I2(irq_vec[1]),
        .I3(eir[2]),
        .O(\eir_fl[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF780)) 
    \eir_fl[3]_i_1 
       (.I0(\fch_irq_lev[1]_i_2_n_0 ),
        .I1(brdy),
        .I2(irq_vec[2]),
        .I3(eir[3]),
        .O(\eir_fl[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF780)) 
    \eir_fl[4]_i_1 
       (.I0(\fch_irq_lev[1]_i_2_n_0 ),
        .I1(brdy),
        .I2(irq_vec[3]),
        .I3(eir[4]),
        .O(\eir_fl[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF780)) 
    \eir_fl[5]_i_1 
       (.I0(\fch_irq_lev[1]_i_2_n_0 ),
        .I1(brdy),
        .I2(irq_vec[4]),
        .I3(eir[5]),
        .O(\eir_fl[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \eir_fl[6]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(rst_n),
        .O(eir_fl0));
  LUT4 #(
    .INIT(16'hF780)) 
    \eir_fl[6]_i_2 
       (.I0(\fch_irq_lev[1]_i_2_n_0 ),
        .I1(brdy),
        .I2(irq_vec[5]),
        .I3(eir[6]),
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
  LUT5 #(
    .INIT(32'hF7FF8000)) 
    \fch_irq_lev[0]_i_1 
       (.I0(\fch_irq_lev[1]_i_2_n_0 ),
        .I1(brdy),
        .I2(irq_lev[0]),
        .I3(fch_irq_req),
        .I4(fch_irq_lev[0]),
        .O(\fch_irq_lev[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF8000)) 
    \fch_irq_lev[1]_i_1 
       (.I0(\fch_irq_lev[1]_i_2_n_0 ),
        .I1(brdy),
        .I2(irq_lev[1]),
        .I3(fch_irq_req),
        .I4(fch_irq_lev[1]),
        .O(\fch_irq_lev[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fch_irq_lev[1]_i_2 
       (.I0(\fch_irq_lev[1]_i_3_n_0 ),
        .I1(\fch_irq_lev[1]_i_4_n_0 ),
        .I2(ir[14]),
        .I3(\eir_fl_reg[1]_0 ),
        .I4(\bdatw[9]_INST_0_i_17_n_0 ),
        .I5(fch_irq_req),
        .O(\fch_irq_lev[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \fch_irq_lev[1]_i_3 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_21_n_0 ),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(ir[2]),
        .I4(ir[3]),
        .I5(\bcmd[0]_INST_0_i_11_n_0 ),
        .O(\fch_irq_lev[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \fch_irq_lev[1]_i_4 
       (.I0(ir[13]),
        .I1(ir[12]),
        .O(\fch_irq_lev[1]_i_4_n_0 ));
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
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF1)) 
    \grn[0]_i_1 
       (.I0(\grn[0]_i_2_n_0 ),
        .I1(\grn[15]_i_5_n_0 ),
        .I2(\grn[0]_i_3_n_0 ),
        .I3(\iv_reg[0]_1 ),
        .I4(\grn[0]_i_5_n_0 ),
        .I5(\grn[0]_i_6_n_0 ),
        .O(cbus[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \grn[0]_i_10 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .I1(\sr_reg[15]_0 [6]),
        .O(\grn[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \grn[0]_i_11 
       (.I0(rst_n_fl_reg_3[1]),
        .I1(rst_n_fl_reg_3[0]),
        .I2(rst_n_fl_reg_3[3]),
        .I3(rst_n_fl_reg_3[2]),
        .O(\grn[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF050F53FFF5FF530)) 
    \grn[0]_i_2 
       (.I0(rst_n_fl_reg_3[0]),
        .I1(abus_0[8]),
        .I2(\stat_reg[0] [1]),
        .I3(acmd[2]),
        .I4(\stat_reg[0] [0]),
        .I5(abus_0[0]),
        .O(\grn[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00006E80)) 
    \grn[0]_i_3 
       (.I0(rst_n_fl_reg_3[0]),
        .I1(abus_0[0]),
        .I2(\stat_reg[0] [0]),
        .I3(\stat_reg[0] [1]),
        .I4(\grn[7]_i_23_n_0 ),
        .O(\grn[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \grn[0]_i_5 
       (.I0(tout__1_carry_i_9_0),
        .I1(O[0]),
        .I2(data0[0]),
        .I3(\grn[15]_i_9_n_0 ),
        .I4(tnsn_dsp_c[0]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .O(\grn[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA333F)) 
    \grn[0]_i_6 
       (.I0(\grn[0]_i_7_n_0 ),
        .I1(\iv_reg[0]_0 ),
        .I2(rst_n_fl_reg_3[2]),
        .I3(\grn[0]_i_9_n_0 ),
        .I4(rst_n_fl_reg_3[3]),
        .I5(\grn[6]_i_11_n_0 ),
        .O(\grn[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD0DFD0D0D0DFDFDF)) 
    \grn[0]_i_7 
       (.I0(\grn[0]_i_10_n_0 ),
        .I1(\iv_reg[15] ),
        .I2(\grn[0]_i_11_n_0 ),
        .I3(\grn[5]_i_6_0 ),
        .I4(\bdatw[9]_INST_0_i_1_0 ),
        .I5(\sr[4]_i_3_1 ),
        .O(\grn[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \grn[0]_i_9 
       (.I0(rst_n_fl_reg_3[0]),
        .I1(rst_n_fl_reg_3[1]),
        .I2(abus_0[0]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .O(\grn[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF08FF08FF08FFFF)) 
    \grn[10]_i_1 
       (.I0(read_cyc[2]),
        .I1(bdatr[2]),
        .I2(read_cyc[1]),
        .I3(\grn[10]_i_2_n_0 ),
        .I4(\grn[15]_i_5_n_0 ),
        .I5(\grn[10]_i_3_n_0 ),
        .O(cbus[10]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \grn[10]_i_2 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .I1(tnsn_dsp_c[10]),
        .I2(\grn[15]_i_9_n_0 ),
        .I3(data0[10]),
        .O(\grn[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF008AAAFFFF8AAA)) 
    \grn[10]_i_3 
       (.I0(\grn[10]_i_4_n_0 ),
        .I1(\stat_reg[0] [0]),
        .I2(abus_0[2]),
        .I3(\stat_reg[0] [1]),
        .I4(acmd[2]),
        .I5(\grn[10]_i_5_n_0 ),
        .O(\grn[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \grn[10]_i_4 
       (.I0(\grn[14]_i_5_n_0 ),
        .I1(abus_0[10]),
        .I2(\grn[11]_i_5_n_0 ),
        .O(\grn[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \grn[10]_i_5 
       (.I0(rst_n_fl_reg_3[2]),
        .I1(\stat_reg[0] [0]),
        .I2(abus_0[10]),
        .O(\grn[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF08FF08FF08FFFF)) 
    \grn[11]_i_1 
       (.I0(read_cyc[2]),
        .I1(bdatr[3]),
        .I2(read_cyc[1]),
        .I3(\grn[11]_i_2_n_0 ),
        .I4(\grn[15]_i_5_n_0 ),
        .I5(\grn[11]_i_3_n_0 ),
        .O(cbus[11]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \grn[11]_i_2 
       (.I0(\grn[15]_i_9_n_0 ),
        .I1(data0[11]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .I3(tnsn_dsp_c[11]),
        .O(\grn[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC4447CFCF4447)) 
    \grn[11]_i_3 
       (.I0(\grn[11]_i_4_n_0 ),
        .I1(acmd[2]),
        .I2(\grn[11]_i_5_n_0 ),
        .I3(\grn[11]_i_6_n_0 ),
        .I4(\stat_reg[0] [1]),
        .I5(\iv_reg[11] ),
        .O(\grn[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \grn[11]_i_4 
       (.I0(rst_n_fl_reg_3[3]),
        .I1(\stat_reg[0] [0]),
        .I2(abus_0[11]),
        .O(\grn[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[11]_i_5 
       (.I0(rst_n_fl_reg_3[7]),
        .I1(\grn[15]_i_12_n_0 ),
        .O(\grn[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \grn[11]_i_6 
       (.I0(\stat_reg[0] [0]),
        .I1(abus_0[11]),
        .O(\grn[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF08FF08FF08FFFF)) 
    \grn[12]_i_1 
       (.I0(read_cyc[2]),
        .I1(bdatr[4]),
        .I2(read_cyc[1]),
        .I3(\grn[12]_i_2_n_0 ),
        .I4(\grn[15]_i_5_n_0 ),
        .I5(\grn[12]_i_3_n_0 ),
        .O(cbus[12]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \grn[12]_i_2 
       (.I0(\grn[15]_i_9_n_0 ),
        .I1(data0[12]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .I3(tnsn_dsp_c[12]),
        .O(\grn[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF2525F0FF7F7F)) 
    \grn[12]_i_3 
       (.I0(\stat_reg[0] [0]),
        .I1(rst_n_fl_reg_3[4]),
        .I2(acmd[2]),
        .I3(\grn[12]_i_4_n_0 ),
        .I4(\stat_reg[0] [1]),
        .I5(abus_0[12]),
        .O(\grn[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \grn[12]_i_4 
       (.I0(rst_n_fl_reg_3[7]),
        .I1(\stat_reg[0] [0]),
        .I2(abus_0[4]),
        .O(\grn[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \grn[13]_i_2 
       (.I0(\grn[15]_i_9_n_0 ),
        .I1(data0[13]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .I3(tnsn_dsp_c[13]),
        .O(tnsn_dsp_c_13_sn_1));
  LUT6 #(
    .INIT(64'h4545454444444544)) 
    \grn[13]_i_3 
       (.I0(\grn[15]_i_5_n_0 ),
        .I1(\grn[13]_i_4_n_0 ),
        .I2(\grn[14]_i_4_n_0 ),
        .I3(rst_n_fl_reg_3[5]),
        .I4(\grn[13]_i_5_n_0 ),
        .I5(abus_0[13]),
        .O(\badr[13]_INST_0_i_1 ));
  LUT6 #(
    .INIT(64'h00000000FFFFF444)) 
    \grn[13]_i_4 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_1 ),
        .I1(abus_0[5]),
        .I2(\grn[14]_i_5_n_0 ),
        .I3(abus_0[13]),
        .I4(\grn[11]_i_5_n_0 ),
        .I5(acmd[2]),
        .O(\grn[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[13]_i_5 
       (.I0(acmd[2]),
        .I1(\grn[14]_i_5_n_0 ),
        .O(\grn[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF08FF08FF08FFFF)) 
    \grn[14]_i_1 
       (.I0(read_cyc[2]),
        .I1(bdatr[5]),
        .I2(read_cyc[1]),
        .I3(\grn[14]_i_2_n_0 ),
        .I4(\grn[15]_i_5_n_0 ),
        .I5(\grn[14]_i_3_n_0 ),
        .O(cbus[13]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \grn[14]_i_2 
       (.I0(\grn[15]_i_9_n_0 ),
        .I1(data0[14]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .I3(tnsn_dsp_c[14]),
        .O(\grn[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0C0F0D0DDCDFD)) 
    \grn[14]_i_3 
       (.I0(rst_n_fl_reg_3[6]),
        .I1(\grn[14]_i_4_n_0 ),
        .I2(acmd[2]),
        .I3(abus_0[14]),
        .I4(\grn[14]_i_5_n_0 ),
        .I5(\grn[14]_i_6_n_0 ),
        .O(\grn[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \grn[14]_i_4 
       (.I0(\stat_reg[0] [1]),
        .I1(acmd[2]),
        .O(\grn[14]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[14]_i_5 
       (.I0(\stat_reg[0] [0]),
        .I1(\stat_reg[0] [1]),
        .O(\grn[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \grn[14]_i_6 
       (.I0(\grn[11]_i_5_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_1 ),
        .I2(abus_0[6]),
        .O(\grn[14]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \grn[15]_i_10 
       (.I0(\stat[0]_i_9_n_0 ),
        .I1(brdy),
        .O(\grn[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \grn[15]_i_12 
       (.I0(\stat_reg[0] [1]),
        .I1(\stat_reg[0] [0]),
        .O(\grn[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \grn[15]_i_1__5 
       (.I0(bank_sel),
        .I1(ctl_selc_rn[2]),
        .I2(ctl_selc_rn[0]),
        .I3(ctl_selc_rn[1]),
        .I4(\iv[15]_i_2_0 ),
        .I5(ctl_selc_rnh),
        .O(E[1]));
  LUT2 #(
    .INIT(4'h7)) 
    \grn[15]_i_2 
       (.I0(ctl_selc_rn[1]),
        .I1(ctl_selc_rn[0]),
        .O(\grn[7]_i_4_0 ));
  LUT6 #(
    .INIT(64'hFF08FF08FF08FFFF)) 
    \grn[15]_i_2__1 
       (.I0(read_cyc[2]),
        .I1(bdatr[6]),
        .I2(read_cyc[1]),
        .I3(\grn[15]_i_4_n_0 ),
        .I4(\grn[15]_i_5_n_0 ),
        .I5(\grn[15]_i_6_n_0 ),
        .O(cbus[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8FFF8F8)) 
    \grn[15]_i_3 
       (.I0(ir[4]),
        .I1(\tnsn_dsp_a[8]_INST_0_i_7_n_0 ),
        .I2(\grn[15]_i_7_n_0 ),
        .I3(ir[11]),
        .I4(\tnsn_dsp_a[8]_INST_0_i_9_n_0 ),
        .I5(\grn[15]_i_8_n_0 ),
        .O(ctl_selc_rnh));
  LUT2 #(
    .INIT(4'h7)) 
    \grn[15]_i_3__0 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .O(\iv[15]_i_2_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \grn[15]_i_4 
       (.I0(\grn[15]_i_9_n_0 ),
        .I1(data0[15]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .I3(tnsn_dsp_c[15]),
        .O(\grn[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \grn[15]_i_5 
       (.I0(acmd[4]),
        .I1(acmd[3]),
        .O(\grn[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCDFDCDFD00001FDF)) 
    \grn[15]_i_6 
       (.I0(abus_0[15]),
        .I1(\stat_reg[0] [1]),
        .I2(\stat_reg[0] [0]),
        .I3(rst_n_fl_reg_3[7]),
        .I4(\iv_reg[15] ),
        .I5(acmd[2]),
        .O(\grn[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h111111111F111111)) 
    \grn[15]_i_7 
       (.I0(\grn[15]_i_10_n_0 ),
        .I1(ir[4]),
        .I2(\tnsn_dsp_a[8]_INST_0_i_12_n_0 ),
        .I3(ir[8]),
        .I4(ir[6]),
        .I5(ir[10]),
        .O(\grn[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCFCCDCC)) 
    \grn[15]_i_8 
       (.I0(ir[11]),
        .I1(\iv[15]_i_4_0 ),
        .I2(ir[13]),
        .I3(ir[14]),
        .I4(ir[12]),
        .I5(\grn[7]_i_3_1 ),
        .O(\grn[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \grn[15]_i_9 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_5_0 ),
        .I1(\grn[15]_i_12_n_0 ),
        .O(\grn[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF1)) 
    \grn[1]_i_1 
       (.I0(\grn[1]_i_2_n_0 ),
        .I1(\grn[15]_i_5_n_0 ),
        .I2(\grn[1]_i_3_n_0 ),
        .I3(\iv_reg[1] ),
        .I4(\grn[1]_i_5_n_0 ),
        .I5(\grn[1]_i_6_n_0 ),
        .O(cbus[1]));
  LUT6 #(
    .INIT(64'hB0F0B000F0F0F0F0)) 
    \grn[1]_i_10 
       (.I0(rst_n_fl_reg_3[0]),
        .I1(abus_0[7]),
        .I2(\stat_reg[0] [0]),
        .I3(\bdatw[9]_INST_0_i_1_1 ),
        .I4(\grn[1]_i_8_0 ),
        .I5(\bdatw[10]_INST_0_i_1_0 ),
        .O(\grn[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8888000080888000)) 
    \grn[1]_i_11 
       (.I0(\bdatw[10]_INST_0_i_1_0 ),
        .I1(\bdatw[9]_INST_0_i_1_1 ),
        .I2(\sr_reg[15]_0 [6]),
        .I3(rst_n_fl_reg_3[0]),
        .I4(abus_0[7]),
        .I5(\stat_reg[0] [1]),
        .O(\grn[1]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \grn[1]_i_12 
       (.I0(\bdatw[9]_INST_0_i_1_1 ),
        .I1(\grn[1]_i_8_0 ),
        .O(\grn[1]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[1]_i_13 
       (.I0(\bdatw[9]_INST_0_i_1_1 ),
        .I1(\grn[1]_i_9_0 ),
        .O(\grn[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hC0CCC7F7F3FFC4F4)) 
    \grn[1]_i_2 
       (.I0(abus_0[9]),
        .I1(\stat_reg[0] [1]),
        .I2(acmd[2]),
        .I3(rst_n_fl_reg_3[1]),
        .I4(\stat_reg[0] [0]),
        .I5(abus_0[1]),
        .O(\grn[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h14444400)) 
    \grn[1]_i_3 
       (.I0(\grn[7]_i_23_n_0 ),
        .I1(\stat_reg[0] [1]),
        .I2(\stat_reg[0] [0]),
        .I3(rst_n_fl_reg_3[1]),
        .I4(abus_0[1]),
        .O(\grn[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \grn[1]_i_5 
       (.I0(tout__1_carry_i_9_0),
        .I1(O[1]),
        .I2(data0[1]),
        .I3(\grn[15]_i_9_n_0 ),
        .I4(tnsn_dsp_c[1]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .O(\grn[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00002F20)) 
    \grn[1]_i_6 
       (.I0(\grn[1]_i_7_n_0 ),
        .I1(\grn[1]_i_8_n_0 ),
        .I2(rst_n_fl_reg_3[3]),
        .I3(\grn[1]_i_9_n_0 ),
        .I4(\grn[6]_i_11_n_0 ),
        .O(\grn[1]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h5D)) 
    \grn[1]_i_7 
       (.I0(\grn[7]_i_26_n_0 ),
        .I1(abus_0[0]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .O(\grn[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCF888A888A)) 
    \grn[1]_i_8 
       (.I0(\grn[6]_i_6_0 ),
        .I1(\grn[1]_i_10_n_0 ),
        .I2(\grn[1]_i_11_n_0 ),
        .I3(\bdatw[9]_INST_0_i_1_2 ),
        .I4(\grn[1]_i_12_n_0 ),
        .I5(\bdatw[10]_INST_0_i_1_0 ),
        .O(\grn[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00F000F000F0ACFC)) 
    \grn[1]_i_9 
       (.I0(\grn[1]_i_13_n_0 ),
        .I1(\grn[1]_i_6_0 ),
        .I2(\bdatw[9]_INST_0_i_1_0 ),
        .I3(\grn[1]_i_6_1 ),
        .I4(\stat_reg[0] [1]),
        .I5(\stat_reg[0] [0]),
        .O(\grn[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF1)) 
    \grn[2]_i_1 
       (.I0(\grn[2]_i_2_n_0 ),
        .I1(\grn[15]_i_5_n_0 ),
        .I2(\grn[2]_i_3_n_0 ),
        .I3(\iv_reg[2] ),
        .I4(\grn[2]_i_5_n_0 ),
        .I5(\grn[2]_i_6_n_0 ),
        .O(cbus[2]));
  LUT3 #(
    .INIT(8'h5D)) 
    \grn[2]_i_10 
       (.I0(\grn[7]_i_26_n_0 ),
        .I1(abus_0[1]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .O(\grn[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h5DFD)) 
    \grn[2]_i_13 
       (.I0(\bdatw[9]_INST_0_i_1_0 ),
        .I1(\grn[2]_i_8_0 ),
        .I2(\bdatw[9]_INST_0_i_1_1 ),
        .I3(\grn[2]_i_8_1 ),
        .O(\grn[2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \grn[2]_i_14 
       (.I0(\bdatw[9]_INST_0_i_1_0 ),
        .I1(\sr[4]_i_9_1 ),
        .I2(\bdatw[9]_INST_0_i_1_1 ),
        .I3(\sr[4]_i_9_2 ),
        .O(\grn[2]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[2]_i_15 
       (.I0(\bdatw[10]_INST_0_i_1_0 ),
        .I1(\grn[6]_i_12_n_0 ),
        .O(\grn[2]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h80AA)) 
    \grn[2]_i_16 
       (.I0(\bdatw[10]_INST_0_i_1_0 ),
        .I1(\bdatw[9]_INST_0_i_1_1 ),
        .I2(abus_0[7]),
        .I3(\stat_reg[0] [1]),
        .O(\grn[2]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \grn[2]_i_17 
       (.I0(\grn[4]_i_18_n_0 ),
        .I1(\grn[4]_i_17_n_0 ),
        .I2(\bdatw[9]_INST_0_i_1_1 ),
        .O(\grn[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hC0F3D3D0CCFFDFDC)) 
    \grn[2]_i_2 
       (.I0(rst_n_fl_reg_3[2]),
        .I1(\stat_reg[0] [1]),
        .I2(acmd[2]),
        .I3(abus_0[2]),
        .I4(\stat_reg[0] [0]),
        .I5(\grn[10]_i_5_n_0 ),
        .O(\grn[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00006CC0)) 
    \grn[2]_i_3 
       (.I0(\stat_reg[0] [0]),
        .I1(\stat_reg[0] [1]),
        .I2(rst_n_fl_reg_3[2]),
        .I3(abus_0[2]),
        .I4(\grn[7]_i_23_n_0 ),
        .O(\grn[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \grn[2]_i_5 
       (.I0(tout__1_carry_i_9_0),
        .I1(O[2]),
        .I2(data0[2]),
        .I3(\grn[15]_i_9_n_0 ),
        .I4(tnsn_dsp_c[2]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .O(\grn[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000BBB0B0B)) 
    \grn[2]_i_6 
       (.I0(\grn[2]_i_7_n_0 ),
        .I1(\grn[2]_i_8_n_0 ),
        .I2(rst_n_fl_reg_3[3]),
        .I3(\grn[2]_i_9_n_0 ),
        .I4(\grn[2]_i_10_n_0 ),
        .I5(\grn[6]_i_11_n_0 ),
        .O(\grn[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5050101500001015)) 
    \grn[2]_i_7 
       (.I0(\stat_reg[0] [0]),
        .I1(\sr[4]_i_5_2 ),
        .I2(\bdatw[9]_INST_0_i_1_0 ),
        .I3(\sr[4]_i_5_0 ),
        .I4(\stat_reg[0] [1]),
        .I5(\sr[4]_i_5_3 ),
        .O(\grn[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0A0F3A0F)) 
    \grn[2]_i_8 
       (.I0(\grn[2]_i_13_n_0 ),
        .I1(\grn[2]_i_14_n_0 ),
        .I2(rst_n_fl_reg_3[3]),
        .I3(\stat_reg[0] [0]),
        .I4(\grn[2]_i_15_n_0 ),
        .O(\grn[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000005D)) 
    \grn[2]_i_9 
       (.I0(\grn[2]_i_16_n_0 ),
        .I1(\grn[2]_i_17_n_0 ),
        .I2(\stat_reg[0] [1]),
        .I3(\bdatw[9]_INST_0_i_1_2 ),
        .I4(\grn[2]_i_15_n_0 ),
        .I5(\grn[2]_i_14_n_0 ),
        .O(\grn[2]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \grn[3]_i_1 
       (.I0(\iv_reg[3]_0 ),
        .I1(\grn[3]_i_3_n_0 ),
        .I2(\grn[3]_i_4_n_0 ),
        .I3(\grn[3]_i_5_n_0 ),
        .O(cbus[3]));
  LUT6 #(
    .INIT(64'h2F202F2000000F00)) 
    \grn[3]_i_10 
       (.I0(\sr[4]_i_4_0 ),
        .I1(\grn[3]_i_13_n_0 ),
        .I2(rst_n_fl_reg_3[3]),
        .I3(\sr[4]_i_4_1 ),
        .I4(\grn[3]_i_15_n_0 ),
        .I5(\stat_reg[0] [0]),
        .O(\grn[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \grn[3]_i_13 
       (.I0(rst_n_fl_reg_3[0]),
        .I1(rst_n_fl_reg_3[1]),
        .I2(rst_n_fl_reg_3[2]),
        .I3(abus_0[7]),
        .O(\grn[3]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h11010001)) 
    \grn[3]_i_15 
       (.I0(\bdatw[9]_INST_0_i_1_0 ),
        .I1(\stat_reg[0] [1]),
        .I2(\grn[1]_i_9_0 ),
        .I3(\bdatw[9]_INST_0_i_1_1 ),
        .I4(\sr[6]_i_3_1 ),
        .O(\grn[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF30BB0000)) 
    \grn[3]_i_3 
       (.I0(rst_n_fl_reg_3[3]),
        .I1(\grn[13]_i_5_n_0 ),
        .I2(\grn[11]_i_4_n_0 ),
        .I3(\stat_reg[0] [1]),
        .I4(\grn[3]_i_6_n_0 ),
        .I5(\grn[3]_i_7_n_0 ),
        .O(\grn[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \grn[3]_i_4 
       (.I0(tout__1_carry_i_9_0),
        .I1(O[3]),
        .I2(data0[3]),
        .I3(\grn[15]_i_9_n_0 ),
        .I4(tnsn_dsp_c[3]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .O(\grn[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000005D)) 
    \grn[3]_i_5 
       (.I0(rst_n_fl_reg_3[3]),
        .I1(\grn[3]_i_8_n_0 ),
        .I2(\iv_reg[3] ),
        .I3(\grn[3]_i_10_n_0 ),
        .I4(\grn[6]_i_11_n_0 ),
        .O(\grn[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000FECF)) 
    \grn[3]_i_6 
       (.I0(acmd[2]),
        .I1(\stat_reg[0] [1]),
        .I2(\stat_reg[0] [0]),
        .I3(abus_0[3]),
        .I4(\grn[15]_i_5_n_0 ),
        .O(\grn[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00006A88)) 
    \grn[3]_i_7 
       (.I0(\stat_reg[0] [1]),
        .I1(abus_0[3]),
        .I2(\stat_reg[0] [0]),
        .I3(rst_n_fl_reg_3[3]),
        .I4(\grn[7]_i_23_n_0 ),
        .O(\grn[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h5D)) 
    \grn[3]_i_8 
       (.I0(\grn[7]_i_26_n_0 ),
        .I1(abus_0[2]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .O(\grn[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF1)) 
    \grn[4]_i_1 
       (.I0(\grn[4]_i_2_n_0 ),
        .I1(\grn[15]_i_5_n_0 ),
        .I2(\grn[4]_i_3_n_0 ),
        .I3(\iv_reg[4] ),
        .I4(\grn[4]_i_5_n_0 ),
        .I5(\grn[4]_i_6_n_0 ),
        .O(cbus[4]));
  LUT3 #(
    .INIT(8'h8A)) 
    \grn[4]_i_10 
       (.I0(\grn[7]_i_26_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .I2(abus_0[3]),
        .O(\grn[4]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \grn[4]_i_15 
       (.I0(\grn[4]_i_9_0 ),
        .I1(\bdatw[9]_INST_0_i_1_1 ),
        .I2(\grn[4]_i_17_n_0 ),
        .I3(\grn[4]_i_18_n_0 ),
        .O(\grn[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCEECCEECCEECEFEC)) 
    \grn[4]_i_16 
       (.I0(\sr[4]_i_14_0 ),
        .I1(\stat_reg[0] [0]),
        .I2(rst_n_fl_reg_3[2]),
        .I3(rst_n_fl_reg_3[3]),
        .I4(rst_n_fl_reg_3[0]),
        .I5(rst_n_fl_reg_3[1]),
        .O(\grn[4]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \grn[4]_i_17 
       (.I0(rst_n_fl_reg_3[0]),
        .I1(abus_0[0]),
        .O(\grn[4]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \grn[4]_i_18 
       (.I0(rst_n_fl_reg_3[0]),
        .I1(\sr_reg[15]_0 [6]),
        .O(\grn[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hF0F5FFF5503F5F30)) 
    \grn[4]_i_2 
       (.I0(rst_n_fl_reg_3[4]),
        .I1(abus_0[12]),
        .I2(\stat_reg[0] [1]),
        .I3(\stat_reg[0] [0]),
        .I4(abus_0[4]),
        .I5(acmd[2]),
        .O(\grn[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \grn[4]_i_20 
       (.I0(\rgf/sptr/p_1_in1_in ),
        .I1(\rgf/sptr/p_0_in0_in ),
        .I2(abus_sel_cr[3]),
        .I3(\grn[4]_i_19 [4]),
        .I4(\grn[4]_i_23_n_0 ),
        .I5(\rgf/abus_pc ),
        .O(\iv_reg[7] ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \grn[4]_i_21 
       (.I0(ctl_sela[0]),
        .I1(ctl_sela[1]),
        .I2(ctl_sela_rn[1]),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[2]),
        .I5(\grn[4]_i_20_0 [4]),
        .O(\rgf/sptr/p_1_in1_in ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \grn[4]_i_22 
       (.I0(ctl_sela[0]),
        .I1(ctl_sela[1]),
        .I2(ctl_sela_rn[1]),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[2]),
        .I5(sp_dec_0[4]),
        .O(\rgf/sptr/p_0_in0_in ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \grn[4]_i_23 
       (.I0(ctl_sela[0]),
        .I1(ctl_sela[1]),
        .I2(ctl_sela_rn[1]),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[2]),
        .I5(\sr_reg[15]_0 [7]),
        .O(\grn[4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \grn[4]_i_24 
       (.I0(ctl_sela[0]),
        .I1(ctl_sela[1]),
        .I2(ctl_sela_rn[0]),
        .I3(ctl_sela_rn[2]),
        .I4(ctl_sela_rn[1]),
        .I5(\pc_reg[15]_0 [7]),
        .O(\rgf/abus_pc ));
  LUT5 #(
    .INIT(32'h14444400)) 
    \grn[4]_i_3 
       (.I0(\grn[7]_i_23_n_0 ),
        .I1(\stat_reg[0] [1]),
        .I2(\stat_reg[0] [0]),
        .I3(rst_n_fl_reg_3[4]),
        .I4(abus_0[4]),
        .O(\grn[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \grn[4]_i_5 
       (.I0(tout__1_carry_i_9_0),
        .I1(\iv_reg[7]_0 [0]),
        .I2(data0[4]),
        .I3(\grn[15]_i_9_n_0 ),
        .I4(tnsn_dsp_c[4]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .O(\grn[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0004000400045504)) 
    \grn[4]_i_6 
       (.I0(\grn[6]_i_11_n_0 ),
        .I1(\grn[4]_i_7_n_0 ),
        .I2(\grn[4]_i_8_n_0 ),
        .I3(rst_n_fl_reg_3[3]),
        .I4(\grn[4]_i_9_n_0 ),
        .I5(\grn[4]_i_10_n_0 ),
        .O(\grn[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0047FFFFFFFFFFFF)) 
    \grn[4]_i_7 
       (.I0(\grn[4]_i_6_2 ),
        .I1(\bdatw[9]_INST_0_i_1_1 ),
        .I2(\grn[4]_i_6_1 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .I4(\grn[0]_i_9_n_0 ),
        .I5(\bdatw[10]_INST_0_i_1_0 ),
        .O(\grn[4]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \grn[4]_i_8 
       (.I0(rst_n_fl_reg_3[2]),
        .I1(\grn[4]_i_6_0 ),
        .O(\grn[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFAF0000AFAC)) 
    \grn[4]_i_9 
       (.I0(\sr[4]_i_3_1 ),
        .I1(\stat_reg[0] [1]),
        .I2(\bdatw[9]_INST_0_i_1_0 ),
        .I3(\grn[4]_i_15_n_0 ),
        .I4(\grn[4]_i_16_n_0 ),
        .I5(\stat_reg[0] [0]),
        .O(\grn[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF1)) 
    \grn[5]_i_1 
       (.I0(\grn[5]_i_2_n_0 ),
        .I1(\grn[15]_i_5_n_0 ),
        .I2(\grn[5]_i_3_n_0 ),
        .I3(\iv_reg[5] ),
        .I4(\grn[5]_i_5_n_0 ),
        .I5(\grn[5]_i_6_n_0 ),
        .O(cbus[5]));
  LUT6 #(
    .INIT(64'h00000000F2F2F200)) 
    \grn[5]_i_10 
       (.I0(\grn[1]_i_6_1 ),
        .I1(\grn[5]_i_19_n_0 ),
        .I2(\bdatw[9]_INST_0_i_1_0 ),
        .I3(rst_n_fl_reg_3[2]),
        .I4(\sr[4]_i_5_1 ),
        .I5(rst_n_fl_reg_3[3]),
        .O(\grn[5]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \grn[5]_i_11 
       (.I0(\bdatw[9]_INST_0_i_1_2 ),
        .I1(\grn[1]_i_8_0 ),
        .I2(\bdatw[9]_INST_0_i_1_1 ),
        .O(\grn[5]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[5]_i_12 
       (.I0(\bdatw[9]_INST_0_i_1_1 ),
        .I1(\grn[5]_i_7_0 ),
        .O(\grn[5]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \grn[5]_i_13 
       (.I0(\bdatw[10]_INST_0_i_1_0 ),
        .I1(\stat_reg[0] [1]),
        .I2(\bdatw[9]_INST_0_i_1_2 ),
        .O(\grn[5]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h01555400)) 
    \grn[5]_i_14 
       (.I0(\stat_reg[0] [1]),
        .I1(rst_n_fl_reg_3[1]),
        .I2(rst_n_fl_reg_3[0]),
        .I3(rst_n_fl_reg_3[3]),
        .I4(rst_n_fl_reg_3[2]),
        .O(\grn[5]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hA080A0A2)) 
    \grn[5]_i_16 
       (.I0(\stat_reg[0] [1]),
        .I1(\bdatw[10]_INST_0_i_1_0 ),
        .I2(abus_0[7]),
        .I3(\bdatw[9]_INST_0_i_1_1 ),
        .I4(\grn[1]_i_8_0 ),
        .O(\grn[5]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \grn[5]_i_19 
       (.I0(\grn[1]_i_9_0 ),
        .I1(\bdatw[9]_INST_0_i_1_1 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .O(\grn[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF0F5FFF5503F5F30)) 
    \grn[5]_i_2 
       (.I0(rst_n_fl_reg_3[5]),
        .I1(abus_0[13]),
        .I2(\stat_reg[0] [1]),
        .I3(\stat_reg[0] [0]),
        .I4(abus_0[5]),
        .I5(acmd[2]),
        .O(\grn[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h14444400)) 
    \grn[5]_i_3 
       (.I0(\grn[7]_i_23_n_0 ),
        .I1(\stat_reg[0] [1]),
        .I2(\stat_reg[0] [0]),
        .I3(rst_n_fl_reg_3[5]),
        .I4(abus_0[5]),
        .O(\grn[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \grn[5]_i_5 
       (.I0(tout__1_carry_i_9_0),
        .I1(\iv_reg[7]_0 [1]),
        .I2(tnsn_dsp_c[5]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .I4(data0[5]),
        .I5(\grn[15]_i_9_n_0 ),
        .O(\grn[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000555D)) 
    \grn[5]_i_6 
       (.I0(rst_n_fl_reg_3[3]),
        .I1(\grn[5]_i_7_n_0 ),
        .I2(\grn[5]_i_8_n_0 ),
        .I3(\grn[5]_i_9_n_0 ),
        .I4(\grn[5]_i_10_n_0 ),
        .I5(\grn[6]_i_11_n_0 ),
        .O(\grn[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0D0DFF0D)) 
    \grn[5]_i_7 
       (.I0(\grn[5]_i_11_n_0 ),
        .I1(\grn[5]_i_12_n_0 ),
        .I2(\grn[5]_i_13_n_0 ),
        .I3(\grn[5]_i_14_n_0 ),
        .I4(\grn[5]_i_6_0 ),
        .I5(\grn[5]_i_16_n_0 ),
        .O(\grn[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB0F0B000F0F0F0F0)) 
    \grn[5]_i_8 
       (.I0(rst_n_fl_reg_3[0]),
        .I1(abus_0[7]),
        .I2(\stat_reg[0] [0]),
        .I3(\bdatw[9]_INST_0_i_1_1 ),
        .I4(\grn[1]_i_8_0 ),
        .I5(\bdatw[9]_INST_0_i_1_0 ),
        .O(\grn[5]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \grn[5]_i_9 
       (.I0(\grn[7]_i_26_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .I2(abus_0[4]),
        .O(\grn[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFAB)) 
    \grn[6]_i_1 
       (.I0(\grn[6]_i_2_n_0 ),
        .I1(\grn[6]_i_3_n_0 ),
        .I2(\grn[15]_i_5_n_0 ),
        .I3(\iv_reg[6] ),
        .I4(\grn[6]_i_5_n_0 ),
        .I5(\grn[6]_i_6_n_0 ),
        .O(cbus[6]));
  LUT6 #(
    .INIT(64'hAF300030AFFF00FF)) 
    \grn[6]_i_10 
       (.I0(\grn[6]_i_12_n_0 ),
        .I1(\grn[1]_i_6_0 ),
        .I2(\bdatw[9]_INST_0_i_1_0 ),
        .I3(rst_n_fl_reg_3[3]),
        .I4(\stat_reg[0] [0]),
        .I5(\grn[6]_i_18_n_0 ),
        .O(\grn[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFBBFFFFFFBB)) 
    \grn[6]_i_11 
       (.I0(acmd[3]),
        .I1(acmd[4]),
        .I2(\grn[15]_i_5_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .I4(acmd[2]),
        .I5(\stat_reg[0] [1]),
        .O(\grn[6]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h66AFFFAF)) 
    \grn[6]_i_12 
       (.I0(rst_n_fl_reg_3[1]),
        .I1(rst_n_fl_reg_3[3]),
        .I2(abus_0[6]),
        .I3(rst_n_fl_reg_3[0]),
        .I4(abus_0[7]),
        .O(\grn[6]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \grn[6]_i_13 
       (.I0(rst_n_fl_reg_3[0]),
        .I1(rst_n_fl_reg_3[3]),
        .I2(rst_n_fl_reg_3[1]),
        .O(\bdatw[9]_INST_0_i_1_1 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \grn[6]_i_15 
       (.I0(rst_n_fl_reg_3[1]),
        .I1(rst_n_fl_reg_3[0]),
        .I2(rst_n_fl_reg_3[3]),
        .I3(rst_n_fl_reg_3[2]),
        .O(\bdatw[10]_INST_0_i_1_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF3F35303)) 
    \grn[6]_i_18 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .I1(\grn[2]_i_8_0 ),
        .I2(\bdatw[9]_INST_0_i_1_1 ),
        .I3(\grn[6]_i_10_0 ),
        .I4(\grn[2]_i_8_1 ),
        .I5(\bdatw[9]_INST_0_i_1_0 ),
        .O(\grn[6]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h14544000)) 
    \grn[6]_i_2 
       (.I0(\grn[7]_i_23_n_0 ),
        .I1(rst_n_fl_reg_3[6]),
        .I2(abus_0[6]),
        .I3(\stat_reg[0] [0]),
        .I4(\stat_reg[0] [1]),
        .O(\grn[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F3FFF3305F3F50)) 
    \grn[6]_i_3 
       (.I0(abus_0[14]),
        .I1(rst_n_fl_reg_3[6]),
        .I2(\stat_reg[0] [1]),
        .I3(\stat_reg[0] [0]),
        .I4(abus_0[6]),
        .I5(acmd[2]),
        .O(\grn[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \grn[6]_i_5 
       (.I0(tout__1_carry_i_9_0),
        .I1(\iv_reg[7]_0 [2]),
        .I2(data0[6]),
        .I3(\grn[15]_i_9_n_0 ),
        .I4(tnsn_dsp_c[6]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .O(\grn[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000D5DD)) 
    \grn[6]_i_6 
       (.I0(rst_n_fl_reg_3[3]),
        .I1(\grn[6]_i_7_n_0 ),
        .I2(\grn[6]_i_8_n_0 ),
        .I3(\grn[6]_i_9_n_0 ),
        .I4(\grn[6]_i_10_n_0 ),
        .I5(\grn[6]_i_11_n_0 ),
        .O(\grn[6]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h5D)) 
    \grn[6]_i_7 
       (.I0(\grn[7]_i_26_n_0 ),
        .I1(abus_0[5]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .O(\grn[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hD5D50000F0F000FF)) 
    \grn[6]_i_8 
       (.I0(\grn[6]_i_12_n_0 ),
        .I1(\bdatw[9]_INST_0_i_1_1 ),
        .I2(abus_0[7]),
        .I3(\grn[6]_i_6_0 ),
        .I4(\stat_reg[0] [1]),
        .I5(\bdatw[9]_INST_0_i_1_0 ),
        .O(\grn[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0F0E0E0E0F0E0F0E)) 
    \grn[6]_i_9 
       (.I0(\stat_reg[0] [1]),
        .I1(\bdatw[10]_INST_0_i_1_0 ),
        .I2(\bdatw[9]_INST_0_i_1_2 ),
        .I3(\grn[6]_i_12_n_0 ),
        .I4(\grn[6]_i_6_1 ),
        .I5(\bdatw[9]_INST_0_i_1_1 ),
        .O(\grn[6]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h2E)) 
    \grn[7]_i_10 
       (.I0(\grn[7]_i_23_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .I2(tout__1_carry_i_9_n_0),
        .O(tout__1_carry_i_9_0));
  LUT6 #(
    .INIT(64'h0000000055545454)) 
    \grn[7]_i_11 
       (.I0(\grn[7]_i_25_n_0 ),
        .I1(ir[9]),
        .I2(\bcmd[2]_INST_0_i_1_n_0 ),
        .I3(ir[10]),
        .I4(ir[7]),
        .I5(\tnsn_dsp_a[8]_INST_0_i_9_n_0 ),
        .O(\grn[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h14551555)) 
    \grn[7]_i_12 
       (.I0(\grn[7]_i_3_1 ),
        .I1(ir[12]),
        .I2(ir[14]),
        .I3(ir[13]),
        .I4(ir[11]),
        .O(\grn[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    \grn[7]_i_13 
       (.I0(\grn[7]_i_4__0_n_0 ),
        .I1(ir[10]),
        .I2(\tnsn_dsp_a[8]_INST_0_i_24_n_0 ),
        .I3(ir[7]),
        .I4(\bcmd[0]_INST_0_i_5_n_0 ),
        .I5(ir[3]),
        .O(\grn[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000800FFFFFFFF)) 
    \grn[7]_i_14 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(\tnsn_dsp_a[8]_INST_0_i_24_n_0 ),
        .I3(ir[10]),
        .I4(ir[3]),
        .I5(\grn[15]_i_10_n_0 ),
        .O(\grn[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \grn[7]_i_15 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_23_n_0 ),
        .I1(ir[9]),
        .O(\grn[7]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hF8FFF8F8)) 
    \grn[7]_i_16 
       (.I0(\grn[7]_i_12_n_0 ),
        .I1(ir[8]),
        .I2(\grn[7]_i_4_1 ),
        .I3(\grn[7]_i_11_n_0 ),
        .I4(ir[3]),
        .O(\grn[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h2F)) 
    \grn[7]_i_17 
       (.I0(abus_0[6]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .I2(\grn[7]_i_26_n_0 ),
        .O(\grn[7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF0F8)) 
    \grn[7]_i_19 
       (.I0(\stat_reg[0] [0]),
        .I1(rst_n_fl_reg_3[3]),
        .I2(\grn[6]_i_11_n_0 ),
        .I3(\grn[7]_i_31_n_0 ),
        .O(\grn[7]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \grn[7]_i_1__5 
       (.I0(bank_sel),
        .I1(ctl_selc_rn[2]),
        .I2(ctl_selc_rn[0]),
        .I3(ctl_selc_rn[1]),
        .I4(\iv[15]_i_2_0 ),
        .O(E[0]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \grn[7]_i_2 
       (.I0(\grn[7]_i_4__0_n_0 ),
        .I1(ir[2]),
        .I2(ir[5]),
        .I3(\grn[7]_i_11_n_0 ),
        .I4(ir[10]),
        .I5(\grn[7]_i_5_n_0 ),
        .O(ctl_selc_rn[2]));
  LUT6 #(
    .INIT(64'hF300F53FF3FFF530)) 
    \grn[7]_i_21 
       (.I0(abus_0[15]),
        .I1(rst_n_fl_reg_3[7]),
        .I2(acmd[2]),
        .I3(\stat_reg[0] [1]),
        .I4(\stat_reg[0] [0]),
        .I5(abus_0[7]),
        .O(\grn[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000028888080)) 
    \grn[7]_i_22 
       (.I0(acmd[2]),
        .I1(\stat_reg[0] [1]),
        .I2(abus_0[7]),
        .I3(\stat_reg[0] [0]),
        .I4(rst_n_fl_reg_3[7]),
        .I5(tout__1_carry_i_11_n_0),
        .O(\grn[7]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \grn[7]_i_23 
       (.I0(tout__1_carry_i_11_n_0),
        .I1(acmd[2]),
        .O(\grn[7]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \grn[7]_i_24 
       (.I0(\stat_reg[0] [1]),
        .I1(\stat_reg[0] [0]),
        .O(\tnsn_dsp_a[7]_INST_0_i_2_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0001)) 
    \grn[7]_i_25 
       (.I0(ir[7]),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .I2(ir[8]),
        .I3(ir[10]),
        .I4(\iv[15]_i_4_0 ),
        .I5(\bdatw[15]_INST_0_i_49_n_0 ),
        .O(\grn[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000040004)) 
    \grn[7]_i_26 
       (.I0(rst_n_fl_reg_3[2]),
        .I1(rst_n_fl_reg_3[3]),
        .I2(rst_n_fl_reg_3[0]),
        .I3(rst_n_fl_reg_3[1]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_3_1 ),
        .I5(abus_0[7]),
        .O(\grn[7]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \grn[7]_i_28 
       (.I0(\stat_reg[0] [0]),
        .I1(rst_n_fl_reg_3[2]),
        .I2(rst_n_fl_reg_3[3]),
        .I3(rst_n_fl_reg_3[0]),
        .I4(rst_n_fl_reg_3[1]),
        .O(\bdatw[9]_INST_0_i_1_2 ));
  LUT4 #(
    .INIT(16'h9995)) 
    \grn[7]_i_29 
       (.I0(rst_n_fl_reg_3[2]),
        .I1(rst_n_fl_reg_3[3]),
        .I2(rst_n_fl_reg_3[0]),
        .I3(rst_n_fl_reg_3[1]),
        .O(\bdatw[9]_INST_0_i_1_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \grn[7]_i_2__0 
       (.I0(\iv_reg[7]_3 ),
        .I1(\grn[7]_i_7_n_0 ),
        .I2(\grn[7]_i_8_n_0 ),
        .I3(\grn[7]_i_9_n_0 ),
        .I4(\iv_reg[7]_0 [3]),
        .I5(tout__1_carry_i_9_0),
        .O(cbus[7]));
  LUT6 #(
    .INIT(64'hF222FFFFF222F222)) 
    \grn[7]_i_3 
       (.I0(ir[4]),
        .I1(\grn[7]_i_11_n_0 ),
        .I2(\grn[7]_i_12_n_0 ),
        .I3(ir[9]),
        .I4(\grn[7]_i_13_n_0 ),
        .I5(ir[1]),
        .O(ctl_selc_rn[1]));
  LUT4 #(
    .INIT(16'h0100)) 
    \grn[7]_i_31 
       (.I0(rst_n_fl_reg_3[0]),
        .I1(rst_n_fl_reg_3[1]),
        .I2(rst_n_fl_reg_3[2]),
        .I3(abus_0[7]),
        .O(\grn[7]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \grn[7]_i_3__0 
       (.I0(ctl_selc_rn[0]),
        .I1(\iv[15]_i_2_0 ),
        .O(\grn[15]_i_3__0_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFE00)) 
    \grn[7]_i_4 
       (.I0(\grn[7]_i_14_n_0 ),
        .I1(\tnsn_dsp_a[8]_INST_0_i_7_n_0 ),
        .I2(\grn[7]_i_15_n_0 ),
        .I3(ir[0]),
        .I4(\grn[7]_i_16_n_0 ),
        .I5(\stat[2]_i_3_n_0 ),
        .O(ctl_selc_rn[0]));
  LUT3 #(
    .INIT(8'h02)) 
    \grn[7]_i_4__0 
       (.I0(\grn[15]_i_10_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_23_n_0 ),
        .I2(\tnsn_dsp_a[8]_INST_0_i_7_n_0 ),
        .O(\grn[7]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFD)) 
    \grn[7]_i_5 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(\bcmd[0]_INST_0_i_5_n_0 ),
        .I3(ir[7]),
        .I4(\tnsn_dsp_a[8]_INST_0_i_24_n_0 ),
        .I5(\grn[7]_i_12_n_0 ),
        .O(\grn[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \grn[7]_i_5__0 
       (.I0(ctl_selc_rn[2]),
        .I1(\iv[15]_i_2_0 ),
        .O(\grn[15]_i_3__0_1 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \grn[7]_i_7 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .I1(tnsn_dsp_c[7]),
        .I2(\grn[15]_i_9_n_0 ),
        .I3(data0[7]),
        .O(\grn[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0000005D)) 
    \grn[7]_i_8 
       (.I0(rst_n_fl_reg_3[3]),
        .I1(\grn[7]_i_17_n_0 ),
        .I2(\iv_reg[7]_1 ),
        .I3(\grn[7]_i_19_n_0 ),
        .I4(\iv_reg[7]_2 ),
        .O(\grn[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hF1)) 
    \grn[7]_i_9 
       (.I0(\grn[7]_i_21_n_0 ),
        .I1(\grn[15]_i_5_n_0 ),
        .I2(\grn[7]_i_22_n_0 ),
        .O(\grn[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF08FF08FF08FFFF)) 
    \grn[8]_i_1 
       (.I0(read_cyc[2]),
        .I1(bdatr[0]),
        .I2(read_cyc[1]),
        .I3(\grn[8]_i_2_n_0 ),
        .I4(\grn[15]_i_5_n_0 ),
        .I5(\grn[8]_i_3_n_0 ),
        .O(cbus[8]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \grn[8]_i_2 
       (.I0(\grn[15]_i_9_n_0 ),
        .I1(data0[8]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .I3(tnsn_dsp_c[8]),
        .O(\grn[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0C0F0D0DDCDFD)) 
    \grn[8]_i_3 
       (.I0(rst_n_fl_reg_3[0]),
        .I1(\grn[14]_i_4_n_0 ),
        .I2(acmd[2]),
        .I3(abus_0[8]),
        .I4(\grn[14]_i_5_n_0 ),
        .I5(\grn[8]_i_4_n_0 ),
        .O(\grn[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \grn[8]_i_4 
       (.I0(\grn[11]_i_5_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_1 ),
        .I2(abus_0[0]),
        .O(\grn[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF08FF08FF08FFFF)) 
    \grn[9]_i_1 
       (.I0(read_cyc[2]),
        .I1(bdatr[1]),
        .I2(read_cyc[1]),
        .I3(\grn[9]_i_2_n_0 ),
        .I4(\grn[15]_i_5_n_0 ),
        .I5(\grn[9]_i_3_n_0 ),
        .O(cbus[9]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \grn[9]_i_2 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .I1(tnsn_dsp_c[9]),
        .I2(\grn[15]_i_9_n_0 ),
        .I3(data0[9]),
        .O(\grn[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCF44CF33CF77CFFF)) 
    \grn[9]_i_3 
       (.I0(rst_n_fl_reg_3[1]),
        .I1(acmd[2]),
        .I2(\grn[9]_i_4_n_0 ),
        .I3(\stat_reg[0] [1]),
        .I4(\stat_reg[0] [0]),
        .I5(abus_0[9]),
        .O(\grn[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \grn[9]_i_4 
       (.I0(rst_n_fl_reg_3[7]),
        .I1(\stat_reg[0] [0]),
        .I2(abus_0[1]),
        .O(\grn[9]_i_4_n_0 ));
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
       (.I0(ctl_selc[0]),
        .I1(ctl_selc[1]),
        .I2(\grn[7]_i_4_0 ),
        .I3(ctl_selc_rn[2]),
        .O(\grn[7]_i_2_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAFE)) 
    \iv[15]_i_10 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_9_n_0 ),
        .I1(ir[6]),
        .I2(ir[4]),
        .I3(\stat[0]_i_6_n_0 ),
        .I4(ir[5]),
        .I5(\iv[15]_i_12_n_0 ),
        .O(\iv[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \iv[15]_i_11 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(ir[4]),
        .I3(ir[15]),
        .I4(\bcmd[0]_INST_0_i_7_n_0 ),
        .I5(\bcmd[0]_0 ),
        .O(\iv[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAFAFFFFFABAA)) 
    \iv[15]_i_12 
       (.I0(\iv[15]_i_10_0 ),
        .I1(ir[15]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_19_0 ),
        .I3(\bdatw[15]_INST_0_i_32_n_0 ),
        .I4(\grn[7]_i_12_n_0 ),
        .I5(\bdatw[11]_INST_0_i_41 ),
        .O(\iv[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBA)) 
    \iv[15]_i_2 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(\tnsn_dsp_a[8]_INST_0_i_12_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .I4(\iv[15]_i_7_n_0 ),
        .I5(\iv[15]_i_8_n_0 ),
        .O(ctl_selc[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \iv[15]_i_3 
       (.I0(\stat_reg[2] ),
        .I1(\grn[7]_i_11_n_0 ),
        .I2(\iv[15]_i_9_n_0 ),
        .I3(\grn[7]_i_14_n_0 ),
        .I4(\iv[15]_i_10_n_0 ),
        .I5(\iv_reg[0] ),
        .O(ctl_selc[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55550003)) 
    \iv[15]_i_4 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_4_n_0 ),
        .I1(\tnsn_dsp_a[8]_INST_0_i_11_n_0 ),
        .I2(ir[3]),
        .I3(\tnsn_dsp_a[8]_INST_0_i_24_n_0 ),
        .I4(ir[7]),
        .I5(\grn[7]_i_25_n_0 ),
        .O(\iv[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[15]_i_5 
       (.I0(ir[10]),
        .I1(ir[6]),
        .O(\iv[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[15]_i_6 
       (.I0(ir[4]),
        .I1(\grn[15]_i_10_n_0 ),
        .O(\iv[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02333113)) 
    \iv[15]_i_7 
       (.I0(ir[11]),
        .I1(\grn[7]_i_3_1 ),
        .I2(ir[13]),
        .I3(ir[14]),
        .I4(ir[12]),
        .I5(\tnsn_dsp_a[8]_INST_0_i_9_n_0 ),
        .O(\iv[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[15]_i_8 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_7_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_23_n_0 ),
        .O(\iv[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAAAAAA)) 
    \iv[15]_i_9 
       (.I0(\bdatw[15]_INST_0_i_11_n_0 ),
        .I1(\iv[15]_i_11_n_0 ),
        .I2(ir[3]),
        .I3(Q[0]),
        .I4(\bcmd[0]_INST_0_i_5_n_0 ),
        .I5(ir[10]),
        .O(\iv[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[0]_i_1 
       (.I0(cbus[0]),
        .I1(\rgf/cbus_sel_cr [1]),
        .I2(fch_pc[0]),
        .I3(\pc[15]_i_4_n_0 ),
        .I4(\pc_reg[15]_0 [0]),
        .O(\pc_reg[15] [0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[10]_i_1 
       (.I0(cbus[10]),
        .I1(\rgf/cbus_sel_cr [1]),
        .I2(fch_pc[10]),
        .I3(\pc[15]_i_4_n_0 ),
        .I4(\pc_reg[15]_0 [10]),
        .O(\pc_reg[15] [10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[11]_i_1 
       (.I0(cbus[11]),
        .I1(\rgf/cbus_sel_cr [1]),
        .I2(fch_pc[11]),
        .I3(\pc[15]_i_4_n_0 ),
        .I4(\pc_reg[15]_0 [11]),
        .O(\pc_reg[15] [11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[12]_i_1 
       (.I0(cbus[12]),
        .I1(\rgf/cbus_sel_cr [1]),
        .I2(fch_pc[12]),
        .I3(\pc[15]_i_4_n_0 ),
        .I4(\pc_reg[15]_0 [12]),
        .O(\pc_reg[15] [12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[13]_i_1 
       (.I0(\pc_reg[13] ),
        .I1(\rgf/cbus_sel_cr [1]),
        .I2(fch_pc[13]),
        .I3(\pc[15]_i_4_n_0 ),
        .I4(\pc_reg[15]_0 [13]),
        .O(\pc_reg[15] [13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[14]_i_1 
       (.I0(cbus[13]),
        .I1(\rgf/cbus_sel_cr [1]),
        .I2(fch_pc[14]),
        .I3(\pc[15]_i_4_n_0 ),
        .I4(\pc_reg[15]_0 [14]),
        .O(\pc_reg[15] [14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[15]_i_1 
       (.I0(cbus[14]),
        .I1(\rgf/cbus_sel_cr [1]),
        .I2(fch_pc[15]),
        .I3(\pc[15]_i_4_n_0 ),
        .I4(\pc_reg[15]_0 [15]),
        .O(\pc_reg[15] [15]));
  LUT5 #(
    .INIT(32'h00040000)) 
    \pc[15]_i_2 
       (.I0(ctl_selc[0]),
        .I1(ctl_selc[1]),
        .I2(ctl_selc_rn[1]),
        .I3(ctl_selc_rn[2]),
        .I4(ctl_selc_rn[0]),
        .O(\rgf/cbus_sel_cr [1]));
  LUT3 #(
    .INIT(8'hAB)) 
    \pc[15]_i_4 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(\stat_reg[1] ),
        .I2(Q[0]),
        .O(\pc[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[1]_i_1 
       (.I0(cbus[1]),
        .I1(\rgf/cbus_sel_cr [1]),
        .I2(fch_pc[1]),
        .I3(\pc[15]_i_4_n_0 ),
        .I4(\pc_reg[15]_0 [1]),
        .O(\pc_reg[15] [1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[2]_i_1 
       (.I0(cbus[2]),
        .I1(\rgf/cbus_sel_cr [1]),
        .I2(fch_pc[2]),
        .I3(\pc[15]_i_4_n_0 ),
        .I4(\pc_reg[15]_0 [2]),
        .O(\pc_reg[15] [2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[3]_i_1 
       (.I0(cbus[3]),
        .I1(\rgf/cbus_sel_cr [1]),
        .I2(fch_pc[3]),
        .I3(\pc[15]_i_4_n_0 ),
        .I4(\pc_reg[15]_0 [3]),
        .O(\pc_reg[15] [3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[4]_i_1 
       (.I0(cbus[4]),
        .I1(\rgf/cbus_sel_cr [1]),
        .I2(fch_pc[4]),
        .I3(\pc[15]_i_4_n_0 ),
        .I4(\pc_reg[15]_0 [4]),
        .O(\pc_reg[15] [4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[5]_i_1 
       (.I0(cbus[5]),
        .I1(\rgf/cbus_sel_cr [1]),
        .I2(fch_pc[5]),
        .I3(\pc[15]_i_4_n_0 ),
        .I4(\pc_reg[15]_0 [5]),
        .O(\pc_reg[15] [5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[6]_i_1 
       (.I0(cbus[6]),
        .I1(\rgf/cbus_sel_cr [1]),
        .I2(fch_pc[6]),
        .I3(\pc[15]_i_4_n_0 ),
        .I4(\pc_reg[15]_0 [6]),
        .O(\pc_reg[15] [6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[7]_i_1 
       (.I0(cbus[7]),
        .I1(\rgf/cbus_sel_cr [1]),
        .I2(fch_pc[7]),
        .I3(\pc[15]_i_4_n_0 ),
        .I4(\pc_reg[15]_0 [7]),
        .O(\pc_reg[15] [7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[8]_i_1 
       (.I0(cbus[8]),
        .I1(\rgf/cbus_sel_cr [1]),
        .I2(fch_pc[8]),
        .I3(\pc[15]_i_4_n_0 ),
        .I4(\pc_reg[15]_0 [8]),
        .O(\pc_reg[15] [8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[9]_i_1 
       (.I0(cbus[9]),
        .I1(\rgf/cbus_sel_cr [1]),
        .I2(fch_pc[9]),
        .I3(\pc[15]_i_4_n_0 ),
        .I4(\pc_reg[15]_0 [9]),
        .O(\pc_reg[15] [9]));
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    \read_cyc[0]_i_1 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(abus_0[0]),
        .I3(brdy),
        .I4(read_cyc[0]),
        .O(brdy_0));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \read_cyc[1]_i_2 
       (.I0(ir[10]),
        .I1(bcmd_0_sn_1),
        .I2(ir[12]),
        .I3(ir[13]),
        .I4(ir[14]),
        .O(\read_cyc[1]_i_2_n_0 ));
  FDRE rst_n_fl_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rst_n),
        .Q(rst_n_fl),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \sp[0]_i_1 
       (.I0(cbus[0]),
        .I1(\grn[7]_i_3_0 ),
        .I2(ctl_sp_inc),
        .I3(sp_dec_0[0]),
        .I4(ctl_sp_dec),
        .I5(\grn[4]_i_20_0 [0]),
        .O(\read_cyc_reg[2] [0]));
  LUT6 #(
    .INIT(64'h88A8888888888888)) 
    \sp[0]_i_2 
       (.I0(brdy),
        .I1(\bcmd[0]_INST_0_i_3_n_0 ),
        .I2(ir[5]),
        .I3(\stat[0]_i_6_n_0 ),
        .I4(ir[3]),
        .I5(ir[6]),
        .O(ctl_sp_inc));
  LUT5 #(
    .INIT(32'hAAAA8A88)) 
    \sp[0]_i_3 
       (.I0(brdy),
        .I1(\sp[0]_i_4_n_0 ),
        .I2(Q[1]),
        .I3(\sp[0]_i_5_n_0 ),
        .I4(\bcmd[1]_INST_0_i_2_n_0 ),
        .O(ctl_sp_dec));
  LUT5 #(
    .INIT(32'h00000800)) 
    \sp[0]_i_4 
       (.I0(ir[10]),
        .I1(ir[5]),
        .I2(\bdatw[15]_INST_0_i_44_n_0 ),
        .I3(ir[6]),
        .I4(ir[3]),
        .O(\sp[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004040400)) 
    \sp[0]_i_5 
       (.I0(rst_n_fl_reg_2),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(Q[0]),
        .I4(fch_irq_req),
        .I5(Q[2]),
        .O(\sp[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[10]_i_1 
       (.I0(cbus[10]),
        .I1(\grn[7]_i_3_0 ),
        .I2(\sp_reg[10] ),
        .O(\read_cyc_reg[2] [10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[11]_i_1 
       (.I0(cbus[11]),
        .I1(\grn[7]_i_3_0 ),
        .I2(\sp_reg[11] ),
        .O(\read_cyc_reg[2] [11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[12]_i_1 
       (.I0(cbus[12]),
        .I1(\grn[7]_i_3_0 ),
        .I2(\sp_reg[12] ),
        .O(\read_cyc_reg[2] [12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[14]_i_1 
       (.I0(cbus[13]),
        .I1(\grn[7]_i_3_0 ),
        .I2(\sp_reg[14] ),
        .O(\read_cyc_reg[2] [13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[15]_i_1 
       (.I0(cbus[14]),
        .I1(\grn[7]_i_3_0 ),
        .I2(\sp_reg[15] ),
        .O(\read_cyc_reg[2] [14]));
  LUT5 #(
    .INIT(32'h00040000)) 
    \sp[15]_i_2 
       (.I0(ctl_selc[0]),
        .I1(ctl_selc[1]),
        .I2(ctl_selc_rn[2]),
        .I3(ctl_selc_rn[0]),
        .I4(ctl_selc_rn[1]),
        .O(\grn[7]_i_3_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[1]_i_1 
       (.I0(cbus[1]),
        .I1(\grn[7]_i_3_0 ),
        .I2(\sp_reg[1] ),
        .O(\read_cyc_reg[2] [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[2]_i_1 
       (.I0(cbus[2]),
        .I1(\grn[7]_i_3_0 ),
        .I2(\sp_reg[2] ),
        .O(\read_cyc_reg[2] [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[3]_i_1 
       (.I0(cbus[3]),
        .I1(\grn[7]_i_3_0 ),
        .I2(\sp_reg[3] ),
        .O(\read_cyc_reg[2] [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[4]_i_1 
       (.I0(cbus[4]),
        .I1(\grn[7]_i_3_0 ),
        .I2(\sp_reg[4] ),
        .O(\read_cyc_reg[2] [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[5]_i_1 
       (.I0(cbus[5]),
        .I1(\grn[7]_i_3_0 ),
        .I2(\sp_reg[5] ),
        .O(\read_cyc_reg[2] [5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[6]_i_1 
       (.I0(cbus[6]),
        .I1(\grn[7]_i_3_0 ),
        .I2(\sp_reg[6] ),
        .O(\read_cyc_reg[2] [6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[7]_i_1 
       (.I0(cbus[7]),
        .I1(\grn[7]_i_3_0 ),
        .I2(\sp_reg[7] ),
        .O(\read_cyc_reg[2] [7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[8]_i_1 
       (.I0(cbus[8]),
        .I1(\grn[7]_i_3_0 ),
        .I2(\sp_reg[8] ),
        .O(\read_cyc_reg[2] [8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[9]_i_1 
       (.I0(cbus[9]),
        .I1(\grn[7]_i_3_0 ),
        .I2(\sp_reg[9] ),
        .O(\read_cyc_reg[2] [9]));
  LUT2 #(
    .INIT(4'h4)) 
    \sr[0]_i_1 
       (.I0(\rgf/cbus_sel_cr [0]),
        .I1(\sr_reg[15]_0 [0]),
        .O(\sr_reg[0]_7 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sr[10]_i_1 
       (.I0(\rgf/cbus_sel_cr [0]),
        .I1(\sr_reg[15]_0 [10]),
        .O(\sr_reg[10] ));
  LUT2 #(
    .INIT(4'h4)) 
    \sr[11]_i_1 
       (.I0(\rgf/cbus_sel_cr [0]),
        .I1(\sr_reg[15]_0 [11]),
        .O(\sr_reg[11] ));
  LUT6 #(
    .INIT(64'hFEFEFFFF0E020000)) 
    \sr[12]_i_1 
       (.I0(\sr_reg[12] ),
        .I1(\rgf/cbus_sel_cr [5]),
        .I2(\rgf/cbus_sel_cr [0]),
        .I3(\sr_reg[15]_0 [12]),
        .I4(rst_n),
        .I5(cpuid[0]),
        .O(\sr_reg[15] [0]));
  LUT6 #(
    .INIT(64'hFEFEFFFF0E020000)) 
    \sr[13]_i_1 
       (.I0(\sr_reg[13] ),
        .I1(\rgf/cbus_sel_cr [5]),
        .I2(\rgf/cbus_sel_cr [0]),
        .I3(\sr_reg[15]_0 [13]),
        .I4(rst_n),
        .I5(cpuid[1]),
        .O(\sr_reg[15] [1]));
  LUT6 #(
    .INIT(64'hFEFEFFFF0E020000)) 
    \sr[14]_i_1 
       (.I0(\sr_reg[14] ),
        .I1(\rgf/cbus_sel_cr [5]),
        .I2(\rgf/cbus_sel_cr [0]),
        .I3(\sr_reg[15]_0 [14]),
        .I4(rst_n),
        .I5(cpuid[2]),
        .O(\sr_reg[15] [2]));
  LUT6 #(
    .INIT(64'hFEFEFFFF0E020000)) 
    \sr[15]_i_1 
       (.I0(\sr_reg[15]_1 ),
        .I1(\rgf/cbus_sel_cr [5]),
        .I2(\rgf/cbus_sel_cr [0]),
        .I3(\sr_reg[15]_0 [15]),
        .I4(rst_n),
        .I5(cpuid[3]),
        .O(\sr_reg[15] [3]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \sr[15]_i_3 
       (.I0(ctl_selc[0]),
        .I1(ctl_selc[1]),
        .I2(ctl_selc_rn[1]),
        .I3(ctl_selc_rn[2]),
        .I4(ctl_selc_rn[0]),
        .O(\rgf/cbus_sel_cr [5]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \sr[15]_i_4 
       (.I0(ctl_selc[0]),
        .I1(ctl_selc[1]),
        .I2(ctl_selc_rn[2]),
        .I3(ctl_selc_rn[0]),
        .I4(ctl_selc_rn[1]),
        .O(\rgf/cbus_sel_cr [0]));
  LUT2 #(
    .INIT(4'h4)) 
    \sr[1]_i_1 
       (.I0(\rgf/cbus_sel_cr [0]),
        .I1(\sr_reg[15]_0 [1]),
        .O(\sr_reg[1] ));
  LUT5 #(
    .INIT(32'hFEF20E02)) 
    \sr[2]_i_1 
       (.I0(\sr[2]_i_2_n_0 ),
        .I1(\rgf/cbus_sel_cr [5]),
        .I2(\rgf/cbus_sel_cr [0]),
        .I3(\sr_reg[15]_0 [2]),
        .I4(cbus[2]),
        .O(\sr_reg[2] ));
  LUT4 #(
    .INIT(16'hFD08)) 
    \sr[2]_i_2 
       (.I0(ctl_sr_ldie),
        .I1(fch_irq_lev[0]),
        .I2(ctl_sr_upd),
        .I3(\sr_reg[15]_0 [2]),
        .O(\sr[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEF20E02)) 
    \sr[3]_i_1 
       (.I0(\sr[3]_i_2_n_0 ),
        .I1(\rgf/cbus_sel_cr [5]),
        .I2(\rgf/cbus_sel_cr [0]),
        .I3(\sr_reg[15]_0 [3]),
        .I4(cbus[3]),
        .O(\sr_reg[3] ));
  LUT4 #(
    .INIT(16'hFD08)) 
    \sr[3]_i_2 
       (.I0(ctl_sr_ldie),
        .I1(fch_irq_lev[1]),
        .I2(ctl_sr_upd),
        .I3(\sr_reg[15]_0 [3]),
        .O(\sr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE4000000E4)) 
    \sr[4]_i_1 
       (.I0(ctl_sr_upd),
        .I1(\sr_reg[15]_0 [4]),
        .I2(alu_sr_flag[0]),
        .I3(\rgf/cbus_sel_cr [5]),
        .I4(\rgf/cbus_sel_cr [0]),
        .I5(cbus[4]),
        .O(\sr_reg[4]_0 ));
  LUT5 #(
    .INIT(32'h0000EEE0)) 
    \sr[4]_i_10 
       (.I0(\sr[4]_i_3_2 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .I2(rst_n_fl_reg_3[2]),
        .I3(\grn[0]_i_9_n_0 ),
        .I4(rst_n_fl_reg_3[3]),
        .O(\sr[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000008AAAAAAAA)) 
    \sr[4]_i_11 
       (.I0(rst_n_fl_reg_3[3]),
        .I1(\sr[4]_i_25_n_0 ),
        .I2(\bdatw[9]_INST_0_i_1_2 ),
        .I3(\grn[2]_i_15_n_0 ),
        .I4(\grn[2]_i_14_n_0 ),
        .I5(\grn[2]_i_10_n_0 ),
        .O(\sr[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h55554454FFFFFFFF)) 
    \sr[4]_i_12 
       (.I0(\sr[4]_i_26_n_0 ),
        .I1(\sr[4]_i_27_n_0 ),
        .I2(\grn[5]_i_14_n_0 ),
        .I3(\grn[5]_i_6_0 ),
        .I4(\grn[5]_i_16_n_0 ),
        .I5(rst_n_fl_reg_3[3]),
        .O(\sr[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8888888AAAAAAAAA)) 
    \sr[4]_i_13 
       (.I0(\grn[6]_i_7_n_0 ),
        .I1(\sr[4]_i_28_n_0 ),
        .I2(\grn[6]_i_6_0 ),
        .I3(\stat_reg[0] [1]),
        .I4(\bdatw[9]_INST_0_i_1_0 ),
        .I5(\grn[6]_i_9_n_0 ),
        .O(\sr[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBABABA00)) 
    \sr[4]_i_14 
       (.I0(\stat_reg[0] [0]),
        .I1(\grn[4]_i_16_n_0 ),
        .I2(\sr[4]_i_29_n_0 ),
        .I3(\bdatw[10]_INST_0_i_1_0 ),
        .I4(\sr[4]_i_3_1 ),
        .I5(\sr[4]_i_30_n_0 ),
        .O(\sr[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7F7F700)) 
    \sr[4]_i_15 
       (.I0(\bdatw[10]_INST_0_i_1_0 ),
        .I1(\grn[0]_i_9_n_0 ),
        .I2(\sr[4]_i_31_n_0 ),
        .I3(rst_n_fl_reg_3[2]),
        .I4(\grn[4]_i_6_0 ),
        .I5(rst_n_fl_reg_3[3]),
        .O(\sr[4]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFF1FFF3)) 
    \sr[4]_i_16 
       (.I0(\grn[1]_i_2_n_0 ),
        .I1(\grn[15]_i_5_n_0 ),
        .I2(\grn[1]_i_3_n_0 ),
        .I3(\grn[0]_i_3_n_0 ),
        .I4(\grn[0]_i_2_n_0 ),
        .O(\sr[4]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hEEEF)) 
    \sr[4]_i_17 
       (.I0(\sr[4]_i_32_n_0 ),
        .I1(\grn[4]_i_3_n_0 ),
        .I2(\grn[15]_i_5_n_0 ),
        .I3(\grn[4]_i_2_n_0 ),
        .O(\sr[4]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFAB)) 
    \sr[4]_i_18 
       (.I0(\grn[2]_i_3_n_0 ),
        .I1(\grn[15]_i_5_n_0 ),
        .I2(\grn[2]_i_2_n_0 ),
        .I3(\grn[3]_i_3_n_0 ),
        .O(\sr[4]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFABAF)) 
    \sr[4]_i_19 
       (.I0(\grn[5]_i_3_n_0 ),
        .I1(\grn[5]_i_2_n_0 ),
        .I2(\grn[15]_i_5_n_0 ),
        .I3(\grn[6]_i_3_n_0 ),
        .I4(\grn[6]_i_2_n_0 ),
        .O(\sr[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    \sr[4]_i_2 
       (.I0(\grn[1]_i_6_n_0 ),
        .I1(\sr[4]_i_3_n_0 ),
        .I2(\sr[4]_i_4_n_0 ),
        .I3(\sr[4]_i_5_n_0 ),
        .I4(\sr[4]_i_6_n_0 ),
        .I5(\sr[4]_i_7_n_0 ),
        .O(alu_sr_flag[0]));
  LUT6 #(
    .INIT(64'h00000000FFFFE0EE)) 
    \sr[4]_i_20 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .I1(\grn[7]_i_23_n_0 ),
        .I2(\grn[15]_i_12_n_0 ),
        .I3(tout__1_carry_i_9_n_0),
        .I4(\sr_reg[15]_0 [4]),
        .I5(\sr[4]_i_7_0 ),
        .O(\sr[4]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF000F000E000F000)) 
    \sr[4]_i_21 
       (.I0(rst_n_fl_reg_3[0]),
        .I1(rst_n_fl_reg_3[1]),
        .I2(\stat_reg[0] [0]),
        .I3(rst_n_fl_reg_3[3]),
        .I4(abus_0[7]),
        .I5(rst_n_fl_reg_3[2]),
        .O(\sr[4]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h00011101)) 
    \sr[4]_i_22 
       (.I0(\bdatw[9]_INST_0_i_1_0 ),
        .I1(\stat_reg[0] [1]),
        .I2(\sr[4]_i_9_1 ),
        .I3(\bdatw[9]_INST_0_i_1_1 ),
        .I4(\sr[4]_i_9_2 ),
        .O(\sr[4]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEEEFE)) 
    \sr[4]_i_23 
       (.I0(\bdatw[10]_INST_0_i_1_0 ),
        .I1(\stat_reg[0] [1]),
        .I2(\grn[5]_i_7_0 ),
        .I3(\bdatw[9]_INST_0_i_1_1 ),
        .I4(\sr[4]_i_9_0 ),
        .O(\sr[4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h08F8FFFFFFFFFFFF)) 
    \sr[4]_i_25 
       (.I0(\grn[4]_i_18_n_0 ),
        .I1(\grn[4]_i_17_n_0 ),
        .I2(\stat_reg[0] [1]),
        .I3(abus_0[7]),
        .I4(\bdatw[9]_INST_0_i_1_1 ),
        .I5(\bdatw[10]_INST_0_i_1_0 ),
        .O(\sr[4]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD0FFD0D0D0D0)) 
    \sr[4]_i_26 
       (.I0(abus_0[4]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .I2(\grn[7]_i_26_n_0 ),
        .I3(\bdatw[9]_INST_0_i_1_0 ),
        .I4(\sr[4]_i_12_0 ),
        .I5(\stat_reg[0] [0]),
        .O(\sr[4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFFF0111)) 
    \sr[4]_i_27 
       (.I0(\stat_reg[0] [1]),
        .I1(\bdatw[10]_INST_0_i_1_0 ),
        .I2(\bdatw[9]_INST_0_i_1_1 ),
        .I3(\grn[5]_i_7_0 ),
        .I4(\bdatw[9]_INST_0_i_1_2 ),
        .I5(\grn[1]_i_8_0 ),
        .O(\sr[4]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hA080A2A2)) 
    \sr[4]_i_28 
       (.I0(\stat_reg[0] [1]),
        .I1(\bdatw[10]_INST_0_i_1_0 ),
        .I2(abus_0[7]),
        .I3(\bdatw[9]_INST_0_i_1_1 ),
        .I4(\grn[6]_i_12_n_0 ),
        .O(\sr[4]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF808)) 
    \sr[4]_i_29 
       (.I0(\grn[4]_i_18_n_0 ),
        .I1(\grn[4]_i_17_n_0 ),
        .I2(\bdatw[9]_INST_0_i_1_1 ),
        .I3(\grn[4]_i_9_0 ),
        .I4(\bdatw[9]_INST_0_i_1_0 ),
        .I5(\stat_reg[0] [1]),
        .O(\sr[4]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444555F555F)) 
    \sr[4]_i_3 
       (.I0(\sr[4]_i_8_n_0 ),
        .I1(\sr[4]_i_9_n_0 ),
        .I2(\grn[6]_i_11_n_0 ),
        .I3(\sr[4]_i_10_n_0 ),
        .I4(\grn[0]_i_7_n_0 ),
        .I5(rst_n_fl_reg_3[3]),
        .O(\sr[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hD0FF)) 
    \sr[4]_i_30 
       (.I0(abus_0[3]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .I2(\grn[7]_i_26_n_0 ),
        .I3(rst_n_fl_reg_3[3]),
        .O(\sr[4]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \sr[4]_i_31 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .I1(\grn[4]_i_6_1 ),
        .I2(\bdatw[9]_INST_0_i_1_1 ),
        .I3(\grn[4]_i_6_2 ),
        .O(\sr[4]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hEEABBBBB)) 
    \sr[4]_i_32 
       (.I0(acmd[4]),
        .I1(acmd[3]),
        .I2(\stat_reg[0] [0]),
        .I3(\stat_reg[0] [1]),
        .I4(acmd[2]),
        .O(\sr[4]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'hABAABBBB)) 
    \sr[4]_i_4 
       (.I0(\grn[6]_i_11_n_0 ),
        .I1(\grn[3]_i_10_n_0 ),
        .I2(\iv_reg[3] ),
        .I3(\grn[3]_i_8_n_0 ),
        .I4(rst_n_fl_reg_3[3]),
        .O(\sr[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFF00FFAEFFAE)) 
    \sr[4]_i_5 
       (.I0(\sr[4]_i_11_n_0 ),
        .I1(\grn[2]_i_8_n_0 ),
        .I2(\grn[2]_i_7_n_0 ),
        .I3(\grn[6]_i_11_n_0 ),
        .I4(\grn[5]_i_10_n_0 ),
        .I5(\sr[4]_i_12_n_0 ),
        .O(\sr[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF45FF)) 
    \sr[4]_i_6 
       (.I0(\grn[6]_i_10_n_0 ),
        .I1(\sr[4]_i_13_n_0 ),
        .I2(rst_n_fl_reg_3[3]),
        .I3(\sr[4]_i_14_n_0 ),
        .I4(\sr[4]_i_15_n_0 ),
        .I5(\grn[6]_i_11_n_0 ),
        .O(\sr[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \sr[4]_i_7 
       (.I0(\sr[4]_i_16_n_0 ),
        .I1(\sr[4]_i_17_n_0 ),
        .I2(\sr[4]_i_18_n_0 ),
        .I3(\grn[7]_i_9_n_0 ),
        .I4(\sr[4]_i_19_n_0 ),
        .I5(\sr[4]_i_20_n_0 ),
        .O(\sr[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF5404)) 
    \sr[4]_i_8 
       (.I0(rst_n_fl_reg_3[3]),
        .I1(\sr[4]_i_5_0 ),
        .I2(rst_n_fl_reg_3[2]),
        .I3(\sr[4]_i_3_0 ),
        .I4(\sr[4]_i_21_n_0 ),
        .I5(\grn[6]_i_11_n_0 ),
        .O(\sr[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8A8A8AAAAAAAA)) 
    \sr[4]_i_9 
       (.I0(\grn[7]_i_17_n_0 ),
        .I1(\sr[4]_i_22_n_0 ),
        .I2(\bdatw[9]_INST_0_i_1_2 ),
        .I3(\stat_reg[0] [1]),
        .I4(abus_0[7]),
        .I5(\sr[4]_i_23_n_0 ),
        .O(\sr[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE4000000E4)) 
    \sr[5]_i_1 
       (.I0(ctl_sr_upd),
        .I1(\sr_reg[15]_0 [5]),
        .I2(alu_sr_flag[1]),
        .I3(\rgf/cbus_sel_cr [5]),
        .I4(\rgf/cbus_sel_cr [0]),
        .I5(cbus[5]),
        .O(\sr_reg[5] ));
  LUT6 #(
    .INIT(64'hAAAABBBABBBAAAAA)) 
    \sr[5]_i_2 
       (.I0(\sr[5]_i_3_n_0 ),
        .I1(rst_n_fl_reg_3[3]),
        .I2(\tnsn_dsp_a[8]_INST_0_i_5_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_0 ),
        .I4(\grn[7]_i_8_n_0 ),
        .I5(\sr[6]_i_3_n_0 ),
        .O(alu_sr_flag[1]));
  LUT5 #(
    .INIT(32'h00060090)) 
    \sr[5]_i_3 
       (.I0(rst_n_fl_reg_3[7]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[7]),
        .I3(tout__1_carry_i_9_0),
        .I4(\iv_reg[7]_0 [3]),
        .O(\sr[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \sr[6]_i_1 
       (.I0(\sr[6]_i_2_n_0 ),
        .I1(\rgf/cbus_sel_cr [5]),
        .I2(\rgf/cbus_sel_cr [0]),
        .I3(cbus[6]),
        .O(\sr_reg[6] ));
  LUT6 #(
    .INIT(64'hFFFFFF004141FF00)) 
    \sr[6]_i_2 
       (.I0(tout__1_carry_i_9_0),
        .I1(tout__1_carry_i_8_n_0),
        .I2(\sr_reg[6]_0 ),
        .I3(\sr_reg[15]_0 [6]),
        .I4(ctl_sr_upd),
        .I5(\sr[6]_i_3_n_0 ),
        .O(\sr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEFF0F)) 
    \sr[6]_i_3 
       (.I0(\grn[7]_i_31_n_0 ),
        .I1(\sr[6]_i_4_n_0 ),
        .I2(\sr[6]_i_5_n_0 ),
        .I3(\sr[5]_i_2_0 ),
        .I4(rst_n_fl_reg_3[3]),
        .I5(\grn[6]_i_11_n_0 ),
        .O(\sr[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000002A2A00FF)) 
    \sr[6]_i_4 
       (.I0(\sr[6]_i_7_n_0 ),
        .I1(\grn[4]_i_9_0 ),
        .I2(\bdatw[9]_INST_0_i_1_1 ),
        .I3(\sr[6]_i_3_0 ),
        .I4(\bdatw[9]_INST_0_i_1_0 ),
        .I5(\grn[0]_i_11_n_0 ),
        .O(\sr[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF07F700F0)) 
    \sr[6]_i_5 
       (.I0(rst_n_fl_reg_3[0]),
        .I1(abus_0[7]),
        .I2(\bdatw[9]_INST_0_i_1_1 ),
        .I3(\sr[6]_i_3_1 ),
        .I4(\sr[6]_i_8_n_0 ),
        .I5(\bdatw[10]_INST_0_i_1_0 ),
        .O(\sr[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFDFFFDDDFDDDD)) 
    \sr[6]_i_7 
       (.I0(\grn[4]_i_17_n_0 ),
        .I1(\bdatw[9]_INST_0_i_1_1 ),
        .I2(\stat_reg[0] [1]),
        .I3(rst_n_fl_reg_3[0]),
        .I4(\sr_reg[15]_0 [6]),
        .I5(\iv_reg[15] ),
        .O(\sr[6]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \sr[6]_i_8 
       (.I0(\grn[4]_i_18_n_0 ),
        .I1(\stat_reg[0] [1]),
        .I2(\iv_reg[15] ),
        .O(\sr[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE4000000E4)) 
    \sr[7]_i_1 
       (.I0(ctl_sr_upd),
        .I1(\sr_reg[15]_0 [7]),
        .I2(alu_sr_flag[3]),
        .I3(\rgf/cbus_sel_cr [5]),
        .I4(\rgf/cbus_sel_cr [0]),
        .I5(cbus[7]),
        .O(\sr_reg[7] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFFE)) 
    \sr[7]_i_2 
       (.I0(\sr[7]_i_4_n_0 ),
        .I1(\sr[7]_i_5_n_0 ),
        .I2(\sr[7]_i_6_n_0 ),
        .I3(\tnsn_dsp_a[8]_INST_0_i_7_n_0 ),
        .I4(ir[4]),
        .I5(\grn[7]_i_15_n_0 ),
        .O(ctl_sr_upd));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \sr[7]_i_3 
       (.I0(\grn[7]_i_8_n_0 ),
        .I1(\grn[7]_i_9_n_0 ),
        .I2(\iv_reg[7]_0 [3]),
        .I3(tout__1_carry_i_9_0),
        .O(alu_sr_flag[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF010100F0)) 
    \sr[7]_i_4 
       (.I0(ir[7]),
        .I1(\tnsn_dsp_a[8]_INST_0_i_24_n_0 ),
        .I2(\bcmd[0]_INST_0_i_5_n_0 ),
        .I3(\bcmd[2]_INST_0_i_1_n_0 ),
        .I4(ir[10]),
        .I5(\bdatw[15]_INST_0_i_49_n_0 ),
        .O(\sr[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h05510151)) 
    \sr[7]_i_5 
       (.I0(\grn[7]_i_3_1 ),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(ir[12]),
        .I4(ir[11]),
        .O(\sr[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h111111111F111111)) 
    \sr[7]_i_6 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_12_n_0 ),
        .I1(ir[8]),
        .I2(ir[5]),
        .I3(ir[3]),
        .I4(ir[6]),
        .I5(\stat[0]_i_6_n_0 ),
        .O(\sr[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sr[8]_i_1 
       (.I0(\rgf/cbus_sel_cr [0]),
        .I1(\sr_reg[15]_0 [8]),
        .O(\sr_reg[8] ));
  LUT2 #(
    .INIT(4'h4)) 
    \sr[9]_i_1 
       (.I0(\rgf/cbus_sel_cr [0]),
        .I1(\sr_reg[15]_0 [9]),
        .O(\sr_reg[9] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \stat[0]_i_1 
       (.I0(brdy),
        .I1(\stat[0]_i_2_n_0 ),
        .I2(\stat[0]_i_3_n_0 ),
        .I3(\stat[0]_i_4_n_0 ),
        .I4(\stat_reg[0]_1 ),
        .I5(\bdatw[15]_INST_0_i_15_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \stat[0]_i_10 
       (.I0(rst_n_fl_reg_2),
        .I1(Q[2]),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(Q[0]),
        .I5(brdy),
        .O(\stat[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \stat[0]_i_11 
       (.I0(\iv[15]_i_11_n_0 ),
        .I1(brdy),
        .I2(ir[10]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[3]),
        .O(\stat[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \stat[0]_i_12 
       (.I0(ir[3]),
        .I1(Q[0]),
        .I2(ir[10]),
        .I3(ir[5]),
        .I4(ir[6]),
        .O(\stat[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \stat[0]_i_2 
       (.I0(ir[6]),
        .I1(ir[3]),
        .I2(\stat[0]_i_6_n_0 ),
        .I3(ir[5]),
        .I4(Q[0]),
        .I5(rst_n_fl_reg_0),
        .O(\stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44E00000)) 
    \stat[0]_i_3 
       (.I0(brdy),
        .I1(Q[0]),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(\stat[0]_i_7_n_0 ),
        .I5(\stat[0]_i_8_n_0 ),
        .O(\stat[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[0]_i_4 
       (.I0(ir[1]),
        .I1(\stat_reg[0]_2 ),
        .O(\stat[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \stat[0]_i_6 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[7]),
        .I4(bcmd_0_sn_1),
        .I5(\bcmd[1]_INST_0_i_7_n_0 ),
        .O(\stat[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \stat[0]_i_7 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\bcmd[1]_INST_0_i_8_n_0 ),
        .I3(\bcmd[0]_INST_0_i_11_n_0 ),
        .I4(ir[15]),
        .I5(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\stat[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF5111)) 
    \stat[0]_i_8 
       (.I0(brdy),
        .I1(\stat[0]_i_9_n_0 ),
        .I2(rst_n_fl_reg_0),
        .I3(Q[0]),
        .I4(\stat[0]_i_10_n_0 ),
        .I5(\stat[0]_i_11_n_0 ),
        .O(\stat[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \stat[0]_i_9 
       (.I0(\bcmd[0]_INST_0_i_7_n_0 ),
        .I1(\bcmd[0]_0 ),
        .I2(\stat[0]_i_12_n_0 ),
        .I3(ir[15]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\stat[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \stat[1]_i_3 
       (.I0(ir[0]),
        .I1(rst_n_fl_reg_2),
        .I2(ir[1]),
        .I3(Q[1]),
        .O(\stat_reg[1]_2 ));
  LUT2 #(
    .INIT(4'hB)) 
    \stat[1]_i_5 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_8_n_0 ),
        .I1(\stat_reg[1]_1 ),
        .O(\bdatw[15]_INST_0_i_15_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \stat[2]_i_2 
       (.I0(\stat[2]_i_3_n_0 ),
        .I1(\stat_reg[1] ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \stat[2]_i_3 
       (.I0(\bdatw[15]_INST_0_i_15_0 ),
        .I1(\stat_reg[2] ),
        .I2(\stat_reg[2]_0 ),
        .I3(ir[0]),
        .O(\stat[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \stat[2]_i_4 
       (.I0(Q[1]),
        .I1(ir[1]),
        .I2(rst_n_fl_reg_2),
        .I3(ir[0]),
        .I4(Q[2]),
        .O(\stat_reg[1] ));
  LUT3 #(
    .INIT(8'hEB)) 
    \tnsn_dsp_a[7]_INST_0_i_1 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_5_0 ),
        .I1(\stat_reg[0] [0]),
        .I2(\stat_reg[0] [1]),
        .O(\tnsn_dsp_a[7]_INST_0_i_3_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \tnsn_dsp_a[7]_INST_0_i_10 
       (.I0(ir[9]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_24_n_0 ),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ir[10]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_25_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000080F0800)) 
    \tnsn_dsp_a[7]_INST_0_i_11 
       (.I0(\sr_reg[15]_0 [7]),
        .I1(ir[13]),
        .I2(bcmd_0_sn_1),
        .I3(ir[12]),
        .I4(\sr_reg[15]_0 [6]),
        .I5(ir[14]),
        .O(\tnsn_dsp_a[7]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \tnsn_dsp_a[7]_INST_0_i_12 
       (.I0(\sr_reg[15]_0 [6]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[14]),
        .I4(\eir_fl_reg[1]_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00004544)) 
    \tnsn_dsp_a[7]_INST_0_i_13 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(ir[11]),
        .I3(ir[14]),
        .I4(\grn[7]_i_3_1 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h1011)) 
    \tnsn_dsp_a[7]_INST_0_i_14 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(\sr_reg[15]_0 [4]),
        .I3(ir[12]),
        .O(\tnsn_dsp_a[7]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \tnsn_dsp_a[7]_INST_0_i_15 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_19_0 ),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[12]),
        .I4(\sr_reg[15]_0 [7]),
        .I5(\sr_reg[15]_0 [5]),
        .O(\tnsn_dsp_a[7]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0080008000800A8A)) 
    \tnsn_dsp_a[7]_INST_0_i_16 
       (.I0(\sr_reg[15]_0 [5]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_26_n_0 ),
        .I2(ir[12]),
        .I3(\sr_reg[15]_0 [7]),
        .I4(bcmd_0_sn_1),
        .I5(ir[13]),
        .O(\tnsn_dsp_a[7]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \tnsn_dsp_a[7]_INST_0_i_17 
       (.I0(ir[8]),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(\bcmd[0]_INST_0_i_4_n_0 ),
        .I4(bcmd_0_sn_1),
        .O(\tnsn_dsp_a[7]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4444F444)) 
    \tnsn_dsp_a[7]_INST_0_i_18 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_7_1 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_7_0 ),
        .I2(\bdatw[15]_INST_0_i_8_0 ),
        .I3(\bdatw[9]_INST_0_i_17_n_0 ),
        .I4(rst_n_fl_reg_2),
        .I5(\tnsn_dsp_a[7]_INST_0_i_28_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFABFFAAFFFF)) 
    \tnsn_dsp_a[7]_INST_0_i_19 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_29_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_30_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_19_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_15_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_31_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_8_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF32)) 
    \tnsn_dsp_a[7]_INST_0_i_2 
       (.I0(ir[7]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_4_n_0 ),
        .I2(ir[6]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_5_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_6_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_7_n_0 ),
        .O(\stat_reg[0] [0]));
  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAA)) 
    \tnsn_dsp_a[7]_INST_0_i_20 
       (.I0(\bdatw[15]_INST_0_i_47_n_0 ),
        .I1(\grn[7]_i_3_1 ),
        .I2(ir[13]),
        .I3(ir[12]),
        .I4(ir[11]),
        .I5(ir[14]),
        .O(\tnsn_dsp_a[7]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF222F222F222F2F2)) 
    \tnsn_dsp_a[7]_INST_0_i_21 
       (.I0(ir[4]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_33_n_0 ),
        .I2(ir[6]),
        .I3(\tnsn_dsp_a[8]_INST_0_i_9_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_34_n_0 ),
        .I5(\bcmd[2]_INST_0_i_1_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \tnsn_dsp_a[7]_INST_0_i_23 
       (.I0(ir[10]),
        .I1(ir[8]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_35_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \tnsn_dsp_a[7]_INST_0_i_24 
       (.I0(bcmd_0_sn_1),
        .I1(ir[7]),
        .I2(ir[12]),
        .I3(ir[13]),
        .I4(ir[14]),
        .O(\tnsn_dsp_a[7]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hBBFFBBBBBAFFBABA)) 
    \tnsn_dsp_a[7]_INST_0_i_25 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_16_n_0 ),
        .I1(\eir_fl_reg[1]_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_36_n_0 ),
        .I3(bcmd_0_sn_1),
        .I4(\tnsn_dsp_a[7]_INST_0_i_37_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_38_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \tnsn_dsp_a[7]_INST_0_i_26 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(ir[11]),
        .I5(Q[0]),
        .O(\tnsn_dsp_a[7]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \tnsn_dsp_a[7]_INST_0_i_28 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(\sr_reg[15]_0 [7]),
        .I4(\eir_fl_reg[1]_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h02A2000002A20200)) 
    \tnsn_dsp_a[7]_INST_0_i_29 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_7_0 ),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(ir[12]),
        .I4(ir[15]),
        .I5(\sr_reg[15]_0 [4]),
        .O(\tnsn_dsp_a[7]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEFE)) 
    \tnsn_dsp_a[7]_INST_0_i_3 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_8_n_0 ),
        .I1(\grn[7]_i_4_1 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_9_n_0 ),
        .I3(ir[3]),
        .I4(\tnsn_dsp_a[8]_INST_0_i_7_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_10_n_0 ),
        .O(\stat_reg[0] [1]));
  LUT2 #(
    .INIT(4'hB)) 
    \tnsn_dsp_a[7]_INST_0_i_30 
       (.I0(ir[14]),
        .I1(\sr_reg[15]_0 [6]),
        .O(\tnsn_dsp_a[7]_INST_0_i_30_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \tnsn_dsp_a[7]_INST_0_i_31 
       (.I0(ir[12]),
        .I1(ir[13]),
        .O(\tnsn_dsp_a[7]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \tnsn_dsp_a[7]_INST_0_i_33 
       (.I0(ir[5]),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(ir[10]),
        .I4(bcmd_0_sn_1),
        .I5(\bcmd[0]_INST_0_i_7_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_33_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \tnsn_dsp_a[7]_INST_0_i_34 
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(ir[10]),
        .O(\tnsn_dsp_a[7]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \tnsn_dsp_a[7]_INST_0_i_35 
       (.I0(\bcmd[0]_INST_0_i_4_n_0 ),
        .I1(bcmd_0_sn_1),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_39_n_0 ),
        .I5(ir[4]),
        .O(\tnsn_dsp_a[7]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \tnsn_dsp_a[7]_INST_0_i_36 
       (.I0(\sr_reg[15]_0 [7]),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[12]),
        .O(\tnsn_dsp_a[7]_INST_0_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h0C0B000B)) 
    \tnsn_dsp_a[7]_INST_0_i_37 
       (.I0(\sr_reg[15]_0 [4]),
        .I1(ir[12]),
        .I2(ir[14]),
        .I3(ir[13]),
        .I4(\sr_reg[15]_0 [7]),
        .O(\tnsn_dsp_a[7]_INST_0_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h20000222)) 
    \tnsn_dsp_a[7]_INST_0_i_38 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(\sr_reg[15]_0 [7]),
        .I4(\sr_reg[15]_0 [5]),
        .O(\tnsn_dsp_a[7]_INST_0_i_38_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \tnsn_dsp_a[7]_INST_0_i_39 
       (.I0(ir[3]),
        .I1(ir[6]),
        .O(\tnsn_dsp_a[7]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \tnsn_dsp_a[7]_INST_0_i_4 
       (.I0(ir[9]),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(ir[12]),
        .I4(bcmd_0_sn_1),
        .I5(ir[10]),
        .O(\tnsn_dsp_a[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEFE)) 
    \tnsn_dsp_a[7]_INST_0_i_5 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_11_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_12_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_13_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_19_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_14_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_15_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAABAB)) 
    \tnsn_dsp_a[7]_INST_0_i_6 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_16_n_0 ),
        .I1(\stat[0]_i_6_n_0 ),
        .I2(ir[4]),
        .I3(ir[5]),
        .I4(ir[6]),
        .I5(ir[3]),
        .O(\tnsn_dsp_a[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF54)) 
    \tnsn_dsp_a[7]_INST_0_i_7 
       (.I0(ir[6]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_17_n_0 ),
        .I2(\tnsn_dsp_a[8]_INST_0_i_9_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_18_n_0 ),
        .I4(\iv[15]_i_9_n_0 ),
        .I5(\grn[7]_i_15_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEEF)) 
    \tnsn_dsp_a[7]_INST_0_i_8 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_19_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_20_n_0 ),
        .I2(\tnsn_dsp_a[8]_INST_0_i_12_n_0 ),
        .I3(ir[8]),
        .I4(ir[6]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_21_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    \tnsn_dsp_a[7]_INST_0_i_9 
       (.I0(ir[14]),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(\sr_reg[15]_0 [6]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_7_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_23_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABAAAAAAA)) 
    \tnsn_dsp_a[8]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_49_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_19_0 ),
        .I2(ir[15]),
        .I3(ir[14]),
        .I4(ir[13]),
        .I5(ir[12]),
        .O(\tnsn_dsp_a[8]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \tnsn_dsp_a[8]_INST_0_i_11 
       (.I0(ir[8]),
        .I1(ir[10]),
        .O(\tnsn_dsp_a[8]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \tnsn_dsp_a[8]_INST_0_i_12 
       (.I0(bcmd_0_sn_1),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(ir[14]),
        .I4(ir[9]),
        .I5(ir[7]),
        .O(\tnsn_dsp_a[8]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \tnsn_dsp_a[8]_INST_0_i_13 
       (.I0(ir[10]),
        .I1(\tnsn_dsp_a[8]_INST_0_i_24_n_0 ),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[9]),
        .O(\tnsn_dsp_a[8]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAFFBBAFF)) 
    \tnsn_dsp_a[8]_INST_0_i_14 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_25_n_0 ),
        .I1(ir[11]),
        .I2(ir[14]),
        .I3(ir[13]),
        .I4(ir[12]),
        .I5(\grn[7]_i_3_1 ),
        .O(\tnsn_dsp_a[8]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \tnsn_dsp_a[8]_INST_0_i_15 
       (.I0(ir[8]),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(\bcmd[0]_INST_0_i_4_n_0 ),
        .I4(bcmd_0_sn_1),
        .O(\tnsn_dsp_a[8]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \tnsn_dsp_a[8]_INST_0_i_16 
       (.I0(bcmd_0_sn_1),
        .I1(\bcmd[0]_INST_0_i_7_n_0 ),
        .I2(ir[9]),
        .I3(ir[10]),
        .I4(ir[6]),
        .I5(ir[8]),
        .O(\tnsn_dsp_a[8]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h11044444)) 
    \tnsn_dsp_a[8]_INST_0_i_17 
       (.I0(\grn[7]_i_3_1 ),
        .I1(ir[14]),
        .I2(ir[11]),
        .I3(ir[12]),
        .I4(ir[13]),
        .O(\tnsn_dsp_a[8]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \tnsn_dsp_a[8]_INST_0_i_18 
       (.I0(\stat[0]_i_6_n_0 ),
        .I1(ir[6]),
        .I2(ir[3]),
        .I3(ir[5]),
        .O(\tnsn_dsp_a[8]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \tnsn_dsp_a[8]_INST_0_i_19 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(bcmd_0_sn_1),
        .I4(ir[9]),
        .I5(ir[7]),
        .O(\tnsn_dsp_a[8]_INST_0_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \tnsn_dsp_a[8]_INST_0_i_2 
       (.I0(acmd[3]),
        .I1(acmd[4]),
        .I2(acmd[2]),
        .O(\tnsn_dsp_a[8]_INST_0_i_5_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \tnsn_dsp_a[8]_INST_0_i_20 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(Q[0]),
        .I4(ir[3]),
        .I5(\iv[15]_i_11_n_0 ),
        .O(\tnsn_dsp_a[8]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \tnsn_dsp_a[8]_INST_0_i_21 
       (.I0(ir[7]),
        .I1(ir[9]),
        .O(\tnsn_dsp_a[8]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \tnsn_dsp_a[8]_INST_0_i_24 
       (.I0(bcmd_0_sn_1),
        .I1(\bcmd[0]_INST_0_i_4_n_0 ),
        .I2(ir[4]),
        .I3(ir[6]),
        .I4(ir[5]),
        .O(\tnsn_dsp_a[8]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000001)) 
    \tnsn_dsp_a[8]_INST_0_i_25 
       (.I0(ir[8]),
        .I1(\bcmd[0]_INST_0_i_4_n_0 ),
        .I2(bcmd_0_sn_1),
        .I3(ir[9]),
        .I4(ir[6]),
        .I5(ir[10]),
        .O(\tnsn_dsp_a[8]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFABABAB)) 
    \tnsn_dsp_a[8]_INST_0_i_3 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_6_n_0 ),
        .I1(ir[1]),
        .I2(\stat_reg[0]_2 ),
        .I3(\tnsn_dsp_a[8]_INST_0_i_7_n_0 ),
        .I4(ir[4]),
        .I5(\tnsn_dsp_a[8]_INST_0_i_8_n_0 ),
        .O(acmd[3]));
  LUT6 #(
    .INIT(64'hFF75FF75FF75FFFF)) 
    \tnsn_dsp_a[8]_INST_0_i_4 
       (.I0(\stat_reg[1]_1 ),
        .I1(ir[11]),
        .I2(\tnsn_dsp_a[8]_INST_0_i_9_n_0 ),
        .I3(\tnsn_dsp_a[8]_INST_0_i_10_n_0 ),
        .I4(\tnsn_dsp_a[8]_INST_0_i_11_n_0 ),
        .I5(\tnsn_dsp_a[8]_INST_0_i_12_n_0 ),
        .O(acmd[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \tnsn_dsp_a[8]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_11_n_0 ),
        .I1(\bdatw[15]_INST_0_i_28_n_0 ),
        .I2(\tnsn_dsp_a[8]_INST_0_i_13_n_0 ),
        .I3(\tnsn_dsp_a[8]_INST_0_i_14_n_0 ),
        .I4(\tnsn_dsp_a[8]_INST_0_i_15_n_0 ),
        .I5(\grn[7]_i_4_1 ),
        .O(acmd[2]));
  LUT6 #(
    .INIT(64'hFDFDFFFDFFFDFDFD)) 
    \tnsn_dsp_a[8]_INST_0_i_6 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_16_n_0 ),
        .I1(\tnsn_dsp_a[8]_INST_0_i_17_n_0 ),
        .I2(\tnsn_dsp_a[8]_INST_0_i_18_n_0 ),
        .I3(\tnsn_dsp_a[8]_INST_0_i_19_n_0 ),
        .I4(ir[10]),
        .I5(ir[8]),
        .O(\tnsn_dsp_a[8]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \tnsn_dsp_a[8]_INST_0_i_7 
       (.I0(ir[6]),
        .I1(\stat[0]_i_6_n_0 ),
        .I2(ir[5]),
        .O(\tnsn_dsp_a[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \tnsn_dsp_a[8]_INST_0_i_8 
       (.I0(ir[5]),
        .I1(\stat[0]_i_6_n_0 ),
        .I2(ir[3]),
        .I3(ir[6]),
        .I4(ir[4]),
        .I5(\tnsn_dsp_a[8]_INST_0_i_20_n_0 ),
        .O(\tnsn_dsp_a[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \tnsn_dsp_a[8]_INST_0_i_9 
       (.I0(\bcmd[0]_INST_0_i_4_n_0 ),
        .I1(ir[8]),
        .I2(\tnsn_dsp_a[8]_INST_0_i_21_n_0 ),
        .I3(ir[10]),
        .I4(ir[15]),
        .I5(ctl_fetch_inferred_i_2_0),
        .O(\tnsn_dsp_a[8]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_b[0]_INST_0 
       (.I0(rst_n_fl_reg_3[0]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .O(tnsn_dsp_b[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_b[1]_INST_0 
       (.I0(rst_n_fl_reg_3[1]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .O(tnsn_dsp_b[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_b[2]_INST_0 
       (.I0(rst_n_fl_reg_3[2]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .O(tnsn_dsp_b[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_b[3]_INST_0 
       (.I0(rst_n_fl_reg_3[3]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .O(tnsn_dsp_b[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_b[4]_INST_0 
       (.I0(rst_n_fl_reg_3[4]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .O(tnsn_dsp_b[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_b[5]_INST_0 
       (.I0(rst_n_fl_reg_3[5]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .O(tnsn_dsp_b[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_b[6]_INST_0 
       (.I0(rst_n_fl_reg_3[6]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .O(tnsn_dsp_b[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_b[7]_INST_0 
       (.I0(rst_n_fl_reg_3[7]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_0 ),
        .O(tnsn_dsp_b[7]));
  LUT3 #(
    .INIT(8'h04)) 
    \tnsn_dsp_b[8]_INST_0 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_1 ),
        .I1(rst_n_fl_reg_3[7]),
        .I2(\tnsn_dsp_a[8]_INST_0_i_5_0 ),
        .O(tnsn_dsp_b[8]));
  LUT2 #(
    .INIT(4'hB)) 
    \tnsn_dsp_b[8]_INST_0_i_1 
       (.I0(\stat_reg[0] [0]),
        .I1(\stat_reg[0] [1]),
        .O(\tnsn_dsp_a[7]_INST_0_i_3_1 ));
  LUT3 #(
    .INIT(8'h69)) 
    tout__1_carry__0_i_1
       (.I0(rst_n_fl_reg_3[7]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[7]),
        .O(\badr[7]_INST_0_i_1_0 [3]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__0_i_2
       (.I0(rst_n_fl_reg_3[5]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[5]),
        .O(\badr[7]_INST_0_i_1_0 [2]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__0_i_3
       (.I0(rst_n_fl_reg_3[4]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[4]),
        .O(\badr[7]_INST_0_i_1_0 [1]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__0_i_4
       (.I0(rst_n_fl_reg_3[3]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[3]),
        .O(\badr[7]_INST_0_i_1_0 [0]));
  LUT5 #(
    .INIT(32'hA55A3CC3)) 
    tout__1_carry__0_i_5
       (.I0(rst_n_fl_reg_3[6]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(rst_n_fl_reg_3[7]),
        .I3(abus_0[7]),
        .I4(abus_0[6]),
        .O(\badr[6]_INST_0_i_1 [3]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__0_i_6
       (.I0(rst_n_fl_reg_3[6]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(\badr[7]_INST_0_i_1_0 [2]),
        .I3(abus_0[6]),
        .O(\badr[6]_INST_0_i_1 [2]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__0_i_7
       (.I0(rst_n_fl_reg_3[5]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[5]),
        .I3(\badr[7]_INST_0_i_1_0 [1]),
        .O(\badr[6]_INST_0_i_1 [1]));
  LUT5 #(
    .INIT(32'hA55A6969)) 
    tout__1_carry__0_i_8
       (.I0(rst_n_fl_reg_3[4]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[4]),
        .I3(rst_n_fl_reg_3[3]),
        .I4(abus_0[3]),
        .O(\badr[6]_INST_0_i_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    tout__1_carry__1_i_1
       (.I0(rst_n_fl_reg_3[7]),
        .I1(tout__1_carry_i_8_n_0),
        .O(tout__1_carry_i_8_0));
  LUT3 #(
    .INIT(8'h96)) 
    tout__1_carry__1_i_2
       (.I0(rst_n_fl_reg_3[7]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[7]),
        .O(\badr[7]_INST_0_i_1 [1]));
  LUT3 #(
    .INIT(8'hF9)) 
    tout__1_carry__1_i_3
       (.I0(rst_n_fl_reg_3[7]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[7]),
        .O(\badr[7]_INST_0_i_1 [0]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry_i_1
       (.I0(rst_n_fl_reg_3[2]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[2]),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h6)) 
    tout__1_carry_i_10
       (.I0(rst_n_fl_reg_3[0]),
        .I1(tout__1_carry_i_8_n_0),
        .O(tout__1_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tout__1_carry_i_11
       (.I0(acmd[4]),
        .I1(acmd[3]),
        .O(tout__1_carry_i_11_n_0));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry_i_2
       (.I0(rst_n_fl_reg_3[1]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[1]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'h83B3FFFF000083B3)) 
    tout__1_carry_i_3
       (.I0(\stat_reg[0] [1]),
        .I1(\sr_reg[15]_0 [6]),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\stat_reg[0] [0]),
        .I4(tout__1_carry_i_10_n_0),
        .I5(abus_0[0]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry_i_4
       (.I0(rst_n_fl_reg_3[3]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(DI[2]),
        .I3(abus_0[3]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'hA55A6969)) 
    tout__1_carry_i_5
       (.I0(rst_n_fl_reg_3[2]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[2]),
        .I3(rst_n_fl_reg_3[1]),
        .I4(abus_0[1]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry_i_6
       (.I0(rst_n_fl_reg_3[1]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(DI[0]),
        .I3(abus_0[1]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h7C4C83B383B37C4C)) 
    tout__1_carry_i_7
       (.I0(\stat_reg[0] [1]),
        .I1(\sr_reg[15]_0 [6]),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\stat_reg[0] [0]),
        .I4(abus_0[0]),
        .I5(tout__1_carry_i_10_n_0),
        .O(S[0]));
  LUT4 #(
    .INIT(16'hFF2E)) 
    tout__1_carry_i_8
       (.I0(\grn[7]_i_23_n_0 ),
        .I1(\stat_reg[0] [1]),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\stat_reg[0] [0]),
        .O(tout__1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tout__1_carry_i_9
       (.I0(acmd[2]),
        .I1(tout__1_carry_i_11_n_0),
        .O(tout__1_carry_i_9_n_0));
endmodule

module tnsn_fsm
   (\stat_reg[1]_0 ,
    Q,
    \stat_reg[1]_1 ,
    brdy_0,
    \stat_reg[1]_2 ,
    \stat_reg[0]_0 ,
    \stat_reg[0]_1 ,
    \stat_reg[0]_2 ,
    \stat_reg[2]_0 ,
    \stat_reg[0]_3 ,
    \stat_reg[0]_4 ,
    \stat_reg[0]_5 ,
    \stat_reg[2]_1 ,
    \stat_reg[0]_6 ,
    \stat_reg[2]_2 ,
    ctl_sr_ldie,
    \stat_reg[0]_7 ,
    \stat_reg[1]_3 ,
    \stat_reg[2]_3 ,
    \stat_reg[1]_4 ,
    \sr_reg[15] ,
    \sr_reg[14] ,
    \sr_reg[13] ,
    \sr_reg[12] ,
    \stat_reg[1]_5 ,
    \stat_reg[1]_6 ,
    \stat_reg[2]_4 ,
    \stat_reg[2]_5 ,
    \stat_reg[2]_6 ,
    ctl_fetch_ext,
    D,
    \stat_reg[1]_7 ,
    brdy,
    \stat_reg[1]_8 ,
    \grn[7]_i_25 ,
    fch_ir,
    \stat_reg[1]_9 ,
    \iv[15]_i_12 ,
    out,
    fch_irq_req,
    \iv[15]_i_3 ,
    ctl_sr_upd,
    \sr_reg[15]_0 ,
    cpuid,
    \bdatw[11]_INST_0_i_36 ,
    ctl_fetch_ext_fl_reg,
    SR,
    clk);
  output \stat_reg[1]_0 ;
  output [2:0]Q;
  output \stat_reg[1]_1 ;
  output brdy_0;
  output \stat_reg[1]_2 ;
  output \stat_reg[0]_0 ;
  output \stat_reg[0]_1 ;
  output \stat_reg[0]_2 ;
  output \stat_reg[2]_0 ;
  output \stat_reg[0]_3 ;
  output \stat_reg[0]_4 ;
  output \stat_reg[0]_5 ;
  output \stat_reg[2]_1 ;
  output \stat_reg[0]_6 ;
  output \stat_reg[2]_2 ;
  output ctl_sr_ldie;
  output \stat_reg[0]_7 ;
  output \stat_reg[1]_3 ;
  output \stat_reg[2]_3 ;
  output \stat_reg[1]_4 ;
  output \sr_reg[15] ;
  output \sr_reg[14] ;
  output \sr_reg[13] ;
  output \sr_reg[12] ;
  output \stat_reg[1]_5 ;
  output \stat_reg[1]_6 ;
  output \stat_reg[2]_4 ;
  output \stat_reg[2]_5 ;
  output \stat_reg[2]_6 ;
  output ctl_fetch_ext;
  input [1:0]D;
  input \stat_reg[1]_7 ;
  input brdy;
  input \stat_reg[1]_8 ;
  input \grn[7]_i_25 ;
  input [4:0]fch_ir;
  input \stat_reg[1]_9 ;
  input \iv[15]_i_12 ;
  input [0:0]out;
  input fch_irq_req;
  input \iv[15]_i_3 ;
  input ctl_sr_upd;
  input [3:0]\sr_reg[15]_0 ;
  input [3:0]cpuid;
  input \bdatw[11]_INST_0_i_36 ;
  input ctl_fetch_ext_fl_reg;
  input [0:0]SR;
  input clk;

  wire \<const1> ;
  wire [1:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \bdatw[11]_INST_0_i_36 ;
  wire brdy;
  wire brdy_0;
  wire clk;
  wire [3:0]cpuid;
  wire ctl_fetch_ext;
  wire ctl_fetch_ext_fl_reg;
  wire ctl_sr_ldie;
  wire ctl_sr_upd;
  wire [4:0]fch_ir;
  wire fch_irq_req;
  wire \grn[7]_i_25 ;
  wire \iv[15]_i_12 ;
  wire \iv[15]_i_3 ;
  wire [0:0]out;
  wire \sr_reg[12] ;
  wire \sr_reg[13] ;
  wire \sr_reg[14] ;
  wire \sr_reg[15] ;
  wire [3:0]\sr_reg[15]_0 ;
  wire [1:1]stat_nx;
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
  wire \stat_reg[1]_4 ;
  wire \stat_reg[1]_5 ;
  wire \stat_reg[1]_6 ;
  wire \stat_reg[1]_7 ;
  wire \stat_reg[1]_8 ;
  wire \stat_reg[1]_9 ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_2 ;
  wire \stat_reg[2]_3 ;
  wire \stat_reg[2]_4 ;
  wire \stat_reg[2]_5 ;
  wire \stat_reg[2]_6 ;

  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \badr[15]_INST_0_i_66 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(fch_ir[1]),
        .O(\stat_reg[2]_4 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bcmd[0]_INST_0_i_10 
       (.I0(fch_ir[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(fch_ir[4]),
        .O(\stat_reg[0]_5 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \bcmd[0]_INST_0_i_6 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(fch_ir[2]),
        .O(\stat_reg[1]_6 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \bcmd[1]_INST_0_i_3 
       (.I0(Q[2]),
        .I1(fch_irq_req),
        .I2(Q[0]),
        .O(\stat_reg[2]_3 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \bcmd[2]_INST_0_i_2 
       (.I0(fch_ir[4]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(fch_ir[2]),
        .I4(Q[0]),
        .O(\stat_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h01000000FFFFFFFF)) 
    \bdatw[11]_INST_0_i_41 
       (.I0(Q[1]),
        .I1(fch_ir[1]),
        .I2(\iv[15]_i_3 ),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\bdatw[11]_INST_0_i_36 ),
        .O(\stat_reg[1]_5 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \bdatw[15]_INST_0_i_27 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(fch_ir[0]),
        .I3(\stat_reg[1]_9 ),
        .I4(fch_ir[1]),
        .I5(Q[1]),
        .O(\stat_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \bdatw[15]_INST_0_i_42 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(fch_ir[2]),
        .I4(\iv[15]_i_12 ),
        .O(\stat_reg[0]_4 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[15]_INST_0_i_46 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\stat_reg[1]_4 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[15]_INST_0_i_56 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\stat_reg[2]_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bdatw[15]_INST_0_i_57 
       (.I0(fch_ir[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\stat_reg[2]_1 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \bdatw[8]_INST_0_i_22 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(fch_ir[4]),
        .O(\stat_reg[2]_5 ));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_ext_fl_i_1
       (.I0(Q[0]),
        .I1(ctl_fetch_ext_fl_reg),
        .O(ctl_fetch_ext));
  LUT3 #(
    .INIT(8'h80)) 
    \grn[15]_i_11 
       (.I0(brdy),
        .I1(Q[0]),
        .I2(\grn[7]_i_25 ),
        .O(brdy_0));
  LUT4 #(
    .INIT(16'hFEF0)) 
    \sr[12]_i_2 
       (.I0(ctl_sr_ldie),
        .I1(ctl_sr_upd),
        .I2(\sr_reg[15]_0 [0]),
        .I3(cpuid[0]),
        .O(\sr_reg[12] ));
  LUT4 #(
    .INIT(16'hFEF0)) 
    \sr[13]_i_2 
       (.I0(ctl_sr_ldie),
        .I1(ctl_sr_upd),
        .I2(\sr_reg[15]_0 [1]),
        .I3(cpuid[1]),
        .O(\sr_reg[13] ));
  LUT4 #(
    .INIT(16'hFEF0)) 
    \sr[14]_i_2 
       (.I0(ctl_sr_ldie),
        .I1(ctl_sr_upd),
        .I2(\sr_reg[15]_0 [2]),
        .I3(cpuid[2]),
        .O(\sr_reg[14] ));
  LUT4 #(
    .INIT(16'hFEF0)) 
    \sr[15]_i_2 
       (.I0(ctl_sr_ldie),
        .I1(ctl_sr_upd),
        .I2(\sr_reg[15]_0 [3]),
        .I3(cpuid[3]),
        .O(\sr_reg[15] ));
  LUT4 #(
    .INIT(16'h0040)) 
    \sr[15]_i_5 
       (.I0(\stat_reg[1]_7 ),
        .I1(Q[0]),
        .I2(brdy),
        .I3(Q[2]),
        .O(ctl_sr_ldie));
  LUT6 #(
    .INIT(64'h00000000FDF8F8F8)) 
    \stat[0]_i_5 
       (.I0(Q[0]),
        .I1(out),
        .I2(Q[2]),
        .I3(brdy),
        .I4(fch_irq_req),
        .I5(\stat_reg[1]_7 ),
        .O(\stat_reg[0]_7 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAAAFFFF)) 
    \stat[1]_i_1 
       (.I0(\stat_reg[1]_0 ),
        .I1(\stat_reg[1]_7 ),
        .I2(Q[0]),
        .I3(brdy),
        .I4(\stat_reg[1]_1 ),
        .I5(\stat_reg[1]_8 ),
        .O(stat_nx));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAEA)) 
    \stat[1]_i_2 
       (.I0(\stat_reg[0]_1 ),
        .I1(fch_ir[1]),
        .I2(\stat_reg[0]_2 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\stat_reg[1]_9 ),
        .O(\stat_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \stat[1]_i_4 
       (.I0(fch_ir[0]),
        .I1(\stat_reg[1]_9 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(\stat_reg[1]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \stat[1]_i_6 
       (.I0(Q[0]),
        .I1(brdy),
        .O(\stat_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h0010003000100010)) 
    \stat[2]_i_5 
       (.I0(fch_ir[1]),
        .I1(\iv[15]_i_3 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(brdy),
        .O(\stat_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \stat[2]_i_6 
       (.I0(\stat_reg[1]_9 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(brdy),
        .I5(fch_ir[1]),
        .O(\stat_reg[2]_0 ));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx),
        .Q(Q[1]),
        .R(SR));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(Q[2]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0001)) 
    \tnsn_dsp_a[7]_INST_0_i_22 
       (.I0(fch_ir[2]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\stat_reg[2]_6 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \tnsn_dsp_a[7]_INST_0_i_32 
       (.I0(fch_ir[3]),
        .I1(fch_ir[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\stat_reg[0]_3 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \tnsn_dsp_a[8]_INST_0_i_22 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\stat_reg[0]_6 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \tnsn_dsp_a[8]_INST_0_i_23 
       (.I0(Q[0]),
        .I1(fch_ir[2]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\stat_reg[0]_0 ));
endmodule

module tnsn_mem
   (read_cyc,
    D,
    \read_cyc_reg[2] ,
    .bdatr_8_sp_1(bdatr_8_sn_1),
    .bdatr_9_sp_1(bdatr_9_sn_1),
    .bdatr_10_sp_1(bdatr_10_sn_1),
    .bdatr_11_sp_1(bdatr_11_sn_1),
    .bdatr_12_sp_1(bdatr_12_sn_1),
    .bdatr_13_sp_1(bdatr_13_sn_1),
    .bdatr_14_sp_1(bdatr_14_sn_1),
    .bdatr_15_sp_1(bdatr_15_sn_1),
    SR,
    \read_cyc_reg[2]_0 ,
    clk,
    \read_cyc_reg[1] ,
    \read_cyc_reg[0] ,
    \sp_reg[13] ,
    \sp_reg[13]_0 ,
    bdatr,
    \iv_reg[13] ,
    \iv_reg[13]_0 );
  output [2:0]read_cyc;
  output [0:0]D;
  output [0:0]\read_cyc_reg[2] ;
  input [0:0]SR;
  input \read_cyc_reg[2]_0 ;
  input clk;
  input \read_cyc_reg[1] ;
  input \read_cyc_reg[0] ;
  input [0:0]\sp_reg[13] ;
  input \sp_reg[13]_0 ;
  input [15:0]bdatr;
  input \iv_reg[13] ;
  input \iv_reg[13]_0 ;
  output bdatr_8_sn_1;
  output bdatr_9_sn_1;
  output bdatr_10_sn_1;
  output bdatr_11_sn_1;
  output bdatr_12_sn_1;
  output bdatr_13_sn_1;
  output bdatr_14_sn_1;
  output bdatr_15_sn_1;

  wire [0:0]D;
  wire [0:0]SR;
  wire [15:0]bdatr;
  wire bdatr_10_sn_1;
  wire bdatr_11_sn_1;
  wire bdatr_12_sn_1;
  wire bdatr_13_sn_1;
  wire bdatr_14_sn_1;
  wire bdatr_15_sn_1;
  wire bdatr_8_sn_1;
  wire bdatr_9_sn_1;
  wire clk;
  wire \iv_reg[13] ;
  wire \iv_reg[13]_0 ;
  wire [2:0]read_cyc;
  wire \read_cyc_reg[0] ;
  wire \read_cyc_reg[1] ;
  wire [0:0]\read_cyc_reg[2] ;
  wire \read_cyc_reg[2]_0 ;
  wire [0:0]\sp_reg[13] ;
  wire \sp_reg[13]_0 ;

  tnsn_mem_bctl bctl
       (.D(D),
        .SR(SR),
        .bdatr(bdatr[13]),
        .clk(clk),
        .\iv_reg[13] (\iv_reg[13] ),
        .\iv_reg[13]_0 (\iv_reg[13]_0 ),
        .\read_cyc_reg[0]_0 (read_cyc[0]),
        .\read_cyc_reg[0]_1 (\read_cyc_reg[0] ),
        .\read_cyc_reg[1]_0 (read_cyc[1]),
        .\read_cyc_reg[1]_1 (\read_cyc_reg[1] ),
        .\read_cyc_reg[2]_0 (read_cyc[2]),
        .\read_cyc_reg[2]_1 (\read_cyc_reg[2] ),
        .\read_cyc_reg[2]_2 (\read_cyc_reg[2]_0 ),
        .\sp_reg[13] (\sp_reg[13] ),
        .\sp_reg[13]_0 (\sp_reg[13]_0 ));
  tnsn_mem_bdatr brbf
       (.bdatr(bdatr),
        .bdatr_10_sp_1(bdatr_10_sn_1),
        .bdatr_11_sp_1(bdatr_11_sn_1),
        .bdatr_12_sp_1(bdatr_12_sn_1),
        .bdatr_13_sp_1(bdatr_13_sn_1),
        .bdatr_14_sp_1(bdatr_14_sn_1),
        .bdatr_15_sp_1(bdatr_15_sn_1),
        .bdatr_8_sp_1(bdatr_8_sn_1),
        .bdatr_9_sp_1(bdatr_9_sn_1),
        .\iv_reg[7] (read_cyc[0]),
        .\iv_reg[7]_0 (read_cyc[1]),
        .\iv_reg[7]_1 (read_cyc[2]));
endmodule

module tnsn_mem_bctl
   (\read_cyc_reg[2]_0 ,
    \read_cyc_reg[1]_0 ,
    \read_cyc_reg[0]_0 ,
    D,
    \read_cyc_reg[2]_1 ,
    SR,
    \read_cyc_reg[2]_2 ,
    clk,
    \read_cyc_reg[1]_1 ,
    \read_cyc_reg[0]_1 ,
    \sp_reg[13] ,
    \sp_reg[13]_0 ,
    bdatr,
    \iv_reg[13] ,
    \iv_reg[13]_0 );
  output \read_cyc_reg[2]_0 ;
  output \read_cyc_reg[1]_0 ;
  output \read_cyc_reg[0]_0 ;
  output [0:0]D;
  output [0:0]\read_cyc_reg[2]_1 ;
  input [0:0]SR;
  input \read_cyc_reg[2]_2 ;
  input clk;
  input \read_cyc_reg[1]_1 ;
  input \read_cyc_reg[0]_1 ;
  input [0:0]\sp_reg[13] ;
  input \sp_reg[13]_0 ;
  input [0:0]bdatr;
  input \iv_reg[13] ;
  input \iv_reg[13]_0 ;

  wire \<const1> ;
  wire [0:0]D;
  wire [0:0]SR;
  wire [0:0]bdatr;
  wire clk;
  wire \iv_reg[13] ;
  wire \iv_reg[13]_0 ;
  wire \read_cyc_reg[0]_0 ;
  wire \read_cyc_reg[0]_1 ;
  wire \read_cyc_reg[1]_0 ;
  wire \read_cyc_reg[1]_1 ;
  wire \read_cyc_reg[2]_0 ;
  wire [0:0]\read_cyc_reg[2]_1 ;
  wire \read_cyc_reg[2]_2 ;
  wire [0:0]\sp_reg[13] ;
  wire \sp_reg[13]_0 ;

  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hFFFFFF08)) 
    \grn[13]_i_1 
       (.I0(\read_cyc_reg[2]_0 ),
        .I1(bdatr),
        .I2(\read_cyc_reg[1]_0 ),
        .I3(\iv_reg[13] ),
        .I4(\iv_reg[13]_0 ),
        .O(\read_cyc_reg[2]_1 ));
  FDRE \read_cyc_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\read_cyc_reg[0]_1 ),
        .Q(\read_cyc_reg[0]_0 ),
        .R(SR));
  FDRE \read_cyc_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\read_cyc_reg[1]_1 ),
        .Q(\read_cyc_reg[1]_0 ),
        .R(SR));
  FDRE \read_cyc_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\read_cyc_reg[2]_2 ),
        .Q(\read_cyc_reg[2]_0 ),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[13]_i_1 
       (.I0(\read_cyc_reg[2]_1 ),
        .I1(\sp_reg[13] ),
        .I2(\sp_reg[13]_0 ),
        .O(D));
endmodule

module tnsn_mem_bdatr
   (.bdatr_8_sp_1(bdatr_8_sn_1),
    .bdatr_9_sp_1(bdatr_9_sn_1),
    .bdatr_10_sp_1(bdatr_10_sn_1),
    .bdatr_11_sp_1(bdatr_11_sn_1),
    .bdatr_12_sp_1(bdatr_12_sn_1),
    .bdatr_13_sp_1(bdatr_13_sn_1),
    .bdatr_14_sp_1(bdatr_14_sn_1),
    .bdatr_15_sp_1(bdatr_15_sn_1),
    bdatr,
    \iv_reg[7] ,
    \iv_reg[7]_0 ,
    \iv_reg[7]_1 );
  input [15:0]bdatr;
  input \iv_reg[7] ;
  input \iv_reg[7]_0 ;
  input \iv_reg[7]_1 ;
  output bdatr_8_sn_1;
  output bdatr_9_sn_1;
  output bdatr_10_sn_1;
  output bdatr_11_sn_1;
  output bdatr_12_sn_1;
  output bdatr_13_sn_1;
  output bdatr_14_sn_1;
  output bdatr_15_sn_1;

  wire [15:0]bdatr;
  wire bdatr_10_sn_1;
  wire bdatr_11_sn_1;
  wire bdatr_12_sn_1;
  wire bdatr_13_sn_1;
  wire bdatr_14_sn_1;
  wire bdatr_15_sn_1;
  wire bdatr_8_sn_1;
  wire bdatr_9_sn_1;
  wire \iv_reg[7] ;
  wire \iv_reg[7]_0 ;
  wire \iv_reg[7]_1 ;

  LUT5 #(
    .INIT(32'hEF002000)) 
    \grn[0]_i_4 
       (.I0(bdatr[8]),
        .I1(\iv_reg[7] ),
        .I2(\iv_reg[7]_0 ),
        .I3(\iv_reg[7]_1 ),
        .I4(bdatr[0]),
        .O(bdatr_8_sn_1));
  LUT5 #(
    .INIT(32'hEF002000)) 
    \grn[1]_i_4 
       (.I0(bdatr[9]),
        .I1(\iv_reg[7] ),
        .I2(\iv_reg[7]_0 ),
        .I3(\iv_reg[7]_1 ),
        .I4(bdatr[1]),
        .O(bdatr_9_sn_1));
  LUT5 #(
    .INIT(32'hEF002000)) 
    \grn[2]_i_4 
       (.I0(bdatr[10]),
        .I1(\iv_reg[7] ),
        .I2(\iv_reg[7]_0 ),
        .I3(\iv_reg[7]_1 ),
        .I4(bdatr[2]),
        .O(bdatr_10_sn_1));
  LUT5 #(
    .INIT(32'hEF002000)) 
    \grn[3]_i_2 
       (.I0(bdatr[11]),
        .I1(\iv_reg[7] ),
        .I2(\iv_reg[7]_0 ),
        .I3(\iv_reg[7]_1 ),
        .I4(bdatr[3]),
        .O(bdatr_11_sn_1));
  LUT5 #(
    .INIT(32'hEF002000)) 
    \grn[4]_i_4 
       (.I0(bdatr[12]),
        .I1(\iv_reg[7] ),
        .I2(\iv_reg[7]_0 ),
        .I3(\iv_reg[7]_1 ),
        .I4(bdatr[4]),
        .O(bdatr_12_sn_1));
  LUT5 #(
    .INIT(32'hEF002000)) 
    \grn[5]_i_4 
       (.I0(bdatr[13]),
        .I1(\iv_reg[7] ),
        .I2(\iv_reg[7]_0 ),
        .I3(\iv_reg[7]_1 ),
        .I4(bdatr[5]),
        .O(bdatr_13_sn_1));
  LUT5 #(
    .INIT(32'hEF002000)) 
    \grn[6]_i_4 
       (.I0(bdatr[14]),
        .I1(\iv_reg[7] ),
        .I2(\iv_reg[7]_0 ),
        .I3(\iv_reg[7]_1 ),
        .I4(bdatr[6]),
        .O(bdatr_14_sn_1));
  LUT5 #(
    .INIT(32'hEF002000)) 
    \grn[7]_i_6 
       (.I0(bdatr[15]),
        .I1(\iv_reg[7] ),
        .I2(\iv_reg[7]_0 ),
        .I3(\iv_reg[7]_1 ),
        .I4(bdatr[7]),
        .O(bdatr_15_sn_1));
endmodule

module tnsn_rgf
   (out,
    \grn_reg[3] ,
    \grn_reg[3]_0 ,
    \grn_reg[3]_1 ,
    \sr_reg[15] ,
    \pc_reg[15] ,
    \sp_reg[7] ,
    \iv_reg[7] ,
    \sp_reg[7]_0 ,
    \sr_reg[5] ,
    \sr_reg[5]_0 ,
    \sr_reg[5]_1 ,
    SR,
    \sp_reg[1] ,
    \sp_reg[2] ,
    \sp_reg[3] ,
    \sp_reg[4] ,
    \sp_reg[5] ,
    \sp_reg[6] ,
    \sp_reg[7]_1 ,
    \sp_reg[8] ,
    \sp_reg[9] ,
    \sp_reg[10] ,
    \sp_reg[11] ,
    \sp_reg[12] ,
    \sp_reg[13] ,
    \sp_reg[14] ,
    \sp_reg[15] ,
    abus_0,
    p_0_in,
    bbus_rn,
    \grn_reg[12] ,
    \grn_reg[13] ,
    \grn_reg[14] ,
    \grn_reg[15] ,
    \grn_reg[0] ,
    \grn_reg[1] ,
    \grn_reg[2] ,
    \grn_reg[3]_2 ,
    \grn_reg[12]_0 ,
    \grn_reg[13]_0 ,
    \grn_reg[14]_0 ,
    \grn_reg[15]_0 ,
    \grn_reg[0]_0 ,
    \grn_reg[1]_0 ,
    \grn_reg[2]_0 ,
    \grn_reg[3]_3 ,
    \sr_reg[8] ,
    \sr_reg[9] ,
    \sr_reg[10] ,
    \sr_reg[11] ,
    \sr_reg[12] ,
    \sr_reg[13] ,
    \sr_reg[14] ,
    \sr_reg[15]_0 ,
    bank_sel,
    tnsn_dsp_a,
    \tnsn_dsp_b[8]_INST_0_i_1 ,
    \grn[7]_i_28 ,
    \grn[6]_i_13 ,
    \grn[7]_i_30 ,
    \tnsn_dsp_a[7]_INST_0_i_2 ,
    \sr_reg[6] ,
    \bdatw[11]_INST_0_i_1 ,
    \grn[7]_i_38 ,
    \grn[4]_i_11 ,
    \grn[6]_i_21 ,
    \bdatw[8]_INST_0_i_1 ,
    \badr[2]_INST_0_i_1 ,
    \sr_reg[6]_0 ,
    \sr_reg[6]_1 ,
    \sr_reg[6]_2 ,
    \bdatw[8]_INST_0_i_1_0 ,
    \grn[7]_i_34 ,
    \badr[2]_INST_0_i_1_0 ,
    \badr[0]_INST_0_i_1 ,
    \sr_reg[6]_3 ,
    \bdatw[8]_INST_0_i_1_1 ,
    \grn[7]_i_39 ,
    \bdatw[8]_INST_0_i_1_2 ,
    \badr[6]_INST_0_i_1 ,
    \bdatw[8]_INST_0_i_1_3 ,
    \bdatw[8]_INST_0_i_1_4 ,
    \iv_reg[7]_0 ,
    \sr_reg[6]_4 ,
    \sr_reg[6]_5 ,
    \bdatw[11]_INST_0_i_1_0 ,
    \bdatw[15]_INST_0_i_2 ,
    \bdatw[11]_INST_0_i_2 ,
    \bdatw[14]_INST_0_i_2 ,
    fch_pc,
    fch_irq_req,
    \bdatw[10]_INST_0_i_1 ,
    \grn[6]_i_13_0 ,
    \grn[6]_i_13_1 ,
    \grn[6]_i_13_2 ,
    \sr_reg[6]_6 ,
    \grn[5]_i_17 ,
    \grn[6]_i_19 ,
    \grn[6]_i_20 ,
    \grn[7]_i_36 ,
    \bdatw[15]_INST_0_i_15 ,
    rst_n,
    ctl_selc_rnh,
    ctl_selc_rn,
    \grn_reg[8] ,
    \grn_reg[7] ,
    \grn_reg[8]_0 ,
    \grn_reg[7]_0 ,
    ctl_sp_inc,
    ctl_sp_dec,
    gr0_bus1,
    gr7_bus1,
    gr4_bus1,
    gr3_bus1,
    gr2_bus1,
    gr1_bus1,
    gr6_bus1,
    gr5_bus1,
    abus_sel_cr,
    \bdatw[12]_INST_0_i_4 ,
    \bdatw[12]_INST_0_i_4_0 ,
    \bdatw[8]_INST_0_i_2 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \bdatw[8]_INST_0_i_10 ,
    \bdatw[8]_INST_0_i_10_0 ,
    \bdatw[11]_INST_0_i_1_1 ,
    \bdatw[11]_INST_0_i_1_2 ,
    bbus_sel_cr,
    .tnsn_dsp_a_8_sp_1(tnsn_dsp_a_8_sn_1),
    .tnsn_dsp_a_7_sp_1(tnsn_dsp_a_7_sn_1),
    \grn[7]_i_8 ,
    \grn[7]_i_8_0 ,
    \grn[7]_i_8_1 ,
    \tnsn_dsp_a[8]_0 ,
    cbus1_carry__2,
    \sr[4]_i_10 ,
    \sr[4]_i_10_0 ,
    \grn[4]_i_16 ,
    irq,
    irq_lev,
    \grn[0]_i_6 ,
    D,
    clk,
    E,
    \sr_reg[15]_1 ,
    \sr_reg[11]_0 ,
    \sr_reg[10]_0 ,
    \sr_reg[9]_0 ,
    \sr_reg[8]_0 ,
    \sr_reg[7] ,
    \sr_reg[6]_7 ,
    \sr_reg[5]_2 ,
    \sr_reg[4] ,
    \sr_reg[3] ,
    \sr_reg[2] ,
    \sr_reg[1] ,
    \sr_reg[0] ,
    \pc_reg[15]_0 ,
    \sp_reg[15]_0 ,
    \iv_reg[0] );
  output [3:0]out;
  output [3:0]\grn_reg[3] ;
  output [3:0]\grn_reg[3]_0 ;
  output [3:0]\grn_reg[3]_1 ;
  output [15:0]\sr_reg[15] ;
  output [15:0]\pc_reg[15] ;
  output [4:0]\sp_reg[7] ;
  output [4:0]\iv_reg[7] ;
  output [4:0]\sp_reg[7]_0 ;
  output \sr_reg[5] ;
  output \sr_reg[5]_0 ;
  output \sr_reg[5]_1 ;
  output [0:0]SR;
  output \sp_reg[1] ;
  output \sp_reg[2] ;
  output \sp_reg[3] ;
  output \sp_reg[4] ;
  output \sp_reg[5] ;
  output \sp_reg[6] ;
  output \sp_reg[7]_1 ;
  output \sp_reg[8] ;
  output \sp_reg[9] ;
  output \sp_reg[10] ;
  output \sp_reg[11] ;
  output \sp_reg[12] ;
  output \sp_reg[13] ;
  output \sp_reg[14] ;
  output \sp_reg[15] ;
  output [15:0]abus_0;
  output [3:0]p_0_in;
  output [3:0]bbus_rn;
  output \grn_reg[12] ;
  output \grn_reg[13] ;
  output \grn_reg[14] ;
  output \grn_reg[15] ;
  output \grn_reg[0] ;
  output \grn_reg[1] ;
  output \grn_reg[2] ;
  output \grn_reg[3]_2 ;
  output \grn_reg[12]_0 ;
  output \grn_reg[13]_0 ;
  output \grn_reg[14]_0 ;
  output \grn_reg[15]_0 ;
  output \grn_reg[0]_0 ;
  output \grn_reg[1]_0 ;
  output \grn_reg[2]_0 ;
  output \grn_reg[3]_3 ;
  output \sr_reg[8] ;
  output \sr_reg[9] ;
  output \sr_reg[10] ;
  output \sr_reg[11] ;
  output \sr_reg[12] ;
  output \sr_reg[13] ;
  output \sr_reg[14] ;
  output \sr_reg[15]_0 ;
  output [0:0]bank_sel;
  output [8:0]tnsn_dsp_a;
  output \tnsn_dsp_b[8]_INST_0_i_1 ;
  output \grn[7]_i_28 ;
  output \grn[6]_i_13 ;
  output \grn[7]_i_30 ;
  output \tnsn_dsp_a[7]_INST_0_i_2 ;
  output \sr_reg[6] ;
  output \bdatw[11]_INST_0_i_1 ;
  output \grn[7]_i_38 ;
  output \grn[4]_i_11 ;
  output \grn[6]_i_21 ;
  output \bdatw[8]_INST_0_i_1 ;
  output \badr[2]_INST_0_i_1 ;
  output \sr_reg[6]_0 ;
  output \sr_reg[6]_1 ;
  output \sr_reg[6]_2 ;
  output \bdatw[8]_INST_0_i_1_0 ;
  output \grn[7]_i_34 ;
  output \badr[2]_INST_0_i_1_0 ;
  output \badr[0]_INST_0_i_1 ;
  output \sr_reg[6]_3 ;
  output \bdatw[8]_INST_0_i_1_1 ;
  output \grn[7]_i_39 ;
  output \bdatw[8]_INST_0_i_1_2 ;
  output \badr[6]_INST_0_i_1 ;
  output \bdatw[8]_INST_0_i_1_3 ;
  output \bdatw[8]_INST_0_i_1_4 ;
  output \iv_reg[7]_0 ;
  output \sr_reg[6]_4 ;
  output \sr_reg[6]_5 ;
  output [3:0]\bdatw[11]_INST_0_i_1_0 ;
  output [3:0]\bdatw[15]_INST_0_i_2 ;
  output [3:0]\bdatw[11]_INST_0_i_2 ;
  output [2:0]\bdatw[14]_INST_0_i_2 ;
  output [15:0]fch_pc;
  output fch_irq_req;
  output \bdatw[10]_INST_0_i_1 ;
  output \grn[6]_i_13_0 ;
  output \grn[6]_i_13_1 ;
  output \grn[6]_i_13_2 ;
  output \sr_reg[6]_6 ;
  output \grn[5]_i_17 ;
  output \grn[6]_i_19 ;
  output \grn[6]_i_20 ;
  output \grn[7]_i_36 ;
  input [2:0]\bdatw[15]_INST_0_i_15 ;
  input rst_n;
  input ctl_selc_rnh;
  input [2:0]ctl_selc_rn;
  input \grn_reg[8] ;
  input \grn_reg[7] ;
  input \grn_reg[8]_0 ;
  input \grn_reg[7]_0 ;
  input ctl_sp_inc;
  input ctl_sp_dec;
  input gr0_bus1;
  input gr7_bus1;
  input gr4_bus1;
  input gr3_bus1;
  input gr2_bus1;
  input gr1_bus1;
  input gr6_bus1;
  input gr5_bus1;
  input [4:0]abus_sel_cr;
  input \bdatw[12]_INST_0_i_4 ;
  input \bdatw[12]_INST_0_i_4_0 ;
  input \bdatw[8]_INST_0_i_2 ;
  input \bdatw[8]_INST_0_i_2_0 ;
  input \bdatw[8]_INST_0_i_10 ;
  input \bdatw[8]_INST_0_i_10_0 ;
  input \bdatw[11]_INST_0_i_1_1 ;
  input \bdatw[11]_INST_0_i_1_2 ;
  input [4:0]bbus_sel_cr;
  input \grn[7]_i_8 ;
  input [1:0]\grn[7]_i_8_0 ;
  input \grn[7]_i_8_1 ;
  input \tnsn_dsp_a[8]_0 ;
  input [14:0]cbus1_carry__2;
  input \sr[4]_i_10 ;
  input \sr[4]_i_10_0 ;
  input \grn[4]_i_16 ;
  input irq;
  input [1:0]irq_lev;
  input \grn[0]_i_6 ;
  input [15:0]D;
  input clk;
  input [1:0]E;
  input [3:0]\sr_reg[15]_1 ;
  input \sr_reg[11]_0 ;
  input \sr_reg[10]_0 ;
  input \sr_reg[9]_0 ;
  input \sr_reg[8]_0 ;
  input \sr_reg[7] ;
  input \sr_reg[6]_7 ;
  input \sr_reg[5]_2 ;
  input \sr_reg[4] ;
  input \sr_reg[3] ;
  input \sr_reg[2] ;
  input \sr_reg[1] ;
  input \sr_reg[0] ;
  input [15:0]\pc_reg[15]_0 ;
  input [15:0]\sp_reg[15]_0 ;
  input [0:0]\iv_reg[0] ;
  input tnsn_dsp_a_8_sn_1;
  input tnsn_dsp_a_7_sn_1;

  wire [15:0]D;
  wire [1:0]E;
  wire [0:0]SR;
  wire [15:0]abus_0;
  wire [4:0]abus_sel_cr;
  wire \badr[0]_INST_0_i_1 ;
  wire \badr[2]_INST_0_i_1 ;
  wire \badr[2]_INST_0_i_1_0 ;
  wire \badr[6]_INST_0_i_1 ;
  wire [0:0]bank_sel;
  wire [3:0]bbus_rn;
  wire [4:0]bbus_sel_cr;
  wire \bdatw[10]_INST_0_i_1 ;
  wire \bdatw[11]_INST_0_i_1 ;
  wire [3:0]\bdatw[11]_INST_0_i_1_0 ;
  wire \bdatw[11]_INST_0_i_1_1 ;
  wire \bdatw[11]_INST_0_i_1_2 ;
  wire [3:0]\bdatw[11]_INST_0_i_2 ;
  wire \bdatw[12]_INST_0_i_4 ;
  wire \bdatw[12]_INST_0_i_4_0 ;
  wire [2:0]\bdatw[14]_INST_0_i_2 ;
  wire [2:0]\bdatw[15]_INST_0_i_15 ;
  wire [3:0]\bdatw[15]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_1 ;
  wire \bdatw[8]_INST_0_i_10 ;
  wire \bdatw[8]_INST_0_i_10_0 ;
  wire \bdatw[8]_INST_0_i_1_0 ;
  wire \bdatw[8]_INST_0_i_1_1 ;
  wire \bdatw[8]_INST_0_i_1_2 ;
  wire \bdatw[8]_INST_0_i_1_3 ;
  wire \bdatw[8]_INST_0_i_1_4 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire [14:0]cbus1_carry__2;
  wire clk;
  wire [2:0]ctl_selc_rn;
  wire ctl_selc_rnh;
  wire ctl_sp_dec;
  wire ctl_sp_inc;
  wire fch_irq_req;
  wire [15:0]fch_pc;
  wire gr0_bus1;
  wire gr1_bus1;
  wire gr2_bus1;
  wire gr3_bus1;
  wire gr4_bus1;
  wire gr5_bus1;
  wire gr6_bus1;
  wire gr7_bus1;
  wire grn1;
  wire \grn[0]_i_6 ;
  wire \grn[4]_i_11 ;
  wire \grn[4]_i_16 ;
  wire \grn[5]_i_17 ;
  wire \grn[6]_i_13 ;
  wire \grn[6]_i_13_0 ;
  wire \grn[6]_i_13_1 ;
  wire \grn[6]_i_13_2 ;
  wire \grn[6]_i_19 ;
  wire \grn[6]_i_20 ;
  wire \grn[6]_i_21 ;
  wire \grn[7]_i_28 ;
  wire \grn[7]_i_30 ;
  wire \grn[7]_i_34 ;
  wire \grn[7]_i_36 ;
  wire \grn[7]_i_38 ;
  wire \grn[7]_i_39 ;
  wire \grn[7]_i_8 ;
  wire [1:0]\grn[7]_i_8_0 ;
  wire \grn[7]_i_8_1 ;
  wire \grn_reg[0] ;
  wire \grn_reg[0]_0 ;
  wire \grn_reg[12] ;
  wire \grn_reg[12]_0 ;
  wire \grn_reg[13] ;
  wire \grn_reg[13]_0 ;
  wire \grn_reg[14] ;
  wire \grn_reg[14]_0 ;
  wire \grn_reg[15] ;
  wire \grn_reg[15]_0 ;
  wire \grn_reg[1] ;
  wire \grn_reg[1]_0 ;
  wire \grn_reg[2] ;
  wire \grn_reg[2]_0 ;
  wire [3:0]\grn_reg[3] ;
  wire [3:0]\grn_reg[3]_0 ;
  wire [3:0]\grn_reg[3]_1 ;
  wire \grn_reg[3]_2 ;
  wire \grn_reg[3]_3 ;
  wire \grn_reg[7] ;
  wire \grn_reg[7]_0 ;
  wire \grn_reg[8] ;
  wire \grn_reg[8]_0 ;
  wire irq;
  wire [1:0]irq_lev;
  wire [0:0]\iv_reg[0] ;
  wire [4:0]\iv_reg[7] ;
  wire \iv_reg[7]_0 ;
  wire [3:0]out;
  wire [3:0]p_0_in;
  wire [15:4]p_0_in_0;
  wire p_0_in_1;
  wire [15:0]\pc_reg[15] ;
  wire [15:0]\pc_reg[15]_0 ;
  wire pcnt_n_16;
  wire pcnt_n_17;
  wire pcnt_n_18;
  wire pcnt_n_19;
  wire pcnt_n_20;
  wire pcnt_n_21;
  wire pcnt_n_22;
  wire pcnt_n_23;
  wire pcnt_n_24;
  wire pcnt_n_25;
  wire pcnt_n_26;
  wire pcnt_n_27;
  wire pcnt_n_28;
  wire pcnt_n_29;
  wire pcnt_n_30;
  wire pcnt_n_31;
  wire pcnt_n_32;
  wire pcnt_n_33;
  wire pcnt_n_34;
  wire pcnt_n_35;
  wire rst_n;
  wire \sp_reg[10] ;
  wire \sp_reg[11] ;
  wire \sp_reg[12] ;
  wire \sp_reg[13] ;
  wire \sp_reg[14] ;
  wire \sp_reg[15] ;
  wire [15:0]\sp_reg[15]_0 ;
  wire \sp_reg[1] ;
  wire \sp_reg[2] ;
  wire \sp_reg[3] ;
  wire \sp_reg[4] ;
  wire \sp_reg[5] ;
  wire \sp_reg[6] ;
  wire [4:0]\sp_reg[7] ;
  wire [4:0]\sp_reg[7]_0 ;
  wire \sp_reg[7]_1 ;
  wire \sp_reg[8] ;
  wire \sp_reg[9] ;
  wire sptr_n_25;
  wire sptr_n_26;
  wire sptr_n_27;
  wire sptr_n_28;
  wire sptr_n_29;
  wire sptr_n_30;
  wire sptr_n_31;
  wire sptr_n_32;
  wire sptr_n_33;
  wire sptr_n_34;
  wire sptr_n_35;
  wire sptr_n_36;
  wire sptr_n_37;
  wire sptr_n_38;
  wire sptr_n_39;
  wire sptr_n_40;
  wire sptr_n_41;
  wire sptr_n_42;
  wire sptr_n_43;
  wire sptr_n_44;
  wire \sr[4]_i_10 ;
  wire \sr[4]_i_10_0 ;
  wire \sr_reg[0] ;
  wire \sr_reg[10] ;
  wire \sr_reg[10]_0 ;
  wire \sr_reg[11] ;
  wire \sr_reg[11]_0 ;
  wire \sr_reg[12] ;
  wire \sr_reg[13] ;
  wire \sr_reg[14] ;
  wire [15:0]\sr_reg[15] ;
  wire \sr_reg[15]_0 ;
  wire [3:0]\sr_reg[15]_1 ;
  wire \sr_reg[1] ;
  wire \sr_reg[2] ;
  wire \sr_reg[3] ;
  wire \sr_reg[4] ;
  wire \sr_reg[5] ;
  wire \sr_reg[5]_0 ;
  wire \sr_reg[5]_1 ;
  wire \sr_reg[5]_2 ;
  wire \sr_reg[6] ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[6]_1 ;
  wire \sr_reg[6]_2 ;
  wire \sr_reg[6]_3 ;
  wire \sr_reg[6]_4 ;
  wire \sr_reg[6]_5 ;
  wire \sr_reg[6]_6 ;
  wire \sr_reg[6]_7 ;
  wire \sr_reg[7] ;
  wire \sr_reg[8] ;
  wire \sr_reg[8]_0 ;
  wire \sr_reg[9] ;
  wire \sr_reg[9]_0 ;
  wire sreg_n_19;
  wire sreg_n_20;
  wire sreg_n_21;
  wire sreg_n_22;
  wire sreg_n_25;
  wire sreg_n_26;
  wire sreg_n_27;
  wire sreg_n_28;
  wire sreg_n_29;
  wire sreg_n_30;
  wire sreg_n_35;
  wire sreg_n_36;
  wire sreg_n_37;
  wire [8:0]tnsn_dsp_a;
  wire \tnsn_dsp_a[7]_INST_0_i_2 ;
  wire \tnsn_dsp_a[8]_0 ;
  wire tnsn_dsp_a_7_sn_1;
  wire tnsn_dsp_a_8_sn_1;
  wire \tnsn_dsp_b[8]_INST_0_i_1 ;

  tnsn_rgf_bank bank
       (.D(D),
        .E({grn1,p_0_in_1}),
        .abus_0(abus_0[15:8]),
        .\badr[0]_INST_0_i_1 (\badr[0]_INST_0_i_1 ),
        .\badr[10] (pcnt_n_26),
        .\badr[10]_0 (sptr_n_35),
        .\badr[11] (pcnt_n_27),
        .\badr[11]_0 (sptr_n_36),
        .\badr[12] (pcnt_n_28),
        .\badr[12]_0 (sptr_n_37),
        .\badr[13] (pcnt_n_29),
        .\badr[13]_0 (sptr_n_38),
        .\badr[14] (pcnt_n_30),
        .\badr[14]_0 (sptr_n_39),
        .\badr[15] (pcnt_n_31),
        .\badr[15]_0 (sptr_n_40),
        .\badr[2]_INST_0_i_1 (\badr[2]_INST_0_i_1 ),
        .\badr[2]_INST_0_i_1_0 (\badr[2]_INST_0_i_1_0 ),
        .\badr[6]_INST_0_i_1 (\badr[6]_INST_0_i_1 ),
        .\badr[8] (pcnt_n_24),
        .\badr[8]_0 (sptr_n_33),
        .\badr[9] (pcnt_n_25),
        .\badr[9]_0 (sptr_n_34),
        .bbus_rn(bbus_rn),
        .\bdatw[10]_INST_0_i_1 (\bdatw[10]_INST_0_i_1 ),
        .\bdatw[11]_INST_0_i_1 (\bdatw[11]_INST_0_i_1 ),
        .\bdatw[11]_INST_0_i_1_0 (\bdatw[11]_INST_0_i_1_0 ),
        .\bdatw[11]_INST_0_i_1_1 (\bdatw[11]_INST_0_i_1_1 ),
        .\bdatw[11]_INST_0_i_1_2 (\bdatw[11]_INST_0_i_1_2 ),
        .\bdatw[11]_INST_0_i_2 (\bdatw[11]_INST_0_i_2 ),
        .\bdatw[12]_INST_0_i_1 (pcnt_n_32),
        .\bdatw[12]_INST_0_i_1_0 (sptr_n_41),
        .\bdatw[12]_INST_0_i_4_0 (\bdatw[12]_INST_0_i_4 ),
        .\bdatw[12]_INST_0_i_4_1 (\bdatw[12]_INST_0_i_4_0 ),
        .\bdatw[13]_INST_0_i_1 (pcnt_n_33),
        .\bdatw[13]_INST_0_i_1_0 (sptr_n_42),
        .\bdatw[14]_INST_0_i_1 (pcnt_n_34),
        .\bdatw[14]_INST_0_i_1_0 (sptr_n_43),
        .\bdatw[14]_INST_0_i_2 (\bdatw[14]_INST_0_i_2 ),
        .\bdatw[15]_INST_0_i_2 (\bdatw[15]_INST_0_i_2 ),
        .\bdatw[15]_INST_0_i_2_0 (pcnt_n_35),
        .\bdatw[15]_INST_0_i_2_1 (sptr_n_44),
        .\bdatw[8]_INST_0_i_1 (\bdatw[8]_INST_0_i_1 ),
        .\bdatw[8]_INST_0_i_10_0 (\bdatw[8]_INST_0_i_10 ),
        .\bdatw[8]_INST_0_i_10_1 (\bdatw[8]_INST_0_i_10_0 ),
        .\bdatw[8]_INST_0_i_1_0 (\bdatw[8]_INST_0_i_1_0 ),
        .\bdatw[8]_INST_0_i_1_1 (\bdatw[8]_INST_0_i_1_1 ),
        .\bdatw[8]_INST_0_i_1_2 (\bdatw[8]_INST_0_i_1_2 ),
        .\bdatw[8]_INST_0_i_1_3 (\bdatw[8]_INST_0_i_1_3 ),
        .\bdatw[8]_INST_0_i_1_4 (\bdatw[8]_INST_0_i_1_4 ),
        .\bdatw[8]_INST_0_i_2 (\bdatw[8]_INST_0_i_2 ),
        .\bdatw[8]_INST_0_i_2_0 (\bdatw[8]_INST_0_i_2_0 ),
        .cbus1_carry__2(cbus1_carry__2),
        .clk(clk),
        .gr0_bus1(gr0_bus1),
        .gr1_bus1(gr1_bus1),
        .gr2_bus1(gr2_bus1),
        .gr3_bus1(gr3_bus1),
        .gr4_bus1(gr4_bus1),
        .gr5_bus1(gr5_bus1),
        .gr6_bus1(gr6_bus1),
        .gr7_bus1(gr7_bus1),
        .\grn[0]_i_6 (\grn[0]_i_6 ),
        .\grn[4]_i_11_0 (\grn[4]_i_11 ),
        .\grn[4]_i_16 (\grn[4]_i_16 ),
        .\grn[5]_i_17 (\grn[5]_i_17 ),
        .\grn[6]_i_13 (\grn[6]_i_13 ),
        .\grn[6]_i_13_0 (\grn[6]_i_13_0 ),
        .\grn[6]_i_13_1 (\grn[6]_i_13_1 ),
        .\grn[6]_i_13_2 (\grn[6]_i_13_2 ),
        .\grn[6]_i_19 (\grn[6]_i_19 ),
        .\grn[6]_i_20 (\grn[6]_i_20 ),
        .\grn[6]_i_21 (\grn[6]_i_21 ),
        .\grn[6]_i_9 (\sr_reg[15] [6]),
        .\grn[7]_i_28 (\grn[7]_i_28 ),
        .\grn[7]_i_30_0 (\grn[7]_i_30 ),
        .\grn[7]_i_34_0 (\grn[7]_i_34 ),
        .\grn[7]_i_36 (\grn[7]_i_36 ),
        .\grn[7]_i_38 (\grn[7]_i_38 ),
        .\grn[7]_i_39_0 (\grn[7]_i_39 ),
        .\grn[7]_i_8 (\grn[7]_i_8 ),
        .\grn[7]_i_8_0 (\grn[7]_i_8_0 ),
        .\grn[7]_i_8_1 (\grn[7]_i_8_1 ),
        .\grn_reg[0] (abus_0[0]),
        .\grn_reg[0]_0 (\grn_reg[0] ),
        .\grn_reg[0]_1 (\grn_reg[0]_0 ),
        .\grn_reg[12] (\grn_reg[12] ),
        .\grn_reg[12]_0 (\grn_reg[12]_0 ),
        .\grn_reg[13] (\grn_reg[13] ),
        .\grn_reg[13]_0 (\grn_reg[13]_0 ),
        .\grn_reg[14] (\grn_reg[14] ),
        .\grn_reg[14]_0 (\grn_reg[14]_0 ),
        .\grn_reg[15] (\grn_reg[15] ),
        .\grn_reg[15]_0 (\grn_reg[15]_0 ),
        .\grn_reg[15]_1 (E),
        .\grn_reg[1] (abus_0[1]),
        .\grn_reg[1]_0 (\grn_reg[1] ),
        .\grn_reg[1]_1 (\grn_reg[1]_0 ),
        .\grn_reg[2] (abus_0[2]),
        .\grn_reg[2]_0 (\grn_reg[2] ),
        .\grn_reg[2]_1 (\grn_reg[2]_0 ),
        .\grn_reg[3] (\grn_reg[3] ),
        .\grn_reg[3]_0 (\grn_reg[3]_0 ),
        .\grn_reg[3]_1 (\grn_reg[3]_1 ),
        .\grn_reg[3]_2 (abus_0[3]),
        .\grn_reg[3]_3 (\grn_reg[3]_2 ),
        .\grn_reg[3]_4 (\grn_reg[3]_3 ),
        .\grn_reg[4] (abus_0[4]),
        .\grn_reg[5] (abus_0[5]),
        .\grn_reg[6] (abus_0[6]),
        .\grn_reg[7] (abus_0[7]),
        .\grn_reg[8] ({sreg_n_21,sreg_n_22}),
        .\grn_reg[8]_0 ({sreg_n_19,sreg_n_20}),
        .\grn_reg[8]_1 ({sreg_n_36,sreg_n_37}),
        .\grn_reg[8]_2 ({sreg_n_27,sreg_n_28}),
        .\grn_reg[8]_3 ({sreg_n_25,sreg_n_26}),
        .\grn_reg[8]_4 ({sreg_n_29,sreg_n_30}),
        .\iv_reg[7] (\iv_reg[7]_0 ),
        .out(out),
        .p_0_in(p_0_in),
        .rst_n(rst_n),
        .rst_n_0(SR),
        .\sr[4]_i_10 (\sr[4]_i_10 ),
        .\sr[4]_i_10_0 (\sr[4]_i_10_0 ),
        .\sr_reg[6] (\sr_reg[6] ),
        .\sr_reg[6]_0 (\sr_reg[6]_0 ),
        .\sr_reg[6]_1 (\sr_reg[6]_1 ),
        .\sr_reg[6]_2 (\sr_reg[6]_2 ),
        .\sr_reg[6]_3 (\sr_reg[6]_3 ),
        .\sr_reg[6]_4 (\sr_reg[6]_6 ),
        .tnsn_dsp_a(tnsn_dsp_a),
        .\tnsn_dsp_a[0]_0 (sptr_n_25),
        .\tnsn_dsp_a[1]_0 (sptr_n_26),
        .\tnsn_dsp_a[2]_0 (sptr_n_27),
        .\tnsn_dsp_a[3]_0 (sptr_n_28),
        .\tnsn_dsp_a[4]_0 (sptr_n_29),
        .\tnsn_dsp_a[5]_0 (sptr_n_30),
        .\tnsn_dsp_a[6]_0 (sptr_n_31),
        .\tnsn_dsp_a[7]_0 (sptr_n_32),
        .\tnsn_dsp_a[7]_1 (tnsn_dsp_a_7_sn_1),
        .\tnsn_dsp_a[7]_INST_0_i_2 (\tnsn_dsp_a[7]_INST_0_i_2 ),
        .\tnsn_dsp_a[8]_0 (\tnsn_dsp_a[8]_0 ),
        .tnsn_dsp_a_0_sp_1(pcnt_n_16),
        .tnsn_dsp_a_1_sp_1(pcnt_n_17),
        .tnsn_dsp_a_2_sp_1(pcnt_n_18),
        .tnsn_dsp_a_3_sp_1(pcnt_n_19),
        .tnsn_dsp_a_4_sp_1(pcnt_n_20),
        .tnsn_dsp_a_5_sp_1(pcnt_n_21),
        .tnsn_dsp_a_6_sp_1(pcnt_n_22),
        .tnsn_dsp_a_7_sp_1(pcnt_n_23),
        .tnsn_dsp_a_8_sp_1(tnsn_dsp_a_8_sn_1),
        .\tnsn_dsp_b[8]_INST_0_i_1 (\tnsn_dsp_b[8]_INST_0_i_1 ));
  tnsn_rgf_ivec ivec
       (.D(D),
        .clk(clk),
        .\iv_reg[0]_0 (\iv_reg[0] ),
        .\iv_reg[15]_0 (SR),
        .out({p_0_in_0[15:8],\iv_reg[7] [4],p_0_in_0[6:4],\iv_reg[7] [3:0]}));
  tnsn_rgf_pcnt pcnt
       (.S(sreg_n_35),
        .abus_sel_cr(abus_sel_cr[1:0]),
        .\badr[15]_INST_0_i_1 (\sr_reg[15] ),
        .bbus_sel_cr(bbus_sel_cr[1:0]),
        .clk(clk),
        .fch_pc(fch_pc),
        .out(\pc_reg[15] ),
        .\pc_reg[0]_0 (pcnt_n_16),
        .\pc_reg[10]_0 (pcnt_n_26),
        .\pc_reg[11]_0 (pcnt_n_27),
        .\pc_reg[12]_0 (pcnt_n_28),
        .\pc_reg[13]_0 (pcnt_n_29),
        .\pc_reg[14]_0 (pcnt_n_30),
        .\pc_reg[15]_0 (pcnt_n_31),
        .\pc_reg[15]_1 (SR),
        .\pc_reg[15]_2 (\pc_reg[15]_0 ),
        .\pc_reg[1]_0 (pcnt_n_17),
        .\pc_reg[2]_0 (pcnt_n_18),
        .\pc_reg[3]_0 (pcnt_n_19),
        .\pc_reg[4]_0 (pcnt_n_20),
        .\pc_reg[4]_1 (pcnt_n_32),
        .\pc_reg[5]_0 (pcnt_n_21),
        .\pc_reg[5]_1 (pcnt_n_33),
        .\pc_reg[6]_0 (pcnt_n_22),
        .\pc_reg[6]_1 (pcnt_n_34),
        .\pc_reg[7]_0 (pcnt_n_23),
        .\pc_reg[7]_1 (pcnt_n_35),
        .\pc_reg[8]_0 (pcnt_n_24),
        .\pc_reg[9]_0 (pcnt_n_25));
  tnsn_rgf_sptr sptr
       (.abus_sel_cr(abus_sel_cr[4:2]),
        .bbus_sel_cr(bbus_sel_cr),
        .\bdatw[15]_INST_0_i_12 (\sr_reg[15] [15:8]),
        .\bdatw[15]_INST_0_i_12_0 (\pc_reg[15] [15:8]),
        .\bdatw[15]_INST_0_i_29_0 ({p_0_in_0[15:8],\iv_reg[7] [4],p_0_in_0[6:4],\iv_reg[7] [3:0]}),
        .clk(clk),
        .ctl_sp_dec(ctl_sp_dec),
        .ctl_sp_inc(ctl_sp_inc),
        .\iv_reg[0] (sptr_n_25),
        .\iv_reg[10] (sptr_n_35),
        .\iv_reg[11] (sptr_n_36),
        .\iv_reg[12] (sptr_n_37),
        .\iv_reg[13] (sptr_n_38),
        .\iv_reg[14] (sptr_n_39),
        .\iv_reg[15] (sptr_n_40),
        .\iv_reg[1] (sptr_n_26),
        .\iv_reg[2] (sptr_n_27),
        .\iv_reg[3] (sptr_n_28),
        .\iv_reg[4] (sptr_n_29),
        .\iv_reg[4]_0 (sptr_n_41),
        .\iv_reg[5] (sptr_n_30),
        .\iv_reg[5]_0 (sptr_n_42),
        .\iv_reg[6] (sptr_n_31),
        .\iv_reg[6]_0 (sptr_n_43),
        .\iv_reg[7] (sptr_n_32),
        .\iv_reg[7]_0 (sptr_n_44),
        .\iv_reg[8] (sptr_n_33),
        .\iv_reg[9] (sptr_n_34),
        .out(\sp_reg[7] ),
        .\sp_reg[0]_0 (SR),
        .\sp_reg[10]_0 (\sp_reg[10] ),
        .\sp_reg[11]_0 (\sp_reg[11] ),
        .\sp_reg[12]_0 (\sp_reg[12] ),
        .\sp_reg[13]_0 (\sp_reg[13] ),
        .\sp_reg[14]_0 (\sp_reg[14] ),
        .\sp_reg[15]_0 (\sp_reg[15] ),
        .\sp_reg[15]_1 (\sp_reg[15]_0 ),
        .\sp_reg[1]_0 (\sp_reg[1] ),
        .\sp_reg[2]_0 (\sp_reg[2] ),
        .\sp_reg[3]_0 (\sp_reg[3] ),
        .\sp_reg[4]_0 (\sp_reg[4] ),
        .\sp_reg[5]_0 (\sp_reg[5] ),
        .\sp_reg[6]_0 (\sp_reg[6] ),
        .\sp_reg[7]_0 (\sp_reg[7]_0 ),
        .\sp_reg[7]_1 (\sp_reg[7]_1 ),
        .\sp_reg[8]_0 (\sp_reg[8] ),
        .\sp_reg[9]_0 (\sp_reg[9] ),
        .\sr_reg[10] (\sr_reg[10] ),
        .\sr_reg[11] (\sr_reg[11] ),
        .\sr_reg[12] (\sr_reg[12] ),
        .\sr_reg[13] (\sr_reg[13] ),
        .\sr_reg[14] (\sr_reg[14] ),
        .\sr_reg[15] (\sr_reg[15]_0 ),
        .\sr_reg[8] (\sr_reg[8] ),
        .\sr_reg[9] (\sr_reg[9] ));
  tnsn_rgf_sreg sreg
       (.E({grn1,p_0_in_1}),
        .S(sreg_n_35),
        .abus_0(abus_0[7]),
        .bank_sel(bank_sel),
        .\bdatw[15]_INST_0_i_15 (\bdatw[15]_INST_0_i_15 ),
        .clk(clk),
        .ctl_selc_rn(ctl_selc_rn),
        .ctl_selc_rnh(ctl_selc_rnh),
        .fch_irq_req(fch_irq_req),
        .\grn[1]_i_13 (cbus1_carry__2[0]),
        .\grn_reg[7] (\grn_reg[7] ),
        .\grn_reg[7]_0 (\grn_reg[7]_0 ),
        .\grn_reg[8] (\grn_reg[8] ),
        .\grn_reg[8]_0 (\grn_reg[8]_0 ),
        .irq(irq),
        .irq_lev(irq_lev),
        .\pc_reg[3]_i_2 (\pc_reg[15] [1]),
        .\sr_reg[0]_0 (\sr_reg[0] ),
        .\sr_reg[10]_0 (\sr_reg[10]_0 ),
        .\sr_reg[11]_0 (SR),
        .\sr_reg[11]_1 (\sr_reg[11]_0 ),
        .\sr_reg[15]_0 (\sr_reg[15] ),
        .\sr_reg[15]_1 (\sr_reg[15]_1 ),
        .\sr_reg[1]_0 ({sreg_n_19,sreg_n_20}),
        .\sr_reg[1]_1 ({sreg_n_21,sreg_n_22}),
        .\sr_reg[1]_2 ({sreg_n_25,sreg_n_26}),
        .\sr_reg[1]_3 ({sreg_n_27,sreg_n_28}),
        .\sr_reg[1]_4 ({sreg_n_29,sreg_n_30}),
        .\sr_reg[1]_5 ({sreg_n_36,sreg_n_37}),
        .\sr_reg[1]_6 (\sr_reg[1] ),
        .\sr_reg[2]_0 (\sr_reg[2] ),
        .\sr_reg[3]_0 (\sr_reg[3] ),
        .\sr_reg[4]_0 (\sr_reg[4] ),
        .\sr_reg[5]_0 (\sr_reg[5] ),
        .\sr_reg[5]_1 (\sr_reg[5]_0 ),
        .\sr_reg[5]_2 (\sr_reg[5]_1 ),
        .\sr_reg[5]_3 (\sr_reg[5]_2 ),
        .\sr_reg[6]_0 (\sr_reg[6]_4 ),
        .\sr_reg[6]_1 (\sr_reg[6]_5 ),
        .\sr_reg[6]_2 (\sr_reg[6]_7 ),
        .\sr_reg[7]_0 (\sr_reg[7] ),
        .\sr_reg[8]_0 (\sr_reg[8]_0 ),
        .\sr_reg[9]_0 (\sr_reg[9]_0 ));
endmodule

module tnsn_rgf_bank
   (.out({gr01[3],gr01[2],gr01[1],gr01[0]}),
    .\grn_reg[3] ({gr02[3],gr02[2],gr02[1],gr02[0]}),
    .\grn_reg[3]_0 ({gr03[3],gr03[2],gr03[1],gr03[0]}),
    .\grn_reg[3]_1 ({gr04[3],gr04[2],gr04[1],gr04[0]}),
    rst_n_0,
    \grn_reg[0] ,
    \grn_reg[1] ,
    \grn_reg[2] ,
    \grn_reg[3]_2 ,
    \grn_reg[4] ,
    \grn_reg[5] ,
    \grn_reg[6] ,
    \grn_reg[7] ,
    abus_0,
    p_0_in,
    bbus_rn,
    \grn_reg[12] ,
    \grn_reg[13] ,
    \grn_reg[14] ,
    \grn_reg[15] ,
    \grn_reg[0]_0 ,
    \grn_reg[1]_0 ,
    \grn_reg[2]_0 ,
    \grn_reg[3]_3 ,
    \grn_reg[12]_0 ,
    \grn_reg[13]_0 ,
    \grn_reg[14]_0 ,
    \grn_reg[15]_0 ,
    \grn_reg[0]_1 ,
    \grn_reg[1]_1 ,
    \grn_reg[2]_1 ,
    \grn_reg[3]_4 ,
    tnsn_dsp_a,
    \tnsn_dsp_b[8]_INST_0_i_1 ,
    \grn[7]_i_28 ,
    \grn[6]_i_13 ,
    \grn[7]_i_30_0 ,
    \tnsn_dsp_a[7]_INST_0_i_2 ,
    \sr_reg[6] ,
    \bdatw[11]_INST_0_i_1 ,
    \grn[7]_i_38 ,
    \grn[4]_i_11_0 ,
    \grn[6]_i_21 ,
    \bdatw[8]_INST_0_i_1 ,
    \badr[2]_INST_0_i_1 ,
    \sr_reg[6]_0 ,
    \sr_reg[6]_1 ,
    \sr_reg[6]_2 ,
    \bdatw[8]_INST_0_i_1_0 ,
    \grn[7]_i_34_0 ,
    \badr[2]_INST_0_i_1_0 ,
    \badr[0]_INST_0_i_1 ,
    \sr_reg[6]_3 ,
    \bdatw[8]_INST_0_i_1_1 ,
    \grn[7]_i_39_0 ,
    \bdatw[8]_INST_0_i_1_2 ,
    \badr[6]_INST_0_i_1 ,
    \bdatw[8]_INST_0_i_1_3 ,
    \bdatw[8]_INST_0_i_1_4 ,
    \iv_reg[7] ,
    \bdatw[11]_INST_0_i_1_0 ,
    \bdatw[15]_INST_0_i_2 ,
    \bdatw[11]_INST_0_i_2 ,
    \bdatw[14]_INST_0_i_2 ,
    \bdatw[10]_INST_0_i_1 ,
    \grn[6]_i_13_0 ,
    \grn[6]_i_13_1 ,
    \grn[6]_i_13_2 ,
    \sr_reg[6]_4 ,
    \grn[5]_i_17 ,
    \grn[6]_i_19 ,
    \grn[6]_i_20 ,
    \grn[7]_i_36 ,
    rst_n,
    .tnsn_dsp_a_0_sp_1(tnsn_dsp_a_0_sn_1),
    \tnsn_dsp_a[0]_0 ,
    gr0_bus1,
    gr7_bus1,
    .tnsn_dsp_a_1_sp_1(tnsn_dsp_a_1_sn_1),
    \tnsn_dsp_a[1]_0 ,
    .tnsn_dsp_a_2_sp_1(tnsn_dsp_a_2_sn_1),
    \tnsn_dsp_a[2]_0 ,
    .tnsn_dsp_a_3_sp_1(tnsn_dsp_a_3_sn_1),
    \tnsn_dsp_a[3]_0 ,
    .tnsn_dsp_a_4_sp_1(tnsn_dsp_a_4_sn_1),
    \tnsn_dsp_a[4]_0 ,
    .tnsn_dsp_a_5_sp_1(tnsn_dsp_a_5_sn_1),
    \tnsn_dsp_a[5]_0 ,
    .tnsn_dsp_a_6_sp_1(tnsn_dsp_a_6_sn_1),
    \tnsn_dsp_a[6]_0 ,
    .tnsn_dsp_a_7_sp_1(tnsn_dsp_a_7_sn_1),
    \tnsn_dsp_a[7]_0 ,
    \badr[8] ,
    \badr[8]_0 ,
    \badr[9] ,
    \badr[9]_0 ,
    \badr[10] ,
    \badr[10]_0 ,
    \badr[11] ,
    \badr[11]_0 ,
    \badr[12] ,
    \badr[12]_0 ,
    \badr[13] ,
    \badr[13]_0 ,
    \badr[14] ,
    \badr[14]_0 ,
    \badr[15] ,
    \badr[15]_0 ,
    gr4_bus1,
    gr3_bus1,
    gr2_bus1,
    gr1_bus1,
    gr6_bus1,
    gr5_bus1,
    \bdatw[12]_INST_0_i_1 ,
    \bdatw[12]_INST_0_i_1_0 ,
    \bdatw[12]_INST_0_i_4_0 ,
    \bdatw[12]_INST_0_i_4_1 ,
    \bdatw[13]_INST_0_i_1 ,
    \bdatw[13]_INST_0_i_1_0 ,
    \bdatw[14]_INST_0_i_1 ,
    \bdatw[14]_INST_0_i_1_0 ,
    \bdatw[15]_INST_0_i_2_0 ,
    \bdatw[15]_INST_0_i_2_1 ,
    \bdatw[8]_INST_0_i_2 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \bdatw[8]_INST_0_i_10_0 ,
    \bdatw[8]_INST_0_i_10_1 ,
    \bdatw[11]_INST_0_i_1_1 ,
    \bdatw[11]_INST_0_i_1_2 ,
    .tnsn_dsp_a_8_sp_1(tnsn_dsp_a_8_sn_1),
    \tnsn_dsp_a[7]_1 ,
    \grn[7]_i_8 ,
    \grn[7]_i_8_0 ,
    \grn[7]_i_8_1 ,
    \tnsn_dsp_a[8]_0 ,
    \grn[6]_i_9 ,
    cbus1_carry__2,
    \sr[4]_i_10 ,
    \sr[4]_i_10_0 ,
    \grn[4]_i_16 ,
    \grn[0]_i_6 ,
    E,
    D,
    clk,
    \grn_reg[8] ,
    \grn_reg[8]_0 ,
    \grn_reg[8]_1 ,
    \grn_reg[8]_2 ,
    \grn_reg[15]_1 ,
    \grn_reg[8]_3 ,
    \grn_reg[8]_4 );
  output rst_n_0;
  output \grn_reg[0] ;
  output \grn_reg[1] ;
  output \grn_reg[2] ;
  output \grn_reg[3]_2 ;
  output \grn_reg[4] ;
  output \grn_reg[5] ;
  output \grn_reg[6] ;
  output \grn_reg[7] ;
  output [7:0]abus_0;
  output [3:0]p_0_in;
  output [3:0]bbus_rn;
  output \grn_reg[12] ;
  output \grn_reg[13] ;
  output \grn_reg[14] ;
  output \grn_reg[15] ;
  output \grn_reg[0]_0 ;
  output \grn_reg[1]_0 ;
  output \grn_reg[2]_0 ;
  output \grn_reg[3]_3 ;
  output \grn_reg[12]_0 ;
  output \grn_reg[13]_0 ;
  output \grn_reg[14]_0 ;
  output \grn_reg[15]_0 ;
  output \grn_reg[0]_1 ;
  output \grn_reg[1]_1 ;
  output \grn_reg[2]_1 ;
  output \grn_reg[3]_4 ;
  output [8:0]tnsn_dsp_a;
  output \tnsn_dsp_b[8]_INST_0_i_1 ;
  output \grn[7]_i_28 ;
  output \grn[6]_i_13 ;
  output \grn[7]_i_30_0 ;
  output \tnsn_dsp_a[7]_INST_0_i_2 ;
  output \sr_reg[6] ;
  output \bdatw[11]_INST_0_i_1 ;
  output \grn[7]_i_38 ;
  output \grn[4]_i_11_0 ;
  output \grn[6]_i_21 ;
  output \bdatw[8]_INST_0_i_1 ;
  output \badr[2]_INST_0_i_1 ;
  output \sr_reg[6]_0 ;
  output \sr_reg[6]_1 ;
  output \sr_reg[6]_2 ;
  output \bdatw[8]_INST_0_i_1_0 ;
  output \grn[7]_i_34_0 ;
  output \badr[2]_INST_0_i_1_0 ;
  output \badr[0]_INST_0_i_1 ;
  output \sr_reg[6]_3 ;
  output \bdatw[8]_INST_0_i_1_1 ;
  output \grn[7]_i_39_0 ;
  output \bdatw[8]_INST_0_i_1_2 ;
  output \badr[6]_INST_0_i_1 ;
  output \bdatw[8]_INST_0_i_1_3 ;
  output \bdatw[8]_INST_0_i_1_4 ;
  output \iv_reg[7] ;
  output [3:0]\bdatw[11]_INST_0_i_1_0 ;
  output [3:0]\bdatw[15]_INST_0_i_2 ;
  output [3:0]\bdatw[11]_INST_0_i_2 ;
  output [2:0]\bdatw[14]_INST_0_i_2 ;
  output \bdatw[10]_INST_0_i_1 ;
  output \grn[6]_i_13_0 ;
  output \grn[6]_i_13_1 ;
  output \grn[6]_i_13_2 ;
  output \sr_reg[6]_4 ;
  output \grn[5]_i_17 ;
  output \grn[6]_i_19 ;
  output \grn[6]_i_20 ;
  output \grn[7]_i_36 ;
  input rst_n;
  input \tnsn_dsp_a[0]_0 ;
  input gr0_bus1;
  input gr7_bus1;
  input \tnsn_dsp_a[1]_0 ;
  input \tnsn_dsp_a[2]_0 ;
  input \tnsn_dsp_a[3]_0 ;
  input \tnsn_dsp_a[4]_0 ;
  input \tnsn_dsp_a[5]_0 ;
  input \tnsn_dsp_a[6]_0 ;
  input \tnsn_dsp_a[7]_0 ;
  input \badr[8] ;
  input \badr[8]_0 ;
  input \badr[9] ;
  input \badr[9]_0 ;
  input \badr[10] ;
  input \badr[10]_0 ;
  input \badr[11] ;
  input \badr[11]_0 ;
  input \badr[12] ;
  input \badr[12]_0 ;
  input \badr[13] ;
  input \badr[13]_0 ;
  input \badr[14] ;
  input \badr[14]_0 ;
  input \badr[15] ;
  input \badr[15]_0 ;
  input gr4_bus1;
  input gr3_bus1;
  input gr2_bus1;
  input gr1_bus1;
  input gr6_bus1;
  input gr5_bus1;
  input \bdatw[12]_INST_0_i_1 ;
  input \bdatw[12]_INST_0_i_1_0 ;
  input \bdatw[12]_INST_0_i_4_0 ;
  input \bdatw[12]_INST_0_i_4_1 ;
  input \bdatw[13]_INST_0_i_1 ;
  input \bdatw[13]_INST_0_i_1_0 ;
  input \bdatw[14]_INST_0_i_1 ;
  input \bdatw[14]_INST_0_i_1_0 ;
  input \bdatw[15]_INST_0_i_2_0 ;
  input \bdatw[15]_INST_0_i_2_1 ;
  input \bdatw[8]_INST_0_i_2 ;
  input \bdatw[8]_INST_0_i_2_0 ;
  input \bdatw[8]_INST_0_i_10_0 ;
  input \bdatw[8]_INST_0_i_10_1 ;
  input \bdatw[11]_INST_0_i_1_1 ;
  input \bdatw[11]_INST_0_i_1_2 ;
  input \tnsn_dsp_a[7]_1 ;
  input \grn[7]_i_8 ;
  input [1:0]\grn[7]_i_8_0 ;
  input \grn[7]_i_8_1 ;
  input \tnsn_dsp_a[8]_0 ;
  input [0:0]\grn[6]_i_9 ;
  input [14:0]cbus1_carry__2;
  input \sr[4]_i_10 ;
  input \sr[4]_i_10_0 ;
  input \grn[4]_i_16 ;
  input \grn[0]_i_6 ;
  input [1:0]E;
  input [15:0]D;
  input clk;
  input [1:0]\grn_reg[8] ;
  input [1:0]\grn_reg[8]_0 ;
  input [1:0]\grn_reg[8]_1 ;
  input [1:0]\grn_reg[8]_2 ;
  input [1:0]\grn_reg[15]_1 ;
  input [1:0]\grn_reg[8]_3 ;
  input [1:0]\grn_reg[8]_4 ;
     output [15:0]gr01;
     output [15:0]gr02;
     output [15:0]gr03;
     output [15:0]gr04;
  input tnsn_dsp_a_0_sn_1;
  input tnsn_dsp_a_1_sn_1;
  input tnsn_dsp_a_2_sn_1;
  input tnsn_dsp_a_3_sn_1;
  input tnsn_dsp_a_4_sn_1;
  input tnsn_dsp_a_5_sn_1;
  input tnsn_dsp_a_6_sn_1;
  input tnsn_dsp_a_7_sn_1;
  input tnsn_dsp_a_8_sn_1;

  wire [15:0]D;
  wire [1:0]E;
  wire [7:0]abus_0;
  wire \badr[0]_INST_0_i_1 ;
  wire \badr[10] ;
  wire \badr[10]_0 ;
  wire \badr[10]_INST_0_i_2_n_0 ;
  wire \badr[10]_INST_0_i_3_n_0 ;
  wire \badr[10]_INST_0_i_4_n_0 ;
  wire \badr[10]_INST_0_i_5_n_0 ;
  wire \badr[11] ;
  wire \badr[11]_0 ;
  wire \badr[11]_INST_0_i_2_n_0 ;
  wire \badr[11]_INST_0_i_3_n_0 ;
  wire \badr[11]_INST_0_i_4_n_0 ;
  wire \badr[11]_INST_0_i_5_n_0 ;
  wire \badr[12] ;
  wire \badr[12]_0 ;
  wire \badr[13] ;
  wire \badr[13]_0 ;
  wire \badr[14] ;
  wire \badr[14]_0 ;
  wire \badr[15] ;
  wire \badr[15]_0 ;
  wire \badr[2]_INST_0_i_1 ;
  wire \badr[2]_INST_0_i_1_0 ;
  wire \badr[3]_INST_0_i_2_n_0 ;
  wire \badr[3]_INST_0_i_3_n_0 ;
  wire \badr[3]_INST_0_i_4_n_0 ;
  wire \badr[3]_INST_0_i_5_n_0 ;
  wire \badr[6]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_2_n_0 ;
  wire \badr[7]_INST_0_i_3_n_0 ;
  wire \badr[7]_INST_0_i_4_n_0 ;
  wire \badr[7]_INST_0_i_5_n_0 ;
  wire \badr[8] ;
  wire \badr[8]_0 ;
  wire \badr[9] ;
  wire \badr[9]_0 ;
  wire \badr[9]_INST_0_i_2_n_0 ;
  wire \badr[9]_INST_0_i_3_n_0 ;
  wire \badr[9]_INST_0_i_4_n_0 ;
  wire \badr[9]_INST_0_i_5_n_0 ;
  wire [3:0]bbus_rn;
  wire \bdatw[10]_INST_0_i_1 ;
  wire \bdatw[10]_INST_0_i_19_n_0 ;
  wire \bdatw[10]_INST_0_i_20_n_0 ;
  wire \bdatw[10]_INST_0_i_23_n_0 ;
  wire \bdatw[11]_INST_0_i_1 ;
  wire [3:0]\bdatw[11]_INST_0_i_1_0 ;
  wire \bdatw[11]_INST_0_i_1_1 ;
  wire \bdatw[11]_INST_0_i_1_2 ;
  wire [3:0]\bdatw[11]_INST_0_i_2 ;
  wire \bdatw[11]_INST_0_i_27_n_0 ;
  wire \bdatw[11]_INST_0_i_28_n_0 ;
  wire \bdatw[11]_INST_0_i_39_n_0 ;
  wire \bdatw[12]_INST_0_i_1 ;
  wire \bdatw[12]_INST_0_i_10_n_0 ;
  wire \bdatw[12]_INST_0_i_1_0 ;
  wire \bdatw[12]_INST_0_i_4_0 ;
  wire \bdatw[12]_INST_0_i_4_1 ;
  wire \bdatw[12]_INST_0_i_7_n_0 ;
  wire \bdatw[12]_INST_0_i_8_n_0 ;
  wire \bdatw[12]_INST_0_i_9_n_0 ;
  wire \bdatw[13]_INST_0_i_1 ;
  wire \bdatw[13]_INST_0_i_10_n_0 ;
  wire \bdatw[13]_INST_0_i_1_0 ;
  wire \bdatw[13]_INST_0_i_7_n_0 ;
  wire \bdatw[13]_INST_0_i_8_n_0 ;
  wire \bdatw[13]_INST_0_i_9_n_0 ;
  wire \bdatw[14]_INST_0_i_1 ;
  wire \bdatw[14]_INST_0_i_10_n_0 ;
  wire \bdatw[14]_INST_0_i_1_0 ;
  wire [2:0]\bdatw[14]_INST_0_i_2 ;
  wire \bdatw[14]_INST_0_i_7_n_0 ;
  wire \bdatw[14]_INST_0_i_8_n_0 ;
  wire \bdatw[14]_INST_0_i_9_n_0 ;
  wire \bdatw[15]_INST_0_i_16_n_0 ;
  wire \bdatw[15]_INST_0_i_17_n_0 ;
  wire \bdatw[15]_INST_0_i_18_n_0 ;
  wire \bdatw[15]_INST_0_i_19_n_0 ;
  wire [3:0]\bdatw[15]_INST_0_i_2 ;
  wire \bdatw[15]_INST_0_i_2_0 ;
  wire \bdatw[15]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_1 ;
  wire \bdatw[8]_INST_0_i_10_0 ;
  wire \bdatw[8]_INST_0_i_10_1 ;
  wire \bdatw[8]_INST_0_i_19_n_0 ;
  wire \bdatw[8]_INST_0_i_1_0 ;
  wire \bdatw[8]_INST_0_i_1_1 ;
  wire \bdatw[8]_INST_0_i_1_2 ;
  wire \bdatw[8]_INST_0_i_1_3 ;
  wire \bdatw[8]_INST_0_i_1_4 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_20_n_0 ;
  wire \bdatw[8]_INST_0_i_23_n_0 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_18_n_0 ;
  wire \bdatw[9]_INST_0_i_19_n_0 ;
  wire \bdatw[9]_INST_0_i_21_n_0 ;
  wire [14:0]cbus1_carry__2;
  wire clk;
  (* DONT_TOUCH *) wire [15:0]gr00;
  (* DONT_TOUCH *) wire [15:0]gr01;
  (* DONT_TOUCH *) wire [15:0]gr02;
  (* DONT_TOUCH *) wire [15:0]gr03;
  (* DONT_TOUCH *) wire [15:0]gr04;
  (* DONT_TOUCH *) wire [15:0]gr05;
  (* DONT_TOUCH *) wire [15:0]gr06;
  (* DONT_TOUCH *) wire [15:0]gr07;
  wire gr0_bus1;
  wire gr1_bus1;
  wire gr2_bus1;
  wire gr3_bus1;
  wire gr4_bus1;
  wire gr5_bus1;
  wire gr6_bus1;
  wire gr7_bus1;
  wire grn01_n_35;
  wire \grn[0]_i_6 ;
  wire \grn[4]_i_11_0 ;
  wire \grn[4]_i_16 ;
  wire \grn[5]_i_17 ;
  wire \grn[6]_i_13 ;
  wire \grn[6]_i_13_0 ;
  wire \grn[6]_i_13_1 ;
  wire \grn[6]_i_13_2 ;
  wire \grn[6]_i_19 ;
  wire \grn[6]_i_20 ;
  wire \grn[6]_i_21 ;
  wire [0:0]\grn[6]_i_9 ;
  wire \grn[7]_i_27_n_0 ;
  wire \grn[7]_i_28 ;
  wire \grn[7]_i_30_0 ;
  wire \grn[7]_i_30_n_0 ;
  wire \grn[7]_i_34_0 ;
  wire \grn[7]_i_36 ;
  wire \grn[7]_i_38 ;
  wire \grn[7]_i_39_0 ;
  wire \grn[7]_i_39_n_0 ;
  wire \grn[7]_i_8 ;
  wire [1:0]\grn[7]_i_8_0 ;
  wire \grn[7]_i_8_1 ;
  wire \grn_reg[0] ;
  wire \grn_reg[0]_0 ;
  wire \grn_reg[0]_1 ;
  wire \grn_reg[12] ;
  wire \grn_reg[12]_0 ;
  wire \grn_reg[13] ;
  wire \grn_reg[13]_0 ;
  wire \grn_reg[14] ;
  wire \grn_reg[14]_0 ;
  wire \grn_reg[15] ;
  wire \grn_reg[15]_0 ;
  wire [1:0]\grn_reg[15]_1 ;
  wire \grn_reg[1] ;
  wire \grn_reg[1]_0 ;
  wire \grn_reg[1]_1 ;
  wire \grn_reg[2] ;
  wire \grn_reg[2]_0 ;
  wire \grn_reg[2]_1 ;
  wire \grn_reg[3]_2 ;
  wire \grn_reg[3]_3 ;
  wire \grn_reg[3]_4 ;
  wire \grn_reg[4] ;
  wire \grn_reg[5] ;
  wire \grn_reg[6] ;
  wire \grn_reg[7] ;
  wire [1:0]\grn_reg[8] ;
  wire [1:0]\grn_reg[8]_0 ;
  wire [1:0]\grn_reg[8]_1 ;
  wire [1:0]\grn_reg[8]_2 ;
  wire [1:0]\grn_reg[8]_3 ;
  wire [1:0]\grn_reg[8]_4 ;
  wire \iv_reg[7] ;
  wire [3:0]p_0_in;
  wire rst_n;
  wire rst_n_0;
  wire \sr[4]_i_10 ;
  wire \sr[4]_i_10_0 ;
  wire \sr_reg[6] ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[6]_1 ;
  wire \sr_reg[6]_2 ;
  wire \sr_reg[6]_3 ;
  wire \sr_reg[6]_4 ;
  wire [8:0]tnsn_dsp_a;
  wire \tnsn_dsp_a[0]_0 ;
  wire \tnsn_dsp_a[1]_0 ;
  wire \tnsn_dsp_a[2]_0 ;
  wire \tnsn_dsp_a[3]_0 ;
  wire \tnsn_dsp_a[4]_0 ;
  wire \tnsn_dsp_a[5]_0 ;
  wire \tnsn_dsp_a[6]_0 ;
  wire \tnsn_dsp_a[7]_0 ;
  wire \tnsn_dsp_a[7]_1 ;
  wire \tnsn_dsp_a[7]_INST_0_i_2 ;
  wire \tnsn_dsp_a[8]_0 ;
  wire tnsn_dsp_a_0_sn_1;
  wire tnsn_dsp_a_1_sn_1;
  wire tnsn_dsp_a_2_sn_1;
  wire tnsn_dsp_a_3_sn_1;
  wire tnsn_dsp_a_4_sn_1;
  wire tnsn_dsp_a_5_sn_1;
  wire tnsn_dsp_a_6_sn_1;
  wire tnsn_dsp_a_7_sn_1;
  wire tnsn_dsp_a_8_sn_1;
  wire \tnsn_dsp_b[8]_INST_0_i_1 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[10]_INST_0_i_1 
       (.I0(\badr[10]_INST_0_i_2_n_0 ),
        .I1(\badr[10]_INST_0_i_3_n_0 ),
        .I2(\badr[10]_INST_0_i_4_n_0 ),
        .I3(\badr[10]_INST_0_i_5_n_0 ),
        .I4(\badr[10] ),
        .I5(\badr[10]_0 ),
        .O(abus_0[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_2 
       (.I0(gr04[10]),
        .I1(gr4_bus1),
        .I2(gr03[10]),
        .I3(gr3_bus1),
        .O(\badr[10]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_3 
       (.I0(gr02[10]),
        .I1(gr2_bus1),
        .I2(gr01[10]),
        .I3(gr1_bus1),
        .O(\badr[10]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_4 
       (.I0(gr00[10]),
        .I1(gr0_bus1),
        .I2(gr07[10]),
        .I3(gr7_bus1),
        .O(\badr[10]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_5 
       (.I0(gr06[10]),
        .I1(gr6_bus1),
        .I2(gr05[10]),
        .I3(gr5_bus1),
        .O(\badr[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[11]_INST_0_i_1 
       (.I0(\badr[11]_INST_0_i_2_n_0 ),
        .I1(\badr[11]_INST_0_i_3_n_0 ),
        .I2(\badr[11]_INST_0_i_4_n_0 ),
        .I3(\badr[11]_INST_0_i_5_n_0 ),
        .I4(\badr[11] ),
        .I5(\badr[11]_0 ),
        .O(abus_0[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_2 
       (.I0(gr04[11]),
        .I1(gr4_bus1),
        .I2(gr03[11]),
        .I3(gr3_bus1),
        .O(\badr[11]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_3 
       (.I0(gr02[11]),
        .I1(gr2_bus1),
        .I2(gr01[11]),
        .I3(gr1_bus1),
        .O(\badr[11]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_4 
       (.I0(gr00[11]),
        .I1(gr0_bus1),
        .I2(gr07[11]),
        .I3(gr7_bus1),
        .O(\badr[11]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_5 
       (.I0(gr06[11]),
        .I1(gr6_bus1),
        .I2(gr05[11]),
        .I3(gr5_bus1),
        .O(\badr[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[3]_INST_0_i_1 
       (.I0(\badr[3]_INST_0_i_2_n_0 ),
        .I1(\badr[3]_INST_0_i_3_n_0 ),
        .I2(\badr[3]_INST_0_i_4_n_0 ),
        .I3(\badr[3]_INST_0_i_5_n_0 ),
        .I4(tnsn_dsp_a_3_sn_1),
        .I5(\tnsn_dsp_a[3]_0 ),
        .O(\grn_reg[3]_2 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_2 
       (.I0(gr04[3]),
        .I1(gr4_bus1),
        .I2(gr03[3]),
        .I3(gr3_bus1),
        .O(\badr[3]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_3 
       (.I0(gr02[3]),
        .I1(gr2_bus1),
        .I2(gr01[3]),
        .I3(gr1_bus1),
        .O(\badr[3]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_4 
       (.I0(gr00[3]),
        .I1(gr0_bus1),
        .I2(gr07[3]),
        .I3(gr7_bus1),
        .O(\badr[3]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_5 
       (.I0(gr06[3]),
        .I1(gr6_bus1),
        .I2(gr05[3]),
        .I3(gr5_bus1),
        .O(\badr[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[7]_INST_0_i_1 
       (.I0(\badr[7]_INST_0_i_2_n_0 ),
        .I1(\badr[7]_INST_0_i_3_n_0 ),
        .I2(\badr[7]_INST_0_i_4_n_0 ),
        .I3(\badr[7]_INST_0_i_5_n_0 ),
        .I4(tnsn_dsp_a_7_sn_1),
        .I5(\tnsn_dsp_a[7]_0 ),
        .O(\grn_reg[7] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_2 
       (.I0(gr04[7]),
        .I1(gr4_bus1),
        .I2(gr03[7]),
        .I3(gr3_bus1),
        .O(\badr[7]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_3 
       (.I0(gr02[7]),
        .I1(gr2_bus1),
        .I2(gr01[7]),
        .I3(gr1_bus1),
        .O(\badr[7]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_4 
       (.I0(gr00[7]),
        .I1(gr0_bus1),
        .I2(gr07[7]),
        .I3(gr7_bus1),
        .O(\badr[7]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_5 
       (.I0(gr06[7]),
        .I1(gr6_bus1),
        .I2(gr05[7]),
        .I3(gr5_bus1),
        .O(\badr[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[9]_INST_0_i_1 
       (.I0(\badr[9]_INST_0_i_2_n_0 ),
        .I1(\badr[9]_INST_0_i_3_n_0 ),
        .I2(\badr[9]_INST_0_i_4_n_0 ),
        .I3(\badr[9]_INST_0_i_5_n_0 ),
        .I4(\badr[9] ),
        .I5(\badr[9]_0 ),
        .O(abus_0[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_2 
       (.I0(gr04[9]),
        .I1(gr4_bus1),
        .I2(gr03[9]),
        .I3(gr3_bus1),
        .O(\badr[9]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_3 
       (.I0(gr02[9]),
        .I1(gr2_bus1),
        .I2(gr01[9]),
        .I3(gr1_bus1),
        .O(\badr[9]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_4 
       (.I0(gr00[9]),
        .I1(gr0_bus1),
        .I2(gr07[9]),
        .I3(gr7_bus1),
        .O(\badr[9]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_5 
       (.I0(gr06[9]),
        .I1(gr6_bus1),
        .I2(gr05[9]),
        .I3(gr5_bus1),
        .O(\badr[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[10]_INST_0_i_10 
       (.I0(\bdatw[10]_INST_0_i_19_n_0 ),
        .I1(gr00[10]),
        .I2(\bdatw[8]_INST_0_i_2 ),
        .I3(gr07[10]),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\bdatw[10]_INST_0_i_20_n_0 ),
        .O(bbus_rn[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_19 
       (.I0(gr06[10]),
        .I1(\bdatw[11]_INST_0_i_1_1 ),
        .I2(gr05[10]),
        .I3(\bdatw[11]_INST_0_i_1_2 ),
        .O(\bdatw[10]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatw[10]_INST_0_i_20 
       (.I0(\bdatw[8]_INST_0_i_10_0 ),
        .I1(gr03[10]),
        .I2(\bdatw[8]_INST_0_i_10_1 ),
        .I3(gr04[10]),
        .I4(\bdatw[10]_INST_0_i_23_n_0 ),
        .O(\bdatw[10]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_23 
       (.I0(gr02[10]),
        .I1(\bdatw[12]_INST_0_i_4_0 ),
        .I2(gr01[10]),
        .I3(\bdatw[12]_INST_0_i_4_1 ),
        .O(\bdatw[10]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[11]_INST_0_i_10 
       (.I0(\bdatw[11]_INST_0_i_27_n_0 ),
        .I1(gr00[11]),
        .I2(\bdatw[8]_INST_0_i_2 ),
        .I3(gr07[11]),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\bdatw[11]_INST_0_i_28_n_0 ),
        .O(bbus_rn[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_27 
       (.I0(gr06[11]),
        .I1(\bdatw[11]_INST_0_i_1_1 ),
        .I2(gr05[11]),
        .I3(\bdatw[11]_INST_0_i_1_2 ),
        .O(\bdatw[11]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatw[11]_INST_0_i_28 
       (.I0(\bdatw[8]_INST_0_i_10_0 ),
        .I1(gr03[11]),
        .I2(\bdatw[8]_INST_0_i_10_1 ),
        .I3(gr04[11]),
        .I4(\bdatw[11]_INST_0_i_39_n_0 ),
        .O(\bdatw[11]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_39 
       (.I0(gr02[11]),
        .I1(\bdatw[12]_INST_0_i_4_0 ),
        .I2(gr01[11]),
        .I3(\bdatw[12]_INST_0_i_4_1 ),
        .O(\bdatw[11]_INST_0_i_39_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_5 
       (.I0(gr00[3]),
        .I1(\bdatw[8]_INST_0_i_2 ),
        .I2(gr07[3]),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .O(\grn_reg[3]_3 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_6 
       (.I0(gr06[3]),
        .I1(\bdatw[11]_INST_0_i_1_1 ),
        .I2(gr05[3]),
        .I3(\bdatw[11]_INST_0_i_1_2 ),
        .O(\grn_reg[3]_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_10 
       (.I0(gr06[4]),
        .I1(\bdatw[11]_INST_0_i_1_1 ),
        .I2(gr05[4]),
        .I3(\bdatw[11]_INST_0_i_1_2 ),
        .O(\bdatw[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[12]_INST_0_i_4 
       (.I0(\bdatw[12]_INST_0_i_7_n_0 ),
        .I1(\bdatw[12]_INST_0_i_8_n_0 ),
        .I2(\bdatw[12]_INST_0_i_9_n_0 ),
        .I3(\bdatw[12]_INST_0_i_10_n_0 ),
        .I4(\bdatw[12]_INST_0_i_1 ),
        .I5(\bdatw[12]_INST_0_i_1_0 ),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_7 
       (.I0(gr04[4]),
        .I1(\bdatw[8]_INST_0_i_10_1 ),
        .I2(gr03[4]),
        .I3(\bdatw[8]_INST_0_i_10_0 ),
        .O(\bdatw[12]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_8 
       (.I0(gr02[4]),
        .I1(\bdatw[12]_INST_0_i_4_0 ),
        .I2(gr01[4]),
        .I3(\bdatw[12]_INST_0_i_4_1 ),
        .O(\bdatw[12]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_9 
       (.I0(gr00[4]),
        .I1(\bdatw[8]_INST_0_i_2 ),
        .I2(gr07[4]),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .O(\bdatw[12]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_10 
       (.I0(gr06[5]),
        .I1(\bdatw[11]_INST_0_i_1_1 ),
        .I2(gr05[5]),
        .I3(\bdatw[11]_INST_0_i_1_2 ),
        .O(\bdatw[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[13]_INST_0_i_4 
       (.I0(\bdatw[13]_INST_0_i_7_n_0 ),
        .I1(\bdatw[13]_INST_0_i_8_n_0 ),
        .I2(\bdatw[13]_INST_0_i_9_n_0 ),
        .I3(\bdatw[13]_INST_0_i_10_n_0 ),
        .I4(\bdatw[13]_INST_0_i_1 ),
        .I5(\bdatw[13]_INST_0_i_1_0 ),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_7 
       (.I0(gr04[5]),
        .I1(\bdatw[8]_INST_0_i_10_1 ),
        .I2(gr03[5]),
        .I3(\bdatw[8]_INST_0_i_10_0 ),
        .O(\bdatw[13]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_8 
       (.I0(gr02[5]),
        .I1(\bdatw[12]_INST_0_i_4_0 ),
        .I2(gr01[5]),
        .I3(\bdatw[12]_INST_0_i_4_1 ),
        .O(\bdatw[13]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_9 
       (.I0(gr00[5]),
        .I1(\bdatw[8]_INST_0_i_2 ),
        .I2(gr07[5]),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .O(\bdatw[13]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_10 
       (.I0(gr06[6]),
        .I1(\bdatw[11]_INST_0_i_1_1 ),
        .I2(gr05[6]),
        .I3(\bdatw[11]_INST_0_i_1_2 ),
        .O(\bdatw[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[14]_INST_0_i_4 
       (.I0(\bdatw[14]_INST_0_i_7_n_0 ),
        .I1(\bdatw[14]_INST_0_i_8_n_0 ),
        .I2(\bdatw[14]_INST_0_i_9_n_0 ),
        .I3(\bdatw[14]_INST_0_i_10_n_0 ),
        .I4(\bdatw[14]_INST_0_i_1 ),
        .I5(\bdatw[14]_INST_0_i_1_0 ),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_7 
       (.I0(gr04[6]),
        .I1(\bdatw[8]_INST_0_i_10_1 ),
        .I2(gr03[6]),
        .I3(\bdatw[8]_INST_0_i_10_0 ),
        .O(\bdatw[14]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_8 
       (.I0(gr02[6]),
        .I1(\bdatw[12]_INST_0_i_4_0 ),
        .I2(gr01[6]),
        .I3(\bdatw[12]_INST_0_i_4_1 ),
        .O(\bdatw[14]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_9 
       (.I0(gr00[6]),
        .I1(\bdatw[8]_INST_0_i_2 ),
        .I2(gr07[6]),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .O(\bdatw[14]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_16 
       (.I0(gr04[7]),
        .I1(\bdatw[8]_INST_0_i_10_1 ),
        .I2(gr03[7]),
        .I3(\bdatw[8]_INST_0_i_10_0 ),
        .O(\bdatw[15]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_17 
       (.I0(gr02[7]),
        .I1(\bdatw[12]_INST_0_i_4_0 ),
        .I2(gr01[7]),
        .I3(\bdatw[12]_INST_0_i_4_1 ),
        .O(\bdatw[15]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_18 
       (.I0(gr00[7]),
        .I1(\bdatw[8]_INST_0_i_2 ),
        .I2(gr07[7]),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .O(\bdatw[15]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_19 
       (.I0(gr06[7]),
        .I1(\bdatw[11]_INST_0_i_1_1 ),
        .I2(gr05[7]),
        .I3(\bdatw[11]_INST_0_i_1_2 ),
        .O(\bdatw[15]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[15]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_17_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(\bdatw[15]_INST_0_i_19_n_0 ),
        .I4(\bdatw[15]_INST_0_i_2_0 ),
        .I5(\bdatw[15]_INST_0_i_2_1 ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[8]_INST_0_i_10 
       (.I0(\bdatw[8]_INST_0_i_19_n_0 ),
        .I1(gr00[8]),
        .I2(\bdatw[8]_INST_0_i_2 ),
        .I3(gr07[8]),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\bdatw[8]_INST_0_i_20_n_0 ),
        .O(bbus_rn[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_19 
       (.I0(gr06[8]),
        .I1(\bdatw[11]_INST_0_i_1_1 ),
        .I2(gr05[8]),
        .I3(\bdatw[11]_INST_0_i_1_2 ),
        .O(\bdatw[8]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatw[8]_INST_0_i_20 
       (.I0(\bdatw[8]_INST_0_i_10_0 ),
        .I1(gr03[8]),
        .I2(\bdatw[8]_INST_0_i_10_1 ),
        .I3(gr04[8]),
        .I4(\bdatw[8]_INST_0_i_23_n_0 ),
        .O(\bdatw[8]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_23 
       (.I0(gr02[8]),
        .I1(\bdatw[12]_INST_0_i_4_0 ),
        .I2(gr01[8]),
        .I3(\bdatw[12]_INST_0_i_4_1 ),
        .O(\bdatw[8]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[9]_INST_0_i_10 
       (.I0(\bdatw[9]_INST_0_i_18_n_0 ),
        .I1(gr00[9]),
        .I2(\bdatw[8]_INST_0_i_2 ),
        .I3(gr07[9]),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\bdatw[9]_INST_0_i_19_n_0 ),
        .O(bbus_rn[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_18 
       (.I0(gr06[9]),
        .I1(\bdatw[11]_INST_0_i_1_1 ),
        .I2(gr05[9]),
        .I3(\bdatw[11]_INST_0_i_1_2 ),
        .O(\bdatw[9]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatw[9]_INST_0_i_19 
       (.I0(\bdatw[8]_INST_0_i_10_0 ),
        .I1(gr03[9]),
        .I2(\bdatw[8]_INST_0_i_10_1 ),
        .I3(gr04[9]),
        .I4(\bdatw[9]_INST_0_i_21_n_0 ),
        .O(\bdatw[9]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_21 
       (.I0(gr02[9]),
        .I1(\bdatw[12]_INST_0_i_4_0 ),
        .I2(gr01[9]),
        .I3(\bdatw[12]_INST_0_i_4_1 ),
        .O(\bdatw[9]_INST_0_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__0_i_1
       (.I0(\grn_reg[7] ),
        .I1(cbus1_carry__2[7]),
        .O(\bdatw[15]_INST_0_i_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__0_i_2
       (.I0(\grn_reg[6] ),
        .I1(cbus1_carry__2[6]),
        .O(\bdatw[15]_INST_0_i_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__0_i_3
       (.I0(\grn_reg[5] ),
        .I1(cbus1_carry__2[5]),
        .O(\bdatw[15]_INST_0_i_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__0_i_4
       (.I0(\grn_reg[4] ),
        .I1(cbus1_carry__2[4]),
        .O(\bdatw[15]_INST_0_i_2 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__1_i_1
       (.I0(abus_0[3]),
        .I1(cbus1_carry__2[11]),
        .O(\bdatw[11]_INST_0_i_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__1_i_2
       (.I0(abus_0[2]),
        .I1(cbus1_carry__2[10]),
        .O(\bdatw[11]_INST_0_i_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__1_i_3
       (.I0(abus_0[1]),
        .I1(cbus1_carry__2[9]),
        .O(\bdatw[11]_INST_0_i_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__1_i_4
       (.I0(abus_0[0]),
        .I1(cbus1_carry__2[8]),
        .O(\bdatw[11]_INST_0_i_2 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry_i_1
       (.I0(\grn_reg[3]_2 ),
        .I1(cbus1_carry__2[3]),
        .O(\bdatw[11]_INST_0_i_1_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry_i_2
       (.I0(\grn_reg[2] ),
        .I1(cbus1_carry__2[2]),
        .O(\bdatw[11]_INST_0_i_1_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry_i_3
       (.I0(\grn_reg[1] ),
        .I1(cbus1_carry__2[1]),
        .O(\bdatw[11]_INST_0_i_1_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry_i_4
       (.I0(\grn_reg[0] ),
        .I1(cbus1_carry__2[0]),
        .O(\bdatw[11]_INST_0_i_1_0 [0]));
  tnsn_rgf_grn grn00
       (.D(D),
        .E(E),
        .Q(gr00),
        .SR(rst_n_0),
        .clk(clk));
  tnsn_rgf_grn_0 grn01
       (.D(D),
        .Q(gr01),
        .SR(rst_n_0),
        .abus_0({abus_0[7:4],abus_0[0]}),
        .\badr[12] (\badr[12] ),
        .\badr[12]_0 (\badr[12]_0 ),
        .\badr[13] (\badr[13] ),
        .\badr[13]_0 (\badr[13]_0 ),
        .\badr[14] (\badr[14] ),
        .\badr[14]_0 (\badr[14]_0 ),
        .\badr[15] (\badr[15] ),
        .\badr[15]_0 (\badr[15]_0 ),
        .\badr[2]_INST_0_i_1_0 (\badr[2]_INST_0_i_1 ),
        .\badr[8] (\badr[8] ),
        .\badr[8]_0 (\badr[8]_0 ),
        .\bdatw[14]_INST_0_i_2 (\bdatw[14]_INST_0_i_2 ),
        .\bdatw[15]_INST_0_i_12 ({gr07[15:12],gr07[8],gr07[6:4],gr07[2:0]}),
        .\bdatw[15]_INST_0_i_12_0 ({gr04[15:12],gr04[8],gr04[6:4],gr04[2:0]}),
        .\bdatw[15]_INST_0_i_12_1 ({gr03[15:12],gr03[8],gr03[6:4],gr03[2:0]}),
        .\bdatw[15]_INST_0_i_12_2 (\bdatw[8]_INST_0_i_10_0 ),
        .\bdatw[15]_INST_0_i_12_3 (\bdatw[8]_INST_0_i_10_1 ),
        .\bdatw[15]_INST_0_i_12_4 (\bdatw[8]_INST_0_i_2 ),
        .\bdatw[15]_INST_0_i_12_5 (\bdatw[8]_INST_0_i_2_0 ),
        .\bdatw[15]_INST_0_i_30_0 ({gr06[15:12],gr06[8],gr06[6:4],gr06[2:0]}),
        .\bdatw[15]_INST_0_i_30_1 ({gr05[15:12],gr05[8],gr05[6:4],gr05[2:0]}),
        .\bdatw[15]_INST_0_i_30_2 (\bdatw[11]_INST_0_i_1_1 ),
        .\bdatw[15]_INST_0_i_30_3 (\bdatw[11]_INST_0_i_1_2 ),
        .\bdatw[15]_INST_0_i_31_0 ({gr02[15:12],gr02[8],gr02[6:4],gr02[2:0]}),
        .\bdatw[15]_INST_0_i_31_1 ({gr01[15:12],gr01[8],gr01[6:4],gr01[2:0]}),
        .\bdatw[15]_INST_0_i_31_2 (\bdatw[12]_INST_0_i_4_0 ),
        .\bdatw[15]_INST_0_i_31_3 (\bdatw[12]_INST_0_i_4_1 ),
        .\bdatw[8]_INST_0_i_1 (\bdatw[8]_INST_0_i_1 ),
        .\bdatw[8]_INST_0_i_1_0 (\bdatw[8]_INST_0_i_1_1 ),
        .\bdatw[8]_INST_0_i_1_1 (grn01_n_35),
        .\bdatw[8]_INST_0_i_1_2 (\bdatw[8]_INST_0_i_1_2 ),
        .\bdatw[8]_INST_0_i_1_3 (\bdatw[8]_INST_0_i_1_3 ),
        .\bdatw[8]_INST_0_i_1_4 (\bdatw[8]_INST_0_i_1_4 ),
        .cbus1_carry__2({cbus1_carry__2[14:12],cbus1_carry__2[0]}),
        .clk(clk),
        .gr0_bus1(gr0_bus1),
        .gr1_bus1(gr1_bus1),
        .gr2_bus1(gr2_bus1),
        .gr3_bus1(gr3_bus1),
        .gr4_bus1(gr4_bus1),
        .gr5_bus1(gr5_bus1),
        .gr6_bus1(gr6_bus1),
        .gr7_bus1(gr7_bus1),
        .\grn[0]_i_6 (\bdatw[8]_INST_0_i_1_0 ),
        .\grn[0]_i_6_0 (\grn[0]_i_6 ),
        .\grn[0]_i_7 (\grn_reg[7] ),
        .\grn[0]_i_7_0 (\sr[4]_i_10 ),
        .\grn[1]_i_9 (\grn_reg[3]_2 ),
        .\grn[3]_i_10 (\sr[4]_i_10_0 ),
        .\grn[3]_i_5 (\grn[6]_i_13 ),
        .\grn[3]_i_5_0 (\grn[7]_i_8 ),
        .\grn[3]_i_5_1 (\grn[7]_i_27_n_0 ),
        .\grn[3]_i_5_2 (\grn[7]_i_8_1 ),
        .\grn[4]_i_16 (\grn[7]_i_8_0 ),
        .\grn[4]_i_16_0 (\grn[4]_i_16 ),
        .\grn[4]_i_16_1 (\badr[7]_INST_0_i_5_n_0 ),
        .\grn[4]_i_16_2 (\badr[7]_INST_0_i_4_n_0 ),
        .\grn[4]_i_16_3 (\badr[7]_INST_0_i_3_n_0 ),
        .\grn[4]_i_16_4 (\badr[7]_INST_0_i_2_n_0 ),
        .\grn[4]_i_7 (\grn[6]_i_9 ),
        .\grn[5]_i_10 (\grn[7]_i_39_n_0 ),
        .\grn[5]_i_17_0 (\grn[5]_i_17 ),
        .\grn[5]_i_7 (\badr[2]_INST_0_i_1_0 ),
        .\grn[5]_i_7_0 (\badr[0]_INST_0_i_1 ),
        .\grn[6]_i_13 (\grn[6]_i_13_1 ),
        .\grn[6]_i_13_0 (\grn[6]_i_13_2 ),
        .\grn[6]_i_19_0 (\grn[6]_i_19 ),
        .\grn[6]_i_20_0 (\grn[6]_i_20 ),
        .\grn[6]_i_21_0 (\grn[6]_i_21 ),
        .\grn[7]_i_28 (\grn[7]_i_28 ),
        .\grn[7]_i_34 (\grn[7]_i_34_0 ),
        .\grn[7]_i_36_0 (\grn[7]_i_36 ),
        .\grn[7]_i_39 (\grn[7]_i_39_0 ),
        .\grn_reg[0]_0 (\grn_reg[0] ),
        .\grn_reg[0]_1 (\grn_reg[0]_0 ),
        .\grn_reg[0]_2 (\grn_reg[0]_1 ),
        .\grn_reg[12]_0 (\grn_reg[12] ),
        .\grn_reg[12]_1 (\grn_reg[12]_0 ),
        .\grn_reg[13]_0 (\grn_reg[13] ),
        .\grn_reg[13]_1 (\grn_reg[13]_0 ),
        .\grn_reg[14]_0 (\grn_reg[14] ),
        .\grn_reg[14]_1 (\grn_reg[14]_0 ),
        .\grn_reg[15]_0 (\grn_reg[15] ),
        .\grn_reg[15]_1 (\grn_reg[15]_0 ),
        .\grn_reg[1]_0 (\grn_reg[1] ),
        .\grn_reg[1]_1 (\grn_reg[1]_0 ),
        .\grn_reg[1]_2 (\grn_reg[1]_1 ),
        .\grn_reg[2]_0 (\grn_reg[2] ),
        .\grn_reg[2]_1 (\grn_reg[2]_0 ),
        .\grn_reg[2]_2 (\grn_reg[2]_1 ),
        .\grn_reg[4]_0 (\grn_reg[4] ),
        .\grn_reg[5]_0 (\grn_reg[5] ),
        .\grn_reg[6]_0 (\grn_reg[6] ),
        .\grn_reg[8]_0 (\grn_reg[8] ),
        .\iv_reg[7] (\iv_reg[7] ),
        .out({gr00[15:12],gr00[8],gr00[6:4],gr00[2:0]}),
        .\sr_reg[6] (\sr_reg[6]_0 ),
        .\sr_reg[6]_0 (\sr_reg[6]_1 ),
        .\sr_reg[6]_1 (\sr_reg[6]_4 ),
        .\tnsn_dsp_a[0] (tnsn_dsp_a_0_sn_1),
        .\tnsn_dsp_a[0]_0 (\tnsn_dsp_a[0]_0 ),
        .\tnsn_dsp_a[1] (tnsn_dsp_a_1_sn_1),
        .\tnsn_dsp_a[1]_0 (\tnsn_dsp_a[1]_0 ),
        .\tnsn_dsp_a[2] (tnsn_dsp_a_2_sn_1),
        .\tnsn_dsp_a[2]_0 (\tnsn_dsp_a[2]_0 ),
        .\tnsn_dsp_a[4] (tnsn_dsp_a_4_sn_1),
        .\tnsn_dsp_a[4]_0 (\tnsn_dsp_a[4]_0 ),
        .\tnsn_dsp_a[5] (tnsn_dsp_a_5_sn_1),
        .\tnsn_dsp_a[5]_0 (\tnsn_dsp_a[5]_0 ),
        .\tnsn_dsp_a[6] (tnsn_dsp_a_6_sn_1),
        .\tnsn_dsp_a[6]_0 (\tnsn_dsp_a[6]_0 ),
        .\tnsn_dsp_a[7]_INST_0_i_2 (\tnsn_dsp_a[7]_INST_0_i_2 ));
  tnsn_rgf_grn_1 grn02
       (.D(D),
        .Q(gr02),
        .SR(rst_n_0),
        .clk(clk),
        .\grn_reg[8]_0 (\grn_reg[8]_0 ));
  tnsn_rgf_grn_2 grn03
       (.D(D),
        .Q(gr03),
        .SR(rst_n_0),
        .clk(clk),
        .\grn_reg[8]_0 (\grn_reg[8]_1 ));
  tnsn_rgf_grn_3 grn04
       (.D(D),
        .Q(gr04),
        .SR(rst_n_0),
        .clk(clk),
        .\grn_reg[8]_0 (\grn_reg[8]_2 ));
  tnsn_rgf_grn_4 grn05
       (.D(D),
        .Q(gr05),
        .SR(rst_n_0),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_1 ));
  tnsn_rgf_grn_5 grn06
       (.D(D),
        .Q(gr06),
        .SR(rst_n_0),
        .clk(clk),
        .\grn_reg[8]_0 (\grn_reg[8]_3 ));
  tnsn_rgf_grn_6 grn07
       (.D(D),
        .Q(gr07),
        .SR(rst_n_0),
        .clk(clk),
        .\grn_reg[8]_0 (\grn_reg[8]_4 ),
        .rst_n(rst_n));
  LUT5 #(
    .INIT(32'hFF003535)) 
    \grn[3]_i_11 
       (.I0(\grn_reg[3]_2 ),
        .I1(\grn_reg[4] ),
        .I2(cbus1_carry__2[0]),
        .I3(\bdatw[8]_INST_0_i_1_3 ),
        .I4(\sr[4]_i_10 ),
        .O(\grn[6]_i_13 ));
  LUT3 #(
    .INIT(8'h35)) 
    \grn[4]_i_11 
       (.I0(\grn_reg[7] ),
        .I1(\grn_reg[6] ),
        .I2(cbus1_carry__2[0]),
        .O(\bdatw[8]_INST_0_i_1_0 ));
  LUT5 #(
    .INIT(32'h00FFACAC)) 
    \grn[4]_i_13 
       (.I0(\grn_reg[3]_2 ),
        .I1(\grn_reg[4] ),
        .I2(cbus1_carry__2[0]),
        .I3(\badr[2]_INST_0_i_1 ),
        .I4(\sr[4]_i_10 ),
        .O(\grn[6]_i_13_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \grn[6]_i_16 
       (.I0(\grn_reg[0] ),
        .I1(\grn[6]_i_9 ),
        .I2(cbus1_carry__2[0]),
        .O(\sr_reg[6] ));
  LUT6 #(
    .INIT(64'h003A003F003A0030)) 
    \grn[7]_i_18 
       (.I0(\grn[7]_i_27_n_0 ),
        .I1(\grn_reg[7] ),
        .I2(\grn[7]_i_8_0 [1]),
        .I3(\grn[7]_i_8_1 ),
        .I4(\grn[7]_i_8 ),
        .I5(\grn[7]_i_30_n_0 ),
        .O(\grn[7]_i_30_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \grn[7]_i_20 
       (.I0(\grn[7]_i_38 ),
        .I1(cbus1_carry__2[2]),
        .I2(\grn[4]_i_11_0 ),
        .I3(cbus1_carry__2[3]),
        .O(\bdatw[11]_INST_0_i_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \grn[7]_i_27 
       (.I0(\badr[0]_INST_0_i_1 ),
        .I1(\sr[4]_i_10 ),
        .I2(\sr_reg[6]_3 ),
        .O(\grn[7]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \grn[7]_i_30 
       (.I0(\bdatw[8]_INST_0_i_1_2 ),
        .I1(\sr[4]_i_10 ),
        .I2(\badr[2]_INST_0_i_1_0 ),
        .O(\grn[7]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h53FF5300)) 
    \grn[7]_i_32 
       (.I0(\grn_reg[0] ),
        .I1(\grn_reg[1] ),
        .I2(cbus1_carry__2[0]),
        .I3(\sr[4]_i_10 ),
        .I4(grn01_n_35),
        .O(\grn[7]_i_38 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \grn[7]_i_33 
       (.I0(\grn[7]_i_39_n_0 ),
        .I1(\sr[4]_i_10 ),
        .I2(\bdatw[8]_INST_0_i_1_0 ),
        .O(\grn[4]_i_11_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \grn[7]_i_34 
       (.I0(\grn_reg[1] ),
        .I1(cbus1_carry__2[0]),
        .I2(\grn_reg[0] ),
        .O(\badr[0]_INST_0_i_1 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \grn[7]_i_35 
       (.I0(\grn_reg[7] ),
        .I1(cbus1_carry__2[0]),
        .I2(\grn[6]_i_9 ),
        .O(\sr_reg[6]_3 ));
  LUT3 #(
    .INIT(8'h47)) 
    \grn[7]_i_37 
       (.I0(\grn_reg[3]_2 ),
        .I1(cbus1_carry__2[0]),
        .I2(\grn_reg[2] ),
        .O(\badr[2]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \grn[7]_i_39 
       (.I0(\grn_reg[5] ),
        .I1(\grn_reg[4] ),
        .I2(cbus1_carry__2[0]),
        .O(\grn[7]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sr[4]_i_24 
       (.I0(grn01_n_35),
        .I1(\grn[7]_i_39_n_0 ),
        .I2(\sr[4]_i_10_0 ),
        .I3(\bdatw[8]_INST_0_i_1_0 ),
        .I4(\sr[4]_i_10 ),
        .I5(\sr_reg[6]_1 ),
        .O(\sr_reg[6]_2 ));
  LUT6 #(
    .INIT(64'h1DC01DF3DDCCDDFF)) 
    \sr[4]_i_34 
       (.I0(\grn_reg[7] ),
        .I1(cbus1_carry__2[0]),
        .I2(cbus1_carry__2[3]),
        .I3(cbus1_carry__2[1]),
        .I4(\grn_reg[5] ),
        .I5(\grn_reg[6] ),
        .O(\badr[6]_INST_0_i_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[6]_i_6 
       (.I0(\grn[6]_i_13_0 ),
        .I1(cbus1_carry__2[2]),
        .O(\bdatw[10]_INST_0_i_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[0]_INST_0 
       (.I0(\grn_reg[0] ),
        .I1(\tnsn_dsp_a[7]_1 ),
        .O(tnsn_dsp_a[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[1]_INST_0 
       (.I0(\grn_reg[1] ),
        .I1(\tnsn_dsp_a[7]_1 ),
        .O(tnsn_dsp_a[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[2]_INST_0 
       (.I0(\grn_reg[2] ),
        .I1(\tnsn_dsp_a[7]_1 ),
        .O(tnsn_dsp_a[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[3]_INST_0 
       (.I0(\grn_reg[3]_2 ),
        .I1(\tnsn_dsp_a[7]_1 ),
        .O(tnsn_dsp_a[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[4]_INST_0 
       (.I0(\grn_reg[4] ),
        .I1(\tnsn_dsp_a[7]_1 ),
        .O(tnsn_dsp_a[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[5]_INST_0 
       (.I0(\grn_reg[5] ),
        .I1(\tnsn_dsp_a[7]_1 ),
        .O(tnsn_dsp_a[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[6]_INST_0 
       (.I0(\grn_reg[6] ),
        .I1(\tnsn_dsp_a[7]_1 ),
        .O(tnsn_dsp_a[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[7]_INST_0 
       (.I0(\grn_reg[7] ),
        .I1(\tnsn_dsp_a[7]_1 ),
        .O(tnsn_dsp_a[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[8]_INST_0 
       (.I0(\tnsn_dsp_b[8]_INST_0_i_1 ),
        .I1(tnsn_dsp_a_8_sn_1),
        .O(tnsn_dsp_a[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[8]_INST_0_i_1 
       (.I0(\grn_reg[7] ),
        .I1(\tnsn_dsp_a[8]_0 ),
        .O(\tnsn_dsp_b[8]_INST_0_i_1 ));
endmodule

module tnsn_rgf_grn
   (Q,
    SR,
    E,
    D,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [1:0]E;
  input [15:0]D;
  input clk;

  wire [15:0]D;
  wire [1:0]E;
  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;

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
   (\grn_reg[0]_0 ,
    \grn_reg[1]_0 ,
    \grn_reg[2]_0 ,
    \grn_reg[4]_0 ,
    \grn_reg[5]_0 ,
    \grn_reg[6]_0 ,
    abus_0,
    \grn_reg[12]_0 ,
    \grn_reg[13]_0 ,
    \grn_reg[14]_0 ,
    \grn_reg[15]_0 ,
    \grn_reg[0]_1 ,
    \grn_reg[1]_1 ,
    \grn_reg[2]_1 ,
    \grn_reg[12]_1 ,
    \grn_reg[13]_1 ,
    \grn_reg[14]_1 ,
    \grn_reg[15]_1 ,
    \grn_reg[0]_2 ,
    \grn_reg[1]_2 ,
    \grn_reg[2]_2 ,
    \grn[7]_i_28 ,
    \tnsn_dsp_a[7]_INST_0_i_2 ,
    \grn[6]_i_21_0 ,
    \bdatw[8]_INST_0_i_1 ,
    \badr[2]_INST_0_i_1_0 ,
    \sr_reg[6] ,
    \sr_reg[6]_0 ,
    \grn[7]_i_34 ,
    \bdatw[8]_INST_0_i_1_0 ,
    \grn[7]_i_39 ,
    \bdatw[8]_INST_0_i_1_1 ,
    \bdatw[8]_INST_0_i_1_2 ,
    \bdatw[8]_INST_0_i_1_3 ,
    \bdatw[8]_INST_0_i_1_4 ,
    \iv_reg[7] ,
    \bdatw[14]_INST_0_i_2 ,
    \grn[6]_i_13 ,
    \grn[6]_i_13_0 ,
    \sr_reg[6]_1 ,
    \grn[5]_i_17_0 ,
    \grn[6]_i_19_0 ,
    \grn[6]_i_20_0 ,
    \grn[7]_i_36_0 ,
    Q,
    \tnsn_dsp_a[0] ,
    \tnsn_dsp_a[0]_0 ,
    out,
    gr0_bus1,
    \bdatw[15]_INST_0_i_12 ,
    gr7_bus1,
    \tnsn_dsp_a[1] ,
    \tnsn_dsp_a[1]_0 ,
    \tnsn_dsp_a[2] ,
    \tnsn_dsp_a[2]_0 ,
    \tnsn_dsp_a[4] ,
    \tnsn_dsp_a[4]_0 ,
    \tnsn_dsp_a[5] ,
    \tnsn_dsp_a[5]_0 ,
    \tnsn_dsp_a[6] ,
    \tnsn_dsp_a[6]_0 ,
    \badr[8] ,
    \badr[8]_0 ,
    \badr[12] ,
    \badr[12]_0 ,
    \badr[13] ,
    \badr[13]_0 ,
    \badr[14] ,
    \badr[14]_0 ,
    \badr[15] ,
    \badr[15]_0 ,
    \bdatw[15]_INST_0_i_12_0 ,
    gr4_bus1,
    \bdatw[15]_INST_0_i_12_1 ,
    gr3_bus1,
    \bdatw[15]_INST_0_i_31_0 ,
    gr2_bus1,
    \bdatw[15]_INST_0_i_31_1 ,
    gr1_bus1,
    \bdatw[15]_INST_0_i_30_0 ,
    gr6_bus1,
    \bdatw[15]_INST_0_i_30_1 ,
    gr5_bus1,
    \bdatw[15]_INST_0_i_12_2 ,
    \bdatw[15]_INST_0_i_12_3 ,
    \bdatw[15]_INST_0_i_31_2 ,
    \bdatw[15]_INST_0_i_31_3 ,
    \bdatw[15]_INST_0_i_12_4 ,
    \bdatw[15]_INST_0_i_12_5 ,
    \bdatw[15]_INST_0_i_30_2 ,
    \bdatw[15]_INST_0_i_30_3 ,
    \grn[3]_i_5 ,
    \grn[3]_i_5_0 ,
    \grn[4]_i_16 ,
    \grn[3]_i_5_1 ,
    \grn[0]_i_7 ,
    \grn[3]_i_5_2 ,
    \grn[1]_i_9 ,
    \grn[0]_i_7_0 ,
    cbus1_carry__2,
    \grn[4]_i_7 ,
    \grn[5]_i_7 ,
    \grn[5]_i_7_0 ,
    \grn[5]_i_10 ,
    \grn[4]_i_16_0 ,
    \grn[4]_i_16_1 ,
    \grn[4]_i_16_2 ,
    \grn[4]_i_16_3 ,
    \grn[4]_i_16_4 ,
    \grn[3]_i_10 ,
    \grn[0]_i_6 ,
    \grn[0]_i_6_0 ,
    SR,
    \grn_reg[8]_0 ,
    D,
    clk);
  output \grn_reg[0]_0 ;
  output \grn_reg[1]_0 ;
  output \grn_reg[2]_0 ;
  output \grn_reg[4]_0 ;
  output \grn_reg[5]_0 ;
  output \grn_reg[6]_0 ;
  output [4:0]abus_0;
  output \grn_reg[12]_0 ;
  output \grn_reg[13]_0 ;
  output \grn_reg[14]_0 ;
  output \grn_reg[15]_0 ;
  output \grn_reg[0]_1 ;
  output \grn_reg[1]_1 ;
  output \grn_reg[2]_1 ;
  output \grn_reg[12]_1 ;
  output \grn_reg[13]_1 ;
  output \grn_reg[14]_1 ;
  output \grn_reg[15]_1 ;
  output \grn_reg[0]_2 ;
  output \grn_reg[1]_2 ;
  output \grn_reg[2]_2 ;
  output \grn[7]_i_28 ;
  output \tnsn_dsp_a[7]_INST_0_i_2 ;
  output \grn[6]_i_21_0 ;
  output \bdatw[8]_INST_0_i_1 ;
  output \badr[2]_INST_0_i_1_0 ;
  output \sr_reg[6] ;
  output \sr_reg[6]_0 ;
  output \grn[7]_i_34 ;
  output \bdatw[8]_INST_0_i_1_0 ;
  output \grn[7]_i_39 ;
  output \bdatw[8]_INST_0_i_1_1 ;
  output \bdatw[8]_INST_0_i_1_2 ;
  output \bdatw[8]_INST_0_i_1_3 ;
  output \bdatw[8]_INST_0_i_1_4 ;
  output \iv_reg[7] ;
  output [2:0]\bdatw[14]_INST_0_i_2 ;
  output \grn[6]_i_13 ;
  output \grn[6]_i_13_0 ;
  output \sr_reg[6]_1 ;
  output \grn[5]_i_17_0 ;
  output \grn[6]_i_19_0 ;
  output \grn[6]_i_20_0 ;
  output \grn[7]_i_36_0 ;
  output [15:0]Q;
  input \tnsn_dsp_a[0] ;
  input \tnsn_dsp_a[0]_0 ;
  input [10:0]out;
  input gr0_bus1;
  input [10:0]\bdatw[15]_INST_0_i_12 ;
  input gr7_bus1;
  input \tnsn_dsp_a[1] ;
  input \tnsn_dsp_a[1]_0 ;
  input \tnsn_dsp_a[2] ;
  input \tnsn_dsp_a[2]_0 ;
  input \tnsn_dsp_a[4] ;
  input \tnsn_dsp_a[4]_0 ;
  input \tnsn_dsp_a[5] ;
  input \tnsn_dsp_a[5]_0 ;
  input \tnsn_dsp_a[6] ;
  input \tnsn_dsp_a[6]_0 ;
  input \badr[8] ;
  input \badr[8]_0 ;
  input \badr[12] ;
  input \badr[12]_0 ;
  input \badr[13] ;
  input \badr[13]_0 ;
  input \badr[14] ;
  input \badr[14]_0 ;
  input \badr[15] ;
  input \badr[15]_0 ;
  input [10:0]\bdatw[15]_INST_0_i_12_0 ;
  input gr4_bus1;
  input [10:0]\bdatw[15]_INST_0_i_12_1 ;
  input gr3_bus1;
  input [10:0]\bdatw[15]_INST_0_i_31_0 ;
  input gr2_bus1;
  input [10:0]\bdatw[15]_INST_0_i_31_1 ;
  input gr1_bus1;
  input [10:0]\bdatw[15]_INST_0_i_30_0 ;
  input gr6_bus1;
  input [10:0]\bdatw[15]_INST_0_i_30_1 ;
  input gr5_bus1;
  input \bdatw[15]_INST_0_i_12_2 ;
  input \bdatw[15]_INST_0_i_12_3 ;
  input \bdatw[15]_INST_0_i_31_2 ;
  input \bdatw[15]_INST_0_i_31_3 ;
  input \bdatw[15]_INST_0_i_12_4 ;
  input \bdatw[15]_INST_0_i_12_5 ;
  input \bdatw[15]_INST_0_i_30_2 ;
  input \bdatw[15]_INST_0_i_30_3 ;
  input \grn[3]_i_5 ;
  input \grn[3]_i_5_0 ;
  input [1:0]\grn[4]_i_16 ;
  input \grn[3]_i_5_1 ;
  input \grn[0]_i_7 ;
  input \grn[3]_i_5_2 ;
  input \grn[1]_i_9 ;
  input \grn[0]_i_7_0 ;
  input [3:0]cbus1_carry__2;
  input [0:0]\grn[4]_i_7 ;
  input \grn[5]_i_7 ;
  input \grn[5]_i_7_0 ;
  input \grn[5]_i_10 ;
  input \grn[4]_i_16_0 ;
  input \grn[4]_i_16_1 ;
  input \grn[4]_i_16_2 ;
  input \grn[4]_i_16_3 ;
  input \grn[4]_i_16_4 ;
  input \grn[3]_i_10 ;
  input \grn[0]_i_6 ;
  input \grn[0]_i_6_0 ;
  input [0:0]SR;
  input [1:0]\grn_reg[8]_0 ;
  input [15:0]D;
  input clk;

  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire [4:0]abus_0;
  wire \badr[0]_INST_0_i_2_n_0 ;
  wire \badr[0]_INST_0_i_3_n_0 ;
  wire \badr[0]_INST_0_i_4_n_0 ;
  wire \badr[0]_INST_0_i_5_n_0 ;
  wire \badr[12] ;
  wire \badr[12]_0 ;
  wire \badr[12]_INST_0_i_2_n_0 ;
  wire \badr[12]_INST_0_i_3_n_0 ;
  wire \badr[12]_INST_0_i_4_n_0 ;
  wire \badr[12]_INST_0_i_5_n_0 ;
  wire \badr[13] ;
  wire \badr[13]_0 ;
  wire \badr[13]_INST_0_i_2_n_0 ;
  wire \badr[13]_INST_0_i_3_n_0 ;
  wire \badr[13]_INST_0_i_4_n_0 ;
  wire \badr[13]_INST_0_i_5_n_0 ;
  wire \badr[14] ;
  wire \badr[14]_0 ;
  wire \badr[14]_INST_0_i_2_n_0 ;
  wire \badr[14]_INST_0_i_3_n_0 ;
  wire \badr[14]_INST_0_i_4_n_0 ;
  wire \badr[14]_INST_0_i_5_n_0 ;
  wire \badr[15] ;
  wire \badr[15]_0 ;
  wire \badr[15]_INST_0_i_2_n_0 ;
  wire \badr[15]_INST_0_i_3_n_0 ;
  wire \badr[15]_INST_0_i_4_n_0 ;
  wire \badr[15]_INST_0_i_5_n_0 ;
  wire \badr[1]_INST_0_i_2_n_0 ;
  wire \badr[1]_INST_0_i_3_n_0 ;
  wire \badr[1]_INST_0_i_4_n_0 ;
  wire \badr[1]_INST_0_i_5_n_0 ;
  wire \badr[2]_INST_0_i_1_0 ;
  wire \badr[2]_INST_0_i_2_n_0 ;
  wire \badr[2]_INST_0_i_3_n_0 ;
  wire \badr[2]_INST_0_i_4_n_0 ;
  wire \badr[2]_INST_0_i_5_n_0 ;
  wire \badr[4]_INST_0_i_2_n_0 ;
  wire \badr[4]_INST_0_i_3_n_0 ;
  wire \badr[4]_INST_0_i_4_n_0 ;
  wire \badr[4]_INST_0_i_5_n_0 ;
  wire \badr[5]_INST_0_i_2_n_0 ;
  wire \badr[5]_INST_0_i_3_n_0 ;
  wire \badr[5]_INST_0_i_4_n_0 ;
  wire \badr[5]_INST_0_i_5_n_0 ;
  wire \badr[6]_INST_0_i_2_n_0 ;
  wire \badr[6]_INST_0_i_3_n_0 ;
  wire \badr[6]_INST_0_i_4_n_0 ;
  wire \badr[6]_INST_0_i_5_n_0 ;
  wire \badr[8] ;
  wire \badr[8]_0 ;
  wire \badr[8]_INST_0_i_2_n_0 ;
  wire \badr[8]_INST_0_i_3_n_0 ;
  wire \badr[8]_INST_0_i_4_n_0 ;
  wire \badr[8]_INST_0_i_5_n_0 ;
  wire \bdatw[12]_INST_0_i_17_n_0 ;
  wire \bdatw[12]_INST_0_i_18_n_0 ;
  wire \bdatw[13]_INST_0_i_17_n_0 ;
  wire \bdatw[13]_INST_0_i_18_n_0 ;
  wire \bdatw[14]_INST_0_i_17_n_0 ;
  wire \bdatw[14]_INST_0_i_18_n_0 ;
  wire [2:0]\bdatw[14]_INST_0_i_2 ;
  wire [10:0]\bdatw[15]_INST_0_i_12 ;
  wire [10:0]\bdatw[15]_INST_0_i_12_0 ;
  wire [10:0]\bdatw[15]_INST_0_i_12_1 ;
  wire \bdatw[15]_INST_0_i_12_2 ;
  wire \bdatw[15]_INST_0_i_12_3 ;
  wire \bdatw[15]_INST_0_i_12_4 ;
  wire \bdatw[15]_INST_0_i_12_5 ;
  wire [10:0]\bdatw[15]_INST_0_i_30_0 ;
  wire [10:0]\bdatw[15]_INST_0_i_30_1 ;
  wire \bdatw[15]_INST_0_i_30_2 ;
  wire \bdatw[15]_INST_0_i_30_3 ;
  wire [10:0]\bdatw[15]_INST_0_i_31_0 ;
  wire [10:0]\bdatw[15]_INST_0_i_31_1 ;
  wire \bdatw[15]_INST_0_i_31_2 ;
  wire \bdatw[15]_INST_0_i_31_3 ;
  wire \bdatw[15]_INST_0_i_52_n_0 ;
  wire \bdatw[15]_INST_0_i_53_n_0 ;
  wire \bdatw[8]_INST_0_i_1 ;
  wire \bdatw[8]_INST_0_i_1_0 ;
  wire \bdatw[8]_INST_0_i_1_1 ;
  wire \bdatw[8]_INST_0_i_1_2 ;
  wire \bdatw[8]_INST_0_i_1_3 ;
  wire \bdatw[8]_INST_0_i_1_4 ;
  wire [3:0]cbus1_carry__2;
  wire clk;
  wire gr0_bus1;
  wire gr1_bus1;
  wire gr2_bus1;
  wire gr3_bus1;
  wire gr4_bus1;
  wire gr5_bus1;
  wire gr6_bus1;
  wire gr7_bus1;
  wire \grn[0]_i_6 ;
  wire \grn[0]_i_6_0 ;
  wire \grn[0]_i_7 ;
  wire \grn[0]_i_7_0 ;
  wire \grn[1]_i_9 ;
  wire \grn[3]_i_10 ;
  wire \grn[3]_i_5 ;
  wire \grn[3]_i_5_0 ;
  wire \grn[3]_i_5_1 ;
  wire \grn[3]_i_5_2 ;
  wire [1:0]\grn[4]_i_16 ;
  wire \grn[4]_i_16_0 ;
  wire \grn[4]_i_16_1 ;
  wire \grn[4]_i_16_2 ;
  wire \grn[4]_i_16_3 ;
  wire \grn[4]_i_16_4 ;
  wire [0:0]\grn[4]_i_7 ;
  wire \grn[5]_i_10 ;
  wire \grn[5]_i_17_0 ;
  wire \grn[5]_i_7 ;
  wire \grn[5]_i_7_0 ;
  wire \grn[6]_i_13 ;
  wire \grn[6]_i_13_0 ;
  wire \grn[6]_i_19_0 ;
  wire \grn[6]_i_20_0 ;
  wire \grn[6]_i_21_0 ;
  wire \grn[7]_i_28 ;
  wire \grn[7]_i_34 ;
  wire \grn[7]_i_36_0 ;
  wire \grn[7]_i_39 ;
  wire \grn_reg[0]_0 ;
  wire \grn_reg[0]_1 ;
  wire \grn_reg[0]_2 ;
  wire \grn_reg[12]_0 ;
  wire \grn_reg[12]_1 ;
  wire \grn_reg[13]_0 ;
  wire \grn_reg[13]_1 ;
  wire \grn_reg[14]_0 ;
  wire \grn_reg[14]_1 ;
  wire \grn_reg[15]_0 ;
  wire \grn_reg[15]_1 ;
  wire \grn_reg[1]_0 ;
  wire \grn_reg[1]_1 ;
  wire \grn_reg[1]_2 ;
  wire \grn_reg[2]_0 ;
  wire \grn_reg[2]_1 ;
  wire \grn_reg[2]_2 ;
  wire \grn_reg[4]_0 ;
  wire \grn_reg[5]_0 ;
  wire \grn_reg[6]_0 ;
  wire [1:0]\grn_reg[8]_0 ;
  wire \iv_reg[7] ;
  wire [10:0]out;
  wire \sr_reg[6] ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[6]_1 ;
  wire \tnsn_dsp_a[0] ;
  wire \tnsn_dsp_a[0]_0 ;
  wire \tnsn_dsp_a[1] ;
  wire \tnsn_dsp_a[1]_0 ;
  wire \tnsn_dsp_a[2] ;
  wire \tnsn_dsp_a[2]_0 ;
  wire \tnsn_dsp_a[4] ;
  wire \tnsn_dsp_a[4]_0 ;
  wire \tnsn_dsp_a[5] ;
  wire \tnsn_dsp_a[5]_0 ;
  wire \tnsn_dsp_a[6] ;
  wire \tnsn_dsp_a[6]_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_2 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[0]_INST_0_i_1 
       (.I0(\badr[0]_INST_0_i_2_n_0 ),
        .I1(\badr[0]_INST_0_i_3_n_0 ),
        .I2(\badr[0]_INST_0_i_4_n_0 ),
        .I3(\badr[0]_INST_0_i_5_n_0 ),
        .I4(\tnsn_dsp_a[0] ),
        .I5(\tnsn_dsp_a[0]_0 ),
        .O(\grn_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_12_0 [0]),
        .I1(gr4_bus1),
        .I2(\bdatw[15]_INST_0_i_12_1 [0]),
        .I3(gr3_bus1),
        .O(\badr[0]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_31_0 [0]),
        .I1(gr2_bus1),
        .I2(\bdatw[15]_INST_0_i_31_1 [0]),
        .I3(gr1_bus1),
        .O(\badr[0]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_4 
       (.I0(out[0]),
        .I1(gr0_bus1),
        .I2(\bdatw[15]_INST_0_i_12 [0]),
        .I3(gr7_bus1),
        .O(\badr[0]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_30_0 [0]),
        .I1(gr6_bus1),
        .I2(\bdatw[15]_INST_0_i_30_1 [0]),
        .I3(gr5_bus1),
        .O(\badr[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[12]_INST_0_i_1 
       (.I0(\badr[12]_INST_0_i_2_n_0 ),
        .I1(\badr[12]_INST_0_i_3_n_0 ),
        .I2(\badr[12]_INST_0_i_4_n_0 ),
        .I3(\badr[12]_INST_0_i_5_n_0 ),
        .I4(\badr[12] ),
        .I5(\badr[12]_0 ),
        .O(abus_0[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_12_0 [7]),
        .I1(gr4_bus1),
        .I2(\bdatw[15]_INST_0_i_12_1 [7]),
        .I3(gr3_bus1),
        .O(\badr[12]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_31_0 [7]),
        .I1(gr2_bus1),
        .I2(\bdatw[15]_INST_0_i_31_1 [7]),
        .I3(gr1_bus1),
        .O(\badr[12]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_4 
       (.I0(out[7]),
        .I1(gr0_bus1),
        .I2(\bdatw[15]_INST_0_i_12 [7]),
        .I3(gr7_bus1),
        .O(\badr[12]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_30_0 [7]),
        .I1(gr6_bus1),
        .I2(\bdatw[15]_INST_0_i_30_1 [7]),
        .I3(gr5_bus1),
        .O(\badr[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[13]_INST_0_i_1 
       (.I0(\badr[13]_INST_0_i_2_n_0 ),
        .I1(\badr[13]_INST_0_i_3_n_0 ),
        .I2(\badr[13]_INST_0_i_4_n_0 ),
        .I3(\badr[13]_INST_0_i_5_n_0 ),
        .I4(\badr[13] ),
        .I5(\badr[13]_0 ),
        .O(abus_0[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_12_0 [8]),
        .I1(gr4_bus1),
        .I2(\bdatw[15]_INST_0_i_12_1 [8]),
        .I3(gr3_bus1),
        .O(\badr[13]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_31_0 [8]),
        .I1(gr2_bus1),
        .I2(\bdatw[15]_INST_0_i_31_1 [8]),
        .I3(gr1_bus1),
        .O(\badr[13]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_4 
       (.I0(out[8]),
        .I1(gr0_bus1),
        .I2(\bdatw[15]_INST_0_i_12 [8]),
        .I3(gr7_bus1),
        .O(\badr[13]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_30_0 [8]),
        .I1(gr6_bus1),
        .I2(\bdatw[15]_INST_0_i_30_1 [8]),
        .I3(gr5_bus1),
        .O(\badr[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[14]_INST_0_i_1 
       (.I0(\badr[14]_INST_0_i_2_n_0 ),
        .I1(\badr[14]_INST_0_i_3_n_0 ),
        .I2(\badr[14]_INST_0_i_4_n_0 ),
        .I3(\badr[14]_INST_0_i_5_n_0 ),
        .I4(\badr[14] ),
        .I5(\badr[14]_0 ),
        .O(abus_0[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_12_0 [9]),
        .I1(gr4_bus1),
        .I2(\bdatw[15]_INST_0_i_12_1 [9]),
        .I3(gr3_bus1),
        .O(\badr[14]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_31_0 [9]),
        .I1(gr2_bus1),
        .I2(\bdatw[15]_INST_0_i_31_1 [9]),
        .I3(gr1_bus1),
        .O(\badr[14]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_4 
       (.I0(out[9]),
        .I1(gr0_bus1),
        .I2(\bdatw[15]_INST_0_i_12 [9]),
        .I3(gr7_bus1),
        .O(\badr[14]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_30_0 [9]),
        .I1(gr6_bus1),
        .I2(\bdatw[15]_INST_0_i_30_1 [9]),
        .I3(gr5_bus1),
        .O(\badr[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_1 
       (.I0(\badr[15]_INST_0_i_2_n_0 ),
        .I1(\badr[15]_INST_0_i_3_n_0 ),
        .I2(\badr[15]_INST_0_i_4_n_0 ),
        .I3(\badr[15]_INST_0_i_5_n_0 ),
        .I4(\badr[15] ),
        .I5(\badr[15]_0 ),
        .O(abus_0[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_12_0 [10]),
        .I1(gr4_bus1),
        .I2(\bdatw[15]_INST_0_i_12_1 [10]),
        .I3(gr3_bus1),
        .O(\badr[15]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_31_0 [10]),
        .I1(gr2_bus1),
        .I2(\bdatw[15]_INST_0_i_31_1 [10]),
        .I3(gr1_bus1),
        .O(\badr[15]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_4 
       (.I0(out[10]),
        .I1(gr0_bus1),
        .I2(\bdatw[15]_INST_0_i_12 [10]),
        .I3(gr7_bus1),
        .O(\badr[15]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_30_0 [10]),
        .I1(gr6_bus1),
        .I2(\bdatw[15]_INST_0_i_30_1 [10]),
        .I3(gr5_bus1),
        .O(\badr[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[1]_INST_0_i_1 
       (.I0(\badr[1]_INST_0_i_2_n_0 ),
        .I1(\badr[1]_INST_0_i_3_n_0 ),
        .I2(\badr[1]_INST_0_i_4_n_0 ),
        .I3(\badr[1]_INST_0_i_5_n_0 ),
        .I4(\tnsn_dsp_a[1] ),
        .I5(\tnsn_dsp_a[1]_0 ),
        .O(\grn_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_12_0 [1]),
        .I1(gr4_bus1),
        .I2(\bdatw[15]_INST_0_i_12_1 [1]),
        .I3(gr3_bus1),
        .O(\badr[1]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_31_0 [1]),
        .I1(gr2_bus1),
        .I2(\bdatw[15]_INST_0_i_31_1 [1]),
        .I3(gr1_bus1),
        .O(\badr[1]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_4 
       (.I0(out[1]),
        .I1(gr0_bus1),
        .I2(\bdatw[15]_INST_0_i_12 [1]),
        .I3(gr7_bus1),
        .O(\badr[1]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_30_0 [1]),
        .I1(gr6_bus1),
        .I2(\bdatw[15]_INST_0_i_30_1 [1]),
        .I3(gr5_bus1),
        .O(\badr[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[2]_INST_0_i_1 
       (.I0(\badr[2]_INST_0_i_2_n_0 ),
        .I1(\badr[2]_INST_0_i_3_n_0 ),
        .I2(\badr[2]_INST_0_i_4_n_0 ),
        .I3(\badr[2]_INST_0_i_5_n_0 ),
        .I4(\tnsn_dsp_a[2] ),
        .I5(\tnsn_dsp_a[2]_0 ),
        .O(\grn_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_12_0 [2]),
        .I1(gr4_bus1),
        .I2(\bdatw[15]_INST_0_i_12_1 [2]),
        .I3(gr3_bus1),
        .O(\badr[2]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_31_0 [2]),
        .I1(gr2_bus1),
        .I2(\bdatw[15]_INST_0_i_31_1 [2]),
        .I3(gr1_bus1),
        .O(\badr[2]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_4 
       (.I0(out[2]),
        .I1(gr0_bus1),
        .I2(\bdatw[15]_INST_0_i_12 [2]),
        .I3(gr7_bus1),
        .O(\badr[2]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_30_0 [2]),
        .I1(gr6_bus1),
        .I2(\bdatw[15]_INST_0_i_30_1 [2]),
        .I3(gr5_bus1),
        .O(\badr[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[4]_INST_0_i_1 
       (.I0(\badr[4]_INST_0_i_2_n_0 ),
        .I1(\badr[4]_INST_0_i_3_n_0 ),
        .I2(\badr[4]_INST_0_i_4_n_0 ),
        .I3(\badr[4]_INST_0_i_5_n_0 ),
        .I4(\tnsn_dsp_a[4] ),
        .I5(\tnsn_dsp_a[4]_0 ),
        .O(\grn_reg[4]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_12_0 [3]),
        .I1(gr4_bus1),
        .I2(\bdatw[15]_INST_0_i_12_1 [3]),
        .I3(gr3_bus1),
        .O(\badr[4]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_31_0 [3]),
        .I1(gr2_bus1),
        .I2(\bdatw[15]_INST_0_i_31_1 [3]),
        .I3(gr1_bus1),
        .O(\badr[4]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_4 
       (.I0(out[3]),
        .I1(gr0_bus1),
        .I2(\bdatw[15]_INST_0_i_12 [3]),
        .I3(gr7_bus1),
        .O(\badr[4]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_30_0 [3]),
        .I1(gr6_bus1),
        .I2(\bdatw[15]_INST_0_i_30_1 [3]),
        .I3(gr5_bus1),
        .O(\badr[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[5]_INST_0_i_1 
       (.I0(\badr[5]_INST_0_i_2_n_0 ),
        .I1(\badr[5]_INST_0_i_3_n_0 ),
        .I2(\badr[5]_INST_0_i_4_n_0 ),
        .I3(\badr[5]_INST_0_i_5_n_0 ),
        .I4(\tnsn_dsp_a[5] ),
        .I5(\tnsn_dsp_a[5]_0 ),
        .O(\grn_reg[5]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_12_0 [4]),
        .I1(gr4_bus1),
        .I2(\bdatw[15]_INST_0_i_12_1 [4]),
        .I3(gr3_bus1),
        .O(\badr[5]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_31_0 [4]),
        .I1(gr2_bus1),
        .I2(\bdatw[15]_INST_0_i_31_1 [4]),
        .I3(gr1_bus1),
        .O(\badr[5]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_4 
       (.I0(out[4]),
        .I1(gr0_bus1),
        .I2(\bdatw[15]_INST_0_i_12 [4]),
        .I3(gr7_bus1),
        .O(\badr[5]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_30_0 [4]),
        .I1(gr6_bus1),
        .I2(\bdatw[15]_INST_0_i_30_1 [4]),
        .I3(gr5_bus1),
        .O(\badr[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[6]_INST_0_i_1 
       (.I0(\badr[6]_INST_0_i_2_n_0 ),
        .I1(\badr[6]_INST_0_i_3_n_0 ),
        .I2(\badr[6]_INST_0_i_4_n_0 ),
        .I3(\badr[6]_INST_0_i_5_n_0 ),
        .I4(\tnsn_dsp_a[6] ),
        .I5(\tnsn_dsp_a[6]_0 ),
        .O(\grn_reg[6]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_12_0 [5]),
        .I1(gr4_bus1),
        .I2(\bdatw[15]_INST_0_i_12_1 [5]),
        .I3(gr3_bus1),
        .O(\badr[6]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_31_0 [5]),
        .I1(gr2_bus1),
        .I2(\bdatw[15]_INST_0_i_31_1 [5]),
        .I3(gr1_bus1),
        .O(\badr[6]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_4 
       (.I0(out[5]),
        .I1(gr0_bus1),
        .I2(\bdatw[15]_INST_0_i_12 [5]),
        .I3(gr7_bus1),
        .O(\badr[6]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_30_0 [5]),
        .I1(gr6_bus1),
        .I2(\bdatw[15]_INST_0_i_30_1 [5]),
        .I3(gr5_bus1),
        .O(\badr[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[8]_INST_0_i_1 
       (.I0(\badr[8]_INST_0_i_2_n_0 ),
        .I1(\badr[8]_INST_0_i_3_n_0 ),
        .I2(\badr[8]_INST_0_i_4_n_0 ),
        .I3(\badr[8]_INST_0_i_5_n_0 ),
        .I4(\badr[8] ),
        .I5(\badr[8]_0 ),
        .O(abus_0[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_12_0 [6]),
        .I1(gr4_bus1),
        .I2(\bdatw[15]_INST_0_i_12_1 [6]),
        .I3(gr3_bus1),
        .O(\badr[8]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_31_0 [6]),
        .I1(gr2_bus1),
        .I2(\bdatw[15]_INST_0_i_31_1 [6]),
        .I3(gr1_bus1),
        .O(\badr[8]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_4 
       (.I0(out[6]),
        .I1(gr0_bus1),
        .I2(\bdatw[15]_INST_0_i_12 [6]),
        .I3(gr7_bus1),
        .O(\badr[8]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_30_0 [6]),
        .I1(gr6_bus1),
        .I2(\bdatw[15]_INST_0_i_30_1 [6]),
        .I3(gr5_bus1),
        .O(\badr[8]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_5 
       (.I0(out[2]),
        .I1(\bdatw[15]_INST_0_i_12_4 ),
        .I2(\bdatw[15]_INST_0_i_12 [2]),
        .I3(\bdatw[15]_INST_0_i_12_5 ),
        .O(\grn_reg[2]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_30_0 [2]),
        .I1(\bdatw[15]_INST_0_i_30_2 ),
        .I2(\bdatw[15]_INST_0_i_30_1 [2]),
        .I3(\bdatw[15]_INST_0_i_30_3 ),
        .O(\grn_reg[2]_2 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatw[12]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_12_5 ),
        .I1(\bdatw[15]_INST_0_i_12 [7]),
        .I2(\bdatw[15]_INST_0_i_12_4 ),
        .I3(out[7]),
        .I4(\bdatw[12]_INST_0_i_17_n_0 ),
        .O(\grn_reg[12]_1 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatw[12]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_12_2 ),
        .I1(\bdatw[15]_INST_0_i_12_1 [7]),
        .I2(\bdatw[15]_INST_0_i_12_3 ),
        .I3(\bdatw[15]_INST_0_i_12_0 [7]),
        .I4(\bdatw[12]_INST_0_i_18_n_0 ),
        .O(\grn_reg[12]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_30_0 [7]),
        .I1(\bdatw[15]_INST_0_i_30_2 ),
        .I2(\bdatw[15]_INST_0_i_30_1 [7]),
        .I3(\bdatw[15]_INST_0_i_30_3 ),
        .O(\bdatw[12]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_31_0 [7]),
        .I1(\bdatw[15]_INST_0_i_31_2 ),
        .I2(\bdatw[15]_INST_0_i_31_1 [7]),
        .I3(\bdatw[15]_INST_0_i_31_3 ),
        .O(\bdatw[12]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatw[13]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_12_5 ),
        .I1(\bdatw[15]_INST_0_i_12 [8]),
        .I2(\bdatw[15]_INST_0_i_12_4 ),
        .I3(out[8]),
        .I4(\bdatw[13]_INST_0_i_17_n_0 ),
        .O(\grn_reg[13]_1 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatw[13]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_12_2 ),
        .I1(\bdatw[15]_INST_0_i_12_1 [8]),
        .I2(\bdatw[15]_INST_0_i_12_3 ),
        .I3(\bdatw[15]_INST_0_i_12_0 [8]),
        .I4(\bdatw[13]_INST_0_i_18_n_0 ),
        .O(\grn_reg[13]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_30_0 [8]),
        .I1(\bdatw[15]_INST_0_i_30_2 ),
        .I2(\bdatw[15]_INST_0_i_30_1 [8]),
        .I3(\bdatw[15]_INST_0_i_30_3 ),
        .O(\bdatw[13]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_31_0 [8]),
        .I1(\bdatw[15]_INST_0_i_31_2 ),
        .I2(\bdatw[15]_INST_0_i_31_1 [8]),
        .I3(\bdatw[15]_INST_0_i_31_3 ),
        .O(\bdatw[13]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatw[14]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_12_5 ),
        .I1(\bdatw[15]_INST_0_i_12 [9]),
        .I2(\bdatw[15]_INST_0_i_12_4 ),
        .I3(out[9]),
        .I4(\bdatw[14]_INST_0_i_17_n_0 ),
        .O(\grn_reg[14]_1 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatw[14]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_12_2 ),
        .I1(\bdatw[15]_INST_0_i_12_1 [9]),
        .I2(\bdatw[15]_INST_0_i_12_3 ),
        .I3(\bdatw[15]_INST_0_i_12_0 [9]),
        .I4(\bdatw[14]_INST_0_i_18_n_0 ),
        .O(\grn_reg[14]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_30_0 [9]),
        .I1(\bdatw[15]_INST_0_i_30_2 ),
        .I2(\bdatw[15]_INST_0_i_30_1 [9]),
        .I3(\bdatw[15]_INST_0_i_30_3 ),
        .O(\bdatw[14]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_31_0 [9]),
        .I1(\bdatw[15]_INST_0_i_31_2 ),
        .I2(\bdatw[15]_INST_0_i_31_1 [9]),
        .I3(\bdatw[15]_INST_0_i_31_3 ),
        .O(\bdatw[14]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatw[15]_INST_0_i_30 
       (.I0(\bdatw[15]_INST_0_i_12_5 ),
        .I1(\bdatw[15]_INST_0_i_12 [10]),
        .I2(\bdatw[15]_INST_0_i_12_4 ),
        .I3(out[10]),
        .I4(\bdatw[15]_INST_0_i_52_n_0 ),
        .O(\grn_reg[15]_1 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatw[15]_INST_0_i_31 
       (.I0(\bdatw[15]_INST_0_i_12_2 ),
        .I1(\bdatw[15]_INST_0_i_12_1 [10]),
        .I2(\bdatw[15]_INST_0_i_12_3 ),
        .I3(\bdatw[15]_INST_0_i_12_0 [10]),
        .I4(\bdatw[15]_INST_0_i_53_n_0 ),
        .O(\grn_reg[15]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_52 
       (.I0(\bdatw[15]_INST_0_i_30_0 [10]),
        .I1(\bdatw[15]_INST_0_i_30_2 ),
        .I2(\bdatw[15]_INST_0_i_30_1 [10]),
        .I3(\bdatw[15]_INST_0_i_30_3 ),
        .O(\bdatw[15]_INST_0_i_52_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_53 
       (.I0(\bdatw[15]_INST_0_i_31_0 [10]),
        .I1(\bdatw[15]_INST_0_i_31_2 ),
        .I2(\bdatw[15]_INST_0_i_31_1 [10]),
        .I3(\bdatw[15]_INST_0_i_31_3 ),
        .O(\bdatw[15]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_5 
       (.I0(out[0]),
        .I1(\bdatw[15]_INST_0_i_12_4 ),
        .I2(\bdatw[15]_INST_0_i_12 [0]),
        .I3(\bdatw[15]_INST_0_i_12_5 ),
        .O(\grn_reg[0]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_30_0 [0]),
        .I1(\bdatw[15]_INST_0_i_30_2 ),
        .I2(\bdatw[15]_INST_0_i_30_1 [0]),
        .I3(\bdatw[15]_INST_0_i_30_3 ),
        .O(\grn_reg[0]_2 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_5 
       (.I0(out[1]),
        .I1(\bdatw[15]_INST_0_i_12_4 ),
        .I2(\bdatw[15]_INST_0_i_12 [1]),
        .I3(\bdatw[15]_INST_0_i_12_5 ),
        .O(\grn_reg[1]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_30_0 [1]),
        .I1(\bdatw[15]_INST_0_i_30_2 ),
        .I2(\bdatw[15]_INST_0_i_30_1 [1]),
        .I3(\bdatw[15]_INST_0_i_30_3 ),
        .O(\grn_reg[1]_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__2_i_2
       (.I0(abus_0[3]),
        .I1(cbus1_carry__2[3]),
        .O(\bdatw[14]_INST_0_i_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__2_i_3
       (.I0(abus_0[2]),
        .I1(cbus1_carry__2[2]),
        .O(\bdatw[14]_INST_0_i_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__2_i_4
       (.I0(abus_0[1]),
        .I1(cbus1_carry__2[1]),
        .O(\bdatw[14]_INST_0_i_2 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFB8FF00FFB8)) 
    \grn[0]_i_8 
       (.I0(\grn[0]_i_6 ),
        .I1(\grn[0]_i_7_0 ),
        .I2(\sr_reg[6]_0 ),
        .I3(\grn[0]_i_6_0 ),
        .I4(\grn[3]_i_10 ),
        .I5(\grn[7]_i_39 ),
        .O(\sr_reg[6]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[11]_i_7 
       (.I0(\grn[1]_i_9 ),
        .I1(\grn[4]_i_16 [0]),
        .O(\tnsn_dsp_a[7]_INST_0_i_2 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \grn[2]_i_11 
       (.I0(\sr_reg[6]_0 ),
        .I1(\grn[0]_i_7_0 ),
        .I2(\badr[2]_INST_0_i_1_0 ),
        .O(\sr_reg[6] ));
  LUT3 #(
    .INIT(8'h8B)) 
    \grn[2]_i_12 
       (.I0(\bdatw[8]_INST_0_i_1 ),
        .I1(\grn[0]_i_7_0 ),
        .I2(\badr[2]_INST_0_i_1_0 ),
        .O(\grn[6]_i_21_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF35FF00FF35)) 
    \grn[3]_i_12 
       (.I0(\grn[1]_i_9 ),
        .I1(\grn_reg[4]_0 ),
        .I2(cbus1_carry__2[0]),
        .I3(\grn[3]_i_10 ),
        .I4(\grn[0]_i_7_0 ),
        .I5(\bdatw[8]_INST_0_i_1_3 ),
        .O(\grn[5]_i_17_0 ));
  LUT6 #(
    .INIT(64'hFF53FF53FFFFFF00)) 
    \grn[3]_i_14 
       (.I0(\grn_reg[0]_0 ),
        .I1(\grn_reg[1]_0 ),
        .I2(cbus1_carry__2[0]),
        .I3(\grn[3]_i_10 ),
        .I4(\bdatw[8]_INST_0_i_1_1 ),
        .I5(\grn[0]_i_7_0 ),
        .O(\grn[6]_i_13 ));
  LUT6 #(
    .INIT(64'h000000008B88BBB8)) 
    \grn[3]_i_9 
       (.I0(\grn[3]_i_5 ),
        .I1(\grn[3]_i_5_0 ),
        .I2(\grn[4]_i_16 [1]),
        .I3(\grn[3]_i_5_1 ),
        .I4(\grn[0]_i_7 ),
        .I5(\grn[3]_i_5_2 ),
        .O(\grn[7]_i_28 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \grn[4]_i_12 
       (.I0(\grn_reg[0]_0 ),
        .I1(cbus1_carry__2[0]),
        .I2(\grn[4]_i_7 ),
        .O(\sr_reg[6]_0 ));
  LUT5 #(
    .INIT(32'h47FF4700)) 
    \grn[4]_i_14 
       (.I0(\grn[0]_i_7 ),
        .I1(cbus1_carry__2[0]),
        .I2(\grn_reg[6]_0 ),
        .I3(\grn[0]_i_7_0 ),
        .I4(\bdatw[8]_INST_0_i_1_2 ),
        .O(\grn[7]_i_36_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \grn[4]_i_19 
       (.I0(\grn[4]_i_16 [1]),
        .I1(\grn[4]_i_16_0 ),
        .I2(\grn[4]_i_16_1 ),
        .I3(\grn[4]_i_16_2 ),
        .I4(\grn[4]_i_16_3 ),
        .I5(\grn[4]_i_16_4 ),
        .O(\iv_reg[7] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \grn[5]_i_15 
       (.I0(\grn[5]_i_7 ),
        .I1(\grn[0]_i_7_0 ),
        .I2(\grn[5]_i_7_0 ),
        .O(\grn[7]_i_34 ));
  LUT3 #(
    .INIT(8'h35)) 
    \grn[5]_i_17 
       (.I0(\grn_reg[5]_0 ),
        .I1(\grn_reg[6]_0 ),
        .I2(cbus1_carry__2[0]),
        .O(\bdatw[8]_INST_0_i_1_3 ));
  LUT4 #(
    .INIT(16'hFF53)) 
    \grn[5]_i_18 
       (.I0(\grn_reg[0]_0 ),
        .I1(\grn_reg[1]_0 ),
        .I2(cbus1_carry__2[0]),
        .I3(\grn[0]_i_7_0 ),
        .O(\grn[6]_i_13_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \grn[5]_i_20 
       (.I0(\bdatw[8]_INST_0_i_1_1 ),
        .I1(\grn[0]_i_7_0 ),
        .I2(\grn[5]_i_10 ),
        .O(\grn[7]_i_39 ));
  LUT5 #(
    .INIT(32'h35FF3500)) 
    \grn[6]_i_14 
       (.I0(\grn[1]_i_9 ),
        .I1(\grn_reg[4]_0 ),
        .I2(cbus1_carry__2[0]),
        .I3(\grn[0]_i_7_0 ),
        .I4(\bdatw[8]_INST_0_i_1_0 ),
        .O(\grn[6]_i_19_0 ));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \grn[6]_i_17 
       (.I0(\grn[1]_i_9 ),
        .I1(\grn_reg[4]_0 ),
        .I2(cbus1_carry__2[0]),
        .I3(\grn[0]_i_7_0 ),
        .I4(\bdatw[8]_INST_0_i_1_4 ),
        .O(\grn[6]_i_20_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \grn[6]_i_19 
       (.I0(\grn_reg[1]_0 ),
        .I1(\grn_reg[2]_0 ),
        .I2(cbus1_carry__2[0]),
        .O(\bdatw[8]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \grn[6]_i_20 
       (.I0(\grn_reg[6]_0 ),
        .I1(\grn_reg[5]_0 ),
        .I2(cbus1_carry__2[0]),
        .O(\bdatw[8]_INST_0_i_1_4 ));
  LUT3 #(
    .INIT(8'h47)) 
    \grn[6]_i_21 
       (.I0(\grn_reg[1]_0 ),
        .I1(cbus1_carry__2[0]),
        .I2(\grn_reg[2]_0 ),
        .O(\badr[2]_INST_0_i_1_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[6]_i_23 
       (.I0(\grn_reg[0]_0 ),
        .I1(cbus1_carry__2[0]),
        .O(\bdatw[8]_INST_0_i_1 ));
  LUT3 #(
    .INIT(8'h53)) 
    \grn[7]_i_36 
       (.I0(\grn_reg[5]_0 ),
        .I1(\grn_reg[4]_0 ),
        .I2(cbus1_carry__2[0]),
        .O(\bdatw[8]_INST_0_i_1_2 ));
  LUT3 #(
    .INIT(8'h35)) 
    \grn[7]_i_38 
       (.I0(\grn[1]_i_9 ),
        .I1(\grn_reg[2]_0 ),
        .I2(cbus1_carry__2[0]),
        .O(\bdatw[8]_INST_0_i_1_1 ));
  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "tnsn_rgf_grn" *) 
module tnsn_rgf_grn_1
   (Q,
    SR,
    \grn_reg[8]_0 ,
    D,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [1:0]\grn_reg[8]_0 ;
  input [15:0]D;
  input clk;

  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [1:0]\grn_reg[8]_0 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "tnsn_rgf_grn" *) 
module tnsn_rgf_grn_2
   (Q,
    SR,
    \grn_reg[8]_0 ,
    D,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [1:0]\grn_reg[8]_0 ;
  input [15:0]D;
  input clk;

  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [1:0]\grn_reg[8]_0 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "tnsn_rgf_grn" *) 
module tnsn_rgf_grn_3
   (Q,
    SR,
    \grn_reg[8]_0 ,
    D,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [1:0]\grn_reg[8]_0 ;
  input [15:0]D;
  input clk;

  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [1:0]\grn_reg[8]_0 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
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
    \grn_reg[8]_0 ,
    D,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [1:0]\grn_reg[8]_0 ;
  input [15:0]D;
  input clk;

  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [1:0]\grn_reg[8]_0 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "tnsn_rgf_grn" *) 
module tnsn_rgf_grn_6
   (SR,
    Q,
    rst_n,
    \grn_reg[8]_0 ,
    D,
    clk);
  output [0:0]SR;
  output [15:0]Q;
  input rst_n;
  input [1:0]\grn_reg[8]_0 ;
  input [15:0]D;
  input clk;

  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [1:0]\grn_reg[8]_0 ;
  wire rst_n;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [0]),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[8]_0 [1]),
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
   (.out({iv[15],iv[14],iv[13],iv[12],iv[11],iv[10],iv[9],iv[8],iv[7],iv[6],iv[5],iv[4],iv[3],iv[2],iv[1],iv[0]}),
    \iv_reg[15]_0 ,
    \iv_reg[0]_0 ,
    D,
    clk);
  input \iv_reg[15]_0 ;
  input [0:0]\iv_reg[0]_0 ;
  input [15:0]D;
  input clk;
     output [15:0]iv;

  wire [15:0]D;
  wire clk;
  (* DONT_TOUCH *) wire [15:0]iv;
  wire [0:0]\iv_reg[0]_0 ;
  wire \iv_reg[15]_0 ;

  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[0] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[0]),
        .Q(iv[0]),
        .R(\iv_reg[15]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[10] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[10]),
        .Q(iv[10]),
        .R(\iv_reg[15]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[11] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[11]),
        .Q(iv[11]),
        .R(\iv_reg[15]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[12] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[12]),
        .Q(iv[12]),
        .R(\iv_reg[15]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[13] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[13]),
        .Q(iv[13]),
        .R(\iv_reg[15]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[14] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[14]),
        .Q(iv[14]),
        .R(\iv_reg[15]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[15] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[15]),
        .Q(iv[15]),
        .R(\iv_reg[15]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[1] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[1]),
        .Q(iv[1]),
        .R(\iv_reg[15]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[2] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[2]),
        .Q(iv[2]),
        .R(\iv_reg[15]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[3] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[3]),
        .Q(iv[3]),
        .R(\iv_reg[15]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[4] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[4]),
        .Q(iv[4]),
        .R(\iv_reg[15]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[5] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[5]),
        .Q(iv[5]),
        .R(\iv_reg[15]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[6] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[6]),
        .Q(iv[6]),
        .R(\iv_reg[15]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[7] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[7]),
        .Q(iv[7]),
        .R(\iv_reg[15]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[8] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[8]),
        .Q(iv[8]),
        .R(\iv_reg[15]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[9] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(D[9]),
        .Q(iv[9]),
        .R(\iv_reg[15]_0 ));
endmodule

module tnsn_rgf_pcnt
   (.out({pc[15],pc[14],pc[13],pc[12],pc[11],pc[10],pc[9],pc[8],pc[7],pc[6],pc[5],pc[4],pc[3],pc[2],pc[1],pc[0]}),
    \pc_reg[0]_0 ,
    \pc_reg[1]_0 ,
    \pc_reg[2]_0 ,
    \pc_reg[3]_0 ,
    \pc_reg[4]_0 ,
    \pc_reg[5]_0 ,
    \pc_reg[6]_0 ,
    \pc_reg[7]_0 ,
    \pc_reg[8]_0 ,
    \pc_reg[9]_0 ,
    \pc_reg[10]_0 ,
    \pc_reg[11]_0 ,
    \pc_reg[12]_0 ,
    \pc_reg[13]_0 ,
    \pc_reg[14]_0 ,
    \pc_reg[15]_0 ,
    \pc_reg[4]_1 ,
    \pc_reg[5]_1 ,
    \pc_reg[6]_1 ,
    \pc_reg[7]_1 ,
    fch_pc,
    abus_sel_cr,
    \badr[15]_INST_0_i_1 ,
    bbus_sel_cr,
    S,
    \pc_reg[15]_1 ,
    \pc_reg[15]_2 ,
    clk);
  output \pc_reg[0]_0 ;
  output \pc_reg[1]_0 ;
  output \pc_reg[2]_0 ;
  output \pc_reg[3]_0 ;
  output \pc_reg[4]_0 ;
  output \pc_reg[5]_0 ;
  output \pc_reg[6]_0 ;
  output \pc_reg[7]_0 ;
  output \pc_reg[8]_0 ;
  output \pc_reg[9]_0 ;
  output \pc_reg[10]_0 ;
  output \pc_reg[11]_0 ;
  output \pc_reg[12]_0 ;
  output \pc_reg[13]_0 ;
  output \pc_reg[14]_0 ;
  output \pc_reg[15]_0 ;
  output \pc_reg[4]_1 ;
  output \pc_reg[5]_1 ;
  output \pc_reg[6]_1 ;
  output \pc_reg[7]_1 ;
  output [15:0]fch_pc;
  input [1:0]abus_sel_cr;
  input [15:0]\badr[15]_INST_0_i_1 ;
  input [1:0]bbus_sel_cr;
  input [0:0]S;
  input \pc_reg[15]_1 ;
  input [15:0]\pc_reg[15]_2 ;
  input clk;
     output [15:0]pc;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]S;
  wire [1:0]abus_sel_cr;
  wire [15:0]\badr[15]_INST_0_i_1 ;
  wire [1:0]bbus_sel_cr;
  wire clk;
  wire [15:0]fch_pc;
  (* DONT_TOUCH *) wire [15:0]pc;
  wire \pc_reg[0]_0 ;
  wire \pc_reg[10]_0 ;
  wire \pc_reg[11]_0 ;
  wire \pc_reg[11]_i_2_n_0 ;
  wire \pc_reg[11]_i_2_n_1 ;
  wire \pc_reg[11]_i_2_n_2 ;
  wire \pc_reg[11]_i_2_n_3 ;
  wire \pc_reg[12]_0 ;
  wire \pc_reg[13]_0 ;
  wire \pc_reg[14]_0 ;
  wire \pc_reg[15]_0 ;
  wire \pc_reg[15]_1 ;
  wire [15:0]\pc_reg[15]_2 ;
  wire \pc_reg[15]_i_3_n_1 ;
  wire \pc_reg[15]_i_3_n_2 ;
  wire \pc_reg[15]_i_3_n_3 ;
  wire \pc_reg[1]_0 ;
  wire \pc_reg[2]_0 ;
  wire \pc_reg[3]_0 ;
  wire \pc_reg[3]_i_2_n_0 ;
  wire \pc_reg[3]_i_2_n_1 ;
  wire \pc_reg[3]_i_2_n_2 ;
  wire \pc_reg[3]_i_2_n_3 ;
  wire \pc_reg[4]_0 ;
  wire \pc_reg[4]_1 ;
  wire \pc_reg[5]_0 ;
  wire \pc_reg[5]_1 ;
  wire \pc_reg[6]_0 ;
  wire \pc_reg[6]_1 ;
  wire \pc_reg[7]_0 ;
  wire \pc_reg[7]_1 ;
  wire \pc_reg[7]_i_2_n_0 ;
  wire \pc_reg[7]_i_2_n_1 ;
  wire \pc_reg[7]_i_2_n_2 ;
  wire \pc_reg[7]_i_2_n_3 ;
  wire \pc_reg[8]_0 ;
  wire \pc_reg[9]_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_6 
       (.I0(pc[0]),
        .I1(abus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [0]),
        .I3(abus_sel_cr[0]),
        .O(\pc_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_6 
       (.I0(pc[10]),
        .I1(abus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [10]),
        .I3(abus_sel_cr[0]),
        .O(\pc_reg[10]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_6 
       (.I0(pc[11]),
        .I1(abus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [11]),
        .I3(abus_sel_cr[0]),
        .O(\pc_reg[11]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_6 
       (.I0(pc[12]),
        .I1(abus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [12]),
        .I3(abus_sel_cr[0]),
        .O(\pc_reg[12]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_6 
       (.I0(pc[13]),
        .I1(abus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [13]),
        .I3(abus_sel_cr[0]),
        .O(\pc_reg[13]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_6 
       (.I0(pc[14]),
        .I1(abus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [14]),
        .I3(abus_sel_cr[0]),
        .O(\pc_reg[14]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_6 
       (.I0(pc[15]),
        .I1(abus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [15]),
        .I3(abus_sel_cr[0]),
        .O(\pc_reg[15]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_6 
       (.I0(pc[1]),
        .I1(abus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [1]),
        .I3(abus_sel_cr[0]),
        .O(\pc_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_6 
       (.I0(pc[2]),
        .I1(abus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [2]),
        .I3(abus_sel_cr[0]),
        .O(\pc_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_6 
       (.I0(pc[3]),
        .I1(abus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [3]),
        .I3(abus_sel_cr[0]),
        .O(\pc_reg[3]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_6 
       (.I0(pc[4]),
        .I1(abus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [4]),
        .I3(abus_sel_cr[0]),
        .O(\pc_reg[4]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_6 
       (.I0(pc[5]),
        .I1(abus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [5]),
        .I3(abus_sel_cr[0]),
        .O(\pc_reg[5]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_6 
       (.I0(pc[6]),
        .I1(abus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [6]),
        .I3(abus_sel_cr[0]),
        .O(\pc_reg[6]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_6 
       (.I0(pc[7]),
        .I1(abus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [7]),
        .I3(abus_sel_cr[0]),
        .O(\pc_reg[7]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_6 
       (.I0(pc[8]),
        .I1(abus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [8]),
        .I3(abus_sel_cr[0]),
        .O(\pc_reg[8]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_6 
       (.I0(pc[9]),
        .I1(abus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [9]),
        .I3(abus_sel_cr[0]),
        .O(\pc_reg[9]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_11 
       (.I0(pc[4]),
        .I1(bbus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [4]),
        .I3(bbus_sel_cr[0]),
        .O(\pc_reg[4]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_11 
       (.I0(pc[5]),
        .I1(bbus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [5]),
        .I3(bbus_sel_cr[0]),
        .O(\pc_reg[5]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_11 
       (.I0(pc[6]),
        .I1(bbus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [6]),
        .I3(bbus_sel_cr[0]),
        .O(\pc_reg[6]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_20 
       (.I0(pc[7]),
        .I1(bbus_sel_cr[1]),
        .I2(\badr[15]_INST_0_i_1 [7]),
        .I3(bbus_sel_cr[0]),
        .O(\pc_reg[7]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_2 [0]),
        .Q(pc[0]),
        .R(\pc_reg[15]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_2 [10]),
        .Q(pc[10]),
        .R(\pc_reg[15]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_2 [11]),
        .Q(pc[11]),
        .R(\pc_reg[15]_1 ));
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
        .D(\pc_reg[15]_2 [12]),
        .Q(pc[12]),
        .R(\pc_reg[15]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_2 [13]),
        .Q(pc[13]),
        .R(\pc_reg[15]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_2 [14]),
        .Q(pc[14]),
        .R(\pc_reg[15]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_2 [15]),
        .Q(pc[15]),
        .R(\pc_reg[15]_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_reg[15]_i_3 
       (.CI(\pc_reg[11]_i_2_n_0 ),
        .CO({\pc_reg[15]_i_3_n_1 ,\pc_reg[15]_i_3_n_2 ,\pc_reg[15]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(fch_pc[15:12]),
        .S(pc[15:12]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_2 [1]),
        .Q(pc[1]),
        .R(\pc_reg[15]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_2 [2]),
        .Q(pc[2]),
        .R(\pc_reg[15]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_2 [3]),
        .Q(pc[3]),
        .R(\pc_reg[15]_1 ));
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
        .D(\pc_reg[15]_2 [4]),
        .Q(pc[4]),
        .R(\pc_reg[15]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_2 [5]),
        .Q(pc[5]),
        .R(\pc_reg[15]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_2 [6]),
        .Q(pc[6]),
        .R(\pc_reg[15]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_2 [7]),
        .Q(pc[7]),
        .R(\pc_reg[15]_1 ));
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
        .D(\pc_reg[15]_2 [8]),
        .Q(pc[8]),
        .R(\pc_reg[15]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc_reg[15]_2 [9]),
        .Q(pc[9]),
        .R(\pc_reg[15]_1 ));
endmodule

module tnsn_rgf_sptr
   (.out({sp[7],sp[3],sp[2],sp[1],sp[0]}),
    \sp_reg[7]_0 ,
    \sp_reg[1]_0 ,
    \sp_reg[2]_0 ,
    \sp_reg[3]_0 ,
    \sp_reg[4]_0 ,
    \sp_reg[5]_0 ,
    \sp_reg[6]_0 ,
    \sp_reg[7]_1 ,
    \sp_reg[8]_0 ,
    \sp_reg[9]_0 ,
    \sp_reg[10]_0 ,
    \sp_reg[11]_0 ,
    \sp_reg[12]_0 ,
    \sp_reg[13]_0 ,
    \sp_reg[14]_0 ,
    \sp_reg[15]_0 ,
    \iv_reg[0] ,
    \iv_reg[1] ,
    \iv_reg[2] ,
    \iv_reg[3] ,
    \iv_reg[4] ,
    \iv_reg[5] ,
    \iv_reg[6] ,
    \iv_reg[7] ,
    \iv_reg[8] ,
    \iv_reg[9] ,
    \iv_reg[10] ,
    \iv_reg[11] ,
    \iv_reg[12] ,
    \iv_reg[13] ,
    \iv_reg[14] ,
    \iv_reg[15] ,
    \iv_reg[4]_0 ,
    \iv_reg[5]_0 ,
    \iv_reg[6]_0 ,
    \iv_reg[7]_0 ,
    \sr_reg[8] ,
    \sr_reg[9] ,
    \sr_reg[10] ,
    \sr_reg[11] ,
    \sr_reg[12] ,
    \sr_reg[13] ,
    \sr_reg[14] ,
    \sr_reg[15] ,
    ctl_sp_inc,
    ctl_sp_dec,
    \bdatw[15]_INST_0_i_29_0 ,
    abus_sel_cr,
    bbus_sel_cr,
    \bdatw[15]_INST_0_i_12 ,
    \bdatw[15]_INST_0_i_12_0 ,
    \sp_reg[0]_0 ,
    \sp_reg[15]_1 ,
    clk);
  output [4:0]\sp_reg[7]_0 ;
  output \sp_reg[1]_0 ;
  output \sp_reg[2]_0 ;
  output \sp_reg[3]_0 ;
  output \sp_reg[4]_0 ;
  output \sp_reg[5]_0 ;
  output \sp_reg[6]_0 ;
  output \sp_reg[7]_1 ;
  output \sp_reg[8]_0 ;
  output \sp_reg[9]_0 ;
  output \sp_reg[10]_0 ;
  output \sp_reg[11]_0 ;
  output \sp_reg[12]_0 ;
  output \sp_reg[13]_0 ;
  output \sp_reg[14]_0 ;
  output \sp_reg[15]_0 ;
  output \iv_reg[0] ;
  output \iv_reg[1] ;
  output \iv_reg[2] ;
  output \iv_reg[3] ;
  output \iv_reg[4] ;
  output \iv_reg[5] ;
  output \iv_reg[6] ;
  output \iv_reg[7] ;
  output \iv_reg[8] ;
  output \iv_reg[9] ;
  output \iv_reg[10] ;
  output \iv_reg[11] ;
  output \iv_reg[12] ;
  output \iv_reg[13] ;
  output \iv_reg[14] ;
  output \iv_reg[15] ;
  output \iv_reg[4]_0 ;
  output \iv_reg[5]_0 ;
  output \iv_reg[6]_0 ;
  output \iv_reg[7]_0 ;
  output \sr_reg[8] ;
  output \sr_reg[9] ;
  output \sr_reg[10] ;
  output \sr_reg[11] ;
  output \sr_reg[12] ;
  output \sr_reg[13] ;
  output \sr_reg[14] ;
  output \sr_reg[15] ;
  input ctl_sp_inc;
  input ctl_sp_dec;
  input [15:0]\bdatw[15]_INST_0_i_29_0 ;
  input [2:0]abus_sel_cr;
  input [4:0]bbus_sel_cr;
  input [7:0]\bdatw[15]_INST_0_i_12 ;
  input [7:0]\bdatw[15]_INST_0_i_12_0 ;
  input \sp_reg[0]_0 ;
  input [15:0]\sp_reg[15]_1 ;
  input clk;
     output [15:0]sp;

  wire \<const0> ;
  wire \<const1> ;
  wire [2:0]abus_sel_cr;
  wire [4:0]bbus_sel_cr;
  wire \bdatw[10]_INST_0_i_21_n_0 ;
  wire \bdatw[11]_INST_0_i_29_n_0 ;
  wire \bdatw[12]_INST_0_i_16_n_0 ;
  wire \bdatw[13]_INST_0_i_16_n_0 ;
  wire \bdatw[14]_INST_0_i_16_n_0 ;
  wire [7:0]\bdatw[15]_INST_0_i_12 ;
  wire [7:0]\bdatw[15]_INST_0_i_12_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_29_0 ;
  wire \bdatw[15]_INST_0_i_51_n_0 ;
  wire \bdatw[8]_INST_0_i_21_n_0 ;
  wire \bdatw[9]_INST_0_i_20_n_0 ;
  wire clk;
  wire ctl_sp_dec;
  wire ctl_sp_inc;
  wire \iv_reg[0] ;
  wire \iv_reg[10] ;
  wire \iv_reg[11] ;
  wire \iv_reg[12] ;
  wire \iv_reg[13] ;
  wire \iv_reg[14] ;
  wire \iv_reg[15] ;
  wire \iv_reg[1] ;
  wire \iv_reg[2] ;
  wire \iv_reg[3] ;
  wire \iv_reg[4] ;
  wire \iv_reg[4]_0 ;
  wire \iv_reg[5] ;
  wire \iv_reg[5]_0 ;
  wire \iv_reg[6] ;
  wire \iv_reg[6]_0 ;
  wire \iv_reg[7] ;
  wire \iv_reg[7]_0 ;
  wire \iv_reg[8] ;
  wire \iv_reg[9] ;
  (* DONT_TOUCH *) wire [15:0]sp;
  wire [15:4]sp_dec_0;
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
  wire [15:0]\sp_reg[15]_1 ;
  wire \sp_reg[1]_0 ;
  wire \sp_reg[2]_0 ;
  wire \sp_reg[3]_0 ;
  wire \sp_reg[4]_0 ;
  wire \sp_reg[5]_0 ;
  wire \sp_reg[6]_0 ;
  wire [4:0]\sp_reg[7]_0 ;
  wire \sp_reg[7]_1 ;
  wire \sp_reg[8]_0 ;
  wire \sp_reg[9]_0 ;
  wire \sr_reg[10] ;
  wire \sr_reg[11] ;
  wire \sr_reg[12] ;
  wire \sr_reg[13] ;
  wire \sr_reg[14] ;
  wire \sr_reg[15] ;
  wire \sr_reg[8] ;
  wire \sr_reg[9] ;
  wire [3:0]NLW_sp_dec_0_carry_O_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[0]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_29_0 [0]),
        .I1(abus_sel_cr[1]),
        .I2(abus_sel_cr[2]),
        .I3(\sp_reg[7]_0 [0]),
        .I4(abus_sel_cr[0]),
        .I5(sp[0]),
        .O(\iv_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[10]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_29_0 [10]),
        .I1(abus_sel_cr[1]),
        .I2(abus_sel_cr[2]),
        .I3(sp_dec_0[10]),
        .I4(abus_sel_cr[0]),
        .I5(sp[10]),
        .O(\iv_reg[10] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[11]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_29_0 [11]),
        .I1(abus_sel_cr[1]),
        .I2(abus_sel_cr[2]),
        .I3(sp_dec_0[11]),
        .I4(abus_sel_cr[0]),
        .I5(sp[11]),
        .O(\iv_reg[11] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[12]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_29_0 [12]),
        .I1(abus_sel_cr[1]),
        .I2(abus_sel_cr[2]),
        .I3(sp_dec_0[12]),
        .I4(abus_sel_cr[0]),
        .I5(sp[12]),
        .O(\iv_reg[12] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[13]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_29_0 [13]),
        .I1(abus_sel_cr[1]),
        .I2(abus_sel_cr[2]),
        .I3(sp_dec_0[13]),
        .I4(abus_sel_cr[0]),
        .I5(sp[13]),
        .O(\iv_reg[13] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[14]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_29_0 [14]),
        .I1(abus_sel_cr[1]),
        .I2(abus_sel_cr[2]),
        .I3(sp_dec_0[14]),
        .I4(abus_sel_cr[0]),
        .I5(sp[14]),
        .O(\iv_reg[14] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[15]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_29_0 [15]),
        .I1(abus_sel_cr[1]),
        .I2(abus_sel_cr[2]),
        .I3(sp_dec_0[15]),
        .I4(abus_sel_cr[0]),
        .I5(sp[15]),
        .O(\iv_reg[15] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[1]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_29_0 [1]),
        .I1(abus_sel_cr[1]),
        .I2(abus_sel_cr[2]),
        .I3(\sp_reg[7]_0 [1]),
        .I4(abus_sel_cr[0]),
        .I5(sp[1]),
        .O(\iv_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[2]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_29_0 [2]),
        .I1(abus_sel_cr[1]),
        .I2(abus_sel_cr[2]),
        .I3(\sp_reg[7]_0 [2]),
        .I4(abus_sel_cr[0]),
        .I5(sp[2]),
        .O(\iv_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[3]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_29_0 [3]),
        .I1(abus_sel_cr[1]),
        .I2(abus_sel_cr[2]),
        .I3(\sp_reg[7]_0 [3]),
        .I4(abus_sel_cr[0]),
        .I5(sp[3]),
        .O(\iv_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[4]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_29_0 [4]),
        .I1(abus_sel_cr[1]),
        .I2(abus_sel_cr[2]),
        .I3(sp_dec_0[4]),
        .I4(abus_sel_cr[0]),
        .I5(sp[4]),
        .O(\iv_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[5]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_29_0 [5]),
        .I1(abus_sel_cr[1]),
        .I2(abus_sel_cr[2]),
        .I3(sp_dec_0[5]),
        .I4(abus_sel_cr[0]),
        .I5(sp[5]),
        .O(\iv_reg[5] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[6]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_29_0 [6]),
        .I1(abus_sel_cr[1]),
        .I2(abus_sel_cr[2]),
        .I3(sp_dec_0[6]),
        .I4(abus_sel_cr[0]),
        .I5(sp[6]),
        .O(\iv_reg[6] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[7]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_29_0 [7]),
        .I1(abus_sel_cr[1]),
        .I2(abus_sel_cr[2]),
        .I3(\sp_reg[7]_0 [4]),
        .I4(abus_sel_cr[0]),
        .I5(sp[7]),
        .O(\iv_reg[7] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[8]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_29_0 [8]),
        .I1(abus_sel_cr[1]),
        .I2(abus_sel_cr[2]),
        .I3(sp_dec_0[8]),
        .I4(abus_sel_cr[0]),
        .I5(sp[8]),
        .O(\iv_reg[8] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[9]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_29_0 [9]),
        .I1(abus_sel_cr[1]),
        .I2(abus_sel_cr[2]),
        .I3(sp_dec_0[9]),
        .I4(abus_sel_cr[0]),
        .I5(sp[9]),
        .O(\iv_reg[9] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[10]_INST_0_i_11 
       (.I0(\bdatw[10]_INST_0_i_21_n_0 ),
        .I1(bbus_sel_cr[0]),
        .I2(\bdatw[15]_INST_0_i_12 [2]),
        .I3(bbus_sel_cr[1]),
        .I4(\bdatw[15]_INST_0_i_12_0 [2]),
        .O(\sr_reg[10] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_21 
       (.I0(\bdatw[15]_INST_0_i_29_0 [10]),
        .I1(bbus_sel_cr[3]),
        .I2(bbus_sel_cr[4]),
        .I3(sp_dec_0[10]),
        .I4(bbus_sel_cr[2]),
        .I5(sp[10]),
        .O(\bdatw[10]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[11]_INST_0_i_11 
       (.I0(\bdatw[11]_INST_0_i_29_n_0 ),
        .I1(bbus_sel_cr[0]),
        .I2(\bdatw[15]_INST_0_i_12 [3]),
        .I3(bbus_sel_cr[1]),
        .I4(\bdatw[15]_INST_0_i_12_0 [3]),
        .O(\sr_reg[11] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_29 
       (.I0(\bdatw[15]_INST_0_i_29_0 [11]),
        .I1(bbus_sel_cr[3]),
        .I2(bbus_sel_cr[4]),
        .I3(sp_dec_0[11]),
        .I4(bbus_sel_cr[2]),
        .I5(sp[11]),
        .O(\bdatw[11]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_29_0 [4]),
        .I1(bbus_sel_cr[3]),
        .I2(bbus_sel_cr[4]),
        .I3(sp_dec_0[4]),
        .I4(bbus_sel_cr[2]),
        .I5(sp[4]),
        .O(\iv_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[12]_INST_0_i_13 
       (.I0(\bdatw[12]_INST_0_i_16_n_0 ),
        .I1(bbus_sel_cr[0]),
        .I2(\bdatw[15]_INST_0_i_12 [4]),
        .I3(bbus_sel_cr[1]),
        .I4(\bdatw[15]_INST_0_i_12_0 [4]),
        .O(\sr_reg[12] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_29_0 [12]),
        .I1(bbus_sel_cr[3]),
        .I2(bbus_sel_cr[4]),
        .I3(sp_dec_0[12]),
        .I4(bbus_sel_cr[2]),
        .I5(sp[12]),
        .O(\bdatw[12]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_29_0 [5]),
        .I1(bbus_sel_cr[3]),
        .I2(bbus_sel_cr[4]),
        .I3(sp_dec_0[5]),
        .I4(bbus_sel_cr[2]),
        .I5(sp[5]),
        .O(\iv_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[13]_INST_0_i_13 
       (.I0(\bdatw[13]_INST_0_i_16_n_0 ),
        .I1(bbus_sel_cr[0]),
        .I2(\bdatw[15]_INST_0_i_12 [5]),
        .I3(bbus_sel_cr[1]),
        .I4(\bdatw[15]_INST_0_i_12_0 [5]),
        .O(\sr_reg[13] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_29_0 [13]),
        .I1(bbus_sel_cr[3]),
        .I2(bbus_sel_cr[4]),
        .I3(sp_dec_0[13]),
        .I4(bbus_sel_cr[2]),
        .I5(sp[13]),
        .O(\bdatw[13]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_29_0 [6]),
        .I1(bbus_sel_cr[3]),
        .I2(bbus_sel_cr[4]),
        .I3(sp_dec_0[6]),
        .I4(bbus_sel_cr[2]),
        .I5(sp[6]),
        .O(\iv_reg[6]_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[14]_INST_0_i_13 
       (.I0(\bdatw[14]_INST_0_i_16_n_0 ),
        .I1(bbus_sel_cr[0]),
        .I2(\bdatw[15]_INST_0_i_12 [6]),
        .I3(bbus_sel_cr[1]),
        .I4(\bdatw[15]_INST_0_i_12_0 [6]),
        .O(\sr_reg[14] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_29_0 [14]),
        .I1(bbus_sel_cr[3]),
        .I2(bbus_sel_cr[4]),
        .I3(sp_dec_0[14]),
        .I4(bbus_sel_cr[2]),
        .I5(sp[14]),
        .O(\bdatw[14]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_21 
       (.I0(\bdatw[15]_INST_0_i_29_0 [7]),
        .I1(bbus_sel_cr[3]),
        .I2(bbus_sel_cr[4]),
        .I3(\sp_reg[7]_0 [4]),
        .I4(bbus_sel_cr[2]),
        .I5(sp[7]),
        .O(\iv_reg[7]_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[15]_INST_0_i_29 
       (.I0(\bdatw[15]_INST_0_i_51_n_0 ),
        .I1(bbus_sel_cr[0]),
        .I2(\bdatw[15]_INST_0_i_12 [7]),
        .I3(bbus_sel_cr[1]),
        .I4(\bdatw[15]_INST_0_i_12_0 [7]),
        .O(\sr_reg[15] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_51 
       (.I0(\bdatw[15]_INST_0_i_29_0 [15]),
        .I1(bbus_sel_cr[3]),
        .I2(bbus_sel_cr[4]),
        .I3(sp_dec_0[15]),
        .I4(bbus_sel_cr[2]),
        .I5(sp[15]),
        .O(\bdatw[15]_INST_0_i_51_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[8]_INST_0_i_11 
       (.I0(\bdatw[8]_INST_0_i_21_n_0 ),
        .I1(bbus_sel_cr[0]),
        .I2(\bdatw[15]_INST_0_i_12 [0]),
        .I3(bbus_sel_cr[1]),
        .I4(\bdatw[15]_INST_0_i_12_0 [0]),
        .O(\sr_reg[8] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_21 
       (.I0(\bdatw[15]_INST_0_i_29_0 [8]),
        .I1(bbus_sel_cr[3]),
        .I2(bbus_sel_cr[4]),
        .I3(sp_dec_0[8]),
        .I4(bbus_sel_cr[2]),
        .I5(sp[8]),
        .O(\bdatw[8]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[9]_INST_0_i_11 
       (.I0(\bdatw[9]_INST_0_i_20_n_0 ),
        .I1(bbus_sel_cr[0]),
        .I2(\bdatw[15]_INST_0_i_12 [1]),
        .I3(bbus_sel_cr[1]),
        .I4(\bdatw[15]_INST_0_i_12_0 [1]),
        .O(\sr_reg[9] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_20 
       (.I0(\bdatw[15]_INST_0_i_29_0 [9]),
        .I1(bbus_sel_cr[3]),
        .I2(bbus_sel_cr[4]),
        .I3(sp_dec_0[9]),
        .I4(bbus_sel_cr[2]),
        .I5(sp[9]),
        .O(\bdatw[9]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[10]_i_2 
       (.I0(sp_dec_0__0_carry__1_n_5),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[10]),
        .I3(ctl_sp_dec),
        .I4(sp[10]),
        .O(\sp_reg[10]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[11]_i_2 
       (.I0(sp_dec_0__0_carry__1_n_4),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[11]),
        .I3(ctl_sp_dec),
        .I4(sp[11]),
        .O(\sp_reg[11]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[12]_i_2 
       (.I0(sp_dec_0__0_carry__2_n_7),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[12]),
        .I3(ctl_sp_dec),
        .I4(sp[12]),
        .O(\sp_reg[12]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[13]_i_2 
       (.I0(sp_dec_0__0_carry__2_n_6),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[13]),
        .I3(ctl_sp_dec),
        .I4(sp[13]),
        .O(\sp_reg[13]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[14]_i_2 
       (.I0(sp_dec_0__0_carry__2_n_5),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[14]),
        .I3(ctl_sp_dec),
        .I4(sp[14]),
        .O(\sp_reg[14]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[15]_i_3 
       (.I0(sp_dec_0__0_carry__2_n_4),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[15]),
        .I3(ctl_sp_dec),
        .I4(sp[15]),
        .O(\sp_reg[15]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[1]_i_2 
       (.I0(sp_dec_0__0_carry_n_6),
        .I1(ctl_sp_inc),
        .I2(\sp_reg[7]_0 [1]),
        .I3(ctl_sp_dec),
        .I4(sp[1]),
        .O(\sp_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[2]_i_2 
       (.I0(sp_dec_0__0_carry_n_5),
        .I1(ctl_sp_inc),
        .I2(\sp_reg[7]_0 [2]),
        .I3(ctl_sp_dec),
        .I4(sp[2]),
        .O(\sp_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[3]_i_2 
       (.I0(sp_dec_0__0_carry_n_4),
        .I1(ctl_sp_inc),
        .I2(\sp_reg[7]_0 [3]),
        .I3(ctl_sp_dec),
        .I4(sp[3]),
        .O(\sp_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[4]_i_2 
       (.I0(sp_dec_0__0_carry__0_n_7),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[4]),
        .I3(ctl_sp_dec),
        .I4(sp[4]),
        .O(\sp_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[5]_i_2 
       (.I0(sp_dec_0__0_carry__0_n_6),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[5]),
        .I3(ctl_sp_dec),
        .I4(sp[5]),
        .O(\sp_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[6]_i_2 
       (.I0(sp_dec_0__0_carry__0_n_5),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[6]),
        .I3(ctl_sp_dec),
        .I4(sp[6]),
        .O(\sp_reg[6]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[7]_i_2 
       (.I0(sp_dec_0__0_carry__0_n_4),
        .I1(ctl_sp_inc),
        .I2(\sp_reg[7]_0 [4]),
        .I3(ctl_sp_dec),
        .I4(sp[7]),
        .O(\sp_reg[7]_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[8]_i_2 
       (.I0(sp_dec_0__0_carry__1_n_7),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[8]),
        .I3(ctl_sp_dec),
        .I4(sp[8]),
        .O(\sp_reg[8]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[9]_i_2 
       (.I0(sp_dec_0__0_carry__1_n_6),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[9]),
        .I3(ctl_sp_dec),
        .I4(sp[9]),
        .O(\sp_reg[9]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sp_dec_0__0_carry
       (.CI(\<const0> ),
        .CO({sp_dec_0__0_carry_n_0,sp_dec_0__0_carry_n_1,sp_dec_0__0_carry_n_2,sp_dec_0__0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,sp[1],\<const0> }),
        .O({sp_dec_0__0_carry_n_4,sp_dec_0__0_carry_n_5,sp_dec_0__0_carry_n_6,\sp_reg[7]_0 [0]}),
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
        .O({\sp_reg[7]_0 [3:1],NLW_sp_dec_0_carry_O_UNCONNECTED[0]}),
        .S({sp_dec_0_carry_i_1_n_0,sp_dec_0_carry_i_2_n_0,sp_dec_0_carry_i_3_n_0,sp[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sp_dec_0_carry__0
       (.CI(sp_dec_0_carry_n_0),
        .CO({sp_dec_0_carry__0_n_0,sp_dec_0_carry__0_n_1,sp_dec_0_carry__0_n_2,sp_dec_0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(sp[7:4]),
        .O({\sp_reg[7]_0 [4],sp_dec_0[6:4]}),
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
        .D(\sp_reg[15]_1 [0]),
        .Q(sp[0]),
        .R(\sp_reg[0]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [10]),
        .Q(sp[10]),
        .R(\sp_reg[0]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [11]),
        .Q(sp[11]),
        .R(\sp_reg[0]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [12]),
        .Q(sp[12]),
        .R(\sp_reg[0]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [13]),
        .Q(sp[13]),
        .R(\sp_reg[0]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [14]),
        .Q(sp[14]),
        .R(\sp_reg[0]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [15]),
        .Q(sp[15]),
        .R(\sp_reg[0]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [1]),
        .Q(sp[1]),
        .R(\sp_reg[0]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [2]),
        .Q(sp[2]),
        .R(\sp_reg[0]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [3]),
        .Q(sp[3]),
        .R(\sp_reg[0]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [4]),
        .Q(sp[4]),
        .R(\sp_reg[0]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [5]),
        .Q(sp[5]),
        .R(\sp_reg[0]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [6]),
        .Q(sp[6]),
        .R(\sp_reg[0]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [7]),
        .Q(sp[7]),
        .R(\sp_reg[0]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [8]),
        .Q(sp[8]),
        .R(\sp_reg[0]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [9]),
        .Q(sp[9]),
        .R(\sp_reg[0]_0 ));
endmodule

module tnsn_rgf_sreg
   (.\sr_reg[15]_0 ({sr[15],sr[14],sr[13],sr[12],sr[11],sr[10],sr[9],sr[8],sr[7],sr[6],sr[5],sr[4],sr[3],sr[2],sr[1],sr[0]}),
    \sr_reg[5]_0 ,
    \sr_reg[5]_1 ,
    \sr_reg[5]_2 ,
    \sr_reg[1]_0 ,
    \sr_reg[1]_1 ,
    E,
    \sr_reg[1]_2 ,
    \sr_reg[1]_3 ,
    \sr_reg[1]_4 ,
    bank_sel,
    \sr_reg[6]_0 ,
    \sr_reg[6]_1 ,
    fch_irq_req,
    S,
    \sr_reg[1]_5 ,
    \bdatw[15]_INST_0_i_15 ,
    ctl_selc_rnh,
    ctl_selc_rn,
    \grn_reg[8] ,
    \grn_reg[7] ,
    \grn_reg[8]_0 ,
    \grn_reg[7]_0 ,
    abus_0,
    \grn[1]_i_13 ,
    irq,
    irq_lev,
    \pc_reg[3]_i_2 ,
    \sr_reg[15]_1 ,
    clk,
    \sr_reg[11]_0 ,
    \sr_reg[11]_1 ,
    \sr_reg[10]_0 ,
    \sr_reg[9]_0 ,
    \sr_reg[8]_0 ,
    \sr_reg[7]_0 ,
    \sr_reg[6]_2 ,
    \sr_reg[5]_3 ,
    \sr_reg[4]_0 ,
    \sr_reg[3]_0 ,
    \sr_reg[2]_0 ,
    \sr_reg[1]_6 ,
    \sr_reg[0]_0 );
  output \sr_reg[5]_0 ;
  output \sr_reg[5]_1 ;
  output \sr_reg[5]_2 ;
  output [1:0]\sr_reg[1]_0 ;
  output [1:0]\sr_reg[1]_1 ;
  output [1:0]E;
  output [1:0]\sr_reg[1]_2 ;
  output [1:0]\sr_reg[1]_3 ;
  output [1:0]\sr_reg[1]_4 ;
  output [0:0]bank_sel;
  output \sr_reg[6]_0 ;
  output \sr_reg[6]_1 ;
  output fch_irq_req;
  output [0:0]S;
  output [1:0]\sr_reg[1]_5 ;
  input [2:0]\bdatw[15]_INST_0_i_15 ;
  input ctl_selc_rnh;
  input [2:0]ctl_selc_rn;
  input \grn_reg[8] ;
  input \grn_reg[7] ;
  input \grn_reg[8]_0 ;
  input \grn_reg[7]_0 ;
  input [0:0]abus_0;
  input [0:0]\grn[1]_i_13 ;
  input irq;
  input [1:0]irq_lev;
  input [0:0]\pc_reg[3]_i_2 ;
  input [3:0]\sr_reg[15]_1 ;
  input clk;
  input \sr_reg[11]_0 ;
  input \sr_reg[11]_1 ;
  input \sr_reg[10]_0 ;
  input \sr_reg[9]_0 ;
  input \sr_reg[8]_0 ;
  input \sr_reg[7]_0 ;
  input \sr_reg[6]_2 ;
  input \sr_reg[5]_3 ;
  input \sr_reg[4]_0 ;
  input \sr_reg[3]_0 ;
  input \sr_reg[2]_0 ;
  input \sr_reg[1]_6 ;
  input \sr_reg[0]_0 ;
     output [15:0]sr;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]E;
  wire [0:0]S;
  wire [0:0]abus_0;
  wire [0:0]bank_sel;
  wire [2:0]\bdatw[15]_INST_0_i_15 ;
  wire clk;
  wire ctl_fetch_inferred_i_18_n_0;
  wire [2:0]ctl_selc_rn;
  wire ctl_selc_rnh;
  wire fch_irq_req;
  wire [0:0]\grn[1]_i_13 ;
  wire \grn_reg[7] ;
  wire \grn_reg[7]_0 ;
  wire \grn_reg[8] ;
  wire \grn_reg[8]_0 ;
  wire irq;
  wire [1:0]irq_lev;
  wire [0:0]\pc_reg[3]_i_2 ;
  (* DONT_TOUCH *) wire [15:0]sr;
  wire \sr_reg[0]_0 ;
  wire \sr_reg[10]_0 ;
  wire \sr_reg[11]_0 ;
  wire \sr_reg[11]_1 ;
  wire [3:0]\sr_reg[15]_1 ;
  wire [1:0]\sr_reg[1]_0 ;
  wire [1:0]\sr_reg[1]_1 ;
  wire [1:0]\sr_reg[1]_2 ;
  wire [1:0]\sr_reg[1]_3 ;
  wire [1:0]\sr_reg[1]_4 ;
  wire [1:0]\sr_reg[1]_5 ;
  wire \sr_reg[1]_6 ;
  wire \sr_reg[2]_0 ;
  wire \sr_reg[3]_0 ;
  wire \sr_reg[4]_0 ;
  wire \sr_reg[5]_0 ;
  wire \sr_reg[5]_1 ;
  wire \sr_reg[5]_2 ;
  wire \sr_reg[5]_3 ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[6]_1 ;
  wire \sr_reg[6]_2 ;
  wire \sr_reg[7]_0 ;
  wire \sr_reg[8]_0 ;
  wire \sr_reg[9]_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h06CF0A0F06C00A0F)) 
    \bdatw[15]_INST_0_i_33 
       (.I0(sr[5]),
        .I1(sr[7]),
        .I2(\bdatw[15]_INST_0_i_15 [1]),
        .I3(\bdatw[15]_INST_0_i_15 [2]),
        .I4(\bdatw[15]_INST_0_i_15 [0]),
        .I5(sr[4]),
        .O(\sr_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hCCEDCFCCCCCDCCCC)) 
    ctl_fetch_inferred_i_14
       (.I0(sr[5]),
        .I1(ctl_fetch_inferred_i_18_n_0),
        .I2(sr[7]),
        .I3(\bdatw[15]_INST_0_i_15 [1]),
        .I4(\bdatw[15]_INST_0_i_15 [2]),
        .I5(\bdatw[15]_INST_0_i_15 [0]),
        .O(\sr_reg[5]_1 ));
  LUT6 #(
    .INIT(64'h003000FF05300530)) 
    ctl_fetch_inferred_i_18
       (.I0(sr[4]),
        .I1(sr[5]),
        .I2(\bdatw[15]_INST_0_i_15 [2]),
        .I3(\bdatw[15]_INST_0_i_15 [0]),
        .I4(sr[6]),
        .I5(\bdatw[15]_INST_0_i_15 [1]),
        .O(ctl_fetch_inferred_i_18_n_0));
  LUT5 #(
    .INIT(32'h20AA0020)) 
    fch_irq_req_fl_i_1
       (.I0(irq),
        .I1(irq_lev[0]),
        .I2(sr[2]),
        .I3(irq_lev[1]),
        .I4(sr[3]),
        .O(fch_irq_req));
  LUT2 #(
    .INIT(4'h8)) 
    \grn[15]_i_1 
       (.I0(\sr_reg[1]_0 [0]),
        .I1(ctl_selc_rnh),
        .O(\sr_reg[1]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \grn[15]_i_1__0 
       (.I0(\sr_reg[1]_1 [0]),
        .I1(ctl_selc_rnh),
        .O(\sr_reg[1]_1 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \grn[15]_i_1__1 
       (.I0(E[0]),
        .I1(ctl_selc_rnh),
        .O(E[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \grn[15]_i_1__2 
       (.I0(\sr_reg[1]_2 [0]),
        .I1(ctl_selc_rnh),
        .O(\sr_reg[1]_2 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \grn[15]_i_1__3 
       (.I0(\sr_reg[1]_3 [0]),
        .I1(ctl_selc_rnh),
        .O(\sr_reg[1]_3 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \grn[15]_i_1__4 
       (.I0(\sr_reg[1]_4 [0]),
        .I1(ctl_selc_rnh),
        .O(\sr_reg[1]_4 [1]));
  LUT6 #(
    .INIT(64'h0000000D00000000)) 
    \grn[15]_i_1__6 
       (.I0(sr[1]),
        .I1(sr[8]),
        .I2(sr[0]),
        .I3(\grn_reg[8]_0 ),
        .I4(\grn_reg[8] ),
        .I5(ctl_selc_rnh),
        .O(\sr_reg[1]_5 [1]));
  LUT3 #(
    .INIT(8'h45)) 
    \grn[15]_i_2__0 
       (.I0(sr[0]),
        .I1(sr[8]),
        .I2(sr[1]),
        .O(bank_sel));
  LUT3 #(
    .INIT(8'h35)) 
    \grn[5]_i_21 
       (.I0(sr[6]),
        .I1(abus_0),
        .I2(\grn[1]_i_13 ),
        .O(\sr_reg[6]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \grn[6]_i_22 
       (.I0(sr[6]),
        .I1(\grn[1]_i_13 ),
        .O(\sr_reg[6]_1 ));
  LUT6 #(
    .INIT(64'h00000000000D0000)) 
    \grn[7]_i_1 
       (.I0(sr[1]),
        .I1(sr[8]),
        .I2(sr[0]),
        .I3(ctl_selc_rn[0]),
        .I4(ctl_selc_rn[1]),
        .I5(\grn_reg[8] ),
        .O(\sr_reg[1]_0 [0]));
  LUT6 #(
    .INIT(64'h00000000000D0000)) 
    \grn[7]_i_1__0 
       (.I0(sr[1]),
        .I1(sr[8]),
        .I2(sr[0]),
        .I3(ctl_selc_rn[1]),
        .I4(ctl_selc_rn[0]),
        .I5(\grn_reg[8] ),
        .O(\sr_reg[1]_1 [0]));
  LUT6 #(
    .INIT(64'h000000000000000D)) 
    \grn[7]_i_1__1 
       (.I0(sr[1]),
        .I1(sr[8]),
        .I2(sr[0]),
        .I3(ctl_selc_rn[1]),
        .I4(ctl_selc_rn[0]),
        .I5(\grn_reg[8] ),
        .O(E[0]));
  LUT6 #(
    .INIT(64'h000000000D000000)) 
    \grn[7]_i_1__2 
       (.I0(sr[1]),
        .I1(sr[8]),
        .I2(sr[0]),
        .I3(ctl_selc_rn[2]),
        .I4(ctl_selc_rn[1]),
        .I5(\grn_reg[7] ),
        .O(\sr_reg[1]_2 [0]));
  LUT6 #(
    .INIT(64'h00000000000D0000)) 
    \grn[7]_i_1__3 
       (.I0(sr[1]),
        .I1(sr[8]),
        .I2(sr[0]),
        .I3(ctl_selc_rn[1]),
        .I4(ctl_selc_rn[2]),
        .I5(\grn_reg[7] ),
        .O(\sr_reg[1]_3 [0]));
  LUT6 #(
    .INIT(64'h0000000D00000000)) 
    \grn[7]_i_1__4 
       (.I0(sr[1]),
        .I1(sr[8]),
        .I2(sr[0]),
        .I3(\grn_reg[8]_0 ),
        .I4(\grn_reg[7]_0 ),
        .I5(ctl_selc_rn[2]),
        .O(\sr_reg[1]_4 [0]));
  LUT5 #(
    .INIT(32'h0000000D)) 
    \grn[7]_i_1__6 
       (.I0(sr[1]),
        .I1(sr[8]),
        .I2(sr[0]),
        .I3(\grn_reg[8]_0 ),
        .I4(\grn_reg[8] ),
        .O(\sr_reg[1]_5 [0]));
  LUT6 #(
    .INIT(64'h59599A5955555555)) 
    \pc[3]_i_3 
       (.I0(\pc_reg[3]_i_2 ),
        .I1(sr[3]),
        .I2(irq_lev[1]),
        .I3(sr[2]),
        .I4(irq_lev[0]),
        .I5(irq),
        .O(S));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[0]_0 ),
        .Q(sr[0]),
        .R(\sr_reg[11]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[10]_0 ),
        .Q(sr[10]),
        .R(\sr_reg[11]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[11]_1 ),
        .Q(sr[11]),
        .R(\sr_reg[11]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[15]_1 [0]),
        .Q(sr[12]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[15]_1 [1]),
        .Q(sr[13]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[15]_1 [2]),
        .Q(sr[14]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[15]_1 [3]),
        .Q(sr[15]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[1]_6 ),
        .Q(sr[1]),
        .R(\sr_reg[11]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[2]_0 ),
        .Q(sr[2]),
        .R(\sr_reg[11]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[3]_0 ),
        .Q(sr[3]),
        .R(\sr_reg[11]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[4]_0 ),
        .Q(sr[4]),
        .R(\sr_reg[11]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[5]_3 ),
        .Q(sr[5]),
        .R(\sr_reg[11]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[6]_2 ),
        .Q(sr[6]),
        .R(\sr_reg[11]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[7]_0 ),
        .Q(sr[7]),
        .R(\sr_reg[11]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[8]_0 ),
        .Q(sr[8]),
        .R(\sr_reg[11]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[9]_0 ),
        .Q(sr[9]),
        .R(\sr_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hFFFF6A6AFFFFFF0F)) 
    \tnsn_dsp_a[7]_INST_0_i_27 
       (.I0(sr[5]),
        .I1(sr[7]),
        .I2(\bdatw[15]_INST_0_i_15 [0]),
        .I3(sr[4]),
        .I4(\bdatw[15]_INST_0_i_15 [1]),
        .I5(\bdatw[15]_INST_0_i_15 [2]),
        .O(\sr_reg[5]_2 ));
endmodule
