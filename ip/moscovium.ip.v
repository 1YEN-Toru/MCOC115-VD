
module mcvm_alu
   (O,
    tout__1_carry__0_i_8,
    tout__1_carry__1_i_8,
    tout__1_carry__2_i_8,
    tout__1_carry__3_i_3,
    \sr[4]_i_20 ,
    DI,
    S,
    \tr_reg[7] ,
    \tr_reg[7]_0 ,
    \tr_reg[11] ,
    \tr_reg[11]_0 ,
    \tr_reg[13] ,
    \tr_reg[13]_0 ,
    \sr[6]_i_2 ,
    \sr[6]_i_2_0 );
  output [3:0]O;
  output [3:0]tout__1_carry__0_i_8;
  output [3:0]tout__1_carry__1_i_8;
  output [3:0]tout__1_carry__2_i_8;
  output [0:0]tout__1_carry__3_i_3;
  output \sr[4]_i_20 ;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\tr_reg[7] ;
  input [3:0]\tr_reg[7]_0 ;
  input [3:0]\tr_reg[11] ;
  input [3:0]\tr_reg[11]_0 ;
  input [3:0]\tr_reg[13] ;
  input [3:0]\tr_reg[13]_0 ;
  input [0:0]\sr[6]_i_2 ;
  input [1:0]\sr[6]_i_2_0 ;

  wire [2:0]DI;
  wire [3:0]O;
  wire [3:0]S;
  wire \sr[4]_i_20 ;
  wire [0:0]\sr[6]_i_2 ;
  wire [1:0]\sr[6]_i_2_0 ;
  wire [3:0]tout__1_carry__0_i_8;
  wire [3:0]tout__1_carry__1_i_8;
  wire [3:0]tout__1_carry__2_i_8;
  wire [0:0]tout__1_carry__3_i_3;
  wire [3:0]\tr_reg[11] ;
  wire [3:0]\tr_reg[11]_0 ;
  wire [3:0]\tr_reg[13] ;
  wire [3:0]\tr_reg[13]_0 ;
  wire [3:0]\tr_reg[7] ;
  wire [3:0]\tr_reg[7]_0 ;

  mcvm_alu_art art
       (.DI(DI),
        .O(O),
        .S(S),
        .\sr[4]_i_20 (\sr[4]_i_20 ),
        .\sr[6]_i_2 (\sr[6]_i_2 ),
        .\sr[6]_i_2_0 (\sr[6]_i_2_0 ),
        .tout__1_carry__0_i_8(tout__1_carry__0_i_8),
        .tout__1_carry__1_i_8(tout__1_carry__1_i_8),
        .tout__1_carry__2_i_8(tout__1_carry__2_i_8),
        .tout__1_carry__3_i_3(tout__1_carry__3_i_3),
        .\tr_reg[11] (\tr_reg[11] ),
        .\tr_reg[11]_0 (\tr_reg[11]_0 ),
        .\tr_reg[13] (\tr_reg[13] ),
        .\tr_reg[13]_0 (\tr_reg[13]_0 ),
        .\tr_reg[7] (\tr_reg[7] ),
        .\tr_reg[7]_0 (\tr_reg[7]_0 ));
endmodule

module mcvm_alu_add
   (O,
    tout__1_carry__0_i_8,
    tout__1_carry__1_i_8,
    tout__1_carry__2_i_8,
    tout__1_carry__3_i_3,
    \sr[4]_i_20_0 ,
    DI,
    S,
    \tr_reg[7] ,
    \tr_reg[7]_0 ,
    \tr_reg[11] ,
    \tr_reg[11]_0 ,
    \tr_reg[13] ,
    \tr_reg[13]_0 ,
    \sr[6]_i_2 ,
    \sr[6]_i_2_0 );
  output [3:0]O;
  output [3:0]tout__1_carry__0_i_8;
  output [3:0]tout__1_carry__1_i_8;
  output [3:0]tout__1_carry__2_i_8;
  output [0:0]tout__1_carry__3_i_3;
  output \sr[4]_i_20_0 ;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\tr_reg[7] ;
  input [3:0]\tr_reg[7]_0 ;
  input [3:0]\tr_reg[11] ;
  input [3:0]\tr_reg[11]_0 ;
  input [3:0]\tr_reg[13] ;
  input [3:0]\tr_reg[13]_0 ;
  input [0:0]\sr[6]_i_2 ;
  input [1:0]\sr[6]_i_2_0 ;

  wire \<const0> ;
  wire [2:0]DI;
  wire [3:0]O;
  wire [3:0]S;
  wire \sr[4]_i_19_n_0 ;
  wire \sr[4]_i_20_0 ;
  wire \sr[4]_i_20_n_0 ;
  wire \sr[4]_i_21_n_0 ;
  wire [0:0]\sr[6]_i_2 ;
  wire [1:0]\sr[6]_i_2_0 ;
  wire [3:0]tout__1_carry__0_i_8;
  wire tout__1_carry__0_n_0;
  wire tout__1_carry__0_n_1;
  wire tout__1_carry__0_n_2;
  wire tout__1_carry__0_n_3;
  wire [3:0]tout__1_carry__1_i_8;
  wire tout__1_carry__1_n_0;
  wire tout__1_carry__1_n_1;
  wire tout__1_carry__1_n_2;
  wire tout__1_carry__1_n_3;
  wire [3:0]tout__1_carry__2_i_8;
  wire tout__1_carry__2_n_0;
  wire tout__1_carry__2_n_1;
  wire tout__1_carry__2_n_2;
  wire tout__1_carry__2_n_3;
  wire [0:0]tout__1_carry__3_i_3;
  wire tout__1_carry__3_n_3;
  wire tout__1_carry_n_0;
  wire tout__1_carry_n_1;
  wire tout__1_carry_n_2;
  wire tout__1_carry_n_3;
  wire [3:0]\tr_reg[11] ;
  wire [3:0]\tr_reg[11]_0 ;
  wire [3:0]\tr_reg[13] ;
  wire [3:0]\tr_reg[13]_0 ;
  wire [3:0]\tr_reg[7] ;
  wire [3:0]\tr_reg[7]_0 ;
  wire [3:0]NLW_tout__1_carry__3_O_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sr[4]_i_17 
       (.I0(\sr[4]_i_19_n_0 ),
        .I1(tout__1_carry__0_i_8[3]),
        .I2(tout__1_carry__2_i_8[3]),
        .I3(tout__1_carry__1_i_8[1]),
        .I4(O[2]),
        .I5(\sr[4]_i_20_n_0 ),
        .O(\sr[4]_i_20_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_19 
       (.I0(tout__1_carry__0_i_8[0]),
        .I1(tout__1_carry__2_i_8[0]),
        .I2(tout__1_carry__2_i_8[1]),
        .I3(tout__1_carry__1_i_8[2]),
        .O(\sr[4]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sr[4]_i_20 
       (.I0(O[0]),
        .I1(tout__1_carry__0_i_8[2]),
        .I2(tout__1_carry__1_i_8[3]),
        .I3(tout__1_carry__2_i_8[2]),
        .I4(\sr[4]_i_21_n_0 ),
        .O(\sr[4]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_21 
       (.I0(tout__1_carry__1_i_8[0]),
        .I1(tout__1_carry__0_i_8[1]),
        .I2(O[1]),
        .I3(O[3]),
        .O(\sr[4]_i_21_n_0 ));
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
        .DI(\tr_reg[7] ),
        .O(tout__1_carry__0_i_8),
        .S(\tr_reg[7]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__1
       (.CI(tout__1_carry__0_n_0),
        .CO({tout__1_carry__1_n_0,tout__1_carry__1_n_1,tout__1_carry__1_n_2,tout__1_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(\tr_reg[11] ),
        .O(tout__1_carry__1_i_8),
        .S(\tr_reg[11]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__2
       (.CI(tout__1_carry__1_n_0),
        .CO({tout__1_carry__2_n_0,tout__1_carry__2_n_1,tout__1_carry__2_n_2,tout__1_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(\tr_reg[13] ),
        .O(tout__1_carry__2_i_8),
        .S(\tr_reg[13]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__3
       (.CI(tout__1_carry__2_n_0),
        .CO(tout__1_carry__3_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\sr[6]_i_2 }),
        .O({tout__1_carry__3_i_3,NLW_tout__1_carry__3_O_UNCONNECTED[0]}),
        .S({\<const0> ,\<const0> ,\sr[6]_i_2_0 }));
endmodule

module mcvm_alu_art
   (O,
    tout__1_carry__0_i_8,
    tout__1_carry__1_i_8,
    tout__1_carry__2_i_8,
    tout__1_carry__3_i_3,
    \sr[4]_i_20 ,
    DI,
    S,
    \tr_reg[7] ,
    \tr_reg[7]_0 ,
    \tr_reg[11] ,
    \tr_reg[11]_0 ,
    \tr_reg[13] ,
    \tr_reg[13]_0 ,
    \sr[6]_i_2 ,
    \sr[6]_i_2_0 );
  output [3:0]O;
  output [3:0]tout__1_carry__0_i_8;
  output [3:0]tout__1_carry__1_i_8;
  output [3:0]tout__1_carry__2_i_8;
  output [0:0]tout__1_carry__3_i_3;
  output \sr[4]_i_20 ;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\tr_reg[7] ;
  input [3:0]\tr_reg[7]_0 ;
  input [3:0]\tr_reg[11] ;
  input [3:0]\tr_reg[11]_0 ;
  input [3:0]\tr_reg[13] ;
  input [3:0]\tr_reg[13]_0 ;
  input [0:0]\sr[6]_i_2 ;
  input [1:0]\sr[6]_i_2_0 ;

  wire [2:0]DI;
  wire [3:0]O;
  wire [3:0]S;
  wire \sr[4]_i_20 ;
  wire [0:0]\sr[6]_i_2 ;
  wire [1:0]\sr[6]_i_2_0 ;
  wire [3:0]tout__1_carry__0_i_8;
  wire [3:0]tout__1_carry__1_i_8;
  wire [3:0]tout__1_carry__2_i_8;
  wire [0:0]tout__1_carry__3_i_3;
  wire [3:0]\tr_reg[11] ;
  wire [3:0]\tr_reg[11]_0 ;
  wire [3:0]\tr_reg[13] ;
  wire [3:0]\tr_reg[13]_0 ;
  wire [3:0]\tr_reg[7] ;
  wire [3:0]\tr_reg[7]_0 ;

  mcvm_alu_add add
       (.DI(DI),
        .O(O),
        .S(S),
        .\sr[4]_i_20_0 (\sr[4]_i_20 ),
        .\sr[6]_i_2 (\sr[6]_i_2 ),
        .\sr[6]_i_2_0 (\sr[6]_i_2_0 ),
        .tout__1_carry__0_i_8(tout__1_carry__0_i_8),
        .tout__1_carry__1_i_8(tout__1_carry__1_i_8),
        .tout__1_carry__2_i_8(tout__1_carry__2_i_8),
        .tout__1_carry__3_i_3(tout__1_carry__3_i_3),
        .\tr_reg[11] (\tr_reg[11] ),
        .\tr_reg[11]_0 (\tr_reg[11]_0 ),
        .\tr_reg[13] (\tr_reg[13] ),
        .\tr_reg[13]_0 (\tr_reg[13]_0 ),
        .\tr_reg[7] (\tr_reg[7] ),
        .\tr_reg[7]_0 (\tr_reg[7]_0 ));
endmodule

module mcvm_fch
   (.out({ir[15],ir[14],ir[13],ir[12],ir[11],ir[9],ir[7],ir[6],ir[2],ir[1],ir[0]}),
    D,
    cbus,
    \sp_reg[4] ,
    \grn_reg[0] ,
    gr2_bus1__0,
    gr3_bus1__0,
    \grn_reg[1] ,
    \grn_reg[2] ,
    \grn_reg[3] ,
    \grn_reg[4] ,
    \stat_reg[2] ,
    gr4_bus1__0,
    gr5_bus1__0,
    gr1_bus1__0,
    gr4_bus1__0_0,
    \grn_reg[0]_0 ,
    gr6_bus1__0,
    gr7_bus1__0,
    \grn_reg[1]_0 ,
    \grn_reg[2]_0 ,
    \grn_reg[3]_0 ,
    \grn_reg[4]_0 ,
    gr5_bus1__0_1,
    gr0_bus1__0,
    gr1_bus1__0_2,
    gr2_bus1__0_3,
    gr3_bus1__0_4,
    gr4_bus1__0_5,
    gr5_bus1__0_6,
    gr6_bus1__0_7,
    gr7_bus1__0_8,
    gr0_bus1__0_9,
    \stat_reg[1] ,
    \grn_reg[0]_1 ,
    \grn_reg[1]_1 ,
    \grn_reg[2]_1 ,
    \grn_reg[3]_1 ,
    \grn_reg[4]_1 ,
    gr3_bus1__0_10,
    gr2_bus1__0_11,
    \grn_reg[0]_2 ,
    \grn_reg[1]_2 ,
    \grn_reg[2]_2 ,
    \grn_reg[3]_2 ,
    \grn_reg[4]_2 ,
    \grn_reg[5] ,
    \grn_reg[6] ,
    \grn_reg[7] ,
    \grn_reg[8] ,
    \grn_reg[9] ,
    \grn_reg[10] ,
    \grn_reg[11] ,
    \grn_reg[12] ,
    \grn_reg[13] ,
    \grn_reg[14] ,
    \grn_reg[15] ,
    gr4_bus1__0_12,
    gr5_bus1__0_13,
    \grn_reg[0]_3 ,
    \grn_reg[1]_3 ,
    \grn_reg[2]_3 ,
    \grn_reg[3]_3 ,
    \grn_reg[4]_3 ,
    \grn_reg[5]_0 ,
    \grn_reg[6]_0 ,
    \grn_reg[7]_0 ,
    \grn_reg[8]_0 ,
    \grn_reg[9]_0 ,
    \grn_reg[10]_0 ,
    \grn_reg[11]_0 ,
    \grn_reg[12]_0 ,
    \grn_reg[13]_0 ,
    \grn_reg[14]_0 ,
    \grn_reg[15]_0 ,
    gr2_bus1__0_14,
    gr3_bus1__0_15,
    gr1_bus1__0_16,
    gr4_bus1__0_17,
    gr6_bus1__0_18,
    gr7_bus1__0_19,
    gr5_bus1__0_20,
    gr0_bus1__0_21,
    gr1_bus1__0_22,
    gr2_bus1__0_23,
    gr3_bus1__0_24,
    gr4_bus1__0_25,
    gr5_bus1__0_26,
    gr6_bus1__0_27,
    gr7_bus1__0_28,
    gr0_bus1__0_29,
    gr3_bus1__0_30,
    gr6_bus1__0_31,
    gr4_bus1__0_32,
    gr5_bus1__0_33,
    gr1_bus1__0_34,
    gr2_bus1__0_35,
    gr7_bus1__0_36,
    gr0_bus1__0_37,
    gr5_bus1__0_38,
    gr6_bus1__0_39,
    gr1_bus1__0_40,
    gr2_bus1__0_41,
    gr7_bus1__0_42,
    gr0_bus1__0_43,
    \tr_reg[0] ,
    \tr_reg[1] ,
    \tr_reg[2] ,
    \tr_reg[3] ,
    \tr_reg[4] ,
    \tr_reg[5] ,
    \tr_reg[6] ,
    \tr_reg[7] ,
    \tr_reg[8] ,
    \tr_reg[9] ,
    \tr_reg[10] ,
    \tr_reg[11] ,
    \tr_reg[12] ,
    \tr_reg[13] ,
    \tr_reg[14] ,
    \tr_reg[15] ,
    \stat_reg[2]_0 ,
    \stat_reg[2]_1 ,
    \stat_reg[2]_2 ,
    \stat_reg[0] ,
    \bdatw[12]_INST_0_i_2_0 ,
    \stat_reg[2]_3 ,
    \stat_reg[2]_4 ,
    \bdatw[12]_INST_0_i_2_1 ,
    \stat_reg[2]_5 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \bdatw[11]_INST_0_i_2_0 ,
    \bdatw[12]_INST_0_i_2_2 ,
    \iv[14]_i_25_0 ,
    \sr[7]_i_17_0 ,
    \stat_reg[2]_6 ,
    \bdatw[8]_INST_0_i_2_1 ,
    \sp_reg[1] ,
    \sp_reg[0] ,
    \badr[9]_INST_0_i_1 ,
    \bdatw[9]_INST_0_i_2_0 ,
    \badr[10]_INST_0_i_1 ,
    \badr[14]_INST_0_i_1 ,
    bdatw,
    \stat_reg[1]_0 ,
    bbus_o,
    \stat_reg[1]_1 ,
    rst_n_fl_reg_0,
    in0,
    \stat_reg[2]_7 ,
    \stat_reg[1]_2 ,
    rst_n_fl_reg_1,
    \sr_reg[6] ,
    ccmd,
    crdy_0,
    \stat_reg[0]_0 ,
    \stat_reg[0]_1 ,
    rst_n_fl_reg_2,
    \sr_reg[10] ,
    rst_n_fl_reg_3,
    \stat_reg[0]_2 ,
    \badr[15]_INST_0_i_1 ,
    abus_o,
    E,
    \sr_reg[1] ,
    \sr_reg[1]_0 ,
    \sr_reg[1]_1 ,
    \sr_reg[0] ,
    \sr_reg[1]_2 ,
    \sr_reg[1]_3 ,
    \sr_reg[1]_4 ,
    \sr_reg[0]_0 ,
    \sr_reg[1]_5 ,
    \sr_reg[1]_6 ,
    \sr_reg[1]_7 ,
    \sr_reg[0]_1 ,
    \sr_reg[1]_8 ,
    \sr_reg[1]_9 ,
    \sr_reg[1]_10 ,
    \sr_reg[0]_2 ,
    \sr_reg[1]_11 ,
    \sr_reg[1]_12 ,
    \sr_reg[1]_13 ,
    \sr_reg[0]_3 ,
    \sr_reg[1]_14 ,
    \sr_reg[1]_15 ,
    \sr_reg[1]_16 ,
    \sr_reg[0]_4 ,
    \sr_reg[1]_17 ,
    \sr_reg[1]_18 ,
    \sr_reg[1]_19 ,
    \sr_reg[0]_5 ,
    \sr_reg[1]_20 ,
    \sr_reg[1]_21 ,
    \sr_reg[1]_22 ,
    \stat_reg[0]_3 ,
    \stat_reg[1]_3 ,
    \pc_reg[15] ,
    \sp_reg[0]_0 ,
    \sp_reg[1]_0 ,
    \sp_reg[2] ,
    \sp_reg[3] ,
    \sp_reg[4]_0 ,
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
    \sp_reg[15] ,
    \sr_reg[15] ,
    \sr_reg[14] ,
    \sr_reg[13] ,
    \sr_reg[12] ,
    \sr_reg[11] ,
    \sr_reg[10]_0 ,
    \sr_reg[9] ,
    \sr_reg[8] ,
    \sr_reg[7] ,
    \sr_reg[6]_0 ,
    \sr_reg[5] ,
    \sr_reg[4] ,
    \sr_reg[3] ,
    \sr_reg[2] ,
    \sr_reg[1]_23 ,
    \sr_reg[0]_6 ,
    \bdatw[12]_INST_0_i_2_3 ,
    \badr[14]_INST_0_i_1_0 ,
    \badr[15]_INST_0_i_1_0 ,
    \badr[15]_INST_0_i_1_1 ,
    DI,
    S,
    brdy_0,
    badr,
    rst_n_0,
    \badr[15]_INST_0_i_1_2 ,
    \badr[6]_INST_0_i_1 ,
    tout__1_carry__0_i_1_0,
    \badr[10]_INST_0_i_1_0 ,
    tout__1_carry__1_i_1_0,
    fch_irq_req,
    clk,
    ctl_fetch_fl_reg_0,
    rst_n,
    \badr[15]_INST_0_i_2 ,
    \bdatw[12]_INST_0_i_9 ,
    \bdatw[12]_INST_0_i_9_0 ,
    bank_sel,
    \bdatw[12]_INST_0_i_25_0 ,
    \badr[15]_INST_0_i_1_3 ,
    \sp_reg[15]_0 ,
    \tr_reg[2]_0 ,
    \bdatw[13]_INST_0_i_2_0 ,
    \bdatw[13]_INST_0_i_7_0 ,
    \bdatw[15]_INST_0_i_6_0 ,
    \bdatw[15]_INST_0_i_6_1 ,
    \bdatw[14]_INST_0_i_2_0 ,
    \bdatw[14]_INST_0_i_7_0 ,
    \bdatw[15]_INST_0_i_2_0 ,
    \bdatw[15]_INST_0_i_8_0 ,
    \bdatw[8]_INST_0_i_1_0 ,
    \bdatw[8]_INST_0_i_4_0 ,
    \bdatw[9]_INST_0_i_1_0 ,
    \bdatw[9]_INST_0_i_4_0 ,
    \bdatw[10]_INST_0_i_1_0 ,
    \bdatw[10]_INST_0_i_4_0 ,
    \bdatw[11]_INST_0_i_1_0 ,
    \bdatw[11]_INST_0_i_4_0 ,
    \bdatw[12]_INST_0_i_1_0 ,
    \bdatw[12]_INST_0_i_4_0 ,
    \bdatw[13]_INST_0_i_1_0 ,
    \bdatw[13]_INST_0_i_4_0 ,
    \bdatw[14]_INST_0_i_1_0 ,
    \bdatw[14]_INST_0_i_4_0 ,
    \bdatw[15]_INST_0_i_1_0 ,
    \bdatw[15]_INST_0_i_6_2 ,
    \bdatw[12]_INST_0_i_25_1 ,
    \bdatw[12]_INST_0_i_9_1 ,
    \bdatw[12]_INST_0_i_9_2 ,
    \bdatw[12]_INST_0_i_24_0 ,
    \bdatw[12]_INST_0_i_24_1 ,
    ctl_selc_rn,
    \badr[15]_INST_0_i_5 ,
    \badr[15]_INST_0_i_5_0 ,
    \badr[15]_INST_0_i_5_1 ,
    \bdatw[15]_INST_0_i_22_0 ,
    \bdatw[15]_INST_0_i_22_1 ,
    \badr[15]_INST_0_i_4 ,
    \bdatw[8]_INST_0_i_2_2 ,
    \bdatw[8]_INST_0_i_2_3 ,
    \bdatw[12]_INST_0_i_8_0 ,
    \bdatw[12]_INST_0_i_8_1 ,
    \bdatw[12]_INST_0_i_19_0 ,
    \bdatw[9]_INST_0_i_2_1 ,
    \bdatw[9]_INST_0_i_2_2 ,
    \bdatw[10]_INST_0_i_2_0 ,
    \bdatw[10]_INST_0_i_2_1 ,
    \bdatw[11]_INST_0_i_2_1 ,
    \bdatw[11]_INST_0_i_2_2 ,
    \bdatw[12]_INST_0_i_2_4 ,
    \bdatw[12]_INST_0_i_2_5 ,
    \bdatw[12]_INST_0_i_19_1 ,
    \bdatw[12]_INST_0_i_8_2 ,
    \bdatw[12]_INST_0_i_8_3 ,
    \bdatw[12]_INST_0_i_18_0 ,
    \bdatw[12]_INST_0_i_18_1 ,
    \bdatw[12]_INST_0_i_8_4 ,
    \bdatw[12]_INST_0_i_8_5 ,
    \bdatw[12]_INST_0_i_16_0 ,
    \bdatw[12]_INST_0_i_16_1 ,
    \bdatw[15]_INST_0_i_1_1 ,
    \pc_reg[15]_0 ,
    sp_dec_0,
    Q,
    O,
    \tr_reg[0]_0 ,
    \tr_reg[15]_0 ,
    \tr_reg[13]_0 ,
    \tr_reg[13]_1 ,
    \iv[13]_i_2_0 ,
    \iv[13]_i_2_1 ,
    \tr_reg[7]_0 ,
    \tr_reg[5]_0 ,
    \tr_reg[5]_1 ,
    \tr_reg[5]_2 ,
    \iv[9]_i_2_0 ,
    \iv[9]_i_2_1 ,
    \iv[13]_i_6_0 ,
    \iv[9]_i_7_0 ,
    \iv[3]_i_8_0 ,
    \tr_reg[1]_0 ,
    \tr_reg[1]_1 ,
    \tr_reg[11]_0 ,
    \tr_reg[9]_0 ,
    \tr_reg[9]_1 ,
    \iv[9]_i_2_2 ,
    \tr_reg[11]_1 ,
    \tr_reg[3]_0 ,
    \tr_reg[3]_1 ,
    \iv[11]_i_2_0 ,
    \iv[3]_i_2_0 ,
    \iv[3]_i_8_1 ,
    \tr_reg[7]_1 ,
    \tr_reg[7]_2 ,
    \sr[5]_i_2_0 ,
    abus_0,
    \tr_reg[6]_0 ,
    \tr_reg[6]_1 ,
    \sr[7]_i_6_0 ,
    \iv[6]_i_2_0 ,
    \tr_reg[10]_0 ,
    \tr_reg[2]_1 ,
    \tr_reg[14]_0 ,
    \iv[1]_i_2_0 ,
    \iv[1]_i_2_1 ,
    \iv[4]_i_6_0 ,
    \iv[6]_i_2_1 ,
    \iv[10]_i_2_0 ,
    \iv[10]_i_2_1 ,
    \tr_reg[12]_0 ,
    \iv[12]_i_2_0 ,
    \iv[8]_i_2_0 ,
    \tr_reg[4]_0 ,
    \iv[13]_i_2_2 ,
    \iv[4]_i_6_1 ,
    \iv[8]_i_2_1 ,
    \tr_reg[8]_0 ,
    \iv[5]_i_2_0 ,
    \iv[5]_i_2_1 ,
    \iv[1]_i_2_2 ,
    \iv[1]_i_2_3 ,
    \iv[11]_i_6_0 ,
    \iv[9]_i_2_3 ,
    \iv[11]_i_2_1 ,
    \iv[11]_i_2_2 ,
    \iv[11]_i_2_3 ,
    \iv[11]_i_2_4 ,
    \iv[3]_i_2_1 ,
    \iv[8]_i_2_2 ,
    \iv[14]_i_2_0 ,
    \iv[12]_i_6_0 ,
    \iv[12]_i_6_1 ,
    \iv[8]_i_2_3 ,
    bdatr,
    read_cyc,
    cbus_i,
    \sr[4]_i_12_0 ,
    \sr[7]_i_6_1 ,
    \iv[7]_i_2_0 ,
    \iv[2]_i_4_0 ,
    \iv[3]_i_2_2 ,
    \iv[9]_i_2_4 ,
    \iv[8]_i_2_4 ,
    \iv[4]_i_8_0 ,
    \iv[4]_i_8_1 ,
    \tr_reg[2]_2 ,
    \tr_reg[2]_3 ,
    \iv[10]_i_9_0 ,
    \iv[6]_i_2_2 ,
    \iv[11]_i_8_0 ,
    \iv[0]_i_8_0 ,
    \iv[0]_i_8_1 ,
    \tr_reg[8]_1 ,
    \tr_reg[9]_2 ,
    \tr_reg[2]_4 ,
    \tr_reg[10]_1 ,
    \tr_reg[11]_2 ,
    \tr_reg[12]_1 ,
    \tr_reg[13]_2 ,
    \tr_reg[14]_1 ,
    \bcmd[2] ,
    brdy,
    ctl_fetch_fl_reg_1,
    crdy,
    ctl_fetch_inferred_i_2_0,
    \stat[0]_i_2_0 ,
    ctl_fetch_ext_fl_reg_0,
    \ccmd[2]_INST_0_i_1 ,
    \stat_reg[0]_4 ,
    \iv[15]_i_4_0 ,
    \stat_reg[1]_4 ,
    \stat_reg[2]_8 ,
    \bcmd[1] ,
    \tr_reg[14]_2 ,
    \sr[4]_i_3_0 ,
    \badr[15]_INST_0_i_81_0 ,
    \iv[15]_i_5_0 ,
    ctl_fetch_ext_fl_reg_1,
    irq_vec,
    \bdatw[8]_INST_0_i_40_0 ,
    ctl_fetch_inferred_i_3_0,
    \badr[15]_INST_0_i_109_0 ,
    \ccmd[3]_INST_0_i_7_0 ,
    \iv[15]_i_19_0 ,
    ctl_fetch_inferred_i_22_0,
    \sp[15]_i_2_0 ,
    \stat[0]_i_8_0 ,
    \iv[15]_i_56_0 ,
    \stat_reg[1]_5 ,
    \stat[0]_i_17_0 ,
    \stat_reg[2]_9 ,
    \stat[0]_i_2_1 ,
    \stat[1]_i_11_0 ,
    \iv[7]_i_2_1 ,
    \iv[7]_i_2_2 ,
    \iv[11]_i_6_1 ,
    \iv[10]_i_2_2 ,
    \sr[7]_i_6_2 ,
    \iv[8]_i_2_5 ,
    \iv[12]_i_7_0 ,
    \grn_reg[15]_1 ,
    \grn_reg[15]_2 ,
    \grn_reg[15]_3 ,
    \sp_reg[15]_1 ,
    \sp_reg[11]_0 ,
    \sp_reg[7]_0 ,
    \sp_reg[3]_0 ,
    fch_pc,
    \iv[0]_i_2_0 ,
    .ccmd_2_sp_1(ccmd_2_sn_1),
    \iv[3]_i_2_3 ,
    \iv[14]_i_4_0 ,
    \iv[14]_i_4_1 ,
    \iv[8]_i_2_6 ,
    \iv[4]_i_2_0 ,
    \sr[6]_i_3_0 ,
    \iv[0]_i_2_1 ,
    \iv[0]_i_2_2 ,
    \iv[1]_i_2_4 ,
    \iv[10]_i_2_3 ,
    \iv[10]_i_2_4 ,
    \iv[14]_i_2_1 ,
    \sr[6]_i_3_1 ,
    \iv[11]_i_2_5 ,
    \sr_reg[6]_1 ,
    \sp_reg[0]_1 ,
    cpuid,
    irq_lev,
    SR,
    fdat);
  output [11:0]D;
  output [15:0]cbus;
  output \sp_reg[4] ;
  output \grn_reg[0] ;
  output gr2_bus1__0;
  output gr3_bus1__0;
  output \grn_reg[1] ;
  output \grn_reg[2] ;
  output \grn_reg[3] ;
  output \grn_reg[4] ;
  output [0:0]\stat_reg[2] ;
  output gr4_bus1__0;
  output gr5_bus1__0;
  output gr1_bus1__0;
  output gr4_bus1__0_0;
  output \grn_reg[0]_0 ;
  output gr6_bus1__0;
  output gr7_bus1__0;
  output \grn_reg[1]_0 ;
  output \grn_reg[2]_0 ;
  output \grn_reg[3]_0 ;
  output \grn_reg[4]_0 ;
  output gr5_bus1__0_1;
  output gr0_bus1__0;
  output gr1_bus1__0_2;
  output gr2_bus1__0_3;
  output gr3_bus1__0_4;
  output gr4_bus1__0_5;
  output gr5_bus1__0_6;
  output gr6_bus1__0_7;
  output gr7_bus1__0_8;
  output gr0_bus1__0_9;
  output [0:0]\stat_reg[1] ;
  output \grn_reg[0]_1 ;
  output \grn_reg[1]_1 ;
  output \grn_reg[2]_1 ;
  output \grn_reg[3]_1 ;
  output \grn_reg[4]_1 ;
  output gr3_bus1__0_10;
  output gr2_bus1__0_11;
  output \grn_reg[0]_2 ;
  output \grn_reg[1]_2 ;
  output \grn_reg[2]_2 ;
  output \grn_reg[3]_2 ;
  output \grn_reg[4]_2 ;
  output \grn_reg[5] ;
  output \grn_reg[6] ;
  output \grn_reg[7] ;
  output \grn_reg[8] ;
  output \grn_reg[9] ;
  output \grn_reg[10] ;
  output \grn_reg[11] ;
  output \grn_reg[12] ;
  output \grn_reg[13] ;
  output \grn_reg[14] ;
  output \grn_reg[15] ;
  output gr4_bus1__0_12;
  output gr5_bus1__0_13;
  output \grn_reg[0]_3 ;
  output \grn_reg[1]_3 ;
  output \grn_reg[2]_3 ;
  output \grn_reg[3]_3 ;
  output \grn_reg[4]_3 ;
  output \grn_reg[5]_0 ;
  output \grn_reg[6]_0 ;
  output \grn_reg[7]_0 ;
  output \grn_reg[8]_0 ;
  output \grn_reg[9]_0 ;
  output \grn_reg[10]_0 ;
  output \grn_reg[11]_0 ;
  output \grn_reg[12]_0 ;
  output \grn_reg[13]_0 ;
  output \grn_reg[14]_0 ;
  output \grn_reg[15]_0 ;
  output gr2_bus1__0_14;
  output gr3_bus1__0_15;
  output gr1_bus1__0_16;
  output gr4_bus1__0_17;
  output gr6_bus1__0_18;
  output gr7_bus1__0_19;
  output gr5_bus1__0_20;
  output gr0_bus1__0_21;
  output gr1_bus1__0_22;
  output gr2_bus1__0_23;
  output gr3_bus1__0_24;
  output gr4_bus1__0_25;
  output gr5_bus1__0_26;
  output gr6_bus1__0_27;
  output gr7_bus1__0_28;
  output gr0_bus1__0_29;
  output gr3_bus1__0_30;
  output gr6_bus1__0_31;
  output gr4_bus1__0_32;
  output gr5_bus1__0_33;
  output gr1_bus1__0_34;
  output gr2_bus1__0_35;
  output gr7_bus1__0_36;
  output gr0_bus1__0_37;
  output gr5_bus1__0_38;
  output gr6_bus1__0_39;
  output gr1_bus1__0_40;
  output gr2_bus1__0_41;
  output gr7_bus1__0_42;
  output gr0_bus1__0_43;
  output \tr_reg[0] ;
  output \tr_reg[1] ;
  output \tr_reg[2] ;
  output \tr_reg[3] ;
  output \tr_reg[4] ;
  output \tr_reg[5] ;
  output \tr_reg[6] ;
  output \tr_reg[7] ;
  output \tr_reg[8] ;
  output \tr_reg[9] ;
  output \tr_reg[10] ;
  output \tr_reg[11] ;
  output \tr_reg[12] ;
  output \tr_reg[13] ;
  output \tr_reg[14] ;
  output \tr_reg[15] ;
  output \stat_reg[2]_0 ;
  output \stat_reg[2]_1 ;
  output \stat_reg[2]_2 ;
  output \stat_reg[0] ;
  output \bdatw[12]_INST_0_i_2_0 ;
  output \stat_reg[2]_3 ;
  output \stat_reg[2]_4 ;
  output \bdatw[12]_INST_0_i_2_1 ;
  output \stat_reg[2]_5 ;
  output \bdatw[8]_INST_0_i_2_0 ;
  output \bdatw[11]_INST_0_i_2_0 ;
  output \bdatw[12]_INST_0_i_2_2 ;
  output \iv[14]_i_25_0 ;
  output \sr[7]_i_17_0 ;
  output \stat_reg[2]_6 ;
  output \bdatw[8]_INST_0_i_2_1 ;
  output \sp_reg[1] ;
  output \sp_reg[0] ;
  output \badr[9]_INST_0_i_1 ;
  output \bdatw[9]_INST_0_i_2_0 ;
  output \badr[10]_INST_0_i_1 ;
  output \badr[14]_INST_0_i_1 ;
  output [15:0]bdatw;
  output \stat_reg[1]_0 ;
  output [15:0]bbus_o;
  output \stat_reg[1]_1 ;
  output rst_n_fl_reg_0;
  output in0;
  output \stat_reg[2]_7 ;
  output \stat_reg[1]_2 ;
  output rst_n_fl_reg_1;
  output [2:0]\sr_reg[6] ;
  output [4:0]ccmd;
  output crdy_0;
  output \stat_reg[0]_0 ;
  output \stat_reg[0]_1 ;
  output rst_n_fl_reg_2;
  output \sr_reg[10] ;
  output rst_n_fl_reg_3;
  output \stat_reg[0]_2 ;
  output \badr[15]_INST_0_i_1 ;
  output [15:0]abus_o;
  output [0:0]E;
  output [0:0]\sr_reg[1] ;
  output [0:0]\sr_reg[1]_0 ;
  output [0:0]\sr_reg[1]_1 ;
  output [0:0]\sr_reg[0] ;
  output [0:0]\sr_reg[1]_2 ;
  output [0:0]\sr_reg[1]_3 ;
  output [0:0]\sr_reg[1]_4 ;
  output [0:0]\sr_reg[0]_0 ;
  output [0:0]\sr_reg[1]_5 ;
  output [0:0]\sr_reg[1]_6 ;
  output [0:0]\sr_reg[1]_7 ;
  output [0:0]\sr_reg[0]_1 ;
  output [0:0]\sr_reg[1]_8 ;
  output [0:0]\sr_reg[1]_9 ;
  output [0:0]\sr_reg[1]_10 ;
  output [0:0]\sr_reg[0]_2 ;
  output [0:0]\sr_reg[1]_11 ;
  output [0:0]\sr_reg[1]_12 ;
  output [0:0]\sr_reg[1]_13 ;
  output [0:0]\sr_reg[0]_3 ;
  output [0:0]\sr_reg[1]_14 ;
  output [0:0]\sr_reg[1]_15 ;
  output [0:0]\sr_reg[1]_16 ;
  output [0:0]\sr_reg[0]_4 ;
  output [0:0]\sr_reg[1]_17 ;
  output [0:0]\sr_reg[1]_18 ;
  output [0:0]\sr_reg[1]_19 ;
  output [0:0]\sr_reg[0]_5 ;
  output [0:0]\sr_reg[1]_20 ;
  output [0:0]\sr_reg[1]_21 ;
  output [0:0]\sr_reg[1]_22 ;
  output [15:0]\stat_reg[0]_3 ;
  output [1:0]\stat_reg[1]_3 ;
  output [15:0]\pc_reg[15] ;
  output \sp_reg[0]_0 ;
  output \sp_reg[1]_0 ;
  output \sp_reg[2] ;
  output \sp_reg[3] ;
  output \sp_reg[4]_0 ;
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
  output \sp_reg[15] ;
  output \sr_reg[15] ;
  output \sr_reg[14] ;
  output \sr_reg[13] ;
  output \sr_reg[12] ;
  output \sr_reg[11] ;
  output \sr_reg[10]_0 ;
  output \sr_reg[9] ;
  output \sr_reg[8] ;
  output \sr_reg[7] ;
  output \sr_reg[6]_0 ;
  output \sr_reg[5] ;
  output \sr_reg[4] ;
  output \sr_reg[3] ;
  output \sr_reg[2] ;
  output \sr_reg[1]_23 ;
  output \sr_reg[0]_6 ;
  output \bdatw[12]_INST_0_i_2_3 ;
  output [3:0]\badr[14]_INST_0_i_1_0 ;
  output [3:0]\badr[15]_INST_0_i_1_0 ;
  output [0:0]\badr[15]_INST_0_i_1_1 ;
  output [2:0]DI;
  output [3:0]S;
  output brdy_0;
  output [15:0]badr;
  output rst_n_0;
  output [1:0]\badr[15]_INST_0_i_1_2 ;
  output [3:0]\badr[6]_INST_0_i_1 ;
  output [3:0]tout__1_carry__0_i_1_0;
  output [3:0]\badr[10]_INST_0_i_1_0 ;
  output [3:0]tout__1_carry__1_i_1_0;
  input fch_irq_req;
  input clk;
  input ctl_fetch_fl_reg_0;
  input rst_n;
  input [15:0]\badr[15]_INST_0_i_2 ;
  input [4:0]\bdatw[12]_INST_0_i_9 ;
  input [4:0]\bdatw[12]_INST_0_i_9_0 ;
  input [3:0]bank_sel;
  input [4:0]\bdatw[12]_INST_0_i_25_0 ;
  input [15:0]\badr[15]_INST_0_i_1_3 ;
  input [15:0]\sp_reg[15]_0 ;
  input [4:0]\tr_reg[2]_0 ;
  input \bdatw[13]_INST_0_i_2_0 ;
  input \bdatw[13]_INST_0_i_7_0 ;
  input [10:0]\bdatw[15]_INST_0_i_6_0 ;
  input [10:0]\bdatw[15]_INST_0_i_6_1 ;
  input \bdatw[14]_INST_0_i_2_0 ;
  input \bdatw[14]_INST_0_i_7_0 ;
  input \bdatw[15]_INST_0_i_2_0 ;
  input \bdatw[15]_INST_0_i_8_0 ;
  input \bdatw[8]_INST_0_i_1_0 ;
  input \bdatw[8]_INST_0_i_4_0 ;
  input \bdatw[9]_INST_0_i_1_0 ;
  input \bdatw[9]_INST_0_i_4_0 ;
  input \bdatw[10]_INST_0_i_1_0 ;
  input \bdatw[10]_INST_0_i_4_0 ;
  input \bdatw[11]_INST_0_i_1_0 ;
  input \bdatw[11]_INST_0_i_4_0 ;
  input \bdatw[12]_INST_0_i_1_0 ;
  input \bdatw[12]_INST_0_i_4_0 ;
  input \bdatw[13]_INST_0_i_1_0 ;
  input \bdatw[13]_INST_0_i_4_0 ;
  input \bdatw[14]_INST_0_i_1_0 ;
  input \bdatw[14]_INST_0_i_4_0 ;
  input \bdatw[15]_INST_0_i_1_0 ;
  input \bdatw[15]_INST_0_i_6_2 ;
  input [4:0]\bdatw[12]_INST_0_i_25_1 ;
  input [4:0]\bdatw[12]_INST_0_i_9_1 ;
  input [4:0]\bdatw[12]_INST_0_i_9_2 ;
  input [4:0]\bdatw[12]_INST_0_i_24_0 ;
  input [4:0]\bdatw[12]_INST_0_i_24_1 ;
  input [0:0]ctl_selc_rn;
  input [15:0]\badr[15]_INST_0_i_5 ;
  input [15:0]\badr[15]_INST_0_i_5_0 ;
  input [15:0]\badr[15]_INST_0_i_5_1 ;
  input [10:0]\bdatw[15]_INST_0_i_22_0 ;
  input [10:0]\bdatw[15]_INST_0_i_22_1 ;
  input [15:0]\badr[15]_INST_0_i_4 ;
  input \bdatw[8]_INST_0_i_2_2 ;
  input \bdatw[8]_INST_0_i_2_3 ;
  input [4:0]\bdatw[12]_INST_0_i_8_0 ;
  input [4:0]\bdatw[12]_INST_0_i_8_1 ;
  input [4:0]\bdatw[12]_INST_0_i_19_0 ;
  input \bdatw[9]_INST_0_i_2_1 ;
  input \bdatw[9]_INST_0_i_2_2 ;
  input \bdatw[10]_INST_0_i_2_0 ;
  input \bdatw[10]_INST_0_i_2_1 ;
  input \bdatw[11]_INST_0_i_2_1 ;
  input \bdatw[11]_INST_0_i_2_2 ;
  input \bdatw[12]_INST_0_i_2_4 ;
  input \bdatw[12]_INST_0_i_2_5 ;
  input [4:0]\bdatw[12]_INST_0_i_19_1 ;
  input [4:0]\bdatw[12]_INST_0_i_8_2 ;
  input [4:0]\bdatw[12]_INST_0_i_8_3 ;
  input [4:0]\bdatw[12]_INST_0_i_18_0 ;
  input [4:0]\bdatw[12]_INST_0_i_18_1 ;
  input [4:0]\bdatw[12]_INST_0_i_8_4 ;
  input [4:0]\bdatw[12]_INST_0_i_8_5 ;
  input [4:0]\bdatw[12]_INST_0_i_16_0 ;
  input [4:0]\bdatw[12]_INST_0_i_16_1 ;
  input [15:0]\bdatw[15]_INST_0_i_1_1 ;
  input [15:0]\pc_reg[15]_0 ;
  input [14:0]sp_dec_0;
  input [2:0]Q;
  input [3:0]O;
  input \tr_reg[0]_0 ;
  input [3:0]\tr_reg[15]_0 ;
  input \tr_reg[13]_0 ;
  input \tr_reg[13]_1 ;
  input \iv[13]_i_2_0 ;
  input \iv[13]_i_2_1 ;
  input [3:0]\tr_reg[7]_0 ;
  input \tr_reg[5]_0 ;
  input \tr_reg[5]_1 ;
  input \tr_reg[5]_2 ;
  input \iv[9]_i_2_0 ;
  input \iv[9]_i_2_1 ;
  input \iv[13]_i_6_0 ;
  input \iv[9]_i_7_0 ;
  input \iv[3]_i_8_0 ;
  input \tr_reg[1]_0 ;
  input \tr_reg[1]_1 ;
  input [3:0]\tr_reg[11]_0 ;
  input \tr_reg[9]_0 ;
  input \tr_reg[9]_1 ;
  input \iv[9]_i_2_2 ;
  input \tr_reg[11]_1 ;
  input \tr_reg[3]_0 ;
  input \tr_reg[3]_1 ;
  input \iv[11]_i_2_0 ;
  input \iv[3]_i_2_0 ;
  input \iv[3]_i_8_1 ;
  input \tr_reg[7]_1 ;
  input \tr_reg[7]_2 ;
  input \sr[5]_i_2_0 ;
  input [15:0]abus_0;
  input \tr_reg[6]_0 ;
  input \tr_reg[6]_1 ;
  input \sr[7]_i_6_0 ;
  input \iv[6]_i_2_0 ;
  input \tr_reg[10]_0 ;
  input \tr_reg[2]_1 ;
  input \tr_reg[14]_0 ;
  input \iv[1]_i_2_0 ;
  input \iv[1]_i_2_1 ;
  input \iv[4]_i_6_0 ;
  input \iv[6]_i_2_1 ;
  input \iv[10]_i_2_0 ;
  input \iv[10]_i_2_1 ;
  input \tr_reg[12]_0 ;
  input \iv[12]_i_2_0 ;
  input \iv[8]_i_2_0 ;
  input \tr_reg[4]_0 ;
  input \iv[13]_i_2_2 ;
  input \iv[4]_i_6_1 ;
  input \iv[8]_i_2_1 ;
  input \tr_reg[8]_0 ;
  input \iv[5]_i_2_0 ;
  input \iv[5]_i_2_1 ;
  input \iv[1]_i_2_2 ;
  input \iv[1]_i_2_3 ;
  input \iv[11]_i_6_0 ;
  input \iv[9]_i_2_3 ;
  input \iv[11]_i_2_1 ;
  input \iv[11]_i_2_2 ;
  input \iv[11]_i_2_3 ;
  input \iv[11]_i_2_4 ;
  input \iv[3]_i_2_1 ;
  input \iv[8]_i_2_2 ;
  input \iv[14]_i_2_0 ;
  input \iv[12]_i_6_0 ;
  input \iv[12]_i_6_1 ;
  input \iv[8]_i_2_3 ;
  input [1:0]bdatr;
  input [2:0]read_cyc;
  input [2:0]cbus_i;
  input \sr[4]_i_12_0 ;
  input \sr[7]_i_6_1 ;
  input \iv[7]_i_2_0 ;
  input \iv[2]_i_4_0 ;
  input \iv[3]_i_2_2 ;
  input \iv[9]_i_2_4 ;
  input \iv[8]_i_2_4 ;
  input \iv[4]_i_8_0 ;
  input \iv[4]_i_8_1 ;
  input \tr_reg[2]_2 ;
  input \tr_reg[2]_3 ;
  input \iv[10]_i_9_0 ;
  input \iv[6]_i_2_2 ;
  input \iv[11]_i_8_0 ;
  input \iv[0]_i_8_0 ;
  input \iv[0]_i_8_1 ;
  input \tr_reg[8]_1 ;
  input \tr_reg[9]_2 ;
  input \tr_reg[2]_4 ;
  input \tr_reg[10]_1 ;
  input \tr_reg[11]_2 ;
  input \tr_reg[12]_1 ;
  input \tr_reg[13]_2 ;
  input \tr_reg[14]_1 ;
  input \bcmd[2] ;
  input brdy;
  input ctl_fetch_fl_reg_1;
  input crdy;
  input ctl_fetch_inferred_i_2_0;
  input \stat[0]_i_2_0 ;
  input ctl_fetch_ext_fl_reg_0;
  input \ccmd[2]_INST_0_i_1 ;
  input \stat_reg[0]_4 ;
  input \iv[15]_i_4_0 ;
  input \stat_reg[1]_4 ;
  input \stat_reg[2]_8 ;
  input \bcmd[1] ;
  input \tr_reg[14]_2 ;
  input \sr[4]_i_3_0 ;
  input \badr[15]_INST_0_i_81_0 ;
  input \iv[15]_i_5_0 ;
  input ctl_fetch_ext_fl_reg_1;
  input [5:0]irq_vec;
  input \bdatw[8]_INST_0_i_40_0 ;
  input ctl_fetch_inferred_i_3_0;
  input \badr[15]_INST_0_i_109_0 ;
  input \ccmd[3]_INST_0_i_7_0 ;
  input \iv[15]_i_19_0 ;
  input ctl_fetch_inferred_i_22_0;
  input \sp[15]_i_2_0 ;
  input \stat[0]_i_8_0 ;
  input \iv[15]_i_56_0 ;
  input \stat_reg[1]_5 ;
  input \stat[0]_i_17_0 ;
  input \stat_reg[2]_9 ;
  input \stat[0]_i_2_1 ;
  input \stat[1]_i_11_0 ;
  input \iv[7]_i_2_1 ;
  input \iv[7]_i_2_2 ;
  input \iv[11]_i_6_1 ;
  input \iv[10]_i_2_2 ;
  input \sr[7]_i_6_2 ;
  input \iv[8]_i_2_5 ;
  input \iv[12]_i_7_0 ;
  input \grn_reg[15]_1 ;
  input \grn_reg[15]_2 ;
  input \grn_reg[15]_3 ;
  input [3:0]\sp_reg[15]_1 ;
  input [3:0]\sp_reg[11]_0 ;
  input [3:0]\sp_reg[7]_0 ;
  input [2:0]\sp_reg[3]_0 ;
  input [15:0]fch_pc;
  input \iv[0]_i_2_0 ;
  input \iv[3]_i_2_3 ;
  input \iv[14]_i_4_0 ;
  input \iv[14]_i_4_1 ;
  input \iv[8]_i_2_6 ;
  input \iv[4]_i_2_0 ;
  input \sr[6]_i_3_0 ;
  input \iv[0]_i_2_1 ;
  input \iv[0]_i_2_2 ;
  input \iv[1]_i_2_4 ;
  input \iv[10]_i_2_3 ;
  input \iv[10]_i_2_4 ;
  input \iv[14]_i_2_1 ;
  input \sr[6]_i_3_1 ;
  input \iv[11]_i_2_5 ;
  input [0:0]\sr_reg[6]_1 ;
  input [0:0]\sp_reg[0]_1 ;
  input [1:0]cpuid;
  input [1:0]irq_lev;
  input [0:0]SR;
  input [15:0]fdat;
     output [15:0]ir;
  input ccmd_2_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [11:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire [3:0]O;
  wire [2:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [15:0]abus_0;
  wire [15:0]abus_o;
  wire [3:3]alu_sr_flag;
  wire [15:0]badr;
  wire \badr[10]_INST_0_i_1 ;
  wire [3:0]\badr[10]_INST_0_i_1_0 ;
  wire \badr[14]_INST_0_i_1 ;
  wire [3:0]\badr[14]_INST_0_i_1_0 ;
  wire \badr[15]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_100_n_0 ;
  wire \badr[15]_INST_0_i_101_n_0 ;
  wire \badr[15]_INST_0_i_102_n_0 ;
  wire \badr[15]_INST_0_i_103_n_0 ;
  wire \badr[15]_INST_0_i_104_n_0 ;
  wire \badr[15]_INST_0_i_105_n_0 ;
  wire \badr[15]_INST_0_i_106_n_0 ;
  wire \badr[15]_INST_0_i_107_n_0 ;
  wire \badr[15]_INST_0_i_108_n_0 ;
  wire \badr[15]_INST_0_i_109_0 ;
  wire \badr[15]_INST_0_i_109_n_0 ;
  wire \badr[15]_INST_0_i_110_n_0 ;
  wire \badr[15]_INST_0_i_111_n_0 ;
  wire \badr[15]_INST_0_i_112_n_0 ;
  wire \badr[15]_INST_0_i_113_n_0 ;
  wire \badr[15]_INST_0_i_114_n_0 ;
  wire \badr[15]_INST_0_i_115_n_0 ;
  wire \badr[15]_INST_0_i_116_n_0 ;
  wire \badr[15]_INST_0_i_117_n_0 ;
  wire \badr[15]_INST_0_i_118_n_0 ;
  wire \badr[15]_INST_0_i_119_n_0 ;
  wire \badr[15]_INST_0_i_120_n_0 ;
  wire \badr[15]_INST_0_i_121_n_0 ;
  wire \badr[15]_INST_0_i_122_n_0 ;
  wire \badr[15]_INST_0_i_123_n_0 ;
  wire \badr[15]_INST_0_i_124_n_0 ;
  wire \badr[15]_INST_0_i_125_n_0 ;
  wire \badr[15]_INST_0_i_126_n_0 ;
  wire \badr[15]_INST_0_i_127_n_0 ;
  wire \badr[15]_INST_0_i_128_n_0 ;
  wire \badr[15]_INST_0_i_129_n_0 ;
  wire \badr[15]_INST_0_i_130_n_0 ;
  wire \badr[15]_INST_0_i_131_n_0 ;
  wire \badr[15]_INST_0_i_132_n_0 ;
  wire \badr[15]_INST_0_i_133_n_0 ;
  wire \badr[15]_INST_0_i_134_n_0 ;
  wire \badr[15]_INST_0_i_135_n_0 ;
  wire \badr[15]_INST_0_i_136_n_0 ;
  wire \badr[15]_INST_0_i_137_n_0 ;
  wire \badr[15]_INST_0_i_138_n_0 ;
  wire \badr[15]_INST_0_i_139_n_0 ;
  wire \badr[15]_INST_0_i_140_n_0 ;
  wire \badr[15]_INST_0_i_141_n_0 ;
  wire \badr[15]_INST_0_i_142_n_0 ;
  wire \badr[15]_INST_0_i_143_n_0 ;
  wire \badr[15]_INST_0_i_144_n_0 ;
  wire \badr[15]_INST_0_i_145_n_0 ;
  wire \badr[15]_INST_0_i_146_n_0 ;
  wire \badr[15]_INST_0_i_147_n_0 ;
  wire \badr[15]_INST_0_i_148_n_0 ;
  wire \badr[15]_INST_0_i_149_n_0 ;
  wire \badr[15]_INST_0_i_150_n_0 ;
  wire \badr[15]_INST_0_i_151_n_0 ;
  wire \badr[15]_INST_0_i_152_n_0 ;
  wire \badr[15]_INST_0_i_153_n_0 ;
  wire \badr[15]_INST_0_i_154_n_0 ;
  wire \badr[15]_INST_0_i_155_n_0 ;
  wire \badr[15]_INST_0_i_156_n_0 ;
  wire \badr[15]_INST_0_i_157_n_0 ;
  wire \badr[15]_INST_0_i_158_n_0 ;
  wire \badr[15]_INST_0_i_159_n_0 ;
  wire \badr[15]_INST_0_i_160_n_0 ;
  wire \badr[15]_INST_0_i_161_n_0 ;
  wire \badr[15]_INST_0_i_162_n_0 ;
  wire \badr[15]_INST_0_i_163_n_0 ;
  wire \badr[15]_INST_0_i_164_n_0 ;
  wire \badr[15]_INST_0_i_165_n_0 ;
  wire \badr[15]_INST_0_i_166_n_0 ;
  wire \badr[15]_INST_0_i_167_n_0 ;
  wire \badr[15]_INST_0_i_168_n_0 ;
  wire \badr[15]_INST_0_i_169_n_0 ;
  wire \badr[15]_INST_0_i_170_n_0 ;
  wire \badr[15]_INST_0_i_171_n_0 ;
  wire \badr[15]_INST_0_i_172_n_0 ;
  wire [3:0]\badr[15]_INST_0_i_1_0 ;
  wire [0:0]\badr[15]_INST_0_i_1_1 ;
  wire [1:0]\badr[15]_INST_0_i_1_2 ;
  wire [15:0]\badr[15]_INST_0_i_1_3 ;
  wire [15:0]\badr[15]_INST_0_i_2 ;
  wire \badr[15]_INST_0_i_27_n_0 ;
  wire \badr[15]_INST_0_i_28_n_0 ;
  wire \badr[15]_INST_0_i_29_n_0 ;
  wire \badr[15]_INST_0_i_30_n_0 ;
  wire [15:0]\badr[15]_INST_0_i_4 ;
  wire [15:0]\badr[15]_INST_0_i_5 ;
  wire [15:0]\badr[15]_INST_0_i_5_0 ;
  wire [15:0]\badr[15]_INST_0_i_5_1 ;
  wire \badr[15]_INST_0_i_68_n_0 ;
  wire \badr[15]_INST_0_i_69_n_0 ;
  wire \badr[15]_INST_0_i_70_n_0 ;
  wire \badr[15]_INST_0_i_71_n_0 ;
  wire \badr[15]_INST_0_i_72_n_0 ;
  wire \badr[15]_INST_0_i_80_n_0 ;
  wire \badr[15]_INST_0_i_81_0 ;
  wire \badr[15]_INST_0_i_81_n_0 ;
  wire \badr[15]_INST_0_i_82_n_0 ;
  wire \badr[15]_INST_0_i_83_n_0 ;
  wire \badr[15]_INST_0_i_84_n_0 ;
  wire \badr[15]_INST_0_i_85_n_0 ;
  wire \badr[15]_INST_0_i_86_n_0 ;
  wire \badr[15]_INST_0_i_87_n_0 ;
  wire \badr[15]_INST_0_i_90_n_0 ;
  wire \badr[15]_INST_0_i_91_n_0 ;
  wire \badr[15]_INST_0_i_92_n_0 ;
  wire \badr[15]_INST_0_i_93_n_0 ;
  wire \badr[15]_INST_0_i_94_n_0 ;
  wire \badr[15]_INST_0_i_95_n_0 ;
  wire \badr[15]_INST_0_i_96_n_0 ;
  wire \badr[15]_INST_0_i_97_n_0 ;
  wire \badr[15]_INST_0_i_98_n_0 ;
  wire \badr[15]_INST_0_i_99_n_0 ;
  wire [3:0]\badr[6]_INST_0_i_1 ;
  wire \badr[9]_INST_0_i_1 ;
  wire \badrx[15]_INST_0_i_2_n_0 ;
  wire \badrx[15]_INST_0_i_3_n_0 ;
  wire [3:0]bank_sel;
  wire [15:0]bbus_o;
  wire \bcmd[0]_INST_0_i_10_n_0 ;
  wire \bcmd[0]_INST_0_i_11_n_0 ;
  wire \bcmd[0]_INST_0_i_1_n_0 ;
  wire \bcmd[0]_INST_0_i_2_n_0 ;
  wire \bcmd[0]_INST_0_i_3_n_0 ;
  wire \bcmd[0]_INST_0_i_4_n_0 ;
  wire \bcmd[0]_INST_0_i_5_n_0 ;
  wire \bcmd[0]_INST_0_i_6_n_0 ;
  wire \bcmd[0]_INST_0_i_7_n_0 ;
  wire \bcmd[0]_INST_0_i_8_n_0 ;
  wire \bcmd[0]_INST_0_i_9_n_0 ;
  wire \bcmd[1] ;
  wire \bcmd[1]_INST_0_i_10_n_0 ;
  wire \bcmd[1]_INST_0_i_11_n_0 ;
  wire \bcmd[1]_INST_0_i_2_n_0 ;
  wire \bcmd[1]_INST_0_i_3_n_0 ;
  wire \bcmd[1]_INST_0_i_4_n_0 ;
  wire \bcmd[1]_INST_0_i_5_n_0 ;
  wire \bcmd[1]_INST_0_i_6_n_0 ;
  wire \bcmd[1]_INST_0_i_7_n_0 ;
  wire \bcmd[1]_INST_0_i_8_n_0 ;
  wire \bcmd[1]_INST_0_i_9_n_0 ;
  wire \bcmd[2] ;
  wire \bcmd[2]_INST_0_i_3_n_0 ;
  wire \bcmd[2]_INST_0_i_4_n_0 ;
  wire [1:0]bdatr;
  wire [15:0]bdatw;
  wire \bdatw[10]_INST_0_i_10_n_0 ;
  wire \bdatw[10]_INST_0_i_11_n_0 ;
  wire \bdatw[10]_INST_0_i_15_n_0 ;
  wire \bdatw[10]_INST_0_i_16_n_0 ;
  wire \bdatw[10]_INST_0_i_17_n_0 ;
  wire \bdatw[10]_INST_0_i_18_n_0 ;
  wire \bdatw[10]_INST_0_i_1_0 ;
  wire \bdatw[10]_INST_0_i_1_n_0 ;
  wire \bdatw[10]_INST_0_i_26_n_0 ;
  wire \bdatw[10]_INST_0_i_2_0 ;
  wire \bdatw[10]_INST_0_i_2_1 ;
  wire \bdatw[10]_INST_0_i_2_n_0 ;
  wire \bdatw[10]_INST_0_i_30_n_0 ;
  wire \bdatw[10]_INST_0_i_31_n_0 ;
  wire \bdatw[10]_INST_0_i_32_n_0 ;
  wire \bdatw[10]_INST_0_i_33_n_0 ;
  wire \bdatw[10]_INST_0_i_34_n_0 ;
  wire \bdatw[10]_INST_0_i_35_n_0 ;
  wire \bdatw[10]_INST_0_i_36_n_0 ;
  wire \bdatw[10]_INST_0_i_37_n_0 ;
  wire \bdatw[10]_INST_0_i_38_n_0 ;
  wire \bdatw[10]_INST_0_i_39_n_0 ;
  wire \bdatw[10]_INST_0_i_3_n_0 ;
  wire \bdatw[10]_INST_0_i_40_n_0 ;
  wire \bdatw[10]_INST_0_i_4_0 ;
  wire \bdatw[10]_INST_0_i_4_n_0 ;
  wire \bdatw[10]_INST_0_i_5_n_0 ;
  wire \bdatw[10]_INST_0_i_6_n_0 ;
  wire \bdatw[10]_INST_0_i_7_n_0 ;
  wire \bdatw[10]_INST_0_i_8_n_0 ;
  wire \bdatw[11]_INST_0_i_10_n_0 ;
  wire \bdatw[11]_INST_0_i_11_n_0 ;
  wire \bdatw[11]_INST_0_i_12_n_0 ;
  wire \bdatw[11]_INST_0_i_15_n_0 ;
  wire \bdatw[11]_INST_0_i_17_n_0 ;
  wire \bdatw[11]_INST_0_i_18_n_0 ;
  wire \bdatw[11]_INST_0_i_19_n_0 ;
  wire \bdatw[11]_INST_0_i_1_0 ;
  wire \bdatw[11]_INST_0_i_1_n_0 ;
  wire \bdatw[11]_INST_0_i_20_n_0 ;
  wire \bdatw[11]_INST_0_i_28_n_0 ;
  wire \bdatw[11]_INST_0_i_2_0 ;
  wire \bdatw[11]_INST_0_i_2_1 ;
  wire \bdatw[11]_INST_0_i_2_2 ;
  wire \bdatw[11]_INST_0_i_2_n_0 ;
  wire \bdatw[11]_INST_0_i_32_n_0 ;
  wire \bdatw[11]_INST_0_i_33_n_0 ;
  wire \bdatw[11]_INST_0_i_34_n_0 ;
  wire \bdatw[11]_INST_0_i_35_n_0 ;
  wire \bdatw[11]_INST_0_i_36_n_0 ;
  wire \bdatw[11]_INST_0_i_37_n_0 ;
  wire \bdatw[11]_INST_0_i_38_n_0 ;
  wire \bdatw[11]_INST_0_i_39_n_0 ;
  wire \bdatw[11]_INST_0_i_3_n_0 ;
  wire \bdatw[11]_INST_0_i_40_n_0 ;
  wire \bdatw[11]_INST_0_i_41_n_0 ;
  wire \bdatw[11]_INST_0_i_42_n_0 ;
  wire \bdatw[11]_INST_0_i_4_0 ;
  wire \bdatw[11]_INST_0_i_4_n_0 ;
  wire \bdatw[11]_INST_0_i_5_n_0 ;
  wire \bdatw[11]_INST_0_i_6_n_0 ;
  wire \bdatw[11]_INST_0_i_7_n_0 ;
  wire \bdatw[11]_INST_0_i_8_n_0 ;
  wire \bdatw[12]_INST_0_i_100_n_0 ;
  wire \bdatw[12]_INST_0_i_101_n_0 ;
  wire \bdatw[12]_INST_0_i_102_n_0 ;
  wire \bdatw[12]_INST_0_i_103_n_0 ;
  wire \bdatw[12]_INST_0_i_104_n_0 ;
  wire \bdatw[12]_INST_0_i_105_n_0 ;
  wire \bdatw[12]_INST_0_i_106_n_0 ;
  wire \bdatw[12]_INST_0_i_107_n_0 ;
  wire \bdatw[12]_INST_0_i_10_n_0 ;
  wire \bdatw[12]_INST_0_i_11_n_0 ;
  wire \bdatw[12]_INST_0_i_14_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_16_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_16_1 ;
  wire \bdatw[12]_INST_0_i_16_n_0 ;
  wire \bdatw[12]_INST_0_i_17_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_18_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_18_1 ;
  wire \bdatw[12]_INST_0_i_18_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_19_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_19_1 ;
  wire \bdatw[12]_INST_0_i_19_n_0 ;
  wire \bdatw[12]_INST_0_i_1_0 ;
  wire \bdatw[12]_INST_0_i_1_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_24_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_24_1 ;
  wire [4:0]\bdatw[12]_INST_0_i_25_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_25_1 ;
  wire \bdatw[12]_INST_0_i_27_n_0 ;
  wire \bdatw[12]_INST_0_i_28_n_0 ;
  wire \bdatw[12]_INST_0_i_2_0 ;
  wire \bdatw[12]_INST_0_i_2_1 ;
  wire \bdatw[12]_INST_0_i_2_2 ;
  wire \bdatw[12]_INST_0_i_2_3 ;
  wire \bdatw[12]_INST_0_i_2_4 ;
  wire \bdatw[12]_INST_0_i_2_5 ;
  wire \bdatw[12]_INST_0_i_31_n_0 ;
  wire \bdatw[12]_INST_0_i_37_n_0 ;
  wire \bdatw[12]_INST_0_i_3_n_0 ;
  wire \bdatw[12]_INST_0_i_40_n_0 ;
  wire \bdatw[12]_INST_0_i_42_n_0 ;
  wire \bdatw[12]_INST_0_i_43_n_0 ;
  wire \bdatw[12]_INST_0_i_46_n_0 ;
  wire \bdatw[12]_INST_0_i_47_n_0 ;
  wire \bdatw[12]_INST_0_i_4_0 ;
  wire \bdatw[12]_INST_0_i_4_n_0 ;
  wire \bdatw[12]_INST_0_i_56_n_0 ;
  wire \bdatw[12]_INST_0_i_57_n_0 ;
  wire \bdatw[12]_INST_0_i_5_n_0 ;
  wire \bdatw[12]_INST_0_i_60_n_0 ;
  wire \bdatw[12]_INST_0_i_61_n_0 ;
  wire \bdatw[12]_INST_0_i_63_n_0 ;
  wire \bdatw[12]_INST_0_i_64_n_0 ;
  wire \bdatw[12]_INST_0_i_65_n_0 ;
  wire \bdatw[12]_INST_0_i_66_n_0 ;
  wire \bdatw[12]_INST_0_i_67_n_0 ;
  wire \bdatw[12]_INST_0_i_68_n_0 ;
  wire \bdatw[12]_INST_0_i_69_n_0 ;
  wire \bdatw[12]_INST_0_i_6_n_0 ;
  wire \bdatw[12]_INST_0_i_70_n_0 ;
  wire \bdatw[12]_INST_0_i_71_n_0 ;
  wire \bdatw[12]_INST_0_i_72_n_0 ;
  wire \bdatw[12]_INST_0_i_73_n_0 ;
  wire \bdatw[12]_INST_0_i_7_n_0 ;
  wire \bdatw[12]_INST_0_i_84_n_0 ;
  wire \bdatw[12]_INST_0_i_85_n_0 ;
  wire \bdatw[12]_INST_0_i_86_n_0 ;
  wire \bdatw[12]_INST_0_i_87_n_0 ;
  wire \bdatw[12]_INST_0_i_88_n_0 ;
  wire \bdatw[12]_INST_0_i_89_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_8_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_8_1 ;
  wire [4:0]\bdatw[12]_INST_0_i_8_2 ;
  wire [4:0]\bdatw[12]_INST_0_i_8_3 ;
  wire [4:0]\bdatw[12]_INST_0_i_8_4 ;
  wire [4:0]\bdatw[12]_INST_0_i_8_5 ;
  wire \bdatw[12]_INST_0_i_8_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_9 ;
  wire \bdatw[12]_INST_0_i_90_n_0 ;
  wire \bdatw[12]_INST_0_i_91_n_0 ;
  wire \bdatw[12]_INST_0_i_92_n_0 ;
  wire \bdatw[12]_INST_0_i_93_n_0 ;
  wire \bdatw[12]_INST_0_i_94_n_0 ;
  wire \bdatw[12]_INST_0_i_95_n_0 ;
  wire \bdatw[12]_INST_0_i_96_n_0 ;
  wire \bdatw[12]_INST_0_i_97_n_0 ;
  wire \bdatw[12]_INST_0_i_98_n_0 ;
  wire \bdatw[12]_INST_0_i_99_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_9_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_9_1 ;
  wire [4:0]\bdatw[12]_INST_0_i_9_2 ;
  wire \bdatw[13]_INST_0_i_12_n_0 ;
  wire \bdatw[13]_INST_0_i_15_n_0 ;
  wire \bdatw[13]_INST_0_i_19_n_0 ;
  wire \bdatw[13]_INST_0_i_1_0 ;
  wire \bdatw[13]_INST_0_i_1_n_0 ;
  wire \bdatw[13]_INST_0_i_23_n_0 ;
  wire \bdatw[13]_INST_0_i_2_0 ;
  wire \bdatw[13]_INST_0_i_2_n_0 ;
  wire \bdatw[13]_INST_0_i_34_n_0 ;
  wire \bdatw[13]_INST_0_i_3_n_0 ;
  wire \bdatw[13]_INST_0_i_4_0 ;
  wire \bdatw[13]_INST_0_i_4_n_0 ;
  wire \bdatw[13]_INST_0_i_5_n_0 ;
  wire \bdatw[13]_INST_0_i_6_n_0 ;
  wire \bdatw[13]_INST_0_i_7_0 ;
  wire \bdatw[13]_INST_0_i_7_n_0 ;
  wire \bdatw[13]_INST_0_i_8_n_0 ;
  wire \bdatw[13]_INST_0_i_9_n_0 ;
  wire \bdatw[14]_INST_0_i_10_n_0 ;
  wire \bdatw[14]_INST_0_i_13_n_0 ;
  wire \bdatw[14]_INST_0_i_16_n_0 ;
  wire \bdatw[14]_INST_0_i_1_0 ;
  wire \bdatw[14]_INST_0_i_1_n_0 ;
  wire \bdatw[14]_INST_0_i_20_n_0 ;
  wire \bdatw[14]_INST_0_i_24_n_0 ;
  wire \bdatw[14]_INST_0_i_2_0 ;
  wire \bdatw[14]_INST_0_i_2_n_0 ;
  wire \bdatw[14]_INST_0_i_35_n_0 ;
  wire \bdatw[14]_INST_0_i_3_n_0 ;
  wire \bdatw[14]_INST_0_i_4_0 ;
  wire \bdatw[14]_INST_0_i_4_n_0 ;
  wire \bdatw[14]_INST_0_i_5_n_0 ;
  wire \bdatw[14]_INST_0_i_6_n_0 ;
  wire \bdatw[14]_INST_0_i_7_0 ;
  wire \bdatw[14]_INST_0_i_7_n_0 ;
  wire \bdatw[14]_INST_0_i_8_n_0 ;
  wire \bdatw[14]_INST_0_i_9_n_0 ;
  wire \bdatw[15]_INST_0_i_107_n_0 ;
  wire \bdatw[15]_INST_0_i_108_n_0 ;
  wire \bdatw[15]_INST_0_i_109_n_0 ;
  wire \bdatw[15]_INST_0_i_10_n_0 ;
  wire \bdatw[15]_INST_0_i_115_n_0 ;
  wire \bdatw[15]_INST_0_i_116_n_0 ;
  wire \bdatw[15]_INST_0_i_117_n_0 ;
  wire \bdatw[15]_INST_0_i_118_n_0 ;
  wire \bdatw[15]_INST_0_i_119_n_0 ;
  wire \bdatw[15]_INST_0_i_11_n_0 ;
  wire \bdatw[15]_INST_0_i_120_n_0 ;
  wire \bdatw[15]_INST_0_i_121_n_0 ;
  wire \bdatw[15]_INST_0_i_122_n_0 ;
  wire \bdatw[15]_INST_0_i_123_n_0 ;
  wire \bdatw[15]_INST_0_i_124_n_0 ;
  wire \bdatw[15]_INST_0_i_12_n_0 ;
  wire \bdatw[15]_INST_0_i_13_n_0 ;
  wire \bdatw[15]_INST_0_i_14_n_0 ;
  wire \bdatw[15]_INST_0_i_15_n_0 ;
  wire \bdatw[15]_INST_0_i_16_n_0 ;
  wire \bdatw[15]_INST_0_i_17_n_0 ;
  wire \bdatw[15]_INST_0_i_18_n_0 ;
  wire \bdatw[15]_INST_0_i_1_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_1_1 ;
  wire \bdatw[15]_INST_0_i_1_n_0 ;
  wire [10:0]\bdatw[15]_INST_0_i_22_0 ;
  wire [10:0]\bdatw[15]_INST_0_i_22_1 ;
  wire \bdatw[15]_INST_0_i_29_n_0 ;
  wire \bdatw[15]_INST_0_i_2_0 ;
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
  wire \bdatw[15]_INST_0_i_41_n_0 ;
  wire \bdatw[15]_INST_0_i_42_n_0 ;
  wire \bdatw[15]_INST_0_i_43_n_0 ;
  wire \bdatw[15]_INST_0_i_44_n_0 ;
  wire \bdatw[15]_INST_0_i_45_n_0 ;
  wire \bdatw[15]_INST_0_i_46_n_0 ;
  wire \bdatw[15]_INST_0_i_47_n_0 ;
  wire \bdatw[15]_INST_0_i_48_n_0 ;
  wire \bdatw[15]_INST_0_i_49_n_0 ;
  wire \bdatw[15]_INST_0_i_51_n_0 ;
  wire \bdatw[15]_INST_0_i_59_n_0 ;
  wire \bdatw[15]_INST_0_i_5_n_0 ;
  wire \bdatw[15]_INST_0_i_63_n_0 ;
  wire \bdatw[15]_INST_0_i_64_n_0 ;
  wire \bdatw[15]_INST_0_i_65_n_0 ;
  wire \bdatw[15]_INST_0_i_66_n_0 ;
  wire \bdatw[15]_INST_0_i_67_n_0 ;
  wire \bdatw[15]_INST_0_i_68_n_0 ;
  wire \bdatw[15]_INST_0_i_69_n_0 ;
  wire [10:0]\bdatw[15]_INST_0_i_6_0 ;
  wire [10:0]\bdatw[15]_INST_0_i_6_1 ;
  wire \bdatw[15]_INST_0_i_6_2 ;
  wire \bdatw[15]_INST_0_i_6_n_0 ;
  wire \bdatw[15]_INST_0_i_70_n_0 ;
  wire \bdatw[15]_INST_0_i_71_n_0 ;
  wire \bdatw[15]_INST_0_i_72_n_0 ;
  wire \bdatw[15]_INST_0_i_73_n_0 ;
  wire \bdatw[15]_INST_0_i_74_n_0 ;
  wire \bdatw[15]_INST_0_i_75_n_0 ;
  wire \bdatw[15]_INST_0_i_7_n_0 ;
  wire \bdatw[15]_INST_0_i_81_n_0 ;
  wire \bdatw[15]_INST_0_i_82_n_0 ;
  wire \bdatw[15]_INST_0_i_8_0 ;
  wire \bdatw[15]_INST_0_i_8_n_0 ;
  wire \bdatw[15]_INST_0_i_91_n_0 ;
  wire \bdatw[15]_INST_0_i_92_n_0 ;
  wire \bdatw[15]_INST_0_i_9_n_0 ;
  wire \bdatw[8]_INST_0_i_10_n_0 ;
  wire \bdatw[8]_INST_0_i_11_n_0 ;
  wire \bdatw[8]_INST_0_i_14_n_0 ;
  wire \bdatw[8]_INST_0_i_16_n_0 ;
  wire \bdatw[8]_INST_0_i_17_n_0 ;
  wire \bdatw[8]_INST_0_i_18_n_0 ;
  wire \bdatw[8]_INST_0_i_19_n_0 ;
  wire \bdatw[8]_INST_0_i_1_0 ;
  wire \bdatw[8]_INST_0_i_1_n_0 ;
  wire \bdatw[8]_INST_0_i_27_n_0 ;
  wire \bdatw[8]_INST_0_i_28_n_0 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_2_2 ;
  wire \bdatw[8]_INST_0_i_2_3 ;
  wire \bdatw[8]_INST_0_i_32_n_0 ;
  wire \bdatw[8]_INST_0_i_33_n_0 ;
  wire \bdatw[8]_INST_0_i_34_n_0 ;
  wire \bdatw[8]_INST_0_i_35_n_0 ;
  wire \bdatw[8]_INST_0_i_36_n_0 ;
  wire \bdatw[8]_INST_0_i_37_n_0 ;
  wire \bdatw[8]_INST_0_i_38_n_0 ;
  wire \bdatw[8]_INST_0_i_39_n_0 ;
  wire \bdatw[8]_INST_0_i_3_n_0 ;
  wire \bdatw[8]_INST_0_i_40_0 ;
  wire \bdatw[8]_INST_0_i_40_n_0 ;
  wire \bdatw[8]_INST_0_i_41_n_0 ;
  wire \bdatw[8]_INST_0_i_42_n_0 ;
  wire \bdatw[8]_INST_0_i_4_0 ;
  wire \bdatw[8]_INST_0_i_4_n_0 ;
  wire \bdatw[8]_INST_0_i_5_n_0 ;
  wire \bdatw[8]_INST_0_i_6_n_0 ;
  wire \bdatw[8]_INST_0_i_7_n_0 ;
  wire \bdatw[8]_INST_0_i_9_n_0 ;
  wire \bdatw[9]_INST_0_i_10_n_0 ;
  wire \bdatw[9]_INST_0_i_11_n_0 ;
  wire \bdatw[9]_INST_0_i_12_n_0 ;
  wire \bdatw[9]_INST_0_i_15_n_0 ;
  wire \bdatw[9]_INST_0_i_17_n_0 ;
  wire \bdatw[9]_INST_0_i_18_n_0 ;
  wire \bdatw[9]_INST_0_i_19_n_0 ;
  wire \bdatw[9]_INST_0_i_1_0 ;
  wire \bdatw[9]_INST_0_i_1_n_0 ;
  wire \bdatw[9]_INST_0_i_20_n_0 ;
  wire \bdatw[9]_INST_0_i_28_n_0 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_2_1 ;
  wire \bdatw[9]_INST_0_i_2_2 ;
  wire \bdatw[9]_INST_0_i_32_n_0 ;
  wire \bdatw[9]_INST_0_i_33_n_0 ;
  wire \bdatw[9]_INST_0_i_34_n_0 ;
  wire \bdatw[9]_INST_0_i_35_n_0 ;
  wire \bdatw[9]_INST_0_i_36_n_0 ;
  wire \bdatw[9]_INST_0_i_37_n_0 ;
  wire \bdatw[9]_INST_0_i_38_n_0 ;
  wire \bdatw[9]_INST_0_i_39_n_0 ;
  wire \bdatw[9]_INST_0_i_3_n_0 ;
  wire \bdatw[9]_INST_0_i_40_n_0 ;
  wire \bdatw[9]_INST_0_i_41_n_0 ;
  wire \bdatw[9]_INST_0_i_42_n_0 ;
  wire \bdatw[9]_INST_0_i_4_0 ;
  wire \bdatw[9]_INST_0_i_4_n_0 ;
  wire \bdatw[9]_INST_0_i_5_n_0 ;
  wire \bdatw[9]_INST_0_i_6_n_0 ;
  wire \bdatw[9]_INST_0_i_7_n_0 ;
  wire \bdatw[9]_INST_0_i_8_n_0 ;
  wire brdy;
  wire brdy_0;
  wire [15:0]cbus;
  wire [2:0]cbus_i;
  wire [4:0]ccmd;
  wire \ccmd[0]_INST_0_i_10_n_0 ;
  wire \ccmd[0]_INST_0_i_11_n_0 ;
  wire \ccmd[0]_INST_0_i_12_n_0 ;
  wire \ccmd[0]_INST_0_i_13_n_0 ;
  wire \ccmd[0]_INST_0_i_14_n_0 ;
  wire \ccmd[0]_INST_0_i_15_n_0 ;
  wire \ccmd[0]_INST_0_i_16_n_0 ;
  wire \ccmd[0]_INST_0_i_17_n_0 ;
  wire \ccmd[0]_INST_0_i_18_n_0 ;
  wire \ccmd[0]_INST_0_i_19_n_0 ;
  wire \ccmd[0]_INST_0_i_1_n_0 ;
  wire \ccmd[0]_INST_0_i_20_n_0 ;
  wire \ccmd[0]_INST_0_i_21_n_0 ;
  wire \ccmd[0]_INST_0_i_22_n_0 ;
  wire \ccmd[0]_INST_0_i_23_n_0 ;
  wire \ccmd[0]_INST_0_i_24_n_0 ;
  wire \ccmd[0]_INST_0_i_25_n_0 ;
  wire \ccmd[0]_INST_0_i_26_n_0 ;
  wire \ccmd[0]_INST_0_i_27_n_0 ;
  wire \ccmd[0]_INST_0_i_28_n_0 ;
  wire \ccmd[0]_INST_0_i_29_n_0 ;
  wire \ccmd[0]_INST_0_i_2_n_0 ;
  wire \ccmd[0]_INST_0_i_30_n_0 ;
  wire \ccmd[0]_INST_0_i_31_n_0 ;
  wire \ccmd[0]_INST_0_i_3_n_0 ;
  wire \ccmd[0]_INST_0_i_4_n_0 ;
  wire \ccmd[0]_INST_0_i_5_n_0 ;
  wire \ccmd[0]_INST_0_i_6_n_0 ;
  wire \ccmd[0]_INST_0_i_7_n_0 ;
  wire \ccmd[0]_INST_0_i_8_n_0 ;
  wire \ccmd[0]_INST_0_i_9_n_0 ;
  wire \ccmd[1]_INST_0_i_10_n_0 ;
  wire \ccmd[1]_INST_0_i_11_n_0 ;
  wire \ccmd[1]_INST_0_i_12_n_0 ;
  wire \ccmd[1]_INST_0_i_13_n_0 ;
  wire \ccmd[1]_INST_0_i_14_n_0 ;
  wire \ccmd[1]_INST_0_i_15_n_0 ;
  wire \ccmd[1]_INST_0_i_16_n_0 ;
  wire \ccmd[1]_INST_0_i_17_n_0 ;
  wire \ccmd[1]_INST_0_i_18_n_0 ;
  wire \ccmd[1]_INST_0_i_19_n_0 ;
  wire \ccmd[1]_INST_0_i_1_n_0 ;
  wire \ccmd[1]_INST_0_i_20_n_0 ;
  wire \ccmd[1]_INST_0_i_21_n_0 ;
  wire \ccmd[1]_INST_0_i_22_n_0 ;
  wire \ccmd[1]_INST_0_i_2_n_0 ;
  wire \ccmd[1]_INST_0_i_3_n_0 ;
  wire \ccmd[1]_INST_0_i_4_n_0 ;
  wire \ccmd[1]_INST_0_i_5_n_0 ;
  wire \ccmd[1]_INST_0_i_6_n_0 ;
  wire \ccmd[1]_INST_0_i_7_n_0 ;
  wire \ccmd[1]_INST_0_i_9_n_0 ;
  wire \ccmd[2]_INST_0_i_1 ;
  wire \ccmd[2]_INST_0_i_10_n_0 ;
  wire \ccmd[2]_INST_0_i_11_n_0 ;
  wire \ccmd[2]_INST_0_i_12_n_0 ;
  wire \ccmd[2]_INST_0_i_13_n_0 ;
  wire \ccmd[2]_INST_0_i_14_n_0 ;
  wire \ccmd[2]_INST_0_i_15_n_0 ;
  wire \ccmd[2]_INST_0_i_16_n_0 ;
  wire \ccmd[2]_INST_0_i_17_n_0 ;
  wire \ccmd[2]_INST_0_i_18_n_0 ;
  wire \ccmd[2]_INST_0_i_19_n_0 ;
  wire \ccmd[2]_INST_0_i_20_n_0 ;
  wire \ccmd[2]_INST_0_i_21_n_0 ;
  wire \ccmd[2]_INST_0_i_22_n_0 ;
  wire \ccmd[2]_INST_0_i_23_n_0 ;
  wire \ccmd[2]_INST_0_i_24_n_0 ;
  wire \ccmd[2]_INST_0_i_25_n_0 ;
  wire \ccmd[2]_INST_0_i_26_n_0 ;
  wire \ccmd[2]_INST_0_i_27_n_0 ;
  wire \ccmd[2]_INST_0_i_28_n_0 ;
  wire \ccmd[2]_INST_0_i_29_n_0 ;
  wire \ccmd[2]_INST_0_i_2_n_0 ;
  wire \ccmd[2]_INST_0_i_30_n_0 ;
  wire \ccmd[2]_INST_0_i_31_n_0 ;
  wire \ccmd[2]_INST_0_i_4_n_0 ;
  wire \ccmd[2]_INST_0_i_5_n_0 ;
  wire \ccmd[2]_INST_0_i_6_n_0 ;
  wire \ccmd[2]_INST_0_i_7_n_0 ;
  wire \ccmd[2]_INST_0_i_9_n_0 ;
  wire \ccmd[3]_INST_0_i_10_n_0 ;
  wire \ccmd[3]_INST_0_i_11_n_0 ;
  wire \ccmd[3]_INST_0_i_12_n_0 ;
  wire \ccmd[3]_INST_0_i_13_n_0 ;
  wire \ccmd[3]_INST_0_i_14_n_0 ;
  wire \ccmd[3]_INST_0_i_15_n_0 ;
  wire \ccmd[3]_INST_0_i_16_n_0 ;
  wire \ccmd[3]_INST_0_i_18_n_0 ;
  wire \ccmd[3]_INST_0_i_1_n_0 ;
  wire \ccmd[3]_INST_0_i_2_n_0 ;
  wire \ccmd[3]_INST_0_i_3_n_0 ;
  wire \ccmd[3]_INST_0_i_4_n_0 ;
  wire \ccmd[3]_INST_0_i_5_n_0 ;
  wire \ccmd[3]_INST_0_i_6_n_0 ;
  wire \ccmd[3]_INST_0_i_7_0 ;
  wire \ccmd[3]_INST_0_i_7_n_0 ;
  wire \ccmd[3]_INST_0_i_8_n_0 ;
  wire \ccmd[3]_INST_0_i_9_n_0 ;
  wire \ccmd[4]_INST_0_i_10_n_0 ;
  wire \ccmd[4]_INST_0_i_11_n_0 ;
  wire \ccmd[4]_INST_0_i_12_n_0 ;
  wire \ccmd[4]_INST_0_i_13_n_0 ;
  wire \ccmd[4]_INST_0_i_14_n_0 ;
  wire \ccmd[4]_INST_0_i_15_n_0 ;
  wire \ccmd[4]_INST_0_i_16_n_0 ;
  wire \ccmd[4]_INST_0_i_17_n_0 ;
  wire \ccmd[4]_INST_0_i_18_n_0 ;
  wire \ccmd[4]_INST_0_i_19_n_0 ;
  wire \ccmd[4]_INST_0_i_20_n_0 ;
  wire \ccmd[4]_INST_0_i_2_n_0 ;
  wire \ccmd[4]_INST_0_i_3_n_0 ;
  wire \ccmd[4]_INST_0_i_4_n_0 ;
  wire \ccmd[4]_INST_0_i_5_n_0 ;
  wire \ccmd[4]_INST_0_i_6_n_0 ;
  wire \ccmd[4]_INST_0_i_7_n_0 ;
  wire \ccmd[4]_INST_0_i_8_n_0 ;
  wire \ccmd[4]_INST_0_i_9_n_0 ;
  wire ccmd_2_sn_1;
  wire clk;
  wire [1:0]cpuid;
  wire crdy;
  wire crdy_0;
  wire ctl_fetch_ext;
  wire ctl_fetch_ext_fl;
  wire ctl_fetch_ext_fl_i_2_n_0;
  wire ctl_fetch_ext_fl_i_5_n_0;
  wire ctl_fetch_ext_fl_i_6_n_0;
  wire ctl_fetch_ext_fl_i_7_n_0;
  wire ctl_fetch_ext_fl_reg_0;
  wire ctl_fetch_ext_fl_reg_1;
  wire ctl_fetch_fl;
  wire ctl_fetch_fl_reg_0;
  wire ctl_fetch_fl_reg_1;
  wire ctl_fetch_inferred_i_10_n_0;
  wire ctl_fetch_inferred_i_12_n_0;
  wire ctl_fetch_inferred_i_13_n_0;
  wire ctl_fetch_inferred_i_14_n_0;
  wire ctl_fetch_inferred_i_15_n_0;
  wire ctl_fetch_inferred_i_16_n_0;
  wire ctl_fetch_inferred_i_17_n_0;
  wire ctl_fetch_inferred_i_18_n_0;
  wire ctl_fetch_inferred_i_19_n_0;
  wire ctl_fetch_inferred_i_20_n_0;
  wire ctl_fetch_inferred_i_21_n_0;
  wire ctl_fetch_inferred_i_22_0;
  wire ctl_fetch_inferred_i_22_n_0;
  wire ctl_fetch_inferred_i_23_n_0;
  wire ctl_fetch_inferred_i_24_n_0;
  wire ctl_fetch_inferred_i_26_n_0;
  wire ctl_fetch_inferred_i_27_n_0;
  wire ctl_fetch_inferred_i_28_n_0;
  wire ctl_fetch_inferred_i_29_n_0;
  wire ctl_fetch_inferred_i_2_0;
  wire ctl_fetch_inferred_i_2_n_0;
  wire ctl_fetch_inferred_i_31_n_0;
  wire ctl_fetch_inferred_i_32_n_0;
  wire ctl_fetch_inferred_i_33_n_0;
  wire ctl_fetch_inferred_i_34_n_0;
  wire ctl_fetch_inferred_i_35_n_0;
  wire ctl_fetch_inferred_i_36_n_0;
  wire ctl_fetch_inferred_i_37_n_0;
  wire ctl_fetch_inferred_i_38_n_0;
  wire ctl_fetch_inferred_i_39_n_0;
  wire ctl_fetch_inferred_i_3_0;
  wire ctl_fetch_inferred_i_3_n_0;
  wire ctl_fetch_inferred_i_40_n_0;
  wire ctl_fetch_inferred_i_41_n_0;
  wire ctl_fetch_inferred_i_42_n_0;
  wire ctl_fetch_inferred_i_43_n_0;
  wire ctl_fetch_inferred_i_45_n_0;
  wire ctl_fetch_inferred_i_46_n_0;
  wire ctl_fetch_inferred_i_47_n_0;
  wire ctl_fetch_inferred_i_4_n_0;
  wire ctl_fetch_inferred_i_5_n_0;
  wire ctl_fetch_inferred_i_6_n_0;
  wire ctl_fetch_inferred_i_7_n_0;
  wire ctl_fetch_inferred_i_8_n_0;
  wire ctl_fetch_inferred_i_9_n_0;
  wire [0:0]ctl_sela;
  wire [1:0]ctl_sela_rn;
  wire [0:0]ctl_selb_0;
  wire [1:0]ctl_selb_rn;
  wire [1:1]ctl_selc;
  wire [0:0]ctl_selc_rn;
  wire ctl_sp_dec;
  wire ctl_sp_inc;
  wire ctl_sr_ldie;
  wire ctl_sr_upd;
  (* DONT_TOUCH *) wire [15:0]eir;
  wire eir_fl0;
  wire \eir_fl[15]_i_1_n_0 ;
  wire \eir_fl[1]_i_1_n_0 ;
  wire \eir_fl[2]_i_1_n_0 ;
  wire \eir_fl[3]_i_1_n_0 ;
  wire \eir_fl[4]_i_1_n_0 ;
  wire \eir_fl[5]_i_1_n_0 ;
  wire \eir_fl[6]_i_2_n_0 ;
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
  wire \fch_irq_lev[1]_i_3_n_0 ;
  wire fch_irq_req;
  wire fch_irq_req_fl;
  wire [15:0]fch_pc;
  wire [15:0]fdat;
  wire gr0_bus1__0;
  wire gr0_bus1__0_21;
  wire gr0_bus1__0_29;
  wire gr0_bus1__0_37;
  wire gr0_bus1__0_43;
  wire gr0_bus1__0_9;
  wire gr1_bus1__0;
  wire gr1_bus1__0_16;
  wire gr1_bus1__0_2;
  wire gr1_bus1__0_22;
  wire gr1_bus1__0_34;
  wire gr1_bus1__0_40;
  wire gr2_bus1__0;
  wire gr2_bus1__0_11;
  wire gr2_bus1__0_14;
  wire gr2_bus1__0_23;
  wire gr2_bus1__0_3;
  wire gr2_bus1__0_35;
  wire gr2_bus1__0_41;
  wire gr3_bus1__0;
  wire gr3_bus1__0_10;
  wire gr3_bus1__0_15;
  wire gr3_bus1__0_24;
  wire gr3_bus1__0_30;
  wire gr3_bus1__0_4;
  wire gr4_bus1__0;
  wire gr4_bus1__0_0;
  wire gr4_bus1__0_12;
  wire gr4_bus1__0_17;
  wire gr4_bus1__0_25;
  wire gr4_bus1__0_32;
  wire gr4_bus1__0_5;
  wire gr5_bus1__0;
  wire gr5_bus1__0_1;
  wire gr5_bus1__0_13;
  wire gr5_bus1__0_20;
  wire gr5_bus1__0_26;
  wire gr5_bus1__0_33;
  wire gr5_bus1__0_38;
  wire gr5_bus1__0_6;
  wire gr6_bus1__0;
  wire gr6_bus1__0_18;
  wire gr6_bus1__0_27;
  wire gr6_bus1__0_31;
  wire gr6_bus1__0_39;
  wire gr6_bus1__0_7;
  wire gr7_bus1__0;
  wire gr7_bus1__0_19;
  wire gr7_bus1__0_28;
  wire gr7_bus1__0_36;
  wire gr7_bus1__0_42;
  wire gr7_bus1__0_8;
  wire \grn_reg[0] ;
  wire \grn_reg[0]_0 ;
  wire \grn_reg[0]_1 ;
  wire \grn_reg[0]_2 ;
  wire \grn_reg[0]_3 ;
  wire \grn_reg[10] ;
  wire \grn_reg[10]_0 ;
  wire \grn_reg[11] ;
  wire \grn_reg[11]_0 ;
  wire \grn_reg[12] ;
  wire \grn_reg[12]_0 ;
  wire \grn_reg[13] ;
  wire \grn_reg[13]_0 ;
  wire \grn_reg[14] ;
  wire \grn_reg[14]_0 ;
  wire \grn_reg[15] ;
  wire \grn_reg[15]_0 ;
  wire \grn_reg[15]_1 ;
  wire \grn_reg[15]_2 ;
  wire \grn_reg[15]_3 ;
  wire \grn_reg[1] ;
  wire \grn_reg[1]_0 ;
  wire \grn_reg[1]_1 ;
  wire \grn_reg[1]_2 ;
  wire \grn_reg[1]_3 ;
  wire \grn_reg[2] ;
  wire \grn_reg[2]_0 ;
  wire \grn_reg[2]_1 ;
  wire \grn_reg[2]_2 ;
  wire \grn_reg[2]_3 ;
  wire \grn_reg[3] ;
  wire \grn_reg[3]_0 ;
  wire \grn_reg[3]_1 ;
  wire \grn_reg[3]_2 ;
  wire \grn_reg[3]_3 ;
  wire \grn_reg[4] ;
  wire \grn_reg[4]_0 ;
  wire \grn_reg[4]_1 ;
  wire \grn_reg[4]_2 ;
  wire \grn_reg[4]_3 ;
  wire \grn_reg[5] ;
  wire \grn_reg[5]_0 ;
  wire \grn_reg[6] ;
  wire \grn_reg[6]_0 ;
  wire \grn_reg[7] ;
  wire \grn_reg[7]_0 ;
  wire \grn_reg[8] ;
  wire \grn_reg[8]_0 ;
  wire \grn_reg[9] ;
  wire \grn_reg[9]_0 ;
  wire in0;
  (* DONT_TOUCH *) wire [15:0]ir;
  wire [15:0]ir_fl;
  wire [1:0]irq_lev;
  wire [5:0]irq_vec;
  wire \iv[0]_i_10_n_0 ;
  wire \iv[0]_i_11_n_0 ;
  wire \iv[0]_i_12_n_0 ;
  wire \iv[0]_i_15_n_0 ;
  wire \iv[0]_i_17_n_0 ;
  wire \iv[0]_i_2_0 ;
  wire \iv[0]_i_2_1 ;
  wire \iv[0]_i_2_2 ;
  wire \iv[0]_i_2_n_0 ;
  wire \iv[0]_i_4_n_0 ;
  wire \iv[0]_i_5_n_0 ;
  wire \iv[0]_i_6_n_0 ;
  wire \iv[0]_i_7_n_0 ;
  wire \iv[0]_i_8_0 ;
  wire \iv[0]_i_8_1 ;
  wire \iv[0]_i_8_n_0 ;
  wire \iv[0]_i_9_n_0 ;
  wire \iv[10]_i_10_n_0 ;
  wire \iv[10]_i_11_n_0 ;
  wire \iv[10]_i_13_n_0 ;
  wire \iv[10]_i_15_n_0 ;
  wire \iv[10]_i_17_n_0 ;
  wire \iv[10]_i_18_n_0 ;
  wire \iv[10]_i_19_n_0 ;
  wire \iv[10]_i_23_n_0 ;
  wire \iv[10]_i_24_n_0 ;
  wire \iv[10]_i_2_0 ;
  wire \iv[10]_i_2_1 ;
  wire \iv[10]_i_2_2 ;
  wire \iv[10]_i_2_3 ;
  wire \iv[10]_i_2_4 ;
  wire \iv[10]_i_2_n_0 ;
  wire \iv[10]_i_4_n_0 ;
  wire \iv[10]_i_5_n_0 ;
  wire \iv[10]_i_6_n_0 ;
  wire \iv[10]_i_7_n_0 ;
  wire \iv[10]_i_8_n_0 ;
  wire \iv[10]_i_9_0 ;
  wire \iv[10]_i_9_n_0 ;
  wire \iv[11]_i_11_n_0 ;
  wire \iv[11]_i_12_n_0 ;
  wire \iv[11]_i_13_n_0 ;
  wire \iv[11]_i_14_n_0 ;
  wire \iv[11]_i_21_n_0 ;
  wire \iv[11]_i_22_n_0 ;
  wire \iv[11]_i_24_n_0 ;
  wire \iv[11]_i_2_0 ;
  wire \iv[11]_i_2_1 ;
  wire \iv[11]_i_2_2 ;
  wire \iv[11]_i_2_3 ;
  wire \iv[11]_i_2_4 ;
  wire \iv[11]_i_2_5 ;
  wire \iv[11]_i_2_n_0 ;
  wire \iv[11]_i_4_n_0 ;
  wire \iv[11]_i_5_n_0 ;
  wire \iv[11]_i_6_0 ;
  wire \iv[11]_i_6_1 ;
  wire \iv[11]_i_6_n_0 ;
  wire \iv[11]_i_7_n_0 ;
  wire \iv[11]_i_8_0 ;
  wire \iv[11]_i_8_n_0 ;
  wire \iv[11]_i_9_n_0 ;
  wire \iv[12]_i_11_n_0 ;
  wire \iv[12]_i_12_n_0 ;
  wire \iv[12]_i_13_n_0 ;
  wire \iv[12]_i_14_n_0 ;
  wire \iv[12]_i_15_n_0 ;
  wire \iv[12]_i_16_n_0 ;
  wire \iv[12]_i_18_n_0 ;
  wire \iv[12]_i_19_n_0 ;
  wire \iv[12]_i_2_0 ;
  wire \iv[12]_i_2_n_0 ;
  wire \iv[12]_i_4_n_0 ;
  wire \iv[12]_i_5_n_0 ;
  wire \iv[12]_i_6_0 ;
  wire \iv[12]_i_6_1 ;
  wire \iv[12]_i_6_n_0 ;
  wire \iv[12]_i_7_0 ;
  wire \iv[12]_i_7_n_0 ;
  wire \iv[12]_i_8_n_0 ;
  wire \iv[12]_i_9_n_0 ;
  wire \iv[13]_i_10_n_0 ;
  wire \iv[13]_i_11_n_0 ;
  wire \iv[13]_i_13_n_0 ;
  wire \iv[13]_i_14_n_0 ;
  wire \iv[13]_i_20_n_0 ;
  wire \iv[13]_i_21_n_0 ;
  wire \iv[13]_i_2_0 ;
  wire \iv[13]_i_2_1 ;
  wire \iv[13]_i_2_2 ;
  wire \iv[13]_i_2_n_0 ;
  wire \iv[13]_i_3_n_0 ;
  wire \iv[13]_i_5_n_0 ;
  wire \iv[13]_i_6_0 ;
  wire \iv[13]_i_6_n_0 ;
  wire \iv[13]_i_8_n_0 ;
  wire \iv[13]_i_9_n_0 ;
  wire \iv[14]_i_10_n_0 ;
  wire \iv[14]_i_11_n_0 ;
  wire \iv[14]_i_12_n_0 ;
  wire \iv[14]_i_13_n_0 ;
  wire \iv[14]_i_15_n_0 ;
  wire \iv[14]_i_16_n_0 ;
  wire \iv[14]_i_18_n_0 ;
  wire \iv[14]_i_19_n_0 ;
  wire \iv[14]_i_20_n_0 ;
  wire \iv[14]_i_22_n_0 ;
  wire \iv[14]_i_23_n_0 ;
  wire \iv[14]_i_24_n_0 ;
  wire \iv[14]_i_25_0 ;
  wire \iv[14]_i_25_n_0 ;
  wire \iv[14]_i_26_n_0 ;
  wire \iv[14]_i_2_0 ;
  wire \iv[14]_i_2_1 ;
  wire \iv[14]_i_2_n_0 ;
  wire \iv[14]_i_32_n_0 ;
  wire \iv[14]_i_33_n_0 ;
  wire \iv[14]_i_38_n_0 ;
  wire \iv[14]_i_3_n_0 ;
  wire \iv[14]_i_4_0 ;
  wire \iv[14]_i_4_1 ;
  wire \iv[14]_i_4_n_0 ;
  wire \iv[14]_i_5_n_0 ;
  wire \iv[14]_i_6_n_0 ;
  wire \iv[14]_i_9_n_0 ;
  wire \iv[15]_i_100_n_0 ;
  wire \iv[15]_i_101_n_0 ;
  wire \iv[15]_i_102_n_0 ;
  wire \iv[15]_i_103_n_0 ;
  wire \iv[15]_i_104_n_0 ;
  wire \iv[15]_i_105_n_0 ;
  wire \iv[15]_i_106_n_0 ;
  wire \iv[15]_i_107_n_0 ;
  wire \iv[15]_i_108_n_0 ;
  wire \iv[15]_i_109_n_0 ;
  wire \iv[15]_i_10_n_0 ;
  wire \iv[15]_i_110_n_0 ;
  wire \iv[15]_i_111_n_0 ;
  wire \iv[15]_i_112_n_0 ;
  wire \iv[15]_i_113_n_0 ;
  wire \iv[15]_i_114_n_0 ;
  wire \iv[15]_i_116_n_0 ;
  wire \iv[15]_i_117_n_0 ;
  wire \iv[15]_i_118_n_0 ;
  wire \iv[15]_i_119_n_0 ;
  wire \iv[15]_i_11_n_0 ;
  wire \iv[15]_i_120_n_0 ;
  wire \iv[15]_i_121_n_0 ;
  wire \iv[15]_i_122_n_0 ;
  wire \iv[15]_i_123_n_0 ;
  wire \iv[15]_i_124_n_0 ;
  wire \iv[15]_i_125_n_0 ;
  wire \iv[15]_i_126_n_0 ;
  wire \iv[15]_i_127_n_0 ;
  wire \iv[15]_i_128_n_0 ;
  wire \iv[15]_i_129_n_0 ;
  wire \iv[15]_i_12_n_0 ;
  wire \iv[15]_i_13_n_0 ;
  wire \iv[15]_i_14_n_0 ;
  wire \iv[15]_i_15_n_0 ;
  wire \iv[15]_i_16_n_0 ;
  wire \iv[15]_i_17_n_0 ;
  wire \iv[15]_i_19_0 ;
  wire \iv[15]_i_20_n_0 ;
  wire \iv[15]_i_21_n_0 ;
  wire \iv[15]_i_22_n_0 ;
  wire \iv[15]_i_23_n_0 ;
  wire \iv[15]_i_24_n_0 ;
  wire \iv[15]_i_25_n_0 ;
  wire \iv[15]_i_26_n_0 ;
  wire \iv[15]_i_27_n_0 ;
  wire \iv[15]_i_28_n_0 ;
  wire \iv[15]_i_30_n_0 ;
  wire \iv[15]_i_31_n_0 ;
  wire \iv[15]_i_32_n_0 ;
  wire \iv[15]_i_33_n_0 ;
  wire \iv[15]_i_34_n_0 ;
  wire \iv[15]_i_35_n_0 ;
  wire \iv[15]_i_36_n_0 ;
  wire \iv[15]_i_37_n_0 ;
  wire \iv[15]_i_38_n_0 ;
  wire \iv[15]_i_39_n_0 ;
  wire \iv[15]_i_41_n_0 ;
  wire \iv[15]_i_43_n_0 ;
  wire \iv[15]_i_44_n_0 ;
  wire \iv[15]_i_45_n_0 ;
  wire \iv[15]_i_46_n_0 ;
  wire \iv[15]_i_47_n_0 ;
  wire \iv[15]_i_4_0 ;
  wire \iv[15]_i_4_n_0 ;
  wire \iv[15]_i_51_n_0 ;
  wire \iv[15]_i_52_n_0 ;
  wire \iv[15]_i_53_n_0 ;
  wire \iv[15]_i_54_n_0 ;
  wire \iv[15]_i_55_n_0 ;
  wire \iv[15]_i_56_0 ;
  wire \iv[15]_i_56_n_0 ;
  wire \iv[15]_i_57_n_0 ;
  wire \iv[15]_i_58_n_0 ;
  wire \iv[15]_i_59_n_0 ;
  wire \iv[15]_i_5_0 ;
  wire \iv[15]_i_5_n_0 ;
  wire \iv[15]_i_60_n_0 ;
  wire \iv[15]_i_61_n_0 ;
  wire \iv[15]_i_62_n_0 ;
  wire \iv[15]_i_63_n_0 ;
  wire \iv[15]_i_64_n_0 ;
  wire \iv[15]_i_65_n_0 ;
  wire \iv[15]_i_66_n_0 ;
  wire \iv[15]_i_67_n_0 ;
  wire \iv[15]_i_68_n_0 ;
  wire \iv[15]_i_69_n_0 ;
  wire \iv[15]_i_70_n_0 ;
  wire \iv[15]_i_71_n_0 ;
  wire \iv[15]_i_72_n_0 ;
  wire \iv[15]_i_73_n_0 ;
  wire \iv[15]_i_74_n_0 ;
  wire \iv[15]_i_75_n_0 ;
  wire \iv[15]_i_76_n_0 ;
  wire \iv[15]_i_77_n_0 ;
  wire \iv[15]_i_78_n_0 ;
  wire \iv[15]_i_79_n_0 ;
  wire \iv[15]_i_7_n_0 ;
  wire \iv[15]_i_80_n_0 ;
  wire \iv[15]_i_81_n_0 ;
  wire \iv[15]_i_82_n_0 ;
  wire \iv[15]_i_83_n_0 ;
  wire \iv[15]_i_84_n_0 ;
  wire \iv[15]_i_85_n_0 ;
  wire \iv[15]_i_86_n_0 ;
  wire \iv[15]_i_87_n_0 ;
  wire \iv[15]_i_88_n_0 ;
  wire \iv[15]_i_8_n_0 ;
  wire \iv[15]_i_90_n_0 ;
  wire \iv[15]_i_91_n_0 ;
  wire \iv[15]_i_92_n_0 ;
  wire \iv[15]_i_93_n_0 ;
  wire \iv[15]_i_94_n_0 ;
  wire \iv[15]_i_95_n_0 ;
  wire \iv[15]_i_96_n_0 ;
  wire \iv[15]_i_97_n_0 ;
  wire \iv[15]_i_98_n_0 ;
  wire \iv[15]_i_99_n_0 ;
  wire \iv[15]_i_9_n_0 ;
  wire \iv[1]_i_10_n_0 ;
  wire \iv[1]_i_11_n_0 ;
  wire \iv[1]_i_12_n_0 ;
  wire \iv[1]_i_13_n_0 ;
  wire \iv[1]_i_2_0 ;
  wire \iv[1]_i_2_1 ;
  wire \iv[1]_i_2_2 ;
  wire \iv[1]_i_2_3 ;
  wire \iv[1]_i_2_4 ;
  wire \iv[1]_i_2_n_0 ;
  wire \iv[1]_i_4_n_0 ;
  wire \iv[1]_i_5_n_0 ;
  wire \iv[1]_i_6_n_0 ;
  wire \iv[1]_i_7_n_0 ;
  wire \iv[1]_i_9_n_0 ;
  wire \iv[2]_i_11_n_0 ;
  wire \iv[2]_i_14_n_0 ;
  wire \iv[2]_i_15_n_0 ;
  wire \iv[2]_i_16_n_0 ;
  wire \iv[2]_i_17_n_0 ;
  wire \iv[2]_i_18_n_0 ;
  wire \iv[2]_i_19_n_0 ;
  wire \iv[2]_i_26_n_0 ;
  wire \iv[2]_i_27_n_0 ;
  wire \iv[2]_i_3_n_0 ;
  wire \iv[2]_i_4_0 ;
  wire \iv[2]_i_4_n_0 ;
  wire \iv[2]_i_5_n_0 ;
  wire \iv[3]_i_10_n_0 ;
  wire \iv[3]_i_11_n_0 ;
  wire \iv[3]_i_14_n_0 ;
  wire \iv[3]_i_2_0 ;
  wire \iv[3]_i_2_1 ;
  wire \iv[3]_i_2_2 ;
  wire \iv[3]_i_2_3 ;
  wire \iv[3]_i_2_n_0 ;
  wire \iv[3]_i_4_n_0 ;
  wire \iv[3]_i_5_n_0 ;
  wire \iv[3]_i_6_n_0 ;
  wire \iv[3]_i_8_0 ;
  wire \iv[3]_i_8_1 ;
  wire \iv[3]_i_8_n_0 ;
  wire \iv[3]_i_9_n_0 ;
  wire \iv[4]_i_10_n_0 ;
  wire \iv[4]_i_11_n_0 ;
  wire \iv[4]_i_12_n_0 ;
  wire \iv[4]_i_13_n_0 ;
  wire \iv[4]_i_15_n_0 ;
  wire \iv[4]_i_16_n_0 ;
  wire \iv[4]_i_17_n_0 ;
  wire \iv[4]_i_18_n_0 ;
  wire \iv[4]_i_2_0 ;
  wire \iv[4]_i_2_n_0 ;
  wire \iv[4]_i_4_n_0 ;
  wire \iv[4]_i_5_n_0 ;
  wire \iv[4]_i_6_0 ;
  wire \iv[4]_i_6_1 ;
  wire \iv[4]_i_6_n_0 ;
  wire \iv[4]_i_7_n_0 ;
  wire \iv[4]_i_8_0 ;
  wire \iv[4]_i_8_1 ;
  wire \iv[4]_i_8_n_0 ;
  wire \iv[4]_i_9_n_0 ;
  wire \iv[5]_i_10_n_0 ;
  wire \iv[5]_i_11_n_0 ;
  wire \iv[5]_i_2_0 ;
  wire \iv[5]_i_2_1 ;
  wire \iv[5]_i_2_n_0 ;
  wire \iv[5]_i_4_n_0 ;
  wire \iv[5]_i_5_n_0 ;
  wire \iv[5]_i_7_n_0 ;
  wire \iv[5]_i_9_n_0 ;
  wire \iv[6]_i_10_n_0 ;
  wire \iv[6]_i_11_n_0 ;
  wire \iv[6]_i_12_n_0 ;
  wire \iv[6]_i_2_0 ;
  wire \iv[6]_i_2_1 ;
  wire \iv[6]_i_2_2 ;
  wire \iv[6]_i_2_n_0 ;
  wire \iv[6]_i_4_n_0 ;
  wire \iv[6]_i_5_n_0 ;
  wire \iv[6]_i_6_n_0 ;
  wire \iv[6]_i_7_n_0 ;
  wire \iv[6]_i_9_n_0 ;
  wire \iv[7]_i_11_n_0 ;
  wire \iv[7]_i_12_n_0 ;
  wire \iv[7]_i_13_n_0 ;
  wire \iv[7]_i_16_n_0 ;
  wire \iv[7]_i_21_n_0 ;
  wire \iv[7]_i_2_0 ;
  wire \iv[7]_i_2_1 ;
  wire \iv[7]_i_2_2 ;
  wire \iv[7]_i_2_n_0 ;
  wire \iv[7]_i_4_n_0 ;
  wire \iv[7]_i_5_n_0 ;
  wire \iv[7]_i_8_n_0 ;
  wire \iv[7]_i_9_n_0 ;
  wire \iv[8]_i_10_n_0 ;
  wire \iv[8]_i_11_n_0 ;
  wire \iv[8]_i_13_n_0 ;
  wire \iv[8]_i_14_n_0 ;
  wire \iv[8]_i_23_n_0 ;
  wire \iv[8]_i_2_0 ;
  wire \iv[8]_i_2_1 ;
  wire \iv[8]_i_2_2 ;
  wire \iv[8]_i_2_3 ;
  wire \iv[8]_i_2_4 ;
  wire \iv[8]_i_2_5 ;
  wire \iv[8]_i_2_6 ;
  wire \iv[8]_i_2_n_0 ;
  wire \iv[8]_i_4_n_0 ;
  wire \iv[8]_i_5_n_0 ;
  wire \iv[8]_i_6_n_0 ;
  wire \iv[8]_i_7_n_0 ;
  wire \iv[8]_i_8_n_0 ;
  wire \iv[8]_i_9_n_0 ;
  wire \iv[9]_i_10_n_0 ;
  wire \iv[9]_i_12_n_0 ;
  wire \iv[9]_i_17_n_0 ;
  wire \iv[9]_i_2_0 ;
  wire \iv[9]_i_2_1 ;
  wire \iv[9]_i_2_2 ;
  wire \iv[9]_i_2_3 ;
  wire \iv[9]_i_2_4 ;
  wire \iv[9]_i_2_n_0 ;
  wire \iv[9]_i_4_n_0 ;
  wire \iv[9]_i_6_n_0 ;
  wire \iv[9]_i_7_0 ;
  wire \iv[9]_i_7_n_0 ;
  wire \iv[9]_i_8_n_0 ;
  wire \iv[9]_i_9_n_0 ;
  wire [15:0]\pc_reg[15] ;
  wire [15:0]\pc_reg[15]_0 ;
  wire [2:0]read_cyc;
  wire [4:1]\rgf/abus_sel_cr ;
  wire \rgf/bank02/abuso2l/gr0_bus1__0 ;
  wire \rgf/bank02/abuso2l/gr1_bus1__0 ;
  wire \rgf/bank02/abuso2l/gr6_bus1__0 ;
  wire \rgf/bank02/abuso2l/gr7_bus1__0 ;
  wire \rgf/bank02/bbuso2l/gr1_bus1__0 ;
  wire \rgf/bank02/bbuso2l/gr6_bus1__0 ;
  wire \rgf/bank02/bbuso2l/gr7_bus1__0 ;
  wire [15:5]\rgf/bbus_b02 ;
  wire [5:1]\rgf/bbus_sel_cr ;
  wire [5:0]\rgf/cbus_sel_cr ;
  wire rst_n;
  wire rst_n_0;
  wire rst_n_fl;
  wire rst_n_fl_reg_0;
  wire rst_n_fl_reg_1;
  wire rst_n_fl_reg_2;
  wire rst_n_fl_reg_3;
  wire \sp[10]_i_2_n_0 ;
  wire \sp[11]_i_3_n_0 ;
  wire \sp[12]_i_2_n_0 ;
  wire \sp[13]_i_2_n_0 ;
  wire \sp[14]_i_2_n_0 ;
  wire \sp[15]_i_10_n_0 ;
  wire \sp[15]_i_11_n_0 ;
  wire \sp[15]_i_12_n_0 ;
  wire \sp[15]_i_13_n_0 ;
  wire \sp[15]_i_14_n_0 ;
  wire \sp[15]_i_15_n_0 ;
  wire \sp[15]_i_16_n_0 ;
  wire \sp[15]_i_17_n_0 ;
  wire \sp[15]_i_2_0 ;
  wire \sp[15]_i_5_n_0 ;
  wire \sp[15]_i_6_n_0 ;
  wire \sp[15]_i_7_n_0 ;
  wire \sp[1]_i_2_n_0 ;
  wire \sp[2]_i_2_n_0 ;
  wire \sp[3]_i_3_n_0 ;
  wire \sp[4]_i_2_n_0 ;
  wire \sp[5]_i_2_n_0 ;
  wire \sp[6]_i_2_n_0 ;
  wire \sp[7]_i_3_n_0 ;
  wire \sp[8]_i_2_n_0 ;
  wire \sp[9]_i_2_n_0 ;
  wire [14:0]sp_dec_0;
  wire \sp_reg[0] ;
  wire \sp_reg[0]_0 ;
  wire [0:0]\sp_reg[0]_1 ;
  wire \sp_reg[10] ;
  wire \sp_reg[11] ;
  wire [3:0]\sp_reg[11]_0 ;
  wire \sp_reg[12] ;
  wire \sp_reg[13] ;
  wire \sp_reg[14] ;
  wire \sp_reg[15] ;
  wire [15:0]\sp_reg[15]_0 ;
  wire [3:0]\sp_reg[15]_1 ;
  wire \sp_reg[1] ;
  wire \sp_reg[1]_0 ;
  wire \sp_reg[2] ;
  wire \sp_reg[3] ;
  wire [2:0]\sp_reg[3]_0 ;
  wire \sp_reg[4] ;
  wire \sp_reg[4]_0 ;
  wire \sp_reg[5] ;
  wire \sp_reg[6] ;
  wire \sp_reg[7] ;
  wire [3:0]\sp_reg[7]_0 ;
  wire \sp_reg[8] ;
  wire \sp_reg[9] ;
  wire \sr[11]_i_2_n_0 ;
  wire \sr[13]_i_10_n_0 ;
  wire \sr[13]_i_11_n_0 ;
  wire \sr[13]_i_12_n_0 ;
  wire \sr[13]_i_3_n_0 ;
  wire \sr[13]_i_7_n_0 ;
  wire \sr[13]_i_9_n_0 ;
  wire \sr[2]_i_2_n_0 ;
  wire \sr[3]_i_2_n_0 ;
  wire \sr[3]_i_3_n_0 ;
  wire \sr[4]_i_10_n_0 ;
  wire \sr[4]_i_11_n_0 ;
  wire \sr[4]_i_12_0 ;
  wire \sr[4]_i_12_n_0 ;
  wire \sr[4]_i_13_n_0 ;
  wire \sr[4]_i_14_n_0 ;
  wire \sr[4]_i_15_n_0 ;
  wire \sr[4]_i_16_n_0 ;
  wire \sr[4]_i_18_n_0 ;
  wire \sr[4]_i_2_n_0 ;
  wire \sr[4]_i_3_0 ;
  wire \sr[4]_i_3_n_0 ;
  wire \sr[4]_i_4_n_0 ;
  wire \sr[4]_i_5_n_0 ;
  wire \sr[4]_i_6_n_0 ;
  wire \sr[4]_i_7_n_0 ;
  wire \sr[4]_i_8_n_0 ;
  wire \sr[4]_i_9_n_0 ;
  wire \sr[5]_i_2_0 ;
  wire \sr[5]_i_2_n_0 ;
  wire \sr[5]_i_3_n_0 ;
  wire \sr[5]_i_4_n_0 ;
  wire \sr[6]_i_11_n_0 ;
  wire \sr[6]_i_2_n_0 ;
  wire \sr[6]_i_3_0 ;
  wire \sr[6]_i_3_1 ;
  wire \sr[6]_i_3_n_0 ;
  wire \sr[6]_i_4_n_0 ;
  wire \sr[6]_i_7_n_0 ;
  wire \sr[7]_i_10_n_0 ;
  wire \sr[7]_i_11_n_0 ;
  wire \sr[7]_i_13_n_0 ;
  wire \sr[7]_i_14_n_0 ;
  wire \sr[7]_i_15_n_0 ;
  wire \sr[7]_i_17_0 ;
  wire \sr[7]_i_17_n_0 ;
  wire \sr[7]_i_2_n_0 ;
  wire \sr[7]_i_3_n_0 ;
  wire \sr[7]_i_5_n_0 ;
  wire \sr[7]_i_6_0 ;
  wire \sr[7]_i_6_1 ;
  wire \sr[7]_i_6_2 ;
  wire \sr[7]_i_6_n_0 ;
  wire \sr[7]_i_7_n_0 ;
  wire \sr[7]_i_8_n_0 ;
  wire \sr[7]_i_9_n_0 ;
  wire [0:0]\sr_reg[0] ;
  wire [0:0]\sr_reg[0]_0 ;
  wire [0:0]\sr_reg[0]_1 ;
  wire [0:0]\sr_reg[0]_2 ;
  wire [0:0]\sr_reg[0]_3 ;
  wire [0:0]\sr_reg[0]_4 ;
  wire [0:0]\sr_reg[0]_5 ;
  wire \sr_reg[0]_6 ;
  wire \sr_reg[10] ;
  wire \sr_reg[10]_0 ;
  wire \sr_reg[11] ;
  wire \sr_reg[12] ;
  wire \sr_reg[13] ;
  wire \sr_reg[14] ;
  wire \sr_reg[15] ;
  wire [0:0]\sr_reg[1] ;
  wire [0:0]\sr_reg[1]_0 ;
  wire [0:0]\sr_reg[1]_1 ;
  wire [0:0]\sr_reg[1]_10 ;
  wire [0:0]\sr_reg[1]_11 ;
  wire [0:0]\sr_reg[1]_12 ;
  wire [0:0]\sr_reg[1]_13 ;
  wire [0:0]\sr_reg[1]_14 ;
  wire [0:0]\sr_reg[1]_15 ;
  wire [0:0]\sr_reg[1]_16 ;
  wire [0:0]\sr_reg[1]_17 ;
  wire [0:0]\sr_reg[1]_18 ;
  wire [0:0]\sr_reg[1]_19 ;
  wire [0:0]\sr_reg[1]_2 ;
  wire [0:0]\sr_reg[1]_20 ;
  wire [0:0]\sr_reg[1]_21 ;
  wire [0:0]\sr_reg[1]_22 ;
  wire \sr_reg[1]_23 ;
  wire [0:0]\sr_reg[1]_3 ;
  wire [0:0]\sr_reg[1]_4 ;
  wire [0:0]\sr_reg[1]_5 ;
  wire [0:0]\sr_reg[1]_6 ;
  wire [0:0]\sr_reg[1]_7 ;
  wire [0:0]\sr_reg[1]_8 ;
  wire [0:0]\sr_reg[1]_9 ;
  wire \sr_reg[2] ;
  wire \sr_reg[3] ;
  wire \sr_reg[4] ;
  wire \sr_reg[5] ;
  wire [2:0]\sr_reg[6] ;
  wire \sr_reg[6]_0 ;
  wire [0:0]\sr_reg[6]_1 ;
  wire \sr_reg[7] ;
  wire \sr_reg[8] ;
  wire \sr_reg[9] ;
  wire \stat[0]_i_10_n_0 ;
  wire \stat[0]_i_11_n_0 ;
  wire \stat[0]_i_12_n_0 ;
  wire \stat[0]_i_13_n_0 ;
  wire \stat[0]_i_14_n_0 ;
  wire \stat[0]_i_15_n_0 ;
  wire \stat[0]_i_17_0 ;
  wire \stat[0]_i_17_n_0 ;
  wire \stat[0]_i_18_n_0 ;
  wire \stat[0]_i_19_n_0 ;
  wire \stat[0]_i_20_n_0 ;
  wire \stat[0]_i_21_n_0 ;
  wire \stat[0]_i_22_n_0 ;
  wire \stat[0]_i_23_n_0 ;
  wire \stat[0]_i_24_n_0 ;
  wire \stat[0]_i_25_n_0 ;
  wire \stat[0]_i_27_n_0 ;
  wire \stat[0]_i_28_n_0 ;
  wire \stat[0]_i_2_0 ;
  wire \stat[0]_i_2_1 ;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_30_n_0 ;
  wire \stat[0]_i_31_n_0 ;
  wire \stat[0]_i_32_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_5_n_0 ;
  wire \stat[0]_i_6_n_0 ;
  wire \stat[0]_i_7_n_0 ;
  wire \stat[0]_i_8_0 ;
  wire \stat[0]_i_8_n_0 ;
  wire \stat[0]_i_9_n_0 ;
  wire \stat[1]_i_10_n_0 ;
  wire \stat[1]_i_11_0 ;
  wire \stat[1]_i_11_n_0 ;
  wire \stat[1]_i_12_n_0 ;
  wire \stat[1]_i_13_n_0 ;
  wire \stat[1]_i_14_n_0 ;
  wire \stat[1]_i_15_n_0 ;
  wire \stat[1]_i_16_n_0 ;
  wire \stat[1]_i_17_n_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_4_n_0 ;
  wire \stat[1]_i_5_n_0 ;
  wire \stat[1]_i_7_n_0 ;
  wire \stat[1]_i_8_n_0 ;
  wire \stat[1]_i_9_n_0 ;
  wire \stat[2]_i_13_n_0 ;
  wire \stat[2]_i_14_n_0 ;
  wire \stat[2]_i_15_n_0 ;
  wire \stat[2]_i_16_n_0 ;
  wire \stat[2]_i_2_n_0 ;
  wire \stat[2]_i_4_n_0 ;
  wire \stat[2]_i_6_n_0 ;
  wire \stat[2]_i_7_n_0 ;
  wire \stat[2]_i_9_n_0 ;
  wire \stat_reg[0] ;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[0]_2 ;
  wire [15:0]\stat_reg[0]_3 ;
  wire \stat_reg[0]_4 ;
  wire [0:0]\stat_reg[1] ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;
  wire \stat_reg[1]_2 ;
  wire [1:0]\stat_reg[1]_3 ;
  wire \stat_reg[1]_4 ;
  wire \stat_reg[1]_5 ;
  wire [0:0]\stat_reg[2] ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_2 ;
  wire \stat_reg[2]_3 ;
  wire \stat_reg[2]_4 ;
  wire \stat_reg[2]_5 ;
  wire \stat_reg[2]_6 ;
  wire \stat_reg[2]_7 ;
  wire \stat_reg[2]_8 ;
  wire \stat_reg[2]_9 ;
  wire [3:0]tout__1_carry__0_i_1_0;
  wire [3:0]tout__1_carry__1_i_1_0;
  wire tout__1_carry_i_11_n_0;
  wire tout__1_carry_i_12_n_0;
  wire tout__1_carry_i_13_n_0;
  wire tout__1_carry_i_14_n_0;
  wire tout__1_carry_i_15_n_0;
  wire tout__1_carry_i_16_n_0;
  wire tout__1_carry_i_17_n_0;
  wire tout__1_carry_i_18_n_0;
  wire tout__1_carry_i_19_n_0;
  wire tout__1_carry_i_20_n_0;
  wire tout__1_carry_i_21_n_0;
  wire tout__1_carry_i_8_n_0;
  wire \tr[15]_i_2_n_0 ;
  wire \tr_reg[0] ;
  wire \tr_reg[0]_0 ;
  wire \tr_reg[10] ;
  wire \tr_reg[10]_0 ;
  wire \tr_reg[10]_1 ;
  wire \tr_reg[11] ;
  wire [3:0]\tr_reg[11]_0 ;
  wire \tr_reg[11]_1 ;
  wire \tr_reg[11]_2 ;
  wire \tr_reg[12] ;
  wire \tr_reg[12]_0 ;
  wire \tr_reg[12]_1 ;
  wire \tr_reg[13] ;
  wire \tr_reg[13]_0 ;
  wire \tr_reg[13]_1 ;
  wire \tr_reg[13]_2 ;
  wire \tr_reg[14] ;
  wire \tr_reg[14]_0 ;
  wire \tr_reg[14]_1 ;
  wire \tr_reg[14]_2 ;
  wire \tr_reg[15] ;
  wire [3:0]\tr_reg[15]_0 ;
  wire \tr_reg[1] ;
  wire \tr_reg[1]_0 ;
  wire \tr_reg[1]_1 ;
  wire \tr_reg[2] ;
  wire [4:0]\tr_reg[2]_0 ;
  wire \tr_reg[2]_1 ;
  wire \tr_reg[2]_2 ;
  wire \tr_reg[2]_3 ;
  wire \tr_reg[2]_4 ;
  wire \tr_reg[3] ;
  wire \tr_reg[3]_0 ;
  wire \tr_reg[3]_1 ;
  wire \tr_reg[4] ;
  wire \tr_reg[4]_0 ;
  wire \tr_reg[5] ;
  wire \tr_reg[5]_0 ;
  wire \tr_reg[5]_1 ;
  wire \tr_reg[5]_2 ;
  wire \tr_reg[6] ;
  wire \tr_reg[6]_0 ;
  wire \tr_reg[6]_1 ;
  wire \tr_reg[7] ;
  wire [3:0]\tr_reg[7]_0 ;
  wire \tr_reg[7]_1 ;
  wire \tr_reg[7]_2 ;
  wire \tr_reg[8] ;
  wire \tr_reg[8]_0 ;
  wire \tr_reg[8]_1 ;
  wire \tr_reg[9] ;
  wire \tr_reg[9]_0 ;
  wire \tr_reg[9]_1 ;
  wire \tr_reg[9]_2 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[0]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(abus_0[0]),
        .O(abus_o[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[10]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(abus_0[10]),
        .O(abus_o[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[11]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(abus_0[11]),
        .O(abus_o[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[12]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(abus_0[12]),
        .O(abus_o[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[13]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(abus_0[13]),
        .O(abus_o[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[14]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(abus_0[14]),
        .O(abus_o[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[15]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(abus_0[15]),
        .O(abus_o[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[1]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(abus_0[1]),
        .O(abus_o[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[2]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(abus_0[2]),
        .O(abus_o[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[3]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(abus_0[3]),
        .O(abus_o[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[4]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(abus_0[4]),
        .O(abus_o[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[5]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(abus_0[5]),
        .O(abus_o[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[6]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(abus_0[6]),
        .O(abus_o[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[7]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(abus_0[7]),
        .O(abus_o[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[8]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(abus_0[8]),
        .O(abus_o[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[9]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(abus_0[9]),
        .O(abus_o[9]));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[0]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_0 ),
        .I3(abus_0[0]),
        .O(badr[0]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[0]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[0]_6 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[0]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [0]),
        .O(\grn_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[0]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [0]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [0]),
        .I4(\badr[15]_INST_0_i_5_1 [0]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[0]_2 ));
  LUT5 #(
    .INIT(32'hC8400000)) 
    \badr[0]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(\sp_reg[15]_0 [0]),
        .O(\sp_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[0]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [0]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_3 [0]),
        .I4(\pc_reg[15]_0 [0]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[0] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[10]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_0 ),
        .I3(abus_0[10]),
        .O(badr[10]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[10]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [10]),
        .O(\sr_reg[10]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[10]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [10]),
        .O(\grn_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[10]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [10]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [10]),
        .I4(\badr[15]_INST_0_i_5_1 [10]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[10] ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[10]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[9]),
        .I5(\sp_reg[15]_0 [10]),
        .O(\sp_reg[10] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[10]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [10]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_3 [10]),
        .I4(\pc_reg[15]_0 [10]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[10] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[11]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_0 ),
        .I3(abus_0[11]),
        .O(badr[11]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[11]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [11]),
        .O(\sr_reg[11] ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[11]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [11]),
        .O(\grn_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[11]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [11]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [11]),
        .I4(\badr[15]_INST_0_i_5_1 [11]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[11] ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[11]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[10]),
        .I5(\sp_reg[15]_0 [11]),
        .O(\sp_reg[11] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[11]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [11]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_3 [11]),
        .I4(\pc_reg[15]_0 [11]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[11] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[12]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_0 ),
        .I3(abus_0[12]),
        .O(badr[12]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[12]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [12]),
        .O(\sr_reg[12] ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[12]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [12]),
        .O(\grn_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[12]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [12]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [12]),
        .I4(\badr[15]_INST_0_i_5_1 [12]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[12] ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[12]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[11]),
        .I5(\sp_reg[15]_0 [12]),
        .O(\sp_reg[12] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[12]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [12]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_3 [12]),
        .I4(\pc_reg[15]_0 [12]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[12] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[13]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_0 ),
        .I3(abus_0[13]),
        .O(badr[13]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[13]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [13]),
        .O(\sr_reg[13] ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[13]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [13]),
        .O(\grn_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[13]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [13]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [13]),
        .I4(\badr[15]_INST_0_i_5_1 [13]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[13] ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[13]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[12]),
        .I5(\sp_reg[15]_0 [13]),
        .O(\sp_reg[13] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[13]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [13]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_3 [13]),
        .I4(\pc_reg[15]_0 [13]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[13] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[14]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_0 ),
        .I3(abus_0[14]),
        .O(badr[14]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[14]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [14]),
        .O(\sr_reg[14] ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[14]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [14]),
        .O(\grn_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[14]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [14]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [14]),
        .I4(\badr[15]_INST_0_i_5_1 [14]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[14] ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[14]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[13]),
        .I5(\sp_reg[15]_0 [14]),
        .O(\sp_reg[14] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[14]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [14]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_3 [14]),
        .I4(\pc_reg[15]_0 [14]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[14] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[15]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_0 ),
        .I3(abus_0[15]),
        .O(badr[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFD0FFDFFF)) 
    \badr[15]_INST_0_i_100 
       (.I0(ir[2]),
        .I1(ir[7]),
        .I2(ir[6]),
        .I3(ir[9]),
        .I4(ir[5]),
        .I5(\badr[15]_INST_0_i_128_n_0 ),
        .O(\badr[15]_INST_0_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A888A888A8A)) 
    \badr[15]_INST_0_i_101 
       (.I0(\ccmd[4]_INST_0_i_14_n_0 ),
        .I1(\badr[15]_INST_0_i_129_n_0 ),
        .I2(\badr[15]_INST_0_i_130_n_0 ),
        .I3(\badr[15]_INST_0_i_131_n_0 ),
        .I4(\badr[15]_INST_0_i_132_n_0 ),
        .I5(\badr[15]_INST_0_i_133_n_0 ),
        .O(\badr[15]_INST_0_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \badr[15]_INST_0_i_102 
       (.I0(ir[5]),
        .I1(ir[8]),
        .I2(rst_n_fl_reg_3),
        .I3(ir[4]),
        .I4(ir[2]),
        .I5(\badr[15]_INST_0_i_134_n_0 ),
        .O(\badr[15]_INST_0_i_102_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \badr[15]_INST_0_i_103 
       (.I0(ir[11]),
        .I1(Q[1]),
        .O(\badr[15]_INST_0_i_103_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7500)) 
    \badr[15]_INST_0_i_104 
       (.I0(ctl_fetch_fl_reg_1),
        .I1(\badr[15]_INST_0_i_135_n_0 ),
        .I2(\iv[15]_i_58_n_0 ),
        .I3(\badr[15]_INST_0_i_136_n_0 ),
        .I4(\badr[15]_INST_0_i_137_n_0 ),
        .I5(\badr[15]_INST_0_i_138_n_0 ),
        .O(\badr[15]_INST_0_i_104_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEAAFEFEFEFEFE)) 
    \badr[15]_INST_0_i_105 
       (.I0(\iv[15]_i_12_n_0 ),
        .I1(Q[0]),
        .I2(\badr[15]_INST_0_i_139_n_0 ),
        .I3(\badrx[15]_INST_0_i_3_n_0 ),
        .I4(ir[6]),
        .I5(ir[8]),
        .O(\badr[15]_INST_0_i_105_n_0 ));
  LUT6 #(
    .INIT(64'hD5FDD5FDD5FDFFFF)) 
    \badr[15]_INST_0_i_106 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(crdy),
        .I5(Q[0]),
        .O(\badr[15]_INST_0_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \badr[15]_INST_0_i_107 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[11]),
        .I3(ir[10]),
        .I4(ir[9]),
        .I5(\bcmd[1]_INST_0_i_7_n_0 ),
        .O(\badr[15]_INST_0_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h1411000055150000)) 
    \badr[15]_INST_0_i_108 
       (.I0(Q[0]),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(ir[11]),
        .I4(ir[15]),
        .I5(ir[14]),
        .O(\badr[15]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFFFFFEFF)) 
    \badr[15]_INST_0_i_109 
       (.I0(\badr[15]_INST_0_i_140_n_0 ),
        .I1(\badr[15]_INST_0_i_141_n_0 ),
        .I2(\badr[15]_INST_0_i_142_n_0 ),
        .I3(\badr[15]_INST_0_i_143_n_0 ),
        .I4(Q[0]),
        .I5(\badr[15]_INST_0_i_144_n_0 ),
        .O(\badr[15]_INST_0_i_109_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \badr[15]_INST_0_i_110 
       (.I0(\ccmd[2]_INST_0_i_11_n_0 ),
        .I1(ir[7]),
        .I2(\bdatw[9]_INST_0_i_15_n_0 ),
        .I3(\ccmd[4]_INST_0_i_19_n_0 ),
        .I4(\bcmd[1]_INST_0_i_7_n_0 ),
        .I5(\badr[15]_INST_0_i_81_0 ),
        .O(\badr[15]_INST_0_i_110_n_0 ));
  LUT4 #(
    .INIT(16'hDD4F)) 
    \badr[15]_INST_0_i_111 
       (.I0(ir[0]),
        .I1(ir[3]),
        .I2(ir[2]),
        .I3(ir[1]),
        .O(\badr[15]_INST_0_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFDFFFFF)) 
    \badr[15]_INST_0_i_112 
       (.I0(\ccmd[0]_INST_0_i_17_n_0 ),
        .I1(ir[4]),
        .I2(\badr[15]_INST_0_i_145_n_0 ),
        .I3(\ccmd[4]_INST_0_i_20_n_0 ),
        .I4(\bdatw[12]_INST_0_i_95_n_0 ),
        .I5(\badr[15]_INST_0_i_146_n_0 ),
        .O(\badr[15]_INST_0_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h00000000888AAA8A)) 
    \badr[15]_INST_0_i_113 
       (.I0(\badr[15]_INST_0_i_147_n_0 ),
        .I1(\ccmd[2]_INST_0_i_14_n_0 ),
        .I2(ir[1]),
        .I3(\ccmd[4]_INST_0_i_10_n_0 ),
        .I4(ir[4]),
        .I5(\badr[15]_INST_0_i_148_n_0 ),
        .O(\badr[15]_INST_0_i_113_n_0 ));
  LUT6 #(
    .INIT(64'h70007500FFFFFFFF)) 
    \badr[15]_INST_0_i_114 
       (.I0(ir[4]),
        .I1(crdy),
        .I2(ir[8]),
        .I3(\bcmd[0]_INST_0_i_7_n_0 ),
        .I4(\badr[15]_INST_0_i_149_n_0 ),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_114_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D0D000D0D0D0)) 
    \badr[15]_INST_0_i_115 
       (.I0(ir[1]),
        .I1(\badr[15]_INST_0_i_150_n_0 ),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(ir[3]),
        .I4(ctl_fetch_inferred_i_15_n_0),
        .I5(\ccmd[4]_INST_0_i_20_n_0 ),
        .O(\badr[15]_INST_0_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h0000773F00005500)) 
    \badr[15]_INST_0_i_116 
       (.I0(\badr[15]_INST_0_i_151_n_0 ),
        .I1(\badr[15]_INST_0_i_152_n_0 ),
        .I2(\badr[15]_INST_0_i_153_n_0 ),
        .I3(ir[10]),
        .I4(ir[11]),
        .I5(crdy),
        .O(\badr[15]_INST_0_i_116_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \badr[15]_INST_0_i_117 
       (.I0(\badr[15]_INST_0_i_124_n_0 ),
        .I1(\bdatw[15]_INST_0_i_45_n_0 ),
        .I2(ir[2]),
        .I3(ir[1]),
        .I4(ir[11]),
        .I5(ctl_fetch_ext_fl_i_6_n_0),
        .O(\badr[15]_INST_0_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h444444444F4F4FFF)) 
    \badr[15]_INST_0_i_118 
       (.I0(\badr[15]_INST_0_i_154_n_0 ),
        .I1(\badr[15]_INST_0_i_155_n_0 ),
        .I2(\badr[15]_INST_0_i_156_n_0 ),
        .I3(\badr[15]_INST_0_i_157_n_0 ),
        .I4(\bcmd[1]_INST_0_i_9_n_0 ),
        .I5(\bdatw[15]_INST_0_i_46_n_0 ),
        .O(\badr[15]_INST_0_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h5555555551555555)) 
    \badr[15]_INST_0_i_119 
       (.I0(ir[11]),
        .I1(\bcmd[0]_INST_0_i_7_n_0 ),
        .I2(crdy),
        .I3(ir[8]),
        .I4(ir[3]),
        .I5(\ccmd[4]_INST_0_i_10_n_0 ),
        .O(\badr[15]_INST_0_i_119_n_0 ));
  LUT6 #(
    .INIT(64'h1F1F1F1FFF1F1F1F)) 
    \badr[15]_INST_0_i_120 
       (.I0(\badr[15]_INST_0_i_158_n_0 ),
        .I1(ir[10]),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_126_n_0 ),
        .I4(ir[3]),
        .I5(\iv[15]_i_71_n_0 ),
        .O(\badr[15]_INST_0_i_120_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB0000BB03)) 
    \badr[15]_INST_0_i_121 
       (.I0(\badr[15]_INST_0_i_159_n_0 ),
        .I1(ir[0]),
        .I2(ir[3]),
        .I3(\bcmd[1]_INST_0_i_7_n_0 ),
        .I4(\badr[15]_INST_0_i_160_n_0 ),
        .I5(\ccmd[4]_INST_0_i_20_n_0 ),
        .O(\badr[15]_INST_0_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFDFFFFF)) 
    \badr[15]_INST_0_i_122 
       (.I0(\bdatw[15]_INST_0_i_13_n_0 ),
        .I1(ir[4]),
        .I2(\badr[15]_INST_0_i_145_n_0 ),
        .I3(\ccmd[4]_INST_0_i_20_n_0 ),
        .I4(\bdatw[12]_INST_0_i_95_n_0 ),
        .I5(\badr[15]_INST_0_i_161_n_0 ),
        .O(\badr[15]_INST_0_i_122_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[15]_INST_0_i_123 
       (.I0(\bcmd[1]_INST_0_i_7_n_0 ),
        .I1(\ccmd[4]_INST_0_i_19_n_0 ),
        .I2(\bdatw[9]_INST_0_i_15_n_0 ),
        .I3(ir[7]),
        .I4(\ccmd[2]_INST_0_i_11_n_0 ),
        .O(\badr[15]_INST_0_i_123_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \badr[15]_INST_0_i_124 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[4]),
        .I3(ir[3]),
        .O(\badr[15]_INST_0_i_124_n_0 ));
  LUT6 #(
    .INIT(64'h00E000F000400000)) 
    \badr[15]_INST_0_i_125 
       (.I0(ir[6]),
        .I1(ir[2]),
        .I2(ir[9]),
        .I3(ir[10]),
        .I4(ir[8]),
        .I5(ir[5]),
        .O(\badr[15]_INST_0_i_125_n_0 ));
  LUT5 #(
    .INIT(32'h44444044)) 
    \badr[15]_INST_0_i_126 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(ir[6]),
        .O(\badr[15]_INST_0_i_126_n_0 ));
  LUT6 #(
    .INIT(64'h113FFFFFDDFFFFFF)) 
    \badr[15]_INST_0_i_127 
       (.I0(ir[2]),
        .I1(ir[6]),
        .I2(ir[7]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[5]),
        .O(\badr[15]_INST_0_i_127_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \badr[15]_INST_0_i_128 
       (.I0(ir[8]),
        .I1(ir[10]),
        .O(\badr[15]_INST_0_i_128_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \badr[15]_INST_0_i_129 
       (.I0(ir[13]),
        .I1(Q[0]),
        .I2(ctl_fetch_fl_reg_1),
        .I3(\badr[15]_INST_0_i_162_n_0 ),
        .O(\badr[15]_INST_0_i_129_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[15]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [15]),
        .O(\sr_reg[15] ));
  LUT3 #(
    .INIT(8'hDF)) 
    \badr[15]_INST_0_i_130 
       (.I0(ir[13]),
        .I1(ir[15]),
        .I2(ir[12]),
        .O(\badr[15]_INST_0_i_130_n_0 ));
  LUT6 #(
    .INIT(64'h404F00FF404000F0)) 
    \badr[15]_INST_0_i_131 
       (.I0(ir[9]),
        .I1(\badr[15]_INST_0_i_163_n_0 ),
        .I2(ir[14]),
        .I3(Q[0]),
        .I4(ir[10]),
        .I5(\badr[15]_INST_0_i_2 [7]),
        .O(\badr[15]_INST_0_i_131_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \badr[15]_INST_0_i_132 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[14]),
        .O(\badr[15]_INST_0_i_132_n_0 ));
  LUT6 #(
    .INIT(64'h000000000A80AA88)) 
    \badr[15]_INST_0_i_133 
       (.I0(\badr[15]_INST_0_i_164_n_0 ),
        .I1(ir[10]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(\badr[15]_INST_0_i_165_n_0 ),
        .I5(\badr[15]_INST_0_i_166_n_0 ),
        .O(\badr[15]_INST_0_i_133_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \badr[15]_INST_0_i_134 
       (.I0(ctl_fetch_ext_fl_i_7_n_0),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(ir[1]),
        .I4(Q[1]),
        .I5(\badr[15]_INST_0_i_167_n_0 ),
        .O(\badr[15]_INST_0_i_134_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF5D03DFFF5D33)) 
    \badr[15]_INST_0_i_135 
       (.I0(crdy),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(ir[2]),
        .I4(ir[3]),
        .I5(fch_irq_req),
        .O(\badr[15]_INST_0_i_135_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_136 
       (.I0(ir[13]),
        .I1(Q[0]),
        .O(\badr[15]_INST_0_i_136_n_0 ));
  LUT6 #(
    .INIT(64'h1F0F1F0F1F001F0F)) 
    \badr[15]_INST_0_i_137 
       (.I0(ir[13]),
        .I1(Q[0]),
        .I2(\badr[15]_INST_0_i_168_n_0 ),
        .I3(ir[15]),
        .I4(\badr[15]_INST_0_i_2 [6]),
        .I5(ir[12]),
        .O(\badr[15]_INST_0_i_137_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000080A8)) 
    \badr[15]_INST_0_i_138 
       (.I0(\sr[13]_i_9_n_0 ),
        .I1(\bdatw[13]_INST_0_i_9_n_0 ),
        .I2(ir[0]),
        .I3(ir[3]),
        .I4(\ccmd[4]_INST_0_i_18_n_0 ),
        .I5(\stat[2]_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_138_n_0 ));
  LUT6 #(
    .INIT(64'h6F2F7F3F682AFFFF)) 
    \badr[15]_INST_0_i_139 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[10]),
        .I3(\ccmd[4]_INST_0_i_10_n_0 ),
        .I4(crdy),
        .I5(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_139_n_0 ));
  LUT6 #(
    .INIT(64'h2323333333233330)) 
    \badr[15]_INST_0_i_140 
       (.I0(\badr[15]_INST_0_i_169_n_0 ),
        .I1(\badr[15]_INST_0_i_170_n_0 ),
        .I2(ir[8]),
        .I3(Q[0]),
        .I4(ir[9]),
        .I5(\badr[15]_INST_0_i_149_n_0 ),
        .O(\badr[15]_INST_0_i_140_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0FB00FB)) 
    \badr[15]_INST_0_i_141 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(crdy),
        .I2(\badr[15]_INST_0_i_171_n_0 ),
        .I3(ir[11]),
        .I4(\bcmd[2]_INST_0_i_3_n_0 ),
        .I5(ir[10]),
        .O(\badr[15]_INST_0_i_141_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBBBA)) 
    \badr[15]_INST_0_i_142 
       (.I0(\iv[15]_i_12_n_0 ),
        .I1(\badr[15]_INST_0_i_172_n_0 ),
        .I2(Q[0]),
        .I3(ir[11]),
        .I4(ir[9]),
        .O(\badr[15]_INST_0_i_142_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0E000E000E000)) 
    \badr[15]_INST_0_i_143 
       (.I0(crdy),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_143_n_0 ));
  LUT6 #(
    .INIT(64'h4F0F0F0F4F0F0FFF)) 
    \badr[15]_INST_0_i_144 
       (.I0(ir[6]),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_155_n_0 ),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(\badr[15]_INST_0_i_109_0 ),
        .O(\badr[15]_INST_0_i_144_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_145 
       (.I0(ir[5]),
        .I1(ir[6]),
        .O(\badr[15]_INST_0_i_145_n_0 ));
  LUT6 #(
    .INIT(64'h0000000060000000)) 
    \badr[15]_INST_0_i_146 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(ir[1]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_146_n_0 ));
  LUT5 #(
    .INIT(32'h35FFFFFF)) 
    \badr[15]_INST_0_i_147 
       (.I0(ir[1]),
        .I1(ir[4]),
        .I2(ir[6]),
        .I3(ir[8]),
        .I4(ir[9]),
        .O(\badr[15]_INST_0_i_147_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0E02F000)) 
    \badr[15]_INST_0_i_148 
       (.I0(ir[1]),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(ir[4]),
        .I4(ir[8]),
        .I5(ir[10]),
        .O(\badr[15]_INST_0_i_148_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_149 
       (.I0(ir[7]),
        .I1(ir[6]),
        .O(\badr[15]_INST_0_i_149_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7BBF7FFFF3)) 
    \badr[15]_INST_0_i_150 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(ir[5]),
        .I4(ir[4]),
        .I5(ir[3]),
        .O(\badr[15]_INST_0_i_150_n_0 ));
  LUT6 #(
    .INIT(64'h113FFFFFDDFFFFFF)) 
    \badr[15]_INST_0_i_151 
       (.I0(ir[1]),
        .I1(ir[6]),
        .I2(ir[7]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[4]),
        .O(\badr[15]_INST_0_i_151_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \badr[15]_INST_0_i_152 
       (.I0(ir[4]),
        .I1(ir[8]),
        .I2(ir[10]),
        .I3(ir[9]),
        .O(\badr[15]_INST_0_i_152_n_0 ));
  LUT6 #(
    .INIT(64'hDCD4D0D0DFD7DFDF)) 
    \badr[15]_INST_0_i_153 
       (.I0(ir[1]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(ir[6]),
        .I5(ir[4]),
        .O(\badr[15]_INST_0_i_153_n_0 ));
  LUT5 #(
    .INIT(32'h3FFF7F7F)) 
    \badr[15]_INST_0_i_154 
       (.I0(ir[0]),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(ir[3]),
        .I4(ir[6]),
        .O(\badr[15]_INST_0_i_154_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_155 
       (.I0(ir[10]),
        .I1(ir[11]),
        .O(\badr[15]_INST_0_i_155_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFDDDDFFFFFFFF)) 
    \badr[15]_INST_0_i_156 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(ir[8]),
        .I5(ir[3]),
        .O(\badr[15]_INST_0_i_156_n_0 ));
  LUT6 #(
    .INIT(64'hF080FFA0F0DFFFFF)) 
    \badr[15]_INST_0_i_157 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[0]),
        .I5(ir[3]),
        .O(\badr[15]_INST_0_i_157_n_0 ));
  LUT6 #(
    .INIT(64'h0C0A0F073F5F0F8F)) 
    \badr[15]_INST_0_i_158 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[3]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[0]),
        .O(\badr[15]_INST_0_i_158_n_0 ));
  LUT6 #(
    .INIT(64'hFBBFFE7EFFFFFFFF)) 
    \badr[15]_INST_0_i_159 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(ir[4]),
        .I3(ir[3]),
        .I4(ir[7]),
        .I5(ir[8]),
        .O(\badr[15]_INST_0_i_159_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \badr[15]_INST_0_i_160 
       (.I0(ir[3]),
        .I1(ir[5]),
        .I2(ir[6]),
        .O(\badr[15]_INST_0_i_160_n_0 ));
  LUT6 #(
    .INIT(64'h0060000000000000)) 
    \badr[15]_INST_0_i_161 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[6]),
        .I4(ir[0]),
        .I5(ir[8]),
        .O(\badr[15]_INST_0_i_161_n_0 ));
  LUT6 #(
    .INIT(64'h000000004C4CCFCC)) 
    \badr[15]_INST_0_i_162 
       (.I0(ir[13]),
        .I1(ir[15]),
        .I2(ir[14]),
        .I3(\badr[15]_INST_0_i_2 [6]),
        .I4(ir[12]),
        .I5(Q[0]),
        .O(\badr[15]_INST_0_i_162_n_0 ));
  LUT4 #(
    .INIT(16'h22F3)) 
    \badr[15]_INST_0_i_163 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(crdy),
        .I3(Q[0]),
        .O(\badr[15]_INST_0_i_163_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFDFCFCC)) 
    \badr[15]_INST_0_i_164 
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(ir[6]),
        .I5(Q[0]),
        .O(\badr[15]_INST_0_i_164_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_165 
       (.I0(ir[7]),
        .I1(Q[0]),
        .O(\badr[15]_INST_0_i_165_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \badr[15]_INST_0_i_166 
       (.I0(ir[7]),
        .I1(ir[5]),
        .I2(Q[0]),
        .I3(ir[4]),
        .I4(ir[6]),
        .I5(ir[3]),
        .O(\badr[15]_INST_0_i_166_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \badr[15]_INST_0_i_167 
       (.I0(ir[15]),
        .I1(ir[14]),
        .I2(ir[6]),
        .I3(ir[7]),
        .O(\badr[15]_INST_0_i_167_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFFFCFFFEFEFEF)) 
    \badr[15]_INST_0_i_168 
       (.I0(ir[14]),
        .I1(Q[0]),
        .I2(ir[13]),
        .I3(ir[12]),
        .I4(\badr[15]_INST_0_i_2 [7]),
        .I5(ir[15]),
        .O(\badr[15]_INST_0_i_168_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDF7FF06FFFA)) 
    \badr[15]_INST_0_i_169 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(Q[0]),
        .I3(ir[5]),
        .I4(ir[3]),
        .I5(ir[4]),
        .O(\badr[15]_INST_0_i_169_n_0 ));
  LUT6 #(
    .INIT(64'h777777777F777777)) 
    \badr[15]_INST_0_i_170 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(Q[0]),
        .I3(crdy),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_170_n_0 ));
  LUT3 #(
    .INIT(8'hEC)) 
    \badr[15]_INST_0_i_171 
       (.I0(ir[8]),
        .I1(Q[0]),
        .I2(ir[9]),
        .O(\badr[15]_INST_0_i_171_n_0 ));
  LUT5 #(
    .INIT(32'hDFCFDFFF)) 
    \badr[15]_INST_0_i_172 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(ir[8]),
        .O(\badr[15]_INST_0_i_172_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_23 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [15]),
        .O(\grn_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[15]_INST_0_i_24 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [15]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [15]),
        .I4(\badr[15]_INST_0_i_5_1 [15]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[15] ));
  LUT6 #(
    .INIT(64'h5454545544444444)) 
    \badr[15]_INST_0_i_27 
       (.I0(Q[2]),
        .I1(\badr[15]_INST_0_i_68_n_0 ),
        .I2(\badr[15]_INST_0_i_69_n_0 ),
        .I3(\badr[15]_INST_0_i_70_n_0 ),
        .I4(\badr[15]_INST_0_i_71_n_0 ),
        .I5(ctl_fetch_ext_fl_reg_0),
        .O(\badr[15]_INST_0_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_28 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .O(\badr[15]_INST_0_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_29 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .O(\badr[15]_INST_0_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_30 
       (.I0(ctl_sela_rn[0]),
        .I1(ctl_sela_rn[1]),
        .O(\badr[15]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \badr[15]_INST_0_i_32 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(\badr[15]_INST_0_i_28_n_0 ),
        .O(\rgf/abus_sel_cr [4]));
  LUT4 #(
    .INIT(16'h0800)) 
    \badr[15]_INST_0_i_33 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(\badr[15]_INST_0_i_28_n_0 ),
        .O(\rgf/abus_sel_cr [3]));
  LUT3 #(
    .INIT(8'h40)) 
    \badr[15]_INST_0_i_34 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_30_n_0 ),
        .O(\rgf/abus_sel_cr [1]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \badr[15]_INST_0_i_35 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[3]),
        .O(gr7_bus1__0_42));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \badr[15]_INST_0_i_36 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[3]),
        .O(gr0_bus1__0_43));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \badr[15]_INST_0_i_37 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[1]),
        .O(gr3_bus1__0_24));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \badr[15]_INST_0_i_38 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[1]),
        .O(gr4_bus1__0_25));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \badr[15]_INST_0_i_39 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[1]),
        .I5(bank_sel[1]),
        .O(gr1_bus1__0_22));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \badr[15]_INST_0_i_40 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[1]),
        .O(gr2_bus1__0_23));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \badr[15]_INST_0_i_41 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[1]),
        .O(gr7_bus1__0_28));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \badr[15]_INST_0_i_42 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[1]),
        .O(gr0_bus1__0_29));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \badr[15]_INST_0_i_43 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[1]),
        .I5(bank_sel[1]),
        .O(gr5_bus1__0_26));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \badr[15]_INST_0_i_44 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[1]),
        .O(gr6_bus1__0_27));
  LUT6 #(
    .INIT(64'h00000000F2FFF0F0)) 
    \badr[15]_INST_0_i_45 
       (.I0(ir[9]),
        .I1(\badr[15]_INST_0_i_80_n_0 ),
        .I2(\badr[15]_INST_0_i_81_n_0 ),
        .I3(\badr[15]_INST_0_i_82_n_0 ),
        .I4(ctl_fetch_ext_fl_reg_0),
        .I5(Q[2]),
        .O(ctl_sela_rn[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFA20000)) 
    \badr[15]_INST_0_i_46 
       (.I0(\badr[15]_INST_0_i_83_n_0 ),
        .I1(\badr[15]_INST_0_i_84_n_0 ),
        .I2(\badr[15]_INST_0_i_85_n_0 ),
        .I3(\badr[15]_INST_0_i_86_n_0 ),
        .I4(\bcmd[2] ),
        .I5(\badr[15]_INST_0_i_87_n_0 ),
        .O(ctl_sela_rn[0]));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \badr[15]_INST_0_i_47 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[1]),
        .I5(bank_sel[3]),
        .O(gr5_bus1__0_38));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \badr[15]_INST_0_i_48 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[3]),
        .O(gr6_bus1__0_39));
  LUT5 #(
    .INIT(32'h08000000)) 
    \badr[15]_INST_0_i_49 
       (.I0(ctl_sela_rn[0]),
        .I1(ctl_sela_rn[1]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela),
        .I4(\badr[15]_INST_0_i_72_n_0 ),
        .O(\stat_reg[2]_1 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \badr[15]_INST_0_i_50 
       (.I0(ctl_sela_rn[0]),
        .I1(ctl_sela_rn[1]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela),
        .I4(\badr[15]_INST_0_i_72_n_0 ),
        .O(\stat_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \badr[15]_INST_0_i_51 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[1]),
        .I5(bank_sel[3]),
        .O(gr1_bus1__0_40));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \badr[15]_INST_0_i_52 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[3]),
        .O(gr2_bus1__0_41));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \badr[15]_INST_0_i_53 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[2]),
        .O(gr4_bus1__0_12));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \badr[15]_INST_0_i_54 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[1]),
        .I5(bank_sel[2]),
        .O(gr5_bus1__0_13));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \badr[15]_INST_0_i_55 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[0]),
        .O(gr3_bus1__0_4));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \badr[15]_INST_0_i_56 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[0]),
        .O(gr4_bus1__0_5));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \badr[15]_INST_0_i_57 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[1]),
        .I5(bank_sel[0]),
        .O(gr1_bus1__0_2));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \badr[15]_INST_0_i_58 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[0]),
        .O(gr2_bus1__0_3));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \badr[15]_INST_0_i_59 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[0]),
        .O(gr7_bus1__0_8));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[15]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[14]),
        .I5(\sp_reg[15]_0 [15]),
        .O(\sp_reg[15] ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \badr[15]_INST_0_i_60 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[0]),
        .O(gr0_bus1__0_9));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \badr[15]_INST_0_i_61 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[1]),
        .I5(bank_sel[0]),
        .O(gr5_bus1__0_6));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \badr[15]_INST_0_i_62 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[0]),
        .O(gr6_bus1__0_7));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \badr[15]_INST_0_i_63 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[2]),
        .O(\rgf/bank02/abuso2l/gr0_bus1__0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \badr[15]_INST_0_i_64 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[2]),
        .O(\rgf/bank02/abuso2l/gr7_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \badr[15]_INST_0_i_65 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(bank_sel[2]),
        .O(\rgf/bank02/abuso2l/gr6_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \badr[15]_INST_0_i_66 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[1]),
        .I5(bank_sel[2]),
        .O(\rgf/bank02/abuso2l/gr1_bus1__0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \badr[15]_INST_0_i_67 
       (.I0(ctl_sela_rn[0]),
        .I1(ctl_sela_rn[1]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela),
        .I4(\badr[15]_INST_0_i_72_n_0 ),
        .O(\stat_reg[2]_2 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAAAEAAAAA)) 
    \badr[15]_INST_0_i_68 
       (.I0(\stat_reg[1]_2 ),
        .I1(rst_n_fl_reg_0),
        .I2(\ccmd[2]_INST_0_i_1 ),
        .I3(\badr[15]_INST_0_i_90_n_0 ),
        .I4(\badr[15]_INST_0_i_91_n_0 ),
        .I5(\badr[15]_INST_0_i_92_n_0 ),
        .O(\badr[15]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h7000FFFF70003000)) 
    \badr[15]_INST_0_i_69 
       (.I0(ir[14]),
        .I1(\ccmd[2]_INST_0_i_24_n_0 ),
        .I2(ir[15]),
        .I3(ir[10]),
        .I4(ir[11]),
        .I5(\badr[15]_INST_0_i_93_n_0 ),
        .O(\badr[15]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[15]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [15]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_3 [15]),
        .I4(\pc_reg[15]_0 [15]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[15] ));
  LUT6 #(
    .INIT(64'h0000000000005DDD)) 
    \badr[15]_INST_0_i_70 
       (.I0(\badrx[15]_INST_0_i_3_n_0 ),
        .I1(\badr[15]_INST_0_i_94_n_0 ),
        .I2(ir[2]),
        .I3(\badr[15]_INST_0_i_95_n_0 ),
        .I4(\badr[15]_INST_0_i_96_n_0 ),
        .I5(\badr[15]_INST_0_i_97_n_0 ),
        .O(\badr[15]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBBAAABAAAB)) 
    \badr[15]_INST_0_i_71 
       (.I0(\iv[15]_i_12_n_0 ),
        .I1(\badr[15]_INST_0_i_98_n_0 ),
        .I2(\iv[15]_i_30_n_0 ),
        .I3(ir[11]),
        .I4(\badr[15]_INST_0_i_99_n_0 ),
        .I5(\badr[15]_INST_0_i_100_n_0 ),
        .O(\badr[15]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h5455545454555455)) 
    \badr[15]_INST_0_i_72 
       (.I0(Q[2]),
        .I1(\badr[15]_INST_0_i_101_n_0 ),
        .I2(\badr[15]_INST_0_i_102_n_0 ),
        .I3(\badr[15]_INST_0_i_103_n_0 ),
        .I4(\badr[15]_INST_0_i_104_n_0 ),
        .I5(\badr[15]_INST_0_i_105_n_0 ),
        .O(\badr[15]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA2000AAAAAAAA)) 
    \badr[15]_INST_0_i_73 
       (.I0(\stat_reg[0]_4 ),
        .I1(\badr[15]_INST_0_i_106_n_0 ),
        .I2(\badr[15]_INST_0_i_107_n_0 ),
        .I3(ctl_fetch_ext_fl_i_6_n_0),
        .I4(\badr[15]_INST_0_i_108_n_0 ),
        .I5(\badr[15]_INST_0_i_109_n_0 ),
        .O(ctl_sela));
  LUT5 #(
    .INIT(32'hB000FFFF)) 
    \badr[15]_INST_0_i_80 
       (.I0(ir[14]),
        .I1(ir[11]),
        .I2(ir[13]),
        .I3(ir[12]),
        .I4(ir[15]),
        .O(\badr[15]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hCECCEEEECECCCECC)) 
    \badr[15]_INST_0_i_81 
       (.I0(\ccmd[2]_INST_0_i_1 ),
        .I1(\badr[15]_INST_0_i_110_n_0 ),
        .I2(\badr[15]_INST_0_i_111_n_0 ),
        .I3(\iv[15]_i_38_n_0 ),
        .I4(\badr[15]_INST_0_i_112_n_0 ),
        .I5(rst_n_fl_reg_0),
        .O(\badr[15]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00FE)) 
    \badr[15]_INST_0_i_82 
       (.I0(\badr[15]_INST_0_i_113_n_0 ),
        .I1(\badr[15]_INST_0_i_114_n_0 ),
        .I2(\badr[15]_INST_0_i_115_n_0 ),
        .I3(\badr[15]_INST_0_i_116_n_0 ),
        .I4(\iv[15]_i_12_n_0 ),
        .I5(\badr[15]_INST_0_i_117_n_0 ),
        .O(\badr[15]_INST_0_i_82_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_83 
       (.I0(ir[14]),
        .I1(ir[15]),
        .O(\badr[15]_INST_0_i_83_n_0 ));
  LUT5 #(
    .INIT(32'hEABFBFEA)) 
    \badr[15]_INST_0_i_84 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(\badr[15]_INST_0_i_2 [7]),
        .I3(ir[11]),
        .I4(\badr[15]_INST_0_i_2 [5]),
        .O(\badr[15]_INST_0_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A8A8A888A88)) 
    \badr[15]_INST_0_i_85 
       (.I0(\ccmd[2]_INST_0_i_24_n_0 ),
        .I1(\badr[15]_INST_0_i_118_n_0 ),
        .I2(\badr[15]_INST_0_i_119_n_0 ),
        .I3(\badr[15]_INST_0_i_120_n_0 ),
        .I4(\badr[15]_INST_0_i_121_n_0 ),
        .I5(\badrx[15]_INST_0_i_3_n_0 ),
        .O(\badr[15]_INST_0_i_85_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \badr[15]_INST_0_i_86 
       (.I0(\badr[15]_INST_0_i_93_n_0 ),
        .I1(ir[8]),
        .I2(\badr[15]_INST_0_i_80_n_0 ),
        .I3(\iv[15]_i_83_n_0 ),
        .O(\badr[15]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF02020)) 
    \badr[15]_INST_0_i_87 
       (.I0(rst_n_fl_reg_0),
        .I1(\badr[15]_INST_0_i_122_n_0 ),
        .I2(\ccmd[2]_INST_0_i_1 ),
        .I3(\badr[15]_INST_0_i_81_0 ),
        .I4(\badr[15]_INST_0_i_123_n_0 ),
        .I5(Q[2]),
        .O(\badr[15]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \badr[15]_INST_0_i_90 
       (.I0(ir[10]),
        .I1(ir[11]),
        .I2(ir[9]),
        .I3(\ccmd[4]_INST_0_i_20_n_0 ),
        .I4(ir[5]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_90_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \badr[15]_INST_0_i_91 
       (.I0(ir[3]),
        .I1(ir[2]),
        .I2(ir[4]),
        .O(\badr[15]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h282800000000C000)) 
    \badr[15]_INST_0_i_92 
       (.I0(\ccmd[0]_INST_0_i_14_n_0 ),
        .I1(ir[11]),
        .I2(ir[10]),
        .I3(ir[7]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \badr[15]_INST_0_i_93 
       (.I0(\bdatw[9]_INST_0_i_12_n_0 ),
        .I1(ir[0]),
        .I2(fch_irq_req),
        .I3(ctl_fetch_ext_fl_i_6_n_0),
        .I4(\bdatw[15]_INST_0_i_45_n_0 ),
        .I5(\badr[15]_INST_0_i_124_n_0 ),
        .O(\badr[15]_INST_0_i_93_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFBBFFFFFFFAB)) 
    \badr[15]_INST_0_i_94 
       (.I0(\ccmd[4]_INST_0_i_20_n_0 ),
        .I1(ir[2]),
        .I2(ir[3]),
        .I3(ir[4]),
        .I4(ir[5]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000022)) 
    \badr[15]_INST_0_i_95 
       (.I0(ir[8]),
        .I1(ir[7]),
        .I2(ir[3]),
        .I3(ir[5]),
        .I4(ir[6]),
        .I5(ir[4]),
        .O(\badr[15]_INST_0_i_95_n_0 ));
  LUT6 #(
    .INIT(64'hFBBBFBBBBBBBFBBB)) 
    \badr[15]_INST_0_i_96 
       (.I0(\badr[15]_INST_0_i_125_n_0 ),
        .I1(ir[11]),
        .I2(\badr[15]_INST_0_i_126_n_0 ),
        .I3(ir[5]),
        .I4(ir[8]),
        .I5(crdy),
        .O(\badr[15]_INST_0_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h5410514055005140)) 
    \badr[15]_INST_0_i_97 
       (.I0(\ccmd[4]_INST_0_i_18_n_0 ),
        .I1(ir[8]),
        .I2(ir[2]),
        .I3(ir[5]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_97_n_0 ));
  LUT6 #(
    .INIT(64'h0200FFFF00000000)) 
    \badr[15]_INST_0_i_98 
       (.I0(ir[5]),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(crdy),
        .I4(\badr[15]_INST_0_i_127_n_0 ),
        .I5(ir[10]),
        .O(\badr[15]_INST_0_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABABABAAAAAA)) 
    \badr[15]_INST_0_i_99 
       (.I0(ir[11]),
        .I1(ir[9]),
        .I2(ir[10]),
        .I3(ir[2]),
        .I4(ir[8]),
        .I5(ir[5]),
        .O(\badr[15]_INST_0_i_99_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[1]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_0 ),
        .I3(abus_0[1]),
        .O(badr[1]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[1]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[1]_23 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[1]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [1]),
        .O(\grn_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[1]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [1]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [1]),
        .I4(\badr[15]_INST_0_i_5_1 [1]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[1]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[0]),
        .I5(\sp_reg[15]_0 [1]),
        .O(\sp_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[1]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [1]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_3 [1]),
        .I4(\pc_reg[15]_0 [1]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[1] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[2]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_0 ),
        .I3(abus_0[2]),
        .O(badr[2]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[2]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [2]),
        .O(\sr_reg[2] ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[2]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [2]),
        .O(\grn_reg[2]_3 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[2]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [2]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [2]),
        .I4(\badr[15]_INST_0_i_5_1 [2]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[2]_2 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[2]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[1]),
        .I5(\sp_reg[15]_0 [2]),
        .O(\sp_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[2]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [2]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_3 [2]),
        .I4(\pc_reg[15]_0 [2]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[2] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[3]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_0 ),
        .I3(abus_0[3]),
        .O(badr[3]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[3]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [3]),
        .O(\sr_reg[3] ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[3]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [3]),
        .O(\grn_reg[3]_3 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[3]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [3]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [3]),
        .I4(\badr[15]_INST_0_i_5_1 [3]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[3]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[2]),
        .I5(\sp_reg[15]_0 [3]),
        .O(\sp_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[3]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [3]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_3 [3]),
        .I4(\pc_reg[15]_0 [3]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[3] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[4]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_0 ),
        .I3(abus_0[4]),
        .O(badr[4]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[4]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [4]),
        .O(\sr_reg[4] ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[4]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [4]),
        .O(\grn_reg[4]_3 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[4]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [4]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [4]),
        .I4(\badr[15]_INST_0_i_5_1 [4]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[4]_2 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[4]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[3]),
        .I5(\sp_reg[15]_0 [4]),
        .O(\sp_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[4]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [4]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_3 [4]),
        .I4(\pc_reg[15]_0 [4]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[4] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[5]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_0 ),
        .I3(abus_0[5]),
        .O(badr[5]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[5]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [5]),
        .O(\sr_reg[5] ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[5]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [5]),
        .O(\grn_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[5]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [5]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [5]),
        .I4(\badr[15]_INST_0_i_5_1 [5]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[5] ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[5]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[4]),
        .I5(\sp_reg[15]_0 [5]),
        .O(\sp_reg[5] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[5]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [5]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_3 [5]),
        .I4(\pc_reg[15]_0 [5]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[5] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[6]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_0 ),
        .I3(abus_0[6]),
        .O(badr[6]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[6]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [6]),
        .O(\sr_reg[6]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[6]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [6]),
        .O(\grn_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[6]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [6]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [6]),
        .I4(\badr[15]_INST_0_i_5_1 [6]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[6] ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[6]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[5]),
        .I5(\sp_reg[15]_0 [6]),
        .O(\sp_reg[6] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[6]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [6]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_3 [6]),
        .I4(\pc_reg[15]_0 [6]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[6] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[7]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_0 ),
        .I3(abus_0[7]),
        .O(badr[7]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[7]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [7]),
        .O(\sr_reg[7] ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[7]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [7]),
        .O(\grn_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[7]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [7]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [7]),
        .I4(\badr[15]_INST_0_i_5_1 [7]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[7] ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[7]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[6]),
        .I5(\sp_reg[15]_0 [7]),
        .O(\sp_reg[7] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[7]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [7]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_3 [7]),
        .I4(\pc_reg[15]_0 [7]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[7] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[8]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_0 ),
        .I3(abus_0[8]),
        .O(badr[8]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[8]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [8]),
        .O(\sr_reg[8] ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[8]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [8]),
        .O(\grn_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[8]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [8]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [8]),
        .I4(\badr[15]_INST_0_i_5_1 [8]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[8] ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[8]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[7]),
        .I5(\sp_reg[15]_0 [8]),
        .O(\sp_reg[8] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[8]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [8]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_3 [8]),
        .I4(\pc_reg[15]_0 [8]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[8] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[9]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_0 ),
        .I3(abus_0[9]),
        .O(badr[9]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[9]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [9]),
        .O(\sr_reg[9] ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[9]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [9]),
        .O(\grn_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[9]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [9]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [9]),
        .I4(\badr[15]_INST_0_i_5_1 [9]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[9] ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[9]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[8]),
        .I5(\sp_reg[15]_0 [9]),
        .O(\sp_reg[9] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[9]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [9]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_3 [9]),
        .I4(\pc_reg[15]_0 [9]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[9] ));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    \badrx[15]_INST_0_i_1 
       (.I0(\badrx[15]_INST_0_i_2_n_0 ),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(ir[15]),
        .I3(ir[11]),
        .I4(rst_n_fl_reg_0),
        .I5(\bcmd[2] ),
        .O(crdy_0));
  LUT3 #(
    .INIT(8'hA8)) 
    \badrx[15]_INST_0_i_2 
       (.I0(ir[8]),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .I2(crdy),
        .O(\badrx[15]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[15]_INST_0_i_3 
       (.I0(ir[9]),
        .I1(ir[10]),
        .O(\badrx[15]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[0]_INST_0 
       (.I0(\sp_reg[0] ),
        .I1(\stat_reg[2]_6 ),
        .O(bbus_o[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[10]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\bdatw[10]_INST_0_i_1_n_0 ),
        .O(bbus_o[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[11]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\bdatw[11]_INST_0_i_1_n_0 ),
        .O(bbus_o[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[12]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\bdatw[12]_INST_0_i_1_n_0 ),
        .O(bbus_o[12]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[13]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\bdatw[13]_INST_0_i_1_n_0 ),
        .O(bbus_o[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[14]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\bdatw[14]_INST_0_i_1_n_0 ),
        .O(bbus_o[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[15]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .O(bbus_o[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[1]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\sp_reg[1] ),
        .O(bbus_o[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[2]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bbus_o[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[3]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(bbus_o[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[4]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\sp_reg[4] ),
        .O(bbus_o[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[5]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bbus_o[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[6]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bbus_o[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[7]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bbus_o[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[8]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\bdatw[8]_INST_0_i_1_n_0 ),
        .O(bbus_o[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[9]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\bdatw[9]_INST_0_i_1_n_0 ),
        .O(bbus_o[9]));
  LUT6 #(
    .INIT(64'h0200020002000203)) 
    \bcmd[0]_INST_0 
       (.I0(\bcmd[0]_INST_0_i_1_n_0 ),
        .I1(\bcmd[0]_INST_0_i_2_n_0 ),
        .I2(\bcmd[0]_INST_0_i_3_n_0 ),
        .I3(ir[12]),
        .I4(\bcmd[0]_INST_0_i_4_n_0 ),
        .I5(\bcmd[0]_INST_0_i_5_n_0 ),
        .O(\stat_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h000022220000A222)) 
    \bcmd[0]_INST_0_i_1 
       (.I0(\bcmd[0]_INST_0_i_6_n_0 ),
        .I1(Q[0]),
        .I2(ir[11]),
        .I3(\bcmd[0]_INST_0_i_7_n_0 ),
        .I4(\bcmd[0]_INST_0_i_8_n_0 ),
        .I5(ir[6]),
        .O(\bcmd[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \bcmd[0]_INST_0_i_10 
       (.I0(ir[2]),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(ir[3]),
        .O(\bcmd[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBAFAAAAABFFFAAAA)) 
    \bcmd[0]_INST_0_i_11 
       (.I0(\bcmd[1] ),
        .I1(ir[3]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\bcmd[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h5555555505055455)) 
    \bcmd[0]_INST_0_i_2 
       (.I0(ir[8]),
        .I1(ir[3]),
        .I2(ir[10]),
        .I3(ir[1]),
        .I4(ir[7]),
        .I5(ir[9]),
        .O(\bcmd[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000040)) 
    \bcmd[0]_INST_0_i_3 
       (.I0(\bcmd[0]_INST_0_i_9_n_0 ),
        .I1(\bcmd[0]_INST_0_i_10_n_0 ),
        .I2(Q[0]),
        .I3(ir[5]),
        .I4(ir[4]),
        .I5(\bcmd[0]_INST_0_i_11_n_0 ),
        .O(\bcmd[0]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bcmd[0]_INST_0_i_4 
       (.I0(ir[2]),
        .I1(ir[9]),
        .I2(ir[10]),
        .I3(ir[11]),
        .O(\bcmd[0]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bcmd[0]_INST_0_i_5 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[4]),
        .I3(ir[5]),
        .I4(ir[6]),
        .O(\bcmd[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEBBAAAAAABBAAAAA)) 
    \bcmd[0]_INST_0_i_6 
       (.I0(Q[0]),
        .I1(ir[6]),
        .I2(ir[10]),
        .I3(ir[11]),
        .I4(ir[9]),
        .I5(ir[5]),
        .O(\bcmd[0]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bcmd[0]_INST_0_i_7 
       (.I0(ir[10]),
        .I1(ir[9]),
        .O(\bcmd[0]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bcmd[0]_INST_0_i_8 
       (.I0(ir[13]),
        .I1(ir[14]),
        .O(\bcmd[0]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bcmd[0]_INST_0_i_9 
       (.I0(ir[7]),
        .I1(ir[8]),
        .O(\bcmd[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000455555555)) 
    \bcmd[1]_INST_0 
       (.I0(\bcmd[1] ),
        .I1(\bcmd[1]_INST_0_i_2_n_0 ),
        .I2(\bcmd[1]_INST_0_i_3_n_0 ),
        .I3(\bcmd[1]_INST_0_i_4_n_0 ),
        .I4(\bcmd[1]_INST_0_i_5_n_0 ),
        .I5(\bcmd[1]_INST_0_i_6_n_0 ),
        .O(\stat_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000400004040404)) 
    \bcmd[1]_INST_0_i_10 
       (.I0(\bcmd[1]_INST_0_i_11_n_0 ),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(ir[5]),
        .I4(ir[3]),
        .I5(ir[8]),
        .O(\bcmd[1]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bcmd[1]_INST_0_i_11 
       (.I0(ir[10]),
        .I1(ir[11]),
        .O(\bcmd[1]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h1918)) 
    \bcmd[1]_INST_0_i_2 
       (.I0(ir[12]),
        .I1(ir[11]),
        .I2(Q[0]),
        .I3(fch_irq_req),
        .O(\bcmd[1]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \bcmd[1]_INST_0_i_3 
       (.I0(ir[2]),
        .I1(ir[9]),
        .I2(ir[8]),
        .O(\bcmd[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FFFFFFFFFFEF)) 
    \bcmd[1]_INST_0_i_4 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(ir[0]),
        .I3(\bcmd[1]_INST_0_i_7_n_0 ),
        .I4(ir[7]),
        .I5(ir[8]),
        .O(\bcmd[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7EFFFFFFFFFFFF7E)) 
    \bcmd[1]_INST_0_i_5 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(ir[11]),
        .I4(ir[10]),
        .I5(ir[9]),
        .O(\bcmd[1]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEBFFFFFF)) 
    \bcmd[1]_INST_0_i_6 
       (.I0(\bcmd[1]_INST_0_i_8_n_0 ),
        .I1(Q[0]),
        .I2(ir[9]),
        .I3(rst_n_fl_reg_0),
        .I4(ir[6]),
        .O(\bcmd[1]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bcmd[1]_INST_0_i_7 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[4]),
        .O(\bcmd[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFF01F)) 
    \bcmd[1]_INST_0_i_8 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(crdy),
        .I2(ir[10]),
        .I3(ir[11]),
        .I4(\bcmd[2]_INST_0_i_3_n_0 ),
        .I5(\bcmd[1]_INST_0_i_10_n_0 ),
        .O(\bcmd[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \bcmd[1]_INST_0_i_9 
       (.I0(ir[15]),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(ir[14]),
        .I4(ir[11]),
        .I5(ir[10]),
        .O(\bcmd[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \bcmd[2]_INST_0 
       (.I0(\bcmd[2] ),
        .I1(rst_n_fl_reg_0),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(ir[15]),
        .I4(ir[7]),
        .I5(\bcmd[2]_INST_0_i_4_n_0 ),
        .O(\stat_reg[1]_1 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bcmd[2]_INST_0_i_2 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(ir[13]),
        .O(rst_n_fl_reg_0));
  LUT2 #(
    .INIT(4'h7)) 
    \bcmd[2]_INST_0_i_3 
       (.I0(ir[8]),
        .I1(ir[9]),
        .O(\bcmd[2]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bcmd[2]_INST_0_i_4 
       (.I0(ir[10]),
        .I1(ir[11]),
        .O(\bcmd[2]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[0]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(\sp_reg[0] ),
        .O(bdatw[0]));
  LUT4 #(
    .INIT(16'h048C)) 
    \bdatw[10]_INST_0 
       (.I0(\stat_reg[1]_1 ),
        .I1(\stat_reg[1]_0 ),
        .I2(\bdatw[10]_INST_0_i_1_n_0 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bdatw[10]));
  LUT6 #(
    .INIT(64'h0000000000005515)) 
    \bdatw[10]_INST_0_i_1 
       (.I0(\bdatw[10]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0),
        .I2(eir[10]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[10]_INST_0_i_4_n_0 ),
        .I5(\bdatw[10]_INST_0_i_5_n_0 ),
        .O(\bdatw[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2200202000000000)) 
    \bdatw[10]_INST_0_i_10 
       (.I0(\bdatw[12]_INST_0_i_27_n_0 ),
        .I1(\bdatw[12]_INST_0_i_28_n_0 ),
        .I2(\sp_reg[15]_0 [2]),
        .I3(\badr[15]_INST_0_i_1_3 [2]),
        .I4(ctl_selb_rn[0]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_11 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [2]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[1]),
        .I4(\pc_reg[15]_0 [2]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[10]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[10]_INST_0_i_12 
       (.I0(\bdatw[10]_INST_0_i_26_n_0 ),
        .I1(\bdatw[10]_INST_0_i_4_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [5]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_6_1 [5]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[10]_INST_0_i_15 
       (.I0(\bdatw[10]_INST_0_i_30_n_0 ),
        .I1(gr3_bus1__0_30),
        .I2(\bdatw[12]_INST_0_i_8_4 [2]),
        .I3(gr6_bus1__0_31),
        .I4(\bdatw[12]_INST_0_i_8_5 [2]),
        .I5(\bdatw[10]_INST_0_i_31_n_0 ),
        .O(\bdatw[10]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatw[10]_INST_0_i_16 
       (.I0(ctl_selb_rn[1]),
        .I1(ctl_selb_rn[0]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [2]),
        .O(\bdatw[10]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[10]_INST_0_i_17 
       (.I0(gr6_bus1__0_18),
        .I1(\bdatw[12]_INST_0_i_8_2 [2]),
        .I2(\bdatw[10]_INST_0_i_32_n_0 ),
        .I3(\bdatw[10]_INST_0_i_33_n_0 ),
        .I4(gr7_bus1__0_19),
        .I5(\bdatw[12]_INST_0_i_8_3 [2]),
        .O(\bdatw[10]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[10]_INST_0_i_18 
       (.I0(gr2_bus1__0_14),
        .I1(\bdatw[12]_INST_0_i_8_0 [2]),
        .I2(\bdatw[10]_INST_0_i_34_n_0 ),
        .I3(\bdatw[10]_INST_0_i_35_n_0 ),
        .I4(gr3_bus1__0_15),
        .I5(\bdatw[12]_INST_0_i_8_1 [2]),
        .O(\bdatw[10]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bdatw[10]_INST_0_i_2 
       (.I0(\bdatw[10]_INST_0_i_6_n_0 ),
        .I1(\bdatw[10]_INST_0_i_7_n_0 ),
        .I2(\bdatw[10]_INST_0_i_8_n_0 ),
        .I3(\tr_reg[2]_0 [2]),
        .I4(\bdatw[10]_INST_0_i_10_n_0 ),
        .I5(\bdatw[10]_INST_0_i_11_n_0 ),
        .O(\bdatw[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_21 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [2]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [2]),
        .I4(\badr[15]_INST_0_i_5_1 [2]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[10]_INST_0_i_23 
       (.I0(gr6_bus1__0),
        .I1(\bdatw[12]_INST_0_i_9_1 [2]),
        .I2(\bdatw[10]_INST_0_i_36_n_0 ),
        .I3(\bdatw[10]_INST_0_i_37_n_0 ),
        .I4(gr7_bus1__0),
        .I5(\bdatw[12]_INST_0_i_9_2 [2]),
        .O(\grn_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[10]_INST_0_i_24 
       (.I0(gr2_bus1__0),
        .I1(\bdatw[12]_INST_0_i_9 [2]),
        .I2(\bdatw[10]_INST_0_i_38_n_0 ),
        .I3(\bdatw[10]_INST_0_i_39_n_0 ),
        .I4(gr3_bus1__0),
        .I5(\bdatw[12]_INST_0_i_9_0 [2]),
        .O(\grn_reg[2] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[10]_INST_0_i_26 
       (.I0(\bdatw[10]_INST_0_i_40_n_0 ),
        .I1(gr3_bus1__0_10),
        .I2(\bdatw[15]_INST_0_i_22_0 [5]),
        .I3(gr2_bus1__0_11),
        .I4(\bdatw[15]_INST_0_i_22_1 [5]),
        .O(\bdatw[10]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h8088222280888088)) 
    \bdatw[10]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(ctl_selb_0),
        .I2(ir[9]),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[14]_INST_0_i_10_n_0 ),
        .I5(\bdatw[11]_INST_0_i_12_n_0 ),
        .O(\bdatw[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[10]_INST_0_i_30 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_16_0 [2]),
        .O(\bdatw[10]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[10]_INST_0_i_31 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_16_1 [2]),
        .O(\bdatw[10]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[10]_INST_0_i_32 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_18_0 [2]),
        .O(\bdatw[10]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[10]_INST_0_i_33 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_18_1 [2]),
        .O(\bdatw[10]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[10]_INST_0_i_34 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_19_0 [2]),
        .O(\bdatw[10]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[10]_INST_0_i_35 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_19_1 [2]),
        .O(\bdatw[10]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[10]_INST_0_i_36 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_24_0 [2]),
        .O(\bdatw[10]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[10]_INST_0_i_37 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_24_1 [2]),
        .O(\bdatw[10]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[10]_INST_0_i_38 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_25_0 [2]),
        .O(\bdatw[10]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[10]_INST_0_i_39 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_25_1 [2]),
        .O(\bdatw[10]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[10]_INST_0_i_4 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\badr[15]_INST_0_i_1_3 [10]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\sp_reg[15]_0 [10]),
        .I4(\rgf/bbus_b02 [10]),
        .I5(\bdatw[10]_INST_0_i_1_0 ),
        .O(\bdatw[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_40 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [10]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [10]),
        .I4(\badr[15]_INST_0_i_5_1 [10]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [10]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[9]),
        .I4(\pc_reg[15]_0 [10]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h221DEE1DFFFFFFFF)) 
    \bdatw[10]_INST_0_i_6 
       (.I0(\bcmd[0]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_12_n_0 ),
        .I2(ir[2]),
        .I3(ctl_selb_0),
        .I4(ir[1]),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[10]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatw[10]_INST_0_i_7 
       (.I0(ctl_selb_0),
        .I1(eir[2]),
        .I2(\bdatw[15]_INST_0_i_5_n_0 ),
        .O(\bdatw[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[10]_INST_0_i_8 
       (.I0(\bdatw[10]_INST_0_i_2_0 ),
        .I1(\bdatw[10]_INST_0_i_15_n_0 ),
        .I2(\bdatw[10]_INST_0_i_16_n_0 ),
        .I3(\bdatw[10]_INST_0_i_17_n_0 ),
        .I4(\bdatw[10]_INST_0_i_18_n_0 ),
        .I5(\bdatw[10]_INST_0_i_2_1 ),
        .O(\bdatw[10]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h048C)) 
    \bdatw[11]_INST_0 
       (.I0(\stat_reg[1]_1 ),
        .I1(\stat_reg[1]_0 ),
        .I2(\bdatw[11]_INST_0_i_1_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(bdatw[11]));
  LUT6 #(
    .INIT(64'h0000000000005515)) 
    \bdatw[11]_INST_0_i_1 
       (.I0(\bdatw[11]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0),
        .I2(eir[11]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[11]_INST_0_i_4_n_0 ),
        .I5(\bdatw[11]_INST_0_i_5_n_0 ),
        .O(\bdatw[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2200202000000000)) 
    \bdatw[11]_INST_0_i_10 
       (.I0(\bdatw[12]_INST_0_i_27_n_0 ),
        .I1(\bdatw[12]_INST_0_i_28_n_0 ),
        .I2(\sp_reg[15]_0 [3]),
        .I3(\badr[15]_INST_0_i_1_3 [3]),
        .I4(ctl_selb_rn[0]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_11 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [3]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[2]),
        .I4(\pc_reg[15]_0 [3]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[11]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[11]_INST_0_i_12 
       (.I0(ir[1]),
        .I1(ir[2]),
        .O(\bdatw[11]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[11]_INST_0_i_13 
       (.I0(\bdatw[11]_INST_0_i_28_n_0 ),
        .I1(\bdatw[11]_INST_0_i_4_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [6]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_6_1 [6]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [11]));
  LUT5 #(
    .INIT(32'h55555155)) 
    \bdatw[11]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_12_n_0 ),
        .I1(ir[1]),
        .I2(ir[2]),
        .I3(ir[0]),
        .I4(ir[3]),
        .O(\bdatw[11]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[11]_INST_0_i_17 
       (.I0(\bdatw[11]_INST_0_i_32_n_0 ),
        .I1(gr3_bus1__0_30),
        .I2(\bdatw[12]_INST_0_i_8_4 [3]),
        .I3(gr6_bus1__0_31),
        .I4(\bdatw[12]_INST_0_i_8_5 [3]),
        .I5(\bdatw[11]_INST_0_i_33_n_0 ),
        .O(\bdatw[11]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatw[11]_INST_0_i_18 
       (.I0(ctl_selb_rn[1]),
        .I1(ctl_selb_rn[0]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [3]),
        .O(\bdatw[11]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[11]_INST_0_i_19 
       (.I0(gr6_bus1__0_18),
        .I1(\bdatw[12]_INST_0_i_8_2 [3]),
        .I2(\bdatw[11]_INST_0_i_34_n_0 ),
        .I3(\bdatw[11]_INST_0_i_35_n_0 ),
        .I4(gr7_bus1__0_19),
        .I5(\bdatw[12]_INST_0_i_8_3 [3]),
        .O(\bdatw[11]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bdatw[11]_INST_0_i_2 
       (.I0(\bdatw[11]_INST_0_i_6_n_0 ),
        .I1(\bdatw[11]_INST_0_i_7_n_0 ),
        .I2(\bdatw[11]_INST_0_i_8_n_0 ),
        .I3(\tr_reg[2]_0 [3]),
        .I4(\bdatw[11]_INST_0_i_10_n_0 ),
        .I5(\bdatw[11]_INST_0_i_11_n_0 ),
        .O(\bdatw[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[11]_INST_0_i_20 
       (.I0(gr2_bus1__0_14),
        .I1(\bdatw[12]_INST_0_i_8_0 [3]),
        .I2(\bdatw[11]_INST_0_i_36_n_0 ),
        .I3(\bdatw[11]_INST_0_i_37_n_0 ),
        .I4(gr3_bus1__0_15),
        .I5(\bdatw[12]_INST_0_i_8_1 [3]),
        .O(\bdatw[11]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_23 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [3]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [3]),
        .I4(\badr[15]_INST_0_i_5_1 [3]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[11]_INST_0_i_25 
       (.I0(gr6_bus1__0),
        .I1(\bdatw[12]_INST_0_i_9_1 [3]),
        .I2(\bdatw[11]_INST_0_i_38_n_0 ),
        .I3(\bdatw[11]_INST_0_i_39_n_0 ),
        .I4(gr7_bus1__0),
        .I5(\bdatw[12]_INST_0_i_9_2 [3]),
        .O(\grn_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[11]_INST_0_i_26 
       (.I0(gr2_bus1__0),
        .I1(\bdatw[12]_INST_0_i_9 [3]),
        .I2(\bdatw[11]_INST_0_i_40_n_0 ),
        .I3(\bdatw[11]_INST_0_i_41_n_0 ),
        .I4(gr3_bus1__0),
        .I5(\bdatw[12]_INST_0_i_9_0 [3]),
        .O(\grn_reg[3] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[11]_INST_0_i_28 
       (.I0(\bdatw[11]_INST_0_i_42_n_0 ),
        .I1(gr3_bus1__0_10),
        .I2(\bdatw[15]_INST_0_i_22_0 [6]),
        .I3(gr2_bus1__0_11),
        .I4(\bdatw[15]_INST_0_i_22_1 [6]),
        .O(\bdatw[11]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h838C8C8C00000000)) 
    \bdatw[11]_INST_0_i_3 
       (.I0(ir[10]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[15]_INST_0_i_13_n_0 ),
        .I4(\bdatw[11]_INST_0_i_12_n_0 ),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[11]_INST_0_i_32 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_16_0 [3]),
        .O(\bdatw[11]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[11]_INST_0_i_33 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_16_1 [3]),
        .O(\bdatw[11]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[11]_INST_0_i_34 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_18_0 [3]),
        .O(\bdatw[11]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[11]_INST_0_i_35 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_18_1 [3]),
        .O(\bdatw[11]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[11]_INST_0_i_36 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_19_0 [3]),
        .O(\bdatw[11]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[11]_INST_0_i_37 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_19_1 [3]),
        .O(\bdatw[11]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[11]_INST_0_i_38 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_24_0 [3]),
        .O(\bdatw[11]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[11]_INST_0_i_39 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_24_1 [3]),
        .O(\bdatw[11]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[11]_INST_0_i_4 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\badr[15]_INST_0_i_1_3 [11]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\sp_reg[15]_0 [11]),
        .I4(\rgf/bbus_b02 [11]),
        .I5(\bdatw[11]_INST_0_i_1_0 ),
        .O(\bdatw[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[11]_INST_0_i_40 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_25_0 [3]),
        .O(\bdatw[11]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[11]_INST_0_i_41 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_25_1 [3]),
        .O(\bdatw[11]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_42 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [11]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [11]),
        .I4(\badr[15]_INST_0_i_5_1 [11]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [11]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[10]),
        .I4(\pc_reg[15]_0 [11]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00F20FF2FFFFFFFF)) 
    \bdatw[11]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_12_n_0 ),
        .I1(ir[3]),
        .I2(\bdatw[11]_INST_0_i_15_n_0 ),
        .I3(ctl_selb_0),
        .I4(ir[2]),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[11]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatw[11]_INST_0_i_7 
       (.I0(ctl_selb_0),
        .I1(eir[3]),
        .I2(\bdatw[15]_INST_0_i_5_n_0 ),
        .O(\bdatw[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[11]_INST_0_i_8 
       (.I0(\bdatw[11]_INST_0_i_2_1 ),
        .I1(\bdatw[11]_INST_0_i_17_n_0 ),
        .I2(\bdatw[11]_INST_0_i_18_n_0 ),
        .I3(\bdatw[11]_INST_0_i_19_n_0 ),
        .I4(\bdatw[11]_INST_0_i_20_n_0 ),
        .I5(\bdatw[11]_INST_0_i_2_2 ),
        .O(\bdatw[11]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h048C)) 
    \bdatw[12]_INST_0 
       (.I0(\stat_reg[1]_1 ),
        .I1(\stat_reg[1]_0 ),
        .I2(\bdatw[12]_INST_0_i_1_n_0 ),
        .I3(\sp_reg[4] ),
        .O(bdatw[12]));
  LUT6 #(
    .INIT(64'h000000000000AA2A)) 
    \bdatw[12]_INST_0_i_1 
       (.I0(\bdatw[12]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0),
        .I2(eir[12]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[12]_INST_0_i_4_n_0 ),
        .I5(\bdatw[12]_INST_0_i_5_n_0 ),
        .O(\bdatw[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2200202000000000)) 
    \bdatw[12]_INST_0_i_10 
       (.I0(\bdatw[12]_INST_0_i_27_n_0 ),
        .I1(\bdatw[12]_INST_0_i_28_n_0 ),
        .I2(\sp_reg[15]_0 [4]),
        .I3(\badr[15]_INST_0_i_1_3 [4]),
        .I4(ctl_selb_rn[0]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAFBFFFFFFFF)) 
    \bdatw[12]_INST_0_i_100 
       (.I0(Q[0]),
        .I1(\bdatw[15]_INST_0_i_65_n_0 ),
        .I2(ir[8]),
        .I3(ir[11]),
        .I4(\bdatw[12]_INST_0_i_107_n_0 ),
        .I5(\bdatw[15]_INST_0_i_31_n_0 ),
        .O(\bdatw[12]_INST_0_i_100_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bdatw[12]_INST_0_i_101 
       (.I0(ir[6]),
        .I1(ir[9]),
        .O(\bdatw[12]_INST_0_i_101_n_0 ));
  LUT5 #(
    .INIT(32'hFF2AFFFF)) 
    \bdatw[12]_INST_0_i_102 
       (.I0(ir[8]),
        .I1(ir[7]),
        .I2(ir[6]),
        .I3(ir[9]),
        .I4(ir[10]),
        .O(\bdatw[12]_INST_0_i_102_n_0 ));
  LUT6 #(
    .INIT(64'h1000001010100010)) 
    \bdatw[12]_INST_0_i_103 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[2]),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\bdatw[12]_INST_0_i_103_n_0 ));
  LUT4 #(
    .INIT(16'hF4FF)) 
    \bdatw[12]_INST_0_i_104 
       (.I0(ir[6]),
        .I1(ir[8]),
        .I2(ir[10]),
        .I3(ir[9]),
        .O(\bdatw[12]_INST_0_i_104_n_0 ));
  LUT3 #(
    .INIT(8'h59)) 
    \bdatw[12]_INST_0_i_105 
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(ir[5]),
        .O(\bdatw[12]_INST_0_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h00007500FFFFFFFF)) 
    \bdatw[12]_INST_0_i_106 
       (.I0(ir[1]),
        .I1(ir[6]),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(\bdatw[12]_INST_0_i_106_n_0 ));
  LUT6 #(
    .INIT(64'hA800A800A8000000)) 
    \bdatw[12]_INST_0_i_107 
       (.I0(ir[6]),
        .I1(crdy),
        .I2(\bcmd[1]_INST_0_i_9_n_0 ),
        .I3(ir[10]),
        .I4(ir[7]),
        .I5(ir[9]),
        .O(\bdatw[12]_INST_0_i_107_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_11 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [4]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[3]),
        .I4(\pc_reg[15]_0 [4]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[12]_INST_0_i_12 
       (.I0(\bdatw[12]_INST_0_i_31_n_0 ),
        .I1(\bdatw[12]_INST_0_i_4_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [7]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_6_1 [7]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [12]));
  LUT4 #(
    .INIT(16'h0100)) 
    \bdatw[12]_INST_0_i_14 
       (.I0(ir[3]),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(ir[2]),
        .O(\bdatw[12]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[12]_INST_0_i_16 
       (.I0(\bdatw[12]_INST_0_i_37_n_0 ),
        .I1(gr3_bus1__0_30),
        .I2(\bdatw[12]_INST_0_i_8_4 [4]),
        .I3(gr6_bus1__0_31),
        .I4(\bdatw[12]_INST_0_i_8_5 [4]),
        .I5(\bdatw[12]_INST_0_i_40_n_0 ),
        .O(\bdatw[12]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatw[12]_INST_0_i_17 
       (.I0(ctl_selb_rn[1]),
        .I1(ctl_selb_rn[0]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [4]),
        .O(\bdatw[12]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[12]_INST_0_i_18 
       (.I0(gr6_bus1__0_18),
        .I1(\bdatw[12]_INST_0_i_8_2 [4]),
        .I2(\bdatw[12]_INST_0_i_42_n_0 ),
        .I3(\bdatw[12]_INST_0_i_43_n_0 ),
        .I4(gr7_bus1__0_19),
        .I5(\bdatw[12]_INST_0_i_8_3 [4]),
        .O(\bdatw[12]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[12]_INST_0_i_19 
       (.I0(gr2_bus1__0_14),
        .I1(\bdatw[12]_INST_0_i_8_0 [4]),
        .I2(\bdatw[12]_INST_0_i_46_n_0 ),
        .I3(\bdatw[12]_INST_0_i_47_n_0 ),
        .I4(gr3_bus1__0_15),
        .I5(\bdatw[12]_INST_0_i_8_1 [4]),
        .O(\bdatw[12]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bdatw[12]_INST_0_i_2 
       (.I0(\bdatw[12]_INST_0_i_6_n_0 ),
        .I1(\bdatw[12]_INST_0_i_7_n_0 ),
        .I2(\bdatw[12]_INST_0_i_8_n_0 ),
        .I3(\tr_reg[2]_0 [4]),
        .I4(\bdatw[12]_INST_0_i_10_n_0 ),
        .I5(\bdatw[12]_INST_0_i_11_n_0 ),
        .O(\sp_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_22 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [4]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [4]),
        .I4(\badr[15]_INST_0_i_5_1 [4]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[12]_INST_0_i_24 
       (.I0(gr6_bus1__0),
        .I1(\bdatw[12]_INST_0_i_9_1 [4]),
        .I2(\bdatw[12]_INST_0_i_56_n_0 ),
        .I3(\bdatw[12]_INST_0_i_57_n_0 ),
        .I4(gr7_bus1__0),
        .I5(\bdatw[12]_INST_0_i_9_2 [4]),
        .O(\grn_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[12]_INST_0_i_25 
       (.I0(gr2_bus1__0),
        .I1(\bdatw[12]_INST_0_i_9 [4]),
        .I2(\bdatw[12]_INST_0_i_60_n_0 ),
        .I3(\bdatw[12]_INST_0_i_61_n_0 ),
        .I4(gr3_bus1__0),
        .I5(\bdatw[12]_INST_0_i_9_0 [4]),
        .O(\grn_reg[4] ));
  LUT3 #(
    .INIT(8'h01)) 
    \bdatw[12]_INST_0_i_27 
       (.I0(\bdatw[15]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(ctl_selb_0),
        .O(\bdatw[12]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444545555)) 
    \bdatw[12]_INST_0_i_28 
       (.I0(Q[2]),
        .I1(\bdatw[12]_INST_0_i_63_n_0 ),
        .I2(ir[2]),
        .I3(\bdatw[12]_INST_0_i_64_n_0 ),
        .I4(\bdatw[12]_INST_0_i_65_n_0 ),
        .I5(\bdatw[12]_INST_0_i_66_n_0 ),
        .O(\bdatw[12]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EAEEEAEA)) 
    \bdatw[12]_INST_0_i_29 
       (.I0(\bdatw[12]_INST_0_i_67_n_0 ),
        .I1(rst_n_fl_reg_0),
        .I2(\bdatw[12]_INST_0_i_68_n_0 ),
        .I3(\bdatw[12]_INST_0_i_64_n_0 ),
        .I4(ir[0]),
        .I5(\bdatw[12]_INST_0_i_69_n_0 ),
        .O(ctl_selb_rn[0]));
  LUT6 #(
    .INIT(64'hAAAAACAAFFFFFFFF)) 
    \bdatw[12]_INST_0_i_3 
       (.I0(\bdatw[14]_INST_0_i_9_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[14]_INST_0_i_10_n_0 ),
        .I3(ir[2]),
        .I4(ir[1]),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF8A)) 
    \bdatw[12]_INST_0_i_30 
       (.I0(rst_n_fl_reg_0),
        .I1(\bdatw[12]_INST_0_i_70_n_0 ),
        .I2(\bdatw[12]_INST_0_i_71_n_0 ),
        .I3(Q[0]),
        .I4(\bdatw[12]_INST_0_i_72_n_0 ),
        .I5(\bcmd[1] ),
        .O(ctl_selb_rn[1]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[12]_INST_0_i_31 
       (.I0(\bdatw[12]_INST_0_i_73_n_0 ),
        .I1(gr3_bus1__0_10),
        .I2(\bdatw[15]_INST_0_i_22_0 [7]),
        .I3(gr2_bus1__0_11),
        .I4(\bdatw[15]_INST_0_i_22_1 [7]),
        .O(\bdatw[12]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_35 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(bank_sel[3]),
        .O(gr1_bus1__0_34));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_36 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[12]_INST_0_i_84_n_0 ),
        .I5(bank_sel[3]),
        .O(gr2_bus1__0_35));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[12]_INST_0_i_37 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_16_0 [4]),
        .O(\bdatw[12]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_38 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_91_n_0 ),
        .I5(bank_sel[3]),
        .O(gr3_bus1__0_30));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_39 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[12]_INST_0_i_84_n_0 ),
        .I5(bank_sel[3]),
        .O(gr6_bus1__0_31));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[12]_INST_0_i_4 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\badr[15]_INST_0_i_1_3 [12]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\sp_reg[15]_0 [12]),
        .I4(\rgf/bbus_b02 [12]),
        .I5(\bdatw[12]_INST_0_i_1_0 ),
        .O(\bdatw[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[12]_INST_0_i_40 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_16_1 [4]),
        .O(\bdatw[12]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_41 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[12]_INST_0_i_84_n_0 ),
        .I5(bank_sel[1]),
        .O(gr6_bus1__0_18));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[12]_INST_0_i_42 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_18_0 [4]),
        .O(\bdatw[12]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_43 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_18_1 [4]),
        .O(\bdatw[12]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_44 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_91_n_0 ),
        .I5(bank_sel[1]),
        .O(gr7_bus1__0_19));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_45 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[12]_INST_0_i_84_n_0 ),
        .I5(bank_sel[1]),
        .O(gr2_bus1__0_14));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_46 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_19_0 [4]),
        .O(\bdatw[12]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[12]_INST_0_i_47 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_19_1 [4]),
        .O(\bdatw[12]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_48 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_91_n_0 ),
        .I5(bank_sel[1]),
        .O(gr3_bus1__0_15));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_49 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[12]_INST_0_i_84_n_0 ),
        .I5(bank_sel[2]),
        .O(gr2_bus1__0_11));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [12]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[11]),
        .I4(\pc_reg[15]_0 [12]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_50 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_91_n_0 ),
        .I5(bank_sel[2]),
        .O(gr3_bus1__0_10));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_51 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_91_n_0 ),
        .I5(bank_sel[2]),
        .O(\rgf/bank02/bbuso2l/gr7_bus1__0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_52 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[12]_INST_0_i_84_n_0 ),
        .I5(bank_sel[2]),
        .O(\rgf/bank02/bbuso2l/gr6_bus1__0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_53 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(bank_sel[2]),
        .O(\rgf/bank02/bbuso2l/gr1_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \bdatw[12]_INST_0_i_54 
       (.I0(ctl_selb_rn[0]),
        .I1(ctl_selb_rn[1]),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_14_n_0 ),
        .I5(ctl_selb_0),
        .O(\stat_reg[0] ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_55 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[12]_INST_0_i_84_n_0 ),
        .I5(bank_sel[0]),
        .O(gr6_bus1__0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[12]_INST_0_i_56 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_24_0 [4]),
        .O(\bdatw[12]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_57 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_24_1 [4]),
        .O(\bdatw[12]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_58 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_91_n_0 ),
        .I5(bank_sel[0]),
        .O(gr7_bus1__0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_59 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[12]_INST_0_i_84_n_0 ),
        .I5(bank_sel[0]),
        .O(gr2_bus1__0));
  LUT6 #(
    .INIT(64'hCC1BEE1BFFFFFFFF)) 
    \bdatw[12]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_12_n_0 ),
        .I1(\bdatw[12]_INST_0_i_14_n_0 ),
        .I2(ir[4]),
        .I3(ctl_selb_0),
        .I4(ir[3]),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_60 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_25_0 [4]),
        .O(\bdatw[12]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[12]_INST_0_i_61 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_25_1 [4]),
        .O(\bdatw[12]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_62 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_91_n_0 ),
        .I5(bank_sel[0]),
        .O(gr3_bus1__0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \bdatw[12]_INST_0_i_63 
       (.I0(\bdatw[12]_INST_0_i_86_n_0 ),
        .I1(ir[6]),
        .I2(ir[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(ir[15]),
        .O(\bdatw[12]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h08888888AAAAAAAA)) 
    \bdatw[12]_INST_0_i_64 
       (.I0(\bdatw[12]_INST_0_i_87_n_0 ),
        .I1(\bdatw[12]_INST_0_i_88_n_0 ),
        .I2(\bdatw[12]_INST_0_i_89_n_0 ),
        .I3(ir[8]),
        .I4(\bcmd[1]_INST_0_i_9_n_0 ),
        .I5(ir[6]),
        .O(\bdatw[12]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h11515555FFFFFFFF)) 
    \bdatw[12]_INST_0_i_65 
       (.I0(\bdatw[12]_INST_0_i_90_n_0 ),
        .I1(\ccmd[4]_INST_0_i_11_n_0 ),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ir[2]),
        .I5(ir[11]),
        .O(\bdatw[12]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \bdatw[12]_INST_0_i_66 
       (.I0(ir[14]),
        .I1(ir[12]),
        .I2(Q[0]),
        .I3(ir[13]),
        .I4(Q[1]),
        .I5(ir[15]),
        .O(\bdatw[12]_INST_0_i_66_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \bdatw[12]_INST_0_i_67 
       (.I0(Q[0]),
        .I1(\bdatw[12]_INST_0_i_91_n_0 ),
        .I2(\iv[15]_i_38_n_0 ),
        .O(\bdatw[12]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D0D0D0FFD0D0)) 
    \bdatw[12]_INST_0_i_68 
       (.I0(\bdatw[12]_INST_0_i_92_n_0 ),
        .I1(\bdatw[12]_INST_0_i_93_n_0 ),
        .I2(ir[11]),
        .I3(\bdatw[12]_INST_0_i_94_n_0 ),
        .I4(\bdatw[12]_INST_0_i_95_n_0 ),
        .I5(\ccmd[4]_INST_0_i_20_n_0 ),
        .O(\bdatw[12]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAABABABABABABABA)) 
    \bdatw[12]_INST_0_i_69 
       (.I0(\bcmd[1] ),
        .I1(\bdatw[12]_INST_0_i_96_n_0 ),
        .I2(Q[0]),
        .I3(ir[10]),
        .I4(\ccmd[3]_INST_0_i_8_n_0 ),
        .I5(\bdatw[12]_INST_0_i_97_n_0 ),
        .O(\bdatw[12]_INST_0_i_69_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatw[12]_INST_0_i_7 
       (.I0(ctl_selb_0),
        .I1(eir[4]),
        .I2(\bdatw[15]_INST_0_i_5_n_0 ),
        .O(\bdatw[12]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h80FF0000)) 
    \bdatw[12]_INST_0_i_70 
       (.I0(ir[8]),
        .I1(ir[6]),
        .I2(\bdatw[12]_INST_0_i_89_n_0 ),
        .I3(\bdatw[12]_INST_0_i_87_n_0 ),
        .I4(ir[1]),
        .O(\bdatw[12]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA800A8A8)) 
    \bdatw[12]_INST_0_i_71 
       (.I0(ir[10]),
        .I1(\ccmd[2]_INST_0_i_14_n_0 ),
        .I2(\ccmd[4]_INST_0_i_10_n_0 ),
        .I3(\bdatw[12]_INST_0_i_98_n_0 ),
        .I4(ir[1]),
        .I5(\bdatw[12]_INST_0_i_99_n_0 ),
        .O(\bdatw[12]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h7F0000007F007F00)) 
    \bdatw[12]_INST_0_i_72 
       (.I0(ir[6]),
        .I1(ir[1]),
        .I2(\bdatw[12]_INST_0_i_86_n_0 ),
        .I3(Q[0]),
        .I4(\bdatw[15]_INST_0_i_47_n_0 ),
        .I5(\iv[15]_i_38_n_0 ),
        .O(\bdatw[12]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_73 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [12]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [12]),
        .I4(\badr[15]_INST_0_i_5_1 [12]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[12]_INST_0_i_8 
       (.I0(\bdatw[12]_INST_0_i_2_4 ),
        .I1(\bdatw[12]_INST_0_i_16_n_0 ),
        .I2(\bdatw[12]_INST_0_i_17_n_0 ),
        .I3(\bdatw[12]_INST_0_i_18_n_0 ),
        .I4(\bdatw[12]_INST_0_i_19_n_0 ),
        .I5(\bdatw[12]_INST_0_i_2_5 ),
        .O(\bdatw[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5400540054005454)) 
    \bdatw[12]_INST_0_i_84 
       (.I0(\bdatw[15]_INST_0_i_107_n_0 ),
        .I1(Q[0]),
        .I2(\bdatw[15]_INST_0_i_108_n_0 ),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(\bdatw[15]_INST_0_i_109_n_0 ),
        .I5(\bdatw[12]_INST_0_i_67_n_0 ),
        .O(\bdatw[12]_INST_0_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAFFFFAFAF)) 
    \bdatw[12]_INST_0_i_85 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_33_n_0 ),
        .I2(\bdatw[15]_INST_0_i_32_n_0 ),
        .I3(\bdatw[12]_INST_0_i_100_n_0 ),
        .I4(\bcmd[1] ),
        .I5(rst_n_fl_reg_0),
        .O(\bdatw[12]_INST_0_i_85_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \bdatw[12]_INST_0_i_86 
       (.I0(ir[13]),
        .I1(ir[11]),
        .I2(ir[14]),
        .I3(ir[12]),
        .I4(\ccmd[3]_INST_0_i_5_n_0 ),
        .O(\bdatw[12]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFAAAAEFFBAAAA)) 
    \bdatw[12]_INST_0_i_87 
       (.I0(\bdatw[15]_INST_0_i_46_n_0 ),
        .I1(\bdatw[12]_INST_0_i_101_n_0 ),
        .I2(ir[8]),
        .I3(ir[10]),
        .I4(\bdatw[12]_INST_0_i_102_n_0 ),
        .I5(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\bdatw[12]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFBFFFBFB)) 
    \bdatw[12]_INST_0_i_88 
       (.I0(\ccmd[4]_INST_0_i_20_n_0 ),
        .I1(ir[9]),
        .I2(\bcmd[1]_INST_0_i_11_n_0 ),
        .I3(ir[5]),
        .I4(ir[4]),
        .I5(ir[3]),
        .O(\bdatw[12]_INST_0_i_88_n_0 ));
  LUT5 #(
    .INIT(32'h000000A8)) 
    \bdatw[12]_INST_0_i_89 
       (.I0(ir[10]),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(crdy),
        .I4(ir[11]),
        .O(\bdatw[12]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCA000000)) 
    \bdatw[12]_INST_0_i_90 
       (.I0(\ccmd[4]_INST_0_i_10_n_0 ),
        .I1(crdy),
        .I2(ir[8]),
        .I3(ir[2]),
        .I4(\bcmd[0]_INST_0_i_7_n_0 ),
        .I5(\bdatw[12]_INST_0_i_103_n_0 ),
        .O(\bdatw[12]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hCF0DFFCFFFFDFFFF)) 
    \bdatw[12]_INST_0_i_91 
       (.I0(fch_irq_req),
        .I1(ir[1]),
        .I2(ir[2]),
        .I3(ir[3]),
        .I4(ir[0]),
        .I5(crdy),
        .O(\bdatw[12]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFEFEFEFFFEF)) 
    \bdatw[12]_INST_0_i_92 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[0]),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\bdatw[12]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hCA00FFFF00000000)) 
    \bdatw[12]_INST_0_i_93 
       (.I0(\ccmd[4]_INST_0_i_10_n_0 ),
        .I1(crdy),
        .I2(ir[8]),
        .I3(\bcmd[0]_INST_0_i_7_n_0 ),
        .I4(\bdatw[12]_INST_0_i_104_n_0 ),
        .I5(ir[0]),
        .O(\bdatw[12]_INST_0_i_93_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \bdatw[12]_INST_0_i_94 
       (.I0(ir[6]),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(ir[3]),
        .O(\bdatw[12]_INST_0_i_94_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[12]_INST_0_i_95 
       (.I0(ir[9]),
        .I1(ir[11]),
        .I2(ir[10]),
        .O(\bdatw[12]_INST_0_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \bdatw[12]_INST_0_i_96 
       (.I0(\ccmd[4]_INST_0_i_19_n_0 ),
        .I1(\bcmd[1]_INST_0_i_7_n_0 ),
        .I2(ctl_fetch_ext_fl_i_7_n_0),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(\bdatw[15]_INST_0_i_47_n_0 ),
        .O(\bdatw[12]_INST_0_i_96_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \bdatw[12]_INST_0_i_97 
       (.I0(ir[0]),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(ir[7]),
        .I4(ir[6]),
        .O(\bdatw[12]_INST_0_i_97_n_0 ));
  LUT6 #(
    .INIT(64'h1DCCDDCCDDCCDDCC)) 
    \bdatw[12]_INST_0_i_98 
       (.I0(crdy),
        .I1(ir[9]),
        .I2(ir[6]),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(\bdatw[12]_INST_0_i_105_n_0 ),
        .O(\bdatw[12]_INST_0_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hABBBBBABABABBBAB)) 
    \bdatw[12]_INST_0_i_99 
       (.I0(\bdatw[12]_INST_0_i_106_n_0 ),
        .I1(\ccmd[4]_INST_0_i_18_n_0 ),
        .I2(ir[1]),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\bdatw[12]_INST_0_i_99_n_0 ));
  LUT4 #(
    .INIT(16'h048C)) 
    \bdatw[13]_INST_0 
       (.I0(\stat_reg[1]_1 ),
        .I1(\stat_reg[1]_0 ),
        .I2(\bdatw[13]_INST_0_i_1_n_0 ),
        .I3(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bdatw[13]));
  LUT6 #(
    .INIT(64'h0000000000005515)) 
    \bdatw[13]_INST_0_i_1 
       (.I0(\bdatw[13]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0),
        .I2(eir[13]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[13]_INST_0_i_4_n_0 ),
        .I5(\bdatw[13]_INST_0_i_5_n_0 ),
        .O(\bdatw[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_10 
       (.I0(\bdatw[13]_INST_0_i_15_n_0 ),
        .I1(\bdatw[13]_INST_0_i_4_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [8]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_6_1 [8]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [13]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \bdatw[13]_INST_0_i_12 
       (.I0(ir[2]),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(ir[3]),
        .I4(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_13 
       (.I0(\bdatw[13]_INST_0_i_19_n_0 ),
        .I1(\bdatw[13]_INST_0_i_7_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [0]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_6_1 [0]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [5]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[13]_INST_0_i_15 
       (.I0(\bdatw[13]_INST_0_i_23_n_0 ),
        .I1(gr3_bus1__0_10),
        .I2(\bdatw[15]_INST_0_i_22_0 [8]),
        .I3(gr2_bus1__0_11),
        .I4(\bdatw[15]_INST_0_i_22_1 [8]),
        .O(\bdatw[13]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[13]_INST_0_i_19 
       (.I0(\bdatw[13]_INST_0_i_34_n_0 ),
        .I1(gr3_bus1__0_10),
        .I2(\bdatw[15]_INST_0_i_22_0 [0]),
        .I3(gr2_bus1__0_11),
        .I4(\bdatw[15]_INST_0_i_22_1 [0]),
        .O(\bdatw[13]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AA2A)) 
    \bdatw[13]_INST_0_i_2 
       (.I0(\bdatw[13]_INST_0_i_6_n_0 ),
        .I1(ctl_selb_0),
        .I2(eir[5]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[13]_INST_0_i_7_n_0 ),
        .I5(\bdatw[13]_INST_0_i_8_n_0 ),
        .O(\bdatw[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_23 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [13]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [13]),
        .I4(\badr[15]_INST_0_i_5_1 [13]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h88883CCC00000000)) 
    \bdatw[13]_INST_0_i_3 
       (.I0(ir[10]),
        .I1(ctl_selb_0),
        .I2(\bdatw[13]_INST_0_i_9_n_0 ),
        .I3(\bdatw[15]_INST_0_i_13_n_0 ),
        .I4(\bdatw[15]_INST_0_i_12_n_0 ),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_34 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [5]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [5]),
        .I4(\badr[15]_INST_0_i_5_1 [5]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[13]_INST_0_i_4 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\badr[15]_INST_0_i_1_3 [13]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\sp_reg[15]_0 [13]),
        .I4(\rgf/bbus_b02 [13]),
        .I5(\bdatw[13]_INST_0_i_1_0 ),
        .O(\bdatw[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [13]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[12]),
        .I4(\pc_reg[15]_0 [13]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAA15FA15FFFFFFFF)) 
    \bdatw[13]_INST_0_i_6 
       (.I0(\bdatw[13]_INST_0_i_12_n_0 ),
        .I1(ir[5]),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(ctl_selb_0),
        .I4(ir[4]),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[13]_INST_0_i_7 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\badr[15]_INST_0_i_1_3 [5]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\sp_reg[15]_0 [5]),
        .I4(\rgf/bbus_b02 [5]),
        .I5(\bdatw[13]_INST_0_i_2_0 ),
        .O(\bdatw[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_8 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [5]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[4]),
        .I4(\pc_reg[15]_0 [5]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[13]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[13]_INST_0_i_9 
       (.I0(ir[2]),
        .I1(ir[1]),
        .O(\bdatw[13]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h048C)) 
    \bdatw[14]_INST_0 
       (.I0(\stat_reg[1]_1 ),
        .I1(\stat_reg[1]_0 ),
        .I2(\bdatw[14]_INST_0_i_1_n_0 ),
        .I3(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bdatw[14]));
  LUT6 #(
    .INIT(64'h000000000000AA2A)) 
    \bdatw[14]_INST_0_i_1 
       (.I0(\bdatw[14]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0),
        .I2(eir[14]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[14]_INST_0_i_4_n_0 ),
        .I5(\bdatw[14]_INST_0_i_5_n_0 ),
        .O(\bdatw[14]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \bdatw[14]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_12_n_0 ),
        .I1(ir[0]),
        .I2(ir[3]),
        .O(\bdatw[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_11 
       (.I0(\bdatw[14]_INST_0_i_16_n_0 ),
        .I1(\bdatw[14]_INST_0_i_4_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [9]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_6_1 [9]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [14]));
  LUT5 #(
    .INIT(32'h55555515)) 
    \bdatw[14]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_12_n_0 ),
        .I1(ir[1]),
        .I2(ir[2]),
        .I3(ir[0]),
        .I4(ir[3]),
        .O(\bdatw[14]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_14 
       (.I0(\bdatw[14]_INST_0_i_20_n_0 ),
        .I1(\bdatw[14]_INST_0_i_7_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [1]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_6_1 [1]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [6]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[14]_INST_0_i_16 
       (.I0(\bdatw[14]_INST_0_i_24_n_0 ),
        .I1(gr3_bus1__0_10),
        .I2(\bdatw[15]_INST_0_i_22_0 [9]),
        .I3(gr2_bus1__0_11),
        .I4(\bdatw[15]_INST_0_i_22_1 [9]),
        .O(\bdatw[14]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AA2A)) 
    \bdatw[14]_INST_0_i_2 
       (.I0(\bdatw[14]_INST_0_i_6_n_0 ),
        .I1(ctl_selb_0),
        .I2(eir[6]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[14]_INST_0_i_7_n_0 ),
        .I5(\bdatw[14]_INST_0_i_8_n_0 ),
        .O(\bdatw[14]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[14]_INST_0_i_20 
       (.I0(\bdatw[14]_INST_0_i_35_n_0 ),
        .I1(gr3_bus1__0_10),
        .I2(\bdatw[15]_INST_0_i_22_0 [1]),
        .I3(gr2_bus1__0_11),
        .I4(\bdatw[15]_INST_0_i_22_1 [1]),
        .O(\bdatw[14]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_24 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [14]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [14]),
        .I4(\badr[15]_INST_0_i_5_1 [14]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hACAAAAAAFFFFFFFF)) 
    \bdatw[14]_INST_0_i_3 
       (.I0(\bdatw[14]_INST_0_i_9_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[14]_INST_0_i_10_n_0 ),
        .I3(ir[1]),
        .I4(ir[2]),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_35 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [6]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [6]),
        .I4(\badr[15]_INST_0_i_5_1 [6]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[14]_INST_0_i_4 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\badr[15]_INST_0_i_1_3 [14]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\sp_reg[15]_0 [14]),
        .I4(\rgf/bbus_b02 [14]),
        .I5(\bdatw[14]_INST_0_i_1_0 ),
        .O(\bdatw[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [14]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[13]),
        .I4(\pc_reg[15]_0 [14]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h05F20FF2FFFFFFFF)) 
    \bdatw[14]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_12_n_0 ),
        .I1(ir[6]),
        .I2(\bdatw[14]_INST_0_i_13_n_0 ),
        .I3(ctl_selb_0),
        .I4(ir[5]),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[14]_INST_0_i_7 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\badr[15]_INST_0_i_1_3 [6]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\sp_reg[15]_0 [6]),
        .I4(\rgf/bbus_b02 [6]),
        .I5(\bdatw[14]_INST_0_i_2_0 ),
        .O(\bdatw[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_8 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [6]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[5]),
        .I4(\pc_reg[15]_0 [6]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[14]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \bdatw[14]_INST_0_i_9 
       (.I0(ir[10]),
        .I1(\bdatw[15]_INST_0_i_12_n_0 ),
        .I2(ctl_selb_0),
        .O(\bdatw[14]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h048C)) 
    \bdatw[15]_INST_0 
       (.I0(\stat_reg[1]_1 ),
        .I1(\stat_reg[1]_0 ),
        .I2(\bdatw[15]_INST_0_i_1_n_0 ),
        .I3(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bdatw[15]));
  LUT6 #(
    .INIT(64'h000000000000AA2A)) 
    \bdatw[15]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0),
        .I2(eir[15]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[15]_INST_0_i_6_n_0 ),
        .I5(\bdatw[15]_INST_0_i_7_n_0 ),
        .O(\bdatw[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h880088CCC0CCC000)) 
    \bdatw[15]_INST_0_i_10 
       (.I0(ir[6]),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(ir[7]),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_29_n_0 ),
        .I5(ctl_selb_0),
        .O(\bdatw[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_103 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(bank_sel[0]),
        .O(gr5_bus1__0_1));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_104 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_81_n_0 ),
        .I5(bank_sel[0]),
        .O(gr0_bus1__0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_105 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(bank_sel[0]),
        .O(gr1_bus1__0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_106 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_81_n_0 ),
        .I5(bank_sel[0]),
        .O(gr4_bus1__0_0));
  LUT6 #(
    .INIT(64'hAAAAFBAAFBAAFBAA)) 
    \bdatw[15]_INST_0_i_107 
       (.I0(\bcmd[1] ),
        .I1(\iv[15]_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_47_n_0 ),
        .I3(Q[0]),
        .I4(\bdatw[12]_INST_0_i_86_n_0 ),
        .I5(\bdatw[15]_INST_0_i_115_n_0 ),
        .O(\bdatw[15]_INST_0_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A888A88AAAA)) 
    \bdatw[15]_INST_0_i_108 
       (.I0(rst_n_fl_reg_0),
        .I1(\bdatw[15]_INST_0_i_116_n_0 ),
        .I2(\bdatw[12]_INST_0_i_87_n_0 ),
        .I3(ir[1]),
        .I4(\bdatw[15]_INST_0_i_117_n_0 ),
        .I5(\bdatw[12]_INST_0_i_99_n_0 ),
        .O(\bdatw[15]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAA8A8A8A8)) 
    \bdatw[15]_INST_0_i_109 
       (.I0(rst_n_fl_reg_0),
        .I1(\bdatw[15]_INST_0_i_118_n_0 ),
        .I2(\bdatw[15]_INST_0_i_119_n_0 ),
        .I3(\bdatw[15]_INST_0_i_120_n_0 ),
        .I4(\bdatw[12]_INST_0_i_87_n_0 ),
        .I5(ir[0]),
        .O(\bdatw[15]_INST_0_i_109_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[15]_INST_0_i_11 
       (.I0(ir[1]),
        .I1(ir[2]),
        .O(\bdatw[15]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_110 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(bank_sel[3]),
        .O(gr5_bus1__0_33));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_111 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(bank_sel[1]),
        .O(gr5_bus1__0_20));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_112 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_81_n_0 ),
        .I5(bank_sel[1]),
        .O(gr0_bus1__0_21));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_113 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(bank_sel[1]),
        .O(gr1_bus1__0_16));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_114 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_81_n_0 ),
        .I5(bank_sel[1]),
        .O(gr4_bus1__0_17));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[15]_INST_0_i_115 
       (.I0(ir[1]),
        .I1(ir[6]),
        .O(\bdatw[15]_INST_0_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \bdatw[15]_INST_0_i_116 
       (.I0(ir[11]),
        .I1(crdy),
        .I2(\bdatw[15]_INST_0_i_64_n_0 ),
        .I3(ir[1]),
        .I4(ir[6]),
        .I5(ir[8]),
        .O(\bdatw[15]_INST_0_i_116_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDD5DDDD)) 
    \bdatw[15]_INST_0_i_117 
       (.I0(ir[1]),
        .I1(\bdatw[15]_INST_0_i_121_n_0 ),
        .I2(\bdatw[12]_INST_0_i_101_n_0 ),
        .I3(\ccmd[4]_INST_0_i_20_n_0 ),
        .I4(\bdatw[12]_INST_0_i_105_n_0 ),
        .I5(\bdatw[15]_INST_0_i_122_n_0 ),
        .O(\bdatw[15]_INST_0_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \bdatw[15]_INST_0_i_118 
       (.I0(ir[11]),
        .I1(\bdatw[15]_INST_0_i_123_n_0 ),
        .I2(\bcmd[0]_INST_0_i_7_n_0 ),
        .I3(\bdatw[12]_INST_0_i_104_n_0 ),
        .I4(ir[0]),
        .I5(\bdatw[12]_INST_0_i_92_n_0 ),
        .O(\bdatw[15]_INST_0_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \bdatw[15]_INST_0_i_119 
       (.I0(\ccmd[4]_INST_0_i_20_n_0 ),
        .I1(\bdatw[12]_INST_0_i_95_n_0 ),
        .I2(ir[3]),
        .I3(ir[5]),
        .I4(ir[4]),
        .I5(ir[6]),
        .O(\bdatw[15]_INST_0_i_119_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCFDFFCCCCDDDD)) 
    \bdatw[15]_INST_0_i_12 
       (.I0(rst_n_fl_reg_0),
        .I1(\bcmd[1] ),
        .I2(\bdatw[15]_INST_0_i_30_n_0 ),
        .I3(\bdatw[15]_INST_0_i_31_n_0 ),
        .I4(\bdatw[15]_INST_0_i_32_n_0 ),
        .I5(\bdatw[15]_INST_0_i_33_n_0 ),
        .O(\bdatw[15]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA800080008000)) 
    \bdatw[15]_INST_0_i_120 
       (.I0(ir[6]),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .I2(ir[8]),
        .I3(\bdatw[12]_INST_0_i_89_n_0 ),
        .I4(\bdatw[15]_INST_0_i_124_n_0 ),
        .I5(\bdatw[12]_INST_0_i_105_n_0 ),
        .O(\bdatw[15]_INST_0_i_120_n_0 ));
  LUT3 #(
    .INIT(8'hCE)) 
    \bdatw[15]_INST_0_i_121 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(crdy),
        .O(\bdatw[15]_INST_0_i_121_n_0 ));
  LUT5 #(
    .INIT(32'h57555555)) 
    \bdatw[15]_INST_0_i_122 
       (.I0(ir[10]),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(ir[7]),
        .I4(ir[6]),
        .O(\bdatw[15]_INST_0_i_122_n_0 ));
  LUT5 #(
    .INIT(32'h0FFF8F8F)) 
    \bdatw[15]_INST_0_i_123 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[0]),
        .I3(crdy),
        .I4(ir[8]),
        .O(\bdatw[15]_INST_0_i_123_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \bdatw[15]_INST_0_i_124 
       (.I0(ir[10]),
        .I1(ir[11]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[7]),
        .O(\bdatw[15]_INST_0_i_124_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[15]_INST_0_i_13 
       (.I0(ir[0]),
        .I1(ir[3]),
        .O(\bdatw[15]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA82AA8200)) 
    \bdatw[15]_INST_0_i_14 
       (.I0(\bcmd[2] ),
        .I1(ir[11]),
        .I2(ctl_fetch_fl_reg_1),
        .I3(\bdatw[15]_INST_0_i_34_n_0 ),
        .I4(\bdatw[15]_INST_0_i_35_n_0 ),
        .I5(\bdatw[15]_INST_0_i_36_n_0 ),
        .O(\bdatw[15]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAABAFFFF)) 
    \bdatw[15]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_37_n_0 ),
        .I1(\bdatw[15]_INST_0_i_38_n_0 ),
        .I2(ir[13]),
        .I3(ir[14]),
        .I4(ir[12]),
        .I5(\bdatw[15]_INST_0_i_39_n_0 ),
        .O(\bdatw[15]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA2A2222)) 
    \bdatw[15]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_40_n_0 ),
        .I1(\bdatw[15]_INST_0_i_41_n_0 ),
        .I2(\bdatw[15]_INST_0_i_42_n_0 ),
        .I3(\bdatw[15]_INST_0_i_43_n_0 ),
        .I4(\bdatw[15]_INST_0_i_44_n_0 ),
        .I5(\bcmd[0]_INST_0_i_8_n_0 ),
        .O(\bdatw[15]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0000FFFFFFFF)) 
    \bdatw[15]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_45_n_0 ),
        .I1(\bdatw[15]_INST_0_i_46_n_0 ),
        .I2(\bcmd[0]_INST_0_i_5_n_0 ),
        .I3(\bdatw[15]_INST_0_i_47_n_0 ),
        .I4(\bdatw[15]_INST_0_i_48_n_0 ),
        .I5(\stat_reg[0]_4 ),
        .O(\bdatw[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBAAABABB)) 
    \bdatw[15]_INST_0_i_18 
       (.I0(ir[15]),
        .I1(\bdatw[15]_INST_0_i_49_n_0 ),
        .I2(\bdatw[15]_INST_0_i_47_n_0 ),
        .I3(\stat_reg[0]_4 ),
        .I4(\bdatw[9]_INST_0_i_15_n_0 ),
        .I5(ir[6]),
        .O(\bdatw[15]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011011111)) 
    \bdatw[15]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(eir[7]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(\bdatw[15]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[15]_INST_0_i_20 
       (.I0(\bdatw[12]_INST_0_i_27_n_0 ),
        .I1(\bdatw[12]_INST_0_i_28_n_0 ),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .O(\rgf/bbus_sel_cr [3]));
  LUT4 #(
    .INIT(16'h0200)) 
    \bdatw[15]_INST_0_i_21 
       (.I0(\bdatw[12]_INST_0_i_27_n_0 ),
        .I1(\bdatw[12]_INST_0_i_28_n_0 ),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .O(\rgf/bbus_sel_cr [2]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_22 
       (.I0(\bdatw[15]_INST_0_i_51_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_2 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [10]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_6_1 [10]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [15]));
  LUT4 #(
    .INIT(16'h0200)) 
    \bdatw[15]_INST_0_i_24 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[1]),
        .I2(ctl_selb_rn[0]),
        .I3(\bdatw[12]_INST_0_i_27_n_0 ),
        .O(\rgf/bbus_sel_cr [4]));
  LUT4 #(
    .INIT(16'h0800)) 
    \bdatw[15]_INST_0_i_25 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[0]),
        .I2(ctl_selb_rn[1]),
        .I3(\bdatw[12]_INST_0_i_27_n_0 ),
        .O(\rgf/bbus_sel_cr [5]));
  LUT4 #(
    .INIT(16'h0400)) 
    \bdatw[15]_INST_0_i_26 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(\bdatw[12]_INST_0_i_27_n_0 ),
        .I2(ctl_selb_rn[1]),
        .I3(ctl_selb_rn[0]),
        .O(\rgf/bbus_sel_cr [1]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_27 
       (.I0(\bdatw[15]_INST_0_i_59_n_0 ),
        .I1(\bdatw[15]_INST_0_i_8_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [2]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_6_1 [2]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [7]));
  LUT4 #(
    .INIT(16'h4000)) 
    \bdatw[15]_INST_0_i_29 
       (.I0(ir[3]),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(ir[1]),
        .O(\bdatw[15]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h77C37733FFFFFFFF)) 
    \bdatw[15]_INST_0_i_3 
       (.I0(ir[10]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_11_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_13_n_0 ),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0E000E0F)) 
    \bdatw[15]_INST_0_i_30 
       (.I0(\bdatw[15]_INST_0_i_63_n_0 ),
        .I1(\bdatw[15]_INST_0_i_64_n_0 ),
        .I2(ir[11]),
        .I3(ir[8]),
        .I4(\bdatw[15]_INST_0_i_65_n_0 ),
        .I5(Q[0]),
        .O(\bdatw[15]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEFEEEEEF)) 
    \bdatw[15]_INST_0_i_31 
       (.I0(\bdatw[15]_INST_0_i_66_n_0 ),
        .I1(\bdatw[15]_INST_0_i_67_n_0 ),
        .I2(\ccmd[4]_INST_0_i_20_n_0 ),
        .I3(ir[10]),
        .I4(ir[9]),
        .I5(\bdatw[15]_INST_0_i_68_n_0 ),
        .O(\bdatw[15]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h8A8A8A88)) 
    \bdatw[15]_INST_0_i_32 
       (.I0(\iv[15]_i_38_n_0 ),
        .I1(\bdatw[15]_INST_0_i_69_n_0 ),
        .I2(\bdatw[15]_INST_0_i_47_n_0 ),
        .I3(crdy),
        .I4(Q[0]),
        .O(\bdatw[15]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \bdatw[15]_INST_0_i_33 
       (.I0(ir[7]),
        .I1(ir[10]),
        .I2(ir[11]),
        .I3(ir[6]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\bdatw[15]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h3373)) 
    \bdatw[15]_INST_0_i_34 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(\badr[15]_INST_0_i_2 [6]),
        .I3(ir[12]),
        .O(\bdatw[15]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h4105FFFF41054105)) 
    \bdatw[15]_INST_0_i_35 
       (.I0(ir[14]),
        .I1(ir[12]),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_2 [7]),
        .I4(\bdatw[15]_INST_0_i_70_n_0 ),
        .I5(\bdatw[15]_INST_0_i_71_n_0 ),
        .O(\bdatw[15]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \bdatw[15]_INST_0_i_36 
       (.I0(ir[15]),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[12]),
        .O(\bdatw[15]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h1455140041004155)) 
    \bdatw[15]_INST_0_i_37 
       (.I0(ir[13]),
        .I1(\badr[15]_INST_0_i_2 [7]),
        .I2(\badr[15]_INST_0_i_2 [5]),
        .I3(ir[14]),
        .I4(\badr[15]_INST_0_i_2 [4]),
        .I5(ir[11]),
        .O(\bdatw[15]_INST_0_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bdatw[15]_INST_0_i_38 
       (.I0(ir[11]),
        .I1(\badr[15]_INST_0_i_2 [7]),
        .O(\bdatw[15]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000D00)) 
    \bdatw[15]_INST_0_i_39 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(\bcmd[0]_INST_0_i_7_n_0 ),
        .I2(\bcmd[0]_INST_0_i_8_n_0 ),
        .I3(crdy),
        .I4(ir[8]),
        .I5(ir[6]),
        .O(\bdatw[15]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF0E)) 
    \bdatw[15]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_16_n_0 ),
        .I2(\bdatw[15]_INST_0_i_17_n_0 ),
        .I3(Q[0]),
        .I4(\bdatw[15]_INST_0_i_18_n_0 ),
        .I5(\bdatw[8]_INST_0_i_40_0 ),
        .O(ctl_selb_0));
  LUT6 #(
    .INIT(64'hABABABFFAAAAAAAA)) 
    \bdatw[15]_INST_0_i_40 
       (.I0(ir[11]),
        .I1(\bdatw[15]_INST_0_i_72_n_0 ),
        .I2(\bdatw[15]_INST_0_i_73_n_0 ),
        .I3(\bdatw[15]_INST_0_i_74_n_0 ),
        .I4(\ccmd[2]_INST_0_i_20_n_0 ),
        .I5(ir[6]),
        .O(\bdatw[15]_INST_0_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hAA28AAA8)) 
    \bdatw[15]_INST_0_i_41 
       (.I0(ir[11]),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(ir[10]),
        .I4(ir[7]),
        .O(\bdatw[15]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBCFF00FFBCFF)) 
    \bdatw[15]_INST_0_i_42 
       (.I0(ir[5]),
        .I1(ir[4]),
        .I2(ir[3]),
        .I3(ir[6]),
        .I4(\ccmd[4]_INST_0_i_20_n_0 ),
        .I5(ir[10]),
        .O(\bdatw[15]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h00000040FFFFFFFF)) 
    \bdatw[15]_INST_0_i_43 
       (.I0(\ccmd[2]_INST_0_i_20_n_0 ),
        .I1(ir[5]),
        .I2(ir[7]),
        .I3(ir[4]),
        .I4(ir[6]),
        .I5(ir[9]),
        .O(\bdatw[15]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFBBBBFAAAFFFF)) 
    \bdatw[15]_INST_0_i_44 
       (.I0(ir[9]),
        .I1(ir[6]),
        .I2(crdy),
        .I3(ir[10]),
        .I4(ir[8]),
        .I5(ir[7]),
        .O(\bdatw[15]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bdatw[15]_INST_0_i_45 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[7]),
        .O(\bdatw[15]_INST_0_i_45_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[15]_INST_0_i_46 
       (.I0(ir[11]),
        .I1(crdy),
        .O(\bdatw[15]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hD4FF)) 
    \bdatw[15]_INST_0_i_47 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(ir[2]),
        .O(\bdatw[15]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h4554455400554411)) 
    \bdatw[15]_INST_0_i_48 
       (.I0(ir[12]),
        .I1(ir[13]),
        .I2(\badr[15]_INST_0_i_2 [5]),
        .I3(ir[11]),
        .I4(\badr[15]_INST_0_i_2 [6]),
        .I5(ir[14]),
        .O(\bdatw[15]_INST_0_i_48_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[15]_INST_0_i_49 
       (.I0(ir[7]),
        .I1(Q[0]),
        .O(\bdatw[15]_INST_0_i_49_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[15]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00FF000000001010)) 
    \bdatw[15]_INST_0_i_50 
       (.I0(tout__1_carry_i_17_n_0),
        .I1(ir[7]),
        .I2(\ccmd[2]_INST_0_i_11_n_0 ),
        .I3(\bdatw[15]_INST_0_i_33_n_0 ),
        .I4(ir[13]),
        .I5(ir[12]),
        .O(rst_n_fl_reg_2));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[15]_INST_0_i_51 
       (.I0(\bdatw[15]_INST_0_i_75_n_0 ),
        .I1(gr3_bus1__0_10),
        .I2(\bdatw[15]_INST_0_i_22_0 [10]),
        .I3(gr2_bus1__0_11),
        .I4(\bdatw[15]_INST_0_i_22_1 [10]),
        .O(\bdatw[15]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_53 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_81_n_0 ),
        .I5(bank_sel[2]),
        .O(gr4_bus1__0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_54 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(bank_sel[2]),
        .O(gr5_bus1__0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_57 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_91_n_0 ),
        .I5(bank_sel[3]),
        .O(gr7_bus1__0_36));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_58 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_81_n_0 ),
        .I5(bank_sel[3]),
        .O(gr0_bus1__0_37));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[15]_INST_0_i_59 
       (.I0(\bdatw[15]_INST_0_i_92_n_0 ),
        .I1(gr3_bus1__0_10),
        .I2(\bdatw[15]_INST_0_i_22_0 [2]),
        .I3(gr2_bus1__0_11),
        .I4(\bdatw[15]_INST_0_i_22_1 [2]),
        .O(\bdatw[15]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[15]_INST_0_i_6 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\badr[15]_INST_0_i_1_3 [15]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\sp_reg[15]_0 [15]),
        .I4(\rgf/bbus_b02 [15]),
        .I5(\bdatw[15]_INST_0_i_1_0 ),
        .O(\bdatw[15]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \bdatw[15]_INST_0_i_63 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(crdy),
        .I2(ir[6]),
        .O(\bdatw[15]_INST_0_i_63_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \bdatw[15]_INST_0_i_64 
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(ir[10]),
        .O(\bdatw[15]_INST_0_i_64_n_0 ));
  LUT5 #(
    .INIT(32'h4400444C)) 
    \bdatw[15]_INST_0_i_65 
       (.I0(ir[9]),
        .I1(crdy),
        .I2(ir[6]),
        .I3(ir[10]),
        .I4(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\bdatw[15]_INST_0_i_65_n_0 ));
  LUT5 #(
    .INIT(32'h3FB333B3)) 
    \bdatw[15]_INST_0_i_66 
       (.I0(crdy),
        .I1(ir[11]),
        .I2(ir[10]),
        .I3(ir[9]),
        .I4(ir[6]),
        .O(\bdatw[15]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h0000070007000700)) 
    \bdatw[15]_INST_0_i_67 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[11]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\bdatw[15]_INST_0_i_67_n_0 ));
  LUT5 #(
    .INIT(32'h8828A002)) 
    \bdatw[15]_INST_0_i_68 
       (.I0(ir[10]),
        .I1(ir[3]),
        .I2(ir[4]),
        .I3(ir[5]),
        .I4(ir[6]),
        .O(\bdatw[15]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h0000203000002020)) 
    \bdatw[15]_INST_0_i_69 
       (.I0(Q[0]),
        .I1(ir[3]),
        .I2(ir[0]),
        .I3(ir[2]),
        .I4(ir[1]),
        .I5(fch_irq_req),
        .O(\bdatw[15]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_7 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [15]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[14]),
        .I4(\pc_reg[15]_0 [15]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \bdatw[15]_INST_0_i_70 
       (.I0(ir[7]),
        .I1(ir[10]),
        .I2(ir[11]),
        .I3(ir[14]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\bdatw[15]_INST_0_i_70_n_0 ));
  LUT5 #(
    .INIT(32'h00000600)) 
    \bdatw[15]_INST_0_i_71 
       (.I0(ir[5]),
        .I1(ir[4]),
        .I2(ir[15]),
        .I3(ir[12]),
        .I4(ir[6]),
        .O(\bdatw[15]_INST_0_i_71_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \bdatw[15]_INST_0_i_72 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(crdy),
        .O(\bdatw[15]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBFFF)) 
    \bdatw[15]_INST_0_i_73 
       (.I0(ir[11]),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(ir[12]),
        .I4(ir[15]),
        .I5(ir[10]),
        .O(\bdatw[15]_INST_0_i_73_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_74 
       (.I0(ir[7]),
        .I1(ir[9]),
        .O(\bdatw[15]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_75 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [15]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [15]),
        .I4(\badr[15]_INST_0_i_5_1 [15]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[15]_INST_0_i_8 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\badr[15]_INST_0_i_1_3 [7]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\sp_reg[15]_0 [7]),
        .I4(\rgf/bbus_b02 [7]),
        .I5(\bdatw[15]_INST_0_i_2_0 ),
        .O(\bdatw[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAB00AB00AB00ABAB)) 
    \bdatw[15]_INST_0_i_81 
       (.I0(\bdatw[15]_INST_0_i_107_n_0 ),
        .I1(Q[0]),
        .I2(\bdatw[15]_INST_0_i_108_n_0 ),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(\bdatw[15]_INST_0_i_109_n_0 ),
        .I5(\bdatw[12]_INST_0_i_67_n_0 ),
        .O(\bdatw[15]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h5400540054005454)) 
    \bdatw[15]_INST_0_i_82 
       (.I0(\bdatw[12]_INST_0_i_69_n_0 ),
        .I1(\bdatw[15]_INST_0_i_109_n_0 ),
        .I2(\bdatw[12]_INST_0_i_67_n_0 ),
        .I3(\bdatw[15]_INST_0_i_107_n_0 ),
        .I4(Q[0]),
        .I5(\bdatw[15]_INST_0_i_108_n_0 ),
        .O(\bdatw[15]_INST_0_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_84 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_81_n_0 ),
        .I5(bank_sel[3]),
        .O(gr4_bus1__0_32));
  LUT4 #(
    .INIT(16'h0004)) 
    \bdatw[15]_INST_0_i_86 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(\bdatw[12]_INST_0_i_27_n_0 ),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .O(\stat_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_9 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [7]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[6]),
        .I4(\pc_reg[15]_0 [7]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0054005400540000)) 
    \bdatw[15]_INST_0_i_91 
       (.I0(\bdatw[15]_INST_0_i_107_n_0 ),
        .I1(Q[0]),
        .I2(\bdatw[15]_INST_0_i_108_n_0 ),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(\bdatw[15]_INST_0_i_109_n_0 ),
        .I5(\bdatw[12]_INST_0_i_67_n_0 ),
        .O(\bdatw[15]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_92 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [7]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [7]),
        .I4(\badr[15]_INST_0_i_5_1 [7]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_92_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[1]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(\sp_reg[1] ),
        .O(bdatw[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[2]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bdatw[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[3]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(bdatw[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[4]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(\sp_reg[4] ),
        .O(bdatw[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[5]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bdatw[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[6]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bdatw[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[7]_INST_0 
       (.I0(\stat_reg[1]_0 ),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bdatw[7]));
  LUT4 #(
    .INIT(16'h8C04)) 
    \bdatw[8]_INST_0 
       (.I0(\stat_reg[1]_1 ),
        .I1(\stat_reg[1]_0 ),
        .I2(\bdatw[8]_INST_0_i_1_n_0 ),
        .I3(\sp_reg[0] ),
        .O(bdatw[8]));
  LUT6 #(
    .INIT(64'h0000000000005515)) 
    \bdatw[8]_INST_0_i_1 
       (.I0(\bdatw[8]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0),
        .I2(eir[8]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[8]_INST_0_i_4_n_0 ),
        .I5(\bdatw[8]_INST_0_i_5_n_0 ),
        .O(\bdatw[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_10 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [0]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(\sp_reg[15]_0 [0]),
        .I4(\pc_reg[15]_0 [0]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBFFFFFFFFFFBF)) 
    \bdatw[8]_INST_0_i_11 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[8]_INST_0_i_27_n_0 ),
        .I3(ir[2]),
        .I4(ir[0]),
        .I5(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[8]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[8]_INST_0_i_12 
       (.I0(\bdatw[8]_INST_0_i_28_n_0 ),
        .I1(\bdatw[8]_INST_0_i_4_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [3]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_6_1 [3]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [8]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \bdatw[8]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_12_n_0 ),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(ir[3]),
        .I4(ir[1]),
        .O(\bdatw[8]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[8]_INST_0_i_16 
       (.I0(\bdatw[8]_INST_0_i_32_n_0 ),
        .I1(gr3_bus1__0_30),
        .I2(\bdatw[12]_INST_0_i_8_4 [0]),
        .I3(gr6_bus1__0_31),
        .I4(\bdatw[12]_INST_0_i_8_5 [0]),
        .I5(\bdatw[8]_INST_0_i_33_n_0 ),
        .O(\bdatw[8]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatw[8]_INST_0_i_17 
       (.I0(ctl_selb_rn[1]),
        .I1(ctl_selb_rn[0]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .O(\bdatw[8]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[8]_INST_0_i_18 
       (.I0(gr6_bus1__0_18),
        .I1(\bdatw[12]_INST_0_i_8_2 [0]),
        .I2(\bdatw[8]_INST_0_i_34_n_0 ),
        .I3(\bdatw[8]_INST_0_i_35_n_0 ),
        .I4(gr7_bus1__0_19),
        .I5(\bdatw[12]_INST_0_i_8_3 [0]),
        .O(\bdatw[8]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[8]_INST_0_i_19 
       (.I0(gr2_bus1__0_14),
        .I1(\bdatw[12]_INST_0_i_8_0 [0]),
        .I2(\bdatw[8]_INST_0_i_36_n_0 ),
        .I3(\bdatw[8]_INST_0_i_37_n_0 ),
        .I4(gr3_bus1__0_15),
        .I5(\bdatw[12]_INST_0_i_8_1 [0]),
        .O(\bdatw[8]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bdatw[8]_INST_0_i_2 
       (.I0(\bdatw[8]_INST_0_i_6_n_0 ),
        .I1(\bdatw[8]_INST_0_i_7_n_0 ),
        .I2(\tr_reg[2]_0 [0]),
        .I3(\bdatw[8]_INST_0_i_9_n_0 ),
        .I4(\bdatw[8]_INST_0_i_10_n_0 ),
        .I5(\bdatw[8]_INST_0_i_11_n_0 ),
        .O(\sp_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_22 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [0]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [0]),
        .I4(\badr[15]_INST_0_i_5_1 [0]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[8]_INST_0_i_24 
       (.I0(gr6_bus1__0),
        .I1(\bdatw[12]_INST_0_i_9_1 [0]),
        .I2(\bdatw[8]_INST_0_i_38_n_0 ),
        .I3(\bdatw[8]_INST_0_i_39_n_0 ),
        .I4(gr7_bus1__0),
        .I5(\bdatw[12]_INST_0_i_9_2 [0]),
        .O(\grn_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[8]_INST_0_i_25 
       (.I0(gr2_bus1__0),
        .I1(\bdatw[12]_INST_0_i_9 [0]),
        .I2(\bdatw[8]_INST_0_i_40_n_0 ),
        .I3(\bdatw[8]_INST_0_i_41_n_0 ),
        .I4(gr3_bus1__0),
        .I5(\bdatw[12]_INST_0_i_9_0 [0]),
        .O(\grn_reg[0] ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[8]_INST_0_i_27 
       (.I0(ir[3]),
        .I1(ir[1]),
        .O(\bdatw[8]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[8]_INST_0_i_28 
       (.I0(\bdatw[8]_INST_0_i_42_n_0 ),
        .I1(gr3_bus1__0_10),
        .I2(\bdatw[15]_INST_0_i_22_0 [3]),
        .I3(gr2_bus1__0_11),
        .I4(\bdatw[15]_INST_0_i_22_1 [3]),
        .O(\bdatw[8]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B00F00000000)) 
    \bdatw[8]_INST_0_i_3 
       (.I0(ir[7]),
        .I1(\bdatw[15]_INST_0_i_12_n_0 ),
        .I2(ctl_selb_0),
        .I3(\bdatw[14]_INST_0_i_10_n_0 ),
        .I4(\bdatw[9]_INST_0_i_12_n_0 ),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[8]_INST_0_i_32 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_16_0 [0]),
        .O(\bdatw[8]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[8]_INST_0_i_33 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_16_1 [0]),
        .O(\bdatw[8]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[8]_INST_0_i_34 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_18_0 [0]),
        .O(\bdatw[8]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[8]_INST_0_i_35 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_18_1 [0]),
        .O(\bdatw[8]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[8]_INST_0_i_36 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_19_0 [0]),
        .O(\bdatw[8]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[8]_INST_0_i_37 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_19_1 [0]),
        .O(\bdatw[8]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[8]_INST_0_i_38 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_24_0 [0]),
        .O(\bdatw[8]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[8]_INST_0_i_39 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_24_1 [0]),
        .O(\bdatw[8]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[8]_INST_0_i_4 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\badr[15]_INST_0_i_1_3 [8]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\sp_reg[15]_0 [8]),
        .I4(\rgf/bbus_b02 [8]),
        .I5(\bdatw[8]_INST_0_i_1_0 ),
        .O(\bdatw[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[8]_INST_0_i_40 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_25_0 [0]),
        .O(\bdatw[8]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[8]_INST_0_i_41 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_25_1 [0]),
        .O(\bdatw[8]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_42 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [8]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [8]),
        .I4(\badr[15]_INST_0_i_5_1 [8]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [8]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[7]),
        .I4(\pc_reg[15]_0 [8]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[8]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h08AA0808)) 
    \bdatw[8]_INST_0_i_6 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[8]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(eir[0]),
        .O(\bdatw[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[8]_INST_0_i_7 
       (.I0(\bdatw[8]_INST_0_i_2_2 ),
        .I1(\bdatw[8]_INST_0_i_16_n_0 ),
        .I2(\bdatw[8]_INST_0_i_17_n_0 ),
        .I3(\bdatw[8]_INST_0_i_18_n_0 ),
        .I4(\bdatw[8]_INST_0_i_19_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_3 ),
        .O(\bdatw[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2200202000000000)) 
    \bdatw[8]_INST_0_i_9 
       (.I0(\bdatw[12]_INST_0_i_27_n_0 ),
        .I1(\bdatw[12]_INST_0_i_28_n_0 ),
        .I2(\sp_reg[15]_0 [0]),
        .I3(\badr[15]_INST_0_i_1_3 [0]),
        .I4(ctl_selb_rn[0]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[8]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h048C)) 
    \bdatw[9]_INST_0 
       (.I0(\stat_reg[1]_1 ),
        .I1(\stat_reg[1]_0 ),
        .I2(\bdatw[9]_INST_0_i_1_n_0 ),
        .I3(\sp_reg[1] ),
        .O(bdatw[9]));
  LUT6 #(
    .INIT(64'h0000000000005515)) 
    \bdatw[9]_INST_0_i_1 
       (.I0(\bdatw[9]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0),
        .I2(eir[9]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[9]_INST_0_i_4_n_0 ),
        .I5(\bdatw[9]_INST_0_i_5_n_0 ),
        .O(\bdatw[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2200202000000000)) 
    \bdatw[9]_INST_0_i_10 
       (.I0(\bdatw[12]_INST_0_i_27_n_0 ),
        .I1(\bdatw[12]_INST_0_i_28_n_0 ),
        .I2(\sp_reg[15]_0 [1]),
        .I3(\badr[15]_INST_0_i_1_3 [1]),
        .I4(ctl_selb_rn[0]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[9]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_11 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [1]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[0]),
        .I4(\pc_reg[15]_0 [1]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[9]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[9]_INST_0_i_12 
       (.I0(ir[1]),
        .I1(ir[2]),
        .O(\bdatw[9]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[9]_INST_0_i_13 
       (.I0(\bdatw[9]_INST_0_i_28_n_0 ),
        .I1(\bdatw[9]_INST_0_i_4_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [4]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_6_1 [4]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [9]));
  LUT4 #(
    .INIT(16'h0004)) 
    \bdatw[9]_INST_0_i_15 
       (.I0(ir[3]),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(ir[1]),
        .O(\bdatw[9]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[9]_INST_0_i_17 
       (.I0(\bdatw[9]_INST_0_i_32_n_0 ),
        .I1(gr3_bus1__0_30),
        .I2(\bdatw[12]_INST_0_i_8_4 [1]),
        .I3(gr6_bus1__0_31),
        .I4(\bdatw[12]_INST_0_i_8_5 [1]),
        .I5(\bdatw[9]_INST_0_i_33_n_0 ),
        .O(\bdatw[9]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatw[9]_INST_0_i_18 
       (.I0(ctl_selb_rn[1]),
        .I1(ctl_selb_rn[0]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .O(\bdatw[9]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[9]_INST_0_i_19 
       (.I0(gr6_bus1__0_18),
        .I1(\bdatw[12]_INST_0_i_8_2 [1]),
        .I2(\bdatw[9]_INST_0_i_34_n_0 ),
        .I3(\bdatw[9]_INST_0_i_35_n_0 ),
        .I4(gr7_bus1__0_19),
        .I5(\bdatw[12]_INST_0_i_8_3 [1]),
        .O(\bdatw[9]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bdatw[9]_INST_0_i_2 
       (.I0(\bdatw[9]_INST_0_i_6_n_0 ),
        .I1(\bdatw[9]_INST_0_i_7_n_0 ),
        .I2(\bdatw[9]_INST_0_i_8_n_0 ),
        .I3(\tr_reg[2]_0 [1]),
        .I4(\bdatw[9]_INST_0_i_10_n_0 ),
        .I5(\bdatw[9]_INST_0_i_11_n_0 ),
        .O(\sp_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[9]_INST_0_i_20 
       (.I0(gr2_bus1__0_14),
        .I1(\bdatw[12]_INST_0_i_8_0 [1]),
        .I2(\bdatw[9]_INST_0_i_36_n_0 ),
        .I3(\bdatw[9]_INST_0_i_37_n_0 ),
        .I4(gr3_bus1__0_15),
        .I5(\bdatw[12]_INST_0_i_8_1 [1]),
        .O(\bdatw[9]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_23 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [1]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [1]),
        .I4(\badr[15]_INST_0_i_5_1 [1]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[9]_INST_0_i_25 
       (.I0(gr6_bus1__0),
        .I1(\bdatw[12]_INST_0_i_9_1 [1]),
        .I2(\bdatw[9]_INST_0_i_38_n_0 ),
        .I3(\bdatw[9]_INST_0_i_39_n_0 ),
        .I4(gr7_bus1__0),
        .I5(\bdatw[12]_INST_0_i_9_2 [1]),
        .O(\grn_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[9]_INST_0_i_26 
       (.I0(gr2_bus1__0),
        .I1(\bdatw[12]_INST_0_i_9 [1]),
        .I2(\bdatw[9]_INST_0_i_40_n_0 ),
        .I3(\bdatw[9]_INST_0_i_41_n_0 ),
        .I4(gr3_bus1__0),
        .I5(\bdatw[12]_INST_0_i_9_0 [1]),
        .O(\grn_reg[1] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[9]_INST_0_i_28 
       (.I0(\bdatw[9]_INST_0_i_42_n_0 ),
        .I1(gr3_bus1__0_10),
        .I2(\bdatw[15]_INST_0_i_22_0 [4]),
        .I3(gr2_bus1__0_11),
        .I4(\bdatw[15]_INST_0_i_22_1 [4]),
        .O(\bdatw[9]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAA8A002022020020)) 
    \bdatw[9]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_12_n_0 ),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(\bdatw[9]_INST_0_i_12_n_0 ),
        .I4(ctl_selb_0),
        .I5(ir[8]),
        .O(\bdatw[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[9]_INST_0_i_32 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_16_0 [1]),
        .O(\bdatw[9]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[9]_INST_0_i_33 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_16_1 [1]),
        .O(\bdatw[9]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[9]_INST_0_i_34 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_18_0 [1]),
        .O(\bdatw[9]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[9]_INST_0_i_35 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_18_1 [1]),
        .O(\bdatw[9]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[9]_INST_0_i_36 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_19_0 [1]),
        .O(\bdatw[9]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[9]_INST_0_i_37 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_19_1 [1]),
        .O(\bdatw[9]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[9]_INST_0_i_38 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_24_0 [1]),
        .O(\bdatw[9]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[9]_INST_0_i_39 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_24_1 [1]),
        .O(\bdatw[9]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[9]_INST_0_i_4 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\badr[15]_INST_0_i_1_3 [9]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\sp_reg[15]_0 [9]),
        .I4(\rgf/bbus_b02 [9]),
        .I5(\bdatw[9]_INST_0_i_1_0 ),
        .O(\bdatw[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[9]_INST_0_i_40 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_25_0 [1]),
        .O(\bdatw[9]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[9]_INST_0_i_41 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\bdatw[12]_INST_0_i_25_1 [1]),
        .O(\bdatw[9]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_42 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [9]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [9]),
        .I4(\badr[15]_INST_0_i_5_1 [9]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_1 [9]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[8]),
        .I4(\pc_reg[15]_0 [9]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h221DEE1DFFFFFFFF)) 
    \bdatw[9]_INST_0_i_6 
       (.I0(\bdatw[9]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_12_n_0 ),
        .I2(ir[1]),
        .I3(ctl_selb_0),
        .I4(ir[0]),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[9]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatw[9]_INST_0_i_7 
       (.I0(ctl_selb_0),
        .I1(eir[1]),
        .I2(\bdatw[15]_INST_0_i_5_n_0 ),
        .O(\bdatw[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[9]_INST_0_i_8 
       (.I0(\bdatw[9]_INST_0_i_2_1 ),
        .I1(\bdatw[9]_INST_0_i_17_n_0 ),
        .I2(\bdatw[9]_INST_0_i_18_n_0 ),
        .I3(\bdatw[9]_INST_0_i_19_n_0 ),
        .I4(\bdatw[9]_INST_0_i_20_n_0 ),
        .I5(\bdatw[9]_INST_0_i_2_2 ),
        .O(\bdatw[9]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[0]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\ccmd[0]_INST_0_i_1_n_0 ),
        .O(ccmd[0]));
  LUT6 #(
    .INIT(64'h00AEFFAEFFAEFFAE)) 
    \ccmd[0]_INST_0_i_1 
       (.I0(\ccmd[0]_INST_0_i_2_n_0 ),
        .I1(\ccmd[0]_INST_0_i_3_n_0 ),
        .I2(\ccmd[0]_INST_0_i_4_n_0 ),
        .I3(\ccmd[0]_INST_0_i_5_n_0 ),
        .I4(\ccmd[0]_INST_0_i_6_n_0 ),
        .I5(\ccmd[0]_INST_0_i_7_n_0 ),
        .O(\ccmd[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF3FFF3F50105F1F)) 
    \ccmd[0]_INST_0_i_10 
       (.I0(\ccmd[0]_INST_0_i_20_n_0 ),
        .I1(\ccmd[0]_INST_0_i_21_n_0 ),
        .I2(ir[14]),
        .I3(ir[9]),
        .I4(\ccmd[0]_INST_0_i_22_n_0 ),
        .I5(Q[1]),
        .O(\ccmd[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD5FFD5D5)) 
    \ccmd[0]_INST_0_i_11 
       (.I0(ir[10]),
        .I1(ir[4]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[11]),
        .I5(\ccmd[4]_INST_0_i_10_n_0 ),
        .O(\ccmd[0]_INST_0_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \ccmd[0]_INST_0_i_12 
       (.I0(Q[1]),
        .I1(ir[14]),
        .I2(ir[13]),
        .O(\ccmd[0]_INST_0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \ccmd[0]_INST_0_i_13 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(ir[3]),
        .O(\ccmd[0]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[0]_INST_0_i_14 
       (.I0(ir[2]),
        .I1(ir[6]),
        .O(\ccmd[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h3FFFAAFFFFFFFFAA)) 
    \ccmd[0]_INST_0_i_15 
       (.I0(\ccmd[0]_INST_0_i_23_n_0 ),
        .I1(\ccmd[0]_INST_0_i_24_n_0 ),
        .I2(\ccmd[0]_INST_0_i_25_n_0 ),
        .I3(ir[11]),
        .I4(ir[9]),
        .I5(ir[8]),
        .O(\ccmd[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ccmd[0]_INST_0_i_16 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(ir[7]),
        .I3(\ccmd[2]_INST_0_i_14_n_0 ),
        .I4(ir[13]),
        .I5(ir[14]),
        .O(\ccmd[0]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[0]_INST_0_i_17 
       (.I0(ir[3]),
        .I1(ir[1]),
        .O(\ccmd[0]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ccmd[0]_INST_0_i_18 
       (.I0(ir[12]),
        .I1(ir[11]),
        .O(\ccmd[0]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[0]_INST_0_i_19 
       (.I0(ir[7]),
        .I1(ir[6]),
        .O(\ccmd[0]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFEF0000)) 
    \ccmd[0]_INST_0_i_2 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(\ccmd[2]_INST_0_i_11_n_0 ),
        .I3(\ccmd[0]_INST_0_i_8_n_0 ),
        .I4(\ccmd[0]_INST_0_i_4_n_0 ),
        .I5(\ccmd[0]_INST_0_i_9_n_0 ),
        .O(\ccmd[0]_INST_0_i_2_n_0 ));
  MUXF7 \ccmd[0]_INST_0_i_20 
       (.I0(\ccmd[0]_INST_0_i_26_n_0 ),
        .I1(\ccmd[0]_INST_0_i_27_n_0 ),
        .O(\ccmd[0]_INST_0_i_20_n_0 ),
        .S(ir[6]));
  LUT5 #(
    .INIT(32'h91500080)) 
    \ccmd[0]_INST_0_i_21 
       (.I0(Q[1]),
        .I1(ir[10]),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[11]),
        .O(\ccmd[0]_INST_0_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hC7)) 
    \ccmd[0]_INST_0_i_22 
       (.I0(ir[12]),
        .I1(\badr[15]_INST_0_i_2 [7]),
        .I2(ir[11]),
        .O(\ccmd[0]_INST_0_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[0]_INST_0_i_23 
       (.I0(ir[7]),
        .I1(crdy),
        .O(\ccmd[0]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[0]_INST_0_i_24 
       (.I0(ir[3]),
        .I1(ir[5]),
        .O(\ccmd[0]_INST_0_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[0]_INST_0_i_25 
       (.I0(ir[7]),
        .I1(ir[4]),
        .O(\ccmd[0]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00002E222E222E22)) 
    \ccmd[0]_INST_0_i_26 
       (.I0(\ccmd[0]_INST_0_i_28_n_0 ),
        .I1(\ccmd[0]_INST_0_i_29_n_0 ),
        .I2(\bcmd[1]_INST_0_i_11_n_0 ),
        .I3(\ccmd[0]_INST_0_i_25_n_0 ),
        .I4(\ccmd[0]_INST_0_i_24_n_0 ),
        .I5(\stat[2]_i_14_n_0 ),
        .O(\ccmd[0]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hABAAAABA)) 
    \ccmd[0]_INST_0_i_27 
       (.I0(\ccmd[0]_INST_0_i_30_n_0 ),
        .I1(\ccmd[0]_INST_0_i_31_n_0 ),
        .I2(ir[5]),
        .I3(ir[7]),
        .I4(ir[3]),
        .O(\ccmd[0]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h5575557500300000)) 
    \ccmd[0]_INST_0_i_28 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(ir[9]),
        .I2(ir[10]),
        .I3(ir[7]),
        .I4(ir[11]),
        .I5(crdy),
        .O(\ccmd[0]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hA0A2A0A2AAAAA0A2)) 
    \ccmd[0]_INST_0_i_29 
       (.I0(ir[8]),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(crdy),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(\ccmd[0]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFAAFFFFFFFE)) 
    \ccmd[0]_INST_0_i_3 
       (.I0(\ccmd[0]_INST_0_i_10_n_0 ),
        .I1(Q[1]),
        .I2(ir[14]),
        .I3(ir[15]),
        .I4(ir[11]),
        .I5(ir[12]),
        .O(\ccmd[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4044505000400050)) 
    \ccmd[0]_INST_0_i_30 
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(ir[11]),
        .I3(ir[8]),
        .I4(ir[10]),
        .I5(crdy),
        .O(\ccmd[0]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \ccmd[0]_INST_0_i_31 
       (.I0(ir[11]),
        .I1(ir[8]),
        .I2(ir[4]),
        .I3(ir[9]),
        .I4(ir[10]),
        .O(\ccmd[0]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00000004FFFFFFFF)) 
    \ccmd[0]_INST_0_i_4 
       (.I0(ir[12]),
        .I1(\badr[15]_INST_0_i_2 [6]),
        .I2(ir[14]),
        .I3(ir[15]),
        .I4(Q[1]),
        .I5(ir[13]),
        .O(\ccmd[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0B0B000B0B0)) 
    \ccmd[0]_INST_0_i_5 
       (.I0(\ccmd[0]_INST_0_i_11_n_0 ),
        .I1(\ccmd[0]_INST_0_i_12_n_0 ),
        .I2(Q[0]),
        .I3(ir[2]),
        .I4(Q[1]),
        .I5(ir[7]),
        .O(\ccmd[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h003300F300330022)) 
    \ccmd[0]_INST_0_i_6 
       (.I0(ir[7]),
        .I1(Q[1]),
        .I2(\ccmd[0]_INST_0_i_13_n_0 ),
        .I3(ir[15]),
        .I4(ir[10]),
        .I5(\ccmd[0]_INST_0_i_14_n_0 ),
        .O(\ccmd[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h444400004444000F)) 
    \ccmd[0]_INST_0_i_7 
       (.I0(\ccmd[0]_INST_0_i_15_n_0 ),
        .I1(rst_n_fl_reg_0),
        .I2(\ccmd[0]_INST_0_i_16_n_0 ),
        .I3(\ccmd[0]_INST_0_i_17_n_0 ),
        .I4(ir[10]),
        .I5(\ccmd[0]_INST_0_i_18_n_0 ),
        .O(\ccmd[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFF)) 
    \ccmd[0]_INST_0_i_8 
       (.I0(\ccmd[0]_INST_0_i_19_n_0 ),
        .I1(\stat[2]_i_6_n_0 ),
        .I2(\bdatw[8]_INST_0_i_27_n_0 ),
        .I3(ir[12]),
        .I4(ir[0]),
        .I5(Q[1]),
        .O(\ccmd[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4550554040554055)) 
    \ccmd[0]_INST_0_i_9 
       (.I0(Q[1]),
        .I1(ir[12]),
        .I2(ir[15]),
        .I3(ir[11]),
        .I4(ir[14]),
        .I5(ctl_fetch_fl_reg_1),
        .O(\ccmd[0]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[1]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .O(ccmd[1]));
  LUT5 #(
    .INIT(32'hFFFF550C)) 
    \ccmd[1]_INST_0_i_1 
       (.I0(\ccmd[1]_INST_0_i_2_n_0 ),
        .I1(\ccmd[1]_INST_0_i_3_n_0 ),
        .I2(\ccmd[1]_INST_0_i_4_n_0 ),
        .I3(\ccmd[1]_INST_0_i_5_n_0 ),
        .I4(Q[1]),
        .O(\ccmd[1]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ccmd[1]_INST_0_i_10 
       (.I0(ir[3]),
        .I1(ir[1]),
        .O(\ccmd[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \ccmd[1]_INST_0_i_11 
       (.I0(\stat[2]_i_6_n_0 ),
        .I1(ir[7]),
        .I2(Q[0]),
        .I3(ir[5]),
        .I4(ir[6]),
        .I5(\ccmd[1]_INST_0_i_18_n_0 ),
        .O(\ccmd[1]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ccmd[1]_INST_0_i_12 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[4]),
        .I3(ir[8]),
        .O(\ccmd[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011700070)) 
    \ccmd[1]_INST_0_i_13 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(crdy),
        .I3(Q[0]),
        .I4(ir[10]),
        .I5(\ccmd[1]_INST_0_i_19_n_0 ),
        .O(\ccmd[1]_INST_0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \ccmd[1]_INST_0_i_14 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[8]),
        .O(\ccmd[1]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080CC00C0)) 
    \ccmd[1]_INST_0_i_15 
       (.I0(\ccmd[2]_INST_0_i_10_n_0 ),
        .I1(\ccmd[1]_INST_0_i_20_n_0 ),
        .I2(ir[4]),
        .I3(ir[5]),
        .I4(ir[6]),
        .I5(\ccmd[1]_INST_0_i_21_n_0 ),
        .O(\ccmd[1]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hABABAAABAAAAAAAB)) 
    \ccmd[1]_INST_0_i_16 
       (.I0(\ccmd[1]_INST_0_i_22_n_0 ),
        .I1(Q[0]),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ir[10]),
        .I5(\bdatw[15]_INST_0_i_74_n_0 ),
        .O(\ccmd[1]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \ccmd[1]_INST_0_i_17 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(ir[8]),
        .O(\ccmd[1]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ccmd[1]_INST_0_i_18 
       (.I0(ir[13]),
        .I1(ir[11]),
        .O(\ccmd[1]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h4403C7C3)) 
    \ccmd[1]_INST_0_i_19 
       (.I0(crdy),
        .I1(ir[7]),
        .I2(ir[6]),
        .I3(Q[0]),
        .I4(ir[10]),
        .O(\ccmd[1]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0040444400400040)) 
    \ccmd[1]_INST_0_i_2 
       (.I0(Q[2]),
        .I1(ir[14]),
        .I2(\ccmd[2]_INST_0_i_16_n_0 ),
        .I3(ir[13]),
        .I4(\ccmd[1]_INST_0_i_6_n_0 ),
        .I5(\ccmd[1]_INST_0_i_7_n_0 ),
        .O(\ccmd[1]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \ccmd[1]_INST_0_i_20 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[8]),
        .O(\ccmd[1]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF004F)) 
    \ccmd[1]_INST_0_i_21 
       (.I0(ir[4]),
        .I1(ir[3]),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(Q[0]),
        .O(\ccmd[1]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h8080888880808000)) 
    \ccmd[1]_INST_0_i_22 
       (.I0(ir[10]),
        .I1(\iv[15]_i_72_n_0 ),
        .I2(crdy),
        .I3(ir[6]),
        .I4(ir[7]),
        .I5(Q[0]),
        .O(\ccmd[1]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h7F575F557F777F77)) 
    \ccmd[1]_INST_0_i_3 
       (.I0(\stat[0]_i_2_0 ),
        .I1(\ccmd[1]_INST_0_i_9_n_0 ),
        .I2(ir[13]),
        .I3(ir[14]),
        .I4(ir[11]),
        .I5(ir[15]),
        .O(\ccmd[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000EC000000000)) 
    \ccmd[1]_INST_0_i_4 
       (.I0(\ccmd[1]_INST_0_i_10_n_0 ),
        .I1(\bdatw[9]_INST_0_i_15_n_0 ),
        .I2(Q[2]),
        .I3(ir[2]),
        .I4(\ccmd[1]_INST_0_i_11_n_0 ),
        .I5(\ccmd[1]_INST_0_i_12_n_0 ),
        .O(\ccmd[1]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hA8AA)) 
    \ccmd[1]_INST_0_i_5 
       (.I0(ir[12]),
        .I1(ir[13]),
        .I2(ir[11]),
        .I3(ir[15]),
        .O(\ccmd[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDFFFDFDF)) 
    \ccmd[1]_INST_0_i_6 
       (.I0(ir[13]),
        .I1(ir[15]),
        .I2(\ccmd[1]_INST_0_i_13_n_0 ),
        .I3(\ccmd[1]_INST_0_i_14_n_0 ),
        .I4(\bcmd[1]_INST_0_i_9_n_0 ),
        .I5(ir[11]),
        .O(\ccmd[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEFFFFFFFFF)) 
    \ccmd[1]_INST_0_i_7 
       (.I0(\ccmd[1]_INST_0_i_15_n_0 ),
        .I1(\ccmd[1]_INST_0_i_16_n_0 ),
        .I2(ir[10]),
        .I3(Q[0]),
        .I4(\ccmd[1]_INST_0_i_17_n_0 ),
        .I5(ir[11]),
        .O(\ccmd[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0020002000200000)) 
    \ccmd[1]_INST_0_i_9 
       (.I0(\ccmd[2]_INST_0_i_27_n_0 ),
        .I1(\ccmd[1]_INST_0_i_18_n_0 ),
        .I2(crdy),
        .I3(\ccmd[2]_INST_0_i_14_n_0 ),
        .I4(ir[15]),
        .I5(\ccmd[1]_INST_0_i_10_n_0 ),
        .O(\ccmd[1]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \ccmd[2]_INST_0 
       (.I0(ccmd_2_sn_1),
        .I1(\ccmd[2]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_6 ),
        .O(ccmd[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[2]_INST_0_i_10 
       (.I0(ir[7]),
        .I1(ir[3]),
        .O(\ccmd[2]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ccmd[2]_INST_0_i_11 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[8]),
        .O(\ccmd[2]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ccmd[2]_INST_0_i_12 
       (.I0(ir[13]),
        .I1(ir[14]),
        .O(\ccmd[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00000000)) 
    \ccmd[2]_INST_0_i_13 
       (.I0(\ccmd[2]_INST_0_i_22_n_0 ),
        .I1(\ccmd[2]_INST_0_i_23_n_0 ),
        .I2(\bdatw[15]_INST_0_i_47_n_0 ),
        .I3(\ccmd[2]_INST_0_i_24_n_0 ),
        .I4(\ccmd[2]_INST_0_i_16_n_0 ),
        .I5(\ccmd[2]_INST_0_i_25_n_0 ),
        .O(\ccmd[2]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ccmd[2]_INST_0_i_14 
       (.I0(ir[8]),
        .I1(ir[9]),
        .O(\ccmd[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \ccmd[2]_INST_0_i_15 
       (.I0(\ccmd[2]_INST_0_i_7_n_0 ),
        .I1(ir[7]),
        .I2(ir[10]),
        .I3(\ccmd[4]_INST_0_i_19_n_0 ),
        .I4(\ccmd[2]_INST_0_i_26_n_0 ),
        .I5(\ccmd[2]_INST_0_i_27_n_0 ),
        .O(\ccmd[2]_INST_0_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[2]_INST_0_i_16 
       (.I0(ir[15]),
        .I1(Q[0]),
        .O(\ccmd[2]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \ccmd[2]_INST_0_i_17 
       (.I0(\ccmd[2]_INST_0_i_28_n_0 ),
        .I1(ctl_fetch_ext_fl_i_6_n_0),
        .I2(\ccmd[2]_INST_0_i_29_n_0 ),
        .I3(\bdatw[9]_INST_0_i_12_n_0 ),
        .I4(ir[0]),
        .I5(\bdatw[15]_INST_0_i_45_n_0 ),
        .O(\ccmd[2]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ccmd[2]_INST_0_i_18 
       (.I0(ir[9]),
        .I1(ir[7]),
        .O(\ccmd[2]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002900)) 
    \ccmd[2]_INST_0_i_19 
       (.I0(ir[7]),
        .I1(ir[5]),
        .I2(ir[4]),
        .I3(ir[9]),
        .I4(ir[6]),
        .I5(Q[1]),
        .O(\ccmd[2]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCDDDDCCFCDDDD)) 
    \ccmd[2]_INST_0_i_2 
       (.I0(\ccmd[2]_INST_0_i_4_n_0 ),
        .I1(\ccmd[2]_INST_0_i_5_n_0 ),
        .I2(\ccmd[2]_INST_0_i_6_n_0 ),
        .I3(ir[15]),
        .I4(ir[11]),
        .I5(\ccmd[2]_INST_0_i_7_n_0 ),
        .O(\ccmd[2]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ccmd[2]_INST_0_i_20 
       (.I0(ir[8]),
        .I1(ir[10]),
        .O(\ccmd[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C57)) 
    \ccmd[2]_INST_0_i_21 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[10]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(Q[1]),
        .O(\ccmd[2]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ccmd[2]_INST_0_i_22 
       (.I0(ir[5]),
        .I1(ir[4]),
        .I2(ir[10]),
        .I3(ir[7]),
        .O(\ccmd[2]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDDDF)) 
    \ccmd[2]_INST_0_i_23 
       (.I0(\ccmd[2]_INST_0_i_30_n_0 ),
        .I1(ir[12]),
        .I2(crdy),
        .I3(Q[0]),
        .I4(ir[13]),
        .I5(ir[15]),
        .O(\ccmd[2]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[2]_INST_0_i_24 
       (.I0(ir[13]),
        .I1(ir[12]),
        .O(\ccmd[2]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF3EBFFFFF3AF)) 
    \ccmd[2]_INST_0_i_25 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[10]),
        .I4(\ccmd[2]_INST_0_i_31_n_0 ),
        .I5(ir[6]),
        .O(\ccmd[2]_INST_0_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \ccmd[2]_INST_0_i_26 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(ir[0]),
        .O(\ccmd[2]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \ccmd[2]_INST_0_i_27 
       (.I0(ir[6]),
        .I1(ir[2]),
        .I2(ir[7]),
        .I3(ir[10]),
        .I4(ir[4]),
        .I5(ir[5]),
        .O(\ccmd[2]_INST_0_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \ccmd[2]_INST_0_i_28 
       (.I0(Q[0]),
        .I1(ir[5]),
        .I2(ir[4]),
        .O(\ccmd[2]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \ccmd[2]_INST_0_i_29 
       (.I0(Q[1]),
        .I1(ir[11]),
        .I2(ir[3]),
        .I3(ir[6]),
        .I4(Q[2]),
        .O(\ccmd[2]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \ccmd[2]_INST_0_i_3 
       (.I0(\ccmd[2]_INST_0_i_1 ),
        .I1(\ccmd[2]_INST_0_i_9_n_0 ),
        .I2(\ccmd[2]_INST_0_i_10_n_0 ),
        .I3(ir[12]),
        .I4(\ccmd[2]_INST_0_i_11_n_0 ),
        .I5(\bcmd[0]_INST_0_i_5_n_0 ),
        .O(\stat_reg[1]_2 ));
  LUT3 #(
    .INIT(8'h01)) 
    \ccmd[2]_INST_0_i_30 
       (.I0(ir[6]),
        .I1(ir[9]),
        .I2(ir[8]),
        .O(\ccmd[2]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    \ccmd[2]_INST_0_i_31 
       (.I0(ir[12]),
        .I1(ir[15]),
        .I2(ir[13]),
        .I3(Q[0]),
        .I4(crdy),
        .I5(ir[9]),
        .O(\ccmd[2]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EEEEFFFFEEEE)) 
    \ccmd[2]_INST_0_i_4 
       (.I0(\ccmd[2]_INST_0_i_12_n_0 ),
        .I1(\ccmd[2]_INST_0_i_13_n_0 ),
        .I2(\ccmd[2]_INST_0_i_14_n_0 ),
        .I3(ir[15]),
        .I4(Q[1]),
        .I5(\ccmd[2]_INST_0_i_15_n_0 ),
        .O(\ccmd[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00888008)) 
    \ccmd[2]_INST_0_i_5 
       (.I0(\stat_reg[0]_4 ),
        .I1(\ccmd[2]_INST_0_i_16_n_0 ),
        .I2(ir[12]),
        .I3(ir[13]),
        .I4(ir[14]),
        .I5(\ccmd[2]_INST_0_i_17_n_0 ),
        .O(\ccmd[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF0E)) 
    \ccmd[2]_INST_0_i_6 
       (.I0(crdy),
        .I1(Q[1]),
        .I2(\ccmd[2]_INST_0_i_18_n_0 ),
        .I3(\ccmd[2]_INST_0_i_19_n_0 ),
        .I4(\ccmd[2]_INST_0_i_20_n_0 ),
        .I5(\ccmd[2]_INST_0_i_21_n_0 ),
        .O(\ccmd[2]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \ccmd[2]_INST_0_i_7 
       (.I0(ir[13]),
        .I1(Q[0]),
        .I2(ir[12]),
        .I3(ir[14]),
        .O(\ccmd[2]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \ccmd[2]_INST_0_i_9 
       (.I0(ir[2]),
        .I1(ir[1]),
        .I2(ir[0]),
        .O(\ccmd[2]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[3]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .O(ccmd[3]));
  MUXF7 \ccmd[3]_INST_0_i_1 
       (.I0(\ccmd[3]_INST_0_i_2_n_0 ),
        .I1(\ccmd[3]_INST_0_i_3_n_0 ),
        .O(\ccmd[3]_INST_0_i_1_n_0 ),
        .S(ir[15]));
  LUT6 #(
    .INIT(64'h0000000100010000)) 
    \ccmd[3]_INST_0_i_10 
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(ir[10]),
        .I5(ir[8]),
        .O(\ccmd[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ccmd[3]_INST_0_i_11 
       (.I0(\ccmd[4]_INST_0_i_10_n_0 ),
        .I1(Q[0]),
        .I2(ir[8]),
        .I3(Q[1]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\ccmd[3]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[3]_INST_0_i_12 
       (.I0(ir[14]),
        .I1(ir[12]),
        .O(\ccmd[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBDFF)) 
    \ccmd[3]_INST_0_i_13 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(\ccmd[4]_INST_0_i_10_n_0 ),
        .I3(crdy),
        .I4(Q[1]),
        .I5(\ccmd[2]_INST_0_i_7_n_0 ),
        .O(\ccmd[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFF89FFEFFFFF)) 
    \ccmd[3]_INST_0_i_14 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(\ccmd[3]_INST_0_i_7_0 ),
        .I3(\ccmd[3]_INST_0_i_18_n_0 ),
        .I4(ir[0]),
        .I5(ir[2]),
        .O(\ccmd[3]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ccmd[3]_INST_0_i_15 
       (.I0(ir[5]),
        .I1(ir[4]),
        .I2(ir[7]),
        .I3(ir[6]),
        .I4(ir[12]),
        .O(\ccmd[3]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00004641)) 
    \ccmd[3]_INST_0_i_16 
       (.I0(Q[0]),
        .I1(ir[6]),
        .I2(ir[4]),
        .I3(ir[3]),
        .I4(ir[5]),
        .O(\ccmd[3]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ccmd[3]_INST_0_i_18 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[9]),
        .I3(ir[8]),
        .O(\ccmd[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A2A200)) 
    \ccmd[3]_INST_0_i_2 
       (.I0(\ccmd[3]_INST_0_i_4_n_0 ),
        .I1(\ccmd[3]_INST_0_i_5_n_0 ),
        .I2(\ccmd[3]_INST_0_i_6_n_0 ),
        .I3(ir[11]),
        .I4(ir[10]),
        .I5(\ccmd[3]_INST_0_i_7_n_0 ),
        .O(\ccmd[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFDFDFFFDFDFD)) 
    \ccmd[3]_INST_0_i_3 
       (.I0(ir[14]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(ir[11]),
        .I4(ir[13]),
        .I5(ir[12]),
        .O(\ccmd[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555FF7F55555555)) 
    \ccmd[3]_INST_0_i_4 
       (.I0(\ccmd[3]_INST_0_i_8_n_0 ),
        .I1(ir[8]),
        .I2(ir[7]),
        .I3(\ccmd[3]_INST_0_i_9_n_0 ),
        .I4(\ccmd[3]_INST_0_i_10_n_0 ),
        .I5(\ccmd[3]_INST_0_i_11_n_0 ),
        .O(\ccmd[3]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \ccmd[3]_INST_0_i_5 
       (.I0(ir[8]),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(ir[10]),
        .O(\ccmd[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD1FFFFFFFFFF)) 
    \ccmd[3]_INST_0_i_6 
       (.I0(crdy),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\ccmd[3]_INST_0_i_12_n_0 ),
        .I4(ir[11]),
        .I5(ir[13]),
        .O(\ccmd[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEE0EEE0E0)) 
    \ccmd[3]_INST_0_i_7 
       (.I0(\ccmd[3]_INST_0_i_13_n_0 ),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .I2(\ccmd[3]_INST_0_i_14_n_0 ),
        .I3(crdy),
        .I4(ctl_fetch_ext_fl_reg_0),
        .I5(\ccmd[3]_INST_0_i_15_n_0 ),
        .O(\ccmd[3]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \ccmd[3]_INST_0_i_8 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(ir[11]),
        .I3(ir[13]),
        .O(\ccmd[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFB3B3F3FFBFBF)) 
    \ccmd[3]_INST_0_i_9 
       (.I0(Q[0]),
        .I1(ir[10]),
        .I2(Q[1]),
        .I3(\ccmd[3]_INST_0_i_16_n_0 ),
        .I4(ir[9]),
        .I5(crdy),
        .O(\ccmd[3]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0 
       (.I0(\stat_reg[2]_6 ),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .O(ccmd[4]));
  LUT6 #(
    .INIT(64'h000000000000FE0E)) 
    \ccmd[4]_INST_0_i_1 
       (.I0(\ccmd[4]_INST_0_i_3_n_0 ),
        .I1(\ccmd[4]_INST_0_i_4_n_0 ),
        .I2(ir[11]),
        .I3(\ccmd[4]_INST_0_i_5_n_0 ),
        .I4(ir[15]),
        .I5(Q[2]),
        .O(\stat_reg[2]_6 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ccmd[4]_INST_0_i_10 
       (.I0(ir[7]),
        .I1(ir[6]),
        .O(\ccmd[4]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0_i_11 
       (.I0(ir[9]),
        .I1(ir[10]),
        .O(\ccmd[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00000000E8FF)) 
    \ccmd[4]_INST_0_i_12 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(crdy),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\ccmd[4]_INST_0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \ccmd[4]_INST_0_i_13 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[10]),
        .O(\ccmd[4]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0_i_14 
       (.I0(ir[11]),
        .I1(Q[1]),
        .O(\ccmd[4]_INST_0_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \ccmd[4]_INST_0_i_15 
       (.I0(ir[11]),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .I2(crdy),
        .O(\ccmd[4]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000EFFF000000)) 
    \ccmd[4]_INST_0_i_16 
       (.I0(ir[10]),
        .I1(ir[8]),
        .I2(\ccmd[4]_INST_0_i_10_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(ir[9]),
        .O(\ccmd[4]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h02000000FFFFFFFF)) 
    \ccmd[4]_INST_0_i_17 
       (.I0(ir[10]),
        .I1(Q[1]),
        .I2(\ccmd[4]_INST_0_i_20_n_0 ),
        .I3(ir[6]),
        .I4(\stat[0]_i_14_n_0 ),
        .I5(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\ccmd[4]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ccmd[4]_INST_0_i_18 
       (.I0(ir[9]),
        .I1(ir[10]),
        .O(\ccmd[4]_INST_0_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \ccmd[4]_INST_0_i_19 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(ir[13]),
        .O(\ccmd[4]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFEFFFFFFF)) 
    \ccmd[4]_INST_0_i_2 
       (.I0(\ccmd[4]_INST_0_i_6_n_0 ),
        .I1(Q[2]),
        .I2(ir[14]),
        .I3(ir[13]),
        .I4(ir[12]),
        .I5(ir[15]),
        .O(\ccmd[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ccmd[4]_INST_0_i_20 
       (.I0(ir[7]),
        .I1(ir[8]),
        .O(\ccmd[4]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0200022222222222)) 
    \ccmd[4]_INST_0_i_3 
       (.I0(\ccmd[4]_INST_0_i_7_n_0 ),
        .I1(\ccmd[4]_INST_0_i_8_n_0 ),
        .I2(Q[0]),
        .I3(\bdatw[8]_INST_0_i_27_n_0 ),
        .I4(ir[0]),
        .I5(Q[1]),
        .O(\ccmd[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045550000)) 
    \ccmd[4]_INST_0_i_4 
       (.I0(\ccmd[4]_INST_0_i_9_n_0 ),
        .I1(\ccmd[4]_INST_0_i_10_n_0 ),
        .I2(\ccmd[4]_INST_0_i_11_n_0 ),
        .I3(ctl_fetch_ext_fl_reg_0),
        .I4(rst_n_fl_reg_0),
        .I5(\ccmd[4]_INST_0_i_12_n_0 ),
        .O(\ccmd[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0800888808000080)) 
    \ccmd[4]_INST_0_i_5 
       (.I0(rst_n_fl_reg_0),
        .I1(\ccmd[4]_INST_0_i_13_n_0 ),
        .I2(Q[0]),
        .I3(ir[7]),
        .I4(Q[1]),
        .I5(crdy),
        .O(\ccmd[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FBBBBFFFFBBBB)) 
    \ccmd[4]_INST_0_i_6 
       (.I0(Q[0]),
        .I1(\ccmd[4]_INST_0_i_14_n_0 ),
        .I2(\ccmd[4]_INST_0_i_15_n_0 ),
        .I3(\ccmd[4]_INST_0_i_16_n_0 ),
        .I4(ir[12]),
        .I5(\ccmd[4]_INST_0_i_17_n_0 ),
        .O(\ccmd[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001010001)) 
    \ccmd[4]_INST_0_i_7 
       (.I0(ir[8]),
        .I1(ir[4]),
        .I2(\ccmd[4]_INST_0_i_18_n_0 ),
        .I3(ctl_fetch_ext_fl_reg_0),
        .I4(crdy),
        .I5(\ccmd[4]_INST_0_i_19_n_0 ),
        .O(\ccmd[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8FFFF)) 
    \ccmd[4]_INST_0_i_8 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(ir[2]),
        .I5(ir[6]),
        .O(\ccmd[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAFF083CAAFF)) 
    \ccmd[4]_INST_0_i_9 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(Q[1]),
        .I2(ir[7]),
        .I3(crdy),
        .I4(\bcmd[0]_INST_0_i_7_n_0 ),
        .I5(ir[8]),
        .O(\ccmd[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    ctl_fetch_ext_fl_i_1
       (.I0(ctl_fetch_ext_fl_i_2_n_0),
        .I1(ctl_fetch_ext_fl_reg_0),
        .I2(ctl_fetch_ext_fl_reg_1),
        .I3(ctl_fetch_ext_fl_i_5_n_0),
        .I4(ir[2]),
        .I5(ir[0]),
        .O(ctl_fetch_ext));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    ctl_fetch_ext_fl_i_2
       (.I0(ctl_fetch_ext_fl_i_6_n_0),
        .I1(ctl_fetch_ext_fl_i_7_n_0),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(ir[5]),
        .I5(ir[8]),
        .O(ctl_fetch_ext_fl_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ctl_fetch_ext_fl_i_5
       (.I0(ir[3]),
        .I1(ir[4]),
        .O(ctl_fetch_ext_fl_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    ctl_fetch_ext_fl_i_6
       (.I0(ir[15]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[14]),
        .O(ctl_fetch_ext_fl_i_6_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ctl_fetch_ext_fl_i_7
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(ir[9]),
        .O(ctl_fetch_ext_fl_i_7_n_0));
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
    .INIT(64'hEEE0EEEEEEEEEEEE)) 
    ctl_fetch_inferred_i_1
       (.I0(ctl_fetch_inferred_i_2_n_0),
        .I1(ctl_fetch_inferred_i_3_n_0),
        .I2(brdy),
        .I3(ctl_fetch_inferred_i_4_n_0),
        .I4(rst_n_fl_reg_0),
        .I5(ctl_fetch_inferred_i_5_n_0),
        .O(in0));
  LUT6 #(
    .INIT(64'h00000000FAFA8808)) 
    ctl_fetch_inferred_i_10
       (.I0(crdy),
        .I1(Q[0]),
        .I2(\bcmd[1]_INST_0_i_9_n_0 ),
        .I3(\badr[15]_INST_0_i_2 [10]),
        .I4(ir[8]),
        .I5(ctl_fetch_inferred_i_26_n_0),
        .O(ctl_fetch_inferred_i_10_n_0));
  LUT6 #(
    .INIT(64'hE0EFFFFF00000000)) 
    ctl_fetch_inferred_i_12
       (.I0(\bcmd[2]_INST_0_i_3_n_0 ),
        .I1(ctl_fetch_inferred_i_27_n_0),
        .I2(ir[14]),
        .I3(\badr[15]_INST_0_i_2 [7]),
        .I4(ir[12]),
        .I5(ctl_fetch_inferred_i_28_n_0),
        .O(ctl_fetch_inferred_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF540000)) 
    ctl_fetch_inferred_i_13
       (.I0(ctl_fetch_inferred_i_29_n_0),
        .I1(ctl_fetch_inferred_i_3_0),
        .I2(\bdatw[9]_INST_0_i_12_n_0 ),
        .I3(ir[9]),
        .I4(ctl_fetch_inferred_i_31_n_0),
        .I5(ir[11]),
        .O(ctl_fetch_inferred_i_13_n_0));
  LUT6 #(
    .INIT(64'h0222222202220000)) 
    ctl_fetch_inferred_i_14
       (.I0(ctl_fetch_inferred_i_32_n_0),
        .I1(ctl_fetch_inferred_i_33_n_0),
        .I2(ir[9]),
        .I3(Q[0]),
        .I4(ir[6]),
        .I5(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(ctl_fetch_inferred_i_14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ctl_fetch_inferred_i_15
       (.I0(ir[5]),
        .I1(ir[6]),
        .O(ctl_fetch_inferred_i_15_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ctl_fetch_inferred_i_16
       (.I0(ir[7]),
        .I1(ir[3]),
        .O(ctl_fetch_inferred_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBB1)) 
    ctl_fetch_inferred_i_17
       (.I0(\bcmd[0]_INST_0_i_8_n_0 ),
        .I1(ir[12]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(ir[15]),
        .I5(Q[2]),
        .O(ctl_fetch_inferred_i_17_n_0));
  LUT6 #(
    .INIT(64'h8080888880888088)) 
    ctl_fetch_inferred_i_18
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(Q[1]),
        .I3(ir[10]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(ctl_fetch_inferred_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080008000800000)) 
    ctl_fetch_inferred_i_19
       (.I0(ctl_fetch_inferred_i_34_n_0),
        .I1(ctl_fetch_inferred_i_35_n_0),
        .I2(ctl_fetch_inferred_i_36_n_0),
        .I3(ctl_fetch_inferred_i_37_n_0),
        .I4(Q[1]),
        .I5(ctl_fetch_inferred_i_38_n_0),
        .O(ctl_fetch_inferred_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAEAAAA)) 
    ctl_fetch_inferred_i_2
       (.I0(ctl_fetch_inferred_i_6_n_0),
        .I1(ctl_fetch_inferred_i_7_n_0),
        .I2(ctl_fetch_inferred_i_8_n_0),
        .I3(\bcmd[0]_INST_0_i_8_n_0 ),
        .I4(crdy),
        .I5(ctl_fetch_inferred_i_9_n_0),
        .O(ctl_fetch_inferred_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000001F1FFF1F)) 
    ctl_fetch_inferred_i_20
       (.I0(\badr[15]_INST_0_i_2 [11]),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(Q[0]),
        .I4(\badr[15]_INST_0_i_2 [10]),
        .I5(ctl_fetch_inferred_i_39_n_0),
        .O(ctl_fetch_inferred_i_20_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    ctl_fetch_inferred_i_21
       (.I0(ir[6]),
        .I1(ir[8]),
        .I2(ir[10]),
        .O(ctl_fetch_inferred_i_21_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEFEEE)) 
    ctl_fetch_inferred_i_22
       (.I0(ctl_fetch_inferred_i_40_n_0),
        .I1(ctl_fetch_inferred_i_41_n_0),
        .I2(Q[0]),
        .I3(ir[6]),
        .I4(ir[8]),
        .I5(ctl_fetch_inferred_i_42_n_0),
        .O(ctl_fetch_inferred_i_22_n_0));
  LUT6 #(
    .INIT(64'hFFBBFEFEFFFFFFFE)) 
    ctl_fetch_inferred_i_23
       (.I0(ctl_fetch_inferred_i_43_n_0),
        .I1(ir[6]),
        .I2(ir[4]),
        .I3(Q[0]),
        .I4(ir[5]),
        .I5(ir[3]),
        .O(ctl_fetch_inferred_i_23_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ctl_fetch_inferred_i_24
       (.I0(ir[9]),
        .I1(ir[10]),
        .O(ctl_fetch_inferred_i_24_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    ctl_fetch_inferred_i_26
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[10]),
        .O(ctl_fetch_inferred_i_26_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_inferred_i_27
       (.I0(crdy),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(ctl_fetch_inferred_i_27_n_0));
  LUT3 #(
    .INIT(8'hB0)) 
    ctl_fetch_inferred_i_28
       (.I0(ir[12]),
        .I1(\badr[15]_INST_0_i_2 [6]),
        .I2(ir[13]),
        .O(ctl_fetch_inferred_i_28_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF080808)) 
    ctl_fetch_inferred_i_29
       (.I0(ir[0]),
        .I1(crdy),
        .I2(ctl_fetch_inferred_i_38_n_0),
        .I3(ir[3]),
        .I4(ir[1]),
        .I5(tout__1_carry_i_17_n_0),
        .O(ctl_fetch_inferred_i_29_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAA)) 
    ctl_fetch_inferred_i_3
       (.I0(ctl_fetch_inferred_i_10_n_0),
        .I1(ctl_fetch_fl_reg_1),
        .I2(ir[13]),
        .I3(\bcmd[2] ),
        .I4(ctl_fetch_inferred_i_12_n_0),
        .I5(ctl_fetch_inferred_i_13_n_0),
        .O(ctl_fetch_inferred_i_3_n_0));
  LUT6 #(
    .INIT(64'h000000000001C0C1)) 
    ctl_fetch_inferred_i_31
       (.I0(ir[8]),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[12]),
        .I4(Q[0]),
        .I5(ctl_fetch_inferred_i_45_n_0),
        .O(ctl_fetch_inferred_i_31_n_0));
  LUT6 #(
    .INIT(64'hE4646464AAAAAAAA)) 
    ctl_fetch_inferred_i_32
       (.I0(ir[10]),
        .I1(ir[8]),
        .I2(ir[7]),
        .I3(ir[6]),
        .I4(ir[5]),
        .I5(ir[11]),
        .O(ctl_fetch_inferred_i_32_n_0));
  LUT6 #(
    .INIT(64'hAAAAFFFFFFFFA8FF)) 
    ctl_fetch_inferred_i_33
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(ir[6]),
        .I3(ir[11]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(ctl_fetch_inferred_i_33_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    ctl_fetch_inferred_i_34
       (.I0(ir[8]),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[12]),
        .O(ctl_fetch_inferred_i_34_n_0));
  LUT6 #(
    .INIT(64'h0000000000000070)) 
    ctl_fetch_inferred_i_35
       (.I0(ir[2]),
        .I1(Q[2]),
        .I2(ctl_fetch_inferred_i_46_n_0),
        .I3(ir[9]),
        .I4(ir[15]),
        .I5(\ccmd[0]_INST_0_i_17_n_0 ),
        .O(ctl_fetch_inferred_i_35_n_0));
  LUT5 #(
    .INIT(32'h00FC37D4)) 
    ctl_fetch_inferred_i_36
       (.I0(Q[1]),
        .I1(ir[2]),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(ir[3]),
        .O(ctl_fetch_inferred_i_36_n_0));
  LUT6 #(
    .INIT(64'hFFEEFFEEEAEAEAAA)) 
    ctl_fetch_inferred_i_37
       (.I0(\bcmd[1]_INST_0_i_7_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(ir[1]),
        .I4(ir[3]),
        .I5(Q[2]),
        .O(ctl_fetch_inferred_i_37_n_0));
  LUT4 #(
    .INIT(16'h4777)) 
    ctl_fetch_inferred_i_38
       (.I0(ir[3]),
        .I1(\badr[15]_INST_0_i_2 [10]),
        .I2(ir[2]),
        .I3(ir[1]),
        .O(ctl_fetch_inferred_i_38_n_0));
  LUT5 #(
    .INIT(32'h1011FFFF)) 
    ctl_fetch_inferred_i_39
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[7]),
        .I3(\badr[15]_INST_0_i_2 [11]),
        .I4(ir[10]),
        .O(ctl_fetch_inferred_i_39_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ctl_fetch_inferred_i_4
       (.I0(ir[15]),
        .I1(Q[2]),
        .O(ctl_fetch_inferred_i_4_n_0));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFFFE)) 
    ctl_fetch_inferred_i_40
       (.I0(ctl_fetch_inferred_i_47_n_0),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\ccmd[2]_INST_0_i_24_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [7]),
        .I5(ir[14]),
        .O(ctl_fetch_inferred_i_40_n_0));
  LUT5 #(
    .INIT(32'h00100F10)) 
    ctl_fetch_inferred_i_41
       (.I0(ir[14]),
        .I1(\badr[15]_INST_0_i_2 [4]),
        .I2(ir[12]),
        .I3(ir[13]),
        .I4(\badr[15]_INST_0_i_2 [6]),
        .O(ctl_fetch_inferred_i_41_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF232F0000)) 
    ctl_fetch_inferred_i_42
       (.I0(ir[6]),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(rst_n_fl_reg_0),
        .I5(ctl_fetch_inferred_i_22_0),
        .O(ctl_fetch_inferred_i_42_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    ctl_fetch_inferred_i_43
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[7]),
        .O(ctl_fetch_inferred_i_43_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ctl_fetch_inferred_i_44
       (.I0(ir[0]),
        .I1(ir[3]),
        .O(rst_n_fl_reg_3));
  LUT5 #(
    .INIT(32'hDFDFFFFC)) 
    ctl_fetch_inferred_i_45
       (.I0(ir[8]),
        .I1(ir[6]),
        .I2(ir[9]),
        .I3(ir[7]),
        .I4(ir[10]),
        .O(ctl_fetch_inferred_i_45_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_inferred_i_46
       (.I0(ir[7]),
        .I1(ir[10]),
        .O(ctl_fetch_inferred_i_46_n_0));
  LUT6 #(
    .INIT(64'h0404FF04FF04FF04)) 
    ctl_fetch_inferred_i_47
       (.I0(\badr[15]_INST_0_i_2 [5]),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(Q[0]),
        .I4(ir[7]),
        .I5(ir[10]),
        .O(ctl_fetch_inferred_i_47_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAEAAAAAAA)) 
    ctl_fetch_inferred_i_5
       (.I0(ctl_fetch_inferred_i_14_n_0),
        .I1(ctl_fetch_inferred_i_15_n_0),
        .I2(ctl_fetch_inferred_i_16_n_0),
        .I3(\ccmd[4]_INST_0_i_14_n_0 ),
        .I4(ir[10]),
        .I5(\bcmd[2]_INST_0_i_3_n_0 ),
        .O(ctl_fetch_inferred_i_5_n_0));
  LUT6 #(
    .INIT(64'h00000000EAEEEAEA)) 
    ctl_fetch_inferred_i_6
       (.I0(ctl_fetch_inferred_i_17_n_0),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .I2(ctl_fetch_inferred_i_18_n_0),
        .I3(\stat[2]_i_14_n_0 ),
        .I4(Q[0]),
        .I5(ctl_fetch_inferred_i_19_n_0),
        .O(ctl_fetch_inferred_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAFEEE)) 
    ctl_fetch_inferred_i_7
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(ir[9]),
        .I3(ir[7]),
        .I4(ir[10]),
        .I5(ctl_fetch_inferred_i_20_n_0),
        .O(ctl_fetch_inferred_i_7_n_0));
  LUT6 #(
    .INIT(64'h00000000808BB0BB)) 
    ctl_fetch_inferred_i_8
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(ir[12]),
        .I5(ctl_fetch_inferred_i_21_n_0),
        .O(ctl_fetch_inferred_i_8_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAE0000)) 
    ctl_fetch_inferred_i_9
       (.I0(ctl_fetch_inferred_i_22_n_0),
        .I1(ctl_fetch_inferred_i_23_n_0),
        .I2(ctl_fetch_inferred_i_24_n_0),
        .I3(\bcmd[0]_INST_0_i_8_n_0 ),
        .I4(ir[11]),
        .I5(ctl_fetch_inferred_i_2_0),
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
    .INIT(64'h0008000000000000)) 
    \fch_irq_lev[1]_i_2 
       (.I0(ctl_fetch_ext_fl_i_2_n_0),
        .I1(fch_irq_req),
        .I2(ir[4]),
        .I3(ir[2]),
        .I4(\fch_irq_lev[1]_i_3_n_0 ),
        .I5(\bcmd[2] ),
        .O(fch_irq_lev0));
  LUT4 #(
    .INIT(16'h1000)) 
    \fch_irq_lev[1]_i_3 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(brdy),
        .I3(ir[0]),
        .O(\fch_irq_lev[1]_i_3_n_0 ));
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
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_1 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__0 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_1 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1] ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \grn[15]_i_1__1 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_1 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \grn[15]_i_1__10 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_2 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_7 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__11 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_3 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__12 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_3 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_8 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \grn[15]_i_1__13 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_3 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_9 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \grn[15]_i_1__14 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_3 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_10 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__15 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_1 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__16 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_1 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_11 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \grn[15]_i_1__17 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_1 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_12 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \grn[15]_i_1__18 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_1 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_13 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__19 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \grn[15]_i_1__2 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_1 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__20 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_14 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \grn[15]_i_1__21 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_15 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \grn[15]_i_1__22 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_16 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__23 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_2 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_4 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__24 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_2 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_17 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \grn[15]_i_1__25 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_2 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_18 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \grn[15]_i_1__26 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_2 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_19 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__27 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_3 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_5 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__28 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_3 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_20 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \grn[15]_i_1__29 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_3 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_21 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__3 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \grn[15]_i_1__30 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_3 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_22 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__4 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \grn[15]_i_1__5 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \grn[15]_i_1__6 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_4 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__7 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_2 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__8 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_2 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_5 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \grn[15]_i_1__9 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_2 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_6 ));
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
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[0]_i_1 
       (.I0(\iv[0]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(O[0]),
        .I3(\tr_reg[0]_0 ),
        .I4(\iv[0]_i_4_n_0 ),
        .O(cbus[0]));
  LUT3 #(
    .INIT(8'h35)) 
    \iv[0]_i_10 
       (.I0(abus_0[8]),
        .I1(\sp_reg[0] ),
        .I2(\stat_reg[2]_3 ),
        .O(\iv[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \iv[0]_i_11 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(\stat_reg[2]_3 ),
        .I2(abus_0[0]),
        .O(\iv[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h7A800000)) 
    \iv[0]_i_12 
       (.I0(abus_0[0]),
        .I1(\stat_reg[2]_3 ),
        .I2(\sp_reg[0] ),
        .I3(\stat_reg[2]_4 ),
        .I4(\iv[14]_i_12_n_0 ),
        .O(\iv[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4F405F5F4F405050)) 
    \iv[0]_i_15 
       (.I0(\iv[0]_i_17_n_0 ),
        .I1(\iv[11]_i_8_0 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\iv[0]_i_8_0 ),
        .I4(\bdatw[12]_INST_0_i_2_2 ),
        .I5(\iv[0]_i_8_1 ),
        .O(\iv[0]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h99C000C0)) 
    \iv[0]_i_17 
       (.I0(\sp_reg[4] ),
        .I1(\sp_reg[1] ),
        .I2(abus_0[5]),
        .I3(\sp_reg[0] ),
        .I4(abus_0[4]),
        .O(\iv[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h8A88AAAA8A888A88)) 
    \iv[0]_i_2 
       (.I0(\iv[14]_i_3_n_0 ),
        .I1(\iv[0]_i_5_n_0 ),
        .I2(\iv[0]_i_6_n_0 ),
        .I3(\iv[0]_i_7_n_0 ),
        .I4(\iv[0]_i_8_n_0 ),
        .I5(\sp_reg[4] ),
        .O(\iv[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFABFFFFFFAB0000)) 
    \iv[0]_i_4 
       (.I0(\iv[0]_i_9_n_0 ),
        .I1(\iv[6]_i_10_n_0 ),
        .I2(\iv[0]_i_10_n_0 ),
        .I3(\iv[0]_i_11_n_0 ),
        .I4(\iv[14]_i_22_n_0 ),
        .I5(\iv[0]_i_12_n_0 ),
        .O(\iv[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h11110010)) 
    \iv[0]_i_5 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(\sp_reg[4] ),
        .I2(\badr[15]_INST_0_i_2 [6]),
        .I3(\stat_reg[2]_5 ),
        .I4(\iv[14]_i_24_n_0 ),
        .O(\iv[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4540FFFF)) 
    \iv[0]_i_6 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(\iv[8]_i_2_0 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\iv[8]_i_2_1 ),
        .I4(\iv[14]_i_25_n_0 ),
        .I5(\sp_reg[4] ),
        .O(\iv[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3B7F)) 
    \iv[0]_i_7 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(\iv[0]_i_2_1 ),
        .I3(\iv[0]_i_2_2 ),
        .O(\iv[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFCCC74777444)) 
    \iv[0]_i_8 
       (.I0(abus_0[0]),
        .I1(\stat_reg[2]_5 ),
        .I2(\iv[0]_i_15_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_0 ),
        .I4(\iv[0]_i_2_0 ),
        .I5(\iv[14]_i_25_n_0 ),
        .O(\iv[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \iv[0]_i_9 
       (.I0(abus_0[0]),
        .I1(\sp_reg[0] ),
        .I2(\iv[14]_i_11_n_0 ),
        .I3(\iv[12]_i_19_n_0 ),
        .O(\iv[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[10]_i_1 
       (.I0(\iv[10]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\tr_reg[11]_0 [2]),
        .I3(\tr_reg[10]_0 ),
        .I4(\iv[10]_i_4_n_0 ),
        .O(cbus[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[10]_i_10 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(\iv[10]_i_24_n_0 ),
        .O(\iv[10]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \iv[10]_i_11 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(\stat_reg[2]_3 ),
        .I2(abus_0[10]),
        .O(\iv[10]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h80802888)) 
    \iv[10]_i_13 
       (.I0(\iv[14]_i_12_n_0 ),
        .I1(\stat_reg[2]_4 ),
        .I2(abus_0[10]),
        .I3(\stat_reg[2]_3 ),
        .I4(\bdatw[10]_INST_0_i_1_n_0 ),
        .O(\iv[10]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[10]_i_15 
       (.I0(\bdatw[12]_INST_0_i_2_2 ),
        .I1(\iv[4]_i_6_0 ),
        .O(\iv[10]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h01000101)) 
    \iv[10]_i_17 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(\sp_reg[4] ),
        .I2(\iv[14]_i_24_n_0 ),
        .I3(\stat_reg[2]_5 ),
        .I4(abus_0[9]),
        .O(\iv[10]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[10]_i_18 
       (.I0(\stat_reg[2]_3 ),
        .I1(\sp_reg[4] ),
        .O(\iv[10]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[10]_i_19 
       (.I0(\sp_reg[4] ),
        .I1(\bdatw[12]_INST_0_i_2_0 ),
        .O(\iv[10]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA8AAAAAAAA)) 
    \iv[10]_i_2 
       (.I0(\iv[14]_i_3_n_0 ),
        .I1(\iv[10]_i_5_n_0 ),
        .I2(\iv[10]_i_6_n_0 ),
        .I3(\iv[10]_i_7_n_0 ),
        .I4(\iv[10]_i_8_n_0 ),
        .I5(\iv[10]_i_9_n_0 ),
        .O(\iv[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \iv[10]_i_23 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\stat_reg[2]_5 ),
        .I2(\iv[10]_i_9_0 ),
        .O(\iv[10]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[10]_i_24 
       (.I0(abus_0[10]),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_3 ),
        .O(\iv[10]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h99C000C0)) 
    \iv[10]_i_26 
       (.I0(\sp_reg[4] ),
        .I1(\sp_reg[1] ),
        .I2(abus_0[15]),
        .I3(\sp_reg[0] ),
        .I4(abus_0[14]),
        .O(\badr[14]_INST_0_i_1 ));
  LUT5 #(
    .INIT(32'h99C000C0)) 
    \iv[10]_i_30 
       (.I0(\sp_reg[4] ),
        .I1(\sp_reg[1] ),
        .I2(abus_0[10]),
        .I3(\sp_reg[0] ),
        .I4(abus_0[9]),
        .O(\badr[9]_INST_0_i_1 ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFE0000)) 
    \iv[10]_i_4 
       (.I0(\iv[10]_i_10_n_0 ),
        .I1(\iv[10]_i_11_n_0 ),
        .I2(\iv[14]_i_20_n_0 ),
        .I3(\tr_reg[10]_1 ),
        .I4(\iv[14]_i_22_n_0 ),
        .I5(\iv[10]_i_13_n_0 ),
        .O(\iv[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \iv[10]_i_5 
       (.I0(\iv[14]_i_15_n_0 ),
        .I1(\iv[14]_i_2_0 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\iv[1]_i_2_1 ),
        .O(\iv[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hCDEFCCCC)) 
    \iv[10]_i_6 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\sr[7]_i_17_0 ),
        .I2(\iv[10]_i_2_3 ),
        .I3(\iv[14]_i_2_1 ),
        .I4(\iv[14]_i_32_n_0 ),
        .O(\iv[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2030203000102030)) 
    \iv[10]_i_7 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\bdatw[12]_INST_0_i_2_0 ),
        .I2(\stat_reg[2]_4 ),
        .I3(\iv[10]_i_2_3 ),
        .I4(\iv[10]_i_15_n_0 ),
        .I5(\iv[10]_i_2_4 ),
        .O(\iv[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEEEAEEEAEEEA)) 
    \iv[10]_i_8 
       (.I0(\iv[10]_i_17_n_0 ),
        .I1(\iv[10]_i_18_n_0 ),
        .I2(\iv[10]_i_19_n_0 ),
        .I3(\iv[10]_i_2_0 ),
        .I4(\iv[2]_i_11_n_0 ),
        .I5(\iv[10]_i_2_1 ),
        .O(\iv[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h47444747FFFFFFFF)) 
    \iv[10]_i_9 
       (.I0(\iv[10]_i_2_2 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(\iv[10]_i_23_n_0 ),
        .I3(\stat_reg[2]_5 ),
        .I4(\iv[10]_i_2_1 ),
        .I5(\sp_reg[4] ),
        .O(\iv[10]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[11]_i_1 
       (.I0(\iv[11]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\tr_reg[11]_0 [3]),
        .I3(\tr_reg[11]_1 ),
        .I4(\iv[11]_i_4_n_0 ),
        .O(cbus[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[11]_i_11 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(\iv[3]_i_9_n_0 ),
        .O(\iv[11]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h882A0080)) 
    \iv[11]_i_12 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(abus_0[11]),
        .I2(\stat_reg[2]_3 ),
        .I3(\bdatw[11]_INST_0_i_1_n_0 ),
        .I4(\stat_reg[2]_4 ),
        .O(\iv[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5554445455555555)) 
    \iv[11]_i_13 
       (.I0(\iv[12]_i_12_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_1 ),
        .I2(\iv[11]_i_6_1 ),
        .I3(\bdatw[12]_INST_0_i_2_2 ),
        .I4(\iv[11]_i_6_0 ),
        .I5(\iv[11]_i_24_n_0 ),
        .O(\iv[11]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \iv[11]_i_14 
       (.I0(\sr[7]_i_17_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_1 ),
        .I2(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF200F2000000F200)) 
    \iv[11]_i_2 
       (.I0(\iv[11]_i_5_n_0 ),
        .I1(\iv[11]_i_6_n_0 ),
        .I2(\sp_reg[4] ),
        .I3(\iv[14]_i_3_n_0 ),
        .I4(\iv[11]_i_7_n_0 ),
        .I5(\iv[11]_i_8_n_0 ),
        .O(\iv[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFB8FFFF)) 
    \iv[11]_i_21 
       (.I0(\iv[9]_i_7_0 ),
        .I1(\bdatw[12]_INST_0_i_2_2 ),
        .I2(\iv[11]_i_8_0 ),
        .I3(\bdatw[12]_INST_0_i_2_1 ),
        .I4(\stat_reg[2]_5 ),
        .O(\iv[11]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \iv[11]_i_22 
       (.I0(Q[2]),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .I2(\iv[14]_i_12_n_0 ),
        .O(\iv[11]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h88A8888822022222)) 
    \iv[11]_i_24 
       (.I0(\stat_reg[2]_4 ),
        .I1(\sp_reg[4] ),
        .I2(\sp_reg[1] ),
        .I3(\sp_reg[0] ),
        .I4(\bdatw[10]_INST_0_i_2_n_0 ),
        .I5(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\iv[11]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[11]_i_25 
       (.I0(\sp_reg[1] ),
        .I1(\sp_reg[0] ),
        .O(\bdatw[8]_INST_0_i_2_1 ));
  LUT5 #(
    .INIT(32'h99C000C0)) 
    \iv[11]_i_26 
       (.I0(\sp_reg[4] ),
        .I1(\sp_reg[1] ),
        .I2(abus_0[11]),
        .I3(\sp_reg[0] ),
        .I4(abus_0[10]),
        .O(\badr[10]_INST_0_i_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEA0000)) 
    \iv[11]_i_4 
       (.I0(\iv[11]_i_9_n_0 ),
        .I1(\iv[14]_i_20_n_0 ),
        .I2(\tr_reg[11]_2 ),
        .I3(\iv[11]_i_11_n_0 ),
        .I4(\iv[14]_i_22_n_0 ),
        .I5(\iv[11]_i_12_n_0 ),
        .O(\iv[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h5D)) 
    \iv[11]_i_5 
       (.I0(\iv[14]_i_25_0 ),
        .I1(abus_0[10]),
        .I2(\stat_reg[2]_5 ),
        .O(\iv[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2022202200002022)) 
    \iv[11]_i_6 
       (.I0(\iv[11]_i_13_n_0 ),
        .I1(\iv[11]_i_14_n_0 ),
        .I2(\iv[11]_i_2_1 ),
        .I3(\iv[14]_i_32_n_0 ),
        .I4(\iv[14]_i_15_n_0 ),
        .I5(\iv[11]_i_2_2 ),
        .O(\iv[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFDFCFC)) 
    \iv[11]_i_7 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(\stat_reg[2]_5 ),
        .I3(\iv[11]_i_2_5 ),
        .I4(\iv[11]_i_2_0 ),
        .O(\iv[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0F003737FFF03737)) 
    \iv[11]_i_8 
       (.I0(\iv[11]_i_2_3 ),
        .I1(\stat_reg[2]_3 ),
        .I2(\bdatw[12]_INST_0_i_2_0 ),
        .I3(\iv[11]_i_2_4 ),
        .I4(\sp_reg[4] ),
        .I5(\iv[11]_i_21_n_0 ),
        .O(\iv[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \iv[11]_i_9 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(\stat_reg[2]_3 ),
        .I2(abus_0[11]),
        .O(\iv[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF75)) 
    \iv[12]_i_1 
       (.I0(\iv[12]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\tr_reg[15]_0 [0]),
        .I3(\tr_reg[12]_0 ),
        .I4(\iv[12]_i_4_n_0 ),
        .O(cbus[12]));
  LUT5 #(
    .INIT(32'h82088808)) 
    \iv[12]_i_11 
       (.I0(\iv[14]_i_12_n_0 ),
        .I1(\stat_reg[2]_4 ),
        .I2(\bdatw[12]_INST_0_i_1_n_0 ),
        .I3(abus_0[12]),
        .I4(\stat_reg[2]_3 ),
        .O(\iv[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \iv[12]_i_12 
       (.I0(\stat_reg[2]_3 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(\sp_reg[0] ),
        .I3(\sp_reg[1] ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .I5(\sp_reg[4] ),
        .O(\iv[12]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4700)) 
    \iv[12]_i_13 
       (.I0(\iv[3]_i_2_1 ),
        .I1(\bdatw[12]_INST_0_i_2_1 ),
        .I2(\iv[8]_i_2_2 ),
        .I3(\iv[14]_i_15_n_0 ),
        .I4(\iv[11]_i_14_n_0 ),
        .O(\iv[12]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFD5D)) 
    \iv[12]_i_14 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[12]_i_6_1 ),
        .I2(\bdatw[12]_INST_0_i_2_2 ),
        .I3(\iv[12]_i_6_0 ),
        .O(\iv[12]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[12]_i_15 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[8]_i_2_0 ),
        .O(\iv[12]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \iv[12]_i_16 
       (.I0(\bdatw[12]_INST_0_i_2_0 ),
        .I1(\iv[8]_i_2_0 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .O(\iv[12]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hCAC0CFC5)) 
    \iv[12]_i_18 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[4]_i_16_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_0 ),
        .I3(\iv[12]_i_7_0 ),
        .I4(\sr[6]_i_3_0 ),
        .O(\iv[12]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \iv[12]_i_19 
       (.I0(\stat_reg[2]_4 ),
        .I1(\stat_reg[2]_3 ),
        .I2(\iv[14]_i_12_n_0 ),
        .O(\iv[12]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0DFF)) 
    \iv[12]_i_2 
       (.I0(\iv[12]_i_5_n_0 ),
        .I1(\iv[12]_i_6_n_0 ),
        .I2(\sp_reg[4] ),
        .I3(\iv[14]_i_3_n_0 ),
        .I4(\iv[12]_i_7_n_0 ),
        .O(\iv[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFE0000)) 
    \iv[12]_i_4 
       (.I0(\iv[12]_i_8_n_0 ),
        .I1(\iv[12]_i_9_n_0 ),
        .I2(\iv[14]_i_20_n_0 ),
        .I3(\tr_reg[12]_1 ),
        .I4(\iv[14]_i_22_n_0 ),
        .I5(\iv[12]_i_11_n_0 ),
        .O(\iv[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h5D)) 
    \iv[12]_i_5 
       (.I0(\iv[14]_i_25_0 ),
        .I1(abus_0[11]),
        .I2(\stat_reg[2]_5 ),
        .O(\iv[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111111010101010)) 
    \iv[12]_i_6 
       (.I0(\iv[12]_i_12_n_0 ),
        .I1(\iv[12]_i_13_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_0 ),
        .I3(\stat_reg[2]_4 ),
        .I4(\iv[12]_i_14_n_0 ),
        .I5(\iv[12]_i_15_n_0 ),
        .O(\iv[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h202C2020E0ECECEC)) 
    \iv[12]_i_7 
       (.I0(\iv[12]_i_16_n_0 ),
        .I1(\sp_reg[4] ),
        .I2(\stat_reg[2]_3 ),
        .I3(\iv[12]_i_2_0 ),
        .I4(\iv[14]_i_15_n_0 ),
        .I5(\iv[12]_i_18_n_0 ),
        .O(\iv[12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h08C8)) 
    \iv[12]_i_8 
       (.I0(abus_0[12]),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(\iv[12]_i_19_n_0 ),
        .I3(\sp_reg[4] ),
        .O(\iv[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \iv[12]_i_9 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(\stat_reg[2]_3 ),
        .I2(abus_0[12]),
        .O(\iv[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[13]_i_1 
       (.I0(\iv[13]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\tr_reg[15]_0 [1]),
        .I3(\tr_reg[13]_0 ),
        .I4(\iv[13]_i_5_n_0 ),
        .O(cbus[13]));
  LUT4 #(
    .INIT(16'h08C8)) 
    \iv[13]_i_10 
       (.I0(abus_0[13]),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(\stat_reg[2]_3 ),
        .I3(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(\iv[13]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \iv[13]_i_11 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(\stat_reg[2]_3 ),
        .I2(abus_0[13]),
        .O(\iv[13]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h80802888)) 
    \iv[13]_i_13 
       (.I0(\iv[14]_i_12_n_0 ),
        .I1(\stat_reg[2]_4 ),
        .I2(abus_0[13]),
        .I3(\stat_reg[2]_3 ),
        .I4(\bdatw[13]_INST_0_i_1_n_0 ),
        .O(\iv[13]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0BFB0A0A0BFBFAFA)) 
    \iv[13]_i_14 
       (.I0(\iv[13]_i_21_n_0 ),
        .I1(\iv[13]_i_6_0 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\iv[9]_i_7_0 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\iv[3]_i_8_0 ),
        .O(\iv[13]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hE000E0E0E000E000)) 
    \iv[13]_i_2 
       (.I0(\iv[13]_i_6_n_0 ),
        .I1(\tr_reg[13]_1 ),
        .I2(\iv[14]_i_3_n_0 ),
        .I3(\sp_reg[4] ),
        .I4(\iv[13]_i_8_n_0 ),
        .I5(\iv[13]_i_9_n_0 ),
        .O(\iv[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB01)) 
    \iv[13]_i_20 
       (.I0(\bdatw[12]_INST_0_i_2_2 ),
        .I1(\iv[11]_i_6_0 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(abus_0[15]),
        .O(\iv[13]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h66300030)) 
    \iv[13]_i_21 
       (.I0(\sp_reg[4] ),
        .I1(\sp_reg[1] ),
        .I2(abus_0[3]),
        .I3(\sp_reg[0] ),
        .I4(abus_0[2]),
        .O(\iv[13]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h70)) 
    \iv[13]_i_3 
       (.I0(tout__1_carry_i_11_n_0),
        .I1(\stat_reg[2]_3 ),
        .I2(tout__1_carry_i_8_n_0),
        .O(\iv[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFE0000)) 
    \iv[13]_i_5 
       (.I0(\iv[13]_i_10_n_0 ),
        .I1(\iv[13]_i_11_n_0 ),
        .I2(\iv[14]_i_20_n_0 ),
        .I3(\tr_reg[13]_2 ),
        .I4(\iv[14]_i_22_n_0 ),
        .I5(\iv[13]_i_13_n_0 ),
        .O(\iv[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000F0330000AA33)) 
    \iv[13]_i_6 
       (.I0(\iv[13]_i_14_n_0 ),
        .I1(\iv[13]_i_2_0 ),
        .I2(\iv[13]_i_2_1 ),
        .I3(\bdatw[12]_INST_0_i_2_0 ),
        .I4(\stat_reg[2]_3 ),
        .I5(\stat_reg[2]_4 ),
        .O(\iv[13]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \iv[13]_i_8 
       (.I0(\iv[14]_i_25_0 ),
        .I1(\stat_reg[2]_5 ),
        .I2(abus_0[12]),
        .O(\iv[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0FA300A3)) 
    \iv[13]_i_9 
       (.I0(\iv[13]_i_2_2 ),
        .I1(\iv[5]_i_2_0 ),
        .I2(\bdatw[12]_INST_0_i_2_0 ),
        .I3(\stat_reg[2]_4 ),
        .I4(\iv[13]_i_20_n_0 ),
        .I5(\sr[7]_i_17_0 ),
        .O(\iv[13]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF40)) 
    \iv[14]_i_1 
       (.I0(\iv[14]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\iv[14]_i_4_n_0 ),
        .I3(\iv[14]_i_5_n_0 ),
        .I4(\iv[14]_i_6_n_0 ),
        .O(cbus[14]));
  LUT5 #(
    .INIT(32'hCDEFCCCC)) 
    \iv[14]_i_10 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\sr[7]_i_17_0 ),
        .I2(\iv[14]_i_2_1 ),
        .I3(\iv[14]_i_2_0 ),
        .I4(\iv[14]_i_32_n_0 ),
        .O(\iv[14]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[14]_i_11 
       (.I0(\iv[14]_i_12_n_0 ),
        .I1(\stat_reg[2]_4 ),
        .O(\iv[14]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \iv[14]_i_12 
       (.I0(ccmd_2_sn_1),
        .I1(\ccmd[2]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_6 ),
        .O(\iv[14]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \iv[14]_i_13 
       (.I0(\iv[14]_i_33_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(\stat_reg[2]_3 ),
        .O(\iv[14]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_15 
       (.I0(\stat_reg[2]_4 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[14]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h000000D8)) 
    \iv[14]_i_16 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[14]_i_4_0 ),
        .I2(\iv[14]_i_4_1 ),
        .I3(\bdatw[11]_INST_0_i_2_0 ),
        .I4(\stat_reg[2]_5 ),
        .O(\iv[14]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h08C8)) 
    \iv[14]_i_18 
       (.I0(abus_0[14]),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(\stat_reg[2]_3 ),
        .I3(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \iv[14]_i_19 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(\stat_reg[2]_3 ),
        .I2(abus_0[14]),
        .O(\iv[14]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h4044404440445555)) 
    \iv[14]_i_2 
       (.I0(\sp_reg[4] ),
        .I1(\iv[14]_i_25_0 ),
        .I2(\stat_reg[2]_5 ),
        .I3(abus_0[13]),
        .I4(\iv[14]_i_9_n_0 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\iv[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \iv[14]_i_20 
       (.I0(\iv[6]_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_3 ),
        .O(\iv[14]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \iv[14]_i_22 
       (.I0(Q[2]),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .I2(\stat_reg[2]_6 ),
        .O(\iv[14]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hC0700080)) 
    \iv[14]_i_23 
       (.I0(\stat_reg[2]_3 ),
        .I1(abus_0[14]),
        .I2(\iv[14]_i_12_n_0 ),
        .I3(\bdatw[14]_INST_0_i_1_n_0 ),
        .I4(\stat_reg[2]_4 ),
        .O(\iv[14]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \iv[14]_i_24 
       (.I0(tout__1_carry_i_13_n_0),
        .I1(abus_0[15]),
        .I2(\stat_reg[2]_4 ),
        .O(\iv[14]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \iv[14]_i_25 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\sp_reg[0] ),
        .I2(\sp_reg[1] ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h0EFE00FE)) 
    \iv[14]_i_26 
       (.I0(\bdatw[12]_INST_0_i_2_2 ),
        .I1(\iv[4]_i_6_0 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(abus_0[15]),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[14]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \iv[14]_i_29 
       (.I0(\iv[12]_i_12_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(\sr[7]_i_17_n_0 ),
        .O(\sr[7]_i_17_0 ));
  LUT5 #(
    .INIT(32'h0F0F0100)) 
    \iv[14]_i_3 
       (.I0(Q[2]),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .I2(\iv[14]_i_11_n_0 ),
        .I3(\iv[14]_i_12_n_0 ),
        .I4(\sr[5]_i_3_n_0 ),
        .O(\iv[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_32 
       (.I0(\stat_reg[2]_4 ),
        .I1(\bdatw[12]_INST_0_i_2_0 ),
        .O(\iv[14]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \iv[14]_i_33 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[4]_i_6_0 ),
        .I2(\bdatw[12]_INST_0_i_2_2 ),
        .O(\iv[14]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_38 
       (.I0(\iv[14]_i_12_n_0 ),
        .I1(\stat_reg[2]_4 ),
        .O(\iv[14]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE2E222F2)) 
    \iv[14]_i_4 
       (.I0(\iv[14]_i_13_n_0 ),
        .I1(\sp_reg[4] ),
        .I2(\tr_reg[14]_0 ),
        .I3(\iv[14]_i_15_n_0 ),
        .I4(\stat_reg[2]_3 ),
        .I5(\iv[14]_i_16_n_0 ),
        .O(\iv[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \iv[14]_i_5 
       (.I0(\iv[13]_i_3_n_0 ),
        .I1(\tr_reg[15]_0 [2]),
        .I2(bdatr[0]),
        .I3(\tr_reg[14]_2 ),
        .I4(cbus_i[1]),
        .I5(\stat_reg[2]_6 ),
        .O(\iv[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFE0000)) 
    \iv[14]_i_6 
       (.I0(\iv[14]_i_18_n_0 ),
        .I1(\iv[14]_i_19_n_0 ),
        .I2(\iv[14]_i_20_n_0 ),
        .I3(\tr_reg[14]_1 ),
        .I4(\iv[14]_i_22_n_0 ),
        .I5(\iv[14]_i_23_n_0 ),
        .O(\iv[14]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \iv[14]_i_7 
       (.I0(\iv[14]_i_24_n_0 ),
        .I1(\sp_reg[4] ),
        .I2(\iv[14]_i_25_n_0 ),
        .O(\iv[14]_i_25_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[14]_i_8 
       (.I0(\stat_reg[2]_3 ),
        .I1(\stat_reg[2]_4 ),
        .O(\stat_reg[2]_5 ));
  LUT6 #(
    .INIT(64'h0000303F55550000)) 
    \iv[14]_i_9 
       (.I0(\iv[14]_i_26_n_0 ),
        .I1(\iv[1]_i_2_0 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\iv[1]_i_2_1 ),
        .I4(\stat_reg[2]_4 ),
        .I5(\bdatw[12]_INST_0_i_2_0 ),
        .O(\iv[14]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \iv[15]_i_1 
       (.I0(ctl_selc),
        .I1(\iv[15]_i_4_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_2 ),
        .O(\stat_reg[1]_3 [0]));
  LUT6 #(
    .INIT(64'hCECECCCCCECFCFCF)) 
    \iv[15]_i_10 
       (.I0(\iv[15]_i_26_n_0 ),
        .I1(\iv[15]_i_27_n_0 ),
        .I2(Q[1]),
        .I3(ir[13]),
        .I4(ir[14]),
        .I5(\iv[15]_i_28_n_0 ),
        .O(\iv[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[15]_i_100 
       (.I0(ir[3]),
        .I1(ir[7]),
        .I2(ir[0]),
        .O(\iv[15]_i_100_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \iv[15]_i_101 
       (.I0(ir[10]),
        .I1(crdy),
        .O(\iv[15]_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAA0AAAAAA)) 
    \iv[15]_i_102 
       (.I0(\badr[15]_INST_0_i_119_n_0 ),
        .I1(ir[6]),
        .I2(ir[7]),
        .I3(ir[3]),
        .I4(\iv[15]_i_120_n_0 ),
        .I5(ir[8]),
        .O(\iv[15]_i_102_n_0 ));
  LUT6 #(
    .INIT(64'h05FF0FFF15FFFFFF)) 
    \iv[15]_i_103 
       (.I0(\iv[15]_i_121_n_0 ),
        .I1(\iv[15]_i_122_n_0 ),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[0]),
        .I5(\badr[15]_INST_0_i_124_n_0 ),
        .O(\iv[15]_i_103_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F0F0FFF4F0F0F)) 
    \iv[15]_i_104 
       (.I0(\iv[15]_i_71_n_0 ),
        .I1(\iv[15]_i_123_n_0 ),
        .I2(ir[11]),
        .I3(\iv[15]_i_35_n_0 ),
        .I4(ir[3]),
        .I5(ir[10]),
        .O(\iv[15]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBFBBAAAAAAAA)) 
    \iv[15]_i_105 
       (.I0(ir[11]),
        .I1(\iv[15]_i_124_n_0 ),
        .I2(\ccmd[2]_INST_0_i_14_n_0 ),
        .I3(ir[2]),
        .I4(ir[7]),
        .I5(\iv[15]_i_73_n_0 ),
        .O(\iv[15]_i_105_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8FFFFA8AAFCFF)) 
    \iv[15]_i_106 
       (.I0(\stat[0]_i_21_n_0 ),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(ir[2]),
        .I4(ir[5]),
        .I5(ir[7]),
        .O(\iv[15]_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \iv[15]_i_107 
       (.I0(ir[8]),
        .I1(ir[2]),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(ctl_fetch_inferred_i_16_n_0),
        .I4(brdy),
        .I5(ctl_fetch_inferred_i_15_n_0),
        .O(\iv[15]_i_107_n_0 ));
  LUT6 #(
    .INIT(64'hA000880000008800)) 
    \iv[15]_i_108 
       (.I0(ir[8]),
        .I1(ir[2]),
        .I2(ir[5]),
        .I3(\bcmd[0]_INST_0_i_7_n_0 ),
        .I4(ir[7]),
        .I5(crdy),
        .O(\iv[15]_i_108_n_0 ));
  LUT5 #(
    .INIT(32'hFDCCFFCF)) 
    \iv[15]_i_109 
       (.I0(crdy),
        .I1(ir[9]),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[5]),
        .O(\iv[15]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800000000)) 
    \iv[15]_i_11 
       (.I0(ctl_fetch_ext_fl_i_2_n_0),
        .I1(ir[2]),
        .I2(ir[4]),
        .I3(crdy),
        .I4(ctl_fetch_ext_fl_reg_0),
        .I5(\ccmd[2]_INST_0_i_26_n_0 ),
        .O(\iv[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h44444444FFFF4C44)) 
    \iv[15]_i_110 
       (.I0(\iv[15]_i_125_n_0 ),
        .I1(ir[5]),
        .I2(\ccmd[1]_INST_0_i_17_n_0 ),
        .I3(\iv[15]_i_73_n_0 ),
        .I4(\iv[15]_i_126_n_0 ),
        .I5(ir[11]),
        .O(\iv[15]_i_110_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_111 
       (.I0(ir[5]),
        .I1(ir[6]),
        .O(\iv[15]_i_111_n_0 ));
  LUT6 #(
    .INIT(64'hFF5F30FFFF7FFFFF)) 
    \iv[15]_i_112 
       (.I0(ir[6]),
        .I1(crdy),
        .I2(ir[7]),
        .I3(Q[0]),
        .I4(ir[8]),
        .I5(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\iv[15]_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h2A00FF00FFFFFF00)) 
    \iv[15]_i_113 
       (.I0(\bcmd[1]_INST_0_i_7_n_0 ),
        .I1(brdy),
        .I2(ctl_fetch_inferred_i_15_n_0),
        .I3(ir[7]),
        .I4(Q[0]),
        .I5(ir[3]),
        .O(\iv[15]_i_113_n_0 ));
  LUT4 #(
    .INIT(16'hFF7E)) 
    \iv[15]_i_114 
       (.I0(ir[4]),
        .I1(ir[6]),
        .I2(ir[5]),
        .I3(ir[3]),
        .O(\iv[15]_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EE0EE00E)) 
    \iv[15]_i_116 
       (.I0(\iv[15]_i_127_n_0 ),
        .I1(\iv[15]_i_128_n_0 ),
        .I2(ir[11]),
        .I3(ir[12]),
        .I4(\badr[15]_INST_0_i_2 [4]),
        .I5(ir[14]),
        .O(\iv[15]_i_116_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEADFFFFFFFFF)) 
    \iv[15]_i_117 
       (.I0(ir[3]),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(ir[1]),
        .I4(\iv[15]_i_129_n_0 ),
        .I5(Q[0]),
        .O(\iv[15]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h3FFAFFFAFFFFFFFF)) 
    \iv[15]_i_118 
       (.I0(ir[4]),
        .I1(brdy),
        .I2(ir[6]),
        .I3(ir[5]),
        .I4(ir[0]),
        .I5(ir[3]),
        .O(\iv[15]_i_118_n_0 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \iv[15]_i_119 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[0]),
        .I3(ir[7]),
        .I4(ir[3]),
        .O(\iv[15]_i_119_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \iv[15]_i_12 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[15]),
        .O(\iv[15]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \iv[15]_i_120 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(crdy),
        .O(\iv[15]_i_120_n_0 ));
  LUT5 #(
    .INIT(32'h10000001)) 
    \iv[15]_i_121 
       (.I0(ir[7]),
        .I1(ir[3]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(ir[4]),
        .O(\iv[15]_i_121_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_122 
       (.I0(ir[6]),
        .I1(ir[5]),
        .O(\iv[15]_i_122_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \iv[15]_i_123 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[7]),
        .O(\iv[15]_i_123_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \iv[15]_i_124 
       (.I0(brdy),
        .I1(ir[6]),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(ir[5]),
        .O(\iv[15]_i_124_n_0 ));
  LUT5 #(
    .INIT(32'hFFBBFBBB)) 
    \iv[15]_i_125 
       (.I0(ir[10]),
        .I1(ir[11]),
        .I2(ir[7]),
        .I3(ir[9]),
        .I4(ir[8]),
        .O(\iv[15]_i_125_n_0 ));
  LUT6 #(
    .INIT(64'h8000008000000080)) 
    \iv[15]_i_126 
       (.I0(crdy),
        .I1(\bcmd[0]_INST_0_i_7_n_0 ),
        .I2(ir[5]),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\iv[15]_i_126_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFBFFFFFFFFFF)) 
    \iv[15]_i_127 
       (.I0(ir[9]),
        .I1(crdy),
        .I2(ir[0]),
        .I3(ir[1]),
        .I4(ir[3]),
        .I5(ir[2]),
        .O(\iv[15]_i_127_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \iv[15]_i_128 
       (.I0(ir[10]),
        .I1(ir[8]),
        .I2(ir[12]),
        .I3(ir[6]),
        .I4(ir[7]),
        .I5(tout__1_carry_i_17_n_0),
        .O(\iv[15]_i_128_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[15]_i_129 
       (.I0(ir[14]),
        .I1(ir[12]),
        .O(\iv[15]_i_129_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88888F88)) 
    \iv[15]_i_13 
       (.I0(\iv[15]_i_4_0 ),
        .I1(\iv[15]_i_30_n_0 ),
        .I2(ir[11]),
        .I3(\iv[15]_i_31_n_0 ),
        .I4(\iv[15]_i_32_n_0 ),
        .I5(\iv[15]_i_33_n_0 ),
        .O(\iv[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBA8AFFFFFFFF)) 
    \iv[15]_i_14 
       (.I0(\iv[15]_i_34_n_0 ),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(\iv[15]_i_35_n_0 ),
        .I3(\iv[15]_i_36_n_0 ),
        .I4(Q[1]),
        .I5(ir[11]),
        .O(\iv[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF800F800F800)) 
    \iv[15]_i_15 
       (.I0(\iv[15]_i_37_n_0 ),
        .I1(\iv[15]_i_38_n_0 ),
        .I2(\iv[15]_i_39_n_0 ),
        .I3(\badr[15]_INST_0_i_81_0 ),
        .I4(\iv[15]_i_41_n_0 ),
        .I5(\iv[15]_i_5_0 ),
        .O(\iv[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFEA)) 
    \iv[15]_i_16 
       (.I0(ir[11]),
        .I1(ir[4]),
        .I2(\iv[15]_i_30_n_0 ),
        .I3(\iv[15]_i_43_n_0 ),
        .I4(\iv[15]_i_44_n_0 ),
        .I5(\iv[15]_i_45_n_0 ),
        .O(\iv[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAAFF3FFFAA003F00)) 
    \iv[15]_i_17 
       (.I0(\iv[15]_i_46_n_0 ),
        .I1(ir[4]),
        .I2(\iv[15]_i_35_n_0 ),
        .I3(ir[11]),
        .I4(ir[10]),
        .I5(\iv[15]_i_47_n_0 ),
        .O(\iv[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFEEEEEEEEEEE)) 
    \iv[15]_i_19 
       (.I0(\iv[15]_i_51_n_0 ),
        .I1(\iv[15]_i_52_n_0 ),
        .I2(\iv[15]_i_41_n_0 ),
        .I3(ir[10]),
        .I4(Q[1]),
        .I5(\stat[0]_i_2_0 ),
        .O(\stat_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFAAEAAAEAAAEA)) 
    \iv[15]_i_2 
       (.I0(alu_sr_flag),
        .I1(bdatr[1]),
        .I2(read_cyc[2]),
        .I3(read_cyc[1]),
        .I4(cbus_i[2]),
        .I5(\stat_reg[2]_6 ),
        .O(cbus[15]));
  LUT6 #(
    .INIT(64'hFFFF1055FFFFFFFF)) 
    \iv[15]_i_20 
       (.I0(\iv[15]_i_53_n_0 ),
        .I1(\iv[15]_i_54_n_0 ),
        .I2(\iv[15]_i_55_n_0 ),
        .I3(ir[11]),
        .I4(ir[15]),
        .I5(ir[14]),
        .O(\iv[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55450000)) 
    \iv[15]_i_21 
       (.I0(ir[13]),
        .I1(ir[2]),
        .I2(Q[0]),
        .I3(brdy),
        .I4(\iv[15]_i_56_n_0 ),
        .I5(\iv[15]_i_57_n_0 ),
        .O(\iv[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h000DDDDDDDDDDDDD)) 
    \iv[15]_i_22 
       (.I0(\iv[15]_i_58_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\ccmd[3]_INST_0_i_5_n_0 ),
        .I3(\iv[15]_i_30_n_0 ),
        .I4(ir[14]),
        .I5(ir[12]),
        .O(\iv[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF777F)) 
    \iv[15]_i_23 
       (.I0(ir[10]),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(brdy),
        .I4(ir[9]),
        .I5(ir[15]),
        .O(\iv[15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h1101000000000000)) 
    \iv[15]_i_24 
       (.I0(\bcmd[0]_INST_0_i_8_n_0 ),
        .I1(Q[0]),
        .I2(ir[6]),
        .I3(ir[8]),
        .I4(ir[12]),
        .I5(ir[11]),
        .O(\iv[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h2F28FF282F282F28)) 
    \iv[15]_i_25 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(Q[0]),
        .I5(brdy),
        .O(\iv[15]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h10110000)) 
    \iv[15]_i_26 
       (.I0(Q[0]),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(ir[11]),
        .I4(ir[15]),
        .O(\iv[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020202)) 
    \iv[15]_i_27 
       (.I0(ir[15]),
        .I1(ir[14]),
        .I2(Q[0]),
        .I3(ir[13]),
        .I4(ir[11]),
        .I5(Q[1]),
        .O(\iv[15]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \iv[15]_i_28 
       (.I0(ir[11]),
        .I1(ir[12]),
        .I2(Q[0]),
        .I3(ir[15]),
        .O(\iv[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000500C5)) 
    \iv[15]_i_3 
       (.I0(\iv[15]_i_7_n_0 ),
        .I1(\iv[15]_i_8_n_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\iv[15]_i_9_n_0 ),
        .I5(\ccmd[2]_INST_0_i_17_n_0 ),
        .O(ctl_selc));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_30 
       (.I0(crdy),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\iv[15]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_31 
       (.I0(ir[10]),
        .I1(Q[1]),
        .O(\iv[15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4FD00FD)) 
    \iv[15]_i_32 
       (.I0(crdy),
        .I1(ir[7]),
        .I2(\ccmd[2]_INST_0_i_14_n_0 ),
        .I3(Q[0]),
        .I4(\stat[0]_i_21_n_0 ),
        .I5(\iv[15]_i_59_n_0 ),
        .O(\iv[15]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hCB00000000000000)) 
    \iv[15]_i_33 
       (.I0(\iv[15]_i_60_n_0 ),
        .I1(ir[11]),
        .I2(ir[8]),
        .I3(\stat[0]_i_14_n_0 ),
        .I4(Q[1]),
        .I5(\stat[2]_i_14_n_0 ),
        .O(\iv[15]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FEEEEFFFFEEEE)) 
    \iv[15]_i_34 
       (.I0(\ccmd[2]_INST_0_i_20_n_0 ),
        .I1(\iv[15]_i_61_n_0 ),
        .I2(\iv[15]_i_62_n_0 ),
        .I3(\iv[15]_i_63_n_0 ),
        .I4(Q[0]),
        .I5(\iv[15]_i_64_n_0 ),
        .O(\iv[15]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h37)) 
    \iv[15]_i_35 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[7]),
        .O(\iv[15]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h5F55FFFFAA1BAA00)) 
    \iv[15]_i_36 
       (.I0(ir[10]),
        .I1(ir[6]),
        .I2(crdy),
        .I3(ir[7]),
        .I4(ir[8]),
        .I5(Q[0]),
        .O(\iv[15]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h0028)) 
    \iv[15]_i_37 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[0]),
        .O(\iv[15]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \iv[15]_i_38 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[11]),
        .I3(\ccmd[4]_INST_0_i_18_n_0 ),
        .I4(\bcmd[1]_INST_0_i_7_n_0 ),
        .I5(\ccmd[4]_INST_0_i_19_n_0 ),
        .O(\iv[15]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF800F8)) 
    \iv[15]_i_39 
       (.I0(ir[1]),
        .I1(\ccmd[3]_INST_0_i_5_n_0 ),
        .I2(\iv[15]_i_30_n_0 ),
        .I3(ir[11]),
        .I4(\iv[15]_i_65_n_0 ),
        .I5(\ccmd[2]_INST_0_i_7_n_0 ),
        .O(\iv[15]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h5455545454555455)) 
    \iv[15]_i_4 
       (.I0(Q[2]),
        .I1(\iv[15]_i_10_n_0 ),
        .I2(\iv[15]_i_11_n_0 ),
        .I3(\iv[15]_i_12_n_0 ),
        .I4(\iv[15]_i_13_n_0 ),
        .I5(\iv[15]_i_14_n_0 ),
        .O(\iv[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h22AA8AAA)) 
    \iv[15]_i_41 
       (.I0(ir[15]),
        .I1(ir[14]),
        .I2(ir[11]),
        .I3(ir[13]),
        .I4(ir[12]),
        .O(\iv[15]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFF0C0000FF550000)) 
    \iv[15]_i_43 
       (.I0(\iv[15]_i_66_n_0 ),
        .I1(\iv[15]_i_67_n_0 ),
        .I2(\ccmd[2]_INST_0_i_14_n_0 ),
        .I3(\iv[15]_i_68_n_0 ),
        .I4(ir[10]),
        .I5(crdy),
        .O(\iv[15]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00D0FFFFFFFF)) 
    \iv[15]_i_44 
       (.I0(ir[4]),
        .I1(\stat[0]_i_21_n_0 ),
        .I2(ir[11]),
        .I3(ir[10]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\iv[15]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDDDD0DD)) 
    \iv[15]_i_45 
       (.I0(\iv[15]_i_69_n_0 ),
        .I1(\ccmd[0]_INST_0_i_23_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(ir[1]),
        .I4(\iv[15]_i_70_n_0 ),
        .I5(\bcmd[1]_INST_0_i_11_n_0 ),
        .O(\iv[15]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDFDFDF00DFDF)) 
    \iv[15]_i_46 
       (.I0(ir[4]),
        .I1(\iv[15]_i_71_n_0 ),
        .I2(\bdatw[15]_INST_0_i_74_n_0 ),
        .I3(\iv[15]_i_61_n_0 ),
        .I4(ir[1]),
        .I5(\bcmd[2]_INST_0_i_3_n_0 ),
        .O(\iv[15]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0F00FFFF7FFFFFFF)) 
    \iv[15]_i_47 
       (.I0(\iv[15]_i_72_n_0 ),
        .I1(\iv[15]_i_73_n_0 ),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(ir[4]),
        .I5(\iv[15]_i_74_n_0 ),
        .O(\iv[15]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABAFFBA)) 
    \iv[15]_i_48 
       (.I0(Q[0]),
        .I1(\iv[15]_i_75_n_0 ),
        .I2(\badr[15]_INST_0_i_107_n_0 ),
        .I3(rst_n_fl_reg_0),
        .I4(\iv[15]_i_76_n_0 ),
        .I5(\iv[15]_i_77_n_0 ),
        .O(\stat_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h1010101010101011)) 
    \iv[15]_i_49 
       (.I0(\iv[15]_i_78_n_0 ),
        .I1(Q[2]),
        .I2(\iv[15]_i_79_n_0 ),
        .I3(\iv[15]_i_80_n_0 ),
        .I4(ir[11]),
        .I5(\iv[15]_i_81_n_0 ),
        .O(\stat_reg[2]_7 ));
  LUT6 #(
    .INIT(64'h4544454545444544)) 
    \iv[15]_i_5 
       (.I0(Q[2]),
        .I1(\iv[15]_i_15_n_0 ),
        .I2(\iv[15]_i_12_n_0 ),
        .I3(\iv[15]_i_16_n_0 ),
        .I4(\iv[15]_i_17_n_0 ),
        .I5(ctl_fetch_ext_fl_reg_0),
        .O(\iv[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FDFDFD)) 
    \iv[15]_i_50 
       (.I0(ir[14]),
        .I1(ir[15]),
        .I2(\iv[15]_i_82_n_0 ),
        .I3(\iv[15]_i_41_n_0 ),
        .I4(ir[8]),
        .I5(\iv[15]_i_83_n_0 ),
        .O(rst_n_fl_reg_1));
  LUT6 #(
    .INIT(64'h00000080000A008A)) 
    \iv[15]_i_51 
       (.I0(\iv[15]_i_84_n_0 ),
        .I1(\iv[15]_i_85_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\iv[15]_i_86_n_0 ),
        .I5(\iv[15]_i_87_n_0 ),
        .O(\iv[15]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F8F800000000)) 
    \iv[15]_i_52 
       (.I0(ir[2]),
        .I1(\ccmd[3]_INST_0_i_5_n_0 ),
        .I2(\iv[15]_i_30_n_0 ),
        .I3(\iv[15]_i_88_n_0 ),
        .I4(ir[11]),
        .I5(\iv[15]_i_19_0 ),
        .O(\iv[15]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEAEEEEAAEA)) 
    \iv[15]_i_53 
       (.I0(\iv[15]_i_90_n_0 ),
        .I1(crdy),
        .I2(\bcmd[0]_INST_0_i_7_n_0 ),
        .I3(\bcmd[0]_INST_0_i_9_n_0 ),
        .I4(Q[0]),
        .I5(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\iv[15]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h0001A70F0001250F)) 
    \iv[15]_i_54 
       (.I0(ir[10]),
        .I1(ir[7]),
        .I2(Q[0]),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(crdy),
        .O(\iv[15]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDD8DDDDD)) 
    \iv[15]_i_55 
       (.I0(ir[10]),
        .I1(\iv[15]_i_91_n_0 ),
        .I2(Q[0]),
        .I3(ir[6]),
        .I4(brdy),
        .I5(\iv[15]_i_92_n_0 ),
        .O(\iv[15]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h3333333357555555)) 
    \iv[15]_i_56 
       (.I0(\iv[15]_i_93_n_0 ),
        .I1(Q[0]),
        .I2(ir[14]),
        .I3(\badr[15]_INST_0_i_2 [4]),
        .I4(ir[11]),
        .I5(ir[15]),
        .O(\iv[15]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h0000440F)) 
    \iv[15]_i_57 
       (.I0(ir[14]),
        .I1(ir[15]),
        .I2(\iv[15]_i_94_n_0 ),
        .I3(ir[12]),
        .I4(Q[0]),
        .O(\iv[15]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \iv[15]_i_58 
       (.I0(ir[14]),
        .I1(ir[9]),
        .I2(\ccmd[3]_INST_0_i_15_n_0 ),
        .I3(ir[8]),
        .I4(ir[10]),
        .O(\iv[15]_i_58_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \iv[15]_i_59 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(Q[0]),
        .I4(ir[9]),
        .O(\iv[15]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_60 
       (.I0(brdy),
        .I1(ir[6]),
        .O(\iv[15]_i_60_n_0 ));
  LUT5 #(
    .INIT(32'hF3F3FF7E)) 
    \iv[15]_i_61 
       (.I0(ir[4]),
        .I1(ir[6]),
        .I2(ir[5]),
        .I3(ir[3]),
        .I4(ir[7]),
        .O(\iv[15]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[15]_i_62 
       (.I0(ir[10]),
        .I1(ir[6]),
        .O(\iv[15]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \iv[15]_i_63 
       (.I0(ir[8]),
        .I1(brdy),
        .O(\iv[15]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h00008000FFFFFFFF)) 
    \iv[15]_i_64 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[3]),
        .I3(ir[7]),
        .I4(ir[4]),
        .I5(ir[10]),
        .O(\iv[15]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hA080A00000800000)) 
    \iv[15]_i_65 
       (.I0(\bcmd[0]_INST_0_i_7_n_0 ),
        .I1(\iv[15]_i_95_n_0 ),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(brdy),
        .I5(ir[1]),
        .O(\iv[15]_i_65_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \iv[15]_i_66 
       (.I0(ir[8]),
        .I1(ir[1]),
        .I2(ir[9]),
        .I3(ir[7]),
        .O(\iv[15]_i_66_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \iv[15]_i_67 
       (.I0(ir[1]),
        .I1(ir[4]),
        .I2(ir[7]),
        .O(\iv[15]_i_67_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \iv[15]_i_68 
       (.I0(ir[4]),
        .I1(brdy),
        .I2(ir[6]),
        .I3(ir[8]),
        .I4(ir[9]),
        .O(\iv[15]_i_68_n_0 ));
  LUT5 #(
    .INIT(32'h44044000)) 
    \iv[15]_i_69 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[7]),
        .I3(ir[4]),
        .I4(ir[1]),
        .O(\iv[15]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDDDDDD5)) 
    \iv[15]_i_7 
       (.I0(\ccmd[2]_INST_0_i_24_n_0 ),
        .I1(\iv[15]_i_20_n_0 ),
        .I2(\bdatw[15]_INST_0_i_38_n_0 ),
        .I3(ir[14]),
        .I4(Q[0]),
        .I5(\iv[15]_i_21_n_0 ),
        .O(\iv[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \iv[15]_i_70 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(brdy),
        .I3(ir[3]),
        .I4(ir[7]),
        .O(\iv[15]_i_70_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_71 
       (.I0(ir[8]),
        .I1(crdy),
        .O(\iv[15]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_72 
       (.I0(ir[8]),
        .I1(ir[9]),
        .O(\iv[15]_i_72_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_73 
       (.I0(ir[10]),
        .I1(crdy),
        .O(\iv[15]_i_73_n_0 ));
  LUT5 #(
    .INIT(32'h08000008)) 
    \iv[15]_i_74 
       (.I0(crdy),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[7]),
        .O(\iv[15]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF3B)) 
    \iv[15]_i_75 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(brdy),
        .I3(ir[3]),
        .I4(ir[2]),
        .I5(\ccmd[4]_INST_0_i_19_n_0 ),
        .O(\iv[15]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hFF5CFF5FFFFFFFFF)) 
    \iv[15]_i_76 
       (.I0(\iv[15]_i_96_n_0 ),
        .I1(\iv[15]_i_97_n_0 ),
        .I2(ir[11]),
        .I3(ir[9]),
        .I4(ir[7]),
        .I5(ir[10]),
        .O(\iv[15]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5700FFFFFFFF)) 
    \iv[15]_i_77 
       (.I0(\iv[15]_i_38_n_0 ),
        .I1(\iv[15]_i_37_n_0 ),
        .I2(\bdatw[9]_INST_0_i_15_n_0 ),
        .I3(Q[0]),
        .I4(ir[15]),
        .I5(Q[1]),
        .O(\iv[15]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h020C020800000000)) 
    \iv[15]_i_78 
       (.I0(ir[2]),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(ir[3]),
        .I4(brdy),
        .I5(\iv[15]_i_38_n_0 ),
        .O(\iv[15]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBBBBBFBBBFBB)) 
    \iv[15]_i_79 
       (.I0(\iv[15]_i_98_n_0 ),
        .I1(rst_n_fl_reg_0),
        .I2(ir[10]),
        .I3(ir[11]),
        .I4(\stat[0]_i_21_n_0 ),
        .I5(ir[3]),
        .O(\iv[15]_i_79_n_0 ));
  LUT5 #(
    .INIT(32'h01FF0101)) 
    \iv[15]_i_8 
       (.I0(\iv[15]_i_22_n_0 ),
        .I1(ir[11]),
        .I2(ir[15]),
        .I3(\iv[15]_i_23_n_0 ),
        .I4(\iv[15]_i_24_n_0 ),
        .O(\iv[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4040444040404040)) 
    \iv[15]_i_80 
       (.I0(crdy),
        .I1(ir[10]),
        .I2(\iv[15]_i_99_n_0 ),
        .I3(ir[0]),
        .I4(ir[8]),
        .I5(\bdatw[15]_INST_0_i_74_n_0 ),
        .O(\iv[15]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF11001F001100)) 
    \iv[15]_i_81 
       (.I0(\ccmd[2]_INST_0_i_14_n_0 ),
        .I1(\iv[15]_i_100_n_0 ),
        .I2(\stat[0]_i_21_n_0 ),
        .I3(\iv[15]_i_101_n_0 ),
        .I4(ir[3]),
        .I5(\iv[15]_i_30_n_0 ),
        .O(\iv[15]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8AAA8AAAAA)) 
    \iv[15]_i_82 
       (.I0(\badr[15]_INST_0_i_84_n_0 ),
        .I1(\iv[15]_i_102_n_0 ),
        .I2(\ccmd[2]_INST_0_i_24_n_0 ),
        .I3(\iv[15]_i_103_n_0 ),
        .I4(\badrx[15]_INST_0_i_3_n_0 ),
        .I5(\iv[15]_i_104_n_0 ),
        .O(\iv[15]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FBAE0000)) 
    \iv[15]_i_83 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(\badr[15]_INST_0_i_2 [4]),
        .I3(ir[11]),
        .I4(\stat[2]_i_6_n_0 ),
        .I5(\stat[0]_i_9_n_0 ),
        .O(\iv[15]_i_83_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \iv[15]_i_84 
       (.I0(ir[13]),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(Q[2]),
        .I4(ir[15]),
        .O(\iv[15]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAEEEEAAEAAAEA)) 
    \iv[15]_i_85 
       (.I0(\iv[15]_i_105_n_0 ),
        .I1(crdy),
        .I2(ir[10]),
        .I3(\iv[15]_i_106_n_0 ),
        .I4(\bcmd[1]_INST_0_i_9_n_0 ),
        .I5(ir[5]),
        .O(\iv[15]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FB00)) 
    \iv[15]_i_86 
       (.I0(ir[10]),
        .I1(ir[5]),
        .I2(\stat[0]_i_21_n_0 ),
        .I3(ir[11]),
        .I4(\iv[15]_i_107_n_0 ),
        .I5(\iv[15]_i_108_n_0 ),
        .O(\iv[15]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFAA8A)) 
    \iv[15]_i_87 
       (.I0(\iv[15]_i_109_n_0 ),
        .I1(\iv[15]_i_61_n_0 ),
        .I2(ir[2]),
        .I3(\bcmd[2]_INST_0_i_3_n_0 ),
        .I4(\bcmd[1]_INST_0_i_11_n_0 ),
        .I5(\iv[15]_i_110_n_0 ),
        .O(\iv[15]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h8A00800080008000)) 
    \iv[15]_i_88 
       (.I0(\bcmd[0]_INST_0_i_7_n_0 ),
        .I1(ir[2]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(brdy),
        .I5(\iv[15]_i_111_n_0 ),
        .O(\iv[15]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFD500FFFFD5)) 
    \iv[15]_i_9 
       (.I0(\iv[15]_i_25_n_0 ),
        .I1(ir[2]),
        .I2(ir[0]),
        .I3(ir[13]),
        .I4(ir[14]),
        .I5(Q[0]),
        .O(\iv[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0040004000404444)) 
    \iv[15]_i_90 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(Q[0]),
        .I3(\stat[0]_i_21_n_0 ),
        .I4(ir[9]),
        .I5(\iv[15]_i_112_n_0 ),
        .O(\iv[15]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8888AAAA88888)) 
    \iv[15]_i_91 
       (.I0(\iv[15]_i_113_n_0 ),
        .I1(Q[0]),
        .I2(ir[4]),
        .I3(ir[6]),
        .I4(ir[5]),
        .I5(ir[3]),
        .O(\iv[15]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAEAEAAAAAAAA)) 
    \iv[15]_i_92 
       (.I0(\bcmd[2]_INST_0_i_3_n_0 ),
        .I1(ir[10]),
        .I2(ir[7]),
        .I3(ir[3]),
        .I4(Q[0]),
        .I5(\iv[15]_i_114_n_0 ),
        .O(\iv[15]_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hFFEA0000FFEAFFEA)) 
    \iv[15]_i_93 
       (.I0(Q[0]),
        .I1(ir[14]),
        .I2(\iv[15]_i_56_0 ),
        .I3(\iv[15]_i_116_n_0 ),
        .I4(\iv[15]_i_117_n_0 ),
        .I5(\badr[15]_INST_0_i_107_n_0 ),
        .O(\iv[15]_i_93_n_0 ));
  LUT5 #(
    .INIT(32'h00CCFF3D)) 
    \iv[15]_i_94 
       (.I0(ir[13]),
        .I1(ir[11]),
        .I2(\badr[15]_INST_0_i_2 [6]),
        .I3(ir[14]),
        .I4(ir[15]),
        .O(\iv[15]_i_94_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_95 
       (.I0(ir[4]),
        .I1(ir[6]),
        .O(\iv[15]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h8B88000088880000)) 
    \iv[15]_i_96 
       (.I0(ir[0]),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(brdy),
        .I4(ir[7]),
        .I5(ir[3]),
        .O(\iv[15]_i_96_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[15]_i_97 
       (.I0(ir[8]),
        .I1(ir[0]),
        .O(\iv[15]_i_97_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EEE0F0F)) 
    \iv[15]_i_98 
       (.I0(\iv[15]_i_118_n_0 ),
        .I1(\bcmd[2]_INST_0_i_3_n_0 ),
        .I2(\iv[15]_i_119_n_0 ),
        .I3(crdy),
        .I4(ir[7]),
        .I5(\bcmd[1]_INST_0_i_11_n_0 ),
        .O(\iv[15]_i_98_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \iv[15]_i_99 
       (.I0(ir[3]),
        .I1(brdy),
        .I2(ir[6]),
        .I3(ir[8]),
        .I4(ir[9]),
        .O(\iv[15]_i_99_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[1]_i_1 
       (.I0(\iv[1]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(O[1]),
        .I3(\tr_reg[1]_0 ),
        .I4(\iv[1]_i_4_n_0 ),
        .O(cbus[1]));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[1]_i_10 
       (.I0(abus_0[9]),
        .I1(\sp_reg[1] ),
        .I2(\stat_reg[2]_3 ),
        .O(\iv[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF8448844F844F8F4)) 
    \iv[1]_i_11 
       (.I0(\stat_reg[2]_3 ),
        .I1(\iv[14]_i_38_n_0 ),
        .I2(\iv[14]_i_11_n_0 ),
        .I3(abus_0[1]),
        .I4(\iv[12]_i_19_n_0 ),
        .I5(\sp_reg[1] ),
        .O(\iv[1]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h80288088)) 
    \iv[1]_i_12 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(\stat_reg[2]_4 ),
        .I2(abus_0[1]),
        .I3(\sp_reg[1] ),
        .I4(\stat_reg[2]_3 ),
        .O(\iv[1]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h01000101)) 
    \iv[1]_i_13 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(\sp_reg[4] ),
        .I2(\iv[14]_i_24_n_0 ),
        .I3(\stat_reg[2]_5 ),
        .I4(abus_0[0]),
        .O(\iv[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAE00AE000000AE00)) 
    \iv[1]_i_2 
       (.I0(\iv[1]_i_5_n_0 ),
        .I1(\iv[1]_i_6_n_0 ),
        .I2(\iv[1]_i_7_n_0 ),
        .I3(\iv[14]_i_3_n_0 ),
        .I4(\tr_reg[1]_1 ),
        .I5(\iv[1]_i_9_n_0 ),
        .O(\iv[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF100)) 
    \iv[1]_i_4 
       (.I0(\iv[1]_i_10_n_0 ),
        .I1(\iv[6]_i_10_n_0 ),
        .I2(\iv[1]_i_11_n_0 ),
        .I3(\iv[14]_i_22_n_0 ),
        .I4(\iv[1]_i_12_n_0 ),
        .O(\iv[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAABABAB)) 
    \iv[1]_i_5 
       (.I0(\sp_reg[4] ),
        .I1(\bdatw[12]_INST_0_i_2_0 ),
        .I2(\iv[1]_i_13_n_0 ),
        .I3(\iv[1]_i_2_1 ),
        .I4(\bdatw[12]_INST_0_i_2_1 ),
        .I5(\iv[14]_i_2_0 ),
        .O(\iv[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1013)) 
    \iv[1]_i_6 
       (.I0(\iv[1]_i_2_2 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(\stat_reg[2]_4 ),
        .I3(\iv[1]_i_2_3 ),
        .I4(\iv[12]_i_12_n_0 ),
        .O(\iv[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFEFCFCCCCCCCC)) 
    \iv[1]_i_7 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[1]_i_13_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_0 ),
        .I3(\iv[1]_i_2_4 ),
        .I4(\iv[1]_i_2_0 ),
        .I5(\stat_reg[2]_3 ),
        .O(\iv[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h4000FFFF)) 
    \iv[1]_i_9 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_5 ),
        .I3(\iv[9]_i_17_n_0 ),
        .I4(\sp_reg[4] ),
        .O(\iv[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F002000)) 
    \iv[2]_i_1 
       (.I0(\tr_reg[2]_1 ),
        .I1(\iv[2]_i_3_n_0 ),
        .I2(\sp_reg[4] ),
        .I3(\iv[14]_i_3_n_0 ),
        .I4(\iv[2]_i_4_n_0 ),
        .I5(\iv[2]_i_5_n_0 ),
        .O(cbus[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[2]_i_11 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(\stat_reg[2]_5 ),
        .O(\iv[2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hCDEFCCCC)) 
    \iv[2]_i_14 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[12]_i_12_n_0 ),
        .I2(\iv[10]_i_2_3 ),
        .I3(\iv[14]_i_2_1 ),
        .I4(\iv[14]_i_15_n_0 ),
        .O(\iv[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB1B0000)) 
    \iv[2]_i_15 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[10]_i_2_3 ),
        .I2(\iv[10]_i_15_n_0 ),
        .I3(\iv[10]_i_2_4 ),
        .I4(\stat_reg[2]_4 ),
        .I5(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[2]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h084C)) 
    \iv[2]_i_16 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\bdatw[12]_INST_0_i_2_0 ),
        .I2(\iv[10]_i_15_n_0 ),
        .I3(\iv[10]_i_2_3 ),
        .O(\iv[2]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \iv[2]_i_17 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(\iv[7]_i_2_0 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\iv[2]_i_4_0 ),
        .O(\iv[2]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \iv[2]_i_18 
       (.I0(\iv[14]_i_25_0 ),
        .I1(\stat_reg[2]_5 ),
        .I2(abus_0[1]),
        .O(\iv[2]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF100)) 
    \iv[2]_i_19 
       (.I0(\iv[10]_i_24_n_0 ),
        .I1(\iv[6]_i_10_n_0 ),
        .I2(\iv[2]_i_26_n_0 ),
        .I3(\iv[14]_i_22_n_0 ),
        .I4(\iv[2]_i_27_n_0 ),
        .O(\iv[2]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h59)) 
    \iv[2]_i_21 
       (.I0(\sp_reg[1] ),
        .I1(\sp_reg[0] ),
        .I2(\sp_reg[4] ),
        .O(\bdatw[12]_INST_0_i_2_2 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \iv[2]_i_23 
       (.I0(\sp_reg[1] ),
        .I1(\sp_reg[4] ),
        .I2(\sp_reg[0] ),
        .O(\bdatw[8]_INST_0_i_2_0 ));
  LUT6 #(
    .INIT(64'hF8448844F844F8F4)) 
    \iv[2]_i_26 
       (.I0(\stat_reg[2]_3 ),
        .I1(\iv[14]_i_38_n_0 ),
        .I2(\iv[14]_i_11_n_0 ),
        .I3(abus_0[2]),
        .I4(\iv[12]_i_19_n_0 ),
        .I5(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(\iv[2]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h882A0080)) 
    \iv[2]_i_27 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(abus_0[2]),
        .I2(\stat_reg[2]_3 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(\stat_reg[2]_4 ),
        .O(\iv[2]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hA820)) 
    \iv[2]_i_3 
       (.I0(\iv[2]_i_11_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_1 ),
        .I2(\tr_reg[2]_2 ),
        .I3(\tr_reg[2]_3 ),
        .O(\iv[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFEE0E)) 
    \iv[2]_i_4 
       (.I0(\iv[2]_i_14_n_0 ),
        .I1(\iv[2]_i_15_n_0 ),
        .I2(\stat_reg[2]_3 ),
        .I3(\iv[2]_i_16_n_0 ),
        .I4(\iv[2]_i_17_n_0 ),
        .I5(\iv[2]_i_18_n_0 ),
        .O(\iv[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFEAFFFFFFEA)) 
    \iv[2]_i_5 
       (.I0(\iv[2]_i_19_n_0 ),
        .I1(\stat_reg[2]_6 ),
        .I2(cbus_i[0]),
        .I3(\tr_reg[2]_4 ),
        .I4(O[2]),
        .I5(\iv[13]_i_3_n_0 ),
        .O(\iv[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h55A6)) 
    \iv[2]_i_8 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\sp_reg[1] ),
        .I2(\sp_reg[0] ),
        .I3(\sp_reg[4] ),
        .O(\bdatw[12]_INST_0_i_2_1 ));
  LUT5 #(
    .INIT(32'h5555A6AA)) 
    \iv[2]_i_9 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(\sp_reg[0] ),
        .I3(\sp_reg[1] ),
        .I4(\sp_reg[4] ),
        .O(\bdatw[12]_INST_0_i_2_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[3]_i_1 
       (.I0(\iv[3]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(O[3]),
        .I3(\tr_reg[3]_0 ),
        .I4(\iv[3]_i_4_n_0 ),
        .O(cbus[3]));
  LUT6 #(
    .INIT(64'hF8448844F844F8F4)) 
    \iv[3]_i_10 
       (.I0(\stat_reg[2]_3 ),
        .I1(\iv[14]_i_38_n_0 ),
        .I2(\iv[14]_i_11_n_0 ),
        .I3(abus_0[3]),
        .I4(\iv[12]_i_19_n_0 ),
        .I5(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\iv[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h8A222000)) 
    \iv[3]_i_11 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_3 ),
        .I3(abus_0[3]),
        .I4(\stat_reg[2]_4 ),
        .O(\iv[3]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h5D5DFF5D)) 
    \iv[3]_i_14 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[3]_i_8_0 ),
        .I2(\bdatw[12]_INST_0_i_2_2 ),
        .I3(\iv[3]_i_8_1 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF0D0000)) 
    \iv[3]_i_2 
       (.I0(\iv[3]_i_5_n_0 ),
        .I1(\iv[3]_i_6_n_0 ),
        .I2(\tr_reg[3]_1 ),
        .I3(\sp_reg[4] ),
        .I4(\iv[14]_i_3_n_0 ),
        .I5(\iv[3]_i_8_n_0 ),
        .O(\iv[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF100)) 
    \iv[3]_i_4 
       (.I0(\iv[3]_i_9_n_0 ),
        .I1(\iv[6]_i_10_n_0 ),
        .I2(\iv[3]_i_10_n_0 ),
        .I3(\iv[14]_i_22_n_0 ),
        .I4(\iv[3]_i_11_n_0 ),
        .O(\iv[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h45405555)) 
    \iv[3]_i_5 
       (.I0(\iv[12]_i_12_n_0 ),
        .I1(\iv[3]_i_2_1 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\iv[8]_i_2_2 ),
        .I4(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0088000A00DD005F)) 
    \iv[3]_i_6 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(abus_0[15]),
        .I2(\iv[3]_i_2_2 ),
        .I3(\bdatw[11]_INST_0_i_2_0 ),
        .I4(\stat_reg[2]_4 ),
        .I5(\iv[3]_i_2_3 ),
        .O(\iv[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFC00FC000800F800)) 
    \iv[3]_i_8 
       (.I0(\iv[3]_i_14_n_0 ),
        .I1(\iv[11]_i_2_0 ),
        .I2(\bdatw[12]_INST_0_i_2_0 ),
        .I3(\sp_reg[4] ),
        .I4(\iv[3]_i_2_0 ),
        .I5(\stat_reg[2]_5 ),
        .O(\iv[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[3]_i_9 
       (.I0(abus_0[11]),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_3 ),
        .O(\iv[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFBAFFFF)) 
    \iv[4]_i_1 
       (.I0(\iv[4]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\tr_reg[7]_0 [0]),
        .I3(\tr_reg[4]_0 ),
        .I4(\iv[4]_i_4_n_0 ),
        .O(cbus[4]));
  LUT5 #(
    .INIT(32'h80802888)) 
    \iv[4]_i_10 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(\stat_reg[2]_4 ),
        .I2(abus_0[4]),
        .I3(\stat_reg[2]_3 ),
        .I4(\sp_reg[4] ),
        .O(\iv[4]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[4]_i_11 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(\sp_reg[4] ),
        .O(\iv[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0100011100000000)) 
    \iv[4]_i_12 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(\stat_reg[2]_4 ),
        .I2(\iv[12]_i_6_0 ),
        .I3(\bdatw[12]_INST_0_i_2_2 ),
        .I4(\iv[12]_i_6_1 ),
        .I5(\bdatw[12]_INST_0_i_2_1 ),
        .O(\iv[4]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFF470047)) 
    \iv[4]_i_13 
       (.I0(\iv[4]_i_6_1 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\iv[4]_i_6_0 ),
        .I3(\bdatw[12]_INST_0_i_2_1 ),
        .I4(\iv[14]_i_24_n_0 ),
        .O(\iv[4]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[4]_i_15 
       (.I0(\bdatw[12]_INST_0_i_2_0 ),
        .I1(\stat_reg[2]_5 ),
        .O(\iv[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h44444444FF444F4F)) 
    \iv[4]_i_16 
       (.I0(\iv[4]_i_18_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2_1 ),
        .I2(\iv[4]_i_8_0 ),
        .I3(\iv[4]_i_8_1 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\bdatw[12]_INST_0_i_2_1 ),
        .O(\iv[4]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0232)) 
    \iv[4]_i_17 
       (.I0(abus_0[12]),
        .I1(\iv[6]_i_10_n_0 ),
        .I2(\stat_reg[2]_3 ),
        .I3(\sp_reg[4] ),
        .O(\iv[4]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[4]_i_18 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(abus_0[0]),
        .O(\iv[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hF0F02020F0002020)) 
    \iv[4]_i_2 
       (.I0(\iv[4]_i_5_n_0 ),
        .I1(\iv[4]_i_6_n_0 ),
        .I2(\iv[14]_i_3_n_0 ),
        .I3(\iv[4]_i_7_n_0 ),
        .I4(\sp_reg[4] ),
        .I5(\iv[4]_i_8_n_0 ),
        .O(\iv[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \iv[4]_i_4 
       (.I0(\iv[4]_i_9_n_0 ),
        .I1(\iv[14]_i_22_n_0 ),
        .I2(\iv[4]_i_10_n_0 ),
        .O(\iv[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h5D)) 
    \iv[4]_i_5 
       (.I0(\iv[14]_i_25_0 ),
        .I1(abus_0[3]),
        .I2(\stat_reg[2]_5 ),
        .O(\iv[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000F2F2F200F2)) 
    \iv[4]_i_6 
       (.I0(\iv[4]_i_11_n_0 ),
        .I1(\iv[4]_i_12_n_0 ),
        .I2(\stat_reg[2]_3 ),
        .I3(\iv[4]_i_13_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_0 ),
        .I5(\iv[13]_i_2_2 ),
        .O(\iv[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0000002F)) 
    \iv[4]_i_7 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[8]_i_2_6 ),
        .I2(\iv[4]_i_2_0 ),
        .I3(\bdatw[12]_INST_0_i_2_0 ),
        .I4(\stat_reg[2]_5 ),
        .O(\iv[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4F444FFF44444444)) 
    \iv[4]_i_8 
       (.I0(\iv[4]_i_15_n_0 ),
        .I1(\iv[4]_i_16_n_0 ),
        .I2(\iv[9]_i_2_4 ),
        .I3(\bdatw[12]_INST_0_i_2_1 ),
        .I4(\iv[8]_i_2_4 ),
        .I5(\iv[2]_i_11_n_0 ),
        .O(\iv[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00030B0B0F0F000B)) 
    \iv[4]_i_9 
       (.I0(\sp_reg[4] ),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(\iv[4]_i_17_n_0 ),
        .I3(\iv[14]_i_38_n_0 ),
        .I4(\stat_reg[2]_3 ),
        .I5(abus_0[4]),
        .O(\iv[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[5]_i_1 
       (.I0(\iv[5]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\tr_reg[7]_0 [1]),
        .I3(\tr_reg[5]_0 ),
        .I4(\iv[5]_i_4_n_0 ),
        .O(cbus[5]));
  LUT6 #(
    .INIT(64'hF8448844F844F8F4)) 
    \iv[5]_i_10 
       (.I0(\stat_reg[2]_3 ),
        .I1(\iv[14]_i_38_n_0 ),
        .I2(\iv[14]_i_11_n_0 ),
        .I3(abus_0[5]),
        .I4(\iv[12]_i_19_n_0 ),
        .I5(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(\iv[5]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h8A222000)) 
    \iv[5]_i_11 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_3 ),
        .I3(abus_0[5]),
        .I4(\stat_reg[2]_4 ),
        .O(\iv[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0F02020F0002020)) 
    \iv[5]_i_2 
       (.I0(\iv[5]_i_5_n_0 ),
        .I1(\tr_reg[5]_1 ),
        .I2(\iv[14]_i_3_n_0 ),
        .I3(\iv[5]_i_7_n_0 ),
        .I4(\sp_reg[4] ),
        .I5(\tr_reg[5]_2 ),
        .O(\iv[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF100)) 
    \iv[5]_i_4 
       (.I0(\iv[5]_i_9_n_0 ),
        .I1(\iv[6]_i_10_n_0 ),
        .I2(\iv[5]_i_10_n_0 ),
        .I3(\iv[14]_i_22_n_0 ),
        .I4(\iv[5]_i_11_n_0 ),
        .O(\iv[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0553333)) 
    \iv[5]_i_5 
       (.I0(\iv[5]_i_2_0 ),
        .I1(\iv[5]_i_2_1 ),
        .I2(\iv[13]_i_20_n_0 ),
        .I3(\stat_reg[2]_4 ),
        .I4(\bdatw[12]_INST_0_i_2_0 ),
        .I5(\iv[12]_i_12_n_0 ),
        .O(\iv[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000074)) 
    \iv[5]_i_7 
       (.I0(\iv[9]_i_2_0 ),
        .I1(\bdatw[12]_INST_0_i_2_1 ),
        .I2(\iv[9]_i_2_1 ),
        .I3(\bdatw[12]_INST_0_i_2_0 ),
        .I4(\stat_reg[2]_5 ),
        .O(\iv[5]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[5]_i_9 
       (.I0(abus_0[13]),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_3 ),
        .O(\iv[5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[6]_i_1 
       (.I0(\iv[6]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\tr_reg[7]_0 [2]),
        .I3(\tr_reg[6]_0 ),
        .I4(\iv[6]_i_4_n_0 ),
        .O(cbus[6]));
  LUT3 #(
    .INIT(8'h4F)) 
    \iv[6]_i_10 
       (.I0(ccmd_2_sn_1),
        .I1(\ccmd[2]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_4 ),
        .O(\iv[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF8448844F844F8F4)) 
    \iv[6]_i_11 
       (.I0(\stat_reg[2]_3 ),
        .I1(\iv[14]_i_38_n_0 ),
        .I2(\iv[14]_i_11_n_0 ),
        .I3(abus_0[6]),
        .I4(\iv[12]_i_19_n_0 ),
        .I5(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\iv[6]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h9020B000)) 
    \iv[6]_i_12 
       (.I0(abus_0[6]),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(\iv[11]_i_22_n_0 ),
        .I3(\stat_reg[2]_4 ),
        .I4(\stat_reg[2]_3 ),
        .O(\iv[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF0F02020F0002020)) 
    \iv[6]_i_2 
       (.I0(\iv[6]_i_5_n_0 ),
        .I1(\iv[6]_i_6_n_0 ),
        .I2(\iv[14]_i_3_n_0 ),
        .I3(\iv[6]_i_7_n_0 ),
        .I4(\sp_reg[4] ),
        .I5(\tr_reg[6]_1 ),
        .O(\iv[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF100)) 
    \iv[6]_i_4 
       (.I0(\iv[6]_i_9_n_0 ),
        .I1(\iv[6]_i_10_n_0 ),
        .I2(\iv[6]_i_11_n_0 ),
        .I3(\iv[14]_i_22_n_0 ),
        .I4(\iv[6]_i_12_n_0 ),
        .O(\iv[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF350535F5)) 
    \iv[6]_i_5 
       (.I0(\sr[7]_i_6_0 ),
        .I1(\iv[14]_i_26_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_0 ),
        .I3(\stat_reg[2]_4 ),
        .I4(\iv[6]_i_2_0 ),
        .I5(\iv[12]_i_12_n_0 ),
        .O(\iv[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF4FF4444F4444444)) 
    \iv[6]_i_6 
       (.I0(\iv[6]_i_2_1 ),
        .I1(\iv[14]_i_25_0 ),
        .I2(\iv[14]_i_33_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_0 ),
        .I4(\stat_reg[2]_3 ),
        .I5(\sr[7]_i_6_0 ),
        .O(\iv[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0000002E)) 
    \iv[6]_i_7 
       (.I0(\iv[6]_i_2_2 ),
        .I1(\bdatw[12]_INST_0_i_2_1 ),
        .I2(\tr_reg[2]_2 ),
        .I3(\bdatw[11]_INST_0_i_2_0 ),
        .I4(\stat_reg[2]_5 ),
        .O(\iv[6]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[6]_i_9 
       (.I0(abus_0[14]),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_3 ),
        .O(\iv[6]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[7]_i_1 
       (.I0(\iv[7]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\tr_reg[7]_0 [3]),
        .I3(\tr_reg[7]_1 ),
        .I4(\iv[7]_i_4_n_0 ),
        .O(cbus[7]));
  LUT6 #(
    .INIT(64'h0700000377337733)) 
    \iv[7]_i_11 
       (.I0(\bdatw[15]_INST_0_i_2_n_0 ),
        .I1(\iv[7]_i_21_n_0 ),
        .I2(\iv[14]_i_12_n_0 ),
        .I3(\stat_reg[2]_3 ),
        .I4(abus_0[7]),
        .I5(\iv[6]_i_10_n_0 ),
        .O(\iv[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h880C)) 
    \iv[7]_i_12 
       (.I0(abus_0[7]),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(\bdatw[15]_INST_0_i_2_n_0 ),
        .I3(\iv[12]_i_19_n_0 ),
        .O(\iv[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hC0700080)) 
    \iv[7]_i_13 
       (.I0(\stat_reg[2]_3 ),
        .I1(abus_0[7]),
        .I2(\iv[14]_i_12_n_0 ),
        .I3(\bdatw[15]_INST_0_i_2_n_0 ),
        .I4(\stat_reg[2]_4 ),
        .O(\iv[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF00DF00FF00FF00)) 
    \iv[7]_i_16 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\sp_reg[0] ),
        .I2(\sp_reg[1] ),
        .I3(\stat_reg[2]_3 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .I5(abus_0[15]),
        .O(\iv[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00AE)) 
    \iv[7]_i_2 
       (.I0(\iv[7]_i_5_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(\tr_reg[7]_2 ),
        .I3(\iv[7]_i_8_n_0 ),
        .I4(\sp_reg[4] ),
        .I5(\iv[7]_i_9_n_0 ),
        .O(\iv[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \iv[7]_i_21 
       (.I0(\stat_reg[2]_4 ),
        .I1(abus_0[15]),
        .I2(tout__1_carry_i_13_n_0),
        .O(\iv[7]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h00303505)) 
    \iv[7]_i_23 
       (.I0(abus_0[14]),
        .I1(abus_0[13]),
        .I2(\sp_reg[0] ),
        .I3(\sp_reg[4] ),
        .I4(\sp_reg[1] ),
        .O(\bdatw[9]_INST_0_i_2_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \iv[7]_i_4 
       (.I0(\iv[7]_i_11_n_0 ),
        .I1(\iv[7]_i_12_n_0 ),
        .I2(\iv[14]_i_22_n_0 ),
        .I3(\iv[7]_i_13_n_0 ),
        .O(\iv[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF02A2)) 
    \iv[7]_i_5 
       (.I0(\iv[14]_i_15_n_0 ),
        .I1(\iv[3]_i_2_2 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\iv[7]_i_2_0 ),
        .I4(\sr[7]_i_17_0 ),
        .I5(\iv[7]_i_16_n_0 ),
        .O(\iv[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAEAA5155)) 
    \iv[7]_i_6 
       (.I0(\sp_reg[4] ),
        .I1(\sp_reg[1] ),
        .I2(\sp_reg[0] ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\bdatw[11]_INST_0_i_2_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \iv[7]_i_8 
       (.I0(\iv[14]_i_25_0 ),
        .I1(\stat_reg[2]_5 ),
        .I2(abus_0[6]),
        .O(\iv[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B080FFFFFFFF)) 
    \iv[7]_i_9 
       (.I0(\iv[7]_i_2_1 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(\sp_reg[4] ),
        .I3(\stat_reg[2]_5 ),
        .I4(\iv[7]_i_2_2 ),
        .I5(\iv[14]_i_3_n_0 ),
        .O(\iv[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8F88)) 
    \iv[8]_i_1 
       (.I0(\iv[14]_i_3_n_0 ),
        .I1(\iv[8]_i_2_n_0 ),
        .I2(\iv[13]_i_3_n_0 ),
        .I3(\tr_reg[11]_0 [0]),
        .I4(\tr_reg[8]_0 ),
        .I5(\iv[8]_i_4_n_0 ),
        .O(cbus[8]));
  LUT5 #(
    .INIT(32'hFFFF001B)) 
    \iv[8]_i_10 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[8]_i_2_6 ),
        .I2(\iv[8]_i_2_4 ),
        .I3(\stat_reg[2]_5 ),
        .I4(\iv[8]_i_23_n_0 ),
        .O(\iv[8]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[8]_i_11 
       (.I0(\iv[0]_i_10_n_0 ),
        .I1(\iv[14]_i_11_n_0 ),
        .O(\iv[8]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \iv[8]_i_13 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(\stat_reg[2]_3 ),
        .I2(abus_0[8]),
        .O(\iv[8]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h882A0080)) 
    \iv[8]_i_14 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(abus_0[8]),
        .I2(\stat_reg[2]_3 ),
        .I3(\bdatw[8]_INST_0_i_1_n_0 ),
        .I4(\stat_reg[2]_4 ),
        .O(\iv[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h5554FFFF55545554)) 
    \iv[8]_i_2 
       (.I0(\iv[8]_i_5_n_0 ),
        .I1(\iv[8]_i_6_n_0 ),
        .I2(\iv[8]_i_7_n_0 ),
        .I3(\iv[8]_i_8_n_0 ),
        .I4(\iv[8]_i_9_n_0 ),
        .I5(\iv[8]_i_10_n_0 ),
        .O(\iv[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \iv[8]_i_23 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\sp_reg[0] ),
        .I2(\sp_reg[1] ),
        .I3(abus_0[0]),
        .I4(\stat_reg[2]_5 ),
        .I5(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[8]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD50000)) 
    \iv[8]_i_4 
       (.I0(\iv[8]_i_11_n_0 ),
        .I1(\iv[14]_i_20_n_0 ),
        .I2(\tr_reg[8]_1 ),
        .I3(\iv[8]_i_13_n_0 ),
        .I4(\iv[14]_i_22_n_0 ),
        .I5(\iv[8]_i_14_n_0 ),
        .O(\iv[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \iv[8]_i_5 
       (.I0(\sp_reg[4] ),
        .I1(abus_0[7]),
        .I2(\stat_reg[2]_5 ),
        .I3(\iv[14]_i_25_0 ),
        .O(\iv[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[8]_i_6 
       (.I0(\sr[7]_i_17_0 ),
        .I1(\stat_reg[2]_3 ),
        .O(\iv[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00011101)) 
    \iv[8]_i_7 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(\stat_reg[2]_5 ),
        .I2(\iv[8]_i_2_3 ),
        .I3(\bdatw[12]_INST_0_i_2_1 ),
        .I4(\iv[8]_i_2_2 ),
        .O(\iv[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \iv[8]_i_8 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(\iv[8]_i_2_1 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\iv[8]_i_2_0 ),
        .O(\iv[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h8B00FFFF)) 
    \iv[8]_i_9 
       (.I0(\iv[8]_i_2_5 ),
        .I1(\bdatw[12]_INST_0_i_2_1 ),
        .I2(\iv[12]_i_7_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\sp_reg[4] ),
        .O(\iv[8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[9]_i_1 
       (.I0(\iv[9]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\tr_reg[11]_0 [1]),
        .I3(\tr_reg[9]_0 ),
        .I4(\iv[9]_i_4_n_0 ),
        .O(cbus[9]));
  LUT3 #(
    .INIT(8'h82)) 
    \iv[9]_i_10 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(\stat_reg[2]_3 ),
        .I2(abus_0[9]),
        .O(\iv[9]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h80802888)) 
    \iv[9]_i_12 
       (.I0(\iv[14]_i_12_n_0 ),
        .I1(\stat_reg[2]_4 ),
        .I2(abus_0[9]),
        .I3(\stat_reg[2]_3 ),
        .I4(\bdatw[9]_INST_0_i_1_n_0 ),
        .O(\iv[9]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[9]_i_17 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[9]_i_7_0 ),
        .O(\iv[9]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0202000F02020)) 
    \iv[9]_i_2 
       (.I0(\tr_reg[9]_1 ),
        .I1(\iv[9]_i_6_n_0 ),
        .I2(\iv[14]_i_3_n_0 ),
        .I3(\iv[9]_i_7_n_0 ),
        .I4(\sp_reg[4] ),
        .I5(\iv[9]_i_8_n_0 ),
        .O(\iv[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[9]_i_22 
       (.I0(\sp_reg[0] ),
        .I1(abus_0[15]),
        .O(\badr[15]_INST_0_i_1 ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFE0000)) 
    \iv[9]_i_4 
       (.I0(\iv[9]_i_9_n_0 ),
        .I1(\iv[9]_i_10_n_0 ),
        .I2(\iv[14]_i_20_n_0 ),
        .I3(\tr_reg[9]_2 ),
        .I4(\iv[14]_i_22_n_0 ),
        .I5(\iv[9]_i_12_n_0 ),
        .O(\iv[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD0FFD0D0D0D0)) 
    \iv[9]_i_6 
       (.I0(abus_0[8]),
        .I1(\stat_reg[2]_5 ),
        .I2(\iv[14]_i_25_0 ),
        .I3(\bdatw[11]_INST_0_i_2_0 ),
        .I4(\iv[9]_i_2_3 ),
        .I5(\stat_reg[2]_3 ),
        .O(\iv[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFAEEEBFEEAE)) 
    \iv[9]_i_7 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(\stat_reg[2]_5 ),
        .I2(\iv[9]_i_17_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_1 ),
        .I4(\iv[9]_i_2_0 ),
        .I5(\iv[9]_i_2_2 ),
        .O(\iv[9]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hA202)) 
    \iv[9]_i_8 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(\iv[9]_i_2_4 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\iv[9]_i_2_1 ),
        .O(\iv[9]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[9]_i_9 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(\iv[1]_i_10_n_0 ),
        .O(\iv[9]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[0]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr [1]),
        .I3(\pc_reg[15]_0 [0]),
        .I4(fch_pc[0]),
        .I5(cbus[0]),
        .O(\pc_reg[15] [0]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[10]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr [1]),
        .I3(\pc_reg[15]_0 [10]),
        .I4(fch_pc[10]),
        .I5(cbus[10]),
        .O(\pc_reg[15] [10]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[11]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr [1]),
        .I3(\pc_reg[15]_0 [11]),
        .I4(fch_pc[11]),
        .I5(cbus[11]),
        .O(\pc_reg[15] [11]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[12]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr [1]),
        .I3(\pc_reg[15]_0 [12]),
        .I4(fch_pc[12]),
        .I5(cbus[12]),
        .O(\pc_reg[15] [12]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[13]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr [1]),
        .I3(\pc_reg[15]_0 [13]),
        .I4(fch_pc[13]),
        .I5(cbus[13]),
        .O(\pc_reg[15] [13]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[14]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr [1]),
        .I3(\pc_reg[15]_0 [14]),
        .I4(fch_pc[14]),
        .I5(cbus[14]),
        .O(\pc_reg[15] [14]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[15]_i_2 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr [1]),
        .I3(\pc_reg[15]_0 [15]),
        .I4(fch_pc[15]),
        .I5(cbus[15]),
        .O(\pc_reg[15] [15]));
  LUT4 #(
    .INIT(16'h0200)) 
    \pc[15]_i_3 
       (.I0(ctl_selc),
        .I1(\iv[15]_i_4_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_2 ),
        .O(\rgf/cbus_sel_cr [1]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[1]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr [1]),
        .I3(\pc_reg[15]_0 [1]),
        .I4(fch_pc[1]),
        .I5(cbus[1]),
        .O(\pc_reg[15] [1]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[2]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr [1]),
        .I3(\pc_reg[15]_0 [2]),
        .I4(fch_pc[2]),
        .I5(cbus[2]),
        .O(\pc_reg[15] [2]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[3]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr [1]),
        .I3(\pc_reg[15]_0 [3]),
        .I4(fch_pc[3]),
        .I5(cbus[3]),
        .O(\pc_reg[15] [3]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[4]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr [1]),
        .I3(\pc_reg[15]_0 [4]),
        .I4(fch_pc[4]),
        .I5(cbus[4]),
        .O(\pc_reg[15] [4]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[5]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr [1]),
        .I3(\pc_reg[15]_0 [5]),
        .I4(fch_pc[5]),
        .I5(cbus[5]),
        .O(\pc_reg[15] [5]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[6]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr [1]),
        .I3(\pc_reg[15]_0 [6]),
        .I4(fch_pc[6]),
        .I5(cbus[6]),
        .O(\pc_reg[15] [6]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[7]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr [1]),
        .I3(\pc_reg[15]_0 [7]),
        .I4(fch_pc[7]),
        .I5(cbus[7]),
        .O(\pc_reg[15] [7]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[8]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr [1]),
        .I3(\pc_reg[15]_0 [8]),
        .I4(fch_pc[8]),
        .I5(cbus[8]),
        .O(\pc_reg[15] [8]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[9]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr [1]),
        .I3(\pc_reg[15]_0 [9]),
        .I4(fch_pc[9]),
        .I5(cbus[9]),
        .O(\pc_reg[15] [9]));
  LUT6 #(
    .INIT(64'hFB00FFFFFB000000)) 
    \read_cyc[0]_i_1 
       (.I0(\stat_reg[1]_0 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_0 ),
        .I3(abus_0[0]),
        .I4(brdy),
        .I5(read_cyc[0]),
        .O(brdy_0));
  FDRE rst_n_fl_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rst_n),
        .Q(rst_n_fl),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hFEBA5410)) 
    \sp[0]_i_1 
       (.I0(\rgf/cbus_sel_cr [2]),
        .I1(ctl_sp_inc),
        .I2(\sp_reg[15]_0 [0]),
        .I3(\sp_reg[0]_1 ),
        .I4(cbus[0]),
        .O(\stat_reg[0]_3 [0]));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[10]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr [2]),
        .I2(\sp_reg[11]_0 [2]),
        .I3(cbus[10]),
        .I4(\sp[10]_i_2_n_0 ),
        .O(\stat_reg[0]_3 [10]));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[10]_i_2 
       (.I0(\rgf/cbus_sel_cr [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(sp_dec_0[9]),
        .I4(\sp_reg[15]_0 [10]),
        .O(\sp[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[11]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr [2]),
        .I2(\sp_reg[11]_0 [3]),
        .I3(cbus[11]),
        .I4(\sp[11]_i_3_n_0 ),
        .O(\stat_reg[0]_3 [11]));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[11]_i_3 
       (.I0(\rgf/cbus_sel_cr [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(sp_dec_0[10]),
        .I4(\sp_reg[15]_0 [11]),
        .O(\sp[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[12]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr [2]),
        .I2(\sp_reg[15]_1 [0]),
        .I3(cbus[12]),
        .I4(\sp[12]_i_2_n_0 ),
        .O(\stat_reg[0]_3 [12]));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[12]_i_2 
       (.I0(\rgf/cbus_sel_cr [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(sp_dec_0[11]),
        .I4(\sp_reg[15]_0 [12]),
        .O(\sp[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[13]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr [2]),
        .I2(\sp_reg[15]_1 [1]),
        .I3(cbus[13]),
        .I4(\sp[13]_i_2_n_0 ),
        .O(\stat_reg[0]_3 [13]));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[13]_i_2 
       (.I0(\rgf/cbus_sel_cr [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(sp_dec_0[12]),
        .I4(\sp_reg[15]_0 [13]),
        .O(\sp[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[14]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr [2]),
        .I2(\sp_reg[15]_1 [2]),
        .I3(cbus[14]),
        .I4(\sp[14]_i_2_n_0 ),
        .O(\stat_reg[0]_3 [14]));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[14]_i_2 
       (.I0(\rgf/cbus_sel_cr [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(sp_dec_0[13]),
        .I4(\sp_reg[15]_0 [14]),
        .O(\sp[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[15]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr [2]),
        .I2(\sp_reg[15]_1 [3]),
        .I3(cbus[15]),
        .I4(\sp[15]_i_5_n_0 ),
        .O(\stat_reg[0]_3 [15]));
  LUT6 #(
    .INIT(64'h7FFDFFFF7FFDBFFE)) 
    \sp[15]_i_10 
       (.I0(ir[5]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(ir[6]),
        .I5(ir[2]),
        .O(\sp[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \sp[15]_i_11 
       (.I0(fch_irq_req),
        .I1(Q[0]),
        .I2(ir[11]),
        .I3(ir[12]),
        .O(\sp[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBDAEBDBF)) 
    \sp[15]_i_12 
       (.I0(ir[3]),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(ir[0]),
        .I5(\sp[15]_i_16_n_0 ),
        .O(\sp[15]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \sp[15]_i_13 
       (.I0(Q[0]),
        .I1(ir[11]),
        .I2(ir[12]),
        .O(\sp[15]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \sp[15]_i_14 
       (.I0(ir[13]),
        .I1(ir[14]),
        .I2(ir[12]),
        .O(\sp[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFFFFEFFAFFFFE)) 
    \sp[15]_i_15 
       (.I0(\bcmd[1]_INST_0_i_3_n_0 ),
        .I1(ir[1]),
        .I2(ir[7]),
        .I3(ir[4]),
        .I4(ir[8]),
        .I5(ir[6]),
        .O(\sp[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFDFFFFFFFFFDF)) 
    \sp[15]_i_16 
       (.I0(brdy),
        .I1(Q[2]),
        .I2(\sp[15]_i_17_n_0 ),
        .I3(ir[10]),
        .I4(ir[6]),
        .I5(ir[9]),
        .O(\sp[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sp[15]_i_17 
       (.I0(ir[15]),
        .I1(Q[1]),
        .O(\sp[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000003007)) 
    \sp[15]_i_2 
       (.I0(\bcmd[0]_INST_0_i_10_n_0 ),
        .I1(Q[0]),
        .I2(ir[11]),
        .I3(ir[12]),
        .I4(\sp[15]_i_6_n_0 ),
        .I5(\sp[15]_i_7_n_0 ),
        .O(ctl_sp_inc));
  LUT4 #(
    .INIT(16'h2000)) 
    \sp[15]_i_3 
       (.I0(ctl_selc),
        .I1(\iv[15]_i_4_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_3 ),
        .O(\rgf/cbus_sel_cr [2]));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[15]_i_5 
       (.I0(\rgf/cbus_sel_cr [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(sp_dec_0[14]),
        .I4(\sp_reg[15]_0 [15]),
        .O(\sp[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \sp[15]_i_6 
       (.I0(ir[4]),
        .I1(ir[7]),
        .I2(ir[6]),
        .O(\sp[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAFFB)) 
    \sp[15]_i_7 
       (.I0(\bcmd[1]_INST_0_i_5_n_0 ),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(ir[5]),
        .I4(\sp[15]_i_2_0 ),
        .I5(\sp[15]_i_10_n_0 ),
        .O(\sp[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000003202)) 
    \sp[15]_i_8 
       (.I0(\sp[15]_i_11_n_0 ),
        .I1(\sp[15]_i_12_n_0 ),
        .I2(ir[10]),
        .I3(\sp[15]_i_13_n_0 ),
        .I4(\sp[15]_i_14_n_0 ),
        .I5(\sp[15]_i_15_n_0 ),
        .O(ctl_sp_dec));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[1]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr [2]),
        .I2(\sp_reg[3]_0 [0]),
        .I3(cbus[1]),
        .I4(\sp[1]_i_2_n_0 ),
        .O(\stat_reg[0]_3 [1]));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[1]_i_2 
       (.I0(\rgf/cbus_sel_cr [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(sp_dec_0[0]),
        .I4(\sp_reg[15]_0 [1]),
        .O(\sp[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[2]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr [2]),
        .I2(\sp_reg[3]_0 [1]),
        .I3(cbus[2]),
        .I4(\sp[2]_i_2_n_0 ),
        .O(\stat_reg[0]_3 [2]));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[2]_i_2 
       (.I0(\rgf/cbus_sel_cr [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(sp_dec_0[1]),
        .I4(\sp_reg[15]_0 [2]),
        .O(\sp[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[3]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr [2]),
        .I2(\sp_reg[3]_0 [2]),
        .I3(cbus[3]),
        .I4(\sp[3]_i_3_n_0 ),
        .O(\stat_reg[0]_3 [3]));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[3]_i_3 
       (.I0(\rgf/cbus_sel_cr [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(sp_dec_0[2]),
        .I4(\sp_reg[15]_0 [3]),
        .O(\sp[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[4]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr [2]),
        .I2(\sp_reg[7]_0 [0]),
        .I3(cbus[4]),
        .I4(\sp[4]_i_2_n_0 ),
        .O(\stat_reg[0]_3 [4]));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[4]_i_2 
       (.I0(\rgf/cbus_sel_cr [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(sp_dec_0[3]),
        .I4(\sp_reg[15]_0 [4]),
        .O(\sp[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[5]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr [2]),
        .I2(\sp_reg[7]_0 [1]),
        .I3(cbus[5]),
        .I4(\sp[5]_i_2_n_0 ),
        .O(\stat_reg[0]_3 [5]));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[5]_i_2 
       (.I0(\rgf/cbus_sel_cr [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(sp_dec_0[4]),
        .I4(\sp_reg[15]_0 [5]),
        .O(\sp[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[6]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr [2]),
        .I2(\sp_reg[7]_0 [2]),
        .I3(cbus[6]),
        .I4(\sp[6]_i_2_n_0 ),
        .O(\stat_reg[0]_3 [6]));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[6]_i_2 
       (.I0(\rgf/cbus_sel_cr [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(sp_dec_0[5]),
        .I4(\sp_reg[15]_0 [6]),
        .O(\sp[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[7]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr [2]),
        .I2(\sp_reg[7]_0 [3]),
        .I3(cbus[7]),
        .I4(\sp[7]_i_3_n_0 ),
        .O(\stat_reg[0]_3 [7]));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[7]_i_3 
       (.I0(\rgf/cbus_sel_cr [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(sp_dec_0[6]),
        .I4(\sp_reg[15]_0 [7]),
        .O(\sp[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[8]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr [2]),
        .I2(\sp_reg[11]_0 [0]),
        .I3(cbus[8]),
        .I4(\sp[8]_i_2_n_0 ),
        .O(\stat_reg[0]_3 [8]));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[8]_i_2 
       (.I0(\rgf/cbus_sel_cr [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(sp_dec_0[7]),
        .I4(\sp_reg[15]_0 [8]),
        .O(\sp[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[9]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr [2]),
        .I2(\sp_reg[11]_0 [1]),
        .I3(cbus[9]),
        .I4(\sp[9]_i_2_n_0 ),
        .O(\stat_reg[0]_3 [9]));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[9]_i_2 
       (.I0(\rgf/cbus_sel_cr [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(sp_dec_0[8]),
        .I4(\sp_reg[15]_0 [9]),
        .O(\sp[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE444A000)) 
    \sr[0]_i_1 
       (.I0(\rgf/cbus_sel_cr [0]),
        .I1(rst_n),
        .I2(\sr[11]_i_2_n_0 ),
        .I3(cbus[0]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hE444A000)) 
    \sr[10]_i_1 
       (.I0(\rgf/cbus_sel_cr [0]),
        .I1(rst_n),
        .I2(\sr[11]_i_2_n_0 ),
        .I3(cbus[10]),
        .I4(\badr[15]_INST_0_i_2 [10]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hE444A000)) 
    \sr[11]_i_1 
       (.I0(\rgf/cbus_sel_cr [0]),
        .I1(rst_n),
        .I2(\sr[11]_i_2_n_0 ),
        .I3(cbus[11]),
        .I4(\badr[15]_INST_0_i_2 [11]),
        .O(D[9]));
  LUT3 #(
    .INIT(8'hE0)) 
    \sr[11]_i_2 
       (.I0(\rgf/cbus_sel_cr [5]),
        .I1(\rgf/cbus_sel_cr [0]),
        .I2(rst_n),
        .O(\sr[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \sr[12]_i_1 
       (.I0(\rgf/cbus_sel_cr [0]),
        .I1(rst_n),
        .I2(\badr[15]_INST_0_i_2 [12]),
        .I3(cpuid[0]),
        .I4(\sr[13]_i_3_n_0 ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \sr[13]_i_1 
       (.I0(\rgf/cbus_sel_cr [0]),
        .I1(rst_n),
        .I2(\badr[15]_INST_0_i_2 [13]),
        .I3(cpuid[1]),
        .I4(\sr[13]_i_3_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h00000000EA2A2A2A)) 
    \sr[13]_i_10 
       (.I0(\sr[13]_i_11_n_0 ),
        .I1(\ccmd[2]_INST_0_i_20_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(ir[11]),
        .I4(\bdatw[15]_INST_0_i_64_n_0 ),
        .I5(\badr[15]_INST_0_i_130_n_0 ),
        .O(\sr[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088980010)) 
    \sr[13]_i_11 
       (.I0(ir[11]),
        .I1(ir[9]),
        .I2(ir[6]),
        .I3(ctl_fetch_inferred_i_27_n_0),
        .I4(ir[10]),
        .I5(\sr[13]_i_12_n_0 ),
        .O(\sr[13]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0BFFFFFFFFFC0)) 
    \sr[13]_i_12 
       (.I0(ir[3]),
        .I1(ir[5]),
        .I2(ir[9]),
        .I3(ir[4]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\sr[13]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \sr[13]_i_2 
       (.I0(ctl_selc),
        .I1(\iv[15]_i_4_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn_reg[15]_3 ),
        .O(\rgf/cbus_sel_cr [0]));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \sr[13]_i_3 
       (.I0(\rgf/cbus_sel_cr [5]),
        .I1(\rgf/cbus_sel_cr [0]),
        .I2(ctl_sr_upd),
        .I3(ctl_sr_ldie),
        .I4(rst_n),
        .O(\sr[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \sr[13]_i_4 
       (.I0(ctl_selc),
        .I1(\iv[15]_i_4_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .O(\rgf/cbus_sel_cr [5]));
  LUT6 #(
    .INIT(64'h0002000200020000)) 
    \sr[13]_i_5 
       (.I0(\sr[13]_i_7_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(ir[14]),
        .I5(ir[15]),
        .O(ctl_sr_upd));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \sr[13]_i_6 
       (.I0(\stat[0]_i_17_0 ),
        .I1(ir[5]),
        .I2(ir[8]),
        .I3(\fch_irq_lev[1]_i_3_n_0 ),
        .I4(\sr[13]_i_9_n_0 ),
        .I5(\bcmd[0]_INST_0_i_4_n_0 ),
        .O(ctl_sr_ldie));
  LUT6 #(
    .INIT(64'hFFFFFFFF383F0000)) 
    \sr[13]_i_7 
       (.I0(ir[11]),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(ir[14]),
        .I4(ir[15]),
        .I5(\sr[13]_i_10_n_0 ),
        .O(\sr[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \sr[13]_i_9 
       (.I0(ir[4]),
        .I1(Q[0]),
        .I2(ir[14]),
        .I3(ir[12]),
        .I4(ir[13]),
        .I5(ir[15]),
        .O(\sr[13]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sr[15]_i_1 
       (.I0(\rgf/cbus_sel_cr [0]),
        .I1(rst_n),
        .O(rst_n_0));
  LUT5 #(
    .INIT(32'hE444A000)) 
    \sr[1]_i_1 
       (.I0(\rgf/cbus_sel_cr [0]),
        .I1(rst_n),
        .I2(\sr[11]_i_2_n_0 ),
        .I3(cbus[1]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \sr[2]_i_1 
       (.I0(\sr[11]_i_2_n_0 ),
        .I1(\rgf/cbus_sel_cr [0]),
        .I2(\sr[2]_i_2_n_0 ),
        .I3(cbus[2]),
        .I4(\badr[15]_INST_0_i_2 [2]),
        .I5(\sr[3]_i_3_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \sr[2]_i_2 
       (.I0(ctl_sr_upd),
        .I1(ctl_sr_ldie),
        .I2(\rgf/cbus_sel_cr [5]),
        .I3(\rgf/cbus_sel_cr [0]),
        .I4(rst_n),
        .I5(fch_irq_lev[0]),
        .O(\sr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \sr[3]_i_1 
       (.I0(\sr[11]_i_2_n_0 ),
        .I1(\rgf/cbus_sel_cr [0]),
        .I2(\sr[3]_i_2_n_0 ),
        .I3(cbus[3]),
        .I4(\badr[15]_INST_0_i_2 [3]),
        .I5(\sr[3]_i_3_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \sr[3]_i_2 
       (.I0(ctl_sr_upd),
        .I1(ctl_sr_ldie),
        .I2(\rgf/cbus_sel_cr [5]),
        .I3(\rgf/cbus_sel_cr [0]),
        .I4(rst_n),
        .I5(fch_irq_lev[1]),
        .O(\sr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FB00F0000B0000)) 
    \sr[3]_i_3 
       (.I0(ctl_sr_upd),
        .I1(ctl_sr_ldie),
        .I2(\rgf/cbus_sel_cr [5]),
        .I3(\rgf/cbus_sel_cr [0]),
        .I4(rst_n),
        .I5(\sr[11]_i_2_n_0 ),
        .O(\sr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAEEEA)) 
    \sr[4]_i_1 
       (.I0(\sr[4]_i_2_n_0 ),
        .I1(\sr[7]_i_3_n_0 ),
        .I2(\sr[4]_i_3_n_0 ),
        .I3(\sr[4]_i_4_n_0 ),
        .I4(\sr[4]_i_5_n_0 ),
        .I5(\sr[4]_i_6_n_0 ),
        .O(D[4]));
  LUT3 #(
    .INIT(8'h02)) 
    \sr[4]_i_10 
       (.I0(\iv[4]_i_4_n_0 ),
        .I1(\iv[3]_i_4_n_0 ),
        .I2(\iv[2]_i_19_n_0 ),
        .O(\sr[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sr[4]_i_11 
       (.I0(\sr[7]_i_7_n_0 ),
        .I1(\iv[6]_i_4_n_0 ),
        .I2(\iv[5]_i_4_n_0 ),
        .I3(\iv[0]_i_4_n_0 ),
        .I4(\sr[4]_i_18_n_0 ),
        .I5(\iv[9]_i_4_n_0 ),
        .O(\sr[4]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_12 
       (.I0(\iv[0]_i_2_n_0 ),
        .I1(\sr[7]_i_6_n_0 ),
        .I2(\iv[9]_i_2_n_0 ),
        .I3(\iv[1]_i_2_n_0 ),
        .O(\sr[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F20FFFF)) 
    \sr[4]_i_13 
       (.I0(\tr_reg[2]_1 ),
        .I1(\iv[2]_i_3_n_0 ),
        .I2(\sp_reg[4] ),
        .I3(\iv[2]_i_4_n_0 ),
        .I4(\iv[14]_i_3_n_0 ),
        .I5(\iv[8]_i_2_n_0 ),
        .O(\sr[4]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_14 
       (.I0(\iv[5]_i_2_n_0 ),
        .I1(\iv[6]_i_2_n_0 ),
        .I2(\iv[4]_i_2_n_0 ),
        .I3(\iv[7]_i_2_n_0 ),
        .O(\sr[4]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sr[4]_i_15 
       (.I0(\sr[5]_i_3_n_0 ),
        .I1(\iv[14]_i_22_n_0 ),
        .I2(\iv[6]_i_10_n_0 ),
        .O(\sr[4]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \sr[4]_i_16 
       (.I0(\sr[5]_i_3_n_0 ),
        .I1(\iv[14]_i_22_n_0 ),
        .I2(\stat_reg[2]_3 ),
        .I3(\iv[14]_i_11_n_0 ),
        .O(\sr[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44007575)) 
    \sr[4]_i_18 
       (.I0(\iv[14]_i_22_n_0 ),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .I2(\ccmd[2]_INST_0_i_2_n_0 ),
        .I3(tout__1_carry_i_13_n_0),
        .I4(\iv[11]_i_22_n_0 ),
        .I5(\iv[1]_i_4_n_0 ),
        .O(\sr[4]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[4]_i_2 
       (.I0(\sr[7]_i_2_n_0 ),
        .I1(\badr[15]_INST_0_i_2 [4]),
        .O(\sr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \sr[4]_i_3 
       (.I0(\sr[4]_i_7_n_0 ),
        .I1(\sr[4]_i_8_n_0 ),
        .I2(\sr[4]_i_9_n_0 ),
        .I3(\sr[4]_i_10_n_0 ),
        .I4(\sr[4]_i_11_n_0 ),
        .O(\sr[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h22220222)) 
    \sr[4]_i_4 
       (.I0(\iv[12]_i_2_n_0 ),
        .I1(\iv[13]_i_2_n_0 ),
        .I2(\iv[14]_i_4_n_0 ),
        .I3(\iv[14]_i_3_n_0 ),
        .I4(\iv[14]_i_2_n_0 ),
        .O(\sr[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sr[4]_i_5 
       (.I0(\iv[10]_i_2_n_0 ),
        .I1(\iv[3]_i_2_n_0 ),
        .I2(\iv[11]_i_2_n_0 ),
        .I3(\sr[4]_i_12_n_0 ),
        .I4(\sr[4]_i_13_n_0 ),
        .I5(\sr[4]_i_14_n_0 ),
        .O(\sr[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[4]_i_6 
       (.I0(\sr[7]_i_5_n_0 ),
        .I1(cbus[4]),
        .O(\sr[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF0E)) 
    \sr[4]_i_7 
       (.I0(tout__1_carry_i_13_n_0),
        .I1(\sr[4]_i_15_n_0 ),
        .I2(\sr[4]_i_16_n_0 ),
        .I3(\badr[15]_INST_0_i_2 [4]),
        .I4(\sr[4]_i_3_0 ),
        .I5(\iv[13]_i_3_n_0 ),
        .O(\sr[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sr[4]_i_8 
       (.I0(\iv[12]_i_4_n_0 ),
        .I1(\iv[14]_i_6_n_0 ),
        .I2(\iv[8]_i_4_n_0 ),
        .O(\sr[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_9 
       (.I0(\iv[7]_i_4_n_0 ),
        .I1(\iv[11]_i_4_n_0 ),
        .I2(\iv[10]_i_4_n_0 ),
        .I3(\iv[13]_i_5_n_0 ),
        .O(\sr[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \sr[5]_i_1 
       (.I0(\sr[7]_i_2_n_0 ),
        .I1(\badr[15]_INST_0_i_2 [5]),
        .I2(\sr[5]_i_2_n_0 ),
        .I3(cbus[5]),
        .I4(\sr[7]_i_5_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00002800)) 
    \sr[5]_i_2 
       (.I0(\sr[7]_i_3_n_0 ),
        .I1(\sr[6]_i_3_n_0 ),
        .I2(\sr[7]_i_6_n_0 ),
        .I3(\sp_reg[4] ),
        .I4(\sr[5]_i_3_n_0 ),
        .I5(\sr[5]_i_4_n_0 ),
        .O(\sr[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sr[5]_i_3 
       (.I0(\stat_reg[2]_6 ),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .O(\sr[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00060900)) 
    \sr[5]_i_4 
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(\iv[13]_i_3_n_0 ),
        .I3(\tr_reg[15]_0 [3]),
        .I4(abus_0[15]),
        .O(\sr[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \sr[6]_i_1 
       (.I0(\sr[7]_i_2_n_0 ),
        .I1(\badr[15]_INST_0_i_2 [6]),
        .I2(\sr[6]_i_2_n_0 ),
        .I3(cbus[6]),
        .I4(\sr[7]_i_5_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0000000077007747)) 
    \sr[6]_i_11 
       (.I0(abus_0[15]),
        .I1(\sp_reg[0] ),
        .I2(\badr[15]_INST_0_i_2 [6]),
        .I3(\iv[7]_i_21_n_0 ),
        .I4(\stat_reg[2]_4 ),
        .I5(\bdatw[12]_INST_0_i_2_2 ),
        .O(\sr[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0808000F0)) 
    \sr[6]_i_2 
       (.I0(tout__1_carry_i_11_n_0),
        .I1(\stat_reg[2]_3 ),
        .I2(\sr[7]_i_3_n_0 ),
        .I3(tout__1_carry_i_8_n_0),
        .I4(\sr_reg[6]_1 ),
        .I5(\sr[6]_i_3_n_0 ),
        .O(\sr[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \sr[6]_i_3 
       (.I0(\sr[6]_i_4_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\sr[5]_i_2_0 ),
        .O(\sr[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF2FFF2FFFFFF00FF)) 
    \sr[6]_i_4 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\sr[6]_i_3_0 ),
        .I2(\sr[6]_i_7_n_0 ),
        .I3(\sp_reg[4] ),
        .I4(\sr[6]_i_3_1 ),
        .I5(\bdatw[11]_INST_0_i_2_0 ),
        .O(\sr[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555044)) 
    \sr[6]_i_7 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(abus_0[14]),
        .I2(abus_0[13]),
        .I3(\sp_reg[0] ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\sr[6]_i_11_n_0 ),
        .O(\sr[6]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \sr[6]_i_9 
       (.I0(abus_0[15]),
        .I1(\iv[14]_i_25_n_0 ),
        .I2(\sp_reg[4] ),
        .O(\bdatw[12]_INST_0_i_2_3 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sr[7]_i_1 
       (.I0(\sr[7]_i_2_n_0 ),
        .I1(\badr[15]_INST_0_i_2 [7]),
        .I2(\sr[7]_i_3_n_0 ),
        .I3(alu_sr_flag),
        .I4(cbus[7]),
        .I5(\sr[7]_i_5_n_0 ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h2202FFFF)) 
    \sr[7]_i_10 
       (.I0(\stat_reg[2]_3 ),
        .I1(\sp_reg[4] ),
        .I2(abus_0[15]),
        .I3(\iv[14]_i_25_n_0 ),
        .I4(\iv[14]_i_3_n_0 ),
        .O(\sr[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \sr[7]_i_11 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(\tr_reg[2]_3 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\sr[7]_i_6_2 ),
        .O(\sr[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \sr[7]_i_13 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(\stat_reg[2]_3 ),
        .I2(abus_0[15]),
        .O(\sr[7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h50507077)) 
    \sr[7]_i_14 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(abus_0[15]),
        .I2(\iv[6]_i_10_n_0 ),
        .I3(abus_0[7]),
        .I4(\stat_reg[2]_3 ),
        .O(\sr[7]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hC0700080)) 
    \sr[7]_i_15 
       (.I0(\stat_reg[2]_3 ),
        .I1(abus_0[15]),
        .I2(\iv[14]_i_12_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_n_0 ),
        .I4(\stat_reg[2]_4 ),
        .O(\sr[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[7]_i_17 
       (.I0(\stat_reg[2]_4 ),
        .I1(abus_0[15]),
        .O(\sr[7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \sr[7]_i_2 
       (.I0(\rgf/cbus_sel_cr [5]),
        .I1(\rgf/cbus_sel_cr [0]),
        .I2(rst_n),
        .I3(ctl_sr_upd),
        .O(\sr[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \sr[7]_i_3 
       (.I0(\rgf/cbus_sel_cr [5]),
        .I1(\rgf/cbus_sel_cr [0]),
        .I2(rst_n),
        .I3(ctl_sr_upd),
        .O(\sr[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \sr[7]_i_4 
       (.I0(\sr[7]_i_6_n_0 ),
        .I1(\sr[7]_i_7_n_0 ),
        .I2(\tr_reg[15]_0 [3]),
        .I3(\iv[13]_i_3_n_0 ),
        .O(alu_sr_flag));
  LUT3 #(
    .INIT(8'hE0)) 
    \sr[7]_i_5 
       (.I0(\rgf/cbus_sel_cr [5]),
        .I1(\rgf/cbus_sel_cr [0]),
        .I2(rst_n),
        .O(\sr[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F02020F000202)) 
    \sr[7]_i_6 
       (.I0(\sr[7]_i_8_n_0 ),
        .I1(\sr[7]_i_9_n_0 ),
        .I2(\sr[7]_i_10_n_0 ),
        .I3(\sr[7]_i_11_n_0 ),
        .I4(\sp_reg[4] ),
        .I5(\sr[4]_i_12_0 ),
        .O(\sr[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0F7FFFFF0F70000)) 
    \sr[7]_i_7 
       (.I0(\stat_reg[2]_3 ),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(\sr[7]_i_13_n_0 ),
        .I3(\sr[7]_i_14_n_0 ),
        .I4(\iv[14]_i_22_n_0 ),
        .I5(\sr[7]_i_15_n_0 ),
        .O(\sr[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h2F)) 
    \sr[7]_i_8 
       (.I0(abus_0[14]),
        .I1(\stat_reg[2]_5 ),
        .I2(\iv[14]_i_25_0 ),
        .O(\sr[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000DD0D)) 
    \sr[7]_i_9 
       (.I0(\iv[14]_i_15_n_0 ),
        .I1(\sr[7]_i_6_0 ),
        .I2(\iv[14]_i_32_n_0 ),
        .I3(\sr[7]_i_6_1 ),
        .I4(\sr[7]_i_17_n_0 ),
        .I5(\iv[12]_i_12_n_0 ),
        .O(\sr[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AABA)) 
    \stat[0]_i_1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(\stat[0]_i_3_n_0 ),
        .I2(\stat_reg[0]_4 ),
        .I3(\stat[0]_i_5_n_0 ),
        .I4(\stat[0]_i_6_n_0 ),
        .I5(ir[15]),
        .O(\sr_reg[6] [0]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \stat[0]_i_10 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(brdy),
        .I3(ir[6]),
        .I4(ir[11]),
        .I5(\stat[0]_i_18_n_0 ),
        .O(\stat[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8C8B000088880000)) 
    \stat[0]_i_11 
       (.I0(\stat[0]_i_19_n_0 ),
        .I1(ir[11]),
        .I2(crdy),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(\bcmd[0]_INST_0_i_7_n_0 ),
        .O(\stat[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAA2A2AAAAA2A2)) 
    \stat[0]_i_12 
       (.I0(Q[0]),
        .I1(\stat[2]_i_13_n_0 ),
        .I2(ir[8]),
        .I3(\badrx[15]_INST_0_i_3_n_0 ),
        .I4(brdy),
        .I5(\ccmd[0]_INST_0_i_24_n_0 ),
        .O(\stat[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hA0AAA0B0AAAAAABB)) 
    \stat[0]_i_13 
       (.I0(\stat[0]_i_20_n_0 ),
        .I1(ctl_fetch_inferred_i_27_n_0),
        .I2(ir[10]),
        .I3(\stat[0]_i_21_n_0 ),
        .I4(ir[11]),
        .I5(\stat[0]_i_22_n_0 ),
        .O(\stat[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[0]_i_14 
       (.I0(ir[9]),
        .I1(Q[0]),
        .O(\stat[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFF00000FFFAFFFE)) 
    \stat[0]_i_15 
       (.I0(brdy),
        .I1(Q[1]),
        .I2(ir[2]),
        .I3(\ccmd[0]_INST_0_i_18_n_0 ),
        .I4(ir[1]),
        .I5(Q[0]),
        .O(\stat[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8888888)) 
    \stat[0]_i_17 
       (.I0(\stat[0]_i_2_0 ),
        .I1(\ccmd[4]_INST_0_i_14_n_0 ),
        .I2(\stat[0]_i_23_n_0 ),
        .I3(\stat[0]_i_24_n_0 ),
        .I4(\stat[0]_i_25_n_0 ),
        .I5(\stat[0]_i_8_0 ),
        .O(\stat[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h040000000400FFFF)) 
    \stat[0]_i_18 
       (.I0(brdy),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(\badrx[15]_INST_0_i_3_n_0 ),
        .I4(\bcmd[1]_INST_0_i_9_n_0 ),
        .I5(crdy),
        .O(\stat[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00C0000000000040)) 
    \stat[0]_i_19 
       (.I0(ir[4]),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(ir[3]),
        .I3(brdy),
        .I4(ir[5]),
        .I5(ir[6]),
        .O(\stat[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F000202)) 
    \stat[0]_i_2 
       (.I0(\stat[0]_i_7_n_0 ),
        .I1(\stat[0]_i_8_n_0 ),
        .I2(ir[14]),
        .I3(\bcmd[2] ),
        .I4(ir[13]),
        .I5(\stat[0]_i_9_n_0 ),
        .O(\stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF75000000)) 
    \stat[0]_i_20 
       (.I0(\stat[0]_i_27_n_0 ),
        .I1(ir[9]),
        .I2(crdy),
        .I3(ir[8]),
        .I4(ir[11]),
        .I5(\stat[0]_i_28_n_0 ),
        .O(\stat[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \stat[0]_i_21 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(brdy),
        .O(\stat[0]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFBBFBBB)) 
    \stat[0]_i_22 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(crdy),
        .I2(ir[7]),
        .I3(ir[9]),
        .I4(ir[8]),
        .O(\stat[0]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00AAD5AA)) 
    \stat[0]_i_23 
       (.I0(ir[1]),
        .I1(\badr[15]_INST_0_i_2 [10]),
        .I2(crdy),
        .I3(ir[2]),
        .I4(Q[0]),
        .O(\stat[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F7F0F00)) 
    \stat[0]_i_24 
       (.I0(ir[0]),
        .I1(\badr[15]_INST_0_i_2 [10]),
        .I2(ir[3]),
        .I3(ir[1]),
        .I4(crdy),
        .I5(\stat[0]_i_17_0 ),
        .O(\stat[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \stat[0]_i_25 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[10]),
        .I3(ir[11]),
        .I4(ir[5]),
        .I5(ir[4]),
        .O(\stat[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FFF7FFF77FF77)) 
    \stat[0]_i_27 
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(brdy),
        .I3(\bcmd[1]_INST_0_i_7_n_0 ),
        .I4(ctl_fetch_inferred_i_15_n_0),
        .I5(ir[3]),
        .O(\stat[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h10101100FFFFFFFF)) 
    \stat[0]_i_28 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[7]),
        .I3(crdy),
        .I4(ir[11]),
        .I5(ir[10]),
        .O(\stat[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    \stat[0]_i_29 
       (.I0(\stat[0]_i_30_n_0 ),
        .I1(ir[4]),
        .I2(ir[0]),
        .I3(ir[3]),
        .I4(\badr[15]_INST_0_i_2 [10]),
        .I5(\stat[0]_i_31_n_0 ),
        .O(\sr_reg[10] ));
  LUT6 #(
    .INIT(64'h32333332FFFFFFFF)) 
    \stat[0]_i_3 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(Q[0]),
        .I3(\badr[15]_INST_0_i_2 [5]),
        .I4(ir[11]),
        .I5(ir[14]),
        .O(\stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA02AAAAAAAAAAAA)) 
    \stat[0]_i_30 
       (.I0(\stat[0]_i_32_n_0 ),
        .I1(Q[1]),
        .I2(crdy),
        .I3(Q[2]),
        .I4(ir[2]),
        .I5(\ccmd[2]_INST_0_i_26_n_0 ),
        .O(\stat[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \stat[0]_i_31 
       (.I0(ir[8]),
        .I1(ir[5]),
        .I2(ir[7]),
        .I3(ir[6]),
        .I4(\ccmd[4]_INST_0_i_18_n_0 ),
        .I5(ir[11]),
        .O(\stat[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFDFDFDFD)) 
    \stat[0]_i_32 
       (.I0(ir[0]),
        .I1(ir[2]),
        .I2(ir[3]),
        .I3(ir[1]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\stat[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0200AAAA02AAAAAA)) 
    \stat[0]_i_5 
       (.I0(\stat[2]_i_16_n_0 ),
        .I1(\stat[0]_i_10_n_0 ),
        .I2(\stat[0]_i_11_n_0 ),
        .I3(\stat[0]_i_12_n_0 ),
        .I4(ir[13]),
        .I5(\stat[0]_i_13_n_0 ),
        .O(\stat[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000800000)) 
    \stat[0]_i_6 
       (.I0(ir[10]),
        .I1(rst_n_fl_reg_0),
        .I2(\stat[0]_i_14_n_0 ),
        .I3(ir[7]),
        .I4(\badr[15]_INST_0_i_2 [11]),
        .I5(ir[11]),
        .O(\stat[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hABBBABBBBBBBABAB)) 
    \stat[0]_i_7 
       (.I0(\stat[0]_i_15_n_0 ),
        .I1(\stat[0]_i_2_0 ),
        .I2(\stat[0]_i_2_1 ),
        .I3(ir[0]),
        .I4(\badr[15]_INST_0_i_1_3 [0]),
        .I5(ir[1]),
        .O(\stat[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00F0F0B0FFFFFFBF)) 
    \stat[0]_i_8 
       (.I0(Q[1]),
        .I1(\stat[0]_i_2_0 ),
        .I2(ir[12]),
        .I3(\badr[15]_INST_0_i_2 [4]),
        .I4(ir[11]),
        .I5(\stat[0]_i_17_n_0 ),
        .O(\stat[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0A22A088)) 
    \stat[0]_i_9 
       (.I0(ir[13]),
        .I1(\badr[15]_INST_0_i_2 [6]),
        .I2(\badr[15]_INST_0_i_2 [7]),
        .I3(ir[12]),
        .I4(ir[11]),
        .O(\stat[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000DD000F00DD)) 
    \stat[1]_i_1 
       (.I0(\stat[1]_i_2_n_0 ),
        .I1(\stat_reg[1]_4 ),
        .I2(\stat[1]_i_3_n_0 ),
        .I3(ir[15]),
        .I4(ir[14]),
        .I5(Q[2]),
        .O(\sr_reg[6] [1]));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[1]_i_10 
       (.I0(ir[0]),
        .I1(ir[3]),
        .O(\stat[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000F2F2F2F2F)) 
    \stat[1]_i_11 
       (.I0(\ccmd[3]_INST_0_i_7_0 ),
        .I1(crdy),
        .I2(\stat[1]_i_15_n_0 ),
        .I3(\badr[15]_INST_0_i_2 [10]),
        .I4(ir[9]),
        .I5(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\stat[1]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \stat[1]_i_12 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(ir[7]),
        .O(\stat[1]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \stat[1]_i_13 
       (.I0(ir[9]),
        .I1(Q[1]),
        .O(\stat[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF050005C0)) 
    \stat[1]_i_14 
       (.I0(\stat[1]_i_16_n_0 ),
        .I1(\ccmd[2]_INST_0_i_30_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(brdy),
        .I5(\stat[2]_i_15_n_0 ),
        .O(\stat[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF3FFFAFFFFFFF)) 
    \stat[1]_i_15 
       (.I0(ir[6]),
        .I1(ir[10]),
        .I2(\stat[1]_i_17_n_0 ),
        .I3(\stat[1]_i_11_0 ),
        .I4(ir[9]),
        .I5(Q[0]),
        .O(\stat[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7777FFFFFF0F)) 
    \stat[1]_i_16 
       (.I0(crdy),
        .I1(\badr[15]_INST_0_i_2 [10]),
        .I2(brdy),
        .I3(ir[6]),
        .I4(ir[9]),
        .I5(ir[8]),
        .O(\stat[1]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[1]_i_17 
       (.I0(ir[7]),
        .I1(ir[8]),
        .O(\stat[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFFFBF)) 
    \stat[1]_i_2 
       (.I0(\stat[1]_i_4_n_0 ),
        .I1(\stat[1]_i_5_n_0 ),
        .I2(Q[0]),
        .I3(ir[11]),
        .I4(Q[1]),
        .I5(\stat_reg[1]_5 ),
        .O(\stat[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00FE)) 
    \stat[1]_i_3 
       (.I0(Q[1]),
        .I1(\stat[1]_i_7_n_0 ),
        .I2(\stat[2]_i_16_n_0 ),
        .I3(\stat[1]_i_8_n_0 ),
        .O(\stat[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5F115511)) 
    \stat[1]_i_4 
       (.I0(\stat[1]_i_9_n_0 ),
        .I1(ir[11]),
        .I2(ir[1]),
        .I3(Q[1]),
        .I4(\stat[1]_i_10_n_0 ),
        .I5(\stat[2]_i_2_n_0 ),
        .O(\stat[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h030003003FBC0C8C)) 
    \stat[1]_i_5 
       (.I0(\badr[15]_INST_0_i_2 [10]),
        .I1(ir[2]),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(brdy),
        .I5(Q[2]),
        .O(\stat[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00FF00F6)) 
    \stat[1]_i_7 
       (.I0(ir[11]),
        .I1(\badr[15]_INST_0_i_2 [5]),
        .I2(Q[0]),
        .I3(ir[12]),
        .I4(ir[13]),
        .O(\stat[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h44004F0044004400)) 
    \stat[1]_i_8 
       (.I0(ir[11]),
        .I1(\stat[1]_i_11_n_0 ),
        .I2(\stat[1]_i_12_n_0 ),
        .I3(\ccmd[2]_INST_0_i_24_n_0 ),
        .I4(\stat[1]_i_13_n_0 ),
        .I5(\stat[1]_i_14_n_0 ),
        .O(\stat[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h02000202AAAAAAAA)) 
    \stat[1]_i_9 
       (.I0(\badr[15]_INST_0_i_107_n_0 ),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(Q[1]),
        .I4(\badr[15]_INST_0_i_2 [10]),
        .I5(ir[3]),
        .O(\stat[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF510000)) 
    \stat[2]_i_1 
       (.I0(\stat[2]_i_2_n_0 ),
        .I1(\stat_reg[2]_8 ),
        .I2(\stat[2]_i_4_n_0 ),
        .I3(\stat_reg[1]_4 ),
        .I4(\stat[2]_i_6_n_0 ),
        .I5(\stat[2]_i_7_n_0 ),
        .O(\sr_reg[6] [2]));
  LUT5 #(
    .INIT(32'hEFFF0000)) 
    \stat[2]_i_10 
       (.I0(ir[13]),
        .I1(Q[0]),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_2 [4]),
        .I4(ir[12]),
        .O(\stat_reg[0]_2 ));
  LUT2 #(
    .INIT(4'h8)) 
    \stat[2]_i_13 
       (.I0(ir[13]),
        .I1(ir[11]),
        .O(\stat[2]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \stat[2]_i_14 
       (.I0(ir[7]),
        .I1(ir[10]),
        .O(\stat[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000001)) 
    \stat[2]_i_15 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(ir[3]),
        .I4(Q[0]),
        .I5(\bcmd[2]_INST_0_i_3_n_0 ),
        .O(\stat[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF96FF14)) 
    \stat[2]_i_16 
       (.I0(\badr[15]_INST_0_i_2 [7]),
        .I1(ir[11]),
        .I2(\badr[15]_INST_0_i_2 [5]),
        .I3(Q[0]),
        .I4(ir[12]),
        .I5(ir[13]),
        .O(\stat[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDDFFCCCC0CCC)) 
    \stat[2]_i_2 
       (.I0(\badr[15]_INST_0_i_2 [6]),
        .I1(ir[12]),
        .I2(\badr[15]_INST_0_i_2 [4]),
        .I3(ir[11]),
        .I4(Q[0]),
        .I5(ir[13]),
        .O(\stat[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002220)) 
    \stat[2]_i_4 
       (.I0(\stat_reg[2]_9 ),
        .I1(\bcmd[0]_INST_0_i_4_n_0 ),
        .I2(ir[0]),
        .I3(Q[0]),
        .I4(ctl_fetch_ext_fl_i_5_n_0),
        .I5(\stat[2]_i_9_n_0 ),
        .O(\stat[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[2]_i_6 
       (.I0(ir[14]),
        .I1(ir[15]),
        .O(\stat[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000080FF)) 
    \stat[2]_i_7 
       (.I0(\stat[2]_i_13_n_0 ),
        .I1(\stat[2]_i_14_n_0 ),
        .I2(\stat[2]_i_15_n_0 ),
        .I3(\stat[2]_i_16_n_0 ),
        .I4(\stat[0]_i_3_n_0 ),
        .I5(\bcmd[1] ),
        .O(\stat[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stat[2]_i_9 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[5]),
        .I3(ir[8]),
        .O(\stat[2]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__0_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(abus_0[6]),
        .O(\badr[6]_INST_0_i_1 [3]));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__0_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(abus_0[5]),
        .O(\badr[6]_INST_0_i_1 [2]));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__0_i_3
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\sp_reg[4] ),
        .I2(abus_0[4]),
        .O(\badr[6]_INST_0_i_1 [1]));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__0_i_4
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(abus_0[3]),
        .O(\badr[6]_INST_0_i_1 [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__0_i_5
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(abus_0[7]),
        .I3(\badr[6]_INST_0_i_1 [3]),
        .O(tout__1_carry__0_i_1_0[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__0_i_6
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(abus_0[6]),
        .I3(\badr[6]_INST_0_i_1 [2]),
        .O(tout__1_carry__0_i_1_0[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__0_i_7
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(abus_0[5]),
        .I3(\badr[6]_INST_0_i_1 [1]),
        .O(tout__1_carry__0_i_1_0[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__0_i_8
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\sp_reg[4] ),
        .I2(abus_0[4]),
        .I3(\badr[6]_INST_0_i_1 [0]),
        .O(tout__1_carry__0_i_1_0[0]));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__1_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[10]_INST_0_i_1_n_0 ),
        .I2(abus_0[10]),
        .O(\badr[10]_INST_0_i_1_0 [3]));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__1_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[9]_INST_0_i_1_n_0 ),
        .I2(abus_0[9]),
        .O(\badr[10]_INST_0_i_1_0 [2]));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__1_i_3
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[8]_INST_0_i_1_n_0 ),
        .I2(abus_0[8]),
        .O(\badr[10]_INST_0_i_1_0 [1]));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__1_i_4
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(abus_0[7]),
        .O(\badr[10]_INST_0_i_1_0 [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__1_i_5
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[11]_INST_0_i_1_n_0 ),
        .I2(abus_0[11]),
        .I3(\badr[10]_INST_0_i_1_0 [3]),
        .O(tout__1_carry__1_i_1_0[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__1_i_6
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[10]_INST_0_i_1_n_0 ),
        .I2(abus_0[10]),
        .I3(\badr[10]_INST_0_i_1_0 [2]),
        .O(tout__1_carry__1_i_1_0[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__1_i_7
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[9]_INST_0_i_1_n_0 ),
        .I2(abus_0[9]),
        .I3(\badr[10]_INST_0_i_1_0 [1]),
        .O(tout__1_carry__1_i_1_0[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__1_i_8
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[8]_INST_0_i_1_n_0 ),
        .I2(abus_0[8]),
        .I3(\badr[10]_INST_0_i_1_0 [0]),
        .O(tout__1_carry__1_i_1_0[0]));
  LUT3 #(
    .INIT(8'h96)) 
    tout__1_carry__2_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(abus_0[15]),
        .O(\badr[15]_INST_0_i_1_0 [3]));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__2_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_1_n_0 ),
        .I2(abus_0[13]),
        .O(\badr[15]_INST_0_i_1_0 [2]));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__2_i_3
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[12]_INST_0_i_1_n_0 ),
        .I2(abus_0[12]),
        .O(\badr[15]_INST_0_i_1_0 [1]));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__2_i_4
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[11]_INST_0_i_1_n_0 ),
        .I2(abus_0[11]),
        .O(\badr[15]_INST_0_i_1_0 [0]));
  LUT5 #(
    .INIT(32'hC33C9696)) 
    tout__1_carry__2_i_5
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(abus_0[15]),
        .I3(\bdatw[14]_INST_0_i_1_n_0 ),
        .I4(abus_0[14]),
        .O(\badr[14]_INST_0_i_1_0 [3]));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__2_i_6
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[14]_INST_0_i_1_n_0 ),
        .I2(\badr[15]_INST_0_i_1_0 [2]),
        .I3(abus_0[14]),
        .O(\badr[14]_INST_0_i_1_0 [2]));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__2_i_7
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_1_n_0 ),
        .I2(abus_0[13]),
        .I3(\badr[15]_INST_0_i_1_0 [1]),
        .O(\badr[14]_INST_0_i_1_0 [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__2_i_8
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[12]_INST_0_i_1_n_0 ),
        .I2(abus_0[12]),
        .I3(\badr[15]_INST_0_i_1_0 [0]),
        .O(\badr[14]_INST_0_i_1_0 [0]));
  LUT3 #(
    .INIT(8'h6F)) 
    tout__1_carry__3_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(abus_0[15]),
        .O(\badr[15]_INST_0_i_1_1 ));
  LUT3 #(
    .INIT(8'h69)) 
    tout__1_carry__3_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(abus_0[15]),
        .O(\badr[15]_INST_0_i_1_2 [1]));
  LUT3 #(
    .INIT(8'hF6)) 
    tout__1_carry__3_i_3
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(abus_0[15]),
        .O(\badr[15]_INST_0_i_1_2 [0]));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(abus_0[2]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'h0000000055551101)) 
    tout__1_carry_i_10
       (.I0(\stat_reg[2]_6 ),
        .I1(tout__1_carry_i_14_n_0),
        .I2(\ccmd[0]_INST_0_i_3_n_0 ),
        .I3(\ccmd[0]_INST_0_i_4_n_0 ),
        .I4(tout__1_carry_i_15_n_0),
        .I5(Q[2]),
        .O(\stat_reg[2]_3 ));
  LUT3 #(
    .INIT(8'h01)) 
    tout__1_carry_i_11
       (.I0(\sr[5]_i_3_n_0 ),
        .I1(\iv[14]_i_22_n_0 ),
        .I2(\iv[14]_i_12_n_0 ),
        .O(tout__1_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tout__1_carry_i_12
       (.I0(\sp_reg[0] ),
        .I1(tout__1_carry_i_8_n_0),
        .O(tout__1_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hBFFFBFFFBFFFBFAA)) 
    tout__1_carry_i_13
       (.I0(Q[2]),
        .I1(\ccmd[0]_INST_0_i_7_n_0 ),
        .I2(\ccmd[0]_INST_0_i_6_n_0 ),
        .I3(\ccmd[0]_INST_0_i_5_n_0 ),
        .I4(tout__1_carry_i_16_n_0),
        .I5(\ccmd[0]_INST_0_i_2_n_0 ),
        .O(tout__1_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hBABABABABAAABABA)) 
    tout__1_carry_i_14
       (.I0(\ccmd[0]_INST_0_i_5_n_0 ),
        .I1(\ccmd[0]_INST_0_i_9_n_0 ),
        .I2(\ccmd[0]_INST_0_i_4_n_0 ),
        .I3(\ccmd[0]_INST_0_i_8_n_0 ),
        .I4(\ccmd[2]_INST_0_i_11_n_0 ),
        .I5(tout__1_carry_i_17_n_0),
        .O(tout__1_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'hAAEA000000000000)) 
    tout__1_carry_i_15
       (.I0(tout__1_carry_i_18_n_0),
        .I1(ir[10]),
        .I2(rst_n_fl_reg_0),
        .I3(\ccmd[0]_INST_0_i_15_n_0 ),
        .I4(\ccmd[0]_INST_0_i_6_n_0 ),
        .I5(\ccmd[0]_INST_0_i_5_n_0 ),
        .O(tout__1_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFF5F4)) 
    tout__1_carry_i_16
       (.I0(ir[12]),
        .I1(ir[11]),
        .I2(ir[15]),
        .I3(tout__1_carry_i_19_n_0),
        .I4(\ccmd[0]_INST_0_i_10_n_0 ),
        .I5(\ccmd[0]_INST_0_i_4_n_0 ),
        .O(tout__1_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tout__1_carry_i_17
       (.I0(ir[4]),
        .I1(ir[5]),
        .O(tout__1_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    tout__1_carry_i_18
       (.I0(\ccmd[0]_INST_0_i_18_n_0 ),
        .I1(ir[10]),
        .I2(\ccmd[0]_INST_0_i_17_n_0 ),
        .I3(tout__1_carry_i_20_n_0),
        .I4(\ccmd[2]_INST_0_i_14_n_0 ),
        .I5(tout__1_carry_i_21_n_0),
        .O(tout__1_carry_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tout__1_carry_i_19
       (.I0(ir[14]),
        .I1(Q[1]),
        .O(tout__1_carry_i_19_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\sp_reg[1] ),
        .I2(abus_0[1]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'hE)) 
    tout__1_carry_i_20
       (.I0(ir[13]),
        .I1(ir[14]),
        .O(tout__1_carry_i_20_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    tout__1_carry_i_21
       (.I0(ir[7]),
        .I1(ir[5]),
        .I2(ir[4]),
        .O(tout__1_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'hFFFFA03FA03F0000)) 
    tout__1_carry_i_3
       (.I0(\stat_reg[2]_4 ),
        .I1(\stat_reg[2]_3 ),
        .I2(tout__1_carry_i_11_n_0),
        .I3(\badr[15]_INST_0_i_2 [6]),
        .I4(tout__1_carry_i_12_n_0),
        .I5(abus_0[0]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry_i_4
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(abus_0[3]),
        .I3(DI[2]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry_i_5
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(abus_0[2]),
        .I3(DI[1]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry_i_6
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\sp_reg[1] ),
        .I2(abus_0[1]),
        .I3(DI[0]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hA03F5FC05FC0A03F)) 
    tout__1_carry_i_7
       (.I0(\stat_reg[2]_4 ),
        .I1(\stat_reg[2]_3 ),
        .I2(tout__1_carry_i_11_n_0),
        .I3(\badr[15]_INST_0_i_2 [6]),
        .I4(abus_0[0]),
        .I5(tout__1_carry_i_12_n_0),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hEEFEEEFEEEFFFFFF)) 
    tout__1_carry_i_8
       (.I0(\sr[5]_i_3_n_0 ),
        .I1(\iv[14]_i_22_n_0 ),
        .I2(\iv[6]_i_10_n_0 ),
        .I3(\iv[14]_i_11_n_0 ),
        .I4(\stat_reg[2]_6 ),
        .I5(tout__1_carry_i_13_n_0),
        .O(tout__1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tout__1_carry_i_9
       (.I0(\stat_reg[2]_6 ),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .O(\stat_reg[2]_4 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \tr[15]_i_1 
       (.I0(ctl_selc),
        .I1(\iv[15]_i_4_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .O(\stat_reg[1]_3 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \tr[15]_i_2 
       (.I0(\stat_reg[1] ),
        .I1(ctl_selc_rn),
        .O(\tr[15]_i_2_n_0 ));
endmodule

module mcvm_fsm
   (\stat_reg[1]_0 ,
    ctl_selc_rn,
    \stat_reg[1]_1 ,
    \stat_reg[1]_2 ,
    \stat_reg[2]_0 ,
    \stat_reg[1]_3 ,
    \stat_reg[0]_0 ,
    \stat_reg[0]_1 ,
    Q,
    \stat_reg[1]_4 ,
    \stat_reg[1]_5 ,
    \stat_reg[0]_2 ,
    \stat_reg[2]_1 ,
    \stat_reg[1]_6 ,
    \stat_reg[0]_3 ,
    \stat_reg[2]_2 ,
    \stat_reg[1]_7 ,
    \stat_reg[2]_3 ,
    \stat_reg[2]_4 ,
    \stat_reg[0]_4 ,
    \stat_reg[0]_5 ,
    crdy_0,
    \stat_reg[1]_8 ,
    \stat_reg[0]_6 ,
    \stat_reg[1]_9 ,
    \stat_reg[1]_10 ,
    \stat_reg[2]_5 ,
    brdy_0,
    \stat_reg[1]_11 ,
    \grn_reg[15] ,
    \tr[15]_i_2 ,
    \tr[15]_i_2_0 ,
    \tr[15]_i_2_1 ,
    \stat_reg[1]_12 ,
    out,
    \bcmd[1] ,
    \iv[15]_i_52 ,
    \bdatw[15]_INST_0_i_4 ,
    \ccmd[2] ,
    fch_irq_req,
    \stat[0]_i_17 ,
    brdy,
    crdy,
    SR,
    D,
    clk);
  output \stat_reg[1]_0 ;
  output [0:0]ctl_selc_rn;
  output \stat_reg[1]_1 ;
  output \stat_reg[1]_2 ;
  output \stat_reg[2]_0 ;
  output \stat_reg[1]_3 ;
  output \stat_reg[0]_0 ;
  output \stat_reg[0]_1 ;
  output [2:0]Q;
  output \stat_reg[1]_4 ;
  output \stat_reg[1]_5 ;
  output \stat_reg[0]_2 ;
  output \stat_reg[2]_1 ;
  output \stat_reg[1]_6 ;
  output \stat_reg[0]_3 ;
  output \stat_reg[2]_2 ;
  output \stat_reg[1]_7 ;
  output \stat_reg[2]_3 ;
  output \stat_reg[2]_4 ;
  output \stat_reg[0]_4 ;
  output \stat_reg[0]_5 ;
  output crdy_0;
  output \stat_reg[1]_8 ;
  output \stat_reg[0]_6 ;
  output \stat_reg[1]_9 ;
  output \stat_reg[1]_10 ;
  output \stat_reg[2]_5 ;
  output brdy_0;
  output \stat_reg[1]_11 ;
  input [0:0]\grn_reg[15] ;
  input \tr[15]_i_2 ;
  input \tr[15]_i_2_0 ;
  input \tr[15]_i_2_1 ;
  input \stat_reg[1]_12 ;
  input [2:0]out;
  input [9:0]\bcmd[1] ;
  input \iv[15]_i_52 ;
  input \bdatw[15]_INST_0_i_4 ;
  input \ccmd[2] ;
  input fch_irq_req;
  input \stat[0]_i_17 ;
  input brdy;
  input crdy;
  input [0:0]SR;
  input [2:0]D;
  input clk;

  wire \<const1> ;
  wire [2:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [9:0]\bcmd[1] ;
  wire \bdatw[15]_INST_0_i_4 ;
  wire brdy;
  wire brdy_0;
  wire \ccmd[2] ;
  wire clk;
  wire crdy;
  wire crdy_0;
  wire [0:0]ctl_selc_rn;
  wire fch_irq_req;
  wire [0:0]\grn_reg[15] ;
  wire \iv[15]_i_52 ;
  wire [2:0]out;
  wire \stat[0]_i_17 ;
  wire \stat[2]_i_11_n_0 ;
  wire \stat[2]_i_12_n_0 ;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[0]_2 ;
  wire \stat_reg[0]_3 ;
  wire \stat_reg[0]_4 ;
  wire \stat_reg[0]_5 ;
  wire \stat_reg[0]_6 ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;
  wire \stat_reg[1]_10 ;
  wire \stat_reg[1]_11 ;
  wire \stat_reg[1]_12 ;
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
  wire \tr[15]_i_2 ;
  wire \tr[15]_i_2_0 ;
  wire \tr[15]_i_2_1 ;

  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'hB)) 
    \badr[15]_INST_0_i_173 
       (.I0(Q[0]),
        .I1(crdy),
        .O(\stat_reg[0]_5 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bcmd[1]_INST_0_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\bcmd[1] [9]),
        .O(\stat_reg[1]_6 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bcmd[2]_INST_0_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\stat_reg[1]_4 ));
  LUT6 #(
    .INIT(64'hA8AAAA80AAAAAAAA)) 
    \bdatw[15]_INST_0_i_19 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\bcmd[1] [8]),
        .I4(\bcmd[1] [7]),
        .I5(\bdatw[15]_INST_0_i_4 ),
        .O(\stat_reg[0]_2 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[1]_INST_0_i_8 
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(\stat_reg[0]_4 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[2]_INST_0_i_1 
       (.I0(Q[2]),
        .I1(\ccmd[2] ),
        .O(\stat_reg[2]_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \ccmd[2]_INST_0_i_8 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\bcmd[1] [9]),
        .O(\stat_reg[1]_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[3]_INST_0_i_17 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\stat_reg[1]_9 ));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_ext_fl_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\stat_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    ctl_fetch_ext_fl_i_4
       (.I0(Q[2]),
        .I1(\bcmd[1] [1]),
        .O(\stat_reg[2]_5 ));
  LUT2 #(
    .INIT(4'h1)) 
    \grn[15]_i_2 
       (.I0(ctl_selc_rn),
        .I1(\grn_reg[15] ),
        .O(\stat_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \grn[15]_i_2__0 
       (.I0(ctl_selc_rn),
        .I1(\grn_reg[15] ),
        .O(\stat_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h4544555545444544)) 
    \iv[15]_i_18 
       (.I0(\stat_reg[2]_0 ),
        .I1(\tr[15]_i_2 ),
        .I2(\tr[15]_i_2_0 ),
        .I3(\stat_reg[1]_3 ),
        .I4(\tr[15]_i_2_1 ),
        .I5(\stat_reg[0]_0 ),
        .O(ctl_selc_rn));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_29 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\stat_reg[0]_6 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_40 
       (.I0(Q[1]),
        .I1(\bcmd[1] [9]),
        .O(\stat_reg[1]_8 ));
  LUT3 #(
    .INIT(8'h10)) 
    \iv[15]_i_42 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\bcmd[1] [5]),
        .O(\stat_reg[1]_11 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_6 
       (.I0(ctl_selc_rn),
        .I1(\grn_reg[15] ),
        .O(\stat_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \iv[15]_i_89 
       (.I0(\iv[15]_i_52 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\bcmd[1] [9]),
        .I4(Q[2]),
        .O(\stat_reg[1]_5 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \sp[15]_i_9 
       (.I0(Q[1]),
        .I1(\bcmd[1] [9]),
        .I2(Q[2]),
        .I3(brdy),
        .O(\stat_reg[1]_10 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[13]_i_8 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\bcmd[1] [3]),
        .I3(\bcmd[1] [4]),
        .O(\stat_reg[2]_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[0]_i_16 
       (.I0(brdy),
        .I1(Q[2]),
        .O(brdy_0));
  LUT6 #(
    .INIT(64'h00000000ABFFABFE)) 
    \stat[0]_i_26 
       (.I0(Q[2]),
        .I1(\bcmd[1] [2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(fch_irq_req),
        .I5(\stat[0]_i_17 ),
        .O(\stat_reg[2]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[0]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\stat_reg[1]_7 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[1]_i_18 
       (.I0(crdy),
        .I1(Q[1]),
        .O(crdy_0));
  LUT6 #(
    .INIT(64'h1111111101100000)) 
    \stat[1]_i_6 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\bcmd[1] [2]),
        .I3(\bcmd[1] [0]),
        .I4(Q[1]),
        .I5(\bcmd[1] [6]),
        .O(\stat_reg[2]_3 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \stat[2]_i_11 
       (.I0(out[1]),
        .I1(\bcmd[1] [7]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\bcmd[1] [6]),
        .I5(Q[1]),
        .O(\stat[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4400000400440004)) 
    \stat[2]_i_12 
       (.I0(Q[2]),
        .I1(\stat_reg[0]_0 ),
        .I2(out[0]),
        .I3(\bcmd[1] [6]),
        .I4(\bcmd[1] [7]),
        .I5(out[2]),
        .O(\stat[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \stat[2]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bcmd[1] [6]),
        .O(\stat_reg[2]_4 ));
  LUT6 #(
    .INIT(64'h004000F0000CF000)) 
    \stat[2]_i_8 
       (.I0(Q[0]),
        .I1(brdy),
        .I2(\bcmd[1] [0]),
        .I3(Q[2]),
        .I4(\bcmd[1] [1]),
        .I5(Q[1]),
        .O(\stat_reg[0]_3 ));
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
  MUXF7 \stat_reg[2]_i_5 
       (.I0(\stat[2]_i_11_n_0 ),
        .I1(\stat[2]_i_12_n_0 ),
        .O(\stat_reg[0]_1 ),
        .S(\stat_reg[1]_12 ));
endmodule

module mcvm_mem
   (.cbus_i_0_sp_1(cbus_i_0_sn_1),
    read_cyc,
    .cbus_i_1_sp_1(cbus_i_1_sn_1),
    .cbus_i_3_sp_1(cbus_i_3_sn_1),
    .bdatr_4_sp_1(bdatr_4_sn_1),
    .bdatr_5_sp_1(bdatr_5_sn_1),
    .cbus_i_6_sp_1(cbus_i_6_sn_1),
    .cbus_i_7_sp_1(cbus_i_7_sn_1),
    .cbus_i_8_sp_1(cbus_i_8_sn_1),
    .cbus_i_9_sp_1(cbus_i_9_sn_1),
    .cbus_i_10_sp_1(cbus_i_10_sn_1),
    \read_cyc_reg[1] ,
    \read_cyc_reg[1]_0 ,
    \cbus_i[13] ,
    \read_cyc_reg[1]_1 ,
    .bdatr_10_sp_1(bdatr_10_sn_1),
    \tr_reg[13] ,
    cbus_i,
    bdatr,
    bcmd,
    brdy,
    SR,
    clk,
    \read_cyc_reg[0] );
  output [2:0]read_cyc;
  output \read_cyc_reg[1] ;
  output \read_cyc_reg[1]_0 ;
  output \cbus_i[13] ;
  output \read_cyc_reg[1]_1 ;
  input \tr_reg[13] ;
  input [12:0]cbus_i;
  input [15:0]bdatr;
  input [1:0]bcmd;
  input brdy;
  input [0:0]SR;
  input clk;
  input \read_cyc_reg[0] ;
  output cbus_i_0_sn_1;
  output cbus_i_1_sn_1;
  output cbus_i_3_sn_1;
  output bdatr_4_sn_1;
  output bdatr_5_sn_1;
  output cbus_i_6_sn_1;
  output cbus_i_7_sn_1;
  output cbus_i_8_sn_1;
  output cbus_i_9_sn_1;
  output cbus_i_10_sn_1;
  output bdatr_10_sn_1;

  wire [0:0]SR;
  wire [1:0]bcmd;
  wire [15:0]bdatr;
  wire bdatr_10_sn_1;
  wire bdatr_4_sn_1;
  wire bdatr_5_sn_1;
  wire brdy;
  wire [12:0]cbus_i;
  wire \cbus_i[13] ;
  wire cbus_i_0_sn_1;
  wire cbus_i_10_sn_1;
  wire cbus_i_1_sn_1;
  wire cbus_i_3_sn_1;
  wire cbus_i_6_sn_1;
  wire cbus_i_7_sn_1;
  wire cbus_i_8_sn_1;
  wire cbus_i_9_sn_1;
  wire clk;
  wire [2:0]read_cyc;
  wire \read_cyc_reg[0] ;
  wire \read_cyc_reg[1] ;
  wire \read_cyc_reg[1]_0 ;
  wire \read_cyc_reg[1]_1 ;
  wire \tr_reg[13] ;

  mcvm_mem_bctl bctl
       (.SR(SR),
        .bcmd(bcmd),
        .bdatr(bdatr),
        .bdatr_10_sp_1(bdatr_10_sn_1),
        .bdatr_4_sp_1(bdatr_4_sn_1),
        .bdatr_5_sp_1(bdatr_5_sn_1),
        .brdy(brdy),
        .cbus_i(cbus_i),
        .\cbus_i[13] (\cbus_i[13] ),
        .cbus_i_0_sp_1(cbus_i_0_sn_1),
        .cbus_i_10_sp_1(cbus_i_10_sn_1),
        .cbus_i_1_sp_1(cbus_i_1_sn_1),
        .cbus_i_3_sp_1(cbus_i_3_sn_1),
        .cbus_i_6_sp_1(cbus_i_6_sn_1),
        .cbus_i_7_sp_1(cbus_i_7_sn_1),
        .cbus_i_8_sp_1(cbus_i_8_sn_1),
        .cbus_i_9_sp_1(cbus_i_9_sn_1),
        .clk(clk),
        .read_cyc(read_cyc[0]),
        .\read_cyc_reg[0]_0 (\read_cyc_reg[0] ),
        .\read_cyc_reg[1]_0 (read_cyc[1]),
        .\read_cyc_reg[1]_1 (\read_cyc_reg[1] ),
        .\read_cyc_reg[1]_2 (\read_cyc_reg[1]_0 ),
        .\read_cyc_reg[1]_3 (\read_cyc_reg[1]_1 ),
        .\read_cyc_reg[2]_0 (read_cyc[2]),
        .\tr_reg[13] (\tr_reg[13] ));
endmodule

module mcvm_mem_bctl
   (.cbus_i_0_sp_1(cbus_i_0_sn_1),
    \read_cyc_reg[2]_0 ,
    .cbus_i_1_sp_1(cbus_i_1_sn_1),
    .cbus_i_3_sp_1(cbus_i_3_sn_1),
    .bdatr_4_sp_1(bdatr_4_sn_1),
    .bdatr_5_sp_1(bdatr_5_sn_1),
    .cbus_i_6_sp_1(cbus_i_6_sn_1),
    .cbus_i_7_sp_1(cbus_i_7_sn_1),
    .cbus_i_8_sp_1(cbus_i_8_sn_1),
    \read_cyc_reg[1]_0 ,
    .cbus_i_9_sp_1(cbus_i_9_sn_1),
    .cbus_i_10_sp_1(cbus_i_10_sn_1),
    \read_cyc_reg[1]_1 ,
    \read_cyc_reg[1]_2 ,
    \cbus_i[13] ,
    \read_cyc_reg[1]_3 ,
    .bdatr_10_sp_1(bdatr_10_sn_1),
    read_cyc,
    \tr_reg[13] ,
    cbus_i,
    bdatr,
    bcmd,
    brdy,
    SR,
    clk,
    \read_cyc_reg[0]_0 );
  output \read_cyc_reg[2]_0 ;
  output \read_cyc_reg[1]_0 ;
  output \read_cyc_reg[1]_1 ;
  output \read_cyc_reg[1]_2 ;
  output \cbus_i[13] ;
  output \read_cyc_reg[1]_3 ;
  output [0:0]read_cyc;
  input \tr_reg[13] ;
  input [12:0]cbus_i;
  input [15:0]bdatr;
  input [1:0]bcmd;
  input brdy;
  input [0:0]SR;
  input clk;
  input \read_cyc_reg[0]_0 ;
  output cbus_i_0_sn_1;
  output cbus_i_1_sn_1;
  output cbus_i_3_sn_1;
  output bdatr_4_sn_1;
  output bdatr_5_sn_1;
  output cbus_i_6_sn_1;
  output cbus_i_7_sn_1;
  output cbus_i_8_sn_1;
  output cbus_i_9_sn_1;
  output cbus_i_10_sn_1;
  output bdatr_10_sn_1;

  wire \<const1> ;
  wire [0:0]SR;
  wire [1:0]bcmd;
  wire [15:0]bdatr;
  wire bdatr_10_sn_1;
  wire bdatr_4_sn_1;
  wire bdatr_5_sn_1;
  wire brdy;
  wire [12:0]cbus_i;
  wire \cbus_i[13] ;
  wire cbus_i_0_sn_1;
  wire cbus_i_10_sn_1;
  wire cbus_i_1_sn_1;
  wire cbus_i_3_sn_1;
  wire cbus_i_6_sn_1;
  wire cbus_i_7_sn_1;
  wire cbus_i_8_sn_1;
  wire cbus_i_9_sn_1;
  wire clk;
  wire \iv[7]_i_10_n_0 ;
  wire [0:0]read_cyc;
  wire \read_cyc[1]_i_1_n_0 ;
  wire \read_cyc[2]_i_1_n_0 ;
  wire \read_cyc_reg[0]_0 ;
  wire \read_cyc_reg[1]_0 ;
  wire \read_cyc_reg[1]_1 ;
  wire \read_cyc_reg[1]_2 ;
  wire \read_cyc_reg[1]_3 ;
  wire \read_cyc_reg[2]_0 ;
  wire \tr_reg[13] ;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFF8F8888F8888888)) 
    \iv[0]_i_3 
       (.I0(\tr_reg[13] ),
        .I1(cbus_i[0]),
        .I2(\iv[7]_i_10_n_0 ),
        .I3(bdatr[8]),
        .I4(\read_cyc_reg[2]_0 ),
        .I5(bdatr[0]),
        .O(cbus_i_0_sn_1));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \iv[10]_i_3 
       (.I0(\tr_reg[13] ),
        .I1(cbus_i[9]),
        .I2(\read_cyc_reg[1]_0 ),
        .I3(\read_cyc_reg[2]_0 ),
        .I4(bdatr[10]),
        .O(cbus_i_10_sn_1));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[11]_i_3 
       (.I0(\read_cyc_reg[1]_0 ),
        .I1(\read_cyc_reg[2]_0 ),
        .I2(bdatr[11]),
        .I3(\tr_reg[13] ),
        .I4(cbus_i[10]),
        .O(\read_cyc_reg[1]_1 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[12]_i_3 
       (.I0(\read_cyc_reg[1]_0 ),
        .I1(\read_cyc_reg[2]_0 ),
        .I2(bdatr[12]),
        .I3(\tr_reg[13] ),
        .I4(cbus_i[11]),
        .O(\read_cyc_reg[1]_2 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \iv[13]_i_4 
       (.I0(\tr_reg[13] ),
        .I1(cbus_i[12]),
        .I2(\read_cyc_reg[1]_0 ),
        .I3(\read_cyc_reg[2]_0 ),
        .I4(bdatr[13]),
        .O(\cbus_i[13] ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[14]_i_17 
       (.I0(\read_cyc_reg[1]_0 ),
        .I1(\read_cyc_reg[2]_0 ),
        .O(\read_cyc_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hFF8F8888F8888888)) 
    \iv[1]_i_3 
       (.I0(\tr_reg[13] ),
        .I1(cbus_i[1]),
        .I2(\iv[7]_i_10_n_0 ),
        .I3(bdatr[9]),
        .I4(\read_cyc_reg[2]_0 ),
        .I5(bdatr[1]),
        .O(cbus_i_1_sn_1));
  LUT5 #(
    .INIT(32'hEF002000)) 
    \iv[2]_i_20 
       (.I0(bdatr[10]),
        .I1(read_cyc),
        .I2(\read_cyc_reg[1]_0 ),
        .I3(\read_cyc_reg[2]_0 ),
        .I4(bdatr[2]),
        .O(bdatr_10_sn_1));
  LUT6 #(
    .INIT(64'hFF8F8888F8888888)) 
    \iv[3]_i_3 
       (.I0(\tr_reg[13] ),
        .I1(cbus_i[2]),
        .I2(\iv[7]_i_10_n_0 ),
        .I3(bdatr[11]),
        .I4(\read_cyc_reg[2]_0 ),
        .I5(bdatr[3]),
        .O(cbus_i_3_sn_1));
  LUT6 #(
    .INIT(64'hFFFFE040E040E040)) 
    \iv[4]_i_3 
       (.I0(\iv[7]_i_10_n_0 ),
        .I1(bdatr[4]),
        .I2(\read_cyc_reg[2]_0 ),
        .I3(bdatr[12]),
        .I4(\tr_reg[13] ),
        .I5(cbus_i[3]),
        .O(bdatr_4_sn_1));
  LUT6 #(
    .INIT(64'hFFFFC808C808C808)) 
    \iv[5]_i_3 
       (.I0(bdatr[5]),
        .I1(\read_cyc_reg[2]_0 ),
        .I2(\iv[7]_i_10_n_0 ),
        .I3(bdatr[13]),
        .I4(\tr_reg[13] ),
        .I5(cbus_i[4]),
        .O(bdatr_5_sn_1));
  LUT6 #(
    .INIT(64'hFF88F8888888F888)) 
    \iv[6]_i_3 
       (.I0(\tr_reg[13] ),
        .I1(cbus_i[5]),
        .I2(bdatr[6]),
        .I3(\read_cyc_reg[2]_0 ),
        .I4(\iv[7]_i_10_n_0 ),
        .I5(bdatr[14]),
        .O(cbus_i_6_sn_1));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[7]_i_10 
       (.I0(\read_cyc_reg[1]_0 ),
        .I1(read_cyc),
        .O(\iv[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF88F8888888F888)) 
    \iv[7]_i_3 
       (.I0(\tr_reg[13] ),
        .I1(cbus_i[6]),
        .I2(bdatr[7]),
        .I3(\read_cyc_reg[2]_0 ),
        .I4(\iv[7]_i_10_n_0 ),
        .I5(bdatr[15]),
        .O(cbus_i_7_sn_1));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \iv[8]_i_3 
       (.I0(\tr_reg[13] ),
        .I1(cbus_i[7]),
        .I2(\read_cyc_reg[1]_0 ),
        .I3(\read_cyc_reg[2]_0 ),
        .I4(bdatr[8]),
        .O(cbus_i_8_sn_1));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \iv[9]_i_3 
       (.I0(\tr_reg[13] ),
        .I1(cbus_i[8]),
        .I2(\read_cyc_reg[1]_0 ),
        .I3(\read_cyc_reg[2]_0 ),
        .I4(bdatr[9]),
        .O(cbus_i_9_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \read_cyc[1]_i_1 
       (.I0(bcmd[1]),
        .I1(brdy),
        .I2(\read_cyc_reg[1]_0 ),
        .O(\read_cyc[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \read_cyc[2]_i_1 
       (.I0(bcmd[0]),
        .I1(brdy),
        .I2(\read_cyc_reg[2]_0 ),
        .O(\read_cyc[2]_i_1_n_0 ));
  FDRE \read_cyc_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\read_cyc_reg[0]_0 ),
        .Q(read_cyc),
        .R(SR));
  FDRE \read_cyc_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\read_cyc[1]_i_1_n_0 ),
        .Q(\read_cyc_reg[1]_0 ),
        .R(SR));
  FDRE \read_cyc_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\read_cyc[2]_i_1_n_0 ),
        .Q(\read_cyc_reg[2]_0 ),
        .R(SR));
endmodule

module mcvm_rgf
   (out,
    \grn_reg[15] ,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    \grn_reg[15]_2 ,
    \grn_reg[15]_3 ,
    \grn_reg[15]_4 ,
    \grn_reg[15]_5 ,
    \grn_reg[4] ,
    \grn_reg[4]_0 ,
    \grn_reg[4]_1 ,
    \grn_reg[4]_2 ,
    \grn_reg[4]_3 ,
    \grn_reg[4]_4 ,
    \grn_reg[4]_5 ,
    \grn_reg[4]_6 ,
    \grn_reg[4]_7 ,
    \grn_reg[4]_8 ,
    \grn_reg[4]_9 ,
    \grn_reg[4]_10 ,
    \grn_reg[4]_11 ,
    \grn_reg[4]_12 ,
    \grn_reg[4]_13 ,
    \grn_reg[4]_14 ,
    \grn_reg[4]_15 ,
    \grn_reg[4]_16 ,
    \grn_reg[4]_17 ,
    \grn_reg[4]_18 ,
    \sr_reg[15] ,
    fadr,
    \sp_reg[15] ,
    \iv_reg[15] ,
    \tr_reg[15] ,
    sp_dec_0,
    \sp_reg[3] ,
    \sp_reg[1] ,
    \sp_reg[7] ,
    \sp_reg[11] ,
    \sp_reg[15]_0 ,
    \grn_reg[4]_19 ,
    \grn_reg[5] ,
    \grn_reg[6] ,
    \grn_reg[7] ,
    \grn_reg[8] ,
    \grn_reg[9] ,
    \grn_reg[10] ,
    \grn_reg[11] ,
    \grn_reg[12] ,
    \grn_reg[13] ,
    \grn_reg[14] ,
    \grn_reg[15]_6 ,
    abus_0,
    bank_sel,
    \grn_reg[5]_0 ,
    \grn_reg[6]_0 ,
    \grn_reg[7]_0 ,
    \grn_reg[8]_0 ,
    \grn_reg[9]_0 ,
    \grn_reg[10]_0 ,
    \grn_reg[11]_0 ,
    \grn_reg[12]_0 ,
    \grn_reg[13]_0 ,
    \grn_reg[14]_0 ,
    \grn_reg[15]_7 ,
    \grn_reg[0] ,
    \grn_reg[1] ,
    \grn_reg[2] ,
    \grn_reg[3] ,
    \grn_reg[4]_20 ,
    \grn_reg[0]_0 ,
    \grn_reg[1]_0 ,
    \grn_reg[2]_0 ,
    \grn_reg[3]_0 ,
    \grn_reg[4]_21 ,
    SR,
    \sr_reg[6] ,
    \iv[10]_i_30 ,
    \sr_reg[6]_0 ,
    \bdatw[8]_INST_0_i_2 ,
    \sr_reg[6]_1 ,
    \sr_reg[6]_2 ,
    \sr_reg[6]_3 ,
    \badr[15]_INST_0_i_1 ,
    \sr_reg[6]_4 ,
    \badr[1]_INST_0_i_1 ,
    \sr_reg[6]_5 ,
    \iv[14]_i_39 ,
    \badr[12]_INST_0_i_1 ,
    \sr_reg[6]_6 ,
    \badr[13]_INST_0_i_1 ,
    \iv[14]_i_29 ,
    \sr_reg[6]_7 ,
    \iv[13]_i_36 ,
    \badr[11]_INST_0_i_1 ,
    \stat_reg[2] ,
    \iv[13]_i_23 ,
    \iv[13]_i_27 ,
    \stat_reg[2]_0 ,
    \iv[5]_i_15 ,
    \iv[13]_i_36_0 ,
    \sr_reg[6]_8 ,
    \stat_reg[2]_1 ,
    \iv[11]_i_25 ,
    \sr[6]_i_10 ,
    \iv[7]_i_18 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \bdatw[8]_INST_0_i_2_1 ,
    \bdatw[8]_INST_0_i_2_2 ,
    \sr_reg[6]_9 ,
    \iv[13]_i_31 ,
    \iv[13]_i_32 ,
    \iv[13]_i_33 ,
    \sr_reg[6]_10 ,
    \sr_reg[6]_11 ,
    \iv[2]_i_8 ,
    \badr[5]_INST_0_i_1 ,
    \badr[7]_INST_0_i_1 ,
    \badr[9]_INST_0_i_1 ,
    \iv[2]_i_8_0 ,
    \iv[2]_i_8_1 ,
    \badr[3]_INST_0_i_1 ,
    \badr[1]_INST_0_i_1_0 ,
    \sr_reg[6]_12 ,
    \sr_reg[6]_13 ,
    \iv[14]_i_42 ,
    \bdatw[12]_INST_0_i_2 ,
    \badr[4]_INST_0_i_1 ,
    \iv[2]_i_8_2 ,
    \iv[2]_i_9 ,
    \iv[2]_i_23 ,
    \iv[2]_i_23_0 ,
    \iv[13]_i_25 ,
    \sr_reg[6]_14 ,
    \iv[8]_i_20 ,
    \iv[2]_i_23_1 ,
    \bdatw[8]_INST_0_i_2_3 ,
    \sr_reg[6]_15 ,
    \badr[2]_INST_0_i_1 ,
    \badr[14]_INST_0_i_1 ,
    \iv[2]_i_23_2 ,
    \stat_reg[2]_2 ,
    \stat_reg[2]_3 ,
    \iv[14]_i_8 ,
    \sr_reg[7] ,
    badrx,
    fch_irq_req,
    \sr_reg[7]_0 ,
    \sr_reg[7]_1 ,
    \sr_reg[5] ,
    fch_pc,
    \stat_reg[2]_4 ,
    \stat_reg[2]_5 ,
    \stat_reg[2]_6 ,
    \stat_reg[2]_7 ,
    \stat_reg[2]_8 ,
    .irq_lev_0_sp_1(irq_lev_0_sn_1),
    \bdatw[8]_INST_0_i_2_4 ,
    \iv[13]_i_23_0 ,
    \iv[2]_i_23_3 ,
    \bdatw[8]_INST_0_i_2_5 ,
    \bdatw[8]_INST_0_i_2_6 ,
    \bdatw[8]_INST_0_i_2_7 ,
    \bdatw[8]_INST_0_i_2_8 ,
    \bdatw[8]_INST_0_i_2_9 ,
    \bdatw[8]_INST_0_i_2_10 ,
    \bdatw[8]_INST_0_i_2_11 ,
    \bdatw[8]_INST_0_i_2_12 ,
    \bdatw[8]_INST_0_i_2_13 ,
    \bdatw[8]_INST_0_i_2_14 ,
    \bdatw[8]_INST_0_i_2_15 ,
    \bdatw[8]_INST_0_i_2_16 ,
    \iv[14]_i_39_0 ,
    \bdatw[8]_INST_0_i_2_17 ,
    \bdatw[8]_INST_0_i_2_18 ,
    \sr_reg[6]_16 ,
    \bdatw[8]_INST_0_i_2_19 ,
    \sr_reg[6]_17 ,
    \sr_reg[6]_18 ,
    \sr_reg[6]_19 ,
    \bdatw[8]_INST_0_i_2_20 ,
    \bdatw[8]_INST_0_i_2_21 ,
    \bdatw[8]_INST_0_i_2_22 ,
    \bdatw[9]_INST_0_i_2 ,
    \bdatw[9]_INST_0_i_2_0 ,
    \bdatw[9]_INST_0_i_2_1 ,
    \bdatw[10]_INST_0_i_2 ,
    \bdatw[10]_INST_0_i_2_0 ,
    \bdatw[10]_INST_0_i_2_1 ,
    \bdatw[11]_INST_0_i_2 ,
    \bdatw[11]_INST_0_i_2_0 ,
    \bdatw[11]_INST_0_i_2_1 ,
    \bdatw[12]_INST_0_i_2_0 ,
    \bdatw[12]_INST_0_i_2_1 ,
    \bdatw[12]_INST_0_i_2_2 ,
    gr1_bus1__0,
    gr2_bus1__0,
    gr3_bus1__0,
    gr4_bus1__0,
    gr5_bus1__0,
    gr6_bus1__0,
    gr7_bus1__0,
    gr0_bus1__0,
    \abus_o[0] ,
    \abus_o[0]_0 ,
    \badr[0]_INST_0_i_1 ,
    gr1_bus1__0_0,
    gr2_bus1__0_1,
    \abus_o[1] ,
    \abus_o[1]_0 ,
    \badr[1]_INST_0_i_1_1 ,
    \abus_o[2] ,
    \abus_o[2]_0 ,
    \badr[2]_INST_0_i_1_0 ,
    \abus_o[3] ,
    \abus_o[3]_0 ,
    \badr[3]_INST_0_i_1_0 ,
    \abus_o[4] ,
    \abus_o[4]_0 ,
    \badr[4]_INST_0_i_1_0 ,
    \abus_o[5] ,
    \abus_o[5]_0 ,
    \badr[5]_INST_0_i_1_0 ,
    \abus_o[6] ,
    \abus_o[6]_0 ,
    \badr[6]_INST_0_i_1 ,
    \abus_o[7] ,
    \abus_o[7]_0 ,
    \badr[7]_INST_0_i_1_0 ,
    \abus_o[8] ,
    \abus_o[8]_0 ,
    \badr[8]_INST_0_i_1 ,
    \abus_o[9] ,
    \abus_o[9]_0 ,
    \badr[9]_INST_0_i_1_0 ,
    \abus_o[10] ,
    \abus_o[10]_0 ,
    \badr[10]_INST_0_i_1 ,
    \abus_o[11] ,
    \abus_o[11]_0 ,
    \badr[11]_INST_0_i_1_0 ,
    \abus_o[12] ,
    \abus_o[12]_0 ,
    \badr[12]_INST_0_i_1_0 ,
    \abus_o[13] ,
    \abus_o[13]_0 ,
    \badr[13]_INST_0_i_1_0 ,
    \abus_o[14] ,
    \abus_o[14]_0 ,
    \badr[14]_INST_0_i_1_0 ,
    \abus_o[15] ,
    \abus_o[15]_0 ,
    \badr[15]_INST_0_i_1_0 ,
    gr3_bus1__0_2,
    gr4_bus1__0_3,
    gr5_bus1__0_4,
    gr6_bus1__0_5,
    gr7_bus1__0_6,
    gr0_bus1__0_7,
    gr2_bus1__0_8,
    gr3_bus1__0_9,
    gr4_bus1__0_10,
    gr5_bus1__0_11,
    \bdatw[8]_INST_0_i_8 ,
    \badr[0]_INST_0_i_1_0 ,
    \badr[1]_INST_0_i_1_2 ,
    \badr[2]_INST_0_i_1_1 ,
    \badr[3]_INST_0_i_1_1 ,
    \badr[4]_INST_0_i_1_1 ,
    \badr[5]_INST_0_i_1_1 ,
    \badr[6]_INST_0_i_1_0 ,
    \badr[7]_INST_0_i_1_1 ,
    \badr[8]_INST_0_i_1_0 ,
    \badr[9]_INST_0_i_1_1 ,
    \badr[10]_INST_0_i_1_0 ,
    \badr[11]_INST_0_i_1_1 ,
    \badr[12]_INST_0_i_1_1 ,
    \badr[13]_INST_0_i_1_1 ,
    \badr[14]_INST_0_i_1_1 ,
    \badr[15]_INST_0_i_1_1 ,
    \badr[0]_INST_0_i_5 ,
    \badr[0]_INST_0_i_5_0 ,
    gr4_bus1__0_12,
    gr5_bus1__0_13,
    gr7_bus1__0_14,
    gr0_bus1__0_15,
    \bdatw[15]_INST_0_i_28 ,
    gr1_bus1__0_16,
    gr2_bus1__0_17,
    gr3_bus1__0_18,
    gr4_bus1__0_19,
    gr5_bus1__0_20,
    gr6_bus1__0_21,
    gr7_bus1__0_22,
    gr0_bus1__0_23,
    \badr[0]_INST_0_i_1_1 ,
    gr1_bus1__0_24,
    gr2_bus1__0_25,
    \badr[1]_INST_0_i_1_3 ,
    \badr[2]_INST_0_i_1_2 ,
    \badr[3]_INST_0_i_1_2 ,
    \badr[4]_INST_0_i_1_2 ,
    \badr[5]_INST_0_i_1_2 ,
    \badr[6]_INST_0_i_1_1 ,
    \badr[7]_INST_0_i_1_2 ,
    \badr[8]_INST_0_i_1_1 ,
    \badr[9]_INST_0_i_1_2 ,
    \badr[10]_INST_0_i_1_1 ,
    \badr[11]_INST_0_i_1_2 ,
    \badr[12]_INST_0_i_1_2 ,
    \badr[13]_INST_0_i_1_2 ,
    \badr[14]_INST_0_i_1_2 ,
    \badr[15]_INST_0_i_1_2 ,
    gr3_bus1__0_26,
    gr4_bus1__0_27,
    gr5_bus1__0_28,
    gr6_bus1__0_29,
    gr7_bus1__0_30,
    gr0_bus1__0_31,
    gr3_bus1__0_32,
    gr4_bus1__0_33,
    gr5_bus1__0_34,
    gr6_bus1__0_35,
    gr1_bus1__0_36,
    gr2_bus1__0_37,
    \badr[14]_INST_0_i_3 ,
    gr5_bus1__0_38,
    gr6_bus1__0_39,
    gr1_bus1__0_40,
    gr2_bus1__0_41,
    gr7_bus1__0_42,
    gr0_bus1__0_43,
    rst_n,
    \tr_reg[2] ,
    \tr_reg[2]_0 ,
    \tr_reg[2]_1 ,
    \iv[7]_i_9 ,
    \iv[5]_i_5 ,
    \iv[13]_i_18 ,
    \iv[13]_i_6 ,
    \iv[9]_i_2 ,
    \iv[9]_i_2_0 ,
    \iv[13]_i_2 ,
    \iv[13]_i_2_0 ,
    \iv[5]_i_2 ,
    \iv[9]_i_6 ,
    \iv[11]_i_8 ,
    \sr[6]_i_3 ,
    \sr[6]_i_3_0 ,
    \iv[11]_i_8_0 ,
    \iv[10]_i_9 ,
    \iv[10]_i_9_0 ,
    \iv[10]_i_23 ,
    ctl_fetch_inferred_i_9,
    ctl_fetch_inferred_i_9_0,
    .badrx_15_sp_1(badrx_15_sn_1),
    irq,
    irq_lev,
    ctl_fetch_inferred_i_13,
    D,
    clk,
    \sr_reg[8] ,
    \pc_reg[15] ,
    \sp_reg[15]_1 ,
    \tr_reg[0] ,
    \tr_reg[15]_0 ,
    E,
    \grn_reg[15]_8 ,
    \grn_reg[15]_9 ,
    \grn_reg[15]_10 ,
    \grn_reg[15]_11 ,
    \grn_reg[15]_12 ,
    \grn_reg[15]_13 ,
    \grn_reg[15]_14 ,
    \grn_reg[15]_15 ,
    \grn_reg[15]_16 ,
    \grn_reg[15]_17 ,
    \grn_reg[15]_18 ,
    \grn_reg[15]_19 ,
    \grn_reg[15]_20 ,
    \grn_reg[15]_21 ,
    \grn_reg[15]_22 ,
    \grn_reg[15]_23 ,
    \grn_reg[15]_24 ,
    \grn_reg[15]_25 ,
    \grn_reg[15]_26 ,
    \grn_reg[15]_27 ,
    \grn_reg[15]_28 ,
    \grn_reg[15]_29 ,
    \grn_reg[15]_30 ,
    \grn_reg[15]_31 ,
    \grn_reg[15]_32 ,
    \grn_reg[15]_33 ,
    \grn_reg[15]_34 ,
    \grn_reg[15]_35 ,
    \grn_reg[15]_36 ,
    \grn_reg[15]_37 ,
    \grn_reg[15]_38 );
  output [15:0]out;
  output [15:0]\grn_reg[15] ;
  output [10:0]\grn_reg[15]_0 ;
  output [10:0]\grn_reg[15]_1 ;
  output [10:0]\grn_reg[15]_2 ;
  output [10:0]\grn_reg[15]_3 ;
  output [15:0]\grn_reg[15]_4 ;
  output [15:0]\grn_reg[15]_5 ;
  output [4:0]\grn_reg[4] ;
  output [4:0]\grn_reg[4]_0 ;
  output [4:0]\grn_reg[4]_1 ;
  output [4:0]\grn_reg[4]_2 ;
  output [4:0]\grn_reg[4]_3 ;
  output [4:0]\grn_reg[4]_4 ;
  output [4:0]\grn_reg[4]_5 ;
  output [4:0]\grn_reg[4]_6 ;
  output [4:0]\grn_reg[4]_7 ;
  output [4:0]\grn_reg[4]_8 ;
  output [4:0]\grn_reg[4]_9 ;
  output [4:0]\grn_reg[4]_10 ;
  output [4:0]\grn_reg[4]_11 ;
  output [4:0]\grn_reg[4]_12 ;
  output [4:0]\grn_reg[4]_13 ;
  output [4:0]\grn_reg[4]_14 ;
  output [4:0]\grn_reg[4]_15 ;
  output [4:0]\grn_reg[4]_16 ;
  output [4:0]\grn_reg[4]_17 ;
  output [4:0]\grn_reg[4]_18 ;
  output [15:0]\sr_reg[15] ;
  output [15:0]fadr;
  output [15:0]\sp_reg[15] ;
  output [15:0]\iv_reg[15] ;
  output [15:0]\tr_reg[15] ;
  output [14:0]sp_dec_0;
  output [0:0]\sp_reg[3] ;
  output [2:0]\sp_reg[1] ;
  output [3:0]\sp_reg[7] ;
  output [3:0]\sp_reg[11] ;
  output [3:0]\sp_reg[15]_0 ;
  output [4:0]\grn_reg[4]_19 ;
  output \grn_reg[5] ;
  output \grn_reg[6] ;
  output \grn_reg[7] ;
  output \grn_reg[8] ;
  output \grn_reg[9] ;
  output \grn_reg[10] ;
  output \grn_reg[11] ;
  output \grn_reg[12] ;
  output \grn_reg[13] ;
  output \grn_reg[14] ;
  output \grn_reg[15]_6 ;
  output [15:0]abus_0;
  output [3:0]bank_sel;
  output \grn_reg[5]_0 ;
  output \grn_reg[6]_0 ;
  output \grn_reg[7]_0 ;
  output \grn_reg[8]_0 ;
  output \grn_reg[9]_0 ;
  output \grn_reg[10]_0 ;
  output \grn_reg[11]_0 ;
  output \grn_reg[12]_0 ;
  output \grn_reg[13]_0 ;
  output \grn_reg[14]_0 ;
  output \grn_reg[15]_7 ;
  output \grn_reg[0] ;
  output \grn_reg[1] ;
  output \grn_reg[2] ;
  output \grn_reg[3] ;
  output \grn_reg[4]_20 ;
  output \grn_reg[0]_0 ;
  output \grn_reg[1]_0 ;
  output \grn_reg[2]_0 ;
  output \grn_reg[3]_0 ;
  output \grn_reg[4]_21 ;
  output [0:0]SR;
  output \sr_reg[6] ;
  output \iv[10]_i_30 ;
  output \sr_reg[6]_0 ;
  output \bdatw[8]_INST_0_i_2 ;
  output \sr_reg[6]_1 ;
  output \sr_reg[6]_2 ;
  output \sr_reg[6]_3 ;
  output \badr[15]_INST_0_i_1 ;
  output \sr_reg[6]_4 ;
  output \badr[1]_INST_0_i_1 ;
  output \sr_reg[6]_5 ;
  output \iv[14]_i_39 ;
  output \badr[12]_INST_0_i_1 ;
  output \sr_reg[6]_6 ;
  output \badr[13]_INST_0_i_1 ;
  output \iv[14]_i_29 ;
  output \sr_reg[6]_7 ;
  output \iv[13]_i_36 ;
  output \badr[11]_INST_0_i_1 ;
  output \stat_reg[2] ;
  output \iv[13]_i_23 ;
  output \iv[13]_i_27 ;
  output \stat_reg[2]_0 ;
  output \iv[5]_i_15 ;
  output \iv[13]_i_36_0 ;
  output \sr_reg[6]_8 ;
  output \stat_reg[2]_1 ;
  output \iv[11]_i_25 ;
  output \sr[6]_i_10 ;
  output \iv[7]_i_18 ;
  output \bdatw[8]_INST_0_i_2_0 ;
  output \bdatw[8]_INST_0_i_2_1 ;
  output \bdatw[8]_INST_0_i_2_2 ;
  output \sr_reg[6]_9 ;
  output \iv[13]_i_31 ;
  output \iv[13]_i_32 ;
  output \iv[13]_i_33 ;
  output \sr_reg[6]_10 ;
  output \sr_reg[6]_11 ;
  output \iv[2]_i_8 ;
  output \badr[5]_INST_0_i_1 ;
  output \badr[7]_INST_0_i_1 ;
  output \badr[9]_INST_0_i_1 ;
  output \iv[2]_i_8_0 ;
  output \iv[2]_i_8_1 ;
  output \badr[3]_INST_0_i_1 ;
  output \badr[1]_INST_0_i_1_0 ;
  output \sr_reg[6]_12 ;
  output \sr_reg[6]_13 ;
  output \iv[14]_i_42 ;
  output \bdatw[12]_INST_0_i_2 ;
  output \badr[4]_INST_0_i_1 ;
  output \iv[2]_i_8_2 ;
  output \iv[2]_i_9 ;
  output \iv[2]_i_23 ;
  output \iv[2]_i_23_0 ;
  output \iv[13]_i_25 ;
  output \sr_reg[6]_14 ;
  output \iv[8]_i_20 ;
  output \iv[2]_i_23_1 ;
  output \bdatw[8]_INST_0_i_2_3 ;
  output \sr_reg[6]_15 ;
  output \badr[2]_INST_0_i_1 ;
  output \badr[14]_INST_0_i_1 ;
  output \iv[2]_i_23_2 ;
  output \stat_reg[2]_2 ;
  output \stat_reg[2]_3 ;
  output \iv[14]_i_8 ;
  output \sr_reg[7] ;
  output [15:0]badrx;
  output fch_irq_req;
  output \sr_reg[7]_0 ;
  output \sr_reg[7]_1 ;
  output \sr_reg[5] ;
  output [15:0]fch_pc;
  output \stat_reg[2]_4 ;
  output \stat_reg[2]_5 ;
  output \stat_reg[2]_6 ;
  output \stat_reg[2]_7 ;
  output \stat_reg[2]_8 ;
  output \bdatw[8]_INST_0_i_2_4 ;
  output \iv[13]_i_23_0 ;
  output \iv[2]_i_23_3 ;
  output \bdatw[8]_INST_0_i_2_5 ;
  output \bdatw[8]_INST_0_i_2_6 ;
  output \bdatw[8]_INST_0_i_2_7 ;
  output \bdatw[8]_INST_0_i_2_8 ;
  output \bdatw[8]_INST_0_i_2_9 ;
  output \bdatw[8]_INST_0_i_2_10 ;
  output \bdatw[8]_INST_0_i_2_11 ;
  output \bdatw[8]_INST_0_i_2_12 ;
  output \bdatw[8]_INST_0_i_2_13 ;
  output \bdatw[8]_INST_0_i_2_14 ;
  output \bdatw[8]_INST_0_i_2_15 ;
  output \bdatw[8]_INST_0_i_2_16 ;
  output \iv[14]_i_39_0 ;
  output \bdatw[8]_INST_0_i_2_17 ;
  output \bdatw[8]_INST_0_i_2_18 ;
  output \sr_reg[6]_16 ;
  output \bdatw[8]_INST_0_i_2_19 ;
  output \sr_reg[6]_17 ;
  output \sr_reg[6]_18 ;
  output \sr_reg[6]_19 ;
  input \bdatw[8]_INST_0_i_2_20 ;
  input \bdatw[8]_INST_0_i_2_21 ;
  input \bdatw[8]_INST_0_i_2_22 ;
  input \bdatw[9]_INST_0_i_2 ;
  input \bdatw[9]_INST_0_i_2_0 ;
  input \bdatw[9]_INST_0_i_2_1 ;
  input \bdatw[10]_INST_0_i_2 ;
  input \bdatw[10]_INST_0_i_2_0 ;
  input \bdatw[10]_INST_0_i_2_1 ;
  input \bdatw[11]_INST_0_i_2 ;
  input \bdatw[11]_INST_0_i_2_0 ;
  input \bdatw[11]_INST_0_i_2_1 ;
  input \bdatw[12]_INST_0_i_2_0 ;
  input \bdatw[12]_INST_0_i_2_1 ;
  input \bdatw[12]_INST_0_i_2_2 ;
  input gr1_bus1__0;
  input gr2_bus1__0;
  input gr3_bus1__0;
  input gr4_bus1__0;
  input gr5_bus1__0;
  input gr6_bus1__0;
  input gr7_bus1__0;
  input gr0_bus1__0;
  input \abus_o[0] ;
  input \abus_o[0]_0 ;
  input \badr[0]_INST_0_i_1 ;
  input gr1_bus1__0_0;
  input gr2_bus1__0_1;
  input \abus_o[1] ;
  input \abus_o[1]_0 ;
  input \badr[1]_INST_0_i_1_1 ;
  input \abus_o[2] ;
  input \abus_o[2]_0 ;
  input \badr[2]_INST_0_i_1_0 ;
  input \abus_o[3] ;
  input \abus_o[3]_0 ;
  input \badr[3]_INST_0_i_1_0 ;
  input \abus_o[4] ;
  input \abus_o[4]_0 ;
  input \badr[4]_INST_0_i_1_0 ;
  input \abus_o[5] ;
  input \abus_o[5]_0 ;
  input \badr[5]_INST_0_i_1_0 ;
  input \abus_o[6] ;
  input \abus_o[6]_0 ;
  input \badr[6]_INST_0_i_1 ;
  input \abus_o[7] ;
  input \abus_o[7]_0 ;
  input \badr[7]_INST_0_i_1_0 ;
  input \abus_o[8] ;
  input \abus_o[8]_0 ;
  input \badr[8]_INST_0_i_1 ;
  input \abus_o[9] ;
  input \abus_o[9]_0 ;
  input \badr[9]_INST_0_i_1_0 ;
  input \abus_o[10] ;
  input \abus_o[10]_0 ;
  input \badr[10]_INST_0_i_1 ;
  input \abus_o[11] ;
  input \abus_o[11]_0 ;
  input \badr[11]_INST_0_i_1_0 ;
  input \abus_o[12] ;
  input \abus_o[12]_0 ;
  input \badr[12]_INST_0_i_1_0 ;
  input \abus_o[13] ;
  input \abus_o[13]_0 ;
  input \badr[13]_INST_0_i_1_0 ;
  input \abus_o[14] ;
  input \abus_o[14]_0 ;
  input \badr[14]_INST_0_i_1_0 ;
  input \abus_o[15] ;
  input \abus_o[15]_0 ;
  input \badr[15]_INST_0_i_1_0 ;
  input gr3_bus1__0_2;
  input gr4_bus1__0_3;
  input gr5_bus1__0_4;
  input gr6_bus1__0_5;
  input gr7_bus1__0_6;
  input gr0_bus1__0_7;
  input gr2_bus1__0_8;
  input gr3_bus1__0_9;
  input gr4_bus1__0_10;
  input gr5_bus1__0_11;
  input \bdatw[8]_INST_0_i_8 ;
  input \badr[0]_INST_0_i_1_0 ;
  input \badr[1]_INST_0_i_1_2 ;
  input \badr[2]_INST_0_i_1_1 ;
  input \badr[3]_INST_0_i_1_1 ;
  input \badr[4]_INST_0_i_1_1 ;
  input \badr[5]_INST_0_i_1_1 ;
  input \badr[6]_INST_0_i_1_0 ;
  input \badr[7]_INST_0_i_1_1 ;
  input \badr[8]_INST_0_i_1_0 ;
  input \badr[9]_INST_0_i_1_1 ;
  input \badr[10]_INST_0_i_1_0 ;
  input \badr[11]_INST_0_i_1_1 ;
  input \badr[12]_INST_0_i_1_1 ;
  input \badr[13]_INST_0_i_1_1 ;
  input \badr[14]_INST_0_i_1_1 ;
  input \badr[15]_INST_0_i_1_1 ;
  input \badr[0]_INST_0_i_5 ;
  input \badr[0]_INST_0_i_5_0 ;
  input gr4_bus1__0_12;
  input gr5_bus1__0_13;
  input gr7_bus1__0_14;
  input gr0_bus1__0_15;
  input [0:0]\bdatw[15]_INST_0_i_28 ;
  input gr1_bus1__0_16;
  input gr2_bus1__0_17;
  input gr3_bus1__0_18;
  input gr4_bus1__0_19;
  input gr5_bus1__0_20;
  input gr6_bus1__0_21;
  input gr7_bus1__0_22;
  input gr0_bus1__0_23;
  input \badr[0]_INST_0_i_1_1 ;
  input gr1_bus1__0_24;
  input gr2_bus1__0_25;
  input \badr[1]_INST_0_i_1_3 ;
  input \badr[2]_INST_0_i_1_2 ;
  input \badr[3]_INST_0_i_1_2 ;
  input \badr[4]_INST_0_i_1_2 ;
  input \badr[5]_INST_0_i_1_2 ;
  input \badr[6]_INST_0_i_1_1 ;
  input \badr[7]_INST_0_i_1_2 ;
  input \badr[8]_INST_0_i_1_1 ;
  input \badr[9]_INST_0_i_1_2 ;
  input \badr[10]_INST_0_i_1_1 ;
  input \badr[11]_INST_0_i_1_2 ;
  input \badr[12]_INST_0_i_1_2 ;
  input \badr[13]_INST_0_i_1_2 ;
  input \badr[14]_INST_0_i_1_2 ;
  input \badr[15]_INST_0_i_1_2 ;
  input gr3_bus1__0_26;
  input gr4_bus1__0_27;
  input gr5_bus1__0_28;
  input gr6_bus1__0_29;
  input gr7_bus1__0_30;
  input gr0_bus1__0_31;
  input gr3_bus1__0_32;
  input gr4_bus1__0_33;
  input gr5_bus1__0_34;
  input gr6_bus1__0_35;
  input gr1_bus1__0_36;
  input gr2_bus1__0_37;
  input \badr[14]_INST_0_i_3 ;
  input gr5_bus1__0_38;
  input gr6_bus1__0_39;
  input gr1_bus1__0_40;
  input gr2_bus1__0_41;
  input gr7_bus1__0_42;
  input gr0_bus1__0_43;
  input rst_n;
  input \tr_reg[2] ;
  input \tr_reg[2]_0 ;
  input \tr_reg[2]_1 ;
  input \iv[7]_i_9 ;
  input \iv[5]_i_5 ;
  input \iv[13]_i_18 ;
  input \iv[13]_i_6 ;
  input \iv[9]_i_2 ;
  input \iv[9]_i_2_0 ;
  input \iv[13]_i_2 ;
  input \iv[13]_i_2_0 ;
  input \iv[5]_i_2 ;
  input \iv[9]_i_6 ;
  input \iv[11]_i_8 ;
  input \sr[6]_i_3 ;
  input \sr[6]_i_3_0 ;
  input \iv[11]_i_8_0 ;
  input \iv[10]_i_9 ;
  input \iv[10]_i_9_0 ;
  input \iv[10]_i_23 ;
  input [3:0]ctl_fetch_inferred_i_9;
  input ctl_fetch_inferred_i_9_0;
  input irq;
  input [1:0]irq_lev;
  input ctl_fetch_inferred_i_13;
  input [11:0]D;
  input clk;
  input \sr_reg[8] ;
  input [15:0]\pc_reg[15] ;
  input [15:0]\sp_reg[15]_1 ;
  input [1:0]\tr_reg[0] ;
  input [15:0]\tr_reg[15]_0 ;
  input [0:0]E;
  input [0:0]\grn_reg[15]_8 ;
  input [0:0]\grn_reg[15]_9 ;
  input [0:0]\grn_reg[15]_10 ;
  input [0:0]\grn_reg[15]_11 ;
  input [0:0]\grn_reg[15]_12 ;
  input [0:0]\grn_reg[15]_13 ;
  input [0:0]\grn_reg[15]_14 ;
  input [0:0]\grn_reg[15]_15 ;
  input [0:0]\grn_reg[15]_16 ;
  input [0:0]\grn_reg[15]_17 ;
  input [0:0]\grn_reg[15]_18 ;
  input [0:0]\grn_reg[15]_19 ;
  input [0:0]\grn_reg[15]_20 ;
  input [0:0]\grn_reg[15]_21 ;
  input [0:0]\grn_reg[15]_22 ;
  input [0:0]\grn_reg[15]_23 ;
  input [0:0]\grn_reg[15]_24 ;
  input [0:0]\grn_reg[15]_25 ;
  input [0:0]\grn_reg[15]_26 ;
  input [0:0]\grn_reg[15]_27 ;
  input [0:0]\grn_reg[15]_28 ;
  input [0:0]\grn_reg[15]_29 ;
  input [0:0]\grn_reg[15]_30 ;
  input [0:0]\grn_reg[15]_31 ;
  input [0:0]\grn_reg[15]_32 ;
  input [0:0]\grn_reg[15]_33 ;
  input [0:0]\grn_reg[15]_34 ;
  input [0:0]\grn_reg[15]_35 ;
  input [0:0]\grn_reg[15]_36 ;
  input [0:0]\grn_reg[15]_37 ;
  input [0:0]\grn_reg[15]_38 ;
  output irq_lev_0_sn_1;
  input badrx_15_sn_1;

  wire [11:0]D;
  wire [0:0]E;
  wire [0:0]SR;
  wire [15:0]abus_0;
  wire \abus_o[0] ;
  wire \abus_o[0]_0 ;
  wire \abus_o[10] ;
  wire \abus_o[10]_0 ;
  wire \abus_o[11] ;
  wire \abus_o[11]_0 ;
  wire \abus_o[12] ;
  wire \abus_o[12]_0 ;
  wire \abus_o[13] ;
  wire \abus_o[13]_0 ;
  wire \abus_o[14] ;
  wire \abus_o[14]_0 ;
  wire \abus_o[15] ;
  wire \abus_o[15]_0 ;
  wire \abus_o[1] ;
  wire \abus_o[1]_0 ;
  wire \abus_o[2] ;
  wire \abus_o[2]_0 ;
  wire \abus_o[3] ;
  wire \abus_o[3]_0 ;
  wire \abus_o[4] ;
  wire \abus_o[4]_0 ;
  wire \abus_o[5] ;
  wire \abus_o[5]_0 ;
  wire \abus_o[6] ;
  wire \abus_o[6]_0 ;
  wire \abus_o[7] ;
  wire \abus_o[7]_0 ;
  wire \abus_o[8] ;
  wire \abus_o[8]_0 ;
  wire \abus_o[9] ;
  wire \abus_o[9]_0 ;
  wire \abuso2l/gr3_bus1__0 ;
  wire \abuso2l/gr4_bus1__0 ;
  wire \badr[0]_INST_0_i_1 ;
  wire \badr[0]_INST_0_i_1_0 ;
  wire \badr[0]_INST_0_i_1_1 ;
  wire \badr[0]_INST_0_i_5 ;
  wire \badr[0]_INST_0_i_5_0 ;
  wire \badr[10]_INST_0_i_1 ;
  wire \badr[10]_INST_0_i_1_0 ;
  wire \badr[10]_INST_0_i_1_1 ;
  wire \badr[11]_INST_0_i_1 ;
  wire \badr[11]_INST_0_i_1_0 ;
  wire \badr[11]_INST_0_i_1_1 ;
  wire \badr[11]_INST_0_i_1_2 ;
  wire \badr[12]_INST_0_i_1 ;
  wire \badr[12]_INST_0_i_1_0 ;
  wire \badr[12]_INST_0_i_1_1 ;
  wire \badr[12]_INST_0_i_1_2 ;
  wire \badr[13]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_1_0 ;
  wire \badr[13]_INST_0_i_1_1 ;
  wire \badr[13]_INST_0_i_1_2 ;
  wire \badr[14]_INST_0_i_1 ;
  wire \badr[14]_INST_0_i_1_0 ;
  wire \badr[14]_INST_0_i_1_1 ;
  wire \badr[14]_INST_0_i_1_2 ;
  wire \badr[14]_INST_0_i_3 ;
  wire \badr[15]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_1_0 ;
  wire \badr[15]_INST_0_i_1_1 ;
  wire \badr[15]_INST_0_i_1_2 ;
  wire \badr[1]_INST_0_i_1 ;
  wire \badr[1]_INST_0_i_1_0 ;
  wire \badr[1]_INST_0_i_1_1 ;
  wire \badr[1]_INST_0_i_1_2 ;
  wire \badr[1]_INST_0_i_1_3 ;
  wire \badr[2]_INST_0_i_1 ;
  wire \badr[2]_INST_0_i_1_0 ;
  wire \badr[2]_INST_0_i_1_1 ;
  wire \badr[2]_INST_0_i_1_2 ;
  wire \badr[3]_INST_0_i_1 ;
  wire \badr[3]_INST_0_i_1_0 ;
  wire \badr[3]_INST_0_i_1_1 ;
  wire \badr[3]_INST_0_i_1_2 ;
  wire \badr[4]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_1_0 ;
  wire \badr[4]_INST_0_i_1_1 ;
  wire \badr[4]_INST_0_i_1_2 ;
  wire \badr[5]_INST_0_i_1 ;
  wire \badr[5]_INST_0_i_1_0 ;
  wire \badr[5]_INST_0_i_1_1 ;
  wire \badr[5]_INST_0_i_1_2 ;
  wire \badr[6]_INST_0_i_1 ;
  wire \badr[6]_INST_0_i_1_0 ;
  wire \badr[6]_INST_0_i_1_1 ;
  wire \badr[7]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_1_0 ;
  wire \badr[7]_INST_0_i_1_1 ;
  wire \badr[7]_INST_0_i_1_2 ;
  wire \badr[8]_INST_0_i_1 ;
  wire \badr[8]_INST_0_i_1_0 ;
  wire \badr[8]_INST_0_i_1_1 ;
  wire \badr[9]_INST_0_i_1 ;
  wire \badr[9]_INST_0_i_1_0 ;
  wire \badr[9]_INST_0_i_1_1 ;
  wire \badr[9]_INST_0_i_1_2 ;
  wire [15:0]badrx;
  wire badrx_15_sn_1;
  wire bank02_n_174;
  wire bank02_n_175;
  wire bank02_n_176;
  wire bank02_n_177;
  wire bank02_n_178;
  wire bank02_n_179;
  wire bank02_n_180;
  wire bank02_n_181;
  wire bank02_n_182;
  wire bank02_n_183;
  wire bank02_n_184;
  wire bank02_n_185;
  wire bank02_n_186;
  wire bank02_n_187;
  wire bank02_n_188;
  wire bank02_n_189;
  wire bank02_n_43;
  wire bank02_n_44;
  wire bank02_n_45;
  wire bank02_n_46;
  wire bank02_n_47;
  wire bank02_n_59;
  wire bank02_n_60;
  wire bank02_n_61;
  wire bank02_n_62;
  wire bank02_n_63;
  wire [3:0]bank_sel;
  wire \bbuso2l/gr0_bus1__0 ;
  wire \bdatw[10]_INST_0_i_2 ;
  wire \bdatw[10]_INST_0_i_2_0 ;
  wire \bdatw[10]_INST_0_i_2_1 ;
  wire \bdatw[11]_INST_0_i_2 ;
  wire \bdatw[11]_INST_0_i_2_0 ;
  wire \bdatw[11]_INST_0_i_2_1 ;
  wire \bdatw[12]_INST_0_i_2 ;
  wire \bdatw[12]_INST_0_i_2_0 ;
  wire \bdatw[12]_INST_0_i_2_1 ;
  wire \bdatw[12]_INST_0_i_2_2 ;
  wire [0:0]\bdatw[15]_INST_0_i_28 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_2_10 ;
  wire \bdatw[8]_INST_0_i_2_11 ;
  wire \bdatw[8]_INST_0_i_2_12 ;
  wire \bdatw[8]_INST_0_i_2_13 ;
  wire \bdatw[8]_INST_0_i_2_14 ;
  wire \bdatw[8]_INST_0_i_2_15 ;
  wire \bdatw[8]_INST_0_i_2_16 ;
  wire \bdatw[8]_INST_0_i_2_17 ;
  wire \bdatw[8]_INST_0_i_2_18 ;
  wire \bdatw[8]_INST_0_i_2_19 ;
  wire \bdatw[8]_INST_0_i_2_2 ;
  wire \bdatw[8]_INST_0_i_2_20 ;
  wire \bdatw[8]_INST_0_i_2_21 ;
  wire \bdatw[8]_INST_0_i_2_22 ;
  wire \bdatw[8]_INST_0_i_2_3 ;
  wire \bdatw[8]_INST_0_i_2_4 ;
  wire \bdatw[8]_INST_0_i_2_5 ;
  wire \bdatw[8]_INST_0_i_2_6 ;
  wire \bdatw[8]_INST_0_i_2_7 ;
  wire \bdatw[8]_INST_0_i_2_8 ;
  wire \bdatw[8]_INST_0_i_2_9 ;
  wire \bdatw[8]_INST_0_i_8 ;
  wire \bdatw[9]_INST_0_i_2 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_2_1 ;
  wire clk;
  wire ctl_fetch_inferred_i_13;
  wire [3:0]ctl_fetch_inferred_i_9;
  wire ctl_fetch_inferred_i_9_0;
  wire [15:0]fadr;
  wire fch_irq_req;
  wire [15:0]fch_pc;
  wire gr0_bus1__0;
  wire gr0_bus1__0_15;
  wire gr0_bus1__0_23;
  wire gr0_bus1__0_31;
  wire gr0_bus1__0_43;
  wire gr0_bus1__0_7;
  wire gr1_bus1__0;
  wire gr1_bus1__0_0;
  wire gr1_bus1__0_16;
  wire gr1_bus1__0_24;
  wire gr1_bus1__0_36;
  wire gr1_bus1__0_40;
  wire gr2_bus1__0;
  wire gr2_bus1__0_1;
  wire gr2_bus1__0_17;
  wire gr2_bus1__0_25;
  wire gr2_bus1__0_37;
  wire gr2_bus1__0_41;
  wire gr2_bus1__0_8;
  wire gr3_bus1__0;
  wire gr3_bus1__0_18;
  wire gr3_bus1__0_2;
  wire gr3_bus1__0_26;
  wire gr3_bus1__0_32;
  wire gr3_bus1__0_9;
  wire gr4_bus1__0;
  wire gr4_bus1__0_10;
  wire gr4_bus1__0_12;
  wire gr4_bus1__0_19;
  wire gr4_bus1__0_27;
  wire gr4_bus1__0_3;
  wire gr4_bus1__0_33;
  wire gr5_bus1__0;
  wire gr5_bus1__0_11;
  wire gr5_bus1__0_13;
  wire gr5_bus1__0_20;
  wire gr5_bus1__0_28;
  wire gr5_bus1__0_34;
  wire gr5_bus1__0_38;
  wire gr5_bus1__0_4;
  wire gr6_bus1__0;
  wire gr6_bus1__0_21;
  wire gr6_bus1__0_29;
  wire gr6_bus1__0_35;
  wire gr6_bus1__0_39;
  wire gr6_bus1__0_5;
  wire gr7_bus1__0;
  wire gr7_bus1__0_14;
  wire gr7_bus1__0_22;
  wire gr7_bus1__0_30;
  wire gr7_bus1__0_42;
  wire gr7_bus1__0_6;
  wire \grn_reg[0] ;
  wire \grn_reg[0]_0 ;
  wire \grn_reg[10] ;
  wire \grn_reg[10]_0 ;
  wire \grn_reg[11] ;
  wire \grn_reg[11]_0 ;
  wire \grn_reg[12] ;
  wire \grn_reg[12]_0 ;
  wire \grn_reg[13] ;
  wire \grn_reg[13]_0 ;
  wire \grn_reg[14] ;
  wire \grn_reg[14]_0 ;
  wire [15:0]\grn_reg[15] ;
  wire [10:0]\grn_reg[15]_0 ;
  wire [10:0]\grn_reg[15]_1 ;
  wire [0:0]\grn_reg[15]_10 ;
  wire [0:0]\grn_reg[15]_11 ;
  wire [0:0]\grn_reg[15]_12 ;
  wire [0:0]\grn_reg[15]_13 ;
  wire [0:0]\grn_reg[15]_14 ;
  wire [0:0]\grn_reg[15]_15 ;
  wire [0:0]\grn_reg[15]_16 ;
  wire [0:0]\grn_reg[15]_17 ;
  wire [0:0]\grn_reg[15]_18 ;
  wire [0:0]\grn_reg[15]_19 ;
  wire [10:0]\grn_reg[15]_2 ;
  wire [0:0]\grn_reg[15]_20 ;
  wire [0:0]\grn_reg[15]_21 ;
  wire [0:0]\grn_reg[15]_22 ;
  wire [0:0]\grn_reg[15]_23 ;
  wire [0:0]\grn_reg[15]_24 ;
  wire [0:0]\grn_reg[15]_25 ;
  wire [0:0]\grn_reg[15]_26 ;
  wire [0:0]\grn_reg[15]_27 ;
  wire [0:0]\grn_reg[15]_28 ;
  wire [0:0]\grn_reg[15]_29 ;
  wire [10:0]\grn_reg[15]_3 ;
  wire [0:0]\grn_reg[15]_30 ;
  wire [0:0]\grn_reg[15]_31 ;
  wire [0:0]\grn_reg[15]_32 ;
  wire [0:0]\grn_reg[15]_33 ;
  wire [0:0]\grn_reg[15]_34 ;
  wire [0:0]\grn_reg[15]_35 ;
  wire [0:0]\grn_reg[15]_36 ;
  wire [0:0]\grn_reg[15]_37 ;
  wire [0:0]\grn_reg[15]_38 ;
  wire [15:0]\grn_reg[15]_4 ;
  wire [15:0]\grn_reg[15]_5 ;
  wire \grn_reg[15]_6 ;
  wire \grn_reg[15]_7 ;
  wire [0:0]\grn_reg[15]_8 ;
  wire [0:0]\grn_reg[15]_9 ;
  wire \grn_reg[1] ;
  wire \grn_reg[1]_0 ;
  wire \grn_reg[2] ;
  wire \grn_reg[2]_0 ;
  wire \grn_reg[3] ;
  wire \grn_reg[3]_0 ;
  wire [4:0]\grn_reg[4] ;
  wire [4:0]\grn_reg[4]_0 ;
  wire [4:0]\grn_reg[4]_1 ;
  wire [4:0]\grn_reg[4]_10 ;
  wire [4:0]\grn_reg[4]_11 ;
  wire [4:0]\grn_reg[4]_12 ;
  wire [4:0]\grn_reg[4]_13 ;
  wire [4:0]\grn_reg[4]_14 ;
  wire [4:0]\grn_reg[4]_15 ;
  wire [4:0]\grn_reg[4]_16 ;
  wire [4:0]\grn_reg[4]_17 ;
  wire [4:0]\grn_reg[4]_18 ;
  wire [4:0]\grn_reg[4]_19 ;
  wire [4:0]\grn_reg[4]_2 ;
  wire \grn_reg[4]_20 ;
  wire \grn_reg[4]_21 ;
  wire [4:0]\grn_reg[4]_3 ;
  wire [4:0]\grn_reg[4]_4 ;
  wire [4:0]\grn_reg[4]_5 ;
  wire [4:0]\grn_reg[4]_6 ;
  wire [4:0]\grn_reg[4]_7 ;
  wire [4:0]\grn_reg[4]_8 ;
  wire [4:0]\grn_reg[4]_9 ;
  wire \grn_reg[5] ;
  wire \grn_reg[5]_0 ;
  wire \grn_reg[6] ;
  wire \grn_reg[6]_0 ;
  wire \grn_reg[7] ;
  wire \grn_reg[7]_0 ;
  wire \grn_reg[8] ;
  wire \grn_reg[8]_0 ;
  wire \grn_reg[9] ;
  wire \grn_reg[9]_0 ;
  wire irq;
  wire [1:0]irq_lev;
  wire irq_lev_0_sn_1;
  wire \iv[10]_i_23 ;
  wire \iv[10]_i_30 ;
  wire \iv[10]_i_9 ;
  wire \iv[10]_i_9_0 ;
  wire \iv[11]_i_25 ;
  wire \iv[11]_i_8 ;
  wire \iv[11]_i_8_0 ;
  wire \iv[13]_i_18 ;
  wire \iv[13]_i_2 ;
  wire \iv[13]_i_23 ;
  wire \iv[13]_i_23_0 ;
  wire \iv[13]_i_25 ;
  wire \iv[13]_i_27 ;
  wire \iv[13]_i_2_0 ;
  wire \iv[13]_i_31 ;
  wire \iv[13]_i_32 ;
  wire \iv[13]_i_33 ;
  wire \iv[13]_i_36 ;
  wire \iv[13]_i_36_0 ;
  wire \iv[13]_i_6 ;
  wire \iv[14]_i_29 ;
  wire \iv[14]_i_39 ;
  wire \iv[14]_i_39_0 ;
  wire \iv[14]_i_42 ;
  wire \iv[14]_i_8 ;
  wire \iv[2]_i_23 ;
  wire \iv[2]_i_23_0 ;
  wire \iv[2]_i_23_1 ;
  wire \iv[2]_i_23_2 ;
  wire \iv[2]_i_23_3 ;
  wire \iv[2]_i_8 ;
  wire \iv[2]_i_8_0 ;
  wire \iv[2]_i_8_1 ;
  wire \iv[2]_i_8_2 ;
  wire \iv[2]_i_9 ;
  wire \iv[5]_i_15 ;
  wire \iv[5]_i_2 ;
  wire \iv[5]_i_5 ;
  wire \iv[7]_i_18 ;
  wire \iv[7]_i_9 ;
  wire \iv[8]_i_20 ;
  wire \iv[9]_i_2 ;
  wire \iv[9]_i_2_0 ;
  wire \iv[9]_i_6 ;
  wire [15:0]\iv_reg[15] ;
  wire [15:0]out;
  wire [15:0]\pc_reg[15] ;
  wire rst_n;
  wire [14:0]sp_dec_0;
  wire [3:0]\sp_reg[11] ;
  wire [15:0]\sp_reg[15] ;
  wire [3:0]\sp_reg[15]_0 ;
  wire [15:0]\sp_reg[15]_1 ;
  wire [2:0]\sp_reg[1] ;
  wire [0:0]\sp_reg[3] ;
  wire [3:0]\sp_reg[7] ;
  wire \sr[6]_i_10 ;
  wire \sr[6]_i_3 ;
  wire \sr[6]_i_3_0 ;
  wire [15:0]\sr_reg[15] ;
  wire \sr_reg[5] ;
  wire \sr_reg[6] ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[6]_1 ;
  wire \sr_reg[6]_10 ;
  wire \sr_reg[6]_11 ;
  wire \sr_reg[6]_12 ;
  wire \sr_reg[6]_13 ;
  wire \sr_reg[6]_14 ;
  wire \sr_reg[6]_15 ;
  wire \sr_reg[6]_16 ;
  wire \sr_reg[6]_17 ;
  wire \sr_reg[6]_18 ;
  wire \sr_reg[6]_19 ;
  wire \sr_reg[6]_2 ;
  wire \sr_reg[6]_3 ;
  wire \sr_reg[6]_4 ;
  wire \sr_reg[6]_5 ;
  wire \sr_reg[6]_6 ;
  wire \sr_reg[6]_7 ;
  wire \sr_reg[6]_8 ;
  wire \sr_reg[6]_9 ;
  wire \sr_reg[7] ;
  wire \sr_reg[7]_0 ;
  wire \sr_reg[7]_1 ;
  wire \sr_reg[8] ;
  wire sreg_n_20;
  wire sreg_n_21;
  wire sreg_n_22;
  wire sreg_n_23;
  wire sreg_n_24;
  wire sreg_n_26;
  wire sreg_n_27;
  wire sreg_n_28;
  wire sreg_n_29;
  wire sreg_n_30;
  wire sreg_n_31;
  wire sreg_n_32;
  wire sreg_n_33;
  wire sreg_n_34;
  wire sreg_n_35;
  wire sreg_n_36;
  wire sreg_n_37;
  wire sreg_n_38;
  wire sreg_n_39;
  wire sreg_n_40;
  wire sreg_n_41;
  wire sreg_n_44;
  wire sreg_n_45;
  wire sreg_n_52;
  wire \stat_reg[2] ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_2 ;
  wire \stat_reg[2]_3 ;
  wire \stat_reg[2]_4 ;
  wire \stat_reg[2]_5 ;
  wire \stat_reg[2]_6 ;
  wire \stat_reg[2]_7 ;
  wire \stat_reg[2]_8 ;
  wire [1:0]\tr_reg[0] ;
  wire [15:0]\tr_reg[15] ;
  wire [15:0]\tr_reg[15]_0 ;
  wire \tr_reg[2] ;
  wire \tr_reg[2]_0 ;
  wire \tr_reg[2]_1 ;

  mcvm_rgf_bank bank02
       (.E(E),
        .SR(SR),
        .\badr[0]_INST_0_i_1 (\badr[0]_INST_0_i_1 ),
        .\badr[10]_INST_0_i_1 (\badr[10]_INST_0_i_1 ),
        .\badr[11]_INST_0_i_1 (\badr[11]_INST_0_i_1_0 ),
        .\badr[12]_INST_0_i_1 (\badr[12]_INST_0_i_1_0 ),
        .\badr[13]_INST_0_i_1 (\badr[13]_INST_0_i_1_0 ),
        .\badr[14]_INST_0_i_1 (\badr[14]_INST_0_i_1_0 ),
        .\badr[15]_INST_0_i_1 (\badr[15]_INST_0_i_1_0 ),
        .\badr[1]_INST_0_i_1 (\badr[1]_INST_0_i_1_1 ),
        .\badr[2]_INST_0_i_1 (\badr[2]_INST_0_i_1_0 ),
        .\badr[3]_INST_0_i_1 (\badr[3]_INST_0_i_1_0 ),
        .\badr[4]_INST_0_i_1 (\badr[4]_INST_0_i_1_0 ),
        .\badr[5]_INST_0_i_1 (\badr[5]_INST_0_i_1_0 ),
        .\badr[6]_INST_0_i_1 (\badr[6]_INST_0_i_1 ),
        .\badr[7]_INST_0_i_1 (\badr[7]_INST_0_i_1_0 ),
        .\badr[8]_INST_0_i_1 (\badr[8]_INST_0_i_1 ),
        .\badr[9]_INST_0_i_1 (\badr[9]_INST_0_i_1_0 ),
        .\bdatw[10]_INST_0_i_2 (\bdatw[10]_INST_0_i_2 ),
        .\bdatw[10]_INST_0_i_2_0 (sreg_n_22),
        .\bdatw[10]_INST_0_i_2_1 (\bdatw[10]_INST_0_i_2_0 ),
        .\bdatw[10]_INST_0_i_2_2 (\bdatw[10]_INST_0_i_2_1 ),
        .\bdatw[11]_INST_0_i_2 (\bdatw[11]_INST_0_i_2 ),
        .\bdatw[11]_INST_0_i_2_0 (sreg_n_23),
        .\bdatw[11]_INST_0_i_2_1 (\bdatw[11]_INST_0_i_2_0 ),
        .\bdatw[11]_INST_0_i_2_2 (\bdatw[11]_INST_0_i_2_1 ),
        .\bdatw[12]_INST_0_i_2 (\bdatw[12]_INST_0_i_2_0 ),
        .\bdatw[12]_INST_0_i_2_0 (sreg_n_24),
        .\bdatw[12]_INST_0_i_2_1 (\bdatw[12]_INST_0_i_2_1 ),
        .\bdatw[12]_INST_0_i_2_2 (\bdatw[12]_INST_0_i_2_2 ),
        .\bdatw[8]_INST_0_i_2 (\bdatw[8]_INST_0_i_2_20 ),
        .\bdatw[8]_INST_0_i_2_0 (sreg_n_20),
        .\bdatw[8]_INST_0_i_2_1 (\bdatw[8]_INST_0_i_2_21 ),
        .\bdatw[8]_INST_0_i_2_2 (\bdatw[8]_INST_0_i_2_22 ),
        .\bdatw[9]_INST_0_i_2 (\bdatw[9]_INST_0_i_2 ),
        .\bdatw[9]_INST_0_i_2_0 (sreg_n_21),
        .\bdatw[9]_INST_0_i_2_1 (\bdatw[9]_INST_0_i_2_0 ),
        .\bdatw[9]_INST_0_i_2_2 (\bdatw[9]_INST_0_i_2_1 ),
        .clk(clk),
        .gr0_bus1__0(gr0_bus1__0),
        .gr0_bus1__0_0(\bbuso2l/gr0_bus1__0 ),
        .gr0_bus1__0_7(gr0_bus1__0_7),
        .gr1_bus1__0(gr1_bus1__0),
        .gr1_bus1__0_0(gr1_bus1__0_0),
        .gr2_bus1__0(gr2_bus1__0),
        .gr2_bus1__0_1(gr2_bus1__0_1),
        .gr2_bus1__0_8(gr2_bus1__0_8),
        .gr3_bus1__0(gr3_bus1__0),
        .gr3_bus1__0_2(gr3_bus1__0_2),
        .gr3_bus1__0_9(gr3_bus1__0_9),
        .gr4_bus1__0(gr4_bus1__0),
        .gr4_bus1__0_10(gr4_bus1__0_10),
        .gr4_bus1__0_12(gr4_bus1__0_12),
        .gr4_bus1__0_3(gr4_bus1__0_3),
        .gr5_bus1__0(gr5_bus1__0),
        .gr5_bus1__0_11(gr5_bus1__0_11),
        .gr5_bus1__0_13(gr5_bus1__0_13),
        .gr5_bus1__0_4(gr5_bus1__0_4),
        .gr6_bus1__0(gr6_bus1__0),
        .gr6_bus1__0_5(gr6_bus1__0_5),
        .gr7_bus1__0(gr7_bus1__0),
        .gr7_bus1__0_6(gr7_bus1__0_6),
        .\grn_reg[0] (bank02_n_174),
        .\grn_reg[10] (\grn_reg[10] ),
        .\grn_reg[10]_0 (bank02_n_184),
        .\grn_reg[11] (\grn_reg[11] ),
        .\grn_reg[11]_0 (bank02_n_185),
        .\grn_reg[12] (\grn_reg[12] ),
        .\grn_reg[12]_0 (bank02_n_186),
        .\grn_reg[13] (\grn_reg[13] ),
        .\grn_reg[13]_0 (bank02_n_187),
        .\grn_reg[14] (\grn_reg[14] ),
        .\grn_reg[14]_0 (bank02_n_188),
        .\grn_reg[15] (\grn_reg[15] ),
        .\grn_reg[15]_0 ({\grn_reg[15]_0 ,bank02_n_43,bank02_n_44,bank02_n_45,bank02_n_46,bank02_n_47}),
        .\grn_reg[15]_1 ({\grn_reg[15]_1 ,bank02_n_59,bank02_n_60,bank02_n_61,bank02_n_62,bank02_n_63}),
        .\grn_reg[15]_10 (\grn_reg[15]_9 ),
        .\grn_reg[15]_11 (\grn_reg[15]_10 ),
        .\grn_reg[15]_12 (\grn_reg[15]_11 ),
        .\grn_reg[15]_13 (\grn_reg[15]_12 ),
        .\grn_reg[15]_14 (\grn_reg[15]_13 ),
        .\grn_reg[15]_15 (\grn_reg[15]_14 ),
        .\grn_reg[15]_16 (\grn_reg[15]_15 ),
        .\grn_reg[15]_17 (\grn_reg[15]_16 ),
        .\grn_reg[15]_18 (\grn_reg[15]_17 ),
        .\grn_reg[15]_19 (\grn_reg[15]_18 ),
        .\grn_reg[15]_2 (\grn_reg[15]_2 ),
        .\grn_reg[15]_20 (\grn_reg[15]_19 ),
        .\grn_reg[15]_21 (\grn_reg[15]_20 ),
        .\grn_reg[15]_22 (\grn_reg[15]_21 ),
        .\grn_reg[15]_23 (\grn_reg[15]_22 ),
        .\grn_reg[15]_3 (\grn_reg[15]_3 ),
        .\grn_reg[15]_4 (\grn_reg[15]_4 ),
        .\grn_reg[15]_5 (\grn_reg[15]_5 ),
        .\grn_reg[15]_6 (\grn_reg[15]_6 ),
        .\grn_reg[15]_7 (bank02_n_189),
        .\grn_reg[15]_8 (\tr_reg[15]_0 ),
        .\grn_reg[15]_9 (\grn_reg[15]_8 ),
        .\grn_reg[1] (bank02_n_175),
        .\grn_reg[2] (bank02_n_176),
        .\grn_reg[3] (bank02_n_177),
        .\grn_reg[4] (\grn_reg[4] ),
        .\grn_reg[4]_0 (\grn_reg[4]_0 ),
        .\grn_reg[4]_1 (\grn_reg[4]_1 ),
        .\grn_reg[4]_2 (\grn_reg[4]_2 ),
        .\grn_reg[4]_3 (\grn_reg[4]_3 ),
        .\grn_reg[4]_4 (\grn_reg[4]_4 ),
        .\grn_reg[4]_5 (\grn_reg[4]_5 ),
        .\grn_reg[4]_6 (\grn_reg[4]_6 ),
        .\grn_reg[4]_7 (\grn_reg[4]_19 ),
        .\grn_reg[4]_8 (bank02_n_178),
        .\grn_reg[5] (\grn_reg[5] ),
        .\grn_reg[5]_0 (bank02_n_179),
        .\grn_reg[6] (\grn_reg[6] ),
        .\grn_reg[6]_0 (bank02_n_180),
        .\grn_reg[7] (\grn_reg[7] ),
        .\grn_reg[7]_0 (bank02_n_181),
        .\grn_reg[8] (\grn_reg[8] ),
        .\grn_reg[8]_0 (bank02_n_182),
        .\grn_reg[9] (\grn_reg[9] ),
        .\grn_reg[9]_0 (bank02_n_183),
        .out(out),
        .rst_n(rst_n));
  mcvm_rgf_bank_0 bank13
       (.SR(SR),
        .\abus_o[0] (bank02_n_174),
        .\abus_o[0]_0 (sreg_n_26),
        .\abus_o[0]_1 (\abus_o[0] ),
        .\abus_o[0]_2 (\abus_o[0]_0 ),
        .\abus_o[10] (bank02_n_184),
        .\abus_o[10]_0 (sreg_n_36),
        .\abus_o[10]_1 (\abus_o[10] ),
        .\abus_o[10]_2 (\abus_o[10]_0 ),
        .\abus_o[11] (bank02_n_185),
        .\abus_o[11]_0 (sreg_n_37),
        .\abus_o[11]_1 (\abus_o[11] ),
        .\abus_o[11]_2 (\abus_o[11]_0 ),
        .\abus_o[12] (bank02_n_186),
        .\abus_o[12]_0 (sreg_n_38),
        .\abus_o[12]_1 (\abus_o[12] ),
        .\abus_o[12]_2 (\abus_o[12]_0 ),
        .\abus_o[13] (bank02_n_187),
        .\abus_o[13]_0 (sreg_n_39),
        .\abus_o[13]_1 (\abus_o[13] ),
        .\abus_o[13]_2 (\abus_o[13]_0 ),
        .\abus_o[14] (bank02_n_188),
        .\abus_o[14]_0 (sreg_n_40),
        .\abus_o[14]_1 (\abus_o[14] ),
        .\abus_o[14]_2 (\abus_o[14]_0 ),
        .\abus_o[15] (bank02_n_189),
        .\abus_o[15]_0 (sreg_n_41),
        .\abus_o[15]_1 (\abus_o[15] ),
        .\abus_o[15]_2 (\abus_o[15]_0 ),
        .\abus_o[1] (bank02_n_175),
        .\abus_o[1]_0 (sreg_n_27),
        .\abus_o[1]_1 (\abus_o[1] ),
        .\abus_o[1]_2 (\abus_o[1]_0 ),
        .\abus_o[2] (bank02_n_176),
        .\abus_o[2]_0 (sreg_n_28),
        .\abus_o[2]_1 (\abus_o[2] ),
        .\abus_o[2]_2 (\abus_o[2]_0 ),
        .\abus_o[3] (bank02_n_177),
        .\abus_o[3]_0 (sreg_n_29),
        .\abus_o[3]_1 (\abus_o[3] ),
        .\abus_o[3]_2 (\abus_o[3]_0 ),
        .\abus_o[4] (bank02_n_178),
        .\abus_o[4]_0 (sreg_n_30),
        .\abus_o[4]_1 (\abus_o[4] ),
        .\abus_o[4]_2 (\abus_o[4]_0 ),
        .\abus_o[5] (bank02_n_179),
        .\abus_o[5]_0 (sreg_n_31),
        .\abus_o[5]_1 (\abus_o[5] ),
        .\abus_o[5]_2 (\abus_o[5]_0 ),
        .\abus_o[6] (bank02_n_180),
        .\abus_o[6]_0 (sreg_n_32),
        .\abus_o[6]_1 (\abus_o[6] ),
        .\abus_o[6]_2 (\abus_o[6]_0 ),
        .\abus_o[7] (bank02_n_181),
        .\abus_o[7]_0 (sreg_n_33),
        .\abus_o[7]_1 (\abus_o[7] ),
        .\abus_o[7]_2 (\abus_o[7]_0 ),
        .\abus_o[8] (bank02_n_182),
        .\abus_o[8]_0 (sreg_n_34),
        .\abus_o[8]_1 (\abus_o[8] ),
        .\abus_o[8]_2 (\abus_o[8]_0 ),
        .\abus_o[9] (bank02_n_183),
        .\abus_o[9]_0 (sreg_n_35),
        .\abus_o[9]_1 (\abus_o[9] ),
        .\abus_o[9]_2 (\abus_o[9]_0 ),
        .\badr[0]_INST_0_i_1_0 (\badr[0]_INST_0_i_1_1 ),
        .\badr[10]_INST_0_i_1 (\badr[10]_INST_0_i_1_1 ),
        .\badr[11]_INST_0_i_1_0 (\badr[11]_INST_0_i_1 ),
        .\badr[11]_INST_0_i_1_1 (\badr[11]_INST_0_i_1_2 ),
        .\badr[12]_INST_0_i_1_0 (\badr[12]_INST_0_i_1 ),
        .\badr[12]_INST_0_i_1_1 (\badr[12]_INST_0_i_1_2 ),
        .\badr[13]_INST_0_i_1_0 (\badr[13]_INST_0_i_1 ),
        .\badr[13]_INST_0_i_1_1 (\badr[13]_INST_0_i_1_2 ),
        .\badr[14]_INST_0_i_1_0 (\badr[14]_INST_0_i_1 ),
        .\badr[14]_INST_0_i_1_1 (\badr[14]_INST_0_i_1_2 ),
        .\badr[15]_INST_0_i_1 (\badr[15]_INST_0_i_1 ),
        .\badr[15]_INST_0_i_1_0 (\badr[15]_INST_0_i_1_2 ),
        .\badr[1]_INST_0_i_1 (\badr[1]_INST_0_i_1 ),
        .\badr[1]_INST_0_i_1_0 (\badr[1]_INST_0_i_1_0 ),
        .\badr[1]_INST_0_i_1_1 (\badr[1]_INST_0_i_1_3 ),
        .\badr[2]_INST_0_i_1 (\badr[2]_INST_0_i_1 ),
        .\badr[2]_INST_0_i_1_0 (\badr[2]_INST_0_i_1_2 ),
        .\badr[3]_INST_0_i_1 (\badr[3]_INST_0_i_1 ),
        .\badr[3]_INST_0_i_1_0 (\badr[3]_INST_0_i_1_2 ),
        .\badr[4]_INST_0_i_1_0 (\badr[4]_INST_0_i_1 ),
        .\badr[4]_INST_0_i_1_1 (\badr[4]_INST_0_i_1_2 ),
        .\badr[5]_INST_0_i_1 (\badr[5]_INST_0_i_1 ),
        .\badr[5]_INST_0_i_1_0 (\badr[5]_INST_0_i_1_2 ),
        .\badr[6]_INST_0_i_1 (\badr[6]_INST_0_i_1_1 ),
        .\badr[7]_INST_0_i_1 (\badr[7]_INST_0_i_1 ),
        .\badr[7]_INST_0_i_1_0 (\badr[7]_INST_0_i_1_2 ),
        .\badr[8]_INST_0_i_1 (\badr[8]_INST_0_i_1_1 ),
        .\badr[9]_INST_0_i_1 (\badr[9]_INST_0_i_1 ),
        .\badr[9]_INST_0_i_1_0 (\badr[9]_INST_0_i_1_2 ),
        .\bdatw[12]_INST_0_i_2 (\bdatw[12]_INST_0_i_2 ),
        .\bdatw[15]_INST_0_i_28_0 (\bdatw[15]_INST_0_i_28 ),
        .\bdatw[8]_INST_0_i_2 (\bdatw[8]_INST_0_i_2 ),
        .\bdatw[8]_INST_0_i_2_0 (\bdatw[8]_INST_0_i_2_0 ),
        .\bdatw[8]_INST_0_i_2_1 (\bdatw[8]_INST_0_i_2_1 ),
        .\bdatw[8]_INST_0_i_2_10 (\bdatw[8]_INST_0_i_2_10 ),
        .\bdatw[8]_INST_0_i_2_11 (\bdatw[8]_INST_0_i_2_11 ),
        .\bdatw[8]_INST_0_i_2_12 (\bdatw[8]_INST_0_i_2_12 ),
        .\bdatw[8]_INST_0_i_2_13 (\bdatw[8]_INST_0_i_2_13 ),
        .\bdatw[8]_INST_0_i_2_14 (\bdatw[8]_INST_0_i_2_14 ),
        .\bdatw[8]_INST_0_i_2_15 (\bdatw[8]_INST_0_i_2_15 ),
        .\bdatw[8]_INST_0_i_2_16 (\bdatw[8]_INST_0_i_2_16 ),
        .\bdatw[8]_INST_0_i_2_17 (\bdatw[8]_INST_0_i_2_17 ),
        .\bdatw[8]_INST_0_i_2_18 (\bdatw[8]_INST_0_i_2_18 ),
        .\bdatw[8]_INST_0_i_2_19 (\bdatw[8]_INST_0_i_2_19 ),
        .\bdatw[8]_INST_0_i_2_2 (\bdatw[8]_INST_0_i_2_2 ),
        .\bdatw[8]_INST_0_i_2_3 (\bdatw[8]_INST_0_i_2_3 ),
        .\bdatw[8]_INST_0_i_2_4 (\bdatw[8]_INST_0_i_2_4 ),
        .\bdatw[8]_INST_0_i_2_5 (\bdatw[8]_INST_0_i_2_5 ),
        .\bdatw[8]_INST_0_i_2_6 (\bdatw[8]_INST_0_i_2_6 ),
        .\bdatw[8]_INST_0_i_2_7 (\bdatw[8]_INST_0_i_2_7 ),
        .\bdatw[8]_INST_0_i_2_8 (\bdatw[8]_INST_0_i_2_8 ),
        .\bdatw[8]_INST_0_i_2_9 (\bdatw[8]_INST_0_i_2_9 ),
        .clk(clk),
        .gr0_bus1__0_15(gr0_bus1__0_15),
        .gr0_bus1__0_23(gr0_bus1__0_23),
        .gr0_bus1__0_31(gr0_bus1__0_31),
        .gr0_bus1__0_43(gr0_bus1__0_43),
        .gr1_bus1__0_16(gr1_bus1__0_16),
        .gr1_bus1__0_24(gr1_bus1__0_24),
        .gr1_bus1__0_36(gr1_bus1__0_36),
        .gr1_bus1__0_40(gr1_bus1__0_40),
        .gr2_bus1__0_17(gr2_bus1__0_17),
        .gr2_bus1__0_25(gr2_bus1__0_25),
        .gr2_bus1__0_37(gr2_bus1__0_37),
        .gr2_bus1__0_41(gr2_bus1__0_41),
        .gr3_bus1__0(\abuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_18(gr3_bus1__0_18),
        .gr3_bus1__0_26(gr3_bus1__0_26),
        .gr3_bus1__0_32(gr3_bus1__0_32),
        .gr4_bus1__0(\abuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_19(gr4_bus1__0_19),
        .gr4_bus1__0_27(gr4_bus1__0_27),
        .gr4_bus1__0_33(gr4_bus1__0_33),
        .gr5_bus1__0_20(gr5_bus1__0_20),
        .gr5_bus1__0_28(gr5_bus1__0_28),
        .gr5_bus1__0_34(gr5_bus1__0_34),
        .gr5_bus1__0_38(gr5_bus1__0_38),
        .gr6_bus1__0_21(gr6_bus1__0_21),
        .gr6_bus1__0_29(gr6_bus1__0_29),
        .gr6_bus1__0_35(gr6_bus1__0_35),
        .gr6_bus1__0_39(gr6_bus1__0_39),
        .gr7_bus1__0_14(gr7_bus1__0_14),
        .gr7_bus1__0_22(gr7_bus1__0_22),
        .gr7_bus1__0_30(gr7_bus1__0_30),
        .gr7_bus1__0_42(gr7_bus1__0_42),
        .\grn_reg[0] (abus_0[0]),
        .\grn_reg[0]_0 (\grn_reg[0] ),
        .\grn_reg[0]_1 (\grn_reg[0]_0 ),
        .\grn_reg[10] (abus_0[10]),
        .\grn_reg[10]_0 (\grn_reg[10]_0 ),
        .\grn_reg[11] (abus_0[11]),
        .\grn_reg[11]_0 (\grn_reg[11]_0 ),
        .\grn_reg[12] (abus_0[12]),
        .\grn_reg[12]_0 (\grn_reg[12]_0 ),
        .\grn_reg[13] (abus_0[13]),
        .\grn_reg[13]_0 (\grn_reg[13]_0 ),
        .\grn_reg[14] (abus_0[14]),
        .\grn_reg[14]_0 (\grn_reg[14]_0 ),
        .\grn_reg[15] (abus_0[15]),
        .\grn_reg[15]_0 (\grn_reg[15]_7 ),
        .\grn_reg[15]_1 (\grn_reg[15]_23 ),
        .\grn_reg[15]_10 (\grn_reg[15]_31 ),
        .\grn_reg[15]_11 (\grn_reg[15]_32 ),
        .\grn_reg[15]_12 (\grn_reg[15]_33 ),
        .\grn_reg[15]_13 (\grn_reg[15]_34 ),
        .\grn_reg[15]_14 (\grn_reg[15]_35 ),
        .\grn_reg[15]_15 (\grn_reg[15]_36 ),
        .\grn_reg[15]_16 (\grn_reg[15]_37 ),
        .\grn_reg[15]_17 (\grn_reg[15]_38 ),
        .\grn_reg[15]_2 (\tr_reg[15]_0 ),
        .\grn_reg[15]_3 (\grn_reg[15]_24 ),
        .\grn_reg[15]_4 (\grn_reg[15]_25 ),
        .\grn_reg[15]_5 (\grn_reg[15]_26 ),
        .\grn_reg[15]_6 (\grn_reg[15]_27 ),
        .\grn_reg[15]_7 (\grn_reg[15]_28 ),
        .\grn_reg[15]_8 (\grn_reg[15]_29 ),
        .\grn_reg[15]_9 (\grn_reg[15]_30 ),
        .\grn_reg[1] (abus_0[1]),
        .\grn_reg[1]_0 (\grn_reg[1] ),
        .\grn_reg[1]_1 (\grn_reg[1]_0 ),
        .\grn_reg[2] (abus_0[2]),
        .\grn_reg[2]_0 (\grn_reg[2] ),
        .\grn_reg[2]_1 (\grn_reg[2]_0 ),
        .\grn_reg[3] (abus_0[3]),
        .\grn_reg[3]_0 (\grn_reg[3] ),
        .\grn_reg[3]_1 (\grn_reg[3]_0 ),
        .\grn_reg[4] (\grn_reg[4]_7 ),
        .\grn_reg[4]_0 (\grn_reg[4]_8 ),
        .\grn_reg[4]_1 (\grn_reg[4]_9 ),
        .\grn_reg[4]_10 (\grn_reg[4]_18 ),
        .\grn_reg[4]_11 (abus_0[4]),
        .\grn_reg[4]_12 (\grn_reg[4]_20 ),
        .\grn_reg[4]_13 (\grn_reg[4]_21 ),
        .\grn_reg[4]_2 (\grn_reg[4]_10 ),
        .\grn_reg[4]_3 (\grn_reg[4]_11 ),
        .\grn_reg[4]_4 (\grn_reg[4]_12 ),
        .\grn_reg[4]_5 (\grn_reg[4]_13 ),
        .\grn_reg[4]_6 (\grn_reg[4]_14 ),
        .\grn_reg[4]_7 (\grn_reg[4]_15 ),
        .\grn_reg[4]_8 (\grn_reg[4]_16 ),
        .\grn_reg[4]_9 (\grn_reg[4]_17 ),
        .\grn_reg[5] (abus_0[5]),
        .\grn_reg[5]_0 (\grn_reg[5]_0 ),
        .\grn_reg[6] (abus_0[6]),
        .\grn_reg[6]_0 (\grn_reg[6]_0 ),
        .\grn_reg[7] (abus_0[7]),
        .\grn_reg[7]_0 (\grn_reg[7]_0 ),
        .\grn_reg[8] (abus_0[8]),
        .\grn_reg[8]_0 (\grn_reg[8]_0 ),
        .\grn_reg[9] (abus_0[9]),
        .\grn_reg[9]_0 (\grn_reg[9]_0 ),
        .\iv[0]_i_8 (sreg_n_44),
        .\iv[10]_i_23 (\iv[10]_i_23 ),
        .\iv[10]_i_30 (\iv[10]_i_30 ),
        .\iv[10]_i_9 (\iv[10]_i_9 ),
        .\iv[10]_i_9_0 (\iv[10]_i_9_0 ),
        .\iv[11]_i_25 (\iv[11]_i_25 ),
        .\iv[11]_i_8 (\iv[11]_i_8 ),
        .\iv[11]_i_8_0 (\iv[11]_i_8_0 ),
        .\iv[13]_i_18_0 (\iv[13]_i_18 ),
        .\iv[13]_i_2 (\iv[13]_i_2 ),
        .\iv[13]_i_23 (\iv[13]_i_23 ),
        .\iv[13]_i_23_0 (\iv[13]_i_23_0 ),
        .\iv[13]_i_25_0 (\iv[13]_i_25 ),
        .\iv[13]_i_27_0 (\iv[13]_i_27 ),
        .\iv[13]_i_2_0 (\iv[13]_i_2_0 ),
        .\iv[13]_i_31 (\iv[13]_i_31 ),
        .\iv[13]_i_32_0 (\iv[13]_i_32 ),
        .\iv[13]_i_33_0 (\iv[13]_i_33 ),
        .\iv[13]_i_36 (\iv[13]_i_36 ),
        .\iv[13]_i_36_0 (\iv[13]_i_36_0 ),
        .\iv[13]_i_6 (\iv[13]_i_6 ),
        .\iv[14]_i_29 (\iv[14]_i_29 ),
        .\iv[14]_i_39 (\iv[14]_i_39 ),
        .\iv[14]_i_39_0 (\iv[14]_i_39_0 ),
        .\iv[14]_i_42 (\iv[14]_i_42 ),
        .\iv[14]_i_8 (\iv[14]_i_8 ),
        .\iv[2]_i_23 (\iv[2]_i_23 ),
        .\iv[2]_i_23_0 (\iv[2]_i_23_0 ),
        .\iv[2]_i_23_1 (\iv[2]_i_23_1 ),
        .\iv[2]_i_23_2 (\iv[2]_i_23_2 ),
        .\iv[2]_i_23_3 (\iv[2]_i_23_3 ),
        .\iv[2]_i_8 (\iv[2]_i_8 ),
        .\iv[2]_i_8_0 (\iv[2]_i_8_0 ),
        .\iv[2]_i_8_1 (\iv[2]_i_8_1 ),
        .\iv[2]_i_8_2 (\iv[2]_i_8_2 ),
        .\iv[2]_i_9 (\iv[2]_i_9 ),
        .\iv[5]_i_15 (\iv[5]_i_15 ),
        .\iv[5]_i_2 (\iv[5]_i_2 ),
        .\iv[5]_i_5 (\iv[5]_i_5 ),
        .\iv[7]_i_18 (\iv[7]_i_18 ),
        .\iv[7]_i_9 (\iv[7]_i_9 ),
        .\iv[8]_i_20 (\iv[8]_i_20 ),
        .\iv[9]_i_2 (\iv[9]_i_2 ),
        .\iv[9]_i_2_0 (\iv[9]_i_2_0 ),
        .\iv[9]_i_6 (\iv[9]_i_6 ),
        .out(\sr_reg[15] [15:5]),
        .\sr[6]_i_10_0 (\sr[6]_i_10 ),
        .\sr[6]_i_3 (\sr[6]_i_3 ),
        .\sr[6]_i_3_0 (\sr[6]_i_3_0 ),
        .\sr[7]_i_9 (sreg_n_45),
        .\sr_reg[6] (\sr_reg[6] ),
        .\sr_reg[6]_0 (\sr_reg[6]_0 ),
        .\sr_reg[6]_1 (\sr_reg[6]_1 ),
        .\sr_reg[6]_10 (\sr_reg[6]_10 ),
        .\sr_reg[6]_11 (\sr_reg[6]_11 ),
        .\sr_reg[6]_12 (\sr_reg[6]_12 ),
        .\sr_reg[6]_13 (\sr_reg[6]_13 ),
        .\sr_reg[6]_14 (\sr_reg[6]_14 ),
        .\sr_reg[6]_15 (\sr_reg[6]_15 ),
        .\sr_reg[6]_16 (\sr_reg[6]_16 ),
        .\sr_reg[6]_17 (\sr_reg[6]_17 ),
        .\sr_reg[6]_18 (\sr_reg[6]_18 ),
        .\sr_reg[6]_19 (\sr_reg[6]_19 ),
        .\sr_reg[6]_2 (\sr_reg[6]_2 ),
        .\sr_reg[6]_3 (\sr_reg[6]_3 ),
        .\sr_reg[6]_4 (\sr_reg[6]_4 ),
        .\sr_reg[6]_5 (\sr_reg[6]_5 ),
        .\sr_reg[6]_6 (\sr_reg[6]_6 ),
        .\sr_reg[6]_7 (\sr_reg[6]_7 ),
        .\sr_reg[6]_8 (\sr_reg[6]_8 ),
        .\sr_reg[6]_9 (\sr_reg[6]_9 ),
        .\stat_reg[2] (\stat_reg[2] ),
        .\stat_reg[2]_0 (\stat_reg[2]_0 ),
        .\stat_reg[2]_1 (\stat_reg[2]_1 ),
        .\stat_reg[2]_2 (\stat_reg[2]_2 ),
        .\stat_reg[2]_3 (\stat_reg[2]_3 ),
        .\stat_reg[2]_4 (\stat_reg[2]_4 ),
        .\stat_reg[2]_5 (\stat_reg[2]_5 ),
        .\stat_reg[2]_6 (\stat_reg[2]_6 ),
        .\stat_reg[2]_7 (\stat_reg[2]_7 ),
        .\stat_reg[2]_8 (\stat_reg[2]_8 ),
        .\tr_reg[2] (\tr_reg[2] ),
        .\tr_reg[2]_0 (\tr_reg[2]_0 ),
        .\tr_reg[2]_1 (\tr_reg[2]_1 ));
  mcvm_rgf_ivec ivec
       (.SR(SR),
        .clk(clk),
        .\iv_reg[0]_0 (\tr_reg[0] [0]),
        .\iv_reg[15]_0 (\iv_reg[15] ),
        .\iv_reg[15]_1 (\tr_reg[15]_0 ));
  mcvm_rgf_pcnt pcnt
       (.S(sreg_n_52),
        .SR(SR),
        .clk(clk),
        .fadr(fadr),
        .fch_pc(fch_pc),
        .\pc_reg[15]_0 (\pc_reg[15] ));
  mcvm_rgf_sptr sptr
       (.SR(SR),
        .clk(clk),
        .sp_dec_0(sp_dec_0),
        .\sp_reg[11]_0 (\sp_reg[11] ),
        .\sp_reg[15]_0 (\sp_reg[15] ),
        .\sp_reg[15]_1 (\sp_reg[15]_0 ),
        .\sp_reg[15]_2 (\sp_reg[15]_1 ),
        .\sp_reg[1]_0 (\sp_reg[1] ),
        .\sp_reg[3]_0 (\sp_reg[3] ),
        .\sp_reg[7]_0 (\sp_reg[7] ));
  mcvm_rgf_sreg sreg
       (.D(D),
        .S(sreg_n_52),
        .abus_0({abus_0[15],abus_0[0]}),
        .\badr[0]_INST_0_i_1 (\badr[0]_INST_0_i_1_0 ),
        .\badr[0]_INST_0_i_5_0 (\badr[0]_INST_0_i_5 ),
        .\badr[0]_INST_0_i_5_1 (\badr[0]_INST_0_i_5_0 ),
        .\badr[10]_INST_0_i_1 (\badr[10]_INST_0_i_1_0 ),
        .\badr[11]_INST_0_i_1 (\badr[11]_INST_0_i_1_1 ),
        .\badr[12]_INST_0_i_1 (\badr[12]_INST_0_i_1_1 ),
        .\badr[13]_INST_0_i_1 (\badr[13]_INST_0_i_1_1 ),
        .\badr[14]_INST_0_i_1 (\badr[14]_INST_0_i_1_1 ),
        .\badr[14]_INST_0_i_3 (\badr[14]_INST_0_i_3 ),
        .\badr[15]_INST_0_i_1 ({\grn_reg[15]_1 ,bank02_n_59,bank02_n_60,bank02_n_61,bank02_n_62,bank02_n_63}),
        .\badr[15]_INST_0_i_1_0 ({\grn_reg[15]_0 ,bank02_n_43,bank02_n_44,bank02_n_45,bank02_n_46,bank02_n_47}),
        .\badr[15]_INST_0_i_1_1 (\badr[15]_INST_0_i_1_1 ),
        .\badr[1]_INST_0_i_1 (\badr[1]_INST_0_i_1_2 ),
        .\badr[2]_INST_0_i_1 (\badr[2]_INST_0_i_1_1 ),
        .\badr[3]_INST_0_i_1 (\badr[3]_INST_0_i_1_1 ),
        .\badr[4]_INST_0_i_1 (\badr[4]_INST_0_i_1_1 ),
        .\badr[5]_INST_0_i_1 (\badr[5]_INST_0_i_1_1 ),
        .\badr[6]_INST_0_i_1 (\badr[6]_INST_0_i_1_0 ),
        .\badr[7]_INST_0_i_1 (\badr[7]_INST_0_i_1_1 ),
        .\badr[8]_INST_0_i_1 (\badr[8]_INST_0_i_1_0 ),
        .\badr[9]_INST_0_i_1 (\badr[9]_INST_0_i_1_1 ),
        .bank_sel(bank_sel),
        .\bdatw[8]_INST_0_i_8 (\bdatw[8]_INST_0_i_8 ),
        .clk(clk),
        .ctl_fetch_inferred_i_13(ctl_fetch_inferred_i_13),
        .ctl_fetch_inferred_i_9(ctl_fetch_inferred_i_9),
        .ctl_fetch_inferred_i_9_0(ctl_fetch_inferred_i_9_0),
        .fadr(fadr[1]),
        .fch_irq_req(fch_irq_req),
        .gr0_bus1__0(\bbuso2l/gr0_bus1__0 ),
        .gr3_bus1__0(\abuso2l/gr3_bus1__0 ),
        .gr4_bus1__0(\abuso2l/gr4_bus1__0 ),
        .\grn_reg[0] (sreg_n_26),
        .\grn_reg[10] (sreg_n_36),
        .\grn_reg[11] (sreg_n_37),
        .\grn_reg[12] (sreg_n_38),
        .\grn_reg[13] (sreg_n_39),
        .\grn_reg[14] (sreg_n_40),
        .\grn_reg[15] (sreg_n_41),
        .\grn_reg[1] (sreg_n_27),
        .\grn_reg[2] (sreg_n_28),
        .\grn_reg[3] (sreg_n_29),
        .\grn_reg[4] (sreg_n_30),
        .\grn_reg[5] (sreg_n_31),
        .\grn_reg[6] (sreg_n_32),
        .\grn_reg[7] (sreg_n_33),
        .\grn_reg[8] (sreg_n_34),
        .\grn_reg[9] (sreg_n_35),
        .irq(irq),
        .irq_lev(irq_lev),
        .irq_lev_0_sp_1(irq_lev_0_sn_1),
        .\iv[0]_i_16 (\iv[13]_i_18 ),
        .out(out[4:0]),
        .\sr_reg[15]_0 (\sr_reg[15] ),
        .\sr_reg[1]_0 (sreg_n_20),
        .\sr_reg[1]_1 (sreg_n_21),
        .\sr_reg[1]_2 (sreg_n_22),
        .\sr_reg[1]_3 (sreg_n_23),
        .\sr_reg[1]_4 (sreg_n_24),
        .\sr_reg[5]_0 (\sr_reg[5] ),
        .\sr_reg[6]_0 (sreg_n_44),
        .\sr_reg[6]_1 (sreg_n_45),
        .\sr_reg[7]_0 (\sr_reg[7] ),
        .\sr_reg[7]_1 (\sr_reg[7]_0 ),
        .\sr_reg[7]_2 (\sr_reg[7]_1 ),
        .\sr_reg[8]_0 (\sr_reg[8] ));
  mcvm_rgf_treg treg
       (.SR(SR),
        .badrx(badrx),
        .badrx_15_sp_1(badrx_15_sn_1),
        .clk(clk),
        .\tr_reg[0]_0 (\tr_reg[0] [1]),
        .\tr_reg[15]_0 (\tr_reg[15] ),
        .\tr_reg[15]_1 (\tr_reg[15]_0 ));
endmodule

module mcvm_rgf_bank
   (.out({gr20[15],gr20[14],gr20[13],gr20[12],gr20[11],gr20[10],gr20[9],gr20[8],gr20[7],gr20[6],gr20[5],gr20[4],gr20[3],gr20[2],gr20[1],gr20[0]}),
    .\grn_reg[15] ({gr21[15],gr21[14],gr21[13],gr21[12],gr21[11],gr21[10],gr21[9],gr21[8],gr21[7],gr21[6],gr21[5],gr21[4],gr21[3],gr21[2],gr21[1],gr21[0]}),
    .\grn_reg[15]_0 ({gr22[15],gr22[14],gr22[13],gr22[12],gr22[11],gr22[10],gr22[9],gr22[8],gr22[7],gr22[6],gr22[5],gr22[4],gr22[3],gr22[2],gr22[1],gr22[0]}),
    .\grn_reg[15]_1 ({gr23[15],gr23[14],gr23[13],gr23[12],gr23[11],gr23[10],gr23[9],gr23[8],gr23[7],gr23[6],gr23[5],gr23[4],gr23[3],gr23[2],gr23[1],gr23[0]}),
    .\grn_reg[15]_2 ({gr24[15],gr24[14],gr24[13],gr24[12],gr24[11],gr24[10],gr24[9],gr24[8],gr24[7],gr24[6],gr24[5]}),
    .\grn_reg[15]_3 ({gr25[15],gr25[14],gr25[13],gr25[12],gr25[11],gr25[10],gr25[9],gr25[8],gr25[7],gr25[6],gr25[5]}),
    .\grn_reg[15]_4 ({gr26[15],gr26[14],gr26[13],gr26[12],gr26[11],gr26[10],gr26[9],gr26[8],gr26[7],gr26[6],gr26[5],gr26[4],gr26[3],gr26[2],gr26[1],gr26[0]}),
    .\grn_reg[15]_5 ({gr27[15],gr27[14],gr27[13],gr27[12],gr27[11],gr27[10],gr27[9],gr27[8],gr27[7],gr27[6],gr27[5],gr27[4],gr27[3],gr27[2],gr27[1],gr27[0]}),
    .\grn_reg[4] ({gr00[4],gr00[3],gr00[2],gr00[1],gr00[0]}),
    .\grn_reg[4]_0 ({gr01[4],gr01[3],gr01[2],gr01[1],gr01[0]}),
    .\grn_reg[4]_1 ({gr02[4],gr02[3],gr02[2],gr02[1],gr02[0]}),
    .\grn_reg[4]_2 ({gr03[4],gr03[3],gr03[2],gr03[1],gr03[0]}),
    .\grn_reg[4]_3 ({gr04[4],gr04[3],gr04[2],gr04[1],gr04[0]}),
    .\grn_reg[4]_4 ({gr05[4],gr05[3],gr05[2],gr05[1],gr05[0]}),
    .\grn_reg[4]_5 ({gr06[4],gr06[3],gr06[2],gr06[1],gr06[0]}),
    .\grn_reg[4]_6 ({gr07[4],gr07[3],gr07[2],gr07[1],gr07[0]}),
    \grn_reg[4]_7 ,
    \grn_reg[5] ,
    \grn_reg[6] ,
    \grn_reg[7] ,
    \grn_reg[8] ,
    \grn_reg[9] ,
    \grn_reg[10] ,
    \grn_reg[11] ,
    \grn_reg[12] ,
    \grn_reg[13] ,
    \grn_reg[14] ,
    \grn_reg[15]_6 ,
    \grn_reg[0] ,
    \grn_reg[1] ,
    \grn_reg[2] ,
    \grn_reg[3] ,
    \grn_reg[4]_8 ,
    \grn_reg[5]_0 ,
    \grn_reg[6]_0 ,
    \grn_reg[7]_0 ,
    \grn_reg[8]_0 ,
    \grn_reg[9]_0 ,
    \grn_reg[10]_0 ,
    \grn_reg[11]_0 ,
    \grn_reg[12]_0 ,
    \grn_reg[13]_0 ,
    \grn_reg[14]_0 ,
    \grn_reg[15]_7 ,
    SR,
    \bdatw[8]_INST_0_i_2 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \bdatw[8]_INST_0_i_2_1 ,
    \bdatw[8]_INST_0_i_2_2 ,
    \bdatw[9]_INST_0_i_2 ,
    \bdatw[9]_INST_0_i_2_0 ,
    \bdatw[9]_INST_0_i_2_1 ,
    \bdatw[9]_INST_0_i_2_2 ,
    \bdatw[10]_INST_0_i_2 ,
    \bdatw[10]_INST_0_i_2_0 ,
    \bdatw[10]_INST_0_i_2_1 ,
    \bdatw[10]_INST_0_i_2_2 ,
    \bdatw[11]_INST_0_i_2 ,
    \bdatw[11]_INST_0_i_2_0 ,
    \bdatw[11]_INST_0_i_2_1 ,
    \bdatw[11]_INST_0_i_2_2 ,
    \bdatw[12]_INST_0_i_2 ,
    \bdatw[12]_INST_0_i_2_0 ,
    \bdatw[12]_INST_0_i_2_1 ,
    \bdatw[12]_INST_0_i_2_2 ,
    gr0_bus1__0_0,
    gr1_bus1__0,
    gr2_bus1__0,
    gr3_bus1__0,
    gr4_bus1__0,
    gr5_bus1__0,
    gr6_bus1__0,
    gr7_bus1__0,
    gr0_bus1__0,
    \badr[0]_INST_0_i_1 ,
    gr1_bus1__0_0,
    gr2_bus1__0_1,
    \badr[1]_INST_0_i_1 ,
    \badr[2]_INST_0_i_1 ,
    \badr[3]_INST_0_i_1 ,
    \badr[4]_INST_0_i_1 ,
    \badr[5]_INST_0_i_1 ,
    \badr[6]_INST_0_i_1 ,
    \badr[7]_INST_0_i_1 ,
    \badr[8]_INST_0_i_1 ,
    \badr[9]_INST_0_i_1 ,
    \badr[10]_INST_0_i_1 ,
    \badr[11]_INST_0_i_1 ,
    \badr[12]_INST_0_i_1 ,
    \badr[13]_INST_0_i_1 ,
    \badr[14]_INST_0_i_1 ,
    \badr[15]_INST_0_i_1 ,
    gr3_bus1__0_2,
    gr4_bus1__0_3,
    gr5_bus1__0_4,
    gr6_bus1__0_5,
    gr7_bus1__0_6,
    gr0_bus1__0_7,
    gr2_bus1__0_8,
    gr3_bus1__0_9,
    gr4_bus1__0_10,
    gr5_bus1__0_11,
    gr4_bus1__0_12,
    gr5_bus1__0_13,
    rst_n,
    E,
    \grn_reg[15]_8 ,
    clk,
    \grn_reg[15]_9 ,
    \grn_reg[15]_10 ,
    \grn_reg[15]_11 ,
    \grn_reg[15]_12 ,
    \grn_reg[15]_13 ,
    \grn_reg[15]_14 ,
    \grn_reg[15]_15 ,
    \grn_reg[15]_16 ,
    \grn_reg[15]_17 ,
    \grn_reg[15]_18 ,
    \grn_reg[15]_19 ,
    \grn_reg[15]_20 ,
    \grn_reg[15]_21 ,
    \grn_reg[15]_22 ,
    \grn_reg[15]_23 );
  output [4:0]\grn_reg[4]_7 ;
  output \grn_reg[5] ;
  output \grn_reg[6] ;
  output \grn_reg[7] ;
  output \grn_reg[8] ;
  output \grn_reg[9] ;
  output \grn_reg[10] ;
  output \grn_reg[11] ;
  output \grn_reg[12] ;
  output \grn_reg[13] ;
  output \grn_reg[14] ;
  output \grn_reg[15]_6 ;
  output \grn_reg[0] ;
  output \grn_reg[1] ;
  output \grn_reg[2] ;
  output \grn_reg[3] ;
  output \grn_reg[4]_8 ;
  output \grn_reg[5]_0 ;
  output \grn_reg[6]_0 ;
  output \grn_reg[7]_0 ;
  output \grn_reg[8]_0 ;
  output \grn_reg[9]_0 ;
  output \grn_reg[10]_0 ;
  output \grn_reg[11]_0 ;
  output \grn_reg[12]_0 ;
  output \grn_reg[13]_0 ;
  output \grn_reg[14]_0 ;
  output \grn_reg[15]_7 ;
  output [0:0]SR;
  input \bdatw[8]_INST_0_i_2 ;
  input \bdatw[8]_INST_0_i_2_0 ;
  input \bdatw[8]_INST_0_i_2_1 ;
  input \bdatw[8]_INST_0_i_2_2 ;
  input \bdatw[9]_INST_0_i_2 ;
  input \bdatw[9]_INST_0_i_2_0 ;
  input \bdatw[9]_INST_0_i_2_1 ;
  input \bdatw[9]_INST_0_i_2_2 ;
  input \bdatw[10]_INST_0_i_2 ;
  input \bdatw[10]_INST_0_i_2_0 ;
  input \bdatw[10]_INST_0_i_2_1 ;
  input \bdatw[10]_INST_0_i_2_2 ;
  input \bdatw[11]_INST_0_i_2 ;
  input \bdatw[11]_INST_0_i_2_0 ;
  input \bdatw[11]_INST_0_i_2_1 ;
  input \bdatw[11]_INST_0_i_2_2 ;
  input \bdatw[12]_INST_0_i_2 ;
  input \bdatw[12]_INST_0_i_2_0 ;
  input \bdatw[12]_INST_0_i_2_1 ;
  input \bdatw[12]_INST_0_i_2_2 ;
  input gr0_bus1__0_0;
  input gr1_bus1__0;
  input gr2_bus1__0;
  input gr3_bus1__0;
  input gr4_bus1__0;
  input gr5_bus1__0;
  input gr6_bus1__0;
  input gr7_bus1__0;
  input gr0_bus1__0;
  input \badr[0]_INST_0_i_1 ;
  input gr1_bus1__0_0;
  input gr2_bus1__0_1;
  input \badr[1]_INST_0_i_1 ;
  input \badr[2]_INST_0_i_1 ;
  input \badr[3]_INST_0_i_1 ;
  input \badr[4]_INST_0_i_1 ;
  input \badr[5]_INST_0_i_1 ;
  input \badr[6]_INST_0_i_1 ;
  input \badr[7]_INST_0_i_1 ;
  input \badr[8]_INST_0_i_1 ;
  input \badr[9]_INST_0_i_1 ;
  input \badr[10]_INST_0_i_1 ;
  input \badr[11]_INST_0_i_1 ;
  input \badr[12]_INST_0_i_1 ;
  input \badr[13]_INST_0_i_1 ;
  input \badr[14]_INST_0_i_1 ;
  input \badr[15]_INST_0_i_1 ;
  input gr3_bus1__0_2;
  input gr4_bus1__0_3;
  input gr5_bus1__0_4;
  input gr6_bus1__0_5;
  input gr7_bus1__0_6;
  input gr0_bus1__0_7;
  input gr2_bus1__0_8;
  input gr3_bus1__0_9;
  input gr4_bus1__0_10;
  input gr5_bus1__0_11;
  input gr4_bus1__0_12;
  input gr5_bus1__0_13;
  input rst_n;
  input [0:0]E;
  input [15:0]\grn_reg[15]_8 ;
  input clk;
  input [0:0]\grn_reg[15]_9 ;
  input [0:0]\grn_reg[15]_10 ;
  input [0:0]\grn_reg[15]_11 ;
  input [0:0]\grn_reg[15]_12 ;
  input [0:0]\grn_reg[15]_13 ;
  input [0:0]\grn_reg[15]_14 ;
  input [0:0]\grn_reg[15]_15 ;
  input [0:0]\grn_reg[15]_16 ;
  input [0:0]\grn_reg[15]_17 ;
  input [0:0]\grn_reg[15]_18 ;
  input [0:0]\grn_reg[15]_19 ;
  input [0:0]\grn_reg[15]_20 ;
  input [0:0]\grn_reg[15]_21 ;
  input [0:0]\grn_reg[15]_22 ;
  input [0:0]\grn_reg[15]_23 ;
     output [15:0]gr20;
     output [15:0]gr21;
     output [15:0]gr22;
     output [15:0]gr23;
     output [15:0]gr24;
     output [15:0]gr25;
     output [15:0]gr26;
     output [15:0]gr27;
     output [15:0]gr00;
     output [15:0]gr01;
     output [15:0]gr02;
     output [15:0]gr03;
     output [15:0]gr04;
     output [15:0]gr05;
     output [15:0]gr06;
     output [15:0]gr07;

  wire [0:0]E;
  wire [0:0]SR;
  wire \badr[0]_INST_0_i_1 ;
  wire \badr[0]_INST_0_i_16_n_0 ;
  wire \badr[0]_INST_0_i_17_n_0 ;
  wire \badr[0]_INST_0_i_18_n_0 ;
  wire \badr[0]_INST_0_i_19_n_0 ;
  wire \badr[0]_INST_0_i_20_n_0 ;
  wire \badr[10]_INST_0_i_1 ;
  wire \badr[11]_INST_0_i_1 ;
  wire \badr[11]_INST_0_i_16_n_0 ;
  wire \badr[11]_INST_0_i_17_n_0 ;
  wire \badr[11]_INST_0_i_18_n_0 ;
  wire \badr[11]_INST_0_i_19_n_0 ;
  wire \badr[11]_INST_0_i_20_n_0 ;
  wire \badr[12]_INST_0_i_1 ;
  wire \badr[12]_INST_0_i_16_n_0 ;
  wire \badr[12]_INST_0_i_17_n_0 ;
  wire \badr[12]_INST_0_i_18_n_0 ;
  wire \badr[12]_INST_0_i_19_n_0 ;
  wire \badr[12]_INST_0_i_20_n_0 ;
  wire \badr[13]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_16_n_0 ;
  wire \badr[13]_INST_0_i_17_n_0 ;
  wire \badr[13]_INST_0_i_18_n_0 ;
  wire \badr[13]_INST_0_i_19_n_0 ;
  wire \badr[13]_INST_0_i_20_n_0 ;
  wire \badr[14]_INST_0_i_1 ;
  wire \badr[14]_INST_0_i_16_n_0 ;
  wire \badr[14]_INST_0_i_17_n_0 ;
  wire \badr[14]_INST_0_i_18_n_0 ;
  wire \badr[14]_INST_0_i_19_n_0 ;
  wire \badr[14]_INST_0_i_20_n_0 ;
  wire \badr[15]_INST_0_i_1 ;
  wire \badr[1]_INST_0_i_1 ;
  wire \badr[2]_INST_0_i_1 ;
  wire \badr[3]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_16_n_0 ;
  wire \badr[4]_INST_0_i_17_n_0 ;
  wire \badr[4]_INST_0_i_18_n_0 ;
  wire \badr[4]_INST_0_i_19_n_0 ;
  wire \badr[4]_INST_0_i_20_n_0 ;
  wire \badr[5]_INST_0_i_1 ;
  wire \badr[6]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_1 ;
  wire \badr[8]_INST_0_i_1 ;
  wire \badr[9]_INST_0_i_1 ;
  wire \bdatw[10]_INST_0_i_2 ;
  wire \bdatw[10]_INST_0_i_2_0 ;
  wire \bdatw[10]_INST_0_i_2_1 ;
  wire \bdatw[10]_INST_0_i_2_2 ;
  wire \bdatw[10]_INST_0_i_41_n_0 ;
  wire \bdatw[10]_INST_0_i_42_n_0 ;
  wire \bdatw[10]_INST_0_i_43_n_0 ;
  wire \bdatw[10]_INST_0_i_44_n_0 ;
  wire \bdatw[11]_INST_0_i_2 ;
  wire \bdatw[11]_INST_0_i_2_0 ;
  wire \bdatw[11]_INST_0_i_2_1 ;
  wire \bdatw[11]_INST_0_i_2_2 ;
  wire \bdatw[11]_INST_0_i_43_n_0 ;
  wire \bdatw[11]_INST_0_i_44_n_0 ;
  wire \bdatw[11]_INST_0_i_45_n_0 ;
  wire \bdatw[11]_INST_0_i_46_n_0 ;
  wire \bdatw[12]_INST_0_i_2 ;
  wire \bdatw[12]_INST_0_i_2_0 ;
  wire \bdatw[12]_INST_0_i_2_1 ;
  wire \bdatw[12]_INST_0_i_2_2 ;
  wire \bdatw[12]_INST_0_i_74_n_0 ;
  wire \bdatw[12]_INST_0_i_75_n_0 ;
  wire \bdatw[12]_INST_0_i_76_n_0 ;
  wire \bdatw[12]_INST_0_i_77_n_0 ;
  wire \bdatw[13]_INST_0_i_24_n_0 ;
  wire \bdatw[13]_INST_0_i_25_n_0 ;
  wire \bdatw[13]_INST_0_i_26_n_0 ;
  wire \bdatw[13]_INST_0_i_27_n_0 ;
  wire \bdatw[14]_INST_0_i_25_n_0 ;
  wire \bdatw[14]_INST_0_i_26_n_0 ;
  wire \bdatw[14]_INST_0_i_27_n_0 ;
  wire \bdatw[14]_INST_0_i_28_n_0 ;
  wire \bdatw[15]_INST_0_i_77_n_0 ;
  wire \bdatw[15]_INST_0_i_78_n_0 ;
  wire \bdatw[15]_INST_0_i_79_n_0 ;
  wire \bdatw[15]_INST_0_i_80_n_0 ;
  wire \bdatw[15]_INST_0_i_93_n_0 ;
  wire \bdatw[15]_INST_0_i_94_n_0 ;
  wire \bdatw[15]_INST_0_i_95_n_0 ;
  wire \bdatw[15]_INST_0_i_96_n_0 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_2_2 ;
  wire \bdatw[8]_INST_0_i_43_n_0 ;
  wire \bdatw[8]_INST_0_i_44_n_0 ;
  wire \bdatw[8]_INST_0_i_45_n_0 ;
  wire \bdatw[8]_INST_0_i_46_n_0 ;
  wire \bdatw[9]_INST_0_i_2 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_2_1 ;
  wire \bdatw[9]_INST_0_i_2_2 ;
  wire \bdatw[9]_INST_0_i_43_n_0 ;
  wire \bdatw[9]_INST_0_i_44_n_0 ;
  wire \bdatw[9]_INST_0_i_45_n_0 ;
  wire \bdatw[9]_INST_0_i_46_n_0 ;
  wire clk;
  (* DONT_TOUCH *) wire [15:0]gr00;
  (* DONT_TOUCH *) wire [15:0]gr01;
  (* DONT_TOUCH *) wire [15:0]gr02;
  (* DONT_TOUCH *) wire [15:0]gr03;
  (* DONT_TOUCH *) wire [15:0]gr04;
  (* DONT_TOUCH *) wire [15:0]gr05;
  (* DONT_TOUCH *) wire [15:0]gr06;
  (* DONT_TOUCH *) wire [15:0]gr07;
  wire gr0_bus1__0;
  wire gr0_bus1__0_0;
  wire gr0_bus1__0_7;
  wire gr1_bus1__0;
  wire gr1_bus1__0_0;
  (* DONT_TOUCH *) wire [15:0]gr20;
  (* DONT_TOUCH *) wire [15:0]gr21;
  (* DONT_TOUCH *) wire [15:0]gr22;
  (* DONT_TOUCH *) wire [15:0]gr23;
  (* DONT_TOUCH *) wire [15:0]gr24;
  (* DONT_TOUCH *) wire [15:0]gr25;
  (* DONT_TOUCH *) wire [15:0]gr26;
  (* DONT_TOUCH *) wire [15:0]gr27;
  wire gr2_bus1__0;
  wire gr2_bus1__0_1;
  wire gr2_bus1__0_8;
  wire gr3_bus1__0;
  wire gr3_bus1__0_2;
  wire gr3_bus1__0_9;
  wire gr4_bus1__0;
  wire gr4_bus1__0_10;
  wire gr4_bus1__0_12;
  wire gr4_bus1__0_3;
  wire gr5_bus1__0;
  wire gr5_bus1__0_11;
  wire gr5_bus1__0_13;
  wire gr5_bus1__0_4;
  wire gr6_bus1__0;
  wire gr6_bus1__0_5;
  wire gr7_bus1__0;
  wire gr7_bus1__0_6;
  wire \grn_reg[0] ;
  wire \grn_reg[10] ;
  wire \grn_reg[10]_0 ;
  wire \grn_reg[11] ;
  wire \grn_reg[11]_0 ;
  wire \grn_reg[12] ;
  wire \grn_reg[12]_0 ;
  wire \grn_reg[13] ;
  wire \grn_reg[13]_0 ;
  wire \grn_reg[14] ;
  wire \grn_reg[14]_0 ;
  wire [0:0]\grn_reg[15]_10 ;
  wire [0:0]\grn_reg[15]_11 ;
  wire [0:0]\grn_reg[15]_12 ;
  wire [0:0]\grn_reg[15]_13 ;
  wire [0:0]\grn_reg[15]_14 ;
  wire [0:0]\grn_reg[15]_15 ;
  wire [0:0]\grn_reg[15]_16 ;
  wire [0:0]\grn_reg[15]_17 ;
  wire [0:0]\grn_reg[15]_18 ;
  wire [0:0]\grn_reg[15]_19 ;
  wire [0:0]\grn_reg[15]_20 ;
  wire [0:0]\grn_reg[15]_21 ;
  wire [0:0]\grn_reg[15]_22 ;
  wire [0:0]\grn_reg[15]_23 ;
  wire \grn_reg[15]_6 ;
  wire \grn_reg[15]_7 ;
  wire [15:0]\grn_reg[15]_8 ;
  wire [0:0]\grn_reg[15]_9 ;
  wire \grn_reg[1] ;
  wire \grn_reg[2] ;
  wire \grn_reg[3] ;
  wire [4:0]\grn_reg[4]_7 ;
  wire \grn_reg[4]_8 ;
  wire \grn_reg[5] ;
  wire \grn_reg[5]_0 ;
  wire \grn_reg[6] ;
  wire \grn_reg[6]_0 ;
  wire \grn_reg[7] ;
  wire \grn_reg[7]_0 ;
  wire \grn_reg[8] ;
  wire \grn_reg[8]_0 ;
  wire \grn_reg[9] ;
  wire \grn_reg[9]_0 ;
  wire rst_n;

  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_16 
       (.I0(gr24[0]),
        .I1(gr4_bus1__0_12),
        .I2(gr25[0]),
        .I3(gr5_bus1__0_13),
        .O(\badr[0]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_17 
       (.I0(gr03[0]),
        .I1(gr3_bus1__0_2),
        .I2(gr04[0]),
        .I3(gr4_bus1__0_3),
        .O(\badr[0]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_18 
       (.I0(gr01[0]),
        .I1(gr1_bus1__0_0),
        .I2(gr02[0]),
        .I3(gr2_bus1__0_1),
        .O(\badr[0]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_19 
       (.I0(gr07[0]),
        .I1(gr7_bus1__0_6),
        .I2(gr00[0]),
        .I3(gr0_bus1__0_7),
        .O(\badr[0]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_20 
       (.I0(gr05[0]),
        .I1(gr5_bus1__0_4),
        .I2(gr06[0]),
        .I3(gr6_bus1__0_5),
        .O(\badr[0]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[0]_INST_0_i_4 
       (.I0(\badr[0]_INST_0_i_16_n_0 ),
        .I1(\badr[0]_INST_0_i_17_n_0 ),
        .I2(\badr[0]_INST_0_i_18_n_0 ),
        .I3(\badr[0]_INST_0_i_19_n_0 ),
        .I4(\badr[0]_INST_0_i_20_n_0 ),
        .I5(\badr[0]_INST_0_i_1 ),
        .O(\grn_reg[0] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_16 
       (.I0(gr24[11]),
        .I1(gr4_bus1__0_12),
        .I2(gr25[11]),
        .I3(gr5_bus1__0_13),
        .O(\badr[11]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_17 
       (.I0(gr03[11]),
        .I1(gr3_bus1__0_2),
        .I2(gr04[11]),
        .I3(gr4_bus1__0_3),
        .O(\badr[11]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_18 
       (.I0(gr01[11]),
        .I1(gr1_bus1__0_0),
        .I2(gr02[11]),
        .I3(gr2_bus1__0_1),
        .O(\badr[11]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_19 
       (.I0(gr07[11]),
        .I1(gr7_bus1__0_6),
        .I2(gr00[11]),
        .I3(gr0_bus1__0_7),
        .O(\badr[11]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_20 
       (.I0(gr05[11]),
        .I1(gr5_bus1__0_4),
        .I2(gr06[11]),
        .I3(gr6_bus1__0_5),
        .O(\badr[11]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[11]_INST_0_i_4 
       (.I0(\badr[11]_INST_0_i_16_n_0 ),
        .I1(\badr[11]_INST_0_i_17_n_0 ),
        .I2(\badr[11]_INST_0_i_18_n_0 ),
        .I3(\badr[11]_INST_0_i_19_n_0 ),
        .I4(\badr[11]_INST_0_i_20_n_0 ),
        .I5(\badr[11]_INST_0_i_1 ),
        .O(\grn_reg[11]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_16 
       (.I0(gr24[12]),
        .I1(gr4_bus1__0_12),
        .I2(gr25[12]),
        .I3(gr5_bus1__0_13),
        .O(\badr[12]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_17 
       (.I0(gr03[12]),
        .I1(gr3_bus1__0_2),
        .I2(gr04[12]),
        .I3(gr4_bus1__0_3),
        .O(\badr[12]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_18 
       (.I0(gr01[12]),
        .I1(gr1_bus1__0_0),
        .I2(gr02[12]),
        .I3(gr2_bus1__0_1),
        .O(\badr[12]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_19 
       (.I0(gr07[12]),
        .I1(gr7_bus1__0_6),
        .I2(gr00[12]),
        .I3(gr0_bus1__0_7),
        .O(\badr[12]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_20 
       (.I0(gr05[12]),
        .I1(gr5_bus1__0_4),
        .I2(gr06[12]),
        .I3(gr6_bus1__0_5),
        .O(\badr[12]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[12]_INST_0_i_4 
       (.I0(\badr[12]_INST_0_i_16_n_0 ),
        .I1(\badr[12]_INST_0_i_17_n_0 ),
        .I2(\badr[12]_INST_0_i_18_n_0 ),
        .I3(\badr[12]_INST_0_i_19_n_0 ),
        .I4(\badr[12]_INST_0_i_20_n_0 ),
        .I5(\badr[12]_INST_0_i_1 ),
        .O(\grn_reg[12]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_16 
       (.I0(gr24[13]),
        .I1(gr4_bus1__0_12),
        .I2(gr25[13]),
        .I3(gr5_bus1__0_13),
        .O(\badr[13]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_17 
       (.I0(gr03[13]),
        .I1(gr3_bus1__0_2),
        .I2(gr04[13]),
        .I3(gr4_bus1__0_3),
        .O(\badr[13]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_18 
       (.I0(gr01[13]),
        .I1(gr1_bus1__0_0),
        .I2(gr02[13]),
        .I3(gr2_bus1__0_1),
        .O(\badr[13]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_19 
       (.I0(gr07[13]),
        .I1(gr7_bus1__0_6),
        .I2(gr00[13]),
        .I3(gr0_bus1__0_7),
        .O(\badr[13]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_20 
       (.I0(gr05[13]),
        .I1(gr5_bus1__0_4),
        .I2(gr06[13]),
        .I3(gr6_bus1__0_5),
        .O(\badr[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[13]_INST_0_i_4 
       (.I0(\badr[13]_INST_0_i_16_n_0 ),
        .I1(\badr[13]_INST_0_i_17_n_0 ),
        .I2(\badr[13]_INST_0_i_18_n_0 ),
        .I3(\badr[13]_INST_0_i_19_n_0 ),
        .I4(\badr[13]_INST_0_i_20_n_0 ),
        .I5(\badr[13]_INST_0_i_1 ),
        .O(\grn_reg[13]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_16 
       (.I0(gr24[14]),
        .I1(gr4_bus1__0_12),
        .I2(gr25[14]),
        .I3(gr5_bus1__0_13),
        .O(\badr[14]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_17 
       (.I0(gr03[14]),
        .I1(gr3_bus1__0_2),
        .I2(gr04[14]),
        .I3(gr4_bus1__0_3),
        .O(\badr[14]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_18 
       (.I0(gr01[14]),
        .I1(gr1_bus1__0_0),
        .I2(gr02[14]),
        .I3(gr2_bus1__0_1),
        .O(\badr[14]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_19 
       (.I0(gr07[14]),
        .I1(gr7_bus1__0_6),
        .I2(gr00[14]),
        .I3(gr0_bus1__0_7),
        .O(\badr[14]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_20 
       (.I0(gr05[14]),
        .I1(gr5_bus1__0_4),
        .I2(gr06[14]),
        .I3(gr6_bus1__0_5),
        .O(\badr[14]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[14]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_16_n_0 ),
        .I1(\badr[14]_INST_0_i_17_n_0 ),
        .I2(\badr[14]_INST_0_i_18_n_0 ),
        .I3(\badr[14]_INST_0_i_19_n_0 ),
        .I4(\badr[14]_INST_0_i_20_n_0 ),
        .I5(\badr[14]_INST_0_i_1 ),
        .O(\grn_reg[14]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_16 
       (.I0(gr24[4]),
        .I1(gr4_bus1__0_12),
        .I2(gr25[4]),
        .I3(gr5_bus1__0_13),
        .O(\badr[4]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_17 
       (.I0(gr03[4]),
        .I1(gr3_bus1__0_2),
        .I2(gr04[4]),
        .I3(gr4_bus1__0_3),
        .O(\badr[4]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_18 
       (.I0(gr01[4]),
        .I1(gr1_bus1__0_0),
        .I2(gr02[4]),
        .I3(gr2_bus1__0_1),
        .O(\badr[4]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_19 
       (.I0(gr07[4]),
        .I1(gr7_bus1__0_6),
        .I2(gr00[4]),
        .I3(gr0_bus1__0_7),
        .O(\badr[4]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_20 
       (.I0(gr05[4]),
        .I1(gr5_bus1__0_4),
        .I2(gr06[4]),
        .I3(gr6_bus1__0_5),
        .O(\badr[4]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[4]_INST_0_i_4 
       (.I0(\badr[4]_INST_0_i_16_n_0 ),
        .I1(\badr[4]_INST_0_i_17_n_0 ),
        .I2(\badr[4]_INST_0_i_18_n_0 ),
        .I3(\badr[4]_INST_0_i_19_n_0 ),
        .I4(\badr[4]_INST_0_i_20_n_0 ),
        .I5(\badr[4]_INST_0_i_1 ),
        .O(\grn_reg[4]_8 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[10]_INST_0_i_27 
       (.I0(gr20[10]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[10]_INST_0_i_41_n_0 ),
        .I3(\bdatw[10]_INST_0_i_42_n_0 ),
        .I4(\bdatw[10]_INST_0_i_43_n_0 ),
        .I5(\bdatw[10]_INST_0_i_44_n_0 ),
        .O(\grn_reg[10] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_41 
       (.I0(gr05[10]),
        .I1(gr5_bus1__0),
        .I2(gr06[10]),
        .I3(gr6_bus1__0),
        .O(\bdatw[10]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_42 
       (.I0(gr07[10]),
        .I1(gr7_bus1__0),
        .I2(gr00[10]),
        .I3(gr0_bus1__0),
        .O(\bdatw[10]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_43 
       (.I0(gr01[10]),
        .I1(gr1_bus1__0),
        .I2(gr02[10]),
        .I3(gr2_bus1__0),
        .O(\bdatw[10]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_44 
       (.I0(gr03[10]),
        .I1(gr3_bus1__0),
        .I2(gr04[10]),
        .I3(gr4_bus1__0),
        .O(\bdatw[10]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[11]_INST_0_i_29 
       (.I0(gr20[11]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[11]_INST_0_i_43_n_0 ),
        .I3(\bdatw[11]_INST_0_i_44_n_0 ),
        .I4(\bdatw[11]_INST_0_i_45_n_0 ),
        .I5(\bdatw[11]_INST_0_i_46_n_0 ),
        .O(\grn_reg[11] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_43 
       (.I0(gr05[11]),
        .I1(gr5_bus1__0),
        .I2(gr06[11]),
        .I3(gr6_bus1__0),
        .O(\bdatw[11]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_44 
       (.I0(gr07[11]),
        .I1(gr7_bus1__0),
        .I2(gr00[11]),
        .I3(gr0_bus1__0),
        .O(\bdatw[11]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_45 
       (.I0(gr01[11]),
        .I1(gr1_bus1__0),
        .I2(gr02[11]),
        .I3(gr2_bus1__0),
        .O(\bdatw[11]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_46 
       (.I0(gr03[11]),
        .I1(gr3_bus1__0),
        .I2(gr04[11]),
        .I3(gr4_bus1__0),
        .O(\bdatw[11]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[12]_INST_0_i_32 
       (.I0(gr20[12]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[12]_INST_0_i_74_n_0 ),
        .I3(\bdatw[12]_INST_0_i_75_n_0 ),
        .I4(\bdatw[12]_INST_0_i_76_n_0 ),
        .I5(\bdatw[12]_INST_0_i_77_n_0 ),
        .O(\grn_reg[12] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_74 
       (.I0(gr05[12]),
        .I1(gr5_bus1__0),
        .I2(gr06[12]),
        .I3(gr6_bus1__0),
        .O(\bdatw[12]_INST_0_i_74_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_75 
       (.I0(gr07[12]),
        .I1(gr7_bus1__0),
        .I2(gr00[12]),
        .I3(gr0_bus1__0),
        .O(\bdatw[12]_INST_0_i_75_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_76 
       (.I0(gr01[12]),
        .I1(gr1_bus1__0),
        .I2(gr02[12]),
        .I3(gr2_bus1__0),
        .O(\bdatw[12]_INST_0_i_76_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_77 
       (.I0(gr03[12]),
        .I1(gr3_bus1__0),
        .I2(gr04[12]),
        .I3(gr4_bus1__0),
        .O(\bdatw[12]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_16 
       (.I0(gr20[13]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[13]_INST_0_i_24_n_0 ),
        .I3(\bdatw[13]_INST_0_i_25_n_0 ),
        .I4(\bdatw[13]_INST_0_i_26_n_0 ),
        .I5(\bdatw[13]_INST_0_i_27_n_0 ),
        .O(\grn_reg[13] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_24 
       (.I0(gr05[13]),
        .I1(gr5_bus1__0),
        .I2(gr06[13]),
        .I3(gr6_bus1__0),
        .O(\bdatw[13]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_25 
       (.I0(gr07[13]),
        .I1(gr7_bus1__0),
        .I2(gr00[13]),
        .I3(gr0_bus1__0),
        .O(\bdatw[13]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_26 
       (.I0(gr01[13]),
        .I1(gr1_bus1__0),
        .I2(gr02[13]),
        .I3(gr2_bus1__0),
        .O(\bdatw[13]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_27 
       (.I0(gr03[13]),
        .I1(gr3_bus1__0),
        .I2(gr04[13]),
        .I3(gr4_bus1__0),
        .O(\bdatw[13]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_17 
       (.I0(gr20[14]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[14]_INST_0_i_25_n_0 ),
        .I3(\bdatw[14]_INST_0_i_26_n_0 ),
        .I4(\bdatw[14]_INST_0_i_27_n_0 ),
        .I5(\bdatw[14]_INST_0_i_28_n_0 ),
        .O(\grn_reg[14] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_25 
       (.I0(gr05[14]),
        .I1(gr5_bus1__0),
        .I2(gr06[14]),
        .I3(gr6_bus1__0),
        .O(\bdatw[14]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_26 
       (.I0(gr07[14]),
        .I1(gr7_bus1__0),
        .I2(gr00[14]),
        .I3(gr0_bus1__0),
        .O(\bdatw[14]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_27 
       (.I0(gr01[14]),
        .I1(gr1_bus1__0),
        .I2(gr02[14]),
        .I3(gr2_bus1__0),
        .O(\bdatw[14]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_28 
       (.I0(gr03[14]),
        .I1(gr3_bus1__0),
        .I2(gr04[14]),
        .I3(gr4_bus1__0),
        .O(\bdatw[14]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_52 
       (.I0(gr20[15]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[15]_INST_0_i_77_n_0 ),
        .I3(\bdatw[15]_INST_0_i_78_n_0 ),
        .I4(\bdatw[15]_INST_0_i_79_n_0 ),
        .I5(\bdatw[15]_INST_0_i_80_n_0 ),
        .O(\grn_reg[15]_6 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_60 
       (.I0(gr20[7]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[15]_INST_0_i_93_n_0 ),
        .I3(\bdatw[15]_INST_0_i_94_n_0 ),
        .I4(\bdatw[15]_INST_0_i_95_n_0 ),
        .I5(\bdatw[15]_INST_0_i_96_n_0 ),
        .O(\grn_reg[7] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_77 
       (.I0(gr05[15]),
        .I1(gr5_bus1__0),
        .I2(gr06[15]),
        .I3(gr6_bus1__0),
        .O(\bdatw[15]_INST_0_i_77_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_78 
       (.I0(gr07[15]),
        .I1(gr7_bus1__0),
        .I2(gr00[15]),
        .I3(gr0_bus1__0),
        .O(\bdatw[15]_INST_0_i_78_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_79 
       (.I0(gr01[15]),
        .I1(gr1_bus1__0),
        .I2(gr02[15]),
        .I3(gr2_bus1__0),
        .O(\bdatw[15]_INST_0_i_79_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_80 
       (.I0(gr03[15]),
        .I1(gr3_bus1__0),
        .I2(gr04[15]),
        .I3(gr4_bus1__0),
        .O(\bdatw[15]_INST_0_i_80_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_93 
       (.I0(gr05[7]),
        .I1(gr5_bus1__0),
        .I2(gr06[7]),
        .I3(gr6_bus1__0),
        .O(\bdatw[15]_INST_0_i_93_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_94 
       (.I0(gr07[7]),
        .I1(gr7_bus1__0),
        .I2(gr00[7]),
        .I3(gr0_bus1__0),
        .O(\bdatw[15]_INST_0_i_94_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_95 
       (.I0(gr01[7]),
        .I1(gr1_bus1__0),
        .I2(gr02[7]),
        .I3(gr2_bus1__0),
        .O(\bdatw[15]_INST_0_i_95_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_96 
       (.I0(gr03[7]),
        .I1(gr3_bus1__0),
        .I2(gr04[7]),
        .I3(gr4_bus1__0),
        .O(\bdatw[15]_INST_0_i_96_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[8]_INST_0_i_29 
       (.I0(gr20[8]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[8]_INST_0_i_43_n_0 ),
        .I3(\bdatw[8]_INST_0_i_44_n_0 ),
        .I4(\bdatw[8]_INST_0_i_45_n_0 ),
        .I5(\bdatw[8]_INST_0_i_46_n_0 ),
        .O(\grn_reg[8] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_43 
       (.I0(gr05[8]),
        .I1(gr5_bus1__0),
        .I2(gr06[8]),
        .I3(gr6_bus1__0),
        .O(\bdatw[8]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_44 
       (.I0(gr07[8]),
        .I1(gr7_bus1__0),
        .I2(gr00[8]),
        .I3(gr0_bus1__0),
        .O(\bdatw[8]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_45 
       (.I0(gr01[8]),
        .I1(gr1_bus1__0),
        .I2(gr02[8]),
        .I3(gr2_bus1__0),
        .O(\bdatw[8]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_46 
       (.I0(gr03[8]),
        .I1(gr3_bus1__0),
        .I2(gr04[8]),
        .I3(gr4_bus1__0),
        .O(\bdatw[8]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[9]_INST_0_i_29 
       (.I0(gr20[9]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[9]_INST_0_i_43_n_0 ),
        .I3(\bdatw[9]_INST_0_i_44_n_0 ),
        .I4(\bdatw[9]_INST_0_i_45_n_0 ),
        .I5(\bdatw[9]_INST_0_i_46_n_0 ),
        .O(\grn_reg[9] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_43 
       (.I0(gr05[9]),
        .I1(gr5_bus1__0),
        .I2(gr06[9]),
        .I3(gr6_bus1__0),
        .O(\bdatw[9]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_44 
       (.I0(gr07[9]),
        .I1(gr7_bus1__0),
        .I2(gr00[9]),
        .I3(gr0_bus1__0),
        .O(\bdatw[9]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_45 
       (.I0(gr01[9]),
        .I1(gr1_bus1__0),
        .I2(gr02[9]),
        .I3(gr2_bus1__0),
        .O(\bdatw[9]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_46 
       (.I0(gr03[9]),
        .I1(gr3_bus1__0),
        .I2(gr04[9]),
        .I3(gr4_bus1__0),
        .O(\bdatw[9]_INST_0_i_46_n_0 ));
  mcvm_rgf_grn_16 grn00
       (.E(E),
        .Q(gr00),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_8 ),
        .rst_n(rst_n));
  mcvm_rgf_grn_17 grn01
       (.Q(gr01),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_9 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcvm_rgf_grn_18 grn02
       (.Q(gr02),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_10 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcvm_rgf_grn_19 grn03
       (.Q(gr03),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_11 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcvm_rgf_grn_20 grn04
       (.Q(gr04),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_12 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcvm_rgf_grn_21 grn05
       (.Q(gr05),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_13 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcvm_rgf_grn_22 grn06
       (.Q(gr06),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_14 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcvm_rgf_grn_23 grn07
       (.Q(gr07),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_15 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcvm_rgf_grn_24 grn20
       (.Q(gr20),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_16 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcvm_rgf_grn_25 grn21
       (.Q(gr21),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_17 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcvm_rgf_grn_26 grn22
       (.Q(gr22),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_18 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcvm_rgf_grn_27 grn23
       (.Q(gr23),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_19 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcvm_rgf_grn_28 grn24
       (.Q(gr24),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_20 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcvm_rgf_grn_29 grn25
       (.Q(gr25),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_21 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcvm_rgf_grn_30 grn26
       (.Q(gr26),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_22 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcvm_rgf_grn_31 grn27
       (.Q(gr27),
        .SR(SR),
        .\badr[10]_INST_0_i_1 (\badr[10]_INST_0_i_1 ),
        .\badr[15]_INST_0_i_1 (\badr[15]_INST_0_i_1 ),
        .\badr[15]_INST_0_i_4_0 ({gr01[15],gr01[10:5],gr01[3:1]}),
        .\badr[15]_INST_0_i_4_1 ({gr02[15],gr02[10:5],gr02[3:1]}),
        .\badr[15]_INST_0_i_4_2 ({gr03[15],gr03[10:5],gr03[3:1]}),
        .\badr[15]_INST_0_i_4_3 ({gr04[15],gr04[10:5],gr04[3:1]}),
        .\badr[15]_INST_0_i_4_4 ({gr05[15],gr05[10:5],gr05[3:1]}),
        .\badr[15]_INST_0_i_4_5 ({gr06[15],gr06[10:5],gr06[3:1]}),
        .\badr[15]_INST_0_i_4_6 ({gr07[15],gr07[10:5],gr07[3:1]}),
        .\badr[15]_INST_0_i_4_7 ({gr00[15],gr00[10:5],gr00[3:1]}),
        .\badr[15]_INST_0_i_4_8 ({gr24[15],gr24[10:0]}),
        .\badr[15]_INST_0_i_4_9 ({gr25[15],gr25[10:0]}),
        .\badr[1]_INST_0_i_1 (\badr[1]_INST_0_i_1 ),
        .\badr[2]_INST_0_i_1 (\badr[2]_INST_0_i_1 ),
        .\badr[3]_INST_0_i_1 (\badr[3]_INST_0_i_1 ),
        .\badr[5]_INST_0_i_1 (\badr[5]_INST_0_i_1 ),
        .\badr[6]_INST_0_i_1 (\badr[6]_INST_0_i_1 ),
        .\badr[7]_INST_0_i_1 (\badr[7]_INST_0_i_1 ),
        .\badr[8]_INST_0_i_1 (\badr[8]_INST_0_i_1 ),
        .\badr[9]_INST_0_i_1 (\badr[9]_INST_0_i_1 ),
        .\bdatw[10]_INST_0_i_2 (\bdatw[10]_INST_0_i_2 ),
        .\bdatw[10]_INST_0_i_2_0 (\bdatw[10]_INST_0_i_2_0 ),
        .\bdatw[10]_INST_0_i_2_1 (\bdatw[10]_INST_0_i_2_1 ),
        .\bdatw[10]_INST_0_i_2_2 (\bdatw[10]_INST_0_i_2_2 ),
        .\bdatw[11]_INST_0_i_2 (\bdatw[11]_INST_0_i_2 ),
        .\bdatw[11]_INST_0_i_2_0 (\bdatw[11]_INST_0_i_2_0 ),
        .\bdatw[11]_INST_0_i_2_1 (\bdatw[11]_INST_0_i_2_1 ),
        .\bdatw[11]_INST_0_i_2_2 (\bdatw[11]_INST_0_i_2_2 ),
        .\bdatw[12]_INST_0_i_2 (\bdatw[12]_INST_0_i_2 ),
        .\bdatw[12]_INST_0_i_2_0 (\bdatw[12]_INST_0_i_2_0 ),
        .\bdatw[12]_INST_0_i_2_1 (\bdatw[12]_INST_0_i_2_1 ),
        .\bdatw[12]_INST_0_i_2_2 (\bdatw[12]_INST_0_i_2_2 ),
        .\bdatw[12]_INST_0_i_9_0 (gr22[4:0]),
        .\bdatw[12]_INST_0_i_9_1 (gr23[4:0]),
        .\bdatw[8]_INST_0_i_2 (\bdatw[8]_INST_0_i_2 ),
        .\bdatw[8]_INST_0_i_2_0 (\bdatw[8]_INST_0_i_2_0 ),
        .\bdatw[8]_INST_0_i_2_1 (\bdatw[8]_INST_0_i_2_1 ),
        .\bdatw[8]_INST_0_i_2_2 (\bdatw[8]_INST_0_i_2_2 ),
        .\bdatw[9]_INST_0_i_2 (\bdatw[9]_INST_0_i_2 ),
        .\bdatw[9]_INST_0_i_2_0 (\bdatw[9]_INST_0_i_2_0 ),
        .\bdatw[9]_INST_0_i_2_1 (\bdatw[9]_INST_0_i_2_1 ),
        .\bdatw[9]_INST_0_i_2_2 (\bdatw[9]_INST_0_i_2_2 ),
        .clk(clk),
        .gr0_bus1__0(gr0_bus1__0),
        .gr0_bus1__0_0(gr0_bus1__0_0),
        .gr0_bus1__0_7(gr0_bus1__0_7),
        .gr1_bus1__0(gr1_bus1__0),
        .gr1_bus1__0_0(gr1_bus1__0_0),
        .gr2_bus1__0(gr2_bus1__0),
        .gr2_bus1__0_1(gr2_bus1__0_1),
        .gr2_bus1__0_8(gr2_bus1__0_8),
        .gr3_bus1__0(gr3_bus1__0),
        .gr3_bus1__0_2(gr3_bus1__0_2),
        .gr3_bus1__0_9(gr3_bus1__0_9),
        .gr4_bus1__0(gr4_bus1__0),
        .gr4_bus1__0_10(gr4_bus1__0_10),
        .gr4_bus1__0_12(gr4_bus1__0_12),
        .gr4_bus1__0_3(gr4_bus1__0_3),
        .gr5_bus1__0(gr5_bus1__0),
        .gr5_bus1__0_11(gr5_bus1__0_11),
        .gr5_bus1__0_13(gr5_bus1__0_13),
        .gr5_bus1__0_4(gr5_bus1__0_4),
        .gr6_bus1__0(gr6_bus1__0),
        .gr6_bus1__0_5(gr6_bus1__0_5),
        .gr7_bus1__0(gr7_bus1__0),
        .gr7_bus1__0_6(gr7_bus1__0_6),
        .\grn_reg[10]_0 (\grn_reg[10]_0 ),
        .\grn_reg[15]_0 (\grn_reg[15]_7 ),
        .\grn_reg[15]_1 (\grn_reg[15]_23 ),
        .\grn_reg[15]_2 (\grn_reg[15]_8 ),
        .\grn_reg[1]_0 (\grn_reg[1] ),
        .\grn_reg[2]_0 (\grn_reg[2] ),
        .\grn_reg[3]_0 (\grn_reg[3] ),
        .\grn_reg[4]_0 (\grn_reg[4]_7 ),
        .\grn_reg[5]_0 (\grn_reg[5] ),
        .\grn_reg[5]_1 (\grn_reg[5]_0 ),
        .\grn_reg[6]_0 (\grn_reg[6] ),
        .\grn_reg[6]_1 (\grn_reg[6]_0 ),
        .\grn_reg[7]_0 (\grn_reg[7]_0 ),
        .\grn_reg[8]_0 (\grn_reg[8]_0 ),
        .\grn_reg[9]_0 (\grn_reg[9]_0 ),
        .out(gr20[6:5]));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_bank" *) 
module mcvm_rgf_bank_0
   (.\grn_reg[4] ({gr23[4],gr23[3],gr23[2],gr23[1],gr23[0]}),
    .\grn_reg[4]_0 ({gr24[4],gr24[3],gr24[2],gr24[1],gr24[0]}),
    .\grn_reg[4]_1 ({gr25[4],gr25[3],gr25[2],gr25[1],gr25[0]}),
    .\grn_reg[4]_2 ({gr26[4],gr26[3],gr26[2],gr26[1],gr26[0]}),
    .\grn_reg[4]_3 ({gr00[4],gr00[3],gr00[2],gr00[1],gr00[0]}),
    .\grn_reg[4]_4 ({gr01[4],gr01[3],gr01[2],gr01[1],gr01[0]}),
    .\grn_reg[4]_5 ({gr02[4],gr02[3],gr02[2],gr02[1],gr02[0]}),
    .\grn_reg[4]_6 ({gr03[4],gr03[3],gr03[2],gr03[1],gr03[0]}),
    .\grn_reg[4]_7 ({gr04[4],gr04[3],gr04[2],gr04[1],gr04[0]}),
    .\grn_reg[4]_8 ({gr05[4],gr05[3],gr05[2],gr05[1],gr05[0]}),
    .\grn_reg[4]_9 ({gr06[4],gr06[3],gr06[2],gr06[1],gr06[0]}),
    .\grn_reg[4]_10 ({gr07[4],gr07[3],gr07[2],gr07[1],gr07[0]}),
    \grn_reg[0] ,
    \grn_reg[1] ,
    \grn_reg[2] ,
    \grn_reg[3] ,
    \grn_reg[4]_11 ,
    \grn_reg[5] ,
    \grn_reg[6] ,
    \grn_reg[7] ,
    \grn_reg[8] ,
    \grn_reg[9] ,
    \grn_reg[10] ,
    \grn_reg[11] ,
    \grn_reg[12] ,
    \grn_reg[13] ,
    \grn_reg[14] ,
    \grn_reg[15] ,
    \grn_reg[5]_0 ,
    \grn_reg[6]_0 ,
    \grn_reg[7]_0 ,
    \grn_reg[8]_0 ,
    \grn_reg[9]_0 ,
    \grn_reg[10]_0 ,
    \grn_reg[11]_0 ,
    \grn_reg[12]_0 ,
    \grn_reg[13]_0 ,
    \grn_reg[14]_0 ,
    \grn_reg[15]_0 ,
    \grn_reg[0]_0 ,
    \grn_reg[1]_0 ,
    \grn_reg[2]_0 ,
    \grn_reg[3]_0 ,
    \grn_reg[4]_12 ,
    \grn_reg[0]_1 ,
    \grn_reg[1]_1 ,
    \grn_reg[2]_1 ,
    \grn_reg[3]_1 ,
    \grn_reg[4]_13 ,
    \sr_reg[6] ,
    \iv[10]_i_30 ,
    \sr_reg[6]_0 ,
    \bdatw[8]_INST_0_i_2 ,
    \sr_reg[6]_1 ,
    \sr_reg[6]_2 ,
    \sr_reg[6]_3 ,
    \badr[15]_INST_0_i_1 ,
    \sr_reg[6]_4 ,
    \badr[1]_INST_0_i_1 ,
    \sr_reg[6]_5 ,
    \iv[14]_i_39 ,
    \badr[12]_INST_0_i_1_0 ,
    \sr_reg[6]_6 ,
    \badr[13]_INST_0_i_1_0 ,
    \iv[14]_i_29 ,
    \sr_reg[6]_7 ,
    \iv[13]_i_36 ,
    \badr[11]_INST_0_i_1_0 ,
    \stat_reg[2] ,
    \iv[13]_i_23 ,
    \iv[13]_i_27_0 ,
    \stat_reg[2]_0 ,
    \iv[5]_i_15 ,
    \iv[13]_i_36_0 ,
    \sr_reg[6]_8 ,
    \stat_reg[2]_1 ,
    \iv[11]_i_25 ,
    \sr[6]_i_10_0 ,
    \iv[7]_i_18 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \bdatw[8]_INST_0_i_2_1 ,
    \bdatw[8]_INST_0_i_2_2 ,
    \sr_reg[6]_9 ,
    \iv[13]_i_31 ,
    \iv[13]_i_32_0 ,
    \iv[13]_i_33_0 ,
    \sr_reg[6]_10 ,
    \sr_reg[6]_11 ,
    \iv[2]_i_8 ,
    \badr[5]_INST_0_i_1 ,
    \badr[7]_INST_0_i_1 ,
    \badr[9]_INST_0_i_1 ,
    \iv[2]_i_8_0 ,
    \iv[2]_i_8_1 ,
    \badr[3]_INST_0_i_1 ,
    \badr[1]_INST_0_i_1_0 ,
    \sr_reg[6]_12 ,
    \sr_reg[6]_13 ,
    \iv[14]_i_42 ,
    \bdatw[12]_INST_0_i_2 ,
    \badr[4]_INST_0_i_1_0 ,
    \iv[2]_i_8_2 ,
    \iv[2]_i_9 ,
    \iv[2]_i_23 ,
    \iv[2]_i_23_0 ,
    \iv[13]_i_25_0 ,
    \sr_reg[6]_14 ,
    \iv[8]_i_20 ,
    \iv[2]_i_23_1 ,
    \bdatw[8]_INST_0_i_2_3 ,
    \sr_reg[6]_15 ,
    \badr[2]_INST_0_i_1 ,
    \badr[14]_INST_0_i_1_0 ,
    \iv[2]_i_23_2 ,
    \stat_reg[2]_2 ,
    \stat_reg[2]_3 ,
    \iv[14]_i_8 ,
    \stat_reg[2]_4 ,
    \stat_reg[2]_5 ,
    \stat_reg[2]_6 ,
    \stat_reg[2]_7 ,
    \stat_reg[2]_8 ,
    \bdatw[8]_INST_0_i_2_4 ,
    \iv[13]_i_23_0 ,
    \iv[2]_i_23_3 ,
    \bdatw[8]_INST_0_i_2_5 ,
    \bdatw[8]_INST_0_i_2_6 ,
    \bdatw[8]_INST_0_i_2_7 ,
    \bdatw[8]_INST_0_i_2_8 ,
    \bdatw[8]_INST_0_i_2_9 ,
    \bdatw[8]_INST_0_i_2_10 ,
    \bdatw[8]_INST_0_i_2_11 ,
    \bdatw[8]_INST_0_i_2_12 ,
    \bdatw[8]_INST_0_i_2_13 ,
    \bdatw[8]_INST_0_i_2_14 ,
    \bdatw[8]_INST_0_i_2_15 ,
    \bdatw[8]_INST_0_i_2_16 ,
    \iv[14]_i_39_0 ,
    \bdatw[8]_INST_0_i_2_17 ,
    \bdatw[8]_INST_0_i_2_18 ,
    \sr_reg[6]_16 ,
    \bdatw[8]_INST_0_i_2_19 ,
    \sr_reg[6]_17 ,
    \sr_reg[6]_18 ,
    \sr_reg[6]_19 ,
    \abus_o[0] ,
    \abus_o[0]_0 ,
    \abus_o[0]_1 ,
    \abus_o[0]_2 ,
    \abus_o[1] ,
    \abus_o[1]_0 ,
    \abus_o[1]_1 ,
    \abus_o[1]_2 ,
    \abus_o[2] ,
    \abus_o[2]_0 ,
    \abus_o[2]_1 ,
    \abus_o[2]_2 ,
    \abus_o[3] ,
    \abus_o[3]_0 ,
    \abus_o[3]_1 ,
    \abus_o[3]_2 ,
    \abus_o[4] ,
    \abus_o[4]_0 ,
    \abus_o[4]_1 ,
    \abus_o[4]_2 ,
    \abus_o[5] ,
    \abus_o[5]_0 ,
    \abus_o[5]_1 ,
    \abus_o[5]_2 ,
    \abus_o[6] ,
    \abus_o[6]_0 ,
    \abus_o[6]_1 ,
    \abus_o[6]_2 ,
    \abus_o[7] ,
    \abus_o[7]_0 ,
    \abus_o[7]_1 ,
    \abus_o[7]_2 ,
    \abus_o[8] ,
    \abus_o[8]_0 ,
    \abus_o[8]_1 ,
    \abus_o[8]_2 ,
    \abus_o[9] ,
    \abus_o[9]_0 ,
    \abus_o[9]_1 ,
    \abus_o[9]_2 ,
    \abus_o[10] ,
    \abus_o[10]_0 ,
    \abus_o[10]_1 ,
    \abus_o[10]_2 ,
    \abus_o[11] ,
    \abus_o[11]_0 ,
    \abus_o[11]_1 ,
    \abus_o[11]_2 ,
    \abus_o[12] ,
    \abus_o[12]_0 ,
    \abus_o[12]_1 ,
    \abus_o[12]_2 ,
    \abus_o[13] ,
    \abus_o[13]_0 ,
    \abus_o[13]_1 ,
    \abus_o[13]_2 ,
    \abus_o[14] ,
    \abus_o[14]_0 ,
    \abus_o[14]_1 ,
    \abus_o[14]_2 ,
    \abus_o[15] ,
    \abus_o[15]_0 ,
    \abus_o[15]_1 ,
    \abus_o[15]_2 ,
    gr7_bus1__0_14,
    gr0_bus1__0_15,
    out,
    \bdatw[15]_INST_0_i_28_0 ,
    gr1_bus1__0_16,
    gr2_bus1__0_17,
    gr3_bus1__0_18,
    gr4_bus1__0_19,
    gr5_bus1__0_20,
    gr6_bus1__0_21,
    gr7_bus1__0_22,
    gr0_bus1__0_23,
    \badr[0]_INST_0_i_1_0 ,
    gr1_bus1__0_24,
    gr2_bus1__0_25,
    \badr[1]_INST_0_i_1_1 ,
    \badr[2]_INST_0_i_1_0 ,
    \badr[3]_INST_0_i_1_0 ,
    \badr[4]_INST_0_i_1_1 ,
    \badr[5]_INST_0_i_1_0 ,
    \badr[6]_INST_0_i_1 ,
    \badr[7]_INST_0_i_1_0 ,
    \badr[8]_INST_0_i_1 ,
    \badr[9]_INST_0_i_1_0 ,
    \badr[10]_INST_0_i_1 ,
    \badr[11]_INST_0_i_1_1 ,
    \badr[12]_INST_0_i_1_1 ,
    \badr[13]_INST_0_i_1_1 ,
    \badr[14]_INST_0_i_1_1 ,
    \badr[15]_INST_0_i_1_0 ,
    gr3_bus1__0_26,
    gr4_bus1__0_27,
    gr5_bus1__0_28,
    gr6_bus1__0_29,
    gr7_bus1__0_30,
    gr0_bus1__0_31,
    gr3_bus1__0_32,
    gr4_bus1__0_33,
    gr5_bus1__0_34,
    gr6_bus1__0_35,
    gr1_bus1__0_36,
    gr2_bus1__0_37,
    gr3_bus1__0,
    gr4_bus1__0,
    gr5_bus1__0_38,
    gr6_bus1__0_39,
    gr1_bus1__0_40,
    gr2_bus1__0_41,
    gr7_bus1__0_42,
    gr0_bus1__0_43,
    \tr_reg[2] ,
    \tr_reg[2]_0 ,
    \tr_reg[2]_1 ,
    \iv[7]_i_9 ,
    \iv[5]_i_5 ,
    \iv[13]_i_18_0 ,
    \iv[13]_i_6 ,
    \sr[7]_i_9 ,
    \iv[9]_i_2 ,
    \iv[9]_i_2_0 ,
    \iv[13]_i_2 ,
    \iv[13]_i_2_0 ,
    \iv[5]_i_2 ,
    \iv[9]_i_6 ,
    \iv[11]_i_8 ,
    \sr[6]_i_3 ,
    \sr[6]_i_3_0 ,
    \iv[0]_i_8 ,
    \iv[11]_i_8_0 ,
    \iv[10]_i_9 ,
    \iv[10]_i_9_0 ,
    \iv[10]_i_23 ,
    SR,
    \grn_reg[15]_1 ,
    \grn_reg[15]_2 ,
    clk,
    \grn_reg[15]_3 ,
    \grn_reg[15]_4 ,
    \grn_reg[15]_5 ,
    \grn_reg[15]_6 ,
    \grn_reg[15]_7 ,
    \grn_reg[15]_8 ,
    \grn_reg[15]_9 ,
    \grn_reg[15]_10 ,
    \grn_reg[15]_11 ,
    \grn_reg[15]_12 ,
    \grn_reg[15]_13 ,
    \grn_reg[15]_14 ,
    \grn_reg[15]_15 ,
    \grn_reg[15]_16 ,
    \grn_reg[15]_17 );
  output \grn_reg[0] ;
  output \grn_reg[1] ;
  output \grn_reg[2] ;
  output \grn_reg[3] ;
  output \grn_reg[4]_11 ;
  output \grn_reg[5] ;
  output \grn_reg[6] ;
  output \grn_reg[7] ;
  output \grn_reg[8] ;
  output \grn_reg[9] ;
  output \grn_reg[10] ;
  output \grn_reg[11] ;
  output \grn_reg[12] ;
  output \grn_reg[13] ;
  output \grn_reg[14] ;
  output \grn_reg[15] ;
  output \grn_reg[5]_0 ;
  output \grn_reg[6]_0 ;
  output \grn_reg[7]_0 ;
  output \grn_reg[8]_0 ;
  output \grn_reg[9]_0 ;
  output \grn_reg[10]_0 ;
  output \grn_reg[11]_0 ;
  output \grn_reg[12]_0 ;
  output \grn_reg[13]_0 ;
  output \grn_reg[14]_0 ;
  output \grn_reg[15]_0 ;
  output \grn_reg[0]_0 ;
  output \grn_reg[1]_0 ;
  output \grn_reg[2]_0 ;
  output \grn_reg[3]_0 ;
  output \grn_reg[4]_12 ;
  output \grn_reg[0]_1 ;
  output \grn_reg[1]_1 ;
  output \grn_reg[2]_1 ;
  output \grn_reg[3]_1 ;
  output \grn_reg[4]_13 ;
  output \sr_reg[6] ;
  output \iv[10]_i_30 ;
  output \sr_reg[6]_0 ;
  output \bdatw[8]_INST_0_i_2 ;
  output \sr_reg[6]_1 ;
  output \sr_reg[6]_2 ;
  output \sr_reg[6]_3 ;
  output \badr[15]_INST_0_i_1 ;
  output \sr_reg[6]_4 ;
  output \badr[1]_INST_0_i_1 ;
  output \sr_reg[6]_5 ;
  output \iv[14]_i_39 ;
  output \badr[12]_INST_0_i_1_0 ;
  output \sr_reg[6]_6 ;
  output \badr[13]_INST_0_i_1_0 ;
  output \iv[14]_i_29 ;
  output \sr_reg[6]_7 ;
  output \iv[13]_i_36 ;
  output \badr[11]_INST_0_i_1_0 ;
  output \stat_reg[2] ;
  output \iv[13]_i_23 ;
  output \iv[13]_i_27_0 ;
  output \stat_reg[2]_0 ;
  output \iv[5]_i_15 ;
  output \iv[13]_i_36_0 ;
  output \sr_reg[6]_8 ;
  output \stat_reg[2]_1 ;
  output \iv[11]_i_25 ;
  output \sr[6]_i_10_0 ;
  output \iv[7]_i_18 ;
  output \bdatw[8]_INST_0_i_2_0 ;
  output \bdatw[8]_INST_0_i_2_1 ;
  output \bdatw[8]_INST_0_i_2_2 ;
  output \sr_reg[6]_9 ;
  output \iv[13]_i_31 ;
  output \iv[13]_i_32_0 ;
  output \iv[13]_i_33_0 ;
  output \sr_reg[6]_10 ;
  output \sr_reg[6]_11 ;
  output \iv[2]_i_8 ;
  output \badr[5]_INST_0_i_1 ;
  output \badr[7]_INST_0_i_1 ;
  output \badr[9]_INST_0_i_1 ;
  output \iv[2]_i_8_0 ;
  output \iv[2]_i_8_1 ;
  output \badr[3]_INST_0_i_1 ;
  output \badr[1]_INST_0_i_1_0 ;
  output \sr_reg[6]_12 ;
  output \sr_reg[6]_13 ;
  output \iv[14]_i_42 ;
  output \bdatw[12]_INST_0_i_2 ;
  output \badr[4]_INST_0_i_1_0 ;
  output \iv[2]_i_8_2 ;
  output \iv[2]_i_9 ;
  output \iv[2]_i_23 ;
  output \iv[2]_i_23_0 ;
  output \iv[13]_i_25_0 ;
  output \sr_reg[6]_14 ;
  output \iv[8]_i_20 ;
  output \iv[2]_i_23_1 ;
  output \bdatw[8]_INST_0_i_2_3 ;
  output \sr_reg[6]_15 ;
  output \badr[2]_INST_0_i_1 ;
  output \badr[14]_INST_0_i_1_0 ;
  output \iv[2]_i_23_2 ;
  output \stat_reg[2]_2 ;
  output \stat_reg[2]_3 ;
  output \iv[14]_i_8 ;
  output \stat_reg[2]_4 ;
  output \stat_reg[2]_5 ;
  output \stat_reg[2]_6 ;
  output \stat_reg[2]_7 ;
  output \stat_reg[2]_8 ;
  output \bdatw[8]_INST_0_i_2_4 ;
  output \iv[13]_i_23_0 ;
  output \iv[2]_i_23_3 ;
  output \bdatw[8]_INST_0_i_2_5 ;
  output \bdatw[8]_INST_0_i_2_6 ;
  output \bdatw[8]_INST_0_i_2_7 ;
  output \bdatw[8]_INST_0_i_2_8 ;
  output \bdatw[8]_INST_0_i_2_9 ;
  output \bdatw[8]_INST_0_i_2_10 ;
  output \bdatw[8]_INST_0_i_2_11 ;
  output \bdatw[8]_INST_0_i_2_12 ;
  output \bdatw[8]_INST_0_i_2_13 ;
  output \bdatw[8]_INST_0_i_2_14 ;
  output \bdatw[8]_INST_0_i_2_15 ;
  output \bdatw[8]_INST_0_i_2_16 ;
  output \iv[14]_i_39_0 ;
  output \bdatw[8]_INST_0_i_2_17 ;
  output \bdatw[8]_INST_0_i_2_18 ;
  output \sr_reg[6]_16 ;
  output \bdatw[8]_INST_0_i_2_19 ;
  output \sr_reg[6]_17 ;
  output \sr_reg[6]_18 ;
  output \sr_reg[6]_19 ;
  input \abus_o[0] ;
  input \abus_o[0]_0 ;
  input \abus_o[0]_1 ;
  input \abus_o[0]_2 ;
  input \abus_o[1] ;
  input \abus_o[1]_0 ;
  input \abus_o[1]_1 ;
  input \abus_o[1]_2 ;
  input \abus_o[2] ;
  input \abus_o[2]_0 ;
  input \abus_o[2]_1 ;
  input \abus_o[2]_2 ;
  input \abus_o[3] ;
  input \abus_o[3]_0 ;
  input \abus_o[3]_1 ;
  input \abus_o[3]_2 ;
  input \abus_o[4] ;
  input \abus_o[4]_0 ;
  input \abus_o[4]_1 ;
  input \abus_o[4]_2 ;
  input \abus_o[5] ;
  input \abus_o[5]_0 ;
  input \abus_o[5]_1 ;
  input \abus_o[5]_2 ;
  input \abus_o[6] ;
  input \abus_o[6]_0 ;
  input \abus_o[6]_1 ;
  input \abus_o[6]_2 ;
  input \abus_o[7] ;
  input \abus_o[7]_0 ;
  input \abus_o[7]_1 ;
  input \abus_o[7]_2 ;
  input \abus_o[8] ;
  input \abus_o[8]_0 ;
  input \abus_o[8]_1 ;
  input \abus_o[8]_2 ;
  input \abus_o[9] ;
  input \abus_o[9]_0 ;
  input \abus_o[9]_1 ;
  input \abus_o[9]_2 ;
  input \abus_o[10] ;
  input \abus_o[10]_0 ;
  input \abus_o[10]_1 ;
  input \abus_o[10]_2 ;
  input \abus_o[11] ;
  input \abus_o[11]_0 ;
  input \abus_o[11]_1 ;
  input \abus_o[11]_2 ;
  input \abus_o[12] ;
  input \abus_o[12]_0 ;
  input \abus_o[12]_1 ;
  input \abus_o[12]_2 ;
  input \abus_o[13] ;
  input \abus_o[13]_0 ;
  input \abus_o[13]_1 ;
  input \abus_o[13]_2 ;
  input \abus_o[14] ;
  input \abus_o[14]_0 ;
  input \abus_o[14]_1 ;
  input \abus_o[14]_2 ;
  input \abus_o[15] ;
  input \abus_o[15]_0 ;
  input \abus_o[15]_1 ;
  input \abus_o[15]_2 ;
  input gr7_bus1__0_14;
  input gr0_bus1__0_15;
  input [10:0]out;
  input [0:0]\bdatw[15]_INST_0_i_28_0 ;
  input gr1_bus1__0_16;
  input gr2_bus1__0_17;
  input gr3_bus1__0_18;
  input gr4_bus1__0_19;
  input gr5_bus1__0_20;
  input gr6_bus1__0_21;
  input gr7_bus1__0_22;
  input gr0_bus1__0_23;
  input \badr[0]_INST_0_i_1_0 ;
  input gr1_bus1__0_24;
  input gr2_bus1__0_25;
  input \badr[1]_INST_0_i_1_1 ;
  input \badr[2]_INST_0_i_1_0 ;
  input \badr[3]_INST_0_i_1_0 ;
  input \badr[4]_INST_0_i_1_1 ;
  input \badr[5]_INST_0_i_1_0 ;
  input \badr[6]_INST_0_i_1 ;
  input \badr[7]_INST_0_i_1_0 ;
  input \badr[8]_INST_0_i_1 ;
  input \badr[9]_INST_0_i_1_0 ;
  input \badr[10]_INST_0_i_1 ;
  input \badr[11]_INST_0_i_1_1 ;
  input \badr[12]_INST_0_i_1_1 ;
  input \badr[13]_INST_0_i_1_1 ;
  input \badr[14]_INST_0_i_1_1 ;
  input \badr[15]_INST_0_i_1_0 ;
  input gr3_bus1__0_26;
  input gr4_bus1__0_27;
  input gr5_bus1__0_28;
  input gr6_bus1__0_29;
  input gr7_bus1__0_30;
  input gr0_bus1__0_31;
  input gr3_bus1__0_32;
  input gr4_bus1__0_33;
  input gr5_bus1__0_34;
  input gr6_bus1__0_35;
  input gr1_bus1__0_36;
  input gr2_bus1__0_37;
  input gr3_bus1__0;
  input gr4_bus1__0;
  input gr5_bus1__0_38;
  input gr6_bus1__0_39;
  input gr1_bus1__0_40;
  input gr2_bus1__0_41;
  input gr7_bus1__0_42;
  input gr0_bus1__0_43;
  input \tr_reg[2] ;
  input \tr_reg[2]_0 ;
  input \tr_reg[2]_1 ;
  input \iv[7]_i_9 ;
  input \iv[5]_i_5 ;
  input \iv[13]_i_18_0 ;
  input \iv[13]_i_6 ;
  input \sr[7]_i_9 ;
  input \iv[9]_i_2 ;
  input \iv[9]_i_2_0 ;
  input \iv[13]_i_2 ;
  input \iv[13]_i_2_0 ;
  input \iv[5]_i_2 ;
  input \iv[9]_i_6 ;
  input \iv[11]_i_8 ;
  input \sr[6]_i_3 ;
  input \sr[6]_i_3_0 ;
  input \iv[0]_i_8 ;
  input \iv[11]_i_8_0 ;
  input \iv[10]_i_9 ;
  input \iv[10]_i_9_0 ;
  input \iv[10]_i_23 ;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_1 ;
  input [15:0]\grn_reg[15]_2 ;
  input clk;
  input [0:0]\grn_reg[15]_3 ;
  input [0:0]\grn_reg[15]_4 ;
  input [0:0]\grn_reg[15]_5 ;
  input [0:0]\grn_reg[15]_6 ;
  input [0:0]\grn_reg[15]_7 ;
  input [0:0]\grn_reg[15]_8 ;
  input [0:0]\grn_reg[15]_9 ;
  input [0:0]\grn_reg[15]_10 ;
  input [0:0]\grn_reg[15]_11 ;
  input [0:0]\grn_reg[15]_12 ;
  input [0:0]\grn_reg[15]_13 ;
  input [0:0]\grn_reg[15]_14 ;
  input [0:0]\grn_reg[15]_15 ;
  input [0:0]\grn_reg[15]_16 ;
  input [0:0]\grn_reg[15]_17 ;
     output [15:0]gr23;
     output [15:0]gr24;
     output [15:0]gr25;
     output [15:0]gr26;
     output [15:0]gr00;
     output [15:0]gr01;
     output [15:0]gr02;
     output [15:0]gr03;
     output [15:0]gr04;
     output [15:0]gr05;
     output [15:0]gr06;
     output [15:0]gr07;

  wire [0:0]SR;
  wire \abus_o[0] ;
  wire \abus_o[0]_0 ;
  wire \abus_o[0]_1 ;
  wire \abus_o[0]_2 ;
  wire \abus_o[10] ;
  wire \abus_o[10]_0 ;
  wire \abus_o[10]_1 ;
  wire \abus_o[10]_2 ;
  wire \abus_o[11] ;
  wire \abus_o[11]_0 ;
  wire \abus_o[11]_1 ;
  wire \abus_o[11]_2 ;
  wire \abus_o[12] ;
  wire \abus_o[12]_0 ;
  wire \abus_o[12]_1 ;
  wire \abus_o[12]_2 ;
  wire \abus_o[13] ;
  wire \abus_o[13]_0 ;
  wire \abus_o[13]_1 ;
  wire \abus_o[13]_2 ;
  wire \abus_o[14] ;
  wire \abus_o[14]_0 ;
  wire \abus_o[14]_1 ;
  wire \abus_o[14]_2 ;
  wire \abus_o[15] ;
  wire \abus_o[15]_0 ;
  wire \abus_o[15]_1 ;
  wire \abus_o[15]_2 ;
  wire \abus_o[1] ;
  wire \abus_o[1]_0 ;
  wire \abus_o[1]_1 ;
  wire \abus_o[1]_2 ;
  wire \abus_o[2] ;
  wire \abus_o[2]_0 ;
  wire \abus_o[2]_1 ;
  wire \abus_o[2]_2 ;
  wire \abus_o[3] ;
  wire \abus_o[3]_0 ;
  wire \abus_o[3]_1 ;
  wire \abus_o[3]_2 ;
  wire \abus_o[4] ;
  wire \abus_o[4]_0 ;
  wire \abus_o[4]_1 ;
  wire \abus_o[4]_2 ;
  wire \abus_o[5] ;
  wire \abus_o[5]_0 ;
  wire \abus_o[5]_1 ;
  wire \abus_o[5]_2 ;
  wire \abus_o[6] ;
  wire \abus_o[6]_0 ;
  wire \abus_o[6]_1 ;
  wire \abus_o[6]_2 ;
  wire \abus_o[7] ;
  wire \abus_o[7]_0 ;
  wire \abus_o[7]_1 ;
  wire \abus_o[7]_2 ;
  wire \abus_o[8] ;
  wire \abus_o[8]_0 ;
  wire \abus_o[8]_1 ;
  wire \abus_o[8]_2 ;
  wire \abus_o[9] ;
  wire \abus_o[9]_0 ;
  wire \abus_o[9]_1 ;
  wire \abus_o[9]_2 ;
  wire \badr[0]_INST_0_i_10_n_0 ;
  wire \badr[0]_INST_0_i_11_n_0 ;
  wire \badr[0]_INST_0_i_12_n_0 ;
  wire \badr[0]_INST_0_i_14_n_0 ;
  wire \badr[0]_INST_0_i_15_n_0 ;
  wire \badr[0]_INST_0_i_1_0 ;
  wire \badr[0]_INST_0_i_2_n_0 ;
  wire \badr[0]_INST_0_i_3_n_0 ;
  wire \badr[0]_INST_0_i_8_n_0 ;
  wire \badr[0]_INST_0_i_9_n_0 ;
  wire \badr[10]_INST_0_i_1 ;
  wire \badr[11]_INST_0_i_10_n_0 ;
  wire \badr[11]_INST_0_i_11_n_0 ;
  wire \badr[11]_INST_0_i_12_n_0 ;
  wire \badr[11]_INST_0_i_14_n_0 ;
  wire \badr[11]_INST_0_i_15_n_0 ;
  wire \badr[11]_INST_0_i_1_0 ;
  wire \badr[11]_INST_0_i_1_1 ;
  wire \badr[11]_INST_0_i_2_n_0 ;
  wire \badr[11]_INST_0_i_3_n_0 ;
  wire \badr[11]_INST_0_i_8_n_0 ;
  wire \badr[11]_INST_0_i_9_n_0 ;
  wire \badr[12]_INST_0_i_10_n_0 ;
  wire \badr[12]_INST_0_i_11_n_0 ;
  wire \badr[12]_INST_0_i_12_n_0 ;
  wire \badr[12]_INST_0_i_14_n_0 ;
  wire \badr[12]_INST_0_i_15_n_0 ;
  wire \badr[12]_INST_0_i_1_0 ;
  wire \badr[12]_INST_0_i_1_1 ;
  wire \badr[12]_INST_0_i_2_n_0 ;
  wire \badr[12]_INST_0_i_3_n_0 ;
  wire \badr[12]_INST_0_i_8_n_0 ;
  wire \badr[12]_INST_0_i_9_n_0 ;
  wire \badr[13]_INST_0_i_10_n_0 ;
  wire \badr[13]_INST_0_i_11_n_0 ;
  wire \badr[13]_INST_0_i_12_n_0 ;
  wire \badr[13]_INST_0_i_14_n_0 ;
  wire \badr[13]_INST_0_i_15_n_0 ;
  wire \badr[13]_INST_0_i_1_0 ;
  wire \badr[13]_INST_0_i_1_1 ;
  wire \badr[13]_INST_0_i_2_n_0 ;
  wire \badr[13]_INST_0_i_3_n_0 ;
  wire \badr[13]_INST_0_i_8_n_0 ;
  wire \badr[13]_INST_0_i_9_n_0 ;
  wire \badr[14]_INST_0_i_10_n_0 ;
  wire \badr[14]_INST_0_i_11_n_0 ;
  wire \badr[14]_INST_0_i_12_n_0 ;
  wire \badr[14]_INST_0_i_14_n_0 ;
  wire \badr[14]_INST_0_i_15_n_0 ;
  wire \badr[14]_INST_0_i_1_0 ;
  wire \badr[14]_INST_0_i_1_1 ;
  wire \badr[14]_INST_0_i_2_n_0 ;
  wire \badr[14]_INST_0_i_3_n_0 ;
  wire \badr[14]_INST_0_i_8_n_0 ;
  wire \badr[14]_INST_0_i_9_n_0 ;
  wire \badr[15]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_1_0 ;
  wire \badr[1]_INST_0_i_1 ;
  wire \badr[1]_INST_0_i_1_0 ;
  wire \badr[1]_INST_0_i_1_1 ;
  wire \badr[2]_INST_0_i_1 ;
  wire \badr[2]_INST_0_i_1_0 ;
  wire \badr[3]_INST_0_i_1 ;
  wire \badr[3]_INST_0_i_1_0 ;
  wire \badr[4]_INST_0_i_10_n_0 ;
  wire \badr[4]_INST_0_i_11_n_0 ;
  wire \badr[4]_INST_0_i_12_n_0 ;
  wire \badr[4]_INST_0_i_14_n_0 ;
  wire \badr[4]_INST_0_i_15_n_0 ;
  wire \badr[4]_INST_0_i_1_0 ;
  wire \badr[4]_INST_0_i_1_1 ;
  wire \badr[4]_INST_0_i_2_n_0 ;
  wire \badr[4]_INST_0_i_3_n_0 ;
  wire \badr[4]_INST_0_i_8_n_0 ;
  wire \badr[4]_INST_0_i_9_n_0 ;
  wire \badr[5]_INST_0_i_1 ;
  wire \badr[5]_INST_0_i_1_0 ;
  wire \badr[6]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_1_0 ;
  wire \badr[8]_INST_0_i_1 ;
  wire \badr[9]_INST_0_i_1 ;
  wire \badr[9]_INST_0_i_1_0 ;
  wire \bdatw[10]_INST_0_i_28_n_0 ;
  wire \bdatw[10]_INST_0_i_29_n_0 ;
  wire \bdatw[10]_INST_0_i_45_n_0 ;
  wire \bdatw[10]_INST_0_i_46_n_0 ;
  wire \bdatw[10]_INST_0_i_47_n_0 ;
  wire \bdatw[10]_INST_0_i_48_n_0 ;
  wire \bdatw[10]_INST_0_i_49_n_0 ;
  wire \bdatw[10]_INST_0_i_50_n_0 ;
  wire \bdatw[11]_INST_0_i_30_n_0 ;
  wire \bdatw[11]_INST_0_i_31_n_0 ;
  wire \bdatw[11]_INST_0_i_47_n_0 ;
  wire \bdatw[11]_INST_0_i_48_n_0 ;
  wire \bdatw[11]_INST_0_i_49_n_0 ;
  wire \bdatw[11]_INST_0_i_50_n_0 ;
  wire \bdatw[11]_INST_0_i_51_n_0 ;
  wire \bdatw[11]_INST_0_i_52_n_0 ;
  wire \bdatw[12]_INST_0_i_2 ;
  wire \bdatw[12]_INST_0_i_33_n_0 ;
  wire \bdatw[12]_INST_0_i_34_n_0 ;
  wire \bdatw[12]_INST_0_i_78_n_0 ;
  wire \bdatw[12]_INST_0_i_79_n_0 ;
  wire \bdatw[12]_INST_0_i_80_n_0 ;
  wire \bdatw[12]_INST_0_i_81_n_0 ;
  wire \bdatw[12]_INST_0_i_82_n_0 ;
  wire \bdatw[12]_INST_0_i_83_n_0 ;
  wire \bdatw[13]_INST_0_i_17_n_0 ;
  wire \bdatw[13]_INST_0_i_18_n_0 ;
  wire \bdatw[13]_INST_0_i_28_n_0 ;
  wire \bdatw[13]_INST_0_i_29_n_0 ;
  wire \bdatw[13]_INST_0_i_30_n_0 ;
  wire \bdatw[13]_INST_0_i_31_n_0 ;
  wire \bdatw[13]_INST_0_i_32_n_0 ;
  wire \bdatw[13]_INST_0_i_33_n_0 ;
  wire \bdatw[14]_INST_0_i_18_n_0 ;
  wire \bdatw[14]_INST_0_i_19_n_0 ;
  wire \bdatw[14]_INST_0_i_29_n_0 ;
  wire \bdatw[14]_INST_0_i_30_n_0 ;
  wire \bdatw[14]_INST_0_i_31_n_0 ;
  wire \bdatw[14]_INST_0_i_32_n_0 ;
  wire \bdatw[14]_INST_0_i_33_n_0 ;
  wire \bdatw[14]_INST_0_i_34_n_0 ;
  wire \bdatw[15]_INST_0_i_100_n_0 ;
  wire \bdatw[15]_INST_0_i_101_n_0 ;
  wire \bdatw[15]_INST_0_i_102_n_0 ;
  wire [0:0]\bdatw[15]_INST_0_i_28_0 ;
  wire \bdatw[15]_INST_0_i_55_n_0 ;
  wire \bdatw[15]_INST_0_i_56_n_0 ;
  wire \bdatw[15]_INST_0_i_61_n_0 ;
  wire \bdatw[15]_INST_0_i_62_n_0 ;
  wire \bdatw[15]_INST_0_i_83_n_0 ;
  wire \bdatw[15]_INST_0_i_85_n_0 ;
  wire \bdatw[15]_INST_0_i_87_n_0 ;
  wire \bdatw[15]_INST_0_i_88_n_0 ;
  wire \bdatw[15]_INST_0_i_89_n_0 ;
  wire \bdatw[15]_INST_0_i_90_n_0 ;
  wire \bdatw[15]_INST_0_i_97_n_0 ;
  wire \bdatw[15]_INST_0_i_98_n_0 ;
  wire \bdatw[15]_INST_0_i_99_n_0 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_2_10 ;
  wire \bdatw[8]_INST_0_i_2_11 ;
  wire \bdatw[8]_INST_0_i_2_12 ;
  wire \bdatw[8]_INST_0_i_2_13 ;
  wire \bdatw[8]_INST_0_i_2_14 ;
  wire \bdatw[8]_INST_0_i_2_15 ;
  wire \bdatw[8]_INST_0_i_2_16 ;
  wire \bdatw[8]_INST_0_i_2_17 ;
  wire \bdatw[8]_INST_0_i_2_18 ;
  wire \bdatw[8]_INST_0_i_2_19 ;
  wire \bdatw[8]_INST_0_i_2_2 ;
  wire \bdatw[8]_INST_0_i_2_3 ;
  wire \bdatw[8]_INST_0_i_2_4 ;
  wire \bdatw[8]_INST_0_i_2_5 ;
  wire \bdatw[8]_INST_0_i_2_6 ;
  wire \bdatw[8]_INST_0_i_2_7 ;
  wire \bdatw[8]_INST_0_i_2_8 ;
  wire \bdatw[8]_INST_0_i_2_9 ;
  wire \bdatw[8]_INST_0_i_30_n_0 ;
  wire \bdatw[8]_INST_0_i_31_n_0 ;
  wire \bdatw[8]_INST_0_i_47_n_0 ;
  wire \bdatw[8]_INST_0_i_48_n_0 ;
  wire \bdatw[8]_INST_0_i_49_n_0 ;
  wire \bdatw[8]_INST_0_i_50_n_0 ;
  wire \bdatw[8]_INST_0_i_51_n_0 ;
  wire \bdatw[8]_INST_0_i_52_n_0 ;
  wire \bdatw[9]_INST_0_i_30_n_0 ;
  wire \bdatw[9]_INST_0_i_31_n_0 ;
  wire \bdatw[9]_INST_0_i_47_n_0 ;
  wire \bdatw[9]_INST_0_i_48_n_0 ;
  wire \bdatw[9]_INST_0_i_49_n_0 ;
  wire \bdatw[9]_INST_0_i_50_n_0 ;
  wire \bdatw[9]_INST_0_i_51_n_0 ;
  wire \bdatw[9]_INST_0_i_52_n_0 ;
  wire clk;
  (* DONT_TOUCH *) wire [15:0]gr00;
  (* DONT_TOUCH *) wire [15:0]gr01;
  (* DONT_TOUCH *) wire [15:0]gr02;
  (* DONT_TOUCH *) wire [15:0]gr03;
  (* DONT_TOUCH *) wire [15:0]gr04;
  (* DONT_TOUCH *) wire [15:0]gr05;
  (* DONT_TOUCH *) wire [15:0]gr06;
  (* DONT_TOUCH *) wire [15:0]gr07;
  wire gr0_bus1__0_15;
  wire gr0_bus1__0_23;
  wire gr0_bus1__0_31;
  wire gr0_bus1__0_43;
  wire gr1_bus1__0_16;
  wire gr1_bus1__0_24;
  wire gr1_bus1__0_36;
  wire gr1_bus1__0_40;
  (* DONT_TOUCH *) wire [15:0]gr20;
  (* DONT_TOUCH *) wire [15:0]gr21;
  (* DONT_TOUCH *) wire [15:0]gr22;
  (* DONT_TOUCH *) wire [15:0]gr23;
  (* DONT_TOUCH *) wire [15:0]gr24;
  (* DONT_TOUCH *) wire [15:0]gr25;
  (* DONT_TOUCH *) wire [15:0]gr26;
  (* DONT_TOUCH *) wire [15:0]gr27;
  wire gr2_bus1__0_17;
  wire gr2_bus1__0_25;
  wire gr2_bus1__0_37;
  wire gr2_bus1__0_41;
  wire gr3_bus1__0;
  wire gr3_bus1__0_18;
  wire gr3_bus1__0_26;
  wire gr3_bus1__0_32;
  wire gr4_bus1__0;
  wire gr4_bus1__0_19;
  wire gr4_bus1__0_27;
  wire gr4_bus1__0_33;
  wire gr5_bus1__0_20;
  wire gr5_bus1__0_28;
  wire gr5_bus1__0_34;
  wire gr5_bus1__0_38;
  wire gr6_bus1__0_21;
  wire gr6_bus1__0_29;
  wire gr6_bus1__0_35;
  wire gr6_bus1__0_39;
  wire gr7_bus1__0_14;
  wire gr7_bus1__0_22;
  wire gr7_bus1__0_30;
  wire gr7_bus1__0_42;
  wire grn27_n_23;
  wire grn27_n_32;
  wire grn27_n_37;
  wire grn27_n_43;
  wire grn27_n_44;
  wire grn27_n_47;
  wire grn27_n_48;
  wire \grn_reg[0] ;
  wire \grn_reg[0]_0 ;
  wire \grn_reg[0]_1 ;
  wire \grn_reg[10] ;
  wire \grn_reg[10]_0 ;
  wire \grn_reg[11] ;
  wire \grn_reg[11]_0 ;
  wire \grn_reg[12] ;
  wire \grn_reg[12]_0 ;
  wire \grn_reg[13] ;
  wire \grn_reg[13]_0 ;
  wire \grn_reg[14] ;
  wire \grn_reg[14]_0 ;
  wire \grn_reg[15] ;
  wire \grn_reg[15]_0 ;
  wire [0:0]\grn_reg[15]_1 ;
  wire [0:0]\grn_reg[15]_10 ;
  wire [0:0]\grn_reg[15]_11 ;
  wire [0:0]\grn_reg[15]_12 ;
  wire [0:0]\grn_reg[15]_13 ;
  wire [0:0]\grn_reg[15]_14 ;
  wire [0:0]\grn_reg[15]_15 ;
  wire [0:0]\grn_reg[15]_16 ;
  wire [0:0]\grn_reg[15]_17 ;
  wire [15:0]\grn_reg[15]_2 ;
  wire [0:0]\grn_reg[15]_3 ;
  wire [0:0]\grn_reg[15]_4 ;
  wire [0:0]\grn_reg[15]_5 ;
  wire [0:0]\grn_reg[15]_6 ;
  wire [0:0]\grn_reg[15]_7 ;
  wire [0:0]\grn_reg[15]_8 ;
  wire [0:0]\grn_reg[15]_9 ;
  wire \grn_reg[1] ;
  wire \grn_reg[1]_0 ;
  wire \grn_reg[1]_1 ;
  wire \grn_reg[2] ;
  wire \grn_reg[2]_0 ;
  wire \grn_reg[2]_1 ;
  wire \grn_reg[3] ;
  wire \grn_reg[3]_0 ;
  wire \grn_reg[3]_1 ;
  wire \grn_reg[4]_11 ;
  wire \grn_reg[4]_12 ;
  wire \grn_reg[4]_13 ;
  wire \grn_reg[5] ;
  wire \grn_reg[5]_0 ;
  wire \grn_reg[6] ;
  wire \grn_reg[6]_0 ;
  wire \grn_reg[7] ;
  wire \grn_reg[7]_0 ;
  wire \grn_reg[8] ;
  wire \grn_reg[8]_0 ;
  wire \grn_reg[9] ;
  wire \grn_reg[9]_0 ;
  wire \iv[0]_i_8 ;
  wire \iv[10]_i_23 ;
  wire \iv[10]_i_30 ;
  wire \iv[10]_i_9 ;
  wire \iv[10]_i_9_0 ;
  wire \iv[11]_i_25 ;
  wire \iv[11]_i_8 ;
  wire \iv[11]_i_8_0 ;
  wire \iv[13]_i_17_n_0 ;
  wire \iv[13]_i_18_0 ;
  wire \iv[13]_i_2 ;
  wire \iv[13]_i_23 ;
  wire \iv[13]_i_23_0 ;
  wire \iv[13]_i_25_0 ;
  wire \iv[13]_i_27_0 ;
  wire \iv[13]_i_27_n_0 ;
  wire \iv[13]_i_2_0 ;
  wire \iv[13]_i_31 ;
  wire \iv[13]_i_32_0 ;
  wire \iv[13]_i_32_n_0 ;
  wire \iv[13]_i_33_0 ;
  wire \iv[13]_i_33_n_0 ;
  wire \iv[13]_i_34_n_0 ;
  wire \iv[13]_i_36 ;
  wire \iv[13]_i_36_0 ;
  wire \iv[13]_i_6 ;
  wire \iv[14]_i_29 ;
  wire \iv[14]_i_36_n_0 ;
  wire \iv[14]_i_39 ;
  wire \iv[14]_i_39_0 ;
  wire \iv[14]_i_42 ;
  wire \iv[14]_i_8 ;
  wire \iv[2]_i_22_n_0 ;
  wire \iv[2]_i_23 ;
  wire \iv[2]_i_23_0 ;
  wire \iv[2]_i_23_1 ;
  wire \iv[2]_i_23_2 ;
  wire \iv[2]_i_23_3 ;
  wire \iv[2]_i_24_n_0 ;
  wire \iv[2]_i_8 ;
  wire \iv[2]_i_8_0 ;
  wire \iv[2]_i_8_1 ;
  wire \iv[2]_i_8_2 ;
  wire \iv[2]_i_9 ;
  wire \iv[5]_i_13_n_0 ;
  wire \iv[5]_i_15 ;
  wire \iv[5]_i_2 ;
  wire \iv[5]_i_5 ;
  wire \iv[7]_i_18 ;
  wire \iv[7]_i_9 ;
  wire \iv[8]_i_20 ;
  wire \iv[9]_i_2 ;
  wire \iv[9]_i_2_0 ;
  wire \iv[9]_i_6 ;
  wire [10:0]out;
  wire \sr[6]_i_10_0 ;
  wire \sr[6]_i_10_n_0 ;
  wire \sr[6]_i_3 ;
  wire \sr[6]_i_3_0 ;
  wire \sr[7]_i_9 ;
  wire \sr_reg[6] ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[6]_1 ;
  wire \sr_reg[6]_10 ;
  wire \sr_reg[6]_11 ;
  wire \sr_reg[6]_12 ;
  wire \sr_reg[6]_13 ;
  wire \sr_reg[6]_14 ;
  wire \sr_reg[6]_15 ;
  wire \sr_reg[6]_16 ;
  wire \sr_reg[6]_17 ;
  wire \sr_reg[6]_18 ;
  wire \sr_reg[6]_19 ;
  wire \sr_reg[6]_2 ;
  wire \sr_reg[6]_3 ;
  wire \sr_reg[6]_4 ;
  wire \sr_reg[6]_5 ;
  wire \sr_reg[6]_6 ;
  wire \sr_reg[6]_7 ;
  wire \sr_reg[6]_8 ;
  wire \sr_reg[6]_9 ;
  wire \stat_reg[2] ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_2 ;
  wire \stat_reg[2]_3 ;
  wire \stat_reg[2]_4 ;
  wire \stat_reg[2]_5 ;
  wire \stat_reg[2]_6 ;
  wire \stat_reg[2]_7 ;
  wire \stat_reg[2]_8 ;
  wire \tr_reg[2] ;
  wire \tr_reg[2]_0 ;
  wire \tr_reg[2]_1 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[0]_INST_0_i_1 
       (.I0(\badr[0]_INST_0_i_2_n_0 ),
        .I1(\badr[0]_INST_0_i_3_n_0 ),
        .I2(\abus_o[0] ),
        .I3(\abus_o[0]_0 ),
        .I4(\abus_o[0]_1 ),
        .I5(\abus_o[0]_2 ),
        .O(\grn_reg[0] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_10 
       (.I0(gr01[0]),
        .I1(gr1_bus1__0_24),
        .I2(gr02[0]),
        .I3(gr2_bus1__0_25),
        .O(\badr[0]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_11 
       (.I0(gr07[0]),
        .I1(gr7_bus1__0_30),
        .I2(gr00[0]),
        .I3(gr0_bus1__0_31),
        .O(\badr[0]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_12 
       (.I0(gr05[0]),
        .I1(gr5_bus1__0_28),
        .I2(gr06[0]),
        .I3(gr6_bus1__0_29),
        .O(\badr[0]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_14 
       (.I0(gr25[0]),
        .I1(gr5_bus1__0_38),
        .I2(gr26[0]),
        .I3(gr6_bus1__0_39),
        .O(\badr[0]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_15 
       (.I0(gr21[0]),
        .I1(gr1_bus1__0_40),
        .I2(gr22[0]),
        .I3(gr2_bus1__0_41),
        .O(\badr[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[0]_INST_0_i_2 
       (.I0(\badr[0]_INST_0_i_8_n_0 ),
        .I1(\badr[0]_INST_0_i_9_n_0 ),
        .I2(\badr[0]_INST_0_i_10_n_0 ),
        .I3(\badr[0]_INST_0_i_11_n_0 ),
        .I4(\badr[0]_INST_0_i_12_n_0 ),
        .I5(\badr[0]_INST_0_i_1_0 ),
        .O(\badr[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[0]_INST_0_i_3 
       (.I0(\badr[0]_INST_0_i_14_n_0 ),
        .I1(gr23[0]),
        .I2(gr3_bus1__0),
        .I3(gr24[0]),
        .I4(gr4_bus1__0),
        .I5(\badr[0]_INST_0_i_15_n_0 ),
        .O(\badr[0]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_8 
       (.I0(gr27[0]),
        .I1(gr7_bus1__0_42),
        .I2(gr20[0]),
        .I3(gr0_bus1__0_43),
        .O(\badr[0]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_9 
       (.I0(gr03[0]),
        .I1(gr3_bus1__0_26),
        .I2(gr04[0]),
        .I3(gr4_bus1__0_27),
        .O(\badr[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[11]_INST_0_i_1 
       (.I0(\badr[11]_INST_0_i_2_n_0 ),
        .I1(\badr[11]_INST_0_i_3_n_0 ),
        .I2(\abus_o[11] ),
        .I3(\abus_o[11]_0 ),
        .I4(\abus_o[11]_1 ),
        .I5(\abus_o[11]_2 ),
        .O(\grn_reg[11] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_10 
       (.I0(gr01[11]),
        .I1(gr1_bus1__0_24),
        .I2(gr02[11]),
        .I3(gr2_bus1__0_25),
        .O(\badr[11]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_11 
       (.I0(gr07[11]),
        .I1(gr7_bus1__0_30),
        .I2(gr00[11]),
        .I3(gr0_bus1__0_31),
        .O(\badr[11]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_12 
       (.I0(gr05[11]),
        .I1(gr5_bus1__0_28),
        .I2(gr06[11]),
        .I3(gr6_bus1__0_29),
        .O(\badr[11]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_14 
       (.I0(gr25[11]),
        .I1(gr5_bus1__0_38),
        .I2(gr26[11]),
        .I3(gr6_bus1__0_39),
        .O(\badr[11]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_15 
       (.I0(gr21[11]),
        .I1(gr1_bus1__0_40),
        .I2(gr22[11]),
        .I3(gr2_bus1__0_41),
        .O(\badr[11]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[11]_INST_0_i_2 
       (.I0(\badr[11]_INST_0_i_8_n_0 ),
        .I1(\badr[11]_INST_0_i_9_n_0 ),
        .I2(\badr[11]_INST_0_i_10_n_0 ),
        .I3(\badr[11]_INST_0_i_11_n_0 ),
        .I4(\badr[11]_INST_0_i_12_n_0 ),
        .I5(\badr[11]_INST_0_i_1_1 ),
        .O(\badr[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[11]_INST_0_i_3 
       (.I0(\badr[11]_INST_0_i_14_n_0 ),
        .I1(gr23[11]),
        .I2(gr3_bus1__0),
        .I3(gr24[11]),
        .I4(gr4_bus1__0),
        .I5(\badr[11]_INST_0_i_15_n_0 ),
        .O(\badr[11]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_8 
       (.I0(gr27[11]),
        .I1(gr7_bus1__0_42),
        .I2(gr20[11]),
        .I3(gr0_bus1__0_43),
        .O(\badr[11]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_9 
       (.I0(gr03[11]),
        .I1(gr3_bus1__0_26),
        .I2(gr04[11]),
        .I3(gr4_bus1__0_27),
        .O(\badr[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[12]_INST_0_i_1 
       (.I0(\badr[12]_INST_0_i_2_n_0 ),
        .I1(\badr[12]_INST_0_i_3_n_0 ),
        .I2(\abus_o[12] ),
        .I3(\abus_o[12]_0 ),
        .I4(\abus_o[12]_1 ),
        .I5(\abus_o[12]_2 ),
        .O(\grn_reg[12] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_10 
       (.I0(gr01[12]),
        .I1(gr1_bus1__0_24),
        .I2(gr02[12]),
        .I3(gr2_bus1__0_25),
        .O(\badr[12]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_11 
       (.I0(gr07[12]),
        .I1(gr7_bus1__0_30),
        .I2(gr00[12]),
        .I3(gr0_bus1__0_31),
        .O(\badr[12]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_12 
       (.I0(gr05[12]),
        .I1(gr5_bus1__0_28),
        .I2(gr06[12]),
        .I3(gr6_bus1__0_29),
        .O(\badr[12]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_14 
       (.I0(gr25[12]),
        .I1(gr5_bus1__0_38),
        .I2(gr26[12]),
        .I3(gr6_bus1__0_39),
        .O(\badr[12]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_15 
       (.I0(gr21[12]),
        .I1(gr1_bus1__0_40),
        .I2(gr22[12]),
        .I3(gr2_bus1__0_41),
        .O(\badr[12]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[12]_INST_0_i_2 
       (.I0(\badr[12]_INST_0_i_8_n_0 ),
        .I1(\badr[12]_INST_0_i_9_n_0 ),
        .I2(\badr[12]_INST_0_i_10_n_0 ),
        .I3(\badr[12]_INST_0_i_11_n_0 ),
        .I4(\badr[12]_INST_0_i_12_n_0 ),
        .I5(\badr[12]_INST_0_i_1_1 ),
        .O(\badr[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[12]_INST_0_i_3 
       (.I0(\badr[12]_INST_0_i_14_n_0 ),
        .I1(gr23[12]),
        .I2(gr3_bus1__0),
        .I3(gr24[12]),
        .I4(gr4_bus1__0),
        .I5(\badr[12]_INST_0_i_15_n_0 ),
        .O(\badr[12]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_8 
       (.I0(gr27[12]),
        .I1(gr7_bus1__0_42),
        .I2(gr20[12]),
        .I3(gr0_bus1__0_43),
        .O(\badr[12]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_9 
       (.I0(gr03[12]),
        .I1(gr3_bus1__0_26),
        .I2(gr04[12]),
        .I3(gr4_bus1__0_27),
        .O(\badr[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[13]_INST_0_i_1 
       (.I0(\badr[13]_INST_0_i_2_n_0 ),
        .I1(\badr[13]_INST_0_i_3_n_0 ),
        .I2(\abus_o[13] ),
        .I3(\abus_o[13]_0 ),
        .I4(\abus_o[13]_1 ),
        .I5(\abus_o[13]_2 ),
        .O(\grn_reg[13] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_10 
       (.I0(gr01[13]),
        .I1(gr1_bus1__0_24),
        .I2(gr02[13]),
        .I3(gr2_bus1__0_25),
        .O(\badr[13]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_11 
       (.I0(gr07[13]),
        .I1(gr7_bus1__0_30),
        .I2(gr00[13]),
        .I3(gr0_bus1__0_31),
        .O(\badr[13]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_12 
       (.I0(gr05[13]),
        .I1(gr5_bus1__0_28),
        .I2(gr06[13]),
        .I3(gr6_bus1__0_29),
        .O(\badr[13]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_14 
       (.I0(gr25[13]),
        .I1(gr5_bus1__0_38),
        .I2(gr26[13]),
        .I3(gr6_bus1__0_39),
        .O(\badr[13]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_15 
       (.I0(gr21[13]),
        .I1(gr1_bus1__0_40),
        .I2(gr22[13]),
        .I3(gr2_bus1__0_41),
        .O(\badr[13]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[13]_INST_0_i_2 
       (.I0(\badr[13]_INST_0_i_8_n_0 ),
        .I1(\badr[13]_INST_0_i_9_n_0 ),
        .I2(\badr[13]_INST_0_i_10_n_0 ),
        .I3(\badr[13]_INST_0_i_11_n_0 ),
        .I4(\badr[13]_INST_0_i_12_n_0 ),
        .I5(\badr[13]_INST_0_i_1_1 ),
        .O(\badr[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[13]_INST_0_i_3 
       (.I0(\badr[13]_INST_0_i_14_n_0 ),
        .I1(gr23[13]),
        .I2(gr3_bus1__0),
        .I3(gr24[13]),
        .I4(gr4_bus1__0),
        .I5(\badr[13]_INST_0_i_15_n_0 ),
        .O(\badr[13]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_8 
       (.I0(gr27[13]),
        .I1(gr7_bus1__0_42),
        .I2(gr20[13]),
        .I3(gr0_bus1__0_43),
        .O(\badr[13]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_9 
       (.I0(gr03[13]),
        .I1(gr3_bus1__0_26),
        .I2(gr04[13]),
        .I3(gr4_bus1__0_27),
        .O(\badr[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[14]_INST_0_i_1 
       (.I0(\badr[14]_INST_0_i_2_n_0 ),
        .I1(\badr[14]_INST_0_i_3_n_0 ),
        .I2(\abus_o[14] ),
        .I3(\abus_o[14]_0 ),
        .I4(\abus_o[14]_1 ),
        .I5(\abus_o[14]_2 ),
        .O(\grn_reg[14] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_10 
       (.I0(gr01[14]),
        .I1(gr1_bus1__0_24),
        .I2(gr02[14]),
        .I3(gr2_bus1__0_25),
        .O(\badr[14]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_11 
       (.I0(gr07[14]),
        .I1(gr7_bus1__0_30),
        .I2(gr00[14]),
        .I3(gr0_bus1__0_31),
        .O(\badr[14]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_12 
       (.I0(gr05[14]),
        .I1(gr5_bus1__0_28),
        .I2(gr06[14]),
        .I3(gr6_bus1__0_29),
        .O(\badr[14]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_14 
       (.I0(gr25[14]),
        .I1(gr5_bus1__0_38),
        .I2(gr26[14]),
        .I3(gr6_bus1__0_39),
        .O(\badr[14]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_15 
       (.I0(gr21[14]),
        .I1(gr1_bus1__0_40),
        .I2(gr22[14]),
        .I3(gr2_bus1__0_41),
        .O(\badr[14]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[14]_INST_0_i_2 
       (.I0(\badr[14]_INST_0_i_8_n_0 ),
        .I1(\badr[14]_INST_0_i_9_n_0 ),
        .I2(\badr[14]_INST_0_i_10_n_0 ),
        .I3(\badr[14]_INST_0_i_11_n_0 ),
        .I4(\badr[14]_INST_0_i_12_n_0 ),
        .I5(\badr[14]_INST_0_i_1_1 ),
        .O(\badr[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[14]_INST_0_i_3 
       (.I0(\badr[14]_INST_0_i_14_n_0 ),
        .I1(gr23[14]),
        .I2(gr3_bus1__0),
        .I3(gr24[14]),
        .I4(gr4_bus1__0),
        .I5(\badr[14]_INST_0_i_15_n_0 ),
        .O(\badr[14]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_8 
       (.I0(gr27[14]),
        .I1(gr7_bus1__0_42),
        .I2(gr20[14]),
        .I3(gr0_bus1__0_43),
        .O(\badr[14]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_9 
       (.I0(gr03[14]),
        .I1(gr3_bus1__0_26),
        .I2(gr04[14]),
        .I3(gr4_bus1__0_27),
        .O(\badr[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[4]_INST_0_i_1 
       (.I0(\badr[4]_INST_0_i_2_n_0 ),
        .I1(\badr[4]_INST_0_i_3_n_0 ),
        .I2(\abus_o[4] ),
        .I3(\abus_o[4]_0 ),
        .I4(\abus_o[4]_1 ),
        .I5(\abus_o[4]_2 ),
        .O(\grn_reg[4]_11 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_10 
       (.I0(gr01[4]),
        .I1(gr1_bus1__0_24),
        .I2(gr02[4]),
        .I3(gr2_bus1__0_25),
        .O(\badr[4]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_11 
       (.I0(gr07[4]),
        .I1(gr7_bus1__0_30),
        .I2(gr00[4]),
        .I3(gr0_bus1__0_31),
        .O(\badr[4]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_12 
       (.I0(gr05[4]),
        .I1(gr5_bus1__0_28),
        .I2(gr06[4]),
        .I3(gr6_bus1__0_29),
        .O(\badr[4]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_14 
       (.I0(gr25[4]),
        .I1(gr5_bus1__0_38),
        .I2(gr26[4]),
        .I3(gr6_bus1__0_39),
        .O(\badr[4]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_15 
       (.I0(gr21[4]),
        .I1(gr1_bus1__0_40),
        .I2(gr22[4]),
        .I3(gr2_bus1__0_41),
        .O(\badr[4]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[4]_INST_0_i_2 
       (.I0(\badr[4]_INST_0_i_8_n_0 ),
        .I1(\badr[4]_INST_0_i_9_n_0 ),
        .I2(\badr[4]_INST_0_i_10_n_0 ),
        .I3(\badr[4]_INST_0_i_11_n_0 ),
        .I4(\badr[4]_INST_0_i_12_n_0 ),
        .I5(\badr[4]_INST_0_i_1_1 ),
        .O(\badr[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[4]_INST_0_i_3 
       (.I0(\badr[4]_INST_0_i_14_n_0 ),
        .I1(gr23[4]),
        .I2(gr3_bus1__0),
        .I3(gr24[4]),
        .I4(gr4_bus1__0),
        .I5(\badr[4]_INST_0_i_15_n_0 ),
        .O(\badr[4]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_8 
       (.I0(gr27[4]),
        .I1(gr7_bus1__0_42),
        .I2(gr20[4]),
        .I3(gr0_bus1__0_43),
        .O(\badr[4]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_9 
       (.I0(gr03[4]),
        .I1(gr3_bus1__0_26),
        .I2(gr04[4]),
        .I3(gr4_bus1__0_27),
        .O(\badr[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[10]_INST_0_i_13 
       (.I0(\bdatw[10]_INST_0_i_28_n_0 ),
        .I1(\bdatw[10]_INST_0_i_29_n_0 ),
        .I2(gr27[10]),
        .I3(gr7_bus1__0_14),
        .I4(gr20[10]),
        .I5(gr0_bus1__0_15),
        .O(\grn_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[10]_INST_0_i_28 
       (.I0(\bdatw[10]_INST_0_i_45_n_0 ),
        .I1(gr23[10]),
        .I2(gr3_bus1__0_32),
        .I3(gr24[10]),
        .I4(gr4_bus1__0_33),
        .I5(\bdatw[10]_INST_0_i_46_n_0 ),
        .O(\bdatw[10]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[10]_INST_0_i_29 
       (.I0(out[5]),
        .I1(\bdatw[15]_INST_0_i_28_0 ),
        .I2(\bdatw[10]_INST_0_i_47_n_0 ),
        .I3(\bdatw[10]_INST_0_i_48_n_0 ),
        .I4(\bdatw[10]_INST_0_i_49_n_0 ),
        .I5(\bdatw[10]_INST_0_i_50_n_0 ),
        .O(\bdatw[10]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_45 
       (.I0(gr25[10]),
        .I1(gr5_bus1__0_34),
        .I2(gr26[10]),
        .I3(gr6_bus1__0_35),
        .O(\bdatw[10]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_46 
       (.I0(gr21[10]),
        .I1(gr1_bus1__0_36),
        .I2(gr22[10]),
        .I3(gr2_bus1__0_37),
        .O(\bdatw[10]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_47 
       (.I0(gr05[10]),
        .I1(gr5_bus1__0_20),
        .I2(gr06[10]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[10]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_48 
       (.I0(gr07[10]),
        .I1(gr7_bus1__0_22),
        .I2(gr00[10]),
        .I3(gr0_bus1__0_23),
        .O(\bdatw[10]_INST_0_i_48_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_49 
       (.I0(gr01[10]),
        .I1(gr1_bus1__0_16),
        .I2(gr02[10]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[10]_INST_0_i_49_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_50 
       (.I0(gr03[10]),
        .I1(gr3_bus1__0_18),
        .I2(gr04[10]),
        .I3(gr4_bus1__0_19),
        .O(\bdatw[10]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[11]_INST_0_i_14 
       (.I0(\bdatw[11]_INST_0_i_30_n_0 ),
        .I1(\bdatw[11]_INST_0_i_31_n_0 ),
        .I2(gr27[11]),
        .I3(gr7_bus1__0_14),
        .I4(gr20[11]),
        .I5(gr0_bus1__0_15),
        .O(\grn_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[11]_INST_0_i_30 
       (.I0(\bdatw[11]_INST_0_i_47_n_0 ),
        .I1(gr23[11]),
        .I2(gr3_bus1__0_32),
        .I3(gr24[11]),
        .I4(gr4_bus1__0_33),
        .I5(\bdatw[11]_INST_0_i_48_n_0 ),
        .O(\bdatw[11]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[11]_INST_0_i_31 
       (.I0(out[6]),
        .I1(\bdatw[15]_INST_0_i_28_0 ),
        .I2(\bdatw[11]_INST_0_i_49_n_0 ),
        .I3(\bdatw[11]_INST_0_i_50_n_0 ),
        .I4(\bdatw[11]_INST_0_i_51_n_0 ),
        .I5(\bdatw[11]_INST_0_i_52_n_0 ),
        .O(\bdatw[11]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_47 
       (.I0(gr25[11]),
        .I1(gr5_bus1__0_34),
        .I2(gr26[11]),
        .I3(gr6_bus1__0_35),
        .O(\bdatw[11]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_48 
       (.I0(gr21[11]),
        .I1(gr1_bus1__0_36),
        .I2(gr22[11]),
        .I3(gr2_bus1__0_37),
        .O(\bdatw[11]_INST_0_i_48_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_49 
       (.I0(gr05[11]),
        .I1(gr5_bus1__0_20),
        .I2(gr06[11]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[11]_INST_0_i_49_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_50 
       (.I0(gr07[11]),
        .I1(gr7_bus1__0_22),
        .I2(gr00[11]),
        .I3(gr0_bus1__0_23),
        .O(\bdatw[11]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_51 
       (.I0(gr01[11]),
        .I1(gr1_bus1__0_16),
        .I2(gr02[11]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[11]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_52 
       (.I0(gr03[11]),
        .I1(gr3_bus1__0_18),
        .I2(gr04[11]),
        .I3(gr4_bus1__0_19),
        .O(\bdatw[11]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[12]_INST_0_i_13 
       (.I0(\bdatw[12]_INST_0_i_33_n_0 ),
        .I1(\bdatw[12]_INST_0_i_34_n_0 ),
        .I2(gr27[12]),
        .I3(gr7_bus1__0_14),
        .I4(gr20[12]),
        .I5(gr0_bus1__0_15),
        .O(\grn_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[12]_INST_0_i_33 
       (.I0(\bdatw[12]_INST_0_i_78_n_0 ),
        .I1(gr23[12]),
        .I2(gr3_bus1__0_32),
        .I3(gr24[12]),
        .I4(gr4_bus1__0_33),
        .I5(\bdatw[12]_INST_0_i_79_n_0 ),
        .O(\bdatw[12]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[12]_INST_0_i_34 
       (.I0(out[7]),
        .I1(\bdatw[15]_INST_0_i_28_0 ),
        .I2(\bdatw[12]_INST_0_i_80_n_0 ),
        .I3(\bdatw[12]_INST_0_i_81_n_0 ),
        .I4(\bdatw[12]_INST_0_i_82_n_0 ),
        .I5(\bdatw[12]_INST_0_i_83_n_0 ),
        .O(\bdatw[12]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_78 
       (.I0(gr25[12]),
        .I1(gr5_bus1__0_34),
        .I2(gr26[12]),
        .I3(gr6_bus1__0_35),
        .O(\bdatw[12]_INST_0_i_78_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_79 
       (.I0(gr21[12]),
        .I1(gr1_bus1__0_36),
        .I2(gr22[12]),
        .I3(gr2_bus1__0_37),
        .O(\bdatw[12]_INST_0_i_79_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_80 
       (.I0(gr05[12]),
        .I1(gr5_bus1__0_20),
        .I2(gr06[12]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[12]_INST_0_i_80_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_81 
       (.I0(gr07[12]),
        .I1(gr7_bus1__0_22),
        .I2(gr00[12]),
        .I3(gr0_bus1__0_23),
        .O(\bdatw[12]_INST_0_i_81_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_82 
       (.I0(gr01[12]),
        .I1(gr1_bus1__0_16),
        .I2(gr02[12]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[12]_INST_0_i_82_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_83 
       (.I0(gr03[12]),
        .I1(gr3_bus1__0_18),
        .I2(gr04[12]),
        .I3(gr4_bus1__0_19),
        .O(\bdatw[12]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_11 
       (.I0(\bdatw[13]_INST_0_i_17_n_0 ),
        .I1(\bdatw[13]_INST_0_i_18_n_0 ),
        .I2(gr27[13]),
        .I3(gr7_bus1__0_14),
        .I4(gr20[13]),
        .I5(gr0_bus1__0_15),
        .O(\grn_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[13]_INST_0_i_17 
       (.I0(\bdatw[13]_INST_0_i_28_n_0 ),
        .I1(gr23[13]),
        .I2(gr3_bus1__0_32),
        .I3(gr24[13]),
        .I4(gr4_bus1__0_33),
        .I5(\bdatw[13]_INST_0_i_29_n_0 ),
        .O(\bdatw[13]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_18 
       (.I0(out[8]),
        .I1(\bdatw[15]_INST_0_i_28_0 ),
        .I2(\bdatw[13]_INST_0_i_30_n_0 ),
        .I3(\bdatw[13]_INST_0_i_31_n_0 ),
        .I4(\bdatw[13]_INST_0_i_32_n_0 ),
        .I5(\bdatw[13]_INST_0_i_33_n_0 ),
        .O(\bdatw[13]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_28 
       (.I0(gr25[13]),
        .I1(gr5_bus1__0_34),
        .I2(gr26[13]),
        .I3(gr6_bus1__0_35),
        .O(\bdatw[13]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_29 
       (.I0(gr21[13]),
        .I1(gr1_bus1__0_36),
        .I2(gr22[13]),
        .I3(gr2_bus1__0_37),
        .O(\bdatw[13]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_30 
       (.I0(gr05[13]),
        .I1(gr5_bus1__0_20),
        .I2(gr06[13]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[13]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_31 
       (.I0(gr07[13]),
        .I1(gr7_bus1__0_22),
        .I2(gr00[13]),
        .I3(gr0_bus1__0_23),
        .O(\bdatw[13]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_32 
       (.I0(gr01[13]),
        .I1(gr1_bus1__0_16),
        .I2(gr02[13]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[13]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_33 
       (.I0(gr03[13]),
        .I1(gr3_bus1__0_18),
        .I2(gr04[13]),
        .I3(gr4_bus1__0_19),
        .O(\bdatw[13]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_12 
       (.I0(\bdatw[14]_INST_0_i_18_n_0 ),
        .I1(\bdatw[14]_INST_0_i_19_n_0 ),
        .I2(gr27[14]),
        .I3(gr7_bus1__0_14),
        .I4(gr20[14]),
        .I5(gr0_bus1__0_15),
        .O(\grn_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[14]_INST_0_i_18 
       (.I0(\bdatw[14]_INST_0_i_29_n_0 ),
        .I1(gr23[14]),
        .I2(gr3_bus1__0_32),
        .I3(gr24[14]),
        .I4(gr4_bus1__0_33),
        .I5(\bdatw[14]_INST_0_i_30_n_0 ),
        .O(\bdatw[14]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_19 
       (.I0(out[9]),
        .I1(\bdatw[15]_INST_0_i_28_0 ),
        .I2(\bdatw[14]_INST_0_i_31_n_0 ),
        .I3(\bdatw[14]_INST_0_i_32_n_0 ),
        .I4(\bdatw[14]_INST_0_i_33_n_0 ),
        .I5(\bdatw[14]_INST_0_i_34_n_0 ),
        .O(\bdatw[14]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_29 
       (.I0(gr25[14]),
        .I1(gr5_bus1__0_34),
        .I2(gr26[14]),
        .I3(gr6_bus1__0_35),
        .O(\bdatw[14]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_30 
       (.I0(gr21[14]),
        .I1(gr1_bus1__0_36),
        .I2(gr22[14]),
        .I3(gr2_bus1__0_37),
        .O(\bdatw[14]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_31 
       (.I0(gr05[14]),
        .I1(gr5_bus1__0_20),
        .I2(gr06[14]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[14]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_32 
       (.I0(gr07[14]),
        .I1(gr7_bus1__0_22),
        .I2(gr00[14]),
        .I3(gr0_bus1__0_23),
        .O(\bdatw[14]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_33 
       (.I0(gr01[14]),
        .I1(gr1_bus1__0_16),
        .I2(gr02[14]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[14]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_34 
       (.I0(gr03[14]),
        .I1(gr3_bus1__0_18),
        .I2(gr04[14]),
        .I3(gr4_bus1__0_19),
        .O(\bdatw[14]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_100 
       (.I0(gr07[7]),
        .I1(gr7_bus1__0_22),
        .I2(gr00[7]),
        .I3(gr0_bus1__0_23),
        .O(\bdatw[15]_INST_0_i_100_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_101 
       (.I0(gr01[7]),
        .I1(gr1_bus1__0_16),
        .I2(gr02[7]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[15]_INST_0_i_101_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_102 
       (.I0(gr03[7]),
        .I1(gr3_bus1__0_18),
        .I2(gr04[7]),
        .I3(gr4_bus1__0_19),
        .O(\bdatw[15]_INST_0_i_102_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_23 
       (.I0(\bdatw[15]_INST_0_i_55_n_0 ),
        .I1(\bdatw[15]_INST_0_i_56_n_0 ),
        .I2(gr27[15]),
        .I3(gr7_bus1__0_14),
        .I4(gr20[15]),
        .I5(gr0_bus1__0_15),
        .O(\grn_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_28 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(gr27[7]),
        .I3(gr7_bus1__0_14),
        .I4(gr20[7]),
        .I5(gr0_bus1__0_15),
        .O(\grn_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[15]_INST_0_i_55 
       (.I0(\bdatw[15]_INST_0_i_83_n_0 ),
        .I1(gr23[15]),
        .I2(gr3_bus1__0_32),
        .I3(gr24[15]),
        .I4(gr4_bus1__0_33),
        .I5(\bdatw[15]_INST_0_i_85_n_0 ),
        .O(\bdatw[15]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_56 
       (.I0(out[10]),
        .I1(\bdatw[15]_INST_0_i_28_0 ),
        .I2(\bdatw[15]_INST_0_i_87_n_0 ),
        .I3(\bdatw[15]_INST_0_i_88_n_0 ),
        .I4(\bdatw[15]_INST_0_i_89_n_0 ),
        .I5(\bdatw[15]_INST_0_i_90_n_0 ),
        .O(\bdatw[15]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[15]_INST_0_i_61 
       (.I0(\bdatw[15]_INST_0_i_97_n_0 ),
        .I1(gr23[7]),
        .I2(gr3_bus1__0_32),
        .I3(gr24[7]),
        .I4(gr4_bus1__0_33),
        .I5(\bdatw[15]_INST_0_i_98_n_0 ),
        .O(\bdatw[15]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_62 
       (.I0(out[2]),
        .I1(\bdatw[15]_INST_0_i_28_0 ),
        .I2(\bdatw[15]_INST_0_i_99_n_0 ),
        .I3(\bdatw[15]_INST_0_i_100_n_0 ),
        .I4(\bdatw[15]_INST_0_i_101_n_0 ),
        .I5(\bdatw[15]_INST_0_i_102_n_0 ),
        .O(\bdatw[15]_INST_0_i_62_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_83 
       (.I0(gr25[15]),
        .I1(gr5_bus1__0_34),
        .I2(gr26[15]),
        .I3(gr6_bus1__0_35),
        .O(\bdatw[15]_INST_0_i_83_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_85 
       (.I0(gr21[15]),
        .I1(gr1_bus1__0_36),
        .I2(gr22[15]),
        .I3(gr2_bus1__0_37),
        .O(\bdatw[15]_INST_0_i_85_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_87 
       (.I0(gr05[15]),
        .I1(gr5_bus1__0_20),
        .I2(gr06[15]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[15]_INST_0_i_87_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_88 
       (.I0(gr07[15]),
        .I1(gr7_bus1__0_22),
        .I2(gr00[15]),
        .I3(gr0_bus1__0_23),
        .O(\bdatw[15]_INST_0_i_88_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_89 
       (.I0(gr01[15]),
        .I1(gr1_bus1__0_16),
        .I2(gr02[15]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[15]_INST_0_i_89_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_90 
       (.I0(gr03[15]),
        .I1(gr3_bus1__0_18),
        .I2(gr04[15]),
        .I3(gr4_bus1__0_19),
        .O(\bdatw[15]_INST_0_i_90_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_97 
       (.I0(gr25[7]),
        .I1(gr5_bus1__0_34),
        .I2(gr26[7]),
        .I3(gr6_bus1__0_35),
        .O(\bdatw[15]_INST_0_i_97_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_98 
       (.I0(gr21[7]),
        .I1(gr1_bus1__0_36),
        .I2(gr22[7]),
        .I3(gr2_bus1__0_37),
        .O(\bdatw[15]_INST_0_i_98_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_99 
       (.I0(gr05[7]),
        .I1(gr5_bus1__0_20),
        .I2(gr06[7]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[15]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[8]_INST_0_i_13 
       (.I0(\bdatw[8]_INST_0_i_30_n_0 ),
        .I1(\bdatw[8]_INST_0_i_31_n_0 ),
        .I2(gr27[8]),
        .I3(gr7_bus1__0_14),
        .I4(gr20[8]),
        .I5(gr0_bus1__0_15),
        .O(\grn_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[8]_INST_0_i_30 
       (.I0(\bdatw[8]_INST_0_i_47_n_0 ),
        .I1(gr23[8]),
        .I2(gr3_bus1__0_32),
        .I3(gr24[8]),
        .I4(gr4_bus1__0_33),
        .I5(\bdatw[8]_INST_0_i_48_n_0 ),
        .O(\bdatw[8]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[8]_INST_0_i_31 
       (.I0(out[3]),
        .I1(\bdatw[15]_INST_0_i_28_0 ),
        .I2(\bdatw[8]_INST_0_i_49_n_0 ),
        .I3(\bdatw[8]_INST_0_i_50_n_0 ),
        .I4(\bdatw[8]_INST_0_i_51_n_0 ),
        .I5(\bdatw[8]_INST_0_i_52_n_0 ),
        .O(\bdatw[8]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_47 
       (.I0(gr25[8]),
        .I1(gr5_bus1__0_34),
        .I2(gr26[8]),
        .I3(gr6_bus1__0_35),
        .O(\bdatw[8]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_48 
       (.I0(gr21[8]),
        .I1(gr1_bus1__0_36),
        .I2(gr22[8]),
        .I3(gr2_bus1__0_37),
        .O(\bdatw[8]_INST_0_i_48_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_49 
       (.I0(gr05[8]),
        .I1(gr5_bus1__0_20),
        .I2(gr06[8]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[8]_INST_0_i_49_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_50 
       (.I0(gr07[8]),
        .I1(gr7_bus1__0_22),
        .I2(gr00[8]),
        .I3(gr0_bus1__0_23),
        .O(\bdatw[8]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_51 
       (.I0(gr01[8]),
        .I1(gr1_bus1__0_16),
        .I2(gr02[8]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[8]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_52 
       (.I0(gr03[8]),
        .I1(gr3_bus1__0_18),
        .I2(gr04[8]),
        .I3(gr4_bus1__0_19),
        .O(\bdatw[8]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[9]_INST_0_i_14 
       (.I0(\bdatw[9]_INST_0_i_30_n_0 ),
        .I1(\bdatw[9]_INST_0_i_31_n_0 ),
        .I2(gr27[9]),
        .I3(gr7_bus1__0_14),
        .I4(gr20[9]),
        .I5(gr0_bus1__0_15),
        .O(\grn_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[9]_INST_0_i_30 
       (.I0(\bdatw[9]_INST_0_i_47_n_0 ),
        .I1(gr23[9]),
        .I2(gr3_bus1__0_32),
        .I3(gr24[9]),
        .I4(gr4_bus1__0_33),
        .I5(\bdatw[9]_INST_0_i_48_n_0 ),
        .O(\bdatw[9]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[9]_INST_0_i_31 
       (.I0(out[4]),
        .I1(\bdatw[15]_INST_0_i_28_0 ),
        .I2(\bdatw[9]_INST_0_i_49_n_0 ),
        .I3(\bdatw[9]_INST_0_i_50_n_0 ),
        .I4(\bdatw[9]_INST_0_i_51_n_0 ),
        .I5(\bdatw[9]_INST_0_i_52_n_0 ),
        .O(\bdatw[9]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_47 
       (.I0(gr25[9]),
        .I1(gr5_bus1__0_34),
        .I2(gr26[9]),
        .I3(gr6_bus1__0_35),
        .O(\bdatw[9]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_48 
       (.I0(gr21[9]),
        .I1(gr1_bus1__0_36),
        .I2(gr22[9]),
        .I3(gr2_bus1__0_37),
        .O(\bdatw[9]_INST_0_i_48_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_49 
       (.I0(gr05[9]),
        .I1(gr5_bus1__0_20),
        .I2(gr06[9]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[9]_INST_0_i_49_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_50 
       (.I0(gr07[9]),
        .I1(gr7_bus1__0_22),
        .I2(gr00[9]),
        .I3(gr0_bus1__0_23),
        .O(\bdatw[9]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_51 
       (.I0(gr01[9]),
        .I1(gr1_bus1__0_16),
        .I2(gr02[9]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[9]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_52 
       (.I0(gr03[9]),
        .I1(gr3_bus1__0_18),
        .I2(gr04[9]),
        .I3(gr4_bus1__0_19),
        .O(\bdatw[9]_INST_0_i_52_n_0 ));
  mcvm_rgf_grn grn00
       (.Q(gr00),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_1 ),
        .\grn_reg[15]_1 (\grn_reg[15]_2 ));
  mcvm_rgf_grn_1 grn01
       (.Q(gr01),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_3 ),
        .\grn_reg[15]_1 (\grn_reg[15]_2 ));
  mcvm_rgf_grn_2 grn02
       (.Q(gr02),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_4 ),
        .\grn_reg[15]_1 (\grn_reg[15]_2 ));
  mcvm_rgf_grn_3 grn03
       (.Q(gr03),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_5 ),
        .\grn_reg[15]_1 (\grn_reg[15]_2 ));
  mcvm_rgf_grn_4 grn04
       (.Q(gr04),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_6 ),
        .\grn_reg[15]_1 (\grn_reg[15]_2 ));
  mcvm_rgf_grn_5 grn05
       (.Q(gr05),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_7 ),
        .\grn_reg[15]_1 (\grn_reg[15]_2 ));
  mcvm_rgf_grn_6 grn06
       (.Q(gr06),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_8 ),
        .\grn_reg[15]_1 (\grn_reg[15]_2 ));
  mcvm_rgf_grn_7 grn07
       (.Q(gr07),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_9 ),
        .\grn_reg[15]_1 (\grn_reg[15]_2 ));
  mcvm_rgf_grn_8 grn20
       (.Q(gr20),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_10 ),
        .\grn_reg[15]_1 (\grn_reg[15]_2 ));
  mcvm_rgf_grn_9 grn21
       (.Q(gr21),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_11 ),
        .\grn_reg[15]_1 (\grn_reg[15]_2 ));
  mcvm_rgf_grn_10 grn22
       (.Q(gr22),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_12 ),
        .\grn_reg[15]_1 (\grn_reg[15]_2 ));
  mcvm_rgf_grn_11 grn23
       (.Q(gr23),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_13 ),
        .\grn_reg[15]_1 (\grn_reg[15]_2 ));
  mcvm_rgf_grn_12 grn24
       (.Q(gr24),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_14 ),
        .\grn_reg[15]_1 (\grn_reg[15]_2 ));
  mcvm_rgf_grn_13 grn25
       (.Q(gr25),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_15 ),
        .\grn_reg[15]_1 (\grn_reg[15]_2 ));
  mcvm_rgf_grn_14 grn26
       (.Q(gr26),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_16 ),
        .\grn_reg[15]_1 (\grn_reg[15]_2 ));
  mcvm_rgf_grn_15 grn27
       (.Q(gr27),
        .SR(SR),
        .\abus_o[10] (\abus_o[10] ),
        .\abus_o[10]_0 (\abus_o[10]_0 ),
        .\abus_o[10]_1 (\abus_o[10]_1 ),
        .\abus_o[10]_2 (\abus_o[10]_2 ),
        .\abus_o[15] (\abus_o[15] ),
        .\abus_o[15]_0 (\abus_o[15]_0 ),
        .\abus_o[15]_1 (\abus_o[15]_1 ),
        .\abus_o[15]_2 (\abus_o[15]_2 ),
        .\abus_o[1] (\abus_o[1] ),
        .\abus_o[1]_0 (\abus_o[1]_0 ),
        .\abus_o[1]_1 (\abus_o[1]_1 ),
        .\abus_o[1]_2 (\abus_o[1]_2 ),
        .\abus_o[2] (\abus_o[2] ),
        .\abus_o[2]_0 (\abus_o[2]_0 ),
        .\abus_o[2]_1 (\abus_o[2]_1 ),
        .\abus_o[2]_2 (\abus_o[2]_2 ),
        .\abus_o[3] (\abus_o[3] ),
        .\abus_o[3]_0 (\abus_o[3]_0 ),
        .\abus_o[3]_1 (\abus_o[3]_1 ),
        .\abus_o[3]_2 (\abus_o[3]_2 ),
        .\abus_o[5] (\abus_o[5] ),
        .\abus_o[5]_0 (\abus_o[5]_0 ),
        .\abus_o[5]_1 (\abus_o[5]_1 ),
        .\abus_o[5]_2 (\abus_o[5]_2 ),
        .\abus_o[6] (\abus_o[6] ),
        .\abus_o[6]_0 (\abus_o[6]_0 ),
        .\abus_o[6]_1 (\abus_o[6]_1 ),
        .\abus_o[6]_2 (\abus_o[6]_2 ),
        .\abus_o[7] (\abus_o[7] ),
        .\abus_o[7]_0 (\abus_o[7]_0 ),
        .\abus_o[7]_1 (\abus_o[7]_1 ),
        .\abus_o[7]_2 (\abus_o[7]_2 ),
        .\abus_o[8] (\abus_o[8] ),
        .\abus_o[8]_0 (\abus_o[8]_0 ),
        .\abus_o[8]_1 (\abus_o[8]_1 ),
        .\abus_o[8]_2 (\abus_o[8]_2 ),
        .\abus_o[9] (\abus_o[9] ),
        .\abus_o[9]_0 (\abus_o[9]_0 ),
        .\abus_o[9]_1 (\abus_o[9]_1 ),
        .\abus_o[9]_2 (\abus_o[9]_2 ),
        .\badr[10]_INST_0_i_1_0 (grn27_n_23),
        .\badr[10]_INST_0_i_1_1 (grn27_n_32),
        .\badr[10]_INST_0_i_1_2 (\badr[10]_INST_0_i_1 ),
        .\badr[11]_INST_0_i_1 (\badr[11]_INST_0_i_1_0 ),
        .\badr[12]_INST_0_i_1 (\badr[12]_INST_0_i_1_0 ),
        .\badr[13]_INST_0_i_1 (\badr[13]_INST_0_i_1_0 ),
        .\badr[14]_INST_0_i_1 (\badr[14]_INST_0_i_1_0 ),
        .\badr[15]_INST_0_i_1_0 (\badr[15]_INST_0_i_1 ),
        .\badr[15]_INST_0_i_1_1 (\badr[15]_INST_0_i_1_0 ),
        .\badr[15]_INST_0_i_1_2 ({gr23[15],gr23[10:5],gr23[3:1]}),
        .\badr[15]_INST_0_i_1_3 ({gr24[15],gr24[10:5],gr24[3:1]}),
        .\badr[15]_INST_0_i_2_0 ({gr20[15],gr20[10:0]}),
        .\badr[15]_INST_0_i_2_1 ({gr01[15],gr01[10:5],gr01[3:1]}),
        .\badr[15]_INST_0_i_2_2 ({gr02[15],gr02[10:5],gr02[3:1]}),
        .\badr[15]_INST_0_i_2_3 ({gr03[15],gr03[10:5],gr03[3:1]}),
        .\badr[15]_INST_0_i_2_4 ({gr04[15],gr04[10:5],gr04[3:1]}),
        .\badr[15]_INST_0_i_2_5 ({gr05[15],gr05[10:5],gr05[3:1]}),
        .\badr[15]_INST_0_i_2_6 ({gr06[15],gr06[10:5],gr06[3:1]}),
        .\badr[15]_INST_0_i_2_7 ({gr07[15],gr07[10:5],gr07[3:1]}),
        .\badr[15]_INST_0_i_2_8 ({gr00[15],gr00[10:5],gr00[3:1]}),
        .\badr[15]_INST_0_i_3_0 ({gr25[15],gr25[10:5],gr25[3:1]}),
        .\badr[15]_INST_0_i_3_1 ({gr26[15],gr26[10:5],gr26[3:1]}),
        .\badr[15]_INST_0_i_3_2 ({gr21[15],gr21[10:0]}),
        .\badr[15]_INST_0_i_3_3 ({gr22[15],gr22[10:0]}),
        .\badr[1]_INST_0_i_1_0 (\badr[1]_INST_0_i_1 ),
        .\badr[1]_INST_0_i_1_1 (\badr[1]_INST_0_i_1_0 ),
        .\badr[1]_INST_0_i_1_2 (\badr[1]_INST_0_i_1_1 ),
        .\badr[2]_INST_0_i_1_0 (\badr[2]_INST_0_i_1 ),
        .\badr[2]_INST_0_i_1_1 (\badr[2]_INST_0_i_1_0 ),
        .\badr[3]_INST_0_i_1_0 (\badr[3]_INST_0_i_1 ),
        .\badr[3]_INST_0_i_1_1 (\badr[3]_INST_0_i_1_0 ),
        .\badr[4]_INST_0_i_1 (\badr[4]_INST_0_i_1_0 ),
        .\badr[5]_INST_0_i_1_0 (grn27_n_44),
        .\badr[5]_INST_0_i_1_1 (\badr[5]_INST_0_i_1 ),
        .\badr[5]_INST_0_i_1_2 (\badr[5]_INST_0_i_1_0 ),
        .\badr[6]_INST_0_i_1_0 (grn27_n_48),
        .\badr[6]_INST_0_i_1_1 (\badr[6]_INST_0_i_1 ),
        .\badr[7]_INST_0_i_1_0 (grn27_n_43),
        .\badr[7]_INST_0_i_1_1 (\badr[7]_INST_0_i_1_0 ),
        .\badr[8]_INST_0_i_1_0 (grn27_n_47),
        .\badr[8]_INST_0_i_1_1 (\badr[8]_INST_0_i_1 ),
        .\badr[9]_INST_0_i_1_0 (grn27_n_37),
        .\badr[9]_INST_0_i_1_1 (\badr[9]_INST_0_i_1_0 ),
        .\bdatw[12]_INST_0_i_2 (\bdatw[12]_INST_0_i_2 ),
        .\bdatw[14]_INST_0_i_15_0 (\bdatw[15]_INST_0_i_28_0 ),
        .\bdatw[8]_INST_0_i_2 (\bdatw[8]_INST_0_i_2_4 ),
        .\bdatw[8]_INST_0_i_2_0 (\bdatw[8]_INST_0_i_2_7 ),
        .\bdatw[8]_INST_0_i_2_1 (\bdatw[8]_INST_0_i_2_8 ),
        .\bdatw[8]_INST_0_i_2_2 (\bdatw[8]_INST_0_i_2_0 ),
        .\bdatw[8]_INST_0_i_2_3 (\bdatw[8]_INST_0_i_2_3 ),
        .\bdatw[8]_INST_0_i_2_4 (\bdatw[8]_INST_0_i_2_11 ),
        .\bdatw[8]_INST_0_i_2_5 (\bdatw[8]_INST_0_i_2_13 ),
        .\bdatw[8]_INST_0_i_2_6 (\bdatw[8]_INST_0_i_2_2 ),
        .\bdatw[8]_INST_0_i_2_7 (\bdatw[8]_INST_0_i_2_14 ),
        .\bdatw[8]_INST_0_i_2_8 (\bdatw[8]_INST_0_i_2_18 ),
        .\bdatw[8]_INST_0_i_2_9 (\bdatw[8]_INST_0_i_2_1 ),
        .clk(clk),
        .gr0_bus1__0_15(gr0_bus1__0_15),
        .gr0_bus1__0_23(gr0_bus1__0_23),
        .gr0_bus1__0_31(gr0_bus1__0_31),
        .gr0_bus1__0_43(gr0_bus1__0_43),
        .gr1_bus1__0_16(gr1_bus1__0_16),
        .gr1_bus1__0_24(gr1_bus1__0_24),
        .gr1_bus1__0_36(gr1_bus1__0_36),
        .gr1_bus1__0_40(gr1_bus1__0_40),
        .gr2_bus1__0_17(gr2_bus1__0_17),
        .gr2_bus1__0_25(gr2_bus1__0_25),
        .gr2_bus1__0_37(gr2_bus1__0_37),
        .gr2_bus1__0_41(gr2_bus1__0_41),
        .gr3_bus1__0(gr3_bus1__0),
        .gr3_bus1__0_18(gr3_bus1__0_18),
        .gr3_bus1__0_26(gr3_bus1__0_26),
        .gr3_bus1__0_32(gr3_bus1__0_32),
        .gr4_bus1__0(gr4_bus1__0),
        .gr4_bus1__0_19(gr4_bus1__0_19),
        .gr4_bus1__0_27(gr4_bus1__0_27),
        .gr4_bus1__0_33(gr4_bus1__0_33),
        .gr5_bus1__0_20(gr5_bus1__0_20),
        .gr5_bus1__0_28(gr5_bus1__0_28),
        .gr5_bus1__0_34(gr5_bus1__0_34),
        .gr5_bus1__0_38(gr5_bus1__0_38),
        .gr6_bus1__0_21(gr6_bus1__0_21),
        .gr6_bus1__0_29(gr6_bus1__0_29),
        .gr6_bus1__0_35(gr6_bus1__0_35),
        .gr6_bus1__0_39(gr6_bus1__0_39),
        .gr7_bus1__0_14(gr7_bus1__0_14),
        .gr7_bus1__0_22(gr7_bus1__0_22),
        .gr7_bus1__0_30(gr7_bus1__0_30),
        .gr7_bus1__0_42(gr7_bus1__0_42),
        .\grn_reg[0]_0 (\grn_reg[0]_0 ),
        .\grn_reg[0]_1 (\grn_reg[0]_1 ),
        .\grn_reg[10]_0 (\grn_reg[10] ),
        .\grn_reg[15]_0 (\grn_reg[15] ),
        .\grn_reg[15]_1 (\grn_reg[15]_17 ),
        .\grn_reg[15]_2 (\grn_reg[15]_2 ),
        .\grn_reg[1]_0 (\grn_reg[1] ),
        .\grn_reg[1]_1 (\grn_reg[1]_0 ),
        .\grn_reg[1]_2 (\grn_reg[1]_1 ),
        .\grn_reg[2]_0 (\grn_reg[2] ),
        .\grn_reg[2]_1 (\grn_reg[2]_0 ),
        .\grn_reg[2]_2 (\grn_reg[2]_1 ),
        .\grn_reg[3]_0 (\grn_reg[3] ),
        .\grn_reg[3]_1 (\grn_reg[3]_0 ),
        .\grn_reg[3]_2 (\grn_reg[3]_1 ),
        .\grn_reg[4]_0 (\grn_reg[4]_12 ),
        .\grn_reg[4]_1 (\grn_reg[4]_13 ),
        .\grn_reg[5]_0 (\grn_reg[5] ),
        .\grn_reg[5]_1 (\grn_reg[5]_0 ),
        .\grn_reg[6]_0 (\grn_reg[6] ),
        .\grn_reg[6]_1 (\grn_reg[6]_0 ),
        .\grn_reg[7]_0 (\grn_reg[7] ),
        .\grn_reg[8]_0 (\grn_reg[8] ),
        .\grn_reg[9]_0 (\grn_reg[9] ),
        .\iv[10]_i_23 (\iv[10]_i_23 ),
        .\iv[10]_i_23_0 (\iv[13]_i_2 ),
        .\iv[10]_i_30 (\iv[10]_i_30 ),
        .\iv[10]_i_9 (\iv[13]_i_27_n_0 ),
        .\iv[10]_i_9_0 (\iv[10]_i_9 ),
        .\iv[10]_i_9_1 (\iv[0]_i_8 ),
        .\iv[10]_i_9_2 (\iv[10]_i_9_0 ),
        .\iv[11]_i_25 (\iv[11]_i_25 ),
        .\iv[11]_i_7 (\iv[13]_i_6 ),
        .\iv[11]_i_8 (\iv[11]_i_8 ),
        .\iv[11]_i_8_0 (\badr[9]_INST_0_i_1 ),
        .\iv[11]_i_8_1 (\iv[11]_i_8_0 ),
        .\iv[12]_i_7 (\tr_reg[2]_1 ),
        .\iv[13]_i_23_0 (\iv[13]_i_23_0 ),
        .\iv[13]_i_25 (\iv[13]_i_25_0 ),
        .\iv[13]_i_31_0 (\iv[13]_i_31 ),
        .\iv[13]_i_33 (\iv[13]_i_33_0 ),
        .\iv[13]_i_36_0 (\iv[13]_i_36 ),
        .\iv[13]_i_36_1 (\iv[13]_i_36_0 ),
        .\iv[14]_i_29 (\iv[14]_i_29 ),
        .\iv[14]_i_39_0 (\iv[14]_i_39 ),
        .\iv[14]_i_39_1 (\iv[14]_i_39_0 ),
        .\iv[14]_i_4 (\bdatw[8]_INST_0_i_2 ),
        .\iv[14]_i_42_0 (\iv[14]_i_42 ),
        .\iv[14]_i_4_0 (\iv[14]_i_36_n_0 ),
        .\iv[14]_i_8 (\iv[14]_i_8 ),
        .\iv[1]_i_6 (\iv[5]_i_5 ),
        .\iv[1]_i_6_0 (\sr[7]_i_9 ),
        .\iv[2]_i_23 (\iv[2]_i_23_2 ),
        .\iv[2]_i_23_0 (\iv[2]_i_23_3 ),
        .\iv[2]_i_8 (\iv[2]_i_8 ),
        .\iv[2]_i_8_0 (\iv[2]_i_8_0 ),
        .\iv[2]_i_8_1 (\iv[2]_i_8_2 ),
        .\iv[3]_i_2 (\iv[5]_i_2 ),
        .\iv[3]_i_6 (out[1:0]),
        .\iv[3]_i_6_0 (\iv[13]_i_18_0 ),
        .\iv[3]_i_6_1 (\grn_reg[13] ),
        .\iv[3]_i_6_2 (\grn_reg[12] ),
        .\iv[3]_i_6_3 (\grn_reg[11] ),
        .\iv[3]_i_6_4 (\grn_reg[0] ),
        .\iv[6]_i_2 (\tr_reg[2] ),
        .\iv[6]_i_6 (\tr_reg[2]_0 ),
        .\iv[7]_i_9 (\iv[7]_i_9 ),
        .\iv[7]_i_9_0 (\badr[7]_INST_0_i_1 ),
        .\iv[8]_i_10 (\grn_reg[14] ),
        .\iv[8]_i_7 (\grn_reg[4]_11 ),
        .\iv[9]_i_2 (\iv[9]_i_2 ),
        .\iv[9]_i_2_0 (\iv[9]_i_2_0 ),
        .\iv[9]_i_4 (\iv[13]_i_2_0 ),
        .\iv[9]_i_5_0 (\iv[13]_i_34_n_0 ),
        .\iv[9]_i_5_1 (\iv[13]_i_32_n_0 ),
        .\iv[9]_i_5_2 (\iv[13]_i_33_n_0 ),
        .\iv[9]_i_6 (\iv[9]_i_6 ),
        .out({gr27[15],gr27[10:0]}),
        .\sr_reg[6] (\sr_reg[6]_1 ),
        .\sr_reg[6]_0 (\sr_reg[6]_2 ),
        .\sr_reg[6]_1 (\sr_reg[6]_3 ),
        .\sr_reg[6]_10 (\sr_reg[6]_16 ),
        .\sr_reg[6]_11 (\sr_reg[6]_17 ),
        .\sr_reg[6]_12 (\sr_reg[6]_18 ),
        .\sr_reg[6]_13 (\sr_reg[6]_19 ),
        .\sr_reg[6]_2 (\sr_reg[6]_4 ),
        .\sr_reg[6]_3 (\sr_reg[6]_5 ),
        .\sr_reg[6]_4 (\sr_reg[6]_7 ),
        .\sr_reg[6]_5 (\sr_reg[6]_8 ),
        .\sr_reg[6]_6 (\sr_reg[6]_9 ),
        .\sr_reg[6]_7 (\sr_reg[6]_12 ),
        .\sr_reg[6]_8 (\sr_reg[6]_13 ),
        .\sr_reg[6]_9 (\sr_reg[6]_15 ),
        .\stat_reg[2] (\stat_reg[2]_1 ),
        .\stat_reg[2]_0 (\stat_reg[2]_4 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[0]_i_13 
       (.I0(\grn_reg[7] ),
        .I1(\grn_reg[6] ),
        .I2(\grn_reg[5] ),
        .I3(\grn_reg[4]_11 ),
        .I4(\iv[5]_i_5 ),
        .I5(\iv[13]_i_18_0 ),
        .O(\bdatw[8]_INST_0_i_2_9 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[0]_i_14 
       (.I0(\grn_reg[3] ),
        .I1(\grn_reg[2] ),
        .I2(\grn_reg[1] ),
        .I3(\grn_reg[0] ),
        .I4(\iv[5]_i_5 ),
        .I5(\iv[13]_i_18_0 ),
        .O(\bdatw[8]_INST_0_i_2_5 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[0]_i_16 
       (.I0(\iv[2]_i_22_n_0 ),
        .I1(\iv[0]_i_8 ),
        .I2(\tr_reg[2]_1 ),
        .I3(\iv[2]_i_24_n_0 ),
        .I4(\iv[5]_i_5 ),
        .I5(\iv[13]_i_27_n_0 ),
        .O(\sr_reg[6]_11 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[10]_i_12 
       (.I0(\grn_reg[2] ),
        .I1(\iv[13]_i_2_0 ),
        .O(\stat_reg[2]_5 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[10]_i_14 
       (.I0(\grn_reg[13] ),
        .I1(\grn_reg[12] ),
        .I2(\grn_reg[11] ),
        .I3(\grn_reg[10] ),
        .I4(\iv[5]_i_5 ),
        .I5(\iv[13]_i_18_0 ),
        .O(\bdatw[8]_INST_0_i_2_17 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[11]_i_10 
       (.I0(\grn_reg[3] ),
        .I1(\iv[13]_i_2_0 ),
        .O(\stat_reg[2]_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[12]_i_10 
       (.I0(\grn_reg[4]_11 ),
        .I1(\iv[13]_i_2_0 ),
        .O(\stat_reg[2]_6 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[13]_i_12 
       (.I0(\grn_reg[5] ),
        .I1(\iv[13]_i_2_0 ),
        .O(\stat_reg[2]_7 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[13]_i_15 
       (.I0(\badr[7]_INST_0_i_1 ),
        .I1(\badr[9]_INST_0_i_1 ),
        .I2(\tr_reg[2]_1 ),
        .I3(\iv[2]_i_24_n_0 ),
        .I4(\iv[5]_i_5 ),
        .I5(\iv[13]_i_27_n_0 ),
        .O(\iv[13]_i_27_0 ));
  LUT6 #(
    .INIT(64'h004F0044FF4F0044)) 
    \iv[13]_i_16 
       (.I0(\badr[3]_INST_0_i_1 ),
        .I1(\iv[5]_i_5 ),
        .I2(\badr[5]_INST_0_i_1 ),
        .I3(\tr_reg[2]_1 ),
        .I4(\iv[13]_i_6 ),
        .I5(\badr[1]_INST_0_i_1_0 ),
        .O(\iv[13]_i_23 ));
  LUT6 #(
    .INIT(64'hFFF0F5F3FFFFF5F3)) 
    \iv[13]_i_17 
       (.I0(\grn_reg[14] ),
        .I1(\grn_reg[13] ),
        .I2(\tr_reg[2]_1 ),
        .I3(\iv[13]_i_18_0 ),
        .I4(\iv[5]_i_5 ),
        .I5(\grn_reg[15] ),
        .O(\iv[13]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \iv[13]_i_18 
       (.I0(grn27_n_32),
        .I1(grn27_n_47),
        .I2(\tr_reg[2]_1 ),
        .I3(grn27_n_48),
        .I4(\iv[5]_i_5 ),
        .I5(\iv[13]_i_32_n_0 ),
        .O(\iv[13]_i_32_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[13]_i_19 
       (.I0(\iv[13]_i_33_n_0 ),
        .I1(\iv[13]_i_34_n_0 ),
        .I2(\tr_reg[2]_1 ),
        .I3(\sr[7]_i_9 ),
        .I4(\iv[5]_i_5 ),
        .I5(\badr[13]_INST_0_i_1_0 ),
        .O(\sr_reg[6]_6 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_25 
       (.I0(\grn_reg[6] ),
        .I1(\iv[13]_i_18_0 ),
        .I2(\grn_reg[7] ),
        .O(\badr[7]_INST_0_i_1 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_26 
       (.I0(\grn_reg[8] ),
        .I1(\iv[13]_i_18_0 ),
        .I2(\grn_reg[9] ),
        .O(\badr[9]_INST_0_i_1 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_27 
       (.I0(\grn_reg[12] ),
        .I1(\iv[13]_i_18_0 ),
        .I2(\grn_reg[13] ),
        .O(\iv[13]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_32 
       (.I0(\grn_reg[5] ),
        .I1(\iv[13]_i_18_0 ),
        .I2(\grn_reg[4]_11 ),
        .O(\iv[13]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_33 
       (.I0(\grn_reg[3] ),
        .I1(\iv[13]_i_18_0 ),
        .I2(\grn_reg[2] ),
        .O(\iv[13]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_34 
       (.I0(\grn_reg[1] ),
        .I1(\iv[13]_i_18_0 ),
        .I2(\grn_reg[0] ),
        .O(\iv[13]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0303F0F0F0F0F)) 
    \iv[13]_i_7 
       (.I0(\iv[13]_i_23 ),
        .I1(\iv[13]_i_27_0 ),
        .I2(\iv[13]_i_2 ),
        .I3(\iv[13]_i_17_n_0 ),
        .I4(\tr_reg[2] ),
        .I5(\iv[13]_i_2_0 ),
        .O(\stat_reg[2] ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_21 
       (.I0(\grn_reg[6] ),
        .I1(\iv[13]_i_2_0 ),
        .O(\stat_reg[2]_8 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[14]_i_27 
       (.I0(\grn_reg[12] ),
        .I1(\grn_reg[11] ),
        .I2(\grn_reg[10] ),
        .I3(\grn_reg[9] ),
        .I4(\iv[5]_i_5 ),
        .I5(\iv[13]_i_18_0 ),
        .O(\bdatw[8]_INST_0_i_2_15 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \iv[14]_i_35 
       (.I0(\grn_reg[14] ),
        .I1(\grn_reg[13] ),
        .I2(\grn_reg[12] ),
        .I3(\grn_reg[11] ),
        .I4(\iv[5]_i_5 ),
        .I5(\iv[13]_i_18_0 ),
        .O(\bdatw[8]_INST_0_i_2 ));
  LUT6 #(
    .INIT(64'hCA00FFFFCA00CA00)) 
    \iv[14]_i_36 
       (.I0(\grn_reg[8] ),
        .I1(\grn_reg[7] ),
        .I2(\iv[13]_i_18_0 ),
        .I3(\iv[5]_i_5 ),
        .I4(grn27_n_23),
        .I5(\iv[13]_i_6 ),
        .O(\iv[14]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'hFF550F33)) 
    \iv[1]_i_14 
       (.I0(\grn_reg[14] ),
        .I1(\grn_reg[13] ),
        .I2(\grn_reg[15] ),
        .I3(\iv[5]_i_5 ),
        .I4(\iv[13]_i_18_0 ),
        .O(\bdatw[8]_INST_0_i_2_19 ));
  LUT6 #(
    .INIT(64'hF7F7F7F4F4F4F7F4)) 
    \iv[1]_i_8 
       (.I0(\iv[10]_i_30 ),
        .I1(\tr_reg[2] ),
        .I2(\tr_reg[2]_0 ),
        .I3(\sr_reg[6]_0 ),
        .I4(\tr_reg[2]_1 ),
        .I5(\bdatw[8]_INST_0_i_2 ),
        .O(\sr_reg[6] ));
  LUT6 #(
    .INIT(64'h35FF000035FF35FF)) 
    \iv[2]_i_12 
       (.I0(\grn_reg[9] ),
        .I1(\grn_reg[8] ),
        .I2(\iv[13]_i_18_0 ),
        .I3(\iv[5]_i_5 ),
        .I4(\iv[2]_i_24_n_0 ),
        .I5(\iv[13]_i_6 ),
        .O(\iv[2]_i_23_0 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \iv[2]_i_13 
       (.I0(\grn_reg[7] ),
        .I1(\grn_reg[6] ),
        .I2(\grn_reg[5] ),
        .I3(\grn_reg[4]_11 ),
        .I4(\iv[5]_i_5 ),
        .I5(\iv[13]_i_18_0 ),
        .O(\bdatw[8]_INST_0_i_2_10 ));
  LUT6 #(
    .INIT(64'h0000000FFFACFFAC)) 
    \iv[2]_i_2 
       (.I0(\iv[2]_i_23 ),
        .I1(\sr_reg[6]_13 ),
        .I2(\tr_reg[2]_1 ),
        .I3(\tr_reg[2] ),
        .I4(\bdatw[12]_INST_0_i_2 ),
        .I5(\tr_reg[2]_0 ),
        .O(\sr_reg[6]_14 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[2]_i_22 
       (.I0(\grn_reg[14] ),
        .I1(\iv[13]_i_18_0 ),
        .I2(\grn_reg[15] ),
        .O(\iv[2]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[2]_i_24 
       (.I0(\grn_reg[10] ),
        .I1(\iv[13]_i_18_0 ),
        .I2(\grn_reg[11] ),
        .O(\iv[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[2]_i_25 
       (.I0(\grn_reg[9] ),
        .I1(\grn_reg[8] ),
        .I2(\grn_reg[7] ),
        .I3(\grn_reg[6] ),
        .I4(\iv[5]_i_5 ),
        .I5(\iv[13]_i_18_0 ),
        .O(\bdatw[8]_INST_0_i_2_12 ));
  LUT6 #(
    .INIT(64'hCA00FFFFCA00CA00)) 
    \iv[2]_i_6 
       (.I0(\grn_reg[13] ),
        .I1(\grn_reg[12] ),
        .I2(\iv[13]_i_18_0 ),
        .I3(\iv[5]_i_5 ),
        .I4(\iv[2]_i_22_n_0 ),
        .I5(\iv[13]_i_6 ),
        .O(\iv[2]_i_23 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[5]_i_12 
       (.I0(\badr[11]_INST_0_i_1_0 ),
        .I1(grn27_n_37),
        .I2(\tr_reg[2]_1 ),
        .I3(grn27_n_43),
        .I4(\iv[5]_i_5 ),
        .I5(grn27_n_44),
        .O(\iv[5]_i_15 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[5]_i_13 
       (.I0(\grn_reg[4]_11 ),
        .I1(\tr_reg[2]_0 ),
        .O(\iv[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB080B080)) 
    \iv[5]_i_6 
       (.I0(\iv[13]_i_17_n_0 ),
        .I1(\tr_reg[2] ),
        .I2(\iv[13]_i_2_0 ),
        .I3(\iv[5]_i_15 ),
        .I4(\iv[5]_i_13_n_0 ),
        .I5(\iv[5]_i_2 ),
        .O(\stat_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h3838080808380838)) 
    \iv[5]_i_8 
       (.I0(\iv[13]_i_23 ),
        .I1(\tr_reg[2]_0 ),
        .I2(\tr_reg[2] ),
        .I3(\bdatw[8]_INST_0_i_2 ),
        .I4(\iv[14]_i_36_n_0 ),
        .I5(\tr_reg[2]_1 ),
        .O(\iv[2]_i_8_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[7]_i_7 
       (.I0(\bdatw[8]_INST_0_i_2_1 ),
        .I1(\tr_reg[2]_1 ),
        .I2(\bdatw[8]_INST_0_i_2_2 ),
        .O(\iv[7]_i_18 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[8]_i_12 
       (.I0(\grn_reg[0] ),
        .I1(\iv[13]_i_2_0 ),
        .O(\stat_reg[2]_2 ));
  LUT5 #(
    .INIT(32'h00FF3535)) 
    \iv[8]_i_19 
       (.I0(\grn_reg[2] ),
        .I1(\grn_reg[1] ),
        .I2(\iv[13]_i_18_0 ),
        .I3(\badr[4]_INST_0_i_1_0 ),
        .I4(\iv[13]_i_6 ),
        .O(\iv[2]_i_23_1 ));
  LUT6 #(
    .INIT(64'h03CF444403CF7777)) 
    \iv[9]_i_18 
       (.I0(\grn_reg[15] ),
        .I1(\iv[13]_i_18_0 ),
        .I2(\grn_reg[1] ),
        .I3(\grn_reg[0] ),
        .I4(\iv[13]_i_6 ),
        .I5(out[1]),
        .O(\sr_reg[6]_0 ));
  LUT4 #(
    .INIT(16'h0F88)) 
    \sr[6]_i_10 
       (.I0(\grn_reg[0] ),
        .I1(\iv[13]_i_18_0 ),
        .I2(\badr[1]_INST_0_i_1 ),
        .I3(\iv[5]_i_5 ),
        .O(\sr[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hC0008888CC0C8888)) 
    \sr[6]_i_5 
       (.I0(\iv[7]_i_18 ),
        .I1(\sr[6]_i_3 ),
        .I2(\tr_reg[2]_1 ),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .I4(\sr[6]_i_3_0 ),
        .I5(\sr[6]_i_10_n_0 ),
        .O(\sr[6]_i_10_0 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \sr[6]_i_6 
       (.I0(\grn_reg[12] ),
        .I1(\grn_reg[11] ),
        .I2(\grn_reg[10] ),
        .I3(\grn_reg[9] ),
        .I4(\iv[5]_i_5 ),
        .I5(\iv[13]_i_18_0 ),
        .O(\bdatw[8]_INST_0_i_2_16 ));
  LUT3 #(
    .INIT(8'h74)) 
    \sr[6]_i_8 
       (.I0(\iv[2]_i_23_1 ),
        .I1(\tr_reg[2]_1 ),
        .I2(\bdatw[8]_INST_0_i_2_3 ),
        .O(\iv[8]_i_20 ));
  LUT4 #(
    .INIT(16'h002E)) 
    \sr[7]_i_12 
       (.I0(\iv[2]_i_23 ),
        .I1(\tr_reg[2]_1 ),
        .I2(\iv[2]_i_23_0 ),
        .I3(\tr_reg[2] ),
        .O(\iv[2]_i_9 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sr[7]_i_16 
       (.I0(\iv[13]_i_32_n_0 ),
        .I1(\iv[13]_i_33_n_0 ),
        .I2(\tr_reg[2]_1 ),
        .I3(\iv[13]_i_34_n_0 ),
        .I4(\iv[5]_i_5 ),
        .I5(\sr[7]_i_9 ),
        .O(\sr_reg[6]_10 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \sr[7]_i_18 
       (.I0(\grn_reg[3] ),
        .I1(\grn_reg[2] ),
        .I2(\grn_reg[1] ),
        .I3(\grn_reg[0] ),
        .I4(\iv[5]_i_5 ),
        .I5(\iv[13]_i_18_0 ),
        .O(\bdatw[8]_INST_0_i_2_6 ));
endmodule

module mcvm_rgf_grn
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_1
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_10
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_11
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_12
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_13
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_14
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_15
   (\grn_reg[1]_0 ,
    \grn_reg[2]_0 ,
    \grn_reg[3]_0 ,
    \grn_reg[5]_0 ,
    \grn_reg[6]_0 ,
    \grn_reg[7]_0 ,
    \grn_reg[8]_0 ,
    \grn_reg[9]_0 ,
    \grn_reg[10]_0 ,
    \grn_reg[15]_0 ,
    \grn_reg[5]_1 ,
    \grn_reg[6]_1 ,
    \grn_reg[0]_0 ,
    \grn_reg[1]_1 ,
    \grn_reg[2]_1 ,
    \grn_reg[3]_1 ,
    \grn_reg[4]_0 ,
    \grn_reg[0]_1 ,
    \grn_reg[1]_2 ,
    \grn_reg[2]_2 ,
    \grn_reg[3]_2 ,
    \grn_reg[4]_1 ,
    \sr_reg[6] ,
    \badr[10]_INST_0_i_1_0 ,
    \sr_reg[6]_0 ,
    \sr_reg[6]_1 ,
    \badr[15]_INST_0_i_1_0 ,
    \sr_reg[6]_2 ,
    \badr[1]_INST_0_i_1_0 ,
    \sr_reg[6]_3 ,
    \iv[14]_i_39_0 ,
    \badr[12]_INST_0_i_1 ,
    \badr[10]_INST_0_i_1_1 ,
    \iv[14]_i_29 ,
    \sr_reg[6]_4 ,
    \iv[13]_i_36_0 ,
    \badr[11]_INST_0_i_1 ,
    \badr[9]_INST_0_i_1_0 ,
    \badr[13]_INST_0_i_1 ,
    \iv[13]_i_36_1 ,
    \sr_reg[6]_5 ,
    \stat_reg[2] ,
    \iv[11]_i_25 ,
    \badr[7]_INST_0_i_1_0 ,
    \badr[5]_INST_0_i_1_0 ,
    \sr_reg[6]_6 ,
    \iv[13]_i_31_0 ,
    \badr[8]_INST_0_i_1_0 ,
    \badr[6]_INST_0_i_1_0 ,
    \iv[13]_i_33 ,
    \iv[2]_i_8 ,
    \badr[5]_INST_0_i_1_1 ,
    \iv[2]_i_8_0 ,
    \sr_reg[6]_7 ,
    \sr_reg[6]_8 ,
    \iv[14]_i_42_0 ,
    \bdatw[12]_INST_0_i_2 ,
    \badr[4]_INST_0_i_1 ,
    \iv[2]_i_8_1 ,
    \iv[13]_i_25 ,
    \badr[1]_INST_0_i_1_1 ,
    \badr[3]_INST_0_i_1_0 ,
    \sr_reg[6]_9 ,
    \badr[2]_INST_0_i_1_0 ,
    \iv[10]_i_30 ,
    \badr[14]_INST_0_i_1 ,
    \iv[2]_i_23 ,
    \iv[14]_i_8 ,
    \stat_reg[2]_0 ,
    \bdatw[8]_INST_0_i_2 ,
    \iv[13]_i_23_0 ,
    \iv[2]_i_23_0 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \bdatw[8]_INST_0_i_2_1 ,
    \bdatw[8]_INST_0_i_2_2 ,
    \bdatw[8]_INST_0_i_2_3 ,
    \bdatw[8]_INST_0_i_2_4 ,
    \bdatw[8]_INST_0_i_2_5 ,
    \bdatw[8]_INST_0_i_2_6 ,
    \bdatw[8]_INST_0_i_2_7 ,
    \iv[14]_i_39_1 ,
    \bdatw[8]_INST_0_i_2_8 ,
    \sr_reg[6]_10 ,
    \bdatw[8]_INST_0_i_2_9 ,
    \sr_reg[6]_11 ,
    \sr_reg[6]_12 ,
    \sr_reg[6]_13 ,
    Q,
    \abus_o[1] ,
    \abus_o[1]_0 ,
    \abus_o[1]_1 ,
    \abus_o[1]_2 ,
    \abus_o[2] ,
    \abus_o[2]_0 ,
    \abus_o[2]_1 ,
    \abus_o[2]_2 ,
    \abus_o[3] ,
    \abus_o[3]_0 ,
    \abus_o[3]_1 ,
    \abus_o[3]_2 ,
    \abus_o[5] ,
    \abus_o[5]_0 ,
    \abus_o[5]_1 ,
    \abus_o[5]_2 ,
    \abus_o[6] ,
    \abus_o[6]_0 ,
    \abus_o[6]_1 ,
    \abus_o[6]_2 ,
    \abus_o[7] ,
    \abus_o[7]_0 ,
    \abus_o[7]_1 ,
    \abus_o[7]_2 ,
    \abus_o[8] ,
    \abus_o[8]_0 ,
    \abus_o[8]_1 ,
    \abus_o[8]_2 ,
    \abus_o[9] ,
    \abus_o[9]_0 ,
    \abus_o[9]_1 ,
    \abus_o[9]_2 ,
    \abus_o[10] ,
    \abus_o[10]_0 ,
    \abus_o[10]_1 ,
    \abus_o[10]_2 ,
    \abus_o[15] ,
    \abus_o[15]_0 ,
    \abus_o[15]_1 ,
    \abus_o[15]_2 ,
    out,
    gr7_bus1__0_14,
    \badr[15]_INST_0_i_2_0 ,
    gr0_bus1__0_15,
    \iv[3]_i_6 ,
    \bdatw[14]_INST_0_i_15_0 ,
    \badr[15]_INST_0_i_2_1 ,
    gr1_bus1__0_16,
    \badr[15]_INST_0_i_2_2 ,
    gr2_bus1__0_17,
    \badr[15]_INST_0_i_2_3 ,
    gr3_bus1__0_18,
    \badr[15]_INST_0_i_2_4 ,
    gr4_bus1__0_19,
    \badr[15]_INST_0_i_2_5 ,
    gr5_bus1__0_20,
    \badr[15]_INST_0_i_2_6 ,
    gr6_bus1__0_21,
    \badr[15]_INST_0_i_2_7 ,
    gr7_bus1__0_22,
    \badr[15]_INST_0_i_2_8 ,
    gr0_bus1__0_23,
    \badr[1]_INST_0_i_1_2 ,
    gr1_bus1__0_24,
    gr2_bus1__0_25,
    \badr[2]_INST_0_i_1_1 ,
    \badr[3]_INST_0_i_1_1 ,
    \badr[5]_INST_0_i_1_2 ,
    \badr[6]_INST_0_i_1_1 ,
    \badr[7]_INST_0_i_1_1 ,
    \badr[8]_INST_0_i_1_1 ,
    \badr[9]_INST_0_i_1_1 ,
    \badr[10]_INST_0_i_1_2 ,
    \badr[15]_INST_0_i_1_1 ,
    gr3_bus1__0_26,
    gr4_bus1__0_27,
    gr5_bus1__0_28,
    gr6_bus1__0_29,
    gr7_bus1__0_30,
    gr0_bus1__0_31,
    \badr[15]_INST_0_i_1_2 ,
    gr3_bus1__0_32,
    \badr[15]_INST_0_i_1_3 ,
    gr4_bus1__0_33,
    \badr[15]_INST_0_i_3_0 ,
    gr5_bus1__0_34,
    \badr[15]_INST_0_i_3_1 ,
    gr6_bus1__0_35,
    \badr[15]_INST_0_i_3_2 ,
    gr1_bus1__0_36,
    \badr[15]_INST_0_i_3_3 ,
    gr2_bus1__0_37,
    gr3_bus1__0,
    gr4_bus1__0,
    gr5_bus1__0_38,
    gr6_bus1__0_39,
    gr1_bus1__0_40,
    gr2_bus1__0_41,
    gr7_bus1__0_42,
    gr0_bus1__0_43,
    \iv[12]_i_7 ,
    \iv[7]_i_9 ,
    \iv[1]_i_6 ,
    \iv[3]_i_6_0 ,
    \iv[11]_i_7 ,
    \iv[8]_i_10 ,
    \iv[6]_i_2 ,
    \iv[9]_i_2 ,
    \iv[9]_i_2_0 ,
    \iv[1]_i_6_0 ,
    \iv[9]_i_6 ,
    \iv[9]_i_5_0 ,
    \iv[3]_i_2 ,
    \iv[9]_i_4 ,
    \iv[11]_i_8 ,
    \iv[3]_i_6_1 ,
    \iv[3]_i_6_2 ,
    \iv[3]_i_6_3 ,
    \iv[3]_i_6_4 ,
    \iv[8]_i_7 ,
    \iv[9]_i_5_1 ,
    \iv[9]_i_5_2 ,
    \iv[7]_i_9_0 ,
    \iv[11]_i_8_0 ,
    \iv[11]_i_8_1 ,
    \iv[14]_i_4 ,
    \iv[14]_i_4_0 ,
    \iv[6]_i_6 ,
    \iv[10]_i_9 ,
    \iv[10]_i_9_0 ,
    \iv[10]_i_9_1 ,
    \iv[10]_i_9_2 ,
    \iv[10]_i_23 ,
    \iv[10]_i_23_0 ,
    SR,
    \grn_reg[15]_1 ,
    \grn_reg[15]_2 ,
    clk);
  output \grn_reg[1]_0 ;
  output \grn_reg[2]_0 ;
  output \grn_reg[3]_0 ;
  output \grn_reg[5]_0 ;
  output \grn_reg[6]_0 ;
  output \grn_reg[7]_0 ;
  output \grn_reg[8]_0 ;
  output \grn_reg[9]_0 ;
  output \grn_reg[10]_0 ;
  output \grn_reg[15]_0 ;
  output \grn_reg[5]_1 ;
  output \grn_reg[6]_1 ;
  output \grn_reg[0]_0 ;
  output \grn_reg[1]_1 ;
  output \grn_reg[2]_1 ;
  output \grn_reg[3]_1 ;
  output \grn_reg[4]_0 ;
  output \grn_reg[0]_1 ;
  output \grn_reg[1]_2 ;
  output \grn_reg[2]_2 ;
  output \grn_reg[3]_2 ;
  output \grn_reg[4]_1 ;
  output \sr_reg[6] ;
  output \badr[10]_INST_0_i_1_0 ;
  output \sr_reg[6]_0 ;
  output \sr_reg[6]_1 ;
  output \badr[15]_INST_0_i_1_0 ;
  output \sr_reg[6]_2 ;
  output \badr[1]_INST_0_i_1_0 ;
  output \sr_reg[6]_3 ;
  output \iv[14]_i_39_0 ;
  output \badr[12]_INST_0_i_1 ;
  output \badr[10]_INST_0_i_1_1 ;
  output \iv[14]_i_29 ;
  output \sr_reg[6]_4 ;
  output \iv[13]_i_36_0 ;
  output \badr[11]_INST_0_i_1 ;
  output \badr[9]_INST_0_i_1_0 ;
  output \badr[13]_INST_0_i_1 ;
  output \iv[13]_i_36_1 ;
  output \sr_reg[6]_5 ;
  output \stat_reg[2] ;
  output \iv[11]_i_25 ;
  output \badr[7]_INST_0_i_1_0 ;
  output \badr[5]_INST_0_i_1_0 ;
  output \sr_reg[6]_6 ;
  output \iv[13]_i_31_0 ;
  output \badr[8]_INST_0_i_1_0 ;
  output \badr[6]_INST_0_i_1_0 ;
  output \iv[13]_i_33 ;
  output \iv[2]_i_8 ;
  output \badr[5]_INST_0_i_1_1 ;
  output \iv[2]_i_8_0 ;
  output \sr_reg[6]_7 ;
  output \sr_reg[6]_8 ;
  output \iv[14]_i_42_0 ;
  output \bdatw[12]_INST_0_i_2 ;
  output \badr[4]_INST_0_i_1 ;
  output \iv[2]_i_8_1 ;
  output \iv[13]_i_25 ;
  output \badr[1]_INST_0_i_1_1 ;
  output \badr[3]_INST_0_i_1_0 ;
  output \sr_reg[6]_9 ;
  output \badr[2]_INST_0_i_1_0 ;
  output \iv[10]_i_30 ;
  output \badr[14]_INST_0_i_1 ;
  output \iv[2]_i_23 ;
  output \iv[14]_i_8 ;
  output \stat_reg[2]_0 ;
  output \bdatw[8]_INST_0_i_2 ;
  output \iv[13]_i_23_0 ;
  output \iv[2]_i_23_0 ;
  output \bdatw[8]_INST_0_i_2_0 ;
  output \bdatw[8]_INST_0_i_2_1 ;
  output \bdatw[8]_INST_0_i_2_2 ;
  output \bdatw[8]_INST_0_i_2_3 ;
  output \bdatw[8]_INST_0_i_2_4 ;
  output \bdatw[8]_INST_0_i_2_5 ;
  output \bdatw[8]_INST_0_i_2_6 ;
  output \bdatw[8]_INST_0_i_2_7 ;
  output \iv[14]_i_39_1 ;
  output \bdatw[8]_INST_0_i_2_8 ;
  output \sr_reg[6]_10 ;
  output \bdatw[8]_INST_0_i_2_9 ;
  output \sr_reg[6]_11 ;
  output \sr_reg[6]_12 ;
  output \sr_reg[6]_13 ;
  output [15:0]Q;
  input \abus_o[1] ;
  input \abus_o[1]_0 ;
  input \abus_o[1]_1 ;
  input \abus_o[1]_2 ;
  input \abus_o[2] ;
  input \abus_o[2]_0 ;
  input \abus_o[2]_1 ;
  input \abus_o[2]_2 ;
  input \abus_o[3] ;
  input \abus_o[3]_0 ;
  input \abus_o[3]_1 ;
  input \abus_o[3]_2 ;
  input \abus_o[5] ;
  input \abus_o[5]_0 ;
  input \abus_o[5]_1 ;
  input \abus_o[5]_2 ;
  input \abus_o[6] ;
  input \abus_o[6]_0 ;
  input \abus_o[6]_1 ;
  input \abus_o[6]_2 ;
  input \abus_o[7] ;
  input \abus_o[7]_0 ;
  input \abus_o[7]_1 ;
  input \abus_o[7]_2 ;
  input \abus_o[8] ;
  input \abus_o[8]_0 ;
  input \abus_o[8]_1 ;
  input \abus_o[8]_2 ;
  input \abus_o[9] ;
  input \abus_o[9]_0 ;
  input \abus_o[9]_1 ;
  input \abus_o[9]_2 ;
  input \abus_o[10] ;
  input \abus_o[10]_0 ;
  input \abus_o[10]_1 ;
  input \abus_o[10]_2 ;
  input \abus_o[15] ;
  input \abus_o[15]_0 ;
  input \abus_o[15]_1 ;
  input \abus_o[15]_2 ;
  input [11:0]out;
  input gr7_bus1__0_14;
  input [11:0]\badr[15]_INST_0_i_2_0 ;
  input gr0_bus1__0_15;
  input [1:0]\iv[3]_i_6 ;
  input [0:0]\bdatw[14]_INST_0_i_15_0 ;
  input [9:0]\badr[15]_INST_0_i_2_1 ;
  input gr1_bus1__0_16;
  input [9:0]\badr[15]_INST_0_i_2_2 ;
  input gr2_bus1__0_17;
  input [9:0]\badr[15]_INST_0_i_2_3 ;
  input gr3_bus1__0_18;
  input [9:0]\badr[15]_INST_0_i_2_4 ;
  input gr4_bus1__0_19;
  input [9:0]\badr[15]_INST_0_i_2_5 ;
  input gr5_bus1__0_20;
  input [9:0]\badr[15]_INST_0_i_2_6 ;
  input gr6_bus1__0_21;
  input [9:0]\badr[15]_INST_0_i_2_7 ;
  input gr7_bus1__0_22;
  input [9:0]\badr[15]_INST_0_i_2_8 ;
  input gr0_bus1__0_23;
  input \badr[1]_INST_0_i_1_2 ;
  input gr1_bus1__0_24;
  input gr2_bus1__0_25;
  input \badr[2]_INST_0_i_1_1 ;
  input \badr[3]_INST_0_i_1_1 ;
  input \badr[5]_INST_0_i_1_2 ;
  input \badr[6]_INST_0_i_1_1 ;
  input \badr[7]_INST_0_i_1_1 ;
  input \badr[8]_INST_0_i_1_1 ;
  input \badr[9]_INST_0_i_1_1 ;
  input \badr[10]_INST_0_i_1_2 ;
  input \badr[15]_INST_0_i_1_1 ;
  input gr3_bus1__0_26;
  input gr4_bus1__0_27;
  input gr5_bus1__0_28;
  input gr6_bus1__0_29;
  input gr7_bus1__0_30;
  input gr0_bus1__0_31;
  input [9:0]\badr[15]_INST_0_i_1_2 ;
  input gr3_bus1__0_32;
  input [9:0]\badr[15]_INST_0_i_1_3 ;
  input gr4_bus1__0_33;
  input [9:0]\badr[15]_INST_0_i_3_0 ;
  input gr5_bus1__0_34;
  input [9:0]\badr[15]_INST_0_i_3_1 ;
  input gr6_bus1__0_35;
  input [11:0]\badr[15]_INST_0_i_3_2 ;
  input gr1_bus1__0_36;
  input [11:0]\badr[15]_INST_0_i_3_3 ;
  input gr2_bus1__0_37;
  input gr3_bus1__0;
  input gr4_bus1__0;
  input gr5_bus1__0_38;
  input gr6_bus1__0_39;
  input gr1_bus1__0_40;
  input gr2_bus1__0_41;
  input gr7_bus1__0_42;
  input gr0_bus1__0_43;
  input \iv[12]_i_7 ;
  input \iv[7]_i_9 ;
  input \iv[1]_i_6 ;
  input \iv[3]_i_6_0 ;
  input \iv[11]_i_7 ;
  input \iv[8]_i_10 ;
  input \iv[6]_i_2 ;
  input \iv[9]_i_2 ;
  input \iv[9]_i_2_0 ;
  input \iv[1]_i_6_0 ;
  input \iv[9]_i_6 ;
  input \iv[9]_i_5_0 ;
  input \iv[3]_i_2 ;
  input \iv[9]_i_4 ;
  input \iv[11]_i_8 ;
  input \iv[3]_i_6_1 ;
  input \iv[3]_i_6_2 ;
  input \iv[3]_i_6_3 ;
  input \iv[3]_i_6_4 ;
  input \iv[8]_i_7 ;
  input \iv[9]_i_5_1 ;
  input \iv[9]_i_5_2 ;
  input \iv[7]_i_9_0 ;
  input \iv[11]_i_8_0 ;
  input \iv[11]_i_8_1 ;
  input \iv[14]_i_4 ;
  input \iv[14]_i_4_0 ;
  input \iv[6]_i_6 ;
  input \iv[10]_i_9 ;
  input \iv[10]_i_9_0 ;
  input \iv[10]_i_9_1 ;
  input \iv[10]_i_9_2 ;
  input \iv[10]_i_23 ;
  input \iv[10]_i_23_0 ;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_1 ;
  input [15:0]\grn_reg[15]_2 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire \abus_o[10] ;
  wire \abus_o[10]_0 ;
  wire \abus_o[10]_1 ;
  wire \abus_o[10]_2 ;
  wire \abus_o[15] ;
  wire \abus_o[15]_0 ;
  wire \abus_o[15]_1 ;
  wire \abus_o[15]_2 ;
  wire \abus_o[1] ;
  wire \abus_o[1]_0 ;
  wire \abus_o[1]_1 ;
  wire \abus_o[1]_2 ;
  wire \abus_o[2] ;
  wire \abus_o[2]_0 ;
  wire \abus_o[2]_1 ;
  wire \abus_o[2]_2 ;
  wire \abus_o[3] ;
  wire \abus_o[3]_0 ;
  wire \abus_o[3]_1 ;
  wire \abus_o[3]_2 ;
  wire \abus_o[5] ;
  wire \abus_o[5]_0 ;
  wire \abus_o[5]_1 ;
  wire \abus_o[5]_2 ;
  wire \abus_o[6] ;
  wire \abus_o[6]_0 ;
  wire \abus_o[6]_1 ;
  wire \abus_o[6]_2 ;
  wire \abus_o[7] ;
  wire \abus_o[7]_0 ;
  wire \abus_o[7]_1 ;
  wire \abus_o[7]_2 ;
  wire \abus_o[8] ;
  wire \abus_o[8]_0 ;
  wire \abus_o[8]_1 ;
  wire \abus_o[8]_2 ;
  wire \abus_o[9] ;
  wire \abus_o[9]_0 ;
  wire \abus_o[9]_1 ;
  wire \abus_o[9]_2 ;
  wire \badr[10]_INST_0_i_10_n_0 ;
  wire \badr[10]_INST_0_i_11_n_0 ;
  wire \badr[10]_INST_0_i_12_n_0 ;
  wire \badr[10]_INST_0_i_14_n_0 ;
  wire \badr[10]_INST_0_i_15_n_0 ;
  wire \badr[10]_INST_0_i_1_0 ;
  wire \badr[10]_INST_0_i_1_1 ;
  wire \badr[10]_INST_0_i_1_2 ;
  wire \badr[10]_INST_0_i_2_n_0 ;
  wire \badr[10]_INST_0_i_3_n_0 ;
  wire \badr[10]_INST_0_i_8_n_0 ;
  wire \badr[10]_INST_0_i_9_n_0 ;
  wire \badr[11]_INST_0_i_1 ;
  wire \badr[12]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_1 ;
  wire \badr[14]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_10_n_0 ;
  wire \badr[15]_INST_0_i_11_n_0 ;
  wire \badr[15]_INST_0_i_12_n_0 ;
  wire \badr[15]_INST_0_i_14_n_0 ;
  wire \badr[15]_INST_0_i_17_n_0 ;
  wire \badr[15]_INST_0_i_1_0 ;
  wire \badr[15]_INST_0_i_1_1 ;
  wire [9:0]\badr[15]_INST_0_i_1_2 ;
  wire [9:0]\badr[15]_INST_0_i_1_3 ;
  wire [11:0]\badr[15]_INST_0_i_2_0 ;
  wire [9:0]\badr[15]_INST_0_i_2_1 ;
  wire [9:0]\badr[15]_INST_0_i_2_2 ;
  wire [9:0]\badr[15]_INST_0_i_2_3 ;
  wire [9:0]\badr[15]_INST_0_i_2_4 ;
  wire [9:0]\badr[15]_INST_0_i_2_5 ;
  wire [9:0]\badr[15]_INST_0_i_2_6 ;
  wire [9:0]\badr[15]_INST_0_i_2_7 ;
  wire [9:0]\badr[15]_INST_0_i_2_8 ;
  wire \badr[15]_INST_0_i_2_n_0 ;
  wire [9:0]\badr[15]_INST_0_i_3_0 ;
  wire [9:0]\badr[15]_INST_0_i_3_1 ;
  wire [11:0]\badr[15]_INST_0_i_3_2 ;
  wire [11:0]\badr[15]_INST_0_i_3_3 ;
  wire \badr[15]_INST_0_i_3_n_0 ;
  wire \badr[15]_INST_0_i_8_n_0 ;
  wire \badr[15]_INST_0_i_9_n_0 ;
  wire \badr[1]_INST_0_i_10_n_0 ;
  wire \badr[1]_INST_0_i_11_n_0 ;
  wire \badr[1]_INST_0_i_12_n_0 ;
  wire \badr[1]_INST_0_i_14_n_0 ;
  wire \badr[1]_INST_0_i_15_n_0 ;
  wire \badr[1]_INST_0_i_1_0 ;
  wire \badr[1]_INST_0_i_1_1 ;
  wire \badr[1]_INST_0_i_1_2 ;
  wire \badr[1]_INST_0_i_2_n_0 ;
  wire \badr[1]_INST_0_i_3_n_0 ;
  wire \badr[1]_INST_0_i_8_n_0 ;
  wire \badr[1]_INST_0_i_9_n_0 ;
  wire \badr[2]_INST_0_i_10_n_0 ;
  wire \badr[2]_INST_0_i_11_n_0 ;
  wire \badr[2]_INST_0_i_12_n_0 ;
  wire \badr[2]_INST_0_i_14_n_0 ;
  wire \badr[2]_INST_0_i_15_n_0 ;
  wire \badr[2]_INST_0_i_1_0 ;
  wire \badr[2]_INST_0_i_1_1 ;
  wire \badr[2]_INST_0_i_2_n_0 ;
  wire \badr[2]_INST_0_i_3_n_0 ;
  wire \badr[2]_INST_0_i_8_n_0 ;
  wire \badr[2]_INST_0_i_9_n_0 ;
  wire \badr[3]_INST_0_i_10_n_0 ;
  wire \badr[3]_INST_0_i_11_n_0 ;
  wire \badr[3]_INST_0_i_12_n_0 ;
  wire \badr[3]_INST_0_i_14_n_0 ;
  wire \badr[3]_INST_0_i_15_n_0 ;
  wire \badr[3]_INST_0_i_1_0 ;
  wire \badr[3]_INST_0_i_1_1 ;
  wire \badr[3]_INST_0_i_2_n_0 ;
  wire \badr[3]_INST_0_i_3_n_0 ;
  wire \badr[3]_INST_0_i_8_n_0 ;
  wire \badr[3]_INST_0_i_9_n_0 ;
  wire \badr[4]_INST_0_i_1 ;
  wire \badr[5]_INST_0_i_10_n_0 ;
  wire \badr[5]_INST_0_i_11_n_0 ;
  wire \badr[5]_INST_0_i_12_n_0 ;
  wire \badr[5]_INST_0_i_14_n_0 ;
  wire \badr[5]_INST_0_i_15_n_0 ;
  wire \badr[5]_INST_0_i_1_0 ;
  wire \badr[5]_INST_0_i_1_1 ;
  wire \badr[5]_INST_0_i_1_2 ;
  wire \badr[5]_INST_0_i_2_n_0 ;
  wire \badr[5]_INST_0_i_3_n_0 ;
  wire \badr[5]_INST_0_i_8_n_0 ;
  wire \badr[5]_INST_0_i_9_n_0 ;
  wire \badr[6]_INST_0_i_10_n_0 ;
  wire \badr[6]_INST_0_i_11_n_0 ;
  wire \badr[6]_INST_0_i_12_n_0 ;
  wire \badr[6]_INST_0_i_14_n_0 ;
  wire \badr[6]_INST_0_i_15_n_0 ;
  wire \badr[6]_INST_0_i_1_0 ;
  wire \badr[6]_INST_0_i_1_1 ;
  wire \badr[6]_INST_0_i_2_n_0 ;
  wire \badr[6]_INST_0_i_3_n_0 ;
  wire \badr[6]_INST_0_i_8_n_0 ;
  wire \badr[6]_INST_0_i_9_n_0 ;
  wire \badr[7]_INST_0_i_10_n_0 ;
  wire \badr[7]_INST_0_i_11_n_0 ;
  wire \badr[7]_INST_0_i_12_n_0 ;
  wire \badr[7]_INST_0_i_14_n_0 ;
  wire \badr[7]_INST_0_i_15_n_0 ;
  wire \badr[7]_INST_0_i_1_0 ;
  wire \badr[7]_INST_0_i_1_1 ;
  wire \badr[7]_INST_0_i_2_n_0 ;
  wire \badr[7]_INST_0_i_3_n_0 ;
  wire \badr[7]_INST_0_i_8_n_0 ;
  wire \badr[7]_INST_0_i_9_n_0 ;
  wire \badr[8]_INST_0_i_10_n_0 ;
  wire \badr[8]_INST_0_i_11_n_0 ;
  wire \badr[8]_INST_0_i_12_n_0 ;
  wire \badr[8]_INST_0_i_14_n_0 ;
  wire \badr[8]_INST_0_i_15_n_0 ;
  wire \badr[8]_INST_0_i_1_0 ;
  wire \badr[8]_INST_0_i_1_1 ;
  wire \badr[8]_INST_0_i_2_n_0 ;
  wire \badr[8]_INST_0_i_3_n_0 ;
  wire \badr[8]_INST_0_i_8_n_0 ;
  wire \badr[8]_INST_0_i_9_n_0 ;
  wire \badr[9]_INST_0_i_10_n_0 ;
  wire \badr[9]_INST_0_i_11_n_0 ;
  wire \badr[9]_INST_0_i_12_n_0 ;
  wire \badr[9]_INST_0_i_14_n_0 ;
  wire \badr[9]_INST_0_i_15_n_0 ;
  wire \badr[9]_INST_0_i_1_0 ;
  wire \badr[9]_INST_0_i_1_1 ;
  wire \badr[9]_INST_0_i_2_n_0 ;
  wire \badr[9]_INST_0_i_3_n_0 ;
  wire \badr[9]_INST_0_i_8_n_0 ;
  wire \badr[9]_INST_0_i_9_n_0 ;
  wire \bdatw[12]_INST_0_i_2 ;
  wire \bdatw[13]_INST_0_i_21_n_0 ;
  wire \bdatw[13]_INST_0_i_22_n_0 ;
  wire \bdatw[13]_INST_0_i_39_n_0 ;
  wire \bdatw[13]_INST_0_i_40_n_0 ;
  wire \bdatw[13]_INST_0_i_41_n_0 ;
  wire \bdatw[13]_INST_0_i_42_n_0 ;
  wire \bdatw[13]_INST_0_i_43_n_0 ;
  wire \bdatw[13]_INST_0_i_44_n_0 ;
  wire [0:0]\bdatw[14]_INST_0_i_15_0 ;
  wire \bdatw[14]_INST_0_i_22_n_0 ;
  wire \bdatw[14]_INST_0_i_23_n_0 ;
  wire \bdatw[14]_INST_0_i_40_n_0 ;
  wire \bdatw[14]_INST_0_i_41_n_0 ;
  wire \bdatw[14]_INST_0_i_42_n_0 ;
  wire \bdatw[14]_INST_0_i_43_n_0 ;
  wire \bdatw[14]_INST_0_i_44_n_0 ;
  wire \bdatw[14]_INST_0_i_45_n_0 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_2_2 ;
  wire \bdatw[8]_INST_0_i_2_3 ;
  wire \bdatw[8]_INST_0_i_2_4 ;
  wire \bdatw[8]_INST_0_i_2_5 ;
  wire \bdatw[8]_INST_0_i_2_6 ;
  wire \bdatw[8]_INST_0_i_2_7 ;
  wire \bdatw[8]_INST_0_i_2_8 ;
  wire \bdatw[8]_INST_0_i_2_9 ;
  wire clk;
  wire gr0_bus1__0_15;
  wire gr0_bus1__0_23;
  wire gr0_bus1__0_31;
  wire gr0_bus1__0_43;
  wire gr1_bus1__0_16;
  wire gr1_bus1__0_24;
  wire gr1_bus1__0_36;
  wire gr1_bus1__0_40;
  wire gr2_bus1__0_17;
  wire gr2_bus1__0_25;
  wire gr2_bus1__0_37;
  wire gr2_bus1__0_41;
  wire gr3_bus1__0;
  wire gr3_bus1__0_18;
  wire gr3_bus1__0_26;
  wire gr3_bus1__0_32;
  wire gr4_bus1__0;
  wire gr4_bus1__0_19;
  wire gr4_bus1__0_27;
  wire gr4_bus1__0_33;
  wire gr5_bus1__0_20;
  wire gr5_bus1__0_28;
  wire gr5_bus1__0_34;
  wire gr5_bus1__0_38;
  wire gr6_bus1__0_21;
  wire gr6_bus1__0_29;
  wire gr6_bus1__0_35;
  wire gr6_bus1__0_39;
  wire gr7_bus1__0_14;
  wire gr7_bus1__0_22;
  wire gr7_bus1__0_30;
  wire gr7_bus1__0_42;
  wire \grn_reg[0]_0 ;
  wire \grn_reg[0]_1 ;
  wire \grn_reg[10]_0 ;
  wire \grn_reg[15]_0 ;
  wire [0:0]\grn_reg[15]_1 ;
  wire [15:0]\grn_reg[15]_2 ;
  wire \grn_reg[1]_0 ;
  wire \grn_reg[1]_1 ;
  wire \grn_reg[1]_2 ;
  wire \grn_reg[2]_0 ;
  wire \grn_reg[2]_1 ;
  wire \grn_reg[2]_2 ;
  wire \grn_reg[3]_0 ;
  wire \grn_reg[3]_1 ;
  wire \grn_reg[3]_2 ;
  wire \grn_reg[4]_0 ;
  wire \grn_reg[4]_1 ;
  wire \grn_reg[5]_0 ;
  wire \grn_reg[5]_1 ;
  wire \grn_reg[6]_0 ;
  wire \grn_reg[6]_1 ;
  wire \grn_reg[7]_0 ;
  wire \grn_reg[8]_0 ;
  wire \grn_reg[9]_0 ;
  wire \iv[10]_i_23 ;
  wire \iv[10]_i_23_0 ;
  wire \iv[10]_i_29_n_0 ;
  wire \iv[10]_i_30 ;
  wire \iv[10]_i_9 ;
  wire \iv[10]_i_9_0 ;
  wire \iv[10]_i_9_1 ;
  wire \iv[10]_i_9_2 ;
  wire \iv[11]_i_25 ;
  wire \iv[11]_i_7 ;
  wire \iv[11]_i_8 ;
  wire \iv[11]_i_8_0 ;
  wire \iv[11]_i_8_1 ;
  wire \iv[12]_i_7 ;
  wire \iv[13]_i_23_0 ;
  wire \iv[13]_i_25 ;
  wire \iv[13]_i_31_0 ;
  wire \iv[13]_i_33 ;
  wire \iv[13]_i_36_0 ;
  wire \iv[13]_i_36_1 ;
  wire \iv[14]_i_29 ;
  wire \iv[14]_i_34_n_0 ;
  wire \iv[14]_i_39_0 ;
  wire \iv[14]_i_39_1 ;
  wire \iv[14]_i_4 ;
  wire \iv[14]_i_42_0 ;
  wire \iv[14]_i_42_n_0 ;
  wire \iv[14]_i_4_0 ;
  wire \iv[14]_i_8 ;
  wire \iv[1]_i_6 ;
  wire \iv[1]_i_6_0 ;
  wire \iv[2]_i_23 ;
  wire \iv[2]_i_23_0 ;
  wire \iv[2]_i_8 ;
  wire \iv[2]_i_8_0 ;
  wire \iv[2]_i_8_1 ;
  wire \iv[3]_i_12_n_0 ;
  wire \iv[3]_i_13_n_0 ;
  wire \iv[3]_i_2 ;
  wire [1:0]\iv[3]_i_6 ;
  wire \iv[3]_i_6_0 ;
  wire \iv[3]_i_6_1 ;
  wire \iv[3]_i_6_2 ;
  wire \iv[3]_i_6_3 ;
  wire \iv[3]_i_6_4 ;
  wire \iv[6]_i_16_n_0 ;
  wire \iv[6]_i_2 ;
  wire \iv[6]_i_6 ;
  wire \iv[7]_i_22_n_0 ;
  wire \iv[7]_i_9 ;
  wire \iv[7]_i_9_0 ;
  wire \iv[8]_i_10 ;
  wire \iv[8]_i_7 ;
  wire \iv[9]_i_14_n_0 ;
  wire \iv[9]_i_2 ;
  wire \iv[9]_i_2_0 ;
  wire \iv[9]_i_4 ;
  wire \iv[9]_i_5_0 ;
  wire \iv[9]_i_5_1 ;
  wire \iv[9]_i_5_2 ;
  wire \iv[9]_i_6 ;
  wire [11:0]out;
  wire \sr_reg[6] ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[6]_1 ;
  wire \sr_reg[6]_10 ;
  wire \sr_reg[6]_11 ;
  wire \sr_reg[6]_12 ;
  wire \sr_reg[6]_13 ;
  wire \sr_reg[6]_2 ;
  wire \sr_reg[6]_3 ;
  wire \sr_reg[6]_4 ;
  wire \sr_reg[6]_5 ;
  wire \sr_reg[6]_6 ;
  wire \sr_reg[6]_7 ;
  wire \sr_reg[6]_8 ;
  wire \sr_reg[6]_9 ;
  wire \stat_reg[2] ;
  wire \stat_reg[2]_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[10]_INST_0_i_1 
       (.I0(\badr[10]_INST_0_i_2_n_0 ),
        .I1(\badr[10]_INST_0_i_3_n_0 ),
        .I2(\abus_o[10] ),
        .I3(\abus_o[10]_0 ),
        .I4(\abus_o[10]_1 ),
        .I5(\abus_o[10]_2 ),
        .O(\grn_reg[10]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_2_1 [8]),
        .I1(gr1_bus1__0_24),
        .I2(\badr[15]_INST_0_i_2_2 [8]),
        .I3(gr2_bus1__0_25),
        .O(\badr[10]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_7 [8]),
        .I1(gr7_bus1__0_30),
        .I2(\badr[15]_INST_0_i_2_8 [8]),
        .I3(gr0_bus1__0_31),
        .O(\badr[10]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_5 [8]),
        .I1(gr5_bus1__0_28),
        .I2(\badr[15]_INST_0_i_2_6 [8]),
        .I3(gr6_bus1__0_29),
        .O(\badr[10]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_0 [8]),
        .I1(gr5_bus1__0_38),
        .I2(\badr[15]_INST_0_i_3_1 [8]),
        .I3(gr6_bus1__0_39),
        .O(\badr[10]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_2 [10]),
        .I1(gr1_bus1__0_40),
        .I2(\badr[15]_INST_0_i_3_3 [10]),
        .I3(gr2_bus1__0_41),
        .O(\badr[10]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[10]_INST_0_i_2 
       (.I0(\badr[10]_INST_0_i_8_n_0 ),
        .I1(\badr[10]_INST_0_i_9_n_0 ),
        .I2(\badr[10]_INST_0_i_10_n_0 ),
        .I3(\badr[10]_INST_0_i_11_n_0 ),
        .I4(\badr[10]_INST_0_i_12_n_0 ),
        .I5(\badr[10]_INST_0_i_1_2 ),
        .O(\badr[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[10]_INST_0_i_3 
       (.I0(\badr[10]_INST_0_i_14_n_0 ),
        .I1(\badr[15]_INST_0_i_1_2 [8]),
        .I2(gr3_bus1__0),
        .I3(\badr[15]_INST_0_i_1_3 [8]),
        .I4(gr4_bus1__0),
        .I5(\badr[10]_INST_0_i_15_n_0 ),
        .O(\badr[10]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_8 
       (.I0(out[10]),
        .I1(gr7_bus1__0_42),
        .I2(\badr[15]_INST_0_i_2_0 [10]),
        .I3(gr0_bus1__0_43),
        .O(\badr[10]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_3 [8]),
        .I1(gr3_bus1__0_26),
        .I2(\badr[15]_INST_0_i_2_4 [8]),
        .I3(gr4_bus1__0_27),
        .O(\badr[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_1 
       (.I0(\badr[15]_INST_0_i_2_n_0 ),
        .I1(\badr[15]_INST_0_i_3_n_0 ),
        .I2(\abus_o[15] ),
        .I3(\abus_o[15]_0 ),
        .I4(\abus_o[15]_1 ),
        .I5(\abus_o[15]_2 ),
        .O(\grn_reg[15]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_2_1 [9]),
        .I1(gr1_bus1__0_24),
        .I2(\badr[15]_INST_0_i_2_2 [9]),
        .I3(gr2_bus1__0_25),
        .O(\badr[15]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_7 [9]),
        .I1(gr7_bus1__0_30),
        .I2(\badr[15]_INST_0_i_2_8 [9]),
        .I3(gr0_bus1__0_31),
        .O(\badr[15]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_5 [9]),
        .I1(gr5_bus1__0_28),
        .I2(\badr[15]_INST_0_i_2_6 [9]),
        .I3(gr6_bus1__0_29),
        .O(\badr[15]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_0 [9]),
        .I1(gr5_bus1__0_38),
        .I2(\badr[15]_INST_0_i_3_1 [9]),
        .I3(gr6_bus1__0_39),
        .O(\badr[15]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_3_2 [11]),
        .I1(gr1_bus1__0_40),
        .I2(\badr[15]_INST_0_i_3_3 [11]),
        .I3(gr2_bus1__0_41),
        .O(\badr[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_11_n_0 ),
        .I4(\badr[15]_INST_0_i_12_n_0 ),
        .I5(\badr[15]_INST_0_i_1_1 ),
        .O(\badr[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[15]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_14_n_0 ),
        .I1(\badr[15]_INST_0_i_1_2 [9]),
        .I2(gr3_bus1__0),
        .I3(\badr[15]_INST_0_i_1_3 [9]),
        .I4(gr4_bus1__0),
        .I5(\badr[15]_INST_0_i_17_n_0 ),
        .O(\badr[15]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_8 
       (.I0(out[11]),
        .I1(gr7_bus1__0_42),
        .I2(\badr[15]_INST_0_i_2_0 [11]),
        .I3(gr0_bus1__0_43),
        .O(\badr[15]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_3 [9]),
        .I1(gr3_bus1__0_26),
        .I2(\badr[15]_INST_0_i_2_4 [9]),
        .I3(gr4_bus1__0_27),
        .O(\badr[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[1]_INST_0_i_1 
       (.I0(\badr[1]_INST_0_i_2_n_0 ),
        .I1(\badr[1]_INST_0_i_3_n_0 ),
        .I2(\abus_o[1] ),
        .I3(\abus_o[1]_0 ),
        .I4(\abus_o[1]_1 ),
        .I5(\abus_o[1]_2 ),
        .O(\grn_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_2_1 [0]),
        .I1(gr1_bus1__0_24),
        .I2(\badr[15]_INST_0_i_2_2 [0]),
        .I3(gr2_bus1__0_25),
        .O(\badr[1]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_7 [0]),
        .I1(gr7_bus1__0_30),
        .I2(\badr[15]_INST_0_i_2_8 [0]),
        .I3(gr0_bus1__0_31),
        .O(\badr[1]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_5 [0]),
        .I1(gr5_bus1__0_28),
        .I2(\badr[15]_INST_0_i_2_6 [0]),
        .I3(gr6_bus1__0_29),
        .O(\badr[1]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_0 [0]),
        .I1(gr5_bus1__0_38),
        .I2(\badr[15]_INST_0_i_3_1 [0]),
        .I3(gr6_bus1__0_39),
        .O(\badr[1]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_2 [1]),
        .I1(gr1_bus1__0_40),
        .I2(\badr[15]_INST_0_i_3_3 [1]),
        .I3(gr2_bus1__0_41),
        .O(\badr[1]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[1]_INST_0_i_2 
       (.I0(\badr[1]_INST_0_i_8_n_0 ),
        .I1(\badr[1]_INST_0_i_9_n_0 ),
        .I2(\badr[1]_INST_0_i_10_n_0 ),
        .I3(\badr[1]_INST_0_i_11_n_0 ),
        .I4(\badr[1]_INST_0_i_12_n_0 ),
        .I5(\badr[1]_INST_0_i_1_2 ),
        .O(\badr[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[1]_INST_0_i_3 
       (.I0(\badr[1]_INST_0_i_14_n_0 ),
        .I1(\badr[15]_INST_0_i_1_2 [0]),
        .I2(gr3_bus1__0),
        .I3(\badr[15]_INST_0_i_1_3 [0]),
        .I4(gr4_bus1__0),
        .I5(\badr[1]_INST_0_i_15_n_0 ),
        .O(\badr[1]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_8 
       (.I0(out[1]),
        .I1(gr7_bus1__0_42),
        .I2(\badr[15]_INST_0_i_2_0 [1]),
        .I3(gr0_bus1__0_43),
        .O(\badr[1]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_3 [0]),
        .I1(gr3_bus1__0_26),
        .I2(\badr[15]_INST_0_i_2_4 [0]),
        .I3(gr4_bus1__0_27),
        .O(\badr[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[2]_INST_0_i_1 
       (.I0(\badr[2]_INST_0_i_2_n_0 ),
        .I1(\badr[2]_INST_0_i_3_n_0 ),
        .I2(\abus_o[2] ),
        .I3(\abus_o[2]_0 ),
        .I4(\abus_o[2]_1 ),
        .I5(\abus_o[2]_2 ),
        .O(\grn_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_2_1 [1]),
        .I1(gr1_bus1__0_24),
        .I2(\badr[15]_INST_0_i_2_2 [1]),
        .I3(gr2_bus1__0_25),
        .O(\badr[2]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_7 [1]),
        .I1(gr7_bus1__0_30),
        .I2(\badr[15]_INST_0_i_2_8 [1]),
        .I3(gr0_bus1__0_31),
        .O(\badr[2]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_5 [1]),
        .I1(gr5_bus1__0_28),
        .I2(\badr[15]_INST_0_i_2_6 [1]),
        .I3(gr6_bus1__0_29),
        .O(\badr[2]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_0 [1]),
        .I1(gr5_bus1__0_38),
        .I2(\badr[15]_INST_0_i_3_1 [1]),
        .I3(gr6_bus1__0_39),
        .O(\badr[2]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_2 [2]),
        .I1(gr1_bus1__0_40),
        .I2(\badr[15]_INST_0_i_3_3 [2]),
        .I3(gr2_bus1__0_41),
        .O(\badr[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[2]_INST_0_i_2 
       (.I0(\badr[2]_INST_0_i_8_n_0 ),
        .I1(\badr[2]_INST_0_i_9_n_0 ),
        .I2(\badr[2]_INST_0_i_10_n_0 ),
        .I3(\badr[2]_INST_0_i_11_n_0 ),
        .I4(\badr[2]_INST_0_i_12_n_0 ),
        .I5(\badr[2]_INST_0_i_1_1 ),
        .O(\badr[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[2]_INST_0_i_3 
       (.I0(\badr[2]_INST_0_i_14_n_0 ),
        .I1(\badr[15]_INST_0_i_1_2 [1]),
        .I2(gr3_bus1__0),
        .I3(\badr[15]_INST_0_i_1_3 [1]),
        .I4(gr4_bus1__0),
        .I5(\badr[2]_INST_0_i_15_n_0 ),
        .O(\badr[2]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_8 
       (.I0(out[2]),
        .I1(gr7_bus1__0_42),
        .I2(\badr[15]_INST_0_i_2_0 [2]),
        .I3(gr0_bus1__0_43),
        .O(\badr[2]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_3 [1]),
        .I1(gr3_bus1__0_26),
        .I2(\badr[15]_INST_0_i_2_4 [1]),
        .I3(gr4_bus1__0_27),
        .O(\badr[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[3]_INST_0_i_1 
       (.I0(\badr[3]_INST_0_i_2_n_0 ),
        .I1(\badr[3]_INST_0_i_3_n_0 ),
        .I2(\abus_o[3] ),
        .I3(\abus_o[3]_0 ),
        .I4(\abus_o[3]_1 ),
        .I5(\abus_o[3]_2 ),
        .O(\grn_reg[3]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_2_1 [2]),
        .I1(gr1_bus1__0_24),
        .I2(\badr[15]_INST_0_i_2_2 [2]),
        .I3(gr2_bus1__0_25),
        .O(\badr[3]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_7 [2]),
        .I1(gr7_bus1__0_30),
        .I2(\badr[15]_INST_0_i_2_8 [2]),
        .I3(gr0_bus1__0_31),
        .O(\badr[3]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_5 [2]),
        .I1(gr5_bus1__0_28),
        .I2(\badr[15]_INST_0_i_2_6 [2]),
        .I3(gr6_bus1__0_29),
        .O(\badr[3]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_0 [2]),
        .I1(gr5_bus1__0_38),
        .I2(\badr[15]_INST_0_i_3_1 [2]),
        .I3(gr6_bus1__0_39),
        .O(\badr[3]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_2 [3]),
        .I1(gr1_bus1__0_40),
        .I2(\badr[15]_INST_0_i_3_3 [3]),
        .I3(gr2_bus1__0_41),
        .O(\badr[3]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[3]_INST_0_i_2 
       (.I0(\badr[3]_INST_0_i_8_n_0 ),
        .I1(\badr[3]_INST_0_i_9_n_0 ),
        .I2(\badr[3]_INST_0_i_10_n_0 ),
        .I3(\badr[3]_INST_0_i_11_n_0 ),
        .I4(\badr[3]_INST_0_i_12_n_0 ),
        .I5(\badr[3]_INST_0_i_1_1 ),
        .O(\badr[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[3]_INST_0_i_3 
       (.I0(\badr[3]_INST_0_i_14_n_0 ),
        .I1(\badr[15]_INST_0_i_1_2 [2]),
        .I2(gr3_bus1__0),
        .I3(\badr[15]_INST_0_i_1_3 [2]),
        .I4(gr4_bus1__0),
        .I5(\badr[3]_INST_0_i_15_n_0 ),
        .O(\badr[3]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_8 
       (.I0(out[3]),
        .I1(gr7_bus1__0_42),
        .I2(\badr[15]_INST_0_i_2_0 [3]),
        .I3(gr0_bus1__0_43),
        .O(\badr[3]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_3 [2]),
        .I1(gr3_bus1__0_26),
        .I2(\badr[15]_INST_0_i_2_4 [2]),
        .I3(gr4_bus1__0_27),
        .O(\badr[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[5]_INST_0_i_1 
       (.I0(\badr[5]_INST_0_i_2_n_0 ),
        .I1(\badr[5]_INST_0_i_3_n_0 ),
        .I2(\abus_o[5] ),
        .I3(\abus_o[5]_0 ),
        .I4(\abus_o[5]_1 ),
        .I5(\abus_o[5]_2 ),
        .O(\grn_reg[5]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_2_1 [3]),
        .I1(gr1_bus1__0_24),
        .I2(\badr[15]_INST_0_i_2_2 [3]),
        .I3(gr2_bus1__0_25),
        .O(\badr[5]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_7 [3]),
        .I1(gr7_bus1__0_30),
        .I2(\badr[15]_INST_0_i_2_8 [3]),
        .I3(gr0_bus1__0_31),
        .O(\badr[5]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_5 [3]),
        .I1(gr5_bus1__0_28),
        .I2(\badr[15]_INST_0_i_2_6 [3]),
        .I3(gr6_bus1__0_29),
        .O(\badr[5]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_0 [3]),
        .I1(gr5_bus1__0_38),
        .I2(\badr[15]_INST_0_i_3_1 [3]),
        .I3(gr6_bus1__0_39),
        .O(\badr[5]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_2 [5]),
        .I1(gr1_bus1__0_40),
        .I2(\badr[15]_INST_0_i_3_3 [5]),
        .I3(gr2_bus1__0_41),
        .O(\badr[5]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[5]_INST_0_i_2 
       (.I0(\badr[5]_INST_0_i_8_n_0 ),
        .I1(\badr[5]_INST_0_i_9_n_0 ),
        .I2(\badr[5]_INST_0_i_10_n_0 ),
        .I3(\badr[5]_INST_0_i_11_n_0 ),
        .I4(\badr[5]_INST_0_i_12_n_0 ),
        .I5(\badr[5]_INST_0_i_1_2 ),
        .O(\badr[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[5]_INST_0_i_3 
       (.I0(\badr[5]_INST_0_i_14_n_0 ),
        .I1(\badr[15]_INST_0_i_1_2 [3]),
        .I2(gr3_bus1__0),
        .I3(\badr[15]_INST_0_i_1_3 [3]),
        .I4(gr4_bus1__0),
        .I5(\badr[5]_INST_0_i_15_n_0 ),
        .O(\badr[5]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_8 
       (.I0(out[5]),
        .I1(gr7_bus1__0_42),
        .I2(\badr[15]_INST_0_i_2_0 [5]),
        .I3(gr0_bus1__0_43),
        .O(\badr[5]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_3 [3]),
        .I1(gr3_bus1__0_26),
        .I2(\badr[15]_INST_0_i_2_4 [3]),
        .I3(gr4_bus1__0_27),
        .O(\badr[5]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[6]_INST_0_i_1 
       (.I0(\badr[6]_INST_0_i_2_n_0 ),
        .I1(\badr[6]_INST_0_i_3_n_0 ),
        .I2(\abus_o[6] ),
        .I3(\abus_o[6]_0 ),
        .I4(\abus_o[6]_1 ),
        .I5(\abus_o[6]_2 ),
        .O(\grn_reg[6]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_2_1 [4]),
        .I1(gr1_bus1__0_24),
        .I2(\badr[15]_INST_0_i_2_2 [4]),
        .I3(gr2_bus1__0_25),
        .O(\badr[6]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_7 [4]),
        .I1(gr7_bus1__0_30),
        .I2(\badr[15]_INST_0_i_2_8 [4]),
        .I3(gr0_bus1__0_31),
        .O(\badr[6]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_5 [4]),
        .I1(gr5_bus1__0_28),
        .I2(\badr[15]_INST_0_i_2_6 [4]),
        .I3(gr6_bus1__0_29),
        .O(\badr[6]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_0 [4]),
        .I1(gr5_bus1__0_38),
        .I2(\badr[15]_INST_0_i_3_1 [4]),
        .I3(gr6_bus1__0_39),
        .O(\badr[6]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_2 [6]),
        .I1(gr1_bus1__0_40),
        .I2(\badr[15]_INST_0_i_3_3 [6]),
        .I3(gr2_bus1__0_41),
        .O(\badr[6]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[6]_INST_0_i_2 
       (.I0(\badr[6]_INST_0_i_8_n_0 ),
        .I1(\badr[6]_INST_0_i_9_n_0 ),
        .I2(\badr[6]_INST_0_i_10_n_0 ),
        .I3(\badr[6]_INST_0_i_11_n_0 ),
        .I4(\badr[6]_INST_0_i_12_n_0 ),
        .I5(\badr[6]_INST_0_i_1_1 ),
        .O(\badr[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[6]_INST_0_i_3 
       (.I0(\badr[6]_INST_0_i_14_n_0 ),
        .I1(\badr[15]_INST_0_i_1_2 [4]),
        .I2(gr3_bus1__0),
        .I3(\badr[15]_INST_0_i_1_3 [4]),
        .I4(gr4_bus1__0),
        .I5(\badr[6]_INST_0_i_15_n_0 ),
        .O(\badr[6]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_8 
       (.I0(out[6]),
        .I1(gr7_bus1__0_42),
        .I2(\badr[15]_INST_0_i_2_0 [6]),
        .I3(gr0_bus1__0_43),
        .O(\badr[6]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_3 [4]),
        .I1(gr3_bus1__0_26),
        .I2(\badr[15]_INST_0_i_2_4 [4]),
        .I3(gr4_bus1__0_27),
        .O(\badr[6]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[7]_INST_0_i_1 
       (.I0(\badr[7]_INST_0_i_2_n_0 ),
        .I1(\badr[7]_INST_0_i_3_n_0 ),
        .I2(\abus_o[7] ),
        .I3(\abus_o[7]_0 ),
        .I4(\abus_o[7]_1 ),
        .I5(\abus_o[7]_2 ),
        .O(\grn_reg[7]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_2_1 [5]),
        .I1(gr1_bus1__0_24),
        .I2(\badr[15]_INST_0_i_2_2 [5]),
        .I3(gr2_bus1__0_25),
        .O(\badr[7]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_7 [5]),
        .I1(gr7_bus1__0_30),
        .I2(\badr[15]_INST_0_i_2_8 [5]),
        .I3(gr0_bus1__0_31),
        .O(\badr[7]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_5 [5]),
        .I1(gr5_bus1__0_28),
        .I2(\badr[15]_INST_0_i_2_6 [5]),
        .I3(gr6_bus1__0_29),
        .O(\badr[7]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_0 [5]),
        .I1(gr5_bus1__0_38),
        .I2(\badr[15]_INST_0_i_3_1 [5]),
        .I3(gr6_bus1__0_39),
        .O(\badr[7]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_2 [7]),
        .I1(gr1_bus1__0_40),
        .I2(\badr[15]_INST_0_i_3_3 [7]),
        .I3(gr2_bus1__0_41),
        .O(\badr[7]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[7]_INST_0_i_2 
       (.I0(\badr[7]_INST_0_i_8_n_0 ),
        .I1(\badr[7]_INST_0_i_9_n_0 ),
        .I2(\badr[7]_INST_0_i_10_n_0 ),
        .I3(\badr[7]_INST_0_i_11_n_0 ),
        .I4(\badr[7]_INST_0_i_12_n_0 ),
        .I5(\badr[7]_INST_0_i_1_1 ),
        .O(\badr[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[7]_INST_0_i_3 
       (.I0(\badr[7]_INST_0_i_14_n_0 ),
        .I1(\badr[15]_INST_0_i_1_2 [5]),
        .I2(gr3_bus1__0),
        .I3(\badr[15]_INST_0_i_1_3 [5]),
        .I4(gr4_bus1__0),
        .I5(\badr[7]_INST_0_i_15_n_0 ),
        .O(\badr[7]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_8 
       (.I0(out[7]),
        .I1(gr7_bus1__0_42),
        .I2(\badr[15]_INST_0_i_2_0 [7]),
        .I3(gr0_bus1__0_43),
        .O(\badr[7]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_3 [5]),
        .I1(gr3_bus1__0_26),
        .I2(\badr[15]_INST_0_i_2_4 [5]),
        .I3(gr4_bus1__0_27),
        .O(\badr[7]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[8]_INST_0_i_1 
       (.I0(\badr[8]_INST_0_i_2_n_0 ),
        .I1(\badr[8]_INST_0_i_3_n_0 ),
        .I2(\abus_o[8] ),
        .I3(\abus_o[8]_0 ),
        .I4(\abus_o[8]_1 ),
        .I5(\abus_o[8]_2 ),
        .O(\grn_reg[8]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_2_1 [6]),
        .I1(gr1_bus1__0_24),
        .I2(\badr[15]_INST_0_i_2_2 [6]),
        .I3(gr2_bus1__0_25),
        .O(\badr[8]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_7 [6]),
        .I1(gr7_bus1__0_30),
        .I2(\badr[15]_INST_0_i_2_8 [6]),
        .I3(gr0_bus1__0_31),
        .O(\badr[8]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_5 [6]),
        .I1(gr5_bus1__0_28),
        .I2(\badr[15]_INST_0_i_2_6 [6]),
        .I3(gr6_bus1__0_29),
        .O(\badr[8]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_0 [6]),
        .I1(gr5_bus1__0_38),
        .I2(\badr[15]_INST_0_i_3_1 [6]),
        .I3(gr6_bus1__0_39),
        .O(\badr[8]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_2 [8]),
        .I1(gr1_bus1__0_40),
        .I2(\badr[15]_INST_0_i_3_3 [8]),
        .I3(gr2_bus1__0_41),
        .O(\badr[8]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[8]_INST_0_i_2 
       (.I0(\badr[8]_INST_0_i_8_n_0 ),
        .I1(\badr[8]_INST_0_i_9_n_0 ),
        .I2(\badr[8]_INST_0_i_10_n_0 ),
        .I3(\badr[8]_INST_0_i_11_n_0 ),
        .I4(\badr[8]_INST_0_i_12_n_0 ),
        .I5(\badr[8]_INST_0_i_1_1 ),
        .O(\badr[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[8]_INST_0_i_3 
       (.I0(\badr[8]_INST_0_i_14_n_0 ),
        .I1(\badr[15]_INST_0_i_1_2 [6]),
        .I2(gr3_bus1__0),
        .I3(\badr[15]_INST_0_i_1_3 [6]),
        .I4(gr4_bus1__0),
        .I5(\badr[8]_INST_0_i_15_n_0 ),
        .O(\badr[8]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_8 
       (.I0(out[8]),
        .I1(gr7_bus1__0_42),
        .I2(\badr[15]_INST_0_i_2_0 [8]),
        .I3(gr0_bus1__0_43),
        .O(\badr[8]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_3 [6]),
        .I1(gr3_bus1__0_26),
        .I2(\badr[15]_INST_0_i_2_4 [6]),
        .I3(gr4_bus1__0_27),
        .O(\badr[8]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[9]_INST_0_i_1 
       (.I0(\badr[9]_INST_0_i_2_n_0 ),
        .I1(\badr[9]_INST_0_i_3_n_0 ),
        .I2(\abus_o[9] ),
        .I3(\abus_o[9]_0 ),
        .I4(\abus_o[9]_1 ),
        .I5(\abus_o[9]_2 ),
        .O(\grn_reg[9]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_2_1 [7]),
        .I1(gr1_bus1__0_24),
        .I2(\badr[15]_INST_0_i_2_2 [7]),
        .I3(gr2_bus1__0_25),
        .O(\badr[9]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_7 [7]),
        .I1(gr7_bus1__0_30),
        .I2(\badr[15]_INST_0_i_2_8 [7]),
        .I3(gr0_bus1__0_31),
        .O(\badr[9]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_5 [7]),
        .I1(gr5_bus1__0_28),
        .I2(\badr[15]_INST_0_i_2_6 [7]),
        .I3(gr6_bus1__0_29),
        .O(\badr[9]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_0 [7]),
        .I1(gr5_bus1__0_38),
        .I2(\badr[15]_INST_0_i_3_1 [7]),
        .I3(gr6_bus1__0_39),
        .O(\badr[9]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_2 [9]),
        .I1(gr1_bus1__0_40),
        .I2(\badr[15]_INST_0_i_3_3 [9]),
        .I3(gr2_bus1__0_41),
        .O(\badr[9]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[9]_INST_0_i_2 
       (.I0(\badr[9]_INST_0_i_8_n_0 ),
        .I1(\badr[9]_INST_0_i_9_n_0 ),
        .I2(\badr[9]_INST_0_i_10_n_0 ),
        .I3(\badr[9]_INST_0_i_11_n_0 ),
        .I4(\badr[9]_INST_0_i_12_n_0 ),
        .I5(\badr[9]_INST_0_i_1_1 ),
        .O(\badr[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[9]_INST_0_i_3 
       (.I0(\badr[9]_INST_0_i_14_n_0 ),
        .I1(\badr[15]_INST_0_i_1_2 [7]),
        .I2(gr3_bus1__0),
        .I3(\badr[15]_INST_0_i_1_3 [7]),
        .I4(gr4_bus1__0),
        .I5(\badr[9]_INST_0_i_15_n_0 ),
        .O(\badr[9]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_8 
       (.I0(out[9]),
        .I1(gr7_bus1__0_42),
        .I2(\badr[15]_INST_0_i_2_0 [9]),
        .I3(gr0_bus1__0_43),
        .O(\badr[9]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_3 [7]),
        .I1(gr3_bus1__0_26),
        .I2(\badr[15]_INST_0_i_2_4 [7]),
        .I3(gr4_bus1__0_27),
        .O(\badr[9]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_2 [2]),
        .I1(gr1_bus1__0_36),
        .I2(\badr[15]_INST_0_i_3_3 [2]),
        .I3(gr2_bus1__0_37),
        .O(\grn_reg[2]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_19 
       (.I0(out[2]),
        .I1(gr7_bus1__0_14),
        .I2(\badr[15]_INST_0_i_2_0 [2]),
        .I3(gr0_bus1__0_15),
        .O(\grn_reg[2]_2 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_3_2 [3]),
        .I1(gr1_bus1__0_36),
        .I2(\badr[15]_INST_0_i_3_3 [3]),
        .I3(gr2_bus1__0_37),
        .O(\grn_reg[3]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_21 
       (.I0(out[3]),
        .I1(gr7_bus1__0_14),
        .I2(\badr[15]_INST_0_i_2_0 [3]),
        .I3(gr0_bus1__0_15),
        .O(\grn_reg[3]_2 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_2 [4]),
        .I1(gr1_bus1__0_36),
        .I2(\badr[15]_INST_0_i_3_3 [4]),
        .I3(gr2_bus1__0_37),
        .O(\grn_reg[4]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_20 
       (.I0(out[4]),
        .I1(gr7_bus1__0_14),
        .I2(\badr[15]_INST_0_i_2_0 [4]),
        .I3(gr0_bus1__0_15),
        .O(\grn_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_14 
       (.I0(\bdatw[13]_INST_0_i_21_n_0 ),
        .I1(\bdatw[13]_INST_0_i_22_n_0 ),
        .I2(out[5]),
        .I3(gr7_bus1__0_14),
        .I4(\badr[15]_INST_0_i_2_0 [5]),
        .I5(gr0_bus1__0_15),
        .O(\grn_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[13]_INST_0_i_21 
       (.I0(\bdatw[13]_INST_0_i_39_n_0 ),
        .I1(\badr[15]_INST_0_i_1_2 [3]),
        .I2(gr3_bus1__0_32),
        .I3(\badr[15]_INST_0_i_1_3 [3]),
        .I4(gr4_bus1__0_33),
        .I5(\bdatw[13]_INST_0_i_40_n_0 ),
        .O(\bdatw[13]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_22 
       (.I0(\iv[3]_i_6 [0]),
        .I1(\bdatw[14]_INST_0_i_15_0 ),
        .I2(\bdatw[13]_INST_0_i_41_n_0 ),
        .I3(\bdatw[13]_INST_0_i_42_n_0 ),
        .I4(\bdatw[13]_INST_0_i_43_n_0 ),
        .I5(\bdatw[13]_INST_0_i_44_n_0 ),
        .O(\bdatw[13]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_39 
       (.I0(\badr[15]_INST_0_i_3_0 [3]),
        .I1(gr5_bus1__0_34),
        .I2(\badr[15]_INST_0_i_3_1 [3]),
        .I3(gr6_bus1__0_35),
        .O(\bdatw[13]_INST_0_i_39_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_40 
       (.I0(\badr[15]_INST_0_i_3_2 [5]),
        .I1(gr1_bus1__0_36),
        .I2(\badr[15]_INST_0_i_3_3 [5]),
        .I3(gr2_bus1__0_37),
        .O(\bdatw[13]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_41 
       (.I0(\badr[15]_INST_0_i_2_5 [3]),
        .I1(gr5_bus1__0_20),
        .I2(\badr[15]_INST_0_i_2_6 [3]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[13]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_42 
       (.I0(\badr[15]_INST_0_i_2_7 [3]),
        .I1(gr7_bus1__0_22),
        .I2(\badr[15]_INST_0_i_2_8 [3]),
        .I3(gr0_bus1__0_23),
        .O(\bdatw[13]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_43 
       (.I0(\badr[15]_INST_0_i_2_1 [3]),
        .I1(gr1_bus1__0_16),
        .I2(\badr[15]_INST_0_i_2_2 [3]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[13]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_44 
       (.I0(\badr[15]_INST_0_i_2_3 [3]),
        .I1(gr3_bus1__0_18),
        .I2(\badr[15]_INST_0_i_2_4 [3]),
        .I3(gr4_bus1__0_19),
        .O(\bdatw[13]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_15 
       (.I0(\bdatw[14]_INST_0_i_22_n_0 ),
        .I1(\bdatw[14]_INST_0_i_23_n_0 ),
        .I2(out[6]),
        .I3(gr7_bus1__0_14),
        .I4(\badr[15]_INST_0_i_2_0 [6]),
        .I5(gr0_bus1__0_15),
        .O(\grn_reg[6]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[14]_INST_0_i_22 
       (.I0(\bdatw[14]_INST_0_i_40_n_0 ),
        .I1(\badr[15]_INST_0_i_1_2 [4]),
        .I2(gr3_bus1__0_32),
        .I3(\badr[15]_INST_0_i_1_3 [4]),
        .I4(gr4_bus1__0_33),
        .I5(\bdatw[14]_INST_0_i_41_n_0 ),
        .O(\bdatw[14]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_23 
       (.I0(\iv[3]_i_6 [1]),
        .I1(\bdatw[14]_INST_0_i_15_0 ),
        .I2(\bdatw[14]_INST_0_i_42_n_0 ),
        .I3(\bdatw[14]_INST_0_i_43_n_0 ),
        .I4(\bdatw[14]_INST_0_i_44_n_0 ),
        .I5(\bdatw[14]_INST_0_i_45_n_0 ),
        .O(\bdatw[14]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_40 
       (.I0(\badr[15]_INST_0_i_3_0 [4]),
        .I1(gr5_bus1__0_34),
        .I2(\badr[15]_INST_0_i_3_1 [4]),
        .I3(gr6_bus1__0_35),
        .O(\bdatw[14]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_41 
       (.I0(\badr[15]_INST_0_i_3_2 [6]),
        .I1(gr1_bus1__0_36),
        .I2(\badr[15]_INST_0_i_3_3 [6]),
        .I3(gr2_bus1__0_37),
        .O(\bdatw[14]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_42 
       (.I0(\badr[15]_INST_0_i_2_5 [4]),
        .I1(gr5_bus1__0_20),
        .I2(\badr[15]_INST_0_i_2_6 [4]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[14]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_43 
       (.I0(\badr[15]_INST_0_i_2_7 [4]),
        .I1(gr7_bus1__0_22),
        .I2(\badr[15]_INST_0_i_2_8 [4]),
        .I3(gr0_bus1__0_23),
        .O(\bdatw[14]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_44 
       (.I0(\badr[15]_INST_0_i_2_1 [4]),
        .I1(gr1_bus1__0_16),
        .I2(\badr[15]_INST_0_i_2_2 [4]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[14]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_45 
       (.I0(\badr[15]_INST_0_i_2_3 [4]),
        .I1(gr3_bus1__0_18),
        .I2(\badr[15]_INST_0_i_2_4 [4]),
        .I3(gr4_bus1__0_19),
        .O(\bdatw[14]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_2 [0]),
        .I1(gr1_bus1__0_36),
        .I2(\badr[15]_INST_0_i_3_3 [0]),
        .I3(gr2_bus1__0_37),
        .O(\grn_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_20 
       (.I0(out[0]),
        .I1(gr7_bus1__0_14),
        .I2(\badr[15]_INST_0_i_2_0 [0]),
        .I3(gr0_bus1__0_15),
        .O(\grn_reg[0]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_3_2 [1]),
        .I1(gr1_bus1__0_36),
        .I2(\badr[15]_INST_0_i_3_3 [1]),
        .I3(gr2_bus1__0_37),
        .O(\grn_reg[1]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_21 
       (.I0(out[1]),
        .I1(gr7_bus1__0_14),
        .I2(\badr[15]_INST_0_i_2_0 [1]),
        .I3(gr0_bus1__0_15),
        .O(\grn_reg[1]_2 ));
  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [9]),
        .Q(Q[9]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[10]_i_16 
       (.I0(\grn_reg[15]_0 ),
        .I1(\iv[11]_i_7 ),
        .O(\iv[2]_i_23 ));
  LUT5 #(
    .INIT(32'hFAFCFA0C)) 
    \iv[10]_i_20 
       (.I0(\badr[12]_INST_0_i_1 ),
        .I1(\badr[10]_INST_0_i_1_1 ),
        .I2(\iv[12]_i_7 ),
        .I3(\iv[1]_i_6 ),
        .I4(\badr[15]_INST_0_i_1_0 ),
        .O(\iv[14]_i_39_0 ));
  LUT6 #(
    .INIT(64'hD0DFC0C0D0DFCFCF)) 
    \iv[10]_i_21 
       (.I0(\iv[10]_i_9 ),
        .I1(\iv[10]_i_9_0 ),
        .I2(\iv[12]_i_7 ),
        .I3(\iv[10]_i_9_1 ),
        .I4(\iv[1]_i_6 ),
        .I5(\badr[2]_INST_0_i_1_0 ),
        .O(\sr_reg[6]_9 ));
  LUT6 #(
    .INIT(64'hAFAFCFCFA0AFC0C0)) 
    \iv[10]_i_22 
       (.I0(\badr[4]_INST_0_i_1 ),
        .I1(\iv[14]_i_42_n_0 ),
        .I2(\iv[12]_i_7 ),
        .I3(\iv[10]_i_29_n_0 ),
        .I4(\iv[1]_i_6 ),
        .I5(\iv[10]_i_9_2 ),
        .O(\iv[10]_i_30 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[10]_i_25 
       (.I0(\iv[3]_i_6_1 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\iv[3]_i_6_2 ),
        .O(\badr[12]_INST_0_i_1 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[10]_i_28 
       (.I0(\grn_reg[1]_0 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\grn_reg[2]_0 ),
        .O(\badr[2]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[10]_i_29 
       (.I0(\grn_reg[7]_0 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\grn_reg[8]_0 ),
        .O(\iv[10]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[11]_i_15 
       (.I0(\iv[9]_i_5_0 ),
        .I1(\iv[1]_i_6_0 ),
        .I2(\iv[12]_i_7 ),
        .I3(\badr[13]_INST_0_i_1 ),
        .I4(\iv[1]_i_6 ),
        .I5(\badr[11]_INST_0_i_1 ),
        .O(\sr_reg[6]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[11]_i_16 
       (.I0(\badr[8]_INST_0_i_1_0 ),
        .I1(\badr[6]_INST_0_i_1_0 ),
        .I2(\iv[12]_i_7 ),
        .I3(\iv[9]_i_5_1 ),
        .I4(\iv[1]_i_6 ),
        .I5(\iv[9]_i_5_2 ),
        .O(\iv[13]_i_33 ));
  LUT6 #(
    .INIT(64'h0305FFFF03050305)) 
    \iv[11]_i_17 
       (.I0(\iv[8]_i_10 ),
        .I1(\iv[3]_i_6_1 ),
        .I2(\iv[11]_i_7 ),
        .I3(\iv[3]_i_6_0 ),
        .I4(\iv[1]_i_6 ),
        .I5(\sr_reg[6]_0 ),
        .O(\sr_reg[6]_10 ));
  LUT6 #(
    .INIT(64'hFFFFF3F5F0F0F3F5)) 
    \iv[11]_i_18 
       (.I0(\grn_reg[3]_0 ),
        .I1(\grn_reg[2]_0 ),
        .I2(\iv[12]_i_7 ),
        .I3(\iv[3]_i_6_0 ),
        .I4(\iv[1]_i_6 ),
        .I5(\badr[1]_INST_0_i_1_1 ),
        .O(\iv[13]_i_23_0 ));
  LUT6 #(
    .INIT(64'h00B8FFB8FFB8FFB8)) 
    \iv[11]_i_19 
       (.I0(\badr[13]_INST_0_i_1 ),
        .I1(\iv[1]_i_6 ),
        .I2(\badr[11]_INST_0_i_1 ),
        .I3(\iv[12]_i_7 ),
        .I4(\grn_reg[15]_0 ),
        .I5(\iv[11]_i_8 ),
        .O(\iv[11]_i_25 ));
  LUT6 #(
    .INIT(64'h55335533FFFF0F00)) 
    \iv[11]_i_20 
       (.I0(\badr[5]_INST_0_i_1_1 ),
        .I1(\iv[7]_i_9_0 ),
        .I2(\iv[11]_i_8_0 ),
        .I3(\iv[1]_i_6 ),
        .I4(\iv[11]_i_8_1 ),
        .I5(\iv[12]_i_7 ),
        .O(\iv[2]_i_8 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[11]_i_23 
       (.I0(\iv[3]_i_6_2 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\iv[3]_i_6_3 ),
        .O(\badr[11]_INST_0_i_1 ));
  LUT3 #(
    .INIT(8'h3B)) 
    \iv[12]_i_17 
       (.I0(\iv[12]_i_7 ),
        .I1(\bdatw[8]_INST_0_i_2 ),
        .I2(\sr_reg[6]_11 ),
        .O(\sr_reg[6]_13 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[12]_i_20 
       (.I0(\grn_reg[2]_0 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\grn_reg[1]_0 ),
        .O(\badr[1]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_22 
       (.I0(\iv[8]_i_7 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\grn_reg[5]_0 ),
        .O(\badr[5]_INST_0_i_1_1 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_23 
       (.I0(\iv[3]_i_6_4 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\grn_reg[1]_0 ),
        .O(\badr[1]_INST_0_i_1_1 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_24 
       (.I0(\grn_reg[15]_0 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\iv[3]_i_6 [1]),
        .O(\sr_reg[6]_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_28 
       (.I0(\grn_reg[2]_0 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\grn_reg[3]_0 ),
        .O(\badr[3]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_29 
       (.I0(\iv[3]_i_6_3 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\grn_reg[10]_0 ),
        .O(\badr[10]_INST_0_i_1_1 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_30 
       (.I0(\grn_reg[9]_0 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\grn_reg[8]_0 ),
        .O(\badr[8]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_31 
       (.I0(\grn_reg[7]_0 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\grn_reg[6]_0 ),
        .O(\badr[6]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_36 
       (.I0(\iv[8]_i_10 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\iv[3]_i_6_1 ),
        .O(\badr[13]_INST_0_i_1 ));
  LUT5 #(
    .INIT(32'hBB888B8B)) 
    \iv[14]_i_14 
       (.I0(\iv[14]_i_34_n_0 ),
        .I1(\iv[6]_i_2 ),
        .I2(\iv[14]_i_4 ),
        .I3(\iv[14]_i_4_0 ),
        .I4(\iv[12]_i_7 ),
        .O(\iv[2]_i_8_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[14]_i_28 
       (.I0(\grn_reg[8]_0 ),
        .I1(\grn_reg[7]_0 ),
        .I2(\grn_reg[6]_0 ),
        .I3(\grn_reg[5]_0 ),
        .I4(\iv[1]_i_6 ),
        .I5(\iv[3]_i_6_0 ),
        .O(\bdatw[8]_INST_0_i_2_4 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[14]_i_30 
       (.I0(\badr[15]_INST_0_i_1_0 ),
        .I1(\iv[11]_i_7 ),
        .I2(\sr_reg[6]_2 ),
        .O(\sr_reg[6]_3 ));
  LUT6 #(
    .INIT(64'h0F0F555500FF3333)) 
    \iv[14]_i_31 
       (.I0(\iv[8]_i_7 ),
        .I1(\grn_reg[3]_0 ),
        .I2(\grn_reg[2]_0 ),
        .I3(\grn_reg[1]_0 ),
        .I4(\iv[11]_i_7 ),
        .I5(\iv[3]_i_6_0 ),
        .O(\bdatw[8]_INST_0_i_2_0 ));
  LUT5 #(
    .INIT(32'h00B8FFB8)) 
    \iv[14]_i_34 
       (.I0(\badr[4]_INST_0_i_1 ),
        .I1(\iv[1]_i_6 ),
        .I2(\iv[14]_i_42_n_0 ),
        .I3(\iv[12]_i_7 ),
        .I4(\bdatw[12]_INST_0_i_2 ),
        .O(\iv[14]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[14]_i_37 
       (.I0(\badr[4]_INST_0_i_1 ),
        .I1(\iv[1]_i_6 ),
        .I2(\iv[14]_i_42_n_0 ),
        .O(\iv[14]_i_42_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \iv[14]_i_39 
       (.I0(\iv[8]_i_10 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\grn_reg[15]_0 ),
        .O(\badr[15]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[14]_i_40 
       (.I0(\iv[3]_i_6_4 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\iv[3]_i_6 [1]),
        .O(\sr_reg[6]_2 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[14]_i_41 
       (.I0(\grn_reg[3]_0 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\iv[8]_i_7 ),
        .O(\badr[4]_INST_0_i_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[14]_i_42 
       (.I0(\grn_reg[5]_0 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\grn_reg[6]_0 ),
        .O(\iv[14]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[14]_i_43 
       (.I0(\grn_reg[9]_0 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\grn_reg[10]_0 ),
        .O(\badr[10]_INST_0_i_1_0 ));
  LUT6 #(
    .INIT(64'h5533FF0FFF33550F)) 
    \iv[2]_i_10 
       (.I0(\grn_reg[1]_0 ),
        .I1(\grn_reg[2]_0 ),
        .I2(\iv[3]_i_6_4 ),
        .I3(\iv[3]_i_6_0 ),
        .I4(\iv[10]_i_23 ),
        .I5(\iv[10]_i_23_0 ),
        .O(\bdatw[12]_INST_0_i_2 ));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \iv[2]_i_7 
       (.I0(\grn_reg[2]_0 ),
        .I1(\grn_reg[1]_0 ),
        .I2(\iv[3]_i_6_4 ),
        .I3(\iv[3]_i_6 [1]),
        .I4(\iv[1]_i_6 ),
        .I5(\iv[3]_i_6_0 ),
        .O(\sr_reg[6]_8 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[3]_i_12 
       (.I0(\grn_reg[2]_0 ),
        .I1(\iv[6]_i_6 ),
        .O(\iv[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[3]_i_13 
       (.I0(\badr[9]_INST_0_i_1_0 ),
        .I1(\badr[7]_INST_0_i_1_0 ),
        .I2(\iv[12]_i_7 ),
        .I3(\badr[5]_INST_0_i_1_0 ),
        .I4(\iv[1]_i_6 ),
        .I5(\iv[6]_i_16_n_0 ),
        .O(\iv[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAA33AA330F000FFF)) 
    \iv[3]_i_15 
       (.I0(\iv[14]_i_42_n_0 ),
        .I1(\iv[10]_i_29_n_0 ),
        .I2(\badr[10]_INST_0_i_1_0 ),
        .I3(\iv[1]_i_6 ),
        .I4(\iv[7]_i_22_n_0 ),
        .I5(\iv[12]_i_7 ),
        .O(\iv[2]_i_8_1 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[3]_i_16 
       (.I0(\iv[3]_i_6_1 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\iv[8]_i_10 ),
        .O(\badr[14]_INST_0_i_1 ));
  LUT6 #(
    .INIT(64'hFFF4444444F44444)) 
    \iv[3]_i_7 
       (.I0(\iv[3]_i_12_n_0 ),
        .I1(\iv[3]_i_2 ),
        .I2(\iv[3]_i_13_n_0 ),
        .I3(\iv[6]_i_2 ),
        .I4(\iv[9]_i_4 ),
        .I5(\iv[11]_i_25 ),
        .O(\stat_reg[2] ));
  LUT6 #(
    .INIT(64'hF0F3FFF3F0F5FFF5)) 
    \iv[4]_i_14 
       (.I0(\grn_reg[2]_0 ),
        .I1(\grn_reg[1]_0 ),
        .I2(\iv[12]_i_7 ),
        .I3(\iv[11]_i_7 ),
        .I4(\badr[4]_INST_0_i_1 ),
        .I5(\iv[3]_i_6_0 ),
        .O(\bdatw[8]_INST_0_i_2 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[5]_i_14 
       (.I0(\grn_reg[8]_0 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\grn_reg[7]_0 ),
        .O(\badr[7]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[5]_i_15 
       (.I0(\grn_reg[6]_0 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\grn_reg[5]_0 ),
        .O(\badr[5]_INST_0_i_1_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[6]_i_13 
       (.I0(\badr[12]_INST_0_i_1 ),
        .I1(\badr[10]_INST_0_i_1_1 ),
        .I2(\iv[12]_i_7 ),
        .I3(\badr[8]_INST_0_i_1_0 ),
        .I4(\iv[1]_i_6 ),
        .I5(\badr[6]_INST_0_i_1_0 ),
        .O(\iv[13]_i_31_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[6]_i_14 
       (.I0(\badr[15]_INST_0_i_1_0 ),
        .I1(\sr_reg[6]_2 ),
        .I2(\iv[12]_i_7 ),
        .I3(\badr[1]_INST_0_i_1_0 ),
        .I4(\iv[11]_i_7 ),
        .I5(\iv[6]_i_16_n_0 ),
        .O(\sr_reg[6]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[6]_i_15 
       (.I0(\grn_reg[5]_0 ),
        .I1(\iv[6]_i_6 ),
        .O(\iv[14]_i_8 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[6]_i_16 
       (.I0(\iv[8]_i_7 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\grn_reg[3]_0 ),
        .O(\iv[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0202330032323300)) 
    \iv[6]_i_8 
       (.I0(\sr_reg[6]_8 ),
        .I1(\iv[6]_i_2 ),
        .I2(\iv[6]_i_6 ),
        .I3(\iv[14]_i_42_0 ),
        .I4(\iv[12]_i_7 ),
        .I5(\bdatw[12]_INST_0_i_2 ),
        .O(\sr_reg[6]_7 ));
  LUT6 #(
    .INIT(64'h330033FF0F550F55)) 
    \iv[7]_i_14 
       (.I0(\grn_reg[15]_0 ),
        .I1(\grn_reg[1]_0 ),
        .I2(\iv[3]_i_6_4 ),
        .I3(\iv[1]_i_6 ),
        .I4(\iv[3]_i_6 [1]),
        .I5(\iv[3]_i_6_0 ),
        .O(\sr_reg[6]_12 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[7]_i_15 
       (.I0(\grn_reg[5]_0 ),
        .I1(\iv[8]_i_7 ),
        .I2(\grn_reg[3]_0 ),
        .I3(\grn_reg[2]_0 ),
        .I4(\iv[1]_i_6 ),
        .I5(\iv[3]_i_6_0 ),
        .O(\bdatw[8]_INST_0_i_2_1 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[7]_i_17 
       (.I0(\iv[8]_i_10 ),
        .I1(\iv[3]_i_6_1 ),
        .I2(\iv[3]_i_6_2 ),
        .I3(\iv[3]_i_6_3 ),
        .I4(\iv[1]_i_6 ),
        .I5(\iv[3]_i_6_0 ),
        .O(\bdatw[8]_INST_0_i_2_9 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[7]_i_18 
       (.I0(\grn_reg[10]_0 ),
        .I1(\grn_reg[9]_0 ),
        .I2(\grn_reg[8]_0 ),
        .I3(\grn_reg[7]_0 ),
        .I4(\iv[1]_i_6 ),
        .I5(\iv[3]_i_6_0 ),
        .O(\bdatw[8]_INST_0_i_2_6 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[7]_i_19 
       (.I0(\badr[1]_INST_0_i_1_1 ),
        .I1(\badr[3]_INST_0_i_1_0 ),
        .I2(\iv[12]_i_7 ),
        .I3(\badr[5]_INST_0_i_1_1 ),
        .I4(\iv[1]_i_6 ),
        .I5(\iv[7]_i_9_0 ),
        .O(\iv[13]_i_25 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0CFC0)) 
    \iv[7]_i_20 
       (.I0(\badr[10]_INST_0_i_1_0 ),
        .I1(\iv[7]_i_22_n_0 ),
        .I2(\iv[12]_i_7 ),
        .I3(\iv[7]_i_9 ),
        .I4(\iv[1]_i_6 ),
        .I5(\sr_reg[6]_0 ),
        .O(\sr_reg[6] ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[7]_i_22 
       (.I0(\iv[3]_i_6_3 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\iv[3]_i_6_2 ),
        .O(\iv[7]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[8]_i_15 
       (.I0(\badr[1]_INST_0_i_1_0 ),
        .I1(\iv[1]_i_6 ),
        .I2(\sr_reg[6]_2 ),
        .O(\sr_reg[6]_6 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[8]_i_16 
       (.I0(\grn_reg[6]_0 ),
        .I1(\grn_reg[5]_0 ),
        .I2(\iv[8]_i_7 ),
        .I3(\grn_reg[3]_0 ),
        .I4(\iv[1]_i_6 ),
        .I5(\iv[3]_i_6_0 ),
        .O(\bdatw[8]_INST_0_i_2_2 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[8]_i_17 
       (.I0(\iv[3]_i_6_3 ),
        .I1(\grn_reg[10]_0 ),
        .I2(\grn_reg[9]_0 ),
        .I3(\grn_reg[8]_0 ),
        .I4(\iv[1]_i_6 ),
        .I5(\iv[3]_i_6_0 ),
        .O(\bdatw[8]_INST_0_i_2_7 ));
  LUT5 #(
    .INIT(32'h53FF5300)) 
    \iv[8]_i_18 
       (.I0(\iv[3]_i_6_1 ),
        .I1(\iv[3]_i_6_2 ),
        .I2(\iv[3]_i_6_0 ),
        .I3(\iv[11]_i_7 ),
        .I4(\badr[15]_INST_0_i_1_0 ),
        .O(\iv[14]_i_39_1 ));
  LUT5 #(
    .INIT(32'hF0CCF0AA)) 
    \iv[8]_i_20 
       (.I0(\grn_reg[8]_0 ),
        .I1(\grn_reg[7]_0 ),
        .I2(\iv[14]_i_42_n_0 ),
        .I3(\iv[1]_i_6 ),
        .I4(\iv[3]_i_6_0 ),
        .O(\bdatw[8]_INST_0_i_2_3 ));
  LUT6 #(
    .INIT(64'h330033FF550F550F)) 
    \iv[8]_i_21 
       (.I0(\grn_reg[15]_0 ),
        .I1(\iv[8]_i_10 ),
        .I2(\iv[3]_i_6_4 ),
        .I3(\iv[1]_i_6 ),
        .I4(\iv[3]_i_6 [1]),
        .I5(\iv[3]_i_6_0 ),
        .O(\sr_reg[6]_11 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \iv[8]_i_22 
       (.I0(\iv[3]_i_6_1 ),
        .I1(\iv[3]_i_6_2 ),
        .I2(\iv[3]_i_6_3 ),
        .I3(\grn_reg[10]_0 ),
        .I4(\iv[1]_i_6 ),
        .I5(\iv[3]_i_6_0 ),
        .O(\bdatw[8]_INST_0_i_2_8 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[9]_i_11 
       (.I0(\grn_reg[1]_0 ),
        .I1(\iv[9]_i_4 ),
        .O(\stat_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[9]_i_13 
       (.I0(\badr[11]_INST_0_i_1 ),
        .I1(\badr[9]_INST_0_i_1_0 ),
        .I2(\iv[12]_i_7 ),
        .I3(\iv[1]_i_6_0 ),
        .I4(\iv[1]_i_6 ),
        .I5(\badr[13]_INST_0_i_1 ),
        .O(\sr_reg[6]_4 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[9]_i_14 
       (.I0(\iv[9]_i_5_2 ),
        .I1(\iv[9]_i_5_0 ),
        .I2(\iv[12]_i_7 ),
        .I3(\badr[6]_INST_0_i_1_0 ),
        .I4(\iv[1]_i_6 ),
        .I5(\iv[9]_i_5_1 ),
        .O(\iv[9]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h55CCFFF055CC00F0)) 
    \iv[9]_i_15 
       (.I0(\grn_reg[15]_0 ),
        .I1(\badr[11]_INST_0_i_1 ),
        .I2(\badr[9]_INST_0_i_1_0 ),
        .I3(\iv[12]_i_7 ),
        .I4(\iv[1]_i_6 ),
        .I5(\badr[13]_INST_0_i_1 ),
        .O(\iv[13]_i_36_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[9]_i_16 
       (.I0(\badr[11]_INST_0_i_1 ),
        .I1(\badr[9]_INST_0_i_1_0 ),
        .I2(\iv[12]_i_7 ),
        .I3(\iv[9]_i_6 ),
        .I4(\iv[1]_i_6 ),
        .I5(\badr[13]_INST_0_i_1 ),
        .O(\iv[13]_i_36_1 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \iv[9]_i_19 
       (.I0(\grn_reg[9]_0 ),
        .I1(\grn_reg[8]_0 ),
        .I2(\grn_reg[7]_0 ),
        .I3(\grn_reg[6]_0 ),
        .I4(\iv[1]_i_6 ),
        .I5(\iv[3]_i_6_0 ),
        .O(\bdatw[8]_INST_0_i_2_5 ));
  LUT6 #(
    .INIT(64'hCA00FFFFCA00CA00)) 
    \iv[9]_i_20 
       (.I0(\grn_reg[3]_0 ),
        .I1(\grn_reg[2]_0 ),
        .I2(\iv[3]_i_6_0 ),
        .I3(\iv[1]_i_6 ),
        .I4(\badr[5]_INST_0_i_1_1 ),
        .I5(\iv[11]_i_7 ),
        .O(\iv[2]_i_23_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[9]_i_21 
       (.I0(\grn_reg[10]_0 ),
        .I1(\iv[3]_i_6_0 ),
        .I2(\grn_reg[9]_0 ),
        .O(\badr[9]_INST_0_i_1_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00350F35)) 
    \iv[9]_i_5 
       (.I0(\sr_reg[6]_4 ),
        .I1(\iv[9]_i_14_n_0 ),
        .I2(\iv[6]_i_2 ),
        .I3(\iv[9]_i_2 ),
        .I4(\iv[13]_i_36_0 ),
        .I5(\iv[9]_i_2_0 ),
        .O(\iv[14]_i_29 ));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_16
   (SR,
    Q,
    rst_n,
    E,
    \grn_reg[15]_0 ,
    clk);
  output [0:0]SR;
  output [15:0]Q;
  input rst_n;
  input [0:0]E;
  input [15:0]\grn_reg[15]_0 ;
  input clk;

  wire [0:0]E;
  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [15:0]\grn_reg[15]_0 ;
  wire rst_n;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\grn_reg[15]_0 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\grn_reg[15]_0 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\grn_reg[15]_0 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\grn_reg[15]_0 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\grn_reg[15]_0 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\grn_reg[15]_0 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\grn_reg[15]_0 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\grn_reg[15]_0 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\grn_reg[15]_0 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\grn_reg[15]_0 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\grn_reg[15]_0 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\grn_reg[15]_0 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\grn_reg[15]_0 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\grn_reg[15]_0 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\grn_reg[15]_0 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\grn_reg[15]_0 [9]),
        .Q(Q[9]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \pc[15]_i_1 
       (.I0(rst_n),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_17
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_18
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_19
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_2
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_20
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_21
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_22
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_23
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_24
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_25
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_26
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_27
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_28
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_29
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_3
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_30
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_31
   (\grn_reg[4]_0 ,
    \grn_reg[5]_0 ,
    \grn_reg[6]_0 ,
    \grn_reg[1]_0 ,
    \grn_reg[2]_0 ,
    \grn_reg[3]_0 ,
    \grn_reg[5]_1 ,
    \grn_reg[6]_1 ,
    \grn_reg[7]_0 ,
    \grn_reg[8]_0 ,
    \grn_reg[9]_0 ,
    \grn_reg[10]_0 ,
    \grn_reg[15]_0 ,
    Q,
    \bdatw[8]_INST_0_i_2 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \bdatw[8]_INST_0_i_2_1 ,
    \bdatw[8]_INST_0_i_2_2 ,
    \bdatw[9]_INST_0_i_2 ,
    \bdatw[9]_INST_0_i_2_0 ,
    \bdatw[9]_INST_0_i_2_1 ,
    \bdatw[9]_INST_0_i_2_2 ,
    \bdatw[10]_INST_0_i_2 ,
    \bdatw[10]_INST_0_i_2_0 ,
    \bdatw[10]_INST_0_i_2_1 ,
    \bdatw[10]_INST_0_i_2_2 ,
    \bdatw[11]_INST_0_i_2 ,
    \bdatw[11]_INST_0_i_2_0 ,
    \bdatw[11]_INST_0_i_2_1 ,
    \bdatw[11]_INST_0_i_2_2 ,
    \bdatw[12]_INST_0_i_2 ,
    \bdatw[12]_INST_0_i_2_0 ,
    \bdatw[12]_INST_0_i_2_1 ,
    \bdatw[12]_INST_0_i_2_2 ,
    out,
    gr0_bus1__0_0,
    \badr[15]_INST_0_i_4_0 ,
    gr1_bus1__0,
    \badr[15]_INST_0_i_4_1 ,
    gr2_bus1__0,
    \badr[15]_INST_0_i_4_2 ,
    gr3_bus1__0,
    \badr[15]_INST_0_i_4_3 ,
    gr4_bus1__0,
    \badr[15]_INST_0_i_4_4 ,
    gr5_bus1__0,
    \badr[15]_INST_0_i_4_5 ,
    gr6_bus1__0,
    \badr[15]_INST_0_i_4_6 ,
    gr7_bus1__0,
    \badr[15]_INST_0_i_4_7 ,
    gr0_bus1__0,
    \badr[1]_INST_0_i_1 ,
    gr1_bus1__0_0,
    gr2_bus1__0_1,
    \badr[2]_INST_0_i_1 ,
    \badr[3]_INST_0_i_1 ,
    \badr[5]_INST_0_i_1 ,
    \badr[6]_INST_0_i_1 ,
    \badr[7]_INST_0_i_1 ,
    \badr[8]_INST_0_i_1 ,
    \badr[9]_INST_0_i_1 ,
    \badr[10]_INST_0_i_1 ,
    \badr[15]_INST_0_i_1 ,
    gr3_bus1__0_2,
    gr4_bus1__0_3,
    gr5_bus1__0_4,
    gr6_bus1__0_5,
    gr7_bus1__0_6,
    gr0_bus1__0_7,
    \bdatw[12]_INST_0_i_9_0 ,
    gr2_bus1__0_8,
    \bdatw[12]_INST_0_i_9_1 ,
    gr3_bus1__0_9,
    \badr[15]_INST_0_i_4_8 ,
    gr4_bus1__0_10,
    \badr[15]_INST_0_i_4_9 ,
    gr5_bus1__0_11,
    gr4_bus1__0_12,
    gr5_bus1__0_13,
    SR,
    \grn_reg[15]_1 ,
    \grn_reg[15]_2 ,
    clk);
  output [4:0]\grn_reg[4]_0 ;
  output \grn_reg[5]_0 ;
  output \grn_reg[6]_0 ;
  output \grn_reg[1]_0 ;
  output \grn_reg[2]_0 ;
  output \grn_reg[3]_0 ;
  output \grn_reg[5]_1 ;
  output \grn_reg[6]_1 ;
  output \grn_reg[7]_0 ;
  output \grn_reg[8]_0 ;
  output \grn_reg[9]_0 ;
  output \grn_reg[10]_0 ;
  output \grn_reg[15]_0 ;
  output [15:0]Q;
  input \bdatw[8]_INST_0_i_2 ;
  input \bdatw[8]_INST_0_i_2_0 ;
  input \bdatw[8]_INST_0_i_2_1 ;
  input \bdatw[8]_INST_0_i_2_2 ;
  input \bdatw[9]_INST_0_i_2 ;
  input \bdatw[9]_INST_0_i_2_0 ;
  input \bdatw[9]_INST_0_i_2_1 ;
  input \bdatw[9]_INST_0_i_2_2 ;
  input \bdatw[10]_INST_0_i_2 ;
  input \bdatw[10]_INST_0_i_2_0 ;
  input \bdatw[10]_INST_0_i_2_1 ;
  input \bdatw[10]_INST_0_i_2_2 ;
  input \bdatw[11]_INST_0_i_2 ;
  input \bdatw[11]_INST_0_i_2_0 ;
  input \bdatw[11]_INST_0_i_2_1 ;
  input \bdatw[11]_INST_0_i_2_2 ;
  input \bdatw[12]_INST_0_i_2 ;
  input \bdatw[12]_INST_0_i_2_0 ;
  input \bdatw[12]_INST_0_i_2_1 ;
  input \bdatw[12]_INST_0_i_2_2 ;
  input [1:0]out;
  input gr0_bus1__0_0;
  input [9:0]\badr[15]_INST_0_i_4_0 ;
  input gr1_bus1__0;
  input [9:0]\badr[15]_INST_0_i_4_1 ;
  input gr2_bus1__0;
  input [9:0]\badr[15]_INST_0_i_4_2 ;
  input gr3_bus1__0;
  input [9:0]\badr[15]_INST_0_i_4_3 ;
  input gr4_bus1__0;
  input [9:0]\badr[15]_INST_0_i_4_4 ;
  input gr5_bus1__0;
  input [9:0]\badr[15]_INST_0_i_4_5 ;
  input gr6_bus1__0;
  input [9:0]\badr[15]_INST_0_i_4_6 ;
  input gr7_bus1__0;
  input [9:0]\badr[15]_INST_0_i_4_7 ;
  input gr0_bus1__0;
  input \badr[1]_INST_0_i_1 ;
  input gr1_bus1__0_0;
  input gr2_bus1__0_1;
  input \badr[2]_INST_0_i_1 ;
  input \badr[3]_INST_0_i_1 ;
  input \badr[5]_INST_0_i_1 ;
  input \badr[6]_INST_0_i_1 ;
  input \badr[7]_INST_0_i_1 ;
  input \badr[8]_INST_0_i_1 ;
  input \badr[9]_INST_0_i_1 ;
  input \badr[10]_INST_0_i_1 ;
  input \badr[15]_INST_0_i_1 ;
  input gr3_bus1__0_2;
  input gr4_bus1__0_3;
  input gr5_bus1__0_4;
  input gr6_bus1__0_5;
  input gr7_bus1__0_6;
  input gr0_bus1__0_7;
  input [4:0]\bdatw[12]_INST_0_i_9_0 ;
  input gr2_bus1__0_8;
  input [4:0]\bdatw[12]_INST_0_i_9_1 ;
  input gr3_bus1__0_9;
  input [11:0]\badr[15]_INST_0_i_4_8 ;
  input gr4_bus1__0_10;
  input [11:0]\badr[15]_INST_0_i_4_9 ;
  input gr5_bus1__0_11;
  input gr4_bus1__0_12;
  input gr5_bus1__0_13;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_1 ;
  input [15:0]\grn_reg[15]_2 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire \badr[10]_INST_0_i_1 ;
  wire \badr[10]_INST_0_i_16_n_0 ;
  wire \badr[10]_INST_0_i_17_n_0 ;
  wire \badr[10]_INST_0_i_18_n_0 ;
  wire \badr[10]_INST_0_i_19_n_0 ;
  wire \badr[10]_INST_0_i_20_n_0 ;
  wire \badr[15]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_18_n_0 ;
  wire \badr[15]_INST_0_i_19_n_0 ;
  wire \badr[15]_INST_0_i_20_n_0 ;
  wire \badr[15]_INST_0_i_21_n_0 ;
  wire \badr[15]_INST_0_i_22_n_0 ;
  wire [9:0]\badr[15]_INST_0_i_4_0 ;
  wire [9:0]\badr[15]_INST_0_i_4_1 ;
  wire [9:0]\badr[15]_INST_0_i_4_2 ;
  wire [9:0]\badr[15]_INST_0_i_4_3 ;
  wire [9:0]\badr[15]_INST_0_i_4_4 ;
  wire [9:0]\badr[15]_INST_0_i_4_5 ;
  wire [9:0]\badr[15]_INST_0_i_4_6 ;
  wire [9:0]\badr[15]_INST_0_i_4_7 ;
  wire [11:0]\badr[15]_INST_0_i_4_8 ;
  wire [11:0]\badr[15]_INST_0_i_4_9 ;
  wire \badr[1]_INST_0_i_1 ;
  wire \badr[1]_INST_0_i_16_n_0 ;
  wire \badr[1]_INST_0_i_17_n_0 ;
  wire \badr[1]_INST_0_i_18_n_0 ;
  wire \badr[1]_INST_0_i_19_n_0 ;
  wire \badr[1]_INST_0_i_20_n_0 ;
  wire \badr[2]_INST_0_i_1 ;
  wire \badr[2]_INST_0_i_16_n_0 ;
  wire \badr[2]_INST_0_i_17_n_0 ;
  wire \badr[2]_INST_0_i_18_n_0 ;
  wire \badr[2]_INST_0_i_19_n_0 ;
  wire \badr[2]_INST_0_i_20_n_0 ;
  wire \badr[3]_INST_0_i_1 ;
  wire \badr[3]_INST_0_i_16_n_0 ;
  wire \badr[3]_INST_0_i_17_n_0 ;
  wire \badr[3]_INST_0_i_18_n_0 ;
  wire \badr[3]_INST_0_i_19_n_0 ;
  wire \badr[3]_INST_0_i_20_n_0 ;
  wire \badr[5]_INST_0_i_1 ;
  wire \badr[5]_INST_0_i_16_n_0 ;
  wire \badr[5]_INST_0_i_17_n_0 ;
  wire \badr[5]_INST_0_i_18_n_0 ;
  wire \badr[5]_INST_0_i_19_n_0 ;
  wire \badr[5]_INST_0_i_20_n_0 ;
  wire \badr[6]_INST_0_i_1 ;
  wire \badr[6]_INST_0_i_16_n_0 ;
  wire \badr[6]_INST_0_i_17_n_0 ;
  wire \badr[6]_INST_0_i_18_n_0 ;
  wire \badr[6]_INST_0_i_19_n_0 ;
  wire \badr[6]_INST_0_i_20_n_0 ;
  wire \badr[7]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_16_n_0 ;
  wire \badr[7]_INST_0_i_17_n_0 ;
  wire \badr[7]_INST_0_i_18_n_0 ;
  wire \badr[7]_INST_0_i_19_n_0 ;
  wire \badr[7]_INST_0_i_20_n_0 ;
  wire \badr[8]_INST_0_i_1 ;
  wire \badr[8]_INST_0_i_16_n_0 ;
  wire \badr[8]_INST_0_i_17_n_0 ;
  wire \badr[8]_INST_0_i_18_n_0 ;
  wire \badr[8]_INST_0_i_19_n_0 ;
  wire \badr[8]_INST_0_i_20_n_0 ;
  wire \badr[9]_INST_0_i_1 ;
  wire \badr[9]_INST_0_i_16_n_0 ;
  wire \badr[9]_INST_0_i_17_n_0 ;
  wire \badr[9]_INST_0_i_18_n_0 ;
  wire \badr[9]_INST_0_i_19_n_0 ;
  wire \badr[9]_INST_0_i_20_n_0 ;
  wire \bdatw[10]_INST_0_i_2 ;
  wire \bdatw[10]_INST_0_i_20_n_0 ;
  wire \bdatw[10]_INST_0_i_25_n_0 ;
  wire \bdatw[10]_INST_0_i_2_0 ;
  wire \bdatw[10]_INST_0_i_2_1 ;
  wire \bdatw[10]_INST_0_i_2_2 ;
  wire \bdatw[11]_INST_0_i_2 ;
  wire \bdatw[11]_INST_0_i_22_n_0 ;
  wire \bdatw[11]_INST_0_i_27_n_0 ;
  wire \bdatw[11]_INST_0_i_2_0 ;
  wire \bdatw[11]_INST_0_i_2_1 ;
  wire \bdatw[11]_INST_0_i_2_2 ;
  wire \bdatw[12]_INST_0_i_2 ;
  wire \bdatw[12]_INST_0_i_21_n_0 ;
  wire \bdatw[12]_INST_0_i_26_n_0 ;
  wire \bdatw[12]_INST_0_i_2_0 ;
  wire \bdatw[12]_INST_0_i_2_1 ;
  wire \bdatw[12]_INST_0_i_2_2 ;
  wire [4:0]\bdatw[12]_INST_0_i_9_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_9_1 ;
  wire \bdatw[13]_INST_0_i_35_n_0 ;
  wire \bdatw[13]_INST_0_i_36_n_0 ;
  wire \bdatw[13]_INST_0_i_37_n_0 ;
  wire \bdatw[13]_INST_0_i_38_n_0 ;
  wire \bdatw[14]_INST_0_i_36_n_0 ;
  wire \bdatw[14]_INST_0_i_37_n_0 ;
  wire \bdatw[14]_INST_0_i_38_n_0 ;
  wire \bdatw[14]_INST_0_i_39_n_0 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_21_n_0 ;
  wire \bdatw[8]_INST_0_i_26_n_0 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_2_2 ;
  wire \bdatw[9]_INST_0_i_2 ;
  wire \bdatw[9]_INST_0_i_22_n_0 ;
  wire \bdatw[9]_INST_0_i_27_n_0 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_2_1 ;
  wire \bdatw[9]_INST_0_i_2_2 ;
  wire clk;
  wire gr0_bus1__0;
  wire gr0_bus1__0_0;
  wire gr0_bus1__0_7;
  wire gr1_bus1__0;
  wire gr1_bus1__0_0;
  wire gr2_bus1__0;
  wire gr2_bus1__0_1;
  wire gr2_bus1__0_8;
  wire gr3_bus1__0;
  wire gr3_bus1__0_2;
  wire gr3_bus1__0_9;
  wire gr4_bus1__0;
  wire gr4_bus1__0_10;
  wire gr4_bus1__0_12;
  wire gr4_bus1__0_3;
  wire gr5_bus1__0;
  wire gr5_bus1__0_11;
  wire gr5_bus1__0_13;
  wire gr5_bus1__0_4;
  wire gr6_bus1__0;
  wire gr6_bus1__0_5;
  wire gr7_bus1__0;
  wire gr7_bus1__0_6;
  wire \grn_reg[10]_0 ;
  wire \grn_reg[15]_0 ;
  wire [0:0]\grn_reg[15]_1 ;
  wire [15:0]\grn_reg[15]_2 ;
  wire \grn_reg[1]_0 ;
  wire \grn_reg[2]_0 ;
  wire \grn_reg[3]_0 ;
  wire [4:0]\grn_reg[4]_0 ;
  wire \grn_reg[5]_0 ;
  wire \grn_reg[5]_1 ;
  wire \grn_reg[6]_0 ;
  wire \grn_reg[6]_1 ;
  wire \grn_reg[7]_0 ;
  wire \grn_reg[8]_0 ;
  wire \grn_reg[9]_0 ;
  wire [1:0]out;

  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_4_8 [10]),
        .I1(gr4_bus1__0_12),
        .I2(\badr[15]_INST_0_i_4_9 [10]),
        .I3(gr5_bus1__0_13),
        .O(\badr[10]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_2 [8]),
        .I1(gr3_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_3 [8]),
        .I3(gr4_bus1__0_3),
        .O(\badr[10]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_18 
       (.I0(\badr[15]_INST_0_i_4_0 [8]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_4_1 [8]),
        .I3(gr2_bus1__0_1),
        .O(\badr[10]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_6 [8]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_7 [8]),
        .I3(gr0_bus1__0_7),
        .O(\badr[10]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_4 [8]),
        .I1(gr5_bus1__0_4),
        .I2(\badr[15]_INST_0_i_4_5 [8]),
        .I3(gr6_bus1__0_5),
        .O(\badr[10]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[10]_INST_0_i_4 
       (.I0(\badr[10]_INST_0_i_16_n_0 ),
        .I1(\badr[10]_INST_0_i_17_n_0 ),
        .I2(\badr[10]_INST_0_i_18_n_0 ),
        .I3(\badr[10]_INST_0_i_19_n_0 ),
        .I4(\badr[10]_INST_0_i_20_n_0 ),
        .I5(\badr[10]_INST_0_i_1 ),
        .O(\grn_reg[10]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_18 
       (.I0(\badr[15]_INST_0_i_4_8 [11]),
        .I1(gr4_bus1__0_12),
        .I2(\badr[15]_INST_0_i_4_9 [11]),
        .I3(gr5_bus1__0_13),
        .O(\badr[15]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_2 [9]),
        .I1(gr3_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_3 [9]),
        .I3(gr4_bus1__0_3),
        .O(\badr[15]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_0 [9]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_4_1 [9]),
        .I3(gr2_bus1__0_1),
        .O(\badr[15]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_21 
       (.I0(\badr[15]_INST_0_i_4_6 [9]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_7 [9]),
        .I3(gr0_bus1__0_7),
        .O(\badr[15]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_22 
       (.I0(\badr[15]_INST_0_i_4_4 [9]),
        .I1(gr5_bus1__0_4),
        .I2(\badr[15]_INST_0_i_4_5 [9]),
        .I3(gr6_bus1__0_5),
        .O(\badr[15]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(\badr[15]_INST_0_i_19_n_0 ),
        .I2(\badr[15]_INST_0_i_20_n_0 ),
        .I3(\badr[15]_INST_0_i_21_n_0 ),
        .I4(\badr[15]_INST_0_i_22_n_0 ),
        .I5(\badr[15]_INST_0_i_1 ),
        .O(\grn_reg[15]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_4_8 [1]),
        .I1(gr4_bus1__0_12),
        .I2(\badr[15]_INST_0_i_4_9 [1]),
        .I3(gr5_bus1__0_13),
        .O(\badr[1]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_2 [0]),
        .I1(gr3_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_3 [0]),
        .I3(gr4_bus1__0_3),
        .O(\badr[1]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_18 
       (.I0(\badr[15]_INST_0_i_4_0 [0]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_4_1 [0]),
        .I3(gr2_bus1__0_1),
        .O(\badr[1]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_6 [0]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_7 [0]),
        .I3(gr0_bus1__0_7),
        .O(\badr[1]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_4 [0]),
        .I1(gr5_bus1__0_4),
        .I2(\badr[15]_INST_0_i_4_5 [0]),
        .I3(gr6_bus1__0_5),
        .O(\badr[1]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[1]_INST_0_i_4 
       (.I0(\badr[1]_INST_0_i_16_n_0 ),
        .I1(\badr[1]_INST_0_i_17_n_0 ),
        .I2(\badr[1]_INST_0_i_18_n_0 ),
        .I3(\badr[1]_INST_0_i_19_n_0 ),
        .I4(\badr[1]_INST_0_i_20_n_0 ),
        .I5(\badr[1]_INST_0_i_1 ),
        .O(\grn_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_4_8 [2]),
        .I1(gr4_bus1__0_12),
        .I2(\badr[15]_INST_0_i_4_9 [2]),
        .I3(gr5_bus1__0_13),
        .O(\badr[2]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_2 [1]),
        .I1(gr3_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_3 [1]),
        .I3(gr4_bus1__0_3),
        .O(\badr[2]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_18 
       (.I0(\badr[15]_INST_0_i_4_0 [1]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_4_1 [1]),
        .I3(gr2_bus1__0_1),
        .O(\badr[2]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_6 [1]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_7 [1]),
        .I3(gr0_bus1__0_7),
        .O(\badr[2]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_4 [1]),
        .I1(gr5_bus1__0_4),
        .I2(\badr[15]_INST_0_i_4_5 [1]),
        .I3(gr6_bus1__0_5),
        .O(\badr[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[2]_INST_0_i_4 
       (.I0(\badr[2]_INST_0_i_16_n_0 ),
        .I1(\badr[2]_INST_0_i_17_n_0 ),
        .I2(\badr[2]_INST_0_i_18_n_0 ),
        .I3(\badr[2]_INST_0_i_19_n_0 ),
        .I4(\badr[2]_INST_0_i_20_n_0 ),
        .I5(\badr[2]_INST_0_i_1 ),
        .O(\grn_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_4_8 [3]),
        .I1(gr4_bus1__0_12),
        .I2(\badr[15]_INST_0_i_4_9 [3]),
        .I3(gr5_bus1__0_13),
        .O(\badr[3]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_2 [2]),
        .I1(gr3_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_3 [2]),
        .I3(gr4_bus1__0_3),
        .O(\badr[3]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_18 
       (.I0(\badr[15]_INST_0_i_4_0 [2]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_4_1 [2]),
        .I3(gr2_bus1__0_1),
        .O(\badr[3]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_6 [2]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_7 [2]),
        .I3(gr0_bus1__0_7),
        .O(\badr[3]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_4 [2]),
        .I1(gr5_bus1__0_4),
        .I2(\badr[15]_INST_0_i_4_5 [2]),
        .I3(gr6_bus1__0_5),
        .O(\badr[3]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[3]_INST_0_i_4 
       (.I0(\badr[3]_INST_0_i_16_n_0 ),
        .I1(\badr[3]_INST_0_i_17_n_0 ),
        .I2(\badr[3]_INST_0_i_18_n_0 ),
        .I3(\badr[3]_INST_0_i_19_n_0 ),
        .I4(\badr[3]_INST_0_i_20_n_0 ),
        .I5(\badr[3]_INST_0_i_1 ),
        .O(\grn_reg[3]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_4_8 [5]),
        .I1(gr4_bus1__0_12),
        .I2(\badr[15]_INST_0_i_4_9 [5]),
        .I3(gr5_bus1__0_13),
        .O(\badr[5]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_2 [3]),
        .I1(gr3_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_3 [3]),
        .I3(gr4_bus1__0_3),
        .O(\badr[5]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_18 
       (.I0(\badr[15]_INST_0_i_4_0 [3]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_4_1 [3]),
        .I3(gr2_bus1__0_1),
        .O(\badr[5]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_6 [3]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_7 [3]),
        .I3(gr0_bus1__0_7),
        .O(\badr[5]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_4 [3]),
        .I1(gr5_bus1__0_4),
        .I2(\badr[15]_INST_0_i_4_5 [3]),
        .I3(gr6_bus1__0_5),
        .O(\badr[5]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[5]_INST_0_i_4 
       (.I0(\badr[5]_INST_0_i_16_n_0 ),
        .I1(\badr[5]_INST_0_i_17_n_0 ),
        .I2(\badr[5]_INST_0_i_18_n_0 ),
        .I3(\badr[5]_INST_0_i_19_n_0 ),
        .I4(\badr[5]_INST_0_i_20_n_0 ),
        .I5(\badr[5]_INST_0_i_1 ),
        .O(\grn_reg[5]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_4_8 [6]),
        .I1(gr4_bus1__0_12),
        .I2(\badr[15]_INST_0_i_4_9 [6]),
        .I3(gr5_bus1__0_13),
        .O(\badr[6]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_2 [4]),
        .I1(gr3_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_3 [4]),
        .I3(gr4_bus1__0_3),
        .O(\badr[6]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_18 
       (.I0(\badr[15]_INST_0_i_4_0 [4]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_4_1 [4]),
        .I3(gr2_bus1__0_1),
        .O(\badr[6]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_6 [4]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_7 [4]),
        .I3(gr0_bus1__0_7),
        .O(\badr[6]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_4 [4]),
        .I1(gr5_bus1__0_4),
        .I2(\badr[15]_INST_0_i_4_5 [4]),
        .I3(gr6_bus1__0_5),
        .O(\badr[6]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[6]_INST_0_i_4 
       (.I0(\badr[6]_INST_0_i_16_n_0 ),
        .I1(\badr[6]_INST_0_i_17_n_0 ),
        .I2(\badr[6]_INST_0_i_18_n_0 ),
        .I3(\badr[6]_INST_0_i_19_n_0 ),
        .I4(\badr[6]_INST_0_i_20_n_0 ),
        .I5(\badr[6]_INST_0_i_1 ),
        .O(\grn_reg[6]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_4_8 [7]),
        .I1(gr4_bus1__0_12),
        .I2(\badr[15]_INST_0_i_4_9 [7]),
        .I3(gr5_bus1__0_13),
        .O(\badr[7]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_2 [5]),
        .I1(gr3_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_3 [5]),
        .I3(gr4_bus1__0_3),
        .O(\badr[7]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_18 
       (.I0(\badr[15]_INST_0_i_4_0 [5]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_4_1 [5]),
        .I3(gr2_bus1__0_1),
        .O(\badr[7]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_6 [5]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_7 [5]),
        .I3(gr0_bus1__0_7),
        .O(\badr[7]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_4 [5]),
        .I1(gr5_bus1__0_4),
        .I2(\badr[15]_INST_0_i_4_5 [5]),
        .I3(gr6_bus1__0_5),
        .O(\badr[7]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[7]_INST_0_i_4 
       (.I0(\badr[7]_INST_0_i_16_n_0 ),
        .I1(\badr[7]_INST_0_i_17_n_0 ),
        .I2(\badr[7]_INST_0_i_18_n_0 ),
        .I3(\badr[7]_INST_0_i_19_n_0 ),
        .I4(\badr[7]_INST_0_i_20_n_0 ),
        .I5(\badr[7]_INST_0_i_1 ),
        .O(\grn_reg[7]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_4_8 [8]),
        .I1(gr4_bus1__0_12),
        .I2(\badr[15]_INST_0_i_4_9 [8]),
        .I3(gr5_bus1__0_13),
        .O(\badr[8]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_2 [6]),
        .I1(gr3_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_3 [6]),
        .I3(gr4_bus1__0_3),
        .O(\badr[8]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_18 
       (.I0(\badr[15]_INST_0_i_4_0 [6]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_4_1 [6]),
        .I3(gr2_bus1__0_1),
        .O(\badr[8]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_6 [6]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_7 [6]),
        .I3(gr0_bus1__0_7),
        .O(\badr[8]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_4 [6]),
        .I1(gr5_bus1__0_4),
        .I2(\badr[15]_INST_0_i_4_5 [6]),
        .I3(gr6_bus1__0_5),
        .O(\badr[8]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[8]_INST_0_i_4 
       (.I0(\badr[8]_INST_0_i_16_n_0 ),
        .I1(\badr[8]_INST_0_i_17_n_0 ),
        .I2(\badr[8]_INST_0_i_18_n_0 ),
        .I3(\badr[8]_INST_0_i_19_n_0 ),
        .I4(\badr[8]_INST_0_i_20_n_0 ),
        .I5(\badr[8]_INST_0_i_1 ),
        .O(\grn_reg[8]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_4_8 [9]),
        .I1(gr4_bus1__0_12),
        .I2(\badr[15]_INST_0_i_4_9 [9]),
        .I3(gr5_bus1__0_13),
        .O(\badr[9]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_2 [7]),
        .I1(gr3_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_3 [7]),
        .I3(gr4_bus1__0_3),
        .O(\badr[9]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_18 
       (.I0(\badr[15]_INST_0_i_4_0 [7]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_4_1 [7]),
        .I3(gr2_bus1__0_1),
        .O(\badr[9]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_6 [7]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_7 [7]),
        .I3(gr0_bus1__0_7),
        .O(\badr[9]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_4 [7]),
        .I1(gr5_bus1__0_4),
        .I2(\badr[15]_INST_0_i_4_5 [7]),
        .I3(gr6_bus1__0_5),
        .O(\badr[9]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[9]_INST_0_i_4 
       (.I0(\badr[9]_INST_0_i_16_n_0 ),
        .I1(\badr[9]_INST_0_i_17_n_0 ),
        .I2(\badr[9]_INST_0_i_18_n_0 ),
        .I3(\badr[9]_INST_0_i_19_n_0 ),
        .I4(\badr[9]_INST_0_i_20_n_0 ),
        .I5(\badr[9]_INST_0_i_1 ),
        .O(\grn_reg[9]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_20 
       (.I0(\bdatw[12]_INST_0_i_9_0 [2]),
        .I1(gr2_bus1__0_8),
        .I2(\bdatw[12]_INST_0_i_9_1 [2]),
        .I3(gr3_bus1__0_9),
        .O(\bdatw[10]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_25 
       (.I0(\badr[15]_INST_0_i_4_8 [2]),
        .I1(gr4_bus1__0_10),
        .I2(\badr[15]_INST_0_i_4_9 [2]),
        .I3(gr5_bus1__0_11),
        .O(\bdatw[10]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[10]_INST_0_i_9 
       (.I0(\bdatw[10]_INST_0_i_20_n_0 ),
        .I1(\bdatw[10]_INST_0_i_2 ),
        .I2(\bdatw[10]_INST_0_i_2_0 ),
        .I3(\bdatw[10]_INST_0_i_2_1 ),
        .I4(\bdatw[10]_INST_0_i_2_2 ),
        .I5(\bdatw[10]_INST_0_i_25_n_0 ),
        .O(\grn_reg[4]_0 [2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_22 
       (.I0(\bdatw[12]_INST_0_i_9_0 [3]),
        .I1(gr2_bus1__0_8),
        .I2(\bdatw[12]_INST_0_i_9_1 [3]),
        .I3(gr3_bus1__0_9),
        .O(\bdatw[11]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_27 
       (.I0(\badr[15]_INST_0_i_4_8 [3]),
        .I1(gr4_bus1__0_10),
        .I2(\badr[15]_INST_0_i_4_9 [3]),
        .I3(gr5_bus1__0_11),
        .O(\bdatw[11]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[11]_INST_0_i_9 
       (.I0(\bdatw[11]_INST_0_i_22_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2 ),
        .I2(\bdatw[11]_INST_0_i_2_0 ),
        .I3(\bdatw[11]_INST_0_i_2_1 ),
        .I4(\bdatw[11]_INST_0_i_2_2 ),
        .I5(\bdatw[11]_INST_0_i_27_n_0 ),
        .O(\grn_reg[4]_0 [3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_21 
       (.I0(\bdatw[12]_INST_0_i_9_0 [4]),
        .I1(gr2_bus1__0_8),
        .I2(\bdatw[12]_INST_0_i_9_1 [4]),
        .I3(gr3_bus1__0_9),
        .O(\bdatw[12]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_26 
       (.I0(\badr[15]_INST_0_i_4_8 [4]),
        .I1(gr4_bus1__0_10),
        .I2(\badr[15]_INST_0_i_4_9 [4]),
        .I3(gr5_bus1__0_11),
        .O(\bdatw[12]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[12]_INST_0_i_9 
       (.I0(\bdatw[12]_INST_0_i_21_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2 ),
        .I2(\bdatw[12]_INST_0_i_2_0 ),
        .I3(\bdatw[12]_INST_0_i_2_1 ),
        .I4(\bdatw[12]_INST_0_i_2_2 ),
        .I5(\bdatw[12]_INST_0_i_26_n_0 ),
        .O(\grn_reg[4]_0 [4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_20 
       (.I0(out[0]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[13]_INST_0_i_35_n_0 ),
        .I3(\bdatw[13]_INST_0_i_36_n_0 ),
        .I4(\bdatw[13]_INST_0_i_37_n_0 ),
        .I5(\bdatw[13]_INST_0_i_38_n_0 ),
        .O(\grn_reg[5]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_35 
       (.I0(\badr[15]_INST_0_i_4_4 [3]),
        .I1(gr5_bus1__0),
        .I2(\badr[15]_INST_0_i_4_5 [3]),
        .I3(gr6_bus1__0),
        .O(\bdatw[13]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_36 
       (.I0(\badr[15]_INST_0_i_4_6 [3]),
        .I1(gr7_bus1__0),
        .I2(\badr[15]_INST_0_i_4_7 [3]),
        .I3(gr0_bus1__0),
        .O(\bdatw[13]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_37 
       (.I0(\badr[15]_INST_0_i_4_0 [3]),
        .I1(gr1_bus1__0),
        .I2(\badr[15]_INST_0_i_4_1 [3]),
        .I3(gr2_bus1__0),
        .O(\bdatw[13]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_38 
       (.I0(\badr[15]_INST_0_i_4_2 [3]),
        .I1(gr3_bus1__0),
        .I2(\badr[15]_INST_0_i_4_3 [3]),
        .I3(gr4_bus1__0),
        .O(\bdatw[13]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_21 
       (.I0(out[1]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[14]_INST_0_i_36_n_0 ),
        .I3(\bdatw[14]_INST_0_i_37_n_0 ),
        .I4(\bdatw[14]_INST_0_i_38_n_0 ),
        .I5(\bdatw[14]_INST_0_i_39_n_0 ),
        .O(\grn_reg[6]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_36 
       (.I0(\badr[15]_INST_0_i_4_4 [4]),
        .I1(gr5_bus1__0),
        .I2(\badr[15]_INST_0_i_4_5 [4]),
        .I3(gr6_bus1__0),
        .O(\bdatw[14]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_37 
       (.I0(\badr[15]_INST_0_i_4_6 [4]),
        .I1(gr7_bus1__0),
        .I2(\badr[15]_INST_0_i_4_7 [4]),
        .I3(gr0_bus1__0),
        .O(\bdatw[14]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_38 
       (.I0(\badr[15]_INST_0_i_4_0 [4]),
        .I1(gr1_bus1__0),
        .I2(\badr[15]_INST_0_i_4_1 [4]),
        .I3(gr2_bus1__0),
        .O(\bdatw[14]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_39 
       (.I0(\badr[15]_INST_0_i_4_2 [4]),
        .I1(gr3_bus1__0),
        .I2(\badr[15]_INST_0_i_4_3 [4]),
        .I3(gr4_bus1__0),
        .O(\bdatw[14]_INST_0_i_39_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_21 
       (.I0(\bdatw[12]_INST_0_i_9_0 [0]),
        .I1(gr2_bus1__0_8),
        .I2(\bdatw[12]_INST_0_i_9_1 [0]),
        .I3(gr3_bus1__0_9),
        .O(\bdatw[8]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_26 
       (.I0(\badr[15]_INST_0_i_4_8 [0]),
        .I1(gr4_bus1__0_10),
        .I2(\badr[15]_INST_0_i_4_9 [0]),
        .I3(gr5_bus1__0_11),
        .O(\bdatw[8]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[8]_INST_0_i_8 
       (.I0(\bdatw[8]_INST_0_i_21_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2 ),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .I3(\bdatw[8]_INST_0_i_2_1 ),
        .I4(\bdatw[8]_INST_0_i_2_2 ),
        .I5(\bdatw[8]_INST_0_i_26_n_0 ),
        .O(\grn_reg[4]_0 [0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_22 
       (.I0(\bdatw[12]_INST_0_i_9_0 [1]),
        .I1(gr2_bus1__0_8),
        .I2(\bdatw[12]_INST_0_i_9_1 [1]),
        .I3(gr3_bus1__0_9),
        .O(\bdatw[9]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_27 
       (.I0(\badr[15]_INST_0_i_4_8 [1]),
        .I1(gr4_bus1__0_10),
        .I2(\badr[15]_INST_0_i_4_9 [1]),
        .I3(gr5_bus1__0_11),
        .O(\bdatw[9]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[9]_INST_0_i_9 
       (.I0(\bdatw[9]_INST_0_i_22_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\bdatw[9]_INST_0_i_2_1 ),
        .I4(\bdatw[9]_INST_0_i_2_2 ),
        .I5(\bdatw[9]_INST_0_i_27_n_0 ),
        .O(\grn_reg[4]_0 [1]));
  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_1 ),
        .D(\grn_reg[15]_2 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_4
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_5
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_6
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_7
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_8
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_grn" *) 
module mcvm_rgf_grn_9
   (Q,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [15:0]Q;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;

  FDRE \grn_reg[0] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \grn_reg[10] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \grn_reg[11] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \grn_reg[12] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \grn_reg[13] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \grn_reg[14] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \grn_reg[15] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \grn_reg[1] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \grn_reg[2] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \grn_reg[3] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \grn_reg[4] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \grn_reg[5] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \grn_reg[6] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \grn_reg[7] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \grn_reg[8] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \grn_reg[9] 
       (.C(clk),
        .CE(\grn_reg[15]_0 ),
        .D(\grn_reg[15]_1 [9]),
        .Q(Q[9]),
        .R(SR));
endmodule

module mcvm_rgf_ivec
   (.\iv_reg[15]_0 ({iv[15],iv[14],iv[13],iv[12],iv[11],iv[10],iv[9],iv[8],iv[7],iv[6],iv[5],iv[4],iv[3],iv[2],iv[1],iv[0]}),
    SR,
    \iv_reg[0]_0 ,
    \iv_reg[15]_1 ,
    clk);
  input [0:0]SR;
  input [0:0]\iv_reg[0]_0 ;
  input [15:0]\iv_reg[15]_1 ;
  input clk;
     output [15:0]iv;

  wire [0:0]SR;
  wire clk;
  (* DONT_TOUCH *) wire [15:0]iv;
  wire [0:0]\iv_reg[0]_0 ;
  wire [15:0]\iv_reg[15]_1 ;

  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[0] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(\iv_reg[15]_1 [0]),
        .Q(iv[0]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[10] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(\iv_reg[15]_1 [10]),
        .Q(iv[10]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[11] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(\iv_reg[15]_1 [11]),
        .Q(iv[11]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[12] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(\iv_reg[15]_1 [12]),
        .Q(iv[12]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[13] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(\iv_reg[15]_1 [13]),
        .Q(iv[13]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[14] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(\iv_reg[15]_1 [14]),
        .Q(iv[14]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[15] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(\iv_reg[15]_1 [15]),
        .Q(iv[15]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[1] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(\iv_reg[15]_1 [1]),
        .Q(iv[1]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[2] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(\iv_reg[15]_1 [2]),
        .Q(iv[2]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[3] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(\iv_reg[15]_1 [3]),
        .Q(iv[3]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[4] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(\iv_reg[15]_1 [4]),
        .Q(iv[4]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[5] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(\iv_reg[15]_1 [5]),
        .Q(iv[5]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[6] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(\iv_reg[15]_1 [6]),
        .Q(iv[6]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[7] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(\iv_reg[15]_1 [7]),
        .Q(iv[7]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[8] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(\iv_reg[15]_1 [8]),
        .Q(iv[8]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[9] 
       (.C(clk),
        .CE(\iv_reg[0]_0 ),
        .D(\iv_reg[15]_1 [9]),
        .Q(iv[9]),
        .R(SR));
endmodule

module mcvm_rgf_pcnt
   (.fadr({pc[15],pc[14],pc[13],pc[12],pc[11],pc[10],pc[9],pc[8],pc[7],pc[6],pc[5],pc[4],pc[3],pc[2],pc[1],pc[0]}),
    fch_pc,
    S,
    SR,
    \pc_reg[15]_0 ,
    clk);
  output [15:0]fch_pc;
  input [0:0]S;
  input [0:0]SR;
  input [15:0]\pc_reg[15]_0 ;
  input clk;
     output [15:0]pc;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]S;
  wire [0:0]SR;
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
  wire \pc_reg[7]_i_2_n_0 ;
  wire \pc_reg[7]_i_2_n_1 ;
  wire \pc_reg[7]_i_2_n_2 ;
  wire \pc_reg[7]_i_2_n_3 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
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

module mcvm_rgf_sptr
   (.\sp_reg[15]_0 ({sp[15],sp[14],sp[13],sp[12],sp[11],sp[10],sp[9],sp[8],sp[7],sp[6],sp[5],sp[4],sp[3],sp[2],sp[1],sp[0]}),
    sp_dec_0,
    \sp_reg[3]_0 ,
    \sp_reg[1]_0 ,
    \sp_reg[7]_0 ,
    \sp_reg[11]_0 ,
    \sp_reg[15]_1 ,
    SR,
    \sp_reg[15]_2 ,
    clk);
  output [14:0]sp_dec_0;
  output [0:0]\sp_reg[3]_0 ;
  output [2:0]\sp_reg[1]_0 ;
  output [3:0]\sp_reg[7]_0 ;
  output [3:0]\sp_reg[11]_0 ;
  output [3:0]\sp_reg[15]_1 ;
  input [0:0]SR;
  input [15:0]\sp_reg[15]_2 ;
  input clk;
     output [15:0]sp;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]SR;
  wire \badr[11]_INST_0_i_23_n_0 ;
  wire \badr[11]_INST_0_i_23_n_1 ;
  wire \badr[11]_INST_0_i_23_n_2 ;
  wire \badr[11]_INST_0_i_23_n_3 ;
  wire \badr[11]_INST_0_i_24_n_0 ;
  wire \badr[11]_INST_0_i_25_n_0 ;
  wire \badr[11]_INST_0_i_26_n_0 ;
  wire \badr[11]_INST_0_i_27_n_0 ;
  wire \badr[15]_INST_0_i_31_n_1 ;
  wire \badr[15]_INST_0_i_31_n_2 ;
  wire \badr[15]_INST_0_i_31_n_3 ;
  wire \badr[15]_INST_0_i_74_n_0 ;
  wire \badr[15]_INST_0_i_75_n_0 ;
  wire \badr[15]_INST_0_i_76_n_0 ;
  wire \badr[15]_INST_0_i_77_n_0 ;
  wire \badr[7]_INST_0_i_23_n_0 ;
  wire \badr[7]_INST_0_i_23_n_1 ;
  wire \badr[7]_INST_0_i_23_n_2 ;
  wire \badr[7]_INST_0_i_23_n_3 ;
  wire \badr[7]_INST_0_i_24_n_0 ;
  wire \badr[7]_INST_0_i_25_n_0 ;
  wire \badr[7]_INST_0_i_26_n_0 ;
  wire \badr[7]_INST_0_i_27_n_0 ;
  wire clk;
  (* DONT_TOUCH *) wire [15:0]sp;
  wire \sp[0]_i_3_n_0 ;
  wire \sp[0]_i_4_n_0 ;
  wire \sp[0]_i_5_n_0 ;
  wire \sp[3]_i_4_n_0 ;
  wire [14:0]sp_dec_0;
  wire \sp_reg[0]_i_2_n_0 ;
  wire \sp_reg[0]_i_2_n_1 ;
  wire \sp_reg[0]_i_2_n_2 ;
  wire \sp_reg[0]_i_2_n_3 ;
  wire [3:0]\sp_reg[11]_0 ;
  wire \sp_reg[11]_i_2_n_0 ;
  wire \sp_reg[11]_i_2_n_1 ;
  wire \sp_reg[11]_i_2_n_2 ;
  wire \sp_reg[11]_i_2_n_3 ;
  wire [3:0]\sp_reg[15]_1 ;
  wire [15:0]\sp_reg[15]_2 ;
  wire \sp_reg[15]_i_4_n_1 ;
  wire \sp_reg[15]_i_4_n_2 ;
  wire \sp_reg[15]_i_4_n_3 ;
  wire [2:0]\sp_reg[1]_0 ;
  wire [0:0]\sp_reg[3]_0 ;
  wire \sp_reg[3]_i_2_n_0 ;
  wire \sp_reg[3]_i_2_n_1 ;
  wire \sp_reg[3]_i_2_n_2 ;
  wire \sp_reg[3]_i_2_n_3 ;
  wire [3:0]\sp_reg[7]_0 ;
  wire \sp_reg[7]_i_2_n_0 ;
  wire \sp_reg[7]_i_2_n_1 ;
  wire \sp_reg[7]_i_2_n_2 ;
  wire \sp_reg[7]_i_2_n_3 ;
  wire [3:0]\NLW_sp_reg[3]_i_2_O_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[11]_INST_0_i_23 
       (.CI(\badr[7]_INST_0_i_23_n_0 ),
        .CO({\badr[11]_INST_0_i_23_n_0 ,\badr[11]_INST_0_i_23_n_1 ,\badr[11]_INST_0_i_23_n_2 ,\badr[11]_INST_0_i_23_n_3 }),
        .CYINIT(\<const0> ),
        .DI(sp[11:8]),
        .O(sp_dec_0[10:7]),
        .S({\badr[11]_INST_0_i_24_n_0 ,\badr[11]_INST_0_i_25_n_0 ,\badr[11]_INST_0_i_26_n_0 ,\badr[11]_INST_0_i_27_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[11]_INST_0_i_24 
       (.I0(sp[11]),
        .O(\badr[11]_INST_0_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[11]_INST_0_i_25 
       (.I0(sp[10]),
        .O(\badr[11]_INST_0_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[11]_INST_0_i_26 
       (.I0(sp[9]),
        .O(\badr[11]_INST_0_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[11]_INST_0_i_27 
       (.I0(sp[8]),
        .O(\badr[11]_INST_0_i_27_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[15]_INST_0_i_31 
       (.CI(\badr[11]_INST_0_i_23_n_0 ),
        .CO({\badr[15]_INST_0_i_31_n_1 ,\badr[15]_INST_0_i_31_n_2 ,\badr[15]_INST_0_i_31_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,sp[14:12]}),
        .O(sp_dec_0[14:11]),
        .S({\badr[15]_INST_0_i_74_n_0 ,\badr[15]_INST_0_i_75_n_0 ,\badr[15]_INST_0_i_76_n_0 ,\badr[15]_INST_0_i_77_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_74 
       (.I0(sp[15]),
        .O(\badr[15]_INST_0_i_74_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_75 
       (.I0(sp[14]),
        .O(\badr[15]_INST_0_i_75_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_76 
       (.I0(sp[13]),
        .O(\badr[15]_INST_0_i_76_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_77 
       (.I0(sp[12]),
        .O(\badr[15]_INST_0_i_77_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[7]_INST_0_i_23 
       (.CI(\sp_reg[0]_i_2_n_0 ),
        .CO({\badr[7]_INST_0_i_23_n_0 ,\badr[7]_INST_0_i_23_n_1 ,\badr[7]_INST_0_i_23_n_2 ,\badr[7]_INST_0_i_23_n_3 }),
        .CYINIT(\<const0> ),
        .DI(sp[7:4]),
        .O(sp_dec_0[6:3]),
        .S({\badr[7]_INST_0_i_24_n_0 ,\badr[7]_INST_0_i_25_n_0 ,\badr[7]_INST_0_i_26_n_0 ,\badr[7]_INST_0_i_27_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[7]_INST_0_i_24 
       (.I0(sp[7]),
        .O(\badr[7]_INST_0_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[7]_INST_0_i_25 
       (.I0(sp[6]),
        .O(\badr[7]_INST_0_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[7]_INST_0_i_26 
       (.I0(sp[5]),
        .O(\badr[7]_INST_0_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[7]_INST_0_i_27 
       (.I0(sp[4]),
        .O(\badr[7]_INST_0_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[0]_i_3 
       (.I0(sp[3]),
        .O(\sp[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[0]_i_4 
       (.I0(sp[2]),
        .O(\sp[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[0]_i_5 
       (.I0(sp[1]),
        .O(\sp[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[3]_i_4 
       (.I0(sp[1]),
        .O(\sp[3]_i_4_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_2 [0]),
        .Q(sp[0]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sp_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\sp_reg[0]_i_2_n_0 ,\sp_reg[0]_i_2_n_1 ,\sp_reg[0]_i_2_n_2 ,\sp_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({sp[3:1],\<const0> }),
        .O({sp_dec_0[2:0],\sp_reg[3]_0 }),
        .S({\sp[0]_i_3_n_0 ,\sp[0]_i_4_n_0 ,\sp[0]_i_5_n_0 ,sp[0]}));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_2 [10]),
        .Q(sp[10]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_2 [11]),
        .Q(sp[11]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sp_reg[11]_i_2 
       (.CI(\sp_reg[7]_i_2_n_0 ),
        .CO({\sp_reg[11]_i_2_n_0 ,\sp_reg[11]_i_2_n_1 ,\sp_reg[11]_i_2_n_2 ,\sp_reg[11]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\sp_reg[11]_0 ),
        .S(sp[11:8]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_2 [12]),
        .Q(sp[12]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_2 [13]),
        .Q(sp[13]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_2 [14]),
        .Q(sp[14]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_2 [15]),
        .Q(sp[15]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sp_reg[15]_i_4 
       (.CI(\sp_reg[11]_i_2_n_0 ),
        .CO({\sp_reg[15]_i_4_n_1 ,\sp_reg[15]_i_4_n_2 ,\sp_reg[15]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\sp_reg[15]_1 ),
        .S(sp[15:12]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_2 [1]),
        .Q(sp[1]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_2 [2]),
        .Q(sp[2]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_2 [3]),
        .Q(sp[3]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sp_reg[3]_i_2 
       (.CI(\<const0> ),
        .CO({\sp_reg[3]_i_2_n_0 ,\sp_reg[3]_i_2_n_1 ,\sp_reg[3]_i_2_n_2 ,\sp_reg[3]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,sp[1],\<const0> }),
        .O({\sp_reg[1]_0 ,\NLW_sp_reg[3]_i_2_O_UNCONNECTED [0]}),
        .S({sp[3:2],\sp[3]_i_4_n_0 ,sp[0]}));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_2 [4]),
        .Q(sp[4]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_2 [5]),
        .Q(sp[5]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_2 [6]),
        .Q(sp[6]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_2 [7]),
        .Q(sp[7]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sp_reg[7]_i_2 
       (.CI(\sp_reg[3]_i_2_n_0 ),
        .CO({\sp_reg[7]_i_2_n_0 ,\sp_reg[7]_i_2_n_1 ,\sp_reg[7]_i_2_n_2 ,\sp_reg[7]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\sp_reg[7]_0 ),
        .S(sp[7:4]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_2 [8]),
        .Q(sp[8]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_2 [9]),
        .Q(sp[9]),
        .R(SR));
endmodule

module mcvm_rgf_sreg
   (.\sr_reg[15]_0 ({sr[15],sr[14],sr[13],sr[12],sr[11],sr[10],sr[9],sr[8],sr[7],sr[6],sr[5],sr[4],sr[3],sr[2],sr[1],sr[0]}),
    bank_sel,
    \sr_reg[1]_0 ,
    \sr_reg[1]_1 ,
    \sr_reg[1]_2 ,
    \sr_reg[1]_3 ,
    \sr_reg[1]_4 ,
    gr0_bus1__0,
    \grn_reg[0] ,
    \grn_reg[1] ,
    \grn_reg[2] ,
    \grn_reg[3] ,
    \grn_reg[4] ,
    \grn_reg[5] ,
    \grn_reg[6] ,
    \grn_reg[7] ,
    \grn_reg[8] ,
    \grn_reg[9] ,
    \grn_reg[10] ,
    \grn_reg[11] ,
    \grn_reg[12] ,
    \grn_reg[13] ,
    \grn_reg[14] ,
    \grn_reg[15] ,
    gr3_bus1__0,
    gr4_bus1__0,
    \sr_reg[6]_0 ,
    \sr_reg[6]_1 ,
    \sr_reg[7]_0 ,
    fch_irq_req,
    \sr_reg[7]_1 ,
    \sr_reg[7]_2 ,
    \sr_reg[5]_0 ,
    .irq_lev_0_sp_1(irq_lev_0_sn_1),
    S,
    \bdatw[8]_INST_0_i_8 ,
    out,
    \badr[0]_INST_0_i_1 ,
    \badr[15]_INST_0_i_1 ,
    \badr[15]_INST_0_i_1_0 ,
    \badr[1]_INST_0_i_1 ,
    \badr[2]_INST_0_i_1 ,
    \badr[3]_INST_0_i_1 ,
    \badr[4]_INST_0_i_1 ,
    \badr[5]_INST_0_i_1 ,
    \badr[6]_INST_0_i_1 ,
    \badr[7]_INST_0_i_1 ,
    \badr[8]_INST_0_i_1 ,
    \badr[9]_INST_0_i_1 ,
    \badr[10]_INST_0_i_1 ,
    \badr[11]_INST_0_i_1 ,
    \badr[12]_INST_0_i_1 ,
    \badr[13]_INST_0_i_1 ,
    \badr[14]_INST_0_i_1 ,
    \badr[15]_INST_0_i_1_1 ,
    \badr[0]_INST_0_i_5_0 ,
    \badr[0]_INST_0_i_5_1 ,
    \badr[14]_INST_0_i_3 ,
    \iv[0]_i_16 ,
    abus_0,
    ctl_fetch_inferred_i_9,
    ctl_fetch_inferred_i_9_0,
    irq,
    irq_lev,
    ctl_fetch_inferred_i_13,
    fadr,
    D,
    clk,
    \sr_reg[8]_0 );
  output [3:0]bank_sel;
  output \sr_reg[1]_0 ;
  output \sr_reg[1]_1 ;
  output \sr_reg[1]_2 ;
  output \sr_reg[1]_3 ;
  output \sr_reg[1]_4 ;
  output gr0_bus1__0;
  output \grn_reg[0] ;
  output \grn_reg[1] ;
  output \grn_reg[2] ;
  output \grn_reg[3] ;
  output \grn_reg[4] ;
  output \grn_reg[5] ;
  output \grn_reg[6] ;
  output \grn_reg[7] ;
  output \grn_reg[8] ;
  output \grn_reg[9] ;
  output \grn_reg[10] ;
  output \grn_reg[11] ;
  output \grn_reg[12] ;
  output \grn_reg[13] ;
  output \grn_reg[14] ;
  output \grn_reg[15] ;
  output gr3_bus1__0;
  output gr4_bus1__0;
  output \sr_reg[6]_0 ;
  output \sr_reg[6]_1 ;
  output \sr_reg[7]_0 ;
  output fch_irq_req;
  output \sr_reg[7]_1 ;
  output \sr_reg[7]_2 ;
  output \sr_reg[5]_0 ;
  output [0:0]S;
  input \bdatw[8]_INST_0_i_8 ;
  input [4:0]out;
  input \badr[0]_INST_0_i_1 ;
  input [15:0]\badr[15]_INST_0_i_1 ;
  input [15:0]\badr[15]_INST_0_i_1_0 ;
  input \badr[1]_INST_0_i_1 ;
  input \badr[2]_INST_0_i_1 ;
  input \badr[3]_INST_0_i_1 ;
  input \badr[4]_INST_0_i_1 ;
  input \badr[5]_INST_0_i_1 ;
  input \badr[6]_INST_0_i_1 ;
  input \badr[7]_INST_0_i_1 ;
  input \badr[8]_INST_0_i_1 ;
  input \badr[9]_INST_0_i_1 ;
  input \badr[10]_INST_0_i_1 ;
  input \badr[11]_INST_0_i_1 ;
  input \badr[12]_INST_0_i_1 ;
  input \badr[13]_INST_0_i_1 ;
  input \badr[14]_INST_0_i_1 ;
  input \badr[15]_INST_0_i_1_1 ;
  input \badr[0]_INST_0_i_5_0 ;
  input \badr[0]_INST_0_i_5_1 ;
  input \badr[14]_INST_0_i_3 ;
  input \iv[0]_i_16 ;
  input [1:0]abus_0;
  input [3:0]ctl_fetch_inferred_i_9;
  input ctl_fetch_inferred_i_9_0;
  input irq;
  input [1:0]irq_lev;
  input ctl_fetch_inferred_i_13;
  input [0:0]fadr;
  input [11:0]D;
  input clk;
  input \sr_reg[8]_0 ;
     output [15:0]sr;
  output irq_lev_0_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [11:0]D;
  wire [0:0]S;
  wire [1:0]abus_0;
  wire \badr[0]_INST_0_i_1 ;
  wire \badr[0]_INST_0_i_5_0 ;
  wire \badr[0]_INST_0_i_5_1 ;
  wire \badr[10]_INST_0_i_1 ;
  wire \badr[11]_INST_0_i_1 ;
  wire \badr[12]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_1 ;
  wire \badr[14]_INST_0_i_1 ;
  wire \badr[14]_INST_0_i_3 ;
  wire [15:0]\badr[15]_INST_0_i_1 ;
  wire [15:0]\badr[15]_INST_0_i_1_0 ;
  wire \badr[15]_INST_0_i_1_1 ;
  wire \badr[1]_INST_0_i_1 ;
  wire \badr[2]_INST_0_i_1 ;
  wire \badr[3]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_1 ;
  wire \badr[5]_INST_0_i_1 ;
  wire \badr[6]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_1 ;
  wire \badr[8]_INST_0_i_1 ;
  wire \badr[9]_INST_0_i_1 ;
  wire \bank02/abuso2l/gr2_bus1__0 ;
  wire \bank02/abuso2l/gr3_bus1__0 ;
  wire [3:0]bank_sel;
  wire \bdatw[8]_INST_0_i_8 ;
  wire clk;
  wire ctl_fetch_inferred_i_13;
  wire [3:0]ctl_fetch_inferred_i_9;
  wire ctl_fetch_inferred_i_9_0;
  wire [0:0]fadr;
  wire fch_irq_req;
  wire gr0_bus1__0;
  wire gr3_bus1__0;
  wire gr4_bus1__0;
  wire \grn_reg[0] ;
  wire \grn_reg[10] ;
  wire \grn_reg[11] ;
  wire \grn_reg[12] ;
  wire \grn_reg[13] ;
  wire \grn_reg[14] ;
  wire \grn_reg[15] ;
  wire \grn_reg[1] ;
  wire \grn_reg[2] ;
  wire \grn_reg[3] ;
  wire \grn_reg[4] ;
  wire \grn_reg[5] ;
  wire \grn_reg[6] ;
  wire \grn_reg[7] ;
  wire \grn_reg[8] ;
  wire \grn_reg[9] ;
  wire irq;
  wire [1:0]irq_lev;
  wire irq_lev_0_sn_1;
  wire \iv[0]_i_16 ;
  wire [4:0]out;
  (* DONT_TOUCH *) wire [15:0]sr;
  wire \sr_reg[1]_0 ;
  wire \sr_reg[1]_1 ;
  wire \sr_reg[1]_2 ;
  wire \sr_reg[1]_3 ;
  wire \sr_reg[1]_4 ;
  wire \sr_reg[5]_0 ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[6]_1 ;
  wire \sr_reg[7]_0 ;
  wire \sr_reg[7]_1 ;
  wire \sr_reg[7]_2 ;
  wire \sr_reg[8]_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[0]_INST_0_i_5 
       (.I0(\badr[0]_INST_0_i_1 ),
        .I1(\bank02/abuso2l/gr3_bus1__0 ),
        .I2(\badr[15]_INST_0_i_1 [0]),
        .I3(\bank02/abuso2l/gr2_bus1__0 ),
        .I4(\badr[15]_INST_0_i_1_0 [0]),
        .O(\grn_reg[0] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[10]_INST_0_i_5 
       (.I0(\badr[10]_INST_0_i_1 ),
        .I1(\bank02/abuso2l/gr3_bus1__0 ),
        .I2(\badr[15]_INST_0_i_1 [10]),
        .I3(\bank02/abuso2l/gr2_bus1__0 ),
        .I4(\badr[15]_INST_0_i_1_0 [10]),
        .O(\grn_reg[10] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[11]_INST_0_i_5 
       (.I0(\badr[11]_INST_0_i_1 ),
        .I1(\bank02/abuso2l/gr3_bus1__0 ),
        .I2(\badr[15]_INST_0_i_1 [11]),
        .I3(\bank02/abuso2l/gr2_bus1__0 ),
        .I4(\badr[15]_INST_0_i_1_0 [11]),
        .O(\grn_reg[11] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[12]_INST_0_i_5 
       (.I0(\badr[12]_INST_0_i_1 ),
        .I1(\bank02/abuso2l/gr3_bus1__0 ),
        .I2(\badr[15]_INST_0_i_1 [12]),
        .I3(\bank02/abuso2l/gr2_bus1__0 ),
        .I4(\badr[15]_INST_0_i_1_0 [12]),
        .O(\grn_reg[12] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[13]_INST_0_i_5 
       (.I0(\badr[13]_INST_0_i_1 ),
        .I1(\bank02/abuso2l/gr3_bus1__0 ),
        .I2(\badr[15]_INST_0_i_1 [13]),
        .I3(\bank02/abuso2l/gr2_bus1__0 ),
        .I4(\badr[15]_INST_0_i_1_0 [13]),
        .O(\grn_reg[13] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[14]_INST_0_i_5 
       (.I0(\badr[14]_INST_0_i_1 ),
        .I1(\bank02/abuso2l/gr3_bus1__0 ),
        .I2(\badr[15]_INST_0_i_1 [14]),
        .I3(\bank02/abuso2l/gr2_bus1__0 ),
        .I4(\badr[15]_INST_0_i_1_0 [14]),
        .O(\grn_reg[14] ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[15]_INST_0_i_15 
       (.I0(\badr[0]_INST_0_i_5_1 ),
        .I1(sr[1]),
        .I2(sr[0]),
        .O(gr3_bus1__0));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[15]_INST_0_i_16 
       (.I0(\badr[14]_INST_0_i_3 ),
        .I1(sr[1]),
        .I2(sr[0]),
        .O(gr4_bus1__0));
  LUT3 #(
    .INIT(8'h20)) 
    \badr[15]_INST_0_i_25 
       (.I0(\badr[0]_INST_0_i_5_1 ),
        .I1(sr[0]),
        .I2(sr[1]),
        .O(\bank02/abuso2l/gr3_bus1__0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \badr[15]_INST_0_i_26 
       (.I0(\badr[0]_INST_0_i_5_0 ),
        .I1(sr[0]),
        .I2(sr[1]),
        .O(\bank02/abuso2l/gr2_bus1__0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[15]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_1_1 ),
        .I1(\bank02/abuso2l/gr3_bus1__0 ),
        .I2(\badr[15]_INST_0_i_1 [15]),
        .I3(\bank02/abuso2l/gr2_bus1__0 ),
        .I4(\badr[15]_INST_0_i_1_0 [15]),
        .O(\grn_reg[15] ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_78 
       (.I0(sr[0]),
        .I1(sr[1]),
        .O(bank_sel[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_79 
       (.I0(sr[0]),
        .I1(sr[1]),
        .O(bank_sel[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_88 
       (.I0(sr[1]),
        .I1(sr[0]),
        .O(bank_sel[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_89 
       (.I0(sr[0]),
        .I1(sr[1]),
        .O(bank_sel[0]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[1]_INST_0_i_5 
       (.I0(\badr[1]_INST_0_i_1 ),
        .I1(\bank02/abuso2l/gr3_bus1__0 ),
        .I2(\badr[15]_INST_0_i_1 [1]),
        .I3(\bank02/abuso2l/gr2_bus1__0 ),
        .I4(\badr[15]_INST_0_i_1_0 [1]),
        .O(\grn_reg[1] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[2]_INST_0_i_5 
       (.I0(\badr[2]_INST_0_i_1 ),
        .I1(\bank02/abuso2l/gr3_bus1__0 ),
        .I2(\badr[15]_INST_0_i_1 [2]),
        .I3(\bank02/abuso2l/gr2_bus1__0 ),
        .I4(\badr[15]_INST_0_i_1_0 [2]),
        .O(\grn_reg[2] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[3]_INST_0_i_5 
       (.I0(\badr[3]_INST_0_i_1 ),
        .I1(\bank02/abuso2l/gr3_bus1__0 ),
        .I2(\badr[15]_INST_0_i_1 [3]),
        .I3(\bank02/abuso2l/gr2_bus1__0 ),
        .I4(\badr[15]_INST_0_i_1_0 [3]),
        .O(\grn_reg[3] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[4]_INST_0_i_5 
       (.I0(\badr[4]_INST_0_i_1 ),
        .I1(\bank02/abuso2l/gr3_bus1__0 ),
        .I2(\badr[15]_INST_0_i_1 [4]),
        .I3(\bank02/abuso2l/gr2_bus1__0 ),
        .I4(\badr[15]_INST_0_i_1_0 [4]),
        .O(\grn_reg[4] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[5]_INST_0_i_5 
       (.I0(\badr[5]_INST_0_i_1 ),
        .I1(\bank02/abuso2l/gr3_bus1__0 ),
        .I2(\badr[15]_INST_0_i_1 [5]),
        .I3(\bank02/abuso2l/gr2_bus1__0 ),
        .I4(\badr[15]_INST_0_i_1_0 [5]),
        .O(\grn_reg[5] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[6]_INST_0_i_5 
       (.I0(\badr[6]_INST_0_i_1 ),
        .I1(\bank02/abuso2l/gr3_bus1__0 ),
        .I2(\badr[15]_INST_0_i_1 [6]),
        .I3(\bank02/abuso2l/gr2_bus1__0 ),
        .I4(\badr[15]_INST_0_i_1_0 [6]),
        .O(\grn_reg[6] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[7]_INST_0_i_5 
       (.I0(\badr[7]_INST_0_i_1 ),
        .I1(\bank02/abuso2l/gr3_bus1__0 ),
        .I2(\badr[15]_INST_0_i_1 [7]),
        .I3(\bank02/abuso2l/gr2_bus1__0 ),
        .I4(\badr[15]_INST_0_i_1_0 [7]),
        .O(\grn_reg[7] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[8]_INST_0_i_5 
       (.I0(\badr[8]_INST_0_i_1 ),
        .I1(\bank02/abuso2l/gr3_bus1__0 ),
        .I2(\badr[15]_INST_0_i_1 [8]),
        .I3(\bank02/abuso2l/gr2_bus1__0 ),
        .I4(\badr[15]_INST_0_i_1_0 [8]),
        .O(\grn_reg[8] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[9]_INST_0_i_5 
       (.I0(\badr[9]_INST_0_i_1 ),
        .I1(\bank02/abuso2l/gr3_bus1__0 ),
        .I2(\badr[15]_INST_0_i_1 [9]),
        .I3(\bank02/abuso2l/gr2_bus1__0 ),
        .I4(\badr[15]_INST_0_i_1_0 [9]),
        .O(\grn_reg[9] ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[10]_INST_0_i_22 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\bdatw[8]_INST_0_i_8 ),
        .I3(out[2]),
        .O(\sr_reg[1]_2 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[11]_INST_0_i_24 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\bdatw[8]_INST_0_i_8 ),
        .I3(out[3]),
        .O(\sr_reg[1]_3 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[12]_INST_0_i_23 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\bdatw[8]_INST_0_i_8 ),
        .I3(out[4]),
        .O(\sr_reg[1]_4 ));
  LUT3 #(
    .INIT(8'h20)) 
    \bdatw[15]_INST_0_i_76 
       (.I0(\bdatw[8]_INST_0_i_8 ),
        .I1(sr[0]),
        .I2(sr[1]),
        .O(gr0_bus1__0));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[8]_INST_0_i_23 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\bdatw[8]_INST_0_i_8 ),
        .I3(out[0]),
        .O(\sr_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[9]_INST_0_i_24 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\bdatw[8]_INST_0_i_8 ),
        .I3(out[1]),
        .O(\sr_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h5FA0CFCF)) 
    ctl_fetch_inferred_i_11
       (.I0(sr[7]),
        .I1(sr[4]),
        .I2(ctl_fetch_inferred_i_9[1]),
        .I3(sr[5]),
        .I4(ctl_fetch_inferred_i_9[3]),
        .O(\sr_reg[7]_1 ));
  LUT6 #(
    .INIT(64'h0000090000000000)) 
    ctl_fetch_inferred_i_25
       (.I0(sr[7]),
        .I1(sr[5]),
        .I2(ctl_fetch_inferred_i_9[2]),
        .I3(sr[4]),
        .I4(ctl_fetch_inferred_i_9[3]),
        .I5(ctl_fetch_inferred_i_9_0),
        .O(\sr_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h2000AA20AAAAAAAA)) 
    ctl_fetch_inferred_i_30
       (.I0(ctl_fetch_inferred_i_13),
        .I1(irq_lev[0]),
        .I2(sr[2]),
        .I3(sr[3]),
        .I4(irq_lev[1]),
        .I5(irq),
        .O(irq_lev_0_sn_1));
  LUT6 #(
    .INIT(64'h0909090900000900)) 
    ctl_fetch_inferred_i_48
       (.I0(sr[7]),
        .I1(sr[5]),
        .I2(ctl_fetch_inferred_i_9[2]),
        .I3(sr[4]),
        .I4(ctl_fetch_inferred_i_9[3]),
        .I5(ctl_fetch_inferred_i_9[1]),
        .O(\sr_reg[7]_2 ));
  LUT5 #(
    .INIT(32'h2020A220)) 
    fch_irq_req_fl_i_1
       (.I0(irq),
        .I1(irq_lev[1]),
        .I2(sr[3]),
        .I3(sr[2]),
        .I4(irq_lev[0]),
        .O(fch_irq_req));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[10]_i_27 
       (.I0(sr[6]),
        .I1(\iv[0]_i_16 ),
        .I2(abus_0[0]),
        .O(\sr_reg[6]_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_35 
       (.I0(sr[6]),
        .I1(\iv[0]_i_16 ),
        .I2(abus_0[1]),
        .O(\sr_reg[6]_1 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \iv[15]_i_115 
       (.I0(sr[5]),
        .I1(ctl_fetch_inferred_i_9[0]),
        .I2(sr[7]),
        .I3(ctl_fetch_inferred_i_9[1]),
        .O(\sr_reg[5]_0 ));
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
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(sr[0]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[8]),
        .Q(sr[10]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[9]),
        .Q(sr[11]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[10]),
        .Q(sr[12]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[11]),
        .Q(sr[13]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[14]),
        .Q(sr[14]),
        .R(\sr_reg[8]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[15]),
        .Q(sr[15]),
        .R(\sr_reg[8]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(sr[1]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(sr[2]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[3]),
        .Q(sr[3]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[4]),
        .Q(sr[4]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[5]),
        .Q(sr[5]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[6]),
        .Q(sr[6]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[7]),
        .Q(sr[7]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[8]),
        .Q(sr[8]),
        .R(\sr_reg[8]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[9]),
        .Q(sr[9]),
        .R(\sr_reg[8]_0 ));
endmodule

module mcvm_rgf_treg
   (.\tr_reg[15]_0 ({tr[15],tr[14],tr[13],tr[12],tr[11],tr[10],tr[9],tr[8],tr[7],tr[6],tr[5],tr[4],tr[3],tr[2],tr[1],tr[0]}),
    badrx,
    .badrx_15_sp_1(badrx_15_sn_1),
    SR,
    \tr_reg[0]_0 ,
    \tr_reg[15]_1 ,
    clk);
  output [15:0]badrx;
  input [0:0]SR;
  input [0:0]\tr_reg[0]_0 ;
  input [15:0]\tr_reg[15]_1 ;
  input clk;
     output [15:0]tr;
  input badrx_15_sn_1;

  wire [0:0]SR;
  wire [15:0]badrx;
  wire badrx_15_sn_1;
  wire clk;
  (* DONT_TOUCH *) wire [15:0]tr;
  wire [0:0]\tr_reg[0]_0 ;
  wire [15:0]\tr_reg[15]_1 ;

  LUT2 #(
    .INIT(4'h2)) 
    \badrx[0]_INST_0 
       (.I0(tr[0]),
        .I1(badrx_15_sn_1),
        .O(badrx[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[10]_INST_0 
       (.I0(tr[10]),
        .I1(badrx_15_sn_1),
        .O(badrx[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[11]_INST_0 
       (.I0(tr[11]),
        .I1(badrx_15_sn_1),
        .O(badrx[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[12]_INST_0 
       (.I0(tr[12]),
        .I1(badrx_15_sn_1),
        .O(badrx[12]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[13]_INST_0 
       (.I0(tr[13]),
        .I1(badrx_15_sn_1),
        .O(badrx[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[14]_INST_0 
       (.I0(tr[14]),
        .I1(badrx_15_sn_1),
        .O(badrx[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[15]_INST_0 
       (.I0(tr[15]),
        .I1(badrx_15_sn_1),
        .O(badrx[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[1]_INST_0 
       (.I0(tr[1]),
        .I1(badrx_15_sn_1),
        .O(badrx[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[2]_INST_0 
       (.I0(tr[2]),
        .I1(badrx_15_sn_1),
        .O(badrx[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[3]_INST_0 
       (.I0(tr[3]),
        .I1(badrx_15_sn_1),
        .O(badrx[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[4]_INST_0 
       (.I0(tr[4]),
        .I1(badrx_15_sn_1),
        .O(badrx[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[5]_INST_0 
       (.I0(tr[5]),
        .I1(badrx_15_sn_1),
        .O(badrx[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[6]_INST_0 
       (.I0(tr[6]),
        .I1(badrx_15_sn_1),
        .O(badrx[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[7]_INST_0 
       (.I0(tr[7]),
        .I1(badrx_15_sn_1),
        .O(badrx[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[8]_INST_0 
       (.I0(tr[8]),
        .I1(badrx_15_sn_1),
        .O(badrx[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[9]_INST_0 
       (.I0(tr[9]),
        .I1(badrx_15_sn_1),
        .O(badrx[9]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[0] 
       (.C(clk),
        .CE(\tr_reg[0]_0 ),
        .D(\tr_reg[15]_1 [0]),
        .Q(tr[0]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[10] 
       (.C(clk),
        .CE(\tr_reg[0]_0 ),
        .D(\tr_reg[15]_1 [10]),
        .Q(tr[10]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[11] 
       (.C(clk),
        .CE(\tr_reg[0]_0 ),
        .D(\tr_reg[15]_1 [11]),
        .Q(tr[11]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[12] 
       (.C(clk),
        .CE(\tr_reg[0]_0 ),
        .D(\tr_reg[15]_1 [12]),
        .Q(tr[12]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[13] 
       (.C(clk),
        .CE(\tr_reg[0]_0 ),
        .D(\tr_reg[15]_1 [13]),
        .Q(tr[13]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[14] 
       (.C(clk),
        .CE(\tr_reg[0]_0 ),
        .D(\tr_reg[15]_1 [14]),
        .Q(tr[14]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[15] 
       (.C(clk),
        .CE(\tr_reg[0]_0 ),
        .D(\tr_reg[15]_1 [15]),
        .Q(tr[15]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[1] 
       (.C(clk),
        .CE(\tr_reg[0]_0 ),
        .D(\tr_reg[15]_1 [1]),
        .Q(tr[1]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[2] 
       (.C(clk),
        .CE(\tr_reg[0]_0 ),
        .D(\tr_reg[15]_1 [2]),
        .Q(tr[2]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[3] 
       (.C(clk),
        .CE(\tr_reg[0]_0 ),
        .D(\tr_reg[15]_1 [3]),
        .Q(tr[3]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[4] 
       (.C(clk),
        .CE(\tr_reg[0]_0 ),
        .D(\tr_reg[15]_1 [4]),
        .Q(tr[4]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[5] 
       (.C(clk),
        .CE(\tr_reg[0]_0 ),
        .D(\tr_reg[15]_1 [5]),
        .Q(tr[5]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[6] 
       (.C(clk),
        .CE(\tr_reg[0]_0 ),
        .D(\tr_reg[15]_1 [6]),
        .Q(tr[6]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[7] 
       (.C(clk),
        .CE(\tr_reg[0]_0 ),
        .D(\tr_reg[15]_1 [7]),
        .Q(tr[7]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[8] 
       (.C(clk),
        .CE(\tr_reg[0]_0 ),
        .D(\tr_reg[15]_1 [8]),
        .Q(tr[8]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[9] 
       (.C(clk),
        .CE(\tr_reg[0]_0 ),
        .D(\tr_reg[15]_1 [9]),
        .Q(tr[9]),
        .R(SR));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module moscovium
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
    badrx,
    badr,
    bdatw,
    crdy,
    cbus_i,
    ccmd,
    abus_o,
    bbus_o);
//
//	Moscovium 16 bit CPU core
//		(c) 2021	1YEN Toru
//
//
//	2023/09/23	ver.1.20
//		change instruction fetch latency: 0 => 1
//		corresponding to Xilinx Vivado
//
//	2023/07/08	ver.1.18
//		instruction: adcz, sbbz, cmbz
//
//	2023/05/20	ver.1.16
//		instruction: divlqr, divlrr, divur, divsr, mulur, mulsr
//
//	2022/10/22	ver.1.14
//		corresponding to interrupt vector / level
//
//	2022/06/04	ver.1.12
//		instruction: csft, csfti
//		revised register file block
//
//	2022/02/19	ver.1.10
//		corresponding to extended address
//		badrx output
//
//	2021/07/31	ver.1.08
//		sr bit field: cpu id for dual core edition
//
//	2021/07/10	ver.1.06
//		hcmp: half compare
//		cmb: compare with borrow
//		adc, sbb: condition of z flag changed
//
//	2021/06/12	ver.1.04
//		half precision fpu instruction:
//			hadd, hsub, hmul, hdiv, hneg, hhalf, huint, hfrac, hmvsg, hsat
//
//	2021/05/22	ver.1.02
//		mul/div instruction: mulu, muls, divu, divs, divlu, divls, divlq, divlr
//		co-processor control bit to sr
//		co-processor I/F
//
//	2021/05/01	ver.1.00
//		interrupt related instruction: pause, rti
//		sr bit operation instruction: sesrl, sesrh, clsrl, clsrh
//		sp relative instruction: ldwsp, stwsp
//		control register iv and tr
//		interrupt enable ie bit in sr
//
//	2021/04/10	ver.0.92
//		alu: smaller barrel shift unit
//
//	2021/03/06	ver.0.90
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
  output [15:0]badrx;
  output [15:0]badr;
  output [15:0]bdatw;
  input crdy;
  input [15:0]cbus_i;
  output [4:0]ccmd;
  output [15:0]abus_o;
  output [15:0]bbus_o;

  wire [15:0]abus_0;
  wire [15:0]abus_o;
  wire alu_n_0;
  wire alu_n_1;
  wire alu_n_10;
  wire alu_n_11;
  wire alu_n_13;
  wire alu_n_14;
  wire alu_n_15;
  wire alu_n_17;
  wire alu_n_2;
  wire alu_n_3;
  wire alu_n_4;
  wire alu_n_5;
  wire alu_n_6;
  wire alu_n_7;
  wire alu_n_8;
  wire alu_n_9;
  wire [18:18]\art/add/tout ;
  wire [15:15]\art/p_0_in ;
  wire [15:0]badr;
  wire [15:0]badrx;
  wire \bank02/abuso/gr0_bus1__0 ;
  wire \bank02/abuso/gr1_bus1__0 ;
  wire \bank02/abuso/gr2_bus1__0 ;
  wire \bank02/abuso/gr3_bus1__0 ;
  wire \bank02/abuso/gr4_bus1__0 ;
  wire \bank02/abuso/gr5_bus1__0 ;
  wire \bank02/abuso/gr6_bus1__0 ;
  wire \bank02/abuso/gr7_bus1__0 ;
  wire \bank02/abuso2l/gr4_bus1__0 ;
  wire \bank02/abuso2l/gr5_bus1__0 ;
  wire \bank02/bbuso/gr0_bus1__0 ;
  wire \bank02/bbuso/gr1_bus1__0 ;
  wire \bank02/bbuso/gr2_bus1__0 ;
  wire \bank02/bbuso/gr3_bus1__0 ;
  wire \bank02/bbuso/gr4_bus1__0 ;
  wire \bank02/bbuso/gr5_bus1__0 ;
  wire \bank02/bbuso/gr6_bus1__0 ;
  wire \bank02/bbuso/gr7_bus1__0 ;
  wire \bank02/bbuso2l/gr2_bus1__0 ;
  wire \bank02/bbuso2l/gr3_bus1__0 ;
  wire \bank02/bbuso2l/gr4_bus1__0 ;
  wire \bank02/bbuso2l/gr5_bus1__0 ;
  wire \bank13/abuso/gr0_bus1__0 ;
  wire \bank13/abuso/gr1_bus1__0 ;
  wire \bank13/abuso/gr2_bus1__0 ;
  wire \bank13/abuso/gr3_bus1__0 ;
  wire \bank13/abuso/gr4_bus1__0 ;
  wire \bank13/abuso/gr5_bus1__0 ;
  wire \bank13/abuso/gr6_bus1__0 ;
  wire \bank13/abuso/gr7_bus1__0 ;
  wire \bank13/abuso2l/gr0_bus1__0 ;
  wire \bank13/abuso2l/gr1_bus1__0 ;
  wire \bank13/abuso2l/gr2_bus1__0 ;
  wire \bank13/abuso2l/gr5_bus1__0 ;
  wire \bank13/abuso2l/gr6_bus1__0 ;
  wire \bank13/abuso2l/gr7_bus1__0 ;
  wire \bank13/bbuso/gr0_bus1__0 ;
  wire \bank13/bbuso/gr1_bus1__0 ;
  wire \bank13/bbuso/gr2_bus1__0 ;
  wire \bank13/bbuso/gr3_bus1__0 ;
  wire \bank13/bbuso/gr4_bus1__0 ;
  wire \bank13/bbuso/gr5_bus1__0 ;
  wire \bank13/bbuso/gr6_bus1__0 ;
  wire \bank13/bbuso/gr7_bus1__0 ;
  wire \bank13/bbuso2l/gr0_bus1__0 ;
  wire \bank13/bbuso2l/gr1_bus1__0 ;
  wire \bank13/bbuso2l/gr2_bus1__0 ;
  wire \bank13/bbuso2l/gr3_bus1__0 ;
  wire \bank13/bbuso2l/gr4_bus1__0 ;
  wire \bank13/bbuso2l/gr5_bus1__0 ;
  wire \bank13/bbuso2l/gr6_bus1__0 ;
  wire \bank13/bbuso2l/gr7_bus1__0 ;
  wire [3:0]bank_sel;
  wire [4:0]bbus_b02;
  wire [15:0]bbus_o;
  wire [0:0]bbus_sel_cr;
  wire [2:0]bcmd;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire brdy;
  wire [15:0]cbus;
  wire [15:0]cbus_i;
  wire [4:3]cbus_sel_cr;
  wire [4:0]ccmd;
  wire clk;
  wire [1:0]cpuid;
  wire crdy;
  (* DONT_TOUCH *) wire ctl_fetch;
  wire ctl_n_0;
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
  wire ctl_n_22;
  wire ctl_n_23;
  wire ctl_n_24;
  wire ctl_n_25;
  wire ctl_n_26;
  wire ctl_n_27;
  wire ctl_n_28;
  wire ctl_n_29;
  wire ctl_n_3;
  wire ctl_n_30;
  wire ctl_n_4;
  wire ctl_n_5;
  wire ctl_n_6;
  wire ctl_n_7;
  wire [2:0]ctl_selc_rn;
  wire [15:0]fadr;
  wire [15:0]fch_ir;
  wire fch_irq_req;
  wire fch_n_100;
  wire fch_n_101;
  wire fch_n_102;
  wire fch_n_103;
  wire fch_n_104;
  wire fch_n_105;
  wire fch_n_106;
  wire fch_n_107;
  wire fch_n_108;
  wire fch_n_109;
  wire fch_n_110;
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
  wire fch_n_177;
  wire fch_n_178;
  wire fch_n_213;
  wire fch_n_215;
  wire fch_n_216;
  wire fch_n_217;
  wire fch_n_226;
  wire fch_n_228;
  wire fch_n_229;
  wire fch_n_230;
  wire fch_n_231;
  wire fch_n_232;
  wire fch_n_233;
  wire fch_n_250;
  wire fch_n_251;
  wire fch_n_252;
  wire fch_n_253;
  wire fch_n_254;
  wire fch_n_255;
  wire fch_n_256;
  wire fch_n_257;
  wire fch_n_258;
  wire fch_n_259;
  wire fch_n_260;
  wire fch_n_261;
  wire fch_n_262;
  wire fch_n_263;
  wire fch_n_264;
  wire fch_n_265;
  wire fch_n_266;
  wire fch_n_267;
  wire fch_n_268;
  wire fch_n_269;
  wire fch_n_270;
  wire fch_n_271;
  wire fch_n_272;
  wire fch_n_273;
  wire fch_n_274;
  wire fch_n_275;
  wire fch_n_276;
  wire fch_n_277;
  wire fch_n_278;
  wire fch_n_279;
  wire fch_n_280;
  wire fch_n_281;
  wire fch_n_282;
  wire fch_n_283;
  wire fch_n_284;
  wire fch_n_285;
  wire fch_n_286;
  wire fch_n_287;
  wire fch_n_288;
  wire fch_n_289;
  wire fch_n_290;
  wire fch_n_291;
  wire fch_n_292;
  wire fch_n_293;
  wire fch_n_294;
  wire fch_n_295;
  wire fch_n_296;
  wire fch_n_297;
  wire fch_n_316;
  wire fch_n_317;
  wire fch_n_318;
  wire fch_n_319;
  wire fch_n_320;
  wire fch_n_321;
  wire fch_n_322;
  wire fch_n_323;
  wire fch_n_324;
  wire fch_n_325;
  wire fch_n_326;
  wire fch_n_327;
  wire fch_n_328;
  wire fch_n_329;
  wire fch_n_330;
  wire fch_n_331;
  wire fch_n_332;
  wire fch_n_333;
  wire fch_n_334;
  wire fch_n_335;
  wire fch_n_336;
  wire fch_n_337;
  wire fch_n_338;
  wire fch_n_339;
  wire fch_n_340;
  wire fch_n_341;
  wire fch_n_342;
  wire fch_n_343;
  wire fch_n_344;
  wire fch_n_345;
  wire fch_n_346;
  wire fch_n_347;
  wire fch_n_348;
  wire fch_n_349;
  wire fch_n_350;
  wire fch_n_351;
  wire fch_n_352;
  wire fch_n_353;
  wire fch_n_354;
  wire fch_n_355;
  wire fch_n_356;
  wire fch_n_357;
  wire fch_n_358;
  wire fch_n_359;
  wire fch_n_360;
  wire fch_n_361;
  wire fch_n_362;
  wire fch_n_363;
  wire fch_n_364;
  wire fch_n_365;
  wire fch_n_382;
  wire fch_n_383;
  wire fch_n_384;
  wire fch_n_385;
  wire fch_n_386;
  wire fch_n_387;
  wire fch_n_388;
  wire fch_n_389;
  wire fch_n_39;
  wire fch_n_390;
  wire fch_n_391;
  wire fch_n_392;
  wire fch_n_393;
  wire fch_n_394;
  wire fch_n_395;
  wire fch_n_396;
  wire fch_n_397;
  wire fch_n_398;
  wire fch_n_399;
  wire fch_n_40;
  wire fch_n_400;
  wire fch_n_43;
  wire fch_n_44;
  wire fch_n_45;
  wire fch_n_46;
  wire fch_n_52;
  wire fch_n_55;
  wire fch_n_56;
  wire fch_n_57;
  wire fch_n_58;
  wire fch_n_70;
  wire fch_n_71;
  wire fch_n_72;
  wire fch_n_73;
  wire fch_n_74;
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
  wire fch_n_95;
  wire fch_n_96;
  wire fch_n_97;
  wire fch_n_98;
  wire fch_n_99;
  wire [15:0]fch_pc;
  wire [15:0]fdat;
  wire irq;
  wire [1:0]irq_lev;
  wire [5:0]irq_vec;
  wire [15:1]\ivec/p_0_in ;
  wire mem_n_0;
  wire mem_n_10;
  wire mem_n_11;
  wire mem_n_12;
  wire mem_n_13;
  wire mem_n_14;
  wire mem_n_15;
  wire mem_n_16;
  wire mem_n_17;
  wire mem_n_4;
  wire mem_n_5;
  wire mem_n_6;
  wire mem_n_7;
  wire mem_n_8;
  wire mem_n_9;
  wire \pcnt/p_0_in ;
  wire [15:0]\pcnt/p_1_in ;
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
  wire rgf_n_128;
  wire rgf_n_129;
  wire rgf_n_13;
  wire rgf_n_130;
  wire rgf_n_131;
  wire rgf_n_132;
  wire rgf_n_133;
  wire rgf_n_134;
  wire rgf_n_135;
  wire rgf_n_136;
  wire rgf_n_137;
  wire rgf_n_138;
  wire rgf_n_139;
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
  wire rgf_n_16;
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
  wire rgf_n_17;
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
  wire rgf_n_18;
  wire rgf_n_180;
  wire rgf_n_181;
  wire rgf_n_182;
  wire rgf_n_183;
  wire rgf_n_184;
  wire rgf_n_185;
  wire rgf_n_186;
  wire rgf_n_187;
  wire rgf_n_188;
  wire rgf_n_189;
  wire rgf_n_19;
  wire rgf_n_190;
  wire rgf_n_191;
  wire rgf_n_192;
  wire rgf_n_193;
  wire rgf_n_194;
  wire rgf_n_195;
  wire rgf_n_196;
  wire rgf_n_197;
  wire rgf_n_198;
  wire rgf_n_199;
  wire rgf_n_2;
  wire rgf_n_20;
  wire rgf_n_200;
  wire rgf_n_201;
  wire rgf_n_202;
  wire rgf_n_203;
  wire rgf_n_204;
  wire rgf_n_205;
  wire rgf_n_206;
  wire rgf_n_207;
  wire rgf_n_21;
  wire rgf_n_22;
  wire rgf_n_23;
  wire rgf_n_24;
  wire rgf_n_25;
  wire rgf_n_26;
  wire rgf_n_27;
  wire rgf_n_28;
  wire rgf_n_29;
  wire rgf_n_3;
  wire rgf_n_30;
  wire rgf_n_303;
  wire rgf_n_304;
  wire rgf_n_305;
  wire rgf_n_306;
  wire rgf_n_307;
  wire rgf_n_308;
  wire rgf_n_309;
  wire rgf_n_31;
  wire rgf_n_310;
  wire rgf_n_311;
  wire rgf_n_312;
  wire rgf_n_313;
  wire rgf_n_314;
  wire rgf_n_315;
  wire rgf_n_316;
  wire rgf_n_317;
  wire rgf_n_318;
  wire rgf_n_32;
  wire rgf_n_324;
  wire rgf_n_325;
  wire rgf_n_326;
  wire rgf_n_327;
  wire rgf_n_328;
  wire rgf_n_329;
  wire rgf_n_33;
  wire rgf_n_330;
  wire rgf_n_331;
  wire rgf_n_332;
  wire rgf_n_333;
  wire rgf_n_334;
  wire rgf_n_34;
  wire rgf_n_35;
  wire rgf_n_355;
  wire rgf_n_356;
  wire rgf_n_357;
  wire rgf_n_358;
  wire rgf_n_359;
  wire rgf_n_36;
  wire rgf_n_360;
  wire rgf_n_361;
  wire rgf_n_362;
  wire rgf_n_363;
  wire rgf_n_364;
  wire rgf_n_365;
  wire rgf_n_366;
  wire rgf_n_367;
  wire rgf_n_368;
  wire rgf_n_369;
  wire rgf_n_37;
  wire rgf_n_370;
  wire rgf_n_371;
  wire rgf_n_372;
  wire rgf_n_373;
  wire rgf_n_374;
  wire rgf_n_375;
  wire rgf_n_377;
  wire rgf_n_378;
  wire rgf_n_379;
  wire rgf_n_38;
  wire rgf_n_380;
  wire rgf_n_381;
  wire rgf_n_382;
  wire rgf_n_383;
  wire rgf_n_384;
  wire rgf_n_385;
  wire rgf_n_386;
  wire rgf_n_387;
  wire rgf_n_388;
  wire rgf_n_389;
  wire rgf_n_39;
  wire rgf_n_390;
  wire rgf_n_391;
  wire rgf_n_392;
  wire rgf_n_393;
  wire rgf_n_394;
  wire rgf_n_395;
  wire rgf_n_396;
  wire rgf_n_397;
  wire rgf_n_398;
  wire rgf_n_399;
  wire rgf_n_4;
  wire rgf_n_40;
  wire rgf_n_400;
  wire rgf_n_401;
  wire rgf_n_402;
  wire rgf_n_403;
  wire rgf_n_404;
  wire rgf_n_405;
  wire rgf_n_406;
  wire rgf_n_407;
  wire rgf_n_408;
  wire rgf_n_409;
  wire rgf_n_41;
  wire rgf_n_410;
  wire rgf_n_411;
  wire rgf_n_412;
  wire rgf_n_413;
  wire rgf_n_414;
  wire rgf_n_415;
  wire rgf_n_416;
  wire rgf_n_417;
  wire rgf_n_418;
  wire rgf_n_419;
  wire rgf_n_42;
  wire rgf_n_420;
  wire rgf_n_421;
  wire rgf_n_422;
  wire rgf_n_423;
  wire rgf_n_424;
  wire rgf_n_425;
  wire rgf_n_426;
  wire rgf_n_427;
  wire rgf_n_428;
  wire rgf_n_429;
  wire rgf_n_43;
  wire rgf_n_430;
  wire rgf_n_431;
  wire rgf_n_432;
  wire rgf_n_433;
  wire rgf_n_434;
  wire rgf_n_435;
  wire rgf_n_436;
  wire rgf_n_437;
  wire rgf_n_438;
  wire rgf_n_439;
  wire rgf_n_44;
  wire rgf_n_440;
  wire rgf_n_441;
  wire rgf_n_442;
  wire rgf_n_443;
  wire rgf_n_444;
  wire rgf_n_445;
  wire rgf_n_45;
  wire rgf_n_46;
  wire rgf_n_463;
  wire rgf_n_464;
  wire rgf_n_465;
  wire rgf_n_47;
  wire rgf_n_48;
  wire rgf_n_482;
  wire rgf_n_483;
  wire rgf_n_484;
  wire rgf_n_485;
  wire rgf_n_486;
  wire rgf_n_487;
  wire rgf_n_488;
  wire rgf_n_489;
  wire rgf_n_49;
  wire rgf_n_490;
  wire rgf_n_491;
  wire rgf_n_492;
  wire rgf_n_493;
  wire rgf_n_494;
  wire rgf_n_495;
  wire rgf_n_496;
  wire rgf_n_497;
  wire rgf_n_498;
  wire rgf_n_499;
  wire rgf_n_5;
  wire rgf_n_50;
  wire rgf_n_500;
  wire rgf_n_501;
  wire rgf_n_502;
  wire rgf_n_503;
  wire rgf_n_504;
  wire rgf_n_505;
  wire rgf_n_506;
  wire rgf_n_507;
  wire rgf_n_508;
  wire rgf_n_509;
  wire rgf_n_51;
  wire rgf_n_510;
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
  wire rgf_sr_dr;
  wire [3:0]rgf_sr_flag;
  wire [1:0]rgf_sr_ie;
  wire rgf_sr_ml;
  wire [15:0]rgf_tr;
  wire rst_n;
  wire [15:0]\sptr/p_0_in ;
  wire [15:1]\sptr/sp_dec_0 ;
  wire [1:0]sr_bank;
  wire [13:0]\sreg/p_0_in ;
  wire [7:0]\sreg/p_2_in ;
  wire [2:0]stat;
  wire [2:0]stat_nx;

  mcvm_alu alu
       (.DI({fch_n_358,fch_n_359,fch_n_360}),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .S({fch_n_361,fch_n_362,fch_n_363,fch_n_364}),
        .\sr[4]_i_20 (alu_n_17),
        .\sr[6]_i_2 (fch_n_357),
        .\sr[6]_i_2_0 ({fch_n_383,fch_n_384}),
        .tout__1_carry__0_i_8({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .tout__1_carry__1_i_8({alu_n_8,alu_n_9,alu_n_10,alu_n_11}),
        .tout__1_carry__2_i_8({\art/p_0_in ,alu_n_13,alu_n_14,alu_n_15}),
        .tout__1_carry__3_i_3(\art/add/tout ),
        .\tr_reg[11] ({fch_n_393,fch_n_394,fch_n_395,fch_n_396}),
        .\tr_reg[11]_0 ({fch_n_397,fch_n_398,fch_n_399,fch_n_400}),
        .\tr_reg[13] ({fch_n_353,fch_n_354,fch_n_355,fch_n_356}),
        .\tr_reg[13]_0 ({fch_n_349,fch_n_350,fch_n_351,fch_n_352}),
        .\tr_reg[7] ({fch_n_385,fch_n_386,fch_n_387,fch_n_388}),
        .\tr_reg[7]_0 ({fch_n_389,fch_n_390,fch_n_391,fch_n_392}));
  mcvm_fsm ctl
       (.D(stat_nx),
        .Q(stat),
        .SR(\pcnt/p_0_in ),
        .\bcmd[1] ({fch_ir[15:13],fch_ir[11],fch_ir[9],fch_ir[7:6],fch_ir[2:0]}),
        .\bdatw[15]_INST_0_i_4 (fch_n_229),
        .brdy(brdy),
        .brdy_0(ctl_n_29),
        .\ccmd[2] (fch_n_216),
        .clk(clk),
        .crdy(crdy),
        .crdy_0(ctl_n_23),
        .ctl_selc_rn(ctl_selc_rn[0]),
        .fch_irq_req(fch_irq_req),
        .\grn_reg[15] (ctl_selc_rn[2]),
        .\iv[15]_i_52 (fch_n_213),
        .out({rgf_sr_flag[3:2],rgf_sr_flag[0]}),
        .\stat[0]_i_17 (fch_n_230),
        .\stat_reg[0]_0 (ctl_n_6),
        .\stat_reg[0]_1 (ctl_n_7),
        .\stat_reg[0]_2 (ctl_n_13),
        .\stat_reg[0]_3 (ctl_n_16),
        .\stat_reg[0]_4 (ctl_n_21),
        .\stat_reg[0]_5 (ctl_n_22),
        .\stat_reg[0]_6 (ctl_n_25),
        .\stat_reg[1]_0 (ctl_n_0),
        .\stat_reg[1]_1 (ctl_n_2),
        .\stat_reg[1]_10 (ctl_n_27),
        .\stat_reg[1]_11 (ctl_n_30),
        .\stat_reg[1]_12 (fch_n_232),
        .\stat_reg[1]_2 (ctl_n_3),
        .\stat_reg[1]_3 (ctl_n_5),
        .\stat_reg[1]_4 (ctl_n_11),
        .\stat_reg[1]_5 (ctl_n_12),
        .\stat_reg[1]_6 (ctl_n_15),
        .\stat_reg[1]_7 (ctl_n_18),
        .\stat_reg[1]_8 (ctl_n_24),
        .\stat_reg[1]_9 (ctl_n_26),
        .\stat_reg[2]_0 (ctl_n_4),
        .\stat_reg[2]_1 (ctl_n_14),
        .\stat_reg[2]_2 (ctl_n_17),
        .\stat_reg[2]_3 (ctl_n_19),
        .\stat_reg[2]_4 (ctl_n_20),
        .\stat_reg[2]_5 (ctl_n_28),
        .\tr[15]_i_2 (fch_n_228),
        .\tr[15]_i_2_0 (fch_n_215),
        .\tr[15]_i_2_1 (fch_n_217));
  mcvm_fch fch
       (.D({\sreg/p_0_in [13:10],\sreg/p_0_in [7:0]}),
        .DI({fch_n_358,fch_n_359,fch_n_360}),
        .E(fch_n_250),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .Q(stat),
        .S({fch_n_361,fch_n_362,fch_n_363,fch_n_364}),
        .SR(\pcnt/p_0_in ),
        .abus_0(abus_0),
        .abus_o(abus_o),
        .badr(badr),
        .\badr[10]_INST_0_i_1 (fch_n_177),
        .\badr[10]_INST_0_i_1_0 ({fch_n_393,fch_n_394,fch_n_395,fch_n_396}),
        .\badr[14]_INST_0_i_1 (fch_n_178),
        .\badr[14]_INST_0_i_1_0 ({fch_n_349,fch_n_350,fch_n_351,fch_n_352}),
        .\badr[15]_INST_0_i_1 (fch_n_233),
        .\badr[15]_INST_0_i_109_0 (ctl_n_22),
        .\badr[15]_INST_0_i_1_0 ({fch_n_353,fch_n_354,fch_n_355,fch_n_356}),
        .\badr[15]_INST_0_i_1_1 (fch_n_357),
        .\badr[15]_INST_0_i_1_2 ({fch_n_383,fch_n_384}),
        .\badr[15]_INST_0_i_1_3 ({\ivec/p_0_in ,rgf_iv_ve}),
        .\badr[15]_INST_0_i_2 ({\sreg/p_2_in [7:4],rgf_sr_ml,rgf_sr_dr,\sreg/p_2_in [1:0],rgf_sr_flag,rgf_sr_ie,sr_bank}),
        .\badr[15]_INST_0_i_4 ({rgf_n_0,rgf_n_1,rgf_n_2,rgf_n_3,rgf_n_4,rgf_n_5,rgf_n_6,rgf_n_7,rgf_n_8,rgf_n_9,rgf_n_10,rgf_n_11,rgf_n_12,rgf_n_13,rgf_n_14,rgf_n_15}),
        .\badr[15]_INST_0_i_5 ({rgf_n_92,rgf_n_93,rgf_n_94,rgf_n_95,rgf_n_96,rgf_n_97,rgf_n_98,rgf_n_99,rgf_n_100,rgf_n_101,rgf_n_102,rgf_n_103,rgf_n_104,rgf_n_105,rgf_n_106,rgf_n_107}),
        .\badr[15]_INST_0_i_5_0 ({rgf_n_76,rgf_n_77,rgf_n_78,rgf_n_79,rgf_n_80,rgf_n_81,rgf_n_82,rgf_n_83,rgf_n_84,rgf_n_85,rgf_n_86,rgf_n_87,rgf_n_88,rgf_n_89,rgf_n_90,rgf_n_91}),
        .\badr[15]_INST_0_i_5_1 ({rgf_n_16,rgf_n_17,rgf_n_18,rgf_n_19,rgf_n_20,rgf_n_21,rgf_n_22,rgf_n_23,rgf_n_24,rgf_n_25,rgf_n_26,rgf_n_27,rgf_n_28,rgf_n_29,rgf_n_30,rgf_n_31}),
        .\badr[15]_INST_0_i_81_0 (ctl_n_24),
        .\badr[6]_INST_0_i_1 ({fch_n_385,fch_n_386,fch_n_387,fch_n_388}),
        .\badr[9]_INST_0_i_1 (fch_n_175),
        .bank_sel(bank_sel),
        .bbus_o(bbus_o),
        .\bcmd[1] (ctl_n_15),
        .\bcmd[2] (ctl_n_11),
        .bdatr(bdatr[15:14]),
        .bdatw(bdatw),
        .\bdatw[10]_INST_0_i_1_0 (rgf_n_360),
        .\bdatw[10]_INST_0_i_2_0 (rgf_n_368),
        .\bdatw[10]_INST_0_i_2_1 (rgf_n_373),
        .\bdatw[10]_INST_0_i_4_0 (rgf_n_329),
        .\bdatw[11]_INST_0_i_1_0 (rgf_n_361),
        .\bdatw[11]_INST_0_i_2_0 (fch_n_167),
        .\bdatw[11]_INST_0_i_2_1 (rgf_n_369),
        .\bdatw[11]_INST_0_i_2_2 (rgf_n_374),
        .\bdatw[11]_INST_0_i_4_0 (rgf_n_330),
        .\bdatw[12]_INST_0_i_16_0 ({rgf_n_153,rgf_n_154,rgf_n_155,rgf_n_156,rgf_n_157}),
        .\bdatw[12]_INST_0_i_16_1 ({rgf_n_158,rgf_n_159,rgf_n_160,rgf_n_161,rgf_n_162}),
        .\bdatw[12]_INST_0_i_18_0 ({rgf_n_193,rgf_n_194,rgf_n_195,rgf_n_196,rgf_n_197}),
        .\bdatw[12]_INST_0_i_18_1 ({rgf_n_168,rgf_n_169,rgf_n_170,rgf_n_171,rgf_n_172}),
        .\bdatw[12]_INST_0_i_19_0 ({rgf_n_173,rgf_n_174,rgf_n_175,rgf_n_176,rgf_n_177}),
        .\bdatw[12]_INST_0_i_19_1 ({rgf_n_188,rgf_n_189,rgf_n_190,rgf_n_191,rgf_n_192}),
        .\bdatw[12]_INST_0_i_1_0 (rgf_n_362),
        .\bdatw[12]_INST_0_i_24_0 ({rgf_n_133,rgf_n_134,rgf_n_135,rgf_n_136,rgf_n_137}),
        .\bdatw[12]_INST_0_i_24_1 ({rgf_n_108,rgf_n_109,rgf_n_110,rgf_n_111,rgf_n_112}),
        .\bdatw[12]_INST_0_i_25_0 ({rgf_n_113,rgf_n_114,rgf_n_115,rgf_n_116,rgf_n_117}),
        .\bdatw[12]_INST_0_i_25_1 ({rgf_n_128,rgf_n_129,rgf_n_130,rgf_n_131,rgf_n_132}),
        .\bdatw[12]_INST_0_i_2_0 (fch_n_161),
        .\bdatw[12]_INST_0_i_2_1 (fch_n_164),
        .\bdatw[12]_INST_0_i_2_2 (fch_n_168),
        .\bdatw[12]_INST_0_i_2_3 (fch_n_348),
        .\bdatw[12]_INST_0_i_2_4 (rgf_n_370),
        .\bdatw[12]_INST_0_i_2_5 (rgf_n_375),
        .\bdatw[12]_INST_0_i_4_0 (rgf_n_331),
        .\bdatw[12]_INST_0_i_8_0 ({rgf_n_178,rgf_n_179,rgf_n_180,rgf_n_181,rgf_n_182}),
        .\bdatw[12]_INST_0_i_8_1 ({rgf_n_183,rgf_n_184,rgf_n_185,rgf_n_186,rgf_n_187}),
        .\bdatw[12]_INST_0_i_8_2 ({rgf_n_198,rgf_n_199,rgf_n_200,rgf_n_201,rgf_n_202}),
        .\bdatw[12]_INST_0_i_8_3 ({rgf_n_203,rgf_n_204,rgf_n_205,rgf_n_206,rgf_n_207}),
        .\bdatw[12]_INST_0_i_8_4 ({rgf_n_148,rgf_n_149,rgf_n_150,rgf_n_151,rgf_n_152}),
        .\bdatw[12]_INST_0_i_8_5 ({rgf_n_163,rgf_n_164,rgf_n_165,rgf_n_166,rgf_n_167}),
        .\bdatw[12]_INST_0_i_9 ({rgf_n_118,rgf_n_119,rgf_n_120,rgf_n_121,rgf_n_122}),
        .\bdatw[12]_INST_0_i_9_0 ({rgf_n_123,rgf_n_124,rgf_n_125,rgf_n_126,rgf_n_127}),
        .\bdatw[12]_INST_0_i_9_1 ({rgf_n_138,rgf_n_139,rgf_n_140,rgf_n_141,rgf_n_142}),
        .\bdatw[12]_INST_0_i_9_2 ({rgf_n_143,rgf_n_144,rgf_n_145,rgf_n_146,rgf_n_147}),
        .\bdatw[13]_INST_0_i_1_0 (rgf_n_363),
        .\bdatw[13]_INST_0_i_2_0 (rgf_n_355),
        .\bdatw[13]_INST_0_i_4_0 (rgf_n_332),
        .\bdatw[13]_INST_0_i_7_0 (rgf_n_324),
        .\bdatw[14]_INST_0_i_1_0 (rgf_n_364),
        .\bdatw[14]_INST_0_i_2_0 (rgf_n_356),
        .\bdatw[14]_INST_0_i_4_0 (rgf_n_333),
        .\bdatw[14]_INST_0_i_7_0 (rgf_n_325),
        .\bdatw[15]_INST_0_i_1_0 (rgf_n_365),
        .\bdatw[15]_INST_0_i_1_1 (rgf_tr),
        .\bdatw[15]_INST_0_i_22_0 ({rgf_n_43,rgf_n_44,rgf_n_45,rgf_n_46,rgf_n_47,rgf_n_48,rgf_n_49,rgf_n_50,rgf_n_51,rgf_n_52,rgf_n_53}),
        .\bdatw[15]_INST_0_i_22_1 ({rgf_n_32,rgf_n_33,rgf_n_34,rgf_n_35,rgf_n_36,rgf_n_37,rgf_n_38,rgf_n_39,rgf_n_40,rgf_n_41,rgf_n_42}),
        .\bdatw[15]_INST_0_i_2_0 (rgf_n_357),
        .\bdatw[15]_INST_0_i_6_0 ({rgf_n_54,rgf_n_55,rgf_n_56,rgf_n_57,rgf_n_58,rgf_n_59,rgf_n_60,rgf_n_61,rgf_n_62,rgf_n_63,rgf_n_64}),
        .\bdatw[15]_INST_0_i_6_1 ({rgf_n_65,rgf_n_66,rgf_n_67,rgf_n_68,rgf_n_69,rgf_n_70,rgf_n_71,rgf_n_72,rgf_n_73,rgf_n_74,rgf_n_75}),
        .\bdatw[15]_INST_0_i_6_2 (rgf_n_334),
        .\bdatw[15]_INST_0_i_8_0 (rgf_n_326),
        .\bdatw[8]_INST_0_i_1_0 (rgf_n_358),
        .\bdatw[8]_INST_0_i_2_0 (fch_n_166),
        .\bdatw[8]_INST_0_i_2_1 (fch_n_172),
        .\bdatw[8]_INST_0_i_2_2 (rgf_n_366),
        .\bdatw[8]_INST_0_i_2_3 (rgf_n_371),
        .\bdatw[8]_INST_0_i_40_0 (ctl_n_13),
        .\bdatw[8]_INST_0_i_4_0 (rgf_n_327),
        .\bdatw[9]_INST_0_i_1_0 (rgf_n_359),
        .\bdatw[9]_INST_0_i_2_0 (fch_n_176),
        .\bdatw[9]_INST_0_i_2_1 (rgf_n_367),
        .\bdatw[9]_INST_0_i_2_2 (rgf_n_372),
        .\bdatw[9]_INST_0_i_4_0 (rgf_n_328),
        .brdy(brdy),
        .brdy_0(fch_n_365),
        .cbus(cbus),
        .cbus_i({cbus_i[15:14],cbus_i[2]}),
        .ccmd(ccmd),
        .\ccmd[2]_INST_0_i_1 (ctl_n_5),
        .\ccmd[3]_INST_0_i_7_0 (ctl_n_26),
        .ccmd_2_sp_1(ctl_n_4),
        .clk(clk),
        .cpuid(cpuid),
        .crdy(crdy),
        .crdy_0(fch_n_226),
        .ctl_fetch_ext_fl_reg_0(ctl_n_6),
        .ctl_fetch_ext_fl_reg_1(ctl_n_28),
        .ctl_fetch_fl_reg_0(ctl_fetch),
        .ctl_fetch_fl_reg_1(rgf_n_463),
        .ctl_fetch_inferred_i_22_0(rgf_n_464),
        .ctl_fetch_inferred_i_2_0(rgf_n_445),
        .ctl_fetch_inferred_i_3_0(rgf_n_487),
        .ctl_selc_rn(ctl_selc_rn[0]),
        .fch_irq_req(fch_irq_req),
        .fch_pc(fch_pc),
        .fdat(fdat),
        .gr0_bus1__0(\bank02/bbuso/gr0_bus1__0 ),
        .gr0_bus1__0_21(\bank13/bbuso/gr0_bus1__0 ),
        .gr0_bus1__0_29(\bank13/abuso/gr0_bus1__0 ),
        .gr0_bus1__0_37(\bank13/bbuso2l/gr0_bus1__0 ),
        .gr0_bus1__0_43(\bank13/abuso2l/gr0_bus1__0 ),
        .gr0_bus1__0_9(\bank02/abuso/gr0_bus1__0 ),
        .gr1_bus1__0(\bank02/bbuso/gr1_bus1__0 ),
        .gr1_bus1__0_16(\bank13/bbuso/gr1_bus1__0 ),
        .gr1_bus1__0_2(\bank02/abuso/gr1_bus1__0 ),
        .gr1_bus1__0_22(\bank13/abuso/gr1_bus1__0 ),
        .gr1_bus1__0_34(\bank13/bbuso2l/gr1_bus1__0 ),
        .gr1_bus1__0_40(\bank13/abuso2l/gr1_bus1__0 ),
        .gr2_bus1__0(\bank02/bbuso/gr2_bus1__0 ),
        .gr2_bus1__0_11(\bank02/bbuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_14(\bank13/bbuso/gr2_bus1__0 ),
        .gr2_bus1__0_23(\bank13/abuso/gr2_bus1__0 ),
        .gr2_bus1__0_3(\bank02/abuso/gr2_bus1__0 ),
        .gr2_bus1__0_35(\bank13/bbuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_41(\bank13/abuso2l/gr2_bus1__0 ),
        .gr3_bus1__0(\bank02/bbuso/gr3_bus1__0 ),
        .gr3_bus1__0_10(\bank02/bbuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_15(\bank13/bbuso/gr3_bus1__0 ),
        .gr3_bus1__0_24(\bank13/abuso/gr3_bus1__0 ),
        .gr3_bus1__0_30(\bank13/bbuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_4(\bank02/abuso/gr3_bus1__0 ),
        .gr4_bus1__0(\bank02/bbuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_0(\bank02/bbuso/gr4_bus1__0 ),
        .gr4_bus1__0_12(\bank02/abuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_17(\bank13/bbuso/gr4_bus1__0 ),
        .gr4_bus1__0_25(\bank13/abuso/gr4_bus1__0 ),
        .gr4_bus1__0_32(\bank13/bbuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_5(\bank02/abuso/gr4_bus1__0 ),
        .gr5_bus1__0(\bank02/bbuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_1(\bank02/bbuso/gr5_bus1__0 ),
        .gr5_bus1__0_13(\bank02/abuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_20(\bank13/bbuso/gr5_bus1__0 ),
        .gr5_bus1__0_26(\bank13/abuso/gr5_bus1__0 ),
        .gr5_bus1__0_33(\bank13/bbuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_38(\bank13/abuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_6(\bank02/abuso/gr5_bus1__0 ),
        .gr6_bus1__0(\bank02/bbuso/gr6_bus1__0 ),
        .gr6_bus1__0_18(\bank13/bbuso/gr6_bus1__0 ),
        .gr6_bus1__0_27(\bank13/abuso/gr6_bus1__0 ),
        .gr6_bus1__0_31(\bank13/bbuso2l/gr6_bus1__0 ),
        .gr6_bus1__0_39(\bank13/abuso2l/gr6_bus1__0 ),
        .gr6_bus1__0_7(\bank02/abuso/gr6_bus1__0 ),
        .gr7_bus1__0(\bank02/bbuso/gr7_bus1__0 ),
        .gr7_bus1__0_19(\bank13/bbuso/gr7_bus1__0 ),
        .gr7_bus1__0_28(\bank13/abuso/gr7_bus1__0 ),
        .gr7_bus1__0_36(\bank13/bbuso2l/gr7_bus1__0 ),
        .gr7_bus1__0_42(\bank13/abuso2l/gr7_bus1__0 ),
        .gr7_bus1__0_8(\bank02/abuso/gr7_bus1__0 ),
        .\grn_reg[0] (fch_n_40),
        .\grn_reg[0]_0 (fch_n_52),
        .\grn_reg[0]_1 (fch_n_70),
        .\grn_reg[0]_2 (fch_n_77),
        .\grn_reg[0]_3 (fch_n_95),
        .\grn_reg[10] (fch_n_87),
        .\grn_reg[10]_0 (fch_n_105),
        .\grn_reg[11] (fch_n_88),
        .\grn_reg[11]_0 (fch_n_106),
        .\grn_reg[12] (fch_n_89),
        .\grn_reg[12]_0 (fch_n_107),
        .\grn_reg[13] (fch_n_90),
        .\grn_reg[13]_0 (fch_n_108),
        .\grn_reg[14] (fch_n_91),
        .\grn_reg[14]_0 (fch_n_109),
        .\grn_reg[15] (fch_n_92),
        .\grn_reg[15]_0 (fch_n_110),
        .\grn_reg[15]_1 (ctl_n_3),
        .\grn_reg[15]_2 (ctl_n_2),
        .\grn_reg[15]_3 (ctl_n_0),
        .\grn_reg[1] (fch_n_43),
        .\grn_reg[1]_0 (fch_n_55),
        .\grn_reg[1]_1 (fch_n_71),
        .\grn_reg[1]_2 (fch_n_78),
        .\grn_reg[1]_3 (fch_n_96),
        .\grn_reg[2] (fch_n_44),
        .\grn_reg[2]_0 (fch_n_56),
        .\grn_reg[2]_1 (fch_n_72),
        .\grn_reg[2]_2 (fch_n_79),
        .\grn_reg[2]_3 (fch_n_97),
        .\grn_reg[3] (fch_n_45),
        .\grn_reg[3]_0 (fch_n_57),
        .\grn_reg[3]_1 (fch_n_73),
        .\grn_reg[3]_2 (fch_n_80),
        .\grn_reg[3]_3 (fch_n_98),
        .\grn_reg[4] (fch_n_46),
        .\grn_reg[4]_0 (fch_n_58),
        .\grn_reg[4]_1 (fch_n_74),
        .\grn_reg[4]_2 (fch_n_81),
        .\grn_reg[4]_3 (fch_n_99),
        .\grn_reg[5] (fch_n_82),
        .\grn_reg[5]_0 (fch_n_100),
        .\grn_reg[6] (fch_n_83),
        .\grn_reg[6]_0 (fch_n_101),
        .\grn_reg[7] (fch_n_84),
        .\grn_reg[7]_0 (fch_n_102),
        .\grn_reg[8] (fch_n_85),
        .\grn_reg[8]_0 (fch_n_103),
        .\grn_reg[9] (fch_n_86),
        .\grn_reg[9]_0 (fch_n_104),
        .in0(ctl_fetch),
        .irq_lev(irq_lev),
        .irq_vec(irq_vec),
        .\iv[0]_i_2_0 (rgf_n_415),
        .\iv[0]_i_2_1 (rgf_n_495),
        .\iv[0]_i_2_2 (rgf_n_491),
        .\iv[0]_i_8_0 (rgf_n_418),
        .\iv[0]_i_8_1 (rgf_n_419),
        .\iv[10]_i_2_0 (rgf_n_388),
        .\iv[10]_i_2_1 (rgf_n_438),
        .\iv[10]_i_2_2 (rgf_n_378),
        .\iv[10]_i_2_3 (rgf_n_504),
        .\iv[10]_i_2_4 (rgf_n_441),
        .\iv[10]_i_9_0 (rgf_n_427),
        .\iv[11]_i_2_0 (rgf_n_489),
        .\iv[11]_i_2_1 (rgf_n_402),
        .\iv[11]_i_2_2 (rgf_n_413),
        .\iv[11]_i_2_3 (rgf_n_404),
        .\iv[11]_i_2_4 (rgf_n_416),
        .\iv[11]_i_2_5 (rgf_n_506),
        .\iv[11]_i_6_0 (rgf_n_391),
        .\iv[11]_i_6_1 (rgf_n_395),
        .\iv[11]_i_8_0 (rgf_n_422),
        .\iv[12]_i_2_0 (rgf_n_510),
        .\iv[12]_i_6_0 (rgf_n_386),
        .\iv[12]_i_6_1 (rgf_n_385),
        .\iv[12]_i_7_0 (rgf_n_437),
        .\iv[13]_i_2_0 (rgf_n_398),
        .\iv[13]_i_2_1 (rgf_n_397),
        .\iv[13]_i_2_2 (rgf_n_412),
        .\iv[13]_i_6_0 (rgf_n_417),
        .\iv[14]_i_25_0 (fch_n_169),
        .\iv[14]_i_2_0 (rgf_n_493),
        .\iv[14]_i_2_1 (rgf_n_387),
        .\iv[14]_i_4_0 (rgf_n_425),
        .\iv[14]_i_4_1 (rgf_n_426),
        .\iv[15]_i_19_0 (ctl_n_12),
        .\iv[15]_i_4_0 (ctl_n_25),
        .\iv[15]_i_56_0 (rgf_n_465),
        .\iv[15]_i_5_0 (ctl_n_30),
        .\iv[1]_i_2_0 (rgf_n_501),
        .\iv[1]_i_2_1 (rgf_n_497),
        .\iv[1]_i_2_2 (rgf_n_394),
        .\iv[1]_i_2_3 (rgf_n_393),
        .\iv[1]_i_2_4 (rgf_n_507),
        .\iv[2]_i_4_0 (rgf_n_498),
        .\iv[3]_i_2_0 (rgf_n_429),
        .\iv[3]_i_2_1 (rgf_n_409),
        .\iv[3]_i_2_2 (rgf_n_509),
        .\iv[3]_i_2_3 (rgf_n_408),
        .\iv[3]_i_8_0 (rgf_n_382),
        .\iv[3]_i_8_1 (rgf_n_440),
        .\iv[4]_i_2_0 (rgf_n_488),
        .\iv[4]_i_6_0 (rgf_n_384),
        .\iv[4]_i_6_1 (rgf_n_389),
        .\iv[4]_i_8_0 (rgf_n_439),
        .\iv[4]_i_8_1 (rgf_n_428),
        .\iv[5]_i_2_0 (rgf_n_390),
        .\iv[5]_i_2_1 (rgf_n_400),
        .\iv[6]_i_2_0 (rgf_n_383),
        .\iv[6]_i_2_1 (rgf_n_444),
        .\iv[6]_i_2_2 (rgf_n_431),
        .\iv[7]_i_2_0 (rgf_n_494),
        .\iv[7]_i_2_1 (rgf_n_433),
        .\iv[7]_i_2_2 (rgf_n_381),
        .\iv[8]_i_2_0 (rgf_n_503),
        .\iv[8]_i_2_1 (rgf_n_500),
        .\iv[8]_i_2_2 (rgf_n_407),
        .\iv[8]_i_2_3 (rgf_n_410),
        .\iv[8]_i_2_4 (rgf_n_505),
        .\iv[8]_i_2_5 (rgf_n_436),
        .\iv[8]_i_2_6 (rgf_n_508),
        .\iv[9]_i_2_0 (rgf_n_379),
        .\iv[9]_i_2_1 (rgf_n_490),
        .\iv[9]_i_2_2 (rgf_n_380),
        .\iv[9]_i_2_3 (rgf_n_401),
        .\iv[9]_i_2_4 (rgf_n_499),
        .\iv[9]_i_7_0 (rgf_n_423),
        .out({fch_ir[15:11],fch_ir[9],fch_ir[7:6],fch_ir[2:0]}),
        .\pc_reg[15] (\pcnt/p_1_in ),
        .\pc_reg[15]_0 (fadr),
        .read_cyc(read_cyc),
        .rst_n(rst_n),
        .rst_n_0(fch_n_382),
        .rst_n_fl_reg_0(fch_n_213),
        .rst_n_fl_reg_1(fch_n_217),
        .rst_n_fl_reg_2(fch_n_229),
        .rst_n_fl_reg_3(fch_n_231),
        .\sp[15]_i_2_0 (ctl_n_27),
        .sp_dec_0(\sptr/sp_dec_0 ),
        .\sp_reg[0] (fch_n_174),
        .\sp_reg[0]_0 (fch_n_316),
        .\sp_reg[0]_1 (rgf_n_303),
        .\sp_reg[10] (fch_n_326),
        .\sp_reg[11] (fch_n_327),
        .\sp_reg[11]_0 ({rgf_n_311,rgf_n_312,rgf_n_313,rgf_n_314}),
        .\sp_reg[12] (fch_n_328),
        .\sp_reg[13] (fch_n_329),
        .\sp_reg[14] (fch_n_330),
        .\sp_reg[15] (fch_n_331),
        .\sp_reg[15]_0 (\sptr/p_0_in ),
        .\sp_reg[15]_1 ({rgf_n_315,rgf_n_316,rgf_n_317,rgf_n_318}),
        .\sp_reg[1] (fch_n_173),
        .\sp_reg[1]_0 (fch_n_317),
        .\sp_reg[2] (fch_n_318),
        .\sp_reg[3] (fch_n_319),
        .\sp_reg[3]_0 ({rgf_n_304,rgf_n_305,rgf_n_306}),
        .\sp_reg[4] (fch_n_39),
        .\sp_reg[4]_0 (fch_n_320),
        .\sp_reg[5] (fch_n_321),
        .\sp_reg[6] (fch_n_322),
        .\sp_reg[7] (fch_n_323),
        .\sp_reg[7]_0 ({rgf_n_307,rgf_n_308,rgf_n_309,rgf_n_310}),
        .\sp_reg[8] (fch_n_324),
        .\sp_reg[9] (fch_n_325),
        .\sr[4]_i_12_0 (rgf_n_430),
        .\sr[4]_i_3_0 (alu_n_17),
        .\sr[5]_i_2_0 (rgf_n_405),
        .\sr[6]_i_3_0 (rgf_n_502),
        .\sr[6]_i_3_1 (rgf_n_435),
        .\sr[7]_i_17_0 (fch_n_170),
        .\sr[7]_i_6_0 (rgf_n_411),
        .\sr[7]_i_6_1 (rgf_n_414),
        .\sr[7]_i_6_2 (rgf_n_492),
        .\sr_reg[0] (fch_n_254),
        .\sr_reg[0]_0 (fch_n_258),
        .\sr_reg[0]_1 (fch_n_262),
        .\sr_reg[0]_2 (fch_n_266),
        .\sr_reg[0]_3 (fch_n_270),
        .\sr_reg[0]_4 (fch_n_274),
        .\sr_reg[0]_5 (fch_n_278),
        .\sr_reg[0]_6 (fch_n_347),
        .\sr_reg[10] (fch_n_230),
        .\sr_reg[10]_0 (fch_n_337),
        .\sr_reg[11] (fch_n_336),
        .\sr_reg[12] (fch_n_335),
        .\sr_reg[13] (fch_n_334),
        .\sr_reg[14] (fch_n_333),
        .\sr_reg[15] (fch_n_332),
        .\sr_reg[1] (fch_n_251),
        .\sr_reg[1]_0 (fch_n_252),
        .\sr_reg[1]_1 (fch_n_253),
        .\sr_reg[1]_10 (fch_n_265),
        .\sr_reg[1]_11 (fch_n_267),
        .\sr_reg[1]_12 (fch_n_268),
        .\sr_reg[1]_13 (fch_n_269),
        .\sr_reg[1]_14 (fch_n_271),
        .\sr_reg[1]_15 (fch_n_272),
        .\sr_reg[1]_16 (fch_n_273),
        .\sr_reg[1]_17 (fch_n_275),
        .\sr_reg[1]_18 (fch_n_276),
        .\sr_reg[1]_19 (fch_n_277),
        .\sr_reg[1]_2 (fch_n_255),
        .\sr_reg[1]_20 (fch_n_279),
        .\sr_reg[1]_21 (fch_n_280),
        .\sr_reg[1]_22 (fch_n_281),
        .\sr_reg[1]_23 (fch_n_346),
        .\sr_reg[1]_3 (fch_n_256),
        .\sr_reg[1]_4 (fch_n_257),
        .\sr_reg[1]_5 (fch_n_259),
        .\sr_reg[1]_6 (fch_n_260),
        .\sr_reg[1]_7 (fch_n_261),
        .\sr_reg[1]_8 (fch_n_263),
        .\sr_reg[1]_9 (fch_n_264),
        .\sr_reg[2] (fch_n_345),
        .\sr_reg[3] (fch_n_344),
        .\sr_reg[4] (fch_n_343),
        .\sr_reg[5] (fch_n_342),
        .\sr_reg[6] (stat_nx),
        .\sr_reg[6]_0 (fch_n_341),
        .\sr_reg[6]_1 (\art/add/tout ),
        .\sr_reg[7] (fch_n_340),
        .\sr_reg[8] (fch_n_339),
        .\sr_reg[9] (fch_n_338),
        .\stat[0]_i_17_0 (ctl_n_17),
        .\stat[0]_i_2_0 (ctl_n_21),
        .\stat[0]_i_2_1 (ctl_n_29),
        .\stat[0]_i_8_0 (ctl_n_14),
        .\stat[1]_i_11_0 (ctl_n_23),
        .\stat_reg[0] (fch_n_160),
        .\stat_reg[0]_0 (bcmd[0]),
        .\stat_reg[0]_1 (fch_n_228),
        .\stat_reg[0]_2 (fch_n_232),
        .\stat_reg[0]_3 ({fch_n_282,fch_n_283,fch_n_284,fch_n_285,fch_n_286,fch_n_287,fch_n_288,fch_n_289,fch_n_290,fch_n_291,fch_n_292,fch_n_293,fch_n_294,fch_n_295,fch_n_296,fch_n_297}),
        .\stat_reg[0]_4 (ctl_n_18),
        .\stat_reg[1] (ctl_selc_rn[2]),
        .\stat_reg[1]_0 (bcmd[1]),
        .\stat_reg[1]_1 (bcmd[2]),
        .\stat_reg[1]_2 (fch_n_216),
        .\stat_reg[1]_3 (cbus_sel_cr),
        .\stat_reg[1]_4 (ctl_n_7),
        .\stat_reg[1]_5 (ctl_n_19),
        .\stat_reg[2] (bbus_sel_cr),
        .\stat_reg[2]_0 (fch_n_157),
        .\stat_reg[2]_1 (fch_n_158),
        .\stat_reg[2]_2 (fch_n_159),
        .\stat_reg[2]_3 (fch_n_162),
        .\stat_reg[2]_4 (fch_n_163),
        .\stat_reg[2]_5 (fch_n_165),
        .\stat_reg[2]_6 (fch_n_171),
        .\stat_reg[2]_7 (fch_n_215),
        .\stat_reg[2]_8 (ctl_n_20),
        .\stat_reg[2]_9 (ctl_n_16),
        .tout__1_carry__0_i_1_0({fch_n_389,fch_n_390,fch_n_391,fch_n_392}),
        .tout__1_carry__1_i_1_0({fch_n_397,fch_n_398,fch_n_399,fch_n_400}),
        .\tr_reg[0] (fch_n_141),
        .\tr_reg[0]_0 (mem_n_0),
        .\tr_reg[10] (fch_n_151),
        .\tr_reg[10]_0 (mem_n_12),
        .\tr_reg[10]_1 (rgf_n_483),
        .\tr_reg[11] (fch_n_152),
        .\tr_reg[11]_0 ({alu_n_8,alu_n_9,alu_n_10,alu_n_11}),
        .\tr_reg[11]_1 (mem_n_13),
        .\tr_reg[11]_2 (rgf_n_443),
        .\tr_reg[12] (fch_n_153),
        .\tr_reg[12]_0 (mem_n_14),
        .\tr_reg[12]_1 (rgf_n_484),
        .\tr_reg[13] (fch_n_154),
        .\tr_reg[13]_0 (mem_n_15),
        .\tr_reg[13]_1 (rgf_n_396),
        .\tr_reg[13]_2 (rgf_n_485),
        .\tr_reg[14] (fch_n_155),
        .\tr_reg[14]_0 (rgf_n_420),
        .\tr_reg[14]_1 (rgf_n_486),
        .\tr_reg[14]_2 (mem_n_16),
        .\tr_reg[15] (fch_n_156),
        .\tr_reg[15]_0 ({\art/p_0_in ,alu_n_13,alu_n_14,alu_n_15}),
        .\tr_reg[1] (fch_n_142),
        .\tr_reg[1]_0 (mem_n_4),
        .\tr_reg[1]_1 (rgf_n_377),
        .\tr_reg[2] (fch_n_143),
        .\tr_reg[2]_0 (bbus_b02),
        .\tr_reg[2]_1 (rgf_n_434),
        .\tr_reg[2]_2 (rgf_n_432),
        .\tr_reg[2]_3 (rgf_n_496),
        .\tr_reg[2]_4 (mem_n_17),
        .\tr_reg[3] (fch_n_144),
        .\tr_reg[3]_0 (mem_n_5),
        .\tr_reg[3]_1 (rgf_n_403),
        .\tr_reg[4] (fch_n_145),
        .\tr_reg[4]_0 (mem_n_6),
        .\tr_reg[5] (fch_n_146),
        .\tr_reg[5]_0 (mem_n_7),
        .\tr_reg[5]_1 (rgf_n_399),
        .\tr_reg[5]_2 (rgf_n_421),
        .\tr_reg[6] (fch_n_147),
        .\tr_reg[6]_0 (mem_n_8),
        .\tr_reg[6]_1 (rgf_n_424),
        .\tr_reg[7] (fch_n_148),
        .\tr_reg[7]_0 ({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .\tr_reg[7]_1 (mem_n_9),
        .\tr_reg[7]_2 (rgf_n_406),
        .\tr_reg[8] (fch_n_149),
        .\tr_reg[8]_0 (mem_n_10),
        .\tr_reg[8]_1 (rgf_n_442),
        .\tr_reg[9] (fch_n_150),
        .\tr_reg[9]_0 (mem_n_11),
        .\tr_reg[9]_1 (rgf_n_392),
        .\tr_reg[9]_2 (rgf_n_482));
  mcvm_mem mem
       (.SR(\pcnt/p_0_in ),
        .bcmd({bcmd[2],bcmd[0]}),
        .bdatr(bdatr),
        .bdatr_10_sp_1(mem_n_17),
        .bdatr_4_sp_1(mem_n_6),
        .bdatr_5_sp_1(mem_n_7),
        .brdy(brdy),
        .cbus_i({cbus_i[13:3],cbus_i[1:0]}),
        .\cbus_i[13] (mem_n_15),
        .cbus_i_0_sp_1(mem_n_0),
        .cbus_i_10_sp_1(mem_n_12),
        .cbus_i_1_sp_1(mem_n_4),
        .cbus_i_3_sp_1(mem_n_5),
        .cbus_i_6_sp_1(mem_n_8),
        .cbus_i_7_sp_1(mem_n_9),
        .cbus_i_8_sp_1(mem_n_10),
        .cbus_i_9_sp_1(mem_n_11),
        .clk(clk),
        .read_cyc(read_cyc),
        .\read_cyc_reg[0] (fch_n_365),
        .\read_cyc_reg[1] (mem_n_13),
        .\read_cyc_reg[1]_0 (mem_n_14),
        .\read_cyc_reg[1]_1 (mem_n_16),
        .\tr_reg[13] (fch_n_171));
  mcvm_rgf rgf
       (.D({\sreg/p_0_in [13:10],\sreg/p_0_in [7:0]}),
        .E(fch_n_265),
        .SR(\pcnt/p_0_in ),
        .abus_0(abus_0),
        .\abus_o[0] (fch_n_316),
        .\abus_o[0]_0 (fch_n_141),
        .\abus_o[10] (fch_n_326),
        .\abus_o[10]_0 (fch_n_151),
        .\abus_o[11] (fch_n_327),
        .\abus_o[11]_0 (fch_n_152),
        .\abus_o[12] (fch_n_328),
        .\abus_o[12]_0 (fch_n_153),
        .\abus_o[13] (fch_n_329),
        .\abus_o[13]_0 (fch_n_154),
        .\abus_o[14] (fch_n_330),
        .\abus_o[14]_0 (fch_n_155),
        .\abus_o[15] (fch_n_331),
        .\abus_o[15]_0 (fch_n_156),
        .\abus_o[1] (fch_n_317),
        .\abus_o[1]_0 (fch_n_142),
        .\abus_o[2] (fch_n_318),
        .\abus_o[2]_0 (fch_n_143),
        .\abus_o[3] (fch_n_319),
        .\abus_o[3]_0 (fch_n_144),
        .\abus_o[4] (fch_n_320),
        .\abus_o[4]_0 (fch_n_145),
        .\abus_o[5] (fch_n_321),
        .\abus_o[5]_0 (fch_n_146),
        .\abus_o[6] (fch_n_322),
        .\abus_o[6]_0 (fch_n_147),
        .\abus_o[7] (fch_n_323),
        .\abus_o[7]_0 (fch_n_148),
        .\abus_o[8] (fch_n_324),
        .\abus_o[8]_0 (fch_n_149),
        .\abus_o[9] (fch_n_325),
        .\abus_o[9]_0 (fch_n_150),
        .\badr[0]_INST_0_i_1 (fch_n_95),
        .\badr[0]_INST_0_i_1_0 (fch_n_77),
        .\badr[0]_INST_0_i_1_1 (fch_n_347),
        .\badr[0]_INST_0_i_5 (fch_n_159),
        .\badr[0]_INST_0_i_5_0 (fch_n_158),
        .\badr[10]_INST_0_i_1 (fch_n_105),
        .\badr[10]_INST_0_i_1_0 (fch_n_87),
        .\badr[10]_INST_0_i_1_1 (fch_n_337),
        .\badr[11]_INST_0_i_1 (rgf_n_395),
        .\badr[11]_INST_0_i_1_0 (fch_n_106),
        .\badr[11]_INST_0_i_1_1 (fch_n_88),
        .\badr[11]_INST_0_i_1_2 (fch_n_336),
        .\badr[12]_INST_0_i_1 (rgf_n_389),
        .\badr[12]_INST_0_i_1_0 (fch_n_107),
        .\badr[12]_INST_0_i_1_1 (fch_n_89),
        .\badr[12]_INST_0_i_1_2 (fch_n_335),
        .\badr[13]_INST_0_i_1 (rgf_n_391),
        .\badr[13]_INST_0_i_1_0 (fch_n_108),
        .\badr[13]_INST_0_i_1_1 (fch_n_90),
        .\badr[13]_INST_0_i_1_2 (fch_n_334),
        .\badr[14]_INST_0_i_1 (rgf_n_440),
        .\badr[14]_INST_0_i_1_0 (fch_n_109),
        .\badr[14]_INST_0_i_1_1 (fch_n_91),
        .\badr[14]_INST_0_i_1_2 (fch_n_333),
        .\badr[14]_INST_0_i_3 (fch_n_157),
        .\badr[15]_INST_0_i_1 (rgf_n_384),
        .\badr[15]_INST_0_i_1_0 (fch_n_110),
        .\badr[15]_INST_0_i_1_1 (fch_n_92),
        .\badr[15]_INST_0_i_1_2 (fch_n_332),
        .\badr[1]_INST_0_i_1 (rgf_n_386),
        .\badr[1]_INST_0_i_1_0 (rgf_n_423),
        .\badr[1]_INST_0_i_1_1 (fch_n_96),
        .\badr[1]_INST_0_i_1_2 (fch_n_78),
        .\badr[1]_INST_0_i_1_3 (fch_n_346),
        .\badr[2]_INST_0_i_1 (rgf_n_439),
        .\badr[2]_INST_0_i_1_0 (fch_n_97),
        .\badr[2]_INST_0_i_1_1 (fch_n_79),
        .\badr[2]_INST_0_i_1_2 (fch_n_345),
        .\badr[3]_INST_0_i_1 (rgf_n_422),
        .\badr[3]_INST_0_i_1_0 (fch_n_98),
        .\badr[3]_INST_0_i_1_1 (fch_n_80),
        .\badr[3]_INST_0_i_1_2 (fch_n_344),
        .\badr[4]_INST_0_i_1 (rgf_n_428),
        .\badr[4]_INST_0_i_1_0 (fch_n_99),
        .\badr[4]_INST_0_i_1_1 (fch_n_81),
        .\badr[4]_INST_0_i_1_2 (fch_n_343),
        .\badr[5]_INST_0_i_1 (rgf_n_417),
        .\badr[5]_INST_0_i_1_0 (fch_n_100),
        .\badr[5]_INST_0_i_1_1 (fch_n_82),
        .\badr[5]_INST_0_i_1_2 (fch_n_342),
        .\badr[6]_INST_0_i_1 (fch_n_101),
        .\badr[6]_INST_0_i_1_0 (fch_n_83),
        .\badr[6]_INST_0_i_1_1 (fch_n_341),
        .\badr[7]_INST_0_i_1 (rgf_n_418),
        .\badr[7]_INST_0_i_1_0 (fch_n_102),
        .\badr[7]_INST_0_i_1_1 (fch_n_84),
        .\badr[7]_INST_0_i_1_2 (fch_n_340),
        .\badr[8]_INST_0_i_1 (fch_n_103),
        .\badr[8]_INST_0_i_1_0 (fch_n_85),
        .\badr[8]_INST_0_i_1_1 (fch_n_339),
        .\badr[9]_INST_0_i_1 (rgf_n_419),
        .\badr[9]_INST_0_i_1_0 (fch_n_104),
        .\badr[9]_INST_0_i_1_1 (fch_n_86),
        .\badr[9]_INST_0_i_1_2 (fch_n_338),
        .badrx(badrx),
        .badrx_15_sp_1(fch_n_226),
        .bank_sel(bank_sel),
        .\bdatw[10]_INST_0_i_2 (fch_n_72),
        .\bdatw[10]_INST_0_i_2_0 (fch_n_56),
        .\bdatw[10]_INST_0_i_2_1 (fch_n_44),
        .\bdatw[11]_INST_0_i_2 (fch_n_73),
        .\bdatw[11]_INST_0_i_2_0 (fch_n_57),
        .\bdatw[11]_INST_0_i_2_1 (fch_n_45),
        .\bdatw[12]_INST_0_i_2 (rgf_n_427),
        .\bdatw[12]_INST_0_i_2_0 (fch_n_74),
        .\bdatw[12]_INST_0_i_2_1 (fch_n_58),
        .\bdatw[12]_INST_0_i_2_2 (fch_n_46),
        .\bdatw[15]_INST_0_i_28 (bbus_sel_cr),
        .\bdatw[8]_INST_0_i_2 (rgf_n_380),
        .\bdatw[8]_INST_0_i_2_0 (rgf_n_407),
        .\bdatw[8]_INST_0_i_2_1 (rgf_n_408),
        .\bdatw[8]_INST_0_i_2_10 (rgf_n_496),
        .\bdatw[8]_INST_0_i_2_11 (rgf_n_497),
        .\bdatw[8]_INST_0_i_2_12 (rgf_n_498),
        .\bdatw[8]_INST_0_i_2_13 (rgf_n_499),
        .\bdatw[8]_INST_0_i_2_14 (rgf_n_500),
        .\bdatw[8]_INST_0_i_2_15 (rgf_n_501),
        .\bdatw[8]_INST_0_i_2_16 (rgf_n_502),
        .\bdatw[8]_INST_0_i_2_17 (rgf_n_504),
        .\bdatw[8]_INST_0_i_2_18 (rgf_n_505),
        .\bdatw[8]_INST_0_i_2_19 (rgf_n_507),
        .\bdatw[8]_INST_0_i_2_2 (rgf_n_409),
        .\bdatw[8]_INST_0_i_2_20 (fch_n_70),
        .\bdatw[8]_INST_0_i_2_21 (fch_n_52),
        .\bdatw[8]_INST_0_i_2_22 (fch_n_40),
        .\bdatw[8]_INST_0_i_2_3 (rgf_n_437),
        .\bdatw[8]_INST_0_i_2_4 (rgf_n_488),
        .\bdatw[8]_INST_0_i_2_5 (rgf_n_491),
        .\bdatw[8]_INST_0_i_2_6 (rgf_n_492),
        .\bdatw[8]_INST_0_i_2_7 (rgf_n_493),
        .\bdatw[8]_INST_0_i_2_8 (rgf_n_494),
        .\bdatw[8]_INST_0_i_2_9 (rgf_n_495),
        .\bdatw[8]_INST_0_i_8 (fch_n_160),
        .\bdatw[9]_INST_0_i_2 (fch_n_71),
        .\bdatw[9]_INST_0_i_2_0 (fch_n_55),
        .\bdatw[9]_INST_0_i_2_1 (fch_n_43),
        .clk(clk),
        .ctl_fetch_inferred_i_13(fch_n_231),
        .ctl_fetch_inferred_i_9(fch_ir[14:11]),
        .ctl_fetch_inferred_i_9_0(ctl_n_11),
        .fadr(fadr),
        .fch_irq_req(fch_irq_req),
        .fch_pc(fch_pc),
        .gr0_bus1__0(\bank02/bbuso/gr0_bus1__0 ),
        .gr0_bus1__0_15(\bank13/bbuso2l/gr0_bus1__0 ),
        .gr0_bus1__0_23(\bank13/bbuso/gr0_bus1__0 ),
        .gr0_bus1__0_31(\bank13/abuso/gr0_bus1__0 ),
        .gr0_bus1__0_43(\bank13/abuso2l/gr0_bus1__0 ),
        .gr0_bus1__0_7(\bank02/abuso/gr0_bus1__0 ),
        .gr1_bus1__0(\bank02/bbuso/gr1_bus1__0 ),
        .gr1_bus1__0_0(\bank02/abuso/gr1_bus1__0 ),
        .gr1_bus1__0_16(\bank13/bbuso/gr1_bus1__0 ),
        .gr1_bus1__0_24(\bank13/abuso/gr1_bus1__0 ),
        .gr1_bus1__0_36(\bank13/bbuso2l/gr1_bus1__0 ),
        .gr1_bus1__0_40(\bank13/abuso2l/gr1_bus1__0 ),
        .gr2_bus1__0(\bank02/bbuso/gr2_bus1__0 ),
        .gr2_bus1__0_1(\bank02/abuso/gr2_bus1__0 ),
        .gr2_bus1__0_17(\bank13/bbuso/gr2_bus1__0 ),
        .gr2_bus1__0_25(\bank13/abuso/gr2_bus1__0 ),
        .gr2_bus1__0_37(\bank13/bbuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_41(\bank13/abuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_8(\bank02/bbuso2l/gr2_bus1__0 ),
        .gr3_bus1__0(\bank02/bbuso/gr3_bus1__0 ),
        .gr3_bus1__0_18(\bank13/bbuso/gr3_bus1__0 ),
        .gr3_bus1__0_2(\bank02/abuso/gr3_bus1__0 ),
        .gr3_bus1__0_26(\bank13/abuso/gr3_bus1__0 ),
        .gr3_bus1__0_32(\bank13/bbuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_9(\bank02/bbuso2l/gr3_bus1__0 ),
        .gr4_bus1__0(\bank02/bbuso/gr4_bus1__0 ),
        .gr4_bus1__0_10(\bank02/bbuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_12(\bank02/abuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_19(\bank13/bbuso/gr4_bus1__0 ),
        .gr4_bus1__0_27(\bank13/abuso/gr4_bus1__0 ),
        .gr4_bus1__0_3(\bank02/abuso/gr4_bus1__0 ),
        .gr4_bus1__0_33(\bank13/bbuso2l/gr4_bus1__0 ),
        .gr5_bus1__0(\bank02/bbuso/gr5_bus1__0 ),
        .gr5_bus1__0_11(\bank02/bbuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_13(\bank02/abuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_20(\bank13/bbuso/gr5_bus1__0 ),
        .gr5_bus1__0_28(\bank13/abuso/gr5_bus1__0 ),
        .gr5_bus1__0_34(\bank13/bbuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_38(\bank13/abuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_4(\bank02/abuso/gr5_bus1__0 ),
        .gr6_bus1__0(\bank02/bbuso/gr6_bus1__0 ),
        .gr6_bus1__0_21(\bank13/bbuso/gr6_bus1__0 ),
        .gr6_bus1__0_29(\bank13/abuso/gr6_bus1__0 ),
        .gr6_bus1__0_35(\bank13/bbuso2l/gr6_bus1__0 ),
        .gr6_bus1__0_39(\bank13/abuso2l/gr6_bus1__0 ),
        .gr6_bus1__0_5(\bank02/abuso/gr6_bus1__0 ),
        .gr7_bus1__0(\bank02/bbuso/gr7_bus1__0 ),
        .gr7_bus1__0_14(\bank13/bbuso2l/gr7_bus1__0 ),
        .gr7_bus1__0_22(\bank13/bbuso/gr7_bus1__0 ),
        .gr7_bus1__0_30(\bank13/abuso/gr7_bus1__0 ),
        .gr7_bus1__0_42(\bank13/abuso2l/gr7_bus1__0 ),
        .gr7_bus1__0_6(\bank02/abuso/gr7_bus1__0 ),
        .\grn_reg[0] (rgf_n_366),
        .\grn_reg[0]_0 (rgf_n_371),
        .\grn_reg[10] (rgf_n_329),
        .\grn_reg[10]_0 (rgf_n_360),
        .\grn_reg[11] (rgf_n_330),
        .\grn_reg[11]_0 (rgf_n_361),
        .\grn_reg[12] (rgf_n_331),
        .\grn_reg[12]_0 (rgf_n_362),
        .\grn_reg[13] (rgf_n_332),
        .\grn_reg[13]_0 (rgf_n_363),
        .\grn_reg[14] (rgf_n_333),
        .\grn_reg[14]_0 (rgf_n_364),
        .\grn_reg[15] ({rgf_n_16,rgf_n_17,rgf_n_18,rgf_n_19,rgf_n_20,rgf_n_21,rgf_n_22,rgf_n_23,rgf_n_24,rgf_n_25,rgf_n_26,rgf_n_27,rgf_n_28,rgf_n_29,rgf_n_30,rgf_n_31}),
        .\grn_reg[15]_0 ({rgf_n_32,rgf_n_33,rgf_n_34,rgf_n_35,rgf_n_36,rgf_n_37,rgf_n_38,rgf_n_39,rgf_n_40,rgf_n_41,rgf_n_42}),
        .\grn_reg[15]_1 ({rgf_n_43,rgf_n_44,rgf_n_45,rgf_n_46,rgf_n_47,rgf_n_48,rgf_n_49,rgf_n_50,rgf_n_51,rgf_n_52,rgf_n_53}),
        .\grn_reg[15]_10 (fch_n_277),
        .\grn_reg[15]_11 (fch_n_257),
        .\grn_reg[15]_12 (fch_n_253),
        .\grn_reg[15]_13 (fch_n_273),
        .\grn_reg[15]_14 (fch_n_269),
        .\grn_reg[15]_15 (fch_n_262),
        .\grn_reg[15]_16 (fch_n_258),
        .\grn_reg[15]_17 (fch_n_278),
        .\grn_reg[15]_18 (fch_n_274),
        .\grn_reg[15]_19 (fch_n_254),
        .\grn_reg[15]_2 ({rgf_n_54,rgf_n_55,rgf_n_56,rgf_n_57,rgf_n_58,rgf_n_59,rgf_n_60,rgf_n_61,rgf_n_62,rgf_n_63,rgf_n_64}),
        .\grn_reg[15]_20 (fch_n_250),
        .\grn_reg[15]_21 (fch_n_270),
        .\grn_reg[15]_22 (fch_n_266),
        .\grn_reg[15]_23 (fch_n_263),
        .\grn_reg[15]_24 (fch_n_259),
        .\grn_reg[15]_25 (fch_n_279),
        .\grn_reg[15]_26 (fch_n_275),
        .\grn_reg[15]_27 (fch_n_255),
        .\grn_reg[15]_28 (fch_n_251),
        .\grn_reg[15]_29 (fch_n_271),
        .\grn_reg[15]_3 ({rgf_n_65,rgf_n_66,rgf_n_67,rgf_n_68,rgf_n_69,rgf_n_70,rgf_n_71,rgf_n_72,rgf_n_73,rgf_n_74,rgf_n_75}),
        .\grn_reg[15]_30 (fch_n_267),
        .\grn_reg[15]_31 (fch_n_264),
        .\grn_reg[15]_32 (fch_n_260),
        .\grn_reg[15]_33 (fch_n_280),
        .\grn_reg[15]_34 (fch_n_276),
        .\grn_reg[15]_35 (fch_n_256),
        .\grn_reg[15]_36 (fch_n_252),
        .\grn_reg[15]_37 (fch_n_272),
        .\grn_reg[15]_38 (fch_n_268),
        .\grn_reg[15]_4 ({rgf_n_76,rgf_n_77,rgf_n_78,rgf_n_79,rgf_n_80,rgf_n_81,rgf_n_82,rgf_n_83,rgf_n_84,rgf_n_85,rgf_n_86,rgf_n_87,rgf_n_88,rgf_n_89,rgf_n_90,rgf_n_91}),
        .\grn_reg[15]_5 ({rgf_n_92,rgf_n_93,rgf_n_94,rgf_n_95,rgf_n_96,rgf_n_97,rgf_n_98,rgf_n_99,rgf_n_100,rgf_n_101,rgf_n_102,rgf_n_103,rgf_n_104,rgf_n_105,rgf_n_106,rgf_n_107}),
        .\grn_reg[15]_6 (rgf_n_334),
        .\grn_reg[15]_7 (rgf_n_365),
        .\grn_reg[15]_8 (fch_n_261),
        .\grn_reg[15]_9 (fch_n_281),
        .\grn_reg[1] (rgf_n_367),
        .\grn_reg[1]_0 (rgf_n_372),
        .\grn_reg[2] (rgf_n_368),
        .\grn_reg[2]_0 (rgf_n_373),
        .\grn_reg[3] (rgf_n_369),
        .\grn_reg[3]_0 (rgf_n_374),
        .\grn_reg[4] ({rgf_n_108,rgf_n_109,rgf_n_110,rgf_n_111,rgf_n_112}),
        .\grn_reg[4]_0 ({rgf_n_113,rgf_n_114,rgf_n_115,rgf_n_116,rgf_n_117}),
        .\grn_reg[4]_1 ({rgf_n_118,rgf_n_119,rgf_n_120,rgf_n_121,rgf_n_122}),
        .\grn_reg[4]_10 ({rgf_n_163,rgf_n_164,rgf_n_165,rgf_n_166,rgf_n_167}),
        .\grn_reg[4]_11 ({rgf_n_168,rgf_n_169,rgf_n_170,rgf_n_171,rgf_n_172}),
        .\grn_reg[4]_12 ({rgf_n_173,rgf_n_174,rgf_n_175,rgf_n_176,rgf_n_177}),
        .\grn_reg[4]_13 ({rgf_n_178,rgf_n_179,rgf_n_180,rgf_n_181,rgf_n_182}),
        .\grn_reg[4]_14 ({rgf_n_183,rgf_n_184,rgf_n_185,rgf_n_186,rgf_n_187}),
        .\grn_reg[4]_15 ({rgf_n_188,rgf_n_189,rgf_n_190,rgf_n_191,rgf_n_192}),
        .\grn_reg[4]_16 ({rgf_n_193,rgf_n_194,rgf_n_195,rgf_n_196,rgf_n_197}),
        .\grn_reg[4]_17 ({rgf_n_198,rgf_n_199,rgf_n_200,rgf_n_201,rgf_n_202}),
        .\grn_reg[4]_18 ({rgf_n_203,rgf_n_204,rgf_n_205,rgf_n_206,rgf_n_207}),
        .\grn_reg[4]_19 (bbus_b02),
        .\grn_reg[4]_2 ({rgf_n_123,rgf_n_124,rgf_n_125,rgf_n_126,rgf_n_127}),
        .\grn_reg[4]_20 (rgf_n_370),
        .\grn_reg[4]_21 (rgf_n_375),
        .\grn_reg[4]_3 ({rgf_n_128,rgf_n_129,rgf_n_130,rgf_n_131,rgf_n_132}),
        .\grn_reg[4]_4 ({rgf_n_133,rgf_n_134,rgf_n_135,rgf_n_136,rgf_n_137}),
        .\grn_reg[4]_5 ({rgf_n_138,rgf_n_139,rgf_n_140,rgf_n_141,rgf_n_142}),
        .\grn_reg[4]_6 ({rgf_n_143,rgf_n_144,rgf_n_145,rgf_n_146,rgf_n_147}),
        .\grn_reg[4]_7 ({rgf_n_148,rgf_n_149,rgf_n_150,rgf_n_151,rgf_n_152}),
        .\grn_reg[4]_8 ({rgf_n_153,rgf_n_154,rgf_n_155,rgf_n_156,rgf_n_157}),
        .\grn_reg[4]_9 ({rgf_n_158,rgf_n_159,rgf_n_160,rgf_n_161,rgf_n_162}),
        .\grn_reg[5] (rgf_n_324),
        .\grn_reg[5]_0 (rgf_n_355),
        .\grn_reg[6] (rgf_n_325),
        .\grn_reg[6]_0 (rgf_n_356),
        .\grn_reg[7] (rgf_n_326),
        .\grn_reg[7]_0 (rgf_n_357),
        .\grn_reg[8] (rgf_n_327),
        .\grn_reg[8]_0 (rgf_n_358),
        .\grn_reg[9] (rgf_n_328),
        .\grn_reg[9]_0 (rgf_n_359),
        .irq(irq),
        .irq_lev(irq_lev),
        .irq_lev_0_sp_1(rgf_n_487),
        .\iv[10]_i_23 (fch_n_173),
        .\iv[10]_i_30 (rgf_n_378),
        .\iv[10]_i_9 (fch_n_178),
        .\iv[10]_i_9_0 (fch_n_175),
        .\iv[11]_i_25 (rgf_n_404),
        .\iv[11]_i_8 (fch_n_172),
        .\iv[11]_i_8_0 (fch_n_177),
        .\iv[13]_i_18 (fch_n_174),
        .\iv[13]_i_2 (fch_n_39),
        .\iv[13]_i_23 (rgf_n_397),
        .\iv[13]_i_23_0 (rgf_n_489),
        .\iv[13]_i_25 (rgf_n_433),
        .\iv[13]_i_27 (rgf_n_398),
        .\iv[13]_i_2_0 (fch_n_162),
        .\iv[13]_i_31 (rgf_n_411),
        .\iv[13]_i_32 (rgf_n_412),
        .\iv[13]_i_33 (rgf_n_413),
        .\iv[13]_i_36 (rgf_n_394),
        .\iv[13]_i_36_0 (rgf_n_401),
        .\iv[13]_i_6 (fch_n_166),
        .\iv[14]_i_29 (rgf_n_392),
        .\iv[14]_i_39 (rgf_n_388),
        .\iv[14]_i_39_0 (rgf_n_503),
        .\iv[14]_i_42 (rgf_n_426),
        .\iv[14]_i_8 (rgf_n_444),
        .\iv[2]_i_23 (rgf_n_431),
        .\iv[2]_i_23_0 (rgf_n_432),
        .\iv[2]_i_23_1 (rgf_n_436),
        .\iv[2]_i_23_2 (rgf_n_441),
        .\iv[2]_i_23_3 (rgf_n_490),
        .\iv[2]_i_8 (rgf_n_416),
        .\iv[2]_i_8_0 (rgf_n_420),
        .\iv[2]_i_8_1 (rgf_n_421),
        .\iv[2]_i_8_2 (rgf_n_429),
        .\iv[2]_i_9 (rgf_n_430),
        .\iv[5]_i_15 (rgf_n_400),
        .\iv[5]_i_2 (fch_n_169),
        .\iv[5]_i_5 (fch_n_168),
        .\iv[7]_i_18 (rgf_n_406),
        .\iv[7]_i_9 (fch_n_176),
        .\iv[8]_i_20 (rgf_n_435),
        .\iv[9]_i_2 (fch_n_163),
        .\iv[9]_i_2_0 (fch_n_170),
        .\iv[9]_i_6 (fch_n_233),
        .\iv_reg[15] ({\ivec/p_0_in ,rgf_iv_ve}),
        .out({rgf_n_0,rgf_n_1,rgf_n_2,rgf_n_3,rgf_n_4,rgf_n_5,rgf_n_6,rgf_n_7,rgf_n_8,rgf_n_9,rgf_n_10,rgf_n_11,rgf_n_12,rgf_n_13,rgf_n_14,rgf_n_15}),
        .\pc_reg[15] (\pcnt/p_1_in ),
        .rst_n(rst_n),
        .sp_dec_0(\sptr/sp_dec_0 ),
        .\sp_reg[11] ({rgf_n_311,rgf_n_312,rgf_n_313,rgf_n_314}),
        .\sp_reg[15] (\sptr/p_0_in ),
        .\sp_reg[15]_0 ({rgf_n_315,rgf_n_316,rgf_n_317,rgf_n_318}),
        .\sp_reg[15]_1 ({fch_n_282,fch_n_283,fch_n_284,fch_n_285,fch_n_286,fch_n_287,fch_n_288,fch_n_289,fch_n_290,fch_n_291,fch_n_292,fch_n_293,fch_n_294,fch_n_295,fch_n_296,fch_n_297}),
        .\sp_reg[1] ({rgf_n_304,rgf_n_305,rgf_n_306}),
        .\sp_reg[3] (rgf_n_303),
        .\sp_reg[7] ({rgf_n_307,rgf_n_308,rgf_n_309,rgf_n_310}),
        .\sr[6]_i_10 (rgf_n_405),
        .\sr[6]_i_3 (fch_n_348),
        .\sr[6]_i_3_0 (fch_n_167),
        .\sr_reg[15] ({\sreg/p_2_in [7:4],rgf_sr_ml,rgf_sr_dr,\sreg/p_2_in [1:0],rgf_sr_flag,rgf_sr_ie,sr_bank}),
        .\sr_reg[5] (rgf_n_465),
        .\sr_reg[6] (rgf_n_377),
        .\sr_reg[6]_0 (rgf_n_379),
        .\sr_reg[6]_1 (rgf_n_381),
        .\sr_reg[6]_10 (rgf_n_414),
        .\sr_reg[6]_11 (rgf_n_415),
        .\sr_reg[6]_12 (rgf_n_424),
        .\sr_reg[6]_13 (rgf_n_425),
        .\sr_reg[6]_14 (rgf_n_434),
        .\sr_reg[6]_15 (rgf_n_438),
        .\sr_reg[6]_16 (rgf_n_506),
        .\sr_reg[6]_17 (rgf_n_508),
        .\sr_reg[6]_18 (rgf_n_509),
        .\sr_reg[6]_19 (rgf_n_510),
        .\sr_reg[6]_2 (rgf_n_382),
        .\sr_reg[6]_3 (rgf_n_383),
        .\sr_reg[6]_4 (rgf_n_385),
        .\sr_reg[6]_5 (rgf_n_387),
        .\sr_reg[6]_6 (rgf_n_390),
        .\sr_reg[6]_7 (rgf_n_393),
        .\sr_reg[6]_8 (rgf_n_402),
        .\sr_reg[6]_9 (rgf_n_410),
        .\sr_reg[7] (rgf_n_445),
        .\sr_reg[7]_0 (rgf_n_463),
        .\sr_reg[7]_1 (rgf_n_464),
        .\sr_reg[8] (fch_n_382),
        .\stat_reg[2] (rgf_n_396),
        .\stat_reg[2]_0 (rgf_n_399),
        .\stat_reg[2]_1 (rgf_n_403),
        .\stat_reg[2]_2 (rgf_n_442),
        .\stat_reg[2]_3 (rgf_n_443),
        .\stat_reg[2]_4 (rgf_n_482),
        .\stat_reg[2]_5 (rgf_n_483),
        .\stat_reg[2]_6 (rgf_n_484),
        .\stat_reg[2]_7 (rgf_n_485),
        .\stat_reg[2]_8 (rgf_n_486),
        .\tr_reg[0] (cbus_sel_cr),
        .\tr_reg[15] (rgf_tr),
        .\tr_reg[15]_0 (cbus),
        .\tr_reg[2] (fch_n_161),
        .\tr_reg[2]_0 (fch_n_165),
        .\tr_reg[2]_1 (fch_n_164));
endmodule
