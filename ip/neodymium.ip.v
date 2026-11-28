
module ndym_alu
   (\stk_b1_rg_reg[31] ,
    O,
    \stk_b1_rg_reg[31]_0 ,
    tout__1_carry,
    DI,
    S,
    cbus_inferred_i_169,
    cbus_inferred_i_169_0,
    cbus_inferred_i_24,
    cbus_inferred_i_24_0,
    cbus_inferred_i_20,
    cbus_inferred_i_20_0,
    cbus_inferred_i_16,
    cbus_inferred_i_16_0,
    cbus_inferred_i_12,
    cbus_inferred_i_12_0,
    cbus_inferred_i_8,
    cbus_inferred_i_8_0,
    cbus_inferred_i_4,
    cbus_inferred_i_4_0,
    cbus_inferred_i_96,
    cbus_inferred_i_96_0,
    drv1);
  output [29:0]\stk_b1_rg_reg[31] ;
  output [0:0]O;
  output [0:0]\stk_b1_rg_reg[31]_0 ;
  output tout__1_carry;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]cbus_inferred_i_169;
  input [3:0]cbus_inferred_i_169_0;
  input [3:0]cbus_inferred_i_24;
  input [3:0]cbus_inferred_i_24_0;
  input [3:0]cbus_inferred_i_20;
  input [3:0]cbus_inferred_i_20_0;
  input [3:0]cbus_inferred_i_16;
  input [3:0]cbus_inferred_i_16_0;
  input [3:0]cbus_inferred_i_12;
  input [3:0]cbus_inferred_i_12_0;
  input [3:0]cbus_inferred_i_8;
  input [3:0]cbus_inferred_i_8_0;
  input [3:0]cbus_inferred_i_4;
  input [3:0]cbus_inferred_i_4_0;
  input [0:0]cbus_inferred_i_96;
  input [1:0]cbus_inferred_i_96_0;
  input drv1;

  wire [2:0]DI;
  wire [0:0]O;
  wire [3:0]S;
  wire [3:0]cbus_inferred_i_12;
  wire [3:0]cbus_inferred_i_12_0;
  wire [3:0]cbus_inferred_i_16;
  wire [3:0]cbus_inferred_i_169;
  wire [3:0]cbus_inferred_i_169_0;
  wire [3:0]cbus_inferred_i_16_0;
  wire [3:0]cbus_inferred_i_20;
  wire [3:0]cbus_inferred_i_20_0;
  wire [3:0]cbus_inferred_i_24;
  wire [3:0]cbus_inferred_i_24_0;
  wire [3:0]cbus_inferred_i_4;
  wire [3:0]cbus_inferred_i_4_0;
  wire [3:0]cbus_inferred_i_8;
  wire [3:0]cbus_inferred_i_8_0;
  wire [0:0]cbus_inferred_i_96;
  wire [1:0]cbus_inferred_i_96_0;
  wire drv1;
  wire [29:0]\stk_b1_rg_reg[31] ;
  wire [0:0]\stk_b1_rg_reg[31]_0 ;
  wire tout__1_carry;

  ndym_alu_art art
       (.DI(DI),
        .O(O),
        .S(S),
        .cbus_inferred_i_12(cbus_inferred_i_12),
        .cbus_inferred_i_12_0(cbus_inferred_i_12_0),
        .cbus_inferred_i_16(cbus_inferred_i_16),
        .cbus_inferred_i_169(cbus_inferred_i_169),
        .cbus_inferred_i_169_0(cbus_inferred_i_169_0),
        .cbus_inferred_i_16_0(cbus_inferred_i_16_0),
        .cbus_inferred_i_20(cbus_inferred_i_20),
        .cbus_inferred_i_20_0(cbus_inferred_i_20_0),
        .cbus_inferred_i_24(cbus_inferred_i_24),
        .cbus_inferred_i_24_0(cbus_inferred_i_24_0),
        .cbus_inferred_i_4(cbus_inferred_i_4),
        .cbus_inferred_i_4_0(cbus_inferred_i_4_0),
        .cbus_inferred_i_8(cbus_inferred_i_8),
        .cbus_inferred_i_8_0(cbus_inferred_i_8_0),
        .cbus_inferred_i_96(cbus_inferred_i_96),
        .cbus_inferred_i_96_0(cbus_inferred_i_96_0),
        .drv1(drv1),
        .\stk_b1_rg_reg[31] (\stk_b1_rg_reg[31] ),
        .\stk_b1_rg_reg[31]_0 (\stk_b1_rg_reg[31]_0 ),
        .tout__1_carry(tout__1_carry));
endmodule

module ndym_alu_add
   (\stk_b1_rg_reg[31] ,
    O,
    \stk_b1_rg_reg[31]_0 ,
    tout__1_carry_0,
    DI,
    S,
    cbus_inferred_i_169,
    cbus_inferred_i_169_0,
    cbus_inferred_i_24,
    cbus_inferred_i_24_0,
    cbus_inferred_i_20,
    cbus_inferred_i_20_0,
    cbus_inferred_i_16,
    cbus_inferred_i_16_0,
    cbus_inferred_i_12,
    cbus_inferred_i_12_0,
    cbus_inferred_i_8,
    cbus_inferred_i_8_0,
    cbus_inferred_i_4,
    cbus_inferred_i_4_0,
    cbus_inferred_i_96,
    cbus_inferred_i_96_0,
    drv1);
  output [29:0]\stk_b1_rg_reg[31] ;
  output [0:0]O;
  output [0:0]\stk_b1_rg_reg[31]_0 ;
  output tout__1_carry_0;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]cbus_inferred_i_169;
  input [3:0]cbus_inferred_i_169_0;
  input [3:0]cbus_inferred_i_24;
  input [3:0]cbus_inferred_i_24_0;
  input [3:0]cbus_inferred_i_20;
  input [3:0]cbus_inferred_i_20_0;
  input [3:0]cbus_inferred_i_16;
  input [3:0]cbus_inferred_i_16_0;
  input [3:0]cbus_inferred_i_12;
  input [3:0]cbus_inferred_i_12_0;
  input [3:0]cbus_inferred_i_8;
  input [3:0]cbus_inferred_i_8_0;
  input [3:0]cbus_inferred_i_4;
  input [3:0]cbus_inferred_i_4_0;
  input [0:0]cbus_inferred_i_96;
  input [1:0]cbus_inferred_i_96_0;
  input drv1;

  wire \<const0> ;
  wire [2:0]DI;
  wire [0:0]O;
  wire [3:0]S;
  wire [3:0]cbus_inferred_i_12;
  wire [3:0]cbus_inferred_i_12_0;
  wire [3:0]cbus_inferred_i_16;
  wire [3:0]cbus_inferred_i_169;
  wire [3:0]cbus_inferred_i_169_0;
  wire [3:0]cbus_inferred_i_16_0;
  wire cbus_inferred_i_183_n_0;
  wire cbus_inferred_i_184_n_0;
  wire cbus_inferred_i_185_n_0;
  wire cbus_inferred_i_186_n_0;
  wire [3:0]cbus_inferred_i_20;
  wire cbus_inferred_i_202_n_0;
  wire cbus_inferred_i_203_n_0;
  wire cbus_inferred_i_204_n_0;
  wire cbus_inferred_i_205_n_0;
  wire [3:0]cbus_inferred_i_20_0;
  wire [3:0]cbus_inferred_i_24;
  wire [3:0]cbus_inferred_i_24_0;
  wire [3:0]cbus_inferred_i_4;
  wire [3:0]cbus_inferred_i_4_0;
  wire [3:0]cbus_inferred_i_8;
  wire [3:0]cbus_inferred_i_8_0;
  wire [0:0]cbus_inferred_i_96;
  wire [1:0]cbus_inferred_i_96_0;
  wire drv1;
  wire [1:1]p_1_in__0;
  wire [29:0]\stk_b1_rg_reg[31] ;
  wire [0:0]\stk_b1_rg_reg[31]_0 ;
  wire tout__1_carry_0;
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
  wire tout__1_carry__3_n_0;
  wire tout__1_carry__3_n_1;
  wire tout__1_carry__3_n_2;
  wire tout__1_carry__3_n_3;
  wire tout__1_carry__4_n_0;
  wire tout__1_carry__4_n_1;
  wire tout__1_carry__4_n_2;
  wire tout__1_carry__4_n_3;
  wire tout__1_carry__5_n_0;
  wire tout__1_carry__5_n_1;
  wire tout__1_carry__5_n_2;
  wire tout__1_carry__5_n_3;
  wire tout__1_carry__6_n_0;
  wire tout__1_carry__6_n_1;
  wire tout__1_carry__6_n_2;
  wire tout__1_carry__6_n_3;
  wire tout__1_carry__7_n_3;
  wire tout__1_carry_n_0;
  wire tout__1_carry_n_1;
  wire tout__1_carry_n_2;
  wire tout__1_carry_n_3;
  wire [3:0]NLW_tout__1_carry__7_O_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    cbus_inferred_i_102
       (.I0(cbus_inferred_i_183_n_0),
        .I1(cbus_inferred_i_184_n_0),
        .I2(cbus_inferred_i_185_n_0),
        .I3(cbus_inferred_i_186_n_0),
        .I4(drv1),
        .I5(p_1_in__0),
        .O(tout__1_carry_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    cbus_inferred_i_183
       (.I0(\stk_b1_rg_reg[31] [27]),
        .I1(\stk_b1_rg_reg[31] [28]),
        .I2(\stk_b1_rg_reg[31] [29]),
        .I3(O),
        .I4(cbus_inferred_i_202_n_0),
        .O(cbus_inferred_i_183_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    cbus_inferred_i_184
       (.I0(\stk_b1_rg_reg[31] [17]),
        .I1(\stk_b1_rg_reg[31] [18]),
        .I2(\stk_b1_rg_reg[31] [15]),
        .I3(\stk_b1_rg_reg[31] [16]),
        .I4(cbus_inferred_i_203_n_0),
        .O(cbus_inferred_i_184_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cbus_inferred_i_185
       (.I0(\stk_b1_rg_reg[31] [3]),
        .I1(\stk_b1_rg_reg[31] [4]),
        .I2(\stk_b1_rg_reg[31] [5]),
        .I3(\stk_b1_rg_reg[31] [6]),
        .I4(cbus_inferred_i_204_n_0),
        .O(cbus_inferred_i_185_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cbus_inferred_i_186
       (.I0(\stk_b1_rg_reg[31] [11]),
        .I1(\stk_b1_rg_reg[31] [12]),
        .I2(\stk_b1_rg_reg[31] [13]),
        .I3(\stk_b1_rg_reg[31] [14]),
        .I4(cbus_inferred_i_205_n_0),
        .O(cbus_inferred_i_186_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    cbus_inferred_i_202
       (.I0(\stk_b1_rg_reg[31] [26]),
        .I1(\stk_b1_rg_reg[31] [25]),
        .I2(\stk_b1_rg_reg[31] [24]),
        .I3(\stk_b1_rg_reg[31] [23]),
        .O(cbus_inferred_i_202_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    cbus_inferred_i_203
       (.I0(\stk_b1_rg_reg[31] [22]),
        .I1(\stk_b1_rg_reg[31] [21]),
        .I2(\stk_b1_rg_reg[31] [20]),
        .I3(\stk_b1_rg_reg[31] [19]),
        .O(cbus_inferred_i_203_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cbus_inferred_i_204
       (.I0(\stk_b1_rg_reg[31] [2]),
        .I1(\stk_b1_rg_reg[31] [1]),
        .I2(p_1_in__0),
        .I3(\stk_b1_rg_reg[31] [0]),
        .O(cbus_inferred_i_204_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cbus_inferred_i_205
       (.I0(\stk_b1_rg_reg[31] [10]),
        .I1(\stk_b1_rg_reg[31] [9]),
        .I2(\stk_b1_rg_reg[31] [8]),
        .I3(\stk_b1_rg_reg[31] [7]),
        .O(cbus_inferred_i_205_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry
       (.CI(\<const0> ),
        .CO({tout__1_carry_n_0,tout__1_carry_n_1,tout__1_carry_n_2,tout__1_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({DI,\<const0> }),
        .O({\stk_b1_rg_reg[31] [2:1],p_1_in__0,\stk_b1_rg_reg[31] [0]}),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__0
       (.CI(tout__1_carry_n_0),
        .CO({tout__1_carry__0_n_0,tout__1_carry__0_n_1,tout__1_carry__0_n_2,tout__1_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(cbus_inferred_i_169),
        .O(\stk_b1_rg_reg[31] [6:3]),
        .S(cbus_inferred_i_169_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__1
       (.CI(tout__1_carry__0_n_0),
        .CO({tout__1_carry__1_n_0,tout__1_carry__1_n_1,tout__1_carry__1_n_2,tout__1_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(cbus_inferred_i_24),
        .O(\stk_b1_rg_reg[31] [10:7]),
        .S(cbus_inferred_i_24_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__2
       (.CI(tout__1_carry__1_n_0),
        .CO({tout__1_carry__2_n_0,tout__1_carry__2_n_1,tout__1_carry__2_n_2,tout__1_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(cbus_inferred_i_20),
        .O(\stk_b1_rg_reg[31] [14:11]),
        .S(cbus_inferred_i_20_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__3
       (.CI(tout__1_carry__2_n_0),
        .CO({tout__1_carry__3_n_0,tout__1_carry__3_n_1,tout__1_carry__3_n_2,tout__1_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(cbus_inferred_i_16),
        .O(\stk_b1_rg_reg[31] [18:15]),
        .S(cbus_inferred_i_16_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__4
       (.CI(tout__1_carry__3_n_0),
        .CO({tout__1_carry__4_n_0,tout__1_carry__4_n_1,tout__1_carry__4_n_2,tout__1_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI(cbus_inferred_i_12),
        .O(\stk_b1_rg_reg[31] [22:19]),
        .S(cbus_inferred_i_12_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__5
       (.CI(tout__1_carry__4_n_0),
        .CO({tout__1_carry__5_n_0,tout__1_carry__5_n_1,tout__1_carry__5_n_2,tout__1_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI(cbus_inferred_i_8),
        .O(\stk_b1_rg_reg[31] [26:23]),
        .S(cbus_inferred_i_8_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__6
       (.CI(tout__1_carry__5_n_0),
        .CO({tout__1_carry__6_n_0,tout__1_carry__6_n_1,tout__1_carry__6_n_2,tout__1_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI(cbus_inferred_i_4),
        .O({O,\stk_b1_rg_reg[31] [29:27]}),
        .S(cbus_inferred_i_4_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__7
       (.CI(tout__1_carry__6_n_0),
        .CO(tout__1_carry__7_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,cbus_inferred_i_96}),
        .O({\stk_b1_rg_reg[31]_0 ,NLW_tout__1_carry__7_O_UNCONNECTED[0]}),
        .S({\<const0> ,\<const0> ,cbus_inferred_i_96_0}));
endmodule

module ndym_alu_art
   (\stk_b1_rg_reg[31] ,
    O,
    \stk_b1_rg_reg[31]_0 ,
    tout__1_carry,
    DI,
    S,
    cbus_inferred_i_169,
    cbus_inferred_i_169_0,
    cbus_inferred_i_24,
    cbus_inferred_i_24_0,
    cbus_inferred_i_20,
    cbus_inferred_i_20_0,
    cbus_inferred_i_16,
    cbus_inferred_i_16_0,
    cbus_inferred_i_12,
    cbus_inferred_i_12_0,
    cbus_inferred_i_8,
    cbus_inferred_i_8_0,
    cbus_inferred_i_4,
    cbus_inferred_i_4_0,
    cbus_inferred_i_96,
    cbus_inferred_i_96_0,
    drv1);
  output [29:0]\stk_b1_rg_reg[31] ;
  output [0:0]O;
  output [0:0]\stk_b1_rg_reg[31]_0 ;
  output tout__1_carry;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]cbus_inferred_i_169;
  input [3:0]cbus_inferred_i_169_0;
  input [3:0]cbus_inferred_i_24;
  input [3:0]cbus_inferred_i_24_0;
  input [3:0]cbus_inferred_i_20;
  input [3:0]cbus_inferred_i_20_0;
  input [3:0]cbus_inferred_i_16;
  input [3:0]cbus_inferred_i_16_0;
  input [3:0]cbus_inferred_i_12;
  input [3:0]cbus_inferred_i_12_0;
  input [3:0]cbus_inferred_i_8;
  input [3:0]cbus_inferred_i_8_0;
  input [3:0]cbus_inferred_i_4;
  input [3:0]cbus_inferred_i_4_0;
  input [0:0]cbus_inferred_i_96;
  input [1:0]cbus_inferred_i_96_0;
  input drv1;

  wire [2:0]DI;
  wire [0:0]O;
  wire [3:0]S;
  wire [3:0]cbus_inferred_i_12;
  wire [3:0]cbus_inferred_i_12_0;
  wire [3:0]cbus_inferred_i_16;
  wire [3:0]cbus_inferred_i_169;
  wire [3:0]cbus_inferred_i_169_0;
  wire [3:0]cbus_inferred_i_16_0;
  wire [3:0]cbus_inferred_i_20;
  wire [3:0]cbus_inferred_i_20_0;
  wire [3:0]cbus_inferred_i_24;
  wire [3:0]cbus_inferred_i_24_0;
  wire [3:0]cbus_inferred_i_4;
  wire [3:0]cbus_inferred_i_4_0;
  wire [3:0]cbus_inferred_i_8;
  wire [3:0]cbus_inferred_i_8_0;
  wire [0:0]cbus_inferred_i_96;
  wire [1:0]cbus_inferred_i_96_0;
  wire drv1;
  wire [29:0]\stk_b1_rg_reg[31] ;
  wire [0:0]\stk_b1_rg_reg[31]_0 ;
  wire tout__1_carry;

  ndym_alu_add add
       (.DI(DI),
        .O(O),
        .S(S),
        .cbus_inferred_i_12(cbus_inferred_i_12),
        .cbus_inferred_i_12_0(cbus_inferred_i_12_0),
        .cbus_inferred_i_16(cbus_inferred_i_16),
        .cbus_inferred_i_169(cbus_inferred_i_169),
        .cbus_inferred_i_169_0(cbus_inferred_i_169_0),
        .cbus_inferred_i_16_0(cbus_inferred_i_16_0),
        .cbus_inferred_i_20(cbus_inferred_i_20),
        .cbus_inferred_i_20_0(cbus_inferred_i_20_0),
        .cbus_inferred_i_24(cbus_inferred_i_24),
        .cbus_inferred_i_24_0(cbus_inferred_i_24_0),
        .cbus_inferred_i_4(cbus_inferred_i_4),
        .cbus_inferred_i_4_0(cbus_inferred_i_4_0),
        .cbus_inferred_i_8(cbus_inferred_i_8),
        .cbus_inferred_i_8_0(cbus_inferred_i_8_0),
        .cbus_inferred_i_96(cbus_inferred_i_96),
        .cbus_inferred_i_96_0(cbus_inferred_i_96_0),
        .drv1(drv1),
        .\stk_b1_rg_reg[31] (\stk_b1_rg_reg[31] ),
        .\stk_b1_rg_reg[31]_0 (\stk_b1_rg_reg[31]_0 ),
        .tout__1_carry_0(tout__1_carry));
endmodule

module ndym_ctrl
   (in0,
    E,
    ccmd,
    bbus_o,
    abus_o,
    abus,
    ctl_selpc,
    ctl_push,
    badr,
    \ir_rg_reg[5]_0 ,
    \stat_reg[1] ,
    \stat_reg[1]_0 ,
    \stat_reg[1]_1 ,
    ctl_sppp,
    \stat_reg[0] ,
    cbus,
    drv1,
    \stk_b1_rg_reg[31] ,
    ctl_mmsp,
    brdy_0,
    \stk_b1_rg_reg[31]_0 ,
    \stk_b1_rg_reg[31]_1 ,
    \stk_b1_rg_reg[31]_2 ,
    DI,
    S,
    \stk_b1_rg_reg[6] ,
    \stk_b1_rg_reg[7] ,
    \stk_b1_rg_reg[10] ,
    \stk_b1_rg_reg[11] ,
    \stk_b1_rg_reg[14] ,
    \stk_b1_rg_reg[15] ,
    \stk_b1_rg_reg[18] ,
    \stk_b1_rg_reg[19] ,
    \stk_b1_rg_reg[22] ,
    \stk_b1_rg_reg[23] ,
    \stk_b1_rg_reg[26] ,
    \stk_b1_rg_reg[27] ,
    rgf_ie_rg_reg,
    \sptr_reg[31] ,
    bdatw,
    \pcnt_reg[31] ,
    p_0_in,
    clk,
    rgf_ie_rg_reg_0,
    brdy,
    rgf_ie,
    irq,
    Q,
    out,
    \bdatw[31] ,
    crdy,
    abus_inferred_i_1,
    bdatr,
    abus_inferred_i_108,
    abus_inferred_i_105,
    abus_inferred_i_102,
    abus_inferred_i_99,
    abus_inferred_i_97,
    abus_inferred_i_94,
    abus_inferred_i_90,
    abus_inferred_i_87,
    \pcnt_reg[31]_0 ,
    cbus_i,
    \stk_ccmd_rg_reg[1] ,
    \stk_b1_rg_reg[30] ,
    O,
    cbus_inferred_i_29,
    sptr_dec,
    abus_inferred_i_37,
    cpu_sts,
    abus_inferred_i_1_0,
    rgf_sp_0,
    rgf_ie_rg_reg_1,
    \sptr_reg[3] ,
    \pcnt[31]_i_2 ,
    fch_iack,
    fdat,
    rst_n,
    \pcnt_reg[3] ,
    \pcnt_reg[31]_1 );
  output in0;
  output [0:0]E;
  output [15:0]ccmd;
  output [31:0]bbus_o;
  output [31:0]abus_o;
  output [31:0]abus;
  output ctl_selpc;
  output ctl_push;
  output [31:0]badr;
  output \ir_rg_reg[5]_0 ;
  output \stat_reg[1] ;
  output \stat_reg[1]_0 ;
  output \stat_reg[1]_1 ;
  output ctl_sppp;
  output [0:0]\stat_reg[0] ;
  output [31:0]cbus;
  output drv1;
  output [0:0]\stk_b1_rg_reg[31] ;
  output ctl_mmsp;
  output [0:0]brdy_0;
  output [1:0]\stk_b1_rg_reg[31]_0 ;
  output [3:0]\stk_b1_rg_reg[31]_1 ;
  output [3:0]\stk_b1_rg_reg[31]_2 ;
  output [2:0]DI;
  output [3:0]S;
  output [3:0]\stk_b1_rg_reg[6] ;
  output [3:0]\stk_b1_rg_reg[7] ;
  output [3:0]\stk_b1_rg_reg[10] ;
  output [3:0]\stk_b1_rg_reg[11] ;
  output [3:0]\stk_b1_rg_reg[14] ;
  output [3:0]\stk_b1_rg_reg[15] ;
  output [3:0]\stk_b1_rg_reg[18] ;
  output [3:0]\stk_b1_rg_reg[19] ;
  output [3:0]\stk_b1_rg_reg[22] ;
  output [3:0]\stk_b1_rg_reg[23] ;
  output [3:0]\stk_b1_rg_reg[26] ;
  output [3:0]\stk_b1_rg_reg[27] ;
  output rgf_ie_rg_reg;
  output \sptr_reg[31] ;
  output [31:0]bdatw;
  output [31:0]\pcnt_reg[31] ;
  input p_0_in;
  input clk;
  input rgf_ie_rg_reg_0;
  input brdy;
  input rgf_ie;
  input irq;
  input [15:0]Q;
  input [31:0]out;
  input [31:0]\bdatw[31] ;
  input crdy;
  input [31:0]abus_inferred_i_1;
  input [31:0]bdatr;
  input abus_inferred_i_108;
  input abus_inferred_i_105;
  input abus_inferred_i_102;
  input abus_inferred_i_99;
  input abus_inferred_i_97;
  input abus_inferred_i_94;
  input abus_inferred_i_90;
  input abus_inferred_i_87;
  input [31:0]\pcnt_reg[31]_0 ;
  input [31:0]cbus_i;
  input \stk_ccmd_rg_reg[1] ;
  input [29:0]\stk_b1_rg_reg[30] ;
  input [0:0]O;
  input [0:0]cbus_inferred_i_29;
  input [25:0]sptr_dec;
  input [25:0]abus_inferred_i_37;
  input [31:0]cpu_sts;
  input [31:0]abus_inferred_i_1_0;
  input [5:0]rgf_sp_0;
  input rgf_ie_rg_reg_1;
  input \sptr_reg[3] ;
  input [31:0]\pcnt[31]_i_2 ;
  input fch_iack;
  input [7:0]fdat;
  input rst_n;
  input \pcnt_reg[3] ;
  input \pcnt_reg[31]_1 ;

  wire \<const0> ;
  wire \<const1> ;
  wire [2:0]DI;
  wire [0:0]E;
  wire [0:0]O;
  wire [15:0]Q;
  wire [3:0]S;
  wire [31:0]abus;
  wire [31:0]abus_inferred_i_1;
  wire abus_inferred_i_100_n_0;
  wire abus_inferred_i_101_n_0;
  wire abus_inferred_i_102;
  wire abus_inferred_i_103_n_0;
  wire abus_inferred_i_104_n_0;
  wire abus_inferred_i_105;
  wire abus_inferred_i_106_n_0;
  wire abus_inferred_i_107_n_0;
  wire abus_inferred_i_108;
  wire abus_inferred_i_109_n_0;
  wire abus_inferred_i_110_n_0;
  wire abus_inferred_i_115_n_0;
  wire abus_inferred_i_116_n_0;
  wire abus_inferred_i_139_n_0;
  wire abus_inferred_i_141_n_0;
  wire abus_inferred_i_144_n_0;
  wire abus_inferred_i_148_n_0;
  wire abus_inferred_i_150_n_0;
  wire abus_inferred_i_152_n_0;
  wire abus_inferred_i_154_n_0;
  wire abus_inferred_i_156_n_0;
  wire abus_inferred_i_158_n_0;
  wire abus_inferred_i_160_n_0;
  wire abus_inferred_i_164_n_0;
  wire abus_inferred_i_165_n_0;
  wire abus_inferred_i_166_n_0;
  wire [31:0]abus_inferred_i_1_0;
  wire [25:0]abus_inferred_i_37;
  wire abus_inferred_i_87;
  wire abus_inferred_i_89_n_0;
  wire abus_inferred_i_90;
  wire abus_inferred_i_91_n_0;
  wire abus_inferred_i_94;
  wire abus_inferred_i_96_n_0;
  wire abus_inferred_i_97;
  wire abus_inferred_i_98_n_0;
  wire abus_inferred_i_99;
  wire [31:0]abus_o;
  wire [31:0]badr;
  wire [31:0]bbus_o;
  wire \bcmd[0]_INST_0_i_1_n_0 ;
  wire \bcmd[1]_INST_0_i_2_n_0 ;
  wire \bcmd[3]_INST_0_i_1_n_0 ;
  wire [31:0]bdatr;
  wire [31:0]bdatw;
  wire [31:0]\bdatw[31] ;
  wire brdy;
  wire [0:0]brdy_0;
  wire [31:0]cbus;
  wire [31:0]cbus_i;
  wire cbus_inferred_i_175_n_0;
  wire cbus_inferred_i_191_n_0;
  wire cbus_inferred_i_196_n_0;
  wire cbus_inferred_i_200_n_0;
  wire cbus_inferred_i_208_n_0;
  wire cbus_inferred_i_209_n_0;
  wire [0:0]cbus_inferred_i_29;
  wire [15:0]ccmd;
  wire \ccmd[15]_INST_0_i_2_n_0 ;
  wire \ccmd[15]_INST_0_i_4_n_0 ;
  wire \ccmd[15]_INST_0_i_5_n_0 ;
  wire clk;
  wire [31:0]cpu_sts;
  wire crdy;
  wire [2:0]ctl_bacc;
  wire ctl_fetch_rg;
  wire ctl_fetch_rg_i_10_n_0;
  wire ctl_fetch_rg_i_11_n_0;
  wire ctl_fetch_rg_i_12_n_0;
  wire ctl_fetch_rg_i_13_n_0;
  wire ctl_fetch_rg_i_4_n_0;
  wire ctl_mmsp;
  wire ctl_push;
  wire ctl_selpc;
  wire ctl_sppp;
  wire drv1;
  wire fch_iack;
  wire [7:0]fdat;
  wire fsm_n_290;
  wire fsm_n_291;
  wire fsm_n_292;
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
  wire \ir_rg_reg[5]_0 ;
  wire irq;
  wire \ivec[31]_i_3_n_0 ;
  wire \ivec[31]_i_4_n_0 ;
  wire mem_reg_0_63_0_0_i_13_n_0;
  wire mem_reg_0_63_0_0_i_18_n_0;
  wire mem_reg_0_63_0_0_i_19_n_0;
  wire mem_reg_0_63_0_0_i_21_n_0;
  wire mem_reg_0_63_0_0_i_22_n_0;
  wire [31:0]out;
  wire p_0_in;
  wire \pcnt[31]_i_12_n_0 ;
  wire [31:0]\pcnt[31]_i_2 ;
  wire [31:0]\pcnt_reg[31] ;
  wire [31:0]\pcnt_reg[31]_0 ;
  wire \pcnt_reg[31]_1 ;
  wire \pcnt_reg[3] ;
  wire rgf_ie;
  wire rgf_ie_rg_i_8_n_0;
  wire rgf_ie_rg_i_9_n_0;
  wire rgf_ie_rg_reg;
  wire rgf_ie_rg_reg_0;
  wire rgf_ie_rg_reg_1;
  wire [5:0]rgf_sp_0;
  wire rst_n;
  wire \sptr[31]_i_10_n_0 ;
  wire \sptr[31]_i_11_n_0 ;
  wire \sptr[31]_i_13_n_0 ;
  wire \sptr[31]_i_16_n_0 ;
  wire [25:0]sptr_dec;
  wire \sptr_reg[31] ;
  wire \sptr_reg[3] ;
  wire \stat[0]_i_10_n_0 ;
  wire [0:0]\stat_reg[0] ;
  wire \stat_reg[1] ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;
  wire \stk_b1_rg[31]_i_2_n_0 ;
  wire \stk_b1_rg[31]_i_4_n_0 ;
  wire \stk_b1_rg[31]_i_5_n_0 ;
  wire [3:0]\stk_b1_rg_reg[10] ;
  wire [3:0]\stk_b1_rg_reg[11] ;
  wire [3:0]\stk_b1_rg_reg[14] ;
  wire [3:0]\stk_b1_rg_reg[15] ;
  wire [3:0]\stk_b1_rg_reg[18] ;
  wire [3:0]\stk_b1_rg_reg[19] ;
  wire [3:0]\stk_b1_rg_reg[22] ;
  wire [3:0]\stk_b1_rg_reg[23] ;
  wire [3:0]\stk_b1_rg_reg[26] ;
  wire [3:0]\stk_b1_rg_reg[27] ;
  wire [29:0]\stk_b1_rg_reg[30] ;
  wire [0:0]\stk_b1_rg_reg[31] ;
  wire [1:0]\stk_b1_rg_reg[31]_0 ;
  wire [3:0]\stk_b1_rg_reg[31]_1 ;
  wire [3:0]\stk_b1_rg_reg[31]_2 ;
  wire [3:0]\stk_b1_rg_reg[6] ;
  wire [3:0]\stk_b1_rg_reg[7] ;
  wire stk_bool;
  wire \stk_ccmd_rg_reg[1] ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hA8A88888AA888888)) 
    abus_inferred_i_100
       (.I0(abus_inferred_i_144_n_0),
        .I1(abus_inferred_i_154_n_0),
        .I2(\pcnt_reg[31]_0 [3]),
        .I3(rgf_sp_0[3]),
        .I4(abus_inferred_i_148_n_0),
        .I5(ir[0]),
        .O(abus_inferred_i_100_n_0));
  LUT5 #(
    .INIT(32'h26226626)) 
    abus_inferred_i_101
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(ir[0]),
        .I4(ir[1]),
        .O(abus_inferred_i_101_n_0));
  LUT6 #(
    .INIT(64'hA8A88888AA888888)) 
    abus_inferred_i_103
       (.I0(abus_inferred_i_144_n_0),
        .I1(abus_inferred_i_156_n_0),
        .I2(\pcnt_reg[31]_0 [2]),
        .I3(rgf_sp_0[2]),
        .I4(abus_inferred_i_148_n_0),
        .I5(ir[0]),
        .O(abus_inferred_i_103_n_0));
  LUT5 #(
    .INIT(32'h34307434)) 
    abus_inferred_i_104
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(ir[0]),
        .I4(ir[1]),
        .O(abus_inferred_i_104_n_0));
  LUT6 #(
    .INIT(64'hA8A88888AA888888)) 
    abus_inferred_i_106
       (.I0(abus_inferred_i_144_n_0),
        .I1(abus_inferred_i_158_n_0),
        .I2(\pcnt_reg[31]_0 [1]),
        .I3(rgf_sp_0[1]),
        .I4(abus_inferred_i_148_n_0),
        .I5(ir[0]),
        .O(abus_inferred_i_106_n_0));
  LUT5 #(
    .INIT(32'h37334404)) 
    abus_inferred_i_107
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(ir[0]),
        .I4(ir[1]),
        .O(abus_inferred_i_107_n_0));
  LUT6 #(
    .INIT(64'hA8A88888AA888888)) 
    abus_inferred_i_109
       (.I0(abus_inferred_i_144_n_0),
        .I1(abus_inferred_i_160_n_0),
        .I2(\pcnt_reg[31]_0 [0]),
        .I3(rgf_sp_0[0]),
        .I4(abus_inferred_i_148_n_0),
        .I5(ir[0]),
        .O(abus_inferred_i_109_n_0));
  LUT5 #(
    .INIT(32'h37007704)) 
    abus_inferred_i_110
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(ir[0]),
        .I4(ir[1]),
        .O(abus_inferred_i_110_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    abus_inferred_i_115
       (.I0(ir[0]),
        .I1(ir[2]),
        .I2(ir[1]),
        .O(abus_inferred_i_115_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    abus_inferred_i_116
       (.I0(ir[2]),
        .I1(ir[1]),
        .I2(ir[0]),
        .O(abus_inferred_i_116_n_0));
  LUT5 #(
    .INIT(32'h00C000AF)) 
    abus_inferred_i_139
       (.I0(abus_inferred_i_1_0[10]),
        .I1(cpu_sts[10]),
        .I2(ir[2]),
        .I3(ir[1]),
        .I4(ir[0]),
        .O(abus_inferred_i_139_n_0));
  LUT5 #(
    .INIT(32'h00C000AF)) 
    abus_inferred_i_141
       (.I0(abus_inferred_i_1_0[9]),
        .I1(cpu_sts[9]),
        .I2(ir[2]),
        .I3(ir[1]),
        .I4(ir[0]),
        .O(abus_inferred_i_141_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    abus_inferred_i_144
       (.I0(ir[4]),
        .I1(ir[3]),
        .O(abus_inferred_i_144_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    abus_inferred_i_148
       (.I0(ir[2]),
        .I1(ir[1]),
        .O(abus_inferred_i_148_n_0));
  LUT5 #(
    .INIT(32'h00A000C0)) 
    abus_inferred_i_150
       (.I0(cpu_sts[5]),
        .I1(abus_inferred_i_1_0[5]),
        .I2(ir[2]),
        .I3(ir[1]),
        .I4(ir[0]),
        .O(abus_inferred_i_150_n_0));
  LUT5 #(
    .INIT(32'h00A000C0)) 
    abus_inferred_i_152
       (.I0(cpu_sts[4]),
        .I1(abus_inferred_i_1_0[4]),
        .I2(ir[2]),
        .I3(ir[1]),
        .I4(ir[0]),
        .O(abus_inferred_i_152_n_0));
  LUT5 #(
    .INIT(32'h00A000C0)) 
    abus_inferred_i_154
       (.I0(cpu_sts[3]),
        .I1(abus_inferred_i_1_0[3]),
        .I2(ir[2]),
        .I3(ir[1]),
        .I4(ir[0]),
        .O(abus_inferred_i_154_n_0));
  LUT5 #(
    .INIT(32'h00A000C0)) 
    abus_inferred_i_156
       (.I0(cpu_sts[2]),
        .I1(abus_inferred_i_1_0[2]),
        .I2(ir[2]),
        .I3(ir[1]),
        .I4(ir[0]),
        .O(abus_inferred_i_156_n_0));
  LUT5 #(
    .INIT(32'h00A000C0)) 
    abus_inferred_i_158
       (.I0(cpu_sts[1]),
        .I1(abus_inferred_i_1_0[1]),
        .I2(ir[2]),
        .I3(ir[1]),
        .I4(ir[0]),
        .O(abus_inferred_i_158_n_0));
  LUT5 #(
    .INIT(32'h00A000C0)) 
    abus_inferred_i_160
       (.I0(cpu_sts[0]),
        .I1(abus_inferred_i_1_0[0]),
        .I2(ir[2]),
        .I3(ir[1]),
        .I4(ir[0]),
        .O(abus_inferred_i_160_n_0));
  LUT3 #(
    .INIT(8'hC2)) 
    abus_inferred_i_164
       (.I0(irq),
        .I1(ir[4]),
        .I2(ir[2]),
        .O(abus_inferred_i_164_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    abus_inferred_i_165
       (.I0(ir[4]),
        .I1(ir[5]),
        .O(abus_inferred_i_165_n_0));
  LUT4 #(
    .INIT(16'hC308)) 
    abus_inferred_i_166
       (.I0(rgf_ie),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(ir[2]),
        .O(abus_inferred_i_166_n_0));
  LUT5 #(
    .INIT(32'h04044404)) 
    abus_inferred_i_89
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(ir[2]),
        .O(abus_inferred_i_89_n_0));
  LUT5 #(
    .INIT(32'h0C0A0F00)) 
    abus_inferred_i_91
       (.I0(abus_inferred_i_1_0[6]),
        .I1(cpu_sts[6]),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(ir[2]),
        .O(abus_inferred_i_91_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF30201000)) 
    abus_inferred_i_96
       (.I0(ir[0]),
        .I1(ir[2]),
        .I2(ir[1]),
        .I3(rgf_sp_0[5]),
        .I4(\pcnt_reg[31]_0 [5]),
        .I5(abus_inferred_i_150_n_0),
        .O(abus_inferred_i_96_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF30201000)) 
    abus_inferred_i_98
       (.I0(ir[0]),
        .I1(ir[2]),
        .I2(ir[1]),
        .I3(rgf_sp_0[4]),
        .I4(\pcnt_reg[31]_0 [4]),
        .I5(abus_inferred_i_152_n_0),
        .O(abus_inferred_i_98_n_0));
  FDRE \bacc_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_292),
        .Q(ctl_bacc[0]),
        .R(p_0_in));
  FDRE \bacc_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_291),
        .Q(ctl_bacc[1]),
        .R(p_0_in));
  FDRE \bacc_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(fsm_n_290),
        .Q(ctl_bacc[2]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'hE)) 
    \bcmd[0]_INST_0_i_1 
       (.I0(ir[6]),
        .I1(ir[7]),
        .O(\bcmd[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bcmd[1]_INST_0_i_2 
       (.I0(ir[6]),
        .I1(ir[5]),
        .O(\bcmd[1]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \bcmd[3]_INST_0_i_1 
       (.I0(ir[7]),
        .I1(ir[0]),
        .I2(ir[3]),
        .O(\bcmd[3]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    cbus_inferred_i_175
       (.I0(ir[1]),
        .I1(ir[2]),
        .O(cbus_inferred_i_175_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cbus_inferred_i_191
       (.I0(ir[6]),
        .I1(ir[5]),
        .O(cbus_inferred_i_191_n_0));
  LUT5 #(
    .INIT(32'h050502B0)) 
    cbus_inferred_i_196
       (.I0(ir[5]),
        .I1(ir[2]),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(ir[6]),
        .O(cbus_inferred_i_196_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cbus_inferred_i_200
       (.I0(ir[4]),
        .I1(ir[6]),
        .O(cbus_inferred_i_200_n_0));
  LUT5 #(
    .INIT(32'hFEFEF2FF)) 
    cbus_inferred_i_208
       (.I0(ir[5]),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[4]),
        .I4(ir[0]),
        .O(cbus_inferred_i_208_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cbus_inferred_i_209
       (.I0(ir[0]),
        .I1(ir[1]),
        .O(cbus_inferred_i_209_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[15]_INST_0_i_2 
       (.I0(ir[3]),
        .I1(ir[2]),
        .O(\ccmd[15]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ccmd[15]_INST_0_i_4 
       (.I0(ir[0]),
        .I1(ir[1]),
        .O(\ccmd[15]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[15]_INST_0_i_5 
       (.I0(ir[4]),
        .I1(ir[5]),
        .O(\ccmd[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000F1F0F0F0F1)) 
    ctl_fetch_rg_i_10
       (.I0(ir[1]),
        .I1(brdy),
        .I2(ir[6]),
        .I3(ir[2]),
        .I4(ir[3]),
        .I5(ir[4]),
        .O(ctl_fetch_rg_i_10_n_0));
  LUT6 #(
    .INIT(64'hA00AAAA8000AAAA8)) 
    ctl_fetch_rg_i_11
       (.I0(ctl_fetch_rg_i_12_n_0),
        .I1(ir[3]),
        .I2(ir[2]),
        .I3(ir[0]),
        .I4(ir[1]),
        .I5(ir[4]),
        .O(ctl_fetch_rg_i_11_n_0));
  LUT6 #(
    .INIT(64'h1010300030113011)) 
    ctl_fetch_rg_i_12
       (.I0(ir[3]),
        .I1(ctl_fetch_rg_i_13_n_0),
        .I2(ir[5]),
        .I3(ir[4]),
        .I4(ir[0]),
        .I5(ir[2]),
        .O(ctl_fetch_rg_i_12_n_0));
  LUT5 #(
    .INIT(32'h00000004)) 
    ctl_fetch_rg_i_13
       (.I0(rgf_ie),
        .I1(irq),
        .I2(ir[1]),
        .I3(ir[2]),
        .I4(ir[3]),
        .O(ctl_fetch_rg_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFF00C0EEEE11D1)) 
    ctl_fetch_rg_i_4
       (.I0(stk_bool),
        .I1(ir[3]),
        .I2(brdy),
        .I3(ir[2]),
        .I4(ir[0]),
        .I5(ir[1]),
        .O(ctl_fetch_rg_i_4_n_0));
  FDRE ctl_fetch_rg_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(in0),
        .Q(ctl_fetch_rg),
        .R(p_0_in));
  ndym_fsm fsm
       (.DI(DI),
        .E(E),
        .O(O),
        .Q(Q),
        .S(S),
        .abus_inferred_i_102_0(abus_inferred_i_102),
        .abus_inferred_i_105_0(abus_inferred_i_105),
        .abus_inferred_i_108_0(abus_inferred_i_108),
        .abus_inferred_i_111_0(cbus_inferred_i_191_n_0),
        .abus_inferred_i_111_1(cbus_inferred_i_175_n_0),
        .abus_inferred_i_167(abus_inferred_i_164_n_0),
        .abus_inferred_i_167_0(abus_inferred_i_165_n_0),
        .abus_inferred_i_167_1(abus_inferred_i_166_n_0),
        .abus_inferred_i_1_0(abus_inferred_i_1),
        .abus_inferred_i_1_1(abus_inferred_i_115_n_0),
        .abus_inferred_i_1_2(abus_inferred_i_1_0),
        .abus_inferred_i_1_3(abus_inferred_i_116_n_0),
        .abus_inferred_i_22_0(abus_inferred_i_139_n_0),
        .abus_inferred_i_23_0(abus_inferred_i_141_n_0),
        .abus_inferred_i_25_0(abus_inferred_i_144_n_0),
        .abus_inferred_i_37_0(abus_inferred_i_148_n_0),
        .abus_inferred_i_37_1(abus_inferred_i_37),
        .abus_inferred_i_87_0(abus_inferred_i_87),
        .abus_inferred_i_90_0(abus_inferred_i_90),
        .abus_inferred_i_94_0(abus_inferred_i_94),
        .abus_inferred_i_97_0(abus_inferred_i_97),
        .abus_inferred_i_99_0(abus_inferred_i_99),
        .abus_o(abus_o),
        .abus_o_31_sp_1(\ccmd[15]_INST_0_i_4_n_0 ),
        .badr(badr),
        .\badr[31] (out),
        .bbus_o(bbus_o),
        .\bcmd[1] (\bcmd[1]_INST_0_i_2_n_0 ),
        .\bcmd[3] (\bcmd[3]_INST_0_i_1_n_0 ),
        .bdatr(bdatr),
        .bdatw(bdatw),
        .\bdatw[0]_0 (abus_inferred_i_110_n_0),
        .\bdatw[1]_0 (abus_inferred_i_107_n_0),
        .\bdatw[2]_0 (abus_inferred_i_104_n_0),
        .\bdatw[31] (\bdatw[31] ),
        .\bdatw[3]_0 (abus_inferred_i_101_n_0),
        .bdatw_0_sp_1(abus_inferred_i_109_n_0),
        .bdatw_1_sp_1(abus_inferred_i_106_n_0),
        .bdatw_2_sp_1(abus_inferred_i_103_n_0),
        .bdatw_3_sp_1(abus_inferred_i_100_n_0),
        .bdatw_4_sp_1(abus_inferred_i_98_n_0),
        .bdatw_5_sp_1(abus_inferred_i_96_n_0),
        .bdatw_6_sp_1(abus_inferred_i_91_n_0),
        .bdatw_7_sp_1(abus_inferred_i_89_n_0),
        .brdy(brdy),
        .brdy_0(brdy_0),
        .brdy_1(fsm_n_290),
        .brdy_2(fsm_n_291),
        .cbus_i(cbus_i),
        .\cbus_i[31] (cbus),
        .cbus_inferred_i_109_0(cbus_inferred_i_200_n_0),
        .cbus_inferred_i_187_0(cbus_inferred_i_196_n_0),
        .cbus_inferred_i_29_0(cbus_inferred_i_29),
        .cbus_inferred_i_94_0(\stat[0]_i_10_n_0 ),
        .ccmd(ccmd),
        .clk(clk),
        .clk_0(abus),
        .cpu_sts({cpu_sts[31:11],cpu_sts[8:7]}),
        .crdy(crdy),
        .ctl_bacc(ctl_bacc),
        .ctl_fetch_rg_i_2_0(ctl_fetch_rg_i_11_n_0),
        .ctl_fetch_rg_reg(ctl_fetch_rg_i_4_n_0),
        .ctl_fetch_rg_reg_0(ctl_fetch_rg_i_10_n_0),
        .ctl_push(ctl_push),
        .ctl_sppp(ctl_sppp),
        .in0(in0),
        .\ir_rg_reg[5] (\ir_rg_reg[5]_0 ),
        .\ir_rg_reg[7] (ctl_mmsp),
        .irq(irq),
        .irq_0(ctl_selpc),
        .\ivec_reg[31] (\ivec[31]_i_3_n_0 ),
        .\ivec_reg[31]_0 (\ivec[31]_i_4_n_0 ),
        .mem_reg_0_63_0_0_i_1_0(mem_reg_0_63_0_0_i_19_n_0),
        .mem_reg_0_63_0_0_i_1_1(mem_reg_0_63_0_0_i_13_n_0),
        .mem_reg_0_63_0_0_i_7(mem_reg_0_63_0_0_i_21_n_0),
        .mem_reg_0_63_0_0_i_7_0(mem_reg_0_63_0_0_i_22_n_0),
        .out(ir),
        .p_0_in(p_0_in),
        .\pcnt[31]_i_2_0 (\pcnt[31]_i_2 ),
        .\pcnt[3]_i_6_0 (\pcnt[31]_i_12_n_0 ),
        .\pcnt_reg[31] (\pcnt_reg[31] ),
        .\pcnt_reg[31]_0 (\pcnt_reg[31]_0 ),
        .\pcnt_reg[31]_1 (\pcnt_reg[31]_1 ),
        .\pcnt_reg[3] (\pcnt_reg[3] ),
        .rgf_ie(rgf_ie),
        .rgf_ie_rg_reg(rgf_ie_rg_reg),
        .rgf_ie_rg_reg_0(mem_reg_0_63_0_0_i_18_n_0),
        .rgf_ie_rg_reg_1(rgf_ie_rg_reg_0),
        .rgf_ie_rg_reg_2(rgf_ie_rg_i_8_n_0),
        .rgf_ie_rg_reg_3(rgf_ie_rg_i_9_n_0),
        .rgf_ie_rg_reg_4(rgf_ie_rg_reg_1),
        .\sptr[31]_i_6_0 (\sptr[31]_i_11_n_0 ),
        .\sptr[31]_i_6_1 (\sptr[31]_i_13_n_0 ),
        .\sptr[31]_i_6_2 (\sptr[31]_i_10_n_0 ),
        .\sptr[31]_i_8_0 (\sptr[31]_i_16_n_0 ),
        .sptr_dec(sptr_dec),
        .\sptr_reg[31] (\sptr_reg[31] ),
        .\sptr_reg[3] (\sptr_reg[3] ),
        .\stat_reg[0]_0 (\stat_reg[0] ),
        .\stat_reg[1]_0 (\stat_reg[1] ),
        .\stat_reg[1]_1 (\stat_reg[1]_0 ),
        .\stat_reg[1]_2 (\stat_reg[1]_1 ),
        .\stat_reg[1]_3 (drv1),
        .\stk_b1_rg_reg[0] (fsm_n_292),
        .\stk_b1_rg_reg[10] (\stk_b1_rg_reg[10] ),
        .\stk_b1_rg_reg[11] (\stk_b1_rg_reg[11] ),
        .\stk_b1_rg_reg[14] (\stk_b1_rg_reg[14] ),
        .\stk_b1_rg_reg[15] (\stk_b1_rg_reg[15] ),
        .\stk_b1_rg_reg[18] (\stk_b1_rg_reg[18] ),
        .\stk_b1_rg_reg[19] (\stk_b1_rg_reg[19] ),
        .\stk_b1_rg_reg[22] (\stk_b1_rg_reg[22] ),
        .\stk_b1_rg_reg[23] (\stk_b1_rg_reg[23] ),
        .\stk_b1_rg_reg[26] (\stk_b1_rg_reg[26] ),
        .\stk_b1_rg_reg[27] (\stk_b1_rg_reg[27] ),
        .\stk_b1_rg_reg[30] (\stk_b1_rg_reg[30] ),
        .\stk_b1_rg_reg[31] (\stk_b1_rg_reg[31] ),
        .\stk_b1_rg_reg[31]_0 (\stk_b1_rg_reg[31]_0 ),
        .\stk_b1_rg_reg[31]_1 (\stk_b1_rg_reg[31]_1 ),
        .\stk_b1_rg_reg[31]_2 (\stk_b1_rg_reg[31]_2 ),
        .\stk_b1_rg_reg[31]_3 (\stk_b1_rg[31]_i_2_n_0 ),
        .\stk_b1_rg_reg[31]_4 (\stk_b1_rg[31]_i_4_n_0 ),
        .\stk_b1_rg_reg[31]_5 (\stk_b1_rg[31]_i_5_n_0 ),
        .\stk_b1_rg_reg[6] (\stk_b1_rg_reg[6] ),
        .\stk_b1_rg_reg[7] (\stk_b1_rg_reg[7] ),
        .stk_bool(stk_bool),
        .\stk_ccmd_rg_reg[15] (\ccmd[15]_INST_0_i_2_n_0 ),
        .\stk_ccmd_rg_reg[15]_0 (\bcmd[0]_INST_0_i_1_n_0 ),
        .\stk_ccmd_rg_reg[15]_1 (\ccmd[15]_INST_0_i_5_n_0 ),
        .\stk_ccmd_rg_reg[1] (\stk_ccmd_rg_reg[1] ),
        .tout__1_carry_i_12_0(cbus_inferred_i_208_n_0),
        .tout__1_carry_i_12_1(cbus_inferred_i_209_n_0));
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
  LUT2 #(
    .INIT(4'h7)) 
    \ivec[31]_i_3 
       (.I0(ir[2]),
        .I1(ir[4]),
        .O(\ivec[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ivec[31]_i_4 
       (.I0(ir[5]),
        .I1(ir[3]),
        .O(\ivec[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF1)) 
    mem_reg_0_63_0_0_i_13
       (.I0(ir[4]),
        .I1(ir[3]),
        .I2(ir[7]),
        .I3(ir[6]),
        .O(mem_reg_0_63_0_0_i_13_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    mem_reg_0_63_0_0_i_18
       (.I0(ir[1]),
        .I1(ir[0]),
        .O(mem_reg_0_63_0_0_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    mem_reg_0_63_0_0_i_19
       (.I0(ir[7]),
        .I1(ir[5]),
        .O(mem_reg_0_63_0_0_i_19_n_0));
  LUT5 #(
    .INIT(32'hAEFFEEBB)) 
    mem_reg_0_63_0_0_i_21
       (.I0(ir[7]),
        .I1(ir[4]),
        .I2(ir[1]),
        .I3(ir[3]),
        .I4(ir[2]),
        .O(mem_reg_0_63_0_0_i_21_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF00006000)) 
    mem_reg_0_63_0_0_i_22
       (.I0(ir[4]),
        .I1(ir[2]),
        .I2(ir[0]),
        .I3(ir[1]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(mem_reg_0_63_0_0_i_22_n_0));
  LUT5 #(
    .INIT(32'hF4F40100)) 
    \pcnt[31]_i_12 
       (.I0(ir[1]),
        .I1(ir[6]),
        .I2(ir[5]),
        .I3(irq),
        .I4(ir[4]),
        .O(\pcnt[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    rgf_ie_rg_i_8
       (.I0(ir[0]),
        .I1(ir[3]),
        .O(rgf_ie_rg_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    rgf_ie_rg_i_9
       (.I0(ir[5]),
        .I1(ir[6]),
        .O(rgf_ie_rg_i_9_n_0));
  LUT6 #(
    .INIT(64'hABABABEBABEBABEB)) 
    \sptr[31]_i_10 
       (.I0(\bcmd[0]_INST_0_i_1_n_0 ),
        .I1(ir[3]),
        .I2(ir[4]),
        .I3(brdy),
        .I4(ir[0]),
        .I5(ir[1]),
        .O(\sptr[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h070000FF)) 
    \sptr[31]_i_11 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(brdy),
        .I3(ir[4]),
        .I4(ir[3]),
        .O(\sptr[31]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \sptr[31]_i_13 
       (.I0(ir[1]),
        .I1(ir[2]),
        .I2(ir[3]),
        .O(\sptr[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \sptr[31]_i_16 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(ir[6]),
        .I3(ir[4]),
        .O(\sptr[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[0]_i_10 
       (.I0(ir[3]),
        .I1(ir[4]),
        .O(\stat[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCFCF0C0FFF7F7F7F)) 
    \stk_b1_rg[31]_i_2 
       (.I0(brdy),
        .I1(ir[3]),
        .I2(ir[4]),
        .I3(ir[0]),
        .I4(ir[1]),
        .I5(ir[2]),
        .O(\stk_b1_rg[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \stk_b1_rg[31]_i_4 
       (.I0(ir[2]),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(ir[4]),
        .I4(ir[3]),
        .O(\stk_b1_rg[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFBFBFBF)) 
    \stk_b1_rg[31]_i_5 
       (.I0(ir[1]),
        .I1(ir[2]),
        .I2(ir[4]),
        .I3(ir[3]),
        .I4(ir[0]),
        .O(\stk_b1_rg[31]_i_5_n_0 ));
endmodule

module ndym_fsm
   (E,
    ccmd,
    bbus_o,
    abus_o,
    clk_0,
    irq_0,
    ctl_push,
    badr,
    \ir_rg_reg[5] ,
    \stat_reg[1]_0 ,
    \stat_reg[1]_1 ,
    \stat_reg[1]_2 ,
    ctl_sppp,
    \stat_reg[0]_0 ,
    \cbus_i[31] ,
    \stat_reg[1]_3 ,
    \stk_b1_rg_reg[31] ,
    \ir_rg_reg[7] ,
    brdy_0,
    in0,
    stk_bool,
    \stk_b1_rg_reg[31]_0 ,
    \stk_b1_rg_reg[31]_1 ,
    \stk_b1_rg_reg[31]_2 ,
    DI,
    S,
    \stk_b1_rg_reg[6] ,
    \stk_b1_rg_reg[7] ,
    \stk_b1_rg_reg[10] ,
    \stk_b1_rg_reg[11] ,
    \stk_b1_rg_reg[14] ,
    \stk_b1_rg_reg[15] ,
    \stk_b1_rg_reg[18] ,
    \stk_b1_rg_reg[19] ,
    \stk_b1_rg_reg[22] ,
    \stk_b1_rg_reg[23] ,
    \stk_b1_rg_reg[26] ,
    \stk_b1_rg_reg[27] ,
    rgf_ie_rg_reg,
    \sptr_reg[31] ,
    bdatw,
    brdy_1,
    brdy_2,
    \stk_b1_rg_reg[0] ,
    \pcnt_reg[31] ,
    \stk_ccmd_rg_reg[15] ,
    \stk_ccmd_rg_reg[15]_0 ,
    rgf_ie_rg_reg_0,
    rgf_ie_rg_reg_1,
    \stk_ccmd_rg_reg[15]_1 ,
    out,
    brdy,
    rgf_ie,
    irq,
    cbus_inferred_i_94_0,
    Q,
    \badr[31] ,
    \bdatw[31] ,
    .abus_o_31_sp_1(abus_o_31_sn_1),
    crdy,
    .bdatw_0_sp_1(bdatw_0_sn_1),
    \bdatw[0]_0 ,
    abus_inferred_i_1_0,
    bdatr,
    abus_inferred_i_108_0,
    .bdatw_1_sp_1(bdatw_1_sn_1),
    \bdatw[1]_0 ,
    abus_inferred_i_105_0,
    .bdatw_2_sp_1(bdatw_2_sn_1),
    \bdatw[2]_0 ,
    abus_inferred_i_102_0,
    .bdatw_3_sp_1(bdatw_3_sn_1),
    \bdatw[3]_0 ,
    abus_inferred_i_99_0,
    .bdatw_4_sp_1(bdatw_4_sn_1),
    abus_inferred_i_97_0,
    .bdatw_5_sp_1(bdatw_5_sn_1),
    abus_inferred_i_94_0,
    .bdatw_6_sp_1(bdatw_6_sn_1),
    abus_inferred_i_90_0,
    .bdatw_7_sp_1(bdatw_7_sn_1),
    abus_inferred_i_87_0,
    \pcnt_reg[31]_0 ,
    abus_inferred_i_167,
    abus_inferred_i_167_0,
    abus_inferred_i_167_1,
    \ivec_reg[31] ,
    \ivec_reg[31]_0 ,
    cbus_i,
    \stk_ccmd_rg_reg[1] ,
    \stk_b1_rg_reg[30] ,
    O,
    cbus_inferred_i_29_0,
    abus_inferred_i_111_0,
    tout__1_carry_i_12_0,
    \bcmd[3] ,
    cbus_inferred_i_187_0,
    rgf_ie_rg_reg_2,
    rgf_ie_rg_reg_3,
    abus_inferred_i_37_0,
    sptr_dec,
    abus_inferred_i_37_1,
    abus_inferred_i_25_0,
    cpu_sts,
    abus_inferred_i_1_1,
    abus_inferred_i_1_2,
    abus_inferred_i_1_3,
    mem_reg_0_63_0_0_i_7,
    mem_reg_0_63_0_0_i_7_0,
    \stk_b1_rg_reg[31]_3 ,
    \stk_b1_rg_reg[31]_4 ,
    \stk_b1_rg_reg[31]_5 ,
    tout__1_carry_i_12_1,
    ctl_fetch_rg_reg,
    ctl_fetch_rg_i_2_0,
    ctl_fetch_rg_reg_0,
    abus_inferred_i_111_1,
    cbus_inferred_i_109_0,
    mem_reg_0_63_0_0_i_1_0,
    \sptr[31]_i_6_0 ,
    \sptr[31]_i_6_1 ,
    \sptr[31]_i_8_0 ,
    ctl_bacc,
    \bcmd[1] ,
    \pcnt[3]_i_6_0 ,
    abus_inferred_i_22_0,
    abus_inferred_i_23_0,
    rgf_ie_rg_reg_4,
    \sptr_reg[3] ,
    \pcnt[31]_i_2_0 ,
    \sptr[31]_i_6_2 ,
    mem_reg_0_63_0_0_i_1_1,
    p_0_in,
    clk,
    \pcnt_reg[3] ,
    \pcnt_reg[31]_1 );
  output [0:0]E;
  output [15:0]ccmd;
  output [31:0]bbus_o;
  output [31:0]abus_o;
  output [31:0]clk_0;
  output irq_0;
  output ctl_push;
  output [31:0]badr;
  output \ir_rg_reg[5] ;
  output \stat_reg[1]_0 ;
  output \stat_reg[1]_1 ;
  output \stat_reg[1]_2 ;
  output ctl_sppp;
  output [0:0]\stat_reg[0]_0 ;
  output [31:0]\cbus_i[31] ;
  output \stat_reg[1]_3 ;
  output [0:0]\stk_b1_rg_reg[31] ;
  output \ir_rg_reg[7] ;
  output [0:0]brdy_0;
  output in0;
  output stk_bool;
  output [1:0]\stk_b1_rg_reg[31]_0 ;
  output [3:0]\stk_b1_rg_reg[31]_1 ;
  output [3:0]\stk_b1_rg_reg[31]_2 ;
  output [2:0]DI;
  output [3:0]S;
  output [3:0]\stk_b1_rg_reg[6] ;
  output [3:0]\stk_b1_rg_reg[7] ;
  output [3:0]\stk_b1_rg_reg[10] ;
  output [3:0]\stk_b1_rg_reg[11] ;
  output [3:0]\stk_b1_rg_reg[14] ;
  output [3:0]\stk_b1_rg_reg[15] ;
  output [3:0]\stk_b1_rg_reg[18] ;
  output [3:0]\stk_b1_rg_reg[19] ;
  output [3:0]\stk_b1_rg_reg[22] ;
  output [3:0]\stk_b1_rg_reg[23] ;
  output [3:0]\stk_b1_rg_reg[26] ;
  output [3:0]\stk_b1_rg_reg[27] ;
  output rgf_ie_rg_reg;
  output \sptr_reg[31] ;
  output [31:0]bdatw;
  output brdy_1;
  output brdy_2;
  output \stk_b1_rg_reg[0] ;
  output [31:0]\pcnt_reg[31] ;
  input \stk_ccmd_rg_reg[15] ;
  input \stk_ccmd_rg_reg[15]_0 ;
  input rgf_ie_rg_reg_0;
  input rgf_ie_rg_reg_1;
  input \stk_ccmd_rg_reg[15]_1 ;
  input [7:0]out;
  input brdy;
  input rgf_ie;
  input irq;
  input cbus_inferred_i_94_0;
  input [15:0]Q;
  input [31:0]\badr[31] ;
  input [31:0]\bdatw[31] ;
  input crdy;
  input \bdatw[0]_0 ;
  input [31:0]abus_inferred_i_1_0;
  input [31:0]bdatr;
  input abus_inferred_i_108_0;
  input \bdatw[1]_0 ;
  input abus_inferred_i_105_0;
  input \bdatw[2]_0 ;
  input abus_inferred_i_102_0;
  input \bdatw[3]_0 ;
  input abus_inferred_i_99_0;
  input abus_inferred_i_97_0;
  input abus_inferred_i_94_0;
  input abus_inferred_i_90_0;
  input abus_inferred_i_87_0;
  input [31:0]\pcnt_reg[31]_0 ;
  input abus_inferred_i_167;
  input abus_inferred_i_167_0;
  input abus_inferred_i_167_1;
  input \ivec_reg[31] ;
  input \ivec_reg[31]_0 ;
  input [31:0]cbus_i;
  input \stk_ccmd_rg_reg[1] ;
  input [29:0]\stk_b1_rg_reg[30] ;
  input [0:0]O;
  input [0:0]cbus_inferred_i_29_0;
  input abus_inferred_i_111_0;
  input tout__1_carry_i_12_0;
  input \bcmd[3] ;
  input cbus_inferred_i_187_0;
  input rgf_ie_rg_reg_2;
  input rgf_ie_rg_reg_3;
  input abus_inferred_i_37_0;
  input [25:0]sptr_dec;
  input [25:0]abus_inferred_i_37_1;
  input abus_inferred_i_25_0;
  input [22:0]cpu_sts;
  input abus_inferred_i_1_1;
  input [31:0]abus_inferred_i_1_2;
  input abus_inferred_i_1_3;
  input mem_reg_0_63_0_0_i_7;
  input mem_reg_0_63_0_0_i_7_0;
  input \stk_b1_rg_reg[31]_3 ;
  input \stk_b1_rg_reg[31]_4 ;
  input \stk_b1_rg_reg[31]_5 ;
  input tout__1_carry_i_12_1;
  input ctl_fetch_rg_reg;
  input ctl_fetch_rg_i_2_0;
  input ctl_fetch_rg_reg_0;
  input abus_inferred_i_111_1;
  input cbus_inferred_i_109_0;
  input mem_reg_0_63_0_0_i_1_0;
  input \sptr[31]_i_6_0 ;
  input \sptr[31]_i_6_1 ;
  input \sptr[31]_i_8_0 ;
  input [2:0]ctl_bacc;
  input \bcmd[1] ;
  input \pcnt[3]_i_6_0 ;
  input abus_inferred_i_22_0;
  input abus_inferred_i_23_0;
  input rgf_ie_rg_reg_4;
  input \sptr_reg[3] ;
  input [31:0]\pcnt[31]_i_2_0 ;
  input \sptr[31]_i_6_2 ;
  input mem_reg_0_63_0_0_i_1_1;
  input p_0_in;
  input clk;
  input \pcnt_reg[3] ;
  input \pcnt_reg[31]_1 ;
  input abus_o_31_sn_1;
  input bdatw_0_sn_1;
  input bdatw_1_sn_1;
  input bdatw_2_sn_1;
  input bdatw_3_sn_1;
  input bdatw_4_sn_1;
  input bdatw_5_sn_1;
  input bdatw_6_sn_1;
  input bdatw_7_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [2:0]DI;
  wire [0:0]E;
  wire [0:0]O;
  wire [15:0]Q;
  wire [3:0]S;
  wire abus_inferred_i_102_0;
  wire abus_inferred_i_102_n_0;
  wire abus_inferred_i_105_0;
  wire abus_inferred_i_105_n_0;
  wire abus_inferred_i_108_0;
  wire abus_inferred_i_108_n_0;
  wire abus_inferred_i_111_0;
  wire abus_inferred_i_111_1;
  wire abus_inferred_i_111_n_0;
  wire abus_inferred_i_112_n_0;
  wire abus_inferred_i_114_n_0;
  wire abus_inferred_i_117_n_0;
  wire abus_inferred_i_118_n_0;
  wire abus_inferred_i_119_n_0;
  wire abus_inferred_i_120_n_0;
  wire abus_inferred_i_121_n_0;
  wire abus_inferred_i_122_n_0;
  wire abus_inferred_i_123_n_0;
  wire abus_inferred_i_124_n_0;
  wire abus_inferred_i_125_n_0;
  wire abus_inferred_i_126_n_0;
  wire abus_inferred_i_127_n_0;
  wire abus_inferred_i_128_n_0;
  wire abus_inferred_i_129_n_0;
  wire abus_inferred_i_130_n_0;
  wire abus_inferred_i_131_n_0;
  wire abus_inferred_i_132_n_0;
  wire abus_inferred_i_133_n_0;
  wire abus_inferred_i_134_n_0;
  wire abus_inferred_i_135_n_0;
  wire abus_inferred_i_136_n_0;
  wire abus_inferred_i_137_n_0;
  wire abus_inferred_i_138_n_0;
  wire abus_inferred_i_140_n_0;
  wire abus_inferred_i_142_n_0;
  wire abus_inferred_i_143_n_0;
  wire abus_inferred_i_145_n_0;
  wire abus_inferred_i_146_n_0;
  wire abus_inferred_i_147_n_0;
  wire abus_inferred_i_149_n_0;
  wire abus_inferred_i_151_n_0;
  wire abus_inferred_i_153_n_0;
  wire abus_inferred_i_155_n_0;
  wire abus_inferred_i_157_n_0;
  wire abus_inferred_i_159_n_0;
  wire abus_inferred_i_161_n_0;
  wire abus_inferred_i_162_n_0;
  wire abus_inferred_i_167;
  wire abus_inferred_i_167_0;
  wire abus_inferred_i_167_1;
  wire abus_inferred_i_168_n_0;
  wire abus_inferred_i_169_n_0;
  wire abus_inferred_i_170_n_0;
  wire [31:0]abus_inferred_i_1_0;
  wire abus_inferred_i_1_1;
  wire [31:0]abus_inferred_i_1_2;
  wire abus_inferred_i_1_3;
  wire abus_inferred_i_22_0;
  wire abus_inferred_i_23_0;
  wire abus_inferred_i_25_0;
  wire abus_inferred_i_34_n_0;
  wire abus_inferred_i_36_n_0;
  wire abus_inferred_i_37_0;
  wire [25:0]abus_inferred_i_37_1;
  wire abus_inferred_i_37_n_0;
  wire abus_inferred_i_38_n_0;
  wire abus_inferred_i_39_n_0;
  wire abus_inferred_i_40_n_0;
  wire abus_inferred_i_41_n_0;
  wire abus_inferred_i_42_n_0;
  wire abus_inferred_i_43_n_0;
  wire abus_inferred_i_44_n_0;
  wire abus_inferred_i_45_n_0;
  wire abus_inferred_i_46_n_0;
  wire abus_inferred_i_47_n_0;
  wire abus_inferred_i_48_n_0;
  wire abus_inferred_i_49_n_0;
  wire abus_inferred_i_50_n_0;
  wire abus_inferred_i_51_n_0;
  wire abus_inferred_i_52_n_0;
  wire abus_inferred_i_53_n_0;
  wire abus_inferred_i_54_n_0;
  wire abus_inferred_i_55_n_0;
  wire abus_inferred_i_56_n_0;
  wire abus_inferred_i_57_n_0;
  wire abus_inferred_i_58_n_0;
  wire abus_inferred_i_59_n_0;
  wire abus_inferred_i_60_n_0;
  wire abus_inferred_i_61_n_0;
  wire abus_inferred_i_62_n_0;
  wire abus_inferred_i_63_n_0;
  wire abus_inferred_i_64_n_0;
  wire abus_inferred_i_65_n_0;
  wire abus_inferred_i_66_n_0;
  wire abus_inferred_i_67_n_0;
  wire abus_inferred_i_68_n_0;
  wire abus_inferred_i_69_n_0;
  wire abus_inferred_i_70_n_0;
  wire abus_inferred_i_71_n_0;
  wire abus_inferred_i_72_n_0;
  wire abus_inferred_i_73_n_0;
  wire abus_inferred_i_74_n_0;
  wire abus_inferred_i_75_n_0;
  wire abus_inferred_i_76_n_0;
  wire abus_inferred_i_77_n_0;
  wire abus_inferred_i_78_n_0;
  wire abus_inferred_i_79_n_0;
  wire abus_inferred_i_80_n_0;
  wire abus_inferred_i_81_n_0;
  wire abus_inferred_i_82_n_0;
  wire abus_inferred_i_83_n_0;
  wire abus_inferred_i_84_n_0;
  wire abus_inferred_i_85_n_0;
  wire abus_inferred_i_86_n_0;
  wire abus_inferred_i_87_0;
  wire abus_inferred_i_87_n_0;
  wire abus_inferred_i_88_n_0;
  wire abus_inferred_i_90_0;
  wire abus_inferred_i_90_n_0;
  wire abus_inferred_i_92_n_0;
  wire abus_inferred_i_93_n_0;
  wire abus_inferred_i_94_0;
  wire abus_inferred_i_94_n_0;
  wire abus_inferred_i_95_n_0;
  wire abus_inferred_i_97_0;
  wire abus_inferred_i_97_n_0;
  wire abus_inferred_i_99_0;
  wire abus_inferred_i_99_n_0;
  wire [31:0]abus_o;
  wire abus_o_31_sn_1;
  wire \alu/art/cin__0 ;
  wire \alu/art/drv__3 ;
  wire [31:31]\alu/art/ina ;
  wire [31:0]badr;
  wire badr2__9;
  wire [31:0]\badr[31] ;
  wire \badr[31]_INST_0_i_2_n_0 ;
  wire [31:0]bbus_o;
  wire \bcmd[0]_INST_0_i_2_n_0 ;
  wire \bcmd[1] ;
  wire \bcmd[1]_INST_0_i_1_n_0 ;
  wire \bcmd[1]_INST_0_i_3_n_0 ;
  wire \bcmd[3] ;
  wire \bcmd[3]_INST_0_i_2_n_0 ;
  wire [31:0]bdatr;
  wire [31:0]bdatw;
  wire \bdatw[0]_0 ;
  wire \bdatw[1]_0 ;
  wire \bdatw[2]_0 ;
  wire [31:0]\bdatw[31] ;
  wire \bdatw[3]_0 ;
  wire bdatw_0_sn_1;
  wire bdatw_1_sn_1;
  wire bdatw_2_sn_1;
  wire bdatw_3_sn_1;
  wire bdatw_4_sn_1;
  wire bdatw_5_sn_1;
  wire bdatw_6_sn_1;
  wire bdatw_7_sn_1;
  wire brdy;
  wire [0:0]brdy_0;
  wire brdy_1;
  wire brdy_2;
  wire [31:0]cbus_i;
  wire [31:0]\cbus_i[31] ;
  wire cbus_inferred_i_100_n_0;
  wire cbus_inferred_i_101_n_0;
  wire cbus_inferred_i_103_n_0;
  wire cbus_inferred_i_104_n_0;
  wire cbus_inferred_i_105_n_0;
  wire cbus_inferred_i_106_n_0;
  wire cbus_inferred_i_108_n_0;
  wire cbus_inferred_i_109_0;
  wire cbus_inferred_i_109_n_0;
  wire cbus_inferred_i_111_n_0;
  wire cbus_inferred_i_113_n_0;
  wire cbus_inferred_i_114_n_0;
  wire cbus_inferred_i_115_n_0;
  wire cbus_inferred_i_116_n_0;
  wire cbus_inferred_i_117_n_0;
  wire cbus_inferred_i_118_n_0;
  wire cbus_inferred_i_119_n_0;
  wire cbus_inferred_i_120_n_0;
  wire cbus_inferred_i_121_n_0;
  wire cbus_inferred_i_122_n_0;
  wire cbus_inferred_i_123_n_0;
  wire cbus_inferred_i_124_n_0;
  wire cbus_inferred_i_125_n_0;
  wire cbus_inferred_i_126_n_0;
  wire cbus_inferred_i_127_n_0;
  wire cbus_inferred_i_128_n_0;
  wire cbus_inferred_i_129_n_0;
  wire cbus_inferred_i_130_n_0;
  wire cbus_inferred_i_131_n_0;
  wire cbus_inferred_i_132_n_0;
  wire cbus_inferred_i_133_n_0;
  wire cbus_inferred_i_134_n_0;
  wire cbus_inferred_i_135_n_0;
  wire cbus_inferred_i_136_n_0;
  wire cbus_inferred_i_137_n_0;
  wire cbus_inferred_i_138_n_0;
  wire cbus_inferred_i_139_n_0;
  wire cbus_inferred_i_140_n_0;
  wire cbus_inferred_i_141_n_0;
  wire cbus_inferred_i_142_n_0;
  wire cbus_inferred_i_143_n_0;
  wire cbus_inferred_i_144_n_0;
  wire cbus_inferred_i_145_n_0;
  wire cbus_inferred_i_146_n_0;
  wire cbus_inferred_i_147_n_0;
  wire cbus_inferred_i_148_n_0;
  wire cbus_inferred_i_149_n_0;
  wire cbus_inferred_i_150_n_0;
  wire cbus_inferred_i_151_n_0;
  wire cbus_inferred_i_152_n_0;
  wire cbus_inferred_i_153_n_0;
  wire cbus_inferred_i_154_n_0;
  wire cbus_inferred_i_155_n_0;
  wire cbus_inferred_i_156_n_0;
  wire cbus_inferred_i_157_n_0;
  wire cbus_inferred_i_158_n_0;
  wire cbus_inferred_i_159_n_0;
  wire cbus_inferred_i_160_n_0;
  wire cbus_inferred_i_161_n_0;
  wire cbus_inferred_i_162_n_0;
  wire cbus_inferred_i_163_n_0;
  wire cbus_inferred_i_164_n_0;
  wire cbus_inferred_i_165_n_0;
  wire cbus_inferred_i_166_n_0;
  wire cbus_inferred_i_167_n_0;
  wire cbus_inferred_i_169_n_0;
  wire cbus_inferred_i_170_n_0;
  wire cbus_inferred_i_171_n_0;
  wire cbus_inferred_i_172_n_0;
  wire cbus_inferred_i_173_n_0;
  wire cbus_inferred_i_174_n_0;
  wire cbus_inferred_i_176_n_0;
  wire cbus_inferred_i_177_n_0;
  wire cbus_inferred_i_178_n_0;
  wire cbus_inferred_i_179_n_0;
  wire cbus_inferred_i_180_n_0;
  wire cbus_inferred_i_181_n_0;
  wire cbus_inferred_i_182_n_0;
  wire cbus_inferred_i_187_0;
  wire cbus_inferred_i_187_n_0;
  wire cbus_inferred_i_189_n_0;
  wire cbus_inferred_i_190_n_0;
  wire cbus_inferred_i_192_n_0;
  wire cbus_inferred_i_193_n_0;
  wire cbus_inferred_i_194_n_0;
  wire cbus_inferred_i_195_n_0;
  wire cbus_inferred_i_197_n_0;
  wire cbus_inferred_i_198_n_0;
  wire cbus_inferred_i_199_n_0;
  wire cbus_inferred_i_201_n_0;
  wire cbus_inferred_i_206_n_0;
  wire cbus_inferred_i_207_n_0;
  wire cbus_inferred_i_210_n_0;
  wire cbus_inferred_i_211_n_0;
  wire [0:0]cbus_inferred_i_29_0;
  wire cbus_inferred_i_34_n_0;
  wire cbus_inferred_i_35_n_0;
  wire cbus_inferred_i_36_n_0;
  wire cbus_inferred_i_37_n_0;
  wire cbus_inferred_i_38_n_0;
  wire cbus_inferred_i_39_n_0;
  wire cbus_inferred_i_40_n_0;
  wire cbus_inferred_i_41_n_0;
  wire cbus_inferred_i_42_n_0;
  wire cbus_inferred_i_43_n_0;
  wire cbus_inferred_i_44_n_0;
  wire cbus_inferred_i_45_n_0;
  wire cbus_inferred_i_46_n_0;
  wire cbus_inferred_i_47_n_0;
  wire cbus_inferred_i_48_n_0;
  wire cbus_inferred_i_49_n_0;
  wire cbus_inferred_i_50_n_0;
  wire cbus_inferred_i_51_n_0;
  wire cbus_inferred_i_52_n_0;
  wire cbus_inferred_i_53_n_0;
  wire cbus_inferred_i_54_n_0;
  wire cbus_inferred_i_55_n_0;
  wire cbus_inferred_i_56_n_0;
  wire cbus_inferred_i_57_n_0;
  wire cbus_inferred_i_58_n_0;
  wire cbus_inferred_i_59_n_0;
  wire cbus_inferred_i_60_n_0;
  wire cbus_inferred_i_61_n_0;
  wire cbus_inferred_i_62_n_0;
  wire cbus_inferred_i_63_n_0;
  wire cbus_inferred_i_64_n_0;
  wire cbus_inferred_i_65_n_0;
  wire cbus_inferred_i_66_n_0;
  wire cbus_inferred_i_67_n_0;
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
  wire cbus_inferred_i_92_n_0;
  wire cbus_inferred_i_93_n_0;
  wire cbus_inferred_i_94_0;
  wire cbus_inferred_i_95_n_0;
  wire cbus_inferred_i_96_n_0;
  wire cbus_inferred_i_97_n_0;
  wire cbus_inferred_i_98_n_0;
  wire cbus_inferred_i_99_n_0;
  wire [15:0]ccmd;
  wire \ccmd[15]_INST_0_i_3_n_0 ;
  wire clk;
  wire [31:0]clk_0;
  wire [22:0]cpu_sts;
  wire crdy;
  wire [3:0]ctl_acmd_0;
  wire [2:0]ctl_bacc;
  wire ctl_ccmd_en;
  wire ctl_ccmd_sel;
  wire ctl_clrie;
  wire ctl_fetch_rg_i_2_0;
  wire ctl_fetch_rg_i_2_n_0;
  wire ctl_fetch_rg_i_3_n_0;
  wire ctl_fetch_rg_i_5_n_0;
  wire ctl_fetch_rg_i_6_n_0;
  wire ctl_fetch_rg_i_7_n_0;
  wire ctl_fetch_rg_i_8_n_0;
  wire ctl_fetch_rg_i_9_n_0;
  wire ctl_fetch_rg_reg;
  wire ctl_fetch_rg_reg_0;
  wire ctl_memrd;
  wire ctl_psei;
  wire ctl_push;
  wire ctl_setie;
  wire ctl_sldi;
  wire ctl_sppp;
  wire in0;
  wire \ir_rg_reg[5] ;
  wire \ir_rg_reg[7] ;
  wire irq;
  wire irq_0;
  wire \ivec[31]_i_2_n_0 ;
  wire \ivec_reg[31] ;
  wire \ivec_reg[31]_0 ;
  wire mem_reg_0_63_0_0_i_10_n_0;
  wire mem_reg_0_63_0_0_i_12_n_0;
  wire mem_reg_0_63_0_0_i_14_n_0;
  wire mem_reg_0_63_0_0_i_15_n_0;
  wire mem_reg_0_63_0_0_i_16_n_0;
  wire mem_reg_0_63_0_0_i_17_n_0;
  wire mem_reg_0_63_0_0_i_1_0;
  wire mem_reg_0_63_0_0_i_1_1;
  wire mem_reg_0_63_0_0_i_20_n_0;
  wire mem_reg_0_63_0_0_i_23_n_0;
  wire mem_reg_0_63_0_0_i_24_n_0;
  wire mem_reg_0_63_0_0_i_25_n_0;
  wire mem_reg_0_63_0_0_i_7;
  wire mem_reg_0_63_0_0_i_7_0;
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
  wire \pcnt[15]_i_2_n_0 ;
  wire \pcnt[15]_i_3_n_0 ;
  wire \pcnt[15]_i_4_n_0 ;
  wire \pcnt[15]_i_5_n_0 ;
  wire \pcnt[15]_i_6_n_0 ;
  wire \pcnt[15]_i_7_n_0 ;
  wire \pcnt[15]_i_8_n_0 ;
  wire \pcnt[15]_i_9_n_0 ;
  wire \pcnt[19]_i_2_n_0 ;
  wire \pcnt[19]_i_3_n_0 ;
  wire \pcnt[19]_i_4_n_0 ;
  wire \pcnt[19]_i_5_n_0 ;
  wire \pcnt[19]_i_6_n_0 ;
  wire \pcnt[19]_i_7_n_0 ;
  wire \pcnt[19]_i_8_n_0 ;
  wire \pcnt[19]_i_9_n_0 ;
  wire \pcnt[23]_i_2_n_0 ;
  wire \pcnt[23]_i_3_n_0 ;
  wire \pcnt[23]_i_4_n_0 ;
  wire \pcnt[23]_i_5_n_0 ;
  wire \pcnt[23]_i_6_n_0 ;
  wire \pcnt[23]_i_7_n_0 ;
  wire \pcnt[23]_i_8_n_0 ;
  wire \pcnt[23]_i_9_n_0 ;
  wire \pcnt[27]_i_2_n_0 ;
  wire \pcnt[27]_i_3_n_0 ;
  wire \pcnt[27]_i_4_n_0 ;
  wire \pcnt[27]_i_5_n_0 ;
  wire \pcnt[27]_i_6_n_0 ;
  wire \pcnt[27]_i_7_n_0 ;
  wire \pcnt[27]_i_8_n_0 ;
  wire \pcnt[27]_i_9_n_0 ;
  wire \pcnt[31]_i_10_n_0 ;
  wire \pcnt[31]_i_11_n_0 ;
  wire \pcnt[31]_i_13_n_0 ;
  wire \pcnt[31]_i_14_n_0 ;
  wire \pcnt[31]_i_15_n_0 ;
  wire [31:0]\pcnt[31]_i_2_0 ;
  wire \pcnt[31]_i_2_n_0 ;
  wire \pcnt[31]_i_3_n_0 ;
  wire \pcnt[31]_i_4_n_0 ;
  wire \pcnt[31]_i_5_n_0 ;
  wire \pcnt[31]_i_6_n_0 ;
  wire \pcnt[31]_i_7_n_0 ;
  wire \pcnt[31]_i_8_n_0 ;
  wire \pcnt[31]_i_9_n_0 ;
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
  wire \pcnt_reg[15]_i_1_n_0 ;
  wire \pcnt_reg[15]_i_1_n_1 ;
  wire \pcnt_reg[15]_i_1_n_2 ;
  wire \pcnt_reg[15]_i_1_n_3 ;
  wire \pcnt_reg[19]_i_1_n_0 ;
  wire \pcnt_reg[19]_i_1_n_1 ;
  wire \pcnt_reg[19]_i_1_n_2 ;
  wire \pcnt_reg[19]_i_1_n_3 ;
  wire \pcnt_reg[23]_i_1_n_0 ;
  wire \pcnt_reg[23]_i_1_n_1 ;
  wire \pcnt_reg[23]_i_1_n_2 ;
  wire \pcnt_reg[23]_i_1_n_3 ;
  wire \pcnt_reg[27]_i_1_n_0 ;
  wire \pcnt_reg[27]_i_1_n_1 ;
  wire \pcnt_reg[27]_i_1_n_2 ;
  wire \pcnt_reg[27]_i_1_n_3 ;
  wire [31:0]\pcnt_reg[31] ;
  wire [31:0]\pcnt_reg[31]_0 ;
  wire \pcnt_reg[31]_1 ;
  wire \pcnt_reg[31]_i_1_n_1 ;
  wire \pcnt_reg[31]_i_1_n_2 ;
  wire \pcnt_reg[31]_i_1_n_3 ;
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
  wire rgf_ie_rg_reg;
  wire rgf_ie_rg_reg_0;
  wire rgf_ie_rg_reg_1;
  wire rgf_ie_rg_reg_2;
  wire rgf_ie_rg_reg_3;
  wire rgf_ie_rg_reg_4;
  wire \sptr[31]_i_12_n_0 ;
  wire \sptr[31]_i_14_n_0 ;
  wire \sptr[31]_i_15_n_0 ;
  wire \sptr[31]_i_17_n_0 ;
  wire \sptr[31]_i_6_0 ;
  wire \sptr[31]_i_6_1 ;
  wire \sptr[31]_i_6_2 ;
  wire \sptr[31]_i_7_n_0 ;
  wire \sptr[31]_i_8_0 ;
  wire \sptr[31]_i_8_n_0 ;
  wire \sptr[31]_i_9_n_0 ;
  wire [25:0]sptr_dec;
  wire \sptr_reg[31] ;
  wire \sptr_reg[3] ;
  wire [1:0]stat;
  wire \stat[0]_i_11_n_0 ;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_4_n_0 ;
  wire \stat[0]_i_5_n_0 ;
  wire \stat[0]_i_6_n_0 ;
  wire \stat[0]_i_7_n_0 ;
  wire \stat[0]_i_8_n_0 ;
  wire \stat[0]_i_9_n_0 ;
  wire \stat[1]_i_10_n_0 ;
  wire \stat[1]_i_11_n_0 ;
  wire \stat[1]_i_12_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_5_n_0 ;
  wire \stat[1]_i_6_n_0 ;
  wire \stat[1]_i_7_n_0 ;
  wire \stat[1]_i_8_n_0 ;
  wire \stat[1]_i_9_n_0 ;
  wire [1:0]stat_nx;
  wire [0:0]\stat_reg[0]_0 ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;
  wire \stat_reg[1]_2 ;
  wire \stat_reg[1]_3 ;
  wire \stk_b1_rg[31]_i_3_n_0 ;
  wire \stk_b1_rg_reg[0] ;
  wire [3:0]\stk_b1_rg_reg[10] ;
  wire [3:0]\stk_b1_rg_reg[11] ;
  wire [3:0]\stk_b1_rg_reg[14] ;
  wire [3:0]\stk_b1_rg_reg[15] ;
  wire [3:0]\stk_b1_rg_reg[18] ;
  wire [3:0]\stk_b1_rg_reg[19] ;
  wire [3:0]\stk_b1_rg_reg[22] ;
  wire [3:0]\stk_b1_rg_reg[23] ;
  wire [3:0]\stk_b1_rg_reg[26] ;
  wire [3:0]\stk_b1_rg_reg[27] ;
  wire [29:0]\stk_b1_rg_reg[30] ;
  wire [0:0]\stk_b1_rg_reg[31] ;
  wire [1:0]\stk_b1_rg_reg[31]_0 ;
  wire [3:0]\stk_b1_rg_reg[31]_1 ;
  wire [3:0]\stk_b1_rg_reg[31]_2 ;
  wire \stk_b1_rg_reg[31]_3 ;
  wire \stk_b1_rg_reg[31]_4 ;
  wire \stk_b1_rg_reg[31]_5 ;
  wire [3:0]\stk_b1_rg_reg[6] ;
  wire [3:0]\stk_b1_rg_reg[7] ;
  wire stk_bool;
  wire \stk_ccmd_rg_reg[15] ;
  wire \stk_ccmd_rg_reg[15]_0 ;
  wire \stk_ccmd_rg_reg[15]_1 ;
  wire \stk_ccmd_rg_reg[1] ;
  wire tout__1_carry_i_10_n_0;
  wire tout__1_carry_i_11_n_0;
  wire tout__1_carry_i_12_0;
  wire tout__1_carry_i_12_1;
  wire tout__1_carry_i_12_n_0;
  wire tout__1_carry_i_9_n_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    abus_inferred_i_1
       (.I0(abus_inferred_i_1_0[24]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_34_n_0),
        .I3(ctl_psei),
        .I4(abus_inferred_i_36_n_0),
        .I5(abus_inferred_i_37_n_0),
        .O(clk_0[31]));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_10
       (.I0(abus_inferred_i_1_0[15]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_38_n_0),
        .I3(abus_inferred_i_55_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_56_n_0),
        .O(clk_0[22]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    abus_inferred_i_102
       (.I0(abus_inferred_i_155_n_0),
        .I1(abus_inferred_i_111_n_0),
        .I2(abus_inferred_i_1_0[2]),
        .I3(abus_inferred_i_112_n_0),
        .I4(bdatr[2]),
        .O(abus_inferred_i_102_n_0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    abus_inferred_i_105
       (.I0(abus_inferred_i_157_n_0),
        .I1(abus_inferred_i_111_n_0),
        .I2(abus_inferred_i_1_0[1]),
        .I3(abus_inferred_i_112_n_0),
        .I4(bdatr[1]),
        .O(abus_inferred_i_105_n_0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    abus_inferred_i_108
       (.I0(abus_inferred_i_159_n_0),
        .I1(abus_inferred_i_111_n_0),
        .I2(abus_inferred_i_1_0[0]),
        .I3(abus_inferred_i_112_n_0),
        .I4(bdatr[0]),
        .O(abus_inferred_i_108_n_0));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_11
       (.I0(abus_inferred_i_1_0[14]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_38_n_0),
        .I3(abus_inferred_i_57_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_58_n_0),
        .O(clk_0[21]));
  LUT6 #(
    .INIT(64'h00001FFF00000000)) 
    abus_inferred_i_111
       (.I0(tout__1_carry_i_11_n_0),
        .I1(tout__1_carry_i_12_n_0),
        .I2(ctl_acmd_0[2]),
        .I3(ctl_acmd_0[3]),
        .I4(abus_inferred_i_161_n_0),
        .I5(abus_inferred_i_162_n_0),
        .O(abus_inferred_i_111_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    abus_inferred_i_112
       (.I0(irq_0),
        .I1(ctl_memrd),
        .I2(ctl_bacc[2]),
        .I3(ctl_bacc[1]),
        .O(abus_inferred_i_112_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    abus_inferred_i_113
       (.I0(abus_inferred_i_167),
        .I1(\bcmd[0]_INST_0_i_2_n_0 ),
        .I2(abus_inferred_i_167_0),
        .I3(out[3]),
        .I4(\stk_ccmd_rg_reg[15]_0 ),
        .I5(abus_inferred_i_167_1),
        .O(irq_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_114
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [31]),
        .I2(out[0]),
        .I3(sptr_dec[25]),
        .I4(abus_inferred_i_37_1[25]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_114_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_117
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [30]),
        .I2(out[0]),
        .I3(sptr_dec[24]),
        .I4(abus_inferred_i_37_1[24]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_117_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_118
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [29]),
        .I2(out[0]),
        .I3(sptr_dec[23]),
        .I4(abus_inferred_i_37_1[23]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_118_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_119
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [28]),
        .I2(out[0]),
        .I3(sptr_dec[22]),
        .I4(abus_inferred_i_37_1[22]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_119_n_0));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_12
       (.I0(abus_inferred_i_1_0[13]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_38_n_0),
        .I3(abus_inferred_i_59_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_60_n_0),
        .O(clk_0[20]));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_120
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [27]),
        .I2(out[0]),
        .I3(sptr_dec[21]),
        .I4(abus_inferred_i_37_1[21]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_120_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_121
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [26]),
        .I2(out[0]),
        .I3(sptr_dec[20]),
        .I4(abus_inferred_i_37_1[20]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_121_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_122
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [25]),
        .I2(out[0]),
        .I3(sptr_dec[19]),
        .I4(abus_inferred_i_37_1[19]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_122_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_123
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [24]),
        .I2(out[0]),
        .I3(sptr_dec[18]),
        .I4(abus_inferred_i_37_1[18]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_123_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_124
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [23]),
        .I2(out[0]),
        .I3(sptr_dec[17]),
        .I4(abus_inferred_i_37_1[17]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_124_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_125
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [22]),
        .I2(out[0]),
        .I3(sptr_dec[16]),
        .I4(abus_inferred_i_37_1[16]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_125_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_126
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [21]),
        .I2(out[0]),
        .I3(sptr_dec[15]),
        .I4(abus_inferred_i_37_1[15]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_126_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_127
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [20]),
        .I2(out[0]),
        .I3(sptr_dec[14]),
        .I4(abus_inferred_i_37_1[14]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_127_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_128
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [19]),
        .I2(out[0]),
        .I3(sptr_dec[13]),
        .I4(abus_inferred_i_37_1[13]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_128_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_129
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [18]),
        .I2(out[0]),
        .I3(sptr_dec[12]),
        .I4(abus_inferred_i_37_1[12]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_129_n_0));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_13
       (.I0(abus_inferred_i_1_0[12]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_38_n_0),
        .I3(abus_inferred_i_61_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_62_n_0),
        .O(clk_0[19]));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_130
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [17]),
        .I2(out[0]),
        .I3(sptr_dec[11]),
        .I4(abus_inferred_i_37_1[11]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_130_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_131
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [16]),
        .I2(out[0]),
        .I3(sptr_dec[10]),
        .I4(abus_inferred_i_37_1[10]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_131_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    abus_inferred_i_132
       (.I0(ctl_bacc[1]),
        .I1(ctl_memrd),
        .I2(irq_0),
        .O(abus_inferred_i_132_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_133
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [15]),
        .I2(out[0]),
        .I3(sptr_dec[9]),
        .I4(abus_inferred_i_37_1[9]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_133_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_134
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [14]),
        .I2(out[0]),
        .I3(sptr_dec[8]),
        .I4(abus_inferred_i_37_1[8]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_134_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_135
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [13]),
        .I2(out[0]),
        .I3(sptr_dec[7]),
        .I4(abus_inferred_i_37_1[7]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_135_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_136
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [12]),
        .I2(out[0]),
        .I3(sptr_dec[6]),
        .I4(abus_inferred_i_37_1[6]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_136_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_137
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [11]),
        .I2(out[0]),
        .I3(sptr_dec[5]),
        .I4(abus_inferred_i_37_1[5]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_137_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_138
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [10]),
        .I2(out[0]),
        .I3(sptr_dec[4]),
        .I4(abus_inferred_i_37_1[4]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_138_n_0));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_14
       (.I0(abus_inferred_i_1_0[11]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_38_n_0),
        .I3(abus_inferred_i_63_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_64_n_0),
        .O(clk_0[18]));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_140
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [9]),
        .I2(out[0]),
        .I3(sptr_dec[3]),
        .I4(abus_inferred_i_37_1[3]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_140_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_142
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [8]),
        .I2(out[0]),
        .I3(sptr_dec[2]),
        .I4(abus_inferred_i_37_1[2]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_142_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    abus_inferred_i_143
       (.I0(abus_inferred_i_87_0),
        .I1(bdatr[15]),
        .I2(abus_inferred_i_168_n_0),
        .I3(bdatr[7]),
        .I4(abus_inferred_i_169_n_0),
        .I5(abus_inferred_i_170_n_0),
        .O(abus_inferred_i_143_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_145
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [7]),
        .I2(out[0]),
        .I3(sptr_dec[1]),
        .I4(abus_inferred_i_37_1[1]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_145_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    abus_inferred_i_146
       (.I0(abus_inferred_i_90_0),
        .I1(bdatr[14]),
        .I2(abus_inferred_i_168_n_0),
        .I3(bdatr[6]),
        .I4(abus_inferred_i_169_n_0),
        .I5(abus_inferred_i_170_n_0),
        .O(abus_inferred_i_146_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    abus_inferred_i_147
       (.I0(abus_inferred_i_112_n_0),
        .I1(bdatr[6]),
        .O(abus_inferred_i_147_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    abus_inferred_i_149
       (.I0(abus_inferred_i_94_0),
        .I1(bdatr[13]),
        .I2(abus_inferred_i_168_n_0),
        .I3(bdatr[5]),
        .I4(abus_inferred_i_169_n_0),
        .I5(abus_inferred_i_170_n_0),
        .O(abus_inferred_i_149_n_0));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_15
       (.I0(abus_inferred_i_1_0[10]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_38_n_0),
        .I3(abus_inferred_i_65_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_66_n_0),
        .O(clk_0[17]));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    abus_inferred_i_151
       (.I0(abus_inferred_i_97_0),
        .I1(bdatr[12]),
        .I2(abus_inferred_i_168_n_0),
        .I3(bdatr[4]),
        .I4(abus_inferred_i_169_n_0),
        .I5(abus_inferred_i_170_n_0),
        .O(abus_inferred_i_151_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    abus_inferred_i_153
       (.I0(abus_inferred_i_99_0),
        .I1(bdatr[11]),
        .I2(abus_inferred_i_168_n_0),
        .I3(bdatr[3]),
        .I4(abus_inferred_i_169_n_0),
        .I5(abus_inferred_i_170_n_0),
        .O(abus_inferred_i_153_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    abus_inferred_i_155
       (.I0(abus_inferred_i_102_0),
        .I1(bdatr[10]),
        .I2(abus_inferred_i_168_n_0),
        .I3(bdatr[2]),
        .I4(abus_inferred_i_169_n_0),
        .I5(abus_inferred_i_170_n_0),
        .O(abus_inferred_i_155_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    abus_inferred_i_157
       (.I0(abus_inferred_i_105_0),
        .I1(bdatr[9]),
        .I2(abus_inferred_i_168_n_0),
        .I3(bdatr[1]),
        .I4(abus_inferred_i_169_n_0),
        .I5(abus_inferred_i_170_n_0),
        .O(abus_inferred_i_157_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    abus_inferred_i_159
       (.I0(abus_inferred_i_108_0),
        .I1(bdatr[8]),
        .I2(abus_inferred_i_168_n_0),
        .I3(bdatr[0]),
        .I4(abus_inferred_i_169_n_0),
        .I5(abus_inferred_i_170_n_0),
        .O(abus_inferred_i_159_n_0));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_16
       (.I0(abus_inferred_i_1_0[9]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_38_n_0),
        .I3(abus_inferred_i_67_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_68_n_0),
        .O(clk_0[16]));
  LUT3 #(
    .INIT(8'h40)) 
    abus_inferred_i_161
       (.I0(ctl_bacc[1]),
        .I1(ctl_bacc[2]),
        .I2(ctl_memrd),
        .O(abus_inferred_i_161_n_0));
  LUT3 #(
    .INIT(8'h0B)) 
    abus_inferred_i_162
       (.I0(ctl_bacc[2]),
        .I1(ctl_memrd),
        .I2(irq_0),
        .O(abus_inferred_i_162_n_0));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    abus_inferred_i_163
       (.I0(\bcmd[1]_INST_0_i_1_n_0 ),
        .I1(out[7]),
        .I2(rgf_ie_rg_reg_3),
        .I3(out[2]),
        .I4(out[3]),
        .I5(\bcmd[1]_INST_0_i_3_n_0 ),
        .O(ctl_memrd));
  LUT4 #(
    .INIT(16'h0040)) 
    abus_inferred_i_168
       (.I0(ctl_bacc[0]),
        .I1(ctl_memrd),
        .I2(ctl_bacc[1]),
        .I3(ctl_bacc[2]),
        .O(abus_inferred_i_168_n_0));
  LUT4 #(
    .INIT(16'h008C)) 
    abus_inferred_i_169
       (.I0(ctl_bacc[0]),
        .I1(ctl_memrd),
        .I2(ctl_bacc[1]),
        .I3(ctl_bacc[2]),
        .O(abus_inferred_i_169_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    abus_inferred_i_17
       (.I0(abus_inferred_i_1_0[8]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_69_n_0),
        .I3(ctl_psei),
        .I4(abus_inferred_i_70_n_0),
        .I5(abus_inferred_i_71_n_0),
        .O(clk_0[15]));
  LUT3 #(
    .INIT(8'h04)) 
    abus_inferred_i_170
       (.I0(ctl_bacc[2]),
        .I1(ctl_memrd),
        .I2(irq_0),
        .O(abus_inferred_i_170_n_0));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_18
       (.I0(abus_inferred_i_1_0[7]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_72_n_0),
        .I3(abus_inferred_i_73_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_74_n_0),
        .O(clk_0[14]));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_19
       (.I0(abus_inferred_i_1_0[6]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_72_n_0),
        .I3(abus_inferred_i_75_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_76_n_0),
        .O(clk_0[13]));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_2
       (.I0(abus_inferred_i_1_0[23]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_38_n_0),
        .I3(abus_inferred_i_39_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_40_n_0),
        .O(clk_0[30]));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_20
       (.I0(abus_inferred_i_1_0[5]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_72_n_0),
        .I3(abus_inferred_i_77_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_78_n_0),
        .O(clk_0[12]));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_21
       (.I0(abus_inferred_i_1_0[4]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_72_n_0),
        .I3(abus_inferred_i_79_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_80_n_0),
        .O(clk_0[11]));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_22
       (.I0(abus_inferred_i_1_0[3]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_72_n_0),
        .I3(abus_inferred_i_81_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_82_n_0),
        .O(clk_0[10]));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_23
       (.I0(abus_inferred_i_1_0[2]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_72_n_0),
        .I3(abus_inferred_i_83_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_84_n_0),
        .O(clk_0[9]));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_24
       (.I0(abus_inferred_i_1_0[1]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_72_n_0),
        .I3(abus_inferred_i_85_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_86_n_0),
        .O(clk_0[8]));
  LUT6 #(
    .INIT(64'hFFFF0000EEE4EEE4)) 
    abus_inferred_i_25
       (.I0(ctl_psei),
        .I1(abus_inferred_i_87_n_0),
        .I2(abus_inferred_i_88_n_0),
        .I3(bdatw_7_sn_1),
        .I4(abus_inferred_i_1_0[0]),
        .I5(ctl_sldi),
        .O(clk_0[7]));
  LUT6 #(
    .INIT(64'hBBBBBBB8B8B8B8B8)) 
    abus_inferred_i_26
       (.I0(out[6]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_90_n_0),
        .I3(bdatw_6_sn_1),
        .I4(abus_inferred_i_92_n_0),
        .I5(abus_inferred_i_93_n_0),
        .O(clk_0[6]));
  LUT6 #(
    .INIT(64'hBBBBBBB8BBB8BBB8)) 
    abus_inferred_i_27
       (.I0(out[5]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_94_n_0),
        .I3(abus_inferred_i_95_n_0),
        .I4(bdatw_5_sn_1),
        .I5(abus_inferred_i_93_n_0),
        .O(clk_0[5]));
  LUT6 #(
    .INIT(64'hBBBBBBB8BBB8BBB8)) 
    abus_inferred_i_28
       (.I0(out[4]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_97_n_0),
        .I3(abus_inferred_i_95_n_0),
        .I4(bdatw_4_sn_1),
        .I5(abus_inferred_i_93_n_0),
        .O(clk_0[4]));
  LUT6 #(
    .INIT(64'hFFFF0000EEE4EEE4)) 
    abus_inferred_i_29
       (.I0(ctl_psei),
        .I1(abus_inferred_i_99_n_0),
        .I2(bdatw_3_sn_1),
        .I3(\bdatw[3]_0 ),
        .I4(out[3]),
        .I5(ctl_sldi),
        .O(clk_0[3]));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_3
       (.I0(abus_inferred_i_1_0[22]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_38_n_0),
        .I3(abus_inferred_i_41_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_42_n_0),
        .O(clk_0[29]));
  LUT6 #(
    .INIT(64'hFFFF0000EEE4EEE4)) 
    abus_inferred_i_30
       (.I0(ctl_psei),
        .I1(abus_inferred_i_102_n_0),
        .I2(bdatw_2_sn_1),
        .I3(\bdatw[2]_0 ),
        .I4(out[2]),
        .I5(ctl_sldi),
        .O(clk_0[2]));
  LUT6 #(
    .INIT(64'hFFFF0000EEE4EEE4)) 
    abus_inferred_i_31
       (.I0(ctl_psei),
        .I1(abus_inferred_i_105_n_0),
        .I2(bdatw_1_sn_1),
        .I3(\bdatw[1]_0 ),
        .I4(out[1]),
        .I5(ctl_sldi),
        .O(clk_0[1]));
  LUT6 #(
    .INIT(64'hFFFF0000EEE4EEE4)) 
    abus_inferred_i_32
       (.I0(ctl_psei),
        .I1(abus_inferred_i_108_n_0),
        .I2(bdatw_0_sn_1),
        .I3(\bdatw[0]_0 ),
        .I4(out[0]),
        .I5(ctl_sldi),
        .O(clk_0[0]));
  LUT3 #(
    .INIT(8'h02)) 
    abus_inferred_i_33
       (.I0(out[7]),
        .I1(stat[0]),
        .I2(stat[1]),
        .O(ctl_sldi));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_34
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[31]),
        .I2(abus_inferred_i_112_n_0),
        .I3(bdatr[31]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [31]),
        .O(abus_inferred_i_34_n_0));
  LUT5 #(
    .INIT(32'h00000008)) 
    abus_inferred_i_35
       (.I0(out[5]),
        .I1(out[6]),
        .I2(out[7]),
        .I3(stat[0]),
        .I4(stat[1]),
        .O(ctl_psei));
  LUT5 #(
    .INIT(32'h01000000)) 
    abus_inferred_i_36
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(out[4]),
        .I4(ctl_psei),
        .O(abus_inferred_i_36_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_37
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_114_n_0),
        .I2(cpu_sts[22]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[31]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_37_n_0));
  LUT5 #(
    .INIT(32'h00000200)) 
    abus_inferred_i_38
       (.I0(ctl_psei),
        .I1(out[3]),
        .I2(out[2]),
        .I3(out[4]),
        .I4(out[1]),
        .O(abus_inferred_i_38_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_39
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_117_n_0),
        .I2(cpu_sts[21]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[30]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_39_n_0));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_4
       (.I0(abus_inferred_i_1_0[21]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_38_n_0),
        .I3(abus_inferred_i_43_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_44_n_0),
        .O(clk_0[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_40
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[30]),
        .I2(abus_inferred_i_112_n_0),
        .I3(bdatr[30]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [30]),
        .O(abus_inferred_i_40_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_41
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_118_n_0),
        .I2(cpu_sts[20]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[29]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_41_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_42
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[29]),
        .I2(abus_inferred_i_112_n_0),
        .I3(bdatr[29]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [29]),
        .O(abus_inferred_i_42_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_43
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_119_n_0),
        .I2(cpu_sts[19]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[28]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_43_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_44
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[28]),
        .I2(abus_inferred_i_112_n_0),
        .I3(bdatr[28]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [28]),
        .O(abus_inferred_i_44_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_45
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_120_n_0),
        .I2(cpu_sts[18]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[27]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_45_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_46
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[27]),
        .I2(abus_inferred_i_112_n_0),
        .I3(bdatr[27]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [27]),
        .O(abus_inferred_i_46_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_47
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_121_n_0),
        .I2(cpu_sts[17]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[26]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_47_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_48
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[26]),
        .I2(abus_inferred_i_112_n_0),
        .I3(bdatr[26]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [26]),
        .O(abus_inferred_i_48_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_49
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_122_n_0),
        .I2(cpu_sts[16]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[25]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_49_n_0));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_5
       (.I0(abus_inferred_i_1_0[20]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_38_n_0),
        .I3(abus_inferred_i_45_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_46_n_0),
        .O(clk_0[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_50
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[25]),
        .I2(abus_inferred_i_112_n_0),
        .I3(bdatr[25]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [25]),
        .O(abus_inferred_i_50_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_51
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_123_n_0),
        .I2(cpu_sts[15]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[24]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_51_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_52
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[24]),
        .I2(abus_inferred_i_112_n_0),
        .I3(bdatr[24]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [24]),
        .O(abus_inferred_i_52_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_53
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_124_n_0),
        .I2(cpu_sts[14]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[23]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_53_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_54
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[23]),
        .I2(abus_inferred_i_112_n_0),
        .I3(bdatr[23]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [23]),
        .O(abus_inferred_i_54_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_55
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_125_n_0),
        .I2(cpu_sts[13]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[22]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_55_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_56
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[22]),
        .I2(abus_inferred_i_112_n_0),
        .I3(bdatr[22]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [22]),
        .O(abus_inferred_i_56_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_57
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_126_n_0),
        .I2(cpu_sts[12]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[21]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_57_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_58
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[21]),
        .I2(abus_inferred_i_112_n_0),
        .I3(bdatr[21]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [21]),
        .O(abus_inferred_i_58_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_59
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_127_n_0),
        .I2(cpu_sts[11]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[20]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_59_n_0));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_6
       (.I0(abus_inferred_i_1_0[19]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_38_n_0),
        .I3(abus_inferred_i_47_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_48_n_0),
        .O(clk_0[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_60
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[20]),
        .I2(abus_inferred_i_112_n_0),
        .I3(bdatr[20]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [20]),
        .O(abus_inferred_i_60_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_61
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_128_n_0),
        .I2(cpu_sts[10]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[19]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_61_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_62
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[19]),
        .I2(abus_inferred_i_112_n_0),
        .I3(bdatr[19]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [19]),
        .O(abus_inferred_i_62_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_63
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_129_n_0),
        .I2(cpu_sts[9]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[18]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_63_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_64
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[18]),
        .I2(abus_inferred_i_112_n_0),
        .I3(bdatr[18]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [18]),
        .O(abus_inferred_i_64_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_65
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_130_n_0),
        .I2(cpu_sts[8]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[17]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_65_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_66
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[17]),
        .I2(abus_inferred_i_112_n_0),
        .I3(bdatr[17]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [17]),
        .O(abus_inferred_i_66_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_67
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_131_n_0),
        .I2(cpu_sts[7]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[16]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_67_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_68
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[16]),
        .I2(abus_inferred_i_112_n_0),
        .I3(bdatr[16]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [16]),
        .O(abus_inferred_i_68_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_69
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[15]),
        .I2(abus_inferred_i_132_n_0),
        .I3(bdatr[15]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [15]),
        .O(abus_inferred_i_69_n_0));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_7
       (.I0(abus_inferred_i_1_0[18]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_38_n_0),
        .I3(abus_inferred_i_49_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_50_n_0),
        .O(clk_0[25]));
  LUT6 #(
    .INIT(64'h0000200022000200)) 
    abus_inferred_i_70
       (.I0(ctl_psei),
        .I1(out[3]),
        .I2(out[2]),
        .I3(out[4]),
        .I4(out[0]),
        .I5(out[1]),
        .O(abus_inferred_i_70_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_71
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_133_n_0),
        .I2(cpu_sts[6]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[15]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_71_n_0));
  LUT6 #(
    .INIT(64'h0000000020002200)) 
    abus_inferred_i_72
       (.I0(ctl_psei),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[4]),
        .I4(out[2]),
        .I5(out[3]),
        .O(abus_inferred_i_72_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_73
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_134_n_0),
        .I2(cpu_sts[5]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[14]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_73_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_74
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[14]),
        .I2(abus_inferred_i_132_n_0),
        .I3(bdatr[14]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [14]),
        .O(abus_inferred_i_74_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_75
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_135_n_0),
        .I2(cpu_sts[4]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[13]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_75_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_76
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[13]),
        .I2(abus_inferred_i_132_n_0),
        .I3(bdatr[13]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [13]),
        .O(abus_inferred_i_76_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_77
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_136_n_0),
        .I2(cpu_sts[3]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[12]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_77_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_78
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[12]),
        .I2(abus_inferred_i_132_n_0),
        .I3(bdatr[12]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [12]),
        .O(abus_inferred_i_78_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_79
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_137_n_0),
        .I2(cpu_sts[2]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[11]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_79_n_0));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_8
       (.I0(abus_inferred_i_1_0[17]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_38_n_0),
        .I3(abus_inferred_i_51_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_52_n_0),
        .O(clk_0[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_80
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[11]),
        .I2(abus_inferred_i_132_n_0),
        .I3(bdatr[11]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [11]),
        .O(abus_inferred_i_80_n_0));
  LUT5 #(
    .INIT(32'h80808000)) 
    abus_inferred_i_81
       (.I0(ctl_psei),
        .I1(out[4]),
        .I2(out[3]),
        .I3(abus_inferred_i_138_n_0),
        .I4(abus_inferred_i_22_0),
        .O(abus_inferred_i_81_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_82
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[10]),
        .I2(abus_inferred_i_132_n_0),
        .I3(bdatr[10]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [10]),
        .O(abus_inferred_i_82_n_0));
  LUT5 #(
    .INIT(32'h80808000)) 
    abus_inferred_i_83
       (.I0(ctl_psei),
        .I1(out[4]),
        .I2(out[3]),
        .I3(abus_inferred_i_140_n_0),
        .I4(abus_inferred_i_23_0),
        .O(abus_inferred_i_83_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_84
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[9]),
        .I2(abus_inferred_i_132_n_0),
        .I3(bdatr[9]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [9]),
        .O(abus_inferred_i_84_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_85
       (.I0(abus_inferred_i_93_n_0),
        .I1(abus_inferred_i_142_n_0),
        .I2(cpu_sts[1]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[8]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_85_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    abus_inferred_i_86
       (.I0(abus_inferred_i_111_n_0),
        .I1(abus_inferred_i_1_0[8]),
        .I2(abus_inferred_i_132_n_0),
        .I3(bdatr[8]),
        .I4(irq_0),
        .I5(\pcnt_reg[31]_0 [8]),
        .O(abus_inferred_i_86_n_0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    abus_inferred_i_87
       (.I0(abus_inferred_i_143_n_0),
        .I1(abus_inferred_i_111_n_0),
        .I2(abus_inferred_i_1_0[7]),
        .I3(abus_inferred_i_112_n_0),
        .I4(bdatr[7]),
        .O(abus_inferred_i_87_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    abus_inferred_i_88
       (.I0(abus_inferred_i_25_0),
        .I1(abus_inferred_i_145_n_0),
        .I2(cpu_sts[0]),
        .I3(abus_inferred_i_1_1),
        .I4(abus_inferred_i_1_2[7]),
        .I5(abus_inferred_i_1_3),
        .O(abus_inferred_i_88_n_0));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB8BBB8)) 
    abus_inferred_i_9
       (.I0(abus_inferred_i_1_0[16]),
        .I1(ctl_sldi),
        .I2(abus_inferred_i_38_n_0),
        .I3(abus_inferred_i_53_n_0),
        .I4(ctl_psei),
        .I5(abus_inferred_i_54_n_0),
        .O(clk_0[23]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    abus_inferred_i_90
       (.I0(abus_inferred_i_95_n_0),
        .I1(ctl_psei),
        .I2(abus_inferred_i_146_n_0),
        .I3(abus_inferred_i_111_n_0),
        .I4(abus_inferred_i_1_0[6]),
        .I5(abus_inferred_i_147_n_0),
        .O(abus_inferred_i_90_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    abus_inferred_i_92
       (.I0(abus_inferred_i_37_0),
        .I1(\pcnt_reg[31]_0 [6]),
        .I2(out[0]),
        .I3(sptr_dec[0]),
        .I4(abus_inferred_i_37_1[0]),
        .I5(\ir_rg_reg[7] ),
        .O(abus_inferred_i_92_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    abus_inferred_i_93
       (.I0(out[3]),
        .I1(out[4]),
        .I2(ctl_psei),
        .O(abus_inferred_i_93_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFF888)) 
    abus_inferred_i_94
       (.I0(bdatr[5]),
        .I1(abus_inferred_i_112_n_0),
        .I2(abus_inferred_i_1_0[5]),
        .I3(abus_inferred_i_111_n_0),
        .I4(abus_inferred_i_149_n_0),
        .I5(ctl_psei),
        .O(abus_inferred_i_94_n_0));
  LUT6 #(
    .INIT(64'h000000002000A200)) 
    abus_inferred_i_95
       (.I0(ctl_psei),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[4]),
        .I4(out[2]),
        .I5(out[3]),
        .O(abus_inferred_i_95_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFF888)) 
    abus_inferred_i_97
       (.I0(bdatr[4]),
        .I1(abus_inferred_i_112_n_0),
        .I2(abus_inferred_i_1_0[4]),
        .I3(abus_inferred_i_111_n_0),
        .I4(abus_inferred_i_151_n_0),
        .I5(ctl_psei),
        .O(abus_inferred_i_97_n_0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    abus_inferred_i_99
       (.I0(abus_inferred_i_153_n_0),
        .I1(abus_inferred_i_111_n_0),
        .I2(abus_inferred_i_1_0[3]),
        .I3(abus_inferred_i_112_n_0),
        .I4(bdatr[3]),
        .O(abus_inferred_i_99_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[0]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [0]),
        .O(abus_o[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[10]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [10]),
        .O(abus_o[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[11]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [11]),
        .O(abus_o[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[12]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [12]),
        .O(abus_o[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[13]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [13]),
        .O(abus_o[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[14]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [14]),
        .O(abus_o[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[15]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [15]),
        .O(abus_o[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[16]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [16]),
        .O(abus_o[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[17]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [17]),
        .O(abus_o[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[18]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [18]),
        .O(abus_o[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[19]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [19]),
        .O(abus_o[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[1]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [1]),
        .O(abus_o[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[20]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [20]),
        .O(abus_o[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[21]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [21]),
        .O(abus_o[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[22]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [22]),
        .O(abus_o[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[23]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [23]),
        .O(abus_o[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[24]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [24]),
        .O(abus_o[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[25]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [25]),
        .O(abus_o[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[26]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [26]),
        .O(abus_o[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[27]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [27]),
        .O(abus_o[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[28]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [28]),
        .O(abus_o[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[29]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [29]),
        .O(abus_o[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[2]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [2]),
        .O(abus_o[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[30]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [30]),
        .O(abus_o[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[31]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [31]),
        .O(abus_o[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[3]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [3]),
        .O(abus_o[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[4]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [4]),
        .O(abus_o[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[5]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [5]),
        .O(abus_o[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[6]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [6]),
        .O(abus_o[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[7]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [7]),
        .O(abus_o[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[8]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [8]),
        .O(abus_o[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[9]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\bdatw[31] [9]),
        .O(abus_o[9]));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \bacc[0]_i_1 
       (.I0(\bdatw[31] [0]),
        .I1(badr2__9),
        .I2(\badr[31] [0]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .I4(brdy),
        .I5(ctl_bacc[0]),
        .O(\stk_b1_rg_reg[0] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bacc[1]_i_1 
       (.I0(\stat_reg[1]_1 ),
        .I1(brdy),
        .I2(ctl_bacc[1]),
        .O(brdy_2));
  LUT3 #(
    .INIT(8'hB8)) 
    \bacc[2]_i_1 
       (.I0(\stat_reg[1]_0 ),
        .I1(brdy),
        .I2(ctl_bacc[2]),
        .O(brdy_1));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0 
       (.I0(\bdatw[31] [0]),
        .I1(badr2__9),
        .I2(\badr[31] [0]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0 
       (.I0(\bdatw[31] [10]),
        .I1(badr2__9),
        .I2(\badr[31] [10]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0 
       (.I0(\bdatw[31] [11]),
        .I1(badr2__9),
        .I2(\badr[31] [11]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0 
       (.I0(\bdatw[31] [12]),
        .I1(badr2__9),
        .I2(\badr[31] [12]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0 
       (.I0(\bdatw[31] [13]),
        .I1(badr2__9),
        .I2(\badr[31] [13]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0 
       (.I0(\bdatw[31] [14]),
        .I1(badr2__9),
        .I2(\badr[31] [14]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0 
       (.I0(\bdatw[31] [15]),
        .I1(badr2__9),
        .I2(\badr[31] [15]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[15]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[16]_INST_0 
       (.I0(\bdatw[31] [16]),
        .I1(badr2__9),
        .I2(\badr[31] [16]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[16]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[17]_INST_0 
       (.I0(\bdatw[31] [17]),
        .I1(badr2__9),
        .I2(\badr[31] [17]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[18]_INST_0 
       (.I0(\bdatw[31] [18]),
        .I1(badr2__9),
        .I2(\badr[31] [18]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[18]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[19]_INST_0 
       (.I0(\bdatw[31] [19]),
        .I1(badr2__9),
        .I2(\badr[31] [19]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[19]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0 
       (.I0(\bdatw[31] [1]),
        .I1(badr2__9),
        .I2(\badr[31] [1]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[20]_INST_0 
       (.I0(\bdatw[31] [20]),
        .I1(badr2__9),
        .I2(\badr[31] [20]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[21]_INST_0 
       (.I0(\bdatw[31] [21]),
        .I1(badr2__9),
        .I2(\badr[31] [21]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[21]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[22]_INST_0 
       (.I0(\bdatw[31] [22]),
        .I1(badr2__9),
        .I2(\badr[31] [22]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[22]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[23]_INST_0 
       (.I0(\bdatw[31] [23]),
        .I1(badr2__9),
        .I2(\badr[31] [23]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[23]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[24]_INST_0 
       (.I0(\bdatw[31] [24]),
        .I1(badr2__9),
        .I2(\badr[31] [24]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[24]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[25]_INST_0 
       (.I0(\bdatw[31] [25]),
        .I1(badr2__9),
        .I2(\badr[31] [25]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[25]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[26]_INST_0 
       (.I0(\bdatw[31] [26]),
        .I1(badr2__9),
        .I2(\badr[31] [26]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[26]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[27]_INST_0 
       (.I0(\bdatw[31] [27]),
        .I1(badr2__9),
        .I2(\badr[31] [27]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[27]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[28]_INST_0 
       (.I0(\bdatw[31] [28]),
        .I1(badr2__9),
        .I2(\badr[31] [28]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[28]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[29]_INST_0 
       (.I0(\bdatw[31] [29]),
        .I1(badr2__9),
        .I2(\badr[31] [29]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[29]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0 
       (.I0(\bdatw[31] [2]),
        .I1(badr2__9),
        .I2(\badr[31] [2]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[30]_INST_0 
       (.I0(\bdatw[31] [30]),
        .I1(badr2__9),
        .I2(\badr[31] [30]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[30]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[31]_INST_0 
       (.I0(\bdatw[31] [31]),
        .I1(badr2__9),
        .I2(\badr[31] [31]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[31]));
  LUT4 #(
    .INIT(16'h002A)) 
    \badr[31]_INST_0_i_1 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_0 ),
        .I2(\stat_reg[1]_1 ),
        .I3(\stat_reg[1]_2 ),
        .O(badr2__9));
  LUT5 #(
    .INIT(32'h00000444)) 
    \badr[31]_INST_0_i_2 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(badr2__9),
        .O(\badr[31]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0 
       (.I0(\bdatw[31] [3]),
        .I1(badr2__9),
        .I2(\badr[31] [3]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0 
       (.I0(\bdatw[31] [4]),
        .I1(badr2__9),
        .I2(\badr[31] [4]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0 
       (.I0(\bdatw[31] [5]),
        .I1(badr2__9),
        .I2(\badr[31] [5]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0 
       (.I0(\bdatw[31] [6]),
        .I1(badr2__9),
        .I2(\badr[31] [6]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0 
       (.I0(\bdatw[31] [7]),
        .I1(badr2__9),
        .I2(\badr[31] [7]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0 
       (.I0(\bdatw[31] [8]),
        .I1(badr2__9),
        .I2(\badr[31] [8]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0 
       (.I0(\bdatw[31] [9]),
        .I1(badr2__9),
        .I2(\badr[31] [9]),
        .I3(\badr[31]_INST_0_i_2_n_0 ),
        .O(badr[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[0]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [0]),
        .O(bbus_o[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[10]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [10]),
        .O(bbus_o[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[11]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [11]),
        .O(bbus_o[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[12]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [12]),
        .O(bbus_o[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[13]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [13]),
        .O(bbus_o[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[14]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [14]),
        .O(bbus_o[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[15]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [15]),
        .O(bbus_o[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[16]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [16]),
        .O(bbus_o[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[17]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [17]),
        .O(bbus_o[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[18]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [18]),
        .O(bbus_o[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[19]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [19]),
        .O(bbus_o[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[1]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [1]),
        .O(bbus_o[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[20]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [20]),
        .O(bbus_o[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[21]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [21]),
        .O(bbus_o[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[22]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [22]),
        .O(bbus_o[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[23]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [23]),
        .O(bbus_o[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[24]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [24]),
        .O(bbus_o[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[25]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [25]),
        .O(bbus_o[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[26]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [26]),
        .O(bbus_o[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[27]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [27]),
        .O(bbus_o[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[28]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [28]),
        .O(bbus_o[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[29]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [29]),
        .O(bbus_o[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[2]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [2]),
        .O(bbus_o[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[30]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [30]),
        .O(bbus_o[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[31]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [31]),
        .O(bbus_o[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[3]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [3]),
        .O(bbus_o[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[4]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [4]),
        .O(bbus_o[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[5]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [5]),
        .O(bbus_o[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[6]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [6]),
        .O(bbus_o[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[7]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [7]),
        .O(bbus_o[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[8]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [8]),
        .O(bbus_o[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[9]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(\badr[31] [9]),
        .O(bbus_o[9]));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \bcmd[0]_INST_0 
       (.I0(out[5]),
        .I1(\stk_ccmd_rg_reg[15]_0 ),
        .I2(out[2]),
        .I3(out[3]),
        .I4(\bcmd[0]_INST_0_i_2_n_0 ),
        .I5(\bcmd[1]_INST_0_i_3_n_0 ),
        .O(\ir_rg_reg[5] ));
  LUT2 #(
    .INIT(4'hE)) 
    \bcmd[0]_INST_0_i_2 
       (.I0(stat[1]),
        .I1(stat[0]),
        .O(\bcmd[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \bcmd[1]_INST_0 
       (.I0(\bcmd[1]_INST_0_i_1_n_0 ),
        .I1(out[7]),
        .I2(out[3]),
        .I3(out[2]),
        .I4(\bcmd[1] ),
        .I5(\bcmd[1]_INST_0_i_3_n_0 ),
        .O(\stat_reg[1]_2 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bcmd[1]_INST_0_i_1 
       (.I0(stat[1]),
        .I1(stat[0]),
        .O(\bcmd[1]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \bcmd[1]_INST_0_i_3 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[4]),
        .O(\bcmd[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \bcmd[2]_INST_0 
       (.I0(\bcmd[3] ),
        .I1(stat[1]),
        .I2(out[4]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(\bcmd[3]_INST_0_i_2_n_0 ),
        .O(\stat_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bcmd[3]_INST_0 
       (.I0(\bcmd[3] ),
        .I1(out[2]),
        .I2(out[4]),
        .I3(stat[1]),
        .I4(out[1]),
        .I5(\bcmd[3]_INST_0_i_2_n_0 ),
        .O(\stat_reg[1]_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \bcmd[3]_INST_0_i_2 
       (.I0(stat[0]),
        .I1(out[5]),
        .I2(out[6]),
        .O(\bcmd[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04440000)) 
    \bdatw[0]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [0]),
        .O(bdatw[0]));
  LUT6 #(
    .INIT(64'h0444004404000000)) 
    \bdatw[10]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [2]),
        .I5(\bdatw[31] [10]),
        .O(bdatw[10]));
  LUT6 #(
    .INIT(64'h0444004404000000)) 
    \bdatw[11]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [3]),
        .I5(\bdatw[31] [11]),
        .O(bdatw[11]));
  LUT6 #(
    .INIT(64'h0444004404000000)) 
    \bdatw[12]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [4]),
        .I5(\bdatw[31] [12]),
        .O(bdatw[12]));
  LUT6 #(
    .INIT(64'h0444004404000000)) 
    \bdatw[13]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [5]),
        .I5(\bdatw[31] [13]),
        .O(bdatw[13]));
  LUT6 #(
    .INIT(64'h0444004404000000)) 
    \bdatw[14]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [6]),
        .I5(\bdatw[31] [14]),
        .O(bdatw[14]));
  LUT6 #(
    .INIT(64'h0444004404000000)) 
    \bdatw[15]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [7]),
        .I5(\bdatw[31] [15]),
        .O(bdatw[15]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \bdatw[16]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [16]),
        .O(bdatw[16]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \bdatw[17]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [17]),
        .O(bdatw[17]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \bdatw[18]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [18]),
        .O(bdatw[18]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \bdatw[19]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [19]),
        .O(bdatw[19]));
  LUT5 #(
    .INIT(32'h04440000)) 
    \bdatw[1]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [1]),
        .O(bdatw[1]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \bdatw[20]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [20]),
        .O(bdatw[20]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \bdatw[21]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [21]),
        .O(bdatw[21]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \bdatw[22]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [22]),
        .O(bdatw[22]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \bdatw[23]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [23]),
        .O(bdatw[23]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \bdatw[24]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [24]),
        .O(bdatw[24]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \bdatw[25]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [25]),
        .O(bdatw[25]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \bdatw[26]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [26]),
        .O(bdatw[26]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \bdatw[27]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [27]),
        .O(bdatw[27]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \bdatw[28]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [28]),
        .O(bdatw[28]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \bdatw[29]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [29]),
        .O(bdatw[29]));
  LUT5 #(
    .INIT(32'h04440000)) 
    \bdatw[2]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [2]),
        .O(bdatw[2]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \bdatw[30]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [30]),
        .O(bdatw[30]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \bdatw[31]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [31]),
        .O(bdatw[31]));
  LUT5 #(
    .INIT(32'h04440000)) 
    \bdatw[3]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [3]),
        .O(bdatw[3]));
  LUT5 #(
    .INIT(32'h04440000)) 
    \bdatw[4]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [4]),
        .O(bdatw[4]));
  LUT5 #(
    .INIT(32'h04440000)) 
    \bdatw[5]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [5]),
        .O(bdatw[5]));
  LUT5 #(
    .INIT(32'h04440000)) 
    \bdatw[6]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [6]),
        .O(bdatw[6]));
  LUT5 #(
    .INIT(32'h04440000)) 
    \bdatw[7]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [7]),
        .O(bdatw[7]));
  LUT6 #(
    .INIT(64'h0444004404000000)) 
    \bdatw[8]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [0]),
        .I5(\bdatw[31] [8]),
        .O(bdatw[8]));
  LUT6 #(
    .INIT(64'h0444004404000000)) 
    \bdatw[9]_INST_0 
       (.I0(\ir_rg_reg[5] ),
        .I1(\stat_reg[1]_2 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_1 ),
        .I4(\bdatw[31] [1]),
        .I5(\bdatw[31] [9]),
        .O(bdatw[9]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_1
       (.I0(cbus_i[31]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_34_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(O),
        .I5(cbus_inferred_i_36_n_0),
        .O(\cbus_i[31] [31]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_10
       (.I0(cbus_i[22]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_53_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [21]),
        .I5(cbus_inferred_i_54_n_0),
        .O(\cbus_i[31] [22]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    cbus_inferred_i_100
       (.I0(cbus_inferred_i_178_n_0),
        .I1(ctl_acmd_0[3]),
        .I2(cbus_inferred_i_179_n_0),
        .I3(cbus_inferred_i_116_n_0),
        .I4(\bdatw[31] [3]),
        .I5(cbus_inferred_i_180_n_0),
        .O(cbus_inferred_i_100_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_101
       (.I0(cbus_inferred_i_181_n_0),
        .I1(\bdatw[31] [2]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_182_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_101_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_103
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [17]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [1]),
        .I4(\bdatw[31] [1]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_103_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFA880)) 
    cbus_inferred_i_104
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [0]),
        .I3(\badr[31] [0]),
        .I4(cbus_inferred_i_187_n_0),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_104_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_105
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [16]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [0]),
        .I4(\bdatw[31] [0]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_105_n_0));
  LUT6 #(
    .INIT(64'hFF3C3C00AAAAAAAA)) 
    cbus_inferred_i_106
       (.I0(\stk_b1_rg_reg[30] [0]),
        .I1(\alu/art/cin__0 ),
        .I2(\badr[31] [31]),
        .I3(O),
        .I4(\alu/art/ina ),
        .I5(\stat_reg[1]_3 ),
        .O(cbus_inferred_i_106_n_0));
  LUT6 #(
    .INIT(64'h005500FC00550000)) 
    cbus_inferred_i_107
       (.I0(cbus_inferred_i_177_n_0),
        .I1(cbus_inferred_i_189_n_0),
        .I2(cbus_inferred_i_190_n_0),
        .I3(out[7]),
        .I4(stat[1]),
        .I5(abus_inferred_i_111_0),
        .O(ctl_acmd_0[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAA0002AAAA)) 
    cbus_inferred_i_108
       (.I0(ctl_acmd_0[1]),
        .I1(cbus_inferred_i_192_n_0),
        .I2(cbus_inferred_i_193_n_0),
        .I3(cbus_inferred_i_194_n_0),
        .I4(abus_inferred_i_111_0),
        .I5(out[7]),
        .O(cbus_inferred_i_108_n_0));
  LUT6 #(
    .INIT(64'h0008000000A800A0)) 
    cbus_inferred_i_109
       (.I0(ctl_acmd_0[1]),
        .I1(abus_inferred_i_111_0),
        .I2(stat[1]),
        .I3(out[7]),
        .I4(cbus_inferred_i_195_n_0),
        .I5(cbus_inferred_i_177_n_0),
        .O(cbus_inferred_i_109_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_11
       (.I0(cbus_i[21]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_55_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [20]),
        .I5(cbus_inferred_i_56_n_0),
        .O(\cbus_i[31] [21]));
  LUT6 #(
    .INIT(64'h1414141414141400)) 
    cbus_inferred_i_110
       (.I0(out[7]),
        .I1(out[6]),
        .I2(out[5]),
        .I3(cbus_inferred_i_194_n_0),
        .I4(cbus_inferred_i_193_n_0),
        .I5(cbus_inferred_i_192_n_0),
        .O(ctl_acmd_0[0]));
  LUT6 #(
    .INIT(64'h45A5455040A54050)) 
    cbus_inferred_i_111
       (.I0(ctl_acmd_0[2]),
        .I1(\bdatw[31] [30]),
        .I2(ctl_acmd_0[0]),
        .I3(ctl_acmd_0[1]),
        .I4(\bdatw[31] [31]),
        .I5(\bdatw[31] [23]),
        .O(cbus_inferred_i_111_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    cbus_inferred_i_112
       (.I0(ctl_acmd_0[3]),
        .I1(ctl_acmd_0[2]),
        .I2(tout__1_carry_i_10_n_0),
        .O(\stat_reg[1]_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    cbus_inferred_i_113
       (.I0(ctl_acmd_0[2]),
        .I1(tout__1_carry_i_10_n_0),
        .O(cbus_inferred_i_113_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cbus_inferred_i_114
       (.I0(tout__1_carry_i_11_n_0),
        .I1(ctl_acmd_0[2]),
        .O(cbus_inferred_i_114_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_115
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [30]),
        .I3(\badr[31] [30]),
        .O(cbus_inferred_i_115_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cbus_inferred_i_116
       (.I0(ctl_acmd_0[2]),
        .I1(ctl_acmd_0[1]),
        .O(cbus_inferred_i_116_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_117
       (.I0(\bdatw[31] [22]),
        .I1(\bdatw[31] [30]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [29]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_117_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_118
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [29]),
        .I3(\badr[31] [29]),
        .O(cbus_inferred_i_118_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_119
       (.I0(\bdatw[31] [21]),
        .I1(\bdatw[31] [29]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [28]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_119_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_12
       (.I0(cbus_i[20]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_57_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [19]),
        .I5(cbus_inferred_i_58_n_0),
        .O(\cbus_i[31] [20]));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_120
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [28]),
        .I3(\badr[31] [28]),
        .O(cbus_inferred_i_120_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_121
       (.I0(\bdatw[31] [20]),
        .I1(\bdatw[31] [28]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [27]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_121_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_122
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [27]),
        .I3(\badr[31] [27]),
        .O(cbus_inferred_i_122_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_123
       (.I0(\bdatw[31] [19]),
        .I1(\bdatw[31] [27]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [26]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_123_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_124
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [26]),
        .I3(\badr[31] [26]),
        .O(cbus_inferred_i_124_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_125
       (.I0(\bdatw[31] [18]),
        .I1(\bdatw[31] [26]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [25]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_125_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_126
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [25]),
        .I3(\badr[31] [25]),
        .O(cbus_inferred_i_126_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_127
       (.I0(\bdatw[31] [17]),
        .I1(\bdatw[31] [25]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [24]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_127_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_128
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [24]),
        .I3(\badr[31] [24]),
        .O(cbus_inferred_i_128_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_129
       (.I0(\bdatw[31] [16]),
        .I1(\bdatw[31] [24]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [23]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_129_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_13
       (.I0(cbus_i[19]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_59_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [18]),
        .I5(cbus_inferred_i_60_n_0),
        .O(\cbus_i[31] [19]));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_130
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [23]),
        .I3(\badr[31] [23]),
        .O(cbus_inferred_i_130_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_131
       (.I0(\bdatw[31] [31]),
        .I1(\bdatw[31] [23]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [22]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_131_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_132
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [22]),
        .I3(\badr[31] [22]),
        .O(cbus_inferred_i_132_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_133
       (.I0(\bdatw[31] [30]),
        .I1(\bdatw[31] [22]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [21]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_133_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_134
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [21]),
        .I3(\badr[31] [21]),
        .O(cbus_inferred_i_134_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_135
       (.I0(\bdatw[31] [29]),
        .I1(\bdatw[31] [21]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [20]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_135_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_136
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [20]),
        .I3(\badr[31] [20]),
        .O(cbus_inferred_i_136_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_137
       (.I0(\bdatw[31] [28]),
        .I1(\bdatw[31] [20]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [19]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_137_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_138
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [19]),
        .I3(\badr[31] [19]),
        .O(cbus_inferred_i_138_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_139
       (.I0(\bdatw[31] [27]),
        .I1(\bdatw[31] [19]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [18]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_139_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_14
       (.I0(cbus_i[18]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_61_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [17]),
        .I5(cbus_inferred_i_62_n_0),
        .O(\cbus_i[31] [18]));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_140
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [18]),
        .I3(\badr[31] [18]),
        .O(cbus_inferred_i_140_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_141
       (.I0(\bdatw[31] [26]),
        .I1(\bdatw[31] [18]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [17]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_141_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_142
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [17]),
        .I3(\badr[31] [17]),
        .O(cbus_inferred_i_142_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_143
       (.I0(\bdatw[31] [25]),
        .I1(\bdatw[31] [17]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [16]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_143_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_144
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [16]),
        .I3(\badr[31] [16]),
        .O(cbus_inferred_i_144_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_145
       (.I0(\bdatw[31] [24]),
        .I1(\bdatw[31] [16]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [15]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_145_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_146
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [15]),
        .I3(\badr[31] [15]),
        .O(cbus_inferred_i_146_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_147
       (.I0(\bdatw[31] [7]),
        .I1(\bdatw[31] [15]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [14]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_147_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_148
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [14]),
        .I3(\badr[31] [14]),
        .O(cbus_inferred_i_148_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_149
       (.I0(\bdatw[31] [6]),
        .I1(\bdatw[31] [14]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [13]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_149_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_15
       (.I0(cbus_i[17]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_63_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [16]),
        .I5(cbus_inferred_i_64_n_0),
        .O(\cbus_i[31] [17]));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_150
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [13]),
        .I3(\badr[31] [13]),
        .O(cbus_inferred_i_150_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_151
       (.I0(\bdatw[31] [5]),
        .I1(\bdatw[31] [13]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [12]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_151_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_152
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [12]),
        .I3(\badr[31] [12]),
        .O(cbus_inferred_i_152_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_153
       (.I0(\bdatw[31] [4]),
        .I1(\bdatw[31] [12]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [11]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_153_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_154
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [11]),
        .I3(\badr[31] [11]),
        .O(cbus_inferred_i_154_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_155
       (.I0(\bdatw[31] [3]),
        .I1(\bdatw[31] [11]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [10]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_155_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_156
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [10]),
        .I3(\badr[31] [10]),
        .O(cbus_inferred_i_156_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_157
       (.I0(\bdatw[31] [2]),
        .I1(\bdatw[31] [10]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [9]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_157_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_158
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [9]),
        .I3(\badr[31] [9]),
        .O(cbus_inferred_i_158_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_159
       (.I0(\bdatw[31] [1]),
        .I1(\bdatw[31] [9]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [8]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_159_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_16
       (.I0(cbus_i[16]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_65_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [15]),
        .I5(cbus_inferred_i_66_n_0),
        .O(\cbus_i[31] [16]));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_160
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [8]),
        .I3(\badr[31] [8]),
        .O(cbus_inferred_i_160_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_161
       (.I0(\bdatw[31] [0]),
        .I1(\bdatw[31] [8]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [7]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_161_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_162
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [7]),
        .I3(\badr[31] [7]),
        .O(cbus_inferred_i_162_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_163
       (.I0(\bdatw[31] [15]),
        .I1(\bdatw[31] [7]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [6]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_163_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_164
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [6]),
        .I3(\badr[31] [6]),
        .O(cbus_inferred_i_164_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_165
       (.I0(\bdatw[31] [14]),
        .I1(\bdatw[31] [6]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [5]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_165_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_166
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [5]),
        .I3(\badr[31] [5]),
        .O(cbus_inferred_i_166_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_167
       (.I0(\bdatw[31] [13]),
        .I1(\bdatw[31] [5]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [4]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_167_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    cbus_inferred_i_168
       (.I0(cbus_inferred_i_187_0),
        .I1(out[4]),
        .I2(out[3]),
        .I3(out[7]),
        .I4(cbus_inferred_i_197_n_0),
        .O(ctl_acmd_0[1]));
  LUT5 #(
    .INIT(32'h00A02080)) 
    cbus_inferred_i_169
       (.I0(\stk_b1_rg_reg[30] [3]),
        .I1(ctl_acmd_0[2]),
        .I2(ctl_acmd_0[3]),
        .I3(ctl_acmd_0[1]),
        .I4(ctl_acmd_0[0]),
        .O(cbus_inferred_i_169_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_17
       (.I0(cbus_i[15]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_67_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [14]),
        .I5(cbus_inferred_i_68_n_0),
        .O(\cbus_i[31] [15]));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_170
       (.I0(\bdatw[31] [12]),
        .I1(\bdatw[31] [4]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [3]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_170_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_171
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [4]),
        .I3(\badr[31] [4]),
        .O(cbus_inferred_i_171_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_172
       (.I0(\bdatw[31] [11]),
        .I1(\bdatw[31] [3]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [2]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_172_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_173
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [3]),
        .I3(\badr[31] [3]),
        .O(cbus_inferred_i_173_n_0));
  LUT6 #(
    .INIT(64'h0600226200000040)) 
    cbus_inferred_i_174
       (.I0(out[6]),
        .I1(out[5]),
        .I2(out[0]),
        .I3(out[4]),
        .I4(out[3]),
        .I5(stat[0]),
        .O(cbus_inferred_i_174_n_0));
  LUT6 #(
    .INIT(64'hFFFF000008000000)) 
    cbus_inferred_i_176
       (.I0(out[1]),
        .I1(\bcmd[1] ),
        .I2(out[2]),
        .I3(stat[0]),
        .I4(cbus_inferred_i_94_0),
        .I5(cbus_inferred_i_198_n_0),
        .O(cbus_inferred_i_176_n_0));
  LUT6 #(
    .INIT(64'hFEFFFEFEFFFFFFFF)) 
    cbus_inferred_i_177
       (.I0(cbus_inferred_i_199_n_0),
        .I1(out[5]),
        .I2(out[0]),
        .I3(out[3]),
        .I4(cbus_inferred_i_109_0),
        .I5(cbus_inferred_i_201_n_0),
        .O(cbus_inferred_i_177_n_0));
  LUT5 #(
    .INIT(32'h00A02080)) 
    cbus_inferred_i_178
       (.I0(\stk_b1_rg_reg[30] [1]),
        .I1(ctl_acmd_0[2]),
        .I2(ctl_acmd_0[3]),
        .I3(ctl_acmd_0[1]),
        .I4(ctl_acmd_0[0]),
        .O(cbus_inferred_i_178_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_179
       (.I0(\bdatw[31] [10]),
        .I1(\bdatw[31] [2]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [1]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_179_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_18
       (.I0(cbus_i[14]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_69_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [13]),
        .I5(cbus_inferred_i_70_n_0),
        .O(\cbus_i[31] [14]));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_180
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [2]),
        .I3(\badr[31] [2]),
        .O(cbus_inferred_i_180_n_0));
  LUT4 #(
    .INIT(16'hA880)) 
    cbus_inferred_i_181
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [1]),
        .I3(\badr[31] [1]),
        .O(cbus_inferred_i_181_n_0));
  LUT6 #(
    .INIT(64'h00000000F3AC03AC)) 
    cbus_inferred_i_182
       (.I0(\bdatw[31] [9]),
        .I1(\bdatw[31] [1]),
        .I2(ctl_acmd_0[1]),
        .I3(ctl_acmd_0[0]),
        .I4(\bdatw[31] [0]),
        .I5(ctl_acmd_0[2]),
        .O(cbus_inferred_i_182_n_0));
  LUT6 #(
    .INIT(64'h0000303088BBBB88)) 
    cbus_inferred_i_187
       (.I0(\bdatw[31] [1]),
        .I1(ctl_acmd_0[2]),
        .I2(\bdatw[31] [8]),
        .I3(\bdatw[31] [0]),
        .I4(ctl_acmd_0[0]),
        .I5(ctl_acmd_0[1]),
        .O(cbus_inferred_i_187_n_0));
  LUT4 #(
    .INIT(16'h2AAA)) 
    cbus_inferred_i_188
       (.I0(\bdatw[31] [31]),
        .I1(tout__1_carry_i_12_n_0),
        .I2(ctl_acmd_0[2]),
        .I3(ctl_acmd_0[3]),
        .O(\alu/art/ina ));
  LUT6 #(
    .INIT(64'h0000000100000200)) 
    cbus_inferred_i_189
       (.I0(cbus_inferred_i_206_n_0),
        .I1(out[3]),
        .I2(out[4]),
        .I3(out[5]),
        .I4(out[2]),
        .I5(stat[0]),
        .O(cbus_inferred_i_189_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_19
       (.I0(cbus_i[13]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_71_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [12]),
        .I5(cbus_inferred_i_72_n_0),
        .O(\cbus_i[31] [13]));
  LUT5 #(
    .INIT(32'h57000000)) 
    cbus_inferred_i_190
       (.I0(out[1]),
        .I1(out[0]),
        .I2(stat[0]),
        .I3(out[2]),
        .I4(cbus_inferred_i_207_n_0),
        .O(cbus_inferred_i_190_n_0));
  LUT6 #(
    .INIT(64'h00000000505C5050)) 
    cbus_inferred_i_192
       (.I0(tout__1_carry_i_12_0),
        .I1(\stk_ccmd_rg_reg[15]_1 ),
        .I2(out[2]),
        .I3(out[3]),
        .I4(out[0]),
        .I5(\bcmd[1]_INST_0_i_1_n_0 ),
        .O(cbus_inferred_i_192_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    cbus_inferred_i_193
       (.I0(out[5]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(out[0]),
        .I4(out[4]),
        .I5(out[3]),
        .O(cbus_inferred_i_193_n_0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    cbus_inferred_i_194
       (.I0(tout__1_carry_i_12_1),
        .I1(out[3]),
        .I2(out[5]),
        .I3(\ccmd[15]_INST_0_i_3_n_0 ),
        .I4(out[4]),
        .I5(out[2]),
        .O(cbus_inferred_i_194_n_0));
  LUT5 #(
    .INIT(32'hCCCCFAAA)) 
    cbus_inferred_i_195
       (.I0(cbus_inferred_i_210_n_0),
        .I1(cbus_inferred_i_211_n_0),
        .I2(cbus_inferred_i_207_n_0),
        .I3(out[2]),
        .I4(cbus_inferred_i_206_n_0),
        .O(cbus_inferred_i_195_n_0));
  LUT5 #(
    .INIT(32'h000F8300)) 
    cbus_inferred_i_197
       (.I0(crdy),
        .I1(out[1]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(out[5]),
        .O(cbus_inferred_i_197_n_0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    cbus_inferred_i_198
       (.I0(out[5]),
        .I1(out[6]),
        .I2(out[2]),
        .I3(stat[0]),
        .I4(out[1]),
        .I5(out[0]),
        .O(cbus_inferred_i_198_n_0));
  LUT6 #(
    .INIT(64'hFFF0FFFFFFF07FFF)) 
    cbus_inferred_i_199
       (.I0(out[6]),
        .I1(out[4]),
        .I2(out[2]),
        .I3(out[3]),
        .I4(out[1]),
        .I5(stat[0]),
        .O(cbus_inferred_i_199_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_2
       (.I0(cbus_i[30]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_37_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [29]),
        .I5(cbus_inferred_i_38_n_0),
        .O(\cbus_i[31] [30]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_20
       (.I0(cbus_i[12]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_73_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [11]),
        .I5(cbus_inferred_i_74_n_0),
        .O(\cbus_i[31] [12]));
  LUT3 #(
    .INIT(8'h8F)) 
    cbus_inferred_i_201
       (.I0(stat[0]),
        .I1(crdy),
        .I2(out[1]),
        .O(cbus_inferred_i_201_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    cbus_inferred_i_206
       (.I0(out[1]),
        .I1(out[0]),
        .I2(stat[0]),
        .O(cbus_inferred_i_206_n_0));
  LUT5 #(
    .INIT(32'h10D02202)) 
    cbus_inferred_i_207
       (.I0(out[5]),
        .I1(out[3]),
        .I2(stat[0]),
        .I3(out[0]),
        .I4(out[4]),
        .O(cbus_inferred_i_207_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_21
       (.I0(cbus_i[11]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_75_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [10]),
        .I5(cbus_inferred_i_76_n_0),
        .O(\cbus_i[31] [11]));
  LUT5 #(
    .INIT(32'h00010000)) 
    cbus_inferred_i_210
       (.I0(out[3]),
        .I1(out[4]),
        .I2(out[5]),
        .I3(out[2]),
        .I4(stat[0]),
        .O(cbus_inferred_i_210_n_0));
  LUT5 #(
    .INIT(32'h00000004)) 
    cbus_inferred_i_211
       (.I0(stat[0]),
        .I1(out[5]),
        .I2(out[4]),
        .I3(out[2]),
        .I4(out[3]),
        .O(cbus_inferred_i_211_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_22
       (.I0(cbus_i[10]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_77_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [9]),
        .I5(cbus_inferred_i_78_n_0),
        .O(\cbus_i[31] [10]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_23
       (.I0(cbus_i[9]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_79_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [8]),
        .I5(cbus_inferred_i_80_n_0),
        .O(\cbus_i[31] [9]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_24
       (.I0(cbus_i[8]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_81_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [7]),
        .I5(cbus_inferred_i_82_n_0),
        .O(\cbus_i[31] [8]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_25
       (.I0(cbus_i[7]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_83_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [6]),
        .I5(cbus_inferred_i_84_n_0),
        .O(\cbus_i[31] [7]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_26
       (.I0(cbus_i[6]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_85_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [5]),
        .I5(cbus_inferred_i_86_n_0),
        .O(\cbus_i[31] [6]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_27
       (.I0(cbus_i[5]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_87_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [4]),
        .I5(cbus_inferred_i_88_n_0),
        .O(\cbus_i[31] [5]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_28
       (.I0(cbus_i[4]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_89_n_0),
        .I3(cbus_inferred_i_90_n_0),
        .I4(\alu/art/drv__3 ),
        .I5(cbus_inferred_i_92_n_0),
        .O(\cbus_i[31] [4]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB888B8)) 
    cbus_inferred_i_29
       (.I0(cbus_i[3]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_93_n_0),
        .I3(ctl_acmd_0[3]),
        .I4(cbus_inferred_i_95_n_0),
        .I5(cbus_inferred_i_96_n_0),
        .O(\cbus_i[31] [3]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_3
       (.I0(cbus_i[29]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_39_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [28]),
        .I5(cbus_inferred_i_40_n_0),
        .O(\cbus_i[31] [29]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_30
       (.I0(cbus_i[2]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_97_n_0),
        .I3(cbus_inferred_i_98_n_0),
        .I4(cbus_inferred_i_99_n_0),
        .I5(cbus_inferred_i_100_n_0),
        .O(\cbus_i[31] [2]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_31
       (.I0(cbus_i[1]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_101_n_0),
        .I3(\alu/art/drv__3 ),
        .I4(\stk_ccmd_rg_reg[1] ),
        .I5(cbus_inferred_i_103_n_0),
        .O(\cbus_i[31] [1]));
  LUT6 #(
    .INIT(64'hBBBBBBB8BBB8BBB8)) 
    cbus_inferred_i_32
       (.I0(cbus_i[0]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_104_n_0),
        .I3(cbus_inferred_i_105_n_0),
        .I4(cbus_inferred_i_106_n_0),
        .I5(\alu/art/drv__3 ),
        .O(\cbus_i[31] [0]));
  LUT3 #(
    .INIT(8'h80)) 
    cbus_inferred_i_33
       (.I0(ctl_acmd_0[3]),
        .I1(ctl_acmd_0[2]),
        .I2(cbus_inferred_i_108_n_0),
        .O(ctl_ccmd_sel));
  LUT6 #(
    .INIT(64'h00000000FFFFA880)) 
    cbus_inferred_i_34
       (.I0(cbus_inferred_i_109_n_0),
        .I1(ctl_acmd_0[0]),
        .I2(\bdatw[31] [31]),
        .I3(\badr[31] [31]),
        .I4(cbus_inferred_i_111_n_0),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_34_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cbus_inferred_i_35
       (.I0(\alu/art/drv__3 ),
        .I1(\stat_reg[1]_3 ),
        .O(cbus_inferred_i_35_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_36
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [15]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [31]),
        .I4(\bdatw[31] [31]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_36_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_37
       (.I0(cbus_inferred_i_115_n_0),
        .I1(\bdatw[31] [31]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_117_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_37_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_38
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [14]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [30]),
        .I4(\bdatw[31] [30]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_38_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_39
       (.I0(cbus_inferred_i_118_n_0),
        .I1(\bdatw[31] [30]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_119_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_39_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_4
       (.I0(cbus_i[28]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_41_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [27]),
        .I5(cbus_inferred_i_42_n_0),
        .O(\cbus_i[31] [28]));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_40
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [13]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [29]),
        .I4(\bdatw[31] [29]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_40_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_41
       (.I0(cbus_inferred_i_120_n_0),
        .I1(\bdatw[31] [29]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_121_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_41_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_42
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [12]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [28]),
        .I4(\bdatw[31] [28]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_42_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_43
       (.I0(cbus_inferred_i_122_n_0),
        .I1(\bdatw[31] [28]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_123_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_43_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_44
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [11]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [27]),
        .I4(\bdatw[31] [27]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_44_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_45
       (.I0(cbus_inferred_i_124_n_0),
        .I1(\bdatw[31] [27]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_125_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_45_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_46
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [10]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [26]),
        .I4(\bdatw[31] [26]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_46_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_47
       (.I0(cbus_inferred_i_126_n_0),
        .I1(\bdatw[31] [26]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_127_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_47_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_48
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [9]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [25]),
        .I4(\bdatw[31] [25]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_48_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_49
       (.I0(cbus_inferred_i_128_n_0),
        .I1(\bdatw[31] [25]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_129_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_49_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_5
       (.I0(cbus_i[27]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_43_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [26]),
        .I5(cbus_inferred_i_44_n_0),
        .O(\cbus_i[31] [27]));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_50
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [8]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [24]),
        .I4(\bdatw[31] [24]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_50_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_51
       (.I0(cbus_inferred_i_130_n_0),
        .I1(\bdatw[31] [24]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_131_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_51_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_52
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [7]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [23]),
        .I4(\bdatw[31] [23]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_52_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_53
       (.I0(cbus_inferred_i_132_n_0),
        .I1(\bdatw[31] [23]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_133_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_53_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_54
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [6]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [22]),
        .I4(\bdatw[31] [22]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_54_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_55
       (.I0(cbus_inferred_i_134_n_0),
        .I1(\bdatw[31] [22]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_135_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_55_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_56
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [5]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [21]),
        .I4(\bdatw[31] [21]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_56_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_57
       (.I0(cbus_inferred_i_136_n_0),
        .I1(\bdatw[31] [21]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_137_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_57_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_58
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [4]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [20]),
        .I4(\bdatw[31] [20]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_58_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_59
       (.I0(cbus_inferred_i_138_n_0),
        .I1(\bdatw[31] [20]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_139_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_59_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_6
       (.I0(cbus_i[26]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_45_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [25]),
        .I5(cbus_inferred_i_46_n_0),
        .O(\cbus_i[31] [26]));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_60
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [3]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [19]),
        .I4(\bdatw[31] [19]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_60_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_61
       (.I0(cbus_inferred_i_140_n_0),
        .I1(\bdatw[31] [19]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_141_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_61_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_62
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [2]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [18]),
        .I4(\bdatw[31] [18]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_62_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_63
       (.I0(cbus_inferred_i_142_n_0),
        .I1(\bdatw[31] [18]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_143_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_63_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_64
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [1]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [17]),
        .I4(\bdatw[31] [17]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_64_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_65
       (.I0(cbus_inferred_i_144_n_0),
        .I1(\bdatw[31] [17]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_145_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_65_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_66
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [0]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [16]),
        .I4(\bdatw[31] [16]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_66_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_67
       (.I0(cbus_inferred_i_146_n_0),
        .I1(\bdatw[31] [16]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_147_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_67_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_68
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [31]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [15]),
        .I4(\bdatw[31] [15]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_68_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_69
       (.I0(cbus_inferred_i_148_n_0),
        .I1(\bdatw[31] [15]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_149_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_69_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_7
       (.I0(cbus_i[25]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_47_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [24]),
        .I5(cbus_inferred_i_48_n_0),
        .O(\cbus_i[31] [25]));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_70
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [30]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [14]),
        .I4(\bdatw[31] [14]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_70_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_71
       (.I0(cbus_inferred_i_150_n_0),
        .I1(\bdatw[31] [14]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_151_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_71_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_72
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [29]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [13]),
        .I4(\bdatw[31] [13]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_72_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_73
       (.I0(cbus_inferred_i_152_n_0),
        .I1(\bdatw[31] [13]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_153_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_73_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_74
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [28]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [12]),
        .I4(\bdatw[31] [12]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_74_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_75
       (.I0(cbus_inferred_i_154_n_0),
        .I1(\bdatw[31] [12]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_155_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_75_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_76
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [27]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [11]),
        .I4(\bdatw[31] [11]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_76_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_77
       (.I0(cbus_inferred_i_156_n_0),
        .I1(\bdatw[31] [11]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_157_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_77_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_78
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [26]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [10]),
        .I4(\bdatw[31] [10]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_78_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_79
       (.I0(cbus_inferred_i_158_n_0),
        .I1(\bdatw[31] [10]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_159_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_79_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_8
       (.I0(cbus_i[24]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_49_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [23]),
        .I5(cbus_inferred_i_50_n_0),
        .O(\cbus_i[31] [24]));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_80
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [25]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [9]),
        .I4(\bdatw[31] [9]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_80_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_81
       (.I0(cbus_inferred_i_160_n_0),
        .I1(\bdatw[31] [9]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_161_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_81_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_82
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [24]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [8]),
        .I4(\bdatw[31] [8]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_82_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_83
       (.I0(cbus_inferred_i_162_n_0),
        .I1(\bdatw[31] [8]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_163_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_83_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_84
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [23]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [7]),
        .I4(\bdatw[31] [7]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_84_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_85
       (.I0(cbus_inferred_i_164_n_0),
        .I1(\bdatw[31] [7]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_165_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_85_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_86
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [22]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [6]),
        .I4(\bdatw[31] [6]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_86_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    cbus_inferred_i_87
       (.I0(cbus_inferred_i_166_n_0),
        .I1(\bdatw[31] [6]),
        .I2(cbus_inferred_i_116_n_0),
        .I3(cbus_inferred_i_167_n_0),
        .I4(ctl_acmd_0[3]),
        .O(cbus_inferred_i_87_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_88
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [21]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [5]),
        .I4(\bdatw[31] [5]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_88_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_89
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [20]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [4]),
        .I4(\bdatw[31] [4]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_89_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    cbus_inferred_i_9
       (.I0(cbus_i[23]),
        .I1(ctl_ccmd_sel),
        .I2(cbus_inferred_i_51_n_0),
        .I3(cbus_inferred_i_35_n_0),
        .I4(\stk_b1_rg_reg[30] [22]),
        .I5(cbus_inferred_i_52_n_0),
        .O(\cbus_i[31] [23]));
  LUT2 #(
    .INIT(4'h8)) 
    cbus_inferred_i_90
       (.I0(\stat_reg[1]_3 ),
        .I1(O),
        .O(cbus_inferred_i_90_n_0));
  LUT4 #(
    .INIT(16'h30E0)) 
    cbus_inferred_i_91
       (.I0(ctl_acmd_0[0]),
        .I1(ctl_acmd_0[1]),
        .I2(ctl_acmd_0[3]),
        .I3(ctl_acmd_0[2]),
        .O(\alu/art/drv__3 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    cbus_inferred_i_92
       (.I0(cbus_inferred_i_169_n_0),
        .I1(ctl_acmd_0[3]),
        .I2(cbus_inferred_i_170_n_0),
        .I3(cbus_inferred_i_116_n_0),
        .I4(\bdatw[31] [5]),
        .I5(cbus_inferred_i_171_n_0),
        .O(cbus_inferred_i_92_n_0));
  LUT4 #(
    .INIT(16'hFFEA)) 
    cbus_inferred_i_93
       (.I0(cbus_inferred_i_172_n_0),
        .I1(cbus_inferred_i_116_n_0),
        .I2(\bdatw[31] [4]),
        .I3(cbus_inferred_i_173_n_0),
        .O(cbus_inferred_i_93_n_0));
  LUT6 #(
    .INIT(64'h1111001055554454)) 
    cbus_inferred_i_94
       (.I0(out[7]),
        .I1(stat[1]),
        .I2(cbus_inferred_i_174_n_0),
        .I3(abus_inferred_i_111_1),
        .I4(cbus_inferred_i_176_n_0),
        .I5(cbus_inferred_i_177_n_0),
        .O(ctl_acmd_0[3]));
  LUT5 #(
    .INIT(32'hFF606060)) 
    cbus_inferred_i_95
       (.I0(\bdatw[31] [3]),
        .I1(\badr[31] [3]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\bdatw[31] [19]),
        .I4(cbus_inferred_i_113_n_0),
        .O(cbus_inferred_i_95_n_0));
  LUT5 #(
    .INIT(32'h2A8A2080)) 
    cbus_inferred_i_96
       (.I0(\alu/art/drv__3 ),
        .I1(cbus_inferred_i_29_0),
        .I2(\stat_reg[1]_3 ),
        .I3(\alu/art/cin__0 ),
        .I4(\stk_b1_rg_reg[30] [2]),
        .O(cbus_inferred_i_96_n_0));
  LUT6 #(
    .INIT(64'h88F8F88800000000)) 
    cbus_inferred_i_97
       (.I0(cbus_inferred_i_113_n_0),
        .I1(\bdatw[31] [18]),
        .I2(cbus_inferred_i_114_n_0),
        .I3(\badr[31] [2]),
        .I4(\bdatw[31] [2]),
        .I5(ctl_acmd_0[3]),
        .O(cbus_inferred_i_97_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cbus_inferred_i_98
       (.I0(\alu/art/drv__3 ),
        .I1(\stat_reg[1]_3 ),
        .O(cbus_inferred_i_98_n_0));
  LUT5 #(
    .INIT(32'h90069090)) 
    cbus_inferred_i_99
       (.I0(\alu/art/cin__0 ),
        .I1(\badr[31] [31]),
        .I2(O),
        .I3(tout__1_carry_i_9_n_0),
        .I4(\bdatw[31] [31]),
        .O(cbus_inferred_i_99_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[0]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(Q[0]),
        .O(ccmd[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[10]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(Q[10]),
        .O(ccmd[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[11]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(Q[11]),
        .O(ccmd[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[12]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(Q[12]),
        .O(ccmd[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[13]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(Q[13]),
        .O(ccmd[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[14]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(Q[14]),
        .O(ccmd[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[15]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(Q[15]),
        .O(ccmd[15]));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \ccmd[15]_INST_0_i_1 
       (.I0(\stk_ccmd_rg_reg[15] ),
        .I1(\stk_ccmd_rg_reg[15]_0 ),
        .I2(\ccmd[15]_INST_0_i_3_n_0 ),
        .I3(abus_o_31_sn_1),
        .I4(crdy),
        .I5(\stk_ccmd_rg_reg[15]_1 ),
        .O(ctl_ccmd_en));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[15]_INST_0_i_3 
       (.I0(stat[1]),
        .I1(stat[0]),
        .O(\ccmd[15]_INST_0_i_3_n_0 ));
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
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[5]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(Q[5]),
        .O(ccmd[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[6]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(Q[6]),
        .O(ccmd[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[7]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(Q[7]),
        .O(ccmd[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[8]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(Q[8]),
        .O(ccmd[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[9]_INST_0 
       (.I0(ctl_ccmd_en),
        .I1(Q[9]),
        .O(ccmd[9]));
  LUT6 #(
    .INIT(64'hFFFFEEEAEEEAEEEA)) 
    ctl_fetch_rg_i_1
       (.I0(ctl_fetch_rg_i_2_n_0),
        .I1(ctl_fetch_rg_i_3_n_0),
        .I2(ctl_fetch_rg_reg),
        .I3(ctl_fetch_rg_i_5_n_0),
        .I4(ctl_fetch_rg_i_6_n_0),
        .I5(out[6]),
        .O(in0));
  LUT5 #(
    .INIT(32'hEEEFEEEE)) 
    ctl_fetch_rg_i_2
       (.I0(ctl_fetch_rg_i_7_n_0),
        .I1(out[7]),
        .I2(out[2]),
        .I3(out[3]),
        .I4(out[5]),
        .O(ctl_fetch_rg_i_2_n_0));
  LUT6 #(
    .INIT(64'h8888888888080000)) 
    ctl_fetch_rg_i_3
       (.I0(stat[0]),
        .I1(ctl_fetch_rg_i_8_n_0),
        .I2(out[4]),
        .I3(\stk_ccmd_rg_reg[15] ),
        .I4(out[6]),
        .I5(ctl_fetch_rg_i_9_n_0),
        .O(ctl_fetch_rg_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFEFEB)) 
    ctl_fetch_rg_i_5
       (.I0(stat[1]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[5]),
        .I4(ctl_fetch_rg_reg_0),
        .O(ctl_fetch_rg_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ctl_fetch_rg_i_6
       (.I0(stat[1]),
        .I1(out[5]),
        .O(ctl_fetch_rg_i_6_n_0));
  LUT6 #(
    .INIT(64'hA8AAA8AAA8AAFFFF)) 
    ctl_fetch_rg_i_7
       (.I0(stat[1]),
        .I1(out[0]),
        .I2(out[3]),
        .I3(out[1]),
        .I4(out[6]),
        .I5(ctl_fetch_rg_i_2_0),
        .O(ctl_fetch_rg_i_7_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    ctl_fetch_rg_i_8
       (.I0(crdy),
        .I1(stat[1]),
        .O(ctl_fetch_rg_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    ctl_fetch_rg_i_9
       (.I0(stat[1]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(brdy),
        .I4(out[3]),
        .O(ctl_fetch_rg_i_9_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \ivec[31]_i_1 
       (.I0(\ivec[31]_i_2_n_0 ),
        .I1(out[0]),
        .I2(stat[0]),
        .I3(\ivec_reg[31] ),
        .I4(\stk_ccmd_rg_reg[15]_0 ),
        .I5(\ivec_reg[31]_0 ),
        .O(\stat_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ivec[31]_i_2 
       (.I0(out[1]),
        .I1(stat[1]),
        .O(\ivec[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00550055CCCC0CCC)) 
    mem_reg_0_63_0_0_i_1
       (.I0(mem_reg_0_63_0_0_i_8_n_0),
        .I1(mem_reg_0_63_0_0_i_9_n_0),
        .I2(stat[0]),
        .I3(stat[1]),
        .I4(crdy),
        .I5(mem_reg_0_63_0_0_i_10_n_0),
        .O(ctl_push));
  LUT6 #(
    .INIT(64'hFF00FF02FF00FF00)) 
    mem_reg_0_63_0_0_i_10
       (.I0(irq),
        .I1(out[6]),
        .I2(rgf_ie_rg_reg_0),
        .I3(mem_reg_0_63_0_0_i_1_0),
        .I4(stat[0]),
        .I5(rgf_ie),
        .O(mem_reg_0_63_0_0_i_10_n_0));
  LUT6 #(
    .INIT(64'h000011BB00F011BB)) 
    mem_reg_0_63_0_0_i_11
       (.I0(out[7]),
        .I1(mem_reg_0_63_0_0_i_20_n_0),
        .I2(mem_reg_0_63_0_0_i_7),
        .I3(\bcmd[0]_INST_0_i_2_n_0 ),
        .I4(out[5]),
        .I5(mem_reg_0_63_0_0_i_7_0),
        .O(\ir_rg_reg[7] ));
  LUT6 #(
    .INIT(64'hF3F3F3D0F3F2E3F2)) 
    mem_reg_0_63_0_0_i_12
       (.I0(out[3]),
        .I1(\stk_ccmd_rg_reg[15]_0 ),
        .I2(stat[0]),
        .I3(out[0]),
        .I4(out[1]),
        .I5(out[4]),
        .O(mem_reg_0_63_0_0_i_12_n_0));
  LUT5 #(
    .INIT(32'hFF7F7F7F)) 
    mem_reg_0_63_0_0_i_14
       (.I0(out[3]),
        .I1(stat[0]),
        .I2(out[4]),
        .I3(out[0]),
        .I4(out[1]),
        .O(mem_reg_0_63_0_0_i_14_n_0));
  LUT6 #(
    .INIT(64'h0000000007770000)) 
    mem_reg_0_63_0_0_i_15
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(out[0]),
        .I4(out[6]),
        .I5(\bcmd[1]_INST_0_i_1_n_0 ),
        .O(mem_reg_0_63_0_0_i_15_n_0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    mem_reg_0_63_0_0_i_16
       (.I0(stat[0]),
        .I1(out[2]),
        .I2(stat[1]),
        .I3(out[6]),
        .I4(out[1]),
        .I5(out[0]),
        .O(mem_reg_0_63_0_0_i_16_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    mem_reg_0_63_0_0_i_17
       (.I0(out[4]),
        .I1(out[6]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(stat[0]),
        .I5(stat[1]),
        .O(mem_reg_0_63_0_0_i_17_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7F7FFF7)) 
    mem_reg_0_63_0_0_i_20
       (.I0(ctl_fetch_rg_i_8_n_0),
        .I1(mem_reg_0_63_0_0_i_23_n_0),
        .I2(mem_reg_0_63_0_0_i_24_n_0),
        .I3(\stk_b1_rg_reg[31]_4 ),
        .I4(out[6]),
        .I5(mem_reg_0_63_0_0_i_25_n_0),
        .O(mem_reg_0_63_0_0_i_20_n_0));
  LUT5 #(
    .INIT(32'h7F7F7FFF)) 
    mem_reg_0_63_0_0_i_23
       (.I0(out[0]),
        .I1(stat[0]),
        .I2(out[3]),
        .I3(out[2]),
        .I4(out[1]),
        .O(mem_reg_0_63_0_0_i_23_n_0));
  LUT3 #(
    .INIT(8'hC8)) 
    mem_reg_0_63_0_0_i_24
       (.I0(out[6]),
        .I1(stat[1]),
        .I2(stat[0]),
        .O(mem_reg_0_63_0_0_i_24_n_0));
  LUT5 #(
    .INIT(32'hAA282028)) 
    mem_reg_0_63_0_0_i_25
       (.I0(stat[0]),
        .I1(out[4]),
        .I2(out[3]),
        .I3(out[2]),
        .I4(out[1]),
        .O(mem_reg_0_63_0_0_i_25_n_0));
  LUT6 #(
    .INIT(64'hBBBBB8BB8B8B888B)) 
    mem_reg_0_63_0_0_i_8
       (.I0(mem_reg_0_63_0_0_i_12_n_0),
        .I1(out[2]),
        .I2(mem_reg_0_63_0_0_i_1_1),
        .I3(brdy),
        .I4(mem_reg_0_63_0_0_i_14_n_0),
        .I5(stat[0]),
        .O(mem_reg_0_63_0_0_i_8_n_0));
  LUT6 #(
    .INIT(64'hFF320032C8320032)) 
    mem_reg_0_63_0_0_i_9
       (.I0(mem_reg_0_63_0_0_i_15_n_0),
        .I1(out[4]),
        .I2(mem_reg_0_63_0_0_i_16_n_0),
        .I3(out[3]),
        .I4(out[2]),
        .I5(mem_reg_0_63_0_0_i_17_n_0),
        .O(mem_reg_0_63_0_0_i_9_n_0));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[11]_i_2 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[11]_i_6_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [11]),
        .O(\pcnt[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[11]_i_3 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[11]_i_7_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [10]),
        .O(\pcnt[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[11]_i_4 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[11]_i_8_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [9]),
        .O(\pcnt[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[11]_i_5 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[11]_i_9_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [8]),
        .O(\pcnt[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[11]_i_6 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [11]),
        .I3(abus_inferred_i_1_0[11]),
        .I4(abus_inferred_i_1_2[11]),
        .O(\pcnt[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[11]_i_7 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [10]),
        .I3(abus_inferred_i_1_0[10]),
        .I4(abus_inferred_i_1_2[10]),
        .O(\pcnt[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[11]_i_8 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [9]),
        .I3(abus_inferred_i_1_0[9]),
        .I4(abus_inferred_i_1_2[9]),
        .O(\pcnt[11]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[11]_i_9 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [8]),
        .I3(abus_inferred_i_1_0[8]),
        .I4(abus_inferred_i_1_2[8]),
        .O(\pcnt[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[15]_i_2 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[15]_i_6_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [15]),
        .O(\pcnt[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[15]_i_3 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[15]_i_7_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [14]),
        .O(\pcnt[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[15]_i_4 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[15]_i_8_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [13]),
        .O(\pcnt[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[15]_i_5 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[15]_i_9_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [12]),
        .O(\pcnt[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[15]_i_6 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [15]),
        .I3(abus_inferred_i_1_0[15]),
        .I4(abus_inferred_i_1_2[15]),
        .O(\pcnt[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[15]_i_7 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [14]),
        .I3(abus_inferred_i_1_0[14]),
        .I4(abus_inferred_i_1_2[14]),
        .O(\pcnt[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[15]_i_8 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [13]),
        .I3(abus_inferred_i_1_0[13]),
        .I4(abus_inferred_i_1_2[13]),
        .O(\pcnt[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[15]_i_9 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [12]),
        .I3(abus_inferred_i_1_0[12]),
        .I4(abus_inferred_i_1_2[12]),
        .O(\pcnt[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[19]_i_2 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[19]_i_6_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [19]),
        .O(\pcnt[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[19]_i_3 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[19]_i_7_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [18]),
        .O(\pcnt[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[19]_i_4 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[19]_i_8_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [17]),
        .O(\pcnt[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[19]_i_5 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[19]_i_9_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [16]),
        .O(\pcnt[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[19]_i_6 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [19]),
        .I3(abus_inferred_i_1_0[19]),
        .I4(abus_inferred_i_1_2[19]),
        .O(\pcnt[19]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[19]_i_7 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [18]),
        .I3(abus_inferred_i_1_0[18]),
        .I4(abus_inferred_i_1_2[18]),
        .O(\pcnt[19]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[19]_i_8 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [17]),
        .I3(abus_inferred_i_1_0[17]),
        .I4(abus_inferred_i_1_2[17]),
        .O(\pcnt[19]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[19]_i_9 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [16]),
        .I3(abus_inferred_i_1_0[16]),
        .I4(abus_inferred_i_1_2[16]),
        .O(\pcnt[19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[23]_i_2 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[23]_i_6_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [23]),
        .O(\pcnt[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[23]_i_3 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[23]_i_7_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [22]),
        .O(\pcnt[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[23]_i_4 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[23]_i_8_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [21]),
        .O(\pcnt[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[23]_i_5 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[23]_i_9_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [20]),
        .O(\pcnt[23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[23]_i_6 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [23]),
        .I3(abus_inferred_i_1_0[23]),
        .I4(abus_inferred_i_1_2[23]),
        .O(\pcnt[23]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[23]_i_7 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [22]),
        .I3(abus_inferred_i_1_0[22]),
        .I4(abus_inferred_i_1_2[22]),
        .O(\pcnt[23]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[23]_i_8 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [21]),
        .I3(abus_inferred_i_1_0[21]),
        .I4(abus_inferred_i_1_2[21]),
        .O(\pcnt[23]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[23]_i_9 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [20]),
        .I3(abus_inferred_i_1_0[20]),
        .I4(abus_inferred_i_1_2[20]),
        .O(\pcnt[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[27]_i_2 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[27]_i_6_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [27]),
        .O(\pcnt[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[27]_i_3 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[27]_i_7_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [26]),
        .O(\pcnt[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[27]_i_4 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[27]_i_8_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [25]),
        .O(\pcnt[27]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[27]_i_5 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[27]_i_9_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [24]),
        .O(\pcnt[27]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[27]_i_6 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [27]),
        .I3(abus_inferred_i_1_0[27]),
        .I4(abus_inferred_i_1_2[27]),
        .O(\pcnt[27]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[27]_i_7 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [26]),
        .I3(abus_inferred_i_1_0[26]),
        .I4(abus_inferred_i_1_2[26]),
        .O(\pcnt[27]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[27]_i_8 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [25]),
        .I3(abus_inferred_i_1_0[25]),
        .I4(abus_inferred_i_1_2[25]),
        .O(\pcnt[27]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[27]_i_9 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [24]),
        .I3(abus_inferred_i_1_0[24]),
        .I4(abus_inferred_i_1_2[24]),
        .O(\pcnt[27]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[31]_i_10 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [29]),
        .I3(abus_inferred_i_1_0[29]),
        .I4(abus_inferred_i_1_2[29]),
        .O(\pcnt[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[31]_i_11 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [28]),
        .I3(abus_inferred_i_1_0[28]),
        .I4(abus_inferred_i_1_2[28]),
        .O(\pcnt[31]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \pcnt[31]_i_13 
       (.I0(stat[0]),
        .I1(rgf_ie),
        .I2(out[0]),
        .I3(out[4]),
        .I4(out[2]),
        .O(\pcnt[31]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h40400040)) 
    \pcnt[31]_i_14 
       (.I0(stat[0]),
        .I1(out[5]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(out[0]),
        .O(\pcnt[31]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h6F)) 
    \pcnt[31]_i_15 
       (.I0(out[0]),
        .I1(stk_bool),
        .I2(stat[0]),
        .O(\pcnt[31]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[31]_i_2 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[31]_i_6_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [31]),
        .O(\pcnt[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[31]_i_3 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[31]_i_9_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [30]),
        .O(\pcnt[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[31]_i_4 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[31]_i_10_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [29]),
        .O(\pcnt[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[31]_i_5 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[31]_i_11_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [28]),
        .O(\pcnt[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[31]_i_6 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [31]),
        .I3(abus_inferred_i_1_0[31]),
        .I4(abus_inferred_i_1_2[31]),
        .O(\pcnt[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000700000000)) 
    \pcnt[31]_i_7 
       (.I0(out[6]),
        .I1(out[5]),
        .I2(out[3]),
        .I3(stat[1]),
        .I4(out[7]),
        .I5(\pcnt[3]_i_6_0 ),
        .O(\pcnt[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAFAEAEA)) 
    \pcnt[31]_i_8 
       (.I0(\pcnt[31]_i_13_n_0 ),
        .I1(\pcnt[31]_i_14_n_0 ),
        .I2(\pcnt[31]_i_15_n_0 ),
        .I3(out[5]),
        .I4(stat[0]),
        .I5(\ivec_reg[31] ),
        .O(\pcnt[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[31]_i_9 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [30]),
        .I3(abus_inferred_i_1_0[30]),
        .I4(abus_inferred_i_1_2[30]),
        .O(\pcnt[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[3]_i_10 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [0]),
        .I3(abus_inferred_i_1_0[0]),
        .I4(abus_inferred_i_1_2[0]),
        .O(\pcnt[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[3]_i_3 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[3]_i_7_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [3]),
        .O(\pcnt[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[3]_i_4 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[3]_i_8_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [2]),
        .O(\pcnt[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[3]_i_5 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[3]_i_9_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [1]),
        .O(\pcnt[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[3]_i_6 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[3]_i_10_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [0]),
        .O(\pcnt[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[3]_i_7 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [3]),
        .I3(abus_inferred_i_1_0[3]),
        .I4(abus_inferred_i_1_2[3]),
        .O(\pcnt[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[3]_i_8 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [2]),
        .I3(abus_inferred_i_1_0[2]),
        .I4(abus_inferred_i_1_2[2]),
        .O(\pcnt[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[3]_i_9 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [1]),
        .I3(abus_inferred_i_1_0[1]),
        .I4(abus_inferred_i_1_2[1]),
        .O(\pcnt[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[7]_i_2 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[7]_i_6_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [7]),
        .O(\pcnt[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[7]_i_3 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[7]_i_7_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [6]),
        .O(\pcnt[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[7]_i_4 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[7]_i_8_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [5]),
        .O(\pcnt[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \pcnt[7]_i_5 
       (.I0(\pcnt_reg[31]_1 ),
        .I1(\pcnt[7]_i_9_n_0 ),
        .I2(\pcnt[31]_i_7_n_0 ),
        .I3(\pcnt[31]_i_8_n_0 ),
        .I4(\pcnt_reg[31]_0 [4]),
        .O(\pcnt[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[7]_i_6 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [7]),
        .I3(abus_inferred_i_1_0[7]),
        .I4(abus_inferred_i_1_2[7]),
        .O(\pcnt[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[7]_i_7 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [6]),
        .I3(abus_inferred_i_1_0[6]),
        .I4(abus_inferred_i_1_2[6]),
        .O(\pcnt[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[7]_i_8 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [5]),
        .I3(abus_inferred_i_1_0[5]),
        .I4(abus_inferred_i_1_2[5]),
        .O(\pcnt[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \pcnt[7]_i_9 
       (.I0(irq_0),
        .I1(ctl_clrie),
        .I2(\pcnt[31]_i_2_0 [4]),
        .I3(abus_inferred_i_1_0[4]),
        .I4(abus_inferred_i_1_2[4]),
        .O(\pcnt[7]_i_9_n_0 ));
  CARRY4 \pcnt_reg[11]_i_1 
       (.CI(\pcnt_reg[7]_i_1_n_0 ),
        .CO({\pcnt_reg[11]_i_1_n_0 ,\pcnt_reg[11]_i_1_n_1 ,\pcnt_reg[11]_i_1_n_2 ,\pcnt_reg[11]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\pcnt_reg[31] [11:8]),
        .S({\pcnt[11]_i_2_n_0 ,\pcnt[11]_i_3_n_0 ,\pcnt[11]_i_4_n_0 ,\pcnt[11]_i_5_n_0 }));
  CARRY4 \pcnt_reg[15]_i_1 
       (.CI(\pcnt_reg[11]_i_1_n_0 ),
        .CO({\pcnt_reg[15]_i_1_n_0 ,\pcnt_reg[15]_i_1_n_1 ,\pcnt_reg[15]_i_1_n_2 ,\pcnt_reg[15]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\pcnt_reg[31] [15:12]),
        .S({\pcnt[15]_i_2_n_0 ,\pcnt[15]_i_3_n_0 ,\pcnt[15]_i_4_n_0 ,\pcnt[15]_i_5_n_0 }));
  CARRY4 \pcnt_reg[19]_i_1 
       (.CI(\pcnt_reg[15]_i_1_n_0 ),
        .CO({\pcnt_reg[19]_i_1_n_0 ,\pcnt_reg[19]_i_1_n_1 ,\pcnt_reg[19]_i_1_n_2 ,\pcnt_reg[19]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\pcnt_reg[31] [19:16]),
        .S({\pcnt[19]_i_2_n_0 ,\pcnt[19]_i_3_n_0 ,\pcnt[19]_i_4_n_0 ,\pcnt[19]_i_5_n_0 }));
  CARRY4 \pcnt_reg[23]_i_1 
       (.CI(\pcnt_reg[19]_i_1_n_0 ),
        .CO({\pcnt_reg[23]_i_1_n_0 ,\pcnt_reg[23]_i_1_n_1 ,\pcnt_reg[23]_i_1_n_2 ,\pcnt_reg[23]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\pcnt_reg[31] [23:20]),
        .S({\pcnt[23]_i_2_n_0 ,\pcnt[23]_i_3_n_0 ,\pcnt[23]_i_4_n_0 ,\pcnt[23]_i_5_n_0 }));
  CARRY4 \pcnt_reg[27]_i_1 
       (.CI(\pcnt_reg[23]_i_1_n_0 ),
        .CO({\pcnt_reg[27]_i_1_n_0 ,\pcnt_reg[27]_i_1_n_1 ,\pcnt_reg[27]_i_1_n_2 ,\pcnt_reg[27]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\pcnt_reg[31] [27:24]),
        .S({\pcnt[27]_i_2_n_0 ,\pcnt[27]_i_3_n_0 ,\pcnt[27]_i_4_n_0 ,\pcnt[27]_i_5_n_0 }));
  CARRY4 \pcnt_reg[31]_i_1 
       (.CI(\pcnt_reg[27]_i_1_n_0 ),
        .CO({\pcnt_reg[31]_i_1_n_1 ,\pcnt_reg[31]_i_1_n_2 ,\pcnt_reg[31]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\pcnt_reg[31] [31:28]),
        .S({\pcnt[31]_i_2_n_0 ,\pcnt[31]_i_3_n_0 ,\pcnt[31]_i_4_n_0 ,\pcnt[31]_i_5_n_0 }));
  CARRY4 \pcnt_reg[3]_i_1 
       (.CI(\<const0> ),
        .CO({\pcnt_reg[3]_i_1_n_0 ,\pcnt_reg[3]_i_1_n_1 ,\pcnt_reg[3]_i_1_n_2 ,\pcnt_reg[3]_i_1_n_3 }),
        .CYINIT(\pcnt_reg[3] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\pcnt_reg[31] [3:0]),
        .S({\pcnt[3]_i_3_n_0 ,\pcnt[3]_i_4_n_0 ,\pcnt[3]_i_5_n_0 ,\pcnt[3]_i_6_n_0 }));
  CARRY4 \pcnt_reg[7]_i_1 
       (.CI(\pcnt_reg[3]_i_1_n_0 ),
        .CO({\pcnt_reg[7]_i_1_n_0 ,\pcnt_reg[7]_i_1_n_1 ,\pcnt_reg[7]_i_1_n_2 ,\pcnt_reg[7]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\pcnt_reg[31] [7:4]),
        .S({\pcnt[7]_i_2_n_0 ,\pcnt[7]_i_3_n_0 ,\pcnt[7]_i_4_n_0 ,\pcnt[7]_i_5_n_0 }));
  LUT6 #(
    .INIT(64'hAAAACC0FAAAACC00)) 
    rgf_ie_rg_i_1
       (.I0(stk_bool),
        .I1(rgf_ie_rg_reg_4),
        .I2(ctl_clrie),
        .I3(ctl_setie),
        .I4(\stat_reg[0]_0 ),
        .I5(rgf_ie),
        .O(rgf_ie_rg_reg));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    rgf_ie_rg_i_3
       (.I0(\stk_ccmd_rg_reg[15] ),
        .I1(\stk_ccmd_rg_reg[15]_0 ),
        .I2(\bcmd[0]_INST_0_i_2_n_0 ),
        .I3(rgf_ie_rg_reg_0),
        .I4(rgf_ie_rg_reg_1),
        .I5(\stk_ccmd_rg_reg[15]_1 ),
        .O(ctl_clrie));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    rgf_ie_rg_i_4
       (.I0(rgf_ie_rg_reg_2),
        .I1(rgf_ie_rg_reg_3),
        .I2(\bcmd[1]_INST_0_i_1_n_0 ),
        .I3(\ivec_reg[31] ),
        .I4(out[1]),
        .I5(out[7]),
        .O(ctl_setie));
  LUT6 #(
    .INIT(64'h00008080A0800000)) 
    \sptr[31]_i_12 
       (.I0(\sptr[31]_i_8_0 ),
        .I1(out[3]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(stat[0]),
        .I5(stat[1]),
        .O(\sptr[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \sptr[31]_i_14 
       (.I0(\sptr[31]_i_17_n_0 ),
        .I1(out[4]),
        .I2(out[6]),
        .I3(out[1]),
        .I4(out[3]),
        .I5(out[0]),
        .O(\sptr[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \sptr[31]_i_15 
       (.I0(out[3]),
        .I1(out[6]),
        .I2(irq),
        .I3(stat[0]),
        .I4(out[0]),
        .I5(out[1]),
        .O(\sptr[31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \sptr[31]_i_17 
       (.I0(stat[0]),
        .I1(stat[1]),
        .O(\sptr[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00550055CCCC0CCC)) 
    \sptr[31]_i_6 
       (.I0(\sptr[31]_i_7_n_0 ),
        .I1(\sptr[31]_i_8_n_0 ),
        .I2(stat[0]),
        .I3(stat[1]),
        .I4(crdy),
        .I5(\sptr[31]_i_9_n_0 ),
        .O(ctl_sppp));
  LUT6 #(
    .INIT(64'hBB88BB88BBBB8BBB)) 
    \sptr[31]_i_7 
       (.I0(mem_reg_0_63_0_0_i_12_n_0),
        .I1(out[2]),
        .I2(out[3]),
        .I3(stat[0]),
        .I4(\bcmd[1]_INST_0_i_3_n_0 ),
        .I5(\sptr[31]_i_6_2 ),
        .O(\sptr[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFFFFF00FF20)) 
    \sptr[31]_i_8 
       (.I0(out[6]),
        .I1(\bcmd[1]_INST_0_i_1_n_0 ),
        .I2(\sptr[31]_i_6_0 ),
        .I3(\sptr[31]_i_12_n_0 ),
        .I4(\sptr[31]_i_6_1 ),
        .I5(\sptr[31]_i_14_n_0 ),
        .O(\sptr[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEFC)) 
    \sptr[31]_i_9 
       (.I0(\sptr[31]_i_15_n_0 ),
        .I1(out[7]),
        .I2(out[5]),
        .I3(stat[0]),
        .I4(rgf_ie),
        .O(\sptr[31]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \sptr[3]_i_2 
       (.I0(\sptr_reg[3] ),
        .I1(ctl_sppp),
        .I2(\ir_rg_reg[7] ),
        .O(\sptr_reg[31] ));
  LUT6 #(
    .INIT(64'h00FF00FF00FF0002)) 
    \stat[0]_i_1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(\stat[0]_i_3_n_0 ),
        .I2(out[5]),
        .I3(out[7]),
        .I4(\stat[0]_i_4_n_0 ),
        .I5(\stat[0]_i_5_n_0 ),
        .O(stat_nx[0]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \stat[0]_i_11 
       (.I0(out[0]),
        .I1(out[3]),
        .I2(out[4]),
        .I3(\bcmd[1]_INST_0_i_1_n_0 ),
        .I4(out[6]),
        .I5(out[1]),
        .O(\stat[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \stat[0]_i_2 
       (.I0(\stat[0]_i_6_n_0 ),
        .I1(\bcmd[1]_INST_0_i_3_n_0 ),
        .I2(stat[1]),
        .I3(brdy),
        .I4(out[6]),
        .I5(out[3]),
        .O(\stat[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFC4FCC44)) 
    \stat[0]_i_3 
       (.I0(out[6]),
        .I1(out[2]),
        .I2(crdy),
        .I3(stat[0]),
        .I4(stat[1]),
        .O(\stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000030300100010)) 
    \stat[0]_i_4 
       (.I0(\stat[0]_i_7_n_0 ),
        .I1(stat[1]),
        .I2(out[5]),
        .I3(out[2]),
        .I4(stat[0]),
        .I5(out[6]),
        .O(\stat[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0800000008880800)) 
    \stat[0]_i_5 
       (.I0(\stat[0]_i_8_n_0 ),
        .I1(\stat[0]_i_9_n_0 ),
        .I2(out[3]),
        .I3(out[0]),
        .I4(out[4]),
        .I5(out[1]),
        .O(\stat[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00004000)) 
    \stat[0]_i_6 
       (.I0(rgf_ie_rg_reg_0),
        .I1(rgf_ie),
        .I2(irq),
        .I3(cbus_inferred_i_94_0),
        .I4(\bcmd[0]_INST_0_i_2_n_0 ),
        .I5(\stat[0]_i_11_n_0 ),
        .O(\stat[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD5FFD5FFFFFF)) 
    \stat[0]_i_7 
       (.I0(out[3]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[4]),
        .I4(stat[0]),
        .I5(brdy),
        .O(\stat[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \stat[0]_i_8 
       (.I0(out[6]),
        .I1(stat[0]),
        .I2(out[2]),
        .O(\stat[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \stat[0]_i_9 
       (.I0(out[5]),
        .I1(stat[0]),
        .I2(stat[1]),
        .O(\stat[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \stat[1]_i_10 
       (.I0(abus_inferred_i_1_0[11]),
        .I1(abus_inferred_i_1_0[10]),
        .I2(abus_inferred_i_1_0[9]),
        .I3(abus_inferred_i_1_0[8]),
        .O(\stat[1]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \stat[1]_i_11 
       (.I0(abus_inferred_i_1_0[1]),
        .I1(abus_inferred_i_1_0[0]),
        .I2(abus_inferred_i_1_0[3]),
        .I3(abus_inferred_i_1_0[2]),
        .O(\stat[1]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \stat[1]_i_12 
       (.I0(abus_inferred_i_1_0[7]),
        .I1(abus_inferred_i_1_0[6]),
        .I2(abus_inferred_i_1_0[5]),
        .I3(abus_inferred_i_1_0[4]),
        .O(\stat[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0022000802200008)) 
    \stat[1]_i_2 
       (.I0(\stat[1]_i_3_n_0 ),
        .I1(out[1]),
        .I2(out[3]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(stk_bool),
        .O(stat_nx[1]));
  LUT6 #(
    .INIT(64'h0000000000000081)) 
    \stat[1]_i_3 
       (.I0(out[2]),
        .I1(out[4]),
        .I2(out[6]),
        .I3(\stat[1]_i_5_n_0 ),
        .I4(out[5]),
        .I5(out[7]),
        .O(\stat[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \stat[1]_i_4 
       (.I0(\stat[1]_i_6_n_0 ),
        .I1(\stat[1]_i_7_n_0 ),
        .I2(abus_inferred_i_1_0[19]),
        .I3(abus_inferred_i_1_0[18]),
        .I4(abus_inferred_i_1_0[27]),
        .I5(abus_inferred_i_1_0[26]),
        .O(stk_bool));
  LUT4 #(
    .INIT(16'hB03F)) 
    \stat[1]_i_5 
       (.I0(crdy),
        .I1(out[1]),
        .I2(stat[1]),
        .I3(stat[0]),
        .O(\stat[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \stat[1]_i_6 
       (.I0(\stat[1]_i_8_n_0 ),
        .I1(abus_inferred_i_1_0[16]),
        .I2(abus_inferred_i_1_0[17]),
        .I3(abus_inferred_i_1_0[22]),
        .I4(abus_inferred_i_1_0[23]),
        .O(\stat[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \stat[1]_i_7 
       (.I0(abus_inferred_i_1_0[30]),
        .I1(abus_inferred_i_1_0[31]),
        .I2(\stat[1]_i_9_n_0 ),
        .I3(\stat[1]_i_10_n_0 ),
        .I4(\stat[1]_i_11_n_0 ),
        .I5(\stat[1]_i_12_n_0 ),
        .O(\stat[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \stat[1]_i_8 
       (.I0(abus_inferred_i_1_0[28]),
        .I1(abus_inferred_i_1_0[29]),
        .I2(abus_inferred_i_1_0[24]),
        .I3(abus_inferred_i_1_0[25]),
        .I4(abus_inferred_i_1_0[21]),
        .I5(abus_inferred_i_1_0[20]),
        .O(\stat[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \stat[1]_i_9 
       (.I0(abus_inferred_i_1_0[15]),
        .I1(abus_inferred_i_1_0[14]),
        .I2(abus_inferred_i_1_0[13]),
        .I3(abus_inferred_i_1_0[12]),
        .O(\stat[1]_i_9_n_0 ));
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
    .INIT(64'h00000101000000FF)) 
    \stk_b1_rg[31]_i_1 
       (.I0(\stk_b1_rg_reg[31]_3 ),
        .I1(\bcmd[0]_INST_0_i_2_n_0 ),
        .I2(out[6]),
        .I3(\stk_b1_rg[31]_i_3_n_0 ),
        .I4(out[7]),
        .I5(out[5]),
        .O(brdy_0));
  LUT6 #(
    .INIT(64'hFFCCEEEECCCCAEAE)) 
    \stk_b1_rg[31]_i_3 
       (.I0(\stk_b1_rg_reg[31]_4 ),
        .I1(stat[1]),
        .I2(crdy),
        .I3(\stk_b1_rg_reg[31]_5 ),
        .I4(out[6]),
        .I5(stat[0]),
        .O(\stk_b1_rg[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \stk_ccmd_rg[15]_i_1 
       (.I0(\ivec[31]_i_2_n_0 ),
        .I1(\stk_ccmd_rg_reg[15] ),
        .I2(out[0]),
        .I3(stat[0]),
        .I4(\stk_ccmd_rg_reg[15]_0 ),
        .I5(\stk_ccmd_rg_reg[15]_1 ),
        .O(E));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__0_i_1
       (.I0(\badr[31] [6]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [6]),
        .O(\stk_b1_rg_reg[6] [3]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__0_i_2
       (.I0(\badr[31] [5]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [5]),
        .O(\stk_b1_rg_reg[6] [2]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__0_i_3
       (.I0(\badr[31] [4]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [4]),
        .O(\stk_b1_rg_reg[6] [1]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__0_i_4
       (.I0(\badr[31] [3]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [3]),
        .O(\stk_b1_rg_reg[6] [0]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__0_i_5
       (.I0(\badr[31] [7]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [7]),
        .I4(\stk_b1_rg_reg[6] [3]),
        .O(\stk_b1_rg_reg[7] [3]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__0_i_6
       (.I0(\badr[31] [6]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [6]),
        .I4(\stk_b1_rg_reg[6] [2]),
        .O(\stk_b1_rg_reg[7] [2]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__0_i_7
       (.I0(\badr[31] [5]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [5]),
        .I4(\stk_b1_rg_reg[6] [1]),
        .O(\stk_b1_rg_reg[7] [1]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__0_i_8
       (.I0(\badr[31] [4]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [4]),
        .I4(\stk_b1_rg_reg[6] [0]),
        .O(\stk_b1_rg_reg[7] [0]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__1_i_1
       (.I0(\badr[31] [10]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [10]),
        .O(\stk_b1_rg_reg[10] [3]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__1_i_2
       (.I0(\badr[31] [9]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [9]),
        .O(\stk_b1_rg_reg[10] [2]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__1_i_3
       (.I0(\badr[31] [8]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [8]),
        .O(\stk_b1_rg_reg[10] [1]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__1_i_4
       (.I0(\badr[31] [7]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [7]),
        .O(\stk_b1_rg_reg[10] [0]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__1_i_5
       (.I0(\badr[31] [11]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [11]),
        .I4(\stk_b1_rg_reg[10] [3]),
        .O(\stk_b1_rg_reg[11] [3]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__1_i_6
       (.I0(\badr[31] [10]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [10]),
        .I4(\stk_b1_rg_reg[10] [2]),
        .O(\stk_b1_rg_reg[11] [2]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__1_i_7
       (.I0(\badr[31] [9]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [9]),
        .I4(\stk_b1_rg_reg[10] [1]),
        .O(\stk_b1_rg_reg[11] [1]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__1_i_8
       (.I0(\badr[31] [8]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [8]),
        .I4(\stk_b1_rg_reg[10] [0]),
        .O(\stk_b1_rg_reg[11] [0]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__2_i_1
       (.I0(\badr[31] [14]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [14]),
        .O(\stk_b1_rg_reg[14] [3]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__2_i_2
       (.I0(\badr[31] [13]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [13]),
        .O(\stk_b1_rg_reg[14] [2]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__2_i_3
       (.I0(\badr[31] [12]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [12]),
        .O(\stk_b1_rg_reg[14] [1]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__2_i_4
       (.I0(\badr[31] [11]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [11]),
        .O(\stk_b1_rg_reg[14] [0]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__2_i_5
       (.I0(\badr[31] [15]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [15]),
        .I4(\stk_b1_rg_reg[14] [3]),
        .O(\stk_b1_rg_reg[15] [3]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__2_i_6
       (.I0(\badr[31] [14]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [14]),
        .I4(\stk_b1_rg_reg[14] [2]),
        .O(\stk_b1_rg_reg[15] [2]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__2_i_7
       (.I0(\badr[31] [13]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [13]),
        .I4(\stk_b1_rg_reg[14] [1]),
        .O(\stk_b1_rg_reg[15] [1]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__2_i_8
       (.I0(\badr[31] [12]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [12]),
        .I4(\stk_b1_rg_reg[14] [0]),
        .O(\stk_b1_rg_reg[15] [0]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__3_i_1
       (.I0(\badr[31] [18]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [18]),
        .O(\stk_b1_rg_reg[18] [3]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__3_i_2
       (.I0(\badr[31] [17]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [17]),
        .O(\stk_b1_rg_reg[18] [2]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__3_i_3
       (.I0(\badr[31] [16]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [16]),
        .O(\stk_b1_rg_reg[18] [1]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__3_i_4
       (.I0(\badr[31] [15]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [15]),
        .O(\stk_b1_rg_reg[18] [0]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__3_i_5
       (.I0(\badr[31] [19]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [19]),
        .I4(\stk_b1_rg_reg[18] [3]),
        .O(\stk_b1_rg_reg[19] [3]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__3_i_6
       (.I0(\badr[31] [18]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [18]),
        .I4(\stk_b1_rg_reg[18] [2]),
        .O(\stk_b1_rg_reg[19] [2]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__3_i_7
       (.I0(\badr[31] [17]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [17]),
        .I4(\stk_b1_rg_reg[18] [1]),
        .O(\stk_b1_rg_reg[19] [1]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__3_i_8
       (.I0(\badr[31] [16]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [16]),
        .I4(\stk_b1_rg_reg[18] [0]),
        .O(\stk_b1_rg_reg[19] [0]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__4_i_1
       (.I0(\badr[31] [22]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [22]),
        .O(\stk_b1_rg_reg[22] [3]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__4_i_2
       (.I0(\badr[31] [21]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [21]),
        .O(\stk_b1_rg_reg[22] [2]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__4_i_3
       (.I0(\badr[31] [20]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [20]),
        .O(\stk_b1_rg_reg[22] [1]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__4_i_4
       (.I0(\badr[31] [19]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [19]),
        .O(\stk_b1_rg_reg[22] [0]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__4_i_5
       (.I0(\badr[31] [23]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [23]),
        .I4(\stk_b1_rg_reg[22] [3]),
        .O(\stk_b1_rg_reg[23] [3]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__4_i_6
       (.I0(\badr[31] [22]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [22]),
        .I4(\stk_b1_rg_reg[22] [2]),
        .O(\stk_b1_rg_reg[23] [2]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__4_i_7
       (.I0(\badr[31] [21]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [21]),
        .I4(\stk_b1_rg_reg[22] [1]),
        .O(\stk_b1_rg_reg[23] [1]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__4_i_8
       (.I0(\badr[31] [20]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [20]),
        .I4(\stk_b1_rg_reg[22] [0]),
        .O(\stk_b1_rg_reg[23] [0]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__5_i_1
       (.I0(\badr[31] [26]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [26]),
        .O(\stk_b1_rg_reg[26] [3]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__5_i_2
       (.I0(\badr[31] [25]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [25]),
        .O(\stk_b1_rg_reg[26] [2]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__5_i_3
       (.I0(\badr[31] [24]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [24]),
        .O(\stk_b1_rg_reg[26] [1]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__5_i_4
       (.I0(\badr[31] [23]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [23]),
        .O(\stk_b1_rg_reg[26] [0]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__5_i_5
       (.I0(\badr[31] [27]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [27]),
        .I4(\stk_b1_rg_reg[26] [3]),
        .O(\stk_b1_rg_reg[27] [3]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__5_i_6
       (.I0(\badr[31] [26]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [26]),
        .I4(\stk_b1_rg_reg[26] [2]),
        .O(\stk_b1_rg_reg[27] [2]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__5_i_7
       (.I0(\badr[31] [25]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [25]),
        .I4(\stk_b1_rg_reg[26] [1]),
        .O(\stk_b1_rg_reg[27] [1]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__5_i_8
       (.I0(\badr[31] [24]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [24]),
        .I4(\stk_b1_rg_reg[26] [0]),
        .O(\stk_b1_rg_reg[27] [0]));
  LUT4 #(
    .INIT(16'h4BB4)) 
    tout__1_carry__6_i_1
       (.I0(tout__1_carry_i_9_n_0),
        .I1(\bdatw[31] [31]),
        .I2(\badr[31] [31]),
        .I3(\alu/art/cin__0 ),
        .O(\stk_b1_rg_reg[31]_2 [3]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__6_i_2
       (.I0(\badr[31] [29]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [29]),
        .O(\stk_b1_rg_reg[31]_2 [2]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__6_i_3
       (.I0(\badr[31] [28]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [28]),
        .O(\stk_b1_rg_reg[31]_2 [1]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry__6_i_4
       (.I0(\badr[31] [27]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [27]),
        .O(\stk_b1_rg_reg[31]_2 [0]));
  LUT6 #(
    .INIT(64'h5599AA965569AA66)) 
    tout__1_carry__6_i_5
       (.I0(\badr[31] [31]),
        .I1(\bdatw[31] [31]),
        .I2(\bdatw[31] [30]),
        .I3(tout__1_carry_i_9_n_0),
        .I4(\alu/art/cin__0 ),
        .I5(\badr[31] [30]),
        .O(\stk_b1_rg_reg[31]_1 [3]));
  LUT5 #(
    .INIT(32'h96966996)) 
    tout__1_carry__6_i_6
       (.I0(\stk_b1_rg_reg[31]_2 [2]),
        .I1(\alu/art/cin__0 ),
        .I2(\badr[31] [30]),
        .I3(\bdatw[31] [30]),
        .I4(tout__1_carry_i_9_n_0),
        .O(\stk_b1_rg_reg[31]_1 [2]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__6_i_7
       (.I0(\badr[31] [29]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [29]),
        .I4(\stk_b1_rg_reg[31]_2 [1]),
        .O(\stk_b1_rg_reg[31]_1 [1]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry__6_i_8
       (.I0(\badr[31] [28]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [28]),
        .I4(\stk_b1_rg_reg[31]_2 [0]),
        .O(\stk_b1_rg_reg[31]_1 [0]));
  LUT4 #(
    .INIT(16'hF6FF)) 
    tout__1_carry__7_i_1
       (.I0(\badr[31] [31]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [31]),
        .O(\stk_b1_rg_reg[31] ));
  LUT4 #(
    .INIT(16'h9969)) 
    tout__1_carry__7_i_2
       (.I0(\alu/art/cin__0 ),
        .I1(\badr[31] [31]),
        .I2(\bdatw[31] [31]),
        .I3(tout__1_carry_i_9_n_0),
        .O(\stk_b1_rg_reg[31]_0 [1]));
  LUT4 #(
    .INIT(16'h2FF2)) 
    tout__1_carry__7_i_3
       (.I0(\bdatw[31] [31]),
        .I1(tout__1_carry_i_9_n_0),
        .I2(\badr[31] [31]),
        .I3(\alu/art/cin__0 ),
        .O(\stk_b1_rg_reg[31]_0 [0]));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry_i_1
       (.I0(\badr[31] [2]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [2]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF5557FFFF)) 
    tout__1_carry_i_10
       (.I0(ctl_acmd_0[1]),
        .I1(cbus_inferred_i_192_n_0),
        .I2(cbus_inferred_i_193_n_0),
        .I3(cbus_inferred_i_194_n_0),
        .I4(abus_inferred_i_111_0),
        .I5(out[7]),
        .O(tout__1_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h5555555500015555)) 
    tout__1_carry_i_11
       (.I0(ctl_acmd_0[1]),
        .I1(cbus_inferred_i_192_n_0),
        .I2(cbus_inferred_i_193_n_0),
        .I3(cbus_inferred_i_194_n_0),
        .I4(abus_inferred_i_111_0),
        .I5(out[7]),
        .O(tout__1_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h000000000000FE00)) 
    tout__1_carry_i_12
       (.I0(cbus_inferred_i_192_n_0),
        .I1(cbus_inferred_i_193_n_0),
        .I2(cbus_inferred_i_194_n_0),
        .I3(abus_inferred_i_111_0),
        .I4(out[7]),
        .I5(ctl_acmd_0[1]),
        .O(tout__1_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h0600)) 
    tout__1_carry_i_2
       (.I0(\badr[31] [1]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [1]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h44F0)) 
    tout__1_carry_i_3
       (.I0(tout__1_carry_i_9_n_0),
        .I1(\bdatw[31] [0]),
        .I2(\alu/art/cin__0 ),
        .I3(\badr[31] [0]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry_i_4
       (.I0(\badr[31] [3]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [3]),
        .I4(DI[2]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry_i_5
       (.I0(\badr[31] [2]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [2]),
        .I4(DI[1]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h96996966)) 
    tout__1_carry_i_6
       (.I0(\badr[31] [1]),
        .I1(\alu/art/cin__0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\bdatw[31] [1]),
        .I4(DI[0]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'hB4)) 
    tout__1_carry_i_7
       (.I0(tout__1_carry_i_9_n_0),
        .I1(\bdatw[31] [0]),
        .I2(\badr[31] [0]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'hCF00C500)) 
    tout__1_carry_i_8
       (.I0(tout__1_carry_i_10_n_0),
        .I1(tout__1_carry_i_11_n_0),
        .I2(ctl_acmd_0[2]),
        .I3(ctl_acmd_0[3]),
        .I4(cbus_inferred_i_108_n_0),
        .O(\alu/art/cin__0 ));
  LUT3 #(
    .INIT(8'h80)) 
    tout__1_carry_i_9
       (.I0(ctl_acmd_0[3]),
        .I1(ctl_acmd_0[2]),
        .I2(tout__1_carry_i_12_n_0),
        .O(tout__1_carry_i_9_n_0));
endmodule

module ndym_ivec
   (.out({ivec[31],ivec[30],ivec[29],ivec[28],ivec[27],ivec[26],ivec[25],ivec[24],ivec[23],ivec[22],ivec[21],ivec[20],ivec[19],ivec[18],ivec[17],ivec[16],ivec[15],ivec[14],ivec[13],ivec[12],ivec[11],ivec[10],ivec[9],ivec[8],ivec[7],ivec[6],ivec[5],ivec[4],ivec[3],ivec[2],ivec[1],ivec[0]}),
    rgf_ie,
    irq_0,
    \ivec_reg[6]_0 ,
    rgf_ie_rg_reg_0,
    SR,
    rgf_ie_rg_reg_1,
    clk,
    irq,
    \pcnt_reg[3] ,
    E,
    D);
  output rgf_ie;
  output irq_0;
  output \ivec_reg[6]_0 ;
  output rgf_ie_rg_reg_0;
  input [0:0]SR;
  input rgf_ie_rg_reg_1;
  input clk;
  input irq;
  input \pcnt_reg[3] ;
  input [0:0]E;
  input [31:0]D;
     output [31:0]ivec;

  wire \<const1> ;
  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]SR;
  wire clk;
  wire irq;
  wire irq_0;
  (* DONT_TOUCH *) wire [31:0]ivec;
  wire \ivec_reg[6]_0 ;
  wire \pcnt_reg[3] ;
  wire rgf_ie;
  wire rgf_ie_rg_i_10_n_0;
  wire rgf_ie_rg_i_11_n_0;
  wire rgf_ie_rg_i_12_n_0;
  wire rgf_ie_rg_i_13_n_0;
  wire rgf_ie_rg_i_14_n_0;
  wire rgf_ie_rg_i_5_n_0;
  wire rgf_ie_rg_i_6_n_0;
  wire rgf_ie_rg_reg_0;
  wire rgf_ie_rg_reg_1;

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
  FDRE \ivec_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(ivec[16]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(ivec[17]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(ivec[18]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(ivec[19]),
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
  FDRE \ivec_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(ivec[20]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(ivec[21]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(ivec[22]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(ivec[23]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(ivec[24]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(ivec[25]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(ivec[26]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(ivec[27]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(ivec[28]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(ivec[29]),
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
  FDRE \ivec_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(ivec[30]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \ivec_reg[31] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(ivec[31]),
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
    .INIT(8'h70)) 
    \pcnt[3]_i_2 
       (.I0(rgf_ie),
        .I1(irq),
        .I2(\pcnt_reg[3] ),
        .O(rgf_ie_rg_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    rgf_ie_rg_i_10
       (.I0(ivec[13]),
        .I1(ivec[12]),
        .I2(ivec[11]),
        .I3(ivec[10]),
        .I4(ivec[0]),
        .I5(ivec[1]),
        .O(rgf_ie_rg_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rgf_ie_rg_i_11
       (.I0(ivec[24]),
        .I1(ivec[25]),
        .I2(ivec[26]),
        .I3(ivec[27]),
        .O(rgf_ie_rg_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rgf_ie_rg_i_12
       (.I0(ivec[28]),
        .I1(ivec[29]),
        .I2(ivec[31]),
        .I3(ivec[30]),
        .O(rgf_ie_rg_i_12_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rgf_ie_rg_i_13
       (.I0(ivec[16]),
        .I1(ivec[17]),
        .I2(ivec[18]),
        .I3(ivec[19]),
        .O(rgf_ie_rg_i_13_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rgf_ie_rg_i_14
       (.I0(ivec[20]),
        .I1(ivec[21]),
        .I2(ivec[22]),
        .I3(ivec[23]),
        .O(rgf_ie_rg_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    rgf_ie_rg_i_2
       (.I0(rgf_ie_rg_i_5_n_0),
        .I1(rgf_ie_rg_i_6_n_0),
        .I2(ivec[6]),
        .I3(ivec[7]),
        .I4(ivec[8]),
        .I5(ivec[9]),
        .O(\ivec_reg[6]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    rgf_ie_rg_i_5
       (.I0(rgf_ie_rg_i_10_n_0),
        .I1(ivec[5]),
        .I2(ivec[4]),
        .I3(ivec[3]),
        .I4(ivec[2]),
        .O(rgf_ie_rg_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    rgf_ie_rg_i_6
       (.I0(ivec[14]),
        .I1(ivec[15]),
        .I2(rgf_ie_rg_i_11_n_0),
        .I3(rgf_ie_rg_i_12_n_0),
        .I4(rgf_ie_rg_i_13_n_0),
        .I5(rgf_ie_rg_i_14_n_0),
        .O(rgf_ie_rg_i_6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    rgf_ie_rg_i_7
       (.I0(irq),
        .I1(rgf_ie),
        .O(irq_0));
  FDRE rgf_ie_rg_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rgf_ie_rg_reg_1),
        .Q(rgf_ie),
        .R(SR));
endmodule

module ndym_lifo
   (stk_top,
    clk,
    out,
    ctl_push,
    rgf_sp_0);
  output [31:0]stk_top;
  input clk;
  input [31:0]out;
  input ctl_push;
  input [5:0]rgf_sp_0;

  wire clk;
  wire ctl_push;
  wire [31:0]out;
  wire [5:0]rgf_sp_0;
  wire [31:0]stk_top;

  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
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
        .D(out[0]),
        .O(stk_top[0]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
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
        .D(out[10]),
        .O(stk_top[10]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
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
        .D(out[11]),
        .O(stk_top[11]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
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
        .D(out[12]),
        .O(stk_top[12]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
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
        .D(out[13]),
        .O(stk_top[13]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
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
        .D(out[14]),
        .O(stk_top[14]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
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
        .D(out[15]),
        .O(stk_top[15]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM64X1S mem_reg_0_63_16_16
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(out[16]),
        .O(stk_top[16]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM64X1S mem_reg_0_63_17_17
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(out[17]),
        .O(stk_top[17]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM64X1S mem_reg_0_63_18_18
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(out[18]),
        .O(stk_top[18]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM64X1S mem_reg_0_63_19_19
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(out[19]),
        .O(stk_top[19]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
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
        .D(out[1]),
        .O(stk_top[1]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM64X1S mem_reg_0_63_20_20
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(out[20]),
        .O(stk_top[20]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM64X1S mem_reg_0_63_21_21
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(out[21]),
        .O(stk_top[21]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM64X1S mem_reg_0_63_22_22
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(out[22]),
        .O(stk_top[22]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM64X1S mem_reg_0_63_23_23
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(out[23]),
        .O(stk_top[23]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM64X1S mem_reg_0_63_24_24
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(out[24]),
        .O(stk_top[24]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM64X1S mem_reg_0_63_25_25
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(out[25]),
        .O(stk_top[25]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM64X1S mem_reg_0_63_26_26
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(out[26]),
        .O(stk_top[26]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM64X1S mem_reg_0_63_27_27
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(out[27]),
        .O(stk_top[27]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM64X1S mem_reg_0_63_28_28
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(out[28]),
        .O(stk_top[28]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM64X1S mem_reg_0_63_29_29
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(out[29]),
        .O(stk_top[29]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
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
        .D(out[2]),
        .O(stk_top[2]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM64X1S mem_reg_0_63_30_30
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(out[30]),
        .O(stk_top[30]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM64X1S mem_reg_0_63_31_31
       (.A0(rgf_sp_0[0]),
        .A1(rgf_sp_0[1]),
        .A2(rgf_sp_0[2]),
        .A3(rgf_sp_0[3]),
        .A4(rgf_sp_0[4]),
        .A5(rgf_sp_0[5]),
        .D(out[31]),
        .O(stk_top[31]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
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
        .D(out[3]),
        .O(stk_top[3]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
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
        .D(out[4]),
        .O(stk_top[4]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
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
        .D(out[5]),
        .O(stk_top[5]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
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
        .D(out[6]),
        .O(stk_top[6]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
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
        .D(out[7]),
        .O(stk_top[7]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
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
        .D(out[8]),
        .O(stk_top[8]),
        .WCLK(clk),
        .WE(ctl_push));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "neodymium/stk/mem_reg" *) 
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
        .D(out[9]),
        .O(stk_top[9]),
        .WCLK(clk),
        .WE(ctl_push));
endmodule

module ndym_pcnt
   (.fadr({pcnt[31],pcnt[30],pcnt[29],pcnt[28],pcnt[27],pcnt[26],pcnt[25],pcnt[24],pcnt[23],pcnt[22],pcnt[21],pcnt[20],pcnt[19],pcnt[18],pcnt[17],pcnt[16],pcnt[15],pcnt[14],pcnt[13],pcnt[12],pcnt[11],pcnt[10],pcnt[9],pcnt[8],pcnt[7],pcnt[6],pcnt[5],pcnt[4],pcnt[3],pcnt[2],pcnt[1],pcnt[0]}),
    fch_iack,
    \pcnt_reg[0]_0 ,
    \pcnt_reg[1]_0 ,
    \pcnt_reg[2]_0 ,
    \pcnt_reg[3]_0 ,
    \pcnt_reg[4]_0 ,
    \pcnt_reg[5]_0 ,
    \pcnt_reg[6]_0 ,
    \pcnt_reg[7]_0 ,
    clk,
    ctl_selpc,
    out,
    irq,
    rgf_ie,
    rst_n,
    SR,
    D);
  output fch_iack;
  output \pcnt_reg[0]_0 ;
  output \pcnt_reg[1]_0 ;
  output \pcnt_reg[2]_0 ;
  output \pcnt_reg[3]_0 ;
  output \pcnt_reg[4]_0 ;
  output \pcnt_reg[5]_0 ;
  output \pcnt_reg[6]_0 ;
  output \pcnt_reg[7]_0 ;
  input clk;
  input ctl_selpc;
  input out;
  input irq;
  input rgf_ie;
  input rst_n;
  input [0:0]SR;
  input [31:0]D;
     output [31:0]pcnt;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]D;
  wire [0:0]SR;
  wire clk;
  wire ctl_selpc;
  wire fch_iack;
  wire fch_iack_rg_i_1_n_0;
  wire irq;
  wire out;
  (* DONT_TOUCH *) wire [31:0]pcnt;
  wire \pcnt_reg[0]_0 ;
  wire \pcnt_reg[1]_0 ;
  wire \pcnt_reg[2]_0 ;
  wire \pcnt_reg[3]_0 ;
  wire \pcnt_reg[4]_0 ;
  wire \pcnt_reg[5]_0 ;
  wire \pcnt_reg[6]_0 ;
  wire \pcnt_reg[7]_0 ;
  wire rgf_ie;
  wire rst_n;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h8)) 
    abus_inferred_i_167
       (.I0(pcnt[7]),
        .I1(ctl_selpc),
        .O(\pcnt_reg[7]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    abus_inferred_i_171
       (.I0(pcnt[6]),
        .I1(ctl_selpc),
        .O(\pcnt_reg[6]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    abus_inferred_i_172
       (.I0(pcnt[5]),
        .I1(ctl_selpc),
        .O(\pcnt_reg[5]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    abus_inferred_i_173
       (.I0(pcnt[4]),
        .I1(ctl_selpc),
        .O(\pcnt_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    abus_inferred_i_174
       (.I0(pcnt[3]),
        .I1(ctl_selpc),
        .O(\pcnt_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    abus_inferred_i_175
       (.I0(pcnt[2]),
        .I1(ctl_selpc),
        .O(\pcnt_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    abus_inferred_i_176
       (.I0(pcnt[1]),
        .I1(ctl_selpc),
        .O(\pcnt_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    abus_inferred_i_177
       (.I0(pcnt[0]),
        .I1(ctl_selpc),
        .O(\pcnt_reg[0]_0 ));
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
  FDRE \pcnt_reg[16] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[16]),
        .Q(pcnt[16]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[17]),
        .Q(pcnt[17]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[18]),
        .Q(pcnt[18]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[19]),
        .Q(pcnt[19]),
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
  FDRE \pcnt_reg[20] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[20]),
        .Q(pcnt[20]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[21] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[21]),
        .Q(pcnt[21]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[22] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[22]),
        .Q(pcnt[22]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[23] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[23]),
        .Q(pcnt[23]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[24] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[24]),
        .Q(pcnt[24]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[25] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[25]),
        .Q(pcnt[25]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[26] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[26]),
        .Q(pcnt[26]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[27] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[27]),
        .Q(pcnt[27]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[28] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[28]),
        .Q(pcnt[28]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[29] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[29]),
        .Q(pcnt[29]),
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
  FDRE \pcnt_reg[30] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[30]),
        .Q(pcnt[30]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pcnt_reg[31] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[31]),
        .Q(pcnt[31]),
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

module ndym_sptr
   (.out({sptr[31],sptr[30],sptr[29],sptr[28],sptr[27],sptr[26],sptr[25],sptr[24],sptr[23],sptr[22],sptr[21],sptr[20],sptr[19],sptr[18],sptr[17],sptr[16],sptr[15],sptr[14],sptr[13],sptr[12],sptr[11],sptr[10],sptr[9],sptr[8],sptr[7],sptr[6]}),
    \sptr_reg[29]_0 ,
    rgf_sp_0,
    \sptr_reg[31]_0 ,
    ctl_mmsp,
    SR,
    clk,
    \sptr_reg[3]_0 ,
    ctl_sppp);
  output [25:0]\sptr_reg[29]_0 ;
  output [5:0]rgf_sp_0;
  output \sptr_reg[31]_0 ;
  input ctl_mmsp;
  input [0:0]SR;
  input clk;
  input \sptr_reg[3]_0 ;
  input ctl_sppp;
     output [31:0]sptr;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]SR;
  wire clk;
  wire ctl_mmsp;
  wire ctl_sppp;
  wire [1:1]p_0_out;
  wire [5:0]rgf_sp_0;
  (* DONT_TOUCH *) wire [31:0]sptr;
  wire \sptr[11]_i_2_n_0 ;
  wire \sptr[11]_i_3_n_0 ;
  wire \sptr[11]_i_4_n_0 ;
  wire \sptr[11]_i_5_n_0 ;
  wire \sptr[15]_i_2_n_0 ;
  wire \sptr[15]_i_3_n_0 ;
  wire \sptr[15]_i_4_n_0 ;
  wire \sptr[15]_i_5_n_0 ;
  wire \sptr[19]_i_2_n_0 ;
  wire \sptr[19]_i_3_n_0 ;
  wire \sptr[19]_i_4_n_0 ;
  wire \sptr[19]_i_5_n_0 ;
  wire \sptr[23]_i_2_n_0 ;
  wire \sptr[23]_i_3_n_0 ;
  wire \sptr[23]_i_4_n_0 ;
  wire \sptr[23]_i_5_n_0 ;
  wire \sptr[27]_i_2_n_0 ;
  wire \sptr[27]_i_3_n_0 ;
  wire \sptr[27]_i_4_n_0 ;
  wire \sptr[27]_i_5_n_0 ;
  wire \sptr[31]_i_2_n_0 ;
  wire \sptr[31]_i_3_n_0 ;
  wire \sptr[31]_i_4_n_0 ;
  wire \sptr[31]_i_5_n_0 ;
  wire \sptr[3]_i_10_n_0 ;
  wire \sptr[3]_i_11_n_0 ;
  wire \sptr[3]_i_12_n_0 ;
  wire \sptr[3]_i_13_n_0 ;
  wire \sptr[3]_i_14_n_0 ;
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
  wire [5:0]sptr_dec;
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
  wire sptr_dec0_carry__2_n_0;
  wire sptr_dec0_carry__2_n_1;
  wire sptr_dec0_carry__2_n_2;
  wire sptr_dec0_carry__2_n_3;
  wire sptr_dec0_carry__3_i_1_n_0;
  wire sptr_dec0_carry__3_i_2_n_0;
  wire sptr_dec0_carry__3_i_3_n_0;
  wire sptr_dec0_carry__3_i_4_n_0;
  wire sptr_dec0_carry__3_n_0;
  wire sptr_dec0_carry__3_n_1;
  wire sptr_dec0_carry__3_n_2;
  wire sptr_dec0_carry__3_n_3;
  wire sptr_dec0_carry__4_i_1_n_0;
  wire sptr_dec0_carry__4_i_2_n_0;
  wire sptr_dec0_carry__4_i_3_n_0;
  wire sptr_dec0_carry__4_i_4_n_0;
  wire sptr_dec0_carry__4_n_0;
  wire sptr_dec0_carry__4_n_1;
  wire sptr_dec0_carry__4_n_2;
  wire sptr_dec0_carry__4_n_3;
  wire sptr_dec0_carry__5_i_1_n_0;
  wire sptr_dec0_carry__5_i_2_n_0;
  wire sptr_dec0_carry__5_i_3_n_0;
  wire sptr_dec0_carry__5_i_4_n_0;
  wire sptr_dec0_carry__5_n_0;
  wire sptr_dec0_carry__5_n_1;
  wire sptr_dec0_carry__5_n_2;
  wire sptr_dec0_carry__5_n_3;
  wire sptr_dec0_carry__6_i_1_n_0;
  wire sptr_dec0_carry__6_i_2_n_0;
  wire sptr_dec0_carry__6_i_3_n_0;
  wire sptr_dec0_carry__6_i_4_n_0;
  wire sptr_dec0_carry__6_n_1;
  wire sptr_dec0_carry__6_n_2;
  wire sptr_dec0_carry__6_n_3;
  wire sptr_dec0_carry_i_10_n_0;
  wire sptr_dec0_carry_i_11_n_0;
  wire sptr_dec0_carry_i_12_n_0;
  wire sptr_dec0_carry_i_1_n_0;
  wire sptr_dec0_carry_i_3_n_0;
  wire sptr_dec0_carry_i_4_n_0;
  wire sptr_dec0_carry_i_5_n_0;
  wire sptr_dec0_carry_i_6_n_0;
  wire sptr_dec0_carry_i_7_n_0;
  wire sptr_dec0_carry_i_8_n_0;
  wire sptr_dec0_carry_i_9_n_0;
  wire sptr_dec0_carry_n_0;
  wire sptr_dec0_carry_n_1;
  wire sptr_dec0_carry_n_2;
  wire sptr_dec0_carry_n_3;
  wire \sptr_reg[11]_i_1_n_0 ;
  wire \sptr_reg[11]_i_1_n_1 ;
  wire \sptr_reg[11]_i_1_n_2 ;
  wire \sptr_reg[11]_i_1_n_3 ;
  wire \sptr_reg[11]_i_1_n_4 ;
  wire \sptr_reg[11]_i_1_n_5 ;
  wire \sptr_reg[11]_i_1_n_6 ;
  wire \sptr_reg[11]_i_1_n_7 ;
  wire \sptr_reg[15]_i_1_n_0 ;
  wire \sptr_reg[15]_i_1_n_1 ;
  wire \sptr_reg[15]_i_1_n_2 ;
  wire \sptr_reg[15]_i_1_n_3 ;
  wire \sptr_reg[15]_i_1_n_4 ;
  wire \sptr_reg[15]_i_1_n_5 ;
  wire \sptr_reg[15]_i_1_n_6 ;
  wire \sptr_reg[15]_i_1_n_7 ;
  wire \sptr_reg[19]_i_1_n_0 ;
  wire \sptr_reg[19]_i_1_n_1 ;
  wire \sptr_reg[19]_i_1_n_2 ;
  wire \sptr_reg[19]_i_1_n_3 ;
  wire \sptr_reg[19]_i_1_n_4 ;
  wire \sptr_reg[19]_i_1_n_5 ;
  wire \sptr_reg[19]_i_1_n_6 ;
  wire \sptr_reg[19]_i_1_n_7 ;
  wire \sptr_reg[23]_i_1_n_0 ;
  wire \sptr_reg[23]_i_1_n_1 ;
  wire \sptr_reg[23]_i_1_n_2 ;
  wire \sptr_reg[23]_i_1_n_3 ;
  wire \sptr_reg[23]_i_1_n_4 ;
  wire \sptr_reg[23]_i_1_n_5 ;
  wire \sptr_reg[23]_i_1_n_6 ;
  wire \sptr_reg[23]_i_1_n_7 ;
  wire \sptr_reg[27]_i_1_n_0 ;
  wire \sptr_reg[27]_i_1_n_1 ;
  wire \sptr_reg[27]_i_1_n_2 ;
  wire \sptr_reg[27]_i_1_n_3 ;
  wire \sptr_reg[27]_i_1_n_4 ;
  wire \sptr_reg[27]_i_1_n_5 ;
  wire \sptr_reg[27]_i_1_n_6 ;
  wire \sptr_reg[27]_i_1_n_7 ;
  wire [25:0]\sptr_reg[29]_0 ;
  wire \sptr_reg[31]_0 ;
  wire \sptr_reg[31]_i_1_n_1 ;
  wire \sptr_reg[31]_i_1_n_2 ;
  wire \sptr_reg[31]_i_1_n_3 ;
  wire \sptr_reg[31]_i_1_n_4 ;
  wire \sptr_reg[31]_i_1_n_5 ;
  wire \sptr_reg[31]_i_1_n_6 ;
  wire \sptr_reg[31]_i_1_n_7 ;
  wire \sptr_reg[3]_0 ;
  wire \sptr_reg[3]_i_1_n_0 ;
  wire \sptr_reg[3]_i_1_n_1 ;
  wire \sptr_reg[3]_i_1_n_2 ;
  wire \sptr_reg[3]_i_1_n_3 ;
  wire \sptr_reg[3]_i_1_n_4 ;
  wire \sptr_reg[3]_i_1_n_5 ;
  wire \sptr_reg[3]_i_1_n_6 ;
  wire \sptr_reg[3]_i_1_n_7 ;
  wire \sptr_reg[7]_i_1_n_0 ;
  wire \sptr_reg[7]_i_1_n_1 ;
  wire \sptr_reg[7]_i_1_n_2 ;
  wire \sptr_reg[7]_i_1_n_3 ;
  wire \sptr_reg[7]_i_1_n_4 ;
  wire \sptr_reg[7]_i_1_n_5 ;
  wire \sptr_reg[7]_i_1_n_6 ;
  wire \sptr_reg[7]_i_1_n_7 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_0_63_0_0_i_2
       (.I0(sptr_dec[0]),
        .I1(ctl_mmsp),
        .I2(sptr[0]),
        .O(rgf_sp_0[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_0_63_0_0_i_3
       (.I0(sptr_dec[1]),
        .I1(ctl_mmsp),
        .I2(sptr[1]),
        .O(rgf_sp_0[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_0_63_0_0_i_4
       (.I0(sptr_dec[2]),
        .I1(ctl_mmsp),
        .I2(sptr[2]),
        .O(rgf_sp_0[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_0_63_0_0_i_5
       (.I0(sptr_dec[3]),
        .I1(ctl_mmsp),
        .I2(sptr[3]),
        .O(rgf_sp_0[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_0_63_0_0_i_6
       (.I0(sptr_dec[4]),
        .I1(ctl_mmsp),
        .I2(sptr[4]),
        .O(rgf_sp_0[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_0_63_0_0_i_7
       (.I0(sptr_dec[5]),
        .I1(ctl_mmsp),
        .I2(sptr[5]),
        .O(rgf_sp_0[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[11]_i_2 
       (.I0(\sptr_reg[29]_0 [5]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[11]),
        .O(\sptr[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[11]_i_3 
       (.I0(\sptr_reg[29]_0 [4]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[10]),
        .O(\sptr[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[11]_i_4 
       (.I0(\sptr_reg[29]_0 [3]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[9]),
        .O(\sptr[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[11]_i_5 
       (.I0(\sptr_reg[29]_0 [2]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[8]),
        .O(\sptr[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[15]_i_2 
       (.I0(\sptr_reg[29]_0 [9]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[15]),
        .O(\sptr[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[15]_i_3 
       (.I0(\sptr_reg[29]_0 [8]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[14]),
        .O(\sptr[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[15]_i_4 
       (.I0(\sptr_reg[29]_0 [7]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[13]),
        .O(\sptr[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[15]_i_5 
       (.I0(\sptr_reg[29]_0 [6]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[12]),
        .O(\sptr[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[19]_i_2 
       (.I0(\sptr_reg[29]_0 [13]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[19]),
        .O(\sptr[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[19]_i_3 
       (.I0(\sptr_reg[29]_0 [12]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[18]),
        .O(\sptr[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[19]_i_4 
       (.I0(\sptr_reg[29]_0 [11]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[17]),
        .O(\sptr[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[19]_i_5 
       (.I0(\sptr_reg[29]_0 [10]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[16]),
        .O(\sptr[19]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[23]_i_2 
       (.I0(\sptr_reg[29]_0 [17]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[23]),
        .O(\sptr[23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[23]_i_3 
       (.I0(\sptr_reg[29]_0 [16]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[22]),
        .O(\sptr[23]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[23]_i_4 
       (.I0(\sptr_reg[29]_0 [15]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[21]),
        .O(\sptr[23]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[23]_i_5 
       (.I0(\sptr_reg[29]_0 [14]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[20]),
        .O(\sptr[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[27]_i_2 
       (.I0(\sptr_reg[29]_0 [21]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[27]),
        .O(\sptr[27]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[27]_i_3 
       (.I0(\sptr_reg[29]_0 [20]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[26]),
        .O(\sptr[27]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[27]_i_4 
       (.I0(\sptr_reg[29]_0 [19]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[25]),
        .O(\sptr[27]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[27]_i_5 
       (.I0(\sptr_reg[29]_0 [18]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[24]),
        .O(\sptr[27]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[31]_i_2 
       (.I0(\sptr_reg[29]_0 [25]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[31]),
        .O(\sptr[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[31]_i_3 
       (.I0(\sptr_reg[29]_0 [24]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[30]),
        .O(\sptr[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[31]_i_4 
       (.I0(\sptr_reg[29]_0 [23]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[29]),
        .O(\sptr[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[31]_i_5 
       (.I0(\sptr_reg[29]_0 [22]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[28]),
        .O(\sptr[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sptr[3]_i_10 
       (.I0(sptr[13]),
        .I1(sptr[12]),
        .I2(sptr[11]),
        .I3(sptr[10]),
        .I4(sptr[0]),
        .I5(sptr[1]),
        .O(\sptr[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sptr[3]_i_11 
       (.I0(sptr[24]),
        .I1(sptr[25]),
        .I2(sptr[26]),
        .I3(sptr[27]),
        .O(\sptr[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \sptr[3]_i_12 
       (.I0(sptr[28]),
        .I1(sptr[29]),
        .I2(sptr[6]),
        .I3(sptr[30]),
        .O(\sptr[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sptr[3]_i_13 
       (.I0(sptr[16]),
        .I1(sptr[17]),
        .I2(sptr[18]),
        .I3(sptr[19]),
        .O(\sptr[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sptr[3]_i_14 
       (.I0(sptr[20]),
        .I1(sptr[21]),
        .I2(sptr[22]),
        .I3(sptr[23]),
        .O(\sptr[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[3]_i_3 
       (.I0(sptr_dec[3]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[3]),
        .O(\sptr[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[3]_i_4 
       (.I0(sptr_dec[2]),
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
       (.I0(sptr_dec[0]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[0]),
        .O(\sptr[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sptr[3]_i_7 
       (.I0(\sptr[3]_i_8_n_0 ),
        .I1(\sptr[3]_i_9_n_0 ),
        .I2(sptr[31]),
        .I3(sptr[7]),
        .I4(sptr[8]),
        .I5(sptr[9]),
        .O(\sptr_reg[31]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sptr[3]_i_8 
       (.I0(\sptr[3]_i_10_n_0 ),
        .I1(sptr[5]),
        .I2(sptr[4]),
        .I3(sptr[3]),
        .I4(sptr[2]),
        .O(\sptr[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sptr[3]_i_9 
       (.I0(sptr[14]),
        .I1(sptr[15]),
        .I2(\sptr[3]_i_11_n_0 ),
        .I3(\sptr[3]_i_12_n_0 ),
        .I4(\sptr[3]_i_13_n_0 ),
        .I5(\sptr[3]_i_14_n_0 ),
        .O(\sptr[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[7]_i_2 
       (.I0(\sptr_reg[29]_0 [1]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[7]),
        .O(\sptr[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[7]_i_3 
       (.I0(\sptr_reg[29]_0 [0]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[6]),
        .O(\sptr[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[7]_i_4 
       (.I0(sptr_dec[5]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[5]),
        .O(\sptr[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \sptr[7]_i_5 
       (.I0(sptr_dec[4]),
        .I1(ctl_mmsp),
        .I2(ctl_sppp),
        .I3(sptr[4]),
        .O(\sptr[7]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sptr_dec0_carry
       (.CI(\<const0> ),
        .CO({sptr_dec0_carry_n_0,sptr_dec0_carry_n_1,sptr_dec0_carry_n_2,sptr_dec0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({sptr[2],sptr_dec0_carry_i_1_n_0,p_0_out,sptr[0]}),
        .O(sptr_dec[3:0]),
        .S({sptr_dec0_carry_i_3_n_0,sptr_dec0_carry_i_4_n_0,sptr_dec0_carry_i_5_n_0,sptr_dec0_carry_i_6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sptr_dec0_carry__0
       (.CI(sptr_dec0_carry_n_0),
        .CO({sptr_dec0_carry__0_n_0,sptr_dec0_carry__0_n_1,sptr_dec0_carry__0_n_2,sptr_dec0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(sptr[6:3]),
        .O({\sptr_reg[29]_0 [1:0],sptr_dec[5:4]}),
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
        .O(\sptr_reg[29]_0 [5:2]),
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
        .CO({sptr_dec0_carry__2_n_0,sptr_dec0_carry__2_n_1,sptr_dec0_carry__2_n_2,sptr_dec0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(sptr[14:11]),
        .O(\sptr_reg[29]_0 [9:6]),
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sptr_dec0_carry__3
       (.CI(sptr_dec0_carry__2_n_0),
        .CO({sptr_dec0_carry__3_n_0,sptr_dec0_carry__3_n_1,sptr_dec0_carry__3_n_2,sptr_dec0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(sptr[18:15]),
        .O(\sptr_reg[29]_0 [13:10]),
        .S({sptr_dec0_carry__3_i_1_n_0,sptr_dec0_carry__3_i_2_n_0,sptr_dec0_carry__3_i_3_n_0,sptr_dec0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__3_i_1
       (.I0(sptr[18]),
        .I1(sptr[19]),
        .O(sptr_dec0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__3_i_2
       (.I0(sptr[17]),
        .I1(sptr[18]),
        .O(sptr_dec0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__3_i_3
       (.I0(sptr[16]),
        .I1(sptr[17]),
        .O(sptr_dec0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__3_i_4
       (.I0(sptr[15]),
        .I1(sptr[16]),
        .O(sptr_dec0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sptr_dec0_carry__4
       (.CI(sptr_dec0_carry__3_n_0),
        .CO({sptr_dec0_carry__4_n_0,sptr_dec0_carry__4_n_1,sptr_dec0_carry__4_n_2,sptr_dec0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI(sptr[22:19]),
        .O(\sptr_reg[29]_0 [17:14]),
        .S({sptr_dec0_carry__4_i_1_n_0,sptr_dec0_carry__4_i_2_n_0,sptr_dec0_carry__4_i_3_n_0,sptr_dec0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__4_i_1
       (.I0(sptr[22]),
        .I1(sptr[23]),
        .O(sptr_dec0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__4_i_2
       (.I0(sptr[21]),
        .I1(sptr[22]),
        .O(sptr_dec0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__4_i_3
       (.I0(sptr[20]),
        .I1(sptr[21]),
        .O(sptr_dec0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__4_i_4
       (.I0(sptr[19]),
        .I1(sptr[20]),
        .O(sptr_dec0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sptr_dec0_carry__5
       (.CI(sptr_dec0_carry__4_n_0),
        .CO({sptr_dec0_carry__5_n_0,sptr_dec0_carry__5_n_1,sptr_dec0_carry__5_n_2,sptr_dec0_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI(sptr[26:23]),
        .O(\sptr_reg[29]_0 [21:18]),
        .S({sptr_dec0_carry__5_i_1_n_0,sptr_dec0_carry__5_i_2_n_0,sptr_dec0_carry__5_i_3_n_0,sptr_dec0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__5_i_1
       (.I0(sptr[26]),
        .I1(sptr[27]),
        .O(sptr_dec0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__5_i_2
       (.I0(sptr[25]),
        .I1(sptr[26]),
        .O(sptr_dec0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__5_i_3
       (.I0(sptr[24]),
        .I1(sptr[25]),
        .O(sptr_dec0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__5_i_4
       (.I0(sptr[23]),
        .I1(sptr[24]),
        .O(sptr_dec0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sptr_dec0_carry__6
       (.CI(sptr_dec0_carry__5_n_0),
        .CO({sptr_dec0_carry__6_n_1,sptr_dec0_carry__6_n_2,sptr_dec0_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,sptr[29:27]}),
        .O(\sptr_reg[29]_0 [25:22]),
        .S({sptr_dec0_carry__6_i_1_n_0,sptr_dec0_carry__6_i_2_n_0,sptr_dec0_carry__6_i_3_n_0,sptr_dec0_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__6_i_1
       (.I0(sptr[30]),
        .I1(sptr[31]),
        .O(sptr_dec0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__6_i_2
       (.I0(sptr[29]),
        .I1(sptr[30]),
        .O(sptr_dec0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__6_i_3
       (.I0(sptr[28]),
        .I1(sptr[29]),
        .O(sptr_dec0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry__6_i_4
       (.I0(sptr[27]),
        .I1(sptr[28]),
        .O(sptr_dec0_carry__6_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sptr_dec0_carry_i_1
       (.I0(p_0_out),
        .O(sptr_dec0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sptr_dec0_carry_i_10
       (.I0(sptr[14]),
        .I1(sptr[12]),
        .I2(sptr[13]),
        .I3(sptr[16]),
        .I4(sptr[17]),
        .I5(sptr[15]),
        .O(sptr_dec0_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sptr_dec0_carry_i_11
       (.I0(sptr[6]),
        .I1(sptr[7]),
        .I2(sptr[4]),
        .I3(sptr[5]),
        .I4(sptr_dec0_carry_i_12_n_0),
        .O(sptr_dec0_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sptr_dec0_carry_i_12
       (.I0(sptr[9]),
        .I1(sptr[8]),
        .I2(sptr[11]),
        .I3(sptr[10]),
        .O(sptr_dec0_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sptr_dec0_carry_i_2
       (.I0(sptr[21]),
        .I1(sptr[20]),
        .I2(sptr[23]),
        .I3(sptr[22]),
        .I4(sptr_dec0_carry_i_7_n_0),
        .I5(sptr_dec0_carry_i_8_n_0),
        .O(p_0_out));
  LUT2 #(
    .INIT(4'h9)) 
    sptr_dec0_carry_i_3
       (.I0(sptr[2]),
        .I1(sptr[3]),
        .O(sptr_dec0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sptr_dec0_carry_i_4
       (.I0(p_0_out),
        .I1(sptr[2]),
        .O(sptr_dec0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sptr_dec0_carry_i_5
       (.I0(p_0_out),
        .I1(sptr[1]),
        .O(sptr_dec0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sptr_dec0_carry_i_6
       (.I0(sptr[0]),
        .I1(p_0_out),
        .O(sptr_dec0_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sptr_dec0_carry_i_7
       (.I0(sptr[31]),
        .I1(sptr[28]),
        .I2(sptr[29]),
        .I3(sptr[19]),
        .I4(sptr[18]),
        .O(sptr_dec0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sptr_dec0_carry_i_8
       (.I0(sptr[26]),
        .I1(sptr[27]),
        .I2(sptr[24]),
        .I3(sptr[25]),
        .I4(sptr_dec0_carry_i_9_n_0),
        .I5(sptr[30]),
        .O(sptr_dec0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sptr_dec0_carry_i_9
       (.I0(sptr[1]),
        .I1(sptr[0]),
        .I2(sptr[3]),
        .I3(sptr[2]),
        .I4(sptr_dec0_carry_i_10_n_0),
        .I5(sptr_dec0_carry_i_11_n_0),
        .O(sptr_dec0_carry_i_9_n_0));
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
        .CO({\sptr_reg[15]_i_1_n_0 ,\sptr_reg[15]_i_1_n_1 ,\sptr_reg[15]_i_1_n_2 ,\sptr_reg[15]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sptr_reg[15]_i_1_n_4 ,\sptr_reg[15]_i_1_n_5 ,\sptr_reg[15]_i_1_n_6 ,\sptr_reg[15]_i_1_n_7 }),
        .S({\sptr[15]_i_2_n_0 ,\sptr[15]_i_3_n_0 ,\sptr[15]_i_4_n_0 ,\sptr[15]_i_5_n_0 }));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[16] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[19]_i_1_n_7 ),
        .Q(sptr[16]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[19]_i_1_n_6 ),
        .Q(sptr[17]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[19]_i_1_n_5 ),
        .Q(sptr[18]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[19]_i_1_n_4 ),
        .Q(sptr[19]),
        .R(SR));
  CARRY4 \sptr_reg[19]_i_1 
       (.CI(\sptr_reg[15]_i_1_n_0 ),
        .CO({\sptr_reg[19]_i_1_n_0 ,\sptr_reg[19]_i_1_n_1 ,\sptr_reg[19]_i_1_n_2 ,\sptr_reg[19]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sptr_reg[19]_i_1_n_4 ,\sptr_reg[19]_i_1_n_5 ,\sptr_reg[19]_i_1_n_6 ,\sptr_reg[19]_i_1_n_7 }),
        .S({\sptr[19]_i_2_n_0 ,\sptr[19]_i_3_n_0 ,\sptr[19]_i_4_n_0 ,\sptr[19]_i_5_n_0 }));
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
  FDRE \sptr_reg[20] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[23]_i_1_n_7 ),
        .Q(sptr[20]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[21] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[23]_i_1_n_6 ),
        .Q(sptr[21]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[22] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[23]_i_1_n_5 ),
        .Q(sptr[22]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[23] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[23]_i_1_n_4 ),
        .Q(sptr[23]),
        .R(SR));
  CARRY4 \sptr_reg[23]_i_1 
       (.CI(\sptr_reg[19]_i_1_n_0 ),
        .CO({\sptr_reg[23]_i_1_n_0 ,\sptr_reg[23]_i_1_n_1 ,\sptr_reg[23]_i_1_n_2 ,\sptr_reg[23]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sptr_reg[23]_i_1_n_4 ,\sptr_reg[23]_i_1_n_5 ,\sptr_reg[23]_i_1_n_6 ,\sptr_reg[23]_i_1_n_7 }),
        .S({\sptr[23]_i_2_n_0 ,\sptr[23]_i_3_n_0 ,\sptr[23]_i_4_n_0 ,\sptr[23]_i_5_n_0 }));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[24] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[27]_i_1_n_7 ),
        .Q(sptr[24]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[25] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[27]_i_1_n_6 ),
        .Q(sptr[25]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[26] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[27]_i_1_n_5 ),
        .Q(sptr[26]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[27] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[27]_i_1_n_4 ),
        .Q(sptr[27]),
        .R(SR));
  CARRY4 \sptr_reg[27]_i_1 
       (.CI(\sptr_reg[23]_i_1_n_0 ),
        .CO({\sptr_reg[27]_i_1_n_0 ,\sptr_reg[27]_i_1_n_1 ,\sptr_reg[27]_i_1_n_2 ,\sptr_reg[27]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sptr_reg[27]_i_1_n_4 ,\sptr_reg[27]_i_1_n_5 ,\sptr_reg[27]_i_1_n_6 ,\sptr_reg[27]_i_1_n_7 }),
        .S({\sptr[27]_i_2_n_0 ,\sptr[27]_i_3_n_0 ,\sptr[27]_i_4_n_0 ,\sptr[27]_i_5_n_0 }));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[28] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[31]_i_1_n_7 ),
        .Q(sptr[28]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[29] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[31]_i_1_n_6 ),
        .Q(sptr[29]),
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
  FDRE \sptr_reg[30] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[31]_i_1_n_5 ),
        .Q(sptr[30]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sptr_reg[31] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sptr_reg[31]_i_1_n_4 ),
        .Q(sptr[31]),
        .R(SR));
  CARRY4 \sptr_reg[31]_i_1 
       (.CI(\sptr_reg[27]_i_1_n_0 ),
        .CO({\sptr_reg[31]_i_1_n_1 ,\sptr_reg[31]_i_1_n_2 ,\sptr_reg[31]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sptr_reg[31]_i_1_n_4 ,\sptr_reg[31]_i_1_n_5 ,\sptr_reg[31]_i_1_n_6 ,\sptr_reg[31]_i_1_n_7 }),
        .S({\sptr[31]_i_2_n_0 ,\sptr[31]_i_3_n_0 ,\sptr[31]_i_4_n_0 ,\sptr[31]_i_5_n_0 }));
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

module ndym_stkb1
   (SR,
    Q,
    bbus,
    rst_n,
    E,
    D,
    clk,
    \stk_b1_rg_reg[31]_0 );
  output [0:0]SR;
  output [15:0]Q;
  output [31:0]bbus;
  input rst_n;
  input [0:0]E;
  input [31:0]D;
  input clk;
  input [0:0]\stk_b1_rg_reg[31]_0 ;

  wire [31:0]D;
  wire [0:0]E;
  wire [15:0]Q;
  wire [0:0]SR;
  wire [31:0]bbus;
  wire clk;
  wire rst_n;
  wire [0:0]\stk_b1_rg_reg[31]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \stat[1]_i_1 
       (.I0(rst_n),
        .O(SR));
  FDRE \stk_b1_rg_reg[0] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[0]),
        .Q(bbus[0]),
        .R(SR));
  FDRE \stk_b1_rg_reg[10] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[10]),
        .Q(bbus[10]),
        .R(SR));
  FDRE \stk_b1_rg_reg[11] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[11]),
        .Q(bbus[11]),
        .R(SR));
  FDRE \stk_b1_rg_reg[12] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[12]),
        .Q(bbus[12]),
        .R(SR));
  FDRE \stk_b1_rg_reg[13] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[13]),
        .Q(bbus[13]),
        .R(SR));
  FDRE \stk_b1_rg_reg[14] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[14]),
        .Q(bbus[14]),
        .R(SR));
  FDRE \stk_b1_rg_reg[15] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[15]),
        .Q(bbus[15]),
        .R(SR));
  FDRE \stk_b1_rg_reg[16] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[16]),
        .Q(bbus[16]),
        .R(SR));
  FDRE \stk_b1_rg_reg[17] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[17]),
        .Q(bbus[17]),
        .R(SR));
  FDRE \stk_b1_rg_reg[18] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[18]),
        .Q(bbus[18]),
        .R(SR));
  FDRE \stk_b1_rg_reg[19] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[19]),
        .Q(bbus[19]),
        .R(SR));
  FDRE \stk_b1_rg_reg[1] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[1]),
        .Q(bbus[1]),
        .R(SR));
  FDRE \stk_b1_rg_reg[20] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[20]),
        .Q(bbus[20]),
        .R(SR));
  FDRE \stk_b1_rg_reg[21] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[21]),
        .Q(bbus[21]),
        .R(SR));
  FDRE \stk_b1_rg_reg[22] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[22]),
        .Q(bbus[22]),
        .R(SR));
  FDRE \stk_b1_rg_reg[23] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[23]),
        .Q(bbus[23]),
        .R(SR));
  FDRE \stk_b1_rg_reg[24] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[24]),
        .Q(bbus[24]),
        .R(SR));
  FDRE \stk_b1_rg_reg[25] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[25]),
        .Q(bbus[25]),
        .R(SR));
  FDRE \stk_b1_rg_reg[26] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[26]),
        .Q(bbus[26]),
        .R(SR));
  FDRE \stk_b1_rg_reg[27] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[27]),
        .Q(bbus[27]),
        .R(SR));
  FDRE \stk_b1_rg_reg[28] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[28]),
        .Q(bbus[28]),
        .R(SR));
  FDRE \stk_b1_rg_reg[29] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[29]),
        .Q(bbus[29]),
        .R(SR));
  FDRE \stk_b1_rg_reg[2] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[2]),
        .Q(bbus[2]),
        .R(SR));
  FDRE \stk_b1_rg_reg[30] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[30]),
        .Q(bbus[30]),
        .R(SR));
  FDRE \stk_b1_rg_reg[31] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[31]),
        .Q(bbus[31]),
        .R(SR));
  FDRE \stk_b1_rg_reg[3] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[3]),
        .Q(bbus[3]),
        .R(SR));
  FDRE \stk_b1_rg_reg[4] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[4]),
        .Q(bbus[4]),
        .R(SR));
  FDRE \stk_b1_rg_reg[5] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[5]),
        .Q(bbus[5]),
        .R(SR));
  FDRE \stk_b1_rg_reg[6] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[6]),
        .Q(bbus[6]),
        .R(SR));
  FDRE \stk_b1_rg_reg[7] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[7]),
        .Q(bbus[7]),
        .R(SR));
  FDRE \stk_b1_rg_reg[8] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[8]),
        .Q(bbus[8]),
        .R(SR));
  FDRE \stk_b1_rg_reg[9] 
       (.C(clk),
        .CE(\stk_b1_rg_reg[31]_0 ),
        .D(D[9]),
        .Q(bbus[9]),
        .R(SR));
  FDRE \stk_ccmd_rg_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \stk_ccmd_rg_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \stk_ccmd_rg_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \stk_ccmd_rg_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \stk_ccmd_rg_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \stk_ccmd_rg_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \stk_ccmd_rg_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
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
  FDRE \stk_ccmd_rg_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \stk_ccmd_rg_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \stk_ccmd_rg_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \stk_ccmd_rg_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \stk_ccmd_rg_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module neodymium
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
//	Neodimium original 32 bit very-small CPU core
//		(c) 2026	1YEN Toru
//
//
//	2026/11/28	ver.1.00
//		32 bit data path
//		stack machine (LIFO stack 64 word)
//
  input clk;
  input rst_n;
  input brdy;
  input irq;
  input [31:0]cpu_sts;
  input [7:0]fdat;
  input [31:0]bdatr;
  output [31:0]fadr;
  output [3:0]bcmd;
  output [31:0]badr;
  output [31:0]bdatw;
  input crdy;
  input [31:0]cbus_i;
  output [15:0]ccmd;
  output [31:0]abus_o;
  output [31:0]bbus_o;

  (* DONT_TOUCH *) wire [31:0]abus;
  wire [31:0]abus_o;
  wire alu_n_32;
  wire [34:34]\art/add/tout ;
  wire [31:31]\art/p_1_in ;
  wire [31:0]badr;
  (* DONT_TOUCH *) wire [31:0]bbus;
  wire [31:0]bbus_o;
  wire [3:0]bcmd;
  wire [31:0]bdatr;
  wire [31:0]bdatw;
  wire brdy;
  (* DONT_TOUCH *) wire [31:0]cbus;
  wire [31:0]cbus_i;
  wire [15:0]ccmd;
  wire clk;
  wire [31:0]cpu_sts;
  wire crdy;
  wire ctl_ccmd_lat;
  (* DONT_TOUCH *) wire ctl_fetch;
  wire ctl_mmsp;
  wire ctl_n_187;
  wire ctl_n_190;
  wire ctl_n_191;
  wire ctl_n_192;
  wire ctl_n_193;
  wire ctl_n_194;
  wire ctl_n_195;
  wire ctl_n_196;
  wire ctl_n_197;
  wire ctl_n_198;
  wire ctl_n_199;
  wire ctl_n_200;
  wire ctl_n_201;
  wire ctl_n_202;
  wire ctl_n_203;
  wire ctl_n_204;
  wire ctl_n_205;
  wire ctl_n_206;
  wire ctl_n_207;
  wire ctl_n_208;
  wire ctl_n_209;
  wire ctl_n_210;
  wire ctl_n_211;
  wire ctl_n_212;
  wire ctl_n_213;
  wire ctl_n_214;
  wire ctl_n_215;
  wire ctl_n_216;
  wire ctl_n_217;
  wire ctl_n_218;
  wire ctl_n_219;
  wire ctl_n_220;
  wire ctl_n_221;
  wire ctl_n_222;
  wire ctl_n_223;
  wire ctl_n_224;
  wire ctl_n_225;
  wire ctl_n_226;
  wire ctl_n_227;
  wire ctl_n_228;
  wire ctl_n_229;
  wire ctl_n_230;
  wire ctl_n_231;
  wire ctl_n_232;
  wire ctl_n_233;
  wire ctl_n_234;
  wire ctl_n_235;
  wire ctl_n_236;
  wire ctl_n_237;
  wire ctl_n_238;
  wire ctl_n_239;
  wire ctl_n_240;
  wire ctl_n_241;
  wire ctl_n_242;
  wire ctl_n_243;
  wire ctl_n_244;
  wire ctl_n_245;
  wire ctl_n_246;
  wire ctl_n_247;
  wire ctl_n_248;
  wire ctl_n_249;
  wire ctl_n_250;
  wire ctl_n_251;
  wire ctl_n_252;
  wire ctl_n_253;
  wire ctl_n_254;
  wire ctl_n_255;
  wire ctl_n_256;
  wire ctl_n_289;
  wire ctl_n_290;
  wire ctl_n_291;
  wire ctl_n_292;
  wire ctl_n_293;
  wire ctl_n_294;
  wire ctl_n_295;
  wire ctl_n_296;
  wire ctl_n_297;
  wire ctl_n_298;
  wire ctl_n_299;
  wire ctl_n_300;
  wire ctl_n_301;
  wire ctl_n_302;
  wire ctl_n_303;
  wire ctl_n_304;
  wire ctl_n_305;
  wire ctl_n_306;
  wire ctl_n_307;
  wire ctl_n_308;
  wire ctl_n_309;
  wire ctl_n_310;
  wire ctl_n_311;
  wire ctl_n_312;
  wire ctl_n_313;
  wire ctl_n_314;
  wire ctl_n_315;
  wire ctl_n_316;
  wire ctl_n_317;
  wire ctl_n_318;
  wire ctl_n_319;
  wire ctl_n_320;
  wire ctl_pop;
  wire ctl_push;
  wire ctl_selpc;
  wire ctl_setiv;
  wire ctl_sppp;
  wire drv1;
  wire [31:0]fadr;
  wire fch_iack;
  wire [7:0]fdat;
  wire irq;
  wire ivec_n_33;
  wire ivec_n_34;
  wire ivec_n_35;
  wire n_0_838;
  wire [31:6]p_0_in;
  wire p_0_in_0;
  wire [30:0]p_1_in__0;
  wire pcnt_n_33;
  wire pcnt_n_34;
  wire pcnt_n_35;
  wire pcnt_n_36;
  wire pcnt_n_37;
  wire pcnt_n_38;
  wire pcnt_n_39;
  wire pcnt_n_40;
  wire rgf_ie;
  wire [31:0]rgf_iv_0;
  wire [5:0]rgf_sp_0;
  wire rst_n;
  wire [31:6]sptr_dec;
  wire sptr_n_58;
  (* DONT_TOUCH *) wire [31:0]stk_top;
  wire stkb1_n_1;
  wire stkb1_n_10;
  wire stkb1_n_11;
  wire stkb1_n_12;
  wire stkb1_n_13;
  wire stkb1_n_14;
  wire stkb1_n_15;
  wire stkb1_n_16;
  wire stkb1_n_2;
  wire stkb1_n_3;
  wire stkb1_n_4;
  wire stkb1_n_5;
  wire stkb1_n_6;
  wire stkb1_n_7;
  wire stkb1_n_8;
  wire stkb1_n_9;

  ndym_alu alu
       (.DI({ctl_n_200,ctl_n_201,ctl_n_202}),
        .O(\art/p_1_in ),
        .S({ctl_n_203,ctl_n_204,ctl_n_205,ctl_n_206}),
        .cbus_inferred_i_12({ctl_n_239,ctl_n_240,ctl_n_241,ctl_n_242}),
        .cbus_inferred_i_12_0({ctl_n_243,ctl_n_244,ctl_n_245,ctl_n_246}),
        .cbus_inferred_i_16({ctl_n_231,ctl_n_232,ctl_n_233,ctl_n_234}),
        .cbus_inferred_i_169({ctl_n_207,ctl_n_208,ctl_n_209,ctl_n_210}),
        .cbus_inferred_i_169_0({ctl_n_211,ctl_n_212,ctl_n_213,ctl_n_214}),
        .cbus_inferred_i_16_0({ctl_n_235,ctl_n_236,ctl_n_237,ctl_n_238}),
        .cbus_inferred_i_20({ctl_n_223,ctl_n_224,ctl_n_225,ctl_n_226}),
        .cbus_inferred_i_20_0({ctl_n_227,ctl_n_228,ctl_n_229,ctl_n_230}),
        .cbus_inferred_i_24({ctl_n_215,ctl_n_216,ctl_n_217,ctl_n_218}),
        .cbus_inferred_i_24_0({ctl_n_219,ctl_n_220,ctl_n_221,ctl_n_222}),
        .cbus_inferred_i_4({ctl_n_196,ctl_n_197,ctl_n_198,ctl_n_199}),
        .cbus_inferred_i_4_0({ctl_n_192,ctl_n_193,ctl_n_194,ctl_n_195}),
        .cbus_inferred_i_8({ctl_n_247,ctl_n_248,ctl_n_249,ctl_n_250}),
        .cbus_inferred_i_8_0({ctl_n_251,ctl_n_252,ctl_n_253,ctl_n_254}),
        .cbus_inferred_i_96(ctl_n_187),
        .cbus_inferred_i_96_0({ctl_n_190,ctl_n_191}),
        .drv1(drv1),
        .\stk_b1_rg_reg[31] ({p_1_in__0[30:2],p_1_in__0[0]}),
        .\stk_b1_rg_reg[31]_0 (\art/add/tout ),
        .tout__1_carry(alu_n_32));
  ndym_ctrl ctl
       (.DI({ctl_n_200,ctl_n_201,ctl_n_202}),
        .E(ctl_ccmd_lat),
        .O(\art/p_1_in ),
        .Q({stkb1_n_1,stkb1_n_2,stkb1_n_3,stkb1_n_4,stkb1_n_5,stkb1_n_6,stkb1_n_7,stkb1_n_8,stkb1_n_9,stkb1_n_10,stkb1_n_11,stkb1_n_12,stkb1_n_13,stkb1_n_14,stkb1_n_15,stkb1_n_16}),
        .S({ctl_n_203,ctl_n_204,ctl_n_205,ctl_n_206}),
        .abus(abus),
        .abus_inferred_i_1(stk_top),
        .abus_inferred_i_102(pcnt_n_35),
        .abus_inferred_i_105(pcnt_n_34),
        .abus_inferred_i_108(pcnt_n_33),
        .abus_inferred_i_1_0(rgf_iv_0),
        .abus_inferred_i_37(p_0_in),
        .abus_inferred_i_87(pcnt_n_40),
        .abus_inferred_i_90(pcnt_n_39),
        .abus_inferred_i_94(pcnt_n_38),
        .abus_inferred_i_97(pcnt_n_37),
        .abus_inferred_i_99(pcnt_n_36),
        .abus_o(abus_o),
        .badr(badr),
        .bbus_o(bbus_o),
        .bdatr(bdatr),
        .bdatw(bdatw),
        .\bdatw[31] (abus),
        .brdy(brdy),
        .brdy_0(ctl_pop),
        .cbus(cbus),
        .cbus_i(cbus_i),
        .cbus_inferred_i_29(\art/add/tout ),
        .ccmd(ccmd),
        .clk(clk),
        .cpu_sts(cpu_sts),
        .crdy(crdy),
        .ctl_mmsp(ctl_mmsp),
        .ctl_push(ctl_push),
        .ctl_selpc(ctl_selpc),
        .ctl_sppp(ctl_sppp),
        .drv1(drv1),
        .fch_iack(fch_iack),
        .fdat(fdat),
        .in0(ctl_fetch),
        .\ir_rg_reg[5]_0 (bcmd[0]),
        .irq(irq),
        .out(bbus),
        .p_0_in(p_0_in_0),
        .\pcnt[31]_i_2 (cbus),
        .\pcnt_reg[31] ({ctl_n_289,ctl_n_290,ctl_n_291,ctl_n_292,ctl_n_293,ctl_n_294,ctl_n_295,ctl_n_296,ctl_n_297,ctl_n_298,ctl_n_299,ctl_n_300,ctl_n_301,ctl_n_302,ctl_n_303,ctl_n_304,ctl_n_305,ctl_n_306,ctl_n_307,ctl_n_308,ctl_n_309,ctl_n_310,ctl_n_311,ctl_n_312,ctl_n_313,ctl_n_314,ctl_n_315,ctl_n_316,ctl_n_317,ctl_n_318,ctl_n_319,ctl_n_320}),
        .\pcnt_reg[31]_0 (fadr),
        .\pcnt_reg[31]_1 (ctl_fetch),
        .\pcnt_reg[3] (ivec_n_35),
        .rgf_ie(rgf_ie),
        .rgf_ie_rg_reg(ctl_n_255),
        .rgf_ie_rg_reg_0(ivec_n_33),
        .rgf_ie_rg_reg_1(ivec_n_34),
        .rgf_sp_0(rgf_sp_0),
        .rst_n(rst_n),
        .sptr_dec(sptr_dec),
        .\sptr_reg[31] (ctl_n_256),
        .\sptr_reg[3] (sptr_n_58),
        .\stat_reg[0] (ctl_setiv),
        .\stat_reg[1] (bcmd[3]),
        .\stat_reg[1]_0 (bcmd[2]),
        .\stat_reg[1]_1 (bcmd[1]),
        .\stk_b1_rg_reg[10] ({ctl_n_215,ctl_n_216,ctl_n_217,ctl_n_218}),
        .\stk_b1_rg_reg[11] ({ctl_n_219,ctl_n_220,ctl_n_221,ctl_n_222}),
        .\stk_b1_rg_reg[14] ({ctl_n_223,ctl_n_224,ctl_n_225,ctl_n_226}),
        .\stk_b1_rg_reg[15] ({ctl_n_227,ctl_n_228,ctl_n_229,ctl_n_230}),
        .\stk_b1_rg_reg[18] ({ctl_n_231,ctl_n_232,ctl_n_233,ctl_n_234}),
        .\stk_b1_rg_reg[19] ({ctl_n_235,ctl_n_236,ctl_n_237,ctl_n_238}),
        .\stk_b1_rg_reg[22] ({ctl_n_239,ctl_n_240,ctl_n_241,ctl_n_242}),
        .\stk_b1_rg_reg[23] ({ctl_n_243,ctl_n_244,ctl_n_245,ctl_n_246}),
        .\stk_b1_rg_reg[26] ({ctl_n_247,ctl_n_248,ctl_n_249,ctl_n_250}),
        .\stk_b1_rg_reg[27] ({ctl_n_251,ctl_n_252,ctl_n_253,ctl_n_254}),
        .\stk_b1_rg_reg[30] ({p_1_in__0[30:2],p_1_in__0[0]}),
        .\stk_b1_rg_reg[31] (ctl_n_187),
        .\stk_b1_rg_reg[31]_0 ({ctl_n_190,ctl_n_191}),
        .\stk_b1_rg_reg[31]_1 ({ctl_n_192,ctl_n_193,ctl_n_194,ctl_n_195}),
        .\stk_b1_rg_reg[31]_2 ({ctl_n_196,ctl_n_197,ctl_n_198,ctl_n_199}),
        .\stk_b1_rg_reg[6] ({ctl_n_207,ctl_n_208,ctl_n_209,ctl_n_210}),
        .\stk_b1_rg_reg[7] ({ctl_n_211,ctl_n_212,ctl_n_213,ctl_n_214}),
        .\stk_ccmd_rg_reg[1] (alu_n_32));
  LUT1 #(
    .INIT(2'h1)) 
    i_838
       (.I0(rst_n),
        .O(n_0_838));
  ndym_ivec ivec
       (.D(stk_top),
        .E(ctl_setiv),
        .SR(p_0_in_0),
        .clk(clk),
        .irq(irq),
        .irq_0(ivec_n_33),
        .\ivec_reg[6]_0 (ivec_n_34),
        .out(rgf_iv_0),
        .\pcnt_reg[3] (ctl_fetch),
        .rgf_ie(rgf_ie),
        .rgf_ie_rg_reg_0(ivec_n_35),
        .rgf_ie_rg_reg_1(ctl_n_255));
  ndym_pcnt pcnt
       (.D({ctl_n_289,ctl_n_290,ctl_n_291,ctl_n_292,ctl_n_293,ctl_n_294,ctl_n_295,ctl_n_296,ctl_n_297,ctl_n_298,ctl_n_299,ctl_n_300,ctl_n_301,ctl_n_302,ctl_n_303,ctl_n_304,ctl_n_305,ctl_n_306,ctl_n_307,ctl_n_308,ctl_n_309,ctl_n_310,ctl_n_311,ctl_n_312,ctl_n_313,ctl_n_314,ctl_n_315,ctl_n_316,ctl_n_317,ctl_n_318,ctl_n_319,ctl_n_320}),
        .SR(p_0_in_0),
        .clk(clk),
        .ctl_selpc(ctl_selpc),
        .fadr(fadr),
        .fch_iack(fch_iack),
        .irq(irq),
        .out(ctl_fetch),
        .\pcnt_reg[0]_0 (pcnt_n_33),
        .\pcnt_reg[1]_0 (pcnt_n_34),
        .\pcnt_reg[2]_0 (pcnt_n_35),
        .\pcnt_reg[3]_0 (pcnt_n_36),
        .\pcnt_reg[4]_0 (pcnt_n_37),
        .\pcnt_reg[5]_0 (pcnt_n_38),
        .\pcnt_reg[6]_0 (pcnt_n_39),
        .\pcnt_reg[7]_0 (pcnt_n_40),
        .rgf_ie(rgf_ie),
        .rst_n(rst_n));
  ndym_sptr sptr
       (.SR(p_0_in_0),
        .clk(clk),
        .ctl_mmsp(ctl_mmsp),
        .ctl_sppp(ctl_sppp),
        .out(p_0_in),
        .rgf_sp_0(rgf_sp_0),
        .\sptr_reg[29]_0 (sptr_dec),
        .\sptr_reg[31]_0 (sptr_n_58),
        .\sptr_reg[3]_0 (ctl_n_256));
  ndym_lifo stk
       (.clk(clk),
        .ctl_push(ctl_push),
        .out(cbus),
        .rgf_sp_0(rgf_sp_0),
        .stk_top(stk_top));
  ndym_stkb1 stkb1
       (.D(stk_top),
        .E(ctl_ccmd_lat),
        .Q({stkb1_n_1,stkb1_n_2,stkb1_n_3,stkb1_n_4,stkb1_n_5,stkb1_n_6,stkb1_n_7,stkb1_n_8,stkb1_n_9,stkb1_n_10,stkb1_n_11,stkb1_n_12,stkb1_n_13,stkb1_n_14,stkb1_n_15,stkb1_n_16}),
        .SR(p_0_in_0),
        .bbus(bbus),
        .clk(clk),
        .rst_n(rst_n),
        .\stk_b1_rg_reg[31]_0 (ctl_pop));
endmodule
