
(* STRUCTURAL_NETLIST = "yes" *)
module divc16
   (clk,
    rst_n,
    ccmd,
    abus,
    bbus,
    crdy,
    cbus);
//
//	Division co-processor (16/16=16...16 bits)
//		(c) 2025	1YEN Toru
//
//
//	2026/04/29	ver.1.02
//		corresponding to Samarium
//
//	2025/01/25	ver.1.00
//		step division
//		16/16=16...16: 18~22 cycles, instruction base
//
  input clk;
  input rst_n;
  input [4:0]ccmd;
  input [15:0]abus;
  input [15:0]bbus;
  output crdy;
  output [15:0]cbus;

  wire [15:0]abus;
  wire [15:0]bbus;
  wire [15:0]cbus;
  wire [4:0]ccmd;
  wire clk;
  wire crdy;
  wire dart_n_17;
  wire dctl_ebus_neg;
  wire dctl_load;
  wire dctl_n_0;
  wire dctl_n_20;
  wire dctl_n_21;
  wire dctl_n_22;
  wire dctl_n_23;
  wire dctl_n_24;
  wire dctl_n_26;
  wire dctl_n_27;
  wire dctl_n_28;
  wire dctl_n_29;
  wire dctl_n_30;
  wire dctl_n_31;
  wire dctl_n_32;
  wire dctl_n_33;
  wire dctl_n_34;
  wire dctl_n_35;
  wire dctl_n_36;
  wire dctl_n_37;
  wire dctl_n_38;
  wire dctl_n_39;
  wire dctl_n_40;
  wire dctl_n_41;
  wire dctl_n_42;
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
  wire [4:4]dctl_stat;
  wire [15:15]den;
  wire [15:15]dso;
  wire [16:0]dso__0;
  wire [16:0]fbus;
  wire n_0_152;
  wire rden_n_0;
  wire rden_n_10;
  wire rden_n_11;
  wire rden_n_12;
  wire rden_n_13;
  wire rden_n_14;
  wire rden_n_15;
  wire rden_n_16;
  wire rden_n_2;
  wire rden_n_3;
  wire rden_n_4;
  wire rden_n_5;
  wire rden_n_6;
  wire rden_n_7;
  wire rden_n_8;
  wire rden_n_9;
  wire [16:0]rg_rem;
  wire rg_rem0;
  wire rrem_n_0;
  wire rrem_n_18;
  wire rrem_n_19;
  wire rrem_n_20;
  wire rrem_n_21;
  wire rrem_n_22;
  wire rrem_n_23;
  wire rrem_n_24;
  wire rrem_n_25;
  wire rrem_n_26;
  wire rrem_n_27;
  wire rrem_n_28;
  wire rrem_n_29;
  wire rrem_n_30;
  wire rrem_n_31;
  wire rrem_n_32;
  wire rst_n;

  divc16_art dart
       (.D(dart_n_17),
        .DI({dctl_n_26,dctl_n_27,dctl_n_28,dctl_n_29}),
        .O9(fbus),
        .S({dctl_n_57,dctl_n_58,dctl_n_59,dctl_n_60}),
        .abus(abus[0]),
        .dctl_ebus_neg(dctl_ebus_neg),
        .dctl_load(dctl_load),
        .\rg_den_reg[0] (dctl_n_23),
        .\rg_rem_reg[11] ({dctl_n_48,dctl_n_49,dctl_n_50,dctl_n_51}),
        .\rg_rem_reg[11]_0 ({dctl_n_65,dctl_n_66,dctl_n_67,dctl_n_68}),
        .\rg_rem_reg[15] ({dctl_n_52,dctl_n_53,dctl_n_54,dctl_n_55}),
        .\rg_rem_reg[15]_0 ({dctl_n_69,dctl_n_70,dctl_n_71,dctl_n_72}),
        .\rg_rem_reg[16] (dctl_n_56),
        .\rg_rem_reg[7] ({dctl_n_44,dctl_n_45,dctl_n_46,dctl_n_47}),
        .\rg_rem_reg[7]_0 ({dctl_n_61,dctl_n_62,dctl_n_63,dctl_n_64}),
        .rst_n(rst_n));
  divc16_ctl dctl
       (.D({dctl_n_20,dctl_n_21,dctl_n_22}),
        .DI({dctl_n_26,dctl_n_27,dctl_n_28,dctl_n_29}),
        .E(dctl_n_74),
        .O9(fbus),
        .Q(dctl_stat),
        .S({dctl_n_57,dctl_n_58,dctl_n_59,dctl_n_60}),
        .SR(rg_rem0),
        .abus(abus[15:1]),
        .abus_10_sp_1(dctl_n_34),
        .abus_11_sp_1(dctl_n_33),
        .abus_12_sp_1(dctl_n_32),
        .abus_13_sp_1(dctl_n_31),
        .abus_14_sp_1(dctl_n_30),
        .abus_2_sp_1(dctl_n_42),
        .abus_3_sp_1(dctl_n_41),
        .abus_4_sp_1(dctl_n_40),
        .abus_5_sp_1(dctl_n_39),
        .abus_6_sp_1(dctl_n_38),
        .abus_7_sp_1(dctl_n_37),
        .abus_8_sp_1(dctl_n_36),
        .abus_9_sp_1(dctl_n_35),
        .art_o_carry__0_i_5(rrem_n_26),
        .art_o_carry__0_i_6(rrem_n_27),
        .art_o_carry__0_i_7(rrem_n_28),
        .art_o_carry__0_i_8(rrem_n_29),
        .art_o_carry__1_i_5(rrem_n_22),
        .art_o_carry__1_i_6(rrem_n_23),
        .art_o_carry__1_i_7(rrem_n_24),
        .art_o_carry__1_i_8(rrem_n_25),
        .art_o_carry__2_i_5(rrem_n_18),
        .art_o_carry__2_i_6(rrem_n_19),
        .art_o_carry__2_i_7(rrem_n_20),
        .art_o_carry__2_i_8(rrem_n_21),
        .art_o_carry__3_i_1({rden_n_0,den,rden_n_2,rden_n_3}),
        .art_o_carry__3_i_1_0(rg_rem),
        .art_o_carry_i_6(rrem_n_30),
        .art_o_carry_i_7(rrem_n_31),
        .art_o_carry_i_8(rrem_n_32),
        .bbus(bbus),
        .cbus(cbus),
        .ccmd(ccmd),
        .ccmd_0_sp_1(dctl_n_73),
        .clk(clk),
        .crdy(crdy),
        .dctl_ebus_neg(dctl_ebus_neg),
        .dctl_load(dctl_load),
        .\dctl_stat_reg[0] (dctl_n_23),
        .\dctl_stat_reg[0]_0 (dctl_n_24),
        .\dctl_stat_reg[1] (dctl_n_75),
        .dso(dso),
        .dso__0({dso__0[16],dso__0[14:0]}),
        .\rg_den_reg[10] (rden_n_9),
        .\rg_den_reg[11] (rden_n_8),
        .\rg_den_reg[12] (rden_n_7),
        .\rg_den_reg[13] (rden_n_6),
        .\rg_den_reg[14] (rden_n_5),
        .\rg_den_reg[15] (rden_n_4),
        .\rg_den_reg[3] (rden_n_16),
        .\rg_den_reg[4] (rden_n_15),
        .\rg_den_reg[5] (rden_n_14),
        .\rg_den_reg[6] (rden_n_13),
        .\rg_den_reg[7] (rden_n_12),
        .\rg_den_reg[8] (rden_n_11),
        .\rg_den_reg[9] (rden_n_10),
        .\rg_dso_reg[16] (dctl_n_56),
        .\rg_rem_reg[10] ({dctl_n_65,dctl_n_66,dctl_n_67,dctl_n_68}),
        .\rg_rem_reg[11] ({dctl_n_48,dctl_n_49,dctl_n_50,dctl_n_51}),
        .\rg_rem_reg[14] ({dctl_n_69,dctl_n_70,dctl_n_71,dctl_n_72}),
        .\rg_rem_reg[15] ({dctl_n_52,dctl_n_53,dctl_n_54,dctl_n_55}),
        .\rg_rem_reg[16] (rrem_n_0),
        .\rg_rem_reg[6] ({dctl_n_61,dctl_n_62,dctl_n_63,dctl_n_64}),
        .\rg_rem_reg[7] ({dctl_n_44,dctl_n_45,dctl_n_46,dctl_n_47}),
        .rst_n(rst_n),
        .rst_n_0(dctl_n_0),
        .rst_n_1(dctl_n_76),
        .rst_n_10(dctl_n_85),
        .rst_n_11(dctl_n_86),
        .rst_n_12(dctl_n_87),
        .rst_n_13(dctl_n_88),
        .rst_n_14(dctl_n_89),
        .rst_n_15(dctl_n_90),
        .rst_n_16(dctl_n_91),
        .rst_n_2(dctl_n_77),
        .rst_n_3(dctl_n_78),
        .rst_n_4(dctl_n_79),
        .rst_n_5(dctl_n_80),
        .rst_n_6(dctl_n_81),
        .rst_n_7(dctl_n_82),
        .rst_n_8(dctl_n_83),
        .rst_n_9(dctl_n_84));
  LUT1 #(
    .INIT(2'h1)) 
    i_152
       (.I0(rst_n),
        .O(n_0_152));
  divc16_reg_den rden
       (.D({dctl_n_20,dctl_n_21,dctl_n_22,dart_n_17}),
        .E(dctl_n_74),
        .Q({rden_n_0,den,rden_n_2,rden_n_3}),
        .clk(clk),
        .\rg_den_reg[10]_0 (rden_n_8),
        .\rg_den_reg[10]_1 (dctl_n_34),
        .\rg_den_reg[11]_0 (rden_n_7),
        .\rg_den_reg[11]_1 (dctl_n_33),
        .\rg_den_reg[12]_0 (rden_n_6),
        .\rg_den_reg[12]_1 (dctl_n_32),
        .\rg_den_reg[13]_0 (rden_n_5),
        .\rg_den_reg[13]_1 (dctl_n_31),
        .\rg_den_reg[14]_0 (rden_n_4),
        .\rg_den_reg[14]_1 (dctl_n_0),
        .\rg_den_reg[14]_2 (dctl_n_30),
        .\rg_den_reg[2]_0 (rden_n_16),
        .\rg_den_reg[2]_1 (dctl_n_42),
        .\rg_den_reg[3]_0 (rden_n_15),
        .\rg_den_reg[3]_1 (dctl_n_41),
        .\rg_den_reg[4]_0 (rden_n_14),
        .\rg_den_reg[4]_1 (dctl_n_40),
        .\rg_den_reg[5]_0 (rden_n_13),
        .\rg_den_reg[5]_1 (dctl_n_39),
        .\rg_den_reg[6]_0 (rden_n_12),
        .\rg_den_reg[6]_1 (dctl_n_38),
        .\rg_den_reg[7]_0 (rden_n_11),
        .\rg_den_reg[7]_1 (dctl_n_37),
        .\rg_den_reg[8]_0 (rden_n_10),
        .\rg_den_reg[8]_1 (dctl_n_36),
        .\rg_den_reg[9]_0 (rden_n_9),
        .\rg_den_reg[9]_1 (dctl_n_35));
  divc16_reg_dso rdso
       (.D(fbus[16]),
        .clk(clk),
        .dctl_load(dctl_load),
        .dso(dso),
        .dso__0({dso__0[16],dso__0[14:0]}),
        .\rg_dso_reg[0]_0 (dctl_n_91),
        .\rg_dso_reg[10]_0 (dctl_n_81),
        .\rg_dso_reg[11]_0 (dctl_n_80),
        .\rg_dso_reg[12]_0 (dctl_n_79),
        .\rg_dso_reg[13]_0 (dctl_n_78),
        .\rg_dso_reg[14]_0 (dctl_n_77),
        .\rg_dso_reg[15]_0 (dctl_n_24),
        .\rg_dso_reg[15]_1 (dctl_n_76),
        .\rg_dso_reg[16]_0 (dctl_n_73),
        .\rg_dso_reg[1]_0 (dctl_n_90),
        .\rg_dso_reg[2]_0 (dctl_n_89),
        .\rg_dso_reg[3]_0 (dctl_n_88),
        .\rg_dso_reg[4]_0 (dctl_n_87),
        .\rg_dso_reg[5]_0 (dctl_n_86),
        .\rg_dso_reg[6]_0 (dctl_n_85),
        .\rg_dso_reg[7]_0 (dctl_n_84),
        .\rg_dso_reg[8]_0 (dctl_n_83),
        .\rg_dso_reg[9]_0 (dctl_n_82),
        .rst_n(rst_n));
  divc16_reg_rem rrem
       (.D(fbus),
        .E(dctl_n_75),
        .Q(rg_rem),
        .SR(rg_rem0),
        .art_o_carry_i_14(dctl_stat),
        .clk(clk),
        .\rg_rem_reg[0]_0 (rrem_n_32),
        .\rg_rem_reg[10]_0 (rrem_n_22),
        .\rg_rem_reg[11]_0 (rrem_n_21),
        .\rg_rem_reg[12]_0 (rrem_n_20),
        .\rg_rem_reg[13]_0 (rrem_n_19),
        .\rg_rem_reg[14]_0 (rrem_n_18),
        .\rg_rem_reg[15]_0 (rrem_n_0),
        .\rg_rem_reg[1]_0 (rrem_n_31),
        .\rg_rem_reg[2]_0 (rrem_n_30),
        .\rg_rem_reg[3]_0 (rrem_n_29),
        .\rg_rem_reg[4]_0 (rrem_n_28),
        .\rg_rem_reg[5]_0 (rrem_n_27),
        .\rg_rem_reg[6]_0 (rrem_n_26),
        .\rg_rem_reg[7]_0 (rrem_n_25),
        .\rg_rem_reg[8]_0 (rrem_n_24),
        .\rg_rem_reg[9]_0 (rrem_n_23));
endmodule

module divc16_art
   (O9,
    D,
    dctl_ebus_neg,
    DI,
    S,
    \rg_rem_reg[7] ,
    \rg_rem_reg[7]_0 ,
    \rg_rem_reg[11] ,
    \rg_rem_reg[11]_0 ,
    \rg_rem_reg[15] ,
    \rg_rem_reg[15]_0 ,
    \rg_rem_reg[16] ,
    \rg_den_reg[0] ,
    rst_n,
    abus,
    dctl_load);
  output [16:0]O9;
  output [0:0]D;
  input dctl_ebus_neg;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\rg_rem_reg[7] ;
  input [3:0]\rg_rem_reg[7]_0 ;
  input [3:0]\rg_rem_reg[11] ;
  input [3:0]\rg_rem_reg[11]_0 ;
  input [3:0]\rg_rem_reg[15] ;
  input [3:0]\rg_rem_reg[15]_0 ;
  input [0:0]\rg_rem_reg[16] ;
  input \rg_den_reg[0] ;
  input rst_n;
  input [0:0]abus;
  input dctl_load;

  wire \<const0> ;
  wire [0:0]D;
  wire [3:0]DI;
  wire [16:0]O9;
  wire [3:0]S;
  wire [0:0]abus;
  wire art_o_carry__0_n_0;
  wire art_o_carry__0_n_1;
  wire art_o_carry__0_n_2;
  wire art_o_carry__0_n_3;
  wire art_o_carry__1_n_0;
  wire art_o_carry__1_n_1;
  wire art_o_carry__1_n_2;
  wire art_o_carry__1_n_3;
  wire art_o_carry__2_n_0;
  wire art_o_carry__2_n_1;
  wire art_o_carry__2_n_2;
  wire art_o_carry__2_n_3;
  wire art_o_carry_n_0;
  wire art_o_carry_n_1;
  wire art_o_carry_n_2;
  wire art_o_carry_n_3;
  wire dctl_ebus_neg;
  wire dctl_load;
  wire \rg_den_reg[0] ;
  wire [3:0]\rg_rem_reg[11] ;
  wire [3:0]\rg_rem_reg[11]_0 ;
  wire [3:0]\rg_rem_reg[15] ;
  wire [3:0]\rg_rem_reg[15]_0 ;
  wire [0:0]\rg_rem_reg[16] ;
  wire [3:0]\rg_rem_reg[7] ;
  wire [3:0]\rg_rem_reg[7]_0 ;
  wire rst_n;

  GND GND
       (.G(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 art_o_carry
       (.CI(\<const0> ),
        .CO({art_o_carry_n_0,art_o_carry_n_1,art_o_carry_n_2,art_o_carry_n_3}),
        .CYINIT(dctl_ebus_neg),
        .DI(DI),
        .O(O9[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 art_o_carry__0
       (.CI(art_o_carry_n_0),
        .CO({art_o_carry__0_n_0,art_o_carry__0_n_1,art_o_carry__0_n_2,art_o_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(\rg_rem_reg[7] ),
        .O(O9[7:4]),
        .S(\rg_rem_reg[7]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 art_o_carry__1
       (.CI(art_o_carry__0_n_0),
        .CO({art_o_carry__1_n_0,art_o_carry__1_n_1,art_o_carry__1_n_2,art_o_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(\rg_rem_reg[11] ),
        .O(O9[11:8]),
        .S(\rg_rem_reg[11]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 art_o_carry__2
       (.CI(art_o_carry__1_n_0),
        .CO({art_o_carry__2_n_0,art_o_carry__2_n_1,art_o_carry__2_n_2,art_o_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(\rg_rem_reg[15] ),
        .O(O9[15:12]),
        .S(\rg_rem_reg[15]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 art_o_carry__3
       (.CI(art_o_carry__2_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(O9[16]),
        .S({\<const0> ,\<const0> ,\<const0> ,\rg_rem_reg[16] }));
  LUT6 #(
    .INIT(64'hFF0000008B008B00)) 
    \rg_den[0]_i_1 
       (.I0(O9[0]),
        .I1(\rg_den_reg[0] ),
        .I2(O9[16]),
        .I3(rst_n),
        .I4(abus),
        .I5(dctl_load),
        .O(D));
endmodule

module divc16_ctl
   (rst_n_0,
    Q,
    crdy,
    cbus,
    dctl_load,
    D,
    \dctl_stat_reg[0] ,
    \dctl_stat_reg[0]_0 ,
    SR,
    DI,
    .abus_14_sp_1(abus_14_sn_1),
    .abus_13_sp_1(abus_13_sn_1),
    .abus_12_sp_1(abus_12_sn_1),
    .abus_11_sp_1(abus_11_sn_1),
    .abus_10_sp_1(abus_10_sn_1),
    .abus_9_sp_1(abus_9_sn_1),
    .abus_8_sp_1(abus_8_sn_1),
    .abus_7_sp_1(abus_7_sn_1),
    .abus_6_sp_1(abus_6_sn_1),
    .abus_5_sp_1(abus_5_sn_1),
    .abus_4_sp_1(abus_4_sn_1),
    .abus_3_sp_1(abus_3_sn_1),
    .abus_2_sp_1(abus_2_sn_1),
    dctl_ebus_neg,
    \rg_rem_reg[7] ,
    \rg_rem_reg[11] ,
    \rg_rem_reg[15] ,
    \rg_dso_reg[16] ,
    S,
    \rg_rem_reg[6] ,
    \rg_rem_reg[10] ,
    \rg_rem_reg[14] ,
    .ccmd_0_sp_1(ccmd_0_sn_1),
    E,
    \dctl_stat_reg[1] ,
    rst_n_1,
    rst_n_2,
    rst_n_3,
    rst_n_4,
    rst_n_5,
    rst_n_6,
    rst_n_7,
    rst_n_8,
    rst_n_9,
    rst_n_10,
    rst_n_11,
    rst_n_12,
    rst_n_13,
    rst_n_14,
    rst_n_15,
    rst_n_16,
    clk,
    art_o_carry__3_i_1,
    art_o_carry__3_i_1_0,
    \rg_den_reg[3] ,
    \rg_den_reg[4] ,
    \rg_den_reg[5] ,
    \rg_den_reg[6] ,
    \rg_den_reg[7] ,
    \rg_den_reg[8] ,
    \rg_den_reg[9] ,
    \rg_den_reg[10] ,
    \rg_den_reg[11] ,
    \rg_den_reg[12] ,
    \rg_den_reg[13] ,
    \rg_den_reg[14] ,
    \rg_den_reg[15] ,
    ccmd,
    dso,
    bbus,
    abus,
    rst_n,
    O9,
    dso__0,
    art_o_carry_i_8,
    art_o_carry_i_7,
    art_o_carry_i_6,
    art_o_carry__0_i_8,
    art_o_carry__0_i_7,
    art_o_carry__0_i_6,
    art_o_carry__0_i_5,
    art_o_carry__1_i_8,
    art_o_carry__1_i_7,
    art_o_carry__1_i_6,
    art_o_carry__1_i_5,
    art_o_carry__2_i_8,
    art_o_carry__2_i_7,
    art_o_carry__2_i_6,
    art_o_carry__2_i_5,
    \rg_rem_reg[16] );
  output rst_n_0;
  output [0:0]Q;
  output crdy;
  output [15:0]cbus;
  output dctl_load;
  output [2:0]D;
  output \dctl_stat_reg[0] ;
  output \dctl_stat_reg[0]_0 ;
  output [0:0]SR;
  output [3:0]DI;
  output dctl_ebus_neg;
  output [3:0]\rg_rem_reg[7] ;
  output [3:0]\rg_rem_reg[11] ;
  output [3:0]\rg_rem_reg[15] ;
  output [0:0]\rg_dso_reg[16] ;
  output [3:0]S;
  output [3:0]\rg_rem_reg[6] ;
  output [3:0]\rg_rem_reg[10] ;
  output [3:0]\rg_rem_reg[14] ;
  output [0:0]E;
  output [0:0]\dctl_stat_reg[1] ;
  output rst_n_1;
  output rst_n_2;
  output rst_n_3;
  output rst_n_4;
  output rst_n_5;
  output rst_n_6;
  output rst_n_7;
  output rst_n_8;
  output rst_n_9;
  output rst_n_10;
  output rst_n_11;
  output rst_n_12;
  output rst_n_13;
  output rst_n_14;
  output rst_n_15;
  output rst_n_16;
  input clk;
  input [3:0]art_o_carry__3_i_1;
  input [16:0]art_o_carry__3_i_1_0;
  input \rg_den_reg[3] ;
  input \rg_den_reg[4] ;
  input \rg_den_reg[5] ;
  input \rg_den_reg[6] ;
  input \rg_den_reg[7] ;
  input \rg_den_reg[8] ;
  input \rg_den_reg[9] ;
  input \rg_den_reg[10] ;
  input \rg_den_reg[11] ;
  input \rg_den_reg[12] ;
  input \rg_den_reg[13] ;
  input \rg_den_reg[14] ;
  input \rg_den_reg[15] ;
  input [4:0]ccmd;
  input [0:0]dso;
  input [15:0]bbus;
  input [14:0]abus;
  input rst_n;
  input [16:0]O9;
  input [15:0]dso__0;
  input art_o_carry_i_8;
  input art_o_carry_i_7;
  input art_o_carry_i_6;
  input art_o_carry__0_i_8;
  input art_o_carry__0_i_7;
  input art_o_carry__0_i_6;
  input art_o_carry__0_i_5;
  input art_o_carry__1_i_8;
  input art_o_carry__1_i_7;
  input art_o_carry__1_i_6;
  input art_o_carry__1_i_5;
  input art_o_carry__2_i_8;
  input art_o_carry__2_i_7;
  input art_o_carry__2_i_6;
  input art_o_carry__2_i_5;
  input \rg_rem_reg[16] ;
  output abus_14_sn_1;
  output abus_13_sn_1;
  output abus_12_sn_1;
  output abus_11_sn_1;
  output abus_10_sn_1;
  output abus_9_sn_1;
  output abus_8_sn_1;
  output abus_7_sn_1;
  output abus_6_sn_1;
  output abus_5_sn_1;
  output abus_4_sn_1;
  output abus_3_sn_1;
  output abus_2_sn_1;
  output ccmd_0_sn_1;

  wire \<const1> ;
  wire [2:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [16:0]O9;
  wire [0:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [14:0]abus;
  wire abus_10_sn_1;
  wire abus_11_sn_1;
  wire abus_12_sn_1;
  wire abus_13_sn_1;
  wire abus_14_sn_1;
  wire abus_2_sn_1;
  wire abus_3_sn_1;
  wire abus_4_sn_1;
  wire abus_5_sn_1;
  wire abus_6_sn_1;
  wire abus_7_sn_1;
  wire abus_8_sn_1;
  wire abus_9_sn_1;
  wire art_o_carry__0_i_5;
  wire art_o_carry__0_i_6;
  wire art_o_carry__0_i_7;
  wire art_o_carry__0_i_8;
  wire art_o_carry__1_i_5;
  wire art_o_carry__1_i_6;
  wire art_o_carry__1_i_7;
  wire art_o_carry__1_i_8;
  wire art_o_carry__2_i_5;
  wire art_o_carry__2_i_6;
  wire art_o_carry__2_i_7;
  wire art_o_carry__2_i_8;
  wire [3:0]art_o_carry__3_i_1;
  wire [16:0]art_o_carry__3_i_1_0;
  wire art_o_carry_i_6;
  wire art_o_carry_i_7;
  wire art_o_carry_i_8;
  wire [15:0]bbus;
  wire [15:0]cbus;
  wire \cbus[15]_INST_0_i_1_n_0 ;
  wire \cbus[15]_INST_0_i_2_n_0 ;
  wire \cbus[15]_INST_0_i_3_n_0 ;
  wire [4:0]ccmd;
  wire ccmd_0_sn_1;
  wire [4:1]ccmd_rg;
  wire \ccmd_rg[1]_i_1_n_0 ;
  wire \ccmd_rg[2]_i_1_n_0 ;
  wire \ccmd_rg[3]_i_1_n_0 ;
  wire \ccmd_rg[4]_i_1_n_0 ;
  wire clk;
  wire crdy;
  wire dctl_ebus_neg;
  wire dctl_load;
  wire \dctl_stat_reg[0] ;
  wire \dctl_stat_reg[0]_0 ;
  wire [0:0]\dctl_stat_reg[1] ;
  wire dctl_step_f;
  wire [0:0]dso;
  wire [15:0]dso__0;
  wire fsm_n_71;
  wire quo_f;
  wire quo_lsb;
  wire \rg_den[16]_i_3_n_0 ;
  wire \rg_den_reg[10] ;
  wire \rg_den_reg[11] ;
  wire \rg_den_reg[12] ;
  wire \rg_den_reg[13] ;
  wire \rg_den_reg[14] ;
  wire \rg_den_reg[15] ;
  wire \rg_den_reg[3] ;
  wire \rg_den_reg[4] ;
  wire \rg_den_reg[5] ;
  wire \rg_den_reg[6] ;
  wire \rg_den_reg[7] ;
  wire \rg_den_reg[8] ;
  wire \rg_den_reg[9] ;
  wire \rg_dso[15]_i_3_n_0 ;
  wire [0:0]\rg_dso_reg[16] ;
  wire [3:0]\rg_rem_reg[10] ;
  wire [3:0]\rg_rem_reg[11] ;
  wire [3:0]\rg_rem_reg[14] ;
  wire [3:0]\rg_rem_reg[15] ;
  wire \rg_rem_reg[16] ;
  wire [3:0]\rg_rem_reg[6] ;
  wire [3:0]\rg_rem_reg[7] ;
  wire rst_n;
  wire rst_n_0;
  wire rst_n_1;
  wire rst_n_10;
  wire rst_n_11;
  wire rst_n_12;
  wire rst_n_13;
  wire rst_n_14;
  wire rst_n_15;
  wire rst_n_16;
  wire rst_n_2;
  wire rst_n_3;
  wire rst_n_4;
  wire rst_n_5;
  wire rst_n_6;
  wire rst_n_7;
  wire rst_n_8;
  wire rst_n_9;

  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \cbus[0]_INST_0_i_2 
       (.I0(crdy),
        .I1(ccmd[2]),
        .I2(ccmd[1]),
        .I3(ccmd[4]),
        .I4(ccmd[3]),
        .O(dctl_load));
  LUT6 #(
    .INIT(64'h00008000AAAAAAAA)) 
    \cbus[15]_INST_0_i_1 
       (.I0(crdy),
        .I1(ccmd_rg[2]),
        .I2(ccmd_rg[1]),
        .I3(ccmd_rg[3]),
        .I4(ccmd_rg[4]),
        .I5(\cbus[15]_INST_0_i_3_n_0 ),
        .O(\cbus[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFFFF)) 
    \cbus[15]_INST_0_i_2 
       (.I0(ccmd[0]),
        .I1(ccmd[2]),
        .I2(crdy),
        .I3(ccmd[4]),
        .I4(ccmd[3]),
        .I5(ccmd[1]),
        .O(\cbus[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \cbus[15]_INST_0_i_3 
       (.I0(ccmd[1]),
        .I1(ccmd[4]),
        .I2(ccmd[3]),
        .I3(ccmd[0]),
        .I4(ccmd[2]),
        .O(\cbus[15]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ccmd_rg[1]_i_1 
       (.I0(ccmd[1]),
        .I1(crdy),
        .O(\ccmd_rg[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \ccmd_rg[2]_i_1 
       (.I0(crdy),
        .I1(ccmd[2]),
        .O(\ccmd_rg[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ccmd_rg[3]_i_1 
       (.I0(ccmd[3]),
        .I1(crdy),
        .O(\ccmd_rg[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ccmd_rg[4]_i_1 
       (.I0(ccmd[4]),
        .I1(crdy),
        .O(\ccmd_rg[4]_i_1_n_0 ));
  FDRE \ccmd_rg_reg[1] 
       (.C(clk),
        .CE(crdy),
        .D(\ccmd_rg[1]_i_1_n_0 ),
        .Q(ccmd_rg[1]),
        .R(rst_n_0));
  FDRE \ccmd_rg_reg[2] 
       (.C(clk),
        .CE(crdy),
        .D(\ccmd_rg[2]_i_1_n_0 ),
        .Q(ccmd_rg[2]),
        .R(rst_n_0));
  FDRE \ccmd_rg_reg[3] 
       (.C(clk),
        .CE(crdy),
        .D(\ccmd_rg[3]_i_1_n_0 ),
        .Q(ccmd_rg[3]),
        .R(rst_n_0));
  FDRE \ccmd_rg_reg[4] 
       (.C(clk),
        .CE(crdy),
        .D(\ccmd_rg[4]_i_1_n_0 ),
        .Q(ccmd_rg[4]),
        .R(rst_n_0));
  FDSE crdy_rg_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_71),
        .Q(crdy),
        .S(rst_n_0));
  FDRE dctl_step_f_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(Q),
        .Q(dctl_step_f),
        .R(rst_n_0));
  divc16_fsm fsm
       (.D(D),
        .DI(DI),
        .E(crdy),
        .O9(O9[16:1]),
        .Q(Q),
        .S(S),
        .abus(abus),
        .abus_10_sp_1(abus_10_sn_1),
        .abus_11_sp_1(abus_11_sn_1),
        .abus_12_sp_1(abus_12_sn_1),
        .abus_13_sp_1(abus_13_sn_1),
        .abus_14_sp_1(abus_14_sn_1),
        .abus_2_sp_1(abus_2_sn_1),
        .abus_3_sp_1(abus_3_sn_1),
        .abus_4_sp_1(abus_4_sn_1),
        .abus_5_sp_1(abus_5_sn_1),
        .abus_6_sp_1(abus_6_sn_1),
        .abus_7_sp_1(abus_7_sn_1),
        .abus_8_sp_1(abus_8_sn_1),
        .abus_9_sp_1(abus_9_sn_1),
        .art_o_carry__0_i_5_0(art_o_carry__0_i_5),
        .art_o_carry__0_i_6_0(art_o_carry__0_i_6),
        .art_o_carry__0_i_7_0(art_o_carry__0_i_7),
        .art_o_carry__0_i_8_0(art_o_carry__0_i_8),
        .art_o_carry__1_i_5_0(art_o_carry__1_i_5),
        .art_o_carry__1_i_6_0(art_o_carry__1_i_6),
        .art_o_carry__1_i_7_0(art_o_carry__1_i_7),
        .art_o_carry__1_i_8_0(art_o_carry__1_i_8),
        .art_o_carry__2_i_5_0(art_o_carry__2_i_5),
        .art_o_carry__2_i_6_0(art_o_carry__2_i_6),
        .art_o_carry__2_i_7_0(art_o_carry__2_i_7),
        .art_o_carry__2_i_8_0(art_o_carry__2_i_8),
        .art_o_carry__3_i_1_0(art_o_carry__3_i_1),
        .art_o_carry__3_i_1_1(art_o_carry__3_i_1_0),
        .art_o_carry_i_6_0(art_o_carry_i_6),
        .art_o_carry_i_7_0(art_o_carry_i_7),
        .art_o_carry_i_8_0(art_o_carry_i_8),
        .bbus(bbus[15]),
        .cbus(cbus),
        .\cbus[0]_0 (\cbus[15]_INST_0_i_2_n_0 ),
        .cbus_0_sp_1(\cbus[15]_INST_0_i_1_n_0 ),
        .ccmd(ccmd),
        .ccmd_3_sp_1(fsm_n_71),
        .chg_quo_sgn_reg_0(dctl_load),
        .clk(clk),
        .dctl_ebus_neg(dctl_ebus_neg),
        .\dctl_stat_reg[0]_0 (\dctl_stat_reg[0] ),
        .\dctl_stat_reg[0]_1 (\dctl_stat_reg[0]_0 ),
        .\dctl_stat_reg[0]_2 (E),
        .\dctl_stat_reg[1]_0 (\dctl_stat_reg[1] ),
        .dctl_step_f(dctl_step_f),
        .dso(dso),
        .dso__0(dso__0),
        .quo_f(quo_f),
        .quo_lsb(quo_lsb),
        .\rg_den_reg[10] (\rg_den_reg[10] ),
        .\rg_den_reg[11] (\rg_den_reg[11] ),
        .\rg_den_reg[12] (\rg_den_reg[12] ),
        .\rg_den_reg[13] (\rg_den_reg[13] ),
        .\rg_den_reg[14] (\rg_den_reg[14] ),
        .\rg_den_reg[15] (\rg_den_reg[15] ),
        .\rg_den_reg[16] (\rg_den[16]_i_3_n_0 ),
        .\rg_den_reg[3] (\rg_den_reg[3] ),
        .\rg_den_reg[4] (\rg_den_reg[4] ),
        .\rg_den_reg[5] (\rg_den_reg[5] ),
        .\rg_den_reg[6] (\rg_den_reg[6] ),
        .\rg_den_reg[7] (\rg_den_reg[7] ),
        .\rg_den_reg[8] (\rg_den_reg[8] ),
        .\rg_den_reg[9] (\rg_den_reg[9] ),
        .\rg_dso_reg[15] (\rg_dso[15]_i_3_n_0 ),
        .\rg_dso_reg[16] (\rg_dso_reg[16] ),
        .\rg_rem_reg[10] (\rg_rem_reg[10] ),
        .\rg_rem_reg[11] (\rg_rem_reg[11] ),
        .\rg_rem_reg[14] (\rg_rem_reg[14] ),
        .\rg_rem_reg[15] (\rg_rem_reg[15] ),
        .\rg_rem_reg[16] (\rg_rem_reg[16] ),
        .\rg_rem_reg[6] (\rg_rem_reg[6] ),
        .\rg_rem_reg[7] (\rg_rem_reg[7] ),
        .rst_n(rst_n),
        .rst_n_0(rst_n_0));
  FDRE quo_f_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(quo_lsb),
        .Q(quo_f),
        .R(rst_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    \rg_den[16]_i_3 
       (.I0(dctl_load),
        .I1(ccmd[0]),
        .I2(abus[14]),
        .O(\rg_den[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \rg_dso[0]_i_1 
       (.I0(rst_n),
        .I1(bbus[0]),
        .I2(dctl_load),
        .I3(O9[0]),
        .O(rst_n_16));
  LUT4 #(
    .INIT(16'h8A80)) 
    \rg_dso[10]_i_1 
       (.I0(rst_n),
        .I1(bbus[10]),
        .I2(dctl_load),
        .I3(O9[10]),
        .O(rst_n_6));
  LUT4 #(
    .INIT(16'h8A80)) 
    \rg_dso[11]_i_1 
       (.I0(rst_n),
        .I1(bbus[11]),
        .I2(dctl_load),
        .I3(O9[11]),
        .O(rst_n_5));
  LUT4 #(
    .INIT(16'h8A80)) 
    \rg_dso[12]_i_1 
       (.I0(rst_n),
        .I1(bbus[12]),
        .I2(dctl_load),
        .I3(O9[12]),
        .O(rst_n_4));
  LUT4 #(
    .INIT(16'h8A80)) 
    \rg_dso[13]_i_1 
       (.I0(rst_n),
        .I1(bbus[13]),
        .I2(dctl_load),
        .I3(O9[13]),
        .O(rst_n_3));
  LUT4 #(
    .INIT(16'h8A80)) 
    \rg_dso[14]_i_1 
       (.I0(rst_n),
        .I1(bbus[14]),
        .I2(dctl_load),
        .I3(O9[14]),
        .O(rst_n_2));
  LUT4 #(
    .INIT(16'h8A80)) 
    \rg_dso[15]_i_2 
       (.I0(rst_n),
        .I1(bbus[15]),
        .I2(dctl_load),
        .I3(O9[15]),
        .O(rst_n_1));
  LUT6 #(
    .INIT(64'hA2AAAAAAAAAAAAAA)) 
    \rg_dso[15]_i_3 
       (.I0(rst_n),
        .I1(ccmd[3]),
        .I2(ccmd[4]),
        .I3(ccmd[1]),
        .I4(ccmd[2]),
        .I5(crdy),
        .O(\rg_dso[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \rg_dso[16]_i_2 
       (.I0(dctl_load),
        .I1(ccmd[0]),
        .I2(bbus[15]),
        .O(ccmd_0_sn_1));
  LUT4 #(
    .INIT(16'h8A80)) 
    \rg_dso[1]_i_1 
       (.I0(rst_n),
        .I1(bbus[1]),
        .I2(dctl_load),
        .I3(O9[1]),
        .O(rst_n_15));
  LUT4 #(
    .INIT(16'h8A80)) 
    \rg_dso[2]_i_1 
       (.I0(rst_n),
        .I1(bbus[2]),
        .I2(dctl_load),
        .I3(O9[2]),
        .O(rst_n_14));
  LUT4 #(
    .INIT(16'h8A80)) 
    \rg_dso[3]_i_1 
       (.I0(rst_n),
        .I1(bbus[3]),
        .I2(dctl_load),
        .I3(O9[3]),
        .O(rst_n_13));
  LUT4 #(
    .INIT(16'h8A80)) 
    \rg_dso[4]_i_1 
       (.I0(rst_n),
        .I1(bbus[4]),
        .I2(dctl_load),
        .I3(O9[4]),
        .O(rst_n_12));
  LUT4 #(
    .INIT(16'h8A80)) 
    \rg_dso[5]_i_1 
       (.I0(rst_n),
        .I1(bbus[5]),
        .I2(dctl_load),
        .I3(O9[5]),
        .O(rst_n_11));
  LUT4 #(
    .INIT(16'h8A80)) 
    \rg_dso[6]_i_1 
       (.I0(rst_n),
        .I1(bbus[6]),
        .I2(dctl_load),
        .I3(O9[6]),
        .O(rst_n_10));
  LUT4 #(
    .INIT(16'h8A80)) 
    \rg_dso[7]_i_1 
       (.I0(rst_n),
        .I1(bbus[7]),
        .I2(dctl_load),
        .I3(O9[7]),
        .O(rst_n_9));
  LUT4 #(
    .INIT(16'h8A80)) 
    \rg_dso[8]_i_1 
       (.I0(rst_n),
        .I1(bbus[8]),
        .I2(dctl_load),
        .I3(O9[8]),
        .O(rst_n_8));
  LUT4 #(
    .INIT(16'h8A80)) 
    \rg_dso[9]_i_1 
       (.I0(rst_n),
        .I1(bbus[9]),
        .I2(dctl_load),
        .I3(O9[9]),
        .O(rst_n_7));
  LUT6 #(
    .INIT(64'h00800000FFFFFFFF)) 
    \rg_rem[16]_i_1 
       (.I0(crdy),
        .I1(ccmd[2]),
        .I2(ccmd[1]),
        .I3(ccmd[4]),
        .I4(ccmd[3]),
        .I5(rst_n),
        .O(SR));
endmodule

module divc16_fsm
   (rst_n_0,
    cbus,
    Q,
    D,
    \dctl_stat_reg[0]_0 ,
    \dctl_stat_reg[0]_1 ,
    DI,
    .abus_14_sp_1(abus_14_sn_1),
    .abus_13_sp_1(abus_13_sn_1),
    .abus_12_sp_1(abus_12_sn_1),
    .abus_11_sp_1(abus_11_sn_1),
    .abus_10_sp_1(abus_10_sn_1),
    .abus_9_sp_1(abus_9_sn_1),
    .abus_8_sp_1(abus_8_sn_1),
    .abus_7_sp_1(abus_7_sn_1),
    .abus_6_sp_1(abus_6_sn_1),
    .abus_5_sp_1(abus_5_sn_1),
    .abus_4_sp_1(abus_4_sn_1),
    .abus_3_sp_1(abus_3_sn_1),
    .abus_2_sp_1(abus_2_sn_1),
    dctl_ebus_neg,
    \rg_rem_reg[7] ,
    \rg_rem_reg[11] ,
    \rg_rem_reg[15] ,
    quo_lsb,
    \rg_dso_reg[16] ,
    S,
    \rg_rem_reg[6] ,
    \rg_rem_reg[10] ,
    \rg_rem_reg[14] ,
    .ccmd_3_sp_1(ccmd_3_sn_1),
    \dctl_stat_reg[0]_2 ,
    \dctl_stat_reg[1]_0 ,
    clk,
    art_o_carry__3_i_1_0,
    .cbus_0_sp_1(cbus_0_sn_1),
    art_o_carry__3_i_1_1,
    \cbus[0]_0 ,
    \rg_den_reg[3] ,
    \rg_den_reg[4] ,
    \rg_den_reg[5] ,
    \rg_den_reg[6] ,
    \rg_den_reg[7] ,
    \rg_den_reg[8] ,
    \rg_den_reg[9] ,
    \rg_den_reg[10] ,
    \rg_den_reg[11] ,
    \rg_den_reg[12] ,
    \rg_den_reg[13] ,
    \rg_den_reg[14] ,
    \rg_den_reg[15] ,
    dso,
    chg_quo_sgn_reg_0,
    bbus,
    ccmd,
    abus,
    \rg_den_reg[16] ,
    rst_n,
    O9,
    \rg_dso_reg[15] ,
    quo_f,
    dso__0,
    art_o_carry_i_8_0,
    art_o_carry_i_7_0,
    art_o_carry_i_6_0,
    art_o_carry__0_i_8_0,
    art_o_carry__0_i_7_0,
    art_o_carry__0_i_6_0,
    art_o_carry__0_i_5_0,
    art_o_carry__1_i_8_0,
    art_o_carry__1_i_7_0,
    art_o_carry__1_i_6_0,
    art_o_carry__1_i_5_0,
    art_o_carry__2_i_8_0,
    art_o_carry__2_i_7_0,
    art_o_carry__2_i_6_0,
    art_o_carry__2_i_5_0,
    dctl_step_f,
    \rg_rem_reg[16] ,
    E);
  output rst_n_0;
  output [15:0]cbus;
  output [0:0]Q;
  output [2:0]D;
  output \dctl_stat_reg[0]_0 ;
  output \dctl_stat_reg[0]_1 ;
  output [3:0]DI;
  output dctl_ebus_neg;
  output [3:0]\rg_rem_reg[7] ;
  output [3:0]\rg_rem_reg[11] ;
  output [3:0]\rg_rem_reg[15] ;
  output quo_lsb;
  output [0:0]\rg_dso_reg[16] ;
  output [3:0]S;
  output [3:0]\rg_rem_reg[6] ;
  output [3:0]\rg_rem_reg[10] ;
  output [3:0]\rg_rem_reg[14] ;
  output [0:0]\dctl_stat_reg[0]_2 ;
  output [0:0]\dctl_stat_reg[1]_0 ;
  input clk;
  input [3:0]art_o_carry__3_i_1_0;
  input [16:0]art_o_carry__3_i_1_1;
  input \cbus[0]_0 ;
  input \rg_den_reg[3] ;
  input \rg_den_reg[4] ;
  input \rg_den_reg[5] ;
  input \rg_den_reg[6] ;
  input \rg_den_reg[7] ;
  input \rg_den_reg[8] ;
  input \rg_den_reg[9] ;
  input \rg_den_reg[10] ;
  input \rg_den_reg[11] ;
  input \rg_den_reg[12] ;
  input \rg_den_reg[13] ;
  input \rg_den_reg[14] ;
  input \rg_den_reg[15] ;
  input [0:0]dso;
  input chg_quo_sgn_reg_0;
  input [0:0]bbus;
  input [4:0]ccmd;
  input [14:0]abus;
  input \rg_den_reg[16] ;
  input rst_n;
  input [15:0]O9;
  input \rg_dso_reg[15] ;
  input quo_f;
  input [15:0]dso__0;
  input art_o_carry_i_8_0;
  input art_o_carry_i_7_0;
  input art_o_carry_i_6_0;
  input art_o_carry__0_i_8_0;
  input art_o_carry__0_i_7_0;
  input art_o_carry__0_i_6_0;
  input art_o_carry__0_i_5_0;
  input art_o_carry__1_i_8_0;
  input art_o_carry__1_i_7_0;
  input art_o_carry__1_i_6_0;
  input art_o_carry__1_i_5_0;
  input art_o_carry__2_i_8_0;
  input art_o_carry__2_i_7_0;
  input art_o_carry__2_i_6_0;
  input art_o_carry__2_i_5_0;
  input dctl_step_f;
  input \rg_rem_reg[16] ;
  input [0:0]E;
  output abus_14_sn_1;
  output abus_13_sn_1;
  output abus_12_sn_1;
  output abus_11_sn_1;
  output abus_10_sn_1;
  output abus_9_sn_1;
  output abus_8_sn_1;
  output abus_7_sn_1;
  output abus_6_sn_1;
  output abus_5_sn_1;
  output abus_4_sn_1;
  output abus_3_sn_1;
  output abus_2_sn_1;
  output ccmd_3_sn_1;
  input cbus_0_sn_1;

  wire \<const1> ;
  wire [2:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [15:0]O9;
  wire [0:0]Q;
  wire [3:0]S;
  wire [14:0]abus;
  wire abus_10_sn_1;
  wire abus_11_sn_1;
  wire abus_12_sn_1;
  wire abus_13_sn_1;
  wire abus_14_sn_1;
  wire abus_2_sn_1;
  wire abus_3_sn_1;
  wire abus_4_sn_1;
  wire abus_5_sn_1;
  wire abus_6_sn_1;
  wire abus_7_sn_1;
  wire abus_8_sn_1;
  wire abus_9_sn_1;
  wire art_o_carry__0_i_10_n_0;
  wire art_o_carry__0_i_11_n_0;
  wire art_o_carry__0_i_12_n_0;
  wire art_o_carry__0_i_5_0;
  wire art_o_carry__0_i_6_0;
  wire art_o_carry__0_i_7_0;
  wire art_o_carry__0_i_8_0;
  wire art_o_carry__0_i_9_n_0;
  wire art_o_carry__1_i_10_n_0;
  wire art_o_carry__1_i_11_n_0;
  wire art_o_carry__1_i_12_n_0;
  wire art_o_carry__1_i_5_0;
  wire art_o_carry__1_i_6_0;
  wire art_o_carry__1_i_7_0;
  wire art_o_carry__1_i_8_0;
  wire art_o_carry__1_i_9_n_0;
  wire art_o_carry__2_i_10_n_0;
  wire art_o_carry__2_i_11_n_0;
  wire art_o_carry__2_i_12_n_0;
  wire art_o_carry__2_i_5_0;
  wire art_o_carry__2_i_6_0;
  wire art_o_carry__2_i_7_0;
  wire art_o_carry__2_i_8_0;
  wire art_o_carry__2_i_9_n_0;
  wire [3:0]art_o_carry__3_i_1_0;
  wire [16:0]art_o_carry__3_i_1_1;
  wire art_o_carry__3_i_2_n_0;
  wire art_o_carry__3_i_3_n_0;
  wire art_o_carry_i_10_n_0;
  wire art_o_carry_i_11_n_0;
  wire art_o_carry_i_12_n_0;
  wire art_o_carry_i_13_n_0;
  wire art_o_carry_i_14_n_0;
  wire art_o_carry_i_15_n_0;
  wire art_o_carry_i_16_n_0;
  wire art_o_carry_i_17_n_0;
  wire art_o_carry_i_18_n_0;
  wire art_o_carry_i_6_0;
  wire art_o_carry_i_7_0;
  wire art_o_carry_i_8_0;
  wire [0:0]bbus;
  wire [15:0]cbus;
  wire \cbus[0]_0 ;
  wire \cbus[0]_INST_0_i_1_n_0 ;
  wire cbus_0_sn_1;
  wire [4:0]ccmd;
  wire ccmd_3_sn_1;
  wire chg_quo_sgn;
  wire chg_quo_sgn_i_1_n_0;
  wire chg_quo_sgn_reg_0;
  wire chg_rem_sgn;
  wire chg_rem_sgn_i_1_n_0;
  wire clk;
  wire crdy_rg_i_3_n_0;
  wire crdy_rg_i_4_n_0;
  wire crdy_rg_i_5_n_0;
  wire crdy_rg_i_6_n_0;
  wire dctl_ebus_neg;
  wire [4:0]dctl_next;
  wire [3:0]dctl_stat;
  wire \dctl_stat[0]_i_2_n_0 ;
  wire \dctl_stat[0]_i_3_n_0 ;
  wire \dctl_stat[0]_i_4_n_0 ;
  wire \dctl_stat[0]_i_5_n_0 ;
  wire \dctl_stat[0]_i_6_n_0 ;
  wire \dctl_stat[0]_i_7_n_0 ;
  wire \dctl_stat[1]_i_2_n_0 ;
  wire \dctl_stat[1]_i_3_n_0 ;
  wire \dctl_stat[1]_i_4_n_0 ;
  wire \dctl_stat[2]_i_2_n_0 ;
  wire \dctl_stat[2]_i_3_n_0 ;
  wire \dctl_stat[4]_i_2_n_0 ;
  wire \dctl_stat[4]_i_3_n_0 ;
  wire \dctl_stat[4]_i_4_n_0 ;
  wire \dctl_stat[4]_i_5_n_0 ;
  wire \dctl_stat_reg[0]_0 ;
  wire \dctl_stat_reg[0]_1 ;
  wire [0:0]\dctl_stat_reg[0]_2 ;
  wire [0:0]\dctl_stat_reg[1]_0 ;
  wire dctl_step_f;
  wire [0:0]dso;
  wire [15:0]dso__0;
  wire quo_f;
  wire quo_lsb;
  wire \rg_den_reg[10] ;
  wire \rg_den_reg[11] ;
  wire \rg_den_reg[12] ;
  wire \rg_den_reg[13] ;
  wire \rg_den_reg[14] ;
  wire \rg_den_reg[15] ;
  wire \rg_den_reg[16] ;
  wire \rg_den_reg[3] ;
  wire \rg_den_reg[4] ;
  wire \rg_den_reg[5] ;
  wire \rg_den_reg[6] ;
  wire \rg_den_reg[7] ;
  wire \rg_den_reg[8] ;
  wire \rg_den_reg[9] ;
  wire \rg_dso_reg[15] ;
  wire [0:0]\rg_dso_reg[16] ;
  wire [3:0]\rg_rem_reg[10] ;
  wire [3:0]\rg_rem_reg[11] ;
  wire [3:0]\rg_rem_reg[14] ;
  wire [3:0]\rg_rem_reg[15] ;
  wire \rg_rem_reg[16] ;
  wire [3:0]\rg_rem_reg[6] ;
  wire [3:0]\rg_rem_reg[7] ;
  wire rst_n;
  wire rst_n_0;

  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hA808)) 
    art_o_carry__0_i_1
       (.I0(art_o_carry_i_11_n_0),
        .I1(art_o_carry__3_i_1_1[7]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_1[6]),
        .O(\rg_rem_reg[7] [3]));
  LUT6 #(
    .INIT(64'h0DDD0DDD00000DDD)) 
    art_o_carry__0_i_10
       (.I0(dso__0[6]),
        .I1(art_o_carry__3_i_3_n_0),
        .I2(\rg_den_reg[7] ),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(art_o_carry__0_i_6_0),
        .I5(art_o_carry_i_16_n_0),
        .O(art_o_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h0DDD0DDD00000DDD)) 
    art_o_carry__0_i_11
       (.I0(dso__0[5]),
        .I1(art_o_carry__3_i_3_n_0),
        .I2(\rg_den_reg[6] ),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(art_o_carry__0_i_7_0),
        .I5(art_o_carry_i_16_n_0),
        .O(art_o_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h0DDD0DDD00000DDD)) 
    art_o_carry__0_i_12
       (.I0(dso__0[4]),
        .I1(art_o_carry__3_i_3_n_0),
        .I2(\rg_den_reg[5] ),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(art_o_carry__0_i_8_0),
        .I5(art_o_carry_i_16_n_0),
        .O(art_o_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    art_o_carry__0_i_2
       (.I0(art_o_carry_i_11_n_0),
        .I1(art_o_carry__3_i_1_1[6]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_1[5]),
        .O(\rg_rem_reg[7] [2]));
  LUT4 #(
    .INIT(16'hA808)) 
    art_o_carry__0_i_3
       (.I0(art_o_carry_i_11_n_0),
        .I1(art_o_carry__3_i_1_1[5]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_1[4]),
        .O(\rg_rem_reg[7] [1]));
  LUT4 #(
    .INIT(16'hA808)) 
    art_o_carry__0_i_4
       (.I0(art_o_carry_i_11_n_0),
        .I1(art_o_carry__3_i_1_1[4]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_1[3]),
        .O(\rg_rem_reg[7] [0]));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    art_o_carry__0_i_5
       (.I0(art_o_carry__3_i_1_1[6]),
        .I1(Q),
        .I2(art_o_carry__3_i_1_1[7]),
        .I3(art_o_carry_i_11_n_0),
        .I4(art_o_carry__0_i_9_n_0),
        .I5(art_o_carry_i_10_n_0),
        .O(\rg_rem_reg[6] [3]));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    art_o_carry__0_i_6
       (.I0(art_o_carry__3_i_1_1[5]),
        .I1(Q),
        .I2(art_o_carry__3_i_1_1[6]),
        .I3(art_o_carry_i_11_n_0),
        .I4(art_o_carry__0_i_10_n_0),
        .I5(art_o_carry_i_10_n_0),
        .O(\rg_rem_reg[6] [2]));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    art_o_carry__0_i_7
       (.I0(art_o_carry__3_i_1_1[4]),
        .I1(Q),
        .I2(art_o_carry__3_i_1_1[5]),
        .I3(art_o_carry_i_11_n_0),
        .I4(art_o_carry__0_i_11_n_0),
        .I5(art_o_carry_i_10_n_0),
        .O(\rg_rem_reg[6] [1]));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    art_o_carry__0_i_8
       (.I0(art_o_carry__3_i_1_1[3]),
        .I1(Q),
        .I2(art_o_carry__3_i_1_1[4]),
        .I3(art_o_carry_i_11_n_0),
        .I4(art_o_carry__0_i_12_n_0),
        .I5(art_o_carry_i_10_n_0),
        .O(\rg_rem_reg[6] [0]));
  LUT6 #(
    .INIT(64'h0DDD0DDD00000DDD)) 
    art_o_carry__0_i_9
       (.I0(dso__0[7]),
        .I1(art_o_carry__3_i_3_n_0),
        .I2(\rg_den_reg[8] ),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(art_o_carry__0_i_5_0),
        .I5(art_o_carry_i_16_n_0),
        .O(art_o_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    art_o_carry__1_i_1
       (.I0(art_o_carry_i_11_n_0),
        .I1(art_o_carry__3_i_1_1[11]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_1[10]),
        .O(\rg_rem_reg[11] [3]));
  LUT6 #(
    .INIT(64'h0DDD0DDD00000DDD)) 
    art_o_carry__1_i_10
       (.I0(dso__0[10]),
        .I1(art_o_carry__3_i_3_n_0),
        .I2(\rg_den_reg[11] ),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(art_o_carry__1_i_6_0),
        .I5(art_o_carry_i_16_n_0),
        .O(art_o_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'h0DDD0DDD00000DDD)) 
    art_o_carry__1_i_11
       (.I0(dso__0[9]),
        .I1(art_o_carry__3_i_3_n_0),
        .I2(\rg_den_reg[10] ),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(art_o_carry__1_i_7_0),
        .I5(art_o_carry_i_16_n_0),
        .O(art_o_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'h0DDD0DDD00000DDD)) 
    art_o_carry__1_i_12
       (.I0(dso__0[8]),
        .I1(art_o_carry__3_i_3_n_0),
        .I2(\rg_den_reg[9] ),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(art_o_carry__1_i_8_0),
        .I5(art_o_carry_i_16_n_0),
        .O(art_o_carry__1_i_12_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    art_o_carry__1_i_2
       (.I0(art_o_carry_i_11_n_0),
        .I1(art_o_carry__3_i_1_1[10]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_1[9]),
        .O(\rg_rem_reg[11] [2]));
  LUT4 #(
    .INIT(16'hA808)) 
    art_o_carry__1_i_3
       (.I0(art_o_carry_i_11_n_0),
        .I1(art_o_carry__3_i_1_1[9]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_1[8]),
        .O(\rg_rem_reg[11] [1]));
  LUT4 #(
    .INIT(16'hA808)) 
    art_o_carry__1_i_4
       (.I0(art_o_carry_i_11_n_0),
        .I1(art_o_carry__3_i_1_1[8]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_1[7]),
        .O(\rg_rem_reg[11] [0]));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    art_o_carry__1_i_5
       (.I0(art_o_carry__3_i_1_1[10]),
        .I1(Q),
        .I2(art_o_carry__3_i_1_1[11]),
        .I3(art_o_carry_i_11_n_0),
        .I4(art_o_carry__1_i_9_n_0),
        .I5(art_o_carry_i_10_n_0),
        .O(\rg_rem_reg[10] [3]));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    art_o_carry__1_i_6
       (.I0(art_o_carry__3_i_1_1[9]),
        .I1(Q),
        .I2(art_o_carry__3_i_1_1[10]),
        .I3(art_o_carry_i_11_n_0),
        .I4(art_o_carry__1_i_10_n_0),
        .I5(art_o_carry_i_10_n_0),
        .O(\rg_rem_reg[10] [2]));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    art_o_carry__1_i_7
       (.I0(art_o_carry__3_i_1_1[8]),
        .I1(Q),
        .I2(art_o_carry__3_i_1_1[9]),
        .I3(art_o_carry_i_11_n_0),
        .I4(art_o_carry__1_i_11_n_0),
        .I5(art_o_carry_i_10_n_0),
        .O(\rg_rem_reg[10] [1]));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    art_o_carry__1_i_8
       (.I0(art_o_carry__3_i_1_1[7]),
        .I1(Q),
        .I2(art_o_carry__3_i_1_1[8]),
        .I3(art_o_carry_i_11_n_0),
        .I4(art_o_carry__1_i_12_n_0),
        .I5(art_o_carry_i_10_n_0),
        .O(\rg_rem_reg[10] [0]));
  LUT6 #(
    .INIT(64'h0DDD0DDD00000DDD)) 
    art_o_carry__1_i_9
       (.I0(dso__0[11]),
        .I1(art_o_carry__3_i_3_n_0),
        .I2(\rg_den_reg[12] ),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(art_o_carry__1_i_5_0),
        .I5(art_o_carry_i_16_n_0),
        .O(art_o_carry__1_i_9_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    art_o_carry__2_i_1
       (.I0(art_o_carry_i_11_n_0),
        .I1(art_o_carry__3_i_1_1[15]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_1[14]),
        .O(\rg_rem_reg[15] [3]));
  LUT6 #(
    .INIT(64'h0DDD0DDD00000DDD)) 
    art_o_carry__2_i_10
       (.I0(dso__0[14]),
        .I1(art_o_carry__3_i_3_n_0),
        .I2(\rg_den_reg[15] ),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(art_o_carry__2_i_6_0),
        .I5(art_o_carry_i_16_n_0),
        .O(art_o_carry__2_i_10_n_0));
  LUT6 #(
    .INIT(64'h0DDD0DDD00000DDD)) 
    art_o_carry__2_i_11
       (.I0(dso__0[13]),
        .I1(art_o_carry__3_i_3_n_0),
        .I2(\rg_den_reg[14] ),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(art_o_carry__2_i_7_0),
        .I5(art_o_carry_i_16_n_0),
        .O(art_o_carry__2_i_11_n_0));
  LUT6 #(
    .INIT(64'h0DDD0DDD00000DDD)) 
    art_o_carry__2_i_12
       (.I0(dso__0[12]),
        .I1(art_o_carry__3_i_3_n_0),
        .I2(\rg_den_reg[13] ),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(art_o_carry__2_i_8_0),
        .I5(art_o_carry_i_16_n_0),
        .O(art_o_carry__2_i_12_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    art_o_carry__2_i_2
       (.I0(art_o_carry_i_11_n_0),
        .I1(art_o_carry__3_i_1_1[14]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_1[13]),
        .O(\rg_rem_reg[15] [2]));
  LUT4 #(
    .INIT(16'hA808)) 
    art_o_carry__2_i_3
       (.I0(art_o_carry_i_11_n_0),
        .I1(art_o_carry__3_i_1_1[13]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_1[12]),
        .O(\rg_rem_reg[15] [1]));
  LUT4 #(
    .INIT(16'hA808)) 
    art_o_carry__2_i_4
       (.I0(art_o_carry_i_11_n_0),
        .I1(art_o_carry__3_i_1_1[12]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_1[11]),
        .O(\rg_rem_reg[15] [0]));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    art_o_carry__2_i_5
       (.I0(art_o_carry__3_i_1_1[14]),
        .I1(Q),
        .I2(art_o_carry__3_i_1_1[15]),
        .I3(art_o_carry_i_11_n_0),
        .I4(art_o_carry__2_i_9_n_0),
        .I5(art_o_carry_i_10_n_0),
        .O(\rg_rem_reg[14] [3]));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    art_o_carry__2_i_6
       (.I0(art_o_carry__3_i_1_1[13]),
        .I1(Q),
        .I2(art_o_carry__3_i_1_1[14]),
        .I3(art_o_carry_i_11_n_0),
        .I4(art_o_carry__2_i_10_n_0),
        .I5(art_o_carry_i_10_n_0),
        .O(\rg_rem_reg[14] [2]));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    art_o_carry__2_i_7
       (.I0(art_o_carry__3_i_1_1[12]),
        .I1(Q),
        .I2(art_o_carry__3_i_1_1[13]),
        .I3(art_o_carry_i_11_n_0),
        .I4(art_o_carry__2_i_11_n_0),
        .I5(art_o_carry_i_10_n_0),
        .O(\rg_rem_reg[14] [1]));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    art_o_carry__2_i_8
       (.I0(art_o_carry__3_i_1_1[11]),
        .I1(Q),
        .I2(art_o_carry__3_i_1_1[12]),
        .I3(art_o_carry_i_11_n_0),
        .I4(art_o_carry__2_i_12_n_0),
        .I5(art_o_carry_i_10_n_0),
        .O(\rg_rem_reg[14] [0]));
  LUT6 #(
    .INIT(64'h0DDD0DDD00000DDD)) 
    art_o_carry__2_i_9
       (.I0(dso),
        .I1(art_o_carry__3_i_3_n_0),
        .I2(\dctl_stat_reg[0]_0 ),
        .I3(art_o_carry__3_i_1_0[2]),
        .I4(art_o_carry__2_i_5_0),
        .I5(art_o_carry_i_16_n_0),
        .O(art_o_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'h51AEAEAEAE515151)) 
    art_o_carry__3_i_1
       (.I0(art_o_carry__3_i_2_n_0),
        .I1(dso__0[15]),
        .I2(art_o_carry__3_i_3_n_0),
        .I3(art_o_carry_i_11_n_0),
        .I4(\rg_rem_reg[16] ),
        .I5(art_o_carry_i_10_n_0),
        .O(\rg_dso_reg[16] ));
  LUT6 #(
    .INIT(64'hFFFF454045404540)) 
    art_o_carry__3_i_2
       (.I0(art_o_carry_i_16_n_0),
        .I1(art_o_carry__3_i_1_1[15]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_1[16]),
        .I4(\dctl_stat_reg[0]_0 ),
        .I5(art_o_carry__3_i_1_0[3]),
        .O(art_o_carry__3_i_2_n_0));
  LUT5 #(
    .INIT(32'h0F0F0D0B)) 
    art_o_carry__3_i_3
       (.I0(dctl_stat[0]),
        .I1(dctl_stat[1]),
        .I2(Q),
        .I3(dctl_stat[2]),
        .I4(dctl_stat[3]),
        .O(art_o_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    art_o_carry_i_1
       (.I0(art_o_carry_i_10_n_0),
        .O(dctl_ebus_neg));
  LUT6 #(
    .INIT(64'h00A80000A8A8A8A8)) 
    art_o_carry_i_10
       (.I0(art_o_carry_i_16_n_0),
        .I1(art_o_carry_i_18_n_0),
        .I2(\dctl_stat[4]_i_5_n_0 ),
        .I3(quo_f),
        .I4(dctl_step_f),
        .I5(Q),
        .O(art_o_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'hF0F4F0F0)) 
    art_o_carry_i_11
       (.I0(dctl_stat[3]),
        .I1(dctl_stat[2]),
        .I2(Q),
        .I3(dctl_stat[1]),
        .I4(dctl_stat[0]),
        .O(art_o_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h0DDD0DDD00000DDD)) 
    art_o_carry_i_12
       (.I0(dso__0[3]),
        .I1(art_o_carry__3_i_3_n_0),
        .I2(\rg_den_reg[4] ),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(art_o_carry_i_6_0),
        .I5(art_o_carry_i_16_n_0),
        .O(art_o_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h0DDD0DDD00000DDD)) 
    art_o_carry_i_13
       (.I0(dso__0[2]),
        .I1(art_o_carry__3_i_3_n_0),
        .I2(\rg_den_reg[3] ),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(art_o_carry_i_7_0),
        .I5(art_o_carry_i_16_n_0),
        .O(art_o_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h0DDD0DDD00000DDD)) 
    art_o_carry_i_14
       (.I0(dso__0[1]),
        .I1(art_o_carry__3_i_3_n_0),
        .I2(art_o_carry__3_i_1_0[1]),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(art_o_carry_i_8_0),
        .I5(art_o_carry_i_16_n_0),
        .O(art_o_carry_i_14_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    art_o_carry_i_15
       (.I0(abus[14]),
        .I1(chg_quo_sgn_reg_0),
        .I2(art_o_carry__3_i_1_0[2]),
        .I3(Q),
        .I4(art_o_carry__3_i_1_1[0]),
        .O(art_o_carry_i_15_n_0));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    art_o_carry_i_16
       (.I0(Q),
        .I1(dctl_stat[3]),
        .I2(dctl_stat[0]),
        .I3(dctl_stat[2]),
        .I4(dctl_stat[1]),
        .O(art_o_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h8F88)) 
    art_o_carry_i_17
       (.I0(art_o_carry__3_i_1_0[0]),
        .I1(\dctl_stat_reg[0]_0 ),
        .I2(art_o_carry__3_i_3_n_0),
        .I3(dso__0[0]),
        .O(art_o_carry_i_17_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    art_o_carry_i_18
       (.I0(dctl_stat[1]),
        .I1(dctl_stat[0]),
        .O(art_o_carry_i_18_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    art_o_carry_i_2
       (.I0(art_o_carry_i_11_n_0),
        .I1(art_o_carry__3_i_1_1[3]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_1[2]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'hA808)) 
    art_o_carry_i_3
       (.I0(art_o_carry_i_11_n_0),
        .I1(art_o_carry__3_i_1_1[2]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_1[1]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'hA808)) 
    art_o_carry_i_4
       (.I0(art_o_carry_i_11_n_0),
        .I1(art_o_carry__3_i_1_1[1]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_1[0]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    art_o_carry_i_5
       (.I0(art_o_carry_i_11_n_0),
        .I1(art_o_carry__3_i_1_1[0]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_0[2]),
        .I4(chg_quo_sgn_reg_0),
        .I5(abus[14]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    art_o_carry_i_6
       (.I0(art_o_carry__3_i_1_1[2]),
        .I1(Q),
        .I2(art_o_carry__3_i_1_1[3]),
        .I3(art_o_carry_i_11_n_0),
        .I4(art_o_carry_i_12_n_0),
        .I5(art_o_carry_i_10_n_0),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    art_o_carry_i_7
       (.I0(art_o_carry__3_i_1_1[1]),
        .I1(Q),
        .I2(art_o_carry__3_i_1_1[2]),
        .I3(art_o_carry_i_11_n_0),
        .I4(art_o_carry_i_13_n_0),
        .I5(art_o_carry_i_10_n_0),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    art_o_carry_i_8
       (.I0(art_o_carry__3_i_1_1[0]),
        .I1(Q),
        .I2(art_o_carry__3_i_1_1[1]),
        .I3(art_o_carry_i_11_n_0),
        .I4(art_o_carry_i_14_n_0),
        .I5(art_o_carry_i_10_n_0),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h7784887B)) 
    art_o_carry_i_9
       (.I0(art_o_carry_i_11_n_0),
        .I1(art_o_carry_i_15_n_0),
        .I2(art_o_carry_i_16_n_0),
        .I3(art_o_carry_i_17_n_0),
        .I4(art_o_carry_i_10_n_0),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \cbus[0]_INST_0 
       (.I0(art_o_carry__3_i_1_0[0]),
        .I1(cbus_0_sn_1),
        .I2(art_o_carry__3_i_1_1[0]),
        .I3(Q),
        .I4(\cbus[0]_INST_0_i_1_n_0 ),
        .I5(\cbus[0]_0 ),
        .O(cbus[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[0]_INST_0_i_1 
       (.I0(abus[14]),
        .I1(chg_quo_sgn_reg_0),
        .I2(art_o_carry__3_i_1_0[2]),
        .O(\cbus[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \cbus[10]_INST_0 
       (.I0(\rg_den_reg[11] ),
        .I1(cbus_0_sn_1),
        .I2(art_o_carry__3_i_1_1[10]),
        .I3(Q),
        .I4(art_o_carry__3_i_1_1[9]),
        .I5(\cbus[0]_0 ),
        .O(cbus[10]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \cbus[11]_INST_0 
       (.I0(\rg_den_reg[12] ),
        .I1(cbus_0_sn_1),
        .I2(art_o_carry__3_i_1_1[11]),
        .I3(Q),
        .I4(art_o_carry__3_i_1_1[10]),
        .I5(\cbus[0]_0 ),
        .O(cbus[11]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \cbus[12]_INST_0 
       (.I0(\rg_den_reg[13] ),
        .I1(cbus_0_sn_1),
        .I2(art_o_carry__3_i_1_1[12]),
        .I3(Q),
        .I4(art_o_carry__3_i_1_1[11]),
        .I5(\cbus[0]_0 ),
        .O(cbus[12]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \cbus[13]_INST_0 
       (.I0(\rg_den_reg[14] ),
        .I1(cbus_0_sn_1),
        .I2(art_o_carry__3_i_1_1[13]),
        .I3(Q),
        .I4(art_o_carry__3_i_1_1[12]),
        .I5(\cbus[0]_0 ),
        .O(cbus[13]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \cbus[14]_INST_0 
       (.I0(\rg_den_reg[15] ),
        .I1(cbus_0_sn_1),
        .I2(art_o_carry__3_i_1_1[14]),
        .I3(Q),
        .I4(art_o_carry__3_i_1_1[13]),
        .I5(\cbus[0]_0 ),
        .O(cbus[14]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \cbus[15]_INST_0 
       (.I0(art_o_carry__3_i_1_0[2]),
        .I1(cbus_0_sn_1),
        .I2(art_o_carry__3_i_1_1[15]),
        .I3(Q),
        .I4(art_o_carry__3_i_1_1[14]),
        .I5(\cbus[0]_0 ),
        .O(cbus[15]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \cbus[1]_INST_0 
       (.I0(art_o_carry__3_i_1_0[1]),
        .I1(cbus_0_sn_1),
        .I2(art_o_carry__3_i_1_1[1]),
        .I3(Q),
        .I4(art_o_carry__3_i_1_1[0]),
        .I5(\cbus[0]_0 ),
        .O(cbus[1]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \cbus[2]_INST_0 
       (.I0(\rg_den_reg[3] ),
        .I1(cbus_0_sn_1),
        .I2(art_o_carry__3_i_1_1[2]),
        .I3(Q),
        .I4(art_o_carry__3_i_1_1[1]),
        .I5(\cbus[0]_0 ),
        .O(cbus[2]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \cbus[3]_INST_0 
       (.I0(\rg_den_reg[4] ),
        .I1(cbus_0_sn_1),
        .I2(art_o_carry__3_i_1_1[3]),
        .I3(Q),
        .I4(art_o_carry__3_i_1_1[2]),
        .I5(\cbus[0]_0 ),
        .O(cbus[3]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \cbus[4]_INST_0 
       (.I0(\rg_den_reg[5] ),
        .I1(cbus_0_sn_1),
        .I2(art_o_carry__3_i_1_1[4]),
        .I3(Q),
        .I4(art_o_carry__3_i_1_1[3]),
        .I5(\cbus[0]_0 ),
        .O(cbus[4]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \cbus[5]_INST_0 
       (.I0(\rg_den_reg[6] ),
        .I1(cbus_0_sn_1),
        .I2(art_o_carry__3_i_1_1[5]),
        .I3(Q),
        .I4(art_o_carry__3_i_1_1[4]),
        .I5(\cbus[0]_0 ),
        .O(cbus[5]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \cbus[6]_INST_0 
       (.I0(\rg_den_reg[7] ),
        .I1(cbus_0_sn_1),
        .I2(art_o_carry__3_i_1_1[6]),
        .I3(Q),
        .I4(art_o_carry__3_i_1_1[5]),
        .I5(\cbus[0]_0 ),
        .O(cbus[6]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \cbus[7]_INST_0 
       (.I0(\rg_den_reg[8] ),
        .I1(cbus_0_sn_1),
        .I2(art_o_carry__3_i_1_1[7]),
        .I3(Q),
        .I4(art_o_carry__3_i_1_1[6]),
        .I5(\cbus[0]_0 ),
        .O(cbus[7]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \cbus[8]_INST_0 
       (.I0(\rg_den_reg[9] ),
        .I1(cbus_0_sn_1),
        .I2(art_o_carry__3_i_1_1[8]),
        .I3(Q),
        .I4(art_o_carry__3_i_1_1[7]),
        .I5(\cbus[0]_0 ),
        .O(cbus[8]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \cbus[9]_INST_0 
       (.I0(\rg_den_reg[10] ),
        .I1(cbus_0_sn_1),
        .I2(art_o_carry__3_i_1_1[9]),
        .I3(Q),
        .I4(art_o_carry__3_i_1_1[8]),
        .I5(\cbus[0]_0 ),
        .O(cbus[9]));
  LUT5 #(
    .INIT(32'h28FF2800)) 
    chg_quo_sgn_i_1
       (.I0(ccmd[0]),
        .I1(\cbus[0]_INST_0_i_1_n_0 ),
        .I2(bbus),
        .I3(chg_quo_sgn_reg_0),
        .I4(chg_quo_sgn),
        .O(chg_quo_sgn_i_1_n_0));
  FDRE chg_quo_sgn_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(chg_quo_sgn_i_1_n_0),
        .Q(chg_quo_sgn),
        .R(rst_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    chg_rem_sgn_i_1
       (.I0(abus[14]),
        .I1(ccmd[0]),
        .I2(chg_quo_sgn_reg_0),
        .I3(chg_rem_sgn),
        .O(chg_rem_sgn_i_1_n_0));
  FDRE chg_rem_sgn_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(chg_rem_sgn_i_1_n_0),
        .Q(chg_rem_sgn),
        .R(rst_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    crdy_rg_i_1
       (.I0(rst_n),
        .O(rst_n_0));
  LUT6 #(
    .INIT(64'hDFFF0000DFFFFFFF)) 
    crdy_rg_i_2
       (.I0(ccmd[3]),
        .I1(ccmd[4]),
        .I2(ccmd[1]),
        .I3(ccmd[2]),
        .I4(E),
        .I5(crdy_rg_i_3_n_0),
        .O(ccmd_3_sn_1));
  LUT6 #(
    .INIT(64'hAAAAEFABFFFFFFFF)) 
    crdy_rg_i_3
       (.I0(crdy_rg_i_4_n_0),
        .I1(Q),
        .I2(quo_f),
        .I3(O9[15]),
        .I4(crdy_rg_i_5_n_0),
        .I5(crdy_rg_i_6_n_0),
        .O(crdy_rg_i_3_n_0));
  LUT4 #(
    .INIT(16'hAABA)) 
    crdy_rg_i_4
       (.I0(dctl_stat[3]),
        .I1(chg_rem_sgn),
        .I2(dctl_stat[0]),
        .I3(dctl_stat[1]),
        .O(crdy_rg_i_4_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    crdy_rg_i_5
       (.I0(dctl_stat[2]),
        .I1(chg_rem_sgn),
        .O(crdy_rg_i_5_n_0));
  LUT5 #(
    .INIT(32'h000C01F0)) 
    crdy_rg_i_6
       (.I0(chg_quo_sgn),
        .I1(dctl_stat[0]),
        .I2(dctl_stat[2]),
        .I3(Q),
        .I4(dctl_stat[1]),
        .O(crdy_rg_i_6_n_0));
  LUT6 #(
    .INIT(64'h000000000202FF02)) 
    \dctl_stat[0]_i_1 
       (.I0(\dctl_stat[0]_i_2_n_0 ),
        .I1(\dctl_stat[0]_i_3_n_0 ),
        .I2(\dctl_stat[0]_i_4_n_0 ),
        .I3(Q),
        .I4(dctl_stat[0]),
        .I5(\dctl_stat[0]_i_5_n_0 ),
        .O(dctl_next[0]));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \dctl_stat[0]_i_2 
       (.I0(\cbus[0]_INST_0_i_1_n_0 ),
        .I1(bbus),
        .I2(ccmd[0]),
        .I3(chg_quo_sgn_reg_0),
        .I4(dctl_stat[1]),
        .O(\dctl_stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEAAEEEA)) 
    \dctl_stat[0]_i_3 
       (.I0(\dctl_stat[0]_i_6_n_0 ),
        .I1(\dctl_stat[0]_i_7_n_0 ),
        .I2(Q),
        .I3(quo_f),
        .I4(O9[15]),
        .I5(\dctl_stat[4]_i_5_n_0 ),
        .O(\dctl_stat[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \dctl_stat[0]_i_4 
       (.I0(dctl_stat[1]),
        .I1(dctl_stat[0]),
        .I2(dso),
        .I3(chg_quo_sgn_reg_0),
        .I4(bbus),
        .O(\dctl_stat[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \dctl_stat[0]_i_5 
       (.I0(\dctl_stat[4]_i_2_n_0 ),
        .I1(O9[15]),
        .I2(dctl_stat[1]),
        .I3(dctl_stat[0]),
        .I4(chg_quo_sgn),
        .I5(Q),
        .O(\dctl_stat[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \dctl_stat[0]_i_6 
       (.I0(dctl_stat[0]),
        .I1(dctl_stat[1]),
        .I2(chg_quo_sgn_reg_0),
        .O(\dctl_stat[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dctl_stat[0]_i_7 
       (.I0(dctl_stat[1]),
        .I1(dctl_stat[0]),
        .O(\dctl_stat[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFFF00100010)) 
    \dctl_stat[1]_i_1 
       (.I0(\dctl_stat[4]_i_2_n_0 ),
        .I1(dctl_stat[1]),
        .I2(dctl_stat[0]),
        .I3(\dctl_stat[1]_i_2_n_0 ),
        .I4(\dctl_stat[1]_i_3_n_0 ),
        .I5(\dctl_stat[1]_i_4_n_0 ),
        .O(dctl_next[1]));
  LUT3 #(
    .INIT(8'h47)) 
    \dctl_stat[1]_i_2 
       (.I0(bbus),
        .I1(chg_quo_sgn_reg_0),
        .I2(dso),
        .O(\dctl_stat[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h99989999FFFCFFFC)) 
    \dctl_stat[1]_i_3 
       (.I0(dctl_stat[0]),
        .I1(dctl_stat[1]),
        .I2(dctl_stat[3]),
        .I3(dctl_stat[2]),
        .I4(chg_quo_sgn),
        .I5(Q),
        .O(\dctl_stat[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAEAAA)) 
    \dctl_stat[1]_i_4 
       (.I0(Q),
        .I1(chg_quo_sgn_reg_0),
        .I2(ccmd[0]),
        .I3(bbus),
        .I4(abus[14]),
        .O(\dctl_stat[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8A8AAA88888)) 
    \dctl_stat[2]_i_1 
       (.I0(\dctl_stat[2]_i_2_n_0 ),
        .I1(chg_rem_sgn),
        .I2(dctl_stat[1]),
        .I3(dctl_stat[2]),
        .I4(Q),
        .I5(\dctl_stat[2]_i_3_n_0 ),
        .O(dctl_next[2]));
  LUT6 #(
    .INIT(64'h3F3F1010C0C14040)) 
    \dctl_stat[2]_i_2 
       (.I0(dctl_stat[3]),
        .I1(dctl_stat[1]),
        .I2(dctl_stat[0]),
        .I3(chg_quo_sgn),
        .I4(Q),
        .I5(dctl_stat[2]),
        .O(\dctl_stat[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA3)) 
    \dctl_stat[2]_i_3 
       (.I0(O9[15]),
        .I1(quo_f),
        .I2(Q),
        .O(\dctl_stat[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \dctl_stat[3]_i_1 
       (.I0(Q),
        .I1(dctl_stat[0]),
        .I2(dctl_stat[1]),
        .I3(dctl_stat[2]),
        .I4(dctl_stat[3]),
        .O(dctl_next[3]));
  LUT6 #(
    .INIT(64'hFE00FFFFFE00FE00)) 
    \dctl_stat[4]_i_1 
       (.I0(dctl_stat[0]),
        .I1(dctl_stat[1]),
        .I2(\dctl_stat[4]_i_2_n_0 ),
        .I3(Q),
        .I4(\dctl_stat[4]_i_3_n_0 ),
        .I5(\dctl_stat[4]_i_4_n_0 ),
        .O(dctl_next[4]));
  LUT2 #(
    .INIT(4'hE)) 
    \dctl_stat[4]_i_2 
       (.I0(dctl_stat[2]),
        .I1(dctl_stat[3]),
        .O(\dctl_stat[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00FF00FF8F)) 
    \dctl_stat[4]_i_3 
       (.I0(abus[14]),
        .I1(ccmd[0]),
        .I2(chg_quo_sgn_reg_0),
        .I3(\dctl_stat[4]_i_5_n_0 ),
        .I4(dctl_stat[0]),
        .I5(dctl_stat[1]),
        .O(\dctl_stat[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F335F5F3F3F5F5F)) 
    \dctl_stat[4]_i_4 
       (.I0(dso),
        .I1(bbus),
        .I2(dctl_stat[0]),
        .I3(dctl_stat[1]),
        .I4(chg_quo_sgn_reg_0),
        .I5(ccmd[0]),
        .O(\dctl_stat[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \dctl_stat[4]_i_5 
       (.I0(Q),
        .I1(dctl_stat[3]),
        .I2(dctl_stat[2]),
        .O(\dctl_stat[4]_i_5_n_0 ));
  FDRE \dctl_stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(dctl_next[0]),
        .Q(dctl_stat[0]),
        .R(rst_n_0));
  FDRE \dctl_stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(dctl_next[1]),
        .Q(dctl_stat[1]),
        .R(rst_n_0));
  FDRE \dctl_stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(dctl_next[2]),
        .Q(dctl_stat[2]),
        .R(rst_n_0));
  FDRE \dctl_stat_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(dctl_next[3]),
        .Q(dctl_stat[3]),
        .R(rst_n_0));
  FDRE \dctl_stat_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(dctl_next[4]),
        .Q(Q),
        .R(rst_n_0));
  LUT3 #(
    .INIT(8'h4E)) 
    quo_f_i_1
       (.I0(Q),
        .I1(quo_f),
        .I2(O9[15]),
        .O(quo_lsb));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \rg_den[10]_i_1 
       (.I0(abus[9]),
        .I1(chg_quo_sgn_reg_0),
        .I2(\rg_den_reg[10] ),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(O9[9]),
        .O(abus_10_sn_1));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rg_den[11]_i_1 
       (.I0(abus[10]),
        .I1(chg_quo_sgn_reg_0),
        .I2(O9[10]),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(\rg_den_reg[11] ),
        .O(abus_11_sn_1));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rg_den[12]_i_1 
       (.I0(abus[11]),
        .I1(chg_quo_sgn_reg_0),
        .I2(O9[11]),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(\rg_den_reg[12] ),
        .O(abus_12_sn_1));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rg_den[13]_i_1 
       (.I0(abus[12]),
        .I1(chg_quo_sgn_reg_0),
        .I2(O9[12]),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(\rg_den_reg[13] ),
        .O(abus_13_sn_1));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rg_den[14]_i_1 
       (.I0(abus[13]),
        .I1(chg_quo_sgn_reg_0),
        .I2(O9[13]),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(\rg_den_reg[14] ),
        .O(abus_14_sn_1));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \rg_den[15]_i_1 
       (.I0(O9[14]),
        .I1(\dctl_stat_reg[0]_0 ),
        .I2(\rg_den_reg[15] ),
        .I3(rst_n),
        .I4(chg_quo_sgn_reg_0),
        .I5(abus[14]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF02FFFF)) 
    \rg_den[16]_i_1 
       (.I0(dctl_stat[0]),
        .I1(dctl_stat[2]),
        .I2(dctl_stat[3]),
        .I3(Q),
        .I4(rst_n),
        .I5(chg_quo_sgn_reg_0),
        .O(\dctl_stat_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h5500FD0055005D00)) 
    \rg_den[16]_i_2 
       (.I0(\rg_den_reg[16] ),
        .I1(art_o_carry__3_i_1_0[2]),
        .I2(\dctl_stat_reg[0]_0 ),
        .I3(rst_n),
        .I4(chg_quo_sgn_reg_0),
        .I5(O9[15]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h0002)) 
    \rg_den[16]_i_4 
       (.I0(dctl_stat[0]),
        .I1(dctl_stat[2]),
        .I2(dctl_stat[3]),
        .I3(Q),
        .O(\dctl_stat_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \rg_den[1]_i_1 
       (.I0(O9[0]),
        .I1(\dctl_stat_reg[0]_0 ),
        .I2(art_o_carry__3_i_1_0[0]),
        .I3(rst_n),
        .I4(abus[0]),
        .I5(chg_quo_sgn_reg_0),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rg_den[2]_i_1 
       (.I0(abus[1]),
        .I1(chg_quo_sgn_reg_0),
        .I2(O9[1]),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(art_o_carry__3_i_1_0[1]),
        .O(abus_2_sn_1));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rg_den[3]_i_1 
       (.I0(abus[2]),
        .I1(chg_quo_sgn_reg_0),
        .I2(O9[2]),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(\rg_den_reg[3] ),
        .O(abus_3_sn_1));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rg_den[4]_i_1 
       (.I0(abus[3]),
        .I1(chg_quo_sgn_reg_0),
        .I2(O9[3]),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(\rg_den_reg[4] ),
        .O(abus_4_sn_1));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rg_den[5]_i_1 
       (.I0(abus[4]),
        .I1(chg_quo_sgn_reg_0),
        .I2(O9[4]),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(\rg_den_reg[5] ),
        .O(abus_5_sn_1));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rg_den[6]_i_1 
       (.I0(abus[5]),
        .I1(chg_quo_sgn_reg_0),
        .I2(O9[5]),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(\rg_den_reg[6] ),
        .O(abus_6_sn_1));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rg_den[7]_i_1 
       (.I0(abus[6]),
        .I1(chg_quo_sgn_reg_0),
        .I2(O9[6]),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(\rg_den_reg[7] ),
        .O(abus_7_sn_1));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rg_den[8]_i_1 
       (.I0(abus[7]),
        .I1(chg_quo_sgn_reg_0),
        .I2(O9[7]),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(\rg_den_reg[8] ),
        .O(abus_8_sn_1));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rg_den[9]_i_1 
       (.I0(abus[8]),
        .I1(chg_quo_sgn_reg_0),
        .I2(O9[8]),
        .I3(\dctl_stat_reg[0]_0 ),
        .I4(\rg_den_reg[9] ),
        .O(abus_9_sn_1));
  LUT6 #(
    .INIT(64'h5555555555555575)) 
    \rg_dso[15]_i_1 
       (.I0(\rg_dso_reg[15] ),
        .I1(dctl_stat[0]),
        .I2(dctl_stat[1]),
        .I3(Q),
        .I4(dctl_stat[3]),
        .I5(dctl_stat[2]),
        .O(\dctl_stat_reg[0]_1 ));
  LUT4 #(
    .INIT(16'hCCDC)) 
    \rg_rem[16]_i_2 
       (.I0(dctl_stat[1]),
        .I1(Q),
        .I2(dctl_stat[2]),
        .I3(dctl_stat[3]),
        .O(\dctl_stat_reg[1]_0 ));
endmodule

module divc16_reg_den
   (Q,
    \rg_den_reg[14]_0 ,
    \rg_den_reg[13]_0 ,
    \rg_den_reg[12]_0 ,
    \rg_den_reg[11]_0 ,
    \rg_den_reg[10]_0 ,
    \rg_den_reg[9]_0 ,
    \rg_den_reg[8]_0 ,
    \rg_den_reg[7]_0 ,
    \rg_den_reg[6]_0 ,
    \rg_den_reg[5]_0 ,
    \rg_den_reg[4]_0 ,
    \rg_den_reg[3]_0 ,
    \rg_den_reg[2]_0 ,
    E,
    D,
    clk,
    \rg_den_reg[14]_1 ,
    \rg_den_reg[14]_2 ,
    \rg_den_reg[13]_1 ,
    \rg_den_reg[12]_1 ,
    \rg_den_reg[11]_1 ,
    \rg_den_reg[10]_1 ,
    \rg_den_reg[9]_1 ,
    \rg_den_reg[8]_1 ,
    \rg_den_reg[7]_1 ,
    \rg_den_reg[6]_1 ,
    \rg_den_reg[5]_1 ,
    \rg_den_reg[4]_1 ,
    \rg_den_reg[3]_1 ,
    \rg_den_reg[2]_1 );
  output [3:0]Q;
  output \rg_den_reg[14]_0 ;
  output \rg_den_reg[13]_0 ;
  output \rg_den_reg[12]_0 ;
  output \rg_den_reg[11]_0 ;
  output \rg_den_reg[10]_0 ;
  output \rg_den_reg[9]_0 ;
  output \rg_den_reg[8]_0 ;
  output \rg_den_reg[7]_0 ;
  output \rg_den_reg[6]_0 ;
  output \rg_den_reg[5]_0 ;
  output \rg_den_reg[4]_0 ;
  output \rg_den_reg[3]_0 ;
  output \rg_den_reg[2]_0 ;
  input [0:0]E;
  input [3:0]D;
  input clk;
  input \rg_den_reg[14]_1 ;
  input \rg_den_reg[14]_2 ;
  input \rg_den_reg[13]_1 ;
  input \rg_den_reg[12]_1 ;
  input \rg_den_reg[11]_1 ;
  input \rg_den_reg[10]_1 ;
  input \rg_den_reg[9]_1 ;
  input \rg_den_reg[8]_1 ;
  input \rg_den_reg[7]_1 ;
  input \rg_den_reg[6]_1 ;
  input \rg_den_reg[5]_1 ;
  input \rg_den_reg[4]_1 ;
  input \rg_den_reg[3]_1 ;
  input \rg_den_reg[2]_1 ;

  wire \<const0> ;
  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire clk;
  wire \rg_den_reg[10]_0 ;
  wire \rg_den_reg[10]_1 ;
  wire \rg_den_reg[11]_0 ;
  wire \rg_den_reg[11]_1 ;
  wire \rg_den_reg[12]_0 ;
  wire \rg_den_reg[12]_1 ;
  wire \rg_den_reg[13]_0 ;
  wire \rg_den_reg[13]_1 ;
  wire \rg_den_reg[14]_0 ;
  wire \rg_den_reg[14]_1 ;
  wire \rg_den_reg[14]_2 ;
  wire \rg_den_reg[2]_0 ;
  wire \rg_den_reg[2]_1 ;
  wire \rg_den_reg[3]_0 ;
  wire \rg_den_reg[3]_1 ;
  wire \rg_den_reg[4]_0 ;
  wire \rg_den_reg[4]_1 ;
  wire \rg_den_reg[5]_0 ;
  wire \rg_den_reg[5]_1 ;
  wire \rg_den_reg[6]_0 ;
  wire \rg_den_reg[6]_1 ;
  wire \rg_den_reg[7]_0 ;
  wire \rg_den_reg[7]_1 ;
  wire \rg_den_reg[8]_0 ;
  wire \rg_den_reg[8]_1 ;
  wire \rg_den_reg[9]_0 ;
  wire \rg_den_reg[9]_1 ;

  GND GND
       (.G(\<const0> ));
  FDRE \rg_den_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE \rg_den_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\rg_den_reg[10]_1 ),
        .Q(\rg_den_reg[10]_0 ),
        .R(\rg_den_reg[14]_1 ));
  FDRE \rg_den_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\rg_den_reg[11]_1 ),
        .Q(\rg_den_reg[11]_0 ),
        .R(\rg_den_reg[14]_1 ));
  FDRE \rg_den_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\rg_den_reg[12]_1 ),
        .Q(\rg_den_reg[12]_0 ),
        .R(\rg_den_reg[14]_1 ));
  FDRE \rg_den_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\rg_den_reg[13]_1 ),
        .Q(\rg_den_reg[13]_0 ),
        .R(\rg_den_reg[14]_1 ));
  FDRE \rg_den_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\rg_den_reg[14]_2 ),
        .Q(\rg_den_reg[14]_0 ),
        .R(\rg_den_reg[14]_1 ));
  FDRE \rg_den_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE \rg_den_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(\<const0> ));
  FDRE \rg_den_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE \rg_den_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\rg_den_reg[2]_1 ),
        .Q(\rg_den_reg[2]_0 ),
        .R(\rg_den_reg[14]_1 ));
  FDRE \rg_den_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\rg_den_reg[3]_1 ),
        .Q(\rg_den_reg[3]_0 ),
        .R(\rg_den_reg[14]_1 ));
  FDRE \rg_den_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\rg_den_reg[4]_1 ),
        .Q(\rg_den_reg[4]_0 ),
        .R(\rg_den_reg[14]_1 ));
  FDRE \rg_den_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\rg_den_reg[5]_1 ),
        .Q(\rg_den_reg[5]_0 ),
        .R(\rg_den_reg[14]_1 ));
  FDRE \rg_den_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\rg_den_reg[6]_1 ),
        .Q(\rg_den_reg[6]_0 ),
        .R(\rg_den_reg[14]_1 ));
  FDRE \rg_den_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\rg_den_reg[7]_1 ),
        .Q(\rg_den_reg[7]_0 ),
        .R(\rg_den_reg[14]_1 ));
  FDRE \rg_den_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\rg_den_reg[8]_1 ),
        .Q(\rg_den_reg[8]_0 ),
        .R(\rg_den_reg[14]_1 ));
  FDRE \rg_den_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\rg_den_reg[9]_1 ),
        .Q(\rg_den_reg[9]_0 ),
        .R(\rg_den_reg[14]_1 ));
endmodule

module divc16_reg_dso
   (dso,
    dso__0,
    \rg_dso_reg[15]_0 ,
    \rg_dso_reg[15]_1 ,
    clk,
    \rg_dso_reg[14]_0 ,
    \rg_dso_reg[13]_0 ,
    \rg_dso_reg[12]_0 ,
    \rg_dso_reg[11]_0 ,
    \rg_dso_reg[10]_0 ,
    \rg_dso_reg[9]_0 ,
    \rg_dso_reg[8]_0 ,
    \rg_dso_reg[7]_0 ,
    \rg_dso_reg[6]_0 ,
    \rg_dso_reg[5]_0 ,
    \rg_dso_reg[4]_0 ,
    \rg_dso_reg[3]_0 ,
    \rg_dso_reg[2]_0 ,
    \rg_dso_reg[1]_0 ,
    \rg_dso_reg[0]_0 ,
    dctl_load,
    D,
    \rg_dso_reg[16]_0 ,
    rst_n);
  output [0:0]dso;
  output [15:0]dso__0;
  input \rg_dso_reg[15]_0 ;
  input \rg_dso_reg[15]_1 ;
  input clk;
  input \rg_dso_reg[14]_0 ;
  input \rg_dso_reg[13]_0 ;
  input \rg_dso_reg[12]_0 ;
  input \rg_dso_reg[11]_0 ;
  input \rg_dso_reg[10]_0 ;
  input \rg_dso_reg[9]_0 ;
  input \rg_dso_reg[8]_0 ;
  input \rg_dso_reg[7]_0 ;
  input \rg_dso_reg[6]_0 ;
  input \rg_dso_reg[5]_0 ;
  input \rg_dso_reg[4]_0 ;
  input \rg_dso_reg[3]_0 ;
  input \rg_dso_reg[2]_0 ;
  input \rg_dso_reg[1]_0 ;
  input \rg_dso_reg[0]_0 ;
  input dctl_load;
  input [0:0]D;
  input \rg_dso_reg[16]_0 ;
  input rst_n;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]D;
  wire clk;
  wire dctl_load;
  wire [0:0]dso;
  wire [15:0]dso__0;
  wire \rg_dso[16]_i_1_n_0 ;
  wire \rg_dso_reg[0]_0 ;
  wire \rg_dso_reg[10]_0 ;
  wire \rg_dso_reg[11]_0 ;
  wire \rg_dso_reg[12]_0 ;
  wire \rg_dso_reg[13]_0 ;
  wire \rg_dso_reg[14]_0 ;
  wire \rg_dso_reg[15]_0 ;
  wire \rg_dso_reg[15]_1 ;
  wire \rg_dso_reg[16]_0 ;
  wire \rg_dso_reg[1]_0 ;
  wire \rg_dso_reg[2]_0 ;
  wire \rg_dso_reg[3]_0 ;
  wire \rg_dso_reg[4]_0 ;
  wire \rg_dso_reg[5]_0 ;
  wire \rg_dso_reg[6]_0 ;
  wire \rg_dso_reg[7]_0 ;
  wire \rg_dso_reg[8]_0 ;
  wire \rg_dso_reg[9]_0 ;
  wire rst_n;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h4F00FFFF4F000000)) 
    \rg_dso[16]_i_1 
       (.I0(dctl_load),
        .I1(D),
        .I2(\rg_dso_reg[16]_0 ),
        .I3(rst_n),
        .I4(\rg_dso_reg[15]_0 ),
        .I5(dso__0[15]),
        .O(\rg_dso[16]_i_1_n_0 ));
  FDRE \rg_dso_reg[0] 
       (.C(clk),
        .CE(\rg_dso_reg[15]_0 ),
        .D(\rg_dso_reg[0]_0 ),
        .Q(dso__0[0]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[10] 
       (.C(clk),
        .CE(\rg_dso_reg[15]_0 ),
        .D(\rg_dso_reg[10]_0 ),
        .Q(dso__0[10]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[11] 
       (.C(clk),
        .CE(\rg_dso_reg[15]_0 ),
        .D(\rg_dso_reg[11]_0 ),
        .Q(dso__0[11]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[12] 
       (.C(clk),
        .CE(\rg_dso_reg[15]_0 ),
        .D(\rg_dso_reg[12]_0 ),
        .Q(dso__0[12]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[13] 
       (.C(clk),
        .CE(\rg_dso_reg[15]_0 ),
        .D(\rg_dso_reg[13]_0 ),
        .Q(dso__0[13]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[14] 
       (.C(clk),
        .CE(\rg_dso_reg[15]_0 ),
        .D(\rg_dso_reg[14]_0 ),
        .Q(dso__0[14]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[15] 
       (.C(clk),
        .CE(\rg_dso_reg[15]_0 ),
        .D(\rg_dso_reg[15]_1 ),
        .Q(dso),
        .R(\<const0> ));
  FDRE \rg_dso_reg[16] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rg_dso[16]_i_1_n_0 ),
        .Q(dso__0[15]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[1] 
       (.C(clk),
        .CE(\rg_dso_reg[15]_0 ),
        .D(\rg_dso_reg[1]_0 ),
        .Q(dso__0[1]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[2] 
       (.C(clk),
        .CE(\rg_dso_reg[15]_0 ),
        .D(\rg_dso_reg[2]_0 ),
        .Q(dso__0[2]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[3] 
       (.C(clk),
        .CE(\rg_dso_reg[15]_0 ),
        .D(\rg_dso_reg[3]_0 ),
        .Q(dso__0[3]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[4] 
       (.C(clk),
        .CE(\rg_dso_reg[15]_0 ),
        .D(\rg_dso_reg[4]_0 ),
        .Q(dso__0[4]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[5] 
       (.C(clk),
        .CE(\rg_dso_reg[15]_0 ),
        .D(\rg_dso_reg[5]_0 ),
        .Q(dso__0[5]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[6] 
       (.C(clk),
        .CE(\rg_dso_reg[15]_0 ),
        .D(\rg_dso_reg[6]_0 ),
        .Q(dso__0[6]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[7] 
       (.C(clk),
        .CE(\rg_dso_reg[15]_0 ),
        .D(\rg_dso_reg[7]_0 ),
        .Q(dso__0[7]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[8] 
       (.C(clk),
        .CE(\rg_dso_reg[15]_0 ),
        .D(\rg_dso_reg[8]_0 ),
        .Q(dso__0[8]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[9] 
       (.C(clk),
        .CE(\rg_dso_reg[15]_0 ),
        .D(\rg_dso_reg[9]_0 ),
        .Q(dso__0[9]),
        .R(\<const0> ));
endmodule

module divc16_reg_rem
   (\rg_rem_reg[15]_0 ,
    Q,
    \rg_rem_reg[14]_0 ,
    \rg_rem_reg[13]_0 ,
    \rg_rem_reg[12]_0 ,
    \rg_rem_reg[11]_0 ,
    \rg_rem_reg[10]_0 ,
    \rg_rem_reg[9]_0 ,
    \rg_rem_reg[8]_0 ,
    \rg_rem_reg[7]_0 ,
    \rg_rem_reg[6]_0 ,
    \rg_rem_reg[5]_0 ,
    \rg_rem_reg[4]_0 ,
    \rg_rem_reg[3]_0 ,
    \rg_rem_reg[2]_0 ,
    \rg_rem_reg[1]_0 ,
    \rg_rem_reg[0]_0 ,
    art_o_carry_i_14,
    SR,
    E,
    D,
    clk);
  output \rg_rem_reg[15]_0 ;
  output [16:0]Q;
  output \rg_rem_reg[14]_0 ;
  output \rg_rem_reg[13]_0 ;
  output \rg_rem_reg[12]_0 ;
  output \rg_rem_reg[11]_0 ;
  output \rg_rem_reg[10]_0 ;
  output \rg_rem_reg[9]_0 ;
  output \rg_rem_reg[8]_0 ;
  output \rg_rem_reg[7]_0 ;
  output \rg_rem_reg[6]_0 ;
  output \rg_rem_reg[5]_0 ;
  output \rg_rem_reg[4]_0 ;
  output \rg_rem_reg[3]_0 ;
  output \rg_rem_reg[2]_0 ;
  output \rg_rem_reg[1]_0 ;
  output \rg_rem_reg[0]_0 ;
  input [0:0]art_o_carry_i_14;
  input [0:0]SR;
  input [0:0]E;
  input [16:0]D;
  input clk;

  wire [16:0]D;
  wire [0:0]E;
  wire [16:0]Q;
  wire [0:0]SR;
  wire [0:0]art_o_carry_i_14;
  wire clk;
  wire \rg_rem_reg[0]_0 ;
  wire \rg_rem_reg[10]_0 ;
  wire \rg_rem_reg[11]_0 ;
  wire \rg_rem_reg[12]_0 ;
  wire \rg_rem_reg[13]_0 ;
  wire \rg_rem_reg[14]_0 ;
  wire \rg_rem_reg[15]_0 ;
  wire \rg_rem_reg[1]_0 ;
  wire \rg_rem_reg[2]_0 ;
  wire \rg_rem_reg[3]_0 ;
  wire \rg_rem_reg[4]_0 ;
  wire \rg_rem_reg[5]_0 ;
  wire \rg_rem_reg[6]_0 ;
  wire \rg_rem_reg[7]_0 ;
  wire \rg_rem_reg[8]_0 ;
  wire \rg_rem_reg[9]_0 ;

  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__0_i_13
       (.I0(Q[6]),
        .I1(art_o_carry_i_14),
        .I2(Q[7]),
        .O(\rg_rem_reg[6]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__0_i_14
       (.I0(Q[5]),
        .I1(art_o_carry_i_14),
        .I2(Q[6]),
        .O(\rg_rem_reg[5]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__0_i_15
       (.I0(Q[4]),
        .I1(art_o_carry_i_14),
        .I2(Q[5]),
        .O(\rg_rem_reg[4]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__0_i_16
       (.I0(Q[3]),
        .I1(art_o_carry_i_14),
        .I2(Q[4]),
        .O(\rg_rem_reg[3]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__1_i_13
       (.I0(Q[10]),
        .I1(art_o_carry_i_14),
        .I2(Q[11]),
        .O(\rg_rem_reg[10]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__1_i_14
       (.I0(Q[9]),
        .I1(art_o_carry_i_14),
        .I2(Q[10]),
        .O(\rg_rem_reg[9]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__1_i_15
       (.I0(Q[8]),
        .I1(art_o_carry_i_14),
        .I2(Q[9]),
        .O(\rg_rem_reg[8]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__1_i_16
       (.I0(Q[7]),
        .I1(art_o_carry_i_14),
        .I2(Q[8]),
        .O(\rg_rem_reg[7]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__2_i_13
       (.I0(Q[14]),
        .I1(art_o_carry_i_14),
        .I2(Q[15]),
        .O(\rg_rem_reg[14]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__2_i_14
       (.I0(Q[13]),
        .I1(art_o_carry_i_14),
        .I2(Q[14]),
        .O(\rg_rem_reg[13]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__2_i_15
       (.I0(Q[12]),
        .I1(art_o_carry_i_14),
        .I2(Q[13]),
        .O(\rg_rem_reg[12]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__2_i_16
       (.I0(Q[11]),
        .I1(art_o_carry_i_14),
        .I2(Q[12]),
        .O(\rg_rem_reg[11]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__3_i_4
       (.I0(Q[15]),
        .I1(art_o_carry_i_14),
        .I2(Q[16]),
        .O(\rg_rem_reg[15]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry_i_19
       (.I0(Q[2]),
        .I1(art_o_carry_i_14),
        .I2(Q[3]),
        .O(\rg_rem_reg[2]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry_i_20
       (.I0(Q[1]),
        .I1(art_o_carry_i_14),
        .I2(Q[2]),
        .O(\rg_rem_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry_i_21
       (.I0(Q[0]),
        .I1(art_o_carry_i_14),
        .I2(Q[1]),
        .O(\rg_rem_reg[0]_0 ));
  FDRE \rg_rem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \rg_rem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \rg_rem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \rg_rem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \rg_rem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \rg_rem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \rg_rem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \rg_rem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \rg_rem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \rg_rem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \rg_rem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \rg_rem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \rg_rem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \rg_rem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \rg_rem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \rg_rem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \rg_rem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule
