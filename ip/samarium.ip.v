
module sama_alu
   (\stk_b1_rg_reg[15] ,
    O,
    \stk_b1_rg_reg[15]_0 ,
    p_1_in,
    DI,
    S,
    cbus_inferred_i_52,
    cbus_inferred_i_52_0,
    cbus_inferred_i_40,
    cbus_inferred_i_40_0,
    cbus_inferred_i_28,
    cbus_inferred_i_28_0,
    cbus_inferred_i_55,
    cbus_inferred_i_55_0,
    drv__3,
    drv1);
  output [13:0]\stk_b1_rg_reg[15] ;
  output [0:0]O;
  output [0:0]\stk_b1_rg_reg[15]_0 ;
  output [0:0]p_1_in;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]cbus_inferred_i_52;
  input [3:0]cbus_inferred_i_52_0;
  input [3:0]cbus_inferred_i_40;
  input [3:0]cbus_inferred_i_40_0;
  input [3:0]cbus_inferred_i_28;
  input [3:0]cbus_inferred_i_28_0;
  input [0:0]cbus_inferred_i_55;
  input [1:0]cbus_inferred_i_55_0;
  input drv__3;
  input drv1;

  wire [2:0]DI;
  wire [0:0]O;
  wire [3:0]S;
  wire [3:0]cbus_inferred_i_28;
  wire [3:0]cbus_inferred_i_28_0;
  wire [3:0]cbus_inferred_i_40;
  wire [3:0]cbus_inferred_i_40_0;
  wire [3:0]cbus_inferred_i_52;
  wire [3:0]cbus_inferred_i_52_0;
  wire [0:0]cbus_inferred_i_55;
  wire [1:0]cbus_inferred_i_55_0;
  wire drv1;
  wire drv__3;
  wire [0:0]p_1_in;
  wire [13:0]\stk_b1_rg_reg[15] ;
  wire [0:0]\stk_b1_rg_reg[15]_0 ;

  sama_alu_art art
       (.DI(DI),
        .O(O),
        .S(S),
        .cbus_inferred_i_28(cbus_inferred_i_28),
        .cbus_inferred_i_28_0(cbus_inferred_i_28_0),
        .cbus_inferred_i_40(cbus_inferred_i_40),
        .cbus_inferred_i_40_0(cbus_inferred_i_40_0),
        .cbus_inferred_i_52(cbus_inferred_i_52),
        .cbus_inferred_i_52_0(cbus_inferred_i_52_0),
        .cbus_inferred_i_55(cbus_inferred_i_55),
        .cbus_inferred_i_55_0(cbus_inferred_i_55_0),
        .drv1(drv1),
        .drv__3(drv__3),
        .p_1_in(p_1_in),
        .\stk_b1_rg_reg[15] (\stk_b1_rg_reg[15] ),
        .\stk_b1_rg_reg[15]_0 (\stk_b1_rg_reg[15]_0 ));
endmodule

module sama_alu_add
   (\stk_b1_rg_reg[15] ,
    O,
    \stk_b1_rg_reg[15]_0 ,
    p_1_in,
    DI,
    S,
    cbus_inferred_i_52,
    cbus_inferred_i_52_0,
    cbus_inferred_i_40,
    cbus_inferred_i_40_0,
    cbus_inferred_i_28,
    cbus_inferred_i_28_0,
    cbus_inferred_i_55,
    cbus_inferred_i_55_0,
    drv__3,
    drv1);
  output [13:0]\stk_b1_rg_reg[15] ;
  output [0:0]O;
  output [0:0]\stk_b1_rg_reg[15]_0 ;
  output [0:0]p_1_in;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]cbus_inferred_i_52;
  input [3:0]cbus_inferred_i_52_0;
  input [3:0]cbus_inferred_i_40;
  input [3:0]cbus_inferred_i_40_0;
  input [3:0]cbus_inferred_i_28;
  input [3:0]cbus_inferred_i_28_0;
  input [0:0]cbus_inferred_i_55;
  input [1:0]cbus_inferred_i_55_0;
  input drv__3;
  input drv1;

  wire \<const0> ;
  wire [2:0]DI;
  wire [0:0]O;
  wire [3:0]S;
  wire cbus_inferred_i_102_n_0;
  wire cbus_inferred_i_103_n_0;
  wire cbus_inferred_i_120_n_0;
  wire cbus_inferred_i_121_n_0;
  wire [3:0]cbus_inferred_i_28;
  wire [3:0]cbus_inferred_i_28_0;
  wire [3:0]cbus_inferred_i_40;
  wire [3:0]cbus_inferred_i_40_0;
  wire [3:0]cbus_inferred_i_52;
  wire [3:0]cbus_inferred_i_52_0;
  wire [0:0]cbus_inferred_i_55;
  wire [1:0]cbus_inferred_i_55_0;
  wire drv1;
  wire drv__3;
  wire [0:0]p_1_in;
  wire [1:1]p_1_in__0;
  wire [13:0]\stk_b1_rg_reg[15] ;
  wire [0:0]\stk_b1_rg_reg[15]_0 ;
  wire tout__1_carry__0_n_0;
  wire tout__1_carry__0_n_1;
  wire tout__1_carry__0_n_2;
  wire tout__1_carry__0_n_3;
  wire tout__1_carry__1_n_0;
  wire tout__1_carry__1_n_1;
  wire tout__1_carry__1_n_2;
  wire tout__1_carry__1_n_3;
  wire tout__1_carry__2_n_0;
  wire tout__1_carry__2_n_1;
  wire tout__1_carry__2_n_2;
  wire tout__1_carry__2_n_3;
  wire tout__1_carry__3_n_3;
  wire tout__1_carry_n_0;
  wire tout__1_carry_n_1;
  wire tout__1_carry_n_2;
  wire tout__1_carry_n_3;
  wire [3:0]NLW_tout__1_carry__3_O_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cbus_inferred_i_102
       (.I0(\stk_b1_rg_reg[15] [9]),
        .I1(\stk_b1_rg_reg[15] [10]),
        .I2(\stk_b1_rg_reg[15] [7]),
        .I3(\stk_b1_rg_reg[15] [8]),
        .I4(cbus_inferred_i_120_n_0),
        .O(cbus_inferred_i_102_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cbus_inferred_i_103
       (.I0(\stk_b1_rg_reg[15] [1]),
        .I1(\stk_b1_rg_reg[15] [2]),
        .I2(\stk_b1_rg_reg[15] [0]),
        .I3(p_1_in__0),
        .I4(cbus_inferred_i_121_n_0),
        .O(cbus_inferred_i_103_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cbus_inferred_i_120
       (.I0(\stk_b1_rg_reg[15] [12]),
        .I1(\stk_b1_rg_reg[15] [11]),
        .I2(O),
        .I3(\stk_b1_rg_reg[15] [13]),
        .O(cbus_inferred_i_120_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cbus_inferred_i_121
       (.I0(\stk_b1_rg_reg[15] [4]),
        .I1(\stk_b1_rg_reg[15] [3]),
        .I2(\stk_b1_rg_reg[15] [6]),
        .I3(\stk_b1_rg_reg[15] [5]),
        .O(cbus_inferred_i_121_n_0));
  LUT5 #(
    .INIT(32'h080808A8)) 
    cbus_inferred_i_60
       (.I0(drv__3),
        .I1(p_1_in__0),
        .I2(drv1),
        .I3(cbus_inferred_i_102_n_0),
        .I4(cbus_inferred_i_103_n_0),
        .O(p_1_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry
       (.CI(\<const0> ),
        .CO({tout__1_carry_n_0,tout__1_carry_n_1,tout__1_carry_n_2,tout__1_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({DI,\<const0> }),
        .O({\stk_b1_rg_reg[15] [2:1],p_1_in__0,\stk_b1_rg_reg[15] [0]}),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__0
       (.CI(tout__1_carry_n_0),
        .CO({tout__1_carry__0_n_0,tout__1_carry__0_n_1,tout__1_carry__0_n_2,tout__1_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(cbus_inferred_i_52),
        .O(\stk_b1_rg_reg[15] [6:3]),
        .S(cbus_inferred_i_52_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__1
       (.CI(tout__1_carry__0_n_0),
        .CO({tout__1_carry__1_n_0,tout__1_carry__1_n_1,tout__1_carry__1_n_2,tout__1_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(cbus_inferred_i_40),
        .O(\stk_b1_rg_reg[15] [10:7]),
        .S(cbus_inferred_i_40_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__2
       (.CI(tout__1_carry__1_n_0),
        .CO({tout__1_carry__2_n_0,tout__1_carry__2_n_1,tout__1_carry__2_n_2,tout__1_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(cbus_inferred_i_28),
        .O({O,\stk_b1_rg_reg[15] [13:11]}),
        .S(cbus_inferred_i_28_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__3
       (.CI(tout__1_carry__2_n_0),
        .CO(tout__1_carry__3_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,cbus_inferred_i_55}),
        .O({\stk_b1_rg_reg[15]_0 ,NLW_tout__1_carry__3_O_UNCONNECTED[0]}),
        .S({\<const0> ,\<const0> ,cbus_inferred_i_55_0}));
endmodule

module sama_alu_art
   (\stk_b1_rg_reg[15] ,
    O,
    \stk_b1_rg_reg[15]_0 ,
    p_1_in,
    DI,
    S,
    cbus_inferred_i_52,
    cbus_inferred_i_52_0,
    cbus_inferred_i_40,
    cbus_inferred_i_40_0,
    cbus_inferred_i_28,
    cbus_inferred_i_28_0,
    cbus_inferred_i_55,
    cbus_inferred_i_55_0,
    drv__3,
    drv1);
  output [13:0]\stk_b1_rg_reg[15] ;
  output [0:0]O;
  output [0:0]\stk_b1_rg_reg[15]_0 ;
  output [0:0]p_1_in;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]cbus_inferred_i_52;
  input [3:0]cbus_inferred_i_52_0;
  input [3:0]cbus_inferred_i_40;
  input [3:0]cbus_inferred_i_40_0;
  input [3:0]cbus_inferred_i_28;
  input [3:0]cbus_inferred_i_28_0;
  input [0:0]cbus_inferred_i_55;
  input [1:0]cbus_inferred_i_55_0;
  input drv__3;
  input drv1;

  wire [2:0]DI;
  wire [0:0]O;
  wire [3:0]S;
  wire [3:0]cbus_inferred_i_28;
  wire [3:0]cbus_inferred_i_28_0;
  wire [3:0]cbus_inferred_i_40;
  wire [3:0]cbus_inferred_i_40_0;
  wire [3:0]cbus_inferred_i_52;
  wire [3:0]cbus_inferred_i_52_0;
  wire [0:0]cbus_inferred_i_55;
  wire [1:0]cbus_inferred_i_55_0;
  wire drv1;
  wire drv__3;
  wire [0:0]p_1_in;
  wire [13:0]\stk_b1_rg_reg[15] ;
  wire [0:0]\stk_b1_rg_reg[15]_0 ;

  sama_alu_add add
       (.DI(DI),
        .O(O),
        .S(S),
        .cbus_inferred_i_28(cbus_inferred_i_28),
        .cbus_inferred_i_28_0(cbus_inferred_i_28_0),
        .cbus_inferred_i_40(cbus_inferred_i_40),
        .cbus_inferred_i_40_0(cbus_inferred_i_40_0),
        .cbus_inferred_i_52(cbus_inferred_i_52),
        .cbus_inferred_i_52_0(cbus_inferred_i_52_0),
        .cbus_inferred_i_55(cbus_inferred_i_55),
        .cbus_inferred_i_55_0(cbus_inferred_i_55_0),
        .drv1(drv1),
        .drv__3(drv__3),
        .p_1_in(p_1_in),
        .\stk_b1_rg_reg[15] (\stk_b1_rg_reg[15] ),
        .\stk_b1_rg_reg[15]_0 (\stk_b1_rg_reg[15]_0 ));
endmodule

module sama_ctrl
   (.out(ir[1]),
    in0,
    cbus,
    drv__3,
    drv1,
    ctl_sppp,
    abus,
    badr,
    \ir_rg_reg[4]_0 ,
    rgf_sp_0,
    ctl_mmsp,
    ctl_push,
    E,
    \stat_reg[0] ,
    \stat_reg[0]_0 ,
    \stat_reg[1] ,
    \stat_reg[1]_0 ,
    ccmd,
    \stk_b1_rg_reg[15] ,
    \stk_b1_rg_reg[15]_0 ,
    DI,
    S,
    \stk_b1_rg_reg[6] ,
    \stk_b1_rg_reg[7] ,
    \stk_b1_rg_reg[10] ,
    \stk_b1_rg_reg[11] ,
    rgf_ie_rg_reg,
    \stk_b1_rg_reg[15]_1 ,
    \sptr_reg[6] ,
    \stk_b1_rg_reg[15]_2 ,
    bbus_o,
    abus_o,
    bdatw,
    \pcnt_reg[15] ,
    p_0_in,
    clk,
    cbus_i,
    \bdatw[15] ,
    O,
    cbus_inferred_i_2,
    \stk_ccmd_rg_reg[1] ,
    cbus_inferred_i_13,
    \bbus_o[15] ,
    brdy,
    crdy,
    abus_inferred_i_1,
    bdatr,
    abus_inferred_i_18,
    I7,
    irq,
    \pcnt_reg[15]_0 ,
    sptr_dec,
    abus_inferred_i_18_0,
    abus_inferred_i_15,
    abus_inferred_i_8,
    cpu_sts,
    abus_inferred_i_5,
    abus_inferred_i_4,
    abus_inferred_i_3,
    abus_inferred_i_2,
    rgf_ie,
    Q,
    rgf_ie_rg_reg_0,
    \sptr_reg[3] ,
    fch_iack,
    fdat,
    rst_n,
    \pcnt_reg[3] ,
    \pcnt_reg[15]_1 );
  output in0;
  output [15:0]cbus;
  output drv__3;
  output drv1;
  output ctl_sppp;
  output [15:0]abus;
  output [15:0]badr;
  output \ir_rg_reg[4]_0 ;
  output [4:0]rgf_sp_0;
  output ctl_mmsp;
  output ctl_push;
  output [0:0]E;
  output \stat_reg[0] ;
  output \stat_reg[0]_0 ;
  output [0:0]\stat_reg[1] ;
  output [0:0]\stat_reg[1]_0 ;
  output [4:0]ccmd;
  output [3:0]\stk_b1_rg_reg[15] ;
  output [3:0]\stk_b1_rg_reg[15]_0 ;
  output [2:0]DI;
  output [3:0]S;
  output [3:0]\stk_b1_rg_reg[6] ;
  output [3:0]\stk_b1_rg_reg[7] ;
  output [3:0]\stk_b1_rg_reg[10] ;
  output [3:0]\stk_b1_rg_reg[11] ;
  output rgf_ie_rg_reg;
  output [1:0]\stk_b1_rg_reg[15]_1 ;
  output \sptr_reg[6] ;
  output [0:0]\stk_b1_rg_reg[15]_2 ;
  output [15:0]bbus_o;
  output [15:0]abus_o;
  output [15:0]bdatw;
  output [15:0]\pcnt_reg[15] ;
  input p_0_in;
  input clk;
  input [15:0]cbus_i;
  input [15:0]\bdatw[15] ;
  input [0:0]O;
  input [13:0]cbus_inferred_i_2;
  input [0:0]\stk_ccmd_rg_reg[1] ;
  input [0:0]cbus_inferred_i_13;
  input [15:0]\bbus_o[15] ;
  input brdy;
  input crdy;
  input [15:0]abus_inferred_i_1;
  input [15:0]bdatr;
  input [15:0]abus_inferred_i_18;
  input [15:0]I7;
  input irq;
  input [15:0]\pcnt_reg[15]_0 ;
  input [9:0]sptr_dec;
  input [9:0]abus_inferred_i_18_0;
  input [0:0]abus_inferred_i_15;
  input abus_inferred_i_8;
  input [15:0]cpu_sts;
  input abus_inferred_i_5;
  input abus_inferred_i_4;
  input abus_inferred_i_3;
  input abus_inferred_i_2;
  input rgf_ie;
  input [4:0]Q;
  input rgf_ie_rg_reg_0;
  input \sptr_reg[3] ;
  input fch_iack;
  input [7:0]fdat;
  input rst_n;
  input \pcnt_reg[3] ;
  input \pcnt_reg[15]_1 ;
     output [7:0]ir;

  wire \<const0> ;
  wire \<const1> ;
  wire [2:0]DI;
  wire [0:0]E;
  wire [15:0]I7;
  wire [0:0]O;
  wire [4:0]Q;
  wire [3:0]S;
  wire [15:0]abus;
  wire [15:0]abus_inferred_i_1;
  wire abus_inferred_i_104_n_0;
  wire [0:0]abus_inferred_i_15;
  wire [15:0]abus_inferred_i_18;
  wire [9:0]abus_inferred_i_18_0;
  wire abus_inferred_i_2;
  wire abus_inferred_i_21_n_0;
  wire abus_inferred_i_22_n_0;
  wire abus_inferred_i_24_n_0;
  wire abus_inferred_i_26_n_0;
  wire abus_inferred_i_28_n_0;
  wire abus_inferred_i_3;
  wire abus_inferred_i_34_n_0;
  wire abus_inferred_i_4;
  wire abus_inferred_i_48_n_0;
  wire abus_inferred_i_49_n_0;
  wire abus_inferred_i_5;
  wire abus_inferred_i_53_n_0;
  wire abus_inferred_i_55_n_0;
  wire abus_inferred_i_68_n_0;
  wire abus_inferred_i_69_n_0;
  wire abus_inferred_i_71_n_0;
  wire abus_inferred_i_73_n_0;
  wire abus_inferred_i_78_n_0;
  wire abus_inferred_i_8;
  wire abus_inferred_i_81_n_0;
  wire abus_inferred_i_83_n_0;
  wire abus_inferred_i_86_n_0;
  wire abus_inferred_i_89_n_0;
  wire abus_inferred_i_92_n_0;
  wire abus_inferred_i_95_n_0;
  wire abus_inferred_i_99_n_0;
  wire [15:0]abus_o;
  wire [15:0]badr;
  wire [15:0]bbus_o;
  wire [15:0]\bbus_o[15] ;
  wire \bcmd[0]_INST_0_i_2_n_0 ;
  wire \bcmd[1]_INST_0_i_1_n_0 ;
  wire \bcmd[2]_INST_0_i_2_n_0 ;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire [15:0]\bdatw[15] ;
  wire brdy;
  wire [15:0]cbus;
  wire [15:0]cbus_i;
  wire cbus_inferred_i_107_n_0;
  wire cbus_inferred_i_109_n_0;
  wire cbus_inferred_i_110_n_0;
  wire cbus_inferred_i_112_n_0;
  wire cbus_inferred_i_114_n_0;
  wire cbus_inferred_i_116_n_0;
  wire [0:0]cbus_inferred_i_13;
  wire [13:0]cbus_inferred_i_2;
  wire [4:0]ccmd;
  wire \ccmd[4]_INST_0_i_3_n_0 ;
  wire clk;
  wire [15:0]cpu_sts;
  wire crdy;
  wire [1:0]ctl_bacc;
  wire ctl_fetch_rg;
  wire ctl_fetch_rg_i_2_n_0;
  wire ctl_fetch_rg_i_5_n_0;
  wire ctl_fetch_rg_i_6_n_0;
  wire ctl_fetch_rg_i_8_n_0;
  wire ctl_mmsp;
  wire ctl_push;
  wire ctl_sppp;
  wire drv1;
  wire drv__3;
  wire fch_iack;
  wire [7:0]fdat;
  wire fsm_n_155;
  wire fsm_n_156;
  wire in0;
  (* DONT_TOUCH *) wire [7:0]ir;
  wire [7:0]ir_rg;
  wire \ir_rg[0]_i_1_n_0 ;
  wire \ir_rg[1]_i_1_n_0 ;
  wire \ir_rg[2]_i_1_n_0 ;
  wire \ir_rg[3]_i_1_n_0 ;
  wire \ir_rg[4]_i_1_n_0 ;
  wire \ir_rg[5]_i_1_n_0 ;
  wire \ir_rg[6]_i_1_n_0 ;
  wire \ir_rg[7]_i_1_n_0 ;
  wire \ir_rg_reg[4]_0 ;
  wire irq;
  wire \ivec[15]_i_2_n_0 ;
  wire mem_reg_0_63_0_0_i_14_n_0;
  wire mem_reg_0_63_0_0_i_15_n_0;
  wire mem_reg_0_63_0_0_i_16_n_0;
  wire mem_reg_0_63_0_0_i_17_n_0;
  wire mem_reg_0_63_0_0_i_24_n_0;
  wire p_0_in;
  wire \pcnt[15]_i_13_n_0 ;
  wire \pcnt[15]_i_15_n_0 ;
  wire [15:0]\pcnt_reg[15] ;
  wire [15:0]\pcnt_reg[15]_0 ;
  wire \pcnt_reg[15]_1 ;
  wire \pcnt_reg[3] ;
  wire rgf_ie;
  wire rgf_ie_rg_i_7_n_0;
  wire rgf_ie_rg_i_9_n_0;
  wire rgf_ie_rg_reg;
  wire rgf_ie_rg_reg_0;
  wire [4:0]rgf_sp_0;
  wire rst_n;
  wire \sptr[15]_i_13_n_0 ;
  wire \sptr[15]_i_16_n_0 ;
  wire \sptr[15]_i_17_n_0 ;
  wire \sptr[15]_i_20_n_0 ;
  wire [9:0]sptr_dec;
  wire \sptr_reg[3] ;
  wire \sptr_reg[6] ;
  wire \stat_reg[0] ;
  wire \stat_reg[0]_0 ;
  wire [0:0]\stat_reg[1] ;
  wire [0:0]\stat_reg[1]_0 ;
  wire \stk_b1_rg[15]_i_6_n_0 ;
  wire [3:0]\stk_b1_rg_reg[10] ;
  wire [3:0]\stk_b1_rg_reg[11] ;
  wire [3:0]\stk_b1_rg_reg[15] ;
  wire [3:0]\stk_b1_rg_reg[15]_0 ;
  wire [1:0]\stk_b1_rg_reg[15]_1 ;
  wire [0:0]\stk_b1_rg_reg[15]_2 ;
  wire [3:0]\stk_b1_rg_reg[6] ;
  wire [3:0]\stk_b1_rg_reg[7] ;
  wire stk_bool;
  wire [0:0]\stk_ccmd_rg_reg[1] ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h7)) 
    abus_inferred_i_104
       (.I0(ir[3]),
        .I1(ir[4]),
        .O(abus_inferred_i_104_n_0));
  LUT6 #(
    .INIT(64'hFCFCFD5D0C0CFD5D)) 
    abus_inferred_i_21
       (.I0(ir[2]),
        .I1(abus_inferred_i_2),
        .I2(ir[0]),
        .I3(cpu_sts[14]),
        .I4(ir[1]),
        .I5(\pcnt_reg[15]_0 [14]),
        .O(abus_inferred_i_21_n_0));
  LUT4 #(
    .INIT(16'h4084)) 
    abus_inferred_i_22
       (.I0(ir[1]),
        .I1(ir[4]),
        .I2(ir[3]),
        .I3(ir[2]),
        .O(abus_inferred_i_22_n_0));
  LUT6 #(
    .INIT(64'hFCFCFD5D0C0CFD5D)) 
    abus_inferred_i_24
       (.I0(ir[2]),
        .I1(abus_inferred_i_3),
        .I2(ir[0]),
        .I3(cpu_sts[13]),
        .I4(ir[1]),
        .I5(\pcnt_reg[15]_0 [13]),
        .O(abus_inferred_i_24_n_0));
  LUT6 #(
    .INIT(64'hFCFCFD5D0C0CFD5D)) 
    abus_inferred_i_26
       (.I0(ir[2]),
        .I1(abus_inferred_i_4),
        .I2(ir[0]),
        .I3(cpu_sts[12]),
        .I4(ir[1]),
        .I5(\pcnt_reg[15]_0 [12]),
        .O(abus_inferred_i_26_n_0));
  LUT6 #(
    .INIT(64'hFCFCFD5D0C0CFD5D)) 
    abus_inferred_i_28
       (.I0(ir[2]),
        .I1(abus_inferred_i_5),
        .I2(ir[0]),
        .I3(cpu_sts[11]),
        .I4(ir[1]),
        .I5(\pcnt_reg[15]_0 [11]),
        .O(abus_inferred_i_28_n_0));
  LUT6 #(
    .INIT(64'hFCFCFD5D0C0CFD5D)) 
    abus_inferred_i_34
       (.I0(ir[2]),
        .I1(abus_inferred_i_8),
        .I2(ir[0]),
        .I3(cpu_sts[8]),
        .I4(ir[1]),
        .I5(\pcnt_reg[15]_0 [8]),
        .O(abus_inferred_i_34_n_0));
  LUT6 #(
    .INIT(64'h4550405000550055)) 
    abus_inferred_i_48
       (.I0(ir[2]),
        .I1(\pcnt_reg[15]_0 [1]),
        .I2(ir[0]),
        .I3(ir[3]),
        .I4(abus_inferred_i_15),
        .I5(ir[4]),
        .O(abus_inferred_i_48_n_0));
  LUT6 #(
    .INIT(64'h8404848484040404)) 
    abus_inferred_i_49
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(cpu_sts[1]),
        .I4(ir[0]),
        .I5(abus_inferred_i_18[1]),
        .O(abus_inferred_i_49_n_0));
  LUT6 #(
    .INIT(64'h0088800000008000)) 
    abus_inferred_i_53
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(cpu_sts[15]),
        .I3(ir[2]),
        .I4(ir[1]),
        .I5(\pcnt_reg[15]_0 [15]),
        .O(abus_inferred_i_53_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    abus_inferred_i_55
       (.I0(ir[1]),
        .I1(abus_inferred_i_18[15]),
        .I2(ir[3]),
        .O(abus_inferred_i_55_n_0));
  LUT6 #(
    .INIT(64'h0F00800000008000)) 
    abus_inferred_i_68
       (.I0(\pcnt_reg[15]_0 [10]),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[4]),
        .I4(ir[2]),
        .I5(cpu_sts[10]),
        .O(abus_inferred_i_68_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    abus_inferred_i_69
       (.I0(ir[0]),
        .I1(ir[3]),
        .I2(ir[1]),
        .O(abus_inferred_i_69_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    abus_inferred_i_71
       (.I0(ir[1]),
        .I1(ir[2]),
        .O(abus_inferred_i_71_n_0));
  LUT6 #(
    .INIT(64'h0F00800000008000)) 
    abus_inferred_i_73
       (.I0(\pcnt_reg[15]_0 [9]),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[4]),
        .I4(ir[2]),
        .I5(cpu_sts[9]),
        .O(abus_inferred_i_73_n_0));
  LUT4 #(
    .INIT(16'hBC8C)) 
    abus_inferred_i_78
       (.I0(\pcnt_reg[15]_0 [7]),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(cpu_sts[7]),
        .O(abus_inferred_i_78_n_0));
  LUT6 #(
    .INIT(64'h2000AAAA20002A2A)) 
    abus_inferred_i_81
       (.I0(ir[4]),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(cpu_sts[6]),
        .I4(ir[2]),
        .I5(\pcnt_reg[15]_0 [6]),
        .O(abus_inferred_i_81_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    abus_inferred_i_83
       (.I0(ir[4]),
        .I1(ir[2]),
        .I2(abus_inferred_i_18[6]),
        .O(abus_inferred_i_83_n_0));
  LUT6 #(
    .INIT(64'h00AA8A0000008A00)) 
    abus_inferred_i_86
       (.I0(ir[4]),
        .I1(\pcnt_reg[15]_0 [5]),
        .I2(ir[3]),
        .I3(ir[1]),
        .I4(ir[2]),
        .I5(cpu_sts[5]),
        .O(abus_inferred_i_86_n_0));
  LUT5 #(
    .INIT(32'h0000E200)) 
    abus_inferred_i_89
       (.I0(abus_inferred_i_18[4]),
        .I1(ir[0]),
        .I2(cpu_sts[4]),
        .I3(ir[3]),
        .I4(ir[1]),
        .O(abus_inferred_i_89_n_0));
  LUT5 #(
    .INIT(32'h0000E200)) 
    abus_inferred_i_92
       (.I0(abus_inferred_i_18[3]),
        .I1(ir[0]),
        .I2(cpu_sts[3]),
        .I3(ir[3]),
        .I4(ir[1]),
        .O(abus_inferred_i_92_n_0));
  LUT5 #(
    .INIT(32'h0000E200)) 
    abus_inferred_i_95
       (.I0(abus_inferred_i_18[2]),
        .I1(ir[0]),
        .I2(cpu_sts[2]),
        .I3(ir[3]),
        .I4(ir[1]),
        .O(abus_inferred_i_95_n_0));
  LUT6 #(
    .INIT(64'h4040400000004000)) 
    abus_inferred_i_99
       (.I0(ir[1]),
        .I1(ir[4]),
        .I2(ir[3]),
        .I3(abus_inferred_i_18[0]),
        .I4(ir[0]),
        .I5(cpu_sts[0]),
        .O(abus_inferred_i_99_n_0));
  FDRE \bacc_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_156),
        .Q(ctl_bacc[0]),
        .R(p_0_in));
  FDRE \bacc_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_155),
        .Q(ctl_bacc[1]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'hE)) 
    \bcmd[0]_INST_0_i_2 
       (.I0(ir[6]),
        .I1(ir[7]),
        .O(\bcmd[0]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \bcmd[1]_INST_0_i_1 
       (.I0(ir[6]),
        .I1(ir[1]),
        .I2(ir[4]),
        .I3(ir[3]),
        .O(\bcmd[1]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bcmd[2]_INST_0_i_2 
       (.I0(ir[4]),
        .I1(ir[1]),
        .O(\bcmd[2]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    cbus_inferred_i_107
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[7]),
        .O(cbus_inferred_i_107_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    cbus_inferred_i_109
       (.I0(ir[5]),
        .I1(ir[4]),
        .I2(ir[0]),
        .O(cbus_inferred_i_109_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFFFBBBFF8F)) 
    cbus_inferred_i_110
       (.I0(ir[1]),
        .I1(ir[2]),
        .I2(ir[0]),
        .I3(ir[3]),
        .I4(ir[4]),
        .I5(ir[5]),
        .O(cbus_inferred_i_110_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    cbus_inferred_i_112
       (.I0(ir[3]),
        .I1(ir[6]),
        .I2(ir[2]),
        .O(cbus_inferred_i_112_n_0));
  LUT4 #(
    .INIT(16'h0562)) 
    cbus_inferred_i_114
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[0]),
        .I3(ir[1]),
        .O(cbus_inferred_i_114_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cbus_inferred_i_116
       (.I0(ir[3]),
        .I1(ir[4]),
        .O(cbus_inferred_i_116_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ccmd[4]_INST_0_i_3 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(ir[2]),
        .I3(ir[3]),
        .O(\ccmd[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFAABBBBAAAAAAAA)) 
    ctl_fetch_rg_i_2
       (.I0(ctl_fetch_rg_i_6_n_0),
        .I1(ir[3]),
        .I2(ir[0]),
        .I3(ir[1]),
        .I4(ir[2]),
        .I5(ir[5]),
        .O(ctl_fetch_rg_i_2_n_0));
  LUT6 #(
    .INIT(64'h1000D501D000EA02)) 
    ctl_fetch_rg_i_5
       (.I0(ir[1]),
        .I1(ir[2]),
        .I2(ir[4]),
        .I3(ir[5]),
        .I4(ir[3]),
        .I5(ir[0]),
        .O(ctl_fetch_rg_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    ctl_fetch_rg_i_6
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(rgf_ie),
        .I3(irq),
        .I4(ir[1]),
        .I5(ir[6]),
        .O(ctl_fetch_rg_i_6_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    ctl_fetch_rg_i_8
       (.I0(stk_bool),
        .I1(ir[3]),
        .I2(ir[0]),
        .O(ctl_fetch_rg_i_8_n_0));
  FDRE ctl_fetch_rg_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(in0),
        .Q(ctl_fetch_rg),
        .R(p_0_in));
  sama_fsm fsm
       (.DI(DI),
        .E(E),
        .I7(I7),
        .O(O),
        .Q(Q),
        .S(S),
        .abus_inferred_i_10_0(abus_inferred_i_81_n_0),
        .abus_inferred_i_10_1(abus_inferred_i_83_n_0),
        .abus_inferred_i_11_0(abus_inferred_i_86_n_0),
        .abus_inferred_i_12_0(abus_inferred_i_89_n_0),
        .abus_inferred_i_13_0(abus_inferred_i_92_n_0),
        .abus_inferred_i_14_0(abus_inferred_i_95_n_0),
        .abus_inferred_i_16_0(abus_inferred_i_99_n_0),
        .abus_inferred_i_18_0(abus_inferred_i_18_0),
        .abus_inferred_i_1_0(abus_inferred_i_1),
        .abus_inferred_i_1_1(abus_inferred_i_53_n_0),
        .abus_inferred_i_1_2(abus_inferred_i_55_n_0),
        .abus_inferred_i_57_0(abus_inferred_i_104_n_0),
        .abus_inferred_i_6_0(abus_inferred_i_71_n_0),
        .abus_inferred_i_6_1(abus_inferred_i_69_n_0),
        .abus_inferred_i_6_2(abus_inferred_i_68_n_0),
        .abus_inferred_i_7_0(abus_inferred_i_73_n_0),
        .abus_inferred_i_9_0(abus_inferred_i_78_n_0),
        .abus_o(abus_o),
        .badr(badr),
        .bbus_o(bbus_o),
        .\bbus_o[15] (\bbus_o[15] ),
        .\bcmd[0] (\bcmd[0]_INST_0_i_2_n_0 ),
        .\bcmd[1] (\bcmd[1]_INST_0_i_1_n_0 ),
        .\bcmd[2] (\bcmd[2]_INST_0_i_2_n_0 ),
        .bdatr(bdatr),
        .bdatw(bdatw),
        .\bdatw[14]_0 (abus_inferred_i_22_n_0),
        .\bdatw[15] (\bdatw[15] ),
        .\bdatw[9]_0 (abus_inferred_i_49_n_0),
        .bdatw_11_sp_1(abus_inferred_i_28_n_0),
        .bdatw_12_sp_1(abus_inferred_i_26_n_0),
        .bdatw_13_sp_1(abus_inferred_i_24_n_0),
        .bdatw_14_sp_1(abus_inferred_i_21_n_0),
        .bdatw_8_sp_1(abus_inferred_i_34_n_0),
        .bdatw_9_sp_1(abus_inferred_i_48_n_0),
        .brdy(brdy),
        .brdy_0(fsm_n_155),
        .cbus_i(cbus_i),
        .\cbus_i[15] (cbus),
        .cbus_inferred_i_13_0(cbus_inferred_i_13),
        .cbus_inferred_i_23_0(cbus_inferred_i_116_n_0),
        .cbus_inferred_i_2_0(cbus_inferred_i_2),
        .cbus_inferred_i_98_0(cbus_inferred_i_107_n_0),
        .cbus_inferred_i_98_1(cbus_inferred_i_109_n_0),
        .cbus_inferred_i_98_2(cbus_inferred_i_110_n_0),
        .cbus_inferred_i_98_3(cbus_inferred_i_112_n_0),
        .cbus_inferred_i_98_4(cbus_inferred_i_114_n_0),
        .ccmd(ccmd),
        .clk(clk),
        .clk_0(abus),
        .crdy(crdy),
        .ctl_bacc(ctl_bacc),
        .ctl_fetch_rg_reg(ctl_fetch_rg_i_2_n_0),
        .ctl_fetch_rg_reg_0(ctl_fetch_rg_i_5_n_0),
        .ctl_fetch_rg_reg_1(ctl_fetch_rg_i_8_n_0),
        .ctl_push(ctl_push),
        .ctl_sppp(ctl_sppp),
        .in0(in0),
        .\ir_rg_reg[4] (\ir_rg_reg[4]_0 ),
        .\ir_rg_reg[6] (ctl_mmsp),
        .irq(irq),
        .\ivec_reg[15] (\ivec[15]_i_2_n_0 ),
        .mem_reg_0_63_0_0_i_10_0(mem_reg_0_63_0_0_i_24_n_0),
        .mem_reg_0_63_0_0_i_1_0(mem_reg_0_63_0_0_i_17_n_0),
        .mem_reg_0_63_0_0_i_1_1(mem_reg_0_63_0_0_i_16_n_0),
        .mem_reg_0_63_0_0_i_1_2(mem_reg_0_63_0_0_i_14_n_0),
        .mem_reg_0_63_0_0_i_1_3(mem_reg_0_63_0_0_i_15_n_0),
        .out(ir),
        .p_0_in(p_0_in),
        .\pcnt[15]_i_2_0 (abus_inferred_i_18),
        .\pcnt[3]_i_10_0 (\pcnt[15]_i_15_n_0 ),
        .\pcnt[3]_i_6_0 (\pcnt[15]_i_13_n_0 ),
        .\pcnt_reg[15] (\pcnt_reg[15] ),
        .\pcnt_reg[15]_0 (\pcnt_reg[15]_0 ),
        .\pcnt_reg[15]_1 (\pcnt_reg[15]_1 ),
        .\pcnt_reg[3] (\pcnt_reg[3] ),
        .rgf_ie(rgf_ie),
        .rgf_ie_rg_reg(rgf_ie_rg_reg),
        .rgf_ie_rg_reg_0(rgf_ie_rg_i_7_n_0),
        .rgf_ie_rg_reg_1(rgf_ie_rg_i_9_n_0),
        .rgf_ie_rg_reg_2(rgf_ie_rg_reg_0),
        .rgf_sp_0(rgf_sp_0),
        .\sptr[15]_i_10_0 (\sptr[15]_i_16_n_0 ),
        .\sptr[15]_i_10_1 (\sptr[15]_i_17_n_0 ),
        .\sptr[15]_i_15_0 (\sptr[15]_i_20_n_0 ),
        .\sptr[15]_i_6_0 (\sptr[15]_i_13_n_0 ),
        .sptr_dec(sptr_dec),
        .\sptr_reg[3] (\sptr_reg[3] ),
        .\sptr_reg[6] (\sptr_reg[6] ),
        .\stat_reg[0]_0 (\stat_reg[0] ),
        .\stat_reg[0]_1 (\stat_reg[0]_0 ),
        .\stat_reg[1]_0 (drv__3),
        .\stat_reg[1]_1 (drv1),
        .\stat_reg[1]_2 (\stat_reg[1] ),
        .\stat_reg[1]_3 (\stat_reg[1]_0 ),
        .\stk_b1_rg_reg[0] (fsm_n_156),
        .\stk_b1_rg_reg[10] (\stk_b1_rg_reg[10] ),
        .\stk_b1_rg_reg[11] (\stk_b1_rg_reg[11] ),
        .\stk_b1_rg_reg[15] (\stk_b1_rg_reg[15] ),
        .\stk_b1_rg_reg[15]_0 (\stk_b1_rg_reg[15]_0 ),
        .\stk_b1_rg_reg[15]_1 (\stk_b1_rg_reg[15]_1 ),
        .\stk_b1_rg_reg[15]_2 (\stk_b1_rg_reg[15]_2 ),
        .\stk_b1_rg_reg[15]_3 (\stk_b1_rg[15]_i_6_n_0 ),
        .\stk_b1_rg_reg[6] (\stk_b1_rg_reg[6] ),
        .\stk_b1_rg_reg[7] (\stk_b1_rg_reg[7] ),
        .stk_bool(stk_bool),
        .\stk_ccmd_rg_reg[1] (\stk_ccmd_rg_reg[1] ),
        .\stk_ccmd_rg_reg[4] (\ccmd[4]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    ir_inferred_i_1
       (.I0(ir_rg[7]),
        .I1(ctl_fetch_rg),
        .I2(fdat[7]),
        .I3(fch_iack),
        .O(ir[7]));
  LUT4 #(
    .INIT(16'h00E2)) 
    ir_inferred_i_2
       (.I0(ir_rg[6]),
        .I1(ctl_fetch_rg),
        .I2(fdat[6]),
        .I3(fch_iack),
        .O(ir[6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    ir_inferred_i_3
       (.I0(ir_rg[5]),
        .I1(ctl_fetch_rg),
        .I2(fdat[5]),
        .I3(fch_iack),
        .O(ir[5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    ir_inferred_i_4
       (.I0(ir_rg[4]),
        .I1(ctl_fetch_rg),
        .I2(fdat[4]),
        .I3(fch_iack),
        .O(ir[4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    ir_inferred_i_5
       (.I0(ir_rg[3]),
        .I1(ctl_fetch_rg),
        .I2(fdat[3]),
        .I3(fch_iack),
        .O(ir[3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    ir_inferred_i_6
       (.I0(ir_rg[2]),
        .I1(ctl_fetch_rg),
        .I2(fdat[2]),
        .I3(fch_iack),
        .O(ir[2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    ir_inferred_i_7
       (.I0(ir_rg[1]),
        .I1(ctl_fetch_rg),
        .I2(fdat[1]),
        .I3(fch_iack),
        .O(ir[1]));
  LUT4 #(
    .INIT(16'hFEAE)) 
    ir_inferred_i_8
       (.I0(fch_iack),
        .I1(ir_rg[0]),
        .I2(ctl_fetch_rg),
        .I3(fdat[0]),
        .O(ir[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \ir_rg[0]_i_1 
       (.I0(fch_iack),
        .I1(fdat[0]),
        .O(\ir_rg[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ir_rg[1]_i_1 
       (.I0(fdat[1]),
        .I1(fch_iack),
        .O(\ir_rg[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ir_rg[2]_i_1 
       (.I0(fdat[2]),
        .I1(fch_iack),
        .O(\ir_rg[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ir_rg[3]_i_1 
       (.I0(fdat[3]),
        .I1(fch_iack),
        .O(\ir_rg[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ir_rg[4]_i_1 
       (.I0(fdat[4]),
        .I1(fch_iack),
        .O(\ir_rg[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ir_rg[5]_i_1 
       (.I0(fdat[5]),
        .I1(fch_iack),
        .O(\ir_rg[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ir_rg[6]_i_1 
       (.I0(fdat[6]),
        .I1(fch_iack),
        .O(\ir_rg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4FFF40FF)) 
    \ir_rg[7]_i_1 
       (.I0(fch_iack),
        .I1(fdat[7]),
        .I2(ctl_fetch_rg),
        .I3(rst_n),
        .I4(ir_rg[7]),
        .O(\ir_rg[7]_i_1_n_0 ));
  FDRE \ir_rg_reg[0] 
       (.C(clk),
        .CE(ctl_fetch_rg),
        .D(\ir_rg[0]_i_1_n_0 ),
        .Q(ir_rg[0]),
        .R(p_0_in));
  FDRE \ir_rg_reg[1] 
       (.C(clk),
        .CE(ctl_fetch_rg),
        .D(\ir_rg[1]_i_1_n_0 ),
        .Q(ir_rg[1]),
        .R(p_0_in));
  FDRE \ir_rg_reg[2] 
       (.C(clk),
        .CE(ctl_fetch_rg),
        .D(\ir_rg[2]_i_1_n_0 ),
        .Q(ir_rg[2]),
        .R(p_0_in));
  FDRE \ir_rg_reg[3] 
       (.C(clk),
        .CE(ctl_fetch_rg),
        .D(\ir_rg[3]_i_1_n_0 ),
        .Q(ir_rg[3]),
        .R(p_0_in));
  FDRE \ir_rg_reg[4] 
       (.C(clk),
        .CE(ctl_fetch_rg),
        .D(\ir_rg[4]_i_1_n_0 ),
        .Q(ir_rg[4]),
        .R(p_0_in));
  FDRE \ir_rg_reg[5] 
       (.C(clk),
        .CE(ctl_fetch_rg),
        .D(\ir_rg[5]_i_1_n_0 ),
        .Q(ir_rg[5]),
        .R(p_0_in));
  FDRE \ir_rg_reg[6] 
       (.C(clk),
        .CE(ctl_fetch_rg),
        .D(\ir_rg[6]_i_1_n_0 ),
        .Q(ir_rg[6]),
        .R(p_0_in));
  FDRE \ir_rg_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ir_rg[7]_i_1_n_0 ),
        .Q(ir_rg[7]),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ivec[15]_i_2 
       (.I0(ir[1]),
        .I1(ir[5]),
        .I2(ir[4]),
        .I3(ir[2]),
        .O(\ivec[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAABAAABEFAB)) 
    mem_reg_0_63_0_0_i_14
       (.I0(\bcmd[0]_INST_0_i_2_n_0 ),
        .I1(ir[4]),
        .I2(ir[3]),
        .I3(ir[2]),
        .I4(ir[1]),
        .I5(ir[0]),
        .O(mem_reg_0_63_0_0_i_14_n_0));
  LUT6 #(
    .INIT(64'h0001100010001000)) 
    mem_reg_0_63_0_0_i_15
       (.I0(\bcmd[0]_INST_0_i_2_n_0 ),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(ir[4]),
        .I4(ir[2]),
        .I5(ir[0]),
        .O(mem_reg_0_63_0_0_i_15_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    mem_reg_0_63_0_0_i_16
       (.I0(ir[1]),
        .I1(ir[6]),
        .O(mem_reg_0_63_0_0_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    mem_reg_0_63_0_0_i_17
       (.I0(ir[5]),
        .I1(ir[7]),
        .O(mem_reg_0_63_0_0_i_17_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    mem_reg_0_63_0_0_i_24
       (.I0(ir[2]),
        .I1(ir[3]),
        .O(mem_reg_0_63_0_0_i_24_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    \pcnt[15]_i_13 
       (.I0(ir[0]),
        .I1(rgf_ie),
        .O(\pcnt[15]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9822)) 
    \pcnt[15]_i_15 
       (.I0(ir[2]),
        .I1(ir[1]),
        .I2(rgf_ie),
        .I3(ir[0]),
        .O(\pcnt[15]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    rgf_ie_rg_i_7
       (.I0(ir[5]),
        .I1(ir[4]),
        .O(rgf_ie_rg_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rgf_ie_rg_i_9
       (.I0(ir[3]),
        .I1(ir[2]),
        .O(rgf_ie_rg_i_9_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    \sptr[15]_i_13 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(ir[1]),
        .O(\sptr[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sptr[15]_i_16 
       (.I0(ir[3]),
        .I1(ir[0]),
        .O(\sptr[15]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h100F)) 
    \sptr[15]_i_17 
       (.I0(brdy),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(ir[4]),
        .O(\sptr[15]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \sptr[15]_i_20 
       (.I0(ir[4]),
        .I1(ir[6]),
        .O(\sptr[15]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hF3FF1313)) 
    \stk_b1_rg[15]_i_6 
       (.I0(brdy),
        .I1(ir[2]),
        .I2(ir[3]),
        .I3(ir[4]),
        .I4(ir[1]),
        .O(\stk_b1_rg[15]_i_6_n_0 ));
endmodule

module sama_fsm
   (\cbus_i[15] ,
    \stat_reg[1]_0 ,
    \stat_reg[1]_1 ,
    ctl_sppp,
    clk_0,
    badr,
    \ir_rg_reg[4] ,
    in0,
    rgf_sp_0,
    \ir_rg_reg[6] ,
    stk_bool,
    ctl_push,
    E,
    \stat_reg[0]_0 ,
    \stat_reg[0]_1 ,
    \stat_reg[1]_2 ,
    \stat_reg[1]_3 ,
    ccmd,
    \stk_b1_rg_reg[15] ,
    \stk_b1_rg_reg[15]_0 ,
    DI,
    S,
    \stk_b1_rg_reg[6] ,
    \stk_b1_rg_reg[7] ,
    \stk_b1_rg_reg[10] ,
    \stk_b1_rg_reg[11] ,
    rgf_ie_rg_reg,
    \stk_b1_rg_reg[15]_1 ,
    \sptr_reg[6] ,
    \stk_b1_rg_reg[15]_2 ,
    bbus_o,
    abus_o,
    bdatw,
    brdy_0,
    \stk_b1_rg_reg[0] ,
    \pcnt_reg[15] ,
    cbus_i,
    \bdatw[15] ,
    O,
    cbus_inferred_i_2_0,
    cbus_inferred_i_13_0,
    \stk_ccmd_rg_reg[1] ,
    \bbus_o[15] ,
    mem_reg_0_63_0_0_i_1_0,
    out,
    \bcmd[0] ,
    brdy,
    \sptr[15]_i_6_0 ,
    crdy,
    \sptr[15]_i_10_0 ,
    \sptr[15]_i_10_1 ,
    abus_inferred_i_1_0,
    .bdatw_14_sp_1(bdatw_14_sn_1),
    \bdatw[14]_0 ,
    .bdatw_13_sp_1(bdatw_13_sn_1),
    .bdatw_12_sp_1(bdatw_12_sn_1),
    .bdatw_11_sp_1(bdatw_11_sn_1),
    .bdatw_8_sp_1(bdatw_8_sn_1),
    bdatr,
    .bdatw_9_sp_1(bdatw_9_sn_1),
    \bdatw[9]_0 ,
    cbus_inferred_i_98_0,
    cbus_inferred_i_98_1,
    cbus_inferred_i_98_2,
    \pcnt[15]_i_2_0 ,
    I7,
    rgf_ie_rg_reg_0,
    rgf_ie_rg_reg_1,
    irq,
    ctl_fetch_rg_reg,
    ctl_fetch_rg_reg_0,
    ctl_fetch_rg_reg_1,
    abus_inferred_i_6_0,
    abus_inferred_i_16_0,
    \pcnt_reg[15]_0 ,
    sptr_dec,
    abus_inferred_i_18_0,
    abus_inferred_i_14_0,
    abus_inferred_i_13_0,
    abus_inferred_i_12_0,
    abus_inferred_i_6_1,
    abus_inferred_i_11_0,
    abus_inferred_i_10_0,
    abus_inferred_i_10_1,
    abus_inferred_i_9_0,
    abus_inferred_i_7_0,
    abus_inferred_i_6_2,
    abus_inferred_i_1_1,
    abus_inferred_i_1_2,
    \pcnt[3]_i_6_0 ,
    cbus_inferred_i_23_0,
    \sptr[15]_i_15_0 ,
    rgf_ie,
    mem_reg_0_63_0_0_i_1_1,
    \pcnt[3]_i_10_0 ,
    mem_reg_0_63_0_0_i_1_2,
    mem_reg_0_63_0_0_i_1_3,
    mem_reg_0_63_0_0_i_10_0,
    cbus_inferred_i_98_3,
    cbus_inferred_i_98_4,
    \bcmd[1] ,
    ctl_bacc,
    abus_inferred_i_57_0,
    \bcmd[2] ,
    \ivec_reg[15] ,
    \stk_b1_rg_reg[15]_3 ,
    \stk_ccmd_rg_reg[4] ,
    Q,
    rgf_ie_rg_reg_2,
    \sptr_reg[3] ,
    p_0_in,
    clk,
    \pcnt_reg[3] ,
    \pcnt_reg[15]_1 );
  output [15:0]\cbus_i[15] ;
  output \stat_reg[1]_0 ;
  output \stat_reg[1]_1 ;
  output ctl_sppp;
  output [15:0]clk_0;
  output [15:0]badr;
  output \ir_rg_reg[4] ;
  output in0;
  output [4:0]rgf_sp_0;
  output \ir_rg_reg[6] ;
  output stk_bool;
  output ctl_push;
  output [0:0]E;
  output \stat_reg[0]_0 ;
  output \stat_reg[0]_1 ;
  output [0:0]\stat_reg[1]_2 ;
  output [0:0]\stat_reg[1]_3 ;
  output [4:0]ccmd;
  output [3:0]\stk_b1_rg_reg[15] ;
  output [3:0]\stk_b1_rg_reg[15]_0 ;
  output [2:0]DI;
  output [3:0]S;
  output [3:0]\stk_b1_rg_reg[6] ;
  output [3:0]\stk_b1_rg_reg[7] ;
  output [3:0]\stk_b1_rg_reg[10] ;
  output [3:0]\stk_b1_rg_reg[11] ;
  output rgf_ie_rg_reg;
  output [1:0]\stk_b1_rg_reg[15]_1 ;
  output \sptr_reg[6] ;
  output [0:0]\stk_b1_rg_reg[15]_2 ;
  output [15:0]bbus_o;
  output [15:0]abus_o;
  output [15:0]bdatw;
  output brdy_0;
  output \stk_b1_rg_reg[0] ;
  output [15:0]\pcnt_reg[15] ;
  input [15:0]cbus_i;
  input [15:0]\bdatw[15] ;
  input [0:0]O;
  input [13:0]cbus_inferred_i_2_0;
  input [0:0]cbus_inferred_i_13_0;
  input [0:0]\stk_ccmd_rg_reg[1] ;
  input [15:0]\bbus_o[15] ;
  input mem_reg_0_63_0_0_i_1_0;
  input [7:0]out;
  input \bcmd[0] ;
  input brdy;
  input \sptr[15]_i_6_0 ;
  input crdy;
  input \sptr[15]_i_10_0 ;
  input \sptr[15]_i_10_1 ;
  input [15:0]abus_inferred_i_1_0;
  input \bdatw[14]_0 ;
  input [15:0]bdatr;
  input \bdatw[9]_0 ;
  input cbus_inferred_i_98_0;
  input cbus_inferred_i_98_1;
  input cbus_inferred_i_98_2;
  input [15:0]\pcnt[15]_i_2_0 ;
  input [15:0]I7;
  input rgf_ie_rg_reg_0;
  input rgf_ie_rg_reg_1;
  input irq;
  input ctl_fetch_rg_reg;
  input ctl_fetch_rg_reg_0;
  input ctl_fetch_rg_reg_1;
  input abus_inferred_i_6_0;
  input abus_inferred_i_16_0;
  input [15:0]\pcnt_reg[15]_0 ;
  input [9:0]sptr_dec;
  input [9:0]abus_inferred_i_18_0;
  input abus_inferred_i_14_0;
  input abus_inferred_i_13_0;
  input abus_inferred_i_12_0;
  input abus_inferred_i_6_1;
  input abus_inferred_i_11_0;
  input abus_inferred_i_10_0;
  input abus_inferred_i_10_1;
  input abus_inferred_i_9_0;
  input abus_inferred_i_7_0;
  input abus_inferred_i_6_2;
  input abus_inferred_i_1_1;
  input abus_inferred_i_1_2;
  input \pcnt[3]_i_6_0 ;
  input cbus_inferred_i_23_0;
  input \sptr[15]_i_15_0 ;
  input rgf_ie;
  input mem_reg_0_63_0_0_i_1_1;
  input \pcnt[3]_i_10_0 ;
  input mem_reg_0_63_0_0_i_1_2;
  input mem_reg_0_63_0_0_i_1_3;
  input mem_reg_0_63_0_0_i_10_0;
  input cbus_inferred_i_98_3;
  input cbus_inferred_i_98_4;
  input \bcmd[1] ;
  input [1:0]ctl_bacc;
  input abus_inferred_i_57_0;
  input \bcmd[2] ;
  input \ivec_reg[15] ;
  input \stk_b1_rg_reg[15]_3 ;
  input \stk_ccmd_rg_reg[4] ;
  input [4:0]Q;
  input rgf_ie_rg_reg_2;
  input \sptr_reg[3] ;
  input p_0_in;
  input clk;
  input \pcnt_reg[3] ;
  input \pcnt_reg[15]_1 ;
  input bdatw_14_sn_1;
  input bdatw_13_sn_1;
  input bdatw_12_sn_1;
  input bdatw_11_sn_1;
  input bdatw_8_sn_1;
  input bdatw_9_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [2:0]DI;
  wire [0:0]E;
  wire [15:0]I7;
  wire [0:0]O;
  wire [4:0]Q;
  wire [3:0]S;
  wire abus_inferred_i_100_n_0;
  wire abus_inferred_i_102_n_0;
  wire abus_inferred_i_103_n_0;
  wire abus_inferred_i_10_0;
  wire abus_inferred_i_10_1;
  wire abus_inferred_i_11_0;
  wire abus_inferred_i_12_0;
  wire abus_inferred_i_13_0;
  wire abus_inferred_i_14_0;
  wire abus_inferred_i_16_0;
  wire [9:0]abus_inferred_i_18_0;
  wire [15:0]abus_inferred_i_1_0;
  wire abus_inferred_i_1_1;
  wire abus_inferred_i_1_2;
  wire abus_inferred_i_20_n_0;
  wire abus_inferred_i_23_n_0;
  wire abus_inferred_i_25_n_0;
  wire abus_inferred_i_27_n_0;
  wire abus_inferred_i_29_n_0;
  wire abus_inferred_i_31_n_0;
  wire abus_inferred_i_33_n_0;
  wire abus_inferred_i_35_n_0;
  wire abus_inferred_i_36_n_0;
  wire abus_inferred_i_37_n_0;
  wire abus_inferred_i_39_n_0;
  wire abus_inferred_i_41_n_0;
  wire abus_inferred_i_42_n_0;
  wire abus_inferred_i_43_n_0;
  wire abus_inferred_i_44_n_0;
  wire abus_inferred_i_45_n_0;
  wire abus_inferred_i_46_n_0;
  wire abus_inferred_i_47_n_0;
  wire abus_inferred_i_50_n_0;
  wire abus_inferred_i_52_n_0;
  wire abus_inferred_i_54_n_0;
  wire abus_inferred_i_56_n_0;
  wire abus_inferred_i_57_0;
  wire abus_inferred_i_57_n_0;
  wire abus_inferred_i_58_n_0;
  wire abus_inferred_i_59_n_0;
  wire abus_inferred_i_61_n_0;
  wire abus_inferred_i_63_n_0;
  wire abus_inferred_i_65_n_0;
  wire abus_inferred_i_67_n_0;
  wire abus_inferred_i_6_0;
  wire abus_inferred_i_6_1;
  wire abus_inferred_i_6_2;
  wire abus_inferred_i_70_n_0;
  wire abus_inferred_i_72_n_0;
  wire abus_inferred_i_74_n_0;
  wire abus_inferred_i_75_n_0;
  wire abus_inferred_i_77_n_0;
  wire abus_inferred_i_79_n_0;
  wire abus_inferred_i_7_0;
  wire abus_inferred_i_80_n_0;
  wire abus_inferred_i_82_n_0;
  wire abus_inferred_i_84_n_0;
  wire abus_inferred_i_85_n_0;
  wire abus_inferred_i_87_n_0;
  wire abus_inferred_i_88_n_0;
  wire abus_inferred_i_90_n_0;
  wire abus_inferred_i_91_n_0;
  wire abus_inferred_i_93_n_0;
  wire abus_inferred_i_94_n_0;
  wire abus_inferred_i_96_n_0;
  wire abus_inferred_i_97_n_0;
  wire abus_inferred_i_98_n_0;
  wire abus_inferred_i_9_0;
  wire [15:0]abus_o;
  wire \alu/art/cin__0 ;
  wire [15:15]\alu/inb ;
  wire [15:0]\alu/p_0_in ;
  wire [14:3]\alu/p_1_in ;
  wire [15:0]badr;
  wire badr2__4;
  wire badr3__4;
  wire [15:0]bbus_o;
  wire [15:0]\bbus_o[15] ;
  wire \bcmd[0] ;
  wire \bcmd[0]_INST_0_i_1_n_0 ;
  wire \bcmd[0]_INST_0_i_3_n_0 ;
  wire \bcmd[1] ;
  wire \bcmd[2] ;
  wire \bcmd[2]_INST_0_i_1_n_0 ;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire \bdatw[14]_0 ;
  wire [15:0]\bdatw[15] ;
  wire \bdatw[9]_0 ;
  wire bdatw_11_sn_1;
  wire bdatw_12_sn_1;
  wire bdatw_13_sn_1;
  wire bdatw_14_sn_1;
  wire bdatw_8_sn_1;
  wire bdatw_9_sn_1;
  wire brdy;
  wire brdy_0;
  wire [15:0]cbus_i;
  wire [15:0]\cbus_i[15] ;
  wire cbus_inferred_i_100_n_0;
  wire cbus_inferred_i_101_n_0;
  wire cbus_inferred_i_104_n_0;
  wire cbus_inferred_i_105_n_0;
  wire cbus_inferred_i_106_n_0;
  wire cbus_inferred_i_108_n_0;
  wire cbus_inferred_i_111_n_0;
  wire cbus_inferred_i_113_n_0;
  wire cbus_inferred_i_115_n_0;
  wire cbus_inferred_i_117_n_0;
  wire cbus_inferred_i_118_n_0;
  wire cbus_inferred_i_119_n_0;
  wire cbus_inferred_i_122_n_0;
  wire cbus_inferred_i_123_n_0;
  wire cbus_inferred_i_124_n_0;
  wire [0:0]cbus_inferred_i_13_0;
  wire cbus_inferred_i_17_n_0;
  wire cbus_inferred_i_22_n_0;
  wire cbus_inferred_i_23_0;
  wire cbus_inferred_i_24_n_0;
  wire cbus_inferred_i_26_n_0;
  wire cbus_inferred_i_27_n_0;
  wire cbus_inferred_i_29_n_0;
  wire [13:0]cbus_inferred_i_2_0;
  wire cbus_inferred_i_30_n_0;
  wire cbus_inferred_i_32_n_0;
  wire cbus_inferred_i_33_n_0;
  wire cbus_inferred_i_35_n_0;
  wire cbus_inferred_i_36_n_0;
  wire cbus_inferred_i_38_n_0;
  wire cbus_inferred_i_39_n_0;
  wire cbus_inferred_i_41_n_0;
  wire cbus_inferred_i_42_n_0;
  wire cbus_inferred_i_44_n_0;
  wire cbus_inferred_i_45_n_0;
  wire cbus_inferred_i_47_n_0;
  wire cbus_inferred_i_48_n_0;
  wire cbus_inferred_i_50_n_0;
  wire cbus_inferred_i_51_n_0;
  wire cbus_inferred_i_53_n_0;
  wire cbus_inferred_i_54_n_0;
  wire cbus_inferred_i_56_n_0;
  wire cbus_inferred_i_57_n_0;
  wire cbus_inferred_i_58_n_0;
  wire cbus_inferred_i_61_n_0;
  wire cbus_inferred_i_62_n_0;
  wire cbus_inferred_i_63_n_0;
  wire cbus_inferred_i_68_n_0;
  wire cbus_inferred_i_69_n_0;
  wire cbus_inferred_i_70_n_0;
  wire cbus_inferred_i_71_n_0;
  wire cbus_inferred_i_72_n_0;
  wire cbus_inferred_i_73_n_0;
  wire cbus_inferred_i_74_n_0;
  wire cbus_inferred_i_75_n_0;
  wire cbus_inferred_i_76_n_0;
  wire cbus_inferred_i_77_n_0;
  wire cbus_inferred_i_78_n_0;
  wire cbus_inferred_i_79_n_0;
  wire cbus_inferred_i_80_n_0;
  wire cbus_inferred_i_81_n_0;
  wire cbus_inferred_i_82_n_0;
  wire cbus_inferred_i_83_n_0;
  wire cbus_inferred_i_84_n_0;
  wire cbus_inferred_i_85_n_0;
  wire cbus_inferred_i_86_n_0;
  wire cbus_inferred_i_87_n_0;
  wire cbus_inferred_i_88_n_0;
  wire cbus_inferred_i_89_n_0;
  wire cbus_inferred_i_90_n_0;
  wire cbus_inferred_i_91_n_0;
  wire cbus_inferred_i_92_n_0;
  wire cbus_inferred_i_94_n_0;
  wire cbus_inferred_i_95_n_0;
  wire cbus_inferred_i_96_n_0;
  wire cbus_inferred_i_97_n_0;
  wire cbus_inferred_i_98_0;
  wire cbus_inferred_i_98_1;
  wire cbus_inferred_i_98_2;
  wire cbus_inferred_i_98_3;
  wire cbus_inferred_i_98_4;
  wire cbus_inferred_i_99_n_0;
  wire [4:0]ccmd;
  wire \ccmd[4]_INST_0_i_2_n_0 ;
  wire clk;
  wire [15:0]clk_0;
  wire crdy;
  wire [3:0]ctl_acmd_0;
  wire [1:0]ctl_bacc;
  wire ctl_ccmd_en;
  wire ctl_ccmd_sel;
  wire ctl_clrie;
  wire ctl_fetch_rg_i_3_n_0;
  wire ctl_fetch_rg_i_4_n_0;
  wire ctl_fetch_rg_i_7_n_0;
  wire ctl_fetch_rg_i_9_n_0;
  wire ctl_fetch_rg_reg;
  wire ctl_fetch_rg_reg_0;
  wire ctl_fetch_rg_reg_1;
  wire ctl_memrd;
  wire ctl_psei;
  wire ctl_push;
  wire ctl_selpc;
  wire ctl_setie;
  wire ctl_setpc;
  wire ctl_sldi;
  wire ctl_sppp;
  wire in0;
  wire \ir_rg_reg[4] ;
  wire \ir_rg_reg[6] ;
  wire irq;
  wire \ivec_reg[15] ;
  wire mem_reg_0_63_0_0_i_10_0;
  wire mem_reg_0_63_0_0_i_10_n_0;
  wire mem_reg_0_63_0_0_i_11_n_0;
  wire mem_reg_0_63_0_0_i_12_n_0;
  wire mem_reg_0_63_0_0_i_18_n_0;
  wire mem_reg_0_63_0_0_i_19_n_0;
  wire mem_reg_0_63_0_0_i_1_0;
  wire mem_reg_0_63_0_0_i_1_1;
  wire mem_reg_0_63_0_0_i_1_2;
  wire mem_reg_0_63_0_0_i_1_3;
  wire mem_reg_0_63_0_0_i_20_n_0;
  wire mem_reg_0_63_0_0_i_21_n_0;
  wire mem_reg_0_63_0_0_i_22_n_0;
  wire mem_reg_0_63_0_0_i_23_n_0;
  wire mem_reg_0_63_0_0_i_25_n_0;
  wire mem_reg_0_63_0_0_i_26_n_0;
  wire mem_reg_0_63_0_0_i_27_n_0;
  wire mem_reg_0_63_0_0_i_8_n_0;
  wire mem_reg_0_63_0_0_i_9_n_0;
  wire [7:0]out;
  wire p_0_in;
  wire \pcnt[11]_i_2_n_0 ;
  wire \pcnt[11]_i_3_n_0 ;
  wire \pcnt[11]_i_4_n_0 ;
  wire \pcnt[11]_i_5_n_0 ;
  wire \pcnt[11]_i_6_n_0 ;
  wire \pcnt[11]_i_7_n_0 ;
  wire \pcnt[11]_i_8_n_0 ;
  wire \pcnt[11]_i_9_n_0 ;
  wire \pcnt[15]_i_10_n_0 ;
  wire \pcnt[15]_i_12_n_0 ;
  wire \pcnt[15]_i_14_n_0 ;
  wire \pcnt[15]_i_16_n_0 ;
  wire \pcnt[15]_i_17_n_0 ;
  wire [15:0]\pcnt[15]_i_2_0 ;
  wire \pcnt[15]_i_2_n_0 ;
  wire \pcnt[15]_i_3_n_0 ;
  wire \pcnt[15]_i_4_n_0 ;
  wire \pcnt[15]_i_5_n_0 ;
  wire \pcnt[15]_i_6_n_0 ;
  wire \pcnt[15]_i_8_n_0 ;
  wire \pcnt[15]_i_9_n_0 ;
  wire \pcnt[3]_i_10_0 ;
  wire \pcnt[3]_i_10_n_0 ;
  wire \pcnt[3]_i_3_n_0 ;
  wire \pcnt[3]_i_4_n_0 ;
  wire \pcnt[3]_i_5_n_0 ;
  wire \pcnt[3]_i_6_0 ;
  wire \pcnt[3]_i_6_n_0 ;
  wire \pcnt[3]_i_7_n_0 ;
  wire \pcnt[3]_i_8_n_0 ;
  wire \pcnt[3]_i_9_n_0 ;
  wire \pcnt[7]_i_2_n_0 ;
  wire \pcnt[7]_i_3_n_0 ;
  wire \pcnt[7]_i_4_n_0 ;
  wire \pcnt[7]_i_5_n_0 ;
  wire \pcnt[7]_i_6_n_0 ;
  wire \pcnt[7]_i_7_n_0 ;
  wire \pcnt[7]_i_8_n_0 ;
  wire \pcnt[7]_i_9_n_0 ;
  wire \pcnt_reg[11]_i_1_n_0 ;
  wire \pcnt_reg[11]_i_1_n_1 ;
  wire \pcnt_reg[11]_i_1_n_2 ;
  wire \pcnt_reg[11]_i_1_n_3 ;
  wire [15:0]\pcnt_reg[15] ;
  wire [15:0]\pcnt_reg[15]_0 ;
  wire \pcnt_reg[15]_1 ;
  wire \pcnt_reg[15]_i_1_n_1 ;
  wire \pcnt_reg[15]_i_1_n_2 ;
  wire \pcnt_reg[15]_i_1_n_3 ;
  wire \pcnt_reg[3] ;
  wire \pcnt_reg[3]_i_1_n_0 ;
  wire \pcnt_reg[3]_i_1_n_1 ;
  wire \pcnt_reg[3]_i_1_n_2 ;
  wire \pcnt_reg[3]_i_1_n_3 ;
  wire \pcnt_reg[7]_i_1_n_0 ;
  wire \pcnt_reg[7]_i_1_n_1 ;
  wire \pcnt_reg[7]_i_1_n_2 ;
  wire \pcnt_reg[7]_i_1_n_3 ;
  wire rgf_ie;
  wire rgf_ie_rg_i_10_n_0;
  wire rgf_ie_rg_i_8_n_0;
  wire rgf_ie_rg_reg;
  wire rgf_ie_rg_reg_0;
  wire rgf_ie_rg_reg_1;
  wire rgf_ie_rg_reg_2;
  wire [4:0]rgf_sp_0;
  wire \sptr[15]_i_10_0 ;
  wire \sptr[15]_i_10_1 ;
  wire \sptr[15]_i_10_n_0 ;
  wire \sptr[15]_i_11_n_0 ;
  wire \sptr[15]_i_12_n_0 ;
  wire \sptr[15]_i_14_n_0 ;
  wire \sptr[15]_i_15_0 ;
  wire \sptr[15]_i_15_n_0 ;
  wire \sptr[15]_i_18_n_0 ;
  wire \sptr[15]_i_19_n_0 ;
  wire \sptr[15]_i_6_0 ;
  wire \sptr[15]_i_8_n_0 ;
  wire \sptr[15]_i_9_n_0 ;
  wire [9:0]sptr_dec;
  wire \sptr_reg[15]_i_7_n_0 ;
  wire \sptr_reg[3] ;
  wire \sptr_reg[6] ;
  wire [1:0]stat;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_4_n_0 ;
  wire \stat[0]_i_5_n_0 ;
  wire \stat[0]_i_6_n_0 ;
  wire \stat[0]_i_7_n_0 ;
  wire \stat[0]_i_8_n_0 ;
  wire \stat[0]_i_9_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_5_n_0 ;
  wire \stat[1]_i_6_n_0 ;
  wire \stat[1]_i_7_n_0 ;
  wire \stat[1]_i_8_n_0 ;
  wire [1:0]stat_nx;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;
  wire [0:0]\stat_reg[1]_2 ;
  wire [0:0]\stat_reg[1]_3 ;
  wire \stk_b1_rg[15]_i_2_n_0 ;
  wire \stk_b1_rg[15]_i_3_n_0 ;
  wire \stk_b1_rg[15]_i_4_n_0 ;
  wire \stk_b1_rg[15]_i_5_n_0 ;
  wire \stk_b1_rg_reg[0] ;
  wire [3:0]\stk_b1_rg_reg[10] ;
  wire [3:0]\stk_b1_rg_reg[11] ;
  wire [3:0]\stk_b1_rg_reg[15] ;
  wire [3:0]\stk_b1_rg_reg[15]_0 ;
  wire [1:0]\stk_b1_rg_reg[15]_1 ;
  wire [0:0]\stk_b1_rg_reg[15]_2 ;
  wire \stk_b1_rg_reg[15]_3 ;
  wire [3:0]\stk_b1_rg_reg[6] ;
  wire [3:0]\stk_b1_rg_reg[7] ;
  wire stk_bool;
  wire [0:0]\stk_ccmd_rg_reg[1] ;
  wire \stk_ccmd_rg_reg[4] ;
  wire [15:0]\stka2/stk_psei__149 ;
  wire tout__1_carry_i_9_n_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    abus_inferred_i_1
       (.I0(abus_inferred_i_1_0[8]),
        .I1(ctl_sldi),
        .I2(\stka2/stk_psei__149 [15]),
        .I3(ctl_psei),
        .I4(abus_inferred_i_20_n_0),
        .O(clk_0[15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    abus_inferred_i_10
       (.I0(out[6]),
        .I1(ctl_sldi),
        .I2(\stka2/stk_psei__149 [6]),
        .I3(ctl_psei),
        .I4(abus_inferred_i_39_n_0),
        .O(clk_0[6]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    abus_inferred_i_100
       (.I0(\pcnt_reg[15]_0 [0]),
        .I1(bdatr[8]),
        .I2(bdatr[0]),
        .I3(ctl_selpc),
        .I4(abus_inferred_i_103_n_0),
        .I5(abus_inferred_i_102_n_0),
        .O(abus_inferred_i_100_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    abus_inferred_i_101
       (.I0(stat[0]),
        .I1(out[5]),
        .I2(out[1]),
        .I3(abus_inferred_i_57_0),
        .I4(\bcmd[0] ),
        .I5(\bcmd[0]_INST_0_i_1_n_0 ),
        .O(ctl_memrd));
  LUT2 #(
    .INIT(4'h2)) 
    abus_inferred_i_102
       (.I0(ctl_memrd),
        .I1(ctl_bacc[1]),
        .O(abus_inferred_i_102_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    abus_inferred_i_103
       (.I0(ctl_memrd),
        .I1(ctl_bacc[0]),
        .I2(ctl_bacc[1]),
        .O(abus_inferred_i_103_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    abus_inferred_i_11
       (.I0(out[5]),
        .I1(ctl_sldi),
        .I2(\stka2/stk_psei__149 [5]),
        .I3(ctl_psei),
        .I4(abus_inferred_i_41_n_0),
        .O(clk_0[5]));
  LUT5 #(
    .INIT(32'hC8DDC888)) 
    abus_inferred_i_12
       (.I0(ctl_sldi),
        .I1(out[4]),
        .I2(abus_inferred_i_42_n_0),
        .I3(ctl_psei),
        .I4(abus_inferred_i_43_n_0),
        .O(clk_0[4]));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    abus_inferred_i_13
       (.I0(out[3]),
        .I1(ctl_sldi),
        .I2(out[4]),
        .I3(abus_inferred_i_44_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_45_n_0),
        .O(clk_0[3]));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    abus_inferred_i_14
       (.I0(out[2]),
        .I1(ctl_sldi),
        .I2(out[4]),
        .I3(abus_inferred_i_46_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_47_n_0),
        .O(clk_0[2]));
  LUT6 #(
    .INIT(64'hE5E0F5F5E5E0A0A0)) 
    abus_inferred_i_15
       (.I0(ctl_sldi),
        .I1(bdatw_9_sn_1),
        .I2(out[1]),
        .I3(\bdatw[9]_0 ),
        .I4(ctl_psei),
        .I5(abus_inferred_i_50_n_0),
        .O(clk_0[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    abus_inferred_i_16
       (.I0(out[0]),
        .I1(ctl_sldi),
        .I2(\stka2/stk_psei__149 [0]),
        .I3(ctl_psei),
        .I4(abus_inferred_i_52_n_0),
        .O(clk_0[0]));
  LUT3 #(
    .INIT(8'h02)) 
    abus_inferred_i_17
       (.I0(out[7]),
        .I1(stat[0]),
        .I2(stat[1]),
        .O(ctl_sldi));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    abus_inferred_i_18
       (.I0(abus_inferred_i_1_1),
        .I1(out[0]),
        .I2(out[4]),
        .I3(abus_inferred_i_54_n_0),
        .I4(out[2]),
        .I5(abus_inferred_i_1_2),
        .O(\stka2/stk_psei__149 [15]));
  LUT5 #(
    .INIT(32'h00000020)) 
    abus_inferred_i_19
       (.I0(out[5]),
        .I1(stat[0]),
        .I2(out[6]),
        .I3(stat[1]),
        .I4(out[7]),
        .O(ctl_psei));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    abus_inferred_i_2
       (.I0(abus_inferred_i_1_0[7]),
        .I1(ctl_sldi),
        .I2(bdatw_14_sn_1),
        .I3(\bdatw[14]_0 ),
        .I4(ctl_psei),
        .I5(abus_inferred_i_23_n_0),
        .O(clk_0[14]));
  LUT5 #(
    .INIT(32'hFF040004)) 
    abus_inferred_i_20
       (.I0(abus_inferred_i_56_n_0),
        .I1(abus_inferred_i_1_0[15]),
        .I2(abus_inferred_i_57_n_0),
        .I3(abus_inferred_i_58_n_0),
        .I4(abus_inferred_i_59_n_0),
        .O(abus_inferred_i_20_n_0));
  LUT5 #(
    .INIT(32'hFF040004)) 
    abus_inferred_i_23
       (.I0(abus_inferred_i_56_n_0),
        .I1(abus_inferred_i_1_0[14]),
        .I2(abus_inferred_i_57_n_0),
        .I3(abus_inferred_i_58_n_0),
        .I4(abus_inferred_i_61_n_0),
        .O(abus_inferred_i_23_n_0));
  LUT5 #(
    .INIT(32'hFF040004)) 
    abus_inferred_i_25
       (.I0(abus_inferred_i_56_n_0),
        .I1(abus_inferred_i_1_0[13]),
        .I2(abus_inferred_i_57_n_0),
        .I3(abus_inferred_i_58_n_0),
        .I4(abus_inferred_i_63_n_0),
        .O(abus_inferred_i_25_n_0));
  LUT5 #(
    .INIT(32'hFF040004)) 
    abus_inferred_i_27
       (.I0(abus_inferred_i_56_n_0),
        .I1(abus_inferred_i_1_0[12]),
        .I2(abus_inferred_i_57_n_0),
        .I3(abus_inferred_i_58_n_0),
        .I4(abus_inferred_i_65_n_0),
        .O(abus_inferred_i_27_n_0));
  LUT5 #(
    .INIT(32'hFF040004)) 
    abus_inferred_i_29
       (.I0(abus_inferred_i_56_n_0),
        .I1(abus_inferred_i_1_0[11]),
        .I2(abus_inferred_i_57_n_0),
        .I3(abus_inferred_i_58_n_0),
        .I4(abus_inferred_i_67_n_0),
        .O(abus_inferred_i_29_n_0));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    abus_inferred_i_3
       (.I0(abus_inferred_i_1_0[6]),
        .I1(ctl_sldi),
        .I2(bdatw_13_sn_1),
        .I3(\bdatw[14]_0 ),
        .I4(ctl_psei),
        .I5(abus_inferred_i_25_n_0),
        .O(clk_0[13]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8888888)) 
    abus_inferred_i_30
       (.I0(abus_inferred_i_6_2),
        .I1(abus_inferred_i_6_1),
        .I2(out[4]),
        .I3(out[3]),
        .I4(abus_inferred_i_70_n_0),
        .I5(abus_inferred_i_6_0),
        .O(\stka2/stk_psei__149 [10]));
  LUT5 #(
    .INIT(32'hFF040004)) 
    abus_inferred_i_31
       (.I0(abus_inferred_i_56_n_0),
        .I1(abus_inferred_i_1_0[10]),
        .I2(abus_inferred_i_57_n_0),
        .I3(abus_inferred_i_58_n_0),
        .I4(abus_inferred_i_72_n_0),
        .O(abus_inferred_i_31_n_0));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8888888)) 
    abus_inferred_i_32
       (.I0(abus_inferred_i_7_0),
        .I1(abus_inferred_i_6_1),
        .I2(out[4]),
        .I3(out[3]),
        .I4(abus_inferred_i_74_n_0),
        .I5(abus_inferred_i_6_0),
        .O(\stka2/stk_psei__149 [9]));
  LUT5 #(
    .INIT(32'hFF040004)) 
    abus_inferred_i_33
       (.I0(abus_inferred_i_56_n_0),
        .I1(abus_inferred_i_1_0[9]),
        .I2(abus_inferred_i_57_n_0),
        .I3(abus_inferred_i_58_n_0),
        .I4(abus_inferred_i_75_n_0),
        .O(abus_inferred_i_33_n_0));
  LUT5 #(
    .INIT(32'hFF040004)) 
    abus_inferred_i_35
       (.I0(abus_inferred_i_56_n_0),
        .I1(abus_inferred_i_1_0[8]),
        .I2(abus_inferred_i_57_n_0),
        .I3(abus_inferred_i_58_n_0),
        .I4(abus_inferred_i_77_n_0),
        .O(abus_inferred_i_35_n_0));
  LUT6 #(
    .INIT(64'h00B8B80000B8B8FF)) 
    abus_inferred_i_36
       (.I0(abus_inferred_i_9_0),
        .I1(out[0]),
        .I2(abus_inferred_i_79_n_0),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[3]),
        .O(abus_inferred_i_36_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF55040004)) 
    abus_inferred_i_37
       (.I0(abus_inferred_i_58_n_0),
        .I1(abus_inferred_i_1_0[7]),
        .I2(abus_inferred_i_56_n_0),
        .I3(abus_inferred_i_57_n_0),
        .I4(bdatr[7]),
        .I5(abus_inferred_i_80_n_0),
        .O(abus_inferred_i_37_n_0));
  LUT6 #(
    .INIT(64'hBBBA88BABB8A888A)) 
    abus_inferred_i_38
       (.I0(abus_inferred_i_10_0),
        .I1(out[0]),
        .I2(out[3]),
        .I3(out[1]),
        .I4(abus_inferred_i_82_n_0),
        .I5(abus_inferred_i_10_1),
        .O(\stka2/stk_psei__149 [6]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55040004)) 
    abus_inferred_i_39
       (.I0(abus_inferred_i_58_n_0),
        .I1(abus_inferred_i_1_0[6]),
        .I2(abus_inferred_i_56_n_0),
        .I3(abus_inferred_i_57_n_0),
        .I4(bdatr[6]),
        .I5(abus_inferred_i_84_n_0),
        .O(abus_inferred_i_39_n_0));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    abus_inferred_i_4
       (.I0(abus_inferred_i_1_0[5]),
        .I1(ctl_sldi),
        .I2(bdatw_12_sn_1),
        .I3(\bdatw[14]_0 ),
        .I4(ctl_psei),
        .I5(abus_inferred_i_27_n_0),
        .O(clk_0[12]));
  MUXF7 abus_inferred_i_40
       (.I0(abus_inferred_i_85_n_0),
        .I1(abus_inferred_i_11_0),
        .O(\stka2/stk_psei__149 [5]),
        .S(abus_inferred_i_6_1));
  LUT6 #(
    .INIT(64'hFFFFFFFF55040004)) 
    abus_inferred_i_41
       (.I0(abus_inferred_i_58_n_0),
        .I1(abus_inferred_i_1_0[5]),
        .I2(abus_inferred_i_56_n_0),
        .I3(abus_inferred_i_57_n_0),
        .I4(bdatr[5]),
        .I5(abus_inferred_i_87_n_0),
        .O(abus_inferred_i_41_n_0));
  MUXF7 abus_inferred_i_42
       (.I0(abus_inferred_i_88_n_0),
        .I1(abus_inferred_i_12_0),
        .O(abus_inferred_i_42_n_0),
        .S(out[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55040004)) 
    abus_inferred_i_43
       (.I0(abus_inferred_i_58_n_0),
        .I1(abus_inferred_i_1_0[4]),
        .I2(abus_inferred_i_56_n_0),
        .I3(abus_inferred_i_57_n_0),
        .I4(bdatr[4]),
        .I5(abus_inferred_i_90_n_0),
        .O(abus_inferred_i_43_n_0));
  MUXF7 abus_inferred_i_44
       (.I0(abus_inferred_i_91_n_0),
        .I1(abus_inferred_i_13_0),
        .O(abus_inferred_i_44_n_0),
        .S(out[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55040004)) 
    abus_inferred_i_45
       (.I0(abus_inferred_i_58_n_0),
        .I1(abus_inferred_i_1_0[3]),
        .I2(abus_inferred_i_56_n_0),
        .I3(abus_inferred_i_57_n_0),
        .I4(bdatr[3]),
        .I5(abus_inferred_i_93_n_0),
        .O(abus_inferred_i_45_n_0));
  MUXF7 abus_inferred_i_46
       (.I0(abus_inferred_i_94_n_0),
        .I1(abus_inferred_i_14_0),
        .O(abus_inferred_i_46_n_0),
        .S(out[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55040004)) 
    abus_inferred_i_47
       (.I0(abus_inferred_i_58_n_0),
        .I1(abus_inferred_i_1_0[2]),
        .I2(abus_inferred_i_56_n_0),
        .I3(abus_inferred_i_57_n_0),
        .I4(bdatr[2]),
        .I5(abus_inferred_i_96_n_0),
        .O(abus_inferred_i_47_n_0));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    abus_inferred_i_5
       (.I0(abus_inferred_i_1_0[4]),
        .I1(ctl_sldi),
        .I2(bdatw_11_sn_1),
        .I3(\bdatw[14]_0 ),
        .I4(ctl_psei),
        .I5(abus_inferred_i_29_n_0),
        .O(clk_0[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55040004)) 
    abus_inferred_i_50
       (.I0(abus_inferred_i_58_n_0),
        .I1(abus_inferred_i_1_0[1]),
        .I2(abus_inferred_i_56_n_0),
        .I3(abus_inferred_i_57_n_0),
        .I4(bdatr[1]),
        .I5(abus_inferred_i_97_n_0),
        .O(abus_inferred_i_50_n_0));
  MUXF7 abus_inferred_i_51
       (.I0(abus_inferred_i_98_n_0),
        .I1(abus_inferred_i_16_0),
        .O(\stka2/stk_psei__149 [0]),
        .S(out[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55040004)) 
    abus_inferred_i_52
       (.I0(abus_inferred_i_58_n_0),
        .I1(abus_inferred_i_1_0[0]),
        .I2(abus_inferred_i_56_n_0),
        .I3(abus_inferred_i_57_n_0),
        .I4(bdatr[0]),
        .I5(abus_inferred_i_100_n_0),
        .O(abus_inferred_i_52_n_0));
  LUT5 #(
    .INIT(32'hDDF55555)) 
    abus_inferred_i_54
       (.I0(out[3]),
        .I1(sptr_dec[9]),
        .I2(abus_inferred_i_18_0[9]),
        .I3(\ir_rg_reg[6] ),
        .I4(out[1]),
        .O(abus_inferred_i_54_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    abus_inferred_i_56
       (.I0(ctl_acmd_0[3]),
        .I1(ctl_acmd_0[1]),
        .I2(ctl_acmd_0[2]),
        .O(abus_inferred_i_56_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    abus_inferred_i_57
       (.I0(ctl_memrd),
        .I1(ctl_bacc[1]),
        .I2(ctl_bacc[0]),
        .O(abus_inferred_i_57_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    abus_inferred_i_58
       (.I0(abus_inferred_i_102_n_0),
        .I1(abus_inferred_i_103_n_0),
        .I2(ctl_selpc),
        .O(abus_inferred_i_58_n_0));
  LUT4 #(
    .INIT(16'hF808)) 
    abus_inferred_i_59
       (.I0(bdatr[15]),
        .I1(abus_inferred_i_102_n_0),
        .I2(ctl_selpc),
        .I3(\pcnt_reg[15]_0 [15]),
        .O(abus_inferred_i_59_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    abus_inferred_i_6
       (.I0(abus_inferred_i_1_0[3]),
        .I1(ctl_sldi),
        .I2(\stka2/stk_psei__149 [10]),
        .I3(ctl_psei),
        .I4(abus_inferred_i_31_n_0),
        .O(clk_0[10]));
  LUT4 #(
    .INIT(16'hF808)) 
    abus_inferred_i_61
       (.I0(bdatr[14]),
        .I1(abus_inferred_i_102_n_0),
        .I2(ctl_selpc),
        .I3(\pcnt_reg[15]_0 [14]),
        .O(abus_inferred_i_61_n_0));
  LUT4 #(
    .INIT(16'hF808)) 
    abus_inferred_i_63
       (.I0(bdatr[13]),
        .I1(abus_inferred_i_102_n_0),
        .I2(ctl_selpc),
        .I3(\pcnt_reg[15]_0 [13]),
        .O(abus_inferred_i_63_n_0));
  LUT4 #(
    .INIT(16'hF808)) 
    abus_inferred_i_65
       (.I0(bdatr[12]),
        .I1(abus_inferred_i_102_n_0),
        .I2(ctl_selpc),
        .I3(\pcnt_reg[15]_0 [12]),
        .O(abus_inferred_i_65_n_0));
  LUT4 #(
    .INIT(16'hF808)) 
    abus_inferred_i_67
       (.I0(bdatr[11]),
        .I1(abus_inferred_i_102_n_0),
        .I2(ctl_selpc),
        .I3(\pcnt_reg[15]_0 [11]),
        .O(abus_inferred_i_67_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    abus_inferred_i_7
       (.I0(abus_inferred_i_1_0[2]),
        .I1(ctl_sldi),
        .I2(\stka2/stk_psei__149 [9]),
        .I3(ctl_psei),
        .I4(abus_inferred_i_33_n_0),
        .O(clk_0[9]));
  LUT6 #(
    .INIT(64'h4F444F444F4F4444)) 
    abus_inferred_i_70
       (.I0(out[1]),
        .I1(\pcnt[15]_i_2_0 [10]),
        .I2(out[2]),
        .I3(sptr_dec[8]),
        .I4(abus_inferred_i_18_0[8]),
        .I5(\ir_rg_reg[6] ),
        .O(abus_inferred_i_70_n_0));
  LUT4 #(
    .INIT(16'hF808)) 
    abus_inferred_i_72
       (.I0(bdatr[10]),
        .I1(abus_inferred_i_102_n_0),
        .I2(ctl_selpc),
        .I3(\pcnt_reg[15]_0 [10]),
        .O(abus_inferred_i_72_n_0));
  LUT6 #(
    .INIT(64'h4F444F444F4F4444)) 
    abus_inferred_i_74
       (.I0(out[1]),
        .I1(\pcnt[15]_i_2_0 [9]),
        .I2(out[2]),
        .I3(sptr_dec[7]),
        .I4(abus_inferred_i_18_0[7]),
        .I5(\ir_rg_reg[6] ),
        .O(abus_inferred_i_74_n_0));
  LUT4 #(
    .INIT(16'hF808)) 
    abus_inferred_i_75
       (.I0(bdatr[9]),
        .I1(abus_inferred_i_102_n_0),
        .I2(ctl_selpc),
        .I3(\pcnt_reg[15]_0 [9]),
        .O(abus_inferred_i_75_n_0));
  LUT4 #(
    .INIT(16'hF808)) 
    abus_inferred_i_77
       (.I0(bdatr[8]),
        .I1(abus_inferred_i_102_n_0),
        .I2(ctl_selpc),
        .I3(\pcnt_reg[15]_0 [8]),
        .O(abus_inferred_i_77_n_0));
  LUT6 #(
    .INIT(64'hE4FFE40000FF00FF)) 
    abus_inferred_i_79
       (.I0(\ir_rg_reg[6] ),
        .I1(abus_inferred_i_18_0[6]),
        .I2(sptr_dec[6]),
        .I3(out[1]),
        .I4(\pcnt[15]_i_2_0 [7]),
        .I5(out[3]),
        .O(abus_inferred_i_79_n_0));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    abus_inferred_i_8
       (.I0(abus_inferred_i_1_0[1]),
        .I1(ctl_sldi),
        .I2(bdatw_8_sn_1),
        .I3(\bdatw[14]_0 ),
        .I4(ctl_psei),
        .I5(abus_inferred_i_35_n_0),
        .O(clk_0[8]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    abus_inferred_i_80
       (.I0(\pcnt_reg[15]_0 [7]),
        .I1(bdatr[15]),
        .I2(bdatr[7]),
        .I3(ctl_selpc),
        .I4(abus_inferred_i_103_n_0),
        .I5(abus_inferred_i_102_n_0),
        .O(abus_inferred_i_80_n_0));
  LUT6 #(
    .INIT(64'h2020220000000000)) 
    abus_inferred_i_82
       (.I0(out[4]),
        .I1(out[2]),
        .I2(sptr_dec[5]),
        .I3(abus_inferred_i_18_0[5]),
        .I4(\ir_rg_reg[6] ),
        .I5(out[3]),
        .O(abus_inferred_i_82_n_0));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    abus_inferred_i_84
       (.I0(\pcnt_reg[15]_0 [6]),
        .I1(bdatr[14]),
        .I2(bdatr[6]),
        .I3(ctl_selpc),
        .I4(abus_inferred_i_103_n_0),
        .I5(abus_inferred_i_102_n_0),
        .O(abus_inferred_i_84_n_0));
  LUT6 #(
    .INIT(64'h0080008088AA00AA)) 
    abus_inferred_i_85
       (.I0(out[4]),
        .I1(out[3]),
        .I2(rgf_sp_0[4]),
        .I3(out[2]),
        .I4(\pcnt[15]_i_2_0 [5]),
        .I5(out[1]),
        .O(abus_inferred_i_85_n_0));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    abus_inferred_i_87
       (.I0(\pcnt_reg[15]_0 [5]),
        .I1(bdatr[13]),
        .I2(bdatr[5]),
        .I3(ctl_selpc),
        .I4(abus_inferred_i_103_n_0),
        .I5(abus_inferred_i_102_n_0),
        .O(abus_inferred_i_87_n_0));
  LUT5 #(
    .INIT(32'hA808F5F5)) 
    abus_inferred_i_88
       (.I0(out[1]),
        .I1(rgf_sp_0[3]),
        .I2(out[0]),
        .I3(\pcnt_reg[15]_0 [4]),
        .I4(out[3]),
        .O(abus_inferred_i_88_n_0));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    abus_inferred_i_9
       (.I0(abus_inferred_i_1_0[0]),
        .I1(ctl_sldi),
        .I2(out[4]),
        .I3(abus_inferred_i_36_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_37_n_0),
        .O(clk_0[7]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    abus_inferred_i_90
       (.I0(\pcnt_reg[15]_0 [4]),
        .I1(bdatr[12]),
        .I2(bdatr[4]),
        .I3(ctl_selpc),
        .I4(abus_inferred_i_103_n_0),
        .I5(abus_inferred_i_102_n_0),
        .O(abus_inferred_i_90_n_0));
  LUT5 #(
    .INIT(32'hA808F5F5)) 
    abus_inferred_i_91
       (.I0(out[1]),
        .I1(rgf_sp_0[2]),
        .I2(out[0]),
        .I3(\pcnt_reg[15]_0 [3]),
        .I4(out[3]),
        .O(abus_inferred_i_91_n_0));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    abus_inferred_i_93
       (.I0(\pcnt_reg[15]_0 [3]),
        .I1(bdatr[11]),
        .I2(bdatr[3]),
        .I3(ctl_selpc),
        .I4(abus_inferred_i_103_n_0),
        .I5(abus_inferred_i_102_n_0),
        .O(abus_inferred_i_93_n_0));
  LUT5 #(
    .INIT(32'hA808F5F5)) 
    abus_inferred_i_94
       (.I0(out[1]),
        .I1(rgf_sp_0[1]),
        .I2(out[0]),
        .I3(\pcnt_reg[15]_0 [2]),
        .I4(out[3]),
        .O(abus_inferred_i_94_n_0));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    abus_inferred_i_96
       (.I0(\pcnt_reg[15]_0 [2]),
        .I1(bdatr[10]),
        .I2(bdatr[2]),
        .I3(ctl_selpc),
        .I4(abus_inferred_i_103_n_0),
        .I5(abus_inferred_i_102_n_0),
        .O(abus_inferred_i_96_n_0));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    abus_inferred_i_97
       (.I0(\pcnt_reg[15]_0 [1]),
        .I1(bdatr[9]),
        .I2(bdatr[1]),
        .I3(ctl_selpc),
        .I4(abus_inferred_i_103_n_0),
        .I5(abus_inferred_i_102_n_0),
        .O(abus_inferred_i_97_n_0));
  LUT6 #(
    .INIT(64'hE2000000CCFFCCCC)) 
    abus_inferred_i_98
       (.I0(rgf_sp_0[0]),
        .I1(out[0]),
        .I2(\pcnt_reg[15]_0 [0]),
        .I3(out[1]),
        .I4(out[4]),
        .I5(out[3]),
        .O(abus_inferred_i_98_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[0]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[15] [0]),
        .O(abus_o[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[10]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[15] [10]),
        .O(abus_o[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[11]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[15] [11]),
        .O(abus_o[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[12]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[15] [12]),
        .O(abus_o[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[13]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[15] [13]),
        .O(abus_o[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[14]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[15] [14]),
        .O(abus_o[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[15]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[15] [15]),
        .O(abus_o[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[1]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[15] [1]),
        .O(abus_o[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[2]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[15] [2]),
        .O(abus_o[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[3]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[15] [3]),
        .O(abus_o[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[4]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[15] [4]),
        .O(abus_o[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[5]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[15] [5]),
        .O(abus_o[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[6]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[15] [6]),
        .O(abus_o[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[7]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[15] [7]),
        .O(abus_o[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[8]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[15] [8]),
        .O(abus_o[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[9]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[15] [9]),
        .O(abus_o[9]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \bacc[0]_i_1 
       (.I0(\bdatw[15] [0]),
        .I1(badr2__4),
        .I2(badr3__4),
        .I3(\bbus_o[15] [0]),
        .I4(brdy),
        .I5(ctl_bacc[0]),
        .O(\stk_b1_rg_reg[0] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bacc[1]_i_1 
       (.I0(\stat_reg[0]_1 ),
        .I1(brdy),
        .I2(ctl_bacc[1]),
        .O(brdy_0));
  LUT4 #(
    .INIT(16'hB888)) 
    \badr[0]_INST_0 
       (.I0(\bdatw[15] [0]),
        .I1(badr2__4),
        .I2(badr3__4),
        .I3(\bbus_o[15] [0]),
        .O(badr[0]));
  LUT4 #(
    .INIT(16'hB888)) 
    \badr[10]_INST_0 
       (.I0(\bdatw[15] [10]),
        .I1(badr2__4),
        .I2(badr3__4),
        .I3(\bbus_o[15] [10]),
        .O(badr[10]));
  LUT4 #(
    .INIT(16'hB888)) 
    \badr[11]_INST_0 
       (.I0(\bdatw[15] [11]),
        .I1(badr2__4),
        .I2(badr3__4),
        .I3(\bbus_o[15] [11]),
        .O(badr[11]));
  LUT4 #(
    .INIT(16'hB888)) 
    \badr[12]_INST_0 
       (.I0(\bdatw[15] [12]),
        .I1(badr2__4),
        .I2(badr3__4),
        .I3(\bbus_o[15] [12]),
        .O(badr[12]));
  LUT4 #(
    .INIT(16'hB888)) 
    \badr[13]_INST_0 
       (.I0(\bdatw[15] [13]),
        .I1(badr2__4),
        .I2(badr3__4),
        .I3(\bbus_o[15] [13]),
        .O(badr[13]));
  LUT4 #(
    .INIT(16'hB888)) 
    \badr[14]_INST_0 
       (.I0(\bdatw[15] [14]),
        .I1(badr2__4),
        .I2(badr3__4),
        .I3(\bbus_o[15] [14]),
        .O(badr[14]));
  LUT4 #(
    .INIT(16'hB888)) 
    \badr[15]_INST_0 
       (.I0(\bdatw[15] [15]),
        .I1(badr2__4),
        .I2(badr3__4),
        .I3(\bbus_o[15] [15]),
        .O(badr[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_1 
       (.I0(\ir_rg_reg[4] ),
        .I1(\stat_reg[0]_0 ),
        .O(badr2__4));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_2 
       (.I0(\stat_reg[0]_0 ),
        .I1(\ir_rg_reg[4] ),
        .O(badr3__4));
  LUT4 #(
    .INIT(16'hB888)) 
    \badr[1]_INST_0 
       (.I0(\bdatw[15] [1]),
        .I1(badr2__4),
        .I2(badr3__4),
        .I3(\bbus_o[15] [1]),
        .O(badr[1]));
  LUT4 #(
    .INIT(16'hB888)) 
    \badr[2]_INST_0 
       (.I0(\bdatw[15] [2]),
        .I1(badr2__4),
        .I2(badr3__4),
        .I3(\bbus_o[15] [2]),
        .O(badr[2]));
  LUT4 #(
    .INIT(16'hB888)) 
    \badr[3]_INST_0 
       (.I0(\bdatw[15] [3]),
        .I1(badr2__4),
        .I2(badr3__4),
        .I3(\bbus_o[15] [3]),
        .O(badr[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    \badr[4]_INST_0 
       (.I0(\bdatw[15] [4]),
        .I1(badr2__4),
        .I2(badr3__4),
        .I3(\bbus_o[15] [4]),
        .O(badr[4]));
  LUT4 #(
    .INIT(16'hB888)) 
    \badr[5]_INST_0 
       (.I0(\bdatw[15] [5]),
        .I1(badr2__4),
        .I2(badr3__4),
        .I3(\bbus_o[15] [5]),
        .O(badr[5]));
  LUT4 #(
    .INIT(16'hB888)) 
    \badr[6]_INST_0 
       (.I0(\bdatw[15] [6]),
        .I1(badr2__4),
        .I2(badr3__4),
        .I3(\bbus_o[15] [6]),
        .O(badr[6]));
  LUT4 #(
    .INIT(16'hB888)) 
    \badr[7]_INST_0 
       (.I0(\bdatw[15] [7]),
        .I1(badr2__4),
        .I2(badr3__4),
        .I3(\bbus_o[15] [7]),
        .O(badr[7]));
  LUT4 #(
    .INIT(16'hB888)) 
    \badr[8]_INST_0 
       (.I0(\bdatw[15] [8]),
        .I1(badr2__4),
        .I2(badr3__4),
        .I3(\bbus_o[15] [8]),
        .O(badr[8]));
  LUT4 #(
    .INIT(16'hB888)) 
    \badr[9]_INST_0 
       (.I0(\bdatw[15] [9]),
        .I1(badr2__4),
        .I2(badr3__4),
        .I3(\bbus_o[15] [9]),
        .O(badr[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[0]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bbus_o[15] [0]),
        .O(bbus_o[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[10]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bbus_o[15] [10]),
        .O(bbus_o[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[11]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bbus_o[15] [11]),
        .O(bbus_o[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[12]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bbus_o[15] [12]),
        .O(bbus_o[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[13]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bbus_o[15] [13]),
        .O(bbus_o[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[14]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bbus_o[15] [14]),
        .O(bbus_o[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[15]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bbus_o[15] [15]),
        .O(bbus_o[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[1]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bbus_o[15] [1]),
        .O(bbus_o[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[2]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bbus_o[15] [2]),
        .O(bbus_o[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[3]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bbus_o[15] [3]),
        .O(bbus_o[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[4]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bbus_o[15] [4]),
        .O(bbus_o[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[5]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bbus_o[15] [5]),
        .O(bbus_o[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[6]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bbus_o[15] [6]),
        .O(bbus_o[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[7]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bbus_o[15] [7]),
        .O(bbus_o[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[8]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bbus_o[15] [8]),
        .O(bbus_o[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[9]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bbus_o[15] [9]),
        .O(bbus_o[9]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \bcmd[0]_INST_0 
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[5]),
        .I3(\bcmd[0]_INST_0_i_1_n_0 ),
        .I4(\bcmd[0] ),
        .I5(\bcmd[0]_INST_0_i_3_n_0 ),
        .O(\ir_rg_reg[4] ));
  LUT2 #(
    .INIT(4'h1)) 
    \bcmd[0]_INST_0_i_1 
       (.I0(stat[1]),
        .I1(out[2]),
        .O(\bcmd[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bcmd[0]_INST_0_i_3 
       (.I0(out[1]),
        .I1(stat[0]),
        .O(\bcmd[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bcmd[1]_INST_0 
       (.I0(stat[0]),
        .I1(\bcmd[1] ),
        .I2(out[7]),
        .I3(out[2]),
        .I4(stat[1]),
        .I5(out[5]),
        .O(\stat_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0820)) 
    \bcmd[2]_INST_0 
       (.I0(\bcmd[2]_INST_0_i_1_n_0 ),
        .I1(out[6]),
        .I2(out[5]),
        .I3(stat[0]),
        .O(\stat_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \bcmd[2]_INST_0_i_1 
       (.I0(out[0]),
        .I1(out[7]),
        .I2(out[3]),
        .I3(\bcmd[2] ),
        .I4(stat[1]),
        .I5(out[2]),
        .O(\bcmd[2]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \bdatw[0]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\ir_rg_reg[4] ),
        .I2(\bdatw[15] [0]),
        .O(bdatw[0]));
  LUT5 #(
    .INIT(32'h22200020)) 
    \bdatw[10]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\ir_rg_reg[4] ),
        .I2(\bdatw[15] [10]),
        .I3(\stat_reg[0]_1 ),
        .I4(\bdatw[15] [2]),
        .O(bdatw[10]));
  LUT5 #(
    .INIT(32'h22200020)) 
    \bdatw[11]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\ir_rg_reg[4] ),
        .I2(\bdatw[15] [11]),
        .I3(\stat_reg[0]_1 ),
        .I4(\bdatw[15] [3]),
        .O(bdatw[11]));
  LUT5 #(
    .INIT(32'h22200020)) 
    \bdatw[12]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\ir_rg_reg[4] ),
        .I2(\bdatw[15] [12]),
        .I3(\stat_reg[0]_1 ),
        .I4(\bdatw[15] [4]),
        .O(bdatw[12]));
  LUT5 #(
    .INIT(32'h22200020)) 
    \bdatw[13]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\ir_rg_reg[4] ),
        .I2(\bdatw[15] [13]),
        .I3(\stat_reg[0]_1 ),
        .I4(\bdatw[15] [5]),
        .O(bdatw[13]));
  LUT5 #(
    .INIT(32'h22200020)) 
    \bdatw[14]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\ir_rg_reg[4] ),
        .I2(\bdatw[15] [14]),
        .I3(\stat_reg[0]_1 ),
        .I4(\bdatw[15] [6]),
        .O(bdatw[14]));
  LUT5 #(
    .INIT(32'h22200020)) 
    \bdatw[15]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\ir_rg_reg[4] ),
        .I2(\bdatw[15] [15]),
        .I3(\stat_reg[0]_1 ),
        .I4(\bdatw[15] [7]),
        .O(bdatw[15]));
  LUT3 #(
    .INIT(8'h20)) 
    \bdatw[1]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\ir_rg_reg[4] ),
        .I2(\bdatw[15] [1]),
        .O(bdatw[1]));
  LUT3 #(
    .INIT(8'h20)) 
    \bdatw[2]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\ir_rg_reg[4] ),
        .I2(\bdatw[15] [2]),
        .O(bdatw[2]));
  LUT3 #(
    .INIT(8'h20)) 
    \bdatw[3]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\ir_rg_reg[4] ),
        .I2(\bdatw[15] [3]),
        .O(bdatw[3]));
  LUT3 #(
    .INIT(8'h20)) 
    \bdatw[4]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\ir_rg_reg[4] ),
        .I2(\bdatw[15] [4]),
        .O(bdatw[4]));
  LUT3 #(
    .INIT(8'h20)) 
    \bdatw[5]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\ir_rg_reg[4] ),
        .I2(\bdatw[15] [5]),
        .O(bdatw[5]));
  LUT3 #(
    .INIT(8'h20)) 
    \bdatw[6]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\ir_rg_reg[4] ),
        .I2(\bdatw[15] [6]),
        .O(bdatw[6]));
  LUT3 #(
    .INIT(8'h20)) 
    \bdatw[7]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\ir_rg_reg[4] ),
        .I2(\bdatw[15] [7]),
        .O(bdatw[7]));
  LUT5 #(
    .INIT(32'h22200020)) 
    \bdatw[8]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\ir_rg_reg[4] ),
        .I2(\bdatw[15] [8]),
        .I3(\stat_reg[0]_1 ),
        .I4(\bdatw[15] [0]),
        .O(bdatw[8]));
  LUT5 #(
    .INIT(32'h22200020)) 
    \bdatw[9]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\ir_rg_reg[4] ),
        .I2(\bdatw[15] [9]),
        .I3(\stat_reg[0]_1 ),
        .I4(\bdatw[15] [1]),
        .O(bdatw[9]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFC000)) 
    cbus_inferred_i_1
       (.I0(cbus_i[15]),
        .I1(O),
        .I2(cbus_inferred_i_17_n_0),
        .I3(\stat_reg[1]_0 ),
        .I4(\alu/p_0_in [15]),
        .I5(ctl_ccmd_sel),
        .O(\cbus_i[15] [15]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFCCCFC)) 
    cbus_inferred_i_10
       (.I0(cbus_i[6]),
        .I1(\alu/p_1_in [6]),
        .I2(cbus_inferred_i_47_n_0),
        .I3(ctl_acmd_0[3]),
        .I4(cbus_inferred_i_48_n_0),
        .I5(ctl_ccmd_sel),
        .O(\cbus_i[15] [6]));
  LUT5 #(
    .INIT(32'hE8FFE800)) 
    cbus_inferred_i_100
       (.I0(ctl_acmd_0[0]),
        .I1(\bdatw[15] [2]),
        .I2(\bbus_o[15] [2]),
        .I3(ctl_acmd_0[1]),
        .I4(\bdatw[15] [3]),
        .O(cbus_inferred_i_100_n_0));
  LUT5 #(
    .INIT(32'hA0CFAFC0)) 
    cbus_inferred_i_101
       (.I0(\bdatw[15] [1]),
        .I1(\bdatw[15] [10]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[15] [2]),
        .O(cbus_inferred_i_101_n_0));
  LUT5 #(
    .INIT(32'hA0CFAFC0)) 
    cbus_inferred_i_104
       (.I0(\bdatw[15] [0]),
        .I1(\bdatw[15] [9]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[15] [1]),
        .O(cbus_inferred_i_104_n_0));
  LUT5 #(
    .INIT(32'hE8FFE800)) 
    cbus_inferred_i_105
       (.I0(ctl_acmd_0[0]),
        .I1(\bdatw[15] [1]),
        .I2(\bbus_o[15] [1]),
        .I3(ctl_acmd_0[1]),
        .I4(\bdatw[15] [2]),
        .O(cbus_inferred_i_105_n_0));
  LUT6 #(
    .INIT(64'h8888B8BB88BBB888)) 
    cbus_inferred_i_106
       (.I0(cbus_inferred_i_122_n_0),
        .I1(ctl_acmd_0[2]),
        .I2(\bdatw[15] [8]),
        .I3(ctl_acmd_0[1]),
        .I4(ctl_acmd_0[0]),
        .I5(\bdatw[15] [0]),
        .O(cbus_inferred_i_106_n_0));
  LUT5 #(
    .INIT(32'h08000015)) 
    cbus_inferred_i_108
       (.I0(stat[1]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[4]),
        .I4(out[3]),
        .O(cbus_inferred_i_108_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFCCCFC)) 
    cbus_inferred_i_11
       (.I0(cbus_i[5]),
        .I1(\alu/p_1_in [5]),
        .I2(cbus_inferred_i_50_n_0),
        .I3(ctl_acmd_0[3]),
        .I4(cbus_inferred_i_51_n_0),
        .I5(ctl_ccmd_sel),
        .O(\cbus_i[15] [5]));
  MUXF7 cbus_inferred_i_111
       (.I0(cbus_inferred_i_123_n_0),
        .I1(cbus_inferred_i_124_n_0),
        .O(cbus_inferred_i_111_n_0),
        .S(out[1]));
  LUT5 #(
    .INIT(32'hFF6EAAFF)) 
    cbus_inferred_i_113
       (.I0(stat[1]),
        .I1(out[1]),
        .I2(crdy),
        .I3(out[5]),
        .I4(stat[0]),
        .O(cbus_inferred_i_113_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    cbus_inferred_i_115
       (.I0(\bdatw[15] [14]),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[15] [7]),
        .O(cbus_inferred_i_115_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cbus_inferred_i_117
       (.I0(stat[0]),
        .I1(out[6]),
        .O(cbus_inferred_i_117_n_0));
  LUT6 #(
    .INIT(64'h0075000024000400)) 
    cbus_inferred_i_118
       (.I0(out[3]),
        .I1(out[0]),
        .I2(out[4]),
        .I3(out[5]),
        .I4(stat[0]),
        .I5(out[6]),
        .O(cbus_inferred_i_118_n_0));
  LUT5 #(
    .INIT(32'hEFF7FFF7)) 
    cbus_inferred_i_119
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(stat[0]),
        .I4(crdy),
        .O(cbus_inferred_i_119_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFCCCFC)) 
    cbus_inferred_i_12
       (.I0(cbus_i[4]),
        .I1(\alu/p_1_in [4]),
        .I2(cbus_inferred_i_53_n_0),
        .I3(ctl_acmd_0[3]),
        .I4(cbus_inferred_i_54_n_0),
        .I5(ctl_ccmd_sel),
        .O(\cbus_i[15] [4]));
  LUT5 #(
    .INIT(32'hE8FFE800)) 
    cbus_inferred_i_122
       (.I0(ctl_acmd_0[0]),
        .I1(\bdatw[15] [0]),
        .I2(\bbus_o[15] [0]),
        .I3(ctl_acmd_0[1]),
        .I4(\bdatw[15] [1]),
        .O(cbus_inferred_i_122_n_0));
  LUT6 #(
    .INIT(64'h4040000008C30C00)) 
    cbus_inferred_i_123
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[4]),
        .I3(out[5]),
        .I4(stat[0]),
        .I5(out[3]),
        .O(cbus_inferred_i_123_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    cbus_inferred_i_124
       (.I0(stat[0]),
        .I1(out[4]),
        .I2(out[3]),
        .I3(out[2]),
        .I4(out[5]),
        .I5(out[0]),
        .O(cbus_inferred_i_124_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFCCCFC)) 
    cbus_inferred_i_13
       (.I0(cbus_i[3]),
        .I1(\alu/p_1_in [3]),
        .I2(cbus_inferred_i_56_n_0),
        .I3(ctl_acmd_0[3]),
        .I4(cbus_inferred_i_57_n_0),
        .I5(ctl_ccmd_sel),
        .O(\cbus_i[15] [3]));
  LUT5 #(
    .INIT(32'hAAAAFFC0)) 
    cbus_inferred_i_14
       (.I0(cbus_i[2]),
        .I1(cbus_inferred_i_58_n_0),
        .I2(\stat_reg[1]_0 ),
        .I3(\alu/p_0_in [2]),
        .I4(ctl_ccmd_sel),
        .O(\cbus_i[15] [2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFCCCFC)) 
    cbus_inferred_i_15
       (.I0(cbus_i[1]),
        .I1(\stk_ccmd_rg_reg[1] ),
        .I2(cbus_inferred_i_61_n_0),
        .I3(ctl_acmd_0[3]),
        .I4(cbus_inferred_i_62_n_0),
        .I5(ctl_ccmd_sel),
        .O(\cbus_i[15] [1]));
  LUT5 #(
    .INIT(32'hAAAAFFC0)) 
    cbus_inferred_i_16
       (.I0(cbus_i[0]),
        .I1(cbus_inferred_i_63_n_0),
        .I2(\stat_reg[1]_0 ),
        .I3(\alu/p_0_in [0]),
        .I4(ctl_ccmd_sel),
        .O(\cbus_i[15] [0]));
  LUT4 #(
    .INIT(16'hDFFF)) 
    cbus_inferred_i_17
       (.I0(ctl_acmd_0[0]),
        .I1(ctl_acmd_0[2]),
        .I2(ctl_acmd_0[3]),
        .I3(ctl_acmd_0[1]),
        .O(cbus_inferred_i_17_n_0));
  LUT4 #(
    .INIT(16'h7600)) 
    cbus_inferred_i_18
       (.I0(ctl_acmd_0[1]),
        .I1(ctl_acmd_0[2]),
        .I2(ctl_acmd_0[0]),
        .I3(ctl_acmd_0[3]),
        .O(\stat_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0014FFFF00140000)) 
    cbus_inferred_i_19
       (.I0(cbus_inferred_i_68_n_0),
        .I1(\bbus_o[15] [15]),
        .I2(\bdatw[15] [15]),
        .I3(cbus_inferred_i_69_n_0),
        .I4(ctl_acmd_0[3]),
        .I5(cbus_inferred_i_70_n_0),
        .O(\alu/p_0_in [15]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFCCCFC)) 
    cbus_inferred_i_2
       (.I0(cbus_i[14]),
        .I1(\alu/p_1_in [14]),
        .I2(cbus_inferred_i_22_n_0),
        .I3(ctl_acmd_0[3]),
        .I4(cbus_inferred_i_24_n_0),
        .I5(ctl_ccmd_sel),
        .O(\cbus_i[15] [14]));
  LUT4 #(
    .INIT(16'h4000)) 
    cbus_inferred_i_20
       (.I0(ctl_acmd_0[0]),
        .I1(ctl_acmd_0[2]),
        .I2(ctl_acmd_0[3]),
        .I3(ctl_acmd_0[1]),
        .O(ctl_ccmd_sel));
  LUT3 #(
    .INIT(8'h80)) 
    cbus_inferred_i_21
       (.I0(\stat_reg[1]_0 ),
        .I1(cbus_inferred_i_17_n_0),
        .I2(cbus_inferred_i_2_0[13]),
        .O(\alu/p_1_in [14]));
  MUXF7 cbus_inferred_i_22
       (.I0(cbus_inferred_i_71_n_0),
        .I1(cbus_inferred_i_72_n_0),
        .O(cbus_inferred_i_22_n_0),
        .S(ctl_acmd_0[2]));
  LUT4 #(
    .INIT(16'h0151)) 
    cbus_inferred_i_23
       (.I0(out[7]),
        .I1(cbus_inferred_i_73_n_0),
        .I2(stat[1]),
        .I3(cbus_inferred_i_74_n_0),
        .O(ctl_acmd_0[3]));
  LUT4 #(
    .INIT(16'h0014)) 
    cbus_inferred_i_24
       (.I0(cbus_inferred_i_68_n_0),
        .I1(\bbus_o[15] [14]),
        .I2(\bdatw[15] [14]),
        .I3(cbus_inferred_i_69_n_0),
        .O(cbus_inferred_i_24_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    cbus_inferred_i_25
       (.I0(\stat_reg[1]_0 ),
        .I1(cbus_inferred_i_17_n_0),
        .I2(cbus_inferred_i_2_0[12]),
        .O(\alu/p_1_in [13]));
  MUXF7 cbus_inferred_i_26
       (.I0(cbus_inferred_i_75_n_0),
        .I1(cbus_inferred_i_76_n_0),
        .O(cbus_inferred_i_26_n_0),
        .S(ctl_acmd_0[2]));
  LUT4 #(
    .INIT(16'h0014)) 
    cbus_inferred_i_27
       (.I0(cbus_inferred_i_68_n_0),
        .I1(\bbus_o[15] [13]),
        .I2(\bdatw[15] [13]),
        .I3(cbus_inferred_i_69_n_0),
        .O(cbus_inferred_i_27_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    cbus_inferred_i_28
       (.I0(\stat_reg[1]_0 ),
        .I1(cbus_inferred_i_17_n_0),
        .I2(cbus_inferred_i_2_0[11]),
        .O(\alu/p_1_in [12]));
  MUXF7 cbus_inferred_i_29
       (.I0(cbus_inferred_i_77_n_0),
        .I1(cbus_inferred_i_78_n_0),
        .O(cbus_inferred_i_29_n_0),
        .S(ctl_acmd_0[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFCCCFC)) 
    cbus_inferred_i_3
       (.I0(cbus_i[13]),
        .I1(\alu/p_1_in [13]),
        .I2(cbus_inferred_i_26_n_0),
        .I3(ctl_acmd_0[3]),
        .I4(cbus_inferred_i_27_n_0),
        .I5(ctl_ccmd_sel),
        .O(\cbus_i[15] [13]));
  LUT4 #(
    .INIT(16'h0014)) 
    cbus_inferred_i_30
       (.I0(cbus_inferred_i_68_n_0),
        .I1(\bbus_o[15] [12]),
        .I2(\bdatw[15] [12]),
        .I3(cbus_inferred_i_69_n_0),
        .O(cbus_inferred_i_30_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    cbus_inferred_i_31
       (.I0(\stat_reg[1]_0 ),
        .I1(cbus_inferred_i_17_n_0),
        .I2(cbus_inferred_i_2_0[10]),
        .O(\alu/p_1_in [11]));
  MUXF7 cbus_inferred_i_32
       (.I0(cbus_inferred_i_79_n_0),
        .I1(cbus_inferred_i_80_n_0),
        .O(cbus_inferred_i_32_n_0),
        .S(ctl_acmd_0[2]));
  LUT4 #(
    .INIT(16'h0014)) 
    cbus_inferred_i_33
       (.I0(cbus_inferred_i_68_n_0),
        .I1(\bbus_o[15] [11]),
        .I2(\bdatw[15] [11]),
        .I3(cbus_inferred_i_69_n_0),
        .O(cbus_inferred_i_33_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    cbus_inferred_i_34
       (.I0(\stat_reg[1]_0 ),
        .I1(cbus_inferred_i_17_n_0),
        .I2(cbus_inferred_i_2_0[9]),
        .O(\alu/p_1_in [10]));
  MUXF7 cbus_inferred_i_35
       (.I0(cbus_inferred_i_81_n_0),
        .I1(cbus_inferred_i_82_n_0),
        .O(cbus_inferred_i_35_n_0),
        .S(ctl_acmd_0[2]));
  LUT4 #(
    .INIT(16'h0014)) 
    cbus_inferred_i_36
       (.I0(cbus_inferred_i_68_n_0),
        .I1(\bbus_o[15] [10]),
        .I2(\bdatw[15] [10]),
        .I3(cbus_inferred_i_69_n_0),
        .O(cbus_inferred_i_36_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    cbus_inferred_i_37
       (.I0(\stat_reg[1]_0 ),
        .I1(cbus_inferred_i_17_n_0),
        .I2(cbus_inferred_i_2_0[8]),
        .O(\alu/p_1_in [9]));
  MUXF7 cbus_inferred_i_38
       (.I0(cbus_inferred_i_83_n_0),
        .I1(cbus_inferred_i_84_n_0),
        .O(cbus_inferred_i_38_n_0),
        .S(ctl_acmd_0[2]));
  LUT4 #(
    .INIT(16'h0014)) 
    cbus_inferred_i_39
       (.I0(cbus_inferred_i_68_n_0),
        .I1(\bbus_o[15] [9]),
        .I2(\bdatw[15] [9]),
        .I3(cbus_inferred_i_69_n_0),
        .O(cbus_inferred_i_39_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFCCCFC)) 
    cbus_inferred_i_4
       (.I0(cbus_i[12]),
        .I1(\alu/p_1_in [12]),
        .I2(cbus_inferred_i_29_n_0),
        .I3(ctl_acmd_0[3]),
        .I4(cbus_inferred_i_30_n_0),
        .I5(ctl_ccmd_sel),
        .O(\cbus_i[15] [12]));
  LUT3 #(
    .INIT(8'h80)) 
    cbus_inferred_i_40
       (.I0(\stat_reg[1]_0 ),
        .I1(cbus_inferred_i_17_n_0),
        .I2(cbus_inferred_i_2_0[7]),
        .O(\alu/p_1_in [8]));
  MUXF7 cbus_inferred_i_41
       (.I0(cbus_inferred_i_85_n_0),
        .I1(cbus_inferred_i_86_n_0),
        .O(cbus_inferred_i_41_n_0),
        .S(ctl_acmd_0[2]));
  LUT4 #(
    .INIT(16'h0014)) 
    cbus_inferred_i_42
       (.I0(cbus_inferred_i_68_n_0),
        .I1(\bbus_o[15] [8]),
        .I2(\bdatw[15] [8]),
        .I3(cbus_inferred_i_69_n_0),
        .O(cbus_inferred_i_42_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    cbus_inferred_i_43
       (.I0(\stat_reg[1]_0 ),
        .I1(cbus_inferred_i_17_n_0),
        .I2(cbus_inferred_i_2_0[6]),
        .O(\alu/p_1_in [7]));
  MUXF7 cbus_inferred_i_44
       (.I0(cbus_inferred_i_87_n_0),
        .I1(cbus_inferred_i_88_n_0),
        .O(cbus_inferred_i_44_n_0),
        .S(ctl_acmd_0[2]));
  LUT4 #(
    .INIT(16'h0014)) 
    cbus_inferred_i_45
       (.I0(cbus_inferred_i_68_n_0),
        .I1(\bbus_o[15] [7]),
        .I2(\bdatw[15] [7]),
        .I3(cbus_inferred_i_69_n_0),
        .O(cbus_inferred_i_45_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    cbus_inferred_i_46
       (.I0(\stat_reg[1]_0 ),
        .I1(cbus_inferred_i_17_n_0),
        .I2(cbus_inferred_i_2_0[5]),
        .O(\alu/p_1_in [6]));
  MUXF7 cbus_inferred_i_47
       (.I0(cbus_inferred_i_89_n_0),
        .I1(cbus_inferred_i_90_n_0),
        .O(cbus_inferred_i_47_n_0),
        .S(ctl_acmd_0[2]));
  LUT4 #(
    .INIT(16'h0014)) 
    cbus_inferred_i_48
       (.I0(cbus_inferred_i_68_n_0),
        .I1(\bbus_o[15] [6]),
        .I2(\bdatw[15] [6]),
        .I3(cbus_inferred_i_69_n_0),
        .O(cbus_inferred_i_48_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    cbus_inferred_i_49
       (.I0(\stat_reg[1]_0 ),
        .I1(cbus_inferred_i_17_n_0),
        .I2(cbus_inferred_i_2_0[4]),
        .O(\alu/p_1_in [5]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFCCCFC)) 
    cbus_inferred_i_5
       (.I0(cbus_i[11]),
        .I1(\alu/p_1_in [11]),
        .I2(cbus_inferred_i_32_n_0),
        .I3(ctl_acmd_0[3]),
        .I4(cbus_inferred_i_33_n_0),
        .I5(ctl_ccmd_sel),
        .O(\cbus_i[15] [11]));
  MUXF7 cbus_inferred_i_50
       (.I0(cbus_inferred_i_91_n_0),
        .I1(cbus_inferred_i_92_n_0),
        .O(cbus_inferred_i_50_n_0),
        .S(ctl_acmd_0[2]));
  LUT4 #(
    .INIT(16'h0014)) 
    cbus_inferred_i_51
       (.I0(cbus_inferred_i_68_n_0),
        .I1(\bbus_o[15] [5]),
        .I2(\bdatw[15] [5]),
        .I3(cbus_inferred_i_69_n_0),
        .O(cbus_inferred_i_51_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    cbus_inferred_i_52
       (.I0(\stat_reg[1]_0 ),
        .I1(cbus_inferred_i_2_0[3]),
        .I2(\stat_reg[1]_1 ),
        .I3(O),
        .O(\alu/p_1_in [4]));
  MUXF7 cbus_inferred_i_53
       (.I0(cbus_inferred_i_94_n_0),
        .I1(cbus_inferred_i_95_n_0),
        .O(cbus_inferred_i_53_n_0),
        .S(ctl_acmd_0[2]));
  LUT4 #(
    .INIT(16'h0014)) 
    cbus_inferred_i_54
       (.I0(cbus_inferred_i_68_n_0),
        .I1(\bbus_o[15] [4]),
        .I2(\bdatw[15] [4]),
        .I3(cbus_inferred_i_69_n_0),
        .O(cbus_inferred_i_54_n_0));
  LUT5 #(
    .INIT(32'h08A8A808)) 
    cbus_inferred_i_55
       (.I0(\stat_reg[1]_0 ),
        .I1(cbus_inferred_i_2_0[2]),
        .I2(\stat_reg[1]_1 ),
        .I3(cbus_inferred_i_13_0),
        .I4(\alu/art/cin__0 ),
        .O(\alu/p_1_in [3]));
  MUXF7 cbus_inferred_i_56
       (.I0(cbus_inferred_i_96_n_0),
        .I1(cbus_inferred_i_97_n_0),
        .O(cbus_inferred_i_56_n_0),
        .S(ctl_acmd_0[2]));
  LUT4 #(
    .INIT(16'h0014)) 
    cbus_inferred_i_57
       (.I0(cbus_inferred_i_68_n_0),
        .I1(\bbus_o[15] [3]),
        .I2(\bdatw[15] [3]),
        .I3(cbus_inferred_i_69_n_0),
        .O(cbus_inferred_i_57_n_0));
  LUT6 #(
    .INIT(64'h02D0FFFF02D00000)) 
    cbus_inferred_i_58
       (.I0(\bdatw[15] [15]),
        .I1(tout__1_carry_i_9_n_0),
        .I2(O),
        .I3(\alu/inb ),
        .I4(\stat_reg[1]_1 ),
        .I5(cbus_inferred_i_2_0[1]),
        .O(cbus_inferred_i_58_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    cbus_inferred_i_59
       (.I0(cbus_inferred_i_99_n_0),
        .I1(ctl_acmd_0[3]),
        .I2(cbus_inferred_i_100_n_0),
        .I3(ctl_acmd_0[2]),
        .I4(cbus_inferred_i_101_n_0),
        .O(\alu/p_0_in [2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFCCCFC)) 
    cbus_inferred_i_6
       (.I0(cbus_i[10]),
        .I1(\alu/p_1_in [10]),
        .I2(cbus_inferred_i_35_n_0),
        .I3(ctl_acmd_0[3]),
        .I4(cbus_inferred_i_36_n_0),
        .I5(ctl_ccmd_sel),
        .O(\cbus_i[15] [10]));
  MUXF7 cbus_inferred_i_61
       (.I0(cbus_inferred_i_104_n_0),
        .I1(cbus_inferred_i_105_n_0),
        .O(cbus_inferred_i_61_n_0),
        .S(ctl_acmd_0[2]));
  LUT5 #(
    .INIT(32'h00000014)) 
    cbus_inferred_i_62
       (.I0(ctl_acmd_0[0]),
        .I1(\bbus_o[15] [1]),
        .I2(\bdatw[15] [1]),
        .I3(ctl_acmd_0[2]),
        .I4(ctl_acmd_0[1]),
        .O(cbus_inferred_i_62_n_0));
  LUT6 #(
    .INIT(64'hBA20FFFFBA200000)) 
    cbus_inferred_i_63
       (.I0(\alu/inb ),
        .I1(tout__1_carry_i_9_n_0),
        .I2(\bdatw[15] [15]),
        .I3(O),
        .I4(\stat_reg[1]_1 ),
        .I5(cbus_inferred_i_2_0[0]),
        .O(cbus_inferred_i_63_n_0));
  LUT6 #(
    .INIT(64'h0014FFFF00140000)) 
    cbus_inferred_i_64
       (.I0(cbus_inferred_i_68_n_0),
        .I1(\bbus_o[15] [0]),
        .I2(\bdatw[15] [0]),
        .I3(cbus_inferred_i_69_n_0),
        .I4(ctl_acmd_0[3]),
        .I5(cbus_inferred_i_106_n_0),
        .O(\alu/p_0_in [0]));
  LUT6 #(
    .INIT(64'h008000800080AA80)) 
    cbus_inferred_i_65
       (.I0(cbus_inferred_i_98_0),
        .I1(cbus_inferred_i_108_n_0),
        .I2(cbus_inferred_i_98_1),
        .I3(stat[0]),
        .I4(cbus_inferred_i_98_2),
        .I5(stat[1]),
        .O(ctl_acmd_0[0]));
  LUT6 #(
    .INIT(64'h0000044055550440)) 
    cbus_inferred_i_66
       (.I0(out[7]),
        .I1(cbus_inferred_i_111_n_0),
        .I2(out[5]),
        .I3(out[6]),
        .I4(stat[1]),
        .I5(cbus_inferred_i_74_n_0),
        .O(ctl_acmd_0[2]));
  LUT5 #(
    .INIT(32'h00010000)) 
    cbus_inferred_i_67
       (.I0(cbus_inferred_i_98_3),
        .I1(cbus_inferred_i_113_n_0),
        .I2(out[4]),
        .I3(out[7]),
        .I4(cbus_inferred_i_98_4),
        .O(ctl_acmd_0[1]));
  LUT3 #(
    .INIT(8'hBA)) 
    cbus_inferred_i_68
       (.I0(ctl_acmd_0[2]),
        .I1(ctl_acmd_0[1]),
        .I2(ctl_acmd_0[0]),
        .O(cbus_inferred_i_68_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cbus_inferred_i_69
       (.I0(ctl_acmd_0[1]),
        .I1(ctl_acmd_0[2]),
        .O(cbus_inferred_i_69_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFCCCFC)) 
    cbus_inferred_i_7
       (.I0(cbus_i[9]),
        .I1(\alu/p_1_in [9]),
        .I2(cbus_inferred_i_38_n_0),
        .I3(ctl_acmd_0[3]),
        .I4(cbus_inferred_i_39_n_0),
        .I5(ctl_ccmd_sel),
        .O(\cbus_i[15] [9]));
  LUT6 #(
    .INIT(64'hFCCCB833B8333000)) 
    cbus_inferred_i_70
       (.I0(\bbus_o[15] [15]),
        .I1(ctl_acmd_0[2]),
        .I2(cbus_inferred_i_115_n_0),
        .I3(ctl_acmd_0[1]),
        .I4(ctl_acmd_0[0]),
        .I5(\bdatw[15] [15]),
        .O(cbus_inferred_i_70_n_0));
  LUT5 #(
    .INIT(32'hA0CFAFC0)) 
    cbus_inferred_i_71
       (.I0(\bdatw[15] [13]),
        .I1(\bdatw[15] [6]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[15] [14]),
        .O(cbus_inferred_i_71_n_0));
  LUT5 #(
    .INIT(32'hE8FFE800)) 
    cbus_inferred_i_72
       (.I0(ctl_acmd_0[0]),
        .I1(\bdatw[15] [14]),
        .I2(\bbus_o[15] [14]),
        .I3(ctl_acmd_0[1]),
        .I4(\bdatw[15] [15]),
        .O(cbus_inferred_i_72_n_0));
  LUT6 #(
    .INIT(64'hFF00BFFFFFFFBFFF)) 
    cbus_inferred_i_73
       (.I0(out[5]),
        .I1(cbus_inferred_i_23_0),
        .I2(cbus_inferred_i_117_n_0),
        .I3(out[1]),
        .I4(out[2]),
        .I5(cbus_inferred_i_118_n_0),
        .O(cbus_inferred_i_73_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7E)) 
    cbus_inferred_i_74
       (.I0(out[3]),
        .I1(out[4]),
        .I2(out[6]),
        .I3(out[5]),
        .I4(out[0]),
        .I5(cbus_inferred_i_119_n_0),
        .O(cbus_inferred_i_74_n_0));
  LUT5 #(
    .INIT(32'hA0CFAFC0)) 
    cbus_inferred_i_75
       (.I0(\bdatw[15] [12]),
        .I1(\bdatw[15] [5]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[15] [13]),
        .O(cbus_inferred_i_75_n_0));
  LUT5 #(
    .INIT(32'hE8FFE800)) 
    cbus_inferred_i_76
       (.I0(ctl_acmd_0[0]),
        .I1(\bdatw[15] [13]),
        .I2(\bbus_o[15] [13]),
        .I3(ctl_acmd_0[1]),
        .I4(\bdatw[15] [14]),
        .O(cbus_inferred_i_76_n_0));
  LUT5 #(
    .INIT(32'hA0CFAFC0)) 
    cbus_inferred_i_77
       (.I0(\bdatw[15] [11]),
        .I1(\bdatw[15] [4]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[15] [12]),
        .O(cbus_inferred_i_77_n_0));
  LUT5 #(
    .INIT(32'hE8FFE800)) 
    cbus_inferred_i_78
       (.I0(ctl_acmd_0[0]),
        .I1(\bdatw[15] [12]),
        .I2(\bbus_o[15] [12]),
        .I3(ctl_acmd_0[1]),
        .I4(\bdatw[15] [13]),
        .O(cbus_inferred_i_78_n_0));
  LUT5 #(
    .INIT(32'hA0CFAFC0)) 
    cbus_inferred_i_79
       (.I0(\bdatw[15] [10]),
        .I1(\bdatw[15] [3]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[15] [11]),
        .O(cbus_inferred_i_79_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFCCCFC)) 
    cbus_inferred_i_8
       (.I0(cbus_i[8]),
        .I1(\alu/p_1_in [8]),
        .I2(cbus_inferred_i_41_n_0),
        .I3(ctl_acmd_0[3]),
        .I4(cbus_inferred_i_42_n_0),
        .I5(ctl_ccmd_sel),
        .O(\cbus_i[15] [8]));
  LUT5 #(
    .INIT(32'hE8FFE800)) 
    cbus_inferred_i_80
       (.I0(ctl_acmd_0[0]),
        .I1(\bdatw[15] [11]),
        .I2(\bbus_o[15] [11]),
        .I3(ctl_acmd_0[1]),
        .I4(\bdatw[15] [12]),
        .O(cbus_inferred_i_80_n_0));
  LUT5 #(
    .INIT(32'hA0CFAFC0)) 
    cbus_inferred_i_81
       (.I0(\bdatw[15] [9]),
        .I1(\bdatw[15] [2]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[15] [10]),
        .O(cbus_inferred_i_81_n_0));
  LUT5 #(
    .INIT(32'hE8FFE800)) 
    cbus_inferred_i_82
       (.I0(ctl_acmd_0[0]),
        .I1(\bdatw[15] [10]),
        .I2(\bbus_o[15] [10]),
        .I3(ctl_acmd_0[1]),
        .I4(\bdatw[15] [11]),
        .O(cbus_inferred_i_82_n_0));
  LUT5 #(
    .INIT(32'hA0CFAFC0)) 
    cbus_inferred_i_83
       (.I0(\bdatw[15] [8]),
        .I1(\bdatw[15] [1]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[15] [9]),
        .O(cbus_inferred_i_83_n_0));
  LUT5 #(
    .INIT(32'hE8FFE800)) 
    cbus_inferred_i_84
       (.I0(ctl_acmd_0[0]),
        .I1(\bdatw[15] [9]),
        .I2(\bbus_o[15] [9]),
        .I3(ctl_acmd_0[1]),
        .I4(\bdatw[15] [10]),
        .O(cbus_inferred_i_84_n_0));
  LUT5 #(
    .INIT(32'hA0CFAFC0)) 
    cbus_inferred_i_85
       (.I0(\bdatw[15] [7]),
        .I1(\bdatw[15] [0]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[15] [8]),
        .O(cbus_inferred_i_85_n_0));
  LUT5 #(
    .INIT(32'hE8FFE800)) 
    cbus_inferred_i_86
       (.I0(ctl_acmd_0[0]),
        .I1(\bdatw[15] [8]),
        .I2(\bbus_o[15] [8]),
        .I3(ctl_acmd_0[1]),
        .I4(\bdatw[15] [9]),
        .O(cbus_inferred_i_86_n_0));
  LUT5 #(
    .INIT(32'hA0CFAFC0)) 
    cbus_inferred_i_87
       (.I0(\bdatw[15] [6]),
        .I1(\bdatw[15] [15]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[15] [7]),
        .O(cbus_inferred_i_87_n_0));
  LUT5 #(
    .INIT(32'hE8FFE800)) 
    cbus_inferred_i_88
       (.I0(ctl_acmd_0[0]),
        .I1(\bdatw[15] [7]),
        .I2(\bbus_o[15] [7]),
        .I3(ctl_acmd_0[1]),
        .I4(\bdatw[15] [8]),
        .O(cbus_inferred_i_88_n_0));
  LUT5 #(
    .INIT(32'hA0CFAFC0)) 
    cbus_inferred_i_89
       (.I0(\bdatw[15] [5]),
        .I1(\bdatw[15] [14]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[15] [6]),
        .O(cbus_inferred_i_89_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFCCCFC)) 
    cbus_inferred_i_9
       (.I0(cbus_i[7]),
        .I1(\alu/p_1_in [7]),
        .I2(cbus_inferred_i_44_n_0),
        .I3(ctl_acmd_0[3]),
        .I4(cbus_inferred_i_45_n_0),
        .I5(ctl_ccmd_sel),
        .O(\cbus_i[15] [7]));
  LUT5 #(
    .INIT(32'hE8FFE800)) 
    cbus_inferred_i_90
       (.I0(ctl_acmd_0[0]),
        .I1(\bdatw[15] [6]),
        .I2(\bbus_o[15] [6]),
        .I3(ctl_acmd_0[1]),
        .I4(\bdatw[15] [7]),
        .O(cbus_inferred_i_90_n_0));
  LUT5 #(
    .INIT(32'hA0CFAFC0)) 
    cbus_inferred_i_91
       (.I0(\bdatw[15] [4]),
        .I1(\bdatw[15] [13]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[15] [5]),
        .O(cbus_inferred_i_91_n_0));
  LUT5 #(
    .INIT(32'hE8FFE800)) 
    cbus_inferred_i_92
       (.I0(ctl_acmd_0[0]),
        .I1(\bdatw[15] [5]),
        .I2(\bbus_o[15] [5]),
        .I3(ctl_acmd_0[1]),
        .I4(\bdatw[15] [6]),
        .O(cbus_inferred_i_92_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    cbus_inferred_i_93
       (.I0(ctl_acmd_0[3]),
        .I1(ctl_acmd_0[0]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[2]),
        .O(\stat_reg[1]_1 ));
  LUT5 #(
    .INIT(32'hA0CFAFC0)) 
    cbus_inferred_i_94
       (.I0(\bdatw[15] [3]),
        .I1(\bdatw[15] [12]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[15] [4]),
        .O(cbus_inferred_i_94_n_0));
  LUT5 #(
    .INIT(32'hE8FFE800)) 
    cbus_inferred_i_95
       (.I0(ctl_acmd_0[0]),
        .I1(\bdatw[15] [4]),
        .I2(\bbus_o[15] [4]),
        .I3(ctl_acmd_0[1]),
        .I4(\bdatw[15] [5]),
        .O(cbus_inferred_i_95_n_0));
  LUT5 #(
    .INIT(32'hA0CFAFC0)) 
    cbus_inferred_i_96
       (.I0(\bdatw[15] [2]),
        .I1(\bdatw[15] [11]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[15] [3]),
        .O(cbus_inferred_i_96_n_0));
  LUT5 #(
    .INIT(32'hE8FFE800)) 
    cbus_inferred_i_97
       (.I0(ctl_acmd_0[0]),
        .I1(\bdatw[15] [3]),
        .I2(\bbus_o[15] [3]),
        .I3(ctl_acmd_0[1]),
        .I4(\bdatw[15] [4]),
        .O(cbus_inferred_i_97_n_0));
  LUT5 #(
    .INIT(32'hE5FF1A00)) 
    cbus_inferred_i_98
       (.I0(ctl_acmd_0[1]),
        .I1(ctl_acmd_0[0]),
        .I2(ctl_acmd_0[2]),
        .I3(ctl_acmd_0[3]),
        .I4(\bbus_o[15] [15]),
        .O(\alu/inb ));
  LUT5 #(
    .INIT(32'h00000014)) 
    cbus_inferred_i_99
       (.I0(ctl_acmd_0[0]),
        .I1(\bbus_o[15] [2]),
        .I2(\bdatw[15] [2]),
        .I3(ctl_acmd_0[2]),
        .I4(ctl_acmd_0[1]),
        .O(cbus_inferred_i_99_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[0]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(Q[0]),
        .O(ccmd[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[1]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(Q[1]),
        .O(ccmd[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[2]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(Q[2]),
        .O(ccmd[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[3]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(Q[3]),
        .O(ccmd[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[4]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(Q[4]),
        .O(ccmd[4]));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \ccmd[4]_INST_0_i_1 
       (.I0(crdy),
        .I1(\bcmd[0] ),
        .I2(\ccmd[4]_INST_0_i_2_n_0 ),
        .I3(stat[1]),
        .I4(out[1]),
        .I5(\stk_ccmd_rg_reg[4] ),
        .O(ctl_ccmd_en));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[4]_INST_0_i_2 
       (.I0(stat[0]),
        .I1(out[0]),
        .O(\ccmd[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEFF)) 
    ctl_fetch_rg_i_1
       (.I0(ctl_fetch_rg_reg),
        .I1(ctl_fetch_rg_i_3_n_0),
        .I2(ctl_fetch_rg_i_4_n_0),
        .I3(ctl_fetch_rg_reg_0),
        .I4(out[6]),
        .O(in0));
  LUT6 #(
    .INIT(64'hE0E000E0A0A000A0)) 
    ctl_fetch_rg_i_3
       (.I0(ctl_fetch_rg_i_7_n_0),
        .I1(ctl_fetch_rg_reg_1),
        .I2(stat[0]),
        .I3(stat[1]),
        .I4(crdy),
        .I5(out[2]),
        .O(ctl_fetch_rg_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFEAFFEAEEEAFFEA)) 
    ctl_fetch_rg_i_4
       (.I0(out[7]),
        .I1(out[6]),
        .I2(out[5]),
        .I3(stat[1]),
        .I4(out[1]),
        .I5(out[0]),
        .O(ctl_fetch_rg_i_4_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFF00000000)) 
    ctl_fetch_rg_i_7
       (.I0(brdy),
        .I1(stat[1]),
        .I2(abus_inferred_i_6_0),
        .I3(out[3]),
        .I4(out[4]),
        .I5(ctl_fetch_rg_i_9_n_0),
        .O(ctl_fetch_rg_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFBFFFFFEEAF)) 
    ctl_fetch_rg_i_9
       (.I0(out[5]),
        .I1(out[4]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(stat[1]),
        .I5(out[6]),
        .O(ctl_fetch_rg_i_9_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ivec[15]_i_1 
       (.I0(\bcmd[0] ),
        .I1(\ivec_reg[15] ),
        .I2(stat[1]),
        .I3(out[3]),
        .I4(out[0]),
        .I5(stat[0]),
        .O(\stat_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hBBBB8BBB88888888)) 
    mem_reg_0_63_0_0_i_1
       (.I0(mem_reg_0_63_0_0_i_8_n_0),
        .I1(mem_reg_0_63_0_0_i_9_n_0),
        .I2(stat[0]),
        .I3(stat[1]),
        .I4(crdy),
        .I5(mem_reg_0_63_0_0_i_10_n_0),
        .O(ctl_push));
  LUT6 #(
    .INIT(64'h0091FFFF00910000)) 
    mem_reg_0_63_0_0_i_10
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(mem_reg_0_63_0_0_i_18_n_0),
        .I4(stat[0]),
        .I5(mem_reg_0_63_0_0_i_19_n_0),
        .O(mem_reg_0_63_0_0_i_10_n_0));
  LUT5 #(
    .INIT(32'h00530000)) 
    mem_reg_0_63_0_0_i_11
       (.I0(stat[0]),
        .I1(out[5]),
        .I2(out[7]),
        .I3(stat[1]),
        .I4(mem_reg_0_63_0_0_i_20_n_0),
        .O(mem_reg_0_63_0_0_i_11_n_0));
  LUT6 #(
    .INIT(64'h0D0D0D0000000D00)) 
    mem_reg_0_63_0_0_i_12
       (.I0(stat[1]),
        .I1(crdy),
        .I2(out[7]),
        .I3(mem_reg_0_63_0_0_i_21_n_0),
        .I4(out[3]),
        .I5(mem_reg_0_63_0_0_i_22_n_0),
        .O(mem_reg_0_63_0_0_i_12_n_0));
  MUXF7 mem_reg_0_63_0_0_i_13
       (.I0(mem_reg_0_63_0_0_i_23_n_0),
        .I1(mem_reg_0_63_0_0_i_11_n_0),
        .O(\ir_rg_reg[6] ),
        .S(out[6]));
  LUT6 #(
    .INIT(64'hFFFFFBBBF9B9FBBB)) 
    mem_reg_0_63_0_0_i_18
       (.I0(stat[1]),
        .I1(out[6]),
        .I2(out[0]),
        .I3(out[3]),
        .I4(out[1]),
        .I5(out[2]),
        .O(mem_reg_0_63_0_0_i_18_n_0));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    mem_reg_0_63_0_0_i_19
       (.I0(out[0]),
        .I1(out[4]),
        .I2(out[1]),
        .I3(out[6]),
        .I4(stat[1]),
        .I5(mem_reg_0_63_0_0_i_10_0),
        .O(mem_reg_0_63_0_0_i_19_n_0));
  LUT6 #(
    .INIT(64'hACAAACAAACAAACCC)) 
    mem_reg_0_63_0_0_i_2
       (.I0(sptr_dec[0]),
        .I1(abus_inferred_i_18_0[0]),
        .I2(mem_reg_0_63_0_0_i_11_n_0),
        .I3(out[6]),
        .I4(ctl_sldi),
        .I5(mem_reg_0_63_0_0_i_12_n_0),
        .O(rgf_sp_0[0]));
  LUT6 #(
    .INIT(64'h5775557F7775557F)) 
    mem_reg_0_63_0_0_i_20
       (.I0(stat[0]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(out[3]),
        .I4(out[4]),
        .I5(out[0]),
        .O(mem_reg_0_63_0_0_i_20_n_0));
  MUXF7 mem_reg_0_63_0_0_i_21
       (.I0(mem_reg_0_63_0_0_i_25_n_0),
        .I1(mem_reg_0_63_0_0_i_26_n_0),
        .O(mem_reg_0_63_0_0_i_21_n_0),
        .S(out[4]));
  LUT5 #(
    .INIT(32'h00000008)) 
    mem_reg_0_63_0_0_i_22
       (.I0(out[5]),
        .I1(out[4]),
        .I2(out[1]),
        .I3(stat[1]),
        .I4(stat[0]),
        .O(mem_reg_0_63_0_0_i_22_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEFEA)) 
    mem_reg_0_63_0_0_i_23
       (.I0(ctl_sldi),
        .I1(mem_reg_0_63_0_0_i_22_n_0),
        .I2(out[3]),
        .I3(mem_reg_0_63_0_0_i_21_n_0),
        .I4(out[7]),
        .I5(mem_reg_0_63_0_0_i_27_n_0),
        .O(mem_reg_0_63_0_0_i_23_n_0));
  LUT6 #(
    .INIT(64'h00000100010023AA)) 
    mem_reg_0_63_0_0_i_25
       (.I0(out[5]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(stat[0]),
        .I5(stat[1]),
        .O(mem_reg_0_63_0_0_i_25_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    mem_reg_0_63_0_0_i_26
       (.I0(stat[1]),
        .I1(stat[0]),
        .I2(out[5]),
        .I3(out[2]),
        .O(mem_reg_0_63_0_0_i_26_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_63_0_0_i_27
       (.I0(stat[1]),
        .I1(crdy),
        .O(mem_reg_0_63_0_0_i_27_n_0));
  LUT6 #(
    .INIT(64'hACAAACAAACAAACCC)) 
    mem_reg_0_63_0_0_i_4
       (.I0(sptr_dec[1]),
        .I1(abus_inferred_i_18_0[1]),
        .I2(mem_reg_0_63_0_0_i_11_n_0),
        .I3(out[6]),
        .I4(ctl_sldi),
        .I5(mem_reg_0_63_0_0_i_12_n_0),
        .O(rgf_sp_0[1]));
  LUT6 #(
    .INIT(64'hACAAACAAACAAACCC)) 
    mem_reg_0_63_0_0_i_5
       (.I0(sptr_dec[2]),
        .I1(abus_inferred_i_18_0[2]),
        .I2(mem_reg_0_63_0_0_i_11_n_0),
        .I3(out[6]),
        .I4(ctl_sldi),
        .I5(mem_reg_0_63_0_0_i_12_n_0),
        .O(rgf_sp_0[2]));
  LUT6 #(
    .INIT(64'hACAAACAAACAAACCC)) 
    mem_reg_0_63_0_0_i_6
       (.I0(sptr_dec[3]),
        .I1(abus_inferred_i_18_0[3]),
        .I2(mem_reg_0_63_0_0_i_11_n_0),
        .I3(out[6]),
        .I4(ctl_sldi),
        .I5(mem_reg_0_63_0_0_i_12_n_0),
        .O(rgf_sp_0[3]));
  LUT6 #(
    .INIT(64'hACAAACAAACAAACCC)) 
    mem_reg_0_63_0_0_i_7
       (.I0(sptr_dec[4]),
        .I1(abus_inferred_i_18_0[4]),
        .I2(mem_reg_0_63_0_0_i_11_n_0),
        .I3(out[6]),
        .I4(ctl_sldi),
        .I5(mem_reg_0_63_0_0_i_12_n_0),
        .O(rgf_sp_0[4]));
  LUT6 #(
    .INIT(64'h0E0E0F0000000F00)) 
    mem_reg_0_63_0_0_i_8
       (.I0(brdy),
        .I1(out[2]),
        .I2(stat[1]),
        .I3(mem_reg_0_63_0_0_i_1_2),
        .I4(stat[0]),
        .I5(mem_reg_0_63_0_0_i_1_3),
        .O(mem_reg_0_63_0_0_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    mem_reg_0_63_0_0_i_9
       (.I0(rgf_ie),
        .I1(irq),
        .I2(stat[0]),
        .I3(out[0]),
        .I4(mem_reg_0_63_0_0_i_1_1),
        .I5(mem_reg_0_63_0_0_i_1_0),
        .O(mem_reg_0_63_0_0_i_9_n_0));
  LUT4 #(
    .INIT(16'hEF40)) 
    \pcnt[11]_i_2 
       (.I0(\pcnt_reg[15]_1 ),
        .I1(\pcnt[11]_i_6_n_0 ),
        .I2(ctl_setpc),
        .I3(\pcnt_reg[15]_0 [11]),
        .O(\pcnt[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \pcnt[11]_i_3 
       (.I0(\pcnt_reg[15]_1 ),
        .I1(\pcnt[11]_i_7_n_0 ),
        .I2(ctl_setpc),
        .I3(\pcnt_reg[15]_0 [10]),
        .O(\pcnt[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \pcnt[11]_i_4 
       (.I0(\pcnt_reg[15]_1 ),
        .I1(\pcnt[11]_i_8_n_0 ),
        .I2(ctl_setpc),
        .I3(\pcnt_reg[15]_0 [9]),
        .O(\pcnt[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \pcnt[11]_i_5 
       (.I0(\pcnt_reg[15]_1 ),
        .I1(\pcnt[11]_i_9_n_0 ),
        .I2(ctl_setpc),
        .I3(\pcnt_reg[15]_0 [8]),
        .O(\pcnt[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pcnt[11]_i_6 
       (.I0(\pcnt[15]_i_2_0 [11]),
        .I1(ctl_clrie),
        .I2(abus_inferred_i_1_0[11]),
        .I3(ctl_selpc),
        .I4(I7[11]),
        .O(\pcnt[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pcnt[11]_i_7 
       (.I0(\pcnt[15]_i_2_0 [10]),
        .I1(ctl_clrie),
        .I2(abus_inferred_i_1_0[10]),
        .I3(ctl_selpc),
        .I4(I7[10]),
        .O(\pcnt[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pcnt[11]_i_8 
       (.I0(\pcnt[15]_i_2_0 [9]),
        .I1(ctl_clrie),
        .I2(abus_inferred_i_1_0[9]),
        .I3(ctl_selpc),
        .I4(I7[9]),
        .O(\pcnt[11]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pcnt[11]_i_9 
       (.I0(\pcnt[15]_i_2_0 [8]),
        .I1(ctl_clrie),
        .I2(abus_inferred_i_1_0[8]),
        .I3(ctl_selpc),
        .I4(I7[8]),
        .O(\pcnt[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pcnt[15]_i_10 
       (.I0(\pcnt[15]_i_2_0 [12]),
        .I1(ctl_clrie),
        .I2(abus_inferred_i_1_0[12]),
        .I3(ctl_selpc),
        .I4(I7[12]),
        .O(\pcnt[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000A400)) 
    \pcnt[15]_i_11 
       (.I0(out[4]),
        .I1(irq),
        .I2(out[2]),
        .I3(\pcnt[3]_i_10_0 ),
        .I4(\bcmd[0] ),
        .I5(\pcnt[15]_i_16_n_0 ),
        .O(ctl_selpc));
  LUT6 #(
    .INIT(64'hAAAA00A400000000)) 
    \pcnt[15]_i_12 
       (.I0(out[4]),
        .I1(irq),
        .I2(out[6]),
        .I3(out[1]),
        .I4(out[5]),
        .I5(\pcnt[15]_i_17_n_0 ),
        .O(\pcnt[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0066CF000000CF00)) 
    \pcnt[15]_i_14 
       (.I0(stk_bool),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[5]),
        .I4(stat[0]),
        .I5(out[4]),
        .O(\pcnt[15]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFE)) 
    \pcnt[15]_i_16 
       (.I0(out[3]),
        .I1(stat[0]),
        .I2(out[4]),
        .I3(out[5]),
        .I4(stat[1]),
        .O(\pcnt[15]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00000111)) 
    \pcnt[15]_i_17 
       (.I0(out[7]),
        .I1(stat[1]),
        .I2(out[5]),
        .I3(out[6]),
        .I4(out[3]),
        .O(\pcnt[15]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \pcnt[15]_i_2 
       (.I0(\pcnt_reg[15]_1 ),
        .I1(\pcnt[15]_i_6_n_0 ),
        .I2(ctl_setpc),
        .I3(\pcnt_reg[15]_0 [15]),
        .O(\pcnt[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \pcnt[15]_i_3 
       (.I0(\pcnt_reg[15]_1 ),
        .I1(\pcnt[15]_i_8_n_0 ),
        .I2(ctl_setpc),
        .I3(\pcnt_reg[15]_0 [14]),
        .O(\pcnt[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \pcnt[15]_i_4 
       (.I0(\pcnt_reg[15]_1 ),
        .I1(\pcnt[15]_i_9_n_0 ),
        .I2(ctl_setpc),
        .I3(\pcnt_reg[15]_0 [13]),
        .O(\pcnt[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \pcnt[15]_i_5 
       (.I0(\pcnt_reg[15]_1 ),
        .I1(\pcnt[15]_i_10_n_0 ),
        .I2(ctl_setpc),
        .I3(\pcnt_reg[15]_0 [12]),
        .O(\pcnt[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pcnt[15]_i_6 
       (.I0(\pcnt[15]_i_2_0 [15]),
        .I1(ctl_clrie),
        .I2(abus_inferred_i_1_0[15]),
        .I3(ctl_selpc),
        .I4(I7[15]),
        .O(\pcnt[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA000200000002)) 
    \pcnt[15]_i_7 
       (.I0(\pcnt[15]_i_12_n_0 ),
        .I1(\pcnt[3]_i_6_0 ),
        .I2(stat[0]),
        .I3(out[4]),
        .I4(out[2]),
        .I5(\pcnt[15]_i_14_n_0 ),
        .O(ctl_setpc));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pcnt[15]_i_8 
       (.I0(\pcnt[15]_i_2_0 [14]),
        .I1(ctl_clrie),
        .I2(abus_inferred_i_1_0[14]),
        .I3(ctl_selpc),
        .I4(I7[14]),
        .O(\pcnt[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pcnt[15]_i_9 
       (.I0(\pcnt[15]_i_2_0 [13]),
        .I1(ctl_clrie),
        .I2(abus_inferred_i_1_0[13]),
        .I3(ctl_selpc),
        .I4(I7[13]),
        .O(\pcnt[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pcnt[3]_i_10 
       (.I0(\pcnt[15]_i_2_0 [0]),
        .I1(ctl_clrie),
        .I2(abus_inferred_i_1_0[0]),
        .I3(ctl_selpc),
        .I4(I7[0]),
        .O(\pcnt[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \pcnt[3]_i_3 
       (.I0(\pcnt_reg[15]_1 ),
        .I1(\pcnt[3]_i_7_n_0 ),
        .I2(ctl_setpc),
        .I3(\pcnt_reg[15]_0 [3]),
        .O(\pcnt[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \pcnt[3]_i_4 
       (.I0(\pcnt_reg[15]_1 ),
        .I1(\pcnt[3]_i_8_n_0 ),
        .I2(ctl_setpc),
        .I3(\pcnt_reg[15]_0 [2]),
        .O(\pcnt[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \pcnt[3]_i_5 
       (.I0(\pcnt_reg[15]_1 ),
        .I1(\pcnt[3]_i_9_n_0 ),
        .I2(ctl_setpc),
        .I3(\pcnt_reg[15]_0 [1]),
        .O(\pcnt[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \pcnt[3]_i_6 
       (.I0(\pcnt_reg[15]_1 ),
        .I1(\pcnt[3]_i_10_n_0 ),
        .I2(ctl_setpc),
        .I3(\pcnt_reg[15]_0 [0]),
        .O(\pcnt[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pcnt[3]_i_7 
       (.I0(\pcnt[15]_i_2_0 [3]),
        .I1(ctl_clrie),
        .I2(abus_inferred_i_1_0[3]),
        .I3(ctl_selpc),
        .I4(I7[3]),
        .O(\pcnt[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pcnt[3]_i_8 
       (.I0(\pcnt[15]_i_2_0 [2]),
        .I1(ctl_clrie),
        .I2(abus_inferred_i_1_0[2]),
        .I3(ctl_selpc),
        .I4(I7[2]),
        .O(\pcnt[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pcnt[3]_i_9 
       (.I0(\pcnt[15]_i_2_0 [1]),
        .I1(ctl_clrie),
        .I2(abus_inferred_i_1_0[1]),
        .I3(ctl_selpc),
        .I4(I7[1]),
        .O(\pcnt[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \pcnt[7]_i_2 
       (.I0(\pcnt_reg[15]_1 ),
        .I1(\pcnt[7]_i_6_n_0 ),
        .I2(ctl_setpc),
        .I3(\pcnt_reg[15]_0 [7]),
        .O(\pcnt[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \pcnt[7]_i_3 
       (.I0(\pcnt_reg[15]_1 ),
        .I1(\pcnt[7]_i_7_n_0 ),
        .I2(ctl_setpc),
        .I3(\pcnt_reg[15]_0 [6]),
        .O(\pcnt[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \pcnt[7]_i_4 
       (.I0(\pcnt_reg[15]_1 ),
        .I1(\pcnt[7]_i_8_n_0 ),
        .I2(ctl_setpc),
        .I3(\pcnt_reg[15]_0 [5]),
        .O(\pcnt[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \pcnt[7]_i_5 
       (.I0(\pcnt_reg[15]_1 ),
        .I1(\pcnt[7]_i_9_n_0 ),
        .I2(ctl_setpc),
        .I3(\pcnt_reg[15]_0 [4]),
        .O(\pcnt[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pcnt[7]_i_6 
       (.I0(\pcnt[15]_i_2_0 [7]),
        .I1(ctl_clrie),
        .I2(abus_inferred_i_1_0[7]),
        .I3(ctl_selpc),
        .I4(I7[7]),
        .O(\pcnt[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pcnt[7]_i_7 
       (.I0(\pcnt[15]_i_2_0 [6]),
        .I1(ctl_clrie),
        .I2(abus_inferred_i_1_0[6]),
        .I3(ctl_selpc),
        .I4(I7[6]),
        .O(\pcnt[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pcnt[7]_i_8 
       (.I0(\pcnt[15]_i_2_0 [5]),
        .I1(ctl_clrie),
        .I2(abus_inferred_i_1_0[5]),
        .I3(ctl_selpc),
        .I4(I7[5]),
        .O(\pcnt[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pcnt[7]_i_9 
       (.I0(\pcnt[15]_i_2_0 [4]),
        .I1(ctl_clrie),
        .I2(abus_inferred_i_1_0[4]),
        .I3(ctl_selpc),
        .I4(I7[4]),
        .O(\pcnt[7]_i_9_n_0 ));
  CARRY4 \pcnt_reg[11]_i_1 
       (.CI(\pcnt_reg[7]_i_1_n_0 ),
        .CO({\pcnt_reg[11]_i_1_n_0 ,\pcnt_reg[11]_i_1_n_1 ,\pcnt_reg[11]_i_1_n_2 ,\pcnt_reg[11]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\pcnt_reg[15] [11:8]),
        .S({\pcnt[11]_i_2_n_0 ,\pcnt[11]_i_3_n_0 ,\pcnt[11]_i_4_n_0 ,\pcnt[11]_i_5_n_0 }));
  CARRY4 \pcnt_reg[15]_i_1 
       (.CI(\pcnt_reg[11]_i_1_n_0 ),
        .CO({\pcnt_reg[15]_i_1_n_1 ,\pcnt_reg[15]_i_1_n_2 ,\pcnt_reg[15]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\pcnt_reg[15] [15:12]),
        .S({\pcnt[15]_i_2_n_0 ,\pcnt[15]_i_3_n_0 ,\pcnt[15]_i_4_n_0 ,\pcnt[15]_i_5_n_0 }));
  CARRY4 \pcnt_reg[3]_i_1 
       (.CI(\<const0> ),
        .CO({\pcnt_reg[3]_i_1_n_0 ,\pcnt_reg[3]_i_1_n_1 ,\pcnt_reg[3]_i_1_n_2 ,\pcnt_reg[3]_i_1_n_3 }),
        .CYINIT(\pcnt_reg[3] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\pcnt_reg[15] [3:0]),
        .S({\pcnt[3]_i_3_n_0 ,\pcnt[3]_i_4_n_0 ,\pcnt[3]_i_5_n_0 ,\pcnt[3]_i_6_n_0 }));
  CARRY4 \pcnt_reg[7]_i_1 
       (.CI(\pcnt_reg[3]_i_1_n_0 ),
        .CO({\pcnt_reg[7]_i_1_n_0 ,\pcnt_reg[7]_i_1_n_1 ,\pcnt_reg[7]_i_1_n_2 ,\pcnt_reg[7]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\pcnt_reg[15] [7:4]),
        .S({\pcnt[7]_i_2_n_0 ,\pcnt[7]_i_3_n_0 ,\pcnt[7]_i_4_n_0 ,\pcnt[7]_i_5_n_0 }));
  LUT6 #(
    .INIT(64'hACACA0AFACACA0A0)) 
    rgf_ie_rg_i_1
       (.I0(stk_bool),
        .I1(rgf_ie_rg_reg_2),
        .I2(\stat_reg[1]_2 ),
        .I3(ctl_clrie),
        .I4(ctl_setie),
        .I5(rgf_ie),
        .O(rgf_ie_rg_reg));
  LUT4 #(
    .INIT(16'h7FFF)) 
    rgf_ie_rg_i_10
       (.I0(out[0]),
        .I1(out[1]),
        .I2(stat[0]),
        .I3(out[4]),
        .O(rgf_ie_rg_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    rgf_ie_rg_i_3
       (.I0(rgf_ie_rg_reg_0),
        .I1(\bcmd[0] ),
        .I2(rgf_ie_rg_i_8_n_0),
        .I3(stat[0]),
        .I4(out[1]),
        .I5(rgf_ie_rg_reg_1),
        .O(ctl_clrie));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    rgf_ie_rg_i_4
       (.I0(\bcmd[0] ),
        .I1(rgf_ie_rg_i_10_n_0),
        .I2(stat[1]),
        .I3(out[3]),
        .I4(out[2]),
        .I5(out[5]),
        .O(ctl_setie));
  LUT4 #(
    .INIT(16'hDFFF)) 
    rgf_ie_rg_i_8
       (.I0(out[0]),
        .I1(stat[1]),
        .I2(rgf_ie),
        .I3(irq),
        .O(rgf_ie_rg_i_8_n_0));
  LUT6 #(
    .INIT(64'hF5FFF5FF20220000)) 
    \sptr[15]_i_10 
       (.I0(stat[0]),
        .I1(\sptr[15]_i_6_0 ),
        .I2(crdy),
        .I3(stat[1]),
        .I4(\sptr[15]_i_14_n_0 ),
        .I5(\sptr[15]_i_15_n_0 ),
        .O(\sptr[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF54545414)) 
    \sptr[15]_i_11 
       (.I0(\bcmd[0] ),
        .I1(out[4]),
        .I2(out[3]),
        .I3(out[1]),
        .I4(brdy),
        .I5(stat[0]),
        .O(\sptr[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFA2AFADAFAE)) 
    \sptr[15]_i_12 
       (.I0(stat[0]),
        .I1(out[3]),
        .I2(\bcmd[0] ),
        .I3(out[1]),
        .I4(out[0]),
        .I5(out[4]),
        .O(\sptr[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00FF020000000200)) 
    \sptr[15]_i_14 
       (.I0(out[1]),
        .I1(\sptr[15]_i_10_0 ),
        .I2(out[4]),
        .I3(stat[1]),
        .I4(out[6]),
        .I5(\sptr[15]_i_10_1 ),
        .O(\sptr[15]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFF000101)) 
    \sptr[15]_i_15 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(\sptr[15]_i_18_n_0 ),
        .I3(\sptr[15]_i_19_n_0 ),
        .I4(stat[0]),
        .O(\sptr[15]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \sptr[15]_i_18 
       (.I0(out[3]),
        .I1(stat[1]),
        .I2(out[2]),
        .I3(out[4]),
        .I4(out[6]),
        .O(\sptr[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \sptr[15]_i_19 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(\sptr[15]_i_15_0 ),
        .I4(out[1]),
        .I5(stat[1]),
        .O(\sptr[15]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h1F1F1FFF10101000)) 
    \sptr[15]_i_6 
       (.I0(stat[1]),
        .I1(\sptr_reg[15]_i_7_n_0 ),
        .I2(\sptr[15]_i_8_n_0 ),
        .I3(\sptr[15]_i_9_n_0 ),
        .I4(mem_reg_0_63_0_0_i_1_0),
        .I5(\sptr[15]_i_10_n_0 ),
        .O(ctl_sppp));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sptr[15]_i_8 
       (.I0(rgf_ie),
        .I1(out[5]),
        .I2(out[7]),
        .I3(stat[0]),
        .O(\sptr[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \sptr[15]_i_9 
       (.I0(out[6]),
        .I1(out[3]),
        .I2(out[0]),
        .I3(irq),
        .I4(out[1]),
        .I5(stat[0]),
        .O(\sptr[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \sptr[3]_i_2 
       (.I0(\sptr_reg[3] ),
        .I1(ctl_sppp),
        .I2(\ir_rg_reg[6] ),
        .O(\sptr_reg[6] ));
  MUXF7 \sptr_reg[15]_i_7 
       (.I0(\sptr[15]_i_11_n_0 ),
        .I1(\sptr[15]_i_12_n_0 ),
        .O(\sptr_reg[15]_i_7_n_0 ),
        .S(out[2]));
  LUT4 #(
    .INIT(16'h0151)) 
    \stat[0]_i_1 
       (.I0(out[7]),
        .I1(\stat[0]_i_2_n_0 ),
        .I2(out[5]),
        .I3(\stat[0]_i_3_n_0 ),
        .O(stat_nx[0]));
  LUT6 #(
    .INIT(64'hFFF3F3FFF3F35151)) 
    \stat[0]_i_2 
       (.I0(out[6]),
        .I1(\stat[0]_i_4_n_0 ),
        .I2(out[2]),
        .I3(crdy),
        .I4(stat[0]),
        .I5(stat[1]),
        .O(\stat[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFEEFFFF)) 
    \stat[0]_i_3 
       (.I0(stat[1]),
        .I1(out[6]),
        .I2(out[4]),
        .I3(out[3]),
        .I4(\stat[0]_i_5_n_0 ),
        .O(\stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h02000000020000FF)) 
    \stat[0]_i_4 
       (.I0(out[6]),
        .I1(\stat[0]_i_6_n_0 ),
        .I2(out[1]),
        .I3(out[3]),
        .I4(out[4]),
        .I5(\stat[0]_i_7_n_0 ),
        .O(\stat[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h888B8B8888888888)) 
    \stat[0]_i_5 
       (.I0(\stat[0]_i_8_n_0 ),
        .I1(out[2]),
        .I2(out[1]),
        .I3(brdy),
        .I4(stat[0]),
        .I5(out[3]),
        .O(\stat[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \stat[0]_i_6 
       (.I0(stat[1]),
        .I1(brdy),
        .O(\stat[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8B8BBBBBBBB)) 
    \stat[0]_i_7 
       (.I0(\stat[0]_i_9_n_0 ),
        .I1(out[0]),
        .I2(out[6]),
        .I3(stat[1]),
        .I4(stat[0]),
        .I5(out[1]),
        .O(\stat[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00044504)) 
    \stat[0]_i_8 
       (.I0(stat[0]),
        .I1(out[4]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[3]),
        .O(\stat[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \stat[0]_i_9 
       (.I0(rgf_ie),
        .I1(stat[0]),
        .I2(irq),
        .I3(stat[1]),
        .I4(out[1]),
        .O(\stat[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0A280000)) 
    \stat[1]_i_2 
       (.I0(\stat[1]_i_3_n_0 ),
        .I1(stk_bool),
        .I2(out[0]),
        .I3(out[3]),
        .I4(out[2]),
        .I5(out[1]),
        .O(stat_nx[1]));
  LUT6 #(
    .INIT(64'h0000000010000001)) 
    \stat[1]_i_3 
       (.I0(out[7]),
        .I1(out[5]),
        .I2(out[2]),
        .I3(out[4]),
        .I4(out[6]),
        .I5(\stat[1]_i_5_n_0 ),
        .O(\stat[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \stat[1]_i_4 
       (.I0(\stat[1]_i_6_n_0 ),
        .I1(abus_inferred_i_1_0[7]),
        .I2(abus_inferred_i_1_0[6]),
        .I3(abus_inferred_i_1_0[5]),
        .I4(abus_inferred_i_1_0[4]),
        .I5(\stat[1]_i_7_n_0 ),
        .O(stk_bool));
  LUT4 #(
    .INIT(16'h91BB)) 
    \stat[1]_i_5 
       (.I0(stat[1]),
        .I1(stat[0]),
        .I2(crdy),
        .I3(out[1]),
        .O(\stat[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stat[1]_i_6 
       (.I0(abus_inferred_i_1_0[1]),
        .I1(abus_inferred_i_1_0[0]),
        .I2(abus_inferred_i_1_0[3]),
        .I3(abus_inferred_i_1_0[2]),
        .O(\stat[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \stat[1]_i_7 
       (.I0(abus_inferred_i_1_0[12]),
        .I1(abus_inferred_i_1_0[13]),
        .I2(abus_inferred_i_1_0[15]),
        .I3(abus_inferred_i_1_0[14]),
        .I4(\stat[1]_i_8_n_0 ),
        .O(\stat[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stat[1]_i_8 
       (.I0(abus_inferred_i_1_0[9]),
        .I1(abus_inferred_i_1_0[8]),
        .I2(abus_inferred_i_1_0[11]),
        .I3(abus_inferred_i_1_0[10]),
        .O(\stat[1]_i_8_n_0 ));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[0]),
        .Q(stat[0]),
        .R(p_0_in));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[1]),
        .Q(stat[1]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0101010101010151)) 
    \stk_b1_rg[15]_i_1 
       (.I0(out[7]),
        .I1(\stk_b1_rg[15]_i_2_n_0 ),
        .I2(out[5]),
        .I3(\stk_b1_rg[15]_i_3_n_0 ),
        .I4(stat[0]),
        .I5(out[6]),
        .O(E));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEFE0)) 
    \stk_b1_rg[15]_i_2 
       (.I0(stat[1]),
        .I1(\stk_b1_rg[15]_i_4_n_0 ),
        .I2(out[6]),
        .I3(\stk_b1_rg[15]_i_5_n_0 ),
        .I4(out[4]),
        .I5(out[3]),
        .O(\stk_b1_rg[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF45)) 
    \stk_b1_rg[15]_i_3 
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[0]),
        .I3(stat[1]),
        .I4(\stk_b1_rg_reg[15]_3 ),
        .O(\stk_b1_rg[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA222AAAAAAAA)) 
    \stk_b1_rg[15]_i_4 
       (.I0(stat[0]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(out[0]),
        .I4(out[1]),
        .I5(out[4]),
        .O(\stk_b1_rg[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFEFEFEFFFEF)) 
    \stk_b1_rg[15]_i_5 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(stat[1]),
        .I4(crdy),
        .I5(stat[0]),
        .O(\stk_b1_rg[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \stk_ccmd_rg[4]_i_1 
       (.I0(\bcmd[0] ),
        .I1(out[1]),
        .I2(stat[1]),
        .I3(out[0]),
        .I4(stat[0]),
        .I5(\stk_ccmd_rg_reg[4] ),
        .O(\stat_reg[1]_3 ));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__0_i_1
       (.I0(\bbus_o[15] [6]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [6]),
        .O(\stk_b1_rg_reg[6] [3]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__0_i_2
       (.I0(\bbus_o[15] [5]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [5]),
        .O(\stk_b1_rg_reg[6] [2]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__0_i_3
       (.I0(\bbus_o[15] [4]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [4]),
        .O(\stk_b1_rg_reg[6] [1]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__0_i_4
       (.I0(\bbus_o[15] [3]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [3]),
        .O(\stk_b1_rg_reg[6] [0]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__0_i_5
       (.I0(\bbus_o[15] [7]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [7]),
        .I4(\stk_b1_rg_reg[6] [3]),
        .O(\stk_b1_rg_reg[7] [3]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__0_i_6
       (.I0(\bbus_o[15] [6]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [6]),
        .I4(\stk_b1_rg_reg[6] [2]),
        .O(\stk_b1_rg_reg[7] [2]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__0_i_7
       (.I0(\bbus_o[15] [5]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [5]),
        .I4(\stk_b1_rg_reg[6] [1]),
        .O(\stk_b1_rg_reg[7] [1]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__0_i_8
       (.I0(\bbus_o[15] [4]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [4]),
        .I4(\stk_b1_rg_reg[6] [0]),
        .O(\stk_b1_rg_reg[7] [0]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__1_i_1
       (.I0(\bbus_o[15] [10]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [10]),
        .O(\stk_b1_rg_reg[10] [3]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__1_i_2
       (.I0(\bbus_o[15] [9]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [9]),
        .O(\stk_b1_rg_reg[10] [2]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__1_i_3
       (.I0(\bbus_o[15] [8]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [8]),
        .O(\stk_b1_rg_reg[10] [1]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__1_i_4
       (.I0(\bbus_o[15] [7]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [7]),
        .O(\stk_b1_rg_reg[10] [0]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__1_i_5
       (.I0(\bbus_o[15] [11]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [11]),
        .I4(\stk_b1_rg_reg[10] [3]),
        .O(\stk_b1_rg_reg[11] [3]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__1_i_6
       (.I0(\bbus_o[15] [10]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [10]),
        .I4(\stk_b1_rg_reg[10] [2]),
        .O(\stk_b1_rg_reg[11] [2]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__1_i_7
       (.I0(\bbus_o[15] [9]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [9]),
        .I4(\stk_b1_rg_reg[10] [1]),
        .O(\stk_b1_rg_reg[11] [1]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__1_i_8
       (.I0(\bbus_o[15] [8]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [8]),
        .I4(\stk_b1_rg_reg[10] [0]),
        .O(\stk_b1_rg_reg[11] [0]));
  LUT4 #(
    .INIT(16'h4BB4)) 
    tout__1_carry__2_i_1
       (.I0(tout__1_carry_i_9_n_0),
        .I1(\bdatw[15] [15]),
        .I2(\bbus_o[15] [15]),
        .I3(\alu/art/cin__0 ),
        .O(\stk_b1_rg_reg[15]_0 [3]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__2_i_2
       (.I0(\bbus_o[15] [13]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [13]),
        .O(\stk_b1_rg_reg[15]_0 [2]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__2_i_3
       (.I0(\bbus_o[15] [12]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [12]),
        .O(\stk_b1_rg_reg[15]_0 [1]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__2_i_4
       (.I0(\bbus_o[15] [11]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [11]),
        .O(\stk_b1_rg_reg[15]_0 [0]));
  LUT6 #(
    .INIT(64'h5599AA965569AA66)) 
    tout__1_carry__2_i_5
       (.I0(\bbus_o[15] [15]),
        .I1(\bdatw[15] [15]),
        .I2(\bdatw[15] [14]),
        .I3(tout__1_carry_i_9_n_0),
        .I4(\alu/art/cin__0 ),
        .I5(\bbus_o[15] [14]),
        .O(\stk_b1_rg_reg[15] [3]));
  LUT5 #(
    .INIT(32'h96966996)) 
    tout__1_carry__2_i_6
       (.I0(\stk_b1_rg_reg[15]_0 [2]),
        .I1(\alu/art/cin__0 ),
        .I2(\bbus_o[15] [14]),
        .I3(\bdatw[15] [14]),
        .I4(tout__1_carry_i_9_n_0),
        .O(\stk_b1_rg_reg[15] [2]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__2_i_7
       (.I0(\bbus_o[15] [13]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [13]),
        .I4(\stk_b1_rg_reg[15]_0 [1]),
        .O(\stk_b1_rg_reg[15] [1]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__2_i_8
       (.I0(\bbus_o[15] [12]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [12]),
        .I4(\stk_b1_rg_reg[15]_0 [0]),
        .O(\stk_b1_rg_reg[15] [0]));
  LUT4 #(
    .INIT(16'hF6FF)) 
    tout__1_carry__3_i_1
       (.I0(\bbus_o[15] [15]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [15]),
        .O(\stk_b1_rg_reg[15]_2 ));
  LUT4 #(
    .INIT(16'h9969)) 
    tout__1_carry__3_i_2
       (.I0(\alu/art/cin__0 ),
        .I1(\bbus_o[15] [15]),
        .I2(\bdatw[15] [15]),
        .I3(tout__1_carry_i_9_n_0),
        .O(\stk_b1_rg_reg[15]_1 [1]));
  LUT4 #(
    .INIT(16'h2FF2)) 
    tout__1_carry__3_i_3
       (.I0(\bdatw[15] [15]),
        .I1(tout__1_carry_i_9_n_0),
        .I2(\bbus_o[15] [15]),
        .I3(\alu/art/cin__0 ),
        .O(\stk_b1_rg_reg[15]_1 [0]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry_i_1
       (.I0(\bbus_o[15] [2]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [2]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry_i_2
       (.I0(\bbus_o[15] [1]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [1]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h4E44)) 
    tout__1_carry_i_3
       (.I0(\bbus_o[15] [0]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [0]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry_i_4
       (.I0(\bbus_o[15] [3]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [3]),
        .I4(DI[2]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry_i_5
       (.I0(\bbus_o[15] [2]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [2]),
        .I4(DI[1]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry_i_6
       (.I0(\bbus_o[15] [1]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[15] [1]),
        .I4(DI[0]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h9A)) 
    tout__1_carry_i_7
       (.I0(\bbus_o[15] [0]),
        .I1(tout__1_carry_i_9_n_0),
        .I2(\bdatw[15] [0]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h2208)) 
    tout__1_carry_i_8
       (.I0(ctl_acmd_0[3]),
        .I1(ctl_acmd_0[2]),
        .I2(ctl_acmd_0[0]),
        .I3(ctl_acmd_0[1]),
        .O(\alu/art/cin__0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    tout__1_carry_i_9
       (.I0(ctl_acmd_0[2]),
        .I1(ctl_acmd_0[1]),
        .I2(ctl_acmd_0[3]),
        .I3(ctl_acmd_0[0]),
        .O(tout__1_carry_i_9_n_0));
endmodule

module sama_ivec
   (.out({ivec[15],ivec[14],ivec[13],ivec[12],ivec[11],ivec[10],ivec[9],ivec[8],ivec[7],ivec[6],ivec[5],ivec[4],ivec[3],ivec[2],ivec[1],ivec[0]}),
    rgf_ie,
    \ivec_reg[15]_0 ,
    irq_0,
    SR,
    rgf_ie_rg_reg_0,
    clk,
    \pcnt_reg[3] ,
    irq,
    E,
    D);
  output rgf_ie;
  output \ivec_reg[15]_0 ;
  output irq_0;
  input [0:0]SR;
  input rgf_ie_rg_reg_0;
  input clk;
  input \pcnt_reg[3] ;
  input irq;
  input [0:0]E;
  input [15:0]D;
     output [15:0]ivec;

  wire \<const1> ;
  wire [15:0]D;
  wire [0:0]E;
  wire [0:0]SR;
  wire clk;
  wire irq;
  wire irq_0;
  (* DONT_TOUCH *) wire [15:0]ivec;
  wire \ivec_reg[15]_0 ;
  wire \pcnt_reg[3] ;
  wire rgf_ie;
  wire rgf_ie_rg_i_11_n_0;
  wire rgf_ie_rg_i_5_n_0;
  wire rgf_ie_rg_i_6_n_0;
  wire rgf_ie_rg_reg_0;

  VCC VCC
       (.P(\<const1> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(ivec[0]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(ivec[10]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(ivec[11]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(ivec[12]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(ivec[13]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(ivec[14]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(ivec[15]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(ivec[1]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(ivec[2]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(ivec[3]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(ivec[4]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(ivec[5]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(ivec[6]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(ivec[7]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(ivec[8]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(ivec[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h2A)) 
    \pcnt[3]_i_2 
       (.I0(\pcnt_reg[3] ),
        .I1(irq),
        .I2(rgf_ie),
        .O(irq_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rgf_ie_rg_i_11
       (.I0(ivec[2]),
        .I1(ivec[3]),
        .I2(ivec[0]),
        .I3(ivec[1]),
        .O(rgf_ie_rg_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    rgf_ie_rg_i_2
       (.I0(rgf_ie_rg_i_5_n_0),
        .I1(ivec[15]),
        .I2(ivec[14]),
        .I3(ivec[12]),
        .I4(ivec[13]),
        .I5(rgf_ie_rg_i_6_n_0),
        .O(\ivec_reg[15]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rgf_ie_rg_i_5
       (.I0(ivec[10]),
        .I1(ivec[11]),
        .I2(ivec[8]),
        .I3(ivec[9]),
        .O(rgf_ie_rg_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    rgf_ie_rg_i_6
       (.I0(ivec[5]),
        .I1(ivec[4]),
        .I2(ivec[7]),
        .I3(ivec[6]),
        .I4(rgf_ie_rg_i_11_n_0),
        .O(rgf_ie_rg_i_6_n_0));
  FDRE rgf_ie_rg_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rgf_ie_rg_reg_0),
        .Q(rgf_ie),
        .R(SR));
endmodule

module sama_lifo
   (stk_top,
    clk,
    I7,
    ctl_push,
    rgf_sp_0);
  output [15:0]stk_top;
  input clk;
  input [15:0]I7;
  input ctl_push;
  input [5:0]rgf_sp_0;

  wire [15:0]I7;
  wire clk;
  wire ctl_push;
  wire [5:0]rgf_sp_0;
  wire [15:0]stk_top;

  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "samarium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM64X1S mem_reg_0_63_0_0
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(I7[0]),
        .O(stk_top[0]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "samarium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM64X1S mem_reg_0_63_10_10
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(I7[10]),
        .O(stk_top[10]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "samarium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM64X1S mem_reg_0_63_11_11
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(I7[11]),
        .O(stk_top[11]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "samarium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1S mem_reg_0_63_12_12
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(I7[12]),
        .O(stk_top[12]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "samarium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM64X1S mem_reg_0_63_13_13
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(I7[13]),
        .O(stk_top[13]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "samarium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM64X1S mem_reg_0_63_14_14
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(I7[14]),
        .O(stk_top[14]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "samarium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1S mem_reg_0_63_15_15
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(I7[15]),
        .O(stk_top[15]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "samarium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM64X1S mem_reg_0_63_1_1
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(I7[1]),
        .O(stk_top[1]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "samarium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM64X1S mem_reg_0_63_2_2
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(I7[2]),
        .O(stk_top[2]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "samarium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM64X1S mem_reg_0_63_3_3
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(I7[3]),
        .O(stk_top[3]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "samarium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM64X1S mem_reg_0_63_4_4
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(I7[4]),
        .O(stk_top[4]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "samarium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM64X1S mem_reg_0_63_5_5
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(I7[5]),
        .O(stk_top[5]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "samarium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1S mem_reg_0_63_6_6
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(I7[6]),
        .O(stk_top[6]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "samarium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1S mem_reg_0_63_7_7
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(I7[7]),
        .O(stk_top[7]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "samarium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM64X1S mem_reg_0_63_8_8
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(I7[8]),
        .O(stk_top[8]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "samarium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM64X1S mem_reg_0_63_9_9
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(I7[9]),
        .O(stk_top[9]),
        .WCLK(clk),
        .WE(ctl_push));
endmodule

module sama_pcnt
   (.fadr({pcnt[15],pcnt[14],pcnt[13],pcnt[12],pcnt[11],pcnt[10],pcnt[9],pcnt[8],pcnt[7],pcnt[6],pcnt[5],pcnt[4],pcnt[3],pcnt[2],pcnt[1],pcnt[0]}),
    fch_iack,
    clk,
    out,
    irq,
    rgf_ie,
    rst_n,
    SR,
    D);
  output fch_iack;
  input clk;
  input out;
  input irq;
  input rgf_ie;
  input rst_n;
  input [0:0]SR;
  input [15:0]D;
     output [15:0]pcnt;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]D;
  wire [0:0]SR;
  wire clk;
  wire fch_iack;
  wire fch_iack_rg_i_1_n_0;
  wire irq;
  wire out;
  (* DONT_TOUCH *) wire [15:0]pcnt;
  wire rgf_ie;
  wire rst_n;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hE2220000)) 
    fch_iack_rg_i_1
       (.I0(fch_iack),
        .I1(out),
        .I2(irq),
        .I3(rgf_ie),
        .I4(rst_n),
        .O(fch_iack_rg_i_1_n_0));
  FDRE fch_iack_rg_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fch_iack_rg_i_1_n_0),
        .Q(fch_iack),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(pcnt[0]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[10]),
        .Q(pcnt[10]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[11]),
        .Q(pcnt[11]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[12]),
        .Q(pcnt[12]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[13]),
        .Q(pcnt[13]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[14]),
        .Q(pcnt[14]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[15]),
        .Q(pcnt[15]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(pcnt[1]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(pcnt[2]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[3]),
        .Q(pcnt[3]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[4]),
        .Q(pcnt[4]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[5]),
        .Q(pcnt[5]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[6]),
        .Q(pcnt[6]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[7]),
        .Q(pcnt[7]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[8]),
        .Q(pcnt[8]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[9]),
        .Q(pcnt[9]),
        .R(SR));
endmodule

module sama_sptr
   (.out({sptr[15],sptr[10],sptr[9],sptr[7],sptr[6],sptr[5],sptr[4],sptr[3],sptr[2],sptr[0]}),
    \sptr_reg[13]_0 ,
    \sptr_reg[1]_0 ,
    \sptr_reg[8]_0 ,
    \sptr_reg[11]_0 ,
    \sptr_reg[12]_0 ,
    \sptr_reg[13]_1 ,
    \sptr_reg[14]_0 ,
    \sptr_reg[6]_0 ,
    ctl_mmsp,
    abus_inferred_i_21,
    abus_inferred_i_21_0,
    SR,
    clk,
    \sptr_reg[3]_0 ,
    ctl_sppp);
  output [9:0]\sptr_reg[13]_0 ;
  output [0:0]\sptr_reg[1]_0 ;
  output \sptr_reg[8]_0 ;
  output \sptr_reg[11]_0 ;
  output \sptr_reg[12]_0 ;
  output \sptr_reg[13]_1 ;
  output \sptr_reg[14]_0 ;
  output \sptr_reg[6]_0 ;
  input ctl_mmsp;
  input [0:0]abus_inferred_i_21;
  input [4:0]abus_inferred_i_21_0;
  input [0:0]SR;
  input clk;
  input \sptr_reg[3]_0 ;
  input ctl_sppp;
     output [15:0]sptr;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]SR;
  wire [0:0]abus_inferred_i_21;
  wire [4:0]abus_inferred_i_21_0;
  wire clk;
  wire ctl_mmsp;
  wire ctl_sppp;
  (* DONT_TOUCH *) wire [15:0]sptr;
  wire \sptr[11]_i_2_n_0 ;
  wire \sptr[11]_i_3_n_0 ;
  wire \sptr[11]_i_4_n_0 ;
  wire \sptr[11]_i_5_n_0 ;
  wire \sptr[15]_i_2_n_0 ;
  wire \sptr[15]_i_3_n_0 ;
  wire \sptr[15]_i_4_n_0 ;
  wire \sptr[15]_i_5_n_0 ;
  wire \sptr[3]_i_10_n_0 ;
  wire \sptr[3]_i_3_n_0 ;
  wire \sptr[3]_i_4_n_0 ;
  wire \sptr[3]_i_5_n_0 ;
  wire \sptr[3]_i_6_n_0 ;
  wire \sptr[3]_i_8_n_0 ;
  wire \sptr[3]_i_9_n_0 ;
  wire \sptr[7]_i_2_n_0 ;
  wire \sptr[7]_i_3_n_0 ;
  wire \sptr[7]_i_4_n_0 ;
  wire \sptr[7]_i_5_n_0 ;
  wire [14:1]sptr_dec;
  wire sptr_dec0_carry__0_i_1_n_0;
  wire sptr_dec0_carry__0_i_2_n_0;
  wire sptr_dec0_carry__0_i_3_n_0;
  wire sptr_dec0_carry__0_i_4_n_0;
  wire sptr_dec0_carry__0_n_0;
  wire sptr_dec0_carry__0_n_1;
  wire sptr_dec0_carry__0_n_2;
  wire sptr_dec0_carry__0_n_3;
  wire sptr_dec0_carry__1_i_1_n_0;
  wire sptr_dec0_carry__1_i_2_n_0;
  wire sptr_dec0_carry__1_i_3_n_0;
  wire sptr_dec0_carry__1_i_4_n_0;
  wire sptr_dec0_carry__1_n_0;
  wire sptr_dec0_carry__1_n_1;
  wire sptr_dec0_carry__1_n_2;
  wire sptr_dec0_carry__1_n_3;
  wire sptr_dec0_carry__2_i_1_n_0;
  wire sptr_dec0_carry__2_i_2_n_0;
  wire sptr_dec0_carry__2_i_3_n_0;
  wire sptr_dec0_carry__2_i_4_n_0;
  wire sptr_dec0_carry__2_n_1;
  wire sptr_dec0_carry__2_n_2;
  wire sptr_dec0_carry__2_n_3;
  wire sptr_dec0_carry_i_1_n_0;
  wire sptr_dec0_carry_i_2_n_0;
  wire sptr_dec0_carry_i_3_n_0;
  wire sptr_dec0_carry_i_4_n_0;
  wire sptr_dec0_carry_i_5_n_0;
  wire sptr_dec0_carry_i_6_n_0;
  wire sptr_dec0_carry_i_7_n_0;
  wire sptr_dec0_carry_i_8_n_0;
  wire sptr_dec0_carry_n_0;
  wire sptr_dec0_carry_n_1;
  wire sptr_dec0_carry_n_2;
  wire sptr_dec0_carry_n_3;
  wire \sptr_reg[11]_0 ;
  wire \sptr_reg[11]_i_1_n_0 ;
  wire \sptr_reg[11]_i_1_n_1 ;
  wire \sptr_reg[11]_i_1_n_2 ;
  wire \sptr_reg[11]_i_1_n_3 ;
  wire \sptr_reg[11]_i_1_n_4 ;
  wire \sptr_reg[11]_i_1_n_5 ;
  wire \sptr_reg[11]_i_1_n_6 ;
  wire \sptr_reg[11]_i_1_n_7 ;
  wire \sptr_reg[12]_0 ;
  wire [9:0]\sptr_reg[13]_0 ;
  wire \sptr_reg[13]_1 ;
  wire \sptr_reg[14]_0 ;
  wire \sptr_reg[15]_i_1_n_1 ;
  wire \sptr_reg[15]_i_1_n_2 ;
  wire \sptr_reg[15]_i_1_n_3 ;
  wire \sptr_reg[15]_i_1_n_4 ;
  wire \sptr_reg[15]_i_1_n_5 ;
  wire \sptr_reg[15]_i_1_n_6 ;
  wire \sptr_reg[15]_i_1_n_7 ;
  wire [0:0]\sptr_reg[1]_0 ;
  wire \sptr_reg[3]_0 ;
  wire \sptr_reg[3]_i_1_n_0 ;
  wire \sptr_reg[3]_i_1_n_1 ;
  wire \sptr_reg[3]_i_1_n_2 ;
  wire \sptr_reg[3]_i_1_n_3 ;
  wire \sptr_reg[3]_i_1_n_4 ;
  wire \sptr_reg[3]_i_1_n_5 ;
  wire \sptr_reg[3]_i_1_n_6 ;
  wire \sptr_reg[3]_i_1_n_7 ;
  wire \sptr_reg[6]_0 ;
  wire \sptr_reg[7]_i_1_n_0 ;
  wire \sptr_reg[7]_i_1_n_1 ;
  wire \sptr_reg[7]_i_1_n_2 ;
  wire \sptr_reg[7]_i_1_n_3 ;
  wire \sptr_reg[7]_i_1_n_4 ;
  wire \sptr_reg[7]_i_1_n_5 ;
  wire \sptr_reg[7]_i_1_n_6 ;
  wire \sptr_reg[7]_i_1_n_7 ;
  wire \sptr_reg[8]_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    abus_inferred_i_60
       (.I0(sptr_dec[14]),
        .I1(sptr[14]),
        .I2(ctl_mmsp),
        .I3(abus_inferred_i_21),
        .I4(abus_inferred_i_21_0[4]),
        .O(\sptr_reg[14]_0 ));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    abus_inferred_i_62
       (.I0(sptr_dec[13]),
        .I1(sptr[13]),
        .I2(ctl_mmsp),
        .I3(abus_inferred_i_21),
        .I4(abus_inferred_i_21_0[3]),
        .O(\sptr_reg[13]_1 ));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    abus_inferred_i_64
       (.I0(sptr_dec[12]),
        .I1(sptr[12]),
        .I2(ctl_mmsp),
        .I3(abus_inferred_i_21),
        .I4(abus_inferred_i_21_0[2]),
        .O(\sptr_reg[12]_0 ));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    abus_inferred_i_66
       (.I0(sptr_dec[11]),
        .I1(sptr[11]),
        .I2(ctl_mmsp),
        .I3(abus_inferred_i_21),
        .I4(abus_inferred_i_21_0[1]),
        .O(\sptr_reg[11]_0 ));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    abus_inferred_i_76
       (.I0(sptr_dec[8]),
        .I1(sptr[8]),
        .I2(ctl_mmsp),
        .I3(abus_inferred_i_21),
        .I4(abus_inferred_i_21_0[0]),
        .O(\sptr_reg[8]_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    mem_reg_0_63_0_0_i_3
       (.I0(sptr_dec[1]),
        .I1(sptr[1]),
        .I2(ctl_mmsp),
        .O(\sptr_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[11]_i_2 
       (.I0(sptr_dec[11]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[11]),
        .O(\sptr[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[11]_i_3 
       (.I0(\sptr_reg[13]_0 [8]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[10]),
        .O(\sptr[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[11]_i_4 
       (.I0(\sptr_reg[13]_0 [7]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[9]),
        .O(\sptr[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[11]_i_5 
       (.I0(sptr_dec[8]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[8]),
        .O(\sptr[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[15]_i_2 
       (.I0(\sptr_reg[13]_0 [9]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[15]),
        .O(\sptr[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[15]_i_3 
       (.I0(sptr_dec[14]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[14]),
        .O(\sptr[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[15]_i_4 
       (.I0(sptr_dec[13]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[13]),
        .O(\sptr[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[15]_i_5 
       (.I0(sptr_dec[12]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[12]),
        .O(\sptr[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sptr[3]_i_10 
       (.I0(sptr[2]),
        .I1(sptr[3]),
        .I2(sptr[0]),
        .I3(sptr[1]),
        .O(\sptr[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[3]_i_3 
       (.I0(\sptr_reg[13]_0 [2]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[3]),
        .O(\sptr[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[3]_i_4 
       (.I0(\sptr_reg[13]_0 [1]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[2]),
        .O(\sptr[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[3]_i_5 
       (.I0(sptr_dec[1]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[1]),
        .O(\sptr[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[3]_i_6 
       (.I0(\sptr_reg[13]_0 [0]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[0]),
        .O(\sptr[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \sptr[3]_i_7 
       (.I0(\sptr[3]_i_8_n_0 ),
        .I1(sptr[6]),
        .I2(sptr[14]),
        .I3(sptr[12]),
        .I4(sptr[13]),
        .I5(\sptr[3]_i_9_n_0 ),
        .O(\sptr_reg[6]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sptr[3]_i_8 
       (.I0(sptr[10]),
        .I1(sptr[11]),
        .I2(sptr[8]),
        .I3(sptr[9]),
        .O(\sptr[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sptr[3]_i_9 
       (.I0(sptr[5]),
        .I1(sptr[4]),
        .I2(sptr[7]),
        .I3(sptr[15]),
        .I4(\sptr[3]_i_10_n_0 ),
        .O(\sptr[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[7]_i_2 
       (.I0(\sptr_reg[13]_0 [6]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[7]),
        .O(\sptr[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[7]_i_3 
       (.I0(\sptr_reg[13]_0 [5]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[6]),
        .O(\sptr[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[7]_i_4 
       (.I0(\sptr_reg[13]_0 [4]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[5]),
        .O(\sptr[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[7]_i_5 
       (.I0(\sptr_reg[13]_0 [3]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[4]),
        .O(\sptr[7]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sptr_dec0_carry
       (.CI(\<const0> ),
        .CO({sptr_dec0_carry_n_0,sptr_dec0_carry_n_1,sptr_dec0_carry_n_2,sptr_dec0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({sptr[2],sptr_dec0_carry_i_1_n_0,sptr[1:0]}),
        .O({\sptr_reg[13]_0 [2:1],sptr_dec[1],\sptr_reg[13]_0 [0]}),
        .S({sptr_dec0_carry_i_2_n_0,sptr_dec0_carry_i_3_n_0,sptr_dec0_carry_i_4_n_0,sptr_dec0_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sptr_dec0_carry__0
       (.CI(sptr_dec0_carry_n_0),
        .CO({sptr_dec0_carry__0_n_0,sptr_dec0_carry__0_n_1,sptr_dec0_carry__0_n_2,sptr_dec0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(sptr[6:3]),
        .O(\sptr_reg[13]_0 [6:3]),
        .S({sptr_dec0_carry__0_i_1_n_0,sptr_dec0_carry__0_i_2_n_0,sptr_dec0_carry__0_i_3_n_0,sptr_dec0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__0_i_1
       (.I0(sptr[6]),
        .I1(sptr[7]),
        .O(sptr_dec0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__0_i_2
       (.I0(sptr[5]),
        .I1(sptr[6]),
        .O(sptr_dec0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__0_i_3
       (.I0(sptr[4]),
        .I1(sptr[5]),
        .O(sptr_dec0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__0_i_4
       (.I0(sptr[3]),
        .I1(sptr[4]),
        .O(sptr_dec0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sptr_dec0_carry__1
       (.CI(sptr_dec0_carry__0_n_0),
        .CO({sptr_dec0_carry__1_n_0,sptr_dec0_carry__1_n_1,sptr_dec0_carry__1_n_2,sptr_dec0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(sptr[10:7]),
        .O({sptr_dec[11],\sptr_reg[13]_0 [8:7],sptr_dec[8]}),
        .S({sptr_dec0_carry__1_i_1_n_0,sptr_dec0_carry__1_i_2_n_0,sptr_dec0_carry__1_i_3_n_0,sptr_dec0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__1_i_1
       (.I0(sptr[10]),
        .I1(sptr[11]),
        .O(sptr_dec0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__1_i_2
       (.I0(sptr[9]),
        .I1(sptr[10]),
        .O(sptr_dec0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__1_i_3
       (.I0(sptr[8]),
        .I1(sptr[9]),
        .O(sptr_dec0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__1_i_4
       (.I0(sptr[7]),
        .I1(sptr[8]),
        .O(sptr_dec0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sptr_dec0_carry__2
       (.CI(sptr_dec0_carry__1_n_0),
        .CO({sptr_dec0_carry__2_n_1,sptr_dec0_carry__2_n_2,sptr_dec0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,sptr[13:11]}),
        .O({\sptr_reg[13]_0 [9],sptr_dec[14:12]}),
        .S({sptr_dec0_carry__2_i_1_n_0,sptr_dec0_carry__2_i_2_n_0,sptr_dec0_carry__2_i_3_n_0,sptr_dec0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__2_i_1
       (.I0(sptr[14]),
        .I1(sptr[15]),
        .O(sptr_dec0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__2_i_2
       (.I0(sptr[13]),
        .I1(sptr[14]),
        .O(sptr_dec0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__2_i_3
       (.I0(sptr[12]),
        .I1(sptr[13]),
        .O(sptr_dec0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__2_i_4
       (.I0(sptr[11]),
        .I1(sptr[12]),
        .O(sptr_dec0_carry__2_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    sptr_dec0_carry_i_1
       (.I0(sptr[15]),
        .I1(sptr[12]),
        .I2(sptr[13]),
        .I3(sptr[14]),
        .I4(sptr_dec0_carry_i_6_n_0),
        .O(sptr_dec0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry_i_2
       (.I0(sptr[2]),
        .I1(sptr[3]),
        .O(sptr_dec0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    sptr_dec0_carry_i_3
       (.I0(sptr[15]),
        .I1(sptr[12]),
        .I2(sptr[13]),
        .I3(sptr[14]),
        .I4(sptr_dec0_carry_i_6_n_0),
        .I5(sptr[2]),
        .O(sptr_dec0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    sptr_dec0_carry_i_4
       (.I0(sptr[15]),
        .I1(sptr[12]),
        .I2(sptr[13]),
        .I3(sptr[14]),
        .I4(sptr_dec0_carry_i_6_n_0),
        .I5(sptr[1]),
        .O(sptr_dec0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    sptr_dec0_carry_i_5
       (.I0(sptr[15]),
        .I1(sptr[12]),
        .I2(sptr[13]),
        .I3(sptr[14]),
        .I4(sptr_dec0_carry_i_6_n_0),
        .I5(sptr[0]),
        .O(sptr_dec0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sptr_dec0_carry_i_6
       (.I0(sptr_dec0_carry_i_7_n_0),
        .I1(sptr[11]),
        .I2(sptr[10]),
        .I3(sptr[9]),
        .O(sptr_dec0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sptr_dec0_carry_i_7
       (.I0(sptr_dec0_carry_i_8_n_0),
        .I1(sptr[8]),
        .I2(sptr[7]),
        .I3(sptr[6]),
        .O(sptr_dec0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sptr_dec0_carry_i_8
       (.I0(sptr[0]),
        .I1(sptr[1]),
        .I2(sptr[2]),
        .I3(sptr[5]),
        .I4(sptr[4]),
        .I5(sptr[3]),
        .O(sptr_dec0_carry_i_8_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[3]_i_1_n_7 ),
        .Q(sptr[0]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[11]_i_1_n_5 ),
        .Q(sptr[10]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[11]_i_1_n_4 ),
        .Q(sptr[11]),
        .R(SR));
  CARRY4 \sptr_reg[11]_i_1 
       (.CI(\sptr_reg[7]_i_1_n_0 ),
        .CO({\sptr_reg[11]_i_1_n_0 ,\sptr_reg[11]_i_1_n_1 ,\sptr_reg[11]_i_1_n_2 ,\sptr_reg[11]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sptr_reg[11]_i_1_n_4 ,\sptr_reg[11]_i_1_n_5 ,\sptr_reg[11]_i_1_n_6 ,\sptr_reg[11]_i_1_n_7 }),
        .S({\sptr[11]_i_2_n_0 ,\sptr[11]_i_3_n_0 ,\sptr[11]_i_4_n_0 ,\sptr[11]_i_5_n_0 }));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[15]_i_1_n_7 ),
        .Q(sptr[12]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[15]_i_1_n_6 ),
        .Q(sptr[13]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[15]_i_1_n_5 ),
        .Q(sptr[14]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[15]_i_1_n_4 ),
        .Q(sptr[15]),
        .R(SR));
  CARRY4 \sptr_reg[15]_i_1 
       (.CI(\sptr_reg[11]_i_1_n_0 ),
        .CO({\sptr_reg[15]_i_1_n_1 ,\sptr_reg[15]_i_1_n_2 ,\sptr_reg[15]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sptr_reg[15]_i_1_n_4 ,\sptr_reg[15]_i_1_n_5 ,\sptr_reg[15]_i_1_n_6 ,\sptr_reg[15]_i_1_n_7 }),
        .S({\sptr[15]_i_2_n_0 ,\sptr[15]_i_3_n_0 ,\sptr[15]_i_4_n_0 ,\sptr[15]_i_5_n_0 }));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[3]_i_1_n_6 ),
        .Q(sptr[1]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[3]_i_1_n_5 ),
        .Q(sptr[2]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[3]_i_1_n_4 ),
        .Q(sptr[3]),
        .R(SR));
  CARRY4 \sptr_reg[3]_i_1 
       (.CI(\<const0> ),
        .CO({\sptr_reg[3]_i_1_n_0 ,\sptr_reg[3]_i_1_n_1 ,\sptr_reg[3]_i_1_n_2 ,\sptr_reg[3]_i_1_n_3 }),
        .CYINIT(\sptr_reg[3]_0 ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sptr_reg[3]_i_1_n_4 ,\sptr_reg[3]_i_1_n_5 ,\sptr_reg[3]_i_1_n_6 ,\sptr_reg[3]_i_1_n_7 }),
        .S({\sptr[3]_i_3_n_0 ,\sptr[3]_i_4_n_0 ,\sptr[3]_i_5_n_0 ,\sptr[3]_i_6_n_0 }));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[7]_i_1_n_7 ),
        .Q(sptr[4]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[7]_i_1_n_6 ),
        .Q(sptr[5]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[7]_i_1_n_5 ),
        .Q(sptr[6]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[7]_i_1_n_4 ),
        .Q(sptr[7]),
        .R(SR));
  CARRY4 \sptr_reg[7]_i_1 
       (.CI(\sptr_reg[3]_i_1_n_0 ),
        .CO({\sptr_reg[7]_i_1_n_0 ,\sptr_reg[7]_i_1_n_1 ,\sptr_reg[7]_i_1_n_2 ,\sptr_reg[7]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sptr_reg[7]_i_1_n_4 ,\sptr_reg[7]_i_1_n_5 ,\sptr_reg[7]_i_1_n_6 ,\sptr_reg[7]_i_1_n_7 }),
        .S({\sptr[7]_i_2_n_0 ,\sptr[7]_i_3_n_0 ,\sptr[7]_i_4_n_0 ,\sptr[7]_i_5_n_0 }));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[11]_i_1_n_7 ),
        .Q(sptr[8]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[11]_i_1_n_6 ),
        .Q(sptr[9]),
        .R(SR));
endmodule

module sama_stkb1
   (SR,
    Q,
    bbus,
    rst_n,
    E,
    D,
    clk,
    \stk_b1_rg_reg[15]_0 );
  output [0:0]SR;
  output [4:0]Q;
  output [15:0]bbus;
  input rst_n;
  input [0:0]E;
  input [15:0]D;
  input clk;
  input [0:0]\stk_b1_rg_reg[15]_0 ;

  wire [15:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [15:0]bbus;
  wire clk;
  wire rst_n;
  wire [0:0]\stk_b1_rg_reg[15]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \stat[1]_i_1 
       (.I0(rst_n),
        .O(SR));
  FDRE \stk_b1_rg_reg[0] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[15]_0 ),
        .D(D[0]),
        .Q(bbus[0]),
        .R(SR));
  FDRE \stk_b1_rg_reg[10] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[15]_0 ),
        .D(D[10]),
        .Q(bbus[10]),
        .R(SR));
  FDRE \stk_b1_rg_reg[11] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[15]_0 ),
        .D(D[11]),
        .Q(bbus[11]),
        .R(SR));
  FDRE \stk_b1_rg_reg[12] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[15]_0 ),
        .D(D[12]),
        .Q(bbus[12]),
        .R(SR));
  FDRE \stk_b1_rg_reg[13] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[15]_0 ),
        .D(D[13]),
        .Q(bbus[13]),
        .R(SR));
  FDRE \stk_b1_rg_reg[14] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[15]_0 ),
        .D(D[14]),
        .Q(bbus[14]),
        .R(SR));
  FDRE \stk_b1_rg_reg[15] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[15]_0 ),
        .D(D[15]),
        .Q(bbus[15]),
        .R(SR));
  FDRE \stk_b1_rg_reg[1] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[15]_0 ),
        .D(D[1]),
        .Q(bbus[1]),
        .R(SR));
  FDRE \stk_b1_rg_reg[2] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[15]_0 ),
        .D(D[2]),
        .Q(bbus[2]),
        .R(SR));
  FDRE \stk_b1_rg_reg[3] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[15]_0 ),
        .D(D[3]),
        .Q(bbus[3]),
        .R(SR));
  FDRE \stk_b1_rg_reg[4] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[15]_0 ),
        .D(D[4]),
        .Q(bbus[4]),
        .R(SR));
  FDRE \stk_b1_rg_reg[5] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[15]_0 ),
        .D(D[5]),
        .Q(bbus[5]),
        .R(SR));
  FDRE \stk_b1_rg_reg[6] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[15]_0 ),
        .D(D[6]),
        .Q(bbus[6]),
        .R(SR));
  FDRE \stk_b1_rg_reg[7] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[15]_0 ),
        .D(D[7]),
        .Q(bbus[7]),
        .R(SR));
  FDRE \stk_b1_rg_reg[8] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[15]_0 ),
        .D(D[8]),
        .Q(bbus[8]),
        .R(SR));
  FDRE \stk_b1_rg_reg[9] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[15]_0 ),
        .D(D[9]),
        .Q(bbus[9]),
        .R(SR));
  FDRE \stk_ccmd_rg_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \stk_ccmd_rg_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \stk_ccmd_rg_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \stk_ccmd_rg_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \stk_ccmd_rg_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module samarium
   (clk,
    rst_n,
    brdy,
    irq,
    cpu_sts,
    fdat,
    bdatr,
    fadr,
    bcmd,
    badr,
    bdatw,
    crdy,
    cbus_i,
    ccmd,
    abus_o,
    bbus_o);
//
//	Samarium ultra-small CPU core
//		(c) 2026	1YEN Toru
//
//
//	2026/10/17	ver.1.02
//		corresponding to poly-core edition
//		fix: ldw, ldb, stw, stb: bcmd assert timing
//
//	2026/04/29	ver.1.00
//		16 bit data path
//		stack machine (LIFO stack 64 word)
//
  input clk;
  input rst_n;
  input brdy;
  input irq;
  input [15:0]cpu_sts;
  input [7:0]fdat;
  input [15:0]bdatr;
  output [15:0]fadr;
  output [2:0]bcmd;
  output [15:0]badr;
  output [15:0]bdatw;
  input crdy;
  input [15:0]cbus_i;
  output [4:0]ccmd;
  output [15:0]abus_o;
  output [15:0]bbus_o;

  (* DONT_TOUCH *) wire [15:0]abus;
  wire [15:0]abus_o;
  wire [18:18]\art/add/tout ;
  wire \art/drv__3 ;
  wire [15:15]\art/p_1_in ;
  wire [15:0]badr;
  (* DONT_TOUCH *) wire [15:0]bbus;
  wire [15:0]bbus_o;
  wire [2:0]bcmd;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire brdy;
  (* DONT_TOUCH *) wire [15:0]cbus;
  wire [15:0]cbus_i;
  wire [4:0]ccmd;
  wire clk;
  wire [15:0]cpu_sts;
  wire crdy;
  wire ctl_ccmd_lat;
  (* DONT_TOUCH *) wire ctl_fetch;
  wire ctl_mmsp;
  wire ctl_n_100;
  wire ctl_n_101;
  wire ctl_n_102;
  wire ctl_n_103;
  wire ctl_n_104;
  wire ctl_n_105;
  wire ctl_n_106;
  wire ctl_n_155;
  wire ctl_n_156;
  wire ctl_n_157;
  wire ctl_n_158;
  wire ctl_n_159;
  wire ctl_n_160;
  wire ctl_n_161;
  wire ctl_n_162;
  wire ctl_n_163;
  wire ctl_n_164;
  wire ctl_n_165;
  wire ctl_n_166;
  wire ctl_n_167;
  wire ctl_n_168;
  wire ctl_n_169;
  wire ctl_n_170;
  wire ctl_n_71;
  wire ctl_n_72;
  wire ctl_n_73;
  wire ctl_n_74;
  wire ctl_n_75;
  wire ctl_n_76;
  wire ctl_n_77;
  wire ctl_n_78;
  wire ctl_n_79;
  wire ctl_n_80;
  wire ctl_n_81;
  wire ctl_n_82;
  wire ctl_n_83;
  wire ctl_n_84;
  wire ctl_n_85;
  wire ctl_n_86;
  wire ctl_n_87;
  wire ctl_n_88;
  wire ctl_n_89;
  wire ctl_n_90;
  wire ctl_n_91;
  wire ctl_n_92;
  wire ctl_n_93;
  wire ctl_n_94;
  wire ctl_n_95;
  wire ctl_n_96;
  wire ctl_n_97;
  wire ctl_n_98;
  wire ctl_n_99;
  wire ctl_pop;
  wire ctl_push;
  wire ctl_setiv;
  wire ctl_sppp;
  wire drv1;
  wire [15:0]fadr;
  wire fch_iack;
  wire [7:0]fdat;
  wire irq;
  wire ivec_n_17;
  wire ivec_n_18;
  wire n_0_524;
  wire [1:1]opc_imm7;
  wire [15:0]p_0_in;
  wire p_0_in_0;
  wire [1:1]p_1_in;
  wire [14:0]p_1_in__0;
  wire rgf_ie;
  wire [15:0]rgf_iv_0;
  wire [5:0]rgf_sp_0;
  wire rst_n;
  wire [15:0]sptr_dec;
  wire sptr_n_21;
  wire sptr_n_22;
  wire sptr_n_23;
  wire sptr_n_24;
  wire sptr_n_25;
  wire sptr_n_26;
  wire [4:0]stk_ccmd_rg;
  (* DONT_TOUCH *) wire [15:0]stk_top;

  sama_alu alu
       (.DI({ctl_n_79,ctl_n_80,ctl_n_81}),
        .O(\art/p_1_in ),
        .S({ctl_n_82,ctl_n_83,ctl_n_84,ctl_n_85}),
        .cbus_inferred_i_28({ctl_n_75,ctl_n_76,ctl_n_77,ctl_n_78}),
        .cbus_inferred_i_28_0({ctl_n_71,ctl_n_72,ctl_n_73,ctl_n_74}),
        .cbus_inferred_i_40({ctl_n_94,ctl_n_95,ctl_n_96,ctl_n_97}),
        .cbus_inferred_i_40_0({ctl_n_98,ctl_n_99,ctl_n_100,ctl_n_101}),
        .cbus_inferred_i_52({ctl_n_86,ctl_n_87,ctl_n_88,ctl_n_89}),
        .cbus_inferred_i_52_0({ctl_n_90,ctl_n_91,ctl_n_92,ctl_n_93}),
        .cbus_inferred_i_55(ctl_n_106),
        .cbus_inferred_i_55_0({ctl_n_103,ctl_n_104}),
        .drv1(drv1),
        .drv__3(\art/drv__3 ),
        .p_1_in(p_1_in),
        .\stk_b1_rg_reg[15] ({p_1_in__0[14:2],p_1_in__0[0]}),
        .\stk_b1_rg_reg[15]_0 (\art/add/tout ));
  sama_ctrl ctl
       (.DI({ctl_n_79,ctl_n_80,ctl_n_81}),
        .E(ctl_pop),
        .I7(cbus),
        .O(\art/p_1_in ),
        .Q(stk_ccmd_rg),
        .S({ctl_n_82,ctl_n_83,ctl_n_84,ctl_n_85}),
        .abus(abus),
        .abus_inferred_i_1(stk_top),
        .abus_inferred_i_15(rgf_sp_0[1]),
        .abus_inferred_i_18(rgf_iv_0),
        .abus_inferred_i_18_0({p_0_in[15],p_0_in[10:9],p_0_in[7:2],p_0_in[0]}),
        .abus_inferred_i_2(sptr_n_25),
        .abus_inferred_i_3(sptr_n_24),
        .abus_inferred_i_4(sptr_n_23),
        .abus_inferred_i_5(sptr_n_22),
        .abus_inferred_i_8(sptr_n_21),
        .abus_o(abus_o),
        .badr(badr),
        .bbus_o(bbus_o),
        .\bbus_o[15] (bbus),
        .bdatr(bdatr),
        .bdatw(bdatw),
        .\bdatw[15] (abus),
        .brdy(brdy),
        .cbus(cbus),
        .cbus_i(cbus_i),
        .cbus_inferred_i_13(\art/add/tout ),
        .cbus_inferred_i_2({p_1_in__0[14:2],p_1_in__0[0]}),
        .ccmd(ccmd),
        .clk(clk),
        .cpu_sts(cpu_sts),
        .crdy(crdy),
        .ctl_mmsp(ctl_mmsp),
        .ctl_push(ctl_push),
        .ctl_sppp(ctl_sppp),
        .drv1(drv1),
        .drv__3(\art/drv__3 ),
        .fch_iack(fch_iack),
        .fdat(fdat),
        .in0(ctl_fetch),
        .\ir_rg_reg[4]_0 (bcmd[0]),
        .irq(irq),
        .out(opc_imm7),
        .p_0_in(p_0_in_0),
        .\pcnt_reg[15] ({ctl_n_155,ctl_n_156,ctl_n_157,ctl_n_158,ctl_n_159,ctl_n_160,ctl_n_161,ctl_n_162,ctl_n_163,ctl_n_164,ctl_n_165,ctl_n_166,ctl_n_167,ctl_n_168,ctl_n_169,ctl_n_170}),
        .\pcnt_reg[15]_0 (fadr),
        .\pcnt_reg[15]_1 (ctl_fetch),
        .\pcnt_reg[3] (ivec_n_18),
        .rgf_ie(rgf_ie),
        .rgf_ie_rg_reg(ctl_n_102),
        .rgf_ie_rg_reg_0(ivec_n_17),
        .rgf_sp_0({rgf_sp_0[5:2],rgf_sp_0[0]}),
        .rst_n(rst_n),
        .sptr_dec({sptr_dec[15],sptr_dec[10:9],sptr_dec[7:2],sptr_dec[0]}),
        .\sptr_reg[3] (sptr_n_26),
        .\sptr_reg[6] (ctl_n_105),
        .\stat_reg[0] (bcmd[1]),
        .\stat_reg[0]_0 (bcmd[2]),
        .\stat_reg[1] (ctl_setiv),
        .\stat_reg[1]_0 (ctl_ccmd_lat),
        .\stk_b1_rg_reg[10] ({ctl_n_94,ctl_n_95,ctl_n_96,ctl_n_97}),
        .\stk_b1_rg_reg[11] ({ctl_n_98,ctl_n_99,ctl_n_100,ctl_n_101}),
        .\stk_b1_rg_reg[15] ({ctl_n_71,ctl_n_72,ctl_n_73,ctl_n_74}),
        .\stk_b1_rg_reg[15]_0 ({ctl_n_75,ctl_n_76,ctl_n_77,ctl_n_78}),
        .\stk_b1_rg_reg[15]_1 ({ctl_n_103,ctl_n_104}),
        .\stk_b1_rg_reg[15]_2 (ctl_n_106),
        .\stk_b1_rg_reg[6] ({ctl_n_86,ctl_n_87,ctl_n_88,ctl_n_89}),
        .\stk_b1_rg_reg[7] ({ctl_n_90,ctl_n_91,ctl_n_92,ctl_n_93}),
        .\stk_ccmd_rg_reg[1] (p_1_in));
  LUT1 #(
    .INIT(2'h1)) 
    i_524
       (.I0(rst_n),
        .O(n_0_524));
  sama_ivec ivec
       (.D(stk_top),
        .E(ctl_setiv),
        .SR(p_0_in_0),
        .clk(clk),
        .irq(irq),
        .irq_0(ivec_n_18),
        .\ivec_reg[15]_0 (ivec_n_17),
        .out(rgf_iv_0),
        .\pcnt_reg[3] (ctl_fetch),
        .rgf_ie(rgf_ie),
        .rgf_ie_rg_reg_0(ctl_n_102));
  sama_pcnt pcnt
       (.D({ctl_n_155,ctl_n_156,ctl_n_157,ctl_n_158,ctl_n_159,ctl_n_160,ctl_n_161,ctl_n_162,ctl_n_163,ctl_n_164,ctl_n_165,ctl_n_166,ctl_n_167,ctl_n_168,ctl_n_169,ctl_n_170}),
        .SR(p_0_in_0),
        .clk(clk),
        .fadr(fadr),
        .fch_iack(fch_iack),
        .irq(irq),
        .out(ctl_fetch),
        .rgf_ie(rgf_ie),
        .rst_n(rst_n));
  sama_sptr sptr
       (.SR(p_0_in_0),
        .abus_inferred_i_21(opc_imm7),
        .abus_inferred_i_21_0({rgf_iv_0[14:11],rgf_iv_0[8]}),
        .clk(clk),
        .ctl_mmsp(ctl_mmsp),
        .ctl_sppp(ctl_sppp),
        .out({p_0_in[15],p_0_in[10:9],p_0_in[7:2],p_0_in[0]}),
        .\sptr_reg[11]_0 (sptr_n_22),
        .\sptr_reg[12]_0 (sptr_n_23),
        .\sptr_reg[13]_0 ({sptr_dec[15],sptr_dec[10:9],sptr_dec[7:2],sptr_dec[0]}),
        .\sptr_reg[13]_1 (sptr_n_24),
        .\sptr_reg[14]_0 (sptr_n_25),
        .\sptr_reg[1]_0 (rgf_sp_0[1]),
        .\sptr_reg[3]_0 (ctl_n_105),
        .\sptr_reg[6]_0 (sptr_n_26),
        .\sptr_reg[8]_0 (sptr_n_21));
  sama_lifo stk
       (.I7(cbus),
        .clk(clk),
        .ctl_push(ctl_push),
        .rgf_sp_0(rgf_sp_0),
        .stk_top(stk_top));
  sama_stkb1 stkb1
       (.D(stk_top),
        .E(ctl_ccmd_lat),
        .Q(stk_ccmd_rg),
        .SR(p_0_in_0),
        .bbus(bbus),
        .clk(clk),
        .rst_n(rst_n),
        .\stk_b1_rg_reg[15]_0 (ctl_pop));
endmodule
