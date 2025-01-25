
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
  wire dctl_ebus_neg;
  wire dctl_n_18;
  wire dctl_n_19;
  wire dctl_n_20;
  wire dctl_n_21;
  wire dctl_n_22;
  wire dctl_n_23;
  wire dctl_n_24;
  wire dctl_n_25;
  wire dctl_n_26;
  wire dctl_n_27;
  wire dctl_n_28;
  wire dctl_n_29;
  wire dctl_n_30;
  wire dctl_n_31;
  wire dctl_n_32;
  wire dctl_n_33;
  wire dctl_n_34;
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
  wire [4:4]dctl_stat;
  wire [15:15]den;
  wire [15:15]dso;
  wire [16:0]dso__0;
  wire [16:0]fbus;
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
  wire rg_rem00_out;
  wire rrem_n_0;
  wire rrem_n_1;
  wire rrem_n_2;
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
  wire rrem_n_33;
  wire rrem_n_34;
  wire rrem_n_35;
  wire rrem_n_36;
  wire rrem_n_37;
  wire rrem_n_38;
  wire rrem_n_39;
  wire rrem_n_40;
  wire rrem_n_41;
  wire rrem_n_42;
  wire rrem_n_43;
  wire rrem_n_44;
  wire rrem_n_45;
  wire rrem_n_46;
  wire rrem_n_47;
  wire rst_n;

  divc16_art dart
       (.DI({rrem_n_0,rrem_n_1,rrem_n_2,dctl_n_55}),
        .O6(fbus),
        .S({dctl_n_60,dctl_n_61,dctl_n_62,dctl_n_63}),
        .dctl_ebus_neg(dctl_ebus_neg),
        .\rg_rem_reg[11] ({rrem_n_24,rrem_n_25,rrem_n_26,rrem_n_27}),
        .\rg_rem_reg[11]_0 ({dctl_n_68,dctl_n_69,dctl_n_70,dctl_n_71}),
        .\rg_rem_reg[15] ({rrem_n_28,rrem_n_29,rrem_n_30,rrem_n_31}),
        .\rg_rem_reg[15]_0 ({dctl_n_72,dctl_n_73,dctl_n_74,dctl_n_75}),
        .\rg_rem_reg[16] (dctl_n_59),
        .\rg_rem_reg[7] ({rrem_n_20,rrem_n_21,rrem_n_22,rrem_n_23}),
        .\rg_rem_reg[7]_0 ({dctl_n_64,dctl_n_65,dctl_n_66,dctl_n_67}));
  divc16_ctl dctl
       (.D({dctl_n_18,dctl_n_19,dctl_n_20,dctl_n_21,dctl_n_22,dctl_n_23,dctl_n_24,dctl_n_25,dctl_n_26,dctl_n_27,dctl_n_28,dctl_n_29,dctl_n_30,dctl_n_31,dctl_n_32,dctl_n_33,dctl_n_34}),
        .DI(dctl_n_55),
        .E(dctl_n_53),
        .O6(fbus),
        .Q(dctl_stat),
        .S({dctl_n_60,dctl_n_61,dctl_n_62,dctl_n_63}),
        .abus(abus),
        .art_o_carry__0_i_5(rrem_n_41),
        .art_o_carry__0_i_6(rrem_n_42),
        .art_o_carry__0_i_7(rrem_n_43),
        .art_o_carry__0_i_8(rrem_n_44),
        .art_o_carry__1_i_5(rrem_n_37),
        .art_o_carry__1_i_6(rrem_n_38),
        .art_o_carry__1_i_7(rrem_n_39),
        .art_o_carry__1_i_8(rrem_n_40),
        .art_o_carry__2_i_5(rrem_n_33),
        .art_o_carry__2_i_6(rrem_n_34),
        .art_o_carry__2_i_7(rrem_n_35),
        .art_o_carry__2_i_8(rrem_n_36),
        .art_o_carry__3_i_1(rg_rem),
        .art_o_carry__3_i_1_0({dso__0[16],dso,dso__0[14:0]}),
        .art_o_carry_i_6(rrem_n_45),
        .art_o_carry_i_7(rrem_n_46),
        .art_o_carry_i_8(rrem_n_47),
        .bbus(bbus),
        .cbus(cbus),
        .ccmd(ccmd),
        .clk(clk),
        .dctl_ebus_neg(dctl_ebus_neg),
        .\dctl_stat_reg[0] (dctl_n_56),
        .\dctl_stat_reg[2] (rg_rem00_out),
        .\dctl_stat_reg[3] (dctl_n_54),
        .rg_crdy_reg_0(crdy),
        .\rg_den_reg[15] ({dctl_n_36,dctl_n_37,dctl_n_38,dctl_n_39,dctl_n_40,dctl_n_41,dctl_n_42,dctl_n_43,dctl_n_44,dctl_n_45,dctl_n_46,dctl_n_47,dctl_n_48,dctl_n_49,dctl_n_50,dctl_n_51,dctl_n_52}),
        .\rg_den_reg[16] (dctl_n_59),
        .rg_rem0(rg_rem0),
        .\rg_rem_reg[10] ({dctl_n_68,dctl_n_69,dctl_n_70,dctl_n_71}),
        .\rg_rem_reg[14] ({dctl_n_72,dctl_n_73,dctl_n_74,dctl_n_75}),
        .\rg_rem_reg[16] ({rden_n_0,den,rden_n_2,rden_n_3,rden_n_4,rden_n_5,rden_n_6,rden_n_7,rden_n_8,rden_n_9,rden_n_10,rden_n_11,rden_n_12,rden_n_13,rden_n_14,rden_n_15,rden_n_16}),
        .\rg_rem_reg[16]_0 (rrem_n_32),
        .\rg_rem_reg[6] ({dctl_n_64,dctl_n_65,dctl_n_66,dctl_n_67}),
        .rst_n(rst_n));
  divc16_reg_den rden
       (.D({dctl_n_36,dctl_n_37,dctl_n_38,dctl_n_39,dctl_n_40,dctl_n_41,dctl_n_42,dctl_n_43,dctl_n_44,dctl_n_45,dctl_n_46,dctl_n_47,dctl_n_48,dctl_n_49,dctl_n_50,dctl_n_51,dctl_n_52}),
        .E(dctl_n_53),
        .Q({rden_n_0,den,rden_n_2,rden_n_3,rden_n_4,rden_n_5,rden_n_6,rden_n_7,rden_n_8,rden_n_9,rden_n_10,rden_n_11,rden_n_12,rden_n_13,rden_n_14,rden_n_15,rden_n_16}),
        .clk(clk));
  divc16_reg_dso rdso
       (.D({dctl_n_18,dctl_n_19,dctl_n_20,dctl_n_21,dctl_n_22,dctl_n_23,dctl_n_24,dctl_n_25,dctl_n_26,dctl_n_27,dctl_n_28,dctl_n_29,dctl_n_30,dctl_n_31,dctl_n_32,dctl_n_33,dctl_n_34}),
        .E(dctl_n_54),
        .Q({dso__0[16],dso,dso__0[14:0]}),
        .clk(clk));
  divc16_reg_rem rrem
       (.D(fbus),
        .DI({rrem_n_0,rrem_n_1,rrem_n_2}),
        .E(rg_rem00_out),
        .Q(rg_rem),
        .SR(rg_rem0),
        .clk(clk),
        .\rg_rem_reg[0]_0 (rrem_n_47),
        .\rg_rem_reg[10]_0 (rrem_n_37),
        .\rg_rem_reg[11]_0 ({rrem_n_24,rrem_n_25,rrem_n_26,rrem_n_27}),
        .\rg_rem_reg[11]_1 (rrem_n_36),
        .\rg_rem_reg[12]_0 (rrem_n_35),
        .\rg_rem_reg[13]_0 (rrem_n_34),
        .\rg_rem_reg[14]_0 (rrem_n_33),
        .\rg_rem_reg[15]_0 ({rrem_n_28,rrem_n_29,rrem_n_30,rrem_n_31}),
        .\rg_rem_reg[15]_1 (rrem_n_32),
        .\rg_rem_reg[1]_0 (rrem_n_46),
        .\rg_rem_reg[2]_0 (rrem_n_45),
        .\rg_rem_reg[3]_0 (rrem_n_44),
        .\rg_rem_reg[3]_1 (dctl_stat),
        .\rg_rem_reg[3]_2 (dctl_n_56),
        .\rg_rem_reg[4]_0 (rrem_n_43),
        .\rg_rem_reg[5]_0 (rrem_n_42),
        .\rg_rem_reg[6]_0 (rrem_n_41),
        .\rg_rem_reg[7]_0 ({rrem_n_20,rrem_n_21,rrem_n_22,rrem_n_23}),
        .\rg_rem_reg[7]_1 (rrem_n_40),
        .\rg_rem_reg[8]_0 (rrem_n_39),
        .\rg_rem_reg[9]_0 (rrem_n_38));
endmodule

module divc16_art
   (O6,
    dctl_ebus_neg,
    DI,
    S,
    \rg_rem_reg[7] ,
    \rg_rem_reg[7]_0 ,
    \rg_rem_reg[11] ,
    \rg_rem_reg[11]_0 ,
    \rg_rem_reg[15] ,
    \rg_rem_reg[15]_0 ,
    \rg_rem_reg[16] );
  output [16:0]O6;
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

  wire \<const0> ;
  wire [3:0]DI;
  wire [16:0]O6;
  wire [3:0]S;
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
  wire [3:0]\rg_rem_reg[11] ;
  wire [3:0]\rg_rem_reg[11]_0 ;
  wire [3:0]\rg_rem_reg[15] ;
  wire [3:0]\rg_rem_reg[15]_0 ;
  wire [0:0]\rg_rem_reg[16] ;
  wire [3:0]\rg_rem_reg[7] ;
  wire [3:0]\rg_rem_reg[7]_0 ;

  GND GND
       (.G(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 art_o_carry
       (.CI(\<const0> ),
        .CO({art_o_carry_n_0,art_o_carry_n_1,art_o_carry_n_2,art_o_carry_n_3}),
        .CYINIT(dctl_ebus_neg),
        .DI(DI),
        .O(O6[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 art_o_carry__0
       (.CI(art_o_carry_n_0),
        .CO({art_o_carry__0_n_0,art_o_carry__0_n_1,art_o_carry__0_n_2,art_o_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(\rg_rem_reg[7] ),
        .O(O6[7:4]),
        .S(\rg_rem_reg[7]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 art_o_carry__1
       (.CI(art_o_carry__0_n_0),
        .CO({art_o_carry__1_n_0,art_o_carry__1_n_1,art_o_carry__1_n_2,art_o_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(\rg_rem_reg[11] ),
        .O(O6[11:8]),
        .S(\rg_rem_reg[11]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 art_o_carry__2
       (.CI(art_o_carry__1_n_0),
        .CO({art_o_carry__2_n_0,art_o_carry__2_n_1,art_o_carry__2_n_2,art_o_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(\rg_rem_reg[15] ),
        .O(O6[15:12]),
        .S(\rg_rem_reg[15]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 art_o_carry__3
       (.CI(art_o_carry__2_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(O6[16]),
        .S({\<const0> ,\<const0> ,\<const0> ,\rg_rem_reg[16] }));
endmodule

module divc16_ctl
   (Q,
    rg_crdy_reg_0,
    cbus,
    D,
    rg_rem0,
    \rg_den_reg[15] ,
    E,
    \dctl_stat_reg[3] ,
    DI,
    \dctl_stat_reg[0] ,
    dctl_ebus_neg,
    \dctl_stat_reg[2] ,
    \rg_den_reg[16] ,
    S,
    \rg_rem_reg[6] ,
    \rg_rem_reg[10] ,
    \rg_rem_reg[14] ,
    clk,
    \rg_rem_reg[16] ,
    art_o_carry__3_i_1,
    ccmd,
    bbus,
    rst_n,
    O6,
    art_o_carry__3_i_1_0,
    abus,
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
    \rg_rem_reg[16]_0 );
  output [0:0]Q;
  output rg_crdy_reg_0;
  output [15:0]cbus;
  output [16:0]D;
  output rg_rem0;
  output [16:0]\rg_den_reg[15] ;
  output [0:0]E;
  output [0:0]\dctl_stat_reg[3] ;
  output [0:0]DI;
  output \dctl_stat_reg[0] ;
  output dctl_ebus_neg;
  output [0:0]\dctl_stat_reg[2] ;
  output [0:0]\rg_den_reg[16] ;
  output [3:0]S;
  output [3:0]\rg_rem_reg[6] ;
  output [3:0]\rg_rem_reg[10] ;
  output [3:0]\rg_rem_reg[14] ;
  input clk;
  input [16:0]\rg_rem_reg[16] ;
  input [16:0]art_o_carry__3_i_1;
  input [4:0]ccmd;
  input [15:0]bbus;
  input rst_n;
  input [16:0]O6;
  input [16:0]art_o_carry__3_i_1_0;
  input [15:0]abus;
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
  input \rg_rem_reg[16]_0 ;

  wire \<const1> ;
  wire [16:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [16:0]O6;
  wire [0:0]Q;
  wire [3:0]S;
  wire [15:0]abus;
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
  wire [16:0]art_o_carry__3_i_1;
  wire [16:0]art_o_carry__3_i_1_0;
  wire art_o_carry_i_6;
  wire art_o_carry_i_7;
  wire art_o_carry_i_8;
  wire [15:0]bbus;
  wire [15:0]cbus;
  wire \cbus[15]_INST_0_i_1_n_0 ;
  wire \cbus[15]_INST_0_i_2_n_0 ;
  wire [4:0]ccmd;
  wire chg_rem_sgn0;
  wire clk;
  wire dctl_ebus_neg;
  wire dctl_load;
  wire \dctl_stat_reg[0] ;
  wire [0:0]\dctl_stat_reg[2] ;
  wire [0:0]\dctl_stat_reg[3] ;
  wire dctl_step_f;
  wire fsm_n_0;
  wire fsm_n_18;
  wire fsm_n_61;
  wire quo_f;
  wire quo_lsb;
  wire rg_crdy_reg_0;
  wire \rg_den[14]_i_2_n_0 ;
  wire [16:0]\rg_den_reg[15] ;
  wire [0:0]\rg_den_reg[16] ;
  wire rg_rem0;
  wire [3:0]\rg_rem_reg[10] ;
  wire [3:0]\rg_rem_reg[14] ;
  wire [16:0]\rg_rem_reg[16] ;
  wire \rg_rem_reg[16]_0 ;
  wire [3:0]\rg_rem_reg[6] ;
  wire rst_n;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFFFFBFFFFFFFFFFF)) 
    \cbus[15]_INST_0_i_1 
       (.I0(ccmd[2]),
        .I1(rg_crdy_reg_0),
        .I2(ccmd[0]),
        .I3(ccmd[1]),
        .I4(ccmd[4]),
        .I5(ccmd[3]),
        .O(\cbus[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \cbus[15]_INST_0_i_2 
       (.I0(ccmd[1]),
        .I1(ccmd[4]),
        .I2(ccmd[3]),
        .I3(rg_crdy_reg_0),
        .I4(ccmd[0]),
        .I5(ccmd[2]),
        .O(\cbus[15]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dctl_stat[4]_i_3 
       (.I0(abus[15]),
        .I1(fsm_n_18),
        .O(chg_rem_sgn0));
  FDRE dctl_step_f_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(Q),
        .Q(dctl_step_f),
        .R(fsm_n_0));
  divc16_fsm fsm
       (.DI(DI),
        .E(E),
        .O6(O6),
        .Q(Q),
        .S(S),
        .abus(abus),
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
        .ccmd_1_sp_1(fsm_n_18),
        .chg_rem_sgn0(chg_rem_sgn0),
        .clk(clk),
        .dctl_load(dctl_load),
        .\dctl_stat_reg[0]_0 (\dctl_stat_reg[0] ),
        .\dctl_stat_reg[2]_0 (\dctl_stat_reg[2] ),
        .\dctl_stat_reg[3]_0 (\dctl_stat_reg[3] ),
        .dctl_step_f(dctl_step_f),
        .dctl_step_f_reg(dctl_ebus_neg),
        .quo_f(quo_f),
        .quo_lsb(quo_lsb),
        .rg_crdy_reg(fsm_n_61),
        .rg_crdy_reg_0(rg_crdy_reg_0),
        .\rg_den_reg[0] (\rg_den[14]_i_2_n_0 ),
        .\rg_den_reg[15] (\rg_den_reg[15] ),
        .\rg_den_reg[16] (\rg_den_reg[16] ),
        .\rg_dso_reg[16] (rg_rem0),
        .\rg_rem_reg[10] (\rg_rem_reg[10] ),
        .\rg_rem_reg[14] (\rg_rem_reg[14] ),
        .\rg_rem_reg[16] (\rg_rem_reg[16] ),
        .\rg_rem_reg[16]_0 (\rg_rem_reg[16]_0 ),
        .\rg_rem_reg[6] (\rg_rem_reg[6] ),
        .rst_n(rst_n),
        .rst_n_0(fsm_n_0));
  FDRE quo_f_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(quo_lsb),
        .Q(quo_f),
        .R(fsm_n_0));
  FDSE rg_crdy_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_61),
        .Q(rg_crdy_reg_0),
        .S(fsm_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \rg_den[14]_i_2 
       (.I0(rst_n),
        .I1(dctl_load),
        .O(\rg_den[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \rg_dso[0]_i_1 
       (.I0(bbus[0]),
        .I1(\rg_den[14]_i_2_n_0 ),
        .I2(rg_rem0),
        .I3(O6[0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \rg_dso[10]_i_1 
       (.I0(bbus[10]),
        .I1(\rg_den[14]_i_2_n_0 ),
        .I2(rg_rem0),
        .I3(O6[10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \rg_dso[11]_i_1 
       (.I0(bbus[11]),
        .I1(\rg_den[14]_i_2_n_0 ),
        .I2(rg_rem0),
        .I3(O6[11]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \rg_dso[12]_i_1 
       (.I0(bbus[12]),
        .I1(\rg_den[14]_i_2_n_0 ),
        .I2(rg_rem0),
        .I3(O6[12]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \rg_dso[13]_i_1 
       (.I0(bbus[13]),
        .I1(\rg_den[14]_i_2_n_0 ),
        .I2(rg_rem0),
        .I3(O6[13]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \rg_dso[14]_i_1 
       (.I0(bbus[14]),
        .I1(\rg_den[14]_i_2_n_0 ),
        .I2(rg_rem0),
        .I3(O6[14]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \rg_dso[15]_i_1 
       (.I0(bbus[15]),
        .I1(\rg_den[14]_i_2_n_0 ),
        .I2(rg_rem0),
        .I3(O6[15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \rg_dso[16]_i_2 
       (.I0(fsm_n_18),
        .I1(bbus[15]),
        .I2(rst_n),
        .I3(rg_rem0),
        .I4(O6[16]),
        .O(D[16]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \rg_dso[1]_i_1 
       (.I0(bbus[1]),
        .I1(\rg_den[14]_i_2_n_0 ),
        .I2(rg_rem0),
        .I3(O6[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \rg_dso[2]_i_1 
       (.I0(bbus[2]),
        .I1(\rg_den[14]_i_2_n_0 ),
        .I2(rg_rem0),
        .I3(O6[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \rg_dso[3]_i_1 
       (.I0(bbus[3]),
        .I1(\rg_den[14]_i_2_n_0 ),
        .I2(rg_rem0),
        .I3(O6[3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \rg_dso[4]_i_1 
       (.I0(bbus[4]),
        .I1(\rg_den[14]_i_2_n_0 ),
        .I2(rg_rem0),
        .I3(O6[4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \rg_dso[5]_i_1 
       (.I0(bbus[5]),
        .I1(\rg_den[14]_i_2_n_0 ),
        .I2(rg_rem0),
        .I3(O6[5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \rg_dso[6]_i_1 
       (.I0(bbus[6]),
        .I1(\rg_den[14]_i_2_n_0 ),
        .I2(rg_rem0),
        .I3(O6[6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \rg_dso[7]_i_1 
       (.I0(bbus[7]),
        .I1(\rg_den[14]_i_2_n_0 ),
        .I2(rg_rem0),
        .I3(O6[7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \rg_dso[8]_i_1 
       (.I0(bbus[8]),
        .I1(\rg_den[14]_i_2_n_0 ),
        .I2(rg_rem0),
        .I3(O6[8]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \rg_dso[9]_i_1 
       (.I0(bbus[9]),
        .I1(\rg_den[14]_i_2_n_0 ),
        .I2(rg_rem0),
        .I3(O6[9]),
        .O(D[9]));
  LUT2 #(
    .INIT(4'hB)) 
    \rg_rem[16]_i_1 
       (.I0(dctl_load),
        .I1(rst_n),
        .O(rg_rem0));
endmodule

module divc16_fsm
   (rst_n_0,
    cbus,
    Q,
    .ccmd_1_sp_1(ccmd_1_sn_1),
    dctl_load,
    \rg_den_reg[15] ,
    E,
    \dctl_stat_reg[3]_0 ,
    DI,
    \dctl_stat_reg[0]_0 ,
    dctl_step_f_reg,
    quo_lsb,
    \dctl_stat_reg[2]_0 ,
    \rg_den_reg[16] ,
    S,
    \rg_rem_reg[6] ,
    \rg_rem_reg[10] ,
    \rg_rem_reg[14] ,
    rg_crdy_reg,
    clk,
    .cbus_0_sp_1(cbus_0_sn_1),
    \rg_rem_reg[16] ,
    \cbus[0]_0 ,
    art_o_carry__3_i_1_0,
    bbus,
    chg_rem_sgn0,
    art_o_carry__3_i_1_1,
    O6,
    rst_n,
    ccmd,
    rg_crdy_reg_0,
    abus,
    \rg_den_reg[0] ,
    \rg_dso_reg[16] ,
    quo_f,
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
    \rg_rem_reg[16]_0 );
  output rst_n_0;
  output [15:0]cbus;
  output [0:0]Q;
  output dctl_load;
  output [16:0]\rg_den_reg[15] ;
  output [0:0]E;
  output [0:0]\dctl_stat_reg[3]_0 ;
  output [0:0]DI;
  output \dctl_stat_reg[0]_0 ;
  output dctl_step_f_reg;
  output quo_lsb;
  output [0:0]\dctl_stat_reg[2]_0 ;
  output [0:0]\rg_den_reg[16] ;
  output [3:0]S;
  output [3:0]\rg_rem_reg[6] ;
  output [3:0]\rg_rem_reg[10] ;
  output [3:0]\rg_rem_reg[14] ;
  output rg_crdy_reg;
  input clk;
  input [16:0]\rg_rem_reg[16] ;
  input \cbus[0]_0 ;
  input [16:0]art_o_carry__3_i_1_0;
  input [0:0]bbus;
  input chg_rem_sgn0;
  input [16:0]art_o_carry__3_i_1_1;
  input [16:0]O6;
  input rst_n;
  input [4:0]ccmd;
  input rg_crdy_reg_0;
  input [15:0]abus;
  input \rg_den_reg[0] ;
  input \rg_dso_reg[16] ;
  input quo_f;
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
  input \rg_rem_reg[16]_0 ;
  output ccmd_1_sn_1;
  input cbus_0_sn_1;

  wire \<const1> ;
  wire [0:0]DI;
  wire [0:0]E;
  wire [16:0]O6;
  wire [0:0]Q;
  wire [3:0]S;
  wire [15:0]abus;
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
  wire [16:0]art_o_carry__3_i_1_0;
  wire [16:0]art_o_carry__3_i_1_1;
  wire art_o_carry__3_i_2_n_0;
  wire art_o_carry_i_10_n_0;
  wire art_o_carry_i_11_n_0;
  wire art_o_carry_i_13_n_0;
  wire art_o_carry_i_14_n_0;
  wire art_o_carry_i_15_n_0;
  wire art_o_carry_i_16_n_0;
  wire art_o_carry_i_17_n_0;
  wire art_o_carry_i_6_0;
  wire art_o_carry_i_7_0;
  wire art_o_carry_i_8_0;
  wire [0:0]bbus;
  wire [15:0]cbus;
  wire \cbus[0]_0 ;
  wire \cbus[0]_INST_0_i_1_n_0 ;
  wire cbus_0_sn_1;
  wire [4:0]ccmd;
  wire ccmd_1_sn_1;
  wire chg_quo_sgn;
  wire chg_quo_sgn_i_1_n_0;
  wire chg_rem_sgn;
  wire chg_rem_sgn0;
  wire chg_rem_sgn_i_1_n_0;
  wire clk;
  wire dctl_load;
  wire [4:0]dctl_next;
  wire [3:0]dctl_stat;
  wire \dctl_stat[0]_i_2_n_0 ;
  wire \dctl_stat[0]_i_3_n_0 ;
  wire \dctl_stat[0]_i_4_n_0 ;
  wire \dctl_stat[0]_i_5_n_0 ;
  wire \dctl_stat[0]_i_6_n_0 ;
  wire \dctl_stat[0]_i_7_n_0 ;
  wire \dctl_stat[0]_i_8_n_0 ;
  wire \dctl_stat[1]_i_2_n_0 ;
  wire \dctl_stat[1]_i_3_n_0 ;
  wire \dctl_stat[2]_i_2_n_0 ;
  wire \dctl_stat[2]_i_3_n_0 ;
  wire \dctl_stat[4]_i_2_n_0 ;
  wire \dctl_stat[4]_i_4_n_0 ;
  wire \dctl_stat[4]_i_5_n_0 ;
  wire \dctl_stat[4]_i_6_n_0 ;
  wire \dctl_stat_reg[0]_0 ;
  wire [0:0]\dctl_stat_reg[2]_0 ;
  wire [0:0]\dctl_stat_reg[3]_0 ;
  wire dctl_step_f;
  wire dctl_step_f_reg;
  wire quo_f;
  wire quo_lsb;
  wire rg_crdy_i_4_n_0;
  wire rg_crdy_i_5_n_0;
  wire rg_crdy_i_6_n_0;
  wire rg_crdy_i_7_n_0;
  wire rg_crdy_reg;
  wire rg_crdy_reg_0;
  wire \rg_den[16]_i_3_n_0 ;
  wire \rg_den_reg[0] ;
  wire [16:0]\rg_den_reg[15] ;
  wire [0:0]\rg_den_reg[16] ;
  wire \rg_dso_reg[16] ;
  wire [3:0]\rg_rem_reg[10] ;
  wire [3:0]\rg_rem_reg[14] ;
  wire [16:0]\rg_rem_reg[16] ;
  wire \rg_rem_reg[16]_0 ;
  wire [3:0]\rg_rem_reg[6] ;
  wire rst_n;
  wire rst_n_0;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    art_o_carry__0_i_10
       (.I0(art_o_carry__3_i_1_1[6]),
        .I1(art_o_carry_i_17_n_0),
        .I2(art_o_carry_i_10_n_0),
        .I3(art_o_carry__0_i_6_0),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_rem_reg[16] [6]),
        .O(art_o_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    art_o_carry__0_i_11
       (.I0(art_o_carry__3_i_1_1[5]),
        .I1(art_o_carry_i_17_n_0),
        .I2(art_o_carry_i_10_n_0),
        .I3(art_o_carry__0_i_7_0),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_rem_reg[16] [5]),
        .O(art_o_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    art_o_carry__0_i_12
       (.I0(art_o_carry__3_i_1_1[4]),
        .I1(art_o_carry_i_17_n_0),
        .I2(art_o_carry_i_10_n_0),
        .I3(art_o_carry__0_i_8_0),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_rem_reg[16] [4]),
        .O(art_o_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h4540BABFBABF4540)) 
    art_o_carry__0_i_5
       (.I0(\dctl_stat_reg[0]_0 ),
        .I1(art_o_carry__3_i_1_0[6]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_0[7]),
        .I4(art_o_carry__0_i_9_n_0),
        .I5(dctl_step_f_reg),
        .O(\rg_rem_reg[6] [3]));
  LUT6 #(
    .INIT(64'h4540BABFBABF4540)) 
    art_o_carry__0_i_6
       (.I0(\dctl_stat_reg[0]_0 ),
        .I1(art_o_carry__3_i_1_0[5]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_0[6]),
        .I4(art_o_carry__0_i_10_n_0),
        .I5(dctl_step_f_reg),
        .O(\rg_rem_reg[6] [2]));
  LUT6 #(
    .INIT(64'h4540BABFBABF4540)) 
    art_o_carry__0_i_7
       (.I0(\dctl_stat_reg[0]_0 ),
        .I1(art_o_carry__3_i_1_0[4]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_0[5]),
        .I4(art_o_carry__0_i_11_n_0),
        .I5(dctl_step_f_reg),
        .O(\rg_rem_reg[6] [1]));
  LUT6 #(
    .INIT(64'h4540BABFBABF4540)) 
    art_o_carry__0_i_8
       (.I0(\dctl_stat_reg[0]_0 ),
        .I1(art_o_carry__3_i_1_0[3]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_0[4]),
        .I4(art_o_carry__0_i_12_n_0),
        .I5(dctl_step_f_reg),
        .O(\rg_rem_reg[6] [0]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    art_o_carry__0_i_9
       (.I0(art_o_carry__3_i_1_1[7]),
        .I1(art_o_carry_i_17_n_0),
        .I2(art_o_carry_i_10_n_0),
        .I3(art_o_carry__0_i_5_0),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_rem_reg[16] [7]),
        .O(art_o_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    art_o_carry__1_i_10
       (.I0(art_o_carry__3_i_1_1[10]),
        .I1(art_o_carry_i_17_n_0),
        .I2(art_o_carry_i_10_n_0),
        .I3(art_o_carry__1_i_6_0),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_rem_reg[16] [10]),
        .O(art_o_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    art_o_carry__1_i_11
       (.I0(art_o_carry__3_i_1_1[9]),
        .I1(art_o_carry_i_17_n_0),
        .I2(art_o_carry_i_10_n_0),
        .I3(art_o_carry__1_i_7_0),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_rem_reg[16] [9]),
        .O(art_o_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    art_o_carry__1_i_12
       (.I0(art_o_carry__3_i_1_1[8]),
        .I1(art_o_carry_i_17_n_0),
        .I2(art_o_carry_i_10_n_0),
        .I3(art_o_carry__1_i_8_0),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_rem_reg[16] [8]),
        .O(art_o_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'h4540BABFBABF4540)) 
    art_o_carry__1_i_5
       (.I0(\dctl_stat_reg[0]_0 ),
        .I1(art_o_carry__3_i_1_0[10]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_0[11]),
        .I4(art_o_carry__1_i_9_n_0),
        .I5(dctl_step_f_reg),
        .O(\rg_rem_reg[10] [3]));
  LUT6 #(
    .INIT(64'h4540BABFBABF4540)) 
    art_o_carry__1_i_6
       (.I0(\dctl_stat_reg[0]_0 ),
        .I1(art_o_carry__3_i_1_0[9]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_0[10]),
        .I4(art_o_carry__1_i_10_n_0),
        .I5(dctl_step_f_reg),
        .O(\rg_rem_reg[10] [2]));
  LUT6 #(
    .INIT(64'h4540BABFBABF4540)) 
    art_o_carry__1_i_7
       (.I0(\dctl_stat_reg[0]_0 ),
        .I1(art_o_carry__3_i_1_0[8]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_0[9]),
        .I4(art_o_carry__1_i_11_n_0),
        .I5(dctl_step_f_reg),
        .O(\rg_rem_reg[10] [1]));
  LUT6 #(
    .INIT(64'h4540BABFBABF4540)) 
    art_o_carry__1_i_8
       (.I0(\dctl_stat_reg[0]_0 ),
        .I1(art_o_carry__3_i_1_0[7]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_0[8]),
        .I4(art_o_carry__1_i_12_n_0),
        .I5(dctl_step_f_reg),
        .O(\rg_rem_reg[10] [0]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    art_o_carry__1_i_9
       (.I0(art_o_carry__3_i_1_1[11]),
        .I1(art_o_carry_i_17_n_0),
        .I2(art_o_carry_i_10_n_0),
        .I3(art_o_carry__1_i_5_0),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_rem_reg[16] [11]),
        .O(art_o_carry__1_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    art_o_carry__2_i_10
       (.I0(art_o_carry__3_i_1_1[14]),
        .I1(art_o_carry_i_17_n_0),
        .I2(art_o_carry_i_10_n_0),
        .I3(art_o_carry__2_i_6_0),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_rem_reg[16] [14]),
        .O(art_o_carry__2_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    art_o_carry__2_i_11
       (.I0(art_o_carry__3_i_1_1[13]),
        .I1(art_o_carry_i_17_n_0),
        .I2(art_o_carry_i_10_n_0),
        .I3(art_o_carry__2_i_7_0),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_rem_reg[16] [13]),
        .O(art_o_carry__2_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    art_o_carry__2_i_12
       (.I0(art_o_carry__3_i_1_1[12]),
        .I1(art_o_carry_i_17_n_0),
        .I2(art_o_carry_i_10_n_0),
        .I3(art_o_carry__2_i_8_0),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_rem_reg[16] [12]),
        .O(art_o_carry__2_i_12_n_0));
  LUT6 #(
    .INIT(64'h4540BABFBABF4540)) 
    art_o_carry__2_i_5
       (.I0(\dctl_stat_reg[0]_0 ),
        .I1(art_o_carry__3_i_1_0[14]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_0[15]),
        .I4(art_o_carry__2_i_9_n_0),
        .I5(dctl_step_f_reg),
        .O(\rg_rem_reg[14] [3]));
  LUT6 #(
    .INIT(64'h4540BABFBABF4540)) 
    art_o_carry__2_i_6
       (.I0(\dctl_stat_reg[0]_0 ),
        .I1(art_o_carry__3_i_1_0[13]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_0[14]),
        .I4(art_o_carry__2_i_10_n_0),
        .I5(dctl_step_f_reg),
        .O(\rg_rem_reg[14] [2]));
  LUT6 #(
    .INIT(64'h4540BABFBABF4540)) 
    art_o_carry__2_i_7
       (.I0(\dctl_stat_reg[0]_0 ),
        .I1(art_o_carry__3_i_1_0[12]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_0[13]),
        .I4(art_o_carry__2_i_11_n_0),
        .I5(dctl_step_f_reg),
        .O(\rg_rem_reg[14] [1]));
  LUT6 #(
    .INIT(64'h4540BABFBABF4540)) 
    art_o_carry__2_i_8
       (.I0(\dctl_stat_reg[0]_0 ),
        .I1(art_o_carry__3_i_1_0[11]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_0[12]),
        .I4(art_o_carry__2_i_12_n_0),
        .I5(dctl_step_f_reg),
        .O(\rg_rem_reg[14] [0]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    art_o_carry__2_i_9
       (.I0(art_o_carry__3_i_1_1[15]),
        .I1(art_o_carry_i_17_n_0),
        .I2(art_o_carry_i_10_n_0),
        .I3(art_o_carry__2_i_5_0),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_rem_reg[16] [15]),
        .O(art_o_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'h07F807F8F80707F8)) 
    art_o_carry__3_i_1
       (.I0(\rg_rem_reg[16] [16]),
        .I1(\rg_den[16]_i_3_n_0 ),
        .I2(art_o_carry__3_i_2_n_0),
        .I3(dctl_step_f_reg),
        .I4(\rg_rem_reg[16]_0 ),
        .I5(\dctl_stat_reg[0]_0 ),
        .O(\rg_den_reg[16] ));
  LUT6 #(
    .INIT(64'hB800FFFFB800B800)) 
    art_o_carry__3_i_2
       (.I0(art_o_carry__3_i_1_0[15]),
        .I1(Q),
        .I2(art_o_carry__3_i_1_0[16]),
        .I3(art_o_carry_i_10_n_0),
        .I4(art_o_carry_i_17_n_0),
        .I5(art_o_carry__3_i_1_1[16]),
        .O(art_o_carry__3_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFCFFFDFFFC)) 
    art_o_carry_i_1
       (.I0(dctl_step_f),
        .I1(\rg_den[16]_i_3_n_0 ),
        .I2(art_o_carry_i_10_n_0),
        .I3(art_o_carry_i_11_n_0),
        .I4(Q),
        .I5(quo_f),
        .O(dctl_step_f_reg));
  LUT5 #(
    .INIT(32'h00000004)) 
    art_o_carry_i_10
       (.I0(dctl_stat[0]),
        .I1(dctl_stat[2]),
        .I2(dctl_stat[3]),
        .I3(Q),
        .I4(dctl_stat[1]),
        .O(art_o_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h00000004)) 
    art_o_carry_i_11
       (.I0(dctl_stat[0]),
        .I1(dctl_stat[1]),
        .I2(dctl_stat[2]),
        .I3(Q),
        .I4(dctl_stat[3]),
        .O(art_o_carry_i_11_n_0));
  LUT5 #(
    .INIT(32'h0000FFDF)) 
    art_o_carry_i_12
       (.I0(dctl_stat[0]),
        .I1(dctl_stat[1]),
        .I2(dctl_stat[2]),
        .I3(dctl_stat[3]),
        .I4(Q),
        .O(\dctl_stat_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    art_o_carry_i_13
       (.I0(art_o_carry__3_i_1_1[3]),
        .I1(art_o_carry_i_17_n_0),
        .I2(art_o_carry_i_10_n_0),
        .I3(art_o_carry_i_6_0),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_rem_reg[16] [3]),
        .O(art_o_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    art_o_carry_i_14
       (.I0(art_o_carry__3_i_1_1[2]),
        .I1(art_o_carry_i_17_n_0),
        .I2(art_o_carry_i_10_n_0),
        .I3(art_o_carry_i_7_0),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_rem_reg[16] [2]),
        .O(art_o_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    art_o_carry_i_15
       (.I0(art_o_carry__3_i_1_1[1]),
        .I1(art_o_carry_i_17_n_0),
        .I2(art_o_carry_i_10_n_0),
        .I3(art_o_carry_i_8_0),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_rem_reg[16] [1]),
        .O(art_o_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h8F88)) 
    art_o_carry_i_16
       (.I0(\rg_den[16]_i_3_n_0 ),
        .I1(\rg_rem_reg[16] [0]),
        .I2(art_o_carry_i_17_n_0),
        .I3(art_o_carry__3_i_1_1[0]),
        .O(art_o_carry_i_16_n_0));
  LUT5 #(
    .INIT(32'h33233233)) 
    art_o_carry_i_17
       (.I0(dctl_stat[3]),
        .I1(Q),
        .I2(dctl_stat[2]),
        .I3(dctl_stat[1]),
        .I4(dctl_stat[0]),
        .O(art_o_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    art_o_carry_i_5
       (.I0(art_o_carry__3_i_1_0[0]),
        .I1(Q),
        .I2(\rg_rem_reg[16] [15]),
        .I3(dctl_load),
        .I4(abus[15]),
        .I5(\dctl_stat_reg[0]_0 ),
        .O(DI));
  LUT6 #(
    .INIT(64'h4540BABFBABF4540)) 
    art_o_carry_i_6
       (.I0(\dctl_stat_reg[0]_0 ),
        .I1(art_o_carry__3_i_1_0[2]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_0[3]),
        .I4(art_o_carry_i_13_n_0),
        .I5(dctl_step_f_reg),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h4540BABFBABF4540)) 
    art_o_carry_i_7
       (.I0(\dctl_stat_reg[0]_0 ),
        .I1(art_o_carry__3_i_1_0[1]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_0[2]),
        .I4(art_o_carry_i_14_n_0),
        .I5(dctl_step_f_reg),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h4540BABFBABF4540)) 
    art_o_carry_i_8
       (.I0(\dctl_stat_reg[0]_0 ),
        .I1(art_o_carry__3_i_1_0[0]),
        .I2(Q),
        .I3(art_o_carry__3_i_1_0[1]),
        .I4(art_o_carry_i_15_n_0),
        .I5(dctl_step_f_reg),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9999A99966665666)) 
    art_o_carry_i_9
       (.I0(DI),
        .I1(art_o_carry_i_16_n_0),
        .I2(art_o_carry_i_10_n_0),
        .I3(art_o_carry__3_i_1_0[0]),
        .I4(Q),
        .I5(dctl_step_f_reg),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \cbus[0]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(\rg_rem_reg[16] [0]),
        .I2(\cbus[0]_0 ),
        .I3(\cbus[0]_INST_0_i_1_n_0 ),
        .I4(Q),
        .I5(art_o_carry__3_i_1_0[0]),
        .O(cbus[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[0]_INST_0_i_1 
       (.I0(abus[15]),
        .I1(dctl_load),
        .I2(\rg_rem_reg[16] [15]),
        .O(\cbus[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \cbus[10]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(\rg_rem_reg[16] [10]),
        .I2(\cbus[0]_0 ),
        .I3(art_o_carry__3_i_1_0[9]),
        .I4(Q),
        .I5(art_o_carry__3_i_1_0[10]),
        .O(cbus[10]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \cbus[11]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(\rg_rem_reg[16] [11]),
        .I2(\cbus[0]_0 ),
        .I3(art_o_carry__3_i_1_0[10]),
        .I4(Q),
        .I5(art_o_carry__3_i_1_0[11]),
        .O(cbus[11]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \cbus[12]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(\rg_rem_reg[16] [12]),
        .I2(\cbus[0]_0 ),
        .I3(art_o_carry__3_i_1_0[11]),
        .I4(Q),
        .I5(art_o_carry__3_i_1_0[12]),
        .O(cbus[12]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \cbus[13]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(\rg_rem_reg[16] [13]),
        .I2(\cbus[0]_0 ),
        .I3(art_o_carry__3_i_1_0[12]),
        .I4(Q),
        .I5(art_o_carry__3_i_1_0[13]),
        .O(cbus[13]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \cbus[14]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(\rg_rem_reg[16] [14]),
        .I2(\cbus[0]_0 ),
        .I3(art_o_carry__3_i_1_0[13]),
        .I4(Q),
        .I5(art_o_carry__3_i_1_0[14]),
        .O(cbus[14]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \cbus[15]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(\rg_rem_reg[16] [15]),
        .I2(\cbus[0]_0 ),
        .I3(art_o_carry__3_i_1_0[14]),
        .I4(Q),
        .I5(art_o_carry__3_i_1_0[15]),
        .O(cbus[15]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \cbus[1]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(\rg_rem_reg[16] [1]),
        .I2(\cbus[0]_0 ),
        .I3(art_o_carry__3_i_1_0[0]),
        .I4(Q),
        .I5(art_o_carry__3_i_1_0[1]),
        .O(cbus[1]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \cbus[2]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(\rg_rem_reg[16] [2]),
        .I2(\cbus[0]_0 ),
        .I3(art_o_carry__3_i_1_0[1]),
        .I4(Q),
        .I5(art_o_carry__3_i_1_0[2]),
        .O(cbus[2]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \cbus[3]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(\rg_rem_reg[16] [3]),
        .I2(\cbus[0]_0 ),
        .I3(art_o_carry__3_i_1_0[2]),
        .I4(Q),
        .I5(art_o_carry__3_i_1_0[3]),
        .O(cbus[3]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \cbus[4]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(\rg_rem_reg[16] [4]),
        .I2(\cbus[0]_0 ),
        .I3(art_o_carry__3_i_1_0[3]),
        .I4(Q),
        .I5(art_o_carry__3_i_1_0[4]),
        .O(cbus[4]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \cbus[5]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(\rg_rem_reg[16] [5]),
        .I2(\cbus[0]_0 ),
        .I3(art_o_carry__3_i_1_0[4]),
        .I4(Q),
        .I5(art_o_carry__3_i_1_0[5]),
        .O(cbus[5]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \cbus[6]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(\rg_rem_reg[16] [6]),
        .I2(\cbus[0]_0 ),
        .I3(art_o_carry__3_i_1_0[5]),
        .I4(Q),
        .I5(art_o_carry__3_i_1_0[6]),
        .O(cbus[6]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \cbus[7]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(\rg_rem_reg[16] [7]),
        .I2(\cbus[0]_0 ),
        .I3(art_o_carry__3_i_1_0[6]),
        .I4(Q),
        .I5(art_o_carry__3_i_1_0[7]),
        .O(cbus[7]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \cbus[8]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(\rg_rem_reg[16] [8]),
        .I2(\cbus[0]_0 ),
        .I3(art_o_carry__3_i_1_0[7]),
        .I4(Q),
        .I5(art_o_carry__3_i_1_0[8]),
        .O(cbus[8]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \cbus[9]_INST_0 
       (.I0(cbus_0_sn_1),
        .I1(\rg_rem_reg[16] [9]),
        .I2(\cbus[0]_0 ),
        .I3(art_o_carry__3_i_1_0[8]),
        .I4(Q),
        .I5(art_o_carry__3_i_1_0[9]),
        .O(cbus[9]));
  LUT5 #(
    .INIT(32'h06FF0600)) 
    chg_quo_sgn_i_1
       (.I0(\cbus[0]_INST_0_i_1_n_0 ),
        .I1(bbus),
        .I2(ccmd_1_sn_1),
        .I3(dctl_load),
        .I4(chg_quo_sgn),
        .O(chg_quo_sgn_i_1_n_0));
  FDRE chg_quo_sgn_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(chg_quo_sgn_i_1_n_0),
        .Q(chg_quo_sgn),
        .R(rst_n_0));
  LUT4 #(
    .INIT(16'h2F20)) 
    chg_rem_sgn_i_1
       (.I0(abus[15]),
        .I1(ccmd_1_sn_1),
        .I2(dctl_load),
        .I3(chg_rem_sgn),
        .O(chg_rem_sgn_i_1_n_0));
  FDRE chg_rem_sgn_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(chg_rem_sgn_i_1_n_0),
        .Q(chg_rem_sgn),
        .R(rst_n_0));
  LUT6 #(
    .INIT(64'h0000000032FF3232)) 
    \dctl_stat[0]_i_1 
       (.I0(\cbus[0]_INST_0_i_1_n_0 ),
        .I1(\dctl_stat[0]_i_2_n_0 ),
        .I2(\dctl_stat[0]_i_3_n_0 ),
        .I3(dctl_stat[0]),
        .I4(Q),
        .I5(\dctl_stat[0]_i_4_n_0 ),
        .O(dctl_next[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF08A8)) 
    \dctl_stat[0]_i_2 
       (.I0(\dctl_stat[0]_i_5_n_0 ),
        .I1(quo_f),
        .I2(Q),
        .I3(O6[16]),
        .I4(\dctl_stat[0]_i_6_n_0 ),
        .I5(\dctl_stat[0]_i_7_n_0 ),
        .O(\dctl_stat[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEEEFFFEF)) 
    \dctl_stat[0]_i_3 
       (.I0(ccmd_1_sn_1),
        .I1(dctl_stat[1]),
        .I2(art_o_carry__3_i_1_1[15]),
        .I3(dctl_load),
        .I4(bbus),
        .O(\dctl_stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \dctl_stat[0]_i_4 
       (.I0(O6[16]),
        .I1(Q),
        .I2(chg_quo_sgn),
        .I3(\dctl_stat[0]_i_8_n_0 ),
        .I4(dctl_stat[0]),
        .I5(dctl_stat[3]),
        .O(\dctl_stat[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \dctl_stat[0]_i_5 
       (.I0(dctl_stat[1]),
        .I1(dctl_stat[0]),
        .I2(dctl_stat[2]),
        .I3(Q),
        .I4(dctl_stat[3]),
        .O(\dctl_stat[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \dctl_stat[0]_i_6 
       (.I0(dctl_stat[1]),
        .I1(dctl_stat[0]),
        .I2(dctl_load),
        .O(\dctl_stat[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEFEAAAAA)) 
    \dctl_stat[0]_i_7 
       (.I0(\dctl_stat[4]_i_6_n_0 ),
        .I1(bbus),
        .I2(dctl_load),
        .I3(art_o_carry__3_i_1_1[15]),
        .I4(dctl_stat[0]),
        .I5(dctl_stat[1]),
        .O(\dctl_stat[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \dctl_stat[0]_i_8 
       (.I0(dctl_stat[1]),
        .I1(dctl_stat[2]),
        .O(\dctl_stat[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h222288882222888F)) 
    \dctl_stat[1]_i_1 
       (.I0(Q),
        .I1(dctl_stat[0]),
        .I2(\dctl_stat[1]_i_2_n_0 ),
        .I3(dctl_stat[2]),
        .I4(dctl_stat[1]),
        .I5(dctl_stat[3]),
        .O(dctl_next[1]));
  LUT6 #(
    .INIT(64'h0000000000FBFFFB)) 
    \dctl_stat[1]_i_2 
       (.I0(\cbus[0]_INST_0_i_1_n_0 ),
        .I1(bbus),
        .I2(ccmd_1_sn_1),
        .I3(Q),
        .I4(chg_quo_sgn),
        .I5(\dctl_stat[1]_i_3_n_0 ),
        .O(\dctl_stat[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \dctl_stat[1]_i_3 
       (.I0(dctl_stat[0]),
        .I1(art_o_carry__3_i_1_1[15]),
        .I2(dctl_load),
        .I3(bbus),
        .O(\dctl_stat[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8A8A8A8A888)) 
    \dctl_stat[2]_i_1 
       (.I0(\dctl_stat[2]_i_2_n_0 ),
        .I1(chg_rem_sgn),
        .I2(Q),
        .I3(dctl_stat[2]),
        .I4(dctl_stat[1]),
        .I5(\dctl_stat[2]_i_3_n_0 ),
        .O(dctl_next[2]));
  LUT6 #(
    .INIT(64'h485888A8485888AC)) 
    \dctl_stat[2]_i_2 
       (.I0(dctl_stat[2]),
        .I1(Q),
        .I2(dctl_stat[0]),
        .I3(dctl_stat[3]),
        .I4(dctl_stat[1]),
        .I5(chg_quo_sgn),
        .O(\dctl_stat[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \dctl_stat[2]_i_3 
       (.I0(O6[16]),
        .I1(Q),
        .I2(quo_f),
        .O(\dctl_stat[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7F008000)) 
    \dctl_stat[3]_i_1 
       (.I0(dctl_stat[1]),
        .I1(dctl_stat[0]),
        .I2(dctl_stat[2]),
        .I3(Q),
        .I4(dctl_stat[3]),
        .O(dctl_next[3]));
  LUT6 #(
    .INIT(64'h22FF22FF22FF222F)) 
    \dctl_stat[4]_i_1 
       (.I0(Q),
        .I1(\dctl_stat[4]_i_2_n_0 ),
        .I2(chg_rem_sgn0),
        .I3(\dctl_stat[4]_i_4_n_0 ),
        .I4(dctl_stat[0]),
        .I5(dctl_stat[1]),
        .O(dctl_next[4]));
  LUT4 #(
    .INIT(16'h0001)) 
    \dctl_stat[4]_i_2 
       (.I0(dctl_stat[3]),
        .I1(dctl_stat[0]),
        .I2(dctl_stat[2]),
        .I3(dctl_stat[1]),
        .O(\dctl_stat[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF301FFFFF30F)) 
    \dctl_stat[4]_i_4 
       (.I0(ccmd_1_sn_1),
        .I1(\dctl_stat[4]_i_5_n_0 ),
        .I2(dctl_stat[1]),
        .I3(dctl_stat[0]),
        .I4(\dctl_stat[4]_i_6_n_0 ),
        .I5(dctl_load),
        .O(\dctl_stat[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \dctl_stat[4]_i_5 
       (.I0(bbus),
        .I1(dctl_load),
        .I2(art_o_carry__3_i_1_1[15]),
        .O(\dctl_stat[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \dctl_stat[4]_i_6 
       (.I0(dctl_stat[3]),
        .I1(Q),
        .I2(dctl_stat[2]),
        .O(\dctl_stat[4]_i_6_n_0 ));
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
    .INIT(8'h2E)) 
    quo_f_i_1
       (.I0(quo_f),
        .I1(Q),
        .I2(O6[16]),
        .O(quo_lsb));
  LUT1 #(
    .INIT(2'h1)) 
    rg_crdy_i_1
       (.I0(rst_n),
        .O(rst_n_0));
  LUT5 #(
    .INIT(32'h55550001)) 
    rg_crdy_i_2
       (.I0(dctl_load),
        .I1(rg_crdy_i_4_n_0),
        .I2(rg_crdy_i_5_n_0),
        .I3(rg_crdy_i_6_n_0),
        .I4(rg_crdy_reg_0),
        .O(rg_crdy_reg));
  LUT6 #(
    .INIT(64'h2000200020000000)) 
    rg_crdy_i_3
       (.I0(ccmd[1]),
        .I1(ccmd[4]),
        .I2(ccmd[3]),
        .I3(ccmd[2]),
        .I4(rg_crdy_reg_0),
        .I5(ccmd[0]),
        .O(dctl_load));
  LUT5 #(
    .INIT(32'hFEFEFAAA)) 
    rg_crdy_i_4
       (.I0(dctl_stat[3]),
        .I1(chg_quo_sgn),
        .I2(dctl_stat[2]),
        .I3(dctl_stat[1]),
        .I4(Q),
        .O(rg_crdy_i_4_n_0));
  LUT6 #(
    .INIT(64'hA0A0A0A0E0EFA0A0)) 
    rg_crdy_i_5
       (.I0(rg_crdy_i_7_n_0),
        .I1(O6[16]),
        .I2(Q),
        .I3(quo_f),
        .I4(chg_rem_sgn),
        .I5(dctl_stat[2]),
        .O(rg_crdy_i_5_n_0));
  LUT5 #(
    .INIT(32'h00111F11)) 
    rg_crdy_i_6
       (.I0(dctl_stat[2]),
        .I1(Q),
        .I2(chg_rem_sgn),
        .I3(dctl_stat[0]),
        .I4(dctl_stat[1]),
        .O(rg_crdy_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    rg_crdy_i_7
       (.I0(dctl_stat[0]),
        .I1(dctl_stat[1]),
        .O(rg_crdy_i_7_n_0));
  LUT6 #(
    .INIT(64'h88888888FF888F8F)) 
    \rg_den[0]_i_1 
       (.I0(abus[0]),
        .I1(\rg_den_reg[0] ),
        .I2(O6[16]),
        .I3(O6[0]),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_dso_reg[16] ),
        .O(\rg_den_reg[15] [0]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \rg_den[10]_i_1 
       (.I0(abus[10]),
        .I1(\rg_den_reg[0] ),
        .I2(\rg_rem_reg[16] [9]),
        .I3(O6[10]),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_dso_reg[16] ),
        .O(\rg_den_reg[15] [10]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \rg_den[11]_i_1 
       (.I0(abus[11]),
        .I1(\rg_den_reg[0] ),
        .I2(\rg_rem_reg[16] [10]),
        .I3(O6[11]),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_dso_reg[16] ),
        .O(\rg_den_reg[15] [11]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \rg_den[12]_i_1 
       (.I0(abus[12]),
        .I1(\rg_den_reg[0] ),
        .I2(\rg_rem_reg[16] [11]),
        .I3(O6[12]),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_dso_reg[16] ),
        .O(\rg_den_reg[15] [12]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \rg_den[13]_i_1 
       (.I0(abus[13]),
        .I1(\rg_den_reg[0] ),
        .I2(\rg_rem_reg[16] [12]),
        .I3(O6[13]),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_dso_reg[16] ),
        .O(\rg_den_reg[15] [13]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \rg_den[14]_i_1 
       (.I0(abus[14]),
        .I1(\rg_den_reg[0] ),
        .I2(\rg_rem_reg[16] [13]),
        .I3(O6[14]),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_dso_reg[16] ),
        .O(\rg_den_reg[15] [14]));
  LUT6 #(
    .INIT(64'hB8B8BB8800000000)) 
    \rg_den[15]_i_1 
       (.I0(abus[15]),
        .I1(dctl_load),
        .I2(O6[15]),
        .I3(\rg_rem_reg[16] [14]),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(rst_n),
        .O(\rg_den_reg[15] [15]));
  LUT5 #(
    .INIT(32'hFFFFAAAE)) 
    \rg_den[16]_i_1 
       (.I0(\rg_dso_reg[16] ),
        .I1(dctl_stat[0]),
        .I2(dctl_stat[2]),
        .I3(dctl_stat[3]),
        .I4(Q),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFF504400000000)) 
    \rg_den[16]_i_2 
       (.I0(dctl_load),
        .I1(\rg_rem_reg[16] [15]),
        .I2(O6[16]),
        .I3(\rg_den[16]_i_3_n_0 ),
        .I4(chg_rem_sgn0),
        .I5(rst_n),
        .O(\rg_den_reg[15] [16]));
  LUT4 #(
    .INIT(16'h0002)) 
    \rg_den[16]_i_3 
       (.I0(dctl_stat[0]),
        .I1(dctl_stat[2]),
        .I2(Q),
        .I3(dctl_stat[3]),
        .O(\rg_den[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \rg_den[1]_i_1 
       (.I0(abus[1]),
        .I1(\rg_den_reg[0] ),
        .I2(\rg_rem_reg[16] [0]),
        .I3(O6[1]),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_dso_reg[16] ),
        .O(\rg_den_reg[15] [1]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \rg_den[2]_i_1 
       (.I0(abus[2]),
        .I1(\rg_den_reg[0] ),
        .I2(\rg_rem_reg[16] [1]),
        .I3(O6[2]),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_dso_reg[16] ),
        .O(\rg_den_reg[15] [2]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \rg_den[3]_i_1 
       (.I0(abus[3]),
        .I1(\rg_den_reg[0] ),
        .I2(\rg_rem_reg[16] [2]),
        .I3(O6[3]),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_dso_reg[16] ),
        .O(\rg_den_reg[15] [3]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \rg_den[4]_i_1 
       (.I0(abus[4]),
        .I1(\rg_den_reg[0] ),
        .I2(\rg_rem_reg[16] [3]),
        .I3(O6[4]),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_dso_reg[16] ),
        .O(\rg_den_reg[15] [4]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \rg_den[5]_i_1 
       (.I0(abus[5]),
        .I1(\rg_den_reg[0] ),
        .I2(\rg_rem_reg[16] [4]),
        .I3(O6[5]),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_dso_reg[16] ),
        .O(\rg_den_reg[15] [5]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \rg_den[6]_i_1 
       (.I0(abus[6]),
        .I1(\rg_den_reg[0] ),
        .I2(\rg_rem_reg[16] [5]),
        .I3(O6[6]),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_dso_reg[16] ),
        .O(\rg_den_reg[15] [6]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \rg_den[7]_i_1 
       (.I0(abus[7]),
        .I1(\rg_den_reg[0] ),
        .I2(\rg_rem_reg[16] [6]),
        .I3(O6[7]),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_dso_reg[16] ),
        .O(\rg_den_reg[15] [7]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \rg_den[8]_i_1 
       (.I0(abus[8]),
        .I1(\rg_den_reg[0] ),
        .I2(\rg_rem_reg[16] [7]),
        .I3(O6[8]),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_dso_reg[16] ),
        .O(\rg_den_reg[15] [8]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \rg_den[9]_i_1 
       (.I0(abus[9]),
        .I1(\rg_den_reg[0] ),
        .I2(\rg_rem_reg[16] [8]),
        .I3(O6[9]),
        .I4(\rg_den[16]_i_3_n_0 ),
        .I5(\rg_dso_reg[16] ),
        .O(\rg_den_reg[15] [9]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \rg_dso[16]_i_1 
       (.I0(\rg_dso_reg[16] ),
        .I1(dctl_stat[3]),
        .I2(Q),
        .I3(dctl_stat[2]),
        .I4(dctl_stat[1]),
        .I5(dctl_stat[0]),
        .O(\dctl_stat_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \rg_dso[16]_i_3 
       (.I0(ccmd[1]),
        .I1(ccmd[4]),
        .I2(ccmd[3]),
        .I3(rg_crdy_reg_0),
        .I4(ccmd[0]),
        .I5(ccmd[2]),
        .O(ccmd_1_sn_1));
  LUT4 #(
    .INIT(16'hF0F2)) 
    \rg_rem[16]_i_2 
       (.I0(dctl_stat[2]),
        .I1(dctl_stat[1]),
        .I2(Q),
        .I3(dctl_stat[3]),
        .O(\dctl_stat_reg[2]_0 ));
endmodule

module divc16_reg_den
   (Q,
    E,
    D,
    clk);
  output [16:0]Q;
  input [0:0]E;
  input [16:0]D;
  input clk;

  wire \<const0> ;
  wire [16:0]D;
  wire [0:0]E;
  wire [16:0]Q;
  wire clk;

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
        .D(D[10]),
        .Q(Q[10]),
        .R(\<const0> ));
  FDRE \rg_den_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(\<const0> ));
  FDRE \rg_den_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(\<const0> ));
  FDRE \rg_den_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(\<const0> ));
  FDRE \rg_den_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(\<const0> ));
  FDRE \rg_den_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(\<const0> ));
  FDRE \rg_den_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
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
        .D(D[2]),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE \rg_den_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(\<const0> ));
  FDRE \rg_den_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(\<const0> ));
  FDRE \rg_den_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(\<const0> ));
  FDRE \rg_den_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(\<const0> ));
  FDRE \rg_den_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(\<const0> ));
  FDRE \rg_den_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(\<const0> ));
  FDRE \rg_den_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(\<const0> ));
endmodule

module divc16_reg_dso
   (Q,
    E,
    D,
    clk);
  output [16:0]Q;
  input [0:0]E;
  input [16:0]D;
  input clk;

  wire \<const0> ;
  wire [16:0]D;
  wire [0:0]E;
  wire [16:0]Q;
  wire clk;

  GND GND
       (.G(\<const0> ));
  FDRE \rg_dso_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(\<const0> ));
  FDRE \rg_dso_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(\<const0> ));
endmodule

module divc16_reg_rem
   (DI,
    Q,
    \rg_rem_reg[7]_0 ,
    \rg_rem_reg[11]_0 ,
    \rg_rem_reg[15]_0 ,
    \rg_rem_reg[15]_1 ,
    \rg_rem_reg[14]_0 ,
    \rg_rem_reg[13]_0 ,
    \rg_rem_reg[12]_0 ,
    \rg_rem_reg[11]_1 ,
    \rg_rem_reg[10]_0 ,
    \rg_rem_reg[9]_0 ,
    \rg_rem_reg[8]_0 ,
    \rg_rem_reg[7]_1 ,
    \rg_rem_reg[6]_0 ,
    \rg_rem_reg[5]_0 ,
    \rg_rem_reg[4]_0 ,
    \rg_rem_reg[3]_0 ,
    \rg_rem_reg[2]_0 ,
    \rg_rem_reg[1]_0 ,
    \rg_rem_reg[0]_0 ,
    \rg_rem_reg[3]_1 ,
    \rg_rem_reg[3]_2 ,
    SR,
    E,
    D,
    clk);
  output [2:0]DI;
  output [16:0]Q;
  output [3:0]\rg_rem_reg[7]_0 ;
  output [3:0]\rg_rem_reg[11]_0 ;
  output [3:0]\rg_rem_reg[15]_0 ;
  output \rg_rem_reg[15]_1 ;
  output \rg_rem_reg[14]_0 ;
  output \rg_rem_reg[13]_0 ;
  output \rg_rem_reg[12]_0 ;
  output \rg_rem_reg[11]_1 ;
  output \rg_rem_reg[10]_0 ;
  output \rg_rem_reg[9]_0 ;
  output \rg_rem_reg[8]_0 ;
  output \rg_rem_reg[7]_1 ;
  output \rg_rem_reg[6]_0 ;
  output \rg_rem_reg[5]_0 ;
  output \rg_rem_reg[4]_0 ;
  output \rg_rem_reg[3]_0 ;
  output \rg_rem_reg[2]_0 ;
  output \rg_rem_reg[1]_0 ;
  output \rg_rem_reg[0]_0 ;
  input [0:0]\rg_rem_reg[3]_1 ;
  input \rg_rem_reg[3]_2 ;
  input [0:0]SR;
  input [0:0]E;
  input [16:0]D;
  input clk;

  wire [16:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire [16:0]Q;
  wire [0:0]SR;
  wire clk;
  wire \rg_rem_reg[0]_0 ;
  wire \rg_rem_reg[10]_0 ;
  wire [3:0]\rg_rem_reg[11]_0 ;
  wire \rg_rem_reg[11]_1 ;
  wire \rg_rem_reg[12]_0 ;
  wire \rg_rem_reg[13]_0 ;
  wire \rg_rem_reg[14]_0 ;
  wire [3:0]\rg_rem_reg[15]_0 ;
  wire \rg_rem_reg[15]_1 ;
  wire \rg_rem_reg[1]_0 ;
  wire \rg_rem_reg[2]_0 ;
  wire \rg_rem_reg[3]_0 ;
  wire [0:0]\rg_rem_reg[3]_1 ;
  wire \rg_rem_reg[3]_2 ;
  wire \rg_rem_reg[4]_0 ;
  wire \rg_rem_reg[5]_0 ;
  wire \rg_rem_reg[6]_0 ;
  wire [3:0]\rg_rem_reg[7]_0 ;
  wire \rg_rem_reg[7]_1 ;
  wire \rg_rem_reg[8]_0 ;
  wire \rg_rem_reg[9]_0 ;

  LUT4 #(
    .INIT(16'h00E2)) 
    art_o_carry__0_i_1
       (.I0(Q[7]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[6]),
        .I3(\rg_rem_reg[3]_2 ),
        .O(\rg_rem_reg[7]_0 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__0_i_13
       (.I0(Q[6]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[7]),
        .O(\rg_rem_reg[6]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__0_i_14
       (.I0(Q[5]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[6]),
        .O(\rg_rem_reg[5]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__0_i_15
       (.I0(Q[4]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[5]),
        .O(\rg_rem_reg[4]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__0_i_16
       (.I0(Q[3]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[4]),
        .O(\rg_rem_reg[3]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    art_o_carry__0_i_2
       (.I0(Q[6]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[5]),
        .I3(\rg_rem_reg[3]_2 ),
        .O(\rg_rem_reg[7]_0 [2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    art_o_carry__0_i_3
       (.I0(Q[5]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[4]),
        .I3(\rg_rem_reg[3]_2 ),
        .O(\rg_rem_reg[7]_0 [1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    art_o_carry__0_i_4
       (.I0(Q[4]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[3]),
        .I3(\rg_rem_reg[3]_2 ),
        .O(\rg_rem_reg[7]_0 [0]));
  LUT4 #(
    .INIT(16'h00E2)) 
    art_o_carry__1_i_1
       (.I0(Q[11]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[10]),
        .I3(\rg_rem_reg[3]_2 ),
        .O(\rg_rem_reg[11]_0 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__1_i_13
       (.I0(Q[10]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[11]),
        .O(\rg_rem_reg[10]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__1_i_14
       (.I0(Q[9]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[10]),
        .O(\rg_rem_reg[9]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__1_i_15
       (.I0(Q[8]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[9]),
        .O(\rg_rem_reg[8]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__1_i_16
       (.I0(Q[7]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[8]),
        .O(\rg_rem_reg[7]_1 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    art_o_carry__1_i_2
       (.I0(Q[10]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[9]),
        .I3(\rg_rem_reg[3]_2 ),
        .O(\rg_rem_reg[11]_0 [2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    art_o_carry__1_i_3
       (.I0(Q[9]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[8]),
        .I3(\rg_rem_reg[3]_2 ),
        .O(\rg_rem_reg[11]_0 [1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    art_o_carry__1_i_4
       (.I0(Q[8]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[7]),
        .I3(\rg_rem_reg[3]_2 ),
        .O(\rg_rem_reg[11]_0 [0]));
  LUT4 #(
    .INIT(16'h00E2)) 
    art_o_carry__2_i_1
       (.I0(Q[15]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[14]),
        .I3(\rg_rem_reg[3]_2 ),
        .O(\rg_rem_reg[15]_0 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__2_i_13
       (.I0(Q[14]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[15]),
        .O(\rg_rem_reg[14]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__2_i_14
       (.I0(Q[13]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[14]),
        .O(\rg_rem_reg[13]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__2_i_15
       (.I0(Q[12]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[13]),
        .O(\rg_rem_reg[12]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__2_i_16
       (.I0(Q[11]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[12]),
        .O(\rg_rem_reg[11]_1 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    art_o_carry__2_i_2
       (.I0(Q[14]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[13]),
        .I3(\rg_rem_reg[3]_2 ),
        .O(\rg_rem_reg[15]_0 [2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    art_o_carry__2_i_3
       (.I0(Q[13]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[12]),
        .I3(\rg_rem_reg[3]_2 ),
        .O(\rg_rem_reg[15]_0 [1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    art_o_carry__2_i_4
       (.I0(Q[12]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[11]),
        .I3(\rg_rem_reg[3]_2 ),
        .O(\rg_rem_reg[15]_0 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry__3_i_3
       (.I0(Q[15]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[16]),
        .O(\rg_rem_reg[15]_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry_i_18
       (.I0(Q[2]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[3]),
        .O(\rg_rem_reg[2]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry_i_19
       (.I0(Q[1]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[2]),
        .O(\rg_rem_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    art_o_carry_i_2
       (.I0(Q[3]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[2]),
        .I3(\rg_rem_reg[3]_2 ),
        .O(DI[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    art_o_carry_i_20
       (.I0(Q[0]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[1]),
        .O(\rg_rem_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    art_o_carry_i_3
       (.I0(Q[2]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[1]),
        .I3(\rg_rem_reg[3]_2 ),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    art_o_carry_i_4
       (.I0(Q[1]),
        .I1(\rg_rem_reg[3]_1 ),
        .I2(Q[0]),
        .I3(\rg_rem_reg[3]_2 ),
        .O(DI[0]));
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
