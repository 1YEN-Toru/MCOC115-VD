
module mcvm_alu
   (O,
    tout__1_carry__0_i_8,
    tout__1_carry__1_i_8,
    tout__1_carry__2_i_8,
    tout__1_carry__3_i_3,
    \sr[4]_i_17 ,
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
  output \sr[4]_i_17 ;
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
  wire \sr[4]_i_17 ;
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
        .\sr[4]_i_17 (\sr[4]_i_17 ),
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
    \sr[4]_i_17_0 ,
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
  output \sr[4]_i_17_0 ;
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
  wire \sr[4]_i_16_n_0 ;
  wire \sr[4]_i_17_0 ;
  wire \sr[4]_i_17_n_0 ;
  wire \sr[4]_i_18_n_0 ;
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
    \sr[4]_i_15 
       (.I0(\sr[4]_i_16_n_0 ),
        .I1(tout__1_carry__0_i_8[0]),
        .I2(tout__1_carry__0_i_8[1]),
        .I3(O[3]),
        .I4(tout__1_carry__1_i_8[0]),
        .I5(\sr[4]_i_17_n_0 ),
        .O(\sr[4]_i_17_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_16 
       (.I0(tout__1_carry__0_i_8[3]),
        .I1(tout__1_carry__2_i_8[2]),
        .I2(tout__1_carry__0_i_8[2]),
        .I3(tout__1_carry__2_i_8[1]),
        .O(\sr[4]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sr[4]_i_17 
       (.I0(tout__1_carry__2_i_8[0]),
        .I1(tout__1_carry__1_i_8[3]),
        .I2(O[2]),
        .I3(O[1]),
        .I4(\sr[4]_i_18_n_0 ),
        .O(\sr[4]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_18 
       (.I0(tout__1_carry__1_i_8[1]),
        .I1(tout__1_carry__1_i_8[2]),
        .I2(O[0]),
        .I3(tout__1_carry__2_i_8[3]),
        .O(\sr[4]_i_18_n_0 ));
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
    \sr[4]_i_17 ,
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
  output \sr[4]_i_17 ;
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
  wire \sr[4]_i_17 ;
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
        .\sr[4]_i_17_0 (\sr[4]_i_17 ),
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
   (.out({ir[15],ir[14],ir[13],ir[12],ir[11],ir[10],ir[3],ir[2],ir[1],ir[0]}),
    acmd,
    ctl_copro,
    ccmd,
    \stat_reg[2] ,
    \stat_reg[2]_0 ,
    in0,
    D,
    ctl_sp_inc,
    ctl_sp_dec,
    \stat_reg[2]_1 ,
    rst_n_fl_reg_0,
    \stat_reg[0] ,
    \stat_reg[0]_0 ,
    \sr_reg[4] ,
    cbus,
    \sr_reg[6] ,
    \iv[13]_i_3_0 ,
    \sr_reg[2] ,
    \sr_reg[5] ,
    \sr_reg[3] ,
    \sr_reg[7] ,
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
    gr1_bus1__0,
    gr1_bus1__0_0,
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
    gr1_bus1__0_1,
    gr2_bus1__0,
    gr2_bus1__0_2,
    gr2_bus1__0_3,
    abus_sel_0,
    gr0_bus1__0,
    gr0_bus1__0_4,
    \grn_reg[0]_0 ,
    \grn_reg[1]_0 ,
    \grn_reg[2]_0 ,
    \grn_reg[3]_0 ,
    \grn_reg[4]_0 ,
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
    gr0_bus1__0_5,
    gr4_bus1__0,
    gr4_bus1__0_6,
    gr4_bus1__0_7,
    gr5_bus1__0,
    gr5_bus1__0_8,
    gr5_bus1__0_9,
    gr5_bus1__0_10,
    gr6_bus1__0,
    gr6_bus1__0_11,
    gr6_bus1__0_12,
    gr7_bus1__0,
    gr7_bus1__0_13,
    gr7_bus1__0_14,
    gr3_bus1__0,
    gr3_bus1__0_15,
    \sr_reg[13] ,
    cbus_sel_cr,
    gr6_bus1__0_16,
    \stat_reg[2]_2 ,
    gr6_bus1__0_17,
    \grn_reg[0]_1 ,
    \grn_reg[1]_1 ,
    \grn_reg[2]_1 ,
    \grn_reg[3]_1 ,
    \grn_reg[4]_1 ,
    \grn_reg[5]_1 ,
    gr3_bus1__0_18,
    gr2_bus1__0_19,
    \grn_reg[6]_1 ,
    \grn_reg[7]_1 ,
    \grn_reg[8]_1 ,
    \grn_reg[9]_1 ,
    \grn_reg[10]_1 ,
    \grn_reg[11]_1 ,
    \grn_reg[12]_1 ,
    \grn_reg[13]_1 ,
    \grn_reg[14]_1 ,
    \grn_reg[15]_1 ,
    gr6_bus1__0_20,
    gr2_bus1__0_21,
    \stat_reg[2]_3 ,
    gr2_bus1__0_22,
    gr2_bus1__0_23,
    \stat_reg[2]_4 ,
    gr0_bus1__0_24,
    gr0_bus1__0_25,
    gr0_bus1__0_26,
    gr4_bus1__0_27,
    gr4_bus1__0_28,
    gr4_bus1__0_29,
    bbus_sel_0,
    gr1_bus1__0_30,
    gr1_bus1__0_31,
    gr1_bus1__0_32,
    gr5_bus1__0_33,
    gr5_bus1__0_34,
    gr5_bus1__0_35,
    gr7_bus1__0_36,
    gr7_bus1__0_37,
    gr7_bus1__0_38,
    gr3_bus1__0_39,
    gr3_bus1__0_40,
    gr3_bus1__0_41,
    \bdatw[8]_INST_0_i_2_0 ,
    \stat_reg[2]_5 ,
    \sr[7]_i_11 ,
    \sr_reg[4]_0 ,
    \bdatw[9]_INST_0_i_2_0 ,
    \bdatw[12]_INST_0_i_2_0 ,
    tout__1_carry_i_10_0,
    \badr[1]_INST_0_i_1 ,
    \bdatw[8]_INST_0_i_2_1 ,
    \bdatw[11]_INST_0_i_2_0 ,
    \sr_reg[3]_0 ,
    \sr_reg[0] ,
    \bdatw[11]_INST_0_i_2_1 ,
    \badr[15]_INST_0_i_1 ,
    \iv[14]_i_34_0 ,
    bbus_o,
    \bdatw[9]_INST_0_i_2_1 ,
    bdatw,
    badrx,
    \badr[0]_INST_0_i_1 ,
    \stat_reg[0]_1 ,
    \sp_reg[15] ,
    \sp_reg[14] ,
    \sp_reg[13] ,
    \sp_reg[12] ,
    \sp_reg[11] ,
    \sp_reg[10] ,
    \sp_reg[9] ,
    \sp_reg[8] ,
    \sp_reg[7] ,
    \sp_reg[6] ,
    \sp_reg[5] ,
    \sp_reg[4] ,
    \sp_reg[3] ,
    \sp_reg[2] ,
    \sp_reg[1] ,
    \sp_reg[0] ,
    \read_cyc_reg[1] ,
    \pc_reg[15] ,
    \sr_reg[0]_0 ,
    \sr_reg[1] ,
    \sr_reg[2]_0 ,
    \sr_reg[3]_1 ,
    \sr_reg[4]_1 ,
    \sr_reg[5]_0 ,
    \sr_reg[6]_0 ,
    \sr_reg[7]_0 ,
    \sr_reg[8] ,
    \sr_reg[9] ,
    \sr_reg[10] ,
    \sr_reg[11] ,
    \sr_reg[12] ,
    \sr_reg[13]_0 ,
    \sr_reg[14] ,
    \sr_reg[15] ,
    E,
    \sr_reg[0]_1 ,
    \sr_reg[1]_0 ,
    \sr_reg[1]_1 ,
    \sr_reg[1]_2 ,
    \sr_reg[0]_2 ,
    \sr_reg[1]_3 ,
    \sr_reg[1]_4 ,
    \sr_reg[1]_5 ,
    \sr_reg[0]_3 ,
    \sr_reg[1]_6 ,
    \sr_reg[1]_7 ,
    \sr_reg[1]_8 ,
    \sr_reg[0]_4 ,
    \sr_reg[1]_9 ,
    \sr_reg[1]_10 ,
    \sr_reg[1]_11 ,
    \sr_reg[0]_5 ,
    \sr_reg[1]_12 ,
    \sr_reg[1]_13 ,
    \sr_reg[1]_14 ,
    \sr_reg[0]_6 ,
    \sr_reg[1]_15 ,
    \sr_reg[1]_16 ,
    \sr_reg[1]_17 ,
    \sr_reg[0]_7 ,
    \sr_reg[1]_18 ,
    \sr_reg[1]_19 ,
    gr0_bus1__0_42,
    \sr_reg[1]_20 ,
    \sr_reg[1]_21 ,
    \sr_reg[1]_22 ,
    \sr_reg[1]_23 ,
    \sr_reg[1]_24 ,
    \bdatw[8]_INST_0_i_2_2 ,
    \badr[14]_INST_0_i_1 ,
    \badr[15]_INST_0_i_1_0 ,
    \badr[15]_INST_0_i_1_1 ,
    \badr[15]_INST_0_i_1_2 ,
    S,
    DI,
    brdy_0,
    badr,
    rst_n_0,
    \sr_reg[0]_8 ,
    \sr_reg[11]_0 ,
    \sr_reg[1]_25 ,
    \sr_reg[10]_0 ,
    \sr_reg[1]_26 ,
    \sr_reg[1]_27 ,
    \sr_reg[0]_9 ,
    \sr_reg[1]_28 ,
    \badr[6]_INST_0_i_1 ,
    tout__1_carry__0_i_1_0,
    \badr[10]_INST_0_i_1 ,
    tout__1_carry__1_i_1_0,
    fch_irq_req,
    clk,
    ctl_fetch_fl_reg_0,
    rst_n,
    \bcmd[1] ,
    Q,
    crdy,
    \ccmd[2]_INST_0_i_1_0 ,
    \badr[15]_INST_0_i_2 ,
    \badr[15]_INST_0_i_29_0 ,
    ctl_fetch_fl_reg_1,
    ctl_fetch_fl_reg_2,
    irq,
    \stat_reg[0]_2 ,
    \eir_fl_reg[1]_0 ,
    \stat_reg[0]_3 ,
    brdy,
    \tr[15]_i_9_0 ,
    \stat_reg[2]_6 ,
    \stat_reg[2]_7 ,
    \ccmd[4]_INST_0_i_1_0 ,
    \bcmd[0] ,
    ctl_fetch_inferred_i_6,
    \sr[15]_i_5_0 ,
    \ccmd[1]_INST_0_i_7_0 ,
    \stat[1]_i_12_0 ,
    \tr[15]_i_29_0 ,
    \badr[15]_INST_0_i_29_1 ,
    \bdatw[15]_INST_0_i_10_0 ,
    \bdatw[15]_INST_0_i_4_0 ,
    \ccmd[1]_INST_0_i_3_0 ,
    \badr[15]_INST_0_i_94_0 ,
    \stat[1]_i_2_0 ,
    ctl_fetch_inferred_i_3_0,
    \stat[1]_i_2_1 ,
    ctl_fetch_ext_fl_reg_0,
    \tr[15]_i_31_0 ,
    \bdatw[15]_INST_0_i_1_0 ,
    \ccmd[2]_INST_0_i_16_0 ,
    \tr[15]_i_3_0 ,
    \badrx[15] ,
    \pc_reg[15]_0 ,
    bank_sel,
    \bdatw[15]_INST_0_i_55_0 ,
    \bdatw[15]_INST_0_i_55_1 ,
    \bdatw[15]_INST_0_i_55_2 ,
    \badr[15]_INST_0_i_4 ,
    cpuid,
    \bdatw[15]_INST_0_i_22 ,
    \bdatw[15]_INST_0_i_22_0 ,
    \badr[15]_INST_0_i_1_3 ,
    \tr_reg[11]_0 ,
    \tr_reg[8]_0 ,
    \iv[0]_i_2_0 ,
    \iv[8]_i_2_0 ,
    \tr_reg[7]_0 ,
    \tr_reg[4]_0 ,
    \tr_reg[4]_1 ,
    \iv[12]_i_2_0 ,
    \sr_reg[7]_1 ,
    \tr_reg[12]_0 ,
    \tr_reg[6]_0 ,
    \tr_reg[6]_1 ,
    \iv[10]_i_5_0 ,
    \iv[10]_i_5_1 ,
    abus_0,
    \tr_reg[10]_0 ,
    \iv[10]_i_2_0 ,
    \iv[10]_i_2_1 ,
    O,
    \tr_reg[2]_0 ,
    \tr_reg[2]_1 ,
    \tr_reg[5]_0 ,
    \tr_reg[5]_1 ,
    \tr_reg[5]_2 ,
    \tr_reg[13]_0 ,
    \tr_reg[13]_1 ,
    \tr_reg[13]_2 ,
    \tr_reg[9]_0 ,
    \tr_reg[9]_1 ,
    \iv[9]_i_2_0 ,
    \iv[9]_i_2_1 ,
    \tr_reg[1]_0 ,
    \tr_reg[1]_1 ,
    \iv[1]_i_7_0 ,
    \iv[1]_i_8_0 ,
    \sr_reg[6]_1 ,
    \sr[5]_i_3_0 ,
    \iv[4]_i_2_0 ,
    \iv[13]_i_2_0 ,
    \iv[14]_i_4_0 ,
    \iv[1]_i_2_0 ,
    \tr_reg[3]_0 ,
    \tr_reg[3]_1 ,
    \sr[6]_i_3_0 ,
    \iv[11]_i_2_0 ,
    \iv[3]_i_2_0 ,
    \tr_reg[11]_1 ,
    \tr_reg[7]_1 ,
    \iv[7]_i_2_0 ,
    \iv[7]_i_2_1 ,
    \iv[7]_i_2_2 ,
    \sr[4]_i_10_0 ,
    \sr[4]_i_10_1 ,
    \tr_reg[0]_0 ,
    \iv[1]_i_2_1 ,
    \iv[9]_i_2_2 ,
    \iv[4]_i_2_1 ,
    \sr[6]_i_3_1 ,
    \tr_reg[0]_1 ,
    \iv[8]_i_2_1 ,
    \tr_reg[14]_0 ,
    \iv[14]_i_4_1 ,
    \iv[10]_i_2_2 ,
    \iv[2]_i_2_0 ,
    \iv[11]_i_2_1 ,
    \sr[6]_i_3_2 ,
    \sr[6]_i_3_3 ,
    \iv[4]_i_8_0 ,
    \iv[4]_i_8_1 ,
    \iv[0]_i_2_1 ,
    \sr[7]_i_9_0 ,
    \iv[7]_i_2_3 ,
    \iv[11]_i_2_2 ,
    \iv[11]_i_2_3 ,
    \iv[2]_i_2_1 ,
    \iv[3]_i_2_1 ,
    \iv[11]_i_2_4 ,
    \iv[2]_i_2_2 ,
    \iv[6]_i_2_0 ,
    \iv[7]_i_2_4 ,
    \iv[12]_i_7_0 ,
    \iv[5]_i_2_0 ,
    \iv[6]_i_2_1 ,
    \iv[14]_i_3_0 ,
    \iv[14]_i_3_1 ,
    \sr[6]_i_3_4 ,
    \iv[10]_i_2_3 ,
    \iv[12]_i_2_1 ,
    \iv[13]_i_7_0 ,
    \sr[4]_i_4_0 ,
    \sr[4]_i_2_0 ,
    cbus_i,
    bdatr,
    \tr_reg[14]_1 ,
    .bdatw_10_sp_1(bdatw_10_sn_1),
    .bdatw_11_sp_1(bdatw_11_sn_1),
    .bbus_o_0_sp_1(bbus_o_0_sn_1),
    bbus_b02,
    .bdatw_9_sp_1(bdatw_9_sn_1),
    \bdatw[9]_0 ,
    \bdatw[9]_1 ,
    \bdatw[10]_0 ,
    \bdatw[10]_1 ,
    .bbus_o_3_sp_1(bbus_o_3_sn_1),
    \bbus_o[3]_0 ,
    .bbus_o_4_sp_1(bbus_o_4_sn_1),
    \bbus_o[4]_0 ,
    \bdatw[13]_INST_0_i_2_0 ,
    \bdatw[13]_INST_0_i_2_1 ,
    \bdatw[14]_INST_0_i_2_0 ,
    \bdatw[14]_INST_0_i_2_1 ,
    \bdatw[15]_INST_0_i_2_0 ,
    \bdatw[15]_INST_0_i_2_1 ,
    .bdatw_8_sp_1(bdatw_8_sn_1),
    .bdatw_12_sp_1(bdatw_12_sn_1),
    .bdatw_13_sp_1(bdatw_13_sn_1),
    .bdatw_14_sp_1(bdatw_14_sn_1),
    .bdatw_15_sp_1(bdatw_15_sn_1),
    irq_vec,
    \iv[9]_i_2_3 ,
    \iv[9]_i_2_4 ,
    \badr[15]_INST_0_i_29_2 ,
    sp_dec_0,
    \sp_reg[15]_0 ,
    \sp_reg[15]_1 ,
    \sp_reg[7]_0 ,
    \sp_reg[11]_0 ,
    \sp_reg[3]_0 ,
    \sp_reg[1]_0 ,
    \sp_reg[9]_0 ,
    \sp_reg[13]_0 ,
    \sp_reg[5]_0 ,
    \sp_reg[2]_0 ,
    \sp_reg[10]_0 ,
    \sp_reg[14]_0 ,
    \sp_reg[6]_0 ,
    \sp_reg[12]_0 ,
    \sp_reg[4]_0 ,
    \sp_reg[8]_0 ,
    fch_pc,
    \iv[11]_i_2_5 ,
    \iv[1]_i_2_2 ,
    read_cyc,
    \iv[12]_i_13_0 ,
    \sp_reg[0]_0 ,
    irq_lev,
    p_0_in,
    fdat);
  output [0:0]acmd;
  output ctl_copro;
  output [4:0]ccmd;
  output \stat_reg[2] ;
  output \stat_reg[2]_0 ;
  output in0;
  output [2:0]D;
  output ctl_sp_inc;
  output ctl_sp_dec;
  output \stat_reg[2]_1 ;
  output rst_n_fl_reg_0;
  output \stat_reg[0] ;
  output \stat_reg[0]_0 ;
  output \sr_reg[4] ;
  output [14:0]cbus;
  output \sr_reg[6] ;
  output [0:0]\iv[13]_i_3_0 ;
  output \sr_reg[2] ;
  output \sr_reg[5] ;
  output \sr_reg[3] ;
  output \sr_reg[7] ;
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
  output gr1_bus1__0;
  output gr1_bus1__0_0;
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
  output gr1_bus1__0_1;
  output gr2_bus1__0;
  output gr2_bus1__0_2;
  output gr2_bus1__0_3;
  output [2:0]abus_sel_0;
  output gr0_bus1__0;
  output gr0_bus1__0_4;
  output \grn_reg[0]_0 ;
  output \grn_reg[1]_0 ;
  output \grn_reg[2]_0 ;
  output \grn_reg[3]_0 ;
  output \grn_reg[4]_0 ;
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
  output gr0_bus1__0_5;
  output gr4_bus1__0;
  output gr4_bus1__0_6;
  output gr4_bus1__0_7;
  output gr5_bus1__0;
  output gr5_bus1__0_8;
  output gr5_bus1__0_9;
  output gr5_bus1__0_10;
  output gr6_bus1__0;
  output gr6_bus1__0_11;
  output gr6_bus1__0_12;
  output gr7_bus1__0;
  output gr7_bus1__0_13;
  output gr7_bus1__0_14;
  output gr3_bus1__0;
  output gr3_bus1__0_15;
  output [1:0]\sr_reg[13] ;
  output [1:0]cbus_sel_cr;
  output gr6_bus1__0_16;
  output \stat_reg[2]_2 ;
  output gr6_bus1__0_17;
  output \grn_reg[0]_1 ;
  output \grn_reg[1]_1 ;
  output \grn_reg[2]_1 ;
  output \grn_reg[3]_1 ;
  output \grn_reg[4]_1 ;
  output \grn_reg[5]_1 ;
  output gr3_bus1__0_18;
  output gr2_bus1__0_19;
  output \grn_reg[6]_1 ;
  output \grn_reg[7]_1 ;
  output \grn_reg[8]_1 ;
  output \grn_reg[9]_1 ;
  output \grn_reg[10]_1 ;
  output \grn_reg[11]_1 ;
  output \grn_reg[12]_1 ;
  output \grn_reg[13]_1 ;
  output \grn_reg[14]_1 ;
  output \grn_reg[15]_1 ;
  output gr6_bus1__0_20;
  output gr2_bus1__0_21;
  output \stat_reg[2]_3 ;
  output gr2_bus1__0_22;
  output gr2_bus1__0_23;
  output [2:0]\stat_reg[2]_4 ;
  output gr0_bus1__0_24;
  output gr0_bus1__0_25;
  output gr0_bus1__0_26;
  output gr4_bus1__0_27;
  output gr4_bus1__0_28;
  output gr4_bus1__0_29;
  output [1:0]bbus_sel_0;
  output gr1_bus1__0_30;
  output gr1_bus1__0_31;
  output gr1_bus1__0_32;
  output gr5_bus1__0_33;
  output gr5_bus1__0_34;
  output gr5_bus1__0_35;
  output gr7_bus1__0_36;
  output gr7_bus1__0_37;
  output gr7_bus1__0_38;
  output gr3_bus1__0_39;
  output gr3_bus1__0_40;
  output gr3_bus1__0_41;
  output \bdatw[8]_INST_0_i_2_0 ;
  output \stat_reg[2]_5 ;
  output \sr[7]_i_11 ;
  output \sr_reg[4]_0 ;
  output \bdatw[9]_INST_0_i_2_0 ;
  output \bdatw[12]_INST_0_i_2_0 ;
  output tout__1_carry_i_10_0;
  output \badr[1]_INST_0_i_1 ;
  output \bdatw[8]_INST_0_i_2_1 ;
  output \bdatw[11]_INST_0_i_2_0 ;
  output \sr_reg[3]_0 ;
  output \sr_reg[0] ;
  output \bdatw[11]_INST_0_i_2_1 ;
  output \badr[15]_INST_0_i_1 ;
  output \iv[14]_i_34_0 ;
  output [15:0]bbus_o;
  output \bdatw[9]_INST_0_i_2_1 ;
  output [15:0]bdatw;
  output [15:0]badrx;
  output \badr[0]_INST_0_i_1 ;
  output \stat_reg[0]_1 ;
  output \sp_reg[15] ;
  output \sp_reg[14] ;
  output \sp_reg[13] ;
  output \sp_reg[12] ;
  output \sp_reg[11] ;
  output \sp_reg[10] ;
  output \sp_reg[9] ;
  output \sp_reg[8] ;
  output \sp_reg[7] ;
  output \sp_reg[6] ;
  output \sp_reg[5] ;
  output \sp_reg[4] ;
  output \sp_reg[3] ;
  output \sp_reg[2] ;
  output \sp_reg[1] ;
  output \sp_reg[0] ;
  output [15:0]\read_cyc_reg[1] ;
  output [15:0]\pc_reg[15] ;
  output \sr_reg[0]_0 ;
  output \sr_reg[1] ;
  output \sr_reg[2]_0 ;
  output \sr_reg[3]_1 ;
  output \sr_reg[4]_1 ;
  output \sr_reg[5]_0 ;
  output \sr_reg[6]_0 ;
  output \sr_reg[7]_0 ;
  output \sr_reg[8] ;
  output \sr_reg[9] ;
  output \sr_reg[10] ;
  output \sr_reg[11] ;
  output \sr_reg[12] ;
  output \sr_reg[13]_0 ;
  output \sr_reg[14] ;
  output \sr_reg[15] ;
  output [0:0]E;
  output [0:0]\sr_reg[0]_1 ;
  output [0:0]\sr_reg[1]_0 ;
  output [0:0]\sr_reg[1]_1 ;
  output [0:0]\sr_reg[1]_2 ;
  output [0:0]\sr_reg[0]_2 ;
  output [0:0]\sr_reg[1]_3 ;
  output [0:0]\sr_reg[1]_4 ;
  output [0:0]\sr_reg[1]_5 ;
  output [0:0]\sr_reg[0]_3 ;
  output [0:0]\sr_reg[1]_6 ;
  output [0:0]\sr_reg[1]_7 ;
  output [0:0]\sr_reg[1]_8 ;
  output [0:0]\sr_reg[0]_4 ;
  output [0:0]\sr_reg[1]_9 ;
  output [0:0]\sr_reg[1]_10 ;
  output [0:0]\sr_reg[1]_11 ;
  output [0:0]\sr_reg[0]_5 ;
  output [0:0]\sr_reg[1]_12 ;
  output [0:0]\sr_reg[1]_13 ;
  output [0:0]\sr_reg[1]_14 ;
  output [0:0]\sr_reg[0]_6 ;
  output [0:0]\sr_reg[1]_15 ;
  output [0:0]\sr_reg[1]_16 ;
  output [0:0]\sr_reg[1]_17 ;
  output [0:0]\sr_reg[0]_7 ;
  output [0:0]\sr_reg[1]_18 ;
  output [0:0]\sr_reg[1]_19 ;
  output gr0_bus1__0_42;
  output \sr_reg[1]_20 ;
  output \sr_reg[1]_21 ;
  output \sr_reg[1]_22 ;
  output \sr_reg[1]_23 ;
  output \sr_reg[1]_24 ;
  output \bdatw[8]_INST_0_i_2_2 ;
  output [3:0]\badr[14]_INST_0_i_1 ;
  output [3:0]\badr[15]_INST_0_i_1_0 ;
  output [1:0]\badr[15]_INST_0_i_1_1 ;
  output [0:0]\badr[15]_INST_0_i_1_2 ;
  output [3:0]S;
  output [2:0]DI;
  output brdy_0;
  output [15:0]badr;
  output rst_n_0;
  output \sr_reg[0]_8 ;
  output \sr_reg[11]_0 ;
  output \sr_reg[1]_25 ;
  output \sr_reg[10]_0 ;
  output [0:0]\sr_reg[1]_26 ;
  output [0:0]\sr_reg[1]_27 ;
  output [0:0]\sr_reg[0]_9 ;
  output [0:0]\sr_reg[1]_28 ;
  output [3:0]\badr[6]_INST_0_i_1 ;
  output [3:0]tout__1_carry__0_i_1_0;
  output [3:0]\badr[10]_INST_0_i_1 ;
  output [3:0]tout__1_carry__1_i_1_0;
  input fch_irq_req;
  input clk;
  input ctl_fetch_fl_reg_0;
  input rst_n;
  input \bcmd[1] ;
  input [2:0]Q;
  input crdy;
  input \ccmd[2]_INST_0_i_1_0 ;
  input [15:0]\badr[15]_INST_0_i_2 ;
  input \badr[15]_INST_0_i_29_0 ;
  input ctl_fetch_fl_reg_1;
  input ctl_fetch_fl_reg_2;
  input irq;
  input \stat_reg[0]_2 ;
  input \eir_fl_reg[1]_0 ;
  input \stat_reg[0]_3 ;
  input brdy;
  input \tr[15]_i_9_0 ;
  input \stat_reg[2]_6 ;
  input \stat_reg[2]_7 ;
  input \ccmd[4]_INST_0_i_1_0 ;
  input \bcmd[0] ;
  input ctl_fetch_inferred_i_6;
  input \sr[15]_i_5_0 ;
  input \ccmd[1]_INST_0_i_7_0 ;
  input \stat[1]_i_12_0 ;
  input \tr[15]_i_29_0 ;
  input \badr[15]_INST_0_i_29_1 ;
  input \bdatw[15]_INST_0_i_10_0 ;
  input \bdatw[15]_INST_0_i_4_0 ;
  input \ccmd[1]_INST_0_i_3_0 ;
  input \badr[15]_INST_0_i_94_0 ;
  input \stat[1]_i_2_0 ;
  input ctl_fetch_inferred_i_3_0;
  input \stat[1]_i_2_1 ;
  input ctl_fetch_ext_fl_reg_0;
  input \tr[15]_i_31_0 ;
  input [15:0]\bdatw[15]_INST_0_i_1_0 ;
  input \ccmd[2]_INST_0_i_16_0 ;
  input \tr[15]_i_3_0 ;
  input [15:0]\badrx[15] ;
  input [15:0]\pc_reg[15]_0 ;
  input [3:0]bank_sel;
  input [15:0]\bdatw[15]_INST_0_i_55_0 ;
  input [15:0]\bdatw[15]_INST_0_i_55_1 ;
  input [15:0]\bdatw[15]_INST_0_i_55_2 ;
  input [15:0]\badr[15]_INST_0_i_4 ;
  input [1:0]cpuid;
  input [10:0]\bdatw[15]_INST_0_i_22 ;
  input [10:0]\bdatw[15]_INST_0_i_22_0 ;
  input [15:0]\badr[15]_INST_0_i_1_3 ;
  input [3:0]\tr_reg[11]_0 ;
  input \tr_reg[8]_0 ;
  input \iv[0]_i_2_0 ;
  input \iv[8]_i_2_0 ;
  input [3:0]\tr_reg[7]_0 ;
  input \tr_reg[4]_0 ;
  input \tr_reg[4]_1 ;
  input \iv[12]_i_2_0 ;
  input [3:0]\sr_reg[7]_1 ;
  input \tr_reg[12]_0 ;
  input \tr_reg[6]_0 ;
  input \tr_reg[6]_1 ;
  input \iv[10]_i_5_0 ;
  input \iv[10]_i_5_1 ;
  input [15:0]abus_0;
  input \tr_reg[10]_0 ;
  input \iv[10]_i_2_0 ;
  input \iv[10]_i_2_1 ;
  input [3:0]O;
  input \tr_reg[2]_0 ;
  input \tr_reg[2]_1 ;
  input \tr_reg[5]_0 ;
  input \tr_reg[5]_1 ;
  input \tr_reg[5]_2 ;
  input \tr_reg[13]_0 ;
  input \tr_reg[13]_1 ;
  input \tr_reg[13]_2 ;
  input \tr_reg[9]_0 ;
  input \tr_reg[9]_1 ;
  input \iv[9]_i_2_0 ;
  input \iv[9]_i_2_1 ;
  input \tr_reg[1]_0 ;
  input \tr_reg[1]_1 ;
  input \iv[1]_i_7_0 ;
  input \iv[1]_i_8_0 ;
  input [0:0]\sr_reg[6]_1 ;
  input \sr[5]_i_3_0 ;
  input \iv[4]_i_2_0 ;
  input \iv[13]_i_2_0 ;
  input \iv[14]_i_4_0 ;
  input \iv[1]_i_2_0 ;
  input \tr_reg[3]_0 ;
  input \tr_reg[3]_1 ;
  input \sr[6]_i_3_0 ;
  input \iv[11]_i_2_0 ;
  input \iv[3]_i_2_0 ;
  input \tr_reg[11]_1 ;
  input \tr_reg[7]_1 ;
  input \iv[7]_i_2_0 ;
  input \iv[7]_i_2_1 ;
  input \iv[7]_i_2_2 ;
  input \sr[4]_i_10_0 ;
  input \sr[4]_i_10_1 ;
  input \tr_reg[0]_0 ;
  input \iv[1]_i_2_1 ;
  input \iv[9]_i_2_2 ;
  input \iv[4]_i_2_1 ;
  input \sr[6]_i_3_1 ;
  input \tr_reg[0]_1 ;
  input \iv[8]_i_2_1 ;
  input \tr_reg[14]_0 ;
  input \iv[14]_i_4_1 ;
  input \iv[10]_i_2_2 ;
  input \iv[2]_i_2_0 ;
  input \iv[11]_i_2_1 ;
  input \sr[6]_i_3_2 ;
  input \sr[6]_i_3_3 ;
  input \iv[4]_i_8_0 ;
  input \iv[4]_i_8_1 ;
  input \iv[0]_i_2_1 ;
  input \sr[7]_i_9_0 ;
  input \iv[7]_i_2_3 ;
  input \iv[11]_i_2_2 ;
  input \iv[11]_i_2_3 ;
  input \iv[2]_i_2_1 ;
  input \iv[3]_i_2_1 ;
  input \iv[11]_i_2_4 ;
  input \iv[2]_i_2_2 ;
  input \iv[6]_i_2_0 ;
  input \iv[7]_i_2_4 ;
  input \iv[12]_i_7_0 ;
  input \iv[5]_i_2_0 ;
  input \iv[6]_i_2_1 ;
  input \iv[14]_i_3_0 ;
  input \iv[14]_i_3_1 ;
  input \sr[6]_i_3_4 ;
  input \iv[10]_i_2_3 ;
  input \iv[12]_i_2_1 ;
  input \iv[13]_i_7_0 ;
  input \sr[4]_i_4_0 ;
  input \sr[4]_i_2_0 ;
  input [0:0]cbus_i;
  input [0:0]bdatr;
  input \tr_reg[14]_1 ;
  input [7:0]bbus_b02;
  input \bdatw[9]_0 ;
  input \bdatw[9]_1 ;
  input \bdatw[10]_0 ;
  input \bdatw[10]_1 ;
  input \bbus_o[3]_0 ;
  input \bbus_o[4]_0 ;
  input \bdatw[13]_INST_0_i_2_0 ;
  input \bdatw[13]_INST_0_i_2_1 ;
  input \bdatw[14]_INST_0_i_2_0 ;
  input \bdatw[14]_INST_0_i_2_1 ;
  input \bdatw[15]_INST_0_i_2_0 ;
  input \bdatw[15]_INST_0_i_2_1 ;
  input [5:0]irq_vec;
  input \iv[9]_i_2_3 ;
  input \iv[9]_i_2_4 ;
  input \badr[15]_INST_0_i_29_2 ;
  input [14:0]sp_dec_0;
  input [0:0]\sp_reg[15]_0 ;
  input \sp_reg[15]_1 ;
  input \sp_reg[7]_0 ;
  input \sp_reg[11]_0 ;
  input \sp_reg[3]_0 ;
  input \sp_reg[1]_0 ;
  input \sp_reg[9]_0 ;
  input \sp_reg[13]_0 ;
  input \sp_reg[5]_0 ;
  input \sp_reg[2]_0 ;
  input \sp_reg[10]_0 ;
  input \sp_reg[14]_0 ;
  input \sp_reg[6]_0 ;
  input \sp_reg[12]_0 ;
  input \sp_reg[4]_0 ;
  input \sp_reg[8]_0 ;
  input [15:0]fch_pc;
  input \iv[11]_i_2_5 ;
  input \iv[1]_i_2_2 ;
  input [0:0]read_cyc;
  input \iv[12]_i_13_0 ;
  input [0:0]\sp_reg[0]_0 ;
  input [1:0]irq_lev;
  input p_0_in;
  input [15:0]fdat;
     output [15:0]ir;
  input bdatw_10_sn_1;
  input bdatw_11_sn_1;
  input bbus_o_0_sn_1;
  input bdatw_9_sn_1;
  input bbus_o_3_sn_1;
  input bbus_o_4_sn_1;
  input bdatw_8_sn_1;
  input bdatw_12_sn_1;
  input bdatw_13_sn_1;
  input bdatw_14_sn_1;
  input bdatw_15_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [2:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire [3:0]O;
  wire [2:0]Q;
  wire [3:0]S;
  wire [15:0]abus_0;
  wire [2:0]abus_sel_0;
  wire [0:0]acmd;
  wire [2:1]alu_sr_flag;
  wire [15:0]badr;
  wire \badr[0]_INST_0_i_1 ;
  wire [3:0]\badr[10]_INST_0_i_1 ;
  wire [3:0]\badr[14]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_101_n_0 ;
  wire \badr[15]_INST_0_i_102_n_0 ;
  wire \badr[15]_INST_0_i_103_n_0 ;
  wire \badr[15]_INST_0_i_104_n_0 ;
  wire \badr[15]_INST_0_i_105_n_0 ;
  wire \badr[15]_INST_0_i_106_n_0 ;
  wire \badr[15]_INST_0_i_107_n_0 ;
  wire \badr[15]_INST_0_i_108_n_0 ;
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
  wire \badr[15]_INST_0_i_120_n_0 ;
  wire \badr[15]_INST_0_i_121_n_0 ;
  wire \badr[15]_INST_0_i_123_n_0 ;
  wire \badr[15]_INST_0_i_124_n_0 ;
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
  wire \badr[15]_INST_0_i_173_n_0 ;
  wire \badr[15]_INST_0_i_174_n_0 ;
  wire [3:0]\badr[15]_INST_0_i_1_0 ;
  wire [1:0]\badr[15]_INST_0_i_1_1 ;
  wire [0:0]\badr[15]_INST_0_i_1_2 ;
  wire [15:0]\badr[15]_INST_0_i_1_3 ;
  wire [15:0]\badr[15]_INST_0_i_2 ;
  wire \badr[15]_INST_0_i_27_n_0 ;
  wire \badr[15]_INST_0_i_29_0 ;
  wire \badr[15]_INST_0_i_29_1 ;
  wire \badr[15]_INST_0_i_29_2 ;
  wire \badr[15]_INST_0_i_30_n_0 ;
  wire [15:0]\badr[15]_INST_0_i_4 ;
  wire \badr[15]_INST_0_i_68_n_0 ;
  wire \badr[15]_INST_0_i_69_n_0 ;
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
  wire \badr[15]_INST_0_i_80_n_0 ;
  wire \badr[15]_INST_0_i_87_n_0 ;
  wire \badr[15]_INST_0_i_88_n_0 ;
  wire \badr[15]_INST_0_i_89_n_0 ;
  wire \badr[15]_INST_0_i_90_n_0 ;
  wire \badr[15]_INST_0_i_91_n_0 ;
  wire \badr[15]_INST_0_i_93_n_0 ;
  wire \badr[15]_INST_0_i_94_0 ;
  wire \badr[15]_INST_0_i_94_n_0 ;
  wire \badr[15]_INST_0_i_95_n_0 ;
  wire \badr[15]_INST_0_i_98_n_0 ;
  wire \badr[15]_INST_0_i_99_n_0 ;
  wire \badr[1]_INST_0_i_1 ;
  wire [3:0]\badr[6]_INST_0_i_1 ;
  wire [15:0]badrx;
  wire [15:0]\badrx[15] ;
  wire \badrx[15]_INST_0_i_2_n_0 ;
  wire \badrx[15]_INST_0_i_3_n_0 ;
  wire \badrx[15]_INST_0_i_4_n_0 ;
  wire \badrx[15]_INST_0_i_5_n_0 ;
  wire [3:0]bank_sel;
  wire [7:0]bbus_b02;
  wire [15:0]bbus_o;
  wire \bbus_o[3]_0 ;
  wire \bbus_o[4]_0 ;
  wire bbus_o_0_sn_1;
  wire bbus_o_3_sn_1;
  wire bbus_o_4_sn_1;
  wire [1:0]bbus_sel_0;
  wire \bcmd[0] ;
  wire \bcmd[0]_INST_0_i_10_n_0 ;
  wire \bcmd[0]_INST_0_i_12_n_0 ;
  wire \bcmd[0]_INST_0_i_13_n_0 ;
  wire \bcmd[0]_INST_0_i_14_n_0 ;
  wire \bcmd[0]_INST_0_i_15_n_0 ;
  wire \bcmd[0]_INST_0_i_1_n_0 ;
  wire \bcmd[0]_INST_0_i_2_n_0 ;
  wire \bcmd[0]_INST_0_i_3_n_0 ;
  wire \bcmd[0]_INST_0_i_4_n_0 ;
  wire \bcmd[0]_INST_0_i_5_n_0 ;
  wire \bcmd[0]_INST_0_i_6_n_0 ;
  wire \bcmd[0]_INST_0_i_7_n_0 ;
  wire \bcmd[0]_INST_0_i_9_n_0 ;
  wire \bcmd[1] ;
  wire \bcmd[1]_INST_0_i_2_n_0 ;
  wire \bcmd[1]_INST_0_i_3_n_0 ;
  wire \bcmd[1]_INST_0_i_4_n_0 ;
  wire \bcmd[1]_INST_0_i_5_n_0 ;
  wire \bcmd[1]_INST_0_i_6_n_0 ;
  wire \bcmd[1]_INST_0_i_7_n_0 ;
  wire \bcmd[1]_INST_0_i_8_n_0 ;
  wire \bcmd[2]_INST_0_i_1_n_0 ;
  wire \bcmd[2]_INST_0_i_2_n_0 ;
  wire [0:0]bdatr;
  wire [15:0]bdatw;
  wire \bdatw[10]_0 ;
  wire \bdatw[10]_1 ;
  wire \bdatw[10]_INST_0_i_10_n_0 ;
  wire \bdatw[10]_INST_0_i_11_n_0 ;
  wire \bdatw[10]_INST_0_i_12_n_0 ;
  wire \bdatw[10]_INST_0_i_13_n_0 ;
  wire \bdatw[10]_INST_0_i_16_n_0 ;
  wire \bdatw[10]_INST_0_i_17_n_0 ;
  wire \bdatw[10]_INST_0_i_1_n_0 ;
  wire \bdatw[10]_INST_0_i_2_n_0 ;
  wire \bdatw[10]_INST_0_i_38_n_0 ;
  wire \bdatw[10]_INST_0_i_5_n_0 ;
  wire \bdatw[11]_INST_0_i_11_n_0 ;
  wire \bdatw[11]_INST_0_i_12_n_0 ;
  wire \bdatw[11]_INST_0_i_15_n_0 ;
  wire \bdatw[11]_INST_0_i_16_n_0 ;
  wire \bdatw[11]_INST_0_i_1_n_0 ;
  wire \bdatw[11]_INST_0_i_2_0 ;
  wire \bdatw[11]_INST_0_i_2_1 ;
  wire \bdatw[11]_INST_0_i_37_n_0 ;
  wire \bdatw[11]_INST_0_i_5_n_0 ;
  wire \bdatw[11]_INST_0_i_6_n_0 ;
  wire \bdatw[12]_INST_0_i_10_n_0 ;
  wire \bdatw[12]_INST_0_i_11_n_0 ;
  wire \bdatw[12]_INST_0_i_12_n_0 ;
  wire \bdatw[12]_INST_0_i_15_n_0 ;
  wire \bdatw[12]_INST_0_i_16_n_0 ;
  wire \bdatw[12]_INST_0_i_1_n_0 ;
  wire \bdatw[12]_INST_0_i_2_0 ;
  wire \bdatw[12]_INST_0_i_56_n_0 ;
  wire \bdatw[12]_INST_0_i_5_n_0 ;
  wire \bdatw[12]_INST_0_i_67_n_0 ;
  wire \bdatw[12]_INST_0_i_68_n_0 ;
  wire \bdatw[12]_INST_0_i_69_n_0 ;
  wire \bdatw[12]_INST_0_i_70_n_0 ;
  wire \bdatw[13]_INST_0_i_10_n_0 ;
  wire \bdatw[13]_INST_0_i_14_n_0 ;
  wire \bdatw[13]_INST_0_i_1_n_0 ;
  wire \bdatw[13]_INST_0_i_23_n_0 ;
  wire \bdatw[13]_INST_0_i_24_n_0 ;
  wire \bdatw[13]_INST_0_i_2_0 ;
  wire \bdatw[13]_INST_0_i_2_1 ;
  wire \bdatw[13]_INST_0_i_2_n_0 ;
  wire \bdatw[13]_INST_0_i_35_n_0 ;
  wire \bdatw[13]_INST_0_i_5_n_0 ;
  wire \bdatw[13]_INST_0_i_6_n_0 ;
  wire \bdatw[13]_INST_0_i_7_n_0 ;
  wire \bdatw[14]_INST_0_i_10_n_0 ;
  wire \bdatw[14]_INST_0_i_14_n_0 ;
  wire \bdatw[14]_INST_0_i_1_n_0 ;
  wire \bdatw[14]_INST_0_i_23_n_0 ;
  wire \bdatw[14]_INST_0_i_24_n_0 ;
  wire \bdatw[14]_INST_0_i_2_0 ;
  wire \bdatw[14]_INST_0_i_2_1 ;
  wire \bdatw[14]_INST_0_i_2_n_0 ;
  wire \bdatw[14]_INST_0_i_35_n_0 ;
  wire \bdatw[14]_INST_0_i_5_n_0 ;
  wire \bdatw[14]_INST_0_i_6_n_0 ;
  wire \bdatw[14]_INST_0_i_7_n_0 ;
  wire \bdatw[15]_INST_0_i_100_n_0 ;
  wire \bdatw[15]_INST_0_i_101_n_0 ;
  wire \bdatw[15]_INST_0_i_10_0 ;
  wire \bdatw[15]_INST_0_i_114_n_0 ;
  wire \bdatw[15]_INST_0_i_125_n_0 ;
  wire \bdatw[15]_INST_0_i_126_n_0 ;
  wire \bdatw[15]_INST_0_i_127_n_0 ;
  wire \bdatw[15]_INST_0_i_128_n_0 ;
  wire \bdatw[15]_INST_0_i_129_n_0 ;
  wire \bdatw[15]_INST_0_i_12_n_0 ;
  wire \bdatw[15]_INST_0_i_130_n_0 ;
  wire \bdatw[15]_INST_0_i_131_n_0 ;
  wire \bdatw[15]_INST_0_i_132_n_0 ;
  wire \bdatw[15]_INST_0_i_133_n_0 ;
  wire \bdatw[15]_INST_0_i_134_n_0 ;
  wire \bdatw[15]_INST_0_i_135_n_0 ;
  wire \bdatw[15]_INST_0_i_136_n_0 ;
  wire \bdatw[15]_INST_0_i_137_n_0 ;
  wire \bdatw[15]_INST_0_i_138_n_0 ;
  wire \bdatw[15]_INST_0_i_13_n_0 ;
  wire \bdatw[15]_INST_0_i_14_n_0 ;
  wire \bdatw[15]_INST_0_i_151_n_0 ;
  wire \bdatw[15]_INST_0_i_152_n_0 ;
  wire \bdatw[15]_INST_0_i_153_n_0 ;
  wire \bdatw[15]_INST_0_i_154_n_0 ;
  wire \bdatw[15]_INST_0_i_15_n_0 ;
  wire \bdatw[15]_INST_0_i_16_n_0 ;
  wire \bdatw[15]_INST_0_i_17_n_0 ;
  wire \bdatw[15]_INST_0_i_18_n_0 ;
  wire \bdatw[15]_INST_0_i_19_n_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_1_0 ;
  wire \bdatw[15]_INST_0_i_1_n_0 ;
  wire [10:0]\bdatw[15]_INST_0_i_22 ;
  wire [10:0]\bdatw[15]_INST_0_i_22_0 ;
  wire \bdatw[15]_INST_0_i_27_n_0 ;
  wire \bdatw[15]_INST_0_i_2_0 ;
  wire \bdatw[15]_INST_0_i_2_1 ;
  wire \bdatw[15]_INST_0_i_2_n_0 ;
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
  wire \bdatw[15]_INST_0_i_41_n_0 ;
  wire \bdatw[15]_INST_0_i_42_n_0 ;
  wire \bdatw[15]_INST_0_i_43_n_0 ;
  wire \bdatw[15]_INST_0_i_44_n_0 ;
  wire \bdatw[15]_INST_0_i_45_n_0 ;
  wire \bdatw[15]_INST_0_i_46_n_0 ;
  wire \bdatw[15]_INST_0_i_47_n_0 ;
  wire \bdatw[15]_INST_0_i_49_n_0 ;
  wire \bdatw[15]_INST_0_i_4_0 ;
  wire \bdatw[15]_INST_0_i_50_n_0 ;
  wire \bdatw[15]_INST_0_i_51_n_0 ;
  wire \bdatw[15]_INST_0_i_52_n_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_55_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_55_1 ;
  wire [15:0]\bdatw[15]_INST_0_i_55_2 ;
  wire \bdatw[15]_INST_0_i_67_n_0 ;
  wire \bdatw[15]_INST_0_i_68_n_0 ;
  wire \bdatw[15]_INST_0_i_69_n_0 ;
  wire \bdatw[15]_INST_0_i_70_n_0 ;
  wire \bdatw[15]_INST_0_i_71_n_0 ;
  wire \bdatw[15]_INST_0_i_72_n_0 ;
  wire \bdatw[15]_INST_0_i_73_n_0 ;
  wire \bdatw[15]_INST_0_i_74_n_0 ;
  wire \bdatw[15]_INST_0_i_75_n_0 ;
  wire \bdatw[15]_INST_0_i_76_n_0 ;
  wire \bdatw[15]_INST_0_i_77_n_0 ;
  wire \bdatw[15]_INST_0_i_79_n_0 ;
  wire \bdatw[15]_INST_0_i_7_n_0 ;
  wire \bdatw[15]_INST_0_i_80_n_0 ;
  wire \bdatw[15]_INST_0_i_81_n_0 ;
  wire \bdatw[15]_INST_0_i_82_n_0 ;
  wire \bdatw[15]_INST_0_i_83_n_0 ;
  wire \bdatw[15]_INST_0_i_84_n_0 ;
  wire \bdatw[15]_INST_0_i_85_n_0 ;
  wire \bdatw[15]_INST_0_i_86_n_0 ;
  wire \bdatw[15]_INST_0_i_87_n_0 ;
  wire \bdatw[15]_INST_0_i_88_n_0 ;
  wire \bdatw[15]_INST_0_i_89_n_0 ;
  wire \bdatw[15]_INST_0_i_8_n_0 ;
  wire \bdatw[15]_INST_0_i_90_n_0 ;
  wire \bdatw[15]_INST_0_i_91_n_0 ;
  wire \bdatw[15]_INST_0_i_92_n_0 ;
  wire \bdatw[15]_INST_0_i_93_n_0 ;
  wire \bdatw[15]_INST_0_i_94_n_0 ;
  wire \bdatw[15]_INST_0_i_95_n_0 ;
  wire \bdatw[15]_INST_0_i_96_n_0 ;
  wire \bdatw[15]_INST_0_i_97_n_0 ;
  wire \bdatw[15]_INST_0_i_98_n_0 ;
  wire \bdatw[15]_INST_0_i_99_n_0 ;
  wire \bdatw[15]_INST_0_i_9_n_0 ;
  wire \bdatw[8]_INST_0_i_10_n_0 ;
  wire \bdatw[8]_INST_0_i_11_n_0 ;
  wire \bdatw[8]_INST_0_i_12_n_0 ;
  wire \bdatw[8]_INST_0_i_15_n_0 ;
  wire \bdatw[8]_INST_0_i_16_n_0 ;
  wire \bdatw[8]_INST_0_i_1_n_0 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_2_2 ;
  wire \bdatw[8]_INST_0_i_37_n_0 ;
  wire \bdatw[8]_INST_0_i_5_n_0 ;
  wire \bdatw[8]_INST_0_i_9_n_0 ;
  wire \bdatw[9]_0 ;
  wire \bdatw[9]_1 ;
  wire \bdatw[9]_INST_0_i_10_n_0 ;
  wire \bdatw[9]_INST_0_i_11_n_0 ;
  wire \bdatw[9]_INST_0_i_12_n_0 ;
  wire \bdatw[9]_INST_0_i_15_n_0 ;
  wire \bdatw[9]_INST_0_i_1_n_0 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_2_1 ;
  wire \bdatw[9]_INST_0_i_2_n_0 ;
  wire \bdatw[9]_INST_0_i_36_n_0 ;
  wire \bdatw[9]_INST_0_i_5_n_0 ;
  wire bdatw_10_sn_1;
  wire bdatw_11_sn_1;
  wire bdatw_12_sn_1;
  wire bdatw_13_sn_1;
  wire bdatw_14_sn_1;
  wire bdatw_15_sn_1;
  wire bdatw_8_sn_1;
  wire bdatw_9_sn_1;
  wire brdy;
  wire brdy_0;
  wire [14:0]cbus;
  wire [0:0]cbus_i;
  wire [1:0]cbus_sel_cr;
  wire [4:0]ccmd;
  wire \ccmd[0]_INST_0_i_11_n_0 ;
  wire \ccmd[0]_INST_0_i_12_n_0 ;
  wire \ccmd[0]_INST_0_i_13_n_0 ;
  wire \ccmd[0]_INST_0_i_14_n_0 ;
  wire \ccmd[0]_INST_0_i_15_n_0 ;
  wire \ccmd[0]_INST_0_i_16_n_0 ;
  wire \ccmd[0]_INST_0_i_17_n_0 ;
  wire \ccmd[0]_INST_0_i_18_n_0 ;
  wire \ccmd[0]_INST_0_i_1_n_0 ;
  wire \ccmd[0]_INST_0_i_2_n_0 ;
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
  wire \ccmd[1]_INST_0_i_14_n_0 ;
  wire \ccmd[1]_INST_0_i_15_n_0 ;
  wire \ccmd[1]_INST_0_i_16_n_0 ;
  wire \ccmd[1]_INST_0_i_17_n_0 ;
  wire \ccmd[1]_INST_0_i_18_n_0 ;
  wire \ccmd[1]_INST_0_i_19_n_0 ;
  wire \ccmd[1]_INST_0_i_1_n_0 ;
  wire \ccmd[1]_INST_0_i_20_n_0 ;
  wire \ccmd[1]_INST_0_i_2_n_0 ;
  wire \ccmd[1]_INST_0_i_3_0 ;
  wire \ccmd[1]_INST_0_i_3_n_0 ;
  wire \ccmd[1]_INST_0_i_4_n_0 ;
  wire \ccmd[1]_INST_0_i_5_n_0 ;
  wire \ccmd[1]_INST_0_i_6_n_0 ;
  wire \ccmd[1]_INST_0_i_7_0 ;
  wire \ccmd[1]_INST_0_i_7_n_0 ;
  wire \ccmd[1]_INST_0_i_8_n_0 ;
  wire \ccmd[1]_INST_0_i_9_n_0 ;
  wire \ccmd[2]_INST_0_i_10_n_0 ;
  wire \ccmd[2]_INST_0_i_11_n_0 ;
  wire \ccmd[2]_INST_0_i_12_n_0 ;
  wire \ccmd[2]_INST_0_i_13_n_0 ;
  wire \ccmd[2]_INST_0_i_14_n_0 ;
  wire \ccmd[2]_INST_0_i_15_n_0 ;
  wire \ccmd[2]_INST_0_i_16_0 ;
  wire \ccmd[2]_INST_0_i_16_n_0 ;
  wire \ccmd[2]_INST_0_i_17_n_0 ;
  wire \ccmd[2]_INST_0_i_18_n_0 ;
  wire \ccmd[2]_INST_0_i_19_n_0 ;
  wire \ccmd[2]_INST_0_i_1_0 ;
  wire \ccmd[2]_INST_0_i_1_n_0 ;
  wire \ccmd[2]_INST_0_i_20_n_0 ;
  wire \ccmd[2]_INST_0_i_21_n_0 ;
  wire \ccmd[2]_INST_0_i_22_n_0 ;
  wire \ccmd[2]_INST_0_i_23_n_0 ;
  wire \ccmd[2]_INST_0_i_24_n_0 ;
  wire \ccmd[2]_INST_0_i_25_n_0 ;
  wire \ccmd[2]_INST_0_i_2_n_0 ;
  wire \ccmd[2]_INST_0_i_3_n_0 ;
  wire \ccmd[2]_INST_0_i_4_n_0 ;
  wire \ccmd[2]_INST_0_i_5_n_0 ;
  wire \ccmd[2]_INST_0_i_6_n_0 ;
  wire \ccmd[2]_INST_0_i_7_n_0 ;
  wire \ccmd[3]_INST_0_i_10_n_0 ;
  wire \ccmd[3]_INST_0_i_11_n_0 ;
  wire \ccmd[3]_INST_0_i_12_n_0 ;
  wire \ccmd[3]_INST_0_i_13_n_0 ;
  wire \ccmd[3]_INST_0_i_14_n_0 ;
  wire \ccmd[3]_INST_0_i_15_n_0 ;
  wire \ccmd[3]_INST_0_i_16_n_0 ;
  wire \ccmd[3]_INST_0_i_17_n_0 ;
  wire \ccmd[3]_INST_0_i_18_n_0 ;
  wire \ccmd[3]_INST_0_i_19_n_0 ;
  wire \ccmd[3]_INST_0_i_1_n_0 ;
  wire \ccmd[3]_INST_0_i_20_n_0 ;
  wire \ccmd[3]_INST_0_i_2_n_0 ;
  wire \ccmd[3]_INST_0_i_3_n_0 ;
  wire \ccmd[3]_INST_0_i_4_n_0 ;
  wire \ccmd[3]_INST_0_i_5_n_0 ;
  wire \ccmd[3]_INST_0_i_6_n_0 ;
  wire \ccmd[3]_INST_0_i_7_n_0 ;
  wire \ccmd[3]_INST_0_i_8_n_0 ;
  wire \ccmd[3]_INST_0_i_9_n_0 ;
  wire \ccmd[4]_INST_0_i_10_n_0 ;
  wire \ccmd[4]_INST_0_i_12_n_0 ;
  wire \ccmd[4]_INST_0_i_13_n_0 ;
  wire \ccmd[4]_INST_0_i_14_n_0 ;
  wire \ccmd[4]_INST_0_i_16_n_0 ;
  wire \ccmd[4]_INST_0_i_17_n_0 ;
  wire \ccmd[4]_INST_0_i_18_n_0 ;
  wire \ccmd[4]_INST_0_i_19_n_0 ;
  wire \ccmd[4]_INST_0_i_1_0 ;
  wire \ccmd[4]_INST_0_i_20_n_0 ;
  wire \ccmd[4]_INST_0_i_21_n_0 ;
  wire \ccmd[4]_INST_0_i_22_n_0 ;
  wire \ccmd[4]_INST_0_i_23_n_0 ;
  wire \ccmd[4]_INST_0_i_24_n_0 ;
  wire \ccmd[4]_INST_0_i_25_n_0 ;
  wire \ccmd[4]_INST_0_i_2_n_0 ;
  wire \ccmd[4]_INST_0_i_3_n_0 ;
  wire \ccmd[4]_INST_0_i_4_n_0 ;
  wire \ccmd[4]_INST_0_i_5_n_0 ;
  wire \ccmd[4]_INST_0_i_6_n_0 ;
  wire \ccmd[4]_INST_0_i_7_n_0 ;
  wire \ccmd[4]_INST_0_i_8_n_0 ;
  wire \ccmd[4]_INST_0_i_9_n_0 ;
  wire clk;
  wire [1:0]cpuid;
  wire crdy;
  wire ctl_copro;
  wire ctl_extadr;
  wire ctl_fetch_ext;
  wire ctl_fetch_ext_fl;
  wire ctl_fetch_ext_fl_i_2_n_0;
  wire ctl_fetch_ext_fl_i_3_n_0;
  wire ctl_fetch_ext_fl_i_4_n_0;
  wire ctl_fetch_ext_fl_i_5_n_0;
  wire ctl_fetch_ext_fl_i_6_n_0;
  wire ctl_fetch_ext_fl_i_7_n_0;
  wire ctl_fetch_ext_fl_reg_0;
  wire ctl_fetch_fl;
  wire ctl_fetch_fl_reg_0;
  wire ctl_fetch_fl_reg_1;
  wire ctl_fetch_fl_reg_2;
  wire ctl_fetch_inferred_i_10_n_0;
  wire ctl_fetch_inferred_i_11_n_0;
  wire ctl_fetch_inferred_i_12_n_0;
  wire ctl_fetch_inferred_i_13_n_0;
  wire ctl_fetch_inferred_i_14_n_0;
  wire ctl_fetch_inferred_i_15_n_0;
  wire ctl_fetch_inferred_i_16_n_0;
  wire ctl_fetch_inferred_i_17_n_0;
  wire ctl_fetch_inferred_i_18_n_0;
  wire ctl_fetch_inferred_i_20_n_0;
  wire ctl_fetch_inferred_i_21_n_0;
  wire ctl_fetch_inferred_i_22_n_0;
  wire ctl_fetch_inferred_i_23_n_0;
  wire ctl_fetch_inferred_i_25_n_0;
  wire ctl_fetch_inferred_i_26_n_0;
  wire ctl_fetch_inferred_i_27_n_0;
  wire ctl_fetch_inferred_i_28_n_0;
  wire ctl_fetch_inferred_i_29_n_0;
  wire ctl_fetch_inferred_i_2_n_0;
  wire ctl_fetch_inferred_i_30_n_0;
  wire ctl_fetch_inferred_i_31_n_0;
  wire ctl_fetch_inferred_i_32_n_0;
  wire ctl_fetch_inferred_i_33_n_0;
  wire ctl_fetch_inferred_i_34_n_0;
  wire ctl_fetch_inferred_i_35_n_0;
  wire ctl_fetch_inferred_i_37_n_0;
  wire ctl_fetch_inferred_i_38_n_0;
  wire ctl_fetch_inferred_i_39_n_0;
  wire ctl_fetch_inferred_i_3_0;
  wire ctl_fetch_inferred_i_3_n_0;
  wire ctl_fetch_inferred_i_40_n_0;
  wire ctl_fetch_inferred_i_41_n_0;
  wire ctl_fetch_inferred_i_42_n_0;
  wire ctl_fetch_inferred_i_43_n_0;
  wire ctl_fetch_inferred_i_44_n_0;
  wire ctl_fetch_inferred_i_45_n_0;
  wire ctl_fetch_inferred_i_46_n_0;
  wire ctl_fetch_inferred_i_47_n_0;
  wire ctl_fetch_inferred_i_48_n_0;
  wire ctl_fetch_inferred_i_49_n_0;
  wire ctl_fetch_inferred_i_4_n_0;
  wire ctl_fetch_inferred_i_50_n_0;
  wire ctl_fetch_inferred_i_5_n_0;
  wire ctl_fetch_inferred_i_6;
  wire ctl_fetch_inferred_i_7_n_0;
  wire ctl_fetch_inferred_i_8_n_0;
  wire ctl_fetch_inferred_i_9_n_0;
  wire ctl_irq_ack;
  wire [4:0]ctl_sela;
  wire [4:3]ctl_selb;
  wire [4:0]ctl_selc;
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
  wire \fch_irq_lev[1]_i_3_n_0 ;
  wire \fch_irq_lev[1]_i_4_n_0 ;
  wire \fch_irq_lev[1]_i_5_n_0 ;
  wire fch_irq_req;
  wire fch_irq_req_fl;
  wire [15:0]fch_pc;
  wire [15:0]fdat;
  wire gr0_bus1__0;
  wire gr0_bus1__0_24;
  wire gr0_bus1__0_25;
  wire gr0_bus1__0_26;
  wire gr0_bus1__0_4;
  wire gr0_bus1__0_42;
  wire gr0_bus1__0_5;
  wire gr1_bus1__0;
  wire gr1_bus1__0_0;
  wire gr1_bus1__0_1;
  wire gr1_bus1__0_30;
  wire gr1_bus1__0_31;
  wire gr1_bus1__0_32;
  wire gr2_bus1__0;
  wire gr2_bus1__0_19;
  wire gr2_bus1__0_2;
  wire gr2_bus1__0_21;
  wire gr2_bus1__0_22;
  wire gr2_bus1__0_23;
  wire gr2_bus1__0_3;
  wire gr3_bus1__0;
  wire gr3_bus1__0_15;
  wire gr3_bus1__0_18;
  wire gr3_bus1__0_39;
  wire gr3_bus1__0_40;
  wire gr3_bus1__0_41;
  wire gr4_bus1__0;
  wire gr4_bus1__0_27;
  wire gr4_bus1__0_28;
  wire gr4_bus1__0_29;
  wire gr4_bus1__0_6;
  wire gr4_bus1__0_7;
  wire gr5_bus1__0;
  wire gr5_bus1__0_10;
  wire gr5_bus1__0_33;
  wire gr5_bus1__0_34;
  wire gr5_bus1__0_35;
  wire gr5_bus1__0_8;
  wire gr5_bus1__0_9;
  wire gr6_bus1__0;
  wire gr6_bus1__0_11;
  wire gr6_bus1__0_12;
  wire gr6_bus1__0_16;
  wire gr6_bus1__0_17;
  wire gr6_bus1__0_20;
  wire gr7_bus1__0;
  wire gr7_bus1__0_13;
  wire gr7_bus1__0_14;
  wire gr7_bus1__0_36;
  wire gr7_bus1__0_37;
  wire gr7_bus1__0_38;
  wire \grn_reg[0] ;
  wire \grn_reg[0]_0 ;
  wire \grn_reg[0]_1 ;
  wire \grn_reg[10] ;
  wire \grn_reg[10]_0 ;
  wire \grn_reg[10]_1 ;
  wire \grn_reg[11] ;
  wire \grn_reg[11]_0 ;
  wire \grn_reg[11]_1 ;
  wire \grn_reg[12] ;
  wire \grn_reg[12]_0 ;
  wire \grn_reg[12]_1 ;
  wire \grn_reg[13] ;
  wire \grn_reg[13]_0 ;
  wire \grn_reg[13]_1 ;
  wire \grn_reg[14] ;
  wire \grn_reg[14]_0 ;
  wire \grn_reg[14]_1 ;
  wire \grn_reg[15] ;
  wire \grn_reg[15]_0 ;
  wire \grn_reg[15]_1 ;
  wire \grn_reg[1] ;
  wire \grn_reg[1]_0 ;
  wire \grn_reg[1]_1 ;
  wire \grn_reg[2] ;
  wire \grn_reg[2]_0 ;
  wire \grn_reg[2]_1 ;
  wire \grn_reg[3] ;
  wire \grn_reg[3]_0 ;
  wire \grn_reg[3]_1 ;
  wire \grn_reg[4] ;
  wire \grn_reg[4]_0 ;
  wire \grn_reg[4]_1 ;
  wire \grn_reg[5] ;
  wire \grn_reg[5]_0 ;
  wire \grn_reg[5]_1 ;
  wire \grn_reg[6] ;
  wire \grn_reg[6]_0 ;
  wire \grn_reg[6]_1 ;
  wire \grn_reg[7] ;
  wire \grn_reg[7]_0 ;
  wire \grn_reg[7]_1 ;
  wire \grn_reg[8] ;
  wire \grn_reg[8]_0 ;
  wire \grn_reg[8]_1 ;
  wire \grn_reg[9] ;
  wire \grn_reg[9]_0 ;
  wire \grn_reg[9]_1 ;
  wire in0;
  (* DONT_TOUCH *) wire [15:0]ir;
  wire [15:0]ir_fl;
  wire irq;
  wire [1:0]irq_lev;
  wire [5:0]irq_vec;
  wire \iv[0]_i_10_n_0 ;
  wire \iv[0]_i_11_n_0 ;
  wire \iv[0]_i_13_n_0 ;
  wire \iv[0]_i_14_n_0 ;
  wire \iv[0]_i_2_0 ;
  wire \iv[0]_i_2_1 ;
  wire \iv[0]_i_2_n_0 ;
  wire \iv[0]_i_4_n_0 ;
  wire \iv[0]_i_5_n_0 ;
  wire \iv[0]_i_7_n_0 ;
  wire \iv[0]_i_8_n_0 ;
  wire \iv[10]_i_10_n_0 ;
  wire \iv[10]_i_11_n_0 ;
  wire \iv[10]_i_12_n_0 ;
  wire \iv[10]_i_13_n_0 ;
  wire \iv[10]_i_16_n_0 ;
  wire \iv[10]_i_2_0 ;
  wire \iv[10]_i_2_1 ;
  wire \iv[10]_i_2_2 ;
  wire \iv[10]_i_2_3 ;
  wire \iv[10]_i_2_n_0 ;
  wire \iv[10]_i_4_n_0 ;
  wire \iv[10]_i_5_0 ;
  wire \iv[10]_i_5_1 ;
  wire \iv[10]_i_5_n_0 ;
  wire \iv[10]_i_6_n_0 ;
  wire \iv[10]_i_7_n_0 ;
  wire \iv[10]_i_8_n_0 ;
  wire \iv[10]_i_9_n_0 ;
  wire \iv[11]_i_10_n_0 ;
  wire \iv[11]_i_11_n_0 ;
  wire \iv[11]_i_12_n_0 ;
  wire \iv[11]_i_20_n_0 ;
  wire \iv[11]_i_2_0 ;
  wire \iv[11]_i_2_1 ;
  wire \iv[11]_i_2_2 ;
  wire \iv[11]_i_2_3 ;
  wire \iv[11]_i_2_4 ;
  wire \iv[11]_i_2_5 ;
  wire \iv[11]_i_2_n_0 ;
  wire \iv[11]_i_4_n_0 ;
  wire \iv[11]_i_5_n_0 ;
  wire \iv[11]_i_6_n_0 ;
  wire \iv[11]_i_7_n_0 ;
  wire \iv[11]_i_8_n_0 ;
  wire \iv[11]_i_9_n_0 ;
  wire \iv[12]_i_10_n_0 ;
  wire \iv[12]_i_11_n_0 ;
  wire \iv[12]_i_12_n_0 ;
  wire \iv[12]_i_13_0 ;
  wire \iv[12]_i_13_n_0 ;
  wire \iv[12]_i_14_n_0 ;
  wire \iv[12]_i_16_n_0 ;
  wire \iv[12]_i_2_0 ;
  wire \iv[12]_i_2_1 ;
  wire \iv[12]_i_2_n_0 ;
  wire \iv[12]_i_4_n_0 ;
  wire \iv[12]_i_5_n_0 ;
  wire \iv[12]_i_6_n_0 ;
  wire \iv[12]_i_7_0 ;
  wire \iv[12]_i_7_n_0 ;
  wire \iv[12]_i_8_n_0 ;
  wire \iv[12]_i_9_n_0 ;
  wire \iv[13]_i_10_n_0 ;
  wire \iv[13]_i_11_n_0 ;
  wire \iv[13]_i_12_n_0 ;
  wire \iv[13]_i_13_n_0 ;
  wire \iv[13]_i_17_n_0 ;
  wire \iv[13]_i_2_0 ;
  wire \iv[13]_i_2_n_0 ;
  wire [0:0]\iv[13]_i_3_0 ;
  wire \iv[13]_i_3_n_0 ;
  wire \iv[13]_i_5_n_0 ;
  wire \iv[13]_i_7_0 ;
  wire \iv[13]_i_7_n_0 ;
  wire \iv[13]_i_9_n_0 ;
  wire \iv[14]_i_10_n_0 ;
  wire \iv[14]_i_11_n_0 ;
  wire \iv[14]_i_12_n_0 ;
  wire \iv[14]_i_13_n_0 ;
  wire \iv[14]_i_17_n_0 ;
  wire \iv[14]_i_18_n_0 ;
  wire \iv[14]_i_19_n_0 ;
  wire \iv[14]_i_24_n_0 ;
  wire \iv[14]_i_25_n_0 ;
  wire \iv[14]_i_29_n_0 ;
  wire \iv[14]_i_2_n_0 ;
  wire \iv[14]_i_30_n_0 ;
  wire \iv[14]_i_34_0 ;
  wire \iv[14]_i_3_0 ;
  wire \iv[14]_i_3_1 ;
  wire \iv[14]_i_3_n_0 ;
  wire \iv[14]_i_4_0 ;
  wire \iv[14]_i_4_1 ;
  wire \iv[14]_i_4_n_0 ;
  wire \iv[14]_i_5_n_0 ;
  wire \iv[14]_i_6_n_0 ;
  wire \iv[14]_i_7_n_0 ;
  wire \iv[14]_i_9_n_0 ;
  wire \iv[15]_i_3_n_0 ;
  wire \iv[1]_i_10_n_0 ;
  wire \iv[1]_i_11_n_0 ;
  wire \iv[1]_i_15_n_0 ;
  wire \iv[1]_i_16_n_0 ;
  wire \iv[1]_i_17_n_0 ;
  wire \iv[1]_i_2_0 ;
  wire \iv[1]_i_2_1 ;
  wire \iv[1]_i_2_2 ;
  wire \iv[1]_i_2_n_0 ;
  wire \iv[1]_i_4_n_0 ;
  wire \iv[1]_i_6_n_0 ;
  wire \iv[1]_i_7_0 ;
  wire \iv[1]_i_7_n_0 ;
  wire \iv[1]_i_8_0 ;
  wire \iv[1]_i_8_n_0 ;
  wire \iv[2]_i_10_n_0 ;
  wire \iv[2]_i_11_n_0 ;
  wire \iv[2]_i_2_0 ;
  wire \iv[2]_i_2_1 ;
  wire \iv[2]_i_2_2 ;
  wire \iv[2]_i_2_n_0 ;
  wire \iv[2]_i_4_n_0 ;
  wire \iv[2]_i_6_n_0 ;
  wire \iv[2]_i_7_n_0 ;
  wire \iv[2]_i_8_n_0 ;
  wire \iv[3]_i_10_n_0 ;
  wire \iv[3]_i_11_n_0 ;
  wire \iv[3]_i_13_n_0 ;
  wire \iv[3]_i_2_0 ;
  wire \iv[3]_i_2_1 ;
  wire \iv[3]_i_2_n_0 ;
  wire \iv[3]_i_4_n_0 ;
  wire \iv[3]_i_6_n_0 ;
  wire \iv[3]_i_7_n_0 ;
  wire \iv[3]_i_8_n_0 ;
  wire \iv[4]_i_10_n_0 ;
  wire \iv[4]_i_11_n_0 ;
  wire \iv[4]_i_15_n_0 ;
  wire \iv[4]_i_2_0 ;
  wire \iv[4]_i_2_1 ;
  wire \iv[4]_i_2_n_0 ;
  wire \iv[4]_i_4_n_0 ;
  wire \iv[4]_i_5_n_0 ;
  wire \iv[4]_i_7_n_0 ;
  wire \iv[4]_i_8_0 ;
  wire \iv[4]_i_8_1 ;
  wire \iv[4]_i_8_n_0 ;
  wire \iv[5]_i_10_n_0 ;
  wire \iv[5]_i_11_n_0 ;
  wire \iv[5]_i_12_n_0 ;
  wire \iv[5]_i_2_0 ;
  wire \iv[5]_i_2_n_0 ;
  wire \iv[5]_i_4_n_0 ;
  wire \iv[5]_i_6_n_0 ;
  wire \iv[5]_i_7_n_0 ;
  wire \iv[6]_i_10_n_0 ;
  wire \iv[6]_i_11_n_0 ;
  wire \iv[6]_i_12_n_0 ;
  wire \iv[6]_i_14_n_0 ;
  wire \iv[6]_i_2_0 ;
  wire \iv[6]_i_2_1 ;
  wire \iv[6]_i_2_n_0 ;
  wire \iv[6]_i_4_n_0 ;
  wire \iv[6]_i_5_n_0 ;
  wire \iv[6]_i_6_n_0 ;
  wire \iv[6]_i_7_n_0 ;
  wire \iv[7]_i_10_n_0 ;
  wire \iv[7]_i_11_n_0 ;
  wire \iv[7]_i_14_n_0 ;
  wire \iv[7]_i_17_n_0 ;
  wire \iv[7]_i_2_0 ;
  wire \iv[7]_i_2_1 ;
  wire \iv[7]_i_2_2 ;
  wire \iv[7]_i_2_3 ;
  wire \iv[7]_i_2_4 ;
  wire \iv[7]_i_2_n_0 ;
  wire \iv[7]_i_4_n_0 ;
  wire \iv[7]_i_5_n_0 ;
  wire \iv[7]_i_6_n_0 ;
  wire \iv[7]_i_7_n_0 ;
  wire \iv[7]_i_8_n_0 ;
  wire \iv[8]_i_10_n_0 ;
  wire \iv[8]_i_11_n_0 ;
  wire \iv[8]_i_12_n_0 ;
  wire \iv[8]_i_15_n_0 ;
  wire \iv[8]_i_16_n_0 ;
  wire \iv[8]_i_2_0 ;
  wire \iv[8]_i_2_1 ;
  wire \iv[8]_i_2_n_0 ;
  wire \iv[8]_i_4_n_0 ;
  wire \iv[8]_i_5_n_0 ;
  wire \iv[8]_i_6_n_0 ;
  wire \iv[8]_i_7_n_0 ;
  wire \iv[8]_i_8_n_0 ;
  wire \iv[8]_i_9_n_0 ;
  wire \iv[9]_i_10_n_0 ;
  wire \iv[9]_i_11_n_0 ;
  wire \iv[9]_i_14_n_0 ;
  wire \iv[9]_i_19_n_0 ;
  wire \iv[9]_i_2_0 ;
  wire \iv[9]_i_2_1 ;
  wire \iv[9]_i_2_2 ;
  wire \iv[9]_i_2_3 ;
  wire \iv[9]_i_2_4 ;
  wire \iv[9]_i_2_n_0 ;
  wire \iv[9]_i_4_n_0 ;
  wire \iv[9]_i_6_n_0 ;
  wire \iv[9]_i_7_n_0 ;
  wire \iv[9]_i_8_n_0 ;
  wire \iv[9]_i_9_n_0 ;
  wire p_0_in;
  wire [15:0]p_1_in;
  wire \pc[15]_i_2_n_0 ;
  wire \pc[15]_i_3_n_0 ;
  wire [15:0]\pc_reg[15] ;
  wire [15:0]\pc_reg[15]_0 ;
  wire [0:0]read_cyc;
  wire [15:0]\read_cyc_reg[1] ;
  wire [4:1]\rgf/abus_sel_cr ;
  wire \rgf/bank02/abuso2l/gr0_bus1__0 ;
  wire \rgf/bank02/abuso2l/gr1_bus1__0 ;
  wire \rgf/bank02/abuso2l/gr6_bus1__0 ;
  wire \rgf/bank02/abuso2l/gr7_bus1__0 ;
  wire \rgf/bank02/bbuso2l/gr1_bus1__0 ;
  wire \rgf/bank02/bbuso2l/gr6_bus1__0 ;
  wire \rgf/bank02/bbuso2l/gr7_bus1__0 ;
  wire [4:1]\rgf/bbus_sel_cr ;
  wire rst_n;
  wire rst_n_0;
  wire rst_n_fl;
  wire rst_n_fl_reg_0;
  wire \sp[0]_i_4_n_0 ;
  wire \sp[0]_i_5_n_0 ;
  wire \sp[0]_i_6_n_0 ;
  wire \sp[15]_i_10_n_0 ;
  wire \sp[15]_i_2_n_0 ;
  wire \sp[15]_i_6_n_0 ;
  wire \sp[15]_i_7_n_0 ;
  wire \sp[15]_i_8_n_0 ;
  wire \sp[15]_i_9_n_0 ;
  wire [14:0]sp_dec_0;
  wire \sp_reg[0] ;
  wire [0:0]\sp_reg[0]_0 ;
  wire \sp_reg[10] ;
  wire \sp_reg[10]_0 ;
  wire \sp_reg[11] ;
  wire \sp_reg[11]_0 ;
  wire \sp_reg[12] ;
  wire \sp_reg[12]_0 ;
  wire \sp_reg[13] ;
  wire \sp_reg[13]_0 ;
  wire \sp_reg[14] ;
  wire \sp_reg[14]_0 ;
  wire \sp_reg[15] ;
  wire [0:0]\sp_reg[15]_0 ;
  wire \sp_reg[15]_1 ;
  wire \sp_reg[1] ;
  wire \sp_reg[1]_0 ;
  wire \sp_reg[2] ;
  wire \sp_reg[2]_0 ;
  wire \sp_reg[3] ;
  wire \sp_reg[3]_0 ;
  wire \sp_reg[4] ;
  wire \sp_reg[4]_0 ;
  wire \sp_reg[5] ;
  wire \sp_reg[5]_0 ;
  wire \sp_reg[6] ;
  wire \sp_reg[6]_0 ;
  wire \sp_reg[7] ;
  wire \sp_reg[7]_0 ;
  wire \sp_reg[8] ;
  wire \sp_reg[8]_0 ;
  wire \sp_reg[9] ;
  wire \sp_reg[9]_0 ;
  wire \sr[12]_i_2_n_0 ;
  wire \sr[13]_i_2_n_0 ;
  wire \sr[13]_i_3_n_0 ;
  wire \sr[13]_i_4_n_0 ;
  wire \sr[13]_i_6_n_0 ;
  wire \sr[13]_i_7_n_0 ;
  wire \sr[15]_i_10_n_0 ;
  wire \sr[15]_i_11_n_0 ;
  wire \sr[15]_i_12_n_0 ;
  wire \sr[15]_i_13_n_0 ;
  wire \sr[15]_i_14_n_0 ;
  wire \sr[15]_i_15_n_0 ;
  wire \sr[15]_i_16_n_0 ;
  wire \sr[15]_i_17_n_0 ;
  wire \sr[15]_i_18_n_0 ;
  wire \sr[15]_i_19_n_0 ;
  wire \sr[15]_i_20_n_0 ;
  wire \sr[15]_i_21_n_0 ;
  wire \sr[15]_i_22_n_0 ;
  wire \sr[15]_i_23_n_0 ;
  wire \sr[15]_i_24_n_0 ;
  wire \sr[15]_i_25_n_0 ;
  wire \sr[15]_i_26_n_0 ;
  wire \sr[15]_i_27_n_0 ;
  wire \sr[15]_i_28_n_0 ;
  wire \sr[15]_i_29_n_0 ;
  wire \sr[15]_i_2_n_0 ;
  wire \sr[15]_i_30_n_0 ;
  wire \sr[15]_i_31_n_0 ;
  wire \sr[15]_i_32_n_0 ;
  wire \sr[15]_i_33_n_0 ;
  wire \sr[15]_i_34_n_0 ;
  wire \sr[15]_i_35_n_0 ;
  wire \sr[15]_i_36_n_0 ;
  wire \sr[15]_i_37_n_0 ;
  wire \sr[15]_i_38_n_0 ;
  wire \sr[15]_i_39_n_0 ;
  wire \sr[15]_i_3_n_0 ;
  wire \sr[15]_i_40_n_0 ;
  wire \sr[15]_i_41_n_0 ;
  wire \sr[15]_i_42_n_0 ;
  wire \sr[15]_i_43_n_0 ;
  wire \sr[15]_i_44_n_0 ;
  wire \sr[15]_i_45_n_0 ;
  wire \sr[15]_i_46_n_0 ;
  wire \sr[15]_i_5_0 ;
  wire \sr[15]_i_6_n_0 ;
  wire \sr[15]_i_7_n_0 ;
  wire \sr[15]_i_8_n_0 ;
  wire \sr[15]_i_9_n_0 ;
  wire \sr[2]_i_2_n_0 ;
  wire \sr[3]_i_2_n_0 ;
  wire \sr[4]_i_10_0 ;
  wire \sr[4]_i_10_1 ;
  wire \sr[4]_i_10_n_0 ;
  wire \sr[4]_i_11_n_0 ;
  wire \sr[4]_i_12_n_0 ;
  wire \sr[4]_i_13_n_0 ;
  wire \sr[4]_i_14_n_0 ;
  wire \sr[4]_i_2_0 ;
  wire \sr[4]_i_2_n_0 ;
  wire \sr[4]_i_3_n_0 ;
  wire \sr[4]_i_4_0 ;
  wire \sr[4]_i_4_n_0 ;
  wire \sr[4]_i_5_n_0 ;
  wire \sr[4]_i_6_n_0 ;
  wire \sr[4]_i_7_n_0 ;
  wire \sr[4]_i_8_n_0 ;
  wire \sr[4]_i_9_n_0 ;
  wire \sr[5]_i_3_0 ;
  wire \sr[5]_i_3_n_0 ;
  wire \sr[5]_i_4_n_0 ;
  wire \sr[6]_i_3_0 ;
  wire \sr[6]_i_3_1 ;
  wire \sr[6]_i_3_2 ;
  wire \sr[6]_i_3_3 ;
  wire \sr[6]_i_3_4 ;
  wire \sr[6]_i_3_n_0 ;
  wire \sr[6]_i_4_n_0 ;
  wire \sr[6]_i_6_n_0 ;
  wire \sr[6]_i_7_n_0 ;
  wire \sr[7]_i_10_n_0 ;
  wire \sr[7]_i_11 ;
  wire \sr[7]_i_12_n_0 ;
  wire \sr[7]_i_14_n_0 ;
  wire \sr[7]_i_15_n_0 ;
  wire \sr[7]_i_17_n_0 ;
  wire \sr[7]_i_20_n_0 ;
  wire \sr[7]_i_4_n_0 ;
  wire \sr[7]_i_5_n_0 ;
  wire \sr[7]_i_6_n_0 ;
  wire \sr[7]_i_7_n_0 ;
  wire \sr[7]_i_8_n_0 ;
  wire \sr[7]_i_9_0 ;
  wire \sr[7]_i_9_n_0 ;
  wire \sr_reg[0] ;
  wire \sr_reg[0]_0 ;
  wire [0:0]\sr_reg[0]_1 ;
  wire [0:0]\sr_reg[0]_2 ;
  wire [0:0]\sr_reg[0]_3 ;
  wire [0:0]\sr_reg[0]_4 ;
  wire [0:0]\sr_reg[0]_5 ;
  wire [0:0]\sr_reg[0]_6 ;
  wire [0:0]\sr_reg[0]_7 ;
  wire \sr_reg[0]_8 ;
  wire [0:0]\sr_reg[0]_9 ;
  wire \sr_reg[10] ;
  wire \sr_reg[10]_0 ;
  wire \sr_reg[11] ;
  wire \sr_reg[11]_0 ;
  wire \sr_reg[12] ;
  wire [1:0]\sr_reg[13] ;
  wire \sr_reg[13]_0 ;
  wire \sr_reg[14] ;
  wire \sr_reg[15] ;
  wire \sr_reg[1] ;
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
  wire \sr_reg[1]_20 ;
  wire \sr_reg[1]_21 ;
  wire \sr_reg[1]_22 ;
  wire \sr_reg[1]_23 ;
  wire \sr_reg[1]_24 ;
  wire \sr_reg[1]_25 ;
  wire [0:0]\sr_reg[1]_26 ;
  wire [0:0]\sr_reg[1]_27 ;
  wire [0:0]\sr_reg[1]_28 ;
  wire [0:0]\sr_reg[1]_3 ;
  wire [0:0]\sr_reg[1]_4 ;
  wire [0:0]\sr_reg[1]_5 ;
  wire [0:0]\sr_reg[1]_6 ;
  wire [0:0]\sr_reg[1]_7 ;
  wire [0:0]\sr_reg[1]_8 ;
  wire [0:0]\sr_reg[1]_9 ;
  wire \sr_reg[2] ;
  wire \sr_reg[2]_0 ;
  wire \sr_reg[3] ;
  wire \sr_reg[3]_0 ;
  wire \sr_reg[3]_1 ;
  wire \sr_reg[4] ;
  wire \sr_reg[4]_0 ;
  wire \sr_reg[4]_1 ;
  wire \sr_reg[5] ;
  wire \sr_reg[5]_0 ;
  wire \sr_reg[6] ;
  wire \sr_reg[6]_0 ;
  wire [0:0]\sr_reg[6]_1 ;
  wire \sr_reg[7] ;
  wire \sr_reg[7]_0 ;
  wire [3:0]\sr_reg[7]_1 ;
  wire \sr_reg[8] ;
  wire \sr_reg[9] ;
  wire \stat[0]_i_10_n_0 ;
  wire \stat[0]_i_11_n_0 ;
  wire \stat[0]_i_12_n_0 ;
  wire \stat[0]_i_13_n_0 ;
  wire \stat[0]_i_14_n_0 ;
  wire \stat[0]_i_15_n_0 ;
  wire \stat[0]_i_17_n_0 ;
  wire \stat[0]_i_18_n_0 ;
  wire \stat[0]_i_19_n_0 ;
  wire \stat[0]_i_20_n_0 ;
  wire \stat[0]_i_21_n_0 ;
  wire \stat[0]_i_22_n_0 ;
  wire \stat[0]_i_23_n_0 ;
  wire \stat[0]_i_24_n_0 ;
  wire \stat[0]_i_25_n_0 ;
  wire \stat[0]_i_26_n_0 ;
  wire \stat[0]_i_27_n_0 ;
  wire \stat[0]_i_28_n_0 ;
  wire \stat[0]_i_29_n_0 ;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_30_n_0 ;
  wire \stat[0]_i_31_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_4_n_0 ;
  wire \stat[0]_i_5_n_0 ;
  wire \stat[0]_i_6_n_0 ;
  wire \stat[0]_i_7_n_0 ;
  wire \stat[0]_i_8_n_0 ;
  wire \stat[0]_i_9_n_0 ;
  wire \stat[1]_i_10_n_0 ;
  wire \stat[1]_i_11_n_0 ;
  wire \stat[1]_i_12_0 ;
  wire \stat[1]_i_12_n_0 ;
  wire \stat[1]_i_13_n_0 ;
  wire \stat[1]_i_15_n_0 ;
  wire \stat[1]_i_16_n_0 ;
  wire \stat[1]_i_17_n_0 ;
  wire \stat[1]_i_18_n_0 ;
  wire \stat[1]_i_19_n_0 ;
  wire \stat[1]_i_20_n_0 ;
  wire \stat[1]_i_21_n_0 ;
  wire \stat[1]_i_22_n_0 ;
  wire \stat[1]_i_23_n_0 ;
  wire \stat[1]_i_24_n_0 ;
  wire \stat[1]_i_25_n_0 ;
  wire \stat[1]_i_27_n_0 ;
  wire \stat[1]_i_2_0 ;
  wire \stat[1]_i_2_1 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_4_n_0 ;
  wire \stat[1]_i_5_n_0 ;
  wire \stat[1]_i_6_n_0 ;
  wire \stat[1]_i_7_n_0 ;
  wire \stat[1]_i_8_n_0 ;
  wire \stat[1]_i_9_n_0 ;
  wire \stat[2]_i_10_n_0 ;
  wire \stat[2]_i_11_n_0 ;
  wire \stat[2]_i_13_n_0 ;
  wire \stat[2]_i_14_n_0 ;
  wire \stat[2]_i_16_n_0 ;
  wire \stat[2]_i_17_n_0 ;
  wire \stat[2]_i_3_n_0 ;
  wire \stat[2]_i_5_n_0 ;
  wire \stat[2]_i_6_n_0 ;
  wire \stat[2]_i_7_n_0 ;
  wire \stat[2]_i_8_n_0 ;
  wire \stat[2]_i_9_n_0 ;
  wire \stat_reg[0] ;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[0]_2 ;
  wire \stat_reg[0]_3 ;
  wire \stat_reg[2] ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_2 ;
  wire \stat_reg[2]_3 ;
  wire [2:0]\stat_reg[2]_4 ;
  wire \stat_reg[2]_5 ;
  wire \stat_reg[2]_6 ;
  wire \stat_reg[2]_7 ;
  wire [3:0]tout__1_carry__0_i_1_0;
  wire [3:0]tout__1_carry__1_i_1_0;
  wire tout__1_carry_i_10_0;
  wire tout__1_carry_i_11_n_0;
  wire tout__1_carry_i_12_n_0;
  wire tout__1_carry_i_13_n_0;
  wire tout__1_carry_i_8_n_0;
  wire \tr[15]_i_10_n_0 ;
  wire \tr[15]_i_11_n_0 ;
  wire \tr[15]_i_12_n_0 ;
  wire \tr[15]_i_13_n_0 ;
  wire \tr[15]_i_14_n_0 ;
  wire \tr[15]_i_16_n_0 ;
  wire \tr[15]_i_17_n_0 ;
  wire \tr[15]_i_18_n_0 ;
  wire \tr[15]_i_19_n_0 ;
  wire \tr[15]_i_20_n_0 ;
  wire \tr[15]_i_21_n_0 ;
  wire \tr[15]_i_22_n_0 ;
  wire \tr[15]_i_24_n_0 ;
  wire \tr[15]_i_25_n_0 ;
  wire \tr[15]_i_26_n_0 ;
  wire \tr[15]_i_27_n_0 ;
  wire \tr[15]_i_28_n_0 ;
  wire \tr[15]_i_29_0 ;
  wire \tr[15]_i_29_n_0 ;
  wire \tr[15]_i_31_0 ;
  wire \tr[15]_i_31_n_0 ;
  wire \tr[15]_i_32_n_0 ;
  wire \tr[15]_i_33_n_0 ;
  wire \tr[15]_i_34_n_0 ;
  wire \tr[15]_i_35_n_0 ;
  wire \tr[15]_i_36_n_0 ;
  wire \tr[15]_i_37_n_0 ;
  wire \tr[15]_i_38_n_0 ;
  wire \tr[15]_i_39_n_0 ;
  wire \tr[15]_i_3_0 ;
  wire \tr[15]_i_40_n_0 ;
  wire \tr[15]_i_42_n_0 ;
  wire \tr[15]_i_43_n_0 ;
  wire \tr[15]_i_45_n_0 ;
  wire \tr[15]_i_46_n_0 ;
  wire \tr[15]_i_47_n_0 ;
  wire \tr[15]_i_48_n_0 ;
  wire \tr[15]_i_49_n_0 ;
  wire \tr[15]_i_50_n_0 ;
  wire \tr[15]_i_51_n_0 ;
  wire \tr[15]_i_52_n_0 ;
  wire \tr[15]_i_53_n_0 ;
  wire \tr[15]_i_54_n_0 ;
  wire \tr[15]_i_55_n_0 ;
  wire \tr[15]_i_56_n_0 ;
  wire \tr[15]_i_57_n_0 ;
  wire \tr[15]_i_58_n_0 ;
  wire \tr[15]_i_59_n_0 ;
  wire \tr[15]_i_5_n_0 ;
  wire \tr[15]_i_60_n_0 ;
  wire \tr[15]_i_61_n_0 ;
  wire \tr[15]_i_62_n_0 ;
  wire \tr[15]_i_63_n_0 ;
  wire \tr[15]_i_64_n_0 ;
  wire \tr[15]_i_65_n_0 ;
  wire \tr[15]_i_66_n_0 ;
  wire \tr[15]_i_67_n_0 ;
  wire \tr[15]_i_68_n_0 ;
  wire \tr[15]_i_69_n_0 ;
  wire \tr[15]_i_6_n_0 ;
  wire \tr[15]_i_70_n_0 ;
  wire \tr[15]_i_71_n_0 ;
  wire \tr[15]_i_7_n_0 ;
  wire \tr[15]_i_8_n_0 ;
  wire \tr[15]_i_9_0 ;
  wire \tr[15]_i_9_n_0 ;
  wire \tr_reg[0] ;
  wire \tr_reg[0]_0 ;
  wire \tr_reg[0]_1 ;
  wire \tr_reg[10] ;
  wire \tr_reg[10]_0 ;
  wire \tr_reg[11] ;
  wire [3:0]\tr_reg[11]_0 ;
  wire \tr_reg[11]_1 ;
  wire \tr_reg[12] ;
  wire \tr_reg[12]_0 ;
  wire \tr_reg[13] ;
  wire \tr_reg[13]_0 ;
  wire \tr_reg[13]_1 ;
  wire \tr_reg[13]_2 ;
  wire \tr_reg[14] ;
  wire \tr_reg[14]_0 ;
  wire \tr_reg[14]_1 ;
  wire \tr_reg[15] ;
  wire \tr_reg[15]_i_15_n_0 ;
  wire \tr_reg[15]_i_30_n_0 ;
  wire \tr_reg[15]_i_44_n_0 ;
  wire \tr_reg[1] ;
  wire \tr_reg[1]_0 ;
  wire \tr_reg[1]_1 ;
  wire \tr_reg[2] ;
  wire \tr_reg[2]_0 ;
  wire \tr_reg[2]_1 ;
  wire \tr_reg[3] ;
  wire \tr_reg[3]_0 ;
  wire \tr_reg[3]_1 ;
  wire \tr_reg[4] ;
  wire \tr_reg[4]_0 ;
  wire \tr_reg[4]_1 ;
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
  wire \tr_reg[8] ;
  wire \tr_reg[8]_0 ;
  wire \tr_reg[9] ;
  wire \tr_reg[9]_0 ;
  wire \tr_reg[9]_1 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[0]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[2]_1 ),
        .I2(ctl_extadr),
        .I3(abus_0[0]),
        .O(badr[0]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \badr[0]_INST_0_i_13 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[0]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [0]),
        .O(\grn_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[0]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [0]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [0]),
        .I4(\bdatw[15]_INST_0_i_55_2 [0]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[0] ));
  LUT4 #(
    .INIT(16'h2000)) 
    \badr[0]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_30_n_0 ),
        .I3(\badr[15]_INST_0_i_1_3 [0]),
        .O(\sp_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[0]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\badrx[15] [0]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [0]),
        .I4(\pc_reg[15]_0 [0]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[0] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[10]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[2]_1 ),
        .I2(ctl_extadr),
        .I3(abus_0[10]),
        .O(badr[10]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \badr[10]_INST_0_i_13 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_2 [10]),
        .O(\sr_reg[10] ));
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
        .I1(\bdatw[15]_INST_0_i_55_0 [10]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [10]),
        .I4(\bdatw[15]_INST_0_i_55_2 [10]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[10] ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[10]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[9]),
        .I5(\badr[15]_INST_0_i_1_3 [10]),
        .O(\sp_reg[10] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[10]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\badrx[15] [10]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [10]),
        .I4(\pc_reg[15]_0 [10]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[10] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[11]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[2]_1 ),
        .I2(ctl_extadr),
        .I3(abus_0[11]),
        .O(badr[11]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \badr[11]_INST_0_i_13 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_2 [11]),
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
        .I1(\bdatw[15]_INST_0_i_55_0 [11]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [11]),
        .I4(\bdatw[15]_INST_0_i_55_2 [11]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[11] ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[11]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[10]),
        .I5(\badr[15]_INST_0_i_1_3 [11]),
        .O(\sp_reg[11] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[11]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\badrx[15] [11]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [11]),
        .I4(\pc_reg[15]_0 [11]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[11] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[12]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[2]_1 ),
        .I2(ctl_extadr),
        .I3(abus_0[12]),
        .O(badr[12]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \badr[12]_INST_0_i_13 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_2 [12]),
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
        .I1(\bdatw[15]_INST_0_i_55_0 [12]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [12]),
        .I4(\bdatw[15]_INST_0_i_55_2 [12]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[12] ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[12]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[11]),
        .I5(\badr[15]_INST_0_i_1_3 [12]),
        .O(\sp_reg[12] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[12]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\badrx[15] [12]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [12]),
        .I4(\pc_reg[15]_0 [12]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[12] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[13]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[2]_1 ),
        .I2(ctl_extadr),
        .I3(abus_0[13]),
        .O(badr[13]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \badr[13]_INST_0_i_13 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_2 [13]),
        .O(\sr_reg[13]_0 ));
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
        .I1(\bdatw[15]_INST_0_i_55_0 [13]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [13]),
        .I4(\bdatw[15]_INST_0_i_55_2 [13]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[13] ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[13]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[12]),
        .I5(\badr[15]_INST_0_i_1_3 [13]),
        .O(\sp_reg[13] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[13]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\badrx[15] [13]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [13]),
        .I4(\pc_reg[15]_0 [13]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[13] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[14]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[2]_1 ),
        .I2(ctl_extadr),
        .I3(abus_0[14]),
        .O(badr[14]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \badr[14]_INST_0_i_13 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_2 [14]),
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
        .I1(\bdatw[15]_INST_0_i_55_0 [14]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [14]),
        .I4(\bdatw[15]_INST_0_i_55_2 [14]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[14] ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[14]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[13]),
        .I5(\badr[15]_INST_0_i_1_3 [14]),
        .O(\sp_reg[14] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[14]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\badrx[15] [14]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [14]),
        .I4(\pc_reg[15]_0 [14]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[14] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[15]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[2]_1 ),
        .I2(ctl_extadr),
        .I3(abus_0[15]),
        .O(badr[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_101 
       (.I0(ir[14]),
        .I1(ir[13]),
        .O(\badr[15]_INST_0_i_101_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_102 
       (.I0(ir[10]),
        .I1(ir[8]),
        .O(\badr[15]_INST_0_i_102_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \badr[15]_INST_0_i_103 
       (.I0(ir[9]),
        .I1(ir[5]),
        .I2(ir[0]),
        .I3(\bcmd[0]_INST_0_i_15_n_0 ),
        .I4(\tr[15]_i_31_0 ),
        .I5(\ccmd[2]_INST_0_i_17_n_0 ),
        .O(\badr[15]_INST_0_i_103_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \badr[15]_INST_0_i_104 
       (.I0(\badr[15]_INST_0_i_149_n_0 ),
        .I1(ir[6]),
        .I2(ir[9]),
        .I3(ir[1]),
        .I4(Q[1]),
        .I5(ir[0]),
        .O(\badr[15]_INST_0_i_104_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF31FF)) 
    \badr[15]_INST_0_i_105 
       (.I0(\stat_reg[0]_3 ),
        .I1(ir[13]),
        .I2(Q[0]),
        .I3(ir[12]),
        .I4(Q[1]),
        .I5(ir[15]),
        .O(\badr[15]_INST_0_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \badr[15]_INST_0_i_106 
       (.I0(ir[11]),
        .I1(Q[0]),
        .I2(ir[10]),
        .I3(ir[6]),
        .I4(ir[7]),
        .I5(\badr[15]_INST_0_i_150_n_0 ),
        .O(\badr[15]_INST_0_i_106_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \badr[15]_INST_0_i_107 
       (.I0(ir[11]),
        .I1(ir[7]),
        .O(\badr[15]_INST_0_i_107_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FFFFCFFAFFFF)) 
    \badr[15]_INST_0_i_108 
       (.I0(ir[6]),
        .I1(\badr[15]_INST_0_i_151_n_0 ),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(ir[10]),
        .I5(Q[0]),
        .O(\badr[15]_INST_0_i_108_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \badr[15]_INST_0_i_109 
       (.I0(ir[15]),
        .I1(Q[0]),
        .I2(ir[12]),
        .I3(ir[14]),
        .I4(ir[13]),
        .O(\badr[15]_INST_0_i_109_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \badr[15]_INST_0_i_110 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[6]),
        .I3(ir[2]),
        .O(\badr[15]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \badr[15]_INST_0_i_111 
       (.I0(\stat[2]_i_5_n_0 ),
        .I1(ir[2]),
        .I2(ir[3]),
        .I3(\ccmd[4]_INST_0_i_6_n_0 ),
        .I4(\badr[15]_INST_0_i_152_n_0 ),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_111_n_0 ));
  LUT5 #(
    .INIT(32'hFF55470F)) 
    \badr[15]_INST_0_i_112 
       (.I0(ir[2]),
        .I1(ir[6]),
        .I2(ir[5]),
        .I3(ir[9]),
        .I4(ir[8]),
        .O(\badr[15]_INST_0_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h555500005D550000)) 
    \badr[15]_INST_0_i_113 
       (.I0(\badr[15]_INST_0_i_153_n_0 ),
        .I1(crdy),
        .I2(ir[9]),
        .I3(ir[5]),
        .I4(ir[10]),
        .I5(ir[8]),
        .O(\badr[15]_INST_0_i_113_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAFFFF8AAA0000)) 
    \badr[15]_INST_0_i_114 
       (.I0(\badr[15]_INST_0_i_154_n_0 ),
        .I1(\badr[15]_INST_0_i_155_n_0 ),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[10]),
        .I5(\badr[15]_INST_0_i_156_n_0 ),
        .O(\badr[15]_INST_0_i_114_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44454444)) 
    \badr[15]_INST_0_i_115 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(\badr[15]_INST_0_i_157_n_0 ),
        .I2(ir[6]),
        .I3(\badr[15]_INST_0_i_158_n_0 ),
        .I4(\badr[15]_INST_0_i_159_n_0 ),
        .I5(\badr[15]_INST_0_i_160_n_0 ),
        .O(\badr[15]_INST_0_i_115_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_116 
       (.I0(ir[12]),
        .I1(ir[11]),
        .O(\badr[15]_INST_0_i_116_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \badr[15]_INST_0_i_117 
       (.I0(ir[2]),
        .I1(\badr[15]_INST_0_i_127_n_0 ),
        .I2(\fch_irq_lev[1]_i_3_n_0 ),
        .I3(\badr[15]_INST_0_i_161_n_0 ),
        .I4(\tr[15]_i_52_n_0 ),
        .I5(\bcmd[0]_INST_0_i_15_n_0 ),
        .O(\badr[15]_INST_0_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h0055555500000040)) 
    \badr[15]_INST_0_i_118 
       (.I0(Q[0]),
        .I1(ir[11]),
        .I2(\badr[15]_INST_0_i_2 [5]),
        .I3(ir[13]),
        .I4(ir[12]),
        .I5(ir[15]),
        .O(\badr[15]_INST_0_i_118_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF1F101F)) 
    \badr[15]_INST_0_i_120 
       (.I0(crdy),
        .I1(Q[0]),
        .I2(ir[2]),
        .I3(ir[1]),
        .I4(ir[3]),
        .I5(\badr[15]_INST_0_i_162_n_0 ),
        .O(\badr[15]_INST_0_i_120_n_0 ));
  LUT5 #(
    .INIT(32'h33223320)) 
    \badr[15]_INST_0_i_121 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(Q[0]),
        .I3(ir[3]),
        .I4(ir[2]),
        .O(\badr[15]_INST_0_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h002AAAAA0A2AAAAA)) 
    \badr[15]_INST_0_i_123 
       (.I0(\badr[15]_INST_0_i_163_n_0 ),
        .I1(\stat[0]_i_21_n_0 ),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(\badr[15]_INST_0_i_164_n_0 ),
        .I4(ir[8]),
        .I5(crdy),
        .O(\badr[15]_INST_0_i_123_n_0 ));
  LUT5 #(
    .INIT(32'h00040404)) 
    \badr[15]_INST_0_i_124 
       (.I0(\badrx[15]_INST_0_i_3_n_0 ),
        .I1(crdy),
        .I2(Q[0]),
        .I3(ir[9]),
        .I4(ir[8]),
        .O(\badr[15]_INST_0_i_124_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_126 
       (.I0(ir[13]),
        .I1(ir[15]),
        .O(\badr[15]_INST_0_i_126_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \badr[15]_INST_0_i_127 
       (.I0(ir[11]),
        .I1(ir[8]),
        .I2(ir[10]),
        .O(\badr[15]_INST_0_i_127_n_0 ));
  LUT6 #(
    .INIT(64'h0F3FFFFF7F7F7F7F)) 
    \badr[15]_INST_0_i_128 
       (.I0(ir[1]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(ir[4]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_128_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F1F5FFFFFDF5)) 
    \badr[15]_INST_0_i_129 
       (.I0(ir[4]),
        .I1(ir[6]),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[1]),
        .O(\badr[15]_INST_0_i_129_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \badr[15]_INST_0_i_13 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_2 [15]),
        .O(\sr_reg[15] ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_130 
       (.I0(ir[4]),
        .I1(ir[8]),
        .O(\badr[15]_INST_0_i_130_n_0 ));
  LUT6 #(
    .INIT(64'h0000CFCC55555555)) 
    \badr[15]_INST_0_i_131 
       (.I0(\badr[15]_INST_0_i_165_n_0 ),
        .I1(\stat[1]_i_22_n_0 ),
        .I2(\bdatw[15]_INST_0_i_127_n_0 ),
        .I3(ir[4]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\badr[15]_INST_0_i_131_n_0 ));
  LUT6 #(
    .INIT(64'h0D07DFFFFFF1FFF5)) 
    \badr[15]_INST_0_i_132 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(ir[5]),
        .I3(ir[4]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_132_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEFFF)) 
    \badr[15]_INST_0_i_133 
       (.I0(\ccmd[4]_INST_0_i_22_n_0 ),
        .I1(\bdatw[15]_INST_0_i_93_n_0 ),
        .I2(ir[0]),
        .I3(fch_irq_req),
        .I4(ir[1]),
        .I5(\badr[15]_INST_0_i_166_n_0 ),
        .O(\badr[15]_INST_0_i_133_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \badr[15]_INST_0_i_134 
       (.I0(\badr[15]_INST_0_i_167_n_0 ),
        .I1(\ccmd[4]_INST_0_i_6_n_0 ),
        .I2(\bcmd[0]_INST_0_i_10_n_0 ),
        .I3(\ccmd[4]_INST_0_i_20_n_0 ),
        .I4(ir[4]),
        .I5(\badr[15]_INST_0_i_168_n_0 ),
        .O(\badr[15]_INST_0_i_134_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \badr[15]_INST_0_i_135 
       (.I0(ir[14]),
        .I1(ir[12]),
        .I2(ir[11]),
        .I3(ir[13]),
        .I4(\bdatw[15]_INST_0_i_71_n_0 ),
        .I5(ir[10]),
        .O(\badr[15]_INST_0_i_135_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFFFFBBFBFBFF)) 
    \badr[15]_INST_0_i_136 
       (.I0(ir[15]),
        .I1(Q[0]),
        .I2(ir[3]),
        .I3(ir[2]),
        .I4(ir[0]),
        .I5(ir[1]),
        .O(\badr[15]_INST_0_i_136_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \badr[15]_INST_0_i_137 
       (.I0(ir[13]),
        .I1(ir[14]),
        .I2(ir[11]),
        .I3(ir[12]),
        .O(\badr[15]_INST_0_i_137_n_0 ));
  LUT6 #(
    .INIT(64'hAF00AE0C00000000)) 
    \badr[15]_INST_0_i_138 
       (.I0(\ccmd[1]_INST_0_i_14_n_0 ),
        .I1(ir[0]),
        .I2(\bcmd[2]_INST_0_i_2_n_0 ),
        .I3(ir[3]),
        .I4(ir[6]),
        .I5(\badr[15]_INST_0_i_169_n_0 ),
        .O(\badr[15]_INST_0_i_138_n_0 ));
  LUT5 #(
    .INIT(32'h03020002)) 
    \badr[15]_INST_0_i_139 
       (.I0(ir[3]),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[0]),
        .O(\badr[15]_INST_0_i_139_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFBFBFBFFFFFF)) 
    \badr[15]_INST_0_i_140 
       (.I0(\badrx[15]_INST_0_i_3_n_0 ),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[0]),
        .I4(ir[6]),
        .I5(ir[3]),
        .O(\badr[15]_INST_0_i_140_n_0 ));
  LUT6 #(
    .INIT(64'hFB000000FFFFFFFF)) 
    \badr[15]_INST_0_i_141 
       (.I0(ir[9]),
        .I1(ir[3]),
        .I2(\badr[15]_INST_0_i_170_n_0 ),
        .I3(ir[10]),
        .I4(\badr[15]_INST_0_i_171_n_0 ),
        .I5(crdy),
        .O(\badr[15]_INST_0_i_141_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[15]_INST_0_i_142 
       (.I0(\bdatw[15]_INST_0_i_45_n_0 ),
        .I1(ir[14]),
        .I2(\badr[15]_INST_0_i_94_0 ),
        .O(\badr[15]_INST_0_i_142_n_0 ));
  LUT6 #(
    .INIT(64'h0202022222220222)) 
    \badr[15]_INST_0_i_143 
       (.I0(\badr[15]_INST_0_i_171_n_0 ),
        .I1(\badr[15]_INST_0_i_172_n_0 ),
        .I2(\bdatw[15]_INST_0_i_94_n_0 ),
        .I3(ir[0]),
        .I4(\sp[15]_i_7_n_0 ),
        .I5(ir[3]),
        .O(\badr[15]_INST_0_i_143_n_0 ));
  LUT6 #(
    .INIT(64'hAA00000020000000)) 
    \badr[15]_INST_0_i_144 
       (.I0(\badr[15]_INST_0_i_173_n_0 ),
        .I1(\badr[15]_INST_0_i_174_n_0 ),
        .I2(ir[0]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[7]),
        .O(\badr[15]_INST_0_i_144_n_0 ));
  LUT6 #(
    .INIT(64'h0F000D0000000D00)) 
    \badr[15]_INST_0_i_145 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[9]),
        .I3(ir[3]),
        .I4(ir[8]),
        .I5(crdy),
        .O(\badr[15]_INST_0_i_145_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF9FFFFFFF)) 
    \badr[15]_INST_0_i_146 
       (.I0(ir[10]),
        .I1(ir[11]),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(ir[0]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_146_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFF)) 
    \badr[15]_INST_0_i_147 
       (.I0(\badr[15]_INST_0_i_152_n_0 ),
        .I1(\bcmd[0]_INST_0_i_10_n_0 ),
        .I2(\ccmd[4]_INST_0_i_6_n_0 ),
        .I3(ir[0]),
        .I4(ir[3]),
        .I5(ir[4]),
        .O(\badr[15]_INST_0_i_147_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \badr[15]_INST_0_i_149 
       (.I0(ir[5]),
        .I1(ir[7]),
        .I2(ir[4]),
        .I3(ir[3]),
        .O(\badr[15]_INST_0_i_149_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_150 
       (.I0(ir[8]),
        .I1(ir[9]),
        .O(\badr[15]_INST_0_i_150_n_0 ));
  LUT4 #(
    .INIT(16'h6623)) 
    \badr[15]_INST_0_i_151 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[3]),
        .I3(ir[4]),
        .O(\badr[15]_INST_0_i_151_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_152 
       (.I0(ir[10]),
        .I1(ir[9]),
        .O(\badr[15]_INST_0_i_152_n_0 ));
  LUT6 #(
    .INIT(64'h1F1FFFFF3FFF3FFF)) 
    \badr[15]_INST_0_i_153 
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[2]),
        .I4(ir[5]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_153_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF2FFFFFFF2FF)) 
    \badr[15]_INST_0_i_154 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[9]),
        .I3(ir[5]),
        .I4(ir[8]),
        .I5(crdy),
        .O(\badr[15]_INST_0_i_154_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD7FDDFFFFFF5)) 
    \badr[15]_INST_0_i_155 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(ir[4]),
        .I3(ir[6]),
        .I4(ir[5]),
        .I5(ir[7]),
        .O(\badr[15]_INST_0_i_155_n_0 ));
  LUT6 #(
    .INIT(64'h0108040CEF7FBF3F)) 
    \badr[15]_INST_0_i_156 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[2]),
        .I3(ir[6]),
        .I4(ir[7]),
        .I5(ir[5]),
        .O(\badr[15]_INST_0_i_156_n_0 ));
  LUT6 #(
    .INIT(64'h4040040004400000)) 
    \badr[15]_INST_0_i_157 
       (.I0(Q[0]),
        .I1(ir[6]),
        .I2(ir[3]),
        .I3(ir[4]),
        .I4(ir[7]),
        .I5(ir[5]),
        .O(\badr[15]_INST_0_i_157_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888880888)) 
    \badr[15]_INST_0_i_158 
       (.I0(ir[10]),
        .I1(Q[0]),
        .I2(ir[7]),
        .I3(ir[3]),
        .I4(ir[4]),
        .I5(ir[5]),
        .O(\badr[15]_INST_0_i_158_n_0 ));
  LUT6 #(
    .INIT(64'hDFFDDDDFDFFFDDDF)) 
    \badr[15]_INST_0_i_159 
       (.I0(ir[10]),
        .I1(Q[0]),
        .I2(ir[4]),
        .I3(ir[5]),
        .I4(ir[7]),
        .I5(ir[3]),
        .O(\badr[15]_INST_0_i_159_n_0 ));
  LUT6 #(
    .INIT(64'h0022757700007577)) 
    \badr[15]_INST_0_i_160 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(crdy),
        .I3(ir[8]),
        .I4(Q[0]),
        .I5(ir[7]),
        .O(\badr[15]_INST_0_i_160_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \badr[15]_INST_0_i_161 
       (.I0(ir[0]),
        .I1(Q[1]),
        .I2(ir[1]),
        .I3(ir[9]),
        .I4(ir[6]),
        .O(\badr[15]_INST_0_i_161_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \badr[15]_INST_0_i_162 
       (.I0(ir[14]),
        .I1(ir[12]),
        .O(\badr[15]_INST_0_i_162_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \badr[15]_INST_0_i_163 
       (.I0(crdy),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(Q[0]),
        .O(\badr[15]_INST_0_i_163_n_0 ));
  LUT4 #(
    .INIT(16'h5444)) 
    \badr[15]_INST_0_i_164 
       (.I0(Q[0]),
        .I1(ir[9]),
        .I2(ir[7]),
        .I3(ir[6]),
        .O(\badr[15]_INST_0_i_164_n_0 ));
  LUT6 #(
    .INIT(64'h0E0B07031F4F8FCF)) 
    \badr[15]_INST_0_i_165 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[4]),
        .I3(ir[7]),
        .I4(ir[6]),
        .I5(ir[1]),
        .O(\badr[15]_INST_0_i_165_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \badr[15]_INST_0_i_166 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[3]),
        .I3(ir[2]),
        .I4(ir[5]),
        .O(\badr[15]_INST_0_i_166_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFDFFFFFFF)) 
    \badr[15]_INST_0_i_167 
       (.I0(ir[9]),
        .I1(ir[6]),
        .I2(ir[1]),
        .I3(ir[8]),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_167_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[15]_INST_0_i_168 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[11]),
        .O(\badr[15]_INST_0_i_168_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_169 
       (.I0(ir[10]),
        .I1(crdy),
        .O(\badr[15]_INST_0_i_169_n_0 ));
  LUT3 #(
    .INIT(8'h70)) 
    \badr[15]_INST_0_i_170 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[8]),
        .O(\badr[15]_INST_0_i_170_n_0 ));
  LUT5 #(
    .INIT(32'h3FFF7F7F)) 
    \badr[15]_INST_0_i_171 
       (.I0(ir[0]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[3]),
        .I4(ir[6]),
        .O(\badr[15]_INST_0_i_171_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F00E020)) 
    \badr[15]_INST_0_i_172 
       (.I0(ir[0]),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[3]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\badr[15]_INST_0_i_172_n_0 ));
  LUT6 #(
    .INIT(64'h5555755575555755)) 
    \badr[15]_INST_0_i_173 
       (.I0(ir[7]),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(ir[0]),
        .I4(ir[3]),
        .I5(ir[4]),
        .O(\badr[15]_INST_0_i_173_n_0 ));
  LUT4 #(
    .INIT(16'hBFFC)) 
    \badr[15]_INST_0_i_174 
       (.I0(ir[3]),
        .I1(ir[6]),
        .I2(ir[5]),
        .I3(ir[4]),
        .O(\badr[15]_INST_0_i_174_n_0 ));
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
        .I1(\bdatw[15]_INST_0_i_55_0 [15]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [15]),
        .I4(\bdatw[15]_INST_0_i_55_2 [15]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[15] ));
  LUT6 #(
    .INIT(64'h5545444455555555)) 
    \badr[15]_INST_0_i_27 
       (.I0(Q[2]),
        .I1(\badr[15]_INST_0_i_68_n_0 ),
        .I2(\badr[15]_INST_0_i_69_n_0 ),
        .I3(\badr[15]_INST_0_i_70_n_0 ),
        .I4(\stat[2]_i_14_n_0 ),
        .I5(\badr[15]_INST_0_i_71_n_0 ),
        .O(\badr[15]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A888A88AAAA)) 
    \badr[15]_INST_0_i_28 
       (.I0(\bcmd[1] ),
        .I1(\badr[15]_INST_0_i_72_n_0 ),
        .I2(\badr[15]_INST_0_i_73_n_0 ),
        .I3(ir[10]),
        .I4(\badr[15]_INST_0_i_74_n_0 ),
        .I5(\badr[15]_INST_0_i_75_n_0 ),
        .O(ctl_sela[2]));
  LUT6 #(
    .INIT(64'h00000000EFEEEFEF)) 
    \badr[15]_INST_0_i_29 
       (.I0(\badr[15]_INST_0_i_76_n_0 ),
        .I1(\badr[15]_INST_0_i_77_n_0 ),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_78_n_0 ),
        .I4(\badr[15]_INST_0_i_79_n_0 ),
        .I5(\badr[15]_INST_0_i_80_n_0 ),
        .O(ctl_sela[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_30 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .O(\badr[15]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \badr[15]_INST_0_i_32 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .I2(ctl_sela[2]),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(ctl_sela[4]),
        .O(\rgf/abus_sel_cr [4]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \badr[15]_INST_0_i_33 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .O(\rgf/abus_sel_cr [3]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \badr[15]_INST_0_i_34 
       (.I0(ctl_sela[0]),
        .I1(ctl_sela[1]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .O(\rgf/abus_sel_cr [1]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \badr[15]_INST_0_i_35 
       (.I0(bank_sel[3]),
        .I1(ctl_sela[1]),
        .I2(ctl_sela[0]),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_27_n_0 ),
        .O(gr7_bus1__0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \badr[15]_INST_0_i_36 
       (.I0(bank_sel[3]),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(ctl_sela[1]),
        .I5(ctl_sela[0]),
        .O(gr0_bus1__0));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \badr[15]_INST_0_i_37 
       (.I0(bank_sel[1]),
        .I1(\badr[15]_INST_0_i_27_n_0 ),
        .I2(ctl_sela[4]),
        .I3(ctl_sela[0]),
        .I4(ctl_sela[1]),
        .I5(ctl_sela[2]),
        .O(gr3_bus1__0));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \badr[15]_INST_0_i_38 
       (.I0(bank_sel[1]),
        .I1(ctl_sela[1]),
        .I2(ctl_sela[0]),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_27_n_0 ),
        .O(gr4_bus1__0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \badr[15]_INST_0_i_39 
       (.I0(bank_sel[1]),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(ctl_sela[0]),
        .I5(ctl_sela[1]),
        .O(gr1_bus1__0_0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \badr[15]_INST_0_i_40 
       (.I0(bank_sel[1]),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(ctl_sela[1]),
        .I5(ctl_sela[0]),
        .O(gr2_bus1__0_2));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \badr[15]_INST_0_i_41 
       (.I0(bank_sel[1]),
        .I1(ctl_sela[1]),
        .I2(ctl_sela[0]),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_27_n_0 ),
        .O(gr7_bus1__0_13));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \badr[15]_INST_0_i_42 
       (.I0(bank_sel[1]),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(ctl_sela[1]),
        .I5(ctl_sela[0]),
        .O(gr0_bus1__0_4));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \badr[15]_INST_0_i_43 
       (.I0(bank_sel[1]),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(ctl_sela[0]),
        .I5(ctl_sela[1]),
        .O(gr5_bus1__0_8));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \badr[15]_INST_0_i_44 
       (.I0(bank_sel[1]),
        .I1(ctl_sela[1]),
        .I2(ctl_sela[0]),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_27_n_0 ),
        .O(gr6_bus1__0_11));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \badr[15]_INST_0_i_45 
       (.I0(\badr[15]_INST_0_i_87_n_0 ),
        .I1(\badr[15]_INST_0_i_88_n_0 ),
        .I2(\badr[15]_INST_0_i_89_n_0 ),
        .I3(\badr[15]_INST_0_i_90_n_0 ),
        .I4(\badr[15]_INST_0_i_91_n_0 ),
        .I5(\bcmd[1] ),
        .O(ctl_sela[1]));
  LUT6 #(
    .INIT(64'hFFFFEEAEAAAAAAAA)) 
    \badr[15]_INST_0_i_46 
       (.I0(\badr[15]_INST_0_i_87_n_0 ),
        .I1(\sr[15]_i_5_0 ),
        .I2(\badr[15]_INST_0_i_93_n_0 ),
        .I3(\badr[15]_INST_0_i_94_n_0 ),
        .I4(\badr[15]_INST_0_i_95_n_0 ),
        .I5(\bcmd[1] ),
        .O(ctl_sela[0]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \badr[15]_INST_0_i_47 
       (.I0(bank_sel[3]),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(ctl_sela[0]),
        .I5(ctl_sela[1]),
        .O(gr5_bus1__0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \badr[15]_INST_0_i_48 
       (.I0(bank_sel[3]),
        .I1(ctl_sela[1]),
        .I2(ctl_sela[0]),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_27_n_0 ),
        .O(gr6_bus1__0));
  LUT5 #(
    .INIT(32'h00004000)) 
    \badr[15]_INST_0_i_49 
       (.I0(ctl_sela[2]),
        .I1(ctl_sela[1]),
        .I2(ctl_sela[0]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_27_n_0 ),
        .O(abus_sel_0[1]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \badr[15]_INST_0_i_50 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(ctl_sela[4]),
        .I2(ctl_sela[2]),
        .I3(ctl_sela[0]),
        .I4(ctl_sela[1]),
        .O(abus_sel_0[2]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \badr[15]_INST_0_i_51 
       (.I0(bank_sel[3]),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(ctl_sela[0]),
        .I5(ctl_sela[1]),
        .O(gr1_bus1__0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \badr[15]_INST_0_i_52 
       (.I0(bank_sel[3]),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(ctl_sela[1]),
        .I5(ctl_sela[0]),
        .O(gr2_bus1__0));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \badr[15]_INST_0_i_53 
       (.I0(bank_sel[2]),
        .I1(ctl_sela[1]),
        .I2(ctl_sela[0]),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_27_n_0 ),
        .O(gr4_bus1__0_6));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \badr[15]_INST_0_i_54 
       (.I0(bank_sel[2]),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(ctl_sela[0]),
        .I5(ctl_sela[1]),
        .O(gr5_bus1__0_9));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \badr[15]_INST_0_i_55 
       (.I0(bank_sel[0]),
        .I1(\badr[15]_INST_0_i_27_n_0 ),
        .I2(ctl_sela[4]),
        .I3(ctl_sela[0]),
        .I4(ctl_sela[1]),
        .I5(ctl_sela[2]),
        .O(gr3_bus1__0_15));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \badr[15]_INST_0_i_56 
       (.I0(bank_sel[0]),
        .I1(ctl_sela[1]),
        .I2(ctl_sela[0]),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_27_n_0 ),
        .O(gr4_bus1__0_7));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \badr[15]_INST_0_i_57 
       (.I0(bank_sel[0]),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(ctl_sela[0]),
        .I5(ctl_sela[1]),
        .O(gr1_bus1__0_1));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \badr[15]_INST_0_i_58 
       (.I0(bank_sel[0]),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(ctl_sela[1]),
        .I5(ctl_sela[0]),
        .O(gr2_bus1__0_3));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \badr[15]_INST_0_i_59 
       (.I0(bank_sel[0]),
        .I1(ctl_sela[1]),
        .I2(ctl_sela[0]),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_27_n_0 ),
        .O(gr7_bus1__0_14));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[15]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[14]),
        .I5(\badr[15]_INST_0_i_1_3 [15]),
        .O(\sp_reg[15] ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \badr[15]_INST_0_i_60 
       (.I0(bank_sel[0]),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(ctl_sela[1]),
        .I5(ctl_sela[0]),
        .O(gr0_bus1__0_5));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \badr[15]_INST_0_i_61 
       (.I0(bank_sel[0]),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(ctl_sela[0]),
        .I5(ctl_sela[1]),
        .O(gr5_bus1__0_10));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \badr[15]_INST_0_i_62 
       (.I0(bank_sel[0]),
        .I1(ctl_sela[1]),
        .I2(ctl_sela[0]),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_27_n_0 ),
        .O(gr6_bus1__0_12));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \badr[15]_INST_0_i_63 
       (.I0(bank_sel[2]),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(ctl_sela[1]),
        .I5(ctl_sela[0]),
        .O(\rgf/bank02/abuso2l/gr0_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \badr[15]_INST_0_i_64 
       (.I0(bank_sel[2]),
        .I1(ctl_sela[1]),
        .I2(ctl_sela[0]),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_27_n_0 ),
        .O(\rgf/bank02/abuso2l/gr7_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \badr[15]_INST_0_i_65 
       (.I0(bank_sel[2]),
        .I1(ctl_sela[1]),
        .I2(ctl_sela[0]),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_27_n_0 ),
        .O(\rgf/bank02/abuso2l/gr6_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \badr[15]_INST_0_i_66 
       (.I0(bank_sel[2]),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(ctl_sela[0]),
        .I5(ctl_sela[1]),
        .O(\rgf/bank02/abuso2l/gr1_bus1__0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \badr[15]_INST_0_i_67 
       (.I0(ctl_sela[0]),
        .I1(ctl_sela[1]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[4]),
        .I4(ctl_sela[2]),
        .O(abus_sel_0[0]));
  LUT6 #(
    .INIT(64'h0000000060000000)) 
    \badr[15]_INST_0_i_68 
       (.I0(ir[11]),
        .I1(ir[12]),
        .I2(\eir_fl_reg[1]_0 ),
        .I3(ir[15]),
        .I4(ir[14]),
        .I5(ir[13]),
        .O(\badr[15]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h45004545FFFFFFFF)) 
    \badr[15]_INST_0_i_69 
       (.I0(\badr[15]_INST_0_i_98_n_0 ),
        .I1(\badr[15]_INST_0_i_99_n_0 ),
        .I2(\stat[2]_i_16_n_0 ),
        .I3(\tr[15]_i_29_0 ),
        .I4(\badr[15]_INST_0_i_101_n_0 ),
        .I5(\eir_fl_reg[1]_0 ),
        .O(\badr[15]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[15]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\badrx[15] [15]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [15]),
        .I4(\pc_reg[15]_0 [15]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[15] ));
  LUT6 #(
    .INIT(64'h0400000004000400)) 
    \badr[15]_INST_0_i_70 
       (.I0(ir[2]),
        .I1(\badr[15]_INST_0_i_102_n_0 ),
        .I2(ir[11]),
        .I3(rst_n_fl_reg_0),
        .I4(\badr[15]_INST_0_i_103_n_0 ),
        .I5(\badr[15]_INST_0_i_104_n_0 ),
        .O(\badr[15]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBBAAAAAAAA)) 
    \badr[15]_INST_0_i_71 
       (.I0(\badr[15]_INST_0_i_105_n_0 ),
        .I1(ir[14]),
        .I2(\badr[15]_INST_0_i_106_n_0 ),
        .I3(\badr[15]_INST_0_i_107_n_0 ),
        .I4(\badr[15]_INST_0_i_108_n_0 ),
        .I5(\stat[0]_i_6_n_0 ),
        .O(\badr[15]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0220AAAAAA20)) 
    \badr[15]_INST_0_i_72 
       (.I0(\badr[15]_INST_0_i_109_n_0 ),
        .I1(\badr[15]_INST_0_i_110_n_0 ),
        .I2(ir[10]),
        .I3(ir[11]),
        .I4(\badr[15]_INST_0_i_111_n_0 ),
        .I5(\ccmd[4]_INST_0_i_12_n_0 ),
        .O(\badr[15]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD000FFFFFFFF)) 
    \badr[15]_INST_0_i_73 
       (.I0(ir[11]),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(ir[13]),
        .I4(Q[0]),
        .I5(ir[15]),
        .O(\badr[15]_INST_0_i_73_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \badr[15]_INST_0_i_74 
       (.I0(ir[13]),
        .I1(ir[14]),
        .I2(ir[15]),
        .I3(Q[0]),
        .O(\badr[15]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFFF0D0DFFFF)) 
    \badr[15]_INST_0_i_75 
       (.I0(\ccmd[3]_INST_0_i_15_n_0 ),
        .I1(\badr[15]_INST_0_i_112_n_0 ),
        .I2(\badr[15]_INST_0_i_113_n_0 ),
        .I3(\badr[15]_INST_0_i_114_n_0 ),
        .I4(ir[12]),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hF404000000000000)) 
    \badr[15]_INST_0_i_76 
       (.I0(Q[0]),
        .I1(\stat[1]_i_2_1 ),
        .I2(ir[13]),
        .I3(\badr[15]_INST_0_i_115_n_0 ),
        .I4(\bdatw[15]_INST_0_i_38_n_0 ),
        .I5(\badr[15]_INST_0_i_116_n_0 ),
        .O(\badr[15]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEFEEEEEEEEE)) 
    \badr[15]_INST_0_i_77 
       (.I0(\badr[15]_INST_0_i_117_n_0 ),
        .I1(\badr[15]_INST_0_i_118_n_0 ),
        .I2(\badr[15]_INST_0_i_29_1 ),
        .I3(ir[14]),
        .I4(Q[0]),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h0000000111111111)) 
    \badr[15]_INST_0_i_78 
       (.I0(ir[13]),
        .I1(ir[15]),
        .I2(\stat[1]_i_19_n_0 ),
        .I3(\badr[15]_INST_0_i_120_n_0 ),
        .I4(\badr[15]_INST_0_i_121_n_0 ),
        .I5(\badr[15]_INST_0_i_29_0 ),
        .O(\badr[15]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hFF0D0000FFFFFFFF)) 
    \badr[15]_INST_0_i_79 
       (.I0(ir[10]),
        .I1(\badr[15]_INST_0_i_123_n_0 ),
        .I2(\badr[15]_INST_0_i_124_n_0 ),
        .I3(\ccmd[0]_INST_0_i_8_n_0 ),
        .I4(\badr[15]_INST_0_i_29_2 ),
        .I5(\badr[15]_INST_0_i_126_n_0 ),
        .O(\badr[15]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFAAAAAAAA)) 
    \badr[15]_INST_0_i_80 
       (.I0(Q[2]),
        .I1(ir[2]),
        .I2(\badr[15]_INST_0_i_127_n_0 ),
        .I3(\fch_irq_lev[1]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_104_n_0 ),
        .I5(Q[1]),
        .O(\badr[15]_INST_0_i_80_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \badr[15]_INST_0_i_87 
       (.I0(Q[2]),
        .I1(\bdatw[15]_INST_0_i_52_n_0 ),
        .I2(\fch_irq_lev[1]_i_3_n_0 ),
        .I3(\bdatw[15]_INST_0_i_51_n_0 ),
        .I4(Q[1]),
        .O(\badr[15]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \badr[15]_INST_0_i_88 
       (.I0(ir[11]),
        .I1(ir[12]),
        .I2(Q[0]),
        .I3(ir[15]),
        .I4(ir[14]),
        .I5(ir[13]),
        .O(\badr[15]_INST_0_i_88_n_0 ));
  LUT6 #(
    .INIT(64'h7F33773355005500)) 
    \badr[15]_INST_0_i_89 
       (.I0(\badr[15]_INST_0_i_128_n_0 ),
        .I1(\badr[15]_INST_0_i_129_n_0 ),
        .I2(ir[9]),
        .I3(ir[10]),
        .I4(\badr[15]_INST_0_i_130_n_0 ),
        .I5(crdy),
        .O(\badr[15]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h80808088AAAAAAAA)) 
    \badr[15]_INST_0_i_90 
       (.I0(\sr[15]_i_5_0 ),
        .I1(\ccmd[3]_INST_0_i_4_n_0 ),
        .I2(\badr[15]_INST_0_i_131_n_0 ),
        .I3(\badrx[15]_INST_0_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_132_n_0 ),
        .I5(\badr[15]_INST_0_i_133_n_0 ),
        .O(\badr[15]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \badr[15]_INST_0_i_91 
       (.I0(\badr[15]_INST_0_i_134_n_0 ),
        .I1(\badr[15]_INST_0_i_109_n_0 ),
        .I2(\badr[15]_INST_0_i_135_n_0 ),
        .I3(\badr[15]_INST_0_i_136_n_0 ),
        .I4(ir[9]),
        .I5(\badr[15]_INST_0_i_73_n_0 ),
        .O(\badr[15]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBAAAAABAA)) 
    \badr[15]_INST_0_i_93 
       (.I0(\badr[15]_INST_0_i_137_n_0 ),
        .I1(\badr[15]_INST_0_i_138_n_0 ),
        .I2(\badr[15]_INST_0_i_139_n_0 ),
        .I3(\badr[15]_INST_0_i_140_n_0 ),
        .I4(ir[10]),
        .I5(\badr[15]_INST_0_i_141_n_0 ),
        .O(\badr[15]_INST_0_i_93_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABABAAABABA)) 
    \badr[15]_INST_0_i_94 
       (.I0(\badr[15]_INST_0_i_142_n_0 ),
        .I1(\badr[15]_INST_0_i_143_n_0 ),
        .I2(\ccmd[3]_INST_0_i_4_n_0 ),
        .I3(\badr[15]_INST_0_i_144_n_0 ),
        .I4(ir[10]),
        .I5(\badr[15]_INST_0_i_145_n_0 ),
        .O(\badr[15]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h5DFF0C0C5D5D0C0C)) 
    \badr[15]_INST_0_i_95 
       (.I0(\badr[15]_INST_0_i_146_n_0 ),
        .I1(ir[8]),
        .I2(\badr[15]_INST_0_i_73_n_0 ),
        .I3(\badr[15]_INST_0_i_147_n_0 ),
        .I4(\badr[15]_INST_0_i_109_n_0 ),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_95_n_0 ));
  LUT4 #(
    .INIT(16'h009A)) 
    \badr[15]_INST_0_i_98 
       (.I0(ir[11]),
        .I1(\badr[15]_INST_0_i_2 [6]),
        .I2(ir[13]),
        .I3(ir[14]),
        .O(\badr[15]_INST_0_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFFFFFF)) 
    \badr[15]_INST_0_i_99 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[2]),
        .I3(ir[0]),
        .I4(fch_irq_req),
        .I5(ir[1]),
        .O(\badr[15]_INST_0_i_99_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[1]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[2]_1 ),
        .I2(ctl_extadr),
        .I3(abus_0[1]),
        .O(badr[1]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \badr[1]_INST_0_i_13 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[1] ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[1]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [1]),
        .O(\grn_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[1]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [1]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [1]),
        .I4(\bdatw[15]_INST_0_i_55_2 [1]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[1] ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[1]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[0]),
        .I5(\badr[15]_INST_0_i_1_3 [1]),
        .O(\sp_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[1]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\badrx[15] [1]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [1]),
        .I4(\pc_reg[15]_0 [1]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[1] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[2]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[2]_1 ),
        .I2(ctl_extadr),
        .I3(abus_0[2]),
        .O(badr[2]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \badr[2]_INST_0_i_13 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_2 [2]),
        .O(\sr_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[2]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [2]),
        .O(\grn_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[2]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [2]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [2]),
        .I4(\bdatw[15]_INST_0_i_55_2 [2]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[2] ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[2]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[1]),
        .I5(\badr[15]_INST_0_i_1_3 [2]),
        .O(\sp_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[2]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\badrx[15] [2]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [2]),
        .I4(\pc_reg[15]_0 [2]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[2] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[3]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[2]_1 ),
        .I2(ctl_extadr),
        .I3(abus_0[3]),
        .O(badr[3]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \badr[3]_INST_0_i_13 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_2 [3]),
        .O(\sr_reg[3]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[3]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [3]),
        .O(\grn_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[3]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [3]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [3]),
        .I4(\bdatw[15]_INST_0_i_55_2 [3]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[3] ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[3]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[2]),
        .I5(\badr[15]_INST_0_i_1_3 [3]),
        .O(\sp_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[3]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\badrx[15] [3]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [3]),
        .I4(\pc_reg[15]_0 [3]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[3] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[4]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[2]_1 ),
        .I2(ctl_extadr),
        .I3(abus_0[4]),
        .O(badr[4]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \badr[4]_INST_0_i_13 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_2 [4]),
        .O(\sr_reg[4]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[4]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\badr[15]_INST_0_i_4 [4]),
        .O(\grn_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[4]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [4]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [4]),
        .I4(\bdatw[15]_INST_0_i_55_2 [4]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[4] ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[4]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[3]),
        .I5(\badr[15]_INST_0_i_1_3 [4]),
        .O(\sp_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[4]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\badrx[15] [4]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [4]),
        .I4(\pc_reg[15]_0 [4]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[4] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[5]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[2]_1 ),
        .I2(ctl_extadr),
        .I3(abus_0[5]),
        .O(badr[5]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \badr[5]_INST_0_i_13 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_2 [5]),
        .O(\sr_reg[5]_0 ));
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
        .I1(\bdatw[15]_INST_0_i_55_0 [5]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [5]),
        .I4(\bdatw[15]_INST_0_i_55_2 [5]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[5] ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[5]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[4]),
        .I5(\badr[15]_INST_0_i_1_3 [5]),
        .O(\sp_reg[5] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[5]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\badrx[15] [5]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [5]),
        .I4(\pc_reg[15]_0 [5]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[5] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[6]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[2]_1 ),
        .I2(ctl_extadr),
        .I3(abus_0[6]),
        .O(badr[6]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \badr[6]_INST_0_i_13 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_2 [6]),
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
        .I1(\bdatw[15]_INST_0_i_55_0 [6]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [6]),
        .I4(\bdatw[15]_INST_0_i_55_2 [6]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[6] ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[6]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[5]),
        .I5(\badr[15]_INST_0_i_1_3 [6]),
        .O(\sp_reg[6] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[6]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\badrx[15] [6]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [6]),
        .I4(\pc_reg[15]_0 [6]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[6] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[7]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[2]_1 ),
        .I2(ctl_extadr),
        .I3(abus_0[7]),
        .O(badr[7]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \badr[7]_INST_0_i_13 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_2 [7]),
        .O(\sr_reg[7]_0 ));
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
        .I1(\bdatw[15]_INST_0_i_55_0 [7]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [7]),
        .I4(\bdatw[15]_INST_0_i_55_2 [7]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[7] ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[7]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[6]),
        .I5(\badr[15]_INST_0_i_1_3 [7]),
        .O(\sp_reg[7] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[7]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\badrx[15] [7]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [7]),
        .I4(\pc_reg[15]_0 [7]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[7] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[8]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[2]_1 ),
        .I2(ctl_extadr),
        .I3(abus_0[8]),
        .O(badr[8]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \badr[8]_INST_0_i_13 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_2 [8]),
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
        .I1(\bdatw[15]_INST_0_i_55_0 [8]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [8]),
        .I4(\bdatw[15]_INST_0_i_55_2 [8]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[8] ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[8]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[7]),
        .I5(\badr[15]_INST_0_i_1_3 [8]),
        .O(\sp_reg[8] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[8]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\badrx[15] [8]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [8]),
        .I4(\pc_reg[15]_0 [8]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[8] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[9]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[2]_1 ),
        .I2(ctl_extadr),
        .I3(abus_0[9]),
        .O(badr[9]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \badr[9]_INST_0_i_13 
       (.I0(ctl_sela[1]),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela[2]),
        .I4(ctl_sela[4]),
        .I5(\badr[15]_INST_0_i_2 [9]),
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
        .I1(\bdatw[15]_INST_0_i_55_0 [9]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [9]),
        .I4(\bdatw[15]_INST_0_i_55_2 [9]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[9] ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[9]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[8]),
        .I5(\badr[15]_INST_0_i_1_3 [9]),
        .O(\sp_reg[9] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[9]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\badrx[15] [9]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [9]),
        .I4(\pc_reg[15]_0 [9]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[9] ));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[0]_INST_0 
       (.I0(ctl_extadr),
        .I1(\badrx[15] [0]),
        .O(badrx[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[10]_INST_0 
       (.I0(ctl_extadr),
        .I1(\badrx[15] [10]),
        .O(badrx[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[11]_INST_0 
       (.I0(ctl_extadr),
        .I1(\badrx[15] [11]),
        .O(badrx[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[12]_INST_0 
       (.I0(ctl_extadr),
        .I1(\badrx[15] [12]),
        .O(badrx[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[13]_INST_0 
       (.I0(ctl_extadr),
        .I1(\badrx[15] [13]),
        .O(badrx[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[14]_INST_0 
       (.I0(ctl_extadr),
        .I1(\badrx[15] [14]),
        .O(badrx[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[15]_INST_0 
       (.I0(ctl_extadr),
        .I1(\badrx[15] [15]),
        .O(badrx[15]));
  LUT6 #(
    .INIT(64'h0000000033D000D0)) 
    \badrx[15]_INST_0_i_1 
       (.I0(\badrx[15]_INST_0_i_2_n_0 ),
        .I1(Q[1]),
        .I2(crdy),
        .I3(\badrx[15]_INST_0_i_3_n_0 ),
        .I4(ir[8]),
        .I5(\badrx[15]_INST_0_i_4_n_0 ),
        .O(ctl_extadr));
  LUT3 #(
    .INIT(8'h7F)) 
    \badrx[15]_INST_0_i_2 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[10]),
        .O(\badrx[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \badrx[15]_INST_0_i_3 
       (.I0(ir[15]),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[12]),
        .I4(ir[11]),
        .I5(ir[10]),
        .O(\badrx[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF70)) 
    \badrx[15]_INST_0_i_4 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(ir[11]),
        .I4(Q[2]),
        .I5(\badrx[15]_INST_0_i_5_n_0 ),
        .O(\badrx[15]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \badrx[15]_INST_0_i_5 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(ir[15]),
        .I4(Q[0]),
        .O(\badrx[15]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[1]_INST_0 
       (.I0(ctl_extadr),
        .I1(\badrx[15] [1]),
        .O(badrx[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[2]_INST_0 
       (.I0(ctl_extadr),
        .I1(\badrx[15] [2]),
        .O(badrx[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[3]_INST_0 
       (.I0(ctl_extadr),
        .I1(\badrx[15] [3]),
        .O(badrx[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[4]_INST_0 
       (.I0(ctl_extadr),
        .I1(\badrx[15] [4]),
        .O(badrx[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[5]_INST_0 
       (.I0(ctl_extadr),
        .I1(\badrx[15] [5]),
        .O(badrx[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[6]_INST_0 
       (.I0(ctl_extadr),
        .I1(\badrx[15] [6]),
        .O(badrx[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[7]_INST_0 
       (.I0(ctl_extadr),
        .I1(\badrx[15] [7]),
        .O(badrx[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[8]_INST_0 
       (.I0(ctl_extadr),
        .I1(\badrx[15] [8]),
        .O(badrx[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[9]_INST_0 
       (.I0(ctl_extadr),
        .I1(\badrx[15] [9]),
        .O(badrx[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[0]_INST_0 
       (.I0(ctl_copro),
        .I1(\sr_reg[0] ),
        .O(bbus_o[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[10]_INST_0 
       (.I0(ctl_copro),
        .I1(\bdatw[10]_INST_0_i_1_n_0 ),
        .O(bbus_o[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[11]_INST_0 
       (.I0(ctl_copro),
        .I1(\bdatw[11]_INST_0_i_1_n_0 ),
        .O(bbus_o[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[12]_INST_0 
       (.I0(ctl_copro),
        .I1(\bdatw[12]_INST_0_i_1_n_0 ),
        .O(bbus_o[12]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[13]_INST_0 
       (.I0(ctl_copro),
        .I1(\bdatw[13]_INST_0_i_1_n_0 ),
        .O(bbus_o[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[14]_INST_0 
       (.I0(ctl_copro),
        .I1(\bdatw[14]_INST_0_i_1_n_0 ),
        .O(bbus_o[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[15]_INST_0 
       (.I0(ctl_copro),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .O(bbus_o[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[1]_INST_0 
       (.I0(ctl_copro),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(bbus_o[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[2]_INST_0 
       (.I0(ctl_copro),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bbus_o[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[3]_INST_0 
       (.I0(ctl_copro),
        .I1(\sr_reg[3]_0 ),
        .O(bbus_o[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[4]_INST_0 
       (.I0(ctl_copro),
        .I1(\sr_reg[4]_0 ),
        .O(bbus_o[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[5]_INST_0 
       (.I0(ctl_copro),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bbus_o[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[6]_INST_0 
       (.I0(ctl_copro),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bbus_o[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[7]_INST_0 
       (.I0(ctl_copro),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bbus_o[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[8]_INST_0 
       (.I0(ctl_copro),
        .I1(\bdatw[8]_INST_0_i_1_n_0 ),
        .O(bbus_o[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[9]_INST_0 
       (.I0(ctl_copro),
        .I1(\bdatw[9]_INST_0_i_1_n_0 ),
        .O(bbus_o[9]));
  LUT5 #(
    .INIT(32'h0E0F0E00)) 
    \bcmd[0]_INST_0 
       (.I0(\bcmd[0]_INST_0_i_1_n_0 ),
        .I1(\bcmd[0]_INST_0_i_2_n_0 ),
        .I2(\bcmd[0]_INST_0_i_3_n_0 ),
        .I3(ir[12]),
        .I4(\bcmd[0]_INST_0_i_4_n_0 ),
        .O(\stat_reg[0] ));
  LUT6 #(
    .INIT(64'h0400000000400040)) 
    \bcmd[0]_INST_0_i_1 
       (.I0(\bcmd[0]_INST_0_i_5_n_0 ),
        .I1(\bcmd[0]_INST_0_i_6_n_0 ),
        .I2(Q[0]),
        .I3(ir[6]),
        .I4(ir[5]),
        .I5(ir[9]),
        .O(\bcmd[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bcmd[0]_INST_0_i_10 
       (.I0(ir[6]),
        .I1(ir[5]),
        .O(\bcmd[0]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bcmd[0]_INST_0_i_11 
       (.I0(ir[14]),
        .I1(ir[13]),
        .O(rst_n_fl_reg_0));
  LUT2 #(
    .INIT(4'hE)) 
    \bcmd[0]_INST_0_i_12 
       (.I0(ir[10]),
        .I1(ir[9]),
        .O(\bcmd[0]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bcmd[0]_INST_0_i_13 
       (.I0(ir[1]),
        .I1(ir[3]),
        .O(\bcmd[0]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \bcmd[0]_INST_0_i_14 
       (.I0(ir[2]),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(Q[0]),
        .O(\bcmd[0]_INST_0_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bcmd[0]_INST_0_i_15 
       (.I0(ir[3]),
        .I1(ir[4]),
        .O(\bcmd[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400040000)) 
    \bcmd[0]_INST_0_i_2 
       (.I0(\bcmd[0]_INST_0_i_5_n_0 ),
        .I1(ir[9]),
        .I2(Q[0]),
        .I3(ir[6]),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(\bcmd[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFCDFFFDCFFDCFFD)) 
    \bcmd[0]_INST_0_i_3 
       (.I0(\bcmd[0]_INST_0_i_7_n_0 ),
        .I1(\bcmd[0] ),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(\bcmd[0]_INST_0_i_9_n_0 ),
        .I5(ir[6]),
        .O(\bcmd[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \bcmd[0]_INST_0_i_4 
       (.I0(\bcmd[0]_INST_0_i_10_n_0 ),
        .I1(rst_n_fl_reg_0),
        .I2(ir[11]),
        .I3(ir[2]),
        .I4(ir[4]),
        .I5(\bcmd[0]_INST_0_i_12_n_0 ),
        .O(\bcmd[0]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bcmd[0]_INST_0_i_5 
       (.I0(ir[14]),
        .I1(ir[13]),
        .O(\bcmd[0]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bcmd[0]_INST_0_i_6 
       (.I0(ir[11]),
        .I1(ir[10]),
        .O(\bcmd[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC2222CCCC2220)) 
    \bcmd[0]_INST_0_i_7 
       (.I0(\bcmd[0]_INST_0_i_13_n_0 ),
        .I1(ir[10]),
        .I2(\bcmd[0]_INST_0_i_14_n_0 ),
        .I3(ir[5]),
        .I4(ir[7]),
        .I5(\bcmd[0]_INST_0_i_15_n_0 ),
        .O(\bcmd[0]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bcmd[0]_INST_0_i_9 
       (.I0(ir[7]),
        .I1(ir[3]),
        .O(\bcmd[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000002022222222)) 
    \bcmd[1]_INST_0 
       (.I0(\bcmd[1] ),
        .I1(ir[15]),
        .I2(\bcmd[1]_INST_0_i_2_n_0 ),
        .I3(\bcmd[1]_INST_0_i_3_n_0 ),
        .I4(\bcmd[1]_INST_0_i_4_n_0 ),
        .I5(\bcmd[1]_INST_0_i_5_n_0 ),
        .O(\stat_reg[2]_1 ));
  LUT5 #(
    .INIT(32'h02820280)) 
    \bcmd[1]_INST_0_i_2 
       (.I0(\bcmd[1]_INST_0_i_6_n_0 ),
        .I1(ir[11]),
        .I2(ir[12]),
        .I3(Q[0]),
        .I4(fch_irq_req),
        .O(\bcmd[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF3D)) 
    \bcmd[1]_INST_0_i_3 
       (.I0(ir[0]),
        .I1(ir[7]),
        .I2(ir[3]),
        .I3(ir[4]),
        .I4(ir[5]),
        .I5(ir[6]),
        .O(\bcmd[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7EFFFFFFFFFFFF7E)) 
    \bcmd[1]_INST_0_i_4 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(ir[14]),
        .I3(ir[9]),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(\bcmd[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF07777FF)) 
    \bcmd[1]_INST_0_i_5 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(\bcmd[1]_INST_0_i_7_n_0 ),
        .I3(ir[11]),
        .I4(ir[10]),
        .I5(\bcmd[1]_INST_0_i_8_n_0 ),
        .O(\bcmd[1]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hC000C001)) 
    \bcmd[1]_INST_0_i_6 
       (.I0(ir[1]),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[2]),
        .O(\bcmd[1]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFF0FF)) 
    \bcmd[1]_INST_0_i_7 
       (.I0(ir[5]),
        .I1(ir[3]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(ir[9]),
        .O(\bcmd[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9FFFFFFFFFFFFFFF)) 
    \bcmd[1]_INST_0_i_8 
       (.I0(Q[0]),
        .I1(ir[9]),
        .I2(ir[13]),
        .I3(ir[14]),
        .I4(ir[12]),
        .I5(ir[6]),
        .O(\bcmd[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010000)) 
    \bcmd[2]_INST_0 
       (.I0(\bcmd[2]_INST_0_i_1_n_0 ),
        .I1(Q[0]),
        .I2(ir[7]),
        .I3(\bcmd[2]_INST_0_i_2_n_0 ),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(\stat_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFF)) 
    \bcmd[2]_INST_0_i_1 
       (.I0(ir[12]),
        .I1(Q[2]),
        .I2(ir[15]),
        .I3(ir[14]),
        .I4(ir[13]),
        .I5(Q[1]),
        .O(\bcmd[2]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bcmd[2]_INST_0_i_2 
       (.I0(ir[9]),
        .I1(ir[8]),
        .O(\bcmd[2]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[0]_INST_0 
       (.I0(\stat_reg[2]_1 ),
        .I1(\sr_reg[0] ),
        .O(bdatw[0]));
  LUT4 #(
    .INIT(16'h8A02)) 
    \bdatw[10]_INST_0 
       (.I0(\stat_reg[2]_1 ),
        .I1(\stat_reg[0]_1 ),
        .I2(\bdatw[10]_INST_0_i_1_n_0 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bdatw[10]));
  LUT6 #(
    .INIT(64'h00000000000000FB)) 
    \bdatw[10]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[10]),
        .I2(\stat_reg[2] ),
        .I3(p_1_in[10]),
        .I4(bdatw_10_sn_1),
        .I5(\bdatw[10]_INST_0_i_5_n_0 ),
        .O(\bdatw[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_10 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [2]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [2]),
        .I4(\pc_reg[15]_0 [2]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[10]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \bdatw[10]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[2]),
        .I2(\stat_reg[2] ),
        .O(\bdatw[10]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBFAAAAAAEA)) 
    \bdatw[10]_INST_0_i_12 
       (.I0(\stat_reg[2]_0 ),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(ir[2]),
        .I4(ir[0]),
        .I5(\stat_reg[2] ),
        .O(\bdatw[10]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[10]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\stat_reg[2]_0 ),
        .O(\bdatw[10]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFAAAAAABA)) 
    \bdatw[10]_INST_0_i_16 
       (.I0(\stat_reg[2]_0 ),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[2]),
        .I4(ir[0]),
        .I5(\stat_reg[2] ),
        .O(\bdatw[10]_INST_0_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \bdatw[10]_INST_0_i_17 
       (.I0(\bdatw[10]_INST_0_i_13_n_0 ),
        .I1(\stat_reg[2] ),
        .I2(ir[1]),
        .O(\bdatw[10]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bdatw[10]_INST_0_i_2 
       (.I0(p_1_in[2]),
        .I1(\bdatw[10]_0 ),
        .I2(bbus_b02[2]),
        .I3(\bdatw[10]_1 ),
        .I4(\bdatw[10]_INST_0_i_10_n_0 ),
        .I5(\bdatw[10]_INST_0_i_11_n_0 ),
        .O(\bdatw[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_23 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [2]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [2]),
        .I4(\bdatw[15]_INST_0_i_55_2 [2]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \bdatw[10]_INST_0_i_24 
       (.I0(\stat_reg[2]_0 ),
        .I1(\stat_reg[2] ),
        .I2(\stat_reg[2]_3 ),
        .I3(\badr[15]_INST_0_i_2 [1]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_4 [2]),
        .O(\sr_reg[1]_22 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[10]_INST_0_i_28 
       (.I0(\bdatw[10]_INST_0_i_38_n_0 ),
        .I1(gr3_bus1__0_18),
        .I2(\bdatw[15]_INST_0_i_22 [5]),
        .I3(gr2_bus1__0_19),
        .I4(\bdatw[15]_INST_0_i_22_0 [5]),
        .O(\grn_reg[10]_1 ));
  LUT6 #(
    .INIT(64'h0808080808AA0808)) 
    \bdatw[10]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_17_n_0 ),
        .I2(\bdatw[10]_INST_0_i_12_n_0 ),
        .I3(\stat_reg[2] ),
        .I4(ir[9]),
        .I5(\bdatw[10]_INST_0_i_13_n_0 ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_38 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [10]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [10]),
        .I4(\bdatw[15]_INST_0_i_55_2 [10]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [10]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [10]),
        .I4(\pc_reg[15]_0 [10]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[10]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0808AA88)) 
    \bdatw[10]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_17_n_0 ),
        .I2(\bdatw[10]_INST_0_i_16_n_0 ),
        .I3(ir[2]),
        .I4(\bdatw[10]_INST_0_i_17_n_0 ),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[11]_INST_0 
       (.I0(\stat_reg[2]_1 ),
        .I1(\stat_reg[0]_1 ),
        .I2(\bdatw[11]_INST_0_i_1_n_0 ),
        .I3(\sr_reg[3]_0 ),
        .O(bdatw[11]));
  LUT6 #(
    .INIT(64'h00000000000000FB)) 
    \bdatw[11]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[11]),
        .I2(\stat_reg[2] ),
        .I3(p_1_in[11]),
        .I4(bdatw_11_sn_1),
        .I5(\bdatw[11]_INST_0_i_5_n_0 ),
        .O(\bdatw[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_11 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [3]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [3]),
        .I4(\pc_reg[15]_0 [3]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[11]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFBAAAAAAA)) 
    \bdatw[11]_INST_0_i_12 
       (.I0(\stat_reg[2]_0 ),
        .I1(ir[2]),
        .I2(ir[0]),
        .I3(ir[1]),
        .I4(ir[3]),
        .I5(\stat_reg[2] ),
        .O(\bdatw[11]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFFAABAAAAA)) 
    \bdatw[11]_INST_0_i_15 
       (.I0(\stat_reg[2]_0 ),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[2]),
        .I4(ir[0]),
        .I5(\stat_reg[2] ),
        .O(\bdatw[11]_INST_0_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \bdatw[11]_INST_0_i_16 
       (.I0(\bdatw[10]_INST_0_i_13_n_0 ),
        .I1(\stat_reg[2] ),
        .I2(ir[2]),
        .O(\bdatw[11]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bdatw[11]_INST_0_i_2 
       (.I0(\bdatw[11]_INST_0_i_6_n_0 ),
        .I1(p_1_in[3]),
        .I2(bbus_o_3_sn_1),
        .I3(bbus_b02[3]),
        .I4(\bbus_o[3]_0 ),
        .I5(\bdatw[11]_INST_0_i_11_n_0 ),
        .O(\sr_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_22 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [3]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [3]),
        .I4(\bdatw[15]_INST_0_i_55_2 [3]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \bdatw[11]_INST_0_i_23 
       (.I0(\stat_reg[2]_0 ),
        .I1(\stat_reg[2] ),
        .I2(\stat_reg[2]_3 ),
        .I3(\badr[15]_INST_0_i_2 [1]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_4 [3]),
        .O(\sr_reg[1]_21 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[11]_INST_0_i_27 
       (.I0(\bdatw[11]_INST_0_i_37_n_0 ),
        .I1(gr3_bus1__0_18),
        .I2(\bdatw[15]_INST_0_i_22 [6]),
        .I3(gr2_bus1__0_19),
        .I4(\bdatw[15]_INST_0_i_22_0 [6]),
        .O(\grn_reg[11]_1 ));
  LUT4 #(
    .INIT(16'h08AA)) 
    \bdatw[11]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_17_n_0 ),
        .I2(\bdatw[11]_INST_0_i_12_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_37 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [11]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [11]),
        .I4(\bdatw[15]_INST_0_i_55_2 [11]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [11]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [11]),
        .I4(\pc_reg[15]_0 [11]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[11]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \bdatw[11]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[3]),
        .I2(\stat_reg[2] ),
        .O(\bdatw[11]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0808AA88)) 
    \bdatw[11]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_17_n_0 ),
        .I2(\bdatw[11]_INST_0_i_15_n_0 ),
        .I3(ir[3]),
        .I4(\bdatw[11]_INST_0_i_16_n_0 ),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'h8A02)) 
    \bdatw[12]_INST_0 
       (.I0(\stat_reg[2]_1 ),
        .I1(\stat_reg[0]_1 ),
        .I2(\bdatw[12]_INST_0_i_1_n_0 ),
        .I3(\sr_reg[4]_0 ),
        .O(bdatw[12]));
  LUT6 #(
    .INIT(64'h00000000000000FB)) 
    \bdatw[12]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[12]),
        .I2(\stat_reg[2] ),
        .I3(p_1_in[12]),
        .I4(bdatw_12_sn_1),
        .I5(\bdatw[12]_INST_0_i_5_n_0 ),
        .O(\bdatw[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_10 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [4]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [4]),
        .I4(\pc_reg[15]_0 [4]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[12]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \bdatw[12]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[4]),
        .I2(\stat_reg[2] ),
        .O(\bdatw[12]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \bdatw[12]_INST_0_i_12 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[0]),
        .O(\bdatw[12]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h55555555AAAAAA9A)) 
    \bdatw[12]_INST_0_i_15 
       (.I0(\stat_reg[2] ),
        .I1(ir[3]),
        .I2(ir[2]),
        .I3(ir[1]),
        .I4(ir[0]),
        .I5(\stat_reg[2]_0 ),
        .O(\bdatw[12]_INST_0_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \bdatw[12]_INST_0_i_16 
       (.I0(\bdatw[10]_INST_0_i_13_n_0 ),
        .I1(\stat_reg[2] ),
        .I2(ir[3]),
        .O(\bdatw[12]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \bdatw[12]_INST_0_i_18 
       (.I0(\stat_reg[2] ),
        .I1(\stat_reg[2]_0 ),
        .I2(ctl_selb[3]),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(ctl_selb[4]),
        .O(\stat_reg[2]_4 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bdatw[12]_INST_0_i_2 
       (.I0(p_1_in[4]),
        .I1(bbus_o_4_sn_1),
        .I2(bbus_b02[4]),
        .I3(\bbus_o[4]_0 ),
        .I4(\bdatw[12]_INST_0_i_10_n_0 ),
        .I5(\bdatw[12]_INST_0_i_11_n_0 ),
        .O(\sr_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_23 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [4]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [4]),
        .I4(\bdatw[15]_INST_0_i_55_2 [4]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \bdatw[12]_INST_0_i_24 
       (.I0(\stat_reg[2]_0 ),
        .I1(\stat_reg[2] ),
        .I2(\stat_reg[2]_3 ),
        .I3(\badr[15]_INST_0_i_2 [1]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_4 [4]),
        .O(\sr_reg[1]_20 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[12]_INST_0_i_28 
       (.I0(\bdatw[12]_INST_0_i_56_n_0 ),
        .I1(gr3_bus1__0_18),
        .I2(\bdatw[15]_INST_0_i_22 [7]),
        .I3(gr2_bus1__0_19),
        .I4(\bdatw[15]_INST_0_i_22_0 [7]),
        .O(\grn_reg[12]_1 ));
  LUT6 #(
    .INIT(64'h88800008AAAAAAAA)) 
    \bdatw[12]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_17_n_0 ),
        .I2(\stat_reg[2]_0 ),
        .I3(\bdatw[12]_INST_0_i_12_n_0 ),
        .I4(\stat_reg[2] ),
        .I5(\bdatw[15]_INST_0_i_18_n_0 ),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \bdatw[12]_INST_0_i_33 
       (.I0(bank_sel[3]),
        .I1(ctl_selb[3]),
        .I2(ctl_selb[4]),
        .I3(\stat_reg[2]_0 ),
        .I4(\stat_reg[2] ),
        .I5(\bdatw[15]_INST_0_i_9_n_0 ),
        .O(gr3_bus1__0_39));
  LUT5 #(
    .INIT(32'h00800000)) 
    \bdatw[12]_INST_0_i_34 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2] ),
        .I3(\stat_reg[2]_0 ),
        .I4(\stat_reg[2]_2 ),
        .O(gr4_bus1__0_27));
  LUT5 #(
    .INIT(32'h00000400)) 
    \bdatw[12]_INST_0_i_37 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2]_3 ),
        .I3(\stat_reg[2] ),
        .I4(\stat_reg[2]_0 ),
        .O(gr0_bus1__0_25));
  LUT5 #(
    .INIT(32'h04000000)) 
    \bdatw[12]_INST_0_i_38 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2] ),
        .I3(\stat_reg[2]_0 ),
        .I4(\stat_reg[2]_2 ),
        .O(gr7_bus1__0_37));
  LUT5 #(
    .INIT(32'h00400000)) 
    \bdatw[12]_INST_0_i_40 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2] ),
        .I3(\stat_reg[2]_0 ),
        .I4(\stat_reg[2]_2 ),
        .O(gr4_bus1__0_28));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \bdatw[12]_INST_0_i_41 
       (.I0(bank_sel[1]),
        .I1(ctl_selb[3]),
        .I2(ctl_selb[4]),
        .I3(\stat_reg[2]_0 ),
        .I4(\stat_reg[2] ),
        .I5(\bdatw[15]_INST_0_i_9_n_0 ),
        .O(gr3_bus1__0_40));
  LUT5 #(
    .INIT(32'h04000000)) 
    \bdatw[12]_INST_0_i_42 
       (.I0(\badr[15]_INST_0_i_2 [0]),
        .I1(\badr[15]_INST_0_i_2 [1]),
        .I2(\stat_reg[2]_3 ),
        .I3(\stat_reg[2]_0 ),
        .I4(\stat_reg[2] ),
        .O(gr2_bus1__0_19));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \bdatw[12]_INST_0_i_43 
       (.I0(bank_sel[2]),
        .I1(ctl_selb[3]),
        .I2(ctl_selb[4]),
        .I3(\stat_reg[2]_0 ),
        .I4(\stat_reg[2] ),
        .I5(\bdatw[15]_INST_0_i_9_n_0 ),
        .O(gr3_bus1__0_18));
  LUT5 #(
    .INIT(32'h04000000)) 
    \bdatw[12]_INST_0_i_44 
       (.I0(\badr[15]_INST_0_i_2 [0]),
        .I1(\badr[15]_INST_0_i_2 [1]),
        .I2(\stat_reg[2] ),
        .I3(\stat_reg[2]_0 ),
        .I4(\stat_reg[2]_2 ),
        .O(\rgf/bank02/bbuso2l/gr7_bus1__0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \bdatw[12]_INST_0_i_45 
       (.I0(\badr[15]_INST_0_i_2 [0]),
        .I1(\badr[15]_INST_0_i_2 [1]),
        .I2(\stat_reg[2]_0 ),
        .I3(\stat_reg[2] ),
        .I4(\stat_reg[2]_2 ),
        .O(\rgf/bank02/bbuso2l/gr6_bus1__0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \bdatw[12]_INST_0_i_46 
       (.I0(\badr[15]_INST_0_i_2 [0]),
        .I1(\badr[15]_INST_0_i_2 [1]),
        .I2(\stat_reg[2]_3 ),
        .I3(\stat_reg[2] ),
        .I4(\stat_reg[2]_0 ),
        .O(\rgf/bank02/bbuso2l/gr1_bus1__0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFAFBFF)) 
    \bdatw[12]_INST_0_i_47 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\bdatw[12]_INST_0_i_67_n_0 ),
        .I2(\bdatw[12]_INST_0_i_68_n_0 ),
        .I3(ir[12]),
        .I4(\bdatw[15]_INST_0_i_96_n_0 ),
        .I5(ctl_selb[3]),
        .O(\stat_reg[2]_3 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \bdatw[12]_INST_0_i_49 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2]_3 ),
        .I3(\stat_reg[2] ),
        .I4(\stat_reg[2]_0 ),
        .O(gr0_bus1__0_26));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [12]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [12]),
        .I4(\pc_reg[15]_0 [12]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[12]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \bdatw[12]_INST_0_i_50 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2] ),
        .I3(\stat_reg[2]_0 ),
        .I4(\stat_reg[2]_2 ),
        .O(gr7_bus1__0_38));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatw[12]_INST_0_i_52 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2] ),
        .I3(\stat_reg[2]_0 ),
        .I4(\stat_reg[2]_2 ),
        .O(gr4_bus1__0_29));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \bdatw[12]_INST_0_i_53 
       (.I0(bank_sel[0]),
        .I1(ctl_selb[3]),
        .I2(ctl_selb[4]),
        .I3(\stat_reg[2]_0 ),
        .I4(\stat_reg[2] ),
        .I5(\bdatw[15]_INST_0_i_9_n_0 ),
        .O(gr3_bus1__0_41));
  LUT3 #(
    .INIT(8'h20)) 
    \bdatw[12]_INST_0_i_54 
       (.I0(\stat_reg[2]_2 ),
        .I1(\stat_reg[2]_0 ),
        .I2(\stat_reg[2] ),
        .O(bbus_sel_0[0]));
  LUT3 #(
    .INIT(8'h10)) 
    \bdatw[12]_INST_0_i_55 
       (.I0(\stat_reg[2]_0 ),
        .I1(\stat_reg[2] ),
        .I2(\stat_reg[2]_2 ),
        .O(bbus_sel_0[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_56 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [12]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [12]),
        .I4(\bdatw[15]_INST_0_i_55_2 [12]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h0808AA88)) 
    \bdatw[12]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_17_n_0 ),
        .I2(\bdatw[12]_INST_0_i_15_n_0 ),
        .I3(ir[4]),
        .I4(\bdatw[12]_INST_0_i_16_n_0 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h88888888A8A8A8AA)) 
    \bdatw[12]_INST_0_i_67 
       (.I0(ir[13]),
        .I1(\bdatw[15]_INST_0_i_133_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(\bdatw[12]_INST_0_i_70_n_0 ),
        .I4(\bdatw[15]_INST_0_i_126_n_0 ),
        .I5(\bdatw[15]_INST_0_i_130_n_0 ),
        .O(\bdatw[12]_INST_0_i_67_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF6)) 
    \bdatw[12]_INST_0_i_68 
       (.I0(ir[13]),
        .I1(ir[14]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(ir[15]),
        .O(\bdatw[12]_INST_0_i_68_n_0 ));
  LUT4 #(
    .INIT(16'h80FF)) 
    \bdatw[12]_INST_0_i_69 
       (.I0(ir[11]),
        .I1(ir[7]),
        .I2(\bdatw[15]_INST_0_i_132_n_0 ),
        .I3(ir[8]),
        .O(\bdatw[12]_INST_0_i_69_n_0 ));
  LUT4 #(
    .INIT(16'hFF57)) 
    \bdatw[12]_INST_0_i_70 
       (.I0(ir[6]),
        .I1(crdy),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(ir[11]),
        .O(\bdatw[12]_INST_0_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[13]_INST_0 
       (.I0(\stat_reg[2]_1 ),
        .I1(\stat_reg[0]_1 ),
        .I2(\bdatw[13]_INST_0_i_1_n_0 ),
        .I3(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bdatw[13]));
  LUT6 #(
    .INIT(64'h00000000000000FB)) 
    \bdatw[13]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[13]),
        .I2(\stat_reg[2] ),
        .I3(p_1_in[13]),
        .I4(bdatw_13_sn_1),
        .I5(\bdatw[13]_INST_0_i_5_n_0 ),
        .O(\bdatw[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_10 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [5]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [5]),
        .I4(\pc_reg[15]_0 [5]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hABAB0000ABFFABFF)) 
    \bdatw[13]_INST_0_i_14 
       (.I0(\bdatw[10]_INST_0_i_13_n_0 ),
        .I1(\stat_reg[2] ),
        .I2(ir[4]),
        .I3(ir[5]),
        .I4(\bdatw[13]_INST_0_i_23_n_0 ),
        .I5(\bdatw[15]_INST_0_i_17_n_0 ),
        .O(\bdatw[13]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[13]_INST_0_i_15 
       (.I0(\bdatw[13]_INST_0_i_24_n_0 ),
        .I1(gr3_bus1__0_18),
        .I2(\bdatw[15]_INST_0_i_22 [8]),
        .I3(gr2_bus1__0_19),
        .I4(\bdatw[15]_INST_0_i_22_0 [8]),
        .O(\grn_reg[13]_1 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[13]_INST_0_i_19 
       (.I0(\bdatw[13]_INST_0_i_35_n_0 ),
        .I1(gr3_bus1__0_18),
        .I2(\bdatw[15]_INST_0_i_22 [0]),
        .I3(gr2_bus1__0_19),
        .I4(\bdatw[15]_INST_0_i_22_0 [0]),
        .O(\grn_reg[5]_1 ));
  LUT4 #(
    .INIT(16'h00FB)) 
    \bdatw[13]_INST_0_i_2 
       (.I0(\stat_reg[2] ),
        .I1(eir[5]),
        .I2(\bdatw[15]_INST_0_i_3_n_0 ),
        .I3(\bdatw[13]_INST_0_i_6_n_0 ),
        .O(\bdatw[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFFAABAAAAA)) 
    \bdatw[13]_INST_0_i_23 
       (.I0(\stat_reg[2]_0 ),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(ir[3]),
        .I4(ir[2]),
        .I5(\stat_reg[2] ),
        .O(\bdatw[13]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_24 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [13]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [13]),
        .I4(\bdatw[15]_INST_0_i_55_2 [13]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h00008008AAAAAAAA)) 
    \bdatw[13]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_17_n_0 ),
        .I2(\bdatw[13]_INST_0_i_7_n_0 ),
        .I3(\stat_reg[2] ),
        .I4(\stat_reg[2]_0 ),
        .I5(\bdatw[15]_INST_0_i_18_n_0 ),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_35 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [5]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [5]),
        .I4(\bdatw[15]_INST_0_i_55_2 [5]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [13]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [13]),
        .I4(\pc_reg[15]_0 [13]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFFFE)) 
    \bdatw[13]_INST_0_i_6 
       (.I0(\bdatw[13]_INST_0_i_10_n_0 ),
        .I1(\bdatw[13]_INST_0_i_2_0 ),
        .I2(bbus_b02[5]),
        .I3(\bdatw[13]_INST_0_i_2_1 ),
        .I4(\bdatw[13]_INST_0_i_14_n_0 ),
        .I5(\bdatw[15]_INST_0_i_19_n_0 ),
        .O(\bdatw[13]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \bdatw[13]_INST_0_i_7 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(ir[3]),
        .O(\bdatw[13]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[14]_INST_0 
       (.I0(\stat_reg[2]_1 ),
        .I1(\stat_reg[0]_1 ),
        .I2(\bdatw[14]_INST_0_i_1_n_0 ),
        .I3(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bdatw[14]));
  LUT6 #(
    .INIT(64'h00000000000000FB)) 
    \bdatw[14]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[14]),
        .I2(\stat_reg[2] ),
        .I3(p_1_in[14]),
        .I4(bdatw_14_sn_1),
        .I5(\bdatw[14]_INST_0_i_5_n_0 ),
        .O(\bdatw[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_10 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [6]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [6]),
        .I4(\pc_reg[15]_0 [6]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00BBAA00AFBFAFBF)) 
    \bdatw[14]_INST_0_i_14 
       (.I0(\bdatw[10]_INST_0_i_13_n_0 ),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(\stat_reg[2] ),
        .I4(\bdatw[14]_INST_0_i_23_n_0 ),
        .I5(\bdatw[15]_INST_0_i_17_n_0 ),
        .O(\bdatw[14]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[14]_INST_0_i_15 
       (.I0(\bdatw[14]_INST_0_i_24_n_0 ),
        .I1(gr3_bus1__0_18),
        .I2(\bdatw[15]_INST_0_i_22 [9]),
        .I3(gr2_bus1__0_19),
        .I4(\bdatw[15]_INST_0_i_22_0 [9]),
        .O(\grn_reg[14]_1 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[14]_INST_0_i_19 
       (.I0(\bdatw[14]_INST_0_i_35_n_0 ),
        .I1(gr3_bus1__0_18),
        .I2(\bdatw[15]_INST_0_i_22 [1]),
        .I3(gr2_bus1__0_19),
        .I4(\bdatw[15]_INST_0_i_22_0 [1]),
        .O(\grn_reg[6]_1 ));
  LUT4 #(
    .INIT(16'h00FB)) 
    \bdatw[14]_INST_0_i_2 
       (.I0(\stat_reg[2] ),
        .I1(eir[6]),
        .I2(\bdatw[15]_INST_0_i_3_n_0 ),
        .I3(\bdatw[14]_INST_0_i_6_n_0 ),
        .O(\bdatw[14]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAEAA)) 
    \bdatw[14]_INST_0_i_23 
       (.I0(\stat_reg[2]_0 ),
        .I1(ir[2]),
        .I2(ir[0]),
        .I3(ir[1]),
        .I4(ir[3]),
        .O(\bdatw[14]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_24 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [14]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [14]),
        .I4(\bdatw[15]_INST_0_i_55_2 [14]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h00008008AAAAAAAA)) 
    \bdatw[14]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_17_n_0 ),
        .I2(\bdatw[14]_INST_0_i_7_n_0 ),
        .I3(\stat_reg[2] ),
        .I4(\stat_reg[2]_0 ),
        .I5(\bdatw[15]_INST_0_i_18_n_0 ),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_35 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [6]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [6]),
        .I4(\bdatw[15]_INST_0_i_55_2 [6]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [14]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [14]),
        .I4(\pc_reg[15]_0 [14]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFFFE)) 
    \bdatw[14]_INST_0_i_6 
       (.I0(\bdatw[14]_INST_0_i_10_n_0 ),
        .I1(\bdatw[14]_INST_0_i_2_0 ),
        .I2(bbus_b02[6]),
        .I3(\bdatw[14]_INST_0_i_2_1 ),
        .I4(\bdatw[14]_INST_0_i_14_n_0 ),
        .I5(\bdatw[15]_INST_0_i_19_n_0 ),
        .O(\bdatw[14]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \bdatw[14]_INST_0_i_7 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(ir[2]),
        .I3(ir[3]),
        .O(\bdatw[14]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[15]_INST_0 
       (.I0(\stat_reg[2]_1 ),
        .I1(\stat_reg[0]_1 ),
        .I2(\bdatw[15]_INST_0_i_1_n_0 ),
        .I3(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bdatw[15]));
  LUT6 #(
    .INIT(64'h00000000000000FB)) 
    \bdatw[15]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[15]),
        .I2(\stat_reg[2] ),
        .I3(p_1_in[15]),
        .I4(bdatw_15_sn_1),
        .I5(\bdatw[15]_INST_0_i_7_n_0 ),
        .O(\bdatw[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5554545444444444)) 
    \bdatw[15]_INST_0_i_10 
       (.I0(Q[2]),
        .I1(\bdatw[15]_INST_0_i_36_n_0 ),
        .I2(\bdatw[15]_INST_0_i_37_n_0 ),
        .I3(\bdatw[15]_INST_0_i_38_n_0 ),
        .I4(\bdatw[15]_INST_0_i_39_n_0 ),
        .I5(\eir_fl_reg[1]_0 ),
        .O(\stat_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \bdatw[15]_INST_0_i_100 
       (.I0(ir[3]),
        .I1(ir[6]),
        .I2(ir[5]),
        .I3(ir[4]),
        .O(\bdatw[15]_INST_0_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_101 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [15]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [15]),
        .I4(\bdatw[15]_INST_0_i_55_2 [15]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_101_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \bdatw[15]_INST_0_i_102 
       (.I0(\stat_reg[2]_0 ),
        .I1(\stat_reg[2] ),
        .I2(\stat_reg[2]_3 ),
        .I3(\badr[15]_INST_0_i_2 [0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .O(gr0_bus1__0_42));
  LUT6 #(
    .INIT(64'h00000000080A0800)) 
    \bdatw[15]_INST_0_i_113 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\bdatw[12]_INST_0_i_67_n_0 ),
        .I2(\bdatw[12]_INST_0_i_68_n_0 ),
        .I3(ir[12]),
        .I4(\bdatw[15]_INST_0_i_96_n_0 ),
        .I5(ctl_selb[3]),
        .O(\stat_reg[2]_2 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_114 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [7]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [7]),
        .I4(\bdatw[15]_INST_0_i_55_2 [7]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h55555510FFFFFFFF)) 
    \bdatw[15]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_94_0 ),
        .I1(\bdatw[15]_INST_0_i_41_n_0 ),
        .I2(\fch_irq_lev[1]_i_4_n_0 ),
        .I3(ir[13]),
        .I4(ir[12]),
        .I5(ctl_fetch_ext_fl_i_3_n_0),
        .O(\bdatw[15]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[15]_INST_0_i_125 
       (.I0(ir[4]),
        .I1(ir[5]),
        .O(\bdatw[15]_INST_0_i_125_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \bdatw[15]_INST_0_i_126 
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(ir[10]),
        .O(\bdatw[15]_INST_0_i_126_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[15]_INST_0_i_127 
       (.I0(ir[8]),
        .I1(crdy),
        .O(\bdatw[15]_INST_0_i_127_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \bdatw[15]_INST_0_i_128 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[6]),
        .O(\bdatw[15]_INST_0_i_128_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF30FF58FF)) 
    \bdatw[15]_INST_0_i_129 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[8]),
        .I3(ir[1]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\bdatw[15]_INST_0_i_129_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88808888)) 
    \bdatw[15]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_38_n_0 ),
        .I1(\ccmd[2]_INST_0_i_7_n_0 ),
        .I2(\bdatw[15]_INST_0_i_42_n_0 ),
        .I3(\bdatw[15]_INST_0_i_43_n_0 ),
        .I4(\bdatw[15]_INST_0_i_44_n_0 ),
        .I5(\bdatw[15]_INST_0_i_45_n_0 ),
        .O(\bdatw[15]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0055005D)) 
    \bdatw[15]_INST_0_i_130 
       (.I0(\bdatw[15]_INST_0_i_151_n_0 ),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(ir[10]),
        .I3(ir[8]),
        .I4(ir[11]),
        .I5(Q[0]),
        .O(\bdatw[15]_INST_0_i_130_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFABFFFFFF)) 
    \bdatw[15]_INST_0_i_131 
       (.I0(ir[11]),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(crdy),
        .I3(ir[6]),
        .I4(ir[10]),
        .I5(\bdatw[15]_INST_0_i_152_n_0 ),
        .O(\bdatw[15]_INST_0_i_131_n_0 ));
  LUT6 #(
    .INIT(64'h2A262222A2AA2222)) 
    \bdatw[15]_INST_0_i_132 
       (.I0(ir[6]),
        .I1(ir[10]),
        .I2(ir[5]),
        .I3(ir[4]),
        .I4(ir[9]),
        .I5(ir[3]),
        .O(\bdatw[15]_INST_0_i_132_n_0 ));
  LUT6 #(
    .INIT(64'hF111000011110000)) 
    \bdatw[15]_INST_0_i_133 
       (.I0(\bdatw[15]_INST_0_i_153_n_0 ),
        .I1(Q[0]),
        .I2(ir[6]),
        .I3(ir[10]),
        .I4(ir[11]),
        .I5(\bdatw[15]_INST_0_i_154_n_0 ),
        .O(\bdatw[15]_INST_0_i_133_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001010001)) 
    \bdatw[15]_INST_0_i_134 
       (.I0(ir[11]),
        .I1(ir[13]),
        .I2(ir[5]),
        .I3(ir[3]),
        .I4(ir[2]),
        .I5(\ccmd[2]_INST_0_i_17_n_0 ),
        .O(\bdatw[15]_INST_0_i_134_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFAAEF)) 
    \bdatw[15]_INST_0_i_135 
       (.I0(\ccmd[4]_INST_0_i_22_n_0 ),
        .I1(ir[3]),
        .I2(ir[2]),
        .I3(ir[0]),
        .I4(ir[1]),
        .O(\bdatw[15]_INST_0_i_135_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \bdatw[15]_INST_0_i_136 
       (.I0(ir[5]),
        .I1(ir[9]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\bdatw[15]_INST_0_i_136_n_0 ));
  LUT5 #(
    .INIT(32'h5F5EBFBE)) 
    \bdatw[15]_INST_0_i_137 
       (.I0(ir[8]),
        .I1(ir[11]),
        .I2(ir[10]),
        .I3(ir[2]),
        .I4(ir[9]),
        .O(\bdatw[15]_INST_0_i_137_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_138 
       (.I0(ir[6]),
        .I1(ir[4]),
        .O(\bdatw[15]_INST_0_i_138_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \bdatw[15]_INST_0_i_139 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2]_2 ),
        .I3(\stat_reg[2] ),
        .I4(\stat_reg[2]_0 ),
        .O(gr5_bus1__0_35));
  LUT6 #(
    .INIT(64'hFFFFFFFFD0D0FFD0)) 
    \bdatw[15]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_46_n_0 ),
        .I1(\bdatw[15]_INST_0_i_47_n_0 ),
        .I2(\bdatw[15]_INST_0_i_4_0 ),
        .I3(Q[0]),
        .I4(\bdatw[15]_INST_0_i_49_n_0 ),
        .I5(\bdatw[15]_INST_0_i_50_n_0 ),
        .O(\bdatw[15]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \bdatw[15]_INST_0_i_140 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2]_0 ),
        .I3(\stat_reg[2] ),
        .I4(\stat_reg[2]_2 ),
        .O(gr6_bus1__0_20));
  LUT5 #(
    .INIT(32'h00000001)) 
    \bdatw[15]_INST_0_i_141 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2]_3 ),
        .I3(\stat_reg[2] ),
        .I4(\stat_reg[2]_0 ),
        .O(gr1_bus1__0_32));
  LUT5 #(
    .INIT(32'h01000000)) 
    \bdatw[15]_INST_0_i_142 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2]_3 ),
        .I3(\stat_reg[2]_0 ),
        .I4(\stat_reg[2] ),
        .O(gr2_bus1__0_23));
  LUT5 #(
    .INIT(32'h00000080)) 
    \bdatw[15]_INST_0_i_143 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2]_2 ),
        .I3(\stat_reg[2] ),
        .I4(\stat_reg[2]_0 ),
        .O(gr5_bus1__0_33));
  LUT5 #(
    .INIT(32'h80000000)) 
    \bdatw[15]_INST_0_i_144 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2]_0 ),
        .I3(\stat_reg[2] ),
        .I4(\stat_reg[2]_2 ),
        .O(gr6_bus1__0_16));
  LUT5 #(
    .INIT(32'h00000008)) 
    \bdatw[15]_INST_0_i_145 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2]_3 ),
        .I3(\stat_reg[2] ),
        .I4(\stat_reg[2]_0 ),
        .O(gr1_bus1__0_30));
  LUT5 #(
    .INIT(32'h08000000)) 
    \bdatw[15]_INST_0_i_146 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2]_3 ),
        .I3(\stat_reg[2]_0 ),
        .I4(\stat_reg[2] ),
        .O(gr2_bus1__0_21));
  LUT5 #(
    .INIT(32'h00000040)) 
    \bdatw[15]_INST_0_i_147 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2]_2 ),
        .I3(\stat_reg[2] ),
        .I4(\stat_reg[2]_0 ),
        .O(gr5_bus1__0_34));
  LUT5 #(
    .INIT(32'h40000000)) 
    \bdatw[15]_INST_0_i_148 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2]_0 ),
        .I3(\stat_reg[2] ),
        .I4(\stat_reg[2]_2 ),
        .O(gr6_bus1__0_17));
  LUT5 #(
    .INIT(32'h00000004)) 
    \bdatw[15]_INST_0_i_149 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2]_3 ),
        .I3(\stat_reg[2] ),
        .I4(\stat_reg[2]_0 ),
        .O(gr1_bus1__0_31));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \bdatw[15]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_51_n_0 ),
        .I1(\fch_irq_lev[1]_i_3_n_0 ),
        .I2(\bdatw[15]_INST_0_i_52_n_0 ),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\bdatw[15]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \bdatw[15]_INST_0_i_150 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2]_3 ),
        .I3(\stat_reg[2]_0 ),
        .I4(\stat_reg[2] ),
        .O(gr2_bus1__0_22));
  LUT6 #(
    .INIT(64'h113311003F3F3F00)) 
    \bdatw[15]_INST_0_i_151 
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(ir[10]),
        .I3(ir[11]),
        .I4(crdy),
        .I5(ir[6]),
        .O(\bdatw[15]_INST_0_i_151_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_152 
       (.I0(ir[7]),
        .I1(ir[9]),
        .O(\bdatw[15]_INST_0_i_152_n_0 ));
  LUT5 #(
    .INIT(32'hC7C7F4F7)) 
    \bdatw[15]_INST_0_i_153 
       (.I0(crdy),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[7]),
        .I4(ir[6]),
        .O(\bdatw[15]_INST_0_i_153_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \bdatw[15]_INST_0_i_154 
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(ir[8]),
        .O(\bdatw[15]_INST_0_i_154_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFEAAAAAAA)) 
    \bdatw[15]_INST_0_i_16 
       (.I0(\stat_reg[2]_0 ),
        .I1(ir[2]),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(ir[3]),
        .I5(\stat_reg[2] ),
        .O(\bdatw[15]_INST_0_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \bdatw[15]_INST_0_i_17 
       (.I0(\stat_reg[2]_0 ),
        .I1(\stat_reg[2] ),
        .I2(\bdatw[15]_INST_0_i_9_n_0 ),
        .O(\bdatw[15]_INST_0_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \bdatw[15]_INST_0_i_18 
       (.I0(\bdatw[10]_INST_0_i_13_n_0 ),
        .I1(ir[10]),
        .I2(\stat_reg[2] ),
        .O(\bdatw[15]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_19 
       (.I0(ctl_selb[4]),
        .I1(ctl_selb[3]),
        .O(\bdatw[15]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h00FB)) 
    \bdatw[15]_INST_0_i_2 
       (.I0(\stat_reg[2] ),
        .I1(eir[7]),
        .I2(\bdatw[15]_INST_0_i_3_n_0 ),
        .I3(\bdatw[15]_INST_0_i_8_n_0 ),
        .O(\bdatw[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \bdatw[15]_INST_0_i_20 
       (.I0(\stat_reg[2]_0 ),
        .I1(\stat_reg[2] ),
        .I2(ctl_selb[3]),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(ctl_selb[4]),
        .O(\stat_reg[2]_4 [1]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \bdatw[15]_INST_0_i_21 
       (.I0(\stat_reg[2]_0 ),
        .I1(\stat_reg[2] ),
        .I2(ctl_selb[3]),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(ctl_selb[4]),
        .O(\stat_reg[2]_4 [2]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \bdatw[15]_INST_0_i_24 
       (.I0(\stat_reg[2] ),
        .I1(\stat_reg[2]_0 ),
        .I2(\bdatw[15]_INST_0_i_9_n_0 ),
        .I3(ctl_selb[3]),
        .I4(ctl_selb[4]),
        .O(\rgf/bbus_sel_cr [4]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \bdatw[15]_INST_0_i_25 
       (.I0(\stat_reg[2] ),
        .I1(\stat_reg[2]_0 ),
        .I2(ctl_selb[3]),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(ctl_selb[4]),
        .O(\rgf/bbus_sel_cr [3]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatw[15]_INST_0_i_26 
       (.I0(\stat_reg[2] ),
        .I1(\stat_reg[2]_0 ),
        .I2(ctl_selb[3]),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(ctl_selb[4]),
        .O(\rgf/bbus_sel_cr [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_27 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [7]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [7]),
        .I4(\pc_reg[15]_0 [7]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[15]_INST_0_i_27_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[15]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\stat_reg[2]_0 ),
        .O(\bdatw[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABAB0000ABFFABFF)) 
    \bdatw[15]_INST_0_i_31 
       (.I0(\bdatw[10]_INST_0_i_13_n_0 ),
        .I1(\stat_reg[2] ),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(\bdatw[15]_INST_0_i_67_n_0 ),
        .I5(\bdatw[15]_INST_0_i_17_n_0 ),
        .O(\bdatw[15]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444F44)) 
    \bdatw[15]_INST_0_i_32 
       (.I0(\bdatw[15]_INST_0_i_68_n_0 ),
        .I1(\bdatw[15]_INST_0_i_69_n_0 ),
        .I2(\bdatw[15]_INST_0_i_70_n_0 ),
        .I3(\bdatw[14]_INST_0_i_7_n_0 ),
        .I4(\bdatw[15]_INST_0_i_71_n_0 ),
        .I5(ir[10]),
        .O(\bdatw[15]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0010101000000000)) 
    \bdatw[15]_INST_0_i_33 
       (.I0(\bdatw[15]_INST_0_i_72_n_0 ),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(ir[2]),
        .I3(ir[6]),
        .I4(ir[9]),
        .I5(\badr[15]_INST_0_i_102_n_0 ),
        .O(\bdatw[15]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h400040004000FFFF)) 
    \bdatw[15]_INST_0_i_34 
       (.I0(\bdatw[15]_INST_0_i_73_n_0 ),
        .I1(ir[2]),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(\bdatw[15]_INST_0_i_74_n_0 ),
        .I5(\bdatw[15]_INST_0_i_72_n_0 ),
        .O(\bdatw[15]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hEE2E2222FFFFFFFF)) 
    \bdatw[15]_INST_0_i_35 
       (.I0(\bdatw[15]_INST_0_i_75_n_0 ),
        .I1(ir[10]),
        .I2(\bdatw[15]_INST_0_i_76_n_0 ),
        .I3(\stat[2]_i_6_n_0 ),
        .I4(\bdatw[15]_INST_0_i_77_n_0 ),
        .I5(ir[11]),
        .O(\bdatw[15]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000400044444444)) 
    \bdatw[15]_INST_0_i_36 
       (.I0(Q[1]),
        .I1(\bdatw[15]_INST_0_i_10_0 ),
        .I2(\bdatw[15]_INST_0_i_79_n_0 ),
        .I3(ir[1]),
        .I4(\sp[15]_i_7_n_0 ),
        .I5(\bdatw[15]_INST_0_i_46_n_0 ),
        .O(\bdatw[15]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h54DCDCDD54DCDCDC)) 
    \bdatw[15]_INST_0_i_37 
       (.I0(ir[14]),
        .I1(ir[15]),
        .I2(\badr[15]_INST_0_i_94_0 ),
        .I3(ir[12]),
        .I4(ir[13]),
        .I5(\bdatw[15]_INST_0_i_80_n_0 ),
        .O(\bdatw[15]_INST_0_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[15]_INST_0_i_38 
       (.I0(ir[14]),
        .I1(ir[15]),
        .O(\bdatw[15]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFD0000)) 
    \bdatw[15]_INST_0_i_39 
       (.I0(\bdatw[15]_INST_0_i_81_n_0 ),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[15]_INST_0_i_83_n_0 ),
        .I3(\bdatw[15]_INST_0_i_84_n_0 ),
        .I4(\ccmd[2]_INST_0_i_7_n_0 ),
        .I5(\bdatw[15]_INST_0_i_45_n_0 ),
        .O(\bdatw[15]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF005D)) 
    \bdatw[15]_INST_0_i_4 
       (.I0(\eir_fl_reg[1]_0 ),
        .I1(\bdatw[15]_INST_0_i_12_n_0 ),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_14_n_0 ),
        .I4(Q[2]),
        .I5(\bdatw[15]_INST_0_i_15_n_0 ),
        .O(\stat_reg[2] ));
  LUT4 #(
    .INIT(16'h0020)) 
    \bdatw[15]_INST_0_i_41 
       (.I0(\bdatw[15]_INST_0_i_85_n_0 ),
        .I1(ir[4]),
        .I2(crdy),
        .I3(\fch_irq_lev[1]_i_5_n_0 ),
        .O(\bdatw[15]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000A200AAAAAAAA)) 
    \bdatw[15]_INST_0_i_42 
       (.I0(ir[11]),
        .I1(ir[6]),
        .I2(\stat[0]_i_22_n_0 ),
        .I3(ir[0]),
        .I4(\bdatw[15]_INST_0_i_86_n_0 ),
        .I5(\bdatw[15]_INST_0_i_87_n_0 ),
        .O(\bdatw[15]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h80FF808080808080)) 
    \bdatw[15]_INST_0_i_43 
       (.I0(ir[0]),
        .I1(ir[6]),
        .I2(\bdatw[15]_INST_0_i_88_n_0 ),
        .I3(\bdatw[15]_INST_0_i_89_n_0 ),
        .I4(ir[10]),
        .I5(\bdatw[15]_INST_0_i_90_n_0 ),
        .O(\bdatw[15]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF54FFFFFFFFFF)) 
    \bdatw[15]_INST_0_i_44 
       (.I0(\bdatw[15]_INST_0_i_91_n_0 ),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(\bdatw[15]_INST_0_i_92_n_0 ),
        .I3(ir[0]),
        .I4(ir[11]),
        .I5(crdy),
        .O(\bdatw[15]_INST_0_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h14414141)) 
    \bdatw[15]_INST_0_i_45 
       (.I0(ir[13]),
        .I1(ir[11]),
        .I2(\badr[15]_INST_0_i_2 [5]),
        .I3(ir[12]),
        .I4(\badr[15]_INST_0_i_2 [7]),
        .O(\bdatw[15]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \bdatw[15]_INST_0_i_46 
       (.I0(\bdatw[15]_INST_0_i_85_n_0 ),
        .I1(ir[10]),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(\bdatw[15]_INST_0_i_93_n_0 ),
        .O(\bdatw[15]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \bdatw[15]_INST_0_i_47 
       (.I0(\ccmd[3]_INST_0_i_4_n_0 ),
        .I1(ir[8]),
        .I2(ir[10]),
        .I3(ir[9]),
        .I4(ir[0]),
        .I5(\sp[15]_i_7_n_0 ),
        .O(\bdatw[15]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \bdatw[15]_INST_0_i_49 
       (.I0(Q[1]),
        .I1(\bdatw[15]_INST_0_i_51_n_0 ),
        .I2(\fch_irq_lev[1]_i_3_n_0 ),
        .I3(ir[10]),
        .I4(ir[11]),
        .I5(\bdatw[15]_INST_0_i_71_n_0 ),
        .O(\bdatw[15]_INST_0_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h4F00)) 
    \bdatw[15]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_17_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(\bdatw[15]_INST_0_i_19_n_0 ),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \bdatw[15]_INST_0_i_50 
       (.I0(ir[11]),
        .I1(crdy),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(Q[1]),
        .I4(\badrx[15]_INST_0_i_5_n_0 ),
        .O(\bdatw[15]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \bdatw[15]_INST_0_i_51 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(ir[2]),
        .I3(ir[0]),
        .O(\bdatw[15]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \bdatw[15]_INST_0_i_52 
       (.I0(\ccmd[4]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_94_n_0 ),
        .I2(ir[4]),
        .I3(ir[6]),
        .I4(ir[5]),
        .I5(ir[7]),
        .O(\bdatw[15]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h004000C300400000)) 
    \bdatw[15]_INST_0_i_53 
       (.I0(\bdatw[15]_INST_0_i_95_n_0 ),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(\bcmd[0] ),
        .I4(ir[12]),
        .I5(\bdatw[15]_INST_0_i_96_n_0 ),
        .O(ctl_selb[4]));
  LUT6 #(
    .INIT(64'h2222222202220202)) 
    \bdatw[15]_INST_0_i_54 
       (.I0(\bdatw[15]_INST_0_i_97_n_0 ),
        .I1(\bdatw[15]_INST_0_i_98_n_0 ),
        .I2(\bdatw[15]_INST_0_i_99_n_0 ),
        .I3(\stat[0]_i_22_n_0 ),
        .I4(ir[6]),
        .I5(\bdatw[15]_INST_0_i_100_n_0 ),
        .O(ctl_selb[3]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[15]_INST_0_i_55 
       (.I0(\bdatw[15]_INST_0_i_101_n_0 ),
        .I1(gr3_bus1__0_18),
        .I2(\bdatw[15]_INST_0_i_22 [10]),
        .I3(gr2_bus1__0_19),
        .I4(\bdatw[15]_INST_0_i_22_0 [10]),
        .O(\grn_reg[15]_1 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \bdatw[15]_INST_0_i_61 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2] ),
        .I3(\stat_reg[2]_0 ),
        .I4(\stat_reg[2]_2 ),
        .O(gr7_bus1__0_36));
  LUT5 #(
    .INIT(32'h00000800)) 
    \bdatw[15]_INST_0_i_62 
       (.I0(\badr[15]_INST_0_i_2 [1]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .I2(\stat_reg[2]_3 ),
        .I3(\stat_reg[2] ),
        .I4(\stat_reg[2]_0 ),
        .O(gr0_bus1__0_24));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[15]_INST_0_i_63 
       (.I0(\bdatw[15]_INST_0_i_114_n_0 ),
        .I1(gr3_bus1__0_18),
        .I2(\bdatw[15]_INST_0_i_22 [2]),
        .I3(gr2_bus1__0_19),
        .I4(\bdatw[15]_INST_0_i_22_0 [2]),
        .O(\grn_reg[7]_1 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFBAAAAAAA)) 
    \bdatw[15]_INST_0_i_67 
       (.I0(\stat_reg[2]_0 ),
        .I1(ir[3]),
        .I2(ir[0]),
        .I3(ir[2]),
        .I4(ir[1]),
        .I5(\stat_reg[2] ),
        .O(\bdatw[15]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \bdatw[15]_INST_0_i_68 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(ir[6]),
        .I5(ir[2]),
        .O(\bdatw[15]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \bdatw[15]_INST_0_i_69 
       (.I0(ir[13]),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(Q[0]),
        .I4(ir[15]),
        .I5(ir[11]),
        .O(\bdatw[15]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_7 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [15]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [15]),
        .I4(\pc_reg[15]_0 [15]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[15]_INST_0_i_70 
       (.I0(ir[14]),
        .I1(ir[12]),
        .I2(ir[11]),
        .I3(ir[13]),
        .I4(ir[15]),
        .I5(Q[0]),
        .O(\bdatw[15]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[15]_INST_0_i_71 
       (.I0(ir[7]),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(ir[4]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\bdatw[15]_INST_0_i_71_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[15]_INST_0_i_72 
       (.I0(ir[11]),
        .I1(crdy),
        .O(\bdatw[15]_INST_0_i_72_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF57)) 
    \bdatw[15]_INST_0_i_73 
       (.I0(ir[10]),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(ir[11]),
        .I4(crdy),
        .O(\bdatw[15]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h77F77FF7FFF7FFF7)) 
    \bdatw[15]_INST_0_i_74 
       (.I0(ir[2]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\bdatw[15]_INST_0_i_74_n_0 ));
  LUT5 #(
    .INIT(32'h2740FFFF)) 
    \bdatw[15]_INST_0_i_75 
       (.I0(ir[9]),
        .I1(ir[6]),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[2]),
        .O(\bdatw[15]_INST_0_i_75_n_0 ));
  LUT5 #(
    .INIT(32'h22820FF0)) 
    \bdatw[15]_INST_0_i_76 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(ir[4]),
        .I3(ir[5]),
        .I4(ir[6]),
        .O(\bdatw[15]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08F8FFFF)) 
    \bdatw[15]_INST_0_i_77 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(crdy),
        .I4(ir[2]),
        .I5(ir[9]),
        .O(\bdatw[15]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \bdatw[15]_INST_0_i_79 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(\bcmd[0]_INST_0_i_5_n_0 ),
        .I4(ir[12]),
        .I5(ir[11]),
        .O(\bdatw[15]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFFFE)) 
    \bdatw[15]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_27_n_0 ),
        .I1(\bdatw[15]_INST_0_i_2_0 ),
        .I2(bbus_b02[7]),
        .I3(\bdatw[15]_INST_0_i_2_1 ),
        .I4(\bdatw[15]_INST_0_i_31_n_0 ),
        .I5(\bdatw[15]_INST_0_i_19_n_0 ),
        .O(\bdatw[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \bdatw[15]_INST_0_i_80 
       (.I0(ir[3]),
        .I1(ir[2]),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(\bdatw[15]_INST_0_i_71_n_0 ),
        .I5(ir[10]),
        .O(\bdatw[15]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF54FFFFFFFFFF)) 
    \bdatw[15]_INST_0_i_81 
       (.I0(\bdatw[15]_INST_0_i_91_n_0 ),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(\bdatw[15]_INST_0_i_92_n_0 ),
        .I3(ir[1]),
        .I4(ir[11]),
        .I5(crdy),
        .O(\bdatw[15]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000800)) 
    \bdatw[15]_INST_0_i_82 
       (.I0(ir[6]),
        .I1(\bcmd[0]_INST_0_i_6_n_0 ),
        .I2(ir[3]),
        .I3(ir[1]),
        .I4(\bdatw[15]_INST_0_i_125_n_0 ),
        .I5(\stat[2]_i_6_n_0 ),
        .O(\bdatw[15]_INST_0_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \bdatw[15]_INST_0_i_83 
       (.I0(\bdatw[15]_INST_0_i_126_n_0 ),
        .I1(ir[11]),
        .I2(crdy),
        .I3(ir[8]),
        .I4(ir[6]),
        .I5(ir[1]),
        .O(\bdatw[15]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'h00202222AAAAAAAA)) 
    \bdatw[15]_INST_0_i_84 
       (.I0(ir[11]),
        .I1(\stat[0]_i_14_n_0 ),
        .I2(ir[1]),
        .I3(\bdatw[15]_INST_0_i_127_n_0 ),
        .I4(\bdatw[15]_INST_0_i_128_n_0 ),
        .I5(\bdatw[15]_INST_0_i_129_n_0 ),
        .O(\bdatw[15]_INST_0_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h40C4)) 
    \bdatw[15]_INST_0_i_85 
       (.I0(ir[3]),
        .I1(ir[2]),
        .I2(ir[0]),
        .I3(ir[1]),
        .O(\bdatw[15]_INST_0_i_85_n_0 ));
  LUT4 #(
    .INIT(16'hDFDD)) 
    \bdatw[15]_INST_0_i_86 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(crdy),
        .I3(ir[8]),
        .O(\bdatw[15]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF30FF58FF)) 
    \bdatw[15]_INST_0_i_87 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[8]),
        .I3(ir[0]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\bdatw[15]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h0202020000000000)) 
    \bdatw[15]_INST_0_i_88 
       (.I0(ir[8]),
        .I1(crdy),
        .I2(ir[11]),
        .I3(ir[9]),
        .I4(ir[7]),
        .I5(ir[10]),
        .O(\bdatw[15]_INST_0_i_88_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \bdatw[15]_INST_0_i_89 
       (.I0(ir[8]),
        .I1(ir[11]),
        .I2(ir[9]),
        .O(\bdatw[15]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h88888888AAA8AAAA)) 
    \bdatw[15]_INST_0_i_9 
       (.I0(\bcmd[1] ),
        .I1(\bdatw[15]_INST_0_i_32_n_0 ),
        .I2(\bdatw[15]_INST_0_i_33_n_0 ),
        .I3(\bdatw[15]_INST_0_i_34_n_0 ),
        .I4(\bdatw[15]_INST_0_i_35_n_0 ),
        .I5(\badrx[15]_INST_0_i_5_n_0 ),
        .O(\bdatw[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h08004C4480004840)) 
    \bdatw[15]_INST_0_i_90 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[3]),
        .I3(ir[0]),
        .I4(ir[4]),
        .I5(ir[5]),
        .O(\bdatw[15]_INST_0_i_90_n_0 ));
  LUT5 #(
    .INIT(32'hCB000300)) 
    \bdatw[15]_INST_0_i_91 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(ir[10]),
        .I4(ir[6]),
        .O(\bdatw[15]_INST_0_i_91_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bdatw[15]_INST_0_i_92 
       (.I0(ir[6]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[10]),
        .O(\bdatw[15]_INST_0_i_92_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bdatw[15]_INST_0_i_93 
       (.I0(ir[13]),
        .I1(ir[11]),
        .I2(ir[12]),
        .I3(ir[14]),
        .O(\bdatw[15]_INST_0_i_93_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_94 
       (.I0(ir[9]),
        .I1(ir[8]),
        .O(\bdatw[15]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EAEAAAEA)) 
    \bdatw[15]_INST_0_i_95 
       (.I0(\bdatw[15]_INST_0_i_130_n_0 ),
        .I1(\bdatw[15]_INST_0_i_131_n_0 ),
        .I2(ir[8]),
        .I3(\bdatw[15]_INST_0_i_132_n_0 ),
        .I4(\badr[15]_INST_0_i_107_n_0 ),
        .I5(\bdatw[15]_INST_0_i_133_n_0 ),
        .O(\bdatw[15]_INST_0_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FBF80000)) 
    \bdatw[15]_INST_0_i_96 
       (.I0(crdy),
        .I1(ir[2]),
        .I2(Q[0]),
        .I3(fch_irq_req),
        .I4(\bdatw[15]_INST_0_i_134_n_0 ),
        .I5(\bdatw[15]_INST_0_i_135_n_0 ),
        .O(\bdatw[15]_INST_0_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h03AB030003AA0300)) 
    \bdatw[15]_INST_0_i_97 
       (.I0(\ccmd[3]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_136_n_0 ),
        .I2(\bdatw[15]_INST_0_i_93_n_0 ),
        .I3(Q[0]),
        .I4(\bcmd[1] ),
        .I5(fch_irq_req),
        .O(\bdatw[15]_INST_0_i_97_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFBE)) 
    \bdatw[15]_INST_0_i_98 
       (.I0(\bdatw[15]_INST_0_i_137_n_0 ),
        .I1(ir[10]),
        .I2(ir[7]),
        .I3(ir[1]),
        .I4(ir[15]),
        .O(\bdatw[15]_INST_0_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFDDDDFFFFFFFF)) 
    \bdatw[15]_INST_0_i_99 
       (.I0(ir[0]),
        .I1(ir[7]),
        .I2(ir[5]),
        .I3(ir[8]),
        .I4(ir[3]),
        .I5(\bdatw[15]_INST_0_i_138_n_0 ),
        .O(\bdatw[15]_INST_0_i_99_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[1]_INST_0 
       (.I0(\stat_reg[2]_1 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(bdatw[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[2]_INST_0 
       (.I0(\stat_reg[2]_1 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bdatw[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[3]_INST_0 
       (.I0(\stat_reg[2]_1 ),
        .I1(\sr_reg[3]_0 ),
        .O(bdatw[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[4]_INST_0 
       (.I0(\stat_reg[2]_1 ),
        .I1(\sr_reg[4]_0 ),
        .O(bdatw[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[5]_INST_0 
       (.I0(\stat_reg[2]_1 ),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bdatw[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[6]_INST_0 
       (.I0(\stat_reg[2]_1 ),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bdatw[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[7]_INST_0 
       (.I0(\stat_reg[2]_1 ),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bdatw[7]));
  LUT4 #(
    .INIT(16'h8A02)) 
    \bdatw[8]_INST_0 
       (.I0(\stat_reg[2]_1 ),
        .I1(\stat_reg[0]_1 ),
        .I2(\bdatw[8]_INST_0_i_1_n_0 ),
        .I3(\sr_reg[0] ),
        .O(bdatw[8]));
  LUT6 #(
    .INIT(64'h00000000000000FB)) 
    \bdatw[8]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[8]),
        .I2(\stat_reg[2] ),
        .I3(p_1_in[8]),
        .I4(bdatw_8_sn_1),
        .I5(\bdatw[8]_INST_0_i_5_n_0 ),
        .O(\bdatw[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_10 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [0]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [0]),
        .I4(\pc_reg[15]_0 [0]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[8]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \bdatw[8]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[0]),
        .I2(\stat_reg[2] ),
        .O(\bdatw[8]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \bdatw[8]_INST_0_i_12 
       (.I0(\stat_reg[2]_0 ),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(ir[3]),
        .I4(ir[2]),
        .O(\bdatw[8]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \bdatw[8]_INST_0_i_15 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[0]),
        .O(\bdatw[8]_INST_0_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[8]_INST_0_i_16 
       (.I0(\bdatw[10]_INST_0_i_13_n_0 ),
        .I1(ir[0]),
        .O(\bdatw[8]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bdatw[8]_INST_0_i_2 
       (.I0(p_1_in[0]),
        .I1(bbus_o_0_sn_1),
        .I2(bbus_b02[0]),
        .I3(\bdatw[8]_INST_0_i_9_n_0 ),
        .I4(\bdatw[8]_INST_0_i_10_n_0 ),
        .I5(\bdatw[8]_INST_0_i_11_n_0 ),
        .O(\sr_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_22 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [0]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [0]),
        .I4(\bdatw[15]_INST_0_i_55_2 [0]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \bdatw[8]_INST_0_i_23 
       (.I0(\stat_reg[2]_0 ),
        .I1(\stat_reg[2] ),
        .I2(\stat_reg[2]_3 ),
        .I3(\badr[15]_INST_0_i_2 [1]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_4 [0]),
        .O(\sr_reg[1]_24 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[8]_INST_0_i_27 
       (.I0(\bdatw[8]_INST_0_i_37_n_0 ),
        .I1(gr3_bus1__0_18),
        .I2(\bdatw[15]_INST_0_i_22 [3]),
        .I3(gr2_bus1__0_19),
        .I4(\bdatw[15]_INST_0_i_22_0 [3]),
        .O(\grn_reg[8]_1 ));
  LUT6 #(
    .INIT(64'h800880AA80088008)) 
    \bdatw[8]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_17_n_0 ),
        .I2(\bdatw[8]_INST_0_i_12_n_0 ),
        .I3(\stat_reg[2] ),
        .I4(\bdatw[10]_INST_0_i_13_n_0 ),
        .I5(ir[7]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_37 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [8]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [8]),
        .I4(\bdatw[15]_INST_0_i_55_2 [8]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [8]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [8]),
        .I4(\pc_reg[15]_0 [8]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00008008A0A0A0A8)) 
    \bdatw[8]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_17_n_0 ),
        .I2(\stat_reg[2] ),
        .I3(\bdatw[8]_INST_0_i_15_n_0 ),
        .I4(\stat_reg[2]_0 ),
        .I5(\bdatw[8]_INST_0_i_16_n_0 ),
        .O(p_1_in[0]));
  LUT3 #(
    .INIT(8'hC8)) 
    \bdatw[8]_INST_0_i_9 
       (.I0(\stat_reg[2]_4 [2]),
        .I1(\badr[15]_INST_0_i_1_3 [0]),
        .I2(\stat_reg[2]_4 [1]),
        .O(\bdatw[8]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8A02)) 
    \bdatw[9]_INST_0 
       (.I0(\stat_reg[2]_1 ),
        .I1(\stat_reg[0]_1 ),
        .I2(\bdatw[9]_INST_0_i_1_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(bdatw[9]));
  LUT6 #(
    .INIT(64'h00000000000000FB)) 
    \bdatw[9]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[9]),
        .I2(\stat_reg[2] ),
        .I3(p_1_in[9]),
        .I4(\bdatw[9]_1 ),
        .I5(\bdatw[9]_INST_0_i_5_n_0 ),
        .O(\bdatw[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_10 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [1]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [1]),
        .I4(\pc_reg[15]_0 [1]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[9]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \bdatw[9]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[1]),
        .I2(\stat_reg[2] ),
        .O(\bdatw[9]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBFAAAAAAEA)) 
    \bdatw[9]_INST_0_i_12 
       (.I0(\stat_reg[2]_0 ),
        .I1(ir[0]),
        .I2(ir[3]),
        .I3(ir[2]),
        .I4(ir[1]),
        .I5(\stat_reg[2] ),
        .O(\bdatw[9]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFFFF03F5F3F5F)) 
    \bdatw[9]_INST_0_i_15 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(\stat_reg[2]_0 ),
        .I3(\stat_reg[2] ),
        .I4(\bdatw[15]_INST_0_i_51_n_0 ),
        .I5(\bdatw[15]_INST_0_i_9_n_0 ),
        .O(\bdatw[9]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bdatw[9]_INST_0_i_2 
       (.I0(p_1_in[1]),
        .I1(bdatw_9_sn_1),
        .I2(bbus_b02[1]),
        .I3(\bdatw[9]_0 ),
        .I4(\bdatw[9]_INST_0_i_10_n_0 ),
        .I5(\bdatw[9]_INST_0_i_11_n_0 ),
        .O(\bdatw[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_21 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [1]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [1]),
        .I4(\bdatw[15]_INST_0_i_55_2 [1]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \bdatw[9]_INST_0_i_22 
       (.I0(\stat_reg[2]_0 ),
        .I1(\stat_reg[2] ),
        .I2(\stat_reg[2]_3 ),
        .I3(\badr[15]_INST_0_i_2 [1]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_4 [1]),
        .O(\sr_reg[1]_23 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[9]_INST_0_i_26 
       (.I0(\bdatw[9]_INST_0_i_36_n_0 ),
        .I1(gr3_bus1__0_18),
        .I2(\bdatw[15]_INST_0_i_22 [4]),
        .I3(gr2_bus1__0_19),
        .I4(\bdatw[15]_INST_0_i_22_0 [4]),
        .O(\grn_reg[9]_1 ));
  LUT6 #(
    .INIT(64'h0808080808AA0808)) 
    \bdatw[9]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_17_n_0 ),
        .I2(\bdatw[9]_INST_0_i_12_n_0 ),
        .I3(\stat_reg[2] ),
        .I4(ir[8]),
        .I5(\bdatw[10]_INST_0_i_13_n_0 ),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_36 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_55_0 [9]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_55_1 [9]),
        .I4(\bdatw[15]_INST_0_i_55_2 [9]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [9]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_0 [9]),
        .I4(\pc_reg[15]_0 [9]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[9]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[9]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(\bdatw[9]_INST_0_i_15_n_0 ),
        .O(p_1_in[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[0]_INST_0 
       (.I0(ctl_copro),
        .I1(\ccmd[0]_INST_0_i_1_n_0 ),
        .O(ccmd[0]));
  LUT6 #(
    .INIT(64'hFFFFFFAEAAAAFFAE)) 
    \ccmd[0]_INST_0_i_1 
       (.I0(Q[2]),
        .I1(\ccmd[0]_INST_0_i_2_n_0 ),
        .I2(\ccmd[0]_INST_0_i_3_n_0 ),
        .I3(ir[15]),
        .I4(\ccmd[0]_INST_0_i_4_n_0 ),
        .I5(\ccmd[0]_INST_0_i_5_n_0 ),
        .O(\ccmd[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF05050FFFF5557)) 
    \ccmd[0]_INST_0_i_11 
       (.I0(ir[11]),
        .I1(ir[7]),
        .I2(ir[6]),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(\ccmd[0]_INST_0_i_16_n_0 ),
        .O(\ccmd[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h008200CF00000082)) 
    \ccmd[0]_INST_0_i_12 
       (.I0(crdy),
        .I1(ir[7]),
        .I2(ir[6]),
        .I3(Q[0]),
        .I4(ir[8]),
        .I5(ir[11]),
        .O(\ccmd[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFFFEFEFEF)) 
    \ccmd[0]_INST_0_i_13 
       (.I0(ir[9]),
        .I1(Q[1]),
        .I2(ir[10]),
        .I3(Q[0]),
        .I4(ir[7]),
        .I5(crdy),
        .O(\ccmd[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \ccmd[0]_INST_0_i_14 
       (.I0(\ccmd[0]_INST_0_i_17_n_0 ),
        .I1(Q[1]),
        .I2(ir[10]),
        .I3(ir[8]),
        .I4(ir[11]),
        .I5(ir[9]),
        .O(\ccmd[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \ccmd[0]_INST_0_i_15 
       (.I0(\ccmd[0]_INST_0_i_18_n_0 ),
        .I1(ir[10]),
        .I2(ir[11]),
        .I3(\bdatw[15]_INST_0_i_71_n_0 ),
        .I4(ir[14]),
        .I5(ir[15]),
        .O(\ccmd[0]_INST_0_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \ccmd[0]_INST_0_i_16 
       (.I0(\badrx[15]_INST_0_i_3_n_0 ),
        .I1(crdy),
        .I2(ir[11]),
        .O(\ccmd[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0002000008314000)) 
    \ccmd[0]_INST_0_i_17 
       (.I0(ir[3]),
        .I1(ir[6]),
        .I2(ir[5]),
        .I3(ir[4]),
        .I4(ir[7]),
        .I5(Q[0]),
        .O(\ccmd[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0007088008880888)) 
    \ccmd[0]_INST_0_i_18 
       (.I0(Q[0]),
        .I1(ir[2]),
        .I2(ir[1]),
        .I3(ir[3]),
        .I4(ir[0]),
        .I5(Q[1]),
        .O(\ccmd[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF6FFFC)) 
    \ccmd[0]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_2 [7]),
        .I1(ir[11]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(ir[12]),
        .I5(ir[14]),
        .O(\ccmd[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EAEAAEAA)) 
    \ccmd[0]_INST_0_i_3 
       (.I0(\ccmd[0]_INST_0_i_6_n_0 ),
        .I1(\ccmd[0]_INST_0_i_7_n_0 ),
        .I2(ir[8]),
        .I3(\badrx[15]_INST_0_i_3_n_0 ),
        .I4(ir[11]),
        .I5(\ccmd[0]_INST_0_i_8_n_0 ),
        .O(\ccmd[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000040FFFFFFFF)) 
    \ccmd[0]_INST_0_i_4 
       (.I0(ir[15]),
        .I1(\badr[15]_INST_0_i_2 [6]),
        .I2(\eir_fl_reg[1]_0 ),
        .I3(ir[12]),
        .I4(ir[14]),
        .I5(ir[13]),
        .O(\ccmd[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFACAFACAFACAFAFA)) 
    \ccmd[0]_INST_0_i_5 
       (.I0(\ccmd[0]_INST_0_i_9_n_0 ),
        .I1(Q[0]),
        .I2(ir[12]),
        .I3(Q[1]),
        .I4(\stat_reg[0]_3 ),
        .I5(ir[15]),
        .O(\ccmd[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0404FF04)) 
    \ccmd[0]_INST_0_i_6 
       (.I0(\ccmd[0]_INST_0_i_11_n_0 ),
        .I1(\eir_fl_reg[1]_0 ),
        .I2(ir[10]),
        .I3(\ccmd[0]_INST_0_i_12_n_0 ),
        .I4(\ccmd[0]_INST_0_i_13_n_0 ),
        .I5(\ccmd[0]_INST_0_i_14_n_0 ),
        .O(\ccmd[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1200020010000200)) 
    \ccmd[0]_INST_0_i_7 
       (.I0(Q[0]),
        .I1(ir[9]),
        .I2(Q[1]),
        .I3(ir[10]),
        .I4(ir[7]),
        .I5(crdy),
        .O(\ccmd[0]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ccmd[0]_INST_0_i_8 
       (.I0(ir[14]),
        .I1(ir[12]),
        .O(\ccmd[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7555DFF)) 
    \ccmd[0]_INST_0_i_9 
       (.I0(\eir_fl_reg[1]_0 ),
        .I1(\badr[15]_INST_0_i_2 [5]),
        .I2(ir[15]),
        .I3(ir[14]),
        .I4(ir[11]),
        .I5(\ccmd[0]_INST_0_i_15_n_0 ),
        .O(\ccmd[0]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[1]_INST_0 
       (.I0(ctl_copro),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .O(ccmd[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFDDDD00F0)) 
    \ccmd[1]_INST_0_i_1 
       (.I0(\ccmd[1]_INST_0_i_2_n_0 ),
        .I1(\ccmd[1]_INST_0_i_3_n_0 ),
        .I2(\ccmd[1]_INST_0_i_4_n_0 ),
        .I3(\ccmd[1]_INST_0_i_5_n_0 ),
        .I4(\ccmd[1]_INST_0_i_6_n_0 ),
        .I5(Q[1]),
        .O(\ccmd[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \ccmd[1]_INST_0_i_10 
       (.I0(\ccmd[4]_INST_0_i_22_n_0 ),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(Q[0]),
        .I5(\ccmd[1]_INST_0_i_18_n_0 ),
        .O(\ccmd[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFF9FFFBFFFBFFFF)) 
    \ccmd[1]_INST_0_i_11 
       (.I0(ir[5]),
        .I1(ir[7]),
        .I2(\ccmd[1]_INST_0_i_7_0 ),
        .I3(\bcmd[2]_INST_0_i_2_n_0 ),
        .I4(ir[4]),
        .I5(\ccmd[1]_INST_0_i_19_n_0 ),
        .O(\ccmd[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000100010000000F)) 
    \ccmd[1]_INST_0_i_12 
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(Q[0]),
        .I3(ir[8]),
        .I4(ir[6]),
        .I5(ir[10]),
        .O(\ccmd[1]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \ccmd[1]_INST_0_i_14 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(ir[7]),
        .O(\ccmd[1]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4444004044400040)) 
    \ccmd[1]_INST_0_i_15 
       (.I0(\stat[0]_i_14_n_0 ),
        .I1(ir[8]),
        .I2(Q[0]),
        .I3(ir[7]),
        .I4(crdy),
        .I5(ir[6]),
        .O(\ccmd[1]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000200020F2A0022)) 
    \ccmd[1]_INST_0_i_16 
       (.I0(crdy),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(ir[9]),
        .I3(Q[0]),
        .I4(ir[10]),
        .I5(ir[8]),
        .O(\ccmd[1]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \ccmd[1]_INST_0_i_17 
       (.I0(ir[2]),
        .I1(\ccmd[1]_INST_0_i_20_n_0 ),
        .I2(ir[11]),
        .I3(rst_n_fl_reg_0),
        .I4(ir[10]),
        .I5(\ccmd[2]_INST_0_i_17_n_0 ),
        .O(\ccmd[1]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ccmd[1]_INST_0_i_18 
       (.I0(ir[13]),
        .I1(ir[11]),
        .I2(ir[15]),
        .I3(ir[14]),
        .O(\ccmd[1]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[1]_INST_0_i_19 
       (.I0(ir[6]),
        .I1(ir[3]),
        .O(\ccmd[1]_INST_0_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[1]_INST_0_i_2 
       (.I0(ir[14]),
        .I1(Q[2]),
        .O(\ccmd[1]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ccmd[1]_INST_0_i_20 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[5]),
        .I3(ir[4]),
        .O(\ccmd[1]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEFFFF00AEFF)) 
    \ccmd[1]_INST_0_i_3 
       (.I0(\ccmd[1]_INST_0_i_7_n_0 ),
        .I1(\ccmd[1]_INST_0_i_8_n_0 ),
        .I2(ir[11]),
        .I3(ir[13]),
        .I4(ir[15]),
        .I5(Q[0]),
        .O(\ccmd[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF111F5F1)) 
    \ccmd[1]_INST_0_i_4 
       (.I0(\ccmd[1]_INST_0_i_9_n_0 ),
        .I1(ir[15]),
        .I2(ir[11]),
        .I3(ir[14]),
        .I4(ir[13]),
        .I5(\ccmd[2]_INST_0_i_1_0 ),
        .O(\ccmd[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000110011000020)) 
    \ccmd[1]_INST_0_i_5 
       (.I0(Q[2]),
        .I1(\ccmd[1]_INST_0_i_10_n_0 ),
        .I2(ir[0]),
        .I3(ir[2]),
        .I4(ir[3]),
        .I5(ir[1]),
        .O(\ccmd[1]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \ccmd[1]_INST_0_i_6 
       (.I0(ir[12]),
        .I1(ir[13]),
        .I2(ir[15]),
        .I3(ir[11]),
        .O(\ccmd[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000202020)) 
    \ccmd[1]_INST_0_i_7 
       (.I0(\ccmd[1]_INST_0_i_11_n_0 ),
        .I1(\ccmd[1]_INST_0_i_12_n_0 ),
        .I2(ir[11]),
        .I3(\ccmd[1]_INST_0_i_3_0 ),
        .I4(\ccmd[1]_INST_0_i_14_n_0 ),
        .I5(\ccmd[1]_INST_0_i_15_n_0 ),
        .O(\ccmd[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h01A5C1E5FFFFFFFF)) 
    \ccmd[1]_INST_0_i_8 
       (.I0(ir[6]),
        .I1(Q[0]),
        .I2(ir[7]),
        .I3(ir[10]),
        .I4(crdy),
        .I5(\ccmd[1]_INST_0_i_16_n_0 ),
        .O(\ccmd[1]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h2AA02000)) 
    \ccmd[1]_INST_0_i_9 
       (.I0(\ccmd[1]_INST_0_i_17_n_0 ),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(ir[3]),
        .I4(crdy),
        .O(\ccmd[1]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[2]_INST_0 
       (.I0(ctl_copro),
        .I1(\ccmd[2]_INST_0_i_1_n_0 ),
        .O(ccmd[2]));
  LUT6 #(
    .INIT(64'h2220222222202220)) 
    \ccmd[2]_INST_0_i_1 
       (.I0(\ccmd[2]_INST_0_i_2_n_0 ),
        .I1(\ccmd[2]_INST_0_i_3_n_0 ),
        .I2(Q[2]),
        .I3(ir[12]),
        .I4(\ccmd[2]_INST_0_i_4_n_0 ),
        .I5(\ccmd[2]_INST_0_i_5_n_0 ),
        .O(\ccmd[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \ccmd[2]_INST_0_i_10 
       (.I0(\ccmd[2]_INST_0_i_17_n_0 ),
        .I1(Q[1]),
        .I2(ir[12]),
        .I3(rst_n_fl_reg_0),
        .I4(ir[15]),
        .I5(\ccmd[2]_INST_0_i_18_n_0 ),
        .O(\ccmd[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002F00)) 
    \ccmd[2]_INST_0_i_11 
       (.I0(ir[14]),
        .I1(ir[11]),
        .I2(ir[13]),
        .I3(ir[15]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\ccmd[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \ccmd[2]_INST_0_i_12 
       (.I0(ir[10]),
        .I1(ir[11]),
        .I2(ir[9]),
        .I3(Q[1]),
        .I4(ir[7]),
        .I5(ir[8]),
        .O(\ccmd[2]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0600)) 
    \ccmd[2]_INST_0_i_13 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(ir[0]),
        .I3(ir[2]),
        .O(\ccmd[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \ccmd[2]_INST_0_i_14 
       (.I0(\ccmd[2]_INST_0_i_19_n_0 ),
        .I1(\ccmd[2]_INST_0_i_20_n_0 ),
        .I2(ir[2]),
        .I3(ir[8]),
        .I4(\ccmd[2]_INST_0_i_21_n_0 ),
        .I5(\ccmd[4]_INST_0_i_16_n_0 ),
        .O(\ccmd[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF10)) 
    \ccmd[2]_INST_0_i_15 
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(ir[11]),
        .I3(\ccmd[2]_INST_0_i_22_n_0 ),
        .I4(Q[1]),
        .I5(\ccmd[2]_INST_0_i_23_n_0 ),
        .O(\ccmd[2]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h8888BB8B)) 
    \ccmd[2]_INST_0_i_16 
       (.I0(\ccmd[2]_INST_0_i_24_n_0 ),
        .I1(ir[9]),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(ir[11]),
        .I4(\ccmd[2]_INST_0_i_25_n_0 ),
        .O(\ccmd[2]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ccmd[2]_INST_0_i_17 
       (.I0(ir[7]),
        .I1(ir[6]),
        .O(\ccmd[2]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \ccmd[2]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_51_n_0 ),
        .I1(\ccmd[4]_INST_0_i_16_n_0 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\bdatw[15]_INST_0_i_94_n_0 ),
        .I5(\ccmd[3]_INST_0_i_20_n_0 ),
        .O(\ccmd[2]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ccmd[2]_INST_0_i_19 
       (.I0(ir[7]),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(ir[4]),
        .I4(ir[9]),
        .I5(Q[1]),
        .O(\ccmd[2]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFD3FF)) 
    \ccmd[2]_INST_0_i_2 
       (.I0(\ccmd[2]_INST_0_i_6_n_0 ),
        .I1(ir[15]),
        .I2(ir[14]),
        .I3(\ccmd[2]_INST_0_i_7_n_0 ),
        .I4(\ccmd[2]_INST_0_i_1_0 ),
        .I5(Q[1]),
        .O(\ccmd[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF444FCCC4444)) 
    \ccmd[2]_INST_0_i_20 
       (.I0(ir[15]),
        .I1(ir[14]),
        .I2(ir[3]),
        .I3(ir[1]),
        .I4(Q[0]),
        .I5(ir[0]),
        .O(\ccmd[2]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[2]_INST_0_i_21 
       (.I0(ir[15]),
        .I1(ir[13]),
        .O(\ccmd[2]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h000004000000F400)) 
    \ccmd[2]_INST_0_i_22 
       (.I0(\badrx[15]_INST_0_i_3_n_0 ),
        .I1(ir[6]),
        .I2(ir[10]),
        .I3(ir[7]),
        .I4(\bdatw[15]_INST_0_i_72_n_0 ),
        .I5(ir[9]),
        .O(\ccmd[2]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0300008000000380)) 
    \ccmd[2]_INST_0_i_23 
       (.I0(ir[7]),
        .I1(ir[10]),
        .I2(Q[1]),
        .I3(ir[11]),
        .I4(ir[9]),
        .I5(ir[6]),
        .O(\ccmd[2]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002210000)) 
    \ccmd[2]_INST_0_i_24 
       (.I0(ir[7]),
        .I1(\ccmd[2]_INST_0_i_16_0 ),
        .I2(ir[5]),
        .I3(ir[4]),
        .I4(ir[11]),
        .I5(ir[6]),
        .O(\ccmd[2]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h1FFFFFFD1FFFFDFD)) 
    \ccmd[2]_INST_0_i_25 
       (.I0(crdy),
        .I1(Q[1]),
        .I2(ir[10]),
        .I3(ir[7]),
        .I4(ir[11]),
        .I5(ir[6]),
        .O(\ccmd[2]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20220000)) 
    \ccmd[2]_INST_0_i_3 
       (.I0(ir[15]),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[11]),
        .I4(ctl_fetch_fl_reg_2),
        .I5(\ccmd[2]_INST_0_i_10_n_0 ),
        .O(\ccmd[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \ccmd[2]_INST_0_i_4 
       (.I0(\ccmd[2]_INST_0_i_11_n_0 ),
        .I1(\ccmd[2]_INST_0_i_12_n_0 ),
        .I2(rst_n_fl_reg_0),
        .I3(ir[15]),
        .I4(\stat[2]_i_5_n_0 ),
        .I5(\ccmd[2]_INST_0_i_13_n_0 ),
        .O(\ccmd[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01110FF1)) 
    \ccmd[2]_INST_0_i_5 
       (.I0(Q[0]),
        .I1(crdy),
        .I2(ir[3]),
        .I3(ir[1]),
        .I4(ir[0]),
        .I5(\ccmd[2]_INST_0_i_14_n_0 ),
        .O(\ccmd[2]_INST_0_i_5_n_0 ));
  MUXF7 \ccmd[2]_INST_0_i_6 
       (.I0(\ccmd[2]_INST_0_i_15_n_0 ),
        .I1(\ccmd[2]_INST_0_i_16_n_0 ),
        .O(\ccmd[2]_INST_0_i_6_n_0 ),
        .S(ir[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[2]_INST_0_i_7 
       (.I0(ir[12]),
        .I1(ir[13]),
        .O(\ccmd[2]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[3]_INST_0 
       (.I0(ctl_copro),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .O(ccmd[3]));
  LUT6 #(
    .INIT(64'h00000000FFFFFF8A)) 
    \ccmd[3]_INST_0_i_1 
       (.I0(\ccmd[3]_INST_0_i_2_n_0 ),
        .I1(\ccmd[3]_INST_0_i_3_n_0 ),
        .I2(\ccmd[3]_INST_0_i_4_n_0 ),
        .I3(Q[2]),
        .I4(ir[15]),
        .I5(\ccmd[3]_INST_0_i_5_n_0 ),
        .O(\ccmd[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB484)) 
    \ccmd[3]_INST_0_i_10 
       (.I0(ir[14]),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(ir[11]),
        .I4(Q[2]),
        .O(\ccmd[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hDD1DFFFFFFFFFFFF)) 
    \ccmd[3]_INST_0_i_11 
       (.I0(crdy),
        .I1(Q[1]),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(Q[0]),
        .I4(\ccmd[3]_INST_0_i_18_n_0 ),
        .I5(\ccmd[3]_INST_0_i_19_n_0 ),
        .O(\ccmd[3]_INST_0_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \ccmd[3]_INST_0_i_12 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .O(\ccmd[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5F5FFFFFFFFFBAFF)) 
    \ccmd[3]_INST_0_i_13 
       (.I0(ir[7]),
        .I1(crdy),
        .I2(\eir_fl_reg[1]_0 ),
        .I3(\ccmd[3]_INST_0_i_20_n_0 ),
        .I4(ir[12]),
        .I5(ir[8]),
        .O(\ccmd[3]_INST_0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \ccmd[3]_INST_0_i_14 
       (.I0(ir[11]),
        .I1(ir[9]),
        .I2(ir[10]),
        .O(\ccmd[3]_INST_0_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[3]_INST_0_i_15 
       (.I0(crdy),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .O(\ccmd[3]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFABEFFE)) 
    \ccmd[3]_INST_0_i_16 
       (.I0(ir[5]),
        .I1(ir[4]),
        .I2(ir[3]),
        .I3(Q[0]),
        .I4(ir[6]),
        .O(\ccmd[3]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h0000A3A0)) 
    \ccmd[3]_INST_0_i_17 
       (.I0(crdy),
        .I1(Q[0]),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ir[9]),
        .O(\ccmd[3]_INST_0_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \ccmd[3]_INST_0_i_18 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(ir[8]),
        .O(\ccmd[3]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[3]_INST_0_i_19 
       (.I0(ir[7]),
        .I1(ir[9]),
        .O(\ccmd[3]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0EE00EEEEEEEEEEE)) 
    \ccmd[3]_INST_0_i_2 
       (.I0(\ccmd[3]_INST_0_i_6_n_0 ),
        .I1(\ccmd[4]_INST_0_i_17_n_0 ),
        .I2(ir[7]),
        .I3(ir[6]),
        .I4(\ccmd[3]_INST_0_i_7_n_0 ),
        .I5(\ccmd[3]_INST_0_i_8_n_0 ),
        .O(\ccmd[3]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[3]_INST_0_i_20 
       (.I0(ir[4]),
        .I1(ir[5]),
        .O(\ccmd[3]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0FFDFD0FFFFDFDFF)) 
    \ccmd[3]_INST_0_i_3 
       (.I0(\eir_fl_reg[1]_0 ),
        .I1(ir[9]),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[10]),
        .I5(\ccmd[3]_INST_0_i_9_n_0 ),
        .O(\ccmd[3]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \ccmd[3]_INST_0_i_4 
       (.I0(ir[11]),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(ir[14]),
        .O(\ccmd[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010101000)) 
    \ccmd[3]_INST_0_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(ir[15]),
        .I3(ir[14]),
        .I4(ir[12]),
        .I5(\ccmd[3]_INST_0_i_10_n_0 ),
        .O(\ccmd[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAA2AAAAAAAAAAAA)) 
    \ccmd[3]_INST_0_i_6 
       (.I0(\ccmd[3]_INST_0_i_11_n_0 ),
        .I1(crdy),
        .I2(ir[11]),
        .I3(ir[10]),
        .I4(\eir_fl_reg[1]_0 ),
        .I5(\ccmd[3]_INST_0_i_12_n_0 ),
        .O(\ccmd[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00040FF400040000)) 
    \ccmd[3]_INST_0_i_7 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(ir[1]),
        .I3(ir[3]),
        .I4(ir[0]),
        .I5(ir[2]),
        .O(\ccmd[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4040404040404044)) 
    \ccmd[3]_INST_0_i_8 
       (.I0(\ccmd[3]_INST_0_i_13_n_0 ),
        .I1(\ccmd[3]_INST_0_i_14_n_0 ),
        .I2(\ccmd[3]_INST_0_i_15_n_0 ),
        .I3(ir[13]),
        .I4(ir[12]),
        .I5(ir[14]),
        .O(\ccmd[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3377333303440000)) 
    \ccmd[3]_INST_0_i_9 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\ccmd[3]_INST_0_i_16_n_0 ),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(\ccmd[3]_INST_0_i_17_n_0 ),
        .O(\ccmd[3]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0 
       (.I0(ctl_copro),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .O(ccmd[4]));
  LUT6 #(
    .INIT(64'h1010101010101110)) 
    \ccmd[4]_INST_0_i_1 
       (.I0(ir[15]),
        .I1(Q[2]),
        .I2(\ccmd[4]_INST_0_i_3_n_0 ),
        .I3(\ccmd[4]_INST_0_i_4_n_0 ),
        .I4(\bcmd[0]_INST_0_i_5_n_0 ),
        .I5(\ccmd[4]_INST_0_i_5_n_0 ),
        .O(ctl_copro));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \ccmd[4]_INST_0_i_10 
       (.I0(\ccmd[4]_INST_0_i_19_n_0 ),
        .I1(ir[2]),
        .I2(ir[7]),
        .I3(\ccmd[4]_INST_0_i_20_n_0 ),
        .I4(\ccmd[4]_INST_0_i_21_n_0 ),
        .I5(\ccmd[4]_INST_0_i_22_n_0 ),
        .O(\ccmd[4]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \ccmd[4]_INST_0_i_12 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[7]),
        .I3(ir[8]),
        .O(\ccmd[4]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5440FFFF)) 
    \ccmd[4]_INST_0_i_13 
       (.I0(Q[0]),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(ir[10]),
        .I4(\ccmd[4]_INST_0_i_23_n_0 ),
        .I5(Q[1]),
        .O(\ccmd[4]_INST_0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \ccmd[4]_INST_0_i_14 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(ir[9]),
        .O(\ccmd[4]_INST_0_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ccmd[4]_INST_0_i_16 
       (.I0(ir[11]),
        .I1(ir[10]),
        .O(\ccmd[4]_INST_0_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \ccmd[4]_INST_0_i_17 
       (.I0(ir[13]),
        .I1(ir[14]),
        .I2(ir[12]),
        .O(\ccmd[4]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h8AAA8A8A8AAA8AAA)) 
    \ccmd[4]_INST_0_i_18 
       (.I0(crdy),
        .I1(Q[0]),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(ir[6]),
        .I5(ir[10]),
        .O(\ccmd[4]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FE54FEFE)) 
    \ccmd[4]_INST_0_i_19 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(crdy),
        .I3(\ccmd[4]_INST_0_i_24_n_0 ),
        .I4(ir[0]),
        .I5(\ccmd[4]_INST_0_i_25_n_0 ),
        .O(\ccmd[4]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE00000)) 
    \ccmd[4]_INST_0_i_2 
       (.I0(ir[15]),
        .I1(\ccmd[4]_INST_0_i_6_n_0 ),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(\ccmd[4]_INST_0_i_7_n_0 ),
        .I4(ir[12]),
        .I5(\ccmd[4]_INST_0_i_8_n_0 ),
        .O(\ccmd[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ccmd[4]_INST_0_i_20 
       (.I0(ir[3]),
        .I1(ir[1]),
        .O(\ccmd[4]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[4]_INST_0_i_21 
       (.I0(ir[12]),
        .I1(ir[11]),
        .O(\ccmd[4]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ccmd[4]_INST_0_i_22 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[4]),
        .O(\ccmd[4]_INST_0_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \ccmd[4]_INST_0_i_23 
       (.I0(crdy),
        .I1(ir[7]),
        .I2(Q[0]),
        .O(\ccmd[4]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[4]_INST_0_i_24 
       (.I0(ir[3]),
        .I1(ir[1]),
        .O(\ccmd[4]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0020FFFFFFFF)) 
    \ccmd[4]_INST_0_i_25 
       (.I0(Q[1]),
        .I1(ir[1]),
        .I2(Q[0]),
        .I3(ir[3]),
        .I4(\bcmd[0]_INST_0_i_10_n_0 ),
        .I5(rst_n_fl_reg_0),
        .O(\ccmd[4]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10115410)) 
    \ccmd[4]_INST_0_i_3 
       (.I0(\ccmd[4]_INST_0_i_9_n_0 ),
        .I1(Q[1]),
        .I2(crdy),
        .I3(ir[7]),
        .I4(Q[0]),
        .I5(\ccmd[4]_INST_0_i_10_n_0 ),
        .O(\ccmd[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0_i_4 
       (.I0(ir[12]),
        .I1(ir[11]),
        .O(\ccmd[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDFDF000FDFDFD0DF)) 
    \ccmd[4]_INST_0_i_5 
       (.I0(\ccmd[4]_INST_0_i_1_0 ),
        .I1(\ccmd[4]_INST_0_i_12_n_0 ),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(crdy),
        .I4(\ccmd[4]_INST_0_i_13_n_0 ),
        .I5(\ccmd[4]_INST_0_i_14_n_0 ),
        .O(\ccmd[4]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ccmd[4]_INST_0_i_6 
       (.I0(ir[7]),
        .I1(ir[8]),
        .O(\ccmd[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFD00FDFDFDFD)) 
    \ccmd[4]_INST_0_i_7 
       (.I0(ir[6]),
        .I1(ir[9]),
        .I2(\ccmd[1]_INST_0_i_7_0 ),
        .I3(\ccmd[4]_INST_0_i_16_n_0 ),
        .I4(\ccmd[4]_INST_0_i_17_n_0 ),
        .I5(\ccmd[4]_INST_0_i_18_n_0 ),
        .O(\ccmd[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFDFDFDFDF)) 
    \ccmd[4]_INST_0_i_8 
       (.I0(\bcmd[1] ),
        .I1(\bcmd[0]_INST_0_i_5_n_0 ),
        .I2(ir[12]),
        .I3(Q[0]),
        .I4(ir[15]),
        .I5(ir[11]),
        .O(\ccmd[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \ccmd[4]_INST_0_i_9 
       (.I0(\bcmd[0]_INST_0_i_5_n_0 ),
        .I1(ir[11]),
        .I2(ir[10]),
        .I3(ir[12]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\ccmd[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    ctl_fetch_ext_fl_i_1
       (.I0(ctl_fetch_ext_fl_i_2_n_0),
        .I1(ctl_fetch_ext_fl_i_3_n_0),
        .I2(ctl_fetch_ext_fl_i_4_n_0),
        .I3(\bcmd[0]_INST_0_i_10_n_0 ),
        .I4(ctl_fetch_ext_fl_i_5_n_0),
        .I5(ctl_fetch_ext_fl_i_6_n_0),
        .O(ctl_fetch_ext));
  LUT2 #(
    .INIT(4'hE)) 
    ctl_fetch_ext_fl_i_2
       (.I0(ir[7]),
        .I1(ir[8]),
        .O(ctl_fetch_ext_fl_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_ext_fl_i_3
       (.I0(ir[14]),
        .I1(ir[15]),
        .O(ctl_fetch_ext_fl_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_ext_fl_i_4
       (.I0(ir[12]),
        .I1(ir[13]),
        .O(ctl_fetch_ext_fl_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    ctl_fetch_ext_fl_i_5
       (.I0(ir[11]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ir[9]),
        .I4(ctl_fetch_ext_fl_i_7_n_0),
        .I5(ctl_fetch_ext_fl_reg_0),
        .O(ctl_fetch_ext_fl_i_5_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    ctl_fetch_ext_fl_i_6
       (.I0(ir[2]),
        .I1(ir[4]),
        .I2(ir[3]),
        .O(ctl_fetch_ext_fl_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ctl_fetch_ext_fl_i_7
       (.I0(ir[0]),
        .I1(ir[1]),
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
    .INIT(64'hFFF0FFFDFFFFFFFD)) 
    ctl_fetch_inferred_i_1
       (.I0(ctl_fetch_inferred_i_2_n_0),
        .I1(ctl_fetch_inferred_i_3_n_0),
        .I2(ctl_fetch_inferred_i_4_n_0),
        .I3(ctl_fetch_inferred_i_5_n_0),
        .I4(ir[11]),
        .I5(ctl_fetch_fl_reg_1),
        .O(in0));
  LUT6 #(
    .INIT(64'h00000000E0006000)) 
    ctl_fetch_inferred_i_10
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(ir[14]),
        .I4(brdy),
        .I5(ctl_fetch_inferred_i_25_n_0),
        .O(ctl_fetch_inferred_i_10_n_0));
  LUT6 #(
    .INIT(64'h3A003A303A003A00)) 
    ctl_fetch_inferred_i_11
       (.I0(Q[1]),
        .I1(ctl_fetch_inferred_i_26_n_0),
        .I2(Q[0]),
        .I3(ir[10]),
        .I4(ctl_fetch_inferred_i_25_n_0),
        .I5(ir[13]),
        .O(ctl_fetch_inferred_i_11_n_0));
  LUT6 #(
    .INIT(64'h5555555444444444)) 
    ctl_fetch_inferred_i_12
       (.I0(ir[12]),
        .I1(ir[6]),
        .I2(\badr[15]_INST_0_i_2 [10]),
        .I3(ir[0]),
        .I4(ir[1]),
        .I5(ir[3]),
        .O(ctl_fetch_inferred_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF54545445)) 
    ctl_fetch_inferred_i_13
       (.I0(ctl_fetch_inferred_i_27_n_0),
        .I1(ir[12]),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(ir[2]),
        .I5(ctl_fetch_inferred_i_28_n_0),
        .O(ctl_fetch_inferred_i_13_n_0));
  LUT6 #(
    .INIT(64'hFDCCFFCCFDCCFFFF)) 
    ctl_fetch_inferred_i_14
       (.I0(crdy),
        .I1(ir[9]),
        .I2(\badr[15]_INST_0_i_2 [10]),
        .I3(ir[7]),
        .I4(ir[8]),
        .I5(ir[10]),
        .O(ctl_fetch_inferred_i_14_n_0));
  LUT5 #(
    .INIT(32'h40444145)) 
    ctl_fetch_inferred_i_15
       (.I0(ir[12]),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(Q[1]),
        .I4(ir[0]),
        .O(ctl_fetch_inferred_i_15_n_0));
  LUT6 #(
    .INIT(64'hCCCCFCCCECFCFCFC)) 
    ctl_fetch_inferred_i_16
       (.I0(Q[1]),
        .I1(ctl_fetch_inferred_i_29_n_0),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[10]),
        .O(ctl_fetch_inferred_i_16_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEE0EE)) 
    ctl_fetch_inferred_i_17
       (.I0(ctl_fetch_inferred_i_30_n_0),
        .I1(ctl_fetch_inferred_i_31_n_0),
        .I2(ctl_fetch_inferred_i_32_n_0),
        .I3(ctl_fetch_inferred_i_33_n_0),
        .I4(ir[10]),
        .I5(ir[0]),
        .O(ctl_fetch_inferred_i_17_n_0));
  LUT4 #(
    .INIT(16'h0007)) 
    ctl_fetch_inferred_i_18
       (.I0(ir[13]),
        .I1(ir[14]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(ctl_fetch_inferred_i_18_n_0));
  LUT6 #(
    .INIT(64'h444444444444FFF4)) 
    ctl_fetch_inferred_i_19
       (.I0(ctl_fetch_inferred_i_34_n_0),
        .I1(ctl_fetch_inferred_i_35_n_0),
        .I2(ctl_fetch_inferred_i_6),
        .I3(ir[13]),
        .I4(ctl_fetch_inferred_i_37_n_0),
        .I5(ctl_fetch_inferred_i_38_n_0),
        .O(\stat_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00F7FFF7)) 
    ctl_fetch_inferred_i_2
       (.I0(ctl_fetch_inferred_i_7_n_0),
        .I1(ctl_fetch_fl_reg_2),
        .I2(ctl_fetch_inferred_i_8_n_0),
        .I3(ir[13]),
        .I4(\badr[15]_INST_0_i_2 [6]),
        .I5(ir[12]),
        .O(ctl_fetch_inferred_i_2_n_0));
  LUT6 #(
    .INIT(64'hE200C0000000C000)) 
    ctl_fetch_inferred_i_20
       (.I0(ir[1]),
        .I1(\badr[15]_INST_0_i_2 [10]),
        .I2(ir[3]),
        .I3(ir[0]),
        .I4(ir[2]),
        .I5(crdy),
        .O(ctl_fetch_inferred_i_20_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD5FFFF)) 
    ctl_fetch_inferred_i_21
       (.I0(\ccmd[4]_INST_0_i_20_n_0 ),
        .I1(ir[14]),
        .I2(\badr[15]_INST_0_i_2 [5]),
        .I3(ctl_fetch_inferred_i_39_n_0),
        .I4(ctl_fetch_inferred_i_33_n_0),
        .I5(ctl_fetch_inferred_i_40_n_0),
        .O(ctl_fetch_inferred_i_21_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_inferred_i_22
       (.I0(ir[1]),
        .I1(ir[2]),
        .O(ctl_fetch_inferred_i_22_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ctl_fetch_inferred_i_23
       (.I0(ir[10]),
        .I1(ir[8]),
        .O(ctl_fetch_inferred_i_23_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_inferred_i_25
       (.I0(crdy),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .O(ctl_fetch_inferred_i_25_n_0));
  LUT6 #(
    .INIT(64'h111100000FFF0000)) 
    ctl_fetch_inferred_i_26
       (.I0(ir[6]),
        .I1(brdy),
        .I2(crdy),
        .I3(\badr[15]_INST_0_i_2 [10]),
        .I4(ir[10]),
        .I5(ir[8]),
        .O(ctl_fetch_inferred_i_26_n_0));
  LUT6 #(
    .INIT(64'hAAAA000FAAAA00C0)) 
    ctl_fetch_inferred_i_27
       (.I0(ir[13]),
        .I1(\badr[15]_INST_0_i_2 [10]),
        .I2(ir[2]),
        .I3(Q[1]),
        .I4(ir[12]),
        .I5(ir[0]),
        .O(ctl_fetch_inferred_i_27_n_0));
  LUT5 #(
    .INIT(32'hFFFD3D3D)) 
    ctl_fetch_inferred_i_28
       (.I0(ctl_fetch_inferred_i_33_n_0),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(ir[2]),
        .I4(Q[1]),
        .O(ctl_fetch_inferred_i_28_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    ctl_fetch_inferred_i_29
       (.I0(ir[15]),
        .I1(Q[2]),
        .I2(ir[12]),
        .I3(\bcmd[0]_INST_0_i_5_n_0 ),
        .I4(ctl_fetch_inferred_i_41_n_0),
        .I5(ctl_fetch_inferred_i_42_n_0),
        .O(ctl_fetch_inferred_i_29_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF55551151)) 
    ctl_fetch_inferred_i_3
       (.I0(ctl_fetch_inferred_i_9_n_0),
        .I1(ir[13]),
        .I2(\badr[15]_INST_0_i_2 [7]),
        .I3(ir[14]),
        .I4(ctl_fetch_inferred_i_10_n_0),
        .I5(ctl_fetch_inferred_i_11_n_0),
        .O(ctl_fetch_inferred_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8FFFF)) 
    ctl_fetch_inferred_i_30
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(ir[9]),
        .I3(ir[5]),
        .I4(ir[0]),
        .I5(\bcmd[0]_INST_0_i_15_n_0 ),
        .O(ctl_fetch_inferred_i_30_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ctl_fetch_inferred_i_31
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[10]),
        .I3(ir[12]),
        .I4(ir[8]),
        .I5(ir[2]),
        .O(ctl_fetch_inferred_i_31_n_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    ctl_fetch_inferred_i_32
       (.I0(Q[2]),
        .I1(ir[12]),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ir[2]),
        .O(ctl_fetch_inferred_i_32_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    ctl_fetch_inferred_i_33
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(ir[5]),
        .I3(ir[4]),
        .O(ctl_fetch_inferred_i_33_n_0));
  LUT6 #(
    .INIT(64'hF7FFFFFFF7FFFFF7)) 
    ctl_fetch_inferred_i_34
       (.I0(ir[12]),
        .I1(ir[8]),
        .I2(\bcmd[0]_INST_0_i_5_n_0 ),
        .I3(ir[6]),
        .I4(ir[5]),
        .I5(ir[4]),
        .O(ctl_fetch_inferred_i_34_n_0));
  LUT6 #(
    .INIT(64'h00007F0000000000)) 
    ctl_fetch_inferred_i_35
       (.I0(ir[6]),
        .I1(Q[0]),
        .I2(brdy),
        .I3(\bcmd[0]_INST_0_i_9_n_0 ),
        .I4(Q[1]),
        .I5(ir[10]),
        .O(ctl_fetch_inferred_i_35_n_0));
  LUT6 #(
    .INIT(64'hDFDDCCCCDDDDCCCC)) 
    ctl_fetch_inferred_i_37
       (.I0(ctl_fetch_inferred_i_43_n_0),
        .I1(ctl_fetch_inferred_i_44_n_0),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(Q[0]),
        .I5(brdy),
        .O(ctl_fetch_inferred_i_37_n_0));
  LUT6 #(
    .INIT(64'h00000000FF820000)) 
    ctl_fetch_inferred_i_38
       (.I0(ctl_fetch_inferred_i_45_n_0),
        .I1(ir[9]),
        .I2(ir[10]),
        .I3(ctl_fetch_inferred_i_46_n_0),
        .I4(ir[12]),
        .I5(ctl_fetch_inferred_i_47_n_0),
        .O(ctl_fetch_inferred_i_38_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    ctl_fetch_inferred_i_39
       (.I0(ir[6]),
        .I1(ir[8]),
        .I2(ir[10]),
        .O(ctl_fetch_inferred_i_39_n_0));
  LUT6 #(
    .INIT(64'hA8A8A8A8AAAAAAA8)) 
    ctl_fetch_inferred_i_4
       (.I0(Q[0]),
        .I1(ctl_fetch_inferred_i_12_n_0),
        .I2(ctl_fetch_inferred_i_13_n_0),
        .I3(\badrx[15]_INST_0_i_3_n_0 ),
        .I4(crdy),
        .I5(ctl_fetch_inferred_i_14_n_0),
        .O(ctl_fetch_inferred_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ctl_fetch_inferred_i_40
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(ir[2]),
        .O(ctl_fetch_inferred_i_40_n_0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    ctl_fetch_inferred_i_41
       (.I0(ctl_fetch_inferred_i_48_n_0),
        .I1(ir[8]),
        .I2(Q[1]),
        .I3(\badr[15]_INST_0_i_2 [11]),
        .I4(ir[10]),
        .I5(ir[7]),
        .O(ctl_fetch_inferred_i_41_n_0));
  LUT6 #(
    .INIT(64'h0000F20000000000)) 
    ctl_fetch_inferred_i_42
       (.I0(\badr[15]_INST_0_i_2 [11]),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(crdy),
        .I4(Q[1]),
        .I5(ctl_fetch_inferred_i_49_n_0),
        .O(ctl_fetch_inferred_i_42_n_0));
  LUT6 #(
    .INIT(64'h0101FF0100000000)) 
    ctl_fetch_inferred_i_43
       (.I0(brdy),
        .I1(ir[6]),
        .I2(ir[10]),
        .I3(ir[7]),
        .I4(ir[9]),
        .I5(ir[12]),
        .O(ctl_fetch_inferred_i_43_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF322222222)) 
    ctl_fetch_inferred_i_44
       (.I0(ctl_fetch_inferred_i_50_n_0),
        .I1(ir[12]),
        .I2(brdy),
        .I3(ir[6]),
        .I4(ir[8]),
        .I5(Q[1]),
        .O(ctl_fetch_inferred_i_44_n_0));
  LUT6 #(
    .INIT(64'hFE3EFFFFFFFFFFFF)) 
    ctl_fetch_inferred_i_45
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(brdy),
        .I4(ctl_fetch_inferred_i_23_n_0),
        .I5(ir[7]),
        .O(ctl_fetch_inferred_i_45_n_0));
  LUT6 #(
    .INIT(64'h0F0F0FFF8FFF8FFF)) 
    ctl_fetch_inferred_i_46
       (.I0(brdy),
        .I1(ir[6]),
        .I2(ir[14]),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(ir[10]),
        .O(ctl_fetch_inferred_i_46_n_0));
  LUT3 #(
    .INIT(8'h4F)) 
    ctl_fetch_inferred_i_47
       (.I0(ir[14]),
        .I1(\badr[15]_INST_0_i_2 [7]),
        .I2(ir[13]),
        .O(ctl_fetch_inferred_i_47_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    ctl_fetch_inferred_i_48
       (.I0(ir[9]),
        .I1(crdy),
        .O(ctl_fetch_inferred_i_48_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ctl_fetch_inferred_i_49
       (.I0(ir[10]),
        .I1(ir[8]),
        .O(ctl_fetch_inferred_i_49_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000EEEEEAEE)) 
    ctl_fetch_inferred_i_5
       (.I0(ctl_fetch_inferred_i_15_n_0),
        .I1(ctl_fetch_inferred_i_16_n_0),
        .I2(ctl_fetch_inferred_i_17_n_0),
        .I3(rst_n_fl_reg_0),
        .I4(ir[15]),
        .I5(ctl_fetch_inferred_i_18_n_0),
        .O(ctl_fetch_inferred_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ctl_fetch_inferred_i_50
       (.I0(ir[13]),
        .I1(\badr[15]_INST_0_i_2 [6]),
        .O(ctl_fetch_inferred_i_50_n_0));
  LUT6 #(
    .INIT(64'hFEFEFEFEEEEEFEEE)) 
    ctl_fetch_inferred_i_7
       (.I0(ctl_fetch_inferred_i_20_n_0),
        .I1(ctl_fetch_inferred_i_21_n_0),
        .I2(ctl_fetch_inferred_i_22_n_0),
        .I3(irq),
        .I4(fch_irq_req),
        .I5(ir[3]),
        .O(ctl_fetch_inferred_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ctl_fetch_inferred_i_8
       (.I0(ir[14]),
        .I1(\badr[15]_INST_0_i_2 [5]),
        .O(ctl_fetch_inferred_i_8_n_0));
  LUT6 #(
    .INIT(64'hFF08FF08FF08FFFF)) 
    ctl_fetch_inferred_i_9
       (.I0(\stat[0]_i_21_n_0 ),
        .I1(ctl_fetch_inferred_i_23_n_0),
        .I2(\bcmd[0]_INST_0_i_5_n_0 ),
        .I3(Q[1]),
        .I4(ctl_fetch_inferred_i_3_0),
        .I5(\ccmd[2]_INST_0_i_7_n_0 ),
        .O(ctl_fetch_inferred_i_9_n_0));
  LUT3 #(
    .INIT(8'hFB)) 
    \eir_fl[15]_i_1 
       (.I0(ctl_irq_ack),
        .I1(rst_n),
        .I2(ctl_fetch_fl_reg_0),
        .O(\eir_fl[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[1]_i_1 
       (.I0(irq_vec[0]),
        .I1(ctl_irq_ack),
        .I2(eir[1]),
        .O(\eir_fl[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[2]_i_1 
       (.I0(irq_vec[1]),
        .I1(ctl_irq_ack),
        .I2(eir[2]),
        .O(\eir_fl[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[3]_i_1 
       (.I0(irq_vec[2]),
        .I1(ctl_irq_ack),
        .I2(eir[3]),
        .O(\eir_fl[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[4]_i_1 
       (.I0(irq_vec[3]),
        .I1(ctl_irq_ack),
        .I2(eir[4]),
        .O(\eir_fl[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[5]_i_1 
       (.I0(irq_vec[4]),
        .I1(ctl_irq_ack),
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
        .I1(ctl_irq_ack),
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
  LUT4 #(
    .INIT(16'hBF80)) 
    \fch_irq_lev[0]_i_1 
       (.I0(irq_lev[0]),
        .I1(ctl_irq_ack),
        .I2(fch_irq_req),
        .I3(fch_irq_lev[0]),
        .O(\fch_irq_lev[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \fch_irq_lev[1]_i_1 
       (.I0(irq_lev[1]),
        .I1(ctl_irq_ack),
        .I2(fch_irq_req),
        .I3(fch_irq_lev[1]),
        .O(\fch_irq_lev[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \fch_irq_lev[1]_i_2 
       (.I0(brdy),
        .I1(ir[11]),
        .I2(Q[2]),
        .I3(\eir_fl_reg[1]_0 ),
        .I4(\fch_irq_lev[1]_i_3_n_0 ),
        .I5(\fch_irq_lev[1]_i_4_n_0 ),
        .O(ctl_irq_ack));
  LUT4 #(
    .INIT(16'h0001)) 
    \fch_irq_lev[1]_i_3 
       (.I0(ir[13]),
        .I1(ir[15]),
        .I2(ir[12]),
        .I3(ir[14]),
        .O(\fch_irq_lev[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \fch_irq_lev[1]_i_4 
       (.I0(ir[2]),
        .I1(\bcmd[0]_INST_0_i_15_n_0 ),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(fch_irq_req),
        .I5(\fch_irq_lev[1]_i_5_n_0 ),
        .O(\fch_irq_lev[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \fch_irq_lev[1]_i_5 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[10]),
        .I5(ir[9]),
        .O(\fch_irq_lev[1]_i_5_n_0 ));
  FDRE \fch_irq_lev_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch_irq_lev[0]_i_1_n_0 ),
        .Q(fch_irq_lev[0]),
        .R(p_0_in));
  FDRE \fch_irq_lev_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch_irq_lev[1]_i_1_n_0 ),
        .Q(fch_irq_lev[1]),
        .R(p_0_in));
  FDRE fch_irq_req_fl_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fch_irq_req),
        .Q(fch_irq_req_fl),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \grn[15]_i_1 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\iv[15]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \grn[15]_i_1__0 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\iv[15]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \grn[15]_i_1__1 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\iv[15]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \grn[15]_i_1__10 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\pc[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_7 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \grn[15]_i_1__11 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\sr[15]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_8 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \grn[15]_i_1__12 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\sr[15]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_4 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \grn[15]_i_1__13 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\sr[15]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_9 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \grn[15]_i_1__14 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\sr[15]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_10 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \grn[15]_i_1__15 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\sp[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_11 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \grn[15]_i_1__16 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\sp[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_5 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \grn[15]_i_1__17 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\sp[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_12 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \grn[15]_i_1__18 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\sp[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_13 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \grn[15]_i_1__19 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\pc[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_14 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \grn[15]_i_1__2 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\iv[15]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \grn[15]_i_1__20 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\pc[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_6 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \grn[15]_i_1__21 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\pc[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_15 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \grn[15]_i_1__22 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\pc[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_16 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \grn[15]_i_1__23 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\sr[15]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_17 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \grn[15]_i_1__24 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\sr[15]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_7 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \grn[15]_i_1__25 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\sr[15]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_18 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \grn[15]_i_1__26 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\sr[15]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_19 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \grn[15]_i_1__27 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\iv[15]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_26 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \grn[15]_i_1__28 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\iv[15]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_27 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \grn[15]_i_1__29 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\iv[15]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_9 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \grn[15]_i_1__3 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\sp[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \grn[15]_i_1__30 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\iv[15]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_28 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \grn[15]_i_1__4 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\sp[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \grn[15]_i_1__5 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\sp[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \grn[15]_i_1__6 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\sp[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_4 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \grn[15]_i_1__7 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\pc[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_5 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \grn[15]_i_1__8 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\pc[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \grn[15]_i_1__9 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(\pc[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_6 ));
  FDRE \ir_fl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[0]),
        .Q(ir_fl[0]),
        .R(p_0_in));
  FDRE \ir_fl_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[10]),
        .Q(ir_fl[10]),
        .R(p_0_in));
  FDRE \ir_fl_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[11]),
        .Q(ir_fl[11]),
        .R(p_0_in));
  FDRE \ir_fl_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[12]),
        .Q(ir_fl[12]),
        .R(p_0_in));
  FDRE \ir_fl_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[13]),
        .Q(ir_fl[13]),
        .R(p_0_in));
  FDRE \ir_fl_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[14]),
        .Q(ir_fl[14]),
        .R(p_0_in));
  FDRE \ir_fl_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[15]),
        .Q(ir_fl[15]),
        .R(p_0_in));
  FDRE \ir_fl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[1]),
        .Q(ir_fl[1]),
        .R(p_0_in));
  FDRE \ir_fl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[2]),
        .Q(ir_fl[2]),
        .R(p_0_in));
  FDRE \ir_fl_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[3]),
        .Q(ir_fl[3]),
        .R(p_0_in));
  FDRE \ir_fl_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[4]),
        .Q(ir_fl[4]),
        .R(p_0_in));
  FDRE \ir_fl_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[5]),
        .Q(ir_fl[5]),
        .R(p_0_in));
  FDRE \ir_fl_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[6]),
        .Q(ir_fl[6]),
        .R(p_0_in));
  FDRE \ir_fl_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[7]),
        .Q(ir_fl[7]),
        .R(p_0_in));
  FDRE \ir_fl_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[8]),
        .Q(ir_fl[8]),
        .R(p_0_in));
  FDRE \ir_fl_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[9]),
        .Q(ir_fl[9]),
        .R(p_0_in));
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
  LUT5 #(
    .INIT(32'h28808880)) 
    \iv[0]_i_10 
       (.I0(\iv[13]_i_10_n_0 ),
        .I1(\stat_reg[2]_5 ),
        .I2(abus_0[0]),
        .I3(\sr_reg[0] ),
        .I4(acmd),
        .O(\iv[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF5F5505F3F30)) 
    \iv[0]_i_11 
       (.I0(\sr_reg[0] ),
        .I1(abus_0[8]),
        .I2(\stat_reg[2]_5 ),
        .I3(abus_0[0]),
        .I4(acmd),
        .I5(\iv[14]_i_7_n_0 ),
        .O(\iv[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7077)) 
    \iv[0]_i_13 
       (.I0(tout__1_carry_i_10_0),
        .I1(\badr[15]_INST_0_i_2 [6]),
        .I2(acmd),
        .I3(\sr[4]_i_4_0 ),
        .O(\iv[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \iv[0]_i_14 
       (.I0(\sr_reg[0] ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\sr_reg[3]_0 ),
        .O(\iv[0]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \iv[0]_i_16 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(\sr_reg[4]_0 ),
        .I2(\sr_reg[0] ),
        .O(\bdatw[8]_INST_0_i_2_1 ));
  LUT6 #(
    .INIT(64'h4444454445454545)) 
    \iv[0]_i_2 
       (.I0(\iv[14]_i_2_n_0 ),
        .I1(\iv[0]_i_5_n_0 ),
        .I2(\sr_reg[4]_0 ),
        .I3(\tr_reg[0]_1 ),
        .I4(\iv[0]_i_7_n_0 ),
        .I5(\iv[0]_i_8_n_0 ),
        .O(\iv[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \iv[0]_i_4 
       (.I0(\iv[0]_i_10_n_0 ),
        .I1(\iv[0]_i_11_n_0 ),
        .I2(\sr[7]_i_7_n_0 ),
        .O(\iv[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8000000FF0000)) 
    \iv[0]_i_5 
       (.I0(\iv[0]_i_2_0 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(\iv[0]_i_2_1 ),
        .I3(\iv[0]_i_13_n_0 ),
        .I4(\sr_reg[4]_0 ),
        .I5(\iv[0]_i_14_n_0 ),
        .O(\iv[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h757F757F757F0000)) 
    \iv[0]_i_7 
       (.I0(tout__1_carry_i_10_0),
        .I1(\iv[8]_i_2_1 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[8]_i_16_n_0 ),
        .I4(\iv[9]_i_14_n_0 ),
        .I5(acmd),
        .O(\iv[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \iv[0]_i_8 
       (.I0(\iv[8]_i_15_n_0 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_10_0),
        .I3(\sr_reg[3]_0 ),
        .O(\iv[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFBAFFFF)) 
    \iv[10]_i_1 
       (.I0(\iv[10]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\tr_reg[11]_0 [2]),
        .I3(\tr_reg[10]_0 ),
        .I4(\iv[10]_i_4_n_0 ),
        .O(cbus[10]));
  LUT5 #(
    .INIT(32'h22022000)) 
    \iv[10]_i_10 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\stat_reg[2]_5 ),
        .I2(acmd),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(abus_0[10]),
        .O(\iv[10]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h90B02000)) 
    \iv[10]_i_11 
       (.I0(abus_0[10]),
        .I1(\bdatw[10]_INST_0_i_1_n_0 ),
        .I2(\iv[13]_i_10_n_0 ),
        .I3(acmd),
        .I4(\stat_reg[2]_5 ),
        .O(\iv[10]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h202A)) 
    \iv[10]_i_12 
       (.I0(\iv[14]_i_24_n_0 ),
        .I1(\iv[10]_i_5_1 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[10]_i_2_1 ),
        .O(\iv[10]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000001DFFFFFFFF)) 
    \iv[10]_i_13 
       (.I0(\iv[10]_i_5_0 ),
        .I1(\bdatw[9]_INST_0_i_2_0 ),
        .I2(\iv[14]_i_3_1 ),
        .I3(\stat_reg[2]_5 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\sr[7]_i_11 ),
        .O(\iv[10]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0A0F0F0C0A)) 
    \iv[10]_i_16 
       (.I0(abus_0[2]),
        .I1(abus_0[1]),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\sr_reg[0] ),
        .I4(\bdatw[8]_INST_0_i_2_1 ),
        .I5(\badr[0]_INST_0_i_1 ),
        .O(\iv[10]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AFAF03A3)) 
    \iv[10]_i_2 
       (.I0(\iv[10]_i_5_n_0 ),
        .I1(\iv[10]_i_6_n_0 ),
        .I2(\sr_reg[4]_0 ),
        .I3(\iv[10]_i_7_n_0 ),
        .I4(\iv[10]_i_8_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[10]_i_20 
       (.I0(\stat_reg[2]_5 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[14]_i_34_0 ));
  LUT4 #(
    .INIT(16'h002F)) 
    \iv[10]_i_4 
       (.I0(\iv[10]_i_9_n_0 ),
        .I1(\iv[10]_i_10_n_0 ),
        .I2(\sr[7]_i_7_n_0 ),
        .I3(\iv[10]_i_11_n_0 ),
        .O(\iv[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F008F8F8F8F)) 
    \iv[10]_i_5 
       (.I0(abus_0[9]),
        .I1(tout__1_carry_i_10_0),
        .I2(\iv[14]_i_11_n_0 ),
        .I3(\iv[10]_i_12_n_0 ),
        .I4(\iv[10]_i_13_n_0 ),
        .I5(\iv[10]_i_2_0 ),
        .O(\iv[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \iv[10]_i_6 
       (.I0(acmd),
        .I1(\iv[10]_i_2_2 ),
        .I2(\bdatw[11]_INST_0_i_2_0 ),
        .I3(\iv[10]_i_16_n_0 ),
        .O(\iv[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA808AAAA)) 
    \iv[10]_i_7 
       (.I0(acmd),
        .I1(\iv[10]_i_2_1 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[10]_i_2_3 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CACFCAC0)) 
    \iv[10]_i_8 
       (.I0(\iv[10]_i_16_n_0 ),
        .I1(\iv[10]_i_2_2 ),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .I3(\stat_reg[2]_5 ),
        .I4(\iv[2]_i_2_0 ),
        .I5(acmd),
        .O(\iv[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDCFFCCDCDCFFC)) 
    \iv[10]_i_9 
       (.I0(abus_0[2]),
        .I1(\iv[14]_i_7_n_0 ),
        .I2(acmd),
        .I3(abus_0[10]),
        .I4(\stat_reg[2]_5 ),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
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
  LUT6 #(
    .INIT(64'hFDFDCFFCCDCDCFFC)) 
    \iv[11]_i_10 
       (.I0(abus_0[3]),
        .I1(\iv[14]_i_7_n_0 ),
        .I2(acmd),
        .I3(abus_0[11]),
        .I4(\stat_reg[2]_5 ),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[11]_i_11 
       (.I0(abus_0[11]),
        .I1(\sr_reg[3]_0 ),
        .I2(acmd),
        .O(\iv[11]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h90B02000)) 
    \iv[11]_i_12 
       (.I0(abus_0[11]),
        .I1(\bdatw[11]_INST_0_i_1_n_0 ),
        .I2(\iv[13]_i_10_n_0 ),
        .I3(acmd),
        .I4(\stat_reg[2]_5 ),
        .O(\iv[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0404040455045555)) 
    \iv[11]_i_2 
       (.I0(\iv[14]_i_2_n_0 ),
        .I1(\iv[11]_i_5_n_0 ),
        .I2(\iv[11]_i_6_n_0 ),
        .I3(\iv[11]_i_7_n_0 ),
        .I4(\iv[11]_i_8_n_0 ),
        .I5(\iv[11]_i_9_n_0 ),
        .O(\iv[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \iv[11]_i_20 
       (.I0(tout__1_carry_i_10_0),
        .I1(abus_0[10]),
        .O(\iv[11]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[11]_i_23 
       (.I0(\sr_reg[0] ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(\bdatw[9]_INST_0_i_2_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F2F0000)) 
    \iv[11]_i_4 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\stat_reg[2]_5 ),
        .I2(\iv[11]_i_10_n_0 ),
        .I3(\iv[11]_i_11_n_0 ),
        .I4(\sr[7]_i_7_n_0 ),
        .I5(\iv[11]_i_12_n_0 ),
        .O(\iv[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF20)) 
    \iv[11]_i_5 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\sr[6]_i_3_0 ),
        .I2(tout__1_carry_i_10_0),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .I4(\iv[11]_i_2_0 ),
        .O(\iv[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \iv[11]_i_6 
       (.I0(\sr_reg[4]_0 ),
        .I1(\iv[11]_i_2_1 ),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0407)) 
    \iv[11]_i_7 
       (.I0(\iv[11]_i_2_2 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\stat_reg[2]_5 ),
        .I3(\iv[11]_i_2_3 ),
        .I4(\bdatw[12]_INST_0_i_2_0 ),
        .O(\iv[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2F2F2F00FFFFFFFF)) 
    \iv[11]_i_8 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\bdatw[9]_INST_0_i_2_0 ),
        .I2(abus_0[15]),
        .I3(\bdatw[11]_INST_0_i_2_0 ),
        .I4(\iv[11]_i_2_5 ),
        .I5(\stat_reg[2]_5 ),
        .O(\iv[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hD0FFD0FFFFFFD0FF)) 
    \iv[11]_i_9 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[11]_i_2_4 ),
        .I2(acmd),
        .I3(\sr_reg[4]_0 ),
        .I4(\iv[14]_i_11_n_0 ),
        .I5(\iv[11]_i_20_n_0 ),
        .O(\iv[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[12]_i_1 
       (.I0(\iv[12]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\sr_reg[7]_1 [0]),
        .I3(\tr_reg[12]_0 ),
        .I4(\iv[12]_i_4_n_0 ),
        .O(cbus[12]));
  LUT6 #(
    .INIT(64'h0202300332323003)) 
    \iv[12]_i_10 
       (.I0(abus_0[4]),
        .I1(\iv[14]_i_7_n_0 ),
        .I2(acmd),
        .I3(abus_0[12]),
        .I4(\stat_reg[2]_5 ),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[12]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hC06000C0)) 
    \iv[12]_i_11 
       (.I0(acmd),
        .I1(\stat_reg[2]_5 ),
        .I2(\iv[13]_i_10_n_0 ),
        .I3(\bdatw[12]_INST_0_i_1_n_0 ),
        .I4(abus_0[12]),
        .O(\iv[12]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \iv[12]_i_12 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(\iv[12]_i_2_1 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .O(\iv[12]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h01110100)) 
    \iv[12]_i_13 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\stat_reg[2]_5 ),
        .I2(\iv[8]_i_16_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\sr[6]_i_3_1 ),
        .O(\iv[12]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h8B8B88BB)) 
    \iv[12]_i_14 
       (.I0(\iv[4]_i_15_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(\sr[6]_i_3_2 ),
        .I3(\sr[6]_i_3_3 ),
        .I4(\bdatw[9]_INST_0_i_2_0 ),
        .O(\iv[12]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h01000111)) 
    \iv[12]_i_16 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\stat_reg[2]_5 ),
        .I2(\iv[7]_i_2_4 ),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\iv[12]_i_7_0 ),
        .O(\iv[12]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \iv[12]_i_18 
       (.I0(acmd),
        .I1(\sr_reg[0] ),
        .I2(\bdatw[9]_INST_0_i_2_n_0 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(\sr_reg[3]_0 ),
        .I5(\sr_reg[4]_0 ),
        .O(\bdatw[12]_INST_0_i_2_0 ));
  LUT6 #(
    .INIT(64'h00000000AA2A2222)) 
    \iv[12]_i_2 
       (.I0(\iv[12]_i_5_n_0 ),
        .I1(\sr_reg[4]_0 ),
        .I2(\iv[12]_i_6_n_0 ),
        .I3(\iv[12]_i_7_n_0 ),
        .I4(\iv[12]_i_8_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFD0)) 
    \iv[12]_i_4 
       (.I0(\iv[12]_i_9_n_0 ),
        .I1(\iv[12]_i_10_n_0 ),
        .I2(\sr[7]_i_7_n_0 ),
        .I3(\iv[12]_i_11_n_0 ),
        .O(\iv[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7A7F7A7F2A2F2A2A)) 
    \iv[12]_i_5 
       (.I0(\sr_reg[4]_0 ),
        .I1(\iv[12]_i_12_n_0 ),
        .I2(acmd),
        .I3(\iv[12]_i_13_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_1 ),
        .I5(\iv[12]_i_14_n_0 ),
        .O(\iv[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h2F00FFFF)) 
    \iv[12]_i_6 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\bdatw[9]_INST_0_i_2_0 ),
        .I2(abus_0[15]),
        .I3(\iv[12]_i_12_n_0 ),
        .I4(\stat_reg[2]_5 ),
        .O(\iv[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4F0FEF0)) 
    \iv[12]_i_7 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\iv[12]_i_2_1 ),
        .I2(\iv[12]_i_16_n_0 ),
        .I3(\iv[14]_i_24_n_0 ),
        .I4(\iv[12]_i_2_0 ),
        .I5(\bdatw[12]_INST_0_i_2_0 ),
        .O(\iv[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \iv[12]_i_8 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(tout__1_carry_i_10_0),
        .I2(abus_0[11]),
        .O(\iv[12]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF7F3F7FF)) 
    \iv[12]_i_9 
       (.I0(\sr_reg[4]_0 ),
        .I1(\iv[14]_i_7_n_0 ),
        .I2(\stat_reg[2]_5 ),
        .I3(acmd),
        .I4(abus_0[12]),
        .O(\iv[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[13]_i_1 
       (.I0(\iv[13]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\sr_reg[7]_1 [1]),
        .I3(\tr_reg[13]_0 ),
        .I4(\iv[13]_i_5_n_0 ),
        .O(cbus[13]));
  LUT4 #(
    .INIT(16'hEA00)) 
    \iv[13]_i_10 
       (.I0(ctl_copro),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .I2(\ccmd[4]_INST_0_i_2_n_0 ),
        .I3(\iv[14]_i_7_n_0 ),
        .O(\iv[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDCFFCCDCDCFFC)) 
    \iv[13]_i_11 
       (.I0(abus_0[5]),
        .I1(\iv[14]_i_7_n_0 ),
        .I2(acmd),
        .I3(abus_0[13]),
        .I4(\stat_reg[2]_5 ),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[13]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[13]_i_12 
       (.I0(abus_0[13]),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(acmd),
        .O(\iv[13]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h90B02000)) 
    \iv[13]_i_13 
       (.I0(abus_0[13]),
        .I1(\bdatw[13]_INST_0_i_1_n_0 ),
        .I2(\iv[13]_i_10_n_0 ),
        .I3(acmd),
        .I4(\stat_reg[2]_5 ),
        .O(\iv[13]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \iv[13]_i_17 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\iv[13]_i_7_0 ),
        .I2(\bdatw[8]_INST_0_i_2_1 ),
        .I3(\badr[15]_INST_0_i_1 ),
        .O(\iv[13]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EEE0E0E)) 
    \iv[13]_i_2 
       (.I0(\tr_reg[13]_1 ),
        .I1(\iv[13]_i_7_n_0 ),
        .I2(\sr_reg[4]_0 ),
        .I3(\tr_reg[13]_2 ),
        .I4(\iv[13]_i_9_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[13]_i_23 
       (.I0(\sr_reg[0] ),
        .I1(abus_0[1]),
        .O(\badr[1]_INST_0_i_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[13]_i_29 
       (.I0(\sr_reg[0] ),
        .I1(abus_0[15]),
        .O(\badr[15]_INST_0_i_1 ));
  LUT4 #(
    .INIT(16'hF0B1)) 
    \iv[13]_i_3 
       (.I0(\stat_reg[2]_5 ),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(tout__1_carry_i_11_n_0),
        .I3(acmd),
        .O(\iv[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F2F0000)) 
    \iv[13]_i_5 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\stat_reg[2]_5 ),
        .I2(\iv[13]_i_11_n_0 ),
        .I3(\iv[13]_i_12_n_0 ),
        .I4(\sr[7]_i_7_n_0 ),
        .I5(\iv[13]_i_13_n_0 ),
        .O(\iv[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h74337400CCCCCCCC)) 
    \iv[13]_i_7 
       (.I0(\iv[13]_i_17_n_0 ),
        .I1(\sr_reg[4]_0 ),
        .I2(\iv[4]_i_2_0 ),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .I4(\iv[13]_i_2_0 ),
        .I5(acmd),
        .O(\iv[13]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \iv[13]_i_9 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(tout__1_carry_i_10_0),
        .I2(abus_0[12]),
        .O(\iv[13]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF10)) 
    \iv[14]_i_1 
       (.I0(\iv[14]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\iv[14]_i_4_n_0 ),
        .I3(\iv[14]_i_5_n_0 ),
        .I4(\iv[14]_i_6_n_0 ),
        .O(cbus[14]));
  LUT6 #(
    .INIT(64'h555500000000303F)) 
    \iv[14]_i_10 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(\iv[14]_i_3_0 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[14]_i_3_1 ),
        .I4(\stat_reg[2]_5 ),
        .I5(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[14]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \iv[14]_i_11 
       (.I0(\iv[14]_i_29_n_0 ),
        .I1(acmd),
        .I2(\sr[4]_i_4_0 ),
        .O(\iv[14]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \iv[14]_i_12 
       (.I0(\iv[14]_i_30_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(acmd),
        .O(\iv[14]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h01000111)) 
    \iv[14]_i_13 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\stat_reg[2]_5 ),
        .I2(\iv[14]_i_4_1 ),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\iv[14]_i_4_0 ),
        .O(\iv[14]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5554000000015555)) 
    \iv[14]_i_14 
       (.I0(\stat_reg[2]_5 ),
        .I1(\sr_reg[0] ),
        .I2(\bdatw[9]_INST_0_i_2_n_0 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(\sr_reg[4]_0 ),
        .I5(\sr_reg[3]_0 ),
        .O(\bdatw[11]_INST_0_i_2_1 ));
  LUT6 #(
    .INIT(64'hFDFDCFFCCDCDCFFC)) 
    \iv[14]_i_17 
       (.I0(abus_0[6]),
        .I1(\iv[14]_i_7_n_0 ),
        .I2(acmd),
        .I3(abus_0[14]),
        .I4(\stat_reg[2]_5 ),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h02002220)) 
    \iv[14]_i_18 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\stat_reg[2]_5 ),
        .I2(acmd),
        .I3(abus_0[14]),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h90B02000)) 
    \iv[14]_i_19 
       (.I0(abus_0[14]),
        .I1(\bdatw[14]_INST_0_i_1_n_0 ),
        .I2(\iv[13]_i_10_n_0 ),
        .I3(acmd),
        .I4(\stat_reg[2]_5 ),
        .O(\iv[14]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFBFBEFFFFFFF)) 
    \iv[14]_i_2 
       (.I0(ctl_copro),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(\stat_reg[2]_5 ),
        .I4(\ccmd[4]_INST_0_i_2_n_0 ),
        .I5(tout__1_carry_i_10_0),
        .O(\iv[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \iv[14]_i_20 
       (.I0(\bdatw[12]_INST_0_i_2_0 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\sr[4]_i_4_0 ),
        .O(\sr[7]_i_11 ));
  LUT4 #(
    .INIT(16'h666A)) 
    \iv[14]_i_22 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\sr_reg[4]_0 ),
        .I2(\sr_reg[0] ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(\bdatw[9]_INST_0_i_2_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_24 
       (.I0(\stat_reg[2]_5 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[14]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F0F1D)) 
    \iv[14]_i_25 
       (.I0(abus_0[14]),
        .I1(\sr_reg[0] ),
        .I2(abus_0[15]),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\bdatw[8]_INST_0_i_2_1 ),
        .O(\iv[14]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h6666666A)) 
    \iv[14]_i_28 
       (.I0(\sr_reg[3]_0 ),
        .I1(\sr_reg[4]_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .I4(\sr_reg[0] ),
        .O(\bdatw[8]_INST_0_i_2_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \iv[14]_i_29 
       (.I0(\sr_reg[4]_0 ),
        .I1(\sr_reg[3]_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .I4(\sr_reg[0] ),
        .O(\iv[14]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0808AA08AA08AA08)) 
    \iv[14]_i_3 
       (.I0(\sr_reg[4]_0 ),
        .I1(\iv[14]_i_9_n_0 ),
        .I2(\iv[14]_i_10_n_0 ),
        .I3(\iv[14]_i_11_n_0 ),
        .I4(tout__1_carry_i_10_0),
        .I5(abus_0[13]),
        .O(\iv[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF5F3)) 
    \iv[14]_i_30 
       (.I0(abus_0[15]),
        .I1(abus_0[14]),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\sr_reg[0] ),
        .I4(\bdatw[8]_INST_0_i_2_1 ),
        .O(\iv[14]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hF033F055)) 
    \iv[14]_i_33 
       (.I0(abus_0[2]),
        .I1(abus_0[1]),
        .I2(\badr[0]_INST_0_i_1 ),
        .I3(\bdatw[8]_INST_0_i_2_1 ),
        .I4(\sr_reg[0] ),
        .O(\bdatw[8]_INST_0_i_2_2 ));
  LUT5 #(
    .INIT(32'hFE0001FF)) 
    \iv[14]_i_34 
       (.I0(\sr_reg[0] ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\sr_reg[4]_0 ),
        .I4(\sr_reg[3]_0 ),
        .O(\bdatw[11]_INST_0_i_2_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[14]_i_38 
       (.I0(\sr_reg[0] ),
        .I1(abus_0[0]),
        .O(\badr[0]_INST_0_i_1 ));
  LUT6 #(
    .INIT(64'hD8DFD8DF888F8888)) 
    \iv[14]_i_4 
       (.I0(\sr_reg[4]_0 ),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(acmd),
        .I3(\iv[14]_i_13_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_1 ),
        .I5(\tr_reg[14]_0 ),
        .O(\iv[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \iv[14]_i_5 
       (.I0(\iv[13]_i_3_n_0 ),
        .I1(\sr_reg[7]_1 [2]),
        .I2(ctl_copro),
        .I3(cbus_i),
        .I4(bdatr),
        .I5(\tr_reg[14]_1 ),
        .O(\iv[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFD0)) 
    \iv[14]_i_6 
       (.I0(\iv[14]_i_17_n_0 ),
        .I1(\iv[14]_i_18_n_0 ),
        .I2(\sr[7]_i_7_n_0 ),
        .I3(\iv[14]_i_19_n_0 ),
        .O(\iv[14]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_7 
       (.I0(ctl_copro),
        .I1(\ccmd[2]_INST_0_i_1_n_0 ),
        .O(\iv[14]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_8 
       (.I0(\stat_reg[2]_5 ),
        .I1(acmd),
        .O(tout__1_carry_i_10_0));
  LUT5 #(
    .INIT(32'h8A80AAAA)) 
    \iv[14]_i_9 
       (.I0(\sr[7]_i_11 ),
        .I1(\iv[10]_i_5_0 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[10]_i_5_1 ),
        .I4(\iv[14]_i_24_n_0 ),
        .O(\iv[14]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_1 
       (.I0(\sr[15]_i_2_n_0 ),
        .I1(\iv[15]_i_3_n_0 ),
        .O(cbus_sel_cr[0]));
  LUT2 #(
    .INIT(4'h7)) 
    \iv[15]_i_3 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .O(\iv[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[1]_i_1 
       (.I0(\iv[1]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(O[1]),
        .I3(\tr_reg[1]_0 ),
        .I4(\iv[1]_i_4_n_0 ),
        .O(cbus[1]));
  LUT6 #(
    .INIT(64'hF500F35FF5FFF350)) 
    \iv[1]_i_10 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(abus_0[9]),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(\stat_reg[2]_5 ),
        .I4(acmd),
        .I5(abus_0[1]),
        .O(\iv[1]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h60E08000)) 
    \iv[1]_i_11 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(abus_0[1]),
        .I2(\iv[13]_i_10_n_0 ),
        .I3(acmd),
        .I4(\stat_reg[2]_5 ),
        .O(\iv[1]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \iv[1]_i_15 
       (.I0(tout__1_carry_i_10_0),
        .I1(abus_0[0]),
        .O(\iv[1]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \iv[1]_i_16 
       (.I0(\bdatw[8]_INST_0_i_2_1 ),
        .I1(\iv[1]_i_7_0 ),
        .I2(\badr[1]_INST_0_i_1 ),
        .O(\iv[1]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFD0D)) 
    \iv[1]_i_17 
       (.I0(\badr[1]_INST_0_i_1 ),
        .I1(\iv[1]_i_7_0 ),
        .I2(\bdatw[8]_INST_0_i_2_1 ),
        .I3(\iv[1]_i_8_0 ),
        .O(\iv[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000000202F2020)) 
    \iv[1]_i_2 
       (.I0(\tr_reg[1]_1 ),
        .I1(\iv[1]_i_6_n_0 ),
        .I2(\sr_reg[4]_0 ),
        .I3(\iv[1]_i_7_n_0 ),
        .I4(\iv[1]_i_8_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[1]_i_4 
       (.I0(\iv[1]_i_10_n_0 ),
        .I1(\sr[7]_i_7_n_0 ),
        .I2(\iv[1]_i_11_n_0 ),
        .O(\iv[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4FF4444F4444444)) 
    \iv[1]_i_6 
       (.I0(\iv[1]_i_15_n_0 ),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(\iv[1]_i_2_1 ),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .I4(acmd),
        .I5(\iv[9]_i_2_2 ),
        .O(\iv[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h332233223F333FFF)) 
    \iv[1]_i_7 
       (.I0(\iv[1]_i_16_n_0 ),
        .I1(tout__1_carry_i_10_0),
        .I2(\iv[14]_i_4_0 ),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\iv[1]_i_2_0 ),
        .I5(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFDDDFD)) 
    \iv[1]_i_8 
       (.I0(tout__1_carry_i_10_0),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(\iv[1]_i_17_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\iv[1]_i_2_2 ),
        .O(\iv[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[2]_i_1 
       (.I0(\iv[2]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(O[2]),
        .I3(\tr_reg[2]_0 ),
        .I4(\iv[2]_i_4_n_0 ),
        .O(cbus[2]));
  LUT6 #(
    .INIT(64'hF0FFF3F3303F5F50)) 
    \iv[2]_i_10 
       (.I0(abus_0[10]),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_5 ),
        .I3(abus_0[2]),
        .I4(acmd),
        .I5(\iv[14]_i_7_n_0 ),
        .O(\iv[2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h60E08000)) 
    \iv[2]_i_11 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(abus_0[2]),
        .I2(\iv[13]_i_10_n_0 ),
        .I3(acmd),
        .I4(\stat_reg[2]_5 ),
        .O(\iv[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002FF0200)) 
    \iv[2]_i_2 
       (.I0(\tr_reg[2]_1 ),
        .I1(\iv[2]_i_6_n_0 ),
        .I2(\iv[2]_i_7_n_0 ),
        .I3(\sr_reg[4]_0 ),
        .I4(\iv[2]_i_8_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[2]_i_4 
       (.I0(\iv[2]_i_10_n_0 ),
        .I1(\sr[7]_i_7_n_0 ),
        .I2(\iv[2]_i_11_n_0 ),
        .O(\iv[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA820A8A8A8202020)) 
    \iv[2]_i_6 
       (.I0(acmd),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\iv[2]_i_2_2 ),
        .I3(\iv[6]_i_2_0 ),
        .I4(\bdatw[9]_INST_0_i_2_0 ),
        .I5(\iv[2]_i_2_1 ),
        .O(\iv[2]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \iv[2]_i_7 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(abus_0[1]),
        .I2(tout__1_carry_i_10_0),
        .O(\iv[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF2C23202)) 
    \iv[2]_i_8 
       (.I0(\iv[10]_i_16_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(tout__1_carry_i_10_0),
        .I3(\iv[2]_i_2_0 ),
        .I4(\iv[11]_i_2_1 ),
        .O(\iv[2]_i_8_n_0 ));
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
    .INIT(64'hF0DFFFDCC0D3CFD0)) 
    \iv[3]_i_10 
       (.I0(abus_0[11]),
        .I1(\iv[14]_i_7_n_0 ),
        .I2(\stat_reg[2]_5 ),
        .I3(acmd),
        .I4(abus_0[3]),
        .I5(\sr_reg[3]_0 ),
        .O(\iv[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h90B02000)) 
    \iv[3]_i_11 
       (.I0(abus_0[3]),
        .I1(\sr_reg[3]_0 ),
        .I2(\iv[13]_i_10_n_0 ),
        .I3(acmd),
        .I4(\stat_reg[2]_5 ),
        .O(\iv[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \iv[3]_i_13 
       (.I0(tout__1_carry_i_10_0),
        .I1(abus_0[2]),
        .O(\iv[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EFF0E00)) 
    \iv[3]_i_2 
       (.I0(\tr_reg[3]_1 ),
        .I1(\iv[3]_i_6_n_0 ),
        .I2(\iv[3]_i_7_n_0 ),
        .I3(\sr_reg[4]_0 ),
        .I4(\iv[3]_i_8_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[3]_i_4 
       (.I0(\iv[3]_i_10_n_0 ),
        .I1(\sr[7]_i_7_n_0 ),
        .I2(\iv[3]_i_11_n_0 ),
        .O(\iv[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABABF)) 
    \iv[3]_i_6 
       (.I0(\bdatw[12]_INST_0_i_2_0 ),
        .I1(\sr[7]_i_9_0 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[7]_i_2_3 ),
        .I4(\stat_reg[2]_5 ),
        .I5(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FF4444444444)) 
    \iv[3]_i_7 
       (.I0(\iv[3]_i_13_n_0 ),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(\iv[3]_i_2_1 ),
        .I3(\iv[11]_i_2_4 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(acmd),
        .O(\iv[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hDDDD88C855550040)) 
    \iv[3]_i_8 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(tout__1_carry_i_10_0),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\sr[6]_i_3_0 ),
        .I4(\iv[11]_i_2_0 ),
        .I5(\iv[3]_i_2_0 ),
        .O(\iv[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[4]_i_1 
       (.I0(\iv[4]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\tr_reg[7]_0 [0]),
        .I3(\tr_reg[4]_0 ),
        .I4(\iv[4]_i_4_n_0 ),
        .O(cbus[4]));
  LUT4 #(
    .INIT(16'h837F)) 
    \iv[4]_i_10 
       (.I0(acmd),
        .I1(abus_0[4]),
        .I2(\sr_reg[4]_0 ),
        .I3(\stat_reg[2]_5 ),
        .O(\iv[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8B98CFBA8BDCCFFE)) 
    \iv[4]_i_11 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\stat_reg[2]_5 ),
        .I2(abus_0[4]),
        .I3(acmd),
        .I4(\sr_reg[4]_0 ),
        .I5(abus_0[12]),
        .O(\iv[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0047FFFF00470047)) 
    \iv[4]_i_15 
       (.I0(\iv[4]_i_8_0 ),
        .I1(\bdatw[8]_INST_0_i_2_1 ),
        .I2(\iv[4]_i_8_1 ),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\iv[8]_i_15_n_0 ),
        .I5(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(\iv[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000D5DD)) 
    \iv[4]_i_2 
       (.I0(\sr_reg[4]_0 ),
        .I1(\iv[4]_i_5_n_0 ),
        .I2(\tr_reg[4]_1 ),
        .I3(\iv[4]_i_7_n_0 ),
        .I4(\iv[4]_i_8_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \iv[4]_i_4 
       (.I0(\iv[4]_i_10_n_0 ),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(\iv[4]_i_11_n_0 ),
        .I3(\sr[7]_i_7_n_0 ),
        .O(\iv[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \iv[4]_i_5 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(tout__1_carry_i_10_0),
        .I2(abus_0[3]),
        .O(\iv[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBBBABBBB)) 
    \iv[4]_i_7 
       (.I0(acmd),
        .I1(\iv[14]_i_29_n_0 ),
        .I2(\iv[9]_i_14_n_0 ),
        .I3(\iv[12]_i_2_0 ),
        .I4(\bdatw[9]_INST_0_i_2_0 ),
        .O(\iv[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033550FFF)) 
    \iv[4]_i_8 
       (.I0(\iv[4]_i_2_0 ),
        .I1(\iv[4]_i_2_1 ),
        .I2(\iv[4]_i_15_n_0 ),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .I4(tout__1_carry_i_10_0),
        .I5(\sr_reg[4]_0 ),
        .O(\iv[4]_i_8_n_0 ));
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
    .INIT(64'hF0DFFFDCC0D3CFD0)) 
    \iv[5]_i_10 
       (.I0(abus_0[13]),
        .I1(\iv[14]_i_7_n_0 ),
        .I2(\stat_reg[2]_5 ),
        .I3(acmd),
        .I4(abus_0[5]),
        .I5(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(\iv[5]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h90B02000)) 
    \iv[5]_i_11 
       (.I0(abus_0[5]),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(\iv[13]_i_10_n_0 ),
        .I3(acmd),
        .I4(\stat_reg[2]_5 ),
        .O(\iv[5]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[5]_i_12 
       (.I0(\stat_reg[2]_5 ),
        .I1(abus_0[4]),
        .O(\iv[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EFF0E00)) 
    \iv[5]_i_2 
       (.I0(\tr_reg[5]_1 ),
        .I1(\iv[5]_i_6_n_0 ),
        .I2(\iv[5]_i_7_n_0 ),
        .I3(\sr_reg[4]_0 ),
        .I4(\tr_reg[5]_2 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[5]_i_4 
       (.I0(\iv[5]_i_10_n_0 ),
        .I1(\sr[7]_i_7_n_0 ),
        .I2(\iv[5]_i_11_n_0 ),
        .O(\iv[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAABABF)) 
    \iv[5]_i_6 
       (.I0(\bdatw[12]_INST_0_i_2_0 ),
        .I1(\iv[14]_i_3_0 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[14]_i_3_1 ),
        .I4(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF8888FCCC8888)) 
    \iv[5]_i_7 
       (.I0(\iv[5]_i_12_n_0 ),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(\iv[13]_i_17_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_0 ),
        .I4(acmd),
        .I5(\iv[5]_i_2_0 ),
        .O(\iv[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[6]_i_1 
       (.I0(\iv[6]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\tr_reg[7]_0 [2]),
        .I3(\tr_reg[6]_0 ),
        .I4(\iv[6]_i_4_n_0 ),
        .O(cbus[6]));
  LUT6 #(
    .INIT(64'hF0FFFCFCC0CF5F50)) 
    \iv[6]_i_10 
       (.I0(abus_0[14]),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_5 ),
        .I3(abus_0[6]),
        .I4(acmd),
        .I5(\iv[14]_i_7_n_0 ),
        .O(\iv[6]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h90B02000)) 
    \iv[6]_i_11 
       (.I0(abus_0[6]),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(\iv[13]_i_10_n_0 ),
        .I3(acmd),
        .I4(\stat_reg[2]_5 ),
        .O(\iv[6]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[6]_i_12 
       (.I0(\stat_reg[2]_5 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[6]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \iv[6]_i_14 
       (.I0(tout__1_carry_i_10_0),
        .I1(abus_0[5]),
        .O(\iv[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EFF0E00)) 
    \iv[6]_i_2 
       (.I0(\iv[6]_i_5_n_0 ),
        .I1(\iv[6]_i_6_n_0 ),
        .I2(\iv[6]_i_7_n_0 ),
        .I3(\sr_reg[4]_0 ),
        .I4(\tr_reg[6]_1 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[6]_i_4 
       (.I0(\iv[6]_i_10_n_0 ),
        .I1(\sr[7]_i_7_n_0 ),
        .I2(\iv[6]_i_11_n_0 ),
        .O(\iv[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h222222222F222FFF)) 
    \iv[6]_i_5 
       (.I0(\iv[6]_i_12_n_0 ),
        .I1(\iv[14]_i_25_n_0 ),
        .I2(\iv[10]_i_2_1 ),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\iv[6]_i_2_0 ),
        .I5(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABABF)) 
    \iv[6]_i_6 
       (.I0(\bdatw[12]_INST_0_i_2_0 ),
        .I1(\iv[10]_i_5_0 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[10]_i_5_1 ),
        .I4(\stat_reg[2]_5 ),
        .I5(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF4FF4444F4444444)) 
    \iv[6]_i_7 
       (.I0(\iv[6]_i_14_n_0 ),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(\iv[14]_i_30_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_0 ),
        .I4(acmd),
        .I5(\iv[6]_i_2_1 ),
        .O(\iv[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[7]_i_1 
       (.I0(\iv[7]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\tr_reg[7]_0 [3]),
        .I3(\tr_reg[7]_1 ),
        .I4(\iv[7]_i_4_n_0 ),
        .O(cbus[7]));
  LUT5 #(
    .INIT(32'hA0700080)) 
    \iv[7]_i_10 
       (.I0(abus_0[7]),
        .I1(acmd),
        .I2(\iv[13]_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_2_n_0 ),
        .I4(\stat_reg[2]_5 ),
        .O(\iv[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0DFFFDCC0D3CFD0)) 
    \iv[7]_i_11 
       (.I0(abus_0[15]),
        .I1(\iv[14]_i_7_n_0 ),
        .I2(\stat_reg[2]_5 ),
        .I3(acmd),
        .I4(abus_0[7]),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FF00FF00FF00)) 
    \iv[7]_i_14 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\sr_reg[0] ),
        .I3(acmd),
        .I4(abus_0[15]),
        .I5(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \iv[7]_i_17 
       (.I0(acmd),
        .I1(\stat_reg[2]_5 ),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000D5DD)) 
    \iv[7]_i_2 
       (.I0(\sr_reg[4]_0 ),
        .I1(\iv[7]_i_5_n_0 ),
        .I2(\iv[7]_i_6_n_0 ),
        .I3(\iv[7]_i_7_n_0 ),
        .I4(\iv[7]_i_8_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \iv[7]_i_4 
       (.I0(\iv[7]_i_10_n_0 ),
        .I1(\iv[7]_i_11_n_0 ),
        .I2(\sr[7]_i_7_n_0 ),
        .O(\iv[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \iv[7]_i_5 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(tout__1_carry_i_10_0),
        .I2(abus_0[6]),
        .O(\iv[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000555557DF)) 
    \iv[7]_i_6 
       (.I0(\sr[7]_i_11 ),
        .I1(\bdatw[9]_INST_0_i_2_0 ),
        .I2(\sr[7]_i_9_0 ),
        .I3(\iv[2]_i_2_1 ),
        .I4(\iv[9]_i_14_n_0 ),
        .I5(\iv[7]_i_14_n_0 ),
        .O(\iv[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \iv[7]_i_7 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(\iv[7]_i_2_4 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[7]_i_2_3 ),
        .O(\iv[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AEAE00AE)) 
    \iv[7]_i_8 
       (.I0(\iv[7]_i_17_n_0 ),
        .I1(\iv[7]_i_2_0 ),
        .I2(\iv[7]_i_2_1 ),
        .I3(\sr_reg[3]_0 ),
        .I4(\iv[7]_i_2_2 ),
        .I5(\sr_reg[4]_0 ),
        .O(\iv[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF75)) 
    \iv[8]_i_1 
       (.I0(\iv[8]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\tr_reg[11]_0 [0]),
        .I3(\tr_reg[8]_0 ),
        .I4(\iv[8]_i_4_n_0 ),
        .O(cbus[8]));
  LUT6 #(
    .INIT(64'hFDFDCFFCCDCDCFFC)) 
    \iv[8]_i_10 
       (.I0(abus_0[0]),
        .I1(\iv[14]_i_7_n_0 ),
        .I2(acmd),
        .I3(abus_0[8]),
        .I4(\stat_reg[2]_5 ),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[8]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h080C0800)) 
    \iv[8]_i_11 
       (.I0(\sr_reg[0] ),
        .I1(\iv[14]_i_7_n_0 ),
        .I2(\stat_reg[2]_5 ),
        .I3(acmd),
        .I4(abus_0[8]),
        .O(\iv[8]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h90B02000)) 
    \iv[8]_i_12 
       (.I0(abus_0[8]),
        .I1(\bdatw[8]_INST_0_i_1_n_0 ),
        .I2(\iv[13]_i_10_n_0 ),
        .I3(acmd),
        .I4(\stat_reg[2]_5 ),
        .O(\iv[8]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \iv[8]_i_15 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(abus_0[0]),
        .I2(\sr_reg[0] ),
        .O(\iv[8]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hF088F0FF)) 
    \iv[8]_i_16 
       (.I0(\badr[15]_INST_0_i_2 [6]),
        .I1(\sr_reg[0] ),
        .I2(\iv[12]_i_13_0 ),
        .I3(\bdatw[8]_INST_0_i_2_1 ),
        .I4(\badr[0]_INST_0_i_1 ),
        .O(\iv[8]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBFBAAFBAAAA)) 
    \iv[8]_i_2 
       (.I0(\iv[14]_i_2_n_0 ),
        .I1(\iv[8]_i_5_n_0 ),
        .I2(\iv[8]_i_6_n_0 ),
        .I3(\iv[8]_i_7_n_0 ),
        .I4(\iv[8]_i_8_n_0 ),
        .I5(\iv[8]_i_9_n_0 ),
        .O(\iv[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFD0)) 
    \iv[8]_i_4 
       (.I0(\iv[8]_i_10_n_0 ),
        .I1(\iv[8]_i_11_n_0 ),
        .I2(\sr[7]_i_7_n_0 ),
        .I3(\iv[8]_i_12_n_0 ),
        .O(\iv[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A3A0A0FFFF)) 
    \iv[8]_i_5 
       (.I0(\iv[0]_i_2_0 ),
        .I1(\iv[8]_i_2_0 ),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .I3(\stat_reg[2]_5 ),
        .I4(acmd),
        .I5(\sr[7]_i_11 ),
        .O(\iv[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFB00FFFF)) 
    \iv[8]_i_6 
       (.I0(acmd),
        .I1(abus_0[7]),
        .I2(\stat_reg[2]_5 ),
        .I3(\iv[14]_i_11_n_0 ),
        .I4(\sr_reg[4]_0 ),
        .O(\iv[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \iv[8]_i_7 
       (.I0(\iv[8]_i_15_n_0 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_10_0),
        .I3(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1DFF)) 
    \iv[8]_i_8 
       (.I0(\iv[8]_i_16_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_0 ),
        .I2(\iv[8]_i_2_1 ),
        .I3(tout__1_carry_i_10_0),
        .O(\iv[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hEEFAAAAA)) 
    \iv[8]_i_9 
       (.I0(\sr_reg[4]_0 ),
        .I1(\sr[6]_i_3_1 ),
        .I2(\sr[6]_i_3_2 ),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
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
    .INIT(8'h53)) 
    \iv[9]_i_10 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(abus_0[9]),
        .I2(acmd),
        .O(\iv[9]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h90B02000)) 
    \iv[9]_i_11 
       (.I0(abus_0[9]),
        .I1(\bdatw[9]_INST_0_i_1_n_0 ),
        .I2(\iv[13]_i_10_n_0 ),
        .I3(acmd),
        .I4(\stat_reg[2]_5 ),
        .O(\iv[9]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[9]_i_14 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\stat_reg[2]_5 ),
        .O(\iv[9]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \iv[9]_i_19 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\badr[1]_INST_0_i_1 ),
        .I2(\iv[1]_i_7_0 ),
        .I3(\bdatw[8]_INST_0_i_2_1 ),
        .O(\iv[9]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EFF0E00)) 
    \iv[9]_i_2 
       (.I0(\tr_reg[9]_1 ),
        .I1(\iv[9]_i_6_n_0 ),
        .I2(\iv[9]_i_7_n_0 ),
        .I3(\sr_reg[4]_0 ),
        .I4(\iv[9]_i_8_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F2F0000)) 
    \iv[9]_i_4 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\stat_reg[2]_5 ),
        .I2(\iv[9]_i_9_n_0 ),
        .I3(\iv[9]_i_10_n_0 ),
        .I4(\sr[7]_i_7_n_0 ),
        .I5(\iv[9]_i_11_n_0 ),
        .O(\iv[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h4045FFFF)) 
    \iv[9]_i_6 
       (.I0(\iv[9]_i_14_n_0 ),
        .I1(\iv[9]_i_2_3 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[9]_i_2_4 ),
        .I4(\sr[7]_i_11 ),
        .O(\iv[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD0FFFFFFD0D0D0D0)) 
    \iv[9]_i_7 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[9]_i_2_2 ),
        .I2(acmd),
        .I3(tout__1_carry_i_10_0),
        .I4(abus_0[8]),
        .I5(\iv[14]_i_11_n_0 ),
        .O(\iv[9]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hBB8B888B)) 
    \iv[9]_i_8 
       (.I0(\iv[9]_i_2_0 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\iv[9]_i_19_n_0 ),
        .I3(tout__1_carry_i_10_0),
        .I4(\iv[9]_i_2_1 ),
        .O(\iv[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDCFFCCDCDCFFC)) 
    \iv[9]_i_9 
       (.I0(abus_0[1]),
        .I1(\iv[14]_i_7_n_0 ),
        .I2(acmd),
        .I3(abus_0[9]),
        .I4(\stat_reg[2]_5 ),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[9]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[0]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [0]),
        .I4(fch_pc[0]),
        .I5(cbus[0]),
        .O(\pc_reg[15] [0]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[10]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [10]),
        .I4(fch_pc[10]),
        .I5(cbus[10]),
        .O(\pc_reg[15] [10]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[11]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [11]),
        .I4(fch_pc[11]),
        .I5(cbus[11]),
        .O(\pc_reg[15] [11]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[12]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [12]),
        .I4(fch_pc[12]),
        .I5(cbus[12]),
        .O(\pc_reg[15] [12]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[13]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [13]),
        .I4(fch_pc[13]),
        .I5(cbus[13]),
        .O(\pc_reg[15] [13]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[14]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [14]),
        .I4(fch_pc[14]),
        .I5(cbus[14]),
        .O(\pc_reg[15] [14]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[15]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [15]),
        .I4(fch_pc[15]),
        .I5(\sp_reg[15]_0 ),
        .O(\pc_reg[15] [15]));
  LUT2 #(
    .INIT(4'h2)) 
    \pc[15]_i_2 
       (.I0(ctl_selc[0]),
        .I1(ctl_selc[1]),
        .O(\pc[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pc[15]_i_3 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(ctl_fetch_ext),
        .O(\pc[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[1]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [1]),
        .I4(fch_pc[1]),
        .I5(cbus[1]),
        .O(\pc_reg[15] [1]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[2]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [2]),
        .I4(fch_pc[2]),
        .I5(cbus[2]),
        .O(\pc_reg[15] [2]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[3]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [3]),
        .I4(fch_pc[3]),
        .I5(cbus[3]),
        .O(\pc_reg[15] [3]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[4]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [4]),
        .I4(fch_pc[4]),
        .I5(cbus[4]),
        .O(\pc_reg[15] [4]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[5]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [5]),
        .I4(fch_pc[5]),
        .I5(cbus[5]),
        .O(\pc_reg[15] [5]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[6]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [6]),
        .I4(fch_pc[6]),
        .I5(cbus[6]),
        .O(\pc_reg[15] [6]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[7]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [7]),
        .I4(fch_pc[7]),
        .I5(cbus[7]),
        .O(\pc_reg[15] [7]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[8]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [8]),
        .I4(fch_pc[8]),
        .I5(cbus[8]),
        .O(\pc_reg[15] [8]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[9]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [9]),
        .I4(fch_pc[9]),
        .I5(cbus[9]),
        .O(\pc_reg[15] [9]));
  LUT6 #(
    .INIT(64'hFE00FFFFFE000000)) 
    \read_cyc[0]_i_1 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[2]_1 ),
        .I2(ctl_extadr),
        .I3(abus_0[0]),
        .I4(brdy),
        .I5(read_cyc),
        .O(brdy_0));
  FDRE rst_n_fl_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rst_n),
        .Q(rst_n_fl),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFFE4E4E400E4E4E4)) 
    \sp[0]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\badr[15]_INST_0_i_1_3 [0]),
        .I2(\sp_reg[0]_0 ),
        .I3(\sp[15]_i_2_n_0 ),
        .I4(\sr[15]_i_2_n_0 ),
        .I5(cbus[0]),
        .O(\read_cyc_reg[1] [0]));
  LUT6 #(
    .INIT(64'h0000000000000054)) 
    \sp[0]_i_2 
       (.I0(\sp[0]_i_4_n_0 ),
        .I1(ir[3]),
        .I2(\bcmd[0]_INST_0_i_14_n_0 ),
        .I3(\sp[0]_i_5_n_0 ),
        .I4(\sp[0]_i_6_n_0 ),
        .I5(\bcmd[1]_INST_0_i_4_n_0 ),
        .O(ctl_sp_inc));
  LUT5 #(
    .INIT(32'h5FFFFFFE)) 
    \sp[0]_i_4 
       (.I0(ir[6]),
        .I1(ir[4]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[7]),
        .O(\sp[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF7F7FFFFF7)) 
    \sp[0]_i_5 
       (.I0(\bcmd[1] ),
        .I1(brdy),
        .I2(ir[15]),
        .I3(ir[11]),
        .I4(ir[12]),
        .I5(Q[0]),
        .O(\sp[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h5FFE5FFF)) 
    \sp[0]_i_6 
       (.I0(ir[6]),
        .I1(ir[2]),
        .I2(ir[3]),
        .I3(ir[5]),
        .I4(ir[1]),
        .O(\sp[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF780)) 
    \sp[10]_i_1 
       (.I0(\sp[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(cbus[10]),
        .I3(\sp_reg[10]_0 ),
        .O(\read_cyc_reg[1] [10]));
  LUT4 #(
    .INIT(16'hF780)) 
    \sp[11]_i_1 
       (.I0(\sp[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(cbus[11]),
        .I3(\sp_reg[11]_0 ),
        .O(\read_cyc_reg[1] [11]));
  LUT4 #(
    .INIT(16'hF780)) 
    \sp[12]_i_1 
       (.I0(\sp[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(cbus[12]),
        .I3(\sp_reg[12]_0 ),
        .O(\read_cyc_reg[1] [12]));
  LUT4 #(
    .INIT(16'hF780)) 
    \sp[13]_i_1 
       (.I0(\sp[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(cbus[13]),
        .I3(\sp_reg[13]_0 ),
        .O(\read_cyc_reg[1] [13]));
  LUT4 #(
    .INIT(16'hF780)) 
    \sp[14]_i_1 
       (.I0(\sp[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(cbus[14]),
        .I3(\sp_reg[14]_0 ),
        .O(\read_cyc_reg[1] [14]));
  LUT4 #(
    .INIT(16'hF780)) 
    \sp[15]_i_1 
       (.I0(\sp[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(\sp_reg[15]_0 ),
        .I3(\sp_reg[15]_1 ),
        .O(\read_cyc_reg[1] [15]));
  LUT6 #(
    .INIT(64'hF7FFFFFFF7FFFFF7)) 
    \sp[15]_i_10 
       (.I0(\bcmd[1] ),
        .I1(brdy),
        .I2(ir[15]),
        .I3(ir[10]),
        .I4(ir[9]),
        .I5(ir[6]),
        .O(\sp[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sp[15]_i_2 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .O(\sp[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004550000)) 
    \sp[15]_i_4 
       (.I0(\sp[15]_i_6_n_0 ),
        .I1(ir[8]),
        .I2(\sp[15]_i_7_n_0 ),
        .I3(ir[4]),
        .I4(\bcmd[1]_INST_0_i_6_n_0 ),
        .I5(\sp[15]_i_8_n_0 ),
        .O(ctl_sp_dec));
  LUT3 #(
    .INIT(8'h7E)) 
    \sp[15]_i_6 
       (.I0(ir[14]),
        .I1(ir[12]),
        .I2(ir[13]),
        .O(\sp[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \sp[15]_i_7 
       (.I0(ir[7]),
        .I1(ir[6]),
        .O(\sp[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF55AFF3)) 
    \sp[15]_i_8 
       (.I0(ir[6]),
        .I1(ir[0]),
        .I2(ir[7]),
        .I3(ir[3]),
        .I4(ir[5]),
        .I5(\sp[15]_i_9_n_0 ),
        .O(\sp[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE7EFE7F)) 
    \sp[15]_i_9 
       (.I0(ir[11]),
        .I1(ir[12]),
        .I2(ir[10]),
        .I3(Q[0]),
        .I4(fch_irq_req),
        .I5(\sp[15]_i_10_n_0 ),
        .O(\sp[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF780)) 
    \sp[1]_i_1 
       (.I0(\sp[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(cbus[1]),
        .I3(\sp_reg[1]_0 ),
        .O(\read_cyc_reg[1] [1]));
  LUT4 #(
    .INIT(16'hF780)) 
    \sp[2]_i_1 
       (.I0(\sp[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(cbus[2]),
        .I3(\sp_reg[2]_0 ),
        .O(\read_cyc_reg[1] [2]));
  LUT4 #(
    .INIT(16'hF780)) 
    \sp[3]_i_1 
       (.I0(\sp[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(cbus[3]),
        .I3(\sp_reg[3]_0 ),
        .O(\read_cyc_reg[1] [3]));
  LUT4 #(
    .INIT(16'hF780)) 
    \sp[4]_i_1 
       (.I0(\sp[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(cbus[4]),
        .I3(\sp_reg[4]_0 ),
        .O(\read_cyc_reg[1] [4]));
  LUT4 #(
    .INIT(16'hF780)) 
    \sp[5]_i_1 
       (.I0(\sp[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(cbus[5]),
        .I3(\sp_reg[5]_0 ),
        .O(\read_cyc_reg[1] [5]));
  LUT4 #(
    .INIT(16'hF780)) 
    \sp[6]_i_1 
       (.I0(\sp[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(cbus[6]),
        .I3(\sp_reg[6]_0 ),
        .O(\read_cyc_reg[1] [6]));
  LUT4 #(
    .INIT(16'hF780)) 
    \sp[7]_i_1 
       (.I0(\sp[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(cbus[7]),
        .I3(\sp_reg[7]_0 ),
        .O(\read_cyc_reg[1] [7]));
  LUT4 #(
    .INIT(16'hF780)) 
    \sp[8]_i_1 
       (.I0(\sp[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(cbus[8]),
        .I3(\sp_reg[8]_0 ),
        .O(\read_cyc_reg[1] [8]));
  LUT4 #(
    .INIT(16'hF780)) 
    \sp[9]_i_1 
       (.I0(\sp[15]_i_2_n_0 ),
        .I1(\sr[15]_i_2_n_0 ),
        .I2(cbus[9]),
        .I3(\sp_reg[9]_0 ),
        .O(\read_cyc_reg[1] [9]));
  LUT5 #(
    .INIT(32'hF777F000)) 
    \sr[0]_i_1 
       (.I0(\sr[15]_i_2_n_0 ),
        .I1(\sr[15]_i_3_n_0 ),
        .I2(cbus[0]),
        .I3(\sr[13]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[0]_8 ));
  LUT5 #(
    .INIT(32'hF777F000)) 
    \sr[10]_i_1 
       (.I0(\sr[15]_i_2_n_0 ),
        .I1(\sr[15]_i_3_n_0 ),
        .I2(cbus[10]),
        .I3(\sr[13]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [10]),
        .O(\sr_reg[10]_0 ));
  LUT5 #(
    .INIT(32'hF777F000)) 
    \sr[11]_i_1 
       (.I0(\sr[15]_i_2_n_0 ),
        .I1(\sr[15]_i_3_n_0 ),
        .I2(cbus[11]),
        .I3(\sr[13]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [11]),
        .O(\sr_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hFFEEFFFFFAAA0000)) 
    \sr[12]_i_1 
       (.I0(\sr[12]_i_2_n_0 ),
        .I1(\sr[13]_i_3_n_0 ),
        .I2(\badr[15]_INST_0_i_2 [12]),
        .I3(\sr[13]_i_4_n_0 ),
        .I4(rst_n),
        .I5(cpuid[0]),
        .O(\sr_reg[13] [0]));
  LUT5 #(
    .INIT(32'h0000FEF0)) 
    \sr[12]_i_2 
       (.I0(ctl_sr_upd),
        .I1(ctl_sr_ldie),
        .I2(\badr[15]_INST_0_i_2 [12]),
        .I3(cpuid[0]),
        .I4(\sr[7]_i_4_n_0 ),
        .O(\sr[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEFFFFFAAA0000)) 
    \sr[13]_i_1 
       (.I0(\sr[13]_i_2_n_0 ),
        .I1(\sr[13]_i_3_n_0 ),
        .I2(\badr[15]_INST_0_i_2 [13]),
        .I3(\sr[13]_i_4_n_0 ),
        .I4(rst_n),
        .I5(cpuid[1]),
        .O(\sr_reg[13] [1]));
  LUT5 #(
    .INIT(32'h0000FEF0)) 
    \sr[13]_i_2 
       (.I0(ctl_sr_upd),
        .I1(ctl_sr_ldie),
        .I2(\badr[15]_INST_0_i_2 [13]),
        .I3(cpuid[1]),
        .I4(\sr[7]_i_4_n_0 ),
        .O(\sr[13]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \sr[13]_i_3 
       (.I0(\sr[15]_i_2_n_0 ),
        .I1(\sr[15]_i_3_n_0 ),
        .I2(\sr[7]_i_4_n_0 ),
        .O(\sr[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \sr[13]_i_4 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[2]),
        .I2(\sr[15]_i_2_n_0 ),
        .I3(\sr[15]_i_3_n_0 ),
        .I4(ctl_selc[4]),
        .O(\sr[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \sr[13]_i_5 
       (.I0(\sr[13]_i_6_n_0 ),
        .I1(\sr[13]_i_7_n_0 ),
        .I2(\fch_irq_lev[1]_i_3_n_0 ),
        .I3(ir[1]),
        .I4(ir[9]),
        .I5(\bcmd[1] ),
        .O(ctl_sr_ldie));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \sr[13]_i_6 
       (.I0(ir[3]),
        .I1(ir[0]),
        .I2(ir[11]),
        .I3(ir[2]),
        .I4(Q[0]),
        .I5(brdy),
        .O(\sr[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sr[13]_i_7 
       (.I0(ir[7]),
        .I1(ir[5]),
        .I2(ir[4]),
        .I3(ir[10]),
        .I4(ir[8]),
        .I5(ir[6]),
        .O(\sr[13]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \sr[15]_i_1 
       (.I0(\sr[15]_i_2_n_0 ),
        .I1(\sr[15]_i_3_n_0 ),
        .I2(rst_n),
        .O(rst_n_0));
  LUT6 #(
    .INIT(64'hFBFBFBFBAAFBFBFB)) 
    \sr[15]_i_10 
       (.I0(\badrx[15]_INST_0_i_5_n_0 ),
        .I1(\sr[15]_i_21_n_0 ),
        .I2(\sr[15]_i_22_n_0 ),
        .I3(ir[0]),
        .I4(ir[7]),
        .I5(\sr[15]_i_23_n_0 ),
        .O(\sr[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8AA88888888)) 
    \sr[15]_i_11 
       (.I0(\sr[15]_i_5_0 ),
        .I1(\sr[15]_i_24_n_0 ),
        .I2(\sr[15]_i_25_n_0 ),
        .I3(\badrx[15]_INST_0_i_2_n_0 ),
        .I4(\sr[15]_i_26_n_0 ),
        .I5(\ccmd[3]_INST_0_i_4_n_0 ),
        .O(\sr[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0404FF04)) 
    \sr[15]_i_12 
       (.I0(\sr[15]_i_27_n_0 ),
        .I1(Q[0]),
        .I2(ir[15]),
        .I3(ir[8]),
        .I4(\sr[15]_i_6_n_0 ),
        .I5(Q[1]),
        .O(\sr[15]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \sr[15]_i_13 
       (.I0(ir[15]),
        .I1(ir[14]),
        .I2(ir[13]),
        .O(\sr[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h3377FFF03377FFFF)) 
    \sr[15]_i_14 
       (.I0(\sr[15]_i_28_n_0 ),
        .I1(\sr[15]_i_29_n_0 ),
        .I2(\sr[15]_i_30_n_0 ),
        .I3(ir[10]),
        .I4(Q[0]),
        .I5(ir[4]),
        .O(\sr[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hACAFAFAFFCFFFCFF)) 
    \sr[15]_i_15 
       (.I0(\sr[15]_i_31_n_0 ),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(ir[4]),
        .I4(crdy),
        .I5(ir[8]),
        .O(\sr[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F4FFFFF4FFF)) 
    \sr[15]_i_16 
       (.I0(\sr[15]_i_32_n_0 ),
        .I1(\sr[15]_i_33_n_0 ),
        .I2(\ccmd[4]_INST_0_i_4_n_0 ),
        .I3(ir[4]),
        .I4(\tr[15]_i_37_n_0 ),
        .I5(Q[0]),
        .O(\sr[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0F8FFFCFAFAFFFFF)) 
    \sr[15]_i_17 
       (.I0(\sr[15]_i_23_n_0 ),
        .I1(\sr[15]_i_34_n_0 ),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[1]),
        .I5(\sr[15]_i_21_n_0 ),
        .O(\sr[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \sr[15]_i_18 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(ir[10]),
        .I5(\bdatw[15]_INST_0_i_71_n_0 ),
        .O(\sr[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hF9EFFFFFFFFFFFFF)) 
    \sr[15]_i_19 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(ir[0]),
        .I3(ir[2]),
        .I4(\sr[15]_i_35_n_0 ),
        .I5(\bdatw[15]_INST_0_i_10_0 ),
        .O(\sr[15]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \sr[15]_i_2 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[2]),
        .I2(ctl_selc[4]),
        .O(\sr[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100000001000100)) 
    \sr[15]_i_20 
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(ir[0]),
        .I4(brdy),
        .I5(ir[1]),
        .O(\sr[15]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \sr[15]_i_21 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(ir[9]),
        .O(\sr[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00FFF7FFFFFFF7FF)) 
    \sr[15]_i_22 
       (.I0(ir[3]),
        .I1(brdy),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(ir[8]),
        .I5(ir[0]),
        .O(\sr[15]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \sr[15]_i_23 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[11]),
        .I3(\badrx[15]_INST_0_i_3_n_0 ),
        .I4(ir[8]),
        .O(\sr[15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \sr[15]_i_24 
       (.I0(\badr[15]_INST_0_i_142_n_0 ),
        .I1(\bcmd[0]_INST_0_i_5_n_0 ),
        .I2(ir[3]),
        .I3(ir[11]),
        .I4(ir[12]),
        .I5(\tr[15]_i_37_n_0 ),
        .O(\sr[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h000B000003FF0000)) 
    \sr[15]_i_25 
       (.I0(crdy),
        .I1(ir[8]),
        .I2(ir[7]),
        .I3(ir[9]),
        .I4(ir[3]),
        .I5(ir[10]),
        .O(\sr[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF55FFFCFD)) 
    \sr[15]_i_26 
       (.I0(ir[7]),
        .I1(ir[4]),
        .I2(ir[3]),
        .I3(ir[0]),
        .I4(ir[6]),
        .I5(ir[5]),
        .O(\sr[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h4444444400004404)) 
    \sr[15]_i_27 
       (.I0(\sr[15]_i_36_n_0 ),
        .I1(\sr[15]_i_37_n_0 ),
        .I2(\sr[15]_i_18_n_0 ),
        .I3(brdy),
        .I4(\sr[15]_i_38_n_0 ),
        .I5(\bdatw[15]_INST_0_i_93_n_0 ),
        .O(\sr[15]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \sr[15]_i_28 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[4]),
        .I3(ir[6]),
        .I4(brdy),
        .O(\sr[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h40FF40FFFFFF40FF)) 
    \sr[15]_i_29 
       (.I0(\tr[15]_i_58_n_0 ),
        .I1(ir[1]),
        .I2(ir[6]),
        .I3(ir[10]),
        .I4(\tr[15]_i_61_n_0 ),
        .I5(\sr[15]_i_39_n_0 ),
        .O(\sr[15]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sr[15]_i_3 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .O(\sr[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \sr[15]_i_30 
       (.I0(ir[8]),
        .I1(ir[7]),
        .I2(ir[9]),
        .O(\sr[15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FBFFEFFFFFFFF)) 
    \sr[15]_i_31 
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(ir[6]),
        .I3(ir[5]),
        .I4(ir[7]),
        .I5(ir[1]),
        .O(\sr[15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hBB33BF33BB33BB33)) 
    \sr[15]_i_32 
       (.I0(\sr[15]_i_28_n_0 ),
        .I1(Q[0]),
        .I2(crdy),
        .I3(ir[10]),
        .I4(\sr[15]_i_40_n_0 ),
        .I5(\bdatw[15]_INST_0_i_94_n_0 ),
        .O(\sr[15]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h5D7F0D0FFFFFFFFF)) 
    \sr[15]_i_33 
       (.I0(\ccmd[4]_INST_0_i_14_n_0 ),
        .I1(ir[7]),
        .I2(ir[4]),
        .I3(ir[1]),
        .I4(\badrx[15]_INST_0_i_3_n_0 ),
        .I5(crdy),
        .O(\sr[15]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \sr[15]_i_34 
       (.I0(brdy),
        .I1(ir[6]),
        .I2(ir[4]),
        .O(\sr[15]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \sr[15]_i_35 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(ir[14]),
        .O(\sr[15]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hF100FF00F1000000)) 
    \sr[15]_i_36 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(\sr[15]_i_41_n_0 ),
        .I2(\sr[15]_i_42_n_0 ),
        .I3(\ccmd[3]_INST_0_i_4_n_0 ),
        .I4(ir[10]),
        .I5(\sr[15]_i_43_n_0 ),
        .O(\sr[15]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDDDFDFDFDFDF)) 
    \sr[15]_i_37 
       (.I0(\ccmd[4]_INST_0_i_4_n_0 ),
        .I1(\bcmd[0]_INST_0_i_5_n_0 ),
        .I2(\sr[15]_i_44_n_0 ),
        .I3(ir[3]),
        .I4(\badrx[15]_INST_0_i_3_n_0 ),
        .I5(crdy),
        .O(\sr[15]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0004040000000400)) 
    \sr[15]_i_38 
       (.I0(\stat[1]_i_19_n_0 ),
        .I1(brdy),
        .I2(ir[0]),
        .I3(ir[1]),
        .I4(ir[3]),
        .I5(ir[2]),
        .O(\sr[15]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \sr[15]_i_39 
       (.I0(ir[1]),
        .I1(ir[4]),
        .I2(ir[7]),
        .O(\sr[15]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFBA)) 
    \sr[15]_i_4 
       (.I0(Q[1]),
        .I1(\sr[15]_i_6_n_0 ),
        .I2(ir[9]),
        .I3(\sr[15]_i_7_n_0 ),
        .I4(\sr[15]_i_8_n_0 ),
        .I5(Q[2]),
        .O(ctl_selc[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \sr[15]_i_40 
       (.I0(ir[7]),
        .I1(ir[1]),
        .O(\sr[15]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h3FFFFFFFEFEFFFFF)) 
    \sr[15]_i_41 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(ir[3]),
        .I3(\sr[15]_i_45_n_0 ),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\sr[15]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h2022002220000000)) 
    \sr[15]_i_42 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(crdy),
        .I3(ir[7]),
        .I4(ir[3]),
        .I5(ir[0]),
        .O(\sr[15]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \sr[15]_i_43 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(brdy),
        .I3(ir[6]),
        .I4(ir[3]),
        .O(\sr[15]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFA8FF8800000000)) 
    \sr[15]_i_44 
       (.I0(\bdatw[15]_INST_0_i_94_n_0 ),
        .I1(\sr[15]_i_46_n_0 ),
        .I2(\bcmd[0]_INST_0_i_9_n_0 ),
        .I3(\sr[15]_i_43_n_0 ),
        .I4(crdy),
        .I5(ir[10]),
        .O(\sr[15]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[15]_i_45 
       (.I0(ir[0]),
        .I1(brdy),
        .O(\sr[15]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sr[15]_i_46 
       (.I0(ir[0]),
        .I1(ir[7]),
        .O(\sr[15]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBABBBABBAAAA)) 
    \sr[15]_i_5 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(Q[2]),
        .I2(\sr[15]_i_9_n_0 ),
        .I3(\sr[15]_i_10_n_0 ),
        .I4(\sr[15]_i_11_n_0 ),
        .I5(\sr[15]_i_12_n_0 ),
        .O(ctl_selc[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF8480FFFF)) 
    \sr[15]_i_6 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[11]),
        .I4(ir[15]),
        .I5(Q[0]),
        .O(\sr[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h22002A00AAAAAAAA)) 
    \sr[15]_i_7 
       (.I0(\sr[15]_i_13_n_0 ),
        .I1(\sr[15]_i_14_n_0 ),
        .I2(\sr[15]_i_15_n_0 ),
        .I3(\badr[15]_INST_0_i_116_n_0 ),
        .I4(\ccmd[1]_INST_0_i_7_0 ),
        .I5(\sr[15]_i_16_n_0 ),
        .O(\sr[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0E0E0E0E000E0)) 
    \sr[15]_i_8 
       (.I0(\sr[15]_i_17_n_0 ),
        .I1(\badrx[15]_INST_0_i_5_n_0 ),
        .I2(Q[1]),
        .I3(\sr[15]_i_18_n_0 ),
        .I4(\ccmd[1]_INST_0_i_18_n_0 ),
        .I5(ir[12]),
        .O(\sr[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F4F4FFF4F4F)) 
    \sr[15]_i_9 
       (.I0(\sr[15]_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_52_n_0 ),
        .I2(Q[1]),
        .I3(\bdatw[15]_INST_0_i_70_n_0 ),
        .I4(\sr[15]_i_20_n_0 ),
        .I5(\fch_irq_lev[1]_i_5_n_0 ),
        .O(\sr[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF777F000)) 
    \sr[1]_i_1 
       (.I0(\sr[15]_i_2_n_0 ),
        .I1(\sr[15]_i_3_n_0 ),
        .I2(cbus[1]),
        .I3(\sr[13]_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[1]_25 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sr[2]_i_1 
       (.I0(\sr[2]_i_2_n_0 ),
        .I1(\sr[13]_i_3_n_0 ),
        .I2(cbus[2]),
        .I3(\badr[15]_INST_0_i_2 [2]),
        .I4(\sr[13]_i_4_n_0 ),
        .O(\sr_reg[2] ));
  LUT5 #(
    .INIT(32'h0000FB40)) 
    \sr[2]_i_2 
       (.I0(ctl_sr_upd),
        .I1(ctl_sr_ldie),
        .I2(fch_irq_lev[0]),
        .I3(\badr[15]_INST_0_i_2 [2]),
        .I4(\sr[7]_i_4_n_0 ),
        .O(\sr[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sr[3]_i_1 
       (.I0(\sr[3]_i_2_n_0 ),
        .I1(\sr[13]_i_3_n_0 ),
        .I2(cbus[3]),
        .I3(\badr[15]_INST_0_i_2 [3]),
        .I4(\sr[13]_i_4_n_0 ),
        .O(\sr_reg[3] ));
  LUT5 #(
    .INIT(32'h0000FB40)) 
    \sr[3]_i_2 
       (.I0(ctl_sr_upd),
        .I1(ctl_sr_ldie),
        .I2(fch_irq_lev[1]),
        .I3(\badr[15]_INST_0_i_2 [3]),
        .I4(\sr[7]_i_4_n_0 ),
        .O(\sr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EEE4EEE4)) 
    \sr[4]_i_1 
       (.I0(ctl_sr_upd),
        .I1(\badr[15]_INST_0_i_2 [4]),
        .I2(\sr[4]_i_2_n_0 ),
        .I3(\sr[4]_i_3_n_0 ),
        .I4(cbus[4]),
        .I5(\sr[7]_i_4_n_0 ),
        .O(\sr_reg[4] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_10 
       (.I0(\iv[4]_i_2_n_0 ),
        .I1(\iv[5]_i_2_n_0 ),
        .I2(\sr[7]_i_9_n_0 ),
        .I3(\iv[14]_i_2_n_0 ),
        .O(\sr[4]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_11 
       (.I0(\iv[2]_i_2_n_0 ),
        .I1(\iv[13]_i_2_n_0 ),
        .I2(\iv[7]_i_2_n_0 ),
        .I3(\iv[1]_i_2_n_0 ),
        .O(\sr[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAAE)) 
    \sr[4]_i_12 
       (.I0(\iv[3]_i_2_n_0 ),
        .I1(\iv[14]_i_4_n_0 ),
        .I2(\iv[14]_i_3_n_0 ),
        .I3(\iv[14]_i_2_n_0 ),
        .I4(\iv[11]_i_2_n_0 ),
        .I5(\iv[0]_i_2_n_0 ),
        .O(\sr[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFBBBAAAAFBBBFBBB)) 
    \sr[4]_i_13 
       (.I0(\iv[4]_i_4_n_0 ),
        .I1(\sr[7]_i_7_n_0 ),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(\stat_reg[2]_5 ),
        .I4(tout__1_carry_i_10_0),
        .I5(\iv[13]_i_10_n_0 ),
        .O(\sr[4]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \sr[4]_i_14 
       (.I0(tout__1_carry_i_10_0),
        .I1(\iv[13]_i_10_n_0 ),
        .O(\sr[4]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \sr[4]_i_2 
       (.I0(\sr[4]_i_4_n_0 ),
        .I1(\sr[4]_i_5_n_0 ),
        .I2(\sr[4]_i_6_n_0 ),
        .I3(\sr[4]_i_7_n_0 ),
        .I4(\sr[4]_i_8_n_0 ),
        .O(\sr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \sr[4]_i_3 
       (.I0(\iv[12]_i_2_n_0 ),
        .I1(\iv[10]_i_2_n_0 ),
        .I2(\sr[4]_i_9_n_0 ),
        .I3(\sr[4]_i_10_n_0 ),
        .I4(\sr[4]_i_11_n_0 ),
        .I5(\sr[4]_i_12_n_0 ),
        .O(\sr[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \sr[4]_i_4 
       (.I0(\sr[7]_i_6_n_0 ),
        .I1(\sr[7]_i_7_n_0 ),
        .I2(\sr[7]_i_8_n_0 ),
        .I3(\iv[14]_i_6_n_0 ),
        .I4(\iv[9]_i_4_n_0 ),
        .I5(\iv[8]_i_4_n_0 ),
        .O(\sr[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_5 
       (.I0(\sr[4]_i_13_n_0 ),
        .I1(\iv[5]_i_4_n_0 ),
        .I2(\iv[6]_i_4_n_0 ),
        .I3(\iv[0]_i_4_n_0 ),
        .O(\sr[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_6 
       (.I0(\iv[2]_i_4_n_0 ),
        .I1(\iv[7]_i_4_n_0 ),
        .I2(\iv[3]_i_4_n_0 ),
        .I3(\iv[1]_i_4_n_0 ),
        .O(\sr[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \sr[4]_i_7 
       (.I0(\iv[12]_i_4_n_0 ),
        .I1(\iv[10]_i_4_n_0 ),
        .I2(\iv[13]_i_5_n_0 ),
        .I3(\iv[11]_i_4_n_0 ),
        .O(\sr[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF2A)) 
    \sr[4]_i_8 
       (.I0(\sr[4]_i_14_n_0 ),
        .I1(acmd),
        .I2(tout__1_carry_i_13_n_0),
        .I3(\badr[15]_INST_0_i_2 [4]),
        .I4(\sr[4]_i_2_0 ),
        .I5(\iv[13]_i_3_n_0 ),
        .O(\sr[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \sr[4]_i_9 
       (.I0(\iv[8]_i_2_n_0 ),
        .I1(\iv[6]_i_2_n_0 ),
        .I2(\iv[9]_i_2_n_0 ),
        .O(\sr[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFF00E4E4)) 
    \sr[5]_i_1 
       (.I0(ctl_sr_upd),
        .I1(\badr[15]_INST_0_i_2 [5]),
        .I2(alu_sr_flag[1]),
        .I3(cbus[5]),
        .I4(\sr[7]_i_4_n_0 ),
        .O(\sr_reg[5] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00060090)) 
    \sr[5]_i_2 
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(abus_0[15]),
        .I3(\iv[13]_i_3_n_0 ),
        .I4(\sr_reg[7]_1 [3]),
        .I5(\sr[5]_i_3_n_0 ),
        .O(alu_sr_flag[1]));
  LUT4 #(
    .INIT(16'h0060)) 
    \sr[5]_i_3 
       (.I0(\sr[6]_i_3_n_0 ),
        .I1(\sr[7]_i_9_n_0 ),
        .I2(\sr[5]_i_4_n_0 ),
        .I3(\sr_reg[4]_0 ),
        .O(\sr[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \sr[5]_i_4 
       (.I0(ctl_copro),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .I2(\ccmd[4]_INST_0_i_2_n_0 ),
        .I3(tout__1_carry_i_10_0),
        .I4(\iv[14]_i_7_n_0 ),
        .O(\sr[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF00E4E4)) 
    \sr[6]_i_1 
       (.I0(ctl_sr_upd),
        .I1(\badr[15]_INST_0_i_2 [6]),
        .I2(alu_sr_flag[2]),
        .I3(cbus[6]),
        .I4(\sr[7]_i_4_n_0 ),
        .O(\sr_reg[6] ));
  LUT4 #(
    .INIT(16'hBAAB)) 
    \sr[6]_i_2 
       (.I0(\sr[6]_i_3_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(acmd),
        .I3(\sr_reg[6]_1 ),
        .O(alu_sr_flag[2]));
  LUT6 #(
    .INIT(64'h00000000DDDDFF0F)) 
    \sr[6]_i_3 
       (.I0(\sr[6]_i_4_n_0 ),
        .I1(\sr[5]_i_3_0 ),
        .I2(\sr[6]_i_6_n_0 ),
        .I3(\sr[6]_i_7_n_0 ),
        .I4(\sr_reg[4]_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\sr[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sr[6]_i_4 
       (.I0(\iv[0]_i_14_n_0 ),
        .I1(abus_0[15]),
        .O(\sr[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBEAFBFBFBEAEAEA)) 
    \sr[6]_i_6 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(\bdatw[9]_INST_0_i_2_0 ),
        .I2(\sr[6]_i_3_3 ),
        .I3(\sr[6]_i_3_4 ),
        .I4(\stat_reg[2]_5 ),
        .I5(\sr[6]_i_3_0 ),
        .O(\sr[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h001B)) 
    \sr[6]_i_7 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\sr[6]_i_3_2 ),
        .I2(\sr[6]_i_3_1 ),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .O(\sr[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF00E4E4)) 
    \sr[7]_i_1 
       (.I0(ctl_sr_upd),
        .I1(\badr[15]_INST_0_i_2 [7]),
        .I2(\iv[13]_i_3_0 ),
        .I3(cbus[7]),
        .I4(\sr[7]_i_4_n_0 ),
        .O(\sr_reg[7] ));
  LUT6 #(
    .INIT(64'hFF04FCCC00040CCC)) 
    \sr[7]_i_10 
       (.I0(ir[7]),
        .I1(ir[11]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[10]),
        .I5(\sr[7]_i_17_n_0 ),
        .O(\sr[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \sr[7]_i_12 
       (.I0(tout__1_carry_i_10_0),
        .I1(abus_0[14]),
        .I2(\iv[14]_i_11_n_0 ),
        .O(\sr[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hE4FF)) 
    \sr[7]_i_14 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\sr[7]_i_9_0 ),
        .I2(\iv[2]_i_2_1 ),
        .I3(\iv[14]_i_24_n_0 ),
        .O(\sr[7]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hF8F0F8F8)) 
    \sr[7]_i_15 
       (.I0(acmd),
        .I1(\sr_reg[4]_0 ),
        .I2(\iv[14]_i_2_n_0 ),
        .I3(\iv[0]_i_14_n_0 ),
        .I4(abus_0[15]),
        .O(\sr[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000089880100)) 
    \sr[7]_i_17 
       (.I0(ir[9]),
        .I1(ir[11]),
        .I2(ctl_fetch_inferred_i_25_n_0),
        .I3(ir[6]),
        .I4(ir[10]),
        .I5(\sr[7]_i_20_n_0 ),
        .O(\sr[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0002000200020000)) 
    \sr[7]_i_2 
       (.I0(\sr[7]_i_5_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(ir[14]),
        .I5(ir[15]),
        .O(ctl_sr_upd));
  LUT6 #(
    .INIT(64'hC0C0FFFFBFFFFFC0)) 
    \sr[7]_i_20 
       (.I0(ir[3]),
        .I1(ir[9]),
        .I2(ir[5]),
        .I3(ir[4]),
        .I4(ir[6]),
        .I5(ir[7]),
        .O(\sr[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \sr[7]_i_3 
       (.I0(\sr[7]_i_6_n_0 ),
        .I1(\sr[7]_i_7_n_0 ),
        .I2(\sr[7]_i_8_n_0 ),
        .I3(\sr[7]_i_9_n_0 ),
        .I4(\sr_reg[7]_1 [3]),
        .I5(\iv[13]_i_3_n_0 ),
        .O(\iv[13]_i_3_0 ));
  LUT5 #(
    .INIT(32'hF000F200)) 
    \sr[7]_i_4 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[2]),
        .I2(\sr[15]_i_2_n_0 ),
        .I3(\sr[15]_i_3_n_0 ),
        .I4(ctl_selc[4]),
        .O(\sr[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0B3000F00B300)) 
    \sr[7]_i_5 
       (.I0(ir[11]),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(ir[15]),
        .I4(ir[13]),
        .I5(\sr[7]_i_10_n_0 ),
        .O(\sr[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCF0FFC0CF5F50)) 
    \sr[7]_i_6 
       (.I0(abus_0[7]),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_5 ),
        .I3(abus_0[15]),
        .I4(acmd),
        .I5(\iv[14]_i_7_n_0 ),
        .O(\sr[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \sr[7]_i_7 
       (.I0(ctl_copro),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .I2(\ccmd[4]_INST_0_i_2_n_0 ),
        .O(\sr[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF080708000007080)) 
    \sr[7]_i_8 
       (.I0(abus_0[15]),
        .I1(acmd),
        .I2(\iv[13]_i_10_n_0 ),
        .I3(\stat_reg[2]_5 ),
        .I4(\bdatw[15]_INST_0_i_1_n_0 ),
        .I5(\sr[4]_i_4_0 ),
        .O(\sr[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000D5DD)) 
    \sr[7]_i_9 
       (.I0(\sr_reg[4]_0 ),
        .I1(\sr[7]_i_12_n_0 ),
        .I2(\sr[4]_i_10_0 ),
        .I3(\sr[7]_i_14_n_0 ),
        .I4(\sr[7]_i_15_n_0 ),
        .I5(\sr[4]_i_10_1 ),
        .O(\sr[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF54FFFFFF)) 
    \stat[0]_i_1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(\stat[0]_i_3_n_0 ),
        .I2(\stat[0]_i_4_n_0 ),
        .I3(\stat[0]_i_5_n_0 ),
        .I4(\stat[0]_i_6_n_0 ),
        .I5(\stat[0]_i_7_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \stat[0]_i_10 
       (.I0(brdy),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[3]),
        .I4(ir[11]),
        .I5(ir[7]),
        .O(\stat[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h4F7F7F7F4F7F4C4C)) 
    \stat[0]_i_11 
       (.I0(\stat[0]_i_18_n_0 ),
        .I1(ir[11]),
        .I2(ir[9]),
        .I3(\stat[0]_i_19_n_0 ),
        .I4(\badrx[15]_INST_0_i_3_n_0 ),
        .I5(crdy),
        .O(\stat[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBABAAABAAAAAAAAA)) 
    \stat[0]_i_12 
       (.I0(\stat[0]_i_20_n_0 ),
        .I1(\ccmd[4]_INST_0_i_16_n_0 ),
        .I2(\bcmd[2]_INST_0_i_2_n_0 ),
        .I3(\stat[0]_i_21_n_0 ),
        .I4(\stat[0]_i_22_n_0 ),
        .I5(\ccmd[3]_INST_0_i_15_n_0 ),
        .O(\stat[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h2222222202220220)) 
    \stat[0]_i_13 
       (.I0(\ccmd[4]_INST_0_i_12_n_0 ),
        .I1(\stat[0]_i_23_n_0 ),
        .I2(ir[6]),
        .I3(ir[5]),
        .I4(ir[4]),
        .I5(\stat[0]_i_24_n_0 ),
        .O(\stat[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \stat[0]_i_14 
       (.I0(ir[9]),
        .I1(ir[10]),
        .O(\stat[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h73F3)) 
    \stat[0]_i_15 
       (.I0(brdy),
        .I1(ir[11]),
        .I2(ir[8]),
        .I3(ir[10]),
        .O(\stat[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFEAAA)) 
    \stat[0]_i_17 
       (.I0(\stat[0]_i_25_n_0 ),
        .I1(ir[3]),
        .I2(ctl_fetch_ext_fl_i_7_n_0),
        .I3(\badr[15]_INST_0_i_2 [10]),
        .I4(Q[2]),
        .I5(\stat[1]_i_7_n_0 ),
        .O(\stat[0]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \stat[0]_i_18 
       (.I0(brdy),
        .I1(ir[6]),
        .I2(ir[10]),
        .O(\stat[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \stat[0]_i_19 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(brdy),
        .I3(ir[6]),
        .O(\stat[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h15000000FFFFFFFF)) 
    \stat[0]_i_2 
       (.I0(\stat[0]_i_8_n_0 ),
        .I1(\stat[0]_i_9_n_0 ),
        .I2(\stat[0]_i_10_n_0 ),
        .I3(\stat[0]_i_4_n_0 ),
        .I4(\stat[0]_i_11_n_0 ),
        .I5(ir[14]),
        .O(\stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0808330000000000)) 
    \stat[0]_i_20 
       (.I0(brdy),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(crdy),
        .I4(ir[9]),
        .I5(\stat[0]_i_26_n_0 ),
        .O(\stat[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[0]_i_21 
       (.I0(ir[9]),
        .I1(ir[6]),
        .O(\stat[0]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \stat[0]_i_22 
       (.I0(ir[8]),
        .I1(ir[7]),
        .O(\stat[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h00220000F0000000)) 
    \stat[0]_i_23 
       (.I0(brdy),
        .I1(ir[6]),
        .I2(crdy),
        .I3(ir[10]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\stat[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFF7F7FFF7)) 
    \stat[0]_i_24 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(\ccmd[4]_INST_0_i_6_n_0 ),
        .I3(ir[3]),
        .I4(brdy),
        .I5(ir[5]),
        .O(\stat[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0082AAAAAAAA)) 
    \stat[0]_i_25 
       (.I0(\stat[0]_i_27_n_0 ),
        .I1(ir[3]),
        .I2(ir[0]),
        .I3(ir[1]),
        .I4(\stat[0]_i_28_n_0 ),
        .I5(\stat[0]_i_29_n_0 ),
        .O(\stat[0]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[0]_i_26 
       (.I0(ir[10]),
        .I1(ir[11]),
        .O(\stat[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAEFEB)) 
    \stat[0]_i_27 
       (.I0(\badr[15]_INST_0_i_127_n_0 ),
        .I1(ir[2]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(ir[1]),
        .I5(\stat[0]_i_30_n_0 ),
        .O(\stat[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFFFBFBFBFBFBF)) 
    \stat[0]_i_28 
       (.I0(\stat[0]_i_31_n_0 ),
        .I1(\ccmd[4]_INST_0_i_20_n_0 ),
        .I2(\ccmd[3]_INST_0_i_20_n_0 ),
        .I3(\eir_fl_reg[1]_0 ),
        .I4(crdy),
        .I5(ir[2]),
        .O(\stat[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000011FE)) 
    \stat[0]_i_29 
       (.I0(ir[2]),
        .I1(Q[1]),
        .I2(fch_irq_req),
        .I3(Q[0]),
        .I4(ir[11]),
        .I5(\bcmd[0]_INST_0_i_12_n_0 ),
        .O(\stat[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBAAAABBB0A0AA)) 
    \stat[0]_i_3 
       (.I0(\stat[0]_i_12_n_0 ),
        .I1(\stat[0]_i_13_n_0 ),
        .I2(\stat[0]_i_14_n_0 ),
        .I3(\badr[15]_INST_0_i_2 [11]),
        .I4(ir[11]),
        .I5(ir[7]),
        .O(\stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBABABAFFBAFABA)) 
    \stat[0]_i_30 
       (.I0(\ccmd[2]_INST_0_i_19_n_0 ),
        .I1(crdy),
        .I2(ir[2]),
        .I3(ir[1]),
        .I4(ir[3]),
        .I5(\badr[15]_INST_0_i_2 [10]),
        .O(\stat[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF9)) 
    \stat[0]_i_31 
       (.I0(ir[2]),
        .I1(ir[0]),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(Q[2]),
        .I5(ir[6]),
        .O(\stat[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAA88888888)) 
    \stat[0]_i_4 
       (.I0(Q[0]),
        .I1(\stat[0]_i_15_n_0 ),
        .I2(ir[5]),
        .I3(ir[3]),
        .I4(ir[9]),
        .I5(brdy),
        .O(\stat[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7000)) 
    \stat[0]_i_5 
       (.I0(\stat_reg[0]_2 ),
        .I1(\stat[1]_i_8_n_0 ),
        .I2(\stat[1]_i_3_n_0 ),
        .I3(\stat[0]_i_17_n_0 ),
        .I4(ir[15]),
        .I5(ir[12]),
        .O(\stat[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFF6FF00FFF6FFF6)) 
    \stat[0]_i_6 
       (.I0(\badr[15]_INST_0_i_2 [7]),
        .I1(ir[11]),
        .I2(ir[14]),
        .I3(Q[0]),
        .I4(ir[13]),
        .I5(\stat_reg[0]_3 ),
        .O(\stat[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFFFEFFFFFF)) 
    \stat[0]_i_7 
       (.I0(Q[2]),
        .I1(ir[15]),
        .I2(Q[1]),
        .I3(ir[12]),
        .I4(ir[13]),
        .I5(\stat[2]_i_10_n_0 ),
        .O(\stat[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000020)) 
    \stat[0]_i_8 
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(ir[10]),
        .I3(ir[11]),
        .I4(crdy),
        .I5(ir[8]),
        .O(\stat[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC1)) 
    \stat[0]_i_9 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(ir[6]),
        .O(\stat[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000004444FF0F)) 
    \stat[1]_i_1 
       (.I0(Q[2]),
        .I1(\stat[1]_i_2_n_0 ),
        .I2(\stat[1]_i_3_n_0 ),
        .I3(\stat[1]_i_4_n_0 ),
        .I4(ir[12]),
        .I5(ir[15]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hAAAAAA02)) 
    \stat[1]_i_10 
       (.I0(Q[1]),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(ir[14]),
        .I4(ir[13]),
        .O(\stat[1]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \stat[1]_i_11 
       (.I0(\stat[1]_i_19_n_0 ),
        .I1(ir[13]),
        .I2(ir[14]),
        .O(\stat[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBABABBBAA)) 
    \stat[1]_i_12 
       (.I0(ir[11]),
        .I1(\stat[1]_i_20_n_0 ),
        .I2(\stat[1]_i_21_n_0 ),
        .I3(rst_n_fl_reg_0),
        .I4(Q[1]),
        .I5(\ccmd[2]_INST_0_i_1_0 ),
        .O(\stat[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00BA00AA00AA00AA)) 
    \stat[1]_i_13 
       (.I0(Q[1]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(Q[0]),
        .I4(crdy),
        .I5(\stat[1]_i_22_n_0 ),
        .O(\stat[1]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \stat[1]_i_15 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(Q[0]),
        .I3(ir[9]),
        .O(\stat[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E0000000)) 
    \stat[1]_i_16 
       (.I0(\stat[1]_i_23_n_0 ),
        .I1(\stat[1]_i_24_n_0 ),
        .I2(ir[10]),
        .I3(ir[7]),
        .I4(ir[11]),
        .I5(\bcmd[0]_INST_0_i_5_n_0 ),
        .O(\stat[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D5DD0000)) 
    \stat[1]_i_17 
       (.I0(Q[0]),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(\bdatw[15]_INST_0_i_1_0 [0]),
        .I4(\stat[1]_i_25_n_0 ),
        .I5(Q[2]),
        .O(\stat[1]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hBFAA)) 
    \stat[1]_i_18 
       (.I0(ir[13]),
        .I1(\badr[15]_INST_0_i_2 [5]),
        .I2(ir[11]),
        .I3(ir[14]),
        .O(\stat[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \stat[1]_i_19 
       (.I0(ir[10]),
        .I1(\bdatw[15]_INST_0_i_94_n_0 ),
        .I2(ir[4]),
        .I3(ir[6]),
        .I4(ir[5]),
        .I5(ir[7]),
        .O(\stat[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFF10FF10FFFFFF10)) 
    \stat[1]_i_2 
       (.I0(ir[11]),
        .I1(\bcmd[0]_INST_0_i_5_n_0 ),
        .I2(\stat[1]_i_5_n_0 ),
        .I3(\stat[1]_i_6_n_0 ),
        .I4(\stat[2]_i_10_n_0 ),
        .I5(Q[1]),
        .O(\stat[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000005455F50)) 
    \stat[1]_i_20 
       (.I0(Q[2]),
        .I1(\badr[15]_INST_0_i_2 [10]),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(ir[2]),
        .I5(\stat[1]_i_12_0 ),
        .O(\stat[1]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \stat[1]_i_21 
       (.I0(ir[0]),
        .I1(ir[2]),
        .O(\stat[1]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \stat[1]_i_22 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[8]),
        .O(\stat[1]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000101000000)) 
    \stat[1]_i_23 
       (.I0(ir[6]),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(brdy),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\stat[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF800080)) 
    \stat[1]_i_24 
       (.I0(Q[0]),
        .I1(crdy),
        .I2(\badr[15]_INST_0_i_2 [10]),
        .I3(ir[9]),
        .I4(\stat[2]_i_5_n_0 ),
        .I5(\stat[1]_i_27_n_0 ),
        .O(\stat[1]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[1]_i_25 
       (.I0(ir[11]),
        .I1(ir[2]),
        .O(\stat[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF6000FFFFFFFF)) 
    \stat[1]_i_27 
       (.I0(Q[0]),
        .I1(ir[3]),
        .I2(ir[9]),
        .I3(\ccmd[3]_INST_0_i_20_n_0 ),
        .I4(Q[1]),
        .I5(ir[8]),
        .O(\stat[1]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFDFDFDFDF)) 
    \stat[1]_i_3 
       (.I0(\bcmd[1] ),
        .I1(Q[0]),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_2 [6]),
        .I4(ir[14]),
        .I5(\stat[1]_i_7_n_0 ),
        .O(\stat[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AFE0A0E)) 
    \stat[1]_i_4 
       (.I0(\stat[1]_i_8_n_0 ),
        .I1(\stat[1]_i_9_n_0 ),
        .I2(\stat[1]_i_10_n_0 ),
        .I3(\stat[1]_i_11_n_0 ),
        .I4(ir[3]),
        .I5(\stat[1]_i_12_n_0 ),
        .O(\stat[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \stat[1]_i_5 
       (.I0(\badrx[15]_INST_0_i_3_n_0 ),
        .I1(\stat[1]_i_13_n_0 ),
        .I2(\stat[1]_i_2_0 ),
        .I3(\badr[15]_INST_0_i_2 [10]),
        .I4(ir[7]),
        .I5(\stat[1]_i_15_n_0 ),
        .O(\stat[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00009000)) 
    \stat[1]_i_6 
       (.I0(ir[11]),
        .I1(\badr[15]_INST_0_i_2 [7]),
        .I2(\eir_fl_reg[1]_0 ),
        .I3(ir[13]),
        .I4(ir[14]),
        .I5(\stat[1]_i_16_n_0 ),
        .O(\stat[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB00B0000)) 
    \stat[1]_i_7 
       (.I0(ir[1]),
        .I1(Q[1]),
        .I2(brdy),
        .I3(Q[0]),
        .I4(\stat[1]_i_17_n_0 ),
        .I5(\stat[1]_i_18_n_0 ),
        .O(\stat[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0252)) 
    \stat[1]_i_8 
       (.I0(ir[13]),
        .I1(\badr[15]_INST_0_i_2 [6]),
        .I2(ir[14]),
        .I3(\badr[15]_INST_0_i_2 [5]),
        .O(\stat[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \stat[1]_i_9 
       (.I0(\badr[15]_INST_0_i_2 [10]),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(ir[3]),
        .O(\stat[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000B847)) 
    \stat[2]_i_10 
       (.I0(\stat[1]_i_2_1 ),
        .I1(ir[14]),
        .I2(\badr[15]_INST_0_i_2 [4]),
        .I3(ir[11]),
        .I4(ir[13]),
        .I5(Q[0]),
        .O(\stat[2]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[2]_i_11 
       (.I0(ir[12]),
        .I1(Q[1]),
        .O(\stat[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111FFFFFF5F)) 
    \stat[2]_i_13 
       (.I0(\stat[1]_i_8_n_0 ),
        .I1(\stat[2]_i_16_n_0 ),
        .I2(\eir_fl_reg[1]_0 ),
        .I3(Q[2]),
        .I4(ir[11]),
        .I5(rst_n_fl_reg_0),
        .O(\stat[2]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[2]_i_14 
       (.I0(ir[12]),
        .I1(ir[15]),
        .O(\stat[2]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \stat[2]_i_16 
       (.I0(\stat[2]_i_17_n_0 ),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[10]),
        .I4(ir[9]),
        .O(\stat[2]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \stat[2]_i_17 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(ir[4]),
        .I3(ir[3]),
        .O(\stat[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h55D55555FFFFFFFF)) 
    \stat[2]_i_2 
       (.I0(\stat[2]_i_3_n_0 ),
        .I1(\stat_reg[2]_6 ),
        .I2(\stat[2]_i_5_n_0 ),
        .I3(\stat[2]_i_6_n_0 ),
        .I4(\stat[2]_i_7_n_0 ),
        .I5(\stat[2]_i_8_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF13FF)) 
    \stat[2]_i_3 
       (.I0(\stat[2]_i_9_n_0 ),
        .I1(\stat[2]_i_10_n_0 ),
        .I2(ir[13]),
        .I3(\stat[2]_i_11_n_0 ),
        .I4(ir[15]),
        .I5(Q[2]),
        .O(\stat[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \stat[2]_i_5 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(ir[6]),
        .O(\stat[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \stat[2]_i_6 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[7]),
        .O(\stat[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \stat[2]_i_7 
       (.I0(ir[10]),
        .I1(ir[11]),
        .I2(ir[13]),
        .I3(ir[14]),
        .O(\stat[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFA80000FFFFFFFF)) 
    \stat[2]_i_8 
       (.I0(rst_n_fl_reg_0),
        .I1(ir[2]),
        .I2(\stat_reg[2]_7 ),
        .I3(\stat[2]_i_13_n_0 ),
        .I4(\stat[1]_i_3_n_0 ),
        .I5(\stat[2]_i_14_n_0 ),
        .O(\stat[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1001)) 
    \stat[2]_i_9 
       (.I0(Q[0]),
        .I1(ir[14]),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_2 [7]),
        .O(\stat[2]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__0_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(abus_0[6]),
        .O(\badr[6]_INST_0_i_1 [3]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__0_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(abus_0[5]),
        .O(\badr[6]_INST_0_i_1 [2]));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__0_i_3
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\sr_reg[4]_0 ),
        .I2(abus_0[4]),
        .O(\badr[6]_INST_0_i_1 [1]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__0_i_4
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\sr_reg[3]_0 ),
        .I2(abus_0[3]),
        .O(\badr[6]_INST_0_i_1 [0]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__0_i_5
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(abus_0[7]),
        .I3(\badr[6]_INST_0_i_1 [3]),
        .O(tout__1_carry__0_i_1_0[3]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__0_i_6
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(abus_0[6]),
        .I3(\badr[6]_INST_0_i_1 [2]),
        .O(tout__1_carry__0_i_1_0[2]));
  LUT4 #(
    .INIT(16'h9669)) 
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
        .I1(\sr_reg[4]_0 ),
        .I2(abus_0[4]),
        .I3(\badr[6]_INST_0_i_1 [0]),
        .O(tout__1_carry__0_i_1_0[0]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__1_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[10]_INST_0_i_1_n_0 ),
        .I2(abus_0[10]),
        .O(\badr[10]_INST_0_i_1 [3]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__1_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[9]_INST_0_i_1_n_0 ),
        .I2(abus_0[9]),
        .O(\badr[10]_INST_0_i_1 [2]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__1_i_3
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[8]_INST_0_i_1_n_0 ),
        .I2(abus_0[8]),
        .O(\badr[10]_INST_0_i_1 [1]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__1_i_4
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(abus_0[7]),
        .O(\badr[10]_INST_0_i_1 [0]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__1_i_5
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[11]_INST_0_i_1_n_0 ),
        .I2(abus_0[11]),
        .I3(\badr[10]_INST_0_i_1 [3]),
        .O(tout__1_carry__1_i_1_0[3]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__1_i_6
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[10]_INST_0_i_1_n_0 ),
        .I2(abus_0[10]),
        .I3(\badr[10]_INST_0_i_1 [2]),
        .O(tout__1_carry__1_i_1_0[2]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__1_i_7
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[9]_INST_0_i_1_n_0 ),
        .I2(abus_0[9]),
        .I3(\badr[10]_INST_0_i_1 [1]),
        .O(tout__1_carry__1_i_1_0[1]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__1_i_8
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[8]_INST_0_i_1_n_0 ),
        .I2(abus_0[8]),
        .I3(\badr[10]_INST_0_i_1 [0]),
        .O(tout__1_carry__1_i_1_0[0]));
  LUT3 #(
    .INIT(8'h69)) 
    tout__1_carry__2_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(abus_0[15]),
        .O(\badr[15]_INST_0_i_1_0 [3]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__2_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_1_n_0 ),
        .I2(abus_0[13]),
        .O(\badr[15]_INST_0_i_1_0 [2]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__2_i_3
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[12]_INST_0_i_1_n_0 ),
        .I2(abus_0[12]),
        .O(\badr[15]_INST_0_i_1_0 [1]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__2_i_4
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[11]_INST_0_i_1_n_0 ),
        .I2(abus_0[11]),
        .O(\badr[15]_INST_0_i_1_0 [0]));
  LUT5 #(
    .INIT(32'hC33C6969)) 
    tout__1_carry__2_i_5
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(abus_0[15]),
        .I3(\bdatw[14]_INST_0_i_1_n_0 ),
        .I4(abus_0[14]),
        .O(\badr[14]_INST_0_i_1 [3]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__2_i_6
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[14]_INST_0_i_1_n_0 ),
        .I2(\badr[15]_INST_0_i_1_0 [2]),
        .I3(abus_0[14]),
        .O(\badr[14]_INST_0_i_1 [2]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__2_i_7
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_1_n_0 ),
        .I2(abus_0[13]),
        .I3(\badr[15]_INST_0_i_1_0 [1]),
        .O(\badr[14]_INST_0_i_1 [1]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__2_i_8
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[12]_INST_0_i_1_n_0 ),
        .I2(abus_0[12]),
        .I3(\badr[15]_INST_0_i_1_0 [0]),
        .O(\badr[14]_INST_0_i_1 [0]));
  LUT3 #(
    .INIT(8'h9F)) 
    tout__1_carry__3_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(abus_0[15]),
        .O(\badr[15]_INST_0_i_1_2 ));
  LUT3 #(
    .INIT(8'h96)) 
    tout__1_carry__3_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(abus_0[15]),
        .O(\badr[15]_INST_0_i_1_1 [1]));
  LUT3 #(
    .INIT(8'hF9)) 
    tout__1_carry__3_i_3
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(abus_0[15]),
        .O(\badr[15]_INST_0_i_1_1 [0]));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(abus_0[2]),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h1)) 
    tout__1_carry_i_10
       (.I0(ctl_copro),
        .I1(\ccmd[0]_INST_0_i_1_n_0 ),
        .O(acmd));
  LUT4 #(
    .INIT(16'hFF15)) 
    tout__1_carry_i_11
       (.I0(ctl_copro),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .I2(\ccmd[4]_INST_0_i_2_n_0 ),
        .I3(\iv[14]_i_7_n_0 ),
        .O(tout__1_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tout__1_carry_i_12
       (.I0(\sr_reg[0] ),
        .I1(tout__1_carry_i_8_n_0),
        .O(tout__1_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    tout__1_carry_i_13
       (.I0(\stat_reg[2]_5 ),
        .I1(tout__1_carry_i_11_n_0),
        .O(tout__1_carry_i_13_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(abus_0[1]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'h0AF3FFFF00000AF3)) 
    tout__1_carry_i_3
       (.I0(\stat_reg[2]_5 ),
        .I1(acmd),
        .I2(tout__1_carry_i_11_n_0),
        .I3(\badr[15]_INST_0_i_2 [6]),
        .I4(tout__1_carry_i_12_n_0),
        .I5(abus_0[0]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry_i_4
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\sr_reg[3]_0 ),
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
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(abus_0[1]),
        .I3(DI[0]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hF50C0AF30AF3F50C)) 
    tout__1_carry_i_7
       (.I0(\stat_reg[2]_5 ),
        .I1(acmd),
        .I2(tout__1_carry_i_11_n_0),
        .I3(\badr[15]_INST_0_i_2 [6]),
        .I4(abus_0[0]),
        .I5(tout__1_carry_i_12_n_0),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h00F8)) 
    tout__1_carry_i_8
       (.I0(\iv[13]_i_10_n_0 ),
        .I1(tout__1_carry_i_10_0),
        .I2(tout__1_carry_i_13_n_0),
        .I3(acmd),
        .O(tout__1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tout__1_carry_i_9
       (.I0(ctl_copro),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .O(\stat_reg[2]_5 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \tr[15]_i_1 
       (.I0(ctl_selc[2]),
        .I1(ctl_selc[3]),
        .I2(ctl_selc[4]),
        .I3(\sr[15]_i_3_n_0 ),
        .O(cbus_sel_cr[1]));
  LUT6 #(
    .INIT(64'h00000000FFF2FFFF)) 
    \tr[15]_i_10 
       (.I0(\tr[15]_i_27_n_0 ),
        .I1(\tr[15]_i_28_n_0 ),
        .I2(ir[15]),
        .I3(Q[1]),
        .I4(ir[12]),
        .I5(\tr[15]_i_29_n_0 ),
        .O(\tr[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \tr[15]_i_11 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\ccmd[4]_INST_0_i_16_n_0 ),
        .I3(ir[8]),
        .I4(\ccmd[2]_INST_0_i_17_n_0 ),
        .I5(\fch_irq_lev[1]_i_3_n_0 ),
        .O(\tr[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \tr[15]_i_12 
       (.I0(ctl_fetch_ext_fl_i_6_n_0),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(ir[5]),
        .I4(ir[9]),
        .I5(Q[1]),
        .O(\tr[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCECECCCCCFCE)) 
    \tr[15]_i_13 
       (.I0(\tr_reg[15]_i_30_n_0 ),
        .I1(\tr[15]_i_31_n_0 ),
        .I2(Q[0]),
        .I3(ir[15]),
        .I4(Q[1]),
        .I5(ir[11]),
        .O(\tr[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF00BFBF)) 
    \tr[15]_i_14 
       (.I0(ir[8]),
        .I1(ir[7]),
        .I2(ir[2]),
        .I3(\tr[15]_i_32_n_0 ),
        .I4(ir[11]),
        .I5(\stat[0]_i_14_n_0 ),
        .O(\tr[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4000400040004040)) 
    \tr[15]_i_16 
       (.I0(Q[0]),
        .I1(ir[12]),
        .I2(ir[11]),
        .I3(\tr[15]_i_35_n_0 ),
        .I4(\badrx[15]_INST_0_i_2_n_0 ),
        .I5(\tr[15]_i_36_n_0 ),
        .O(\tr[15]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \tr[15]_i_17 
       (.I0(ir[11]),
        .I1(ir[12]),
        .I2(\tr[15]_i_37_n_0 ),
        .O(\tr[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEBAA)) 
    \tr[15]_i_18 
       (.I0(\tr[15]_i_38_n_0 ),
        .I1(ir[11]),
        .I2(\badr[15]_INST_0_i_2 [6]),
        .I3(\eir_fl_reg[1]_0 ),
        .I4(ir[12]),
        .I5(ir[14]),
        .O(\tr[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA82800000)) 
    \tr[15]_i_19 
       (.I0(\tr[15]_i_39_n_0 ),
        .I1(ir[5]),
        .I2(ir[4]),
        .I3(ir[3]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\tr[15]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAAAAAA)) 
    \tr[15]_i_2 
       (.I0(\tr[15]_i_5_n_0 ),
        .I1(\bcmd[1] ),
        .I2(ir[13]),
        .I3(ir[14]),
        .I4(ir[15]),
        .I5(\tr[15]_i_6_n_0 ),
        .O(ctl_selc[2]));
  LUT6 #(
    .INIT(64'h00000000FFFF6FFB)) 
    \tr[15]_i_20 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[7]),
        .I3(ir[10]),
        .I4(Q[1]),
        .I5(\ccmd[0]_INST_0_i_16_n_0 ),
        .O(\tr[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFF77FFFFFF77)) 
    \tr[15]_i_21 
       (.I0(ir[3]),
        .I1(Q[0]),
        .I2(brdy),
        .I3(ir[6]),
        .I4(ir[4]),
        .I5(\tr[15]_i_40_n_0 ),
        .O(\tr[15]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h777F)) 
    \tr[15]_i_22 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(Q[1]),
        .I3(ir[11]),
        .O(\tr[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h4044400004000444)) 
    \tr[15]_i_24 
       (.I0(Q[0]),
        .I1(\stat[2]_i_11_n_0 ),
        .I2(\stat[1]_i_2_1 ),
        .I3(ir[14]),
        .I4(\badr[15]_INST_0_i_2 [4]),
        .I5(ir[11]),
        .O(\tr[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022020202)) 
    \tr[15]_i_25 
       (.I0(\tr[15]_i_9_0 ),
        .I1(\fch_irq_lev[1]_i_5_n_0 ),
        .I2(ir[14]),
        .I3(\badr[15]_INST_0_i_2 [5]),
        .I4(\eir_fl_reg[1]_0 ),
        .I5(\tr[15]_i_42_n_0 ),
        .O(\tr[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFF01FFF0FF0FFF0F)) 
    \tr[15]_i_26 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(ir[11]),
        .I3(ir[12]),
        .I4(\badr[15]_INST_0_i_2 [5]),
        .I5(ir[14]),
        .O(\tr[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFFFFF0FFFFF0)) 
    \tr[15]_i_27 
       (.I0(\badr[15]_INST_0_i_102_n_0 ),
        .I1(ir[7]),
        .I2(Q[0]),
        .I3(\stat[1]_i_2_1 ),
        .I4(ir[11]),
        .I5(ir[13]),
        .O(\tr[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000888AAAAAAAAA)) 
    \tr[15]_i_28 
       (.I0(ir[13]),
        .I1(\tr[15]_i_43_n_0 ),
        .I2(\bcmd[2]_INST_0_i_2_n_0 ),
        .I3(\tr_reg[15]_i_44_n_0 ),
        .I4(\tr[15]_i_45_n_0 ),
        .I5(\tr[15]_i_46_n_0 ),
        .O(\tr[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04000000)) 
    \tr[15]_i_29 
       (.I0(\tr[15]_i_47_n_0 ),
        .I1(ir[13]),
        .I2(ir[15]),
        .I3(ir[12]),
        .I4(\tr[15]_i_48_n_0 ),
        .I5(\tr[15]_i_49_n_0 ),
        .O(\tr[15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F4F0F0F0F4FF)) 
    \tr[15]_i_3 
       (.I0(Q[2]),
        .I1(\tr[15]_i_7_n_0 ),
        .I2(\tr[15]_i_8_n_0 ),
        .I3(ir[13]),
        .I4(ir[15]),
        .I5(\tr[15]_i_9_n_0 ),
        .O(ctl_selc[3]));
  LUT6 #(
    .INIT(64'h2000000020002000)) 
    \tr[15]_i_31 
       (.I0(\tr[15]_i_52_n_0 ),
        .I1(ir[4]),
        .I2(\ccmd[3]_INST_0_i_14_n_0 ),
        .I3(\tr[15]_i_53_n_0 ),
        .I4(\tr[15]_i_54_n_0 ),
        .I5(\tr[15]_i_55_n_0 ),
        .O(\tr[15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00FFDFFFFFFFDFFF)) 
    \tr[15]_i_32 
       (.I0(brdy),
        .I1(ir[6]),
        .I2(ir[5]),
        .I3(ir[7]),
        .I4(ir[8]),
        .I5(ir[2]),
        .O(\tr[15]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h220AFF0A220A220A)) 
    \tr[15]_i_33 
       (.I0(ir[10]),
        .I1(\tr[15]_i_56_n_0 ),
        .I2(\tr[15]_i_57_n_0 ),
        .I3(crdy),
        .I4(\badrx[15]_INST_0_i_3_n_0 ),
        .I5(ir[5]),
        .O(\tr[15]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h4F44FFFF4F440000)) 
    \tr[15]_i_34 
       (.I0(\tr[15]_i_58_n_0 ),
        .I1(\tr[15]_i_59_n_0 ),
        .I2(\tr[15]_i_60_n_0 ),
        .I3(\tr[15]_i_61_n_0 ),
        .I4(ir[10]),
        .I5(\tr[15]_i_62_n_0 ),
        .O(\tr[15]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h1133002231770000)) 
    \tr[15]_i_35 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(crdy),
        .I3(ir[8]),
        .I4(ir[5]),
        .I5(ir[7]),
        .O(\tr[15]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFD0FFFFEFFFFFFFF)) 
    \tr[15]_i_36 
       (.I0(ir[4]),
        .I1(ir[3]),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(ir[6]),
        .I5(ir[2]),
        .O(\tr[15]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hF5FFFFFFFFF7FFF7)) 
    \tr[15]_i_37 
       (.I0(ir[10]),
        .I1(crdy),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[6]),
        .I5(ir[7]),
        .O(\tr[15]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004004)) 
    \tr[15]_i_38 
       (.I0(Q[1]),
        .I1(ir[12]),
        .I2(\badr[15]_INST_0_i_2 [7]),
        .I3(ir[11]),
        .I4(ir[14]),
        .I5(Q[0]),
        .O(\tr[15]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tr[15]_i_39 
       (.I0(ir[8]),
        .I1(Q[1]),
        .O(\tr[15]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C5D5D0C0CFF0C)) 
    \tr[15]_i_4 
       (.I0(\tr[15]_i_10_n_0 ),
        .I1(\tr[15]_i_11_n_0 ),
        .I2(\tr[15]_i_12_n_0 ),
        .I3(\tr[15]_i_13_n_0 ),
        .I4(Q[2]),
        .I5(ir[14]),
        .O(ctl_selc[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \tr[15]_i_40 
       (.I0(ir[7]),
        .I1(ir[5]),
        .O(\tr[15]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCC4FFFF)) 
    \tr[15]_i_42 
       (.I0(brdy),
        .I1(\tr[15]_i_63_n_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\ccmd[4]_INST_0_i_21_n_0 ),
        .I5(ctl_fetch_ext_fl_i_6_n_0),
        .O(\tr[15]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEEE0E)) 
    \tr[15]_i_43 
       (.I0(\tr[15]_i_64_n_0 ),
        .I1(\tr[15]_i_65_n_0 ),
        .I2(ir[7]),
        .I3(ir[6]),
        .I4(\ccmd[1]_INST_0_i_7_0 ),
        .I5(ir[9]),
        .O(\tr[15]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F70000)) 
    \tr[15]_i_45 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(ir[5]),
        .I3(brdy),
        .I4(Q[0]),
        .I5(\bcmd[2]_INST_0_i_2_n_0 ),
        .O(\tr[15]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDFDFDFD0DFDF)) 
    \tr[15]_i_46 
       (.I0(crdy),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(Q[0]),
        .I3(ir[8]),
        .I4(ir[11]),
        .I5(ir[9]),
        .O(\tr[15]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \tr[15]_i_47 
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(ir[10]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\tr[15]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'hAAFA4444)) 
    \tr[15]_i_48 
       (.I0(ir[8]),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(brdy),
        .I3(ir[6]),
        .I4(ir[11]),
        .O(\tr[15]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000A0A0B)) 
    \tr[15]_i_49 
       (.I0(ir[15]),
        .I1(\tr[15]_i_29_0 ),
        .I2(Q[0]),
        .I3(ir[13]),
        .I4(ir[12]),
        .I5(Q[1]),
        .O(\tr[15]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0004000400045054)) 
    \tr[15]_i_5 
       (.I0(Q[2]),
        .I1(ir[10]),
        .I2(Q[1]),
        .I3(\sr[15]_i_6_n_0 ),
        .I4(\badrx[15]_INST_0_i_5_n_0 ),
        .I5(\tr[15]_i_14_n_0 ),
        .O(\tr[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF44FF4F4)) 
    \tr[15]_i_50 
       (.I0(\tr[15]_i_68_n_0 ),
        .I1(\tr[15]_i_69_n_0 ),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_2 [4]),
        .I4(ir[12]),
        .I5(ir[15]),
        .O(\tr[15]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0A959)) 
    \tr[15]_i_51 
       (.I0(ir[11]),
        .I1(\badr[15]_INST_0_i_2 [6]),
        .I2(ir[12]),
        .I3(\badr[15]_INST_0_i_2 [7]),
        .I4(ir[15]),
        .O(\tr[15]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tr[15]_i_52 
       (.I0(ir[7]),
        .I1(ir[5]),
        .O(\tr[15]_i_52_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \tr[15]_i_53 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ir[15]),
        .O(\tr[15]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h0028000000280A00)) 
    \tr[15]_i_54 
       (.I0(Q[1]),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(ir[0]),
        .I4(ir[2]),
        .I5(\tr[15]_i_63_n_0 ),
        .O(\tr[15]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFFF5F77F7F)) 
    \tr[15]_i_55 
       (.I0(\tr[15]_i_31_0 ),
        .I1(ir[2]),
        .I2(ir[3]),
        .I3(brdy),
        .I4(ir[1]),
        .I5(ir[0]),
        .O(\tr[15]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEFFEFEF)) 
    \tr[15]_i_56 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[2]),
        .I3(ir[5]),
        .I4(ir[7]),
        .I5(\tr[15]_i_62_n_0 ),
        .O(\tr[15]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h0FFFFFBBFFFFFFBB)) 
    \tr[15]_i_57 
       (.I0(ir[7]),
        .I1(ir[2]),
        .I2(brdy),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(\tr[15]_i_70_n_0 ),
        .O(\tr[15]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \tr[15]_i_58 
       (.I0(ir[9]),
        .I1(ir[5]),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(brdy),
        .I5(ir[3]),
        .O(\tr[15]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tr[15]_i_59 
       (.I0(ir[6]),
        .I1(ir[2]),
        .O(\tr[15]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F8F8FFF0F0F0)) 
    \tr[15]_i_6 
       (.I0(ir[12]),
        .I1(\tr_reg[15]_i_15_n_0 ),
        .I2(\tr[15]_i_16_n_0 ),
        .I3(\tr[15]_i_17_n_0 ),
        .I4(ir[5]),
        .I5(Q[0]),
        .O(\tr[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \tr[15]_i_60 
       (.I0(ir[2]),
        .I1(ir[5]),
        .I2(ir[7]),
        .O(\tr[15]_i_60_n_0 ));
  LUT4 #(
    .INIT(16'h0D00)) 
    \tr[15]_i_61 
       (.I0(ir[7]),
        .I1(crdy),
        .I2(ir[9]),
        .I3(ir[8]),
        .O(\tr[15]_i_61_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \tr[15]_i_62 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(brdy),
        .O(\tr[15]_i_62_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \tr[15]_i_63 
       (.I0(ir[1]),
        .I1(Q[0]),
        .I2(brdy),
        .O(\tr[15]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h00003300008E3300)) 
    \tr[15]_i_64 
       (.I0(crdy),
        .I1(Q[0]),
        .I2(ir[7]),
        .I3(ir[11]),
        .I4(ir[10]),
        .I5(ir[8]),
        .O(\tr[15]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hA00EF0A000000000)) 
    \tr[15]_i_65 
       (.I0(crdy),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(ir[11]),
        .I3(Q[0]),
        .I4(ir[7]),
        .I5(ctl_fetch_inferred_i_23_n_0),
        .O(\tr[15]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hFF007F7FFFFF7F7F)) 
    \tr[15]_i_66 
       (.I0(Q[0]),
        .I1(ir[10]),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(\badr[15]_INST_0_i_158_n_0 ),
        .I4(ir[11]),
        .I5(\tr[15]_i_71_n_0 ),
        .O(\tr[15]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h77FFEF55FFFFFFFF)) 
    \tr[15]_i_67 
       (.I0(ir[7]),
        .I1(ir[3]),
        .I2(ir[4]),
        .I3(ir[5]),
        .I4(Q[0]),
        .I5(\bcmd[0]_INST_0_i_6_n_0 ),
        .O(\tr[15]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFDFFFDFFFFFF)) 
    \tr[15]_i_68 
       (.I0(\ccmd[3]_INST_0_i_20_n_0 ),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(ir[3]),
        .I4(ir[1]),
        .I5(crdy),
        .O(\tr[15]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \tr[15]_i_69 
       (.I0(ir[6]),
        .I1(ir[10]),
        .I2(ir[2]),
        .I3(ir[0]),
        .I4(ir[12]),
        .I5(ir[8]),
        .O(\tr[15]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAEF)) 
    \tr[15]_i_7 
       (.I0(\tr[15]_i_18_n_0 ),
        .I1(\tr[15]_i_19_n_0 ),
        .I2(Q[0]),
        .I3(\tr[15]_i_20_n_0 ),
        .I4(\tr[15]_i_21_n_0 ),
        .I5(\tr[15]_i_22_n_0 ),
        .O(\tr[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tr[15]_i_70 
       (.I0(ir[5]),
        .I1(ir[6]),
        .O(\tr[15]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAEEAAAAAAEEFAAAA)) 
    \tr[15]_i_71 
       (.I0(Q[0]),
        .I1(ir[7]),
        .I2(ir[5]),
        .I3(ir[4]),
        .I4(ir[10]),
        .I5(ir[3]),
        .O(\tr[15]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h0000000060000000)) 
    \tr[15]_i_8 
       (.I0(ir[11]),
        .I1(ir[12]),
        .I2(\ccmd[1]_INST_0_i_2_n_0 ),
        .I3(\tr[15]_i_3_0 ),
        .I4(ir[15]),
        .I5(Q[1]),
        .O(\tr[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3311331133113310)) 
    \tr[15]_i_9 
       (.I0(\tr[15]_i_24_n_0 ),
        .I1(\tr[15]_i_25_n_0 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\tr[15]_i_26_n_0 ),
        .O(\tr[15]_i_9_n_0 ));
  MUXF7 \tr_reg[15]_i_15 
       (.I0(\tr[15]_i_33_n_0 ),
        .I1(\tr[15]_i_34_n_0 ),
        .O(\tr_reg[15]_i_15_n_0 ),
        .S(ir[11]));
  MUXF7 \tr_reg[15]_i_30 
       (.I0(\tr[15]_i_50_n_0 ),
        .I1(\tr[15]_i_51_n_0 ),
        .O(\tr_reg[15]_i_30_n_0 ),
        .S(ir[13]));
  MUXF7 \tr_reg[15]_i_44 
       (.I0(\tr[15]_i_66_n_0 ),
        .I1(\tr[15]_i_67_n_0 ),
        .O(\tr_reg[15]_i_44_n_0 ),
        .S(ir[6]));
endmodule

module mcvm_fsm
   (\stat_reg[2]_0 ,
    Q,
    brdy_0,
    \stat_reg[1]_0 ,
    \stat_reg[0]_0 ,
    \stat_reg[1]_1 ,
    \stat_reg[2]_1 ,
    brdy_1,
    \stat_reg[1]_2 ,
    \stat_reg[2]_2 ,
    \stat_reg[0]_1 ,
    \stat_reg[0]_2 ,
    \stat_reg[0]_3 ,
    \stat_reg[0]_4 ,
    crdy_0,
    \stat_reg[2]_3 ,
    \stat_reg[1]_3 ,
    \stat_reg[1]_4 ,
    \stat_reg[0]_5 ,
    \stat_reg[0]_6 ,
    \stat_reg[0]_7 ,
    \stat_reg[1]_5 ,
    out,
    brdy,
    \stat[1]_i_20 ,
    crdy,
    p_0_in,
    D,
    clk);
  output \stat_reg[2]_0 ;
  output [2:0]Q;
  output brdy_0;
  output \stat_reg[1]_0 ;
  output \stat_reg[0]_0 ;
  output \stat_reg[1]_1 ;
  output \stat_reg[2]_1 ;
  output brdy_1;
  output \stat_reg[1]_2 ;
  output \stat_reg[2]_2 ;
  output \stat_reg[0]_1 ;
  output \stat_reg[0]_2 ;
  output \stat_reg[0]_3 ;
  output \stat_reg[0]_4 ;
  output crdy_0;
  output \stat_reg[2]_3 ;
  output \stat_reg[1]_3 ;
  output \stat_reg[1]_4 ;
  output \stat_reg[0]_5 ;
  output \stat_reg[0]_6 ;
  output \stat_reg[0]_7 ;
  output \stat_reg[1]_5 ;
  input [8:0]out;
  input brdy;
  input \stat[1]_i_20 ;
  input crdy;
  input p_0_in;
  input [2:0]D;
  input clk;

  wire \<const1> ;
  wire [2:0]D;
  wire [2:0]Q;
  wire brdy;
  wire brdy_0;
  wire brdy_1;
  wire clk;
  wire crdy;
  wire crdy_0;
  wire [8:0]out;
  wire p_0_in;
  wire \stat[1]_i_20 ;
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
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_2 ;
  wire \stat_reg[2]_3 ;

  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_148 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\stat_reg[0]_7 ));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_92 
       (.I0(Q[0]),
        .I1(out[8]),
        .O(\stat_reg[0]_1 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bcmd[0]_INST_0_i_8 
       (.I0(out[8]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\stat_reg[1]_5 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bcmd[1]_INST_0_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\stat_reg[2]_2 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_11 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\stat_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \bdatw[15]_INST_0_i_48 
       (.I0(out[8]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\stat_reg[0]_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[15]_INST_0_i_78 
       (.I0(Q[0]),
        .I1(out[8]),
        .O(\stat_reg[0]_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[1]_INST_0_i_13 
       (.I0(Q[0]),
        .I1(out[4]),
        .O(\stat_reg[0]_5 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ccmd[2]_INST_0_i_26 
       (.I0(Q[1]),
        .I1(out[4]),
        .O(\stat_reg[1]_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ccmd[2]_INST_0_i_8 
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(\stat_reg[2]_3 ));
  LUT3 #(
    .INIT(8'h01)) 
    \ccmd[2]_INST_0_i_9 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(\stat_reg[1]_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0_i_11 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\stat_reg[1]_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ccmd[4]_INST_0_i_15 
       (.I0(Q[0]),
        .I1(out[4]),
        .O(\stat_reg[0]_4 ));
  LUT2 #(
    .INIT(4'hE)) 
    ctl_fetch_ext_fl_i_8
       (.I0(Q[1]),
        .I1(out[4]),
        .O(\stat_reg[1]_4 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \stat[0]_i_16 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(out[5]),
        .O(\stat_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[1]_i_14 
       (.I0(crdy),
        .I1(Q[1]),
        .O(crdy_0));
  LUT6 #(
    .INIT(64'hFFFF01FFFFFFFFFF)) 
    \stat[1]_i_26 
       (.I0(Q[2]),
        .I1(out[2]),
        .I2(brdy),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\stat[1]_i_20 ),
        .O(\stat_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFD0FFFFF0FFFF7F)) 
    \stat[2]_i_12 
       (.I0(brdy),
        .I1(Q[0]),
        .I2(out[1]),
        .I3(Q[2]),
        .I4(out[0]),
        .I5(Q[1]),
        .O(brdy_1));
  LUT6 #(
    .INIT(64'h0010000000000010)) 
    \stat[2]_i_4 
       (.I0(Q[2]),
        .I1(out[8]),
        .I2(out[6]),
        .I3(Q[1]),
        .I4(out[3]),
        .I5(Q[0]),
        .O(\stat_reg[2]_1 ));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(Q[0]),
        .R(p_0_in));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(Q[1]),
        .R(p_0_in));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(Q[2]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h1)) 
    \tr[15]_i_23 
       (.I0(Q[0]),
        .I1(out[7]),
        .O(\stat_reg[0]_6 ));
  LUT6 #(
    .INIT(64'hFFFCCCCCF4F44444)) 
    \tr[15]_i_41 
       (.I0(brdy),
        .I1(out[1]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(out[0]),
        .I5(Q[0]),
        .O(brdy_0));
endmodule

module mcvm_mem
   (cbus,
    \read_cyc_reg[0] ,
    \read_cyc_reg[1] ,
    \read_cyc_reg[1]_0 ,
    \read_cyc_reg[1]_1 ,
    \read_cyc_reg[1]_2 ,
    \read_cyc_reg[1]_3 ,
    \read_cyc_reg[1]_4 ,
    .cbus_i_7_sp_1(cbus_i_7_sn_1),
    .cbus_i_6_sp_1(cbus_i_6_sn_1),
    .cbus_i_5_sp_1(cbus_i_5_sn_1),
    .cbus_i_4_sp_1(cbus_i_4_sn_1),
    .cbus_i_3_sp_1(cbus_i_3_sn_1),
    .cbus_i_2_sp_1(cbus_i_2_sn_1),
    .cbus_i_1_sp_1(cbus_i_1_sn_1),
    .cbus_i_0_sp_1(cbus_i_0_sn_1),
    \read_cyc_reg[1]_5 ,
    bdatr,
    ctl_copro,
    cbus_i,
    \tr_reg[15] ,
    bcmd,
    brdy,
    p_0_in,
    clk,
    \read_cyc_reg[0]_0 );
  output [0:0]cbus;
  output [0:0]\read_cyc_reg[0] ;
  output \read_cyc_reg[1] ;
  output \read_cyc_reg[1]_0 ;
  output \read_cyc_reg[1]_1 ;
  output \read_cyc_reg[1]_2 ;
  output \read_cyc_reg[1]_3 ;
  output \read_cyc_reg[1]_4 ;
  output \read_cyc_reg[1]_5 ;
  input [15:0]bdatr;
  input ctl_copro;
  input [14:0]cbus_i;
  input [0:0]\tr_reg[15] ;
  input [1:0]bcmd;
  input brdy;
  input p_0_in;
  input clk;
  input \read_cyc_reg[0]_0 ;
  output cbus_i_7_sn_1;
  output cbus_i_6_sn_1;
  output cbus_i_5_sn_1;
  output cbus_i_4_sn_1;
  output cbus_i_3_sn_1;
  output cbus_i_2_sn_1;
  output cbus_i_1_sn_1;
  output cbus_i_0_sn_1;

  wire [1:0]bcmd;
  wire [15:0]bdatr;
  wire brdy;
  wire [0:0]cbus;
  wire [14:0]cbus_i;
  wire cbus_i_0_sn_1;
  wire cbus_i_1_sn_1;
  wire cbus_i_2_sn_1;
  wire cbus_i_3_sn_1;
  wire cbus_i_4_sn_1;
  wire cbus_i_5_sn_1;
  wire cbus_i_6_sn_1;
  wire cbus_i_7_sn_1;
  wire clk;
  wire ctl_copro;
  wire p_0_in;
  wire [0:0]\read_cyc_reg[0] ;
  wire \read_cyc_reg[0]_0 ;
  wire \read_cyc_reg[1] ;
  wire \read_cyc_reg[1]_0 ;
  wire \read_cyc_reg[1]_1 ;
  wire \read_cyc_reg[1]_2 ;
  wire \read_cyc_reg[1]_3 ;
  wire \read_cyc_reg[1]_4 ;
  wire \read_cyc_reg[1]_5 ;
  wire [0:0]\tr_reg[15] ;

  mcvm_mem_bctl bctl
       (.bcmd(bcmd),
        .bdatr(bdatr),
        .brdy(brdy),
        .cbus(cbus),
        .cbus_i(cbus_i),
        .cbus_i_0_sp_1(cbus_i_0_sn_1),
        .cbus_i_1_sp_1(cbus_i_1_sn_1),
        .cbus_i_2_sp_1(cbus_i_2_sn_1),
        .cbus_i_3_sp_1(cbus_i_3_sn_1),
        .cbus_i_4_sp_1(cbus_i_4_sn_1),
        .cbus_i_5_sp_1(cbus_i_5_sn_1),
        .cbus_i_6_sp_1(cbus_i_6_sn_1),
        .cbus_i_7_sp_1(cbus_i_7_sn_1),
        .clk(clk),
        .ctl_copro(ctl_copro),
        .p_0_in(p_0_in),
        .\read_cyc_reg[0]_0 (\read_cyc_reg[0] ),
        .\read_cyc_reg[0]_1 (\read_cyc_reg[0]_0 ),
        .\read_cyc_reg[1]_0 (\read_cyc_reg[1] ),
        .\read_cyc_reg[1]_1 (\read_cyc_reg[1]_0 ),
        .\read_cyc_reg[1]_2 (\read_cyc_reg[1]_1 ),
        .\read_cyc_reg[1]_3 (\read_cyc_reg[1]_2 ),
        .\read_cyc_reg[1]_4 (\read_cyc_reg[1]_3 ),
        .\read_cyc_reg[1]_5 (\read_cyc_reg[1]_4 ),
        .\read_cyc_reg[1]_6 (\read_cyc_reg[1]_5 ),
        .\tr_reg[15] (\tr_reg[15] ));
endmodule

module mcvm_mem_bctl
   (cbus,
    \read_cyc_reg[1]_0 ,
    \read_cyc_reg[1]_1 ,
    \read_cyc_reg[1]_2 ,
    \read_cyc_reg[1]_3 ,
    \read_cyc_reg[1]_4 ,
    \read_cyc_reg[1]_5 ,
    .cbus_i_7_sp_1(cbus_i_7_sn_1),
    .cbus_i_6_sp_1(cbus_i_6_sn_1),
    .cbus_i_5_sp_1(cbus_i_5_sn_1),
    .cbus_i_4_sp_1(cbus_i_4_sn_1),
    .cbus_i_3_sp_1(cbus_i_3_sn_1),
    .cbus_i_2_sp_1(cbus_i_2_sn_1),
    .cbus_i_1_sp_1(cbus_i_1_sn_1),
    .cbus_i_0_sp_1(cbus_i_0_sn_1),
    \read_cyc_reg[1]_6 ,
    \read_cyc_reg[0]_0 ,
    bdatr,
    ctl_copro,
    cbus_i,
    \tr_reg[15] ,
    bcmd,
    brdy,
    p_0_in,
    clk,
    \read_cyc_reg[0]_1 );
  output [0:0]cbus;
  output \read_cyc_reg[1]_0 ;
  output \read_cyc_reg[1]_1 ;
  output \read_cyc_reg[1]_2 ;
  output \read_cyc_reg[1]_3 ;
  output \read_cyc_reg[1]_4 ;
  output \read_cyc_reg[1]_5 ;
  output \read_cyc_reg[1]_6 ;
  output \read_cyc_reg[0]_0 ;
  input [15:0]bdatr;
  input ctl_copro;
  input [14:0]cbus_i;
  input [0:0]\tr_reg[15] ;
  input [1:0]bcmd;
  input brdy;
  input p_0_in;
  input clk;
  input \read_cyc_reg[0]_1 ;
  output cbus_i_7_sn_1;
  output cbus_i_6_sn_1;
  output cbus_i_5_sn_1;
  output cbus_i_4_sn_1;
  output cbus_i_3_sn_1;
  output cbus_i_2_sn_1;
  output cbus_i_1_sn_1;
  output cbus_i_0_sn_1;

  wire \<const1> ;
  wire [1:0]bcmd;
  wire [15:0]bdatr;
  wire brdy;
  wire [0:0]cbus;
  wire [14:0]cbus_i;
  wire cbus_i_0_sn_1;
  wire cbus_i_1_sn_1;
  wire cbus_i_2_sn_1;
  wire cbus_i_3_sn_1;
  wire cbus_i_4_sn_1;
  wire cbus_i_5_sn_1;
  wire cbus_i_6_sn_1;
  wire cbus_i_7_sn_1;
  wire clk;
  wire ctl_copro;
  wire \iv[0]_i_9_n_0 ;
  wire \iv[1]_i_9_n_0 ;
  wire \iv[2]_i_9_n_0 ;
  wire \iv[3]_i_9_n_0 ;
  wire \iv[4]_i_9_n_0 ;
  wire \iv[5]_i_9_n_0 ;
  wire \iv[6]_i_9_n_0 ;
  wire \iv[7]_i_9_n_0 ;
  wire p_0_in;
  wire [2:1]read_cyc;
  wire \read_cyc[1]_i_1_n_0 ;
  wire \read_cyc[2]_i_1_n_0 ;
  wire \read_cyc_reg[0]_0 ;
  wire \read_cyc_reg[0]_1 ;
  wire \read_cyc_reg[1]_0 ;
  wire \read_cyc_reg[1]_1 ;
  wire \read_cyc_reg[1]_2 ;
  wire \read_cyc_reg[1]_3 ;
  wire \read_cyc_reg[1]_4 ;
  wire \read_cyc_reg[1]_5 ;
  wire \read_cyc_reg[1]_6 ;
  wire [0:0]\tr_reg[15] ;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \iv[0]_i_3 
       (.I0(\iv[0]_i_9_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[0]),
        .I3(bdatr[0]),
        .I4(read_cyc[2]),
        .I5(read_cyc[1]),
        .O(cbus_i_0_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[0]_i_9 
       (.I0(bdatr[8]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[0]),
        .I3(read_cyc[1]),
        .I4(read_cyc[2]),
        .O(\iv[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[10]_i_3 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[10]),
        .I3(cbus_i[10]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_3 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[11]_i_3 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[11]),
        .I3(cbus_i[11]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_2 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[12]_i_3 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[12]),
        .I3(cbus_i[12]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_1 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[13]_i_4 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[13]),
        .I3(cbus_i[13]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[14]_i_16 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .O(\read_cyc_reg[1]_6 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF404040)) 
    \iv[15]_i_2 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[15]),
        .I3(ctl_copro),
        .I4(cbus_i[14]),
        .I5(\tr_reg[15] ),
        .O(cbus));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \iv[1]_i_3 
       (.I0(\iv[1]_i_9_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[1]),
        .I3(bdatr[1]),
        .I4(read_cyc[2]),
        .I5(read_cyc[1]),
        .O(cbus_i_1_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[1]_i_9 
       (.I0(bdatr[9]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[1]),
        .I3(read_cyc[1]),
        .I4(read_cyc[2]),
        .O(\iv[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \iv[2]_i_3 
       (.I0(\iv[2]_i_9_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[2]),
        .I3(bdatr[2]),
        .I4(read_cyc[2]),
        .I5(read_cyc[1]),
        .O(cbus_i_2_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[2]_i_9 
       (.I0(bdatr[10]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[2]),
        .I3(read_cyc[1]),
        .I4(read_cyc[2]),
        .O(\iv[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \iv[3]_i_3 
       (.I0(\iv[3]_i_9_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[3]),
        .I3(bdatr[3]),
        .I4(read_cyc[2]),
        .I5(read_cyc[1]),
        .O(cbus_i_3_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[3]_i_9 
       (.I0(bdatr[11]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[3]),
        .I3(read_cyc[1]),
        .I4(read_cyc[2]),
        .O(\iv[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \iv[4]_i_3 
       (.I0(\iv[4]_i_9_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[4]),
        .I3(bdatr[4]),
        .I4(read_cyc[2]),
        .I5(read_cyc[1]),
        .O(cbus_i_4_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[4]_i_9 
       (.I0(bdatr[12]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[4]),
        .I3(read_cyc[1]),
        .I4(read_cyc[2]),
        .O(\iv[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \iv[5]_i_3 
       (.I0(\iv[5]_i_9_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[5]),
        .I3(bdatr[5]),
        .I4(read_cyc[2]),
        .I5(read_cyc[1]),
        .O(cbus_i_5_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[5]_i_9 
       (.I0(bdatr[13]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[5]),
        .I3(read_cyc[1]),
        .I4(read_cyc[2]),
        .O(\iv[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \iv[6]_i_3 
       (.I0(\iv[6]_i_9_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[6]),
        .I3(bdatr[6]),
        .I4(read_cyc[2]),
        .I5(read_cyc[1]),
        .O(cbus_i_6_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[6]_i_9 
       (.I0(bdatr[14]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[6]),
        .I3(read_cyc[1]),
        .I4(read_cyc[2]),
        .O(\iv[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \iv[7]_i_3 
       (.I0(\iv[7]_i_9_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[7]),
        .I3(bdatr[7]),
        .I4(read_cyc[2]),
        .I5(read_cyc[1]),
        .O(cbus_i_7_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[7]_i_9 
       (.I0(bdatr[15]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[7]),
        .I3(read_cyc[1]),
        .I4(read_cyc[2]),
        .O(\iv[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[8]_i_3 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[8]),
        .I3(cbus_i[8]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_5 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[9]_i_3 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[9]),
        .I3(cbus_i[9]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_4 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \read_cyc[1]_i_1 
       (.I0(bcmd[1]),
        .I1(brdy),
        .I2(read_cyc[1]),
        .O(\read_cyc[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \read_cyc[2]_i_1 
       (.I0(bcmd[0]),
        .I1(brdy),
        .I2(read_cyc[2]),
        .O(\read_cyc[2]_i_1_n_0 ));
  FDRE \read_cyc_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\read_cyc_reg[0]_1 ),
        .Q(\read_cyc_reg[0]_0 ),
        .R(p_0_in));
  FDRE \read_cyc_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\read_cyc[1]_i_1_n_0 ),
        .Q(read_cyc[1]),
        .R(p_0_in));
  FDRE \read_cyc_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\read_cyc[2]_i_1_n_0 ),
        .Q(read_cyc[2]),
        .R(p_0_in));
endmodule

module mcvm_rgf
   (out,
    \grn_reg[15] ,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    \grn_reg[15]_2 ,
    \grn_reg[15]_3 ,
    \sr_reg[15] ,
    fadr,
    \sp_reg[15] ,
    \iv_reg[15] ,
    \tr_reg[15] ,
    \sr_reg[4] ,
    \sr_reg[6] ,
    \sr_reg[6]_0 ,
    \sr_reg[7] ,
    \sr_reg[4]_0 ,
    \sr_reg[7]_0 ,
    \sr_reg[5] ,
    \sr_reg[4]_1 ,
    p_0_in,
    sp_dec_0,
    \sp_reg[3] ,
    abus_0,
    \sr_reg[0] ,
    bank_sel,
    \sr_reg[1] ,
    \sr_reg[2] ,
    \sr_reg[3] ,
    \sr_reg[4]_2 ,
    \grn_reg[5] ,
    \grn_reg[6] ,
    \grn_reg[7] ,
    \sp_reg[8] ,
    \grn_reg[7]_0 ,
    \sp_reg[9] ,
    \sp_reg[10] ,
    \sp_reg[11] ,
    \sp_reg[12] ,
    \sp_reg[13] ,
    \sp_reg[14] ,
    \sp_reg[15]_0 ,
    \sp_reg[1] ,
    \sp_reg[2] ,
    \sp_reg[3]_0 ,
    \sp_reg[4] ,
    \sp_reg[5] ,
    \sp_reg[6] ,
    \sp_reg[7] ,
    \sr_reg[6]_1 ,
    \iv[11]_i_17 ,
    \iv[13]_i_35 ,
    \iv[13]_i_16 ,
    \iv[14]_i_22 ,
    tout__1_carry_i_10,
    \iv[0]_i_17 ,
    \sr_reg[6]_2 ,
    \sr_reg[6]_3 ,
    \sr[6]_i_9 ,
    \bdatw[8]_INST_0_i_2 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \iv[0]_i_16 ,
    \bdatw[8]_INST_0_i_2_1 ,
    \bdatw[12]_INST_0_i_2 ,
    \iv[13]_i_21 ,
    \sr_reg[6]_4 ,
    \badr[2]_INST_0_i_1 ,
    \badr[4]_INST_0_i_1 ,
    \badr[15]_INST_0_i_1 ,
    \iv[6]_i_18 ,
    \sr_reg[6]_5 ,
    \iv[14]_i_36 ,
    \iv[0]_i_16_0 ,
    \iv[0]_i_16_1 ,
    \iv[0]_i_16_2 ,
    \iv[13]_i_30 ,
    \iv[14]_i_28 ,
    \iv[0]_i_16_3 ,
    \iv[13]_i_20 ,
    \badr[13]_INST_0_i_1 ,
    \sr_reg[6]_6 ,
    abus_o,
    \iv[1]_i_14 ,
    \iv[5]_i_15 ,
    \iv[0]_i_17_0 ,
    \iv[14]_i_28_0 ,
    \iv[5]_i_15_0 ,
    \iv[14]_i_36_0 ,
    \iv[12]_i_15 ,
    \iv[0]_i_16_4 ,
    \iv[0]_i_16_5 ,
    \iv[13]_i_24 ,
    \iv[5]_i_15_1 ,
    \iv[14]_i_22_0 ,
    \sr[7]_i_11 ,
    \bdatw[8]_INST_0_i_2_2 ,
    \bdatw[8]_INST_0_i_2_3 ,
    tout__1_carry_i_9,
    \iv[13]_i_35_0 ,
    \iv[0]_i_16_6 ,
    \iv[14]_i_34 ,
    \bdatw[8]_INST_0_i_2_4 ,
    \iv[13]_i_28 ,
    \iv[8]_i_20 ,
    \iv[13]_i_25 ,
    \iv[14]_i_22_1 ,
    fch_irq_req,
    fch_pc,
    \sr_reg[4]_3 ,
    \sr_reg[4]_4 ,
    \sp_reg[15]_1 ,
    \sp_reg[1]_0 ,
    \sp_reg[2]_0 ,
    \sp_reg[3]_1 ,
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
    \sr_reg[6]_7 ,
    \sr_reg[6]_8 ,
    \sr_reg[6]_9 ,
    \iv[11]_i_21 ,
    \bdatw[8]_INST_0_i_2_5 ,
    \bdatw[8]_INST_0_i_2_6 ,
    \bdatw[8]_INST_0_i_2_7 ,
    \iv[0]_i_18 ,
    \bdatw[8]_INST_0_i_2_8 ,
    \bdatw[8]_INST_0_i_2_9 ,
    \bdatw[8]_INST_0_i_2_10 ,
    \iv[13]_i_28_0 ,
    \bdatw[8]_INST_0_i_2_11 ,
    \sr_reg[6]_10 ,
    \sr_reg[6]_11 ,
    \badr[15]_INST_0_i_1_0 ,
    \sr_reg[6]_12 ,
    \bdatw[8]_INST_0_i_2_12 ,
    \iv[10]_i_18 ,
    ctl_fetch_fl_reg,
    ctl_fetch_fl_reg_0,
    ctl_fetch_fl_reg_1,
    \badr[15]_INST_0_i_77 ,
    Q,
    rst_n,
    .abus_o_0_sp_1(abus_o_0_sn_1),
    \abus_o[0]_0 ,
    .abus_o_1_sp_1(abus_o_1_sn_1),
    \abus_o[1]_0 ,
    .abus_o_2_sp_1(abus_o_2_sn_1),
    \abus_o[2]_0 ,
    .abus_o_3_sp_1(abus_o_3_sn_1),
    \abus_o[3]_0 ,
    .abus_o_4_sp_1(abus_o_4_sn_1),
    \abus_o[4]_0 ,
    .abus_o_5_sp_1(abus_o_5_sn_1),
    \abus_o[5]_0 ,
    .abus_o_6_sp_1(abus_o_6_sn_1),
    \abus_o[6]_0 ,
    .abus_o_7_sp_1(abus_o_7_sn_1),
    \abus_o[7]_0 ,
    .abus_o_8_sp_1(abus_o_8_sn_1),
    \abus_o[8]_0 ,
    .abus_o_9_sp_1(abus_o_9_sn_1),
    \abus_o[9]_0 ,
    .abus_o_10_sp_1(abus_o_10_sn_1),
    \abus_o[10]_0 ,
    .abus_o_11_sp_1(abus_o_11_sn_1),
    \abus_o[11]_0 ,
    .abus_o_12_sp_1(abus_o_12_sn_1),
    \abus_o[12]_0 ,
    .abus_o_13_sp_1(abus_o_13_sn_1),
    \abus_o[13]_0 ,
    .abus_o_14_sp_1(abus_o_14_sn_1),
    \abus_o[14]_0 ,
    .abus_o_15_sp_1(abus_o_15_sn_1),
    \abus_o[15]_0 ,
    \badr[0]_INST_0_i_1 ,
    \badr[1]_INST_0_i_1 ,
    \badr[2]_INST_0_i_1_0 ,
    \badr[3]_INST_0_i_1 ,
    \badr[4]_INST_0_i_1_0 ,
    \badr[5]_INST_0_i_1 ,
    \badr[6]_INST_0_i_1 ,
    \badr[7]_INST_0_i_1 ,
    \badr[8]_INST_0_i_1 ,
    \badr[9]_INST_0_i_1 ,
    \badr[10]_INST_0_i_1 ,
    \badr[11]_INST_0_i_1 ,
    \badr[12]_INST_0_i_1 ,
    \badr[13]_INST_0_i_1_0 ,
    \badr[14]_INST_0_i_1 ,
    \badr[15]_INST_0_i_1_1 ,
    gr1_bus1__0,
    gr2_bus1__0,
    gr1_bus1__0_0,
    gr2_bus1__0_1,
    \badr[0]_INST_0_i_1_0 ,
    \badr[1]_INST_0_i_1_0 ,
    \badr[2]_INST_0_i_1_1 ,
    \badr[3]_INST_0_i_1_0 ,
    \badr[4]_INST_0_i_1_1 ,
    \badr[5]_INST_0_i_1_0 ,
    \badr[6]_INST_0_i_1_0 ,
    \badr[7]_INST_0_i_1_0 ,
    \badr[8]_INST_0_i_1_0 ,
    \badr[9]_INST_0_i_1_0 ,
    \badr[10]_INST_0_i_1_0 ,
    \badr[11]_INST_0_i_1_0 ,
    \badr[12]_INST_0_i_1_0 ,
    \badr[13]_INST_0_i_1_1 ,
    \badr[14]_INST_0_i_1_0 ,
    \badr[15]_INST_0_i_1_2 ,
    \badr[0]_INST_0_i_1_1 ,
    gr1_bus1__0_2,
    gr2_bus1__0_3,
    \badr[1]_INST_0_i_1_1 ,
    \badr[2]_INST_0_i_1_2 ,
    \badr[3]_INST_0_i_1_1 ,
    \badr[4]_INST_0_i_1_2 ,
    \badr[5]_INST_0_i_1_1 ,
    \badr[6]_INST_0_i_1_1 ,
    \badr[7]_INST_0_i_1_1 ,
    \badr[8]_INST_0_i_1_1 ,
    \badr[9]_INST_0_i_1_1 ,
    \badr[10]_INST_0_i_1_1 ,
    \badr[11]_INST_0_i_1_1 ,
    \badr[12]_INST_0_i_1_1 ,
    \badr[13]_INST_0_i_1_2 ,
    \badr[14]_INST_0_i_1_1 ,
    \badr[15]_INST_0_i_1_3 ,
    abus_sel_0,
    gr7_bus1__0,
    gr0_bus1__0,
    gr7_bus1__0_4,
    gr0_bus1__0_5,
    gr7_bus1__0_6,
    gr0_bus1__0_7,
    gr3_bus1__0,
    gr4_bus1__0,
    gr4_bus1__0_8,
    gr5_bus1__0,
    gr3_bus1__0_9,
    gr4_bus1__0_10,
    gr5_bus1__0_11,
    gr6_bus1__0,
    gr5_bus1__0_12,
    gr6_bus1__0_13,
    gr5_bus1__0_14,
    gr6_bus1__0_15,
    \bdatw[8]_INST_0_i_1 ,
    gr3_bus1__0_16,
    gr4_bus1__0_17,
    \bdatw[11]_INST_0_i_24 ,
    \bdatw[11]_INST_0_i_24_0 ,
    \bdatw[11]_INST_0_i_24_1 ,
    gr7_bus1__0_18,
    gr0_bus1__0_19,
    gr5_bus1__0_20,
    gr6_bus1__0_21,
    gr0_bus1__0_22,
    gr7_bus1__0_23,
    gr5_bus1__0_24,
    gr6_bus1__0_25,
    \bdatw[8]_INST_0_i_2_13 ,
    \bdatw[8]_INST_0_i_2_14 ,
    \bdatw[9]_INST_0_i_2 ,
    \bdatw[9]_INST_0_i_2_0 ,
    \bdatw[10]_INST_0_i_2 ,
    \bdatw[10]_INST_0_i_2_0 ,
    \bdatw[11]_INST_0_i_2 ,
    \bdatw[11]_INST_0_i_2_0 ,
    \bdatw[12]_INST_0_i_2_0 ,
    \bdatw[12]_INST_0_i_2_1 ,
    \bdatw[13]_INST_0_i_6 ,
    \bdatw[14]_INST_0_i_6 ,
    \bdatw[15]_INST_0_i_8 ,
    \bdatw[8]_INST_0_i_4 ,
    \bdatw[9]_INST_0_i_4 ,
    \bdatw[10]_INST_0_i_4 ,
    \bdatw[11]_INST_0_i_4 ,
    \bdatw[12]_INST_0_i_4 ,
    \bdatw[13]_INST_0_i_4 ,
    \bdatw[14]_INST_0_i_4 ,
    \bdatw[15]_INST_0_i_6 ,
    gr0_bus1__0_26,
    gr7_bus1__0_27,
    gr0_bus1__0_28,
    gr5_bus1__0_29,
    gr6_bus1__0_30,
    \bdatw[11]_INST_0_i_25 ,
    gr1_bus1__0_31,
    gr2_bus1__0_32,
    gr4_bus1__0_33,
    gr3_bus1__0_34,
    gr1_bus1__0_35,
    gr2_bus1__0_36,
    gr2_bus1__0_37,
    gr3_bus1__0_38,
    gr4_bus1__0_39,
    gr3_bus1__0_40,
    gr1_bus1__0_41,
    gr2_bus1__0_42,
    bbus_sel_0,
    \iv[8]_i_5 ,
    \iv[8]_i_5_0 ,
    \iv[2]_i_2 ,
    \iv[2]_i_2_0 ,
    \iv[2]_i_2_1 ,
    \iv[8]_i_14 ,
    \sr[6]_i_3 ,
    \iv[6]_i_2 ,
    acmd,
    \sr[7]_i_16 ,
    \sr[7]_i_9 ,
    \sr[7]_i_9_0 ,
    \iv[14]_i_4 ,
    \iv[14]_i_13 ,
    \iv[13]_i_2 ,
    ctl_copro,
    \sr[7]_i_9_1 ,
    \iv[9]_i_7 ,
    \iv[11]_i_9 ,
    irq_lev,
    irq,
    ctl_sp_dec,
    ctl_sp_inc,
    \iv[10]_i_5 ,
    D,
    clk,
    \sr_reg[15]_0 ,
    \sr_reg[11] ,
    \sr_reg[10] ,
    \sr_reg[7]_1 ,
    \sr_reg[6]_13 ,
    \sr_reg[5]_0 ,
    \sr_reg[4]_5 ,
    \sr_reg[3]_0 ,
    \sr_reg[2]_0 ,
    \sr_reg[1]_0 ,
    \sr_reg[0]_0 ,
    \pc_reg[15] ,
    \sp_reg[15]_2 ,
    cbus_sel_cr,
    \tr_reg[15]_0 ,
    E,
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
    \grn_reg[15]_34 );
  output [15:0]out;
  output [15:0]\grn_reg[15] ;
  output [10:0]\grn_reg[15]_0 ;
  output [10:0]\grn_reg[15]_1 ;
  output [15:0]\grn_reg[15]_2 ;
  output [15:0]\grn_reg[15]_3 ;
  output [15:0]\sr_reg[15] ;
  output [15:0]fadr;
  output [15:0]\sp_reg[15] ;
  output [15:0]\iv_reg[15] ;
  output [15:0]\tr_reg[15] ;
  output \sr_reg[4] ;
  output \sr_reg[6] ;
  output \sr_reg[6]_0 ;
  output \sr_reg[7] ;
  output \sr_reg[4]_0 ;
  output \sr_reg[7]_0 ;
  output \sr_reg[5] ;
  output \sr_reg[4]_1 ;
  output p_0_in;
  output [14:0]sp_dec_0;
  output [0:0]\sp_reg[3] ;
  output [15:0]abus_0;
  output \sr_reg[0] ;
  output [3:0]bank_sel;
  output \sr_reg[1] ;
  output \sr_reg[2] ;
  output \sr_reg[3] ;
  output \sr_reg[4]_2 ;
  output \grn_reg[5] ;
  output \grn_reg[6] ;
  output \grn_reg[7] ;
  output \sp_reg[8] ;
  output [7:0]\grn_reg[7]_0 ;
  output \sp_reg[9] ;
  output \sp_reg[10] ;
  output \sp_reg[11] ;
  output \sp_reg[12] ;
  output \sp_reg[13] ;
  output \sp_reg[14] ;
  output \sp_reg[15]_0 ;
  output \sp_reg[1] ;
  output \sp_reg[2] ;
  output \sp_reg[3]_0 ;
  output \sp_reg[4] ;
  output \sp_reg[5] ;
  output \sp_reg[6] ;
  output \sp_reg[7] ;
  output \sr_reg[6]_1 ;
  output \iv[11]_i_17 ;
  output \iv[13]_i_35 ;
  output \iv[13]_i_16 ;
  output \iv[14]_i_22 ;
  output tout__1_carry_i_10;
  output \iv[0]_i_17 ;
  output \sr_reg[6]_2 ;
  output \sr_reg[6]_3 ;
  output \sr[6]_i_9 ;
  output \bdatw[8]_INST_0_i_2 ;
  output \bdatw[8]_INST_0_i_2_0 ;
  output \iv[0]_i_16 ;
  output \bdatw[8]_INST_0_i_2_1 ;
  output \bdatw[12]_INST_0_i_2 ;
  output \iv[13]_i_21 ;
  output \sr_reg[6]_4 ;
  output \badr[2]_INST_0_i_1 ;
  output \badr[4]_INST_0_i_1 ;
  output \badr[15]_INST_0_i_1 ;
  output \iv[6]_i_18 ;
  output \sr_reg[6]_5 ;
  output \iv[14]_i_36 ;
  output \iv[0]_i_16_0 ;
  output \iv[0]_i_16_1 ;
  output \iv[0]_i_16_2 ;
  output \iv[13]_i_30 ;
  output \iv[14]_i_28 ;
  output \iv[0]_i_16_3 ;
  output \iv[13]_i_20 ;
  output \badr[13]_INST_0_i_1 ;
  output \sr_reg[6]_6 ;
  output [15:0]abus_o;
  output \iv[1]_i_14 ;
  output \iv[5]_i_15 ;
  output \iv[0]_i_17_0 ;
  output \iv[14]_i_28_0 ;
  output \iv[5]_i_15_0 ;
  output \iv[14]_i_36_0 ;
  output \iv[12]_i_15 ;
  output \iv[0]_i_16_4 ;
  output \iv[0]_i_16_5 ;
  output \iv[13]_i_24 ;
  output \iv[5]_i_15_1 ;
  output \iv[14]_i_22_0 ;
  output \sr[7]_i_11 ;
  output \bdatw[8]_INST_0_i_2_2 ;
  output \bdatw[8]_INST_0_i_2_3 ;
  output tout__1_carry_i_9;
  output \iv[13]_i_35_0 ;
  output \iv[0]_i_16_6 ;
  output \iv[14]_i_34 ;
  output \bdatw[8]_INST_0_i_2_4 ;
  output \iv[13]_i_28 ;
  output \iv[8]_i_20 ;
  output \iv[13]_i_25 ;
  output \iv[14]_i_22_1 ;
  output fch_irq_req;
  output [15:0]fch_pc;
  output \sr_reg[4]_3 ;
  output \sr_reg[4]_4 ;
  output \sp_reg[15]_1 ;
  output \sp_reg[1]_0 ;
  output \sp_reg[2]_0 ;
  output \sp_reg[3]_1 ;
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
  output \sr_reg[6]_7 ;
  output \sr_reg[6]_8 ;
  output \sr_reg[6]_9 ;
  output \iv[11]_i_21 ;
  output \bdatw[8]_INST_0_i_2_5 ;
  output \bdatw[8]_INST_0_i_2_6 ;
  output \bdatw[8]_INST_0_i_2_7 ;
  output \iv[0]_i_18 ;
  output \bdatw[8]_INST_0_i_2_8 ;
  output \bdatw[8]_INST_0_i_2_9 ;
  output \bdatw[8]_INST_0_i_2_10 ;
  output \iv[13]_i_28_0 ;
  output \bdatw[8]_INST_0_i_2_11 ;
  output \sr_reg[6]_10 ;
  output \sr_reg[6]_11 ;
  output \badr[15]_INST_0_i_1_0 ;
  output \sr_reg[6]_12 ;
  output \bdatw[8]_INST_0_i_2_12 ;
  output \iv[10]_i_18 ;
  input ctl_fetch_fl_reg;
  input ctl_fetch_fl_reg_0;
  input ctl_fetch_fl_reg_1;
  input [4:0]\badr[15]_INST_0_i_77 ;
  input [1:0]Q;
  input rst_n;
  input \abus_o[0]_0 ;
  input \abus_o[1]_0 ;
  input \abus_o[2]_0 ;
  input \abus_o[3]_0 ;
  input \abus_o[4]_0 ;
  input \abus_o[5]_0 ;
  input \abus_o[6]_0 ;
  input \abus_o[7]_0 ;
  input \abus_o[8]_0 ;
  input \abus_o[9]_0 ;
  input \abus_o[10]_0 ;
  input \abus_o[11]_0 ;
  input \abus_o[12]_0 ;
  input \abus_o[13]_0 ;
  input \abus_o[14]_0 ;
  input \abus_o[15]_0 ;
  input \badr[0]_INST_0_i_1 ;
  input \badr[1]_INST_0_i_1 ;
  input \badr[2]_INST_0_i_1_0 ;
  input \badr[3]_INST_0_i_1 ;
  input \badr[4]_INST_0_i_1_0 ;
  input \badr[5]_INST_0_i_1 ;
  input \badr[6]_INST_0_i_1 ;
  input \badr[7]_INST_0_i_1 ;
  input \badr[8]_INST_0_i_1 ;
  input \badr[9]_INST_0_i_1 ;
  input \badr[10]_INST_0_i_1 ;
  input \badr[11]_INST_0_i_1 ;
  input \badr[12]_INST_0_i_1 ;
  input \badr[13]_INST_0_i_1_0 ;
  input \badr[14]_INST_0_i_1 ;
  input \badr[15]_INST_0_i_1_1 ;
  input gr1_bus1__0;
  input gr2_bus1__0;
  input gr1_bus1__0_0;
  input gr2_bus1__0_1;
  input \badr[0]_INST_0_i_1_0 ;
  input \badr[1]_INST_0_i_1_0 ;
  input \badr[2]_INST_0_i_1_1 ;
  input \badr[3]_INST_0_i_1_0 ;
  input \badr[4]_INST_0_i_1_1 ;
  input \badr[5]_INST_0_i_1_0 ;
  input \badr[6]_INST_0_i_1_0 ;
  input \badr[7]_INST_0_i_1_0 ;
  input \badr[8]_INST_0_i_1_0 ;
  input \badr[9]_INST_0_i_1_0 ;
  input \badr[10]_INST_0_i_1_0 ;
  input \badr[11]_INST_0_i_1_0 ;
  input \badr[12]_INST_0_i_1_0 ;
  input \badr[13]_INST_0_i_1_1 ;
  input \badr[14]_INST_0_i_1_0 ;
  input \badr[15]_INST_0_i_1_2 ;
  input \badr[0]_INST_0_i_1_1 ;
  input gr1_bus1__0_2;
  input gr2_bus1__0_3;
  input \badr[1]_INST_0_i_1_1 ;
  input \badr[2]_INST_0_i_1_2 ;
  input \badr[3]_INST_0_i_1_1 ;
  input \badr[4]_INST_0_i_1_2 ;
  input \badr[5]_INST_0_i_1_1 ;
  input \badr[6]_INST_0_i_1_1 ;
  input \badr[7]_INST_0_i_1_1 ;
  input \badr[8]_INST_0_i_1_1 ;
  input \badr[9]_INST_0_i_1_1 ;
  input \badr[10]_INST_0_i_1_1 ;
  input \badr[11]_INST_0_i_1_1 ;
  input \badr[12]_INST_0_i_1_1 ;
  input \badr[13]_INST_0_i_1_2 ;
  input \badr[14]_INST_0_i_1_1 ;
  input \badr[15]_INST_0_i_1_3 ;
  input [2:0]abus_sel_0;
  input gr7_bus1__0;
  input gr0_bus1__0;
  input gr7_bus1__0_4;
  input gr0_bus1__0_5;
  input gr7_bus1__0_6;
  input gr0_bus1__0_7;
  input gr3_bus1__0;
  input gr4_bus1__0;
  input gr4_bus1__0_8;
  input gr5_bus1__0;
  input gr3_bus1__0_9;
  input gr4_bus1__0_10;
  input gr5_bus1__0_11;
  input gr6_bus1__0;
  input gr5_bus1__0_12;
  input gr6_bus1__0_13;
  input gr5_bus1__0_14;
  input gr6_bus1__0_15;
  input [2:0]\bdatw[8]_INST_0_i_1 ;
  input gr3_bus1__0_16;
  input gr4_bus1__0_17;
  input \bdatw[11]_INST_0_i_24 ;
  input \bdatw[11]_INST_0_i_24_0 ;
  input \bdatw[11]_INST_0_i_24_1 ;
  input gr7_bus1__0_18;
  input gr0_bus1__0_19;
  input gr5_bus1__0_20;
  input gr6_bus1__0_21;
  input gr0_bus1__0_22;
  input gr7_bus1__0_23;
  input gr5_bus1__0_24;
  input gr6_bus1__0_25;
  input \bdatw[8]_INST_0_i_2_13 ;
  input \bdatw[8]_INST_0_i_2_14 ;
  input \bdatw[9]_INST_0_i_2 ;
  input \bdatw[9]_INST_0_i_2_0 ;
  input \bdatw[10]_INST_0_i_2 ;
  input \bdatw[10]_INST_0_i_2_0 ;
  input \bdatw[11]_INST_0_i_2 ;
  input \bdatw[11]_INST_0_i_2_0 ;
  input \bdatw[12]_INST_0_i_2_0 ;
  input \bdatw[12]_INST_0_i_2_1 ;
  input \bdatw[13]_INST_0_i_6 ;
  input \bdatw[14]_INST_0_i_6 ;
  input \bdatw[15]_INST_0_i_8 ;
  input \bdatw[8]_INST_0_i_4 ;
  input \bdatw[9]_INST_0_i_4 ;
  input \bdatw[10]_INST_0_i_4 ;
  input \bdatw[11]_INST_0_i_4 ;
  input \bdatw[12]_INST_0_i_4 ;
  input \bdatw[13]_INST_0_i_4 ;
  input \bdatw[14]_INST_0_i_4 ;
  input \bdatw[15]_INST_0_i_6 ;
  input gr0_bus1__0_26;
  input gr7_bus1__0_27;
  input gr0_bus1__0_28;
  input gr5_bus1__0_29;
  input gr6_bus1__0_30;
  input \bdatw[11]_INST_0_i_25 ;
  input gr1_bus1__0_31;
  input gr2_bus1__0_32;
  input gr4_bus1__0_33;
  input gr3_bus1__0_34;
  input gr1_bus1__0_35;
  input gr2_bus1__0_36;
  input gr2_bus1__0_37;
  input gr3_bus1__0_38;
  input gr4_bus1__0_39;
  input gr3_bus1__0_40;
  input gr1_bus1__0_41;
  input gr2_bus1__0_42;
  input [1:0]bbus_sel_0;
  input \iv[8]_i_5 ;
  input \iv[8]_i_5_0 ;
  input \iv[2]_i_2 ;
  input \iv[2]_i_2_0 ;
  input \iv[2]_i_2_1 ;
  input \iv[8]_i_14 ;
  input \sr[6]_i_3 ;
  input \iv[6]_i_2 ;
  input [0:0]acmd;
  input \sr[7]_i_16 ;
  input \sr[7]_i_9 ;
  input \sr[7]_i_9_0 ;
  input \iv[14]_i_4 ;
  input \iv[14]_i_13 ;
  input \iv[13]_i_2 ;
  input ctl_copro;
  input \sr[7]_i_9_1 ;
  input \iv[9]_i_7 ;
  input \iv[11]_i_9 ;
  input [1:0]irq_lev;
  input irq;
  input ctl_sp_dec;
  input ctl_sp_inc;
  input \iv[10]_i_5 ;
  input [1:0]D;
  input clk;
  input \sr_reg[15]_0 ;
  input \sr_reg[11] ;
  input \sr_reg[10] ;
  input \sr_reg[7]_1 ;
  input \sr_reg[6]_13 ;
  input \sr_reg[5]_0 ;
  input \sr_reg[4]_5 ;
  input \sr_reg[3]_0 ;
  input \sr_reg[2]_0 ;
  input \sr_reg[1]_0 ;
  input \sr_reg[0]_0 ;
  input [15:0]\pc_reg[15] ;
  input [15:0]\sp_reg[15]_2 ;
  input [1:0]cbus_sel_cr;
  input [15:0]\tr_reg[15]_0 ;
  input [0:0]E;
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
  input abus_o_0_sn_1;
  input abus_o_1_sn_1;
  input abus_o_2_sn_1;
  input abus_o_3_sn_1;
  input abus_o_4_sn_1;
  input abus_o_5_sn_1;
  input abus_o_6_sn_1;
  input abus_o_7_sn_1;
  input abus_o_8_sn_1;
  input abus_o_9_sn_1;
  input abus_o_10_sn_1;
  input abus_o_11_sn_1;
  input abus_o_12_sn_1;
  input abus_o_13_sn_1;
  input abus_o_14_sn_1;
  input abus_o_15_sn_1;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [15:0]abus_0;
  wire [15:0]abus_o;
  wire \abus_o[0]_0 ;
  wire \abus_o[10]_0 ;
  wire \abus_o[11]_0 ;
  wire \abus_o[12]_0 ;
  wire \abus_o[13]_0 ;
  wire \abus_o[14]_0 ;
  wire \abus_o[15]_0 ;
  wire \abus_o[1]_0 ;
  wire \abus_o[2]_0 ;
  wire \abus_o[3]_0 ;
  wire \abus_o[4]_0 ;
  wire \abus_o[5]_0 ;
  wire \abus_o[6]_0 ;
  wire \abus_o[7]_0 ;
  wire \abus_o[8]_0 ;
  wire \abus_o[9]_0 ;
  wire abus_o_0_sn_1;
  wire abus_o_10_sn_1;
  wire abus_o_11_sn_1;
  wire abus_o_12_sn_1;
  wire abus_o_13_sn_1;
  wire abus_o_14_sn_1;
  wire abus_o_15_sn_1;
  wire abus_o_1_sn_1;
  wire abus_o_2_sn_1;
  wire abus_o_3_sn_1;
  wire abus_o_4_sn_1;
  wire abus_o_5_sn_1;
  wire abus_o_6_sn_1;
  wire abus_o_7_sn_1;
  wire abus_o_8_sn_1;
  wire abus_o_9_sn_1;
  wire [2:0]abus_sel_0;
  wire \abuso2l/gr3_bus1__0 ;
  wire \abuso2l/gr4_bus1__0 ;
  wire [0:0]acmd;
  wire \badr[0]_INST_0_i_1 ;
  wire \badr[0]_INST_0_i_1_0 ;
  wire \badr[0]_INST_0_i_1_1 ;
  wire \badr[10]_INST_0_i_1 ;
  wire \badr[10]_INST_0_i_1_0 ;
  wire \badr[10]_INST_0_i_1_1 ;
  wire \badr[11]_INST_0_i_1 ;
  wire \badr[11]_INST_0_i_1_0 ;
  wire \badr[11]_INST_0_i_1_1 ;
  wire \badr[12]_INST_0_i_1 ;
  wire \badr[12]_INST_0_i_1_0 ;
  wire \badr[12]_INST_0_i_1_1 ;
  wire \badr[13]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_1_0 ;
  wire \badr[13]_INST_0_i_1_1 ;
  wire \badr[13]_INST_0_i_1_2 ;
  wire \badr[14]_INST_0_i_1 ;
  wire \badr[14]_INST_0_i_1_0 ;
  wire \badr[14]_INST_0_i_1_1 ;
  wire \badr[15]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_1_0 ;
  wire \badr[15]_INST_0_i_1_1 ;
  wire \badr[15]_INST_0_i_1_2 ;
  wire \badr[15]_INST_0_i_1_3 ;
  wire [4:0]\badr[15]_INST_0_i_77 ;
  wire \badr[1]_INST_0_i_1 ;
  wire \badr[1]_INST_0_i_1_0 ;
  wire \badr[1]_INST_0_i_1_1 ;
  wire \badr[2]_INST_0_i_1 ;
  wire \badr[2]_INST_0_i_1_0 ;
  wire \badr[2]_INST_0_i_1_1 ;
  wire \badr[2]_INST_0_i_1_2 ;
  wire \badr[3]_INST_0_i_1 ;
  wire \badr[3]_INST_0_i_1_0 ;
  wire \badr[3]_INST_0_i_1_1 ;
  wire \badr[4]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_1_0 ;
  wire \badr[4]_INST_0_i_1_1 ;
  wire \badr[4]_INST_0_i_1_2 ;
  wire \badr[5]_INST_0_i_1 ;
  wire \badr[5]_INST_0_i_1_0 ;
  wire \badr[5]_INST_0_i_1_1 ;
  wire \badr[6]_INST_0_i_1 ;
  wire \badr[6]_INST_0_i_1_0 ;
  wire \badr[6]_INST_0_i_1_1 ;
  wire \badr[7]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_1_0 ;
  wire \badr[7]_INST_0_i_1_1 ;
  wire \badr[8]_INST_0_i_1 ;
  wire \badr[8]_INST_0_i_1_0 ;
  wire \badr[8]_INST_0_i_1_1 ;
  wire \badr[9]_INST_0_i_1 ;
  wire \badr[9]_INST_0_i_1_0 ;
  wire \badr[9]_INST_0_i_1_1 ;
  wire bank02_n_100;
  wire bank02_n_101;
  wire bank02_n_102;
  wire bank02_n_103;
  wire bank02_n_104;
  wire bank02_n_105;
  wire bank02_n_106;
  wire bank02_n_107;
  wire bank02_n_108;
  wire bank02_n_109;
  wire bank02_n_110;
  wire bank02_n_111;
  wire bank02_n_112;
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
  wire bank02_n_97;
  wire bank02_n_98;
  wire bank02_n_99;
  wire bank13_n_24;
  wire bank13_n_25;
  wire bank13_n_26;
  wire bank13_n_27;
  wire bank13_n_28;
  wire bank13_n_29;
  wire bank13_n_30;
  wire bank13_n_31;
  wire [3:0]bank_sel;
  wire [15:8]bbus_b02;
  wire [1:0]bbus_sel_0;
  wire \bbuso2l/gr4_bus1__0 ;
  wire \bbuso2l/gr5_bus1__0 ;
  wire \bdatw[10]_INST_0_i_2 ;
  wire \bdatw[10]_INST_0_i_2_0 ;
  wire \bdatw[10]_INST_0_i_4 ;
  wire \bdatw[11]_INST_0_i_2 ;
  wire \bdatw[11]_INST_0_i_24 ;
  wire \bdatw[11]_INST_0_i_24_0 ;
  wire \bdatw[11]_INST_0_i_24_1 ;
  wire \bdatw[11]_INST_0_i_25 ;
  wire \bdatw[11]_INST_0_i_2_0 ;
  wire \bdatw[11]_INST_0_i_4 ;
  wire \bdatw[12]_INST_0_i_2 ;
  wire \bdatw[12]_INST_0_i_2_0 ;
  wire \bdatw[12]_INST_0_i_2_1 ;
  wire \bdatw[12]_INST_0_i_4 ;
  wire \bdatw[13]_INST_0_i_4 ;
  wire \bdatw[13]_INST_0_i_6 ;
  wire \bdatw[14]_INST_0_i_4 ;
  wire \bdatw[14]_INST_0_i_6 ;
  wire \bdatw[15]_INST_0_i_6 ;
  wire \bdatw[15]_INST_0_i_8 ;
  wire [2:0]\bdatw[8]_INST_0_i_1 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_2_10 ;
  wire \bdatw[8]_INST_0_i_2_11 ;
  wire \bdatw[8]_INST_0_i_2_12 ;
  wire \bdatw[8]_INST_0_i_2_13 ;
  wire \bdatw[8]_INST_0_i_2_14 ;
  wire \bdatw[8]_INST_0_i_2_2 ;
  wire \bdatw[8]_INST_0_i_2_3 ;
  wire \bdatw[8]_INST_0_i_2_4 ;
  wire \bdatw[8]_INST_0_i_2_5 ;
  wire \bdatw[8]_INST_0_i_2_6 ;
  wire \bdatw[8]_INST_0_i_2_7 ;
  wire \bdatw[8]_INST_0_i_2_8 ;
  wire \bdatw[8]_INST_0_i_2_9 ;
  wire \bdatw[8]_INST_0_i_4 ;
  wire \bdatw[9]_INST_0_i_2 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_4 ;
  wire [1:0]cbus_sel_cr;
  wire clk;
  wire ctl_copro;
  wire ctl_fetch_fl_reg;
  wire ctl_fetch_fl_reg_0;
  wire ctl_fetch_fl_reg_1;
  wire ctl_sp_dec;
  wire ctl_sp_inc;
  wire [15:0]fadr;
  wire fch_irq_req;
  wire [15:0]fch_pc;
  wire gr0_bus1__0;
  wire gr0_bus1__0_19;
  wire gr0_bus1__0_22;
  wire gr0_bus1__0_26;
  wire gr0_bus1__0_28;
  wire gr0_bus1__0_5;
  wire gr0_bus1__0_7;
  wire gr1_bus1__0;
  wire gr1_bus1__0_0;
  wire gr1_bus1__0_2;
  wire gr1_bus1__0_31;
  wire gr1_bus1__0_35;
  wire gr1_bus1__0_41;
  wire gr2_bus1__0;
  wire gr2_bus1__0_1;
  wire gr2_bus1__0_3;
  wire gr2_bus1__0_32;
  wire gr2_bus1__0_36;
  wire gr2_bus1__0_37;
  wire gr2_bus1__0_42;
  wire gr3_bus1__0;
  wire gr3_bus1__0_16;
  wire gr3_bus1__0_34;
  wire gr3_bus1__0_38;
  wire gr3_bus1__0_40;
  wire gr3_bus1__0_9;
  wire gr4_bus1__0;
  wire gr4_bus1__0_10;
  wire gr4_bus1__0_17;
  wire gr4_bus1__0_33;
  wire gr4_bus1__0_39;
  wire gr4_bus1__0_8;
  wire gr5_bus1__0;
  wire gr5_bus1__0_11;
  wire gr5_bus1__0_12;
  wire gr5_bus1__0_14;
  wire gr5_bus1__0_20;
  wire gr5_bus1__0_24;
  wire gr5_bus1__0_29;
  wire gr6_bus1__0;
  wire gr6_bus1__0_13;
  wire gr6_bus1__0_15;
  wire gr6_bus1__0_21;
  wire gr6_bus1__0_25;
  wire gr6_bus1__0_30;
  wire gr7_bus1__0;
  wire gr7_bus1__0_18;
  wire gr7_bus1__0_23;
  wire gr7_bus1__0_27;
  wire gr7_bus1__0_4;
  wire gr7_bus1__0_6;
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
  wire [15:0]\grn_reg[15]_2 ;
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
  wire [15:0]\grn_reg[15]_3 ;
  wire [0:0]\grn_reg[15]_30 ;
  wire [0:0]\grn_reg[15]_31 ;
  wire [0:0]\grn_reg[15]_32 ;
  wire [0:0]\grn_reg[15]_33 ;
  wire [0:0]\grn_reg[15]_34 ;
  wire [0:0]\grn_reg[15]_4 ;
  wire [0:0]\grn_reg[15]_5 ;
  wire [0:0]\grn_reg[15]_6 ;
  wire [0:0]\grn_reg[15]_7 ;
  wire [0:0]\grn_reg[15]_8 ;
  wire [0:0]\grn_reg[15]_9 ;
  wire \grn_reg[5] ;
  wire \grn_reg[6] ;
  wire \grn_reg[7] ;
  wire [7:0]\grn_reg[7]_0 ;
  wire irq;
  wire [1:0]irq_lev;
  wire \iv[0]_i_16 ;
  wire \iv[0]_i_16_0 ;
  wire \iv[0]_i_16_1 ;
  wire \iv[0]_i_16_2 ;
  wire \iv[0]_i_16_3 ;
  wire \iv[0]_i_16_4 ;
  wire \iv[0]_i_16_5 ;
  wire \iv[0]_i_16_6 ;
  wire \iv[0]_i_17 ;
  wire \iv[0]_i_17_0 ;
  wire \iv[0]_i_18 ;
  wire \iv[10]_i_18 ;
  wire \iv[10]_i_5 ;
  wire \iv[11]_i_17 ;
  wire \iv[11]_i_21 ;
  wire \iv[11]_i_9 ;
  wire \iv[12]_i_15 ;
  wire \iv[13]_i_16 ;
  wire \iv[13]_i_2 ;
  wire \iv[13]_i_20 ;
  wire \iv[13]_i_21 ;
  wire \iv[13]_i_24 ;
  wire \iv[13]_i_25 ;
  wire \iv[13]_i_28 ;
  wire \iv[13]_i_28_0 ;
  wire \iv[13]_i_30 ;
  wire \iv[13]_i_35 ;
  wire \iv[13]_i_35_0 ;
  wire \iv[14]_i_13 ;
  wire \iv[14]_i_22 ;
  wire \iv[14]_i_22_0 ;
  wire \iv[14]_i_22_1 ;
  wire \iv[14]_i_28 ;
  wire \iv[14]_i_28_0 ;
  wire \iv[14]_i_34 ;
  wire \iv[14]_i_36 ;
  wire \iv[14]_i_36_0 ;
  wire \iv[14]_i_4 ;
  wire \iv[1]_i_14 ;
  wire \iv[2]_i_2 ;
  wire \iv[2]_i_2_0 ;
  wire \iv[2]_i_2_1 ;
  wire \iv[5]_i_15 ;
  wire \iv[5]_i_15_0 ;
  wire \iv[5]_i_15_1 ;
  wire \iv[6]_i_18 ;
  wire \iv[6]_i_2 ;
  wire \iv[8]_i_14 ;
  wire \iv[8]_i_20 ;
  wire \iv[8]_i_5 ;
  wire \iv[8]_i_5_0 ;
  wire \iv[9]_i_7 ;
  wire [15:0]\iv_reg[15] ;
  wire [15:0]out;
  wire p_0_in;
  wire [15:0]\pc_reg[15] ;
  wire rst_n;
  wire [14:0]sp_dec_0;
  wire \sp_reg[10] ;
  wire \sp_reg[10]_0 ;
  wire \sp_reg[11] ;
  wire \sp_reg[11]_0 ;
  wire \sp_reg[12] ;
  wire \sp_reg[12]_0 ;
  wire \sp_reg[13] ;
  wire \sp_reg[13]_0 ;
  wire \sp_reg[14] ;
  wire \sp_reg[14]_0 ;
  wire [15:0]\sp_reg[15] ;
  wire \sp_reg[15]_0 ;
  wire \sp_reg[15]_1 ;
  wire [15:0]\sp_reg[15]_2 ;
  wire \sp_reg[1] ;
  wire \sp_reg[1]_0 ;
  wire \sp_reg[2] ;
  wire \sp_reg[2]_0 ;
  wire [0:0]\sp_reg[3] ;
  wire \sp_reg[3]_0 ;
  wire \sp_reg[3]_1 ;
  wire \sp_reg[4] ;
  wire \sp_reg[4]_0 ;
  wire \sp_reg[5] ;
  wire \sp_reg[5]_0 ;
  wire \sp_reg[6] ;
  wire \sp_reg[6]_0 ;
  wire \sp_reg[7] ;
  wire \sp_reg[7]_0 ;
  wire \sp_reg[8] ;
  wire \sp_reg[8]_0 ;
  wire \sp_reg[9] ;
  wire \sp_reg[9]_0 ;
  wire \sr[6]_i_3 ;
  wire \sr[6]_i_9 ;
  wire \sr[7]_i_11 ;
  wire \sr[7]_i_16 ;
  wire \sr[7]_i_9 ;
  wire \sr[7]_i_9_0 ;
  wire \sr[7]_i_9_1 ;
  wire \sr_reg[0] ;
  wire \sr_reg[0]_0 ;
  wire \sr_reg[10] ;
  wire \sr_reg[11] ;
  wire [15:0]\sr_reg[15] ;
  wire \sr_reg[15]_0 ;
  wire \sr_reg[1] ;
  wire \sr_reg[1]_0 ;
  wire \sr_reg[2] ;
  wire \sr_reg[2]_0 ;
  wire \sr_reg[3] ;
  wire \sr_reg[3]_0 ;
  wire \sr_reg[4] ;
  wire \sr_reg[4]_0 ;
  wire \sr_reg[4]_1 ;
  wire \sr_reg[4]_2 ;
  wire \sr_reg[4]_3 ;
  wire \sr_reg[4]_4 ;
  wire \sr_reg[4]_5 ;
  wire \sr_reg[5] ;
  wire \sr_reg[5]_0 ;
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
  wire \sr_reg[7] ;
  wire \sr_reg[7]_0 ;
  wire \sr_reg[7]_1 ;
  wire sreg_n_24;
  wire sreg_n_25;
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
  wire sreg_n_48;
  wire sreg_n_53;
  wire tout__1_carry_i_10;
  wire tout__1_carry_i_9;
  wire [15:0]\tr_reg[15] ;
  wire [15:0]\tr_reg[15]_0 ;

  mcvm_rgf_bank bank02
       (.E(E),
        .SR(p_0_in),
        .\badr[0]_INST_0_i_1 (\badr[0]_INST_0_i_1_1 ),
        .\badr[10]_INST_0_i_1 (\badr[10]_INST_0_i_1_1 ),
        .\badr[11]_INST_0_i_1 (\badr[11]_INST_0_i_1_1 ),
        .\badr[12]_INST_0_i_1 (\badr[12]_INST_0_i_1_1 ),
        .\badr[13]_INST_0_i_1 (\badr[13]_INST_0_i_1_2 ),
        .\badr[14]_INST_0_i_1 (\badr[14]_INST_0_i_1_1 ),
        .\badr[15]_INST_0_i_1 (\badr[15]_INST_0_i_1_3 ),
        .\badr[1]_INST_0_i_1 (\badr[1]_INST_0_i_1_1 ),
        .\badr[2]_INST_0_i_1 (\badr[2]_INST_0_i_1_2 ),
        .\badr[3]_INST_0_i_1 (\badr[3]_INST_0_i_1_1 ),
        .\badr[4]_INST_0_i_1 (\badr[4]_INST_0_i_1_2 ),
        .\badr[5]_INST_0_i_1 (\badr[5]_INST_0_i_1_1 ),
        .\badr[6]_INST_0_i_1 (\badr[6]_INST_0_i_1_1 ),
        .\badr[7]_INST_0_i_1 (\badr[7]_INST_0_i_1_1 ),
        .\badr[8]_INST_0_i_1 (\badr[8]_INST_0_i_1_1 ),
        .\badr[9]_INST_0_i_1 (\badr[9]_INST_0_i_1_1 ),
        .bbus_b02(bbus_b02),
        .bbus_sel_0(bbus_sel_0),
        .\bdatw[10]_INST_0_i_2 (\bdatw[10]_INST_0_i_2 ),
        .\bdatw[10]_INST_0_i_2_0 (\bdatw[10]_INST_0_i_2_0 ),
        .\bdatw[10]_INST_0_i_4 (\bdatw[10]_INST_0_i_4 ),
        .\bdatw[11]_INST_0_i_2 (\bdatw[11]_INST_0_i_2 ),
        .\bdatw[11]_INST_0_i_24_0 (bank_sel[0]),
        .\bdatw[11]_INST_0_i_24_1 (\bdatw[11]_INST_0_i_24 ),
        .\bdatw[11]_INST_0_i_24_2 (\bdatw[11]_INST_0_i_24_0 ),
        .\bdatw[11]_INST_0_i_24_3 (\bdatw[11]_INST_0_i_24_1 ),
        .\bdatw[11]_INST_0_i_25_0 (\bdatw[11]_INST_0_i_25 ),
        .\bdatw[11]_INST_0_i_2_0 (\bdatw[11]_INST_0_i_2_0 ),
        .\bdatw[11]_INST_0_i_4 (\bdatw[11]_INST_0_i_4 ),
        .\bdatw[11]_INST_0_i_9_0 (\sr_reg[15] [1:0]),
        .\bdatw[12]_INST_0_i_2 (\bdatw[12]_INST_0_i_2_0 ),
        .\bdatw[12]_INST_0_i_2_0 (\bdatw[12]_INST_0_i_2_1 ),
        .\bdatw[12]_INST_0_i_4 (\bdatw[12]_INST_0_i_4 ),
        .\bdatw[13]_INST_0_i_4 (\bdatw[13]_INST_0_i_4 ),
        .\bdatw[13]_INST_0_i_6 (\bdatw[13]_INST_0_i_6 ),
        .\bdatw[14]_INST_0_i_4 (\bdatw[14]_INST_0_i_4 ),
        .\bdatw[14]_INST_0_i_6 (\bdatw[14]_INST_0_i_6 ),
        .\bdatw[15]_INST_0_i_6 (\bdatw[15]_INST_0_i_6 ),
        .\bdatw[15]_INST_0_i_8 (\bdatw[15]_INST_0_i_8 ),
        .\bdatw[8]_INST_0_i_2 (\bdatw[8]_INST_0_i_2_13 ),
        .\bdatw[8]_INST_0_i_2_0 (\bdatw[8]_INST_0_i_2_14 ),
        .\bdatw[8]_INST_0_i_4 (\bdatw[8]_INST_0_i_4 ),
        .\bdatw[9]_INST_0_i_2 (\bdatw[9]_INST_0_i_2 ),
        .\bdatw[9]_INST_0_i_2_0 (\bdatw[9]_INST_0_i_2_0 ),
        .\bdatw[9]_INST_0_i_4 (\bdatw[9]_INST_0_i_4 ),
        .clk(clk),
        .gr0_bus1__0_26(gr0_bus1__0_26),
        .gr0_bus1__0_28(gr0_bus1__0_28),
        .gr0_bus1__0_7(gr0_bus1__0_7),
        .gr1_bus1__0_2(gr1_bus1__0_2),
        .gr1_bus1__0_41(gr1_bus1__0_41),
        .gr2_bus1__0_3(gr2_bus1__0_3),
        .gr2_bus1__0_37(gr2_bus1__0_37),
        .gr2_bus1__0_42(gr2_bus1__0_42),
        .gr3_bus1__0_38(gr3_bus1__0_38),
        .gr3_bus1__0_40(gr3_bus1__0_40),
        .gr3_bus1__0_9(gr3_bus1__0_9),
        .gr4_bus1__0(\bbuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_10(gr4_bus1__0_10),
        .gr4_bus1__0_39(gr4_bus1__0_39),
        .gr4_bus1__0_8(gr4_bus1__0_8),
        .gr5_bus1__0(gr5_bus1__0),
        .gr5_bus1__0_0(\bbuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_14(gr5_bus1__0_14),
        .gr5_bus1__0_29(gr5_bus1__0_29),
        .gr6_bus1__0_15(gr6_bus1__0_15),
        .gr6_bus1__0_30(gr6_bus1__0_30),
        .gr7_bus1__0_27(gr7_bus1__0_27),
        .gr7_bus1__0_6(gr7_bus1__0_6),
        .\grn_reg[0] (bank02_n_97),
        .\grn_reg[10] (bank02_n_107),
        .\grn_reg[11] (bank02_n_108),
        .\grn_reg[12] (bank02_n_109),
        .\grn_reg[13] (bank02_n_110),
        .\grn_reg[14] (bank02_n_111),
        .\grn_reg[15] (\grn_reg[15] ),
        .\grn_reg[15]_0 ({\grn_reg[15]_0 ,bank02_n_43,bank02_n_44,bank02_n_45,bank02_n_46,bank02_n_47}),
        .\grn_reg[15]_1 ({\grn_reg[15]_1 ,bank02_n_59,bank02_n_60,bank02_n_61,bank02_n_62,bank02_n_63}),
        .\grn_reg[15]_10 (\grn_reg[15]_8 ),
        .\grn_reg[15]_11 (\grn_reg[15]_9 ),
        .\grn_reg[15]_12 (\grn_reg[15]_10 ),
        .\grn_reg[15]_13 (\grn_reg[15]_11 ),
        .\grn_reg[15]_14 (\grn_reg[15]_12 ),
        .\grn_reg[15]_15 (\grn_reg[15]_13 ),
        .\grn_reg[15]_16 (\grn_reg[15]_14 ),
        .\grn_reg[15]_17 (\grn_reg[15]_15 ),
        .\grn_reg[15]_18 (\grn_reg[15]_16 ),
        .\grn_reg[15]_19 (\grn_reg[15]_17 ),
        .\grn_reg[15]_2 (\grn_reg[15]_2 ),
        .\grn_reg[15]_20 (\grn_reg[15]_18 ),
        .\grn_reg[15]_3 (\grn_reg[15]_3 ),
        .\grn_reg[15]_4 (bank02_n_112),
        .\grn_reg[15]_5 (\tr_reg[15]_0 ),
        .\grn_reg[15]_6 (\grn_reg[15]_4 ),
        .\grn_reg[15]_7 (\grn_reg[15]_5 ),
        .\grn_reg[15]_8 (\grn_reg[15]_6 ),
        .\grn_reg[15]_9 (\grn_reg[15]_7 ),
        .\grn_reg[1] (bank02_n_98),
        .\grn_reg[2] (bank02_n_99),
        .\grn_reg[3] (bank02_n_100),
        .\grn_reg[4] (bank02_n_101),
        .\grn_reg[5] (bank02_n_102),
        .\grn_reg[6] (bank02_n_103),
        .\grn_reg[7] (bank02_n_104),
        .\grn_reg[7]_0 (\grn_reg[7]_0 ),
        .\grn_reg[8] (bank02_n_105),
        .\grn_reg[9] (bank02_n_106),
        .out(out),
        .rst_n(rst_n));
  mcvm_rgf_bank_0 bank13
       (.SR(p_0_in),
        .abus_o(abus_o),
        .\abus_o[0]_0 (sreg_n_24),
        .\abus_o[0]_1 (abus_o_0_sn_1),
        .\abus_o[0]_2 (\abus_o[0]_0 ),
        .\abus_o[10]_0 (sreg_n_34),
        .\abus_o[10]_1 (abus_o_10_sn_1),
        .\abus_o[10]_2 (\abus_o[10]_0 ),
        .\abus_o[11]_0 (sreg_n_35),
        .\abus_o[11]_1 (abus_o_11_sn_1),
        .\abus_o[11]_2 (\abus_o[11]_0 ),
        .\abus_o[12]_0 (sreg_n_36),
        .\abus_o[12]_1 (abus_o_12_sn_1),
        .\abus_o[12]_2 (\abus_o[12]_0 ),
        .\abus_o[13]_0 (sreg_n_37),
        .\abus_o[13]_1 (abus_o_13_sn_1),
        .\abus_o[13]_2 (\abus_o[13]_0 ),
        .\abus_o[14]_0 (sreg_n_38),
        .\abus_o[14]_1 (abus_o_14_sn_1),
        .\abus_o[14]_2 (\abus_o[14]_0 ),
        .\abus_o[15]_0 (sreg_n_39),
        .\abus_o[15]_1 (abus_o_15_sn_1),
        .\abus_o[15]_2 (\abus_o[15]_0 ),
        .\abus_o[1]_0 (sreg_n_25),
        .\abus_o[1]_1 (abus_o_1_sn_1),
        .\abus_o[1]_2 (\abus_o[1]_0 ),
        .\abus_o[2]_0 (sreg_n_26),
        .\abus_o[2]_1 (abus_o_2_sn_1),
        .\abus_o[2]_2 (\abus_o[2]_0 ),
        .\abus_o[3]_0 (sreg_n_27),
        .\abus_o[3]_1 (abus_o_3_sn_1),
        .\abus_o[3]_2 (\abus_o[3]_0 ),
        .\abus_o[4]_0 (sreg_n_28),
        .\abus_o[4]_1 (abus_o_4_sn_1),
        .\abus_o[4]_2 (\abus_o[4]_0 ),
        .\abus_o[5]_0 (sreg_n_29),
        .\abus_o[5]_1 (abus_o_5_sn_1),
        .\abus_o[5]_2 (\abus_o[5]_0 ),
        .\abus_o[6]_0 (sreg_n_30),
        .\abus_o[6]_1 (abus_o_6_sn_1),
        .\abus_o[6]_2 (\abus_o[6]_0 ),
        .\abus_o[7]_0 (sreg_n_31),
        .\abus_o[7]_1 (abus_o_7_sn_1),
        .\abus_o[7]_2 (\abus_o[7]_0 ),
        .\abus_o[8]_0 (sreg_n_32),
        .\abus_o[8]_1 (abus_o_8_sn_1),
        .\abus_o[8]_2 (\abus_o[8]_0 ),
        .\abus_o[9]_0 (sreg_n_33),
        .\abus_o[9]_1 (abus_o_9_sn_1),
        .\abus_o[9]_2 (\abus_o[9]_0 ),
        .abus_o_0_sp_1(bank02_n_97),
        .abus_o_10_sp_1(bank02_n_107),
        .abus_o_11_sp_1(bank02_n_108),
        .abus_o_12_sp_1(bank02_n_109),
        .abus_o_13_sp_1(bank02_n_110),
        .abus_o_14_sp_1(bank02_n_111),
        .abus_o_15_sp_1(bank02_n_112),
        .abus_o_1_sp_1(bank02_n_98),
        .abus_o_2_sp_1(bank02_n_99),
        .abus_o_3_sp_1(bank02_n_100),
        .abus_o_4_sp_1(bank02_n_101),
        .abus_o_5_sp_1(bank02_n_102),
        .abus_o_6_sp_1(bank02_n_103),
        .abus_o_7_sp_1(bank02_n_104),
        .abus_o_8_sp_1(bank02_n_105),
        .abus_o_9_sp_1(bank02_n_106),
        .acmd(acmd),
        .\badr[0]_INST_0_i_1 (\badr[0]_INST_0_i_1 ),
        .\badr[10]_INST_0_i_1 (\badr[10]_INST_0_i_1 ),
        .\badr[11]_INST_0_i_1 (\badr[11]_INST_0_i_1 ),
        .\badr[12]_INST_0_i_1 (\badr[12]_INST_0_i_1 ),
        .\badr[13]_INST_0_i_1 (\badr[13]_INST_0_i_1 ),
        .\badr[13]_INST_0_i_1_0 (\badr[13]_INST_0_i_1_0 ),
        .\badr[14]_INST_0_i_1 (\badr[14]_INST_0_i_1 ),
        .\badr[15]_INST_0_i_1 (\badr[15]_INST_0_i_1 ),
        .\badr[15]_INST_0_i_1_0 (\badr[15]_INST_0_i_1_0 ),
        .\badr[15]_INST_0_i_1_1 (\badr[15]_INST_0_i_1_1 ),
        .\badr[1]_INST_0_i_1 (\badr[1]_INST_0_i_1 ),
        .\badr[2]_INST_0_i_1 (\badr[2]_INST_0_i_1 ),
        .\badr[2]_INST_0_i_1_0 (\badr[2]_INST_0_i_1_0 ),
        .\badr[3]_INST_0_i_1 (\badr[3]_INST_0_i_1 ),
        .\badr[4]_INST_0_i_1 (\badr[4]_INST_0_i_1 ),
        .\badr[4]_INST_0_i_1_0 (\badr[4]_INST_0_i_1_0 ),
        .\badr[5]_INST_0_i_1 (\badr[5]_INST_0_i_1 ),
        .\badr[6]_INST_0_i_1 (\badr[6]_INST_0_i_1 ),
        .\badr[7]_INST_0_i_1 (\badr[7]_INST_0_i_1 ),
        .\badr[8]_INST_0_i_1 (\badr[8]_INST_0_i_1 ),
        .\badr[9]_INST_0_i_1 (\badr[9]_INST_0_i_1 ),
        .\bdatw[11]_INST_0_i_17_0 (bank_sel[3]),
        .\bdatw[11]_INST_0_i_17_1 (\bdatw[11]_INST_0_i_24 ),
        .\bdatw[11]_INST_0_i_17_2 (\bdatw[11]_INST_0_i_24_0 ),
        .\bdatw[11]_INST_0_i_17_3 (\bdatw[11]_INST_0_i_24_1 ),
        .\bdatw[11]_INST_0_i_17_4 (\bdatw[11]_INST_0_i_25 ),
        .\bdatw[11]_INST_0_i_18_0 (bank_sel[1]),
        .\bdatw[11]_INST_0_i_2 (\bdatw[8]_INST_0_i_1 [0]),
        .\bdatw[12]_INST_0_i_2 (\bdatw[12]_INST_0_i_2 ),
        .\bdatw[8]_INST_0_i_2 (\bdatw[8]_INST_0_i_2 ),
        .\bdatw[8]_INST_0_i_2_0 (\bdatw[8]_INST_0_i_2_0 ),
        .\bdatw[8]_INST_0_i_2_1 (\bdatw[8]_INST_0_i_2_1 ),
        .\bdatw[8]_INST_0_i_2_10 (\bdatw[8]_INST_0_i_2_10 ),
        .\bdatw[8]_INST_0_i_2_11 (\bdatw[8]_INST_0_i_2_11 ),
        .\bdatw[8]_INST_0_i_2_12 (\bdatw[8]_INST_0_i_2_12 ),
        .\bdatw[8]_INST_0_i_2_2 (\bdatw[8]_INST_0_i_2_2 ),
        .\bdatw[8]_INST_0_i_2_3 (\bdatw[8]_INST_0_i_2_3 ),
        .\bdatw[8]_INST_0_i_2_4 (\bdatw[8]_INST_0_i_2_4 ),
        .\bdatw[8]_INST_0_i_2_5 (\bdatw[8]_INST_0_i_2_5 ),
        .\bdatw[8]_INST_0_i_2_6 (\bdatw[8]_INST_0_i_2_6 ),
        .\bdatw[8]_INST_0_i_2_7 (\bdatw[8]_INST_0_i_2_7 ),
        .\bdatw[8]_INST_0_i_2_8 (\bdatw[8]_INST_0_i_2_8 ),
        .\bdatw[8]_INST_0_i_2_9 (\bdatw[8]_INST_0_i_2_9 ),
        .clk(clk),
        .ctl_copro(ctl_copro),
        .gr0_bus1__0(gr0_bus1__0),
        .gr0_bus1__0_19(gr0_bus1__0_19),
        .gr0_bus1__0_22(gr0_bus1__0_22),
        .gr0_bus1__0_5(gr0_bus1__0_5),
        .gr1_bus1__0(gr1_bus1__0),
        .gr1_bus1__0_0(gr1_bus1__0_0),
        .gr1_bus1__0_31(gr1_bus1__0_31),
        .gr1_bus1__0_35(gr1_bus1__0_35),
        .gr2_bus1__0(gr2_bus1__0),
        .gr2_bus1__0_1(gr2_bus1__0_1),
        .gr2_bus1__0_32(gr2_bus1__0_32),
        .gr2_bus1__0_36(gr2_bus1__0_36),
        .gr3_bus1__0(gr3_bus1__0),
        .gr3_bus1__0_0(\abuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_16(gr3_bus1__0_16),
        .gr3_bus1__0_34(gr3_bus1__0_34),
        .gr4_bus1__0(gr4_bus1__0),
        .gr4_bus1__0_1(\abuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_17(gr4_bus1__0_17),
        .gr4_bus1__0_33(gr4_bus1__0_33),
        .gr5_bus1__0_11(gr5_bus1__0_11),
        .gr5_bus1__0_12(gr5_bus1__0_12),
        .gr5_bus1__0_20(gr5_bus1__0_20),
        .gr5_bus1__0_24(gr5_bus1__0_24),
        .gr6_bus1__0(gr6_bus1__0),
        .gr6_bus1__0_13(gr6_bus1__0_13),
        .gr6_bus1__0_21(gr6_bus1__0_21),
        .gr6_bus1__0_25(gr6_bus1__0_25),
        .gr7_bus1__0(gr7_bus1__0),
        .gr7_bus1__0_18(gr7_bus1__0_18),
        .gr7_bus1__0_23(gr7_bus1__0_23),
        .gr7_bus1__0_4(gr7_bus1__0_4),
        .\grn_reg[0] (abus_0[0]),
        .\grn_reg[10] (abus_0[10]),
        .\grn_reg[10]_0 (bank13_n_26),
        .\grn_reg[11] (abus_0[11]),
        .\grn_reg[11]_0 (bank13_n_27),
        .\grn_reg[12] (abus_0[12]),
        .\grn_reg[12]_0 (bank13_n_28),
        .\grn_reg[13] (abus_0[13]),
        .\grn_reg[13]_0 (bank13_n_29),
        .\grn_reg[14] (abus_0[14]),
        .\grn_reg[14]_0 (bank13_n_30),
        .\grn_reg[15] (abus_0[15]),
        .\grn_reg[15]_0 (bank13_n_31),
        .\grn_reg[15]_1 (\grn_reg[15]_19 ),
        .\grn_reg[15]_10 (\grn_reg[15]_27 ),
        .\grn_reg[15]_11 (\grn_reg[15]_28 ),
        .\grn_reg[15]_12 (\grn_reg[15]_29 ),
        .\grn_reg[15]_13 (\grn_reg[15]_30 ),
        .\grn_reg[15]_14 (\grn_reg[15]_31 ),
        .\grn_reg[15]_15 (\grn_reg[15]_32 ),
        .\grn_reg[15]_16 (\grn_reg[15]_33 ),
        .\grn_reg[15]_17 (\grn_reg[15]_34 ),
        .\grn_reg[15]_2 (\tr_reg[15]_0 ),
        .\grn_reg[15]_3 (\grn_reg[15]_20 ),
        .\grn_reg[15]_4 (\grn_reg[15]_21 ),
        .\grn_reg[15]_5 (\grn_reg[15]_22 ),
        .\grn_reg[15]_6 (\grn_reg[15]_23 ),
        .\grn_reg[15]_7 (\grn_reg[15]_24 ),
        .\grn_reg[15]_8 (\grn_reg[15]_25 ),
        .\grn_reg[15]_9 (\grn_reg[15]_26 ),
        .\grn_reg[1] (abus_0[1]),
        .\grn_reg[2] (abus_0[2]),
        .\grn_reg[3] (abus_0[3]),
        .\grn_reg[4] (abus_0[4]),
        .\grn_reg[5] (abus_0[5]),
        .\grn_reg[5]_0 (\grn_reg[5] ),
        .\grn_reg[6] (abus_0[6]),
        .\grn_reg[6]_0 (\grn_reg[6] ),
        .\grn_reg[7] (abus_0[7]),
        .\grn_reg[7]_0 (\grn_reg[7] ),
        .\grn_reg[8] (abus_0[8]),
        .\grn_reg[8]_0 (bank13_n_24),
        .\grn_reg[9] (abus_0[9]),
        .\grn_reg[9]_0 (bank13_n_25),
        .\iv[0]_i_16 (\iv[0]_i_16 ),
        .\iv[0]_i_16_0 (\iv[0]_i_16_0 ),
        .\iv[0]_i_16_1 (\iv[0]_i_16_1 ),
        .\iv[0]_i_16_2 (\iv[0]_i_16_2 ),
        .\iv[0]_i_16_3 (\iv[0]_i_16_3 ),
        .\iv[0]_i_16_4 (\iv[0]_i_16_4 ),
        .\iv[0]_i_16_5 (\iv[0]_i_16_5 ),
        .\iv[0]_i_16_6 (\iv[0]_i_16_6 ),
        .\iv[0]_i_17 (\iv[0]_i_17 ),
        .\iv[0]_i_17_0 (\iv[0]_i_17_0 ),
        .\iv[0]_i_18 (\iv[0]_i_18 ),
        .\iv[10]_i_18 (\iv[10]_i_18 ),
        .\iv[10]_i_5 (\iv[10]_i_5 ),
        .\iv[11]_i_17 (\iv[11]_i_17 ),
        .\iv[11]_i_21 (\iv[11]_i_21 ),
        .\iv[11]_i_9 (\iv[11]_i_9 ),
        .\iv[12]_i_15 (\iv[12]_i_15 ),
        .\iv[13]_i_16 (\iv[13]_i_16 ),
        .\iv[13]_i_2 (\iv[13]_i_2 ),
        .\iv[13]_i_20 (\iv[13]_i_20 ),
        .\iv[13]_i_21 (\iv[13]_i_21 ),
        .\iv[13]_i_24 (\iv[13]_i_24 ),
        .\iv[13]_i_25_0 (\iv[13]_i_25 ),
        .\iv[13]_i_28 (\iv[13]_i_28 ),
        .\iv[13]_i_28_0 (\iv[13]_i_28_0 ),
        .\iv[13]_i_30 (\iv[13]_i_30 ),
        .\iv[13]_i_35 (\iv[13]_i_35 ),
        .\iv[13]_i_35_0 (\iv[13]_i_35_0 ),
        .\iv[14]_i_13 (\iv[14]_i_13 ),
        .\iv[14]_i_22 (\iv[14]_i_22 ),
        .\iv[14]_i_22_0 (\iv[14]_i_22_0 ),
        .\iv[14]_i_22_1 (\iv[14]_i_22_1 ),
        .\iv[14]_i_28 (\iv[14]_i_28 ),
        .\iv[14]_i_28_0 (\iv[14]_i_28_0 ),
        .\iv[14]_i_34 (\iv[14]_i_34 ),
        .\iv[14]_i_36 (\iv[14]_i_36 ),
        .\iv[14]_i_36_0 (\iv[14]_i_36_0 ),
        .\iv[14]_i_4 (\iv[14]_i_4 ),
        .\iv[1]_i_14 (\iv[1]_i_14 ),
        .\iv[2]_i_2 (\iv[2]_i_2 ),
        .\iv[2]_i_2_0 (\iv[2]_i_2_0 ),
        .\iv[2]_i_2_1 (\iv[2]_i_2_1 ),
        .\iv[2]_i_8 (sreg_n_48),
        .\iv[5]_i_15 (\iv[5]_i_15 ),
        .\iv[5]_i_15_0 (\iv[5]_i_15_0 ),
        .\iv[5]_i_15_1 (\iv[5]_i_15_1 ),
        .\iv[6]_i_18 (\iv[6]_i_18 ),
        .\iv[6]_i_2 (\iv[6]_i_2 ),
        .\iv[8]_i_14_0 (\iv[8]_i_14 ),
        .\iv[8]_i_20_0 (\iv[8]_i_20 ),
        .\iv[8]_i_5 (\iv[8]_i_5 ),
        .\iv[8]_i_5_0 (\iv[8]_i_5_0 ),
        .\iv[9]_i_7 (\iv[9]_i_7 ),
        .out(\sr_reg[15] ),
        .\sr[6]_i_3 (\sr[6]_i_3 ),
        .\sr[6]_i_6 (\sr_reg[6]_2 ),
        .\sr[6]_i_9_0 (\sr[6]_i_9 ),
        .\sr[7]_i_11 (\sr[7]_i_11 ),
        .\sr[7]_i_16_0 (\sr[7]_i_16 ),
        .\sr[7]_i_9 (\sr[7]_i_9 ),
        .\sr[7]_i_9_0 (\sr[7]_i_9_0 ),
        .\sr[7]_i_9_1 (\sr[7]_i_9_1 ),
        .\sr_reg[0] (\sr_reg[0] ),
        .\sr_reg[1] (\sr_reg[1] ),
        .\sr_reg[2] (\sr_reg[2] ),
        .\sr_reg[3] (\sr_reg[3] ),
        .\sr_reg[4] (\sr_reg[4]_2 ),
        .\sr_reg[6] (\sr_reg[6]_1 ),
        .\sr_reg[6]_0 (\sr_reg[6]_3 ),
        .\sr_reg[6]_1 (\sr_reg[6]_4 ),
        .\sr_reg[6]_2 (\sr_reg[6]_5 ),
        .\sr_reg[6]_3 (\sr_reg[6]_6 ),
        .\sr_reg[6]_4 (\sr_reg[6]_7 ),
        .\sr_reg[6]_5 (\sr_reg[6]_8 ),
        .\sr_reg[6]_6 (\sr_reg[6]_9 ),
        .\sr_reg[6]_7 (\sr_reg[6]_10 ),
        .\sr_reg[6]_8 (\sr_reg[6]_11 ),
        .\sr_reg[6]_9 (\sr_reg[6]_12 ),
        .tout__1_carry_i_10(tout__1_carry_i_10),
        .tout__1_carry_i_9(tout__1_carry_i_9));
  mcvm_rgf_ivec ivec
       (.SR(p_0_in),
        .cbus_sel_cr(cbus_sel_cr[0]),
        .clk(clk),
        .\iv_reg[15]_0 (\iv_reg[15] ),
        .\iv_reg[15]_1 (\tr_reg[15]_0 ));
  mcvm_rgf_pcnt pcnt
       (.S(sreg_n_53),
        .SR(p_0_in),
        .clk(clk),
        .fadr(fadr),
        .fch_pc(fch_pc),
        .\pc_reg[15]_0 (\pc_reg[15] ));
  mcvm_rgf_sptr sptr
       (.SR(p_0_in),
        .bbus_b02(bbus_b02),
        .\bdatw[10]_INST_0_i_1 (bank13_n_26),
        .\bdatw[11]_INST_0_i_1 (bank13_n_27),
        .\bdatw[12]_INST_0_i_1 (bank13_n_28),
        .\bdatw[13]_INST_0_i_1 (bank13_n_29),
        .\bdatw[14]_INST_0_i_1 (bank13_n_30),
        .\bdatw[15]_INST_0_i_1 (bank13_n_31),
        .\bdatw[8]_INST_0_i_1 (\bdatw[8]_INST_0_i_1 [2:1]),
        .\bdatw[8]_INST_0_i_1_0 (bank13_n_24),
        .\bdatw[9]_INST_0_i_1 (bank13_n_25),
        .clk(clk),
        .ctl_sp_dec(ctl_sp_dec),
        .ctl_sp_inc(ctl_sp_inc),
        .out(\sp_reg[15] ),
        .sp_dec_0(sp_dec_0),
        .\sp_reg[10]_0 (\sp_reg[10] ),
        .\sp_reg[10]_1 (\sp_reg[10]_0 ),
        .\sp_reg[11]_0 (\sp_reg[11] ),
        .\sp_reg[11]_1 (\sp_reg[11]_0 ),
        .\sp_reg[12]_0 (\sp_reg[12] ),
        .\sp_reg[12]_1 (\sp_reg[12]_0 ),
        .\sp_reg[13]_0 (\sp_reg[13] ),
        .\sp_reg[13]_1 (\sp_reg[13]_0 ),
        .\sp_reg[14]_0 (\sp_reg[14] ),
        .\sp_reg[14]_1 (\sp_reg[14]_0 ),
        .\sp_reg[15]_0 (\sp_reg[15]_0 ),
        .\sp_reg[15]_1 (\sp_reg[15]_1 ),
        .\sp_reg[15]_2 (\sp_reg[15]_2 ),
        .\sp_reg[1]_0 (\sp_reg[1] ),
        .\sp_reg[1]_1 (\sp_reg[1]_0 ),
        .\sp_reg[2]_0 (\sp_reg[2] ),
        .\sp_reg[2]_1 (\sp_reg[2]_0 ),
        .\sp_reg[3]_0 (\sp_reg[3] ),
        .\sp_reg[3]_1 (\sp_reg[3]_0 ),
        .\sp_reg[3]_2 (\sp_reg[3]_1 ),
        .\sp_reg[4]_0 (\sp_reg[4] ),
        .\sp_reg[4]_1 (\sp_reg[4]_0 ),
        .\sp_reg[5]_0 (\sp_reg[5] ),
        .\sp_reg[5]_1 (\sp_reg[5]_0 ),
        .\sp_reg[6]_0 (\sp_reg[6] ),
        .\sp_reg[6]_1 (\sp_reg[6]_0 ),
        .\sp_reg[7]_0 (\sp_reg[7] ),
        .\sp_reg[7]_1 (\sp_reg[7]_0 ),
        .\sp_reg[8]_0 (\sp_reg[8] ),
        .\sp_reg[8]_1 (\sp_reg[8]_0 ),
        .\sp_reg[9]_0 (\sp_reg[9] ),
        .\sp_reg[9]_1 (\sp_reg[9]_0 ));
  mcvm_rgf_sreg sreg
       (.D(D),
        .Q(Q),
        .S(sreg_n_53),
        .SR(p_0_in),
        .abus_0({abus_0[15],abus_0[0]}),
        .abus_sel_0(abus_sel_0),
        .\badr[0]_INST_0_i_1 (\badr[0]_INST_0_i_1_0 ),
        .\badr[10]_INST_0_i_1 (\badr[10]_INST_0_i_1_0 ),
        .\badr[11]_INST_0_i_1 (\badr[11]_INST_0_i_1_0 ),
        .\badr[12]_INST_0_i_1 (\badr[12]_INST_0_i_1_0 ),
        .\badr[13]_INST_0_i_1 (\badr[13]_INST_0_i_1_1 ),
        .\badr[14]_INST_0_i_1 (\badr[14]_INST_0_i_1_0 ),
        .\badr[15]_INST_0_i_1 ({\grn_reg[15]_1 ,bank02_n_59,bank02_n_60,bank02_n_61,bank02_n_62,bank02_n_63}),
        .\badr[15]_INST_0_i_1_0 ({\grn_reg[15]_0 ,bank02_n_43,bank02_n_44,bank02_n_45,bank02_n_46,bank02_n_47}),
        .\badr[15]_INST_0_i_1_1 (\badr[15]_INST_0_i_1_2 ),
        .\badr[15]_INST_0_i_77 (\badr[15]_INST_0_i_77 ),
        .\badr[1]_INST_0_i_1 (\badr[1]_INST_0_i_1_0 ),
        .\badr[2]_INST_0_i_1 (\badr[2]_INST_0_i_1_1 ),
        .\badr[3]_INST_0_i_1 (\badr[3]_INST_0_i_1_0 ),
        .\badr[4]_INST_0_i_1 (\badr[4]_INST_0_i_1_1 ),
        .\badr[5]_INST_0_i_1 (\badr[5]_INST_0_i_1_0 ),
        .\badr[6]_INST_0_i_1 (\badr[6]_INST_0_i_1_0 ),
        .\badr[7]_INST_0_i_1 (\badr[7]_INST_0_i_1_0 ),
        .\badr[8]_INST_0_i_1 (\badr[8]_INST_0_i_1_0 ),
        .\badr[9]_INST_0_i_1 (\badr[9]_INST_0_i_1_0 ),
        .bank_sel(bank_sel),
        .bbus_sel_0(bbus_sel_0),
        .clk(clk),
        .ctl_fetch_fl_reg(ctl_fetch_fl_reg),
        .ctl_fetch_fl_reg_0(ctl_fetch_fl_reg_0),
        .ctl_fetch_fl_reg_1(ctl_fetch_fl_reg_1),
        .fadr(fadr[1]),
        .fch_irq_req(fch_irq_req),
        .gr3_bus1__0(\abuso2l/gr3_bus1__0 ),
        .gr4_bus1__0(\abuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_0(\bbuso2l/gr4_bus1__0 ),
        .gr5_bus1__0(\bbuso2l/gr5_bus1__0 ),
        .\grn_reg[0] (sreg_n_24),
        .\grn_reg[10] (sreg_n_34),
        .\grn_reg[11] (sreg_n_35),
        .\grn_reg[12] (sreg_n_36),
        .\grn_reg[13] (sreg_n_37),
        .\grn_reg[14] (sreg_n_38),
        .\grn_reg[15] (sreg_n_39),
        .\grn_reg[1] (sreg_n_25),
        .\grn_reg[2] (sreg_n_26),
        .\grn_reg[3] (sreg_n_27),
        .\grn_reg[4] (sreg_n_28),
        .\grn_reg[5] (sreg_n_29),
        .\grn_reg[6] (sreg_n_30),
        .\grn_reg[7] (sreg_n_31),
        .\grn_reg[8] (sreg_n_32),
        .\grn_reg[9] (sreg_n_33),
        .irq(irq),
        .irq_lev(irq_lev),
        .\iv[10]_i_19 (\iv[8]_i_14 ),
        .\sr_reg[0]_0 (\sr_reg[0]_0 ),
        .\sr_reg[10]_0 (\sr_reg[10] ),
        .\sr_reg[11]_0 (\sr_reg[11] ),
        .\sr_reg[15]_0 (\sr_reg[15] ),
        .\sr_reg[15]_1 (\sr_reg[15]_0 ),
        .\sr_reg[1]_0 (\sr_reg[1]_0 ),
        .\sr_reg[2]_0 (\sr_reg[2]_0 ),
        .\sr_reg[3]_0 (\sr_reg[3]_0 ),
        .\sr_reg[4]_0 (\sr_reg[4] ),
        .\sr_reg[4]_1 (\sr_reg[4]_0 ),
        .\sr_reg[4]_2 (\sr_reg[4]_1 ),
        .\sr_reg[4]_3 (\sr_reg[4]_3 ),
        .\sr_reg[4]_4 (\sr_reg[4]_4 ),
        .\sr_reg[4]_5 (\sr_reg[4]_5 ),
        .\sr_reg[5]_0 (\sr_reg[5] ),
        .\sr_reg[5]_1 (\sr_reg[5]_0 ),
        .\sr_reg[6]_0 (\sr_reg[6] ),
        .\sr_reg[6]_1 (\sr_reg[6]_0 ),
        .\sr_reg[6]_2 (sreg_n_48),
        .\sr_reg[6]_3 (\sr_reg[6]_2 ),
        .\sr_reg[6]_4 (\sr_reg[6]_13 ),
        .\sr_reg[7]_0 (\sr_reg[7] ),
        .\sr_reg[7]_1 (\sr_reg[7]_0 ),
        .\sr_reg[7]_2 (\sr_reg[7]_1 ));
  mcvm_rgf_treg treg
       (.SR(p_0_in),
        .cbus_sel_cr(cbus_sel_cr[1]),
        .clk(clk),
        .\tr_reg[15]_0 (\tr_reg[15] ),
        .\tr_reg[15]_1 (\tr_reg[15]_0 ));
endmodule

module mcvm_rgf_bank
   (.out({gr20[15],gr20[14],gr20[13],gr20[12],gr20[11],gr20[10],gr20[9],gr20[8],gr20[7],gr20[6],gr20[5],gr20[4],gr20[3],gr20[2],gr20[1],gr20[0]}),
    .\grn_reg[15] ({gr21[15],gr21[14],gr21[13],gr21[12],gr21[11],gr21[10],gr21[9],gr21[8],gr21[7],gr21[6],gr21[5],gr21[4],gr21[3],gr21[2],gr21[1],gr21[0]}),
    .\grn_reg[15]_0 ({gr22[15],gr22[14],gr22[13],gr22[12],gr22[11],gr22[10],gr22[9],gr22[8],gr22[7],gr22[6],gr22[5],gr22[4],gr22[3],gr22[2],gr22[1],gr22[0]}),
    .\grn_reg[15]_1 ({gr23[15],gr23[14],gr23[13],gr23[12],gr23[11],gr23[10],gr23[9],gr23[8],gr23[7],gr23[6],gr23[5],gr23[4],gr23[3],gr23[2],gr23[1],gr23[0]}),
    .\grn_reg[15]_2 ({gr26[15],gr26[14],gr26[13],gr26[12],gr26[11],gr26[10],gr26[9],gr26[8],gr26[7],gr26[6],gr26[5],gr26[4],gr26[3],gr26[2],gr26[1],gr26[0]}),
    .\grn_reg[15]_3 ({gr27[15],gr27[14],gr27[13],gr27[12],gr27[11],gr27[10],gr27[9],gr27[8],gr27[7],gr27[6],gr27[5],gr27[4],gr27[3],gr27[2],gr27[1],gr27[0]}),
    SR,
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
    \grn_reg[15]_4 ,
    \grn_reg[7]_0 ,
    bbus_b02,
    rst_n,
    \badr[0]_INST_0_i_1 ,
    gr1_bus1__0_2,
    gr2_bus1__0_3,
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
    gr7_bus1__0_6,
    gr0_bus1__0_7,
    gr4_bus1__0_8,
    gr5_bus1__0,
    gr3_bus1__0_9,
    gr4_bus1__0_10,
    gr5_bus1__0_14,
    gr6_bus1__0_15,
    \bdatw[8]_INST_0_i_2 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \bdatw[9]_INST_0_i_2 ,
    \bdatw[9]_INST_0_i_2_0 ,
    \bdatw[10]_INST_0_i_2 ,
    \bdatw[10]_INST_0_i_2_0 ,
    \bdatw[11]_INST_0_i_2 ,
    \bdatw[11]_INST_0_i_2_0 ,
    \bdatw[12]_INST_0_i_2 ,
    \bdatw[12]_INST_0_i_2_0 ,
    \bdatw[13]_INST_0_i_6 ,
    gr4_bus1__0,
    gr5_bus1__0_0,
    \bdatw[14]_INST_0_i_6 ,
    \bdatw[15]_INST_0_i_8 ,
    \bdatw[8]_INST_0_i_4 ,
    \bdatw[9]_INST_0_i_4 ,
    \bdatw[10]_INST_0_i_4 ,
    \bdatw[11]_INST_0_i_4 ,
    \bdatw[12]_INST_0_i_4 ,
    \bdatw[13]_INST_0_i_4 ,
    \bdatw[14]_INST_0_i_4 ,
    \bdatw[15]_INST_0_i_6 ,
    gr0_bus1__0_26,
    gr7_bus1__0_27,
    \bdatw[11]_INST_0_i_24_0 ,
    \bdatw[11]_INST_0_i_24_1 ,
    \bdatw[11]_INST_0_i_24_2 ,
    \bdatw[11]_INST_0_i_24_3 ,
    gr0_bus1__0_28,
    gr5_bus1__0_29,
    gr6_bus1__0_30,
    gr2_bus1__0_37,
    gr3_bus1__0_38,
    gr4_bus1__0_39,
    gr3_bus1__0_40,
    \bdatw[11]_INST_0_i_25_0 ,
    gr1_bus1__0_41,
    gr2_bus1__0_42,
    bbus_sel_0,
    \bdatw[11]_INST_0_i_9_0 ,
    E,
    \grn_reg[15]_5 ,
    clk,
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
    \grn_reg[15]_17 ,
    \grn_reg[15]_18 ,
    \grn_reg[15]_19 ,
    \grn_reg[15]_20 );
  output [0:0]SR;
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
  output \grn_reg[15]_4 ;
  output [7:0]\grn_reg[7]_0 ;
  output [7:0]bbus_b02;
  input rst_n;
  input \badr[0]_INST_0_i_1 ;
  input gr1_bus1__0_2;
  input gr2_bus1__0_3;
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
  input gr7_bus1__0_6;
  input gr0_bus1__0_7;
  input gr4_bus1__0_8;
  input gr5_bus1__0;
  input gr3_bus1__0_9;
  input gr4_bus1__0_10;
  input gr5_bus1__0_14;
  input gr6_bus1__0_15;
  input \bdatw[8]_INST_0_i_2 ;
  input \bdatw[8]_INST_0_i_2_0 ;
  input \bdatw[9]_INST_0_i_2 ;
  input \bdatw[9]_INST_0_i_2_0 ;
  input \bdatw[10]_INST_0_i_2 ;
  input \bdatw[10]_INST_0_i_2_0 ;
  input \bdatw[11]_INST_0_i_2 ;
  input \bdatw[11]_INST_0_i_2_0 ;
  input \bdatw[12]_INST_0_i_2 ;
  input \bdatw[12]_INST_0_i_2_0 ;
  input \bdatw[13]_INST_0_i_6 ;
  input gr4_bus1__0;
  input gr5_bus1__0_0;
  input \bdatw[14]_INST_0_i_6 ;
  input \bdatw[15]_INST_0_i_8 ;
  input \bdatw[8]_INST_0_i_4 ;
  input \bdatw[9]_INST_0_i_4 ;
  input \bdatw[10]_INST_0_i_4 ;
  input \bdatw[11]_INST_0_i_4 ;
  input \bdatw[12]_INST_0_i_4 ;
  input \bdatw[13]_INST_0_i_4 ;
  input \bdatw[14]_INST_0_i_4 ;
  input \bdatw[15]_INST_0_i_6 ;
  input gr0_bus1__0_26;
  input gr7_bus1__0_27;
  input \bdatw[11]_INST_0_i_24_0 ;
  input \bdatw[11]_INST_0_i_24_1 ;
  input \bdatw[11]_INST_0_i_24_2 ;
  input \bdatw[11]_INST_0_i_24_3 ;
  input gr0_bus1__0_28;
  input gr5_bus1__0_29;
  input gr6_bus1__0_30;
  input gr2_bus1__0_37;
  input gr3_bus1__0_38;
  input gr4_bus1__0_39;
  input gr3_bus1__0_40;
  input \bdatw[11]_INST_0_i_25_0 ;
  input gr1_bus1__0_41;
  input gr2_bus1__0_42;
  input [1:0]bbus_sel_0;
  input [1:0]\bdatw[11]_INST_0_i_9_0 ;
  input [0:0]E;
  input [15:0]\grn_reg[15]_5 ;
  input clk;
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
  input [0:0]\grn_reg[15]_18 ;
  input [0:0]\grn_reg[15]_19 ;
  input [0:0]\grn_reg[15]_20 ;
     output [15:0]gr20;
     output [15:0]gr21;
     output [15:0]gr22;
     output [15:0]gr23;
     output [15:0]gr26;
     output [15:0]gr27;

  wire [0:0]E;
  wire [0:0]SR;
  wire \badr[0]_INST_0_i_1 ;
  wire \badr[10]_INST_0_i_1 ;
  wire \badr[11]_INST_0_i_1 ;
  wire \badr[12]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_1 ;
  wire \badr[14]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_1 ;
  wire \badr[1]_INST_0_i_1 ;
  wire \badr[2]_INST_0_i_1 ;
  wire \badr[3]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_1 ;
  wire \badr[5]_INST_0_i_1 ;
  wire \badr[6]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_1 ;
  wire \badr[8]_INST_0_i_1 ;
  wire \badr[9]_INST_0_i_1 ;
  wire [7:0]bbus_b02;
  wire [1:0]bbus_sel_0;
  wire \bdatw[10]_INST_0_i_2 ;
  wire \bdatw[10]_INST_0_i_29_n_0 ;
  wire \bdatw[10]_INST_0_i_2_0 ;
  wire \bdatw[10]_INST_0_i_39_n_0 ;
  wire \bdatw[10]_INST_0_i_4 ;
  wire \bdatw[10]_INST_0_i_40_n_0 ;
  wire \bdatw[10]_INST_0_i_41_n_0 ;
  wire \bdatw[10]_INST_0_i_42_n_0 ;
  wire \bdatw[11]_INST_0_i_2 ;
  wire \bdatw[11]_INST_0_i_21_n_0 ;
  wire \bdatw[11]_INST_0_i_24_0 ;
  wire \bdatw[11]_INST_0_i_24_1 ;
  wire \bdatw[11]_INST_0_i_24_2 ;
  wire \bdatw[11]_INST_0_i_24_3 ;
  wire \bdatw[11]_INST_0_i_24_n_0 ;
  wire \bdatw[11]_INST_0_i_25_0 ;
  wire \bdatw[11]_INST_0_i_25_n_0 ;
  wire \bdatw[11]_INST_0_i_26_n_0 ;
  wire \bdatw[11]_INST_0_i_28_n_0 ;
  wire \bdatw[11]_INST_0_i_2_0 ;
  wire \bdatw[11]_INST_0_i_35_n_0 ;
  wire \bdatw[11]_INST_0_i_36_n_0 ;
  wire \bdatw[11]_INST_0_i_38_n_0 ;
  wire \bdatw[11]_INST_0_i_39_n_0 ;
  wire \bdatw[11]_INST_0_i_4 ;
  wire \bdatw[11]_INST_0_i_40_n_0 ;
  wire \bdatw[11]_INST_0_i_41_n_0 ;
  wire [1:0]\bdatw[11]_INST_0_i_9_0 ;
  wire \bdatw[12]_INST_0_i_2 ;
  wire \bdatw[12]_INST_0_i_29_n_0 ;
  wire \bdatw[12]_INST_0_i_2_0 ;
  wire \bdatw[12]_INST_0_i_4 ;
  wire \bdatw[12]_INST_0_i_57_n_0 ;
  wire \bdatw[12]_INST_0_i_58_n_0 ;
  wire \bdatw[12]_INST_0_i_59_n_0 ;
  wire \bdatw[12]_INST_0_i_60_n_0 ;
  wire \bdatw[13]_INST_0_i_16_n_0 ;
  wire \bdatw[13]_INST_0_i_20_n_0 ;
  wire \bdatw[13]_INST_0_i_25_n_0 ;
  wire \bdatw[13]_INST_0_i_26_n_0 ;
  wire \bdatw[13]_INST_0_i_27_n_0 ;
  wire \bdatw[13]_INST_0_i_28_n_0 ;
  wire \bdatw[13]_INST_0_i_36_n_0 ;
  wire \bdatw[13]_INST_0_i_37_n_0 ;
  wire \bdatw[13]_INST_0_i_38_n_0 ;
  wire \bdatw[13]_INST_0_i_39_n_0 ;
  wire \bdatw[13]_INST_0_i_4 ;
  wire \bdatw[13]_INST_0_i_6 ;
  wire \bdatw[14]_INST_0_i_16_n_0 ;
  wire \bdatw[14]_INST_0_i_20_n_0 ;
  wire \bdatw[14]_INST_0_i_25_n_0 ;
  wire \bdatw[14]_INST_0_i_26_n_0 ;
  wire \bdatw[14]_INST_0_i_27_n_0 ;
  wire \bdatw[14]_INST_0_i_28_n_0 ;
  wire \bdatw[14]_INST_0_i_36_n_0 ;
  wire \bdatw[14]_INST_0_i_37_n_0 ;
  wire \bdatw[14]_INST_0_i_38_n_0 ;
  wire \bdatw[14]_INST_0_i_39_n_0 ;
  wire \bdatw[14]_INST_0_i_4 ;
  wire \bdatw[14]_INST_0_i_6 ;
  wire \bdatw[15]_INST_0_i_103_n_0 ;
  wire \bdatw[15]_INST_0_i_104_n_0 ;
  wire \bdatw[15]_INST_0_i_105_n_0 ;
  wire \bdatw[15]_INST_0_i_106_n_0 ;
  wire \bdatw[15]_INST_0_i_115_n_0 ;
  wire \bdatw[15]_INST_0_i_116_n_0 ;
  wire \bdatw[15]_INST_0_i_117_n_0 ;
  wire \bdatw[15]_INST_0_i_118_n_0 ;
  wire \bdatw[15]_INST_0_i_56_n_0 ;
  wire \bdatw[15]_INST_0_i_6 ;
  wire \bdatw[15]_INST_0_i_64_n_0 ;
  wire \bdatw[15]_INST_0_i_8 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_28_n_0 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_38_n_0 ;
  wire \bdatw[8]_INST_0_i_39_n_0 ;
  wire \bdatw[8]_INST_0_i_4 ;
  wire \bdatw[8]_INST_0_i_40_n_0 ;
  wire \bdatw[8]_INST_0_i_41_n_0 ;
  wire \bdatw[9]_INST_0_i_2 ;
  wire \bdatw[9]_INST_0_i_27_n_0 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_37_n_0 ;
  wire \bdatw[9]_INST_0_i_38_n_0 ;
  wire \bdatw[9]_INST_0_i_39_n_0 ;
  wire \bdatw[9]_INST_0_i_4 ;
  wire \bdatw[9]_INST_0_i_40_n_0 ;
  wire clk;
  (* DONT_TOUCH *) wire [15:0]gr00;
  (* DONT_TOUCH *) wire [15:0]gr01;
  (* DONT_TOUCH *) wire [15:0]gr02;
  (* DONT_TOUCH *) wire [15:0]gr03;
  (* DONT_TOUCH *) wire [15:0]gr04;
  (* DONT_TOUCH *) wire [15:0]gr05;
  (* DONT_TOUCH *) wire [15:0]gr06;
  (* DONT_TOUCH *) wire [15:0]gr07;
  wire gr0_bus1__0_26;
  wire gr0_bus1__0_28;
  wire gr0_bus1__0_7;
  wire gr1_bus1__0_2;
  wire gr1_bus1__0_41;
  (* DONT_TOUCH *) wire [15:0]gr20;
  (* DONT_TOUCH *) wire [15:0]gr21;
  (* DONT_TOUCH *) wire [15:0]gr22;
  (* DONT_TOUCH *) wire [15:0]gr23;
  (* DONT_TOUCH *) wire [15:0]gr24;
  (* DONT_TOUCH *) wire [15:0]gr25;
  (* DONT_TOUCH *) wire [15:0]gr26;
  (* DONT_TOUCH *) wire [15:0]gr27;
  wire gr2_bus1__0_3;
  wire gr2_bus1__0_37;
  wire gr2_bus1__0_42;
  wire gr3_bus1__0_38;
  wire gr3_bus1__0_40;
  wire gr3_bus1__0_9;
  wire gr4_bus1__0;
  wire gr4_bus1__0_10;
  wire gr4_bus1__0_39;
  wire gr4_bus1__0_8;
  wire gr5_bus1__0;
  wire gr5_bus1__0_0;
  wire gr5_bus1__0_14;
  wire gr5_bus1__0_29;
  wire gr6_bus1__0_15;
  wire gr6_bus1__0_30;
  wire gr7_bus1__0_27;
  wire gr7_bus1__0_6;
  wire \grn_reg[0] ;
  wire \grn_reg[10] ;
  wire \grn_reg[11] ;
  wire \grn_reg[12] ;
  wire \grn_reg[13] ;
  wire \grn_reg[14] ;
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
  wire \grn_reg[15]_4 ;
  wire [15:0]\grn_reg[15]_5 ;
  wire [0:0]\grn_reg[15]_6 ;
  wire [0:0]\grn_reg[15]_7 ;
  wire [0:0]\grn_reg[15]_8 ;
  wire [0:0]\grn_reg[15]_9 ;
  wire \grn_reg[1] ;
  wire \grn_reg[2] ;
  wire \grn_reg[3] ;
  wire \grn_reg[4] ;
  wire \grn_reg[5] ;
  wire \grn_reg[6] ;
  wire \grn_reg[7] ;
  wire [7:0]\grn_reg[7]_0 ;
  wire \grn_reg[8] ;
  wire \grn_reg[9] ;
  wire rst_n;

  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[10]_INST_0_i_14 
       (.I0(\bdatw[10]_INST_0_i_4 ),
        .I1(\bdatw[10]_INST_0_i_29_n_0 ),
        .I2(gr24[10]),
        .I3(gr4_bus1__0),
        .I4(gr25[10]),
        .I5(gr5_bus1__0_0),
        .O(bbus_b02[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[10]_INST_0_i_29 
       (.I0(gr20[10]),
        .I1(gr0_bus1__0_28),
        .I2(\bdatw[10]_INST_0_i_39_n_0 ),
        .I3(\bdatw[10]_INST_0_i_40_n_0 ),
        .I4(\bdatw[10]_INST_0_i_41_n_0 ),
        .I5(\bdatw[10]_INST_0_i_42_n_0 ),
        .O(\bdatw[10]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_39 
       (.I0(gr05[10]),
        .I1(gr5_bus1__0_29),
        .I2(gr06[10]),
        .I3(gr6_bus1__0_30),
        .O(\bdatw[10]_INST_0_i_39_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_40 
       (.I0(gr07[10]),
        .I1(gr7_bus1__0_27),
        .I2(gr00[10]),
        .I3(gr0_bus1__0_26),
        .O(\bdatw[10]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_41 
       (.I0(gr01[10]),
        .I1(gr1_bus1__0_41),
        .I2(gr02[10]),
        .I3(gr2_bus1__0_42),
        .O(\bdatw[10]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_42 
       (.I0(gr03[10]),
        .I1(gr3_bus1__0_40),
        .I2(gr04[10]),
        .I3(gr4_bus1__0_39),
        .O(\bdatw[10]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[11]_INST_0_i_13 
       (.I0(\bdatw[11]_INST_0_i_4 ),
        .I1(\bdatw[11]_INST_0_i_28_n_0 ),
        .I2(gr24[11]),
        .I3(gr4_bus1__0),
        .I4(gr25[11]),
        .I5(gr5_bus1__0_0),
        .O(bbus_b02[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_21 
       (.I0(gr22[3]),
        .I1(gr2_bus1__0_37),
        .I2(gr23[3]),
        .I3(gr3_bus1__0_38),
        .O(\bdatw[11]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[11]_INST_0_i_24 
       (.I0(\bdatw[11]_INST_0_i_35_n_0 ),
        .I1(gr0_bus1__0_26),
        .I2(gr00[3]),
        .I3(gr7_bus1__0_27),
        .I4(gr07[3]),
        .O(\bdatw[11]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[11]_INST_0_i_25 
       (.I0(\bdatw[11]_INST_0_i_36_n_0 ),
        .I1(gr4_bus1__0_39),
        .I2(gr04[3]),
        .I3(gr3_bus1__0_40),
        .I4(gr03[3]),
        .O(\bdatw[11]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00F8000000880000)) 
    \bdatw[11]_INST_0_i_26 
       (.I0(gr24[3]),
        .I1(bbus_sel_0[0]),
        .I2(gr25[3]),
        .I3(\bdatw[11]_INST_0_i_9_0 [0]),
        .I4(\bdatw[11]_INST_0_i_9_0 [1]),
        .I5(bbus_sel_0[1]),
        .O(\bdatw[11]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[11]_INST_0_i_28 
       (.I0(gr20[11]),
        .I1(gr0_bus1__0_28),
        .I2(\bdatw[11]_INST_0_i_38_n_0 ),
        .I3(\bdatw[11]_INST_0_i_39_n_0 ),
        .I4(\bdatw[11]_INST_0_i_40_n_0 ),
        .I5(\bdatw[11]_INST_0_i_41_n_0 ),
        .O(\bdatw[11]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hC00000A000000000)) 
    \bdatw[11]_INST_0_i_35 
       (.I0(gr05[3]),
        .I1(gr06[3]),
        .I2(\bdatw[11]_INST_0_i_24_0 ),
        .I3(\bdatw[11]_INST_0_i_24_1 ),
        .I4(\bdatw[11]_INST_0_i_24_2 ),
        .I5(\bdatw[11]_INST_0_i_24_3 ),
        .O(\bdatw[11]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h00C00000000000A0)) 
    \bdatw[11]_INST_0_i_36 
       (.I0(gr01[3]),
        .I1(gr02[3]),
        .I2(\bdatw[11]_INST_0_i_24_0 ),
        .I3(\bdatw[11]_INST_0_i_25_0 ),
        .I4(\bdatw[11]_INST_0_i_24_1 ),
        .I5(\bdatw[11]_INST_0_i_24_2 ),
        .O(\bdatw[11]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_38 
       (.I0(gr05[11]),
        .I1(gr5_bus1__0_29),
        .I2(gr06[11]),
        .I3(gr6_bus1__0_30),
        .O(\bdatw[11]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_39 
       (.I0(gr07[11]),
        .I1(gr7_bus1__0_27),
        .I2(gr00[11]),
        .I3(gr0_bus1__0_26),
        .O(\bdatw[11]_INST_0_i_39_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_40 
       (.I0(gr01[11]),
        .I1(gr1_bus1__0_41),
        .I2(gr02[11]),
        .I3(gr2_bus1__0_42),
        .O(\bdatw[11]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_41 
       (.I0(gr03[11]),
        .I1(gr3_bus1__0_40),
        .I2(gr04[11]),
        .I3(gr4_bus1__0_39),
        .O(\bdatw[11]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[11]_INST_0_i_9 
       (.I0(\bdatw[11]_INST_0_i_21_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2 ),
        .I2(\bdatw[11]_INST_0_i_2_0 ),
        .I3(\bdatw[11]_INST_0_i_24_n_0 ),
        .I4(\bdatw[11]_INST_0_i_25_n_0 ),
        .I5(\bdatw[11]_INST_0_i_26_n_0 ),
        .O(\grn_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[12]_INST_0_i_13 
       (.I0(\bdatw[12]_INST_0_i_4 ),
        .I1(\bdatw[12]_INST_0_i_29_n_0 ),
        .I2(gr24[12]),
        .I3(gr4_bus1__0),
        .I4(gr25[12]),
        .I5(gr5_bus1__0_0),
        .O(bbus_b02[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[12]_INST_0_i_29 
       (.I0(gr20[12]),
        .I1(gr0_bus1__0_28),
        .I2(\bdatw[12]_INST_0_i_57_n_0 ),
        .I3(\bdatw[12]_INST_0_i_58_n_0 ),
        .I4(\bdatw[12]_INST_0_i_59_n_0 ),
        .I5(\bdatw[12]_INST_0_i_60_n_0 ),
        .O(\bdatw[12]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_57 
       (.I0(gr05[12]),
        .I1(gr5_bus1__0_29),
        .I2(gr06[12]),
        .I3(gr6_bus1__0_30),
        .O(\bdatw[12]_INST_0_i_57_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_58 
       (.I0(gr07[12]),
        .I1(gr7_bus1__0_27),
        .I2(gr00[12]),
        .I3(gr0_bus1__0_26),
        .O(\bdatw[12]_INST_0_i_58_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_59 
       (.I0(gr01[12]),
        .I1(gr1_bus1__0_41),
        .I2(gr02[12]),
        .I3(gr2_bus1__0_42),
        .O(\bdatw[12]_INST_0_i_59_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_60 
       (.I0(gr03[12]),
        .I1(gr3_bus1__0_40),
        .I2(gr04[12]),
        .I3(gr4_bus1__0_39),
        .O(\bdatw[12]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_12 
       (.I0(\bdatw[13]_INST_0_i_6 ),
        .I1(\bdatw[13]_INST_0_i_20_n_0 ),
        .I2(gr24[5]),
        .I3(gr4_bus1__0),
        .I4(gr25[5]),
        .I5(gr5_bus1__0_0),
        .O(\grn_reg[7]_0 [5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_16 
       (.I0(gr20[13]),
        .I1(gr0_bus1__0_28),
        .I2(\bdatw[13]_INST_0_i_25_n_0 ),
        .I3(\bdatw[13]_INST_0_i_26_n_0 ),
        .I4(\bdatw[13]_INST_0_i_27_n_0 ),
        .I5(\bdatw[13]_INST_0_i_28_n_0 ),
        .O(\bdatw[13]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_20 
       (.I0(gr20[5]),
        .I1(gr0_bus1__0_28),
        .I2(\bdatw[13]_INST_0_i_36_n_0 ),
        .I3(\bdatw[13]_INST_0_i_37_n_0 ),
        .I4(\bdatw[13]_INST_0_i_38_n_0 ),
        .I5(\bdatw[13]_INST_0_i_39_n_0 ),
        .O(\bdatw[13]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_25 
       (.I0(gr05[13]),
        .I1(gr5_bus1__0_29),
        .I2(gr06[13]),
        .I3(gr6_bus1__0_30),
        .O(\bdatw[13]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_26 
       (.I0(gr07[13]),
        .I1(gr7_bus1__0_27),
        .I2(gr00[13]),
        .I3(gr0_bus1__0_26),
        .O(\bdatw[13]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_27 
       (.I0(gr01[13]),
        .I1(gr1_bus1__0_41),
        .I2(gr02[13]),
        .I3(gr2_bus1__0_42),
        .O(\bdatw[13]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_28 
       (.I0(gr03[13]),
        .I1(gr3_bus1__0_40),
        .I2(gr04[13]),
        .I3(gr4_bus1__0_39),
        .O(\bdatw[13]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_36 
       (.I0(gr05[5]),
        .I1(gr5_bus1__0_29),
        .I2(gr06[5]),
        .I3(gr6_bus1__0_30),
        .O(\bdatw[13]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_37 
       (.I0(gr07[5]),
        .I1(gr7_bus1__0_27),
        .I2(gr00[5]),
        .I3(gr0_bus1__0_26),
        .O(\bdatw[13]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_38 
       (.I0(gr01[5]),
        .I1(gr1_bus1__0_41),
        .I2(gr02[5]),
        .I3(gr2_bus1__0_42),
        .O(\bdatw[13]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_39 
       (.I0(gr03[5]),
        .I1(gr3_bus1__0_40),
        .I2(gr04[5]),
        .I3(gr4_bus1__0_39),
        .O(\bdatw[13]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_8 
       (.I0(\bdatw[13]_INST_0_i_4 ),
        .I1(\bdatw[13]_INST_0_i_16_n_0 ),
        .I2(gr24[13]),
        .I3(gr4_bus1__0),
        .I4(gr25[13]),
        .I5(gr5_bus1__0_0),
        .O(bbus_b02[5]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_12 
       (.I0(\bdatw[14]_INST_0_i_6 ),
        .I1(\bdatw[14]_INST_0_i_20_n_0 ),
        .I2(gr24[6]),
        .I3(gr4_bus1__0),
        .I4(gr25[6]),
        .I5(gr5_bus1__0_0),
        .O(\grn_reg[7]_0 [6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_16 
       (.I0(gr20[14]),
        .I1(gr0_bus1__0_28),
        .I2(\bdatw[14]_INST_0_i_25_n_0 ),
        .I3(\bdatw[14]_INST_0_i_26_n_0 ),
        .I4(\bdatw[14]_INST_0_i_27_n_0 ),
        .I5(\bdatw[14]_INST_0_i_28_n_0 ),
        .O(\bdatw[14]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_20 
       (.I0(gr20[6]),
        .I1(gr0_bus1__0_28),
        .I2(\bdatw[14]_INST_0_i_36_n_0 ),
        .I3(\bdatw[14]_INST_0_i_37_n_0 ),
        .I4(\bdatw[14]_INST_0_i_38_n_0 ),
        .I5(\bdatw[14]_INST_0_i_39_n_0 ),
        .O(\bdatw[14]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_25 
       (.I0(gr05[14]),
        .I1(gr5_bus1__0_29),
        .I2(gr06[14]),
        .I3(gr6_bus1__0_30),
        .O(\bdatw[14]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_26 
       (.I0(gr07[14]),
        .I1(gr7_bus1__0_27),
        .I2(gr00[14]),
        .I3(gr0_bus1__0_26),
        .O(\bdatw[14]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_27 
       (.I0(gr01[14]),
        .I1(gr1_bus1__0_41),
        .I2(gr02[14]),
        .I3(gr2_bus1__0_42),
        .O(\bdatw[14]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_28 
       (.I0(gr03[14]),
        .I1(gr3_bus1__0_40),
        .I2(gr04[14]),
        .I3(gr4_bus1__0_39),
        .O(\bdatw[14]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_36 
       (.I0(gr05[6]),
        .I1(gr5_bus1__0_29),
        .I2(gr06[6]),
        .I3(gr6_bus1__0_30),
        .O(\bdatw[14]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_37 
       (.I0(gr07[6]),
        .I1(gr7_bus1__0_27),
        .I2(gr00[6]),
        .I3(gr0_bus1__0_26),
        .O(\bdatw[14]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_38 
       (.I0(gr01[6]),
        .I1(gr1_bus1__0_41),
        .I2(gr02[6]),
        .I3(gr2_bus1__0_42),
        .O(\bdatw[14]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_39 
       (.I0(gr03[6]),
        .I1(gr3_bus1__0_40),
        .I2(gr04[6]),
        .I3(gr4_bus1__0_39),
        .O(\bdatw[14]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_8 
       (.I0(\bdatw[14]_INST_0_i_4 ),
        .I1(\bdatw[14]_INST_0_i_16_n_0 ),
        .I2(gr24[14]),
        .I3(gr4_bus1__0),
        .I4(gr25[14]),
        .I5(gr5_bus1__0_0),
        .O(bbus_b02[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_103 
       (.I0(gr05[15]),
        .I1(gr5_bus1__0_29),
        .I2(gr06[15]),
        .I3(gr6_bus1__0_30),
        .O(\bdatw[15]_INST_0_i_103_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_104 
       (.I0(gr07[15]),
        .I1(gr7_bus1__0_27),
        .I2(gr00[15]),
        .I3(gr0_bus1__0_26),
        .O(\bdatw[15]_INST_0_i_104_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_105 
       (.I0(gr01[15]),
        .I1(gr1_bus1__0_41),
        .I2(gr02[15]),
        .I3(gr2_bus1__0_42),
        .O(\bdatw[15]_INST_0_i_105_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_106 
       (.I0(gr03[15]),
        .I1(gr3_bus1__0_40),
        .I2(gr04[15]),
        .I3(gr4_bus1__0_39),
        .O(\bdatw[15]_INST_0_i_106_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_115 
       (.I0(gr05[7]),
        .I1(gr5_bus1__0_29),
        .I2(gr06[7]),
        .I3(gr6_bus1__0_30),
        .O(\bdatw[15]_INST_0_i_115_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_116 
       (.I0(gr07[7]),
        .I1(gr7_bus1__0_27),
        .I2(gr00[7]),
        .I3(gr0_bus1__0_26),
        .O(\bdatw[15]_INST_0_i_116_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_117 
       (.I0(gr01[7]),
        .I1(gr1_bus1__0_41),
        .I2(gr02[7]),
        .I3(gr2_bus1__0_42),
        .O(\bdatw[15]_INST_0_i_117_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_118 
       (.I0(gr03[7]),
        .I1(gr3_bus1__0_40),
        .I2(gr04[7]),
        .I3(gr4_bus1__0_39),
        .O(\bdatw[15]_INST_0_i_118_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_22 
       (.I0(\bdatw[15]_INST_0_i_6 ),
        .I1(\bdatw[15]_INST_0_i_56_n_0 ),
        .I2(gr24[15]),
        .I3(gr4_bus1__0),
        .I4(gr25[15]),
        .I5(gr5_bus1__0_0),
        .O(bbus_b02[7]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_29 
       (.I0(\bdatw[15]_INST_0_i_8 ),
        .I1(\bdatw[15]_INST_0_i_64_n_0 ),
        .I2(gr24[7]),
        .I3(gr4_bus1__0),
        .I4(gr25[7]),
        .I5(gr5_bus1__0_0),
        .O(\grn_reg[7]_0 [7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_56 
       (.I0(gr20[15]),
        .I1(gr0_bus1__0_28),
        .I2(\bdatw[15]_INST_0_i_103_n_0 ),
        .I3(\bdatw[15]_INST_0_i_104_n_0 ),
        .I4(\bdatw[15]_INST_0_i_105_n_0 ),
        .I5(\bdatw[15]_INST_0_i_106_n_0 ),
        .O(\bdatw[15]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_64 
       (.I0(gr20[7]),
        .I1(gr0_bus1__0_28),
        .I2(\bdatw[15]_INST_0_i_115_n_0 ),
        .I3(\bdatw[15]_INST_0_i_116_n_0 ),
        .I4(\bdatw[15]_INST_0_i_117_n_0 ),
        .I5(\bdatw[15]_INST_0_i_118_n_0 ),
        .O(\bdatw[15]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[8]_INST_0_i_13 
       (.I0(\bdatw[8]_INST_0_i_4 ),
        .I1(\bdatw[8]_INST_0_i_28_n_0 ),
        .I2(gr24[8]),
        .I3(gr4_bus1__0),
        .I4(gr25[8]),
        .I5(gr5_bus1__0_0),
        .O(bbus_b02[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[8]_INST_0_i_28 
       (.I0(gr20[8]),
        .I1(gr0_bus1__0_28),
        .I2(\bdatw[8]_INST_0_i_38_n_0 ),
        .I3(\bdatw[8]_INST_0_i_39_n_0 ),
        .I4(\bdatw[8]_INST_0_i_40_n_0 ),
        .I5(\bdatw[8]_INST_0_i_41_n_0 ),
        .O(\bdatw[8]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_38 
       (.I0(gr05[8]),
        .I1(gr5_bus1__0_29),
        .I2(gr06[8]),
        .I3(gr6_bus1__0_30),
        .O(\bdatw[8]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_39 
       (.I0(gr07[8]),
        .I1(gr7_bus1__0_27),
        .I2(gr00[8]),
        .I3(gr0_bus1__0_26),
        .O(\bdatw[8]_INST_0_i_39_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_40 
       (.I0(gr01[8]),
        .I1(gr1_bus1__0_41),
        .I2(gr02[8]),
        .I3(gr2_bus1__0_42),
        .O(\bdatw[8]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_41 
       (.I0(gr03[8]),
        .I1(gr3_bus1__0_40),
        .I2(gr04[8]),
        .I3(gr4_bus1__0_39),
        .O(\bdatw[8]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[9]_INST_0_i_13 
       (.I0(\bdatw[9]_INST_0_i_4 ),
        .I1(\bdatw[9]_INST_0_i_27_n_0 ),
        .I2(gr24[9]),
        .I3(gr4_bus1__0),
        .I4(gr25[9]),
        .I5(gr5_bus1__0_0),
        .O(bbus_b02[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[9]_INST_0_i_27 
       (.I0(gr20[9]),
        .I1(gr0_bus1__0_28),
        .I2(\bdatw[9]_INST_0_i_37_n_0 ),
        .I3(\bdatw[9]_INST_0_i_38_n_0 ),
        .I4(\bdatw[9]_INST_0_i_39_n_0 ),
        .I5(\bdatw[9]_INST_0_i_40_n_0 ),
        .O(\bdatw[9]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_37 
       (.I0(gr05[9]),
        .I1(gr5_bus1__0_29),
        .I2(gr06[9]),
        .I3(gr6_bus1__0_30),
        .O(\bdatw[9]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_38 
       (.I0(gr07[9]),
        .I1(gr7_bus1__0_27),
        .I2(gr00[9]),
        .I3(gr0_bus1__0_26),
        .O(\bdatw[9]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_39 
       (.I0(gr01[9]),
        .I1(gr1_bus1__0_41),
        .I2(gr02[9]),
        .I3(gr2_bus1__0_42),
        .O(\bdatw[9]_INST_0_i_39_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_40 
       (.I0(gr03[9]),
        .I1(gr3_bus1__0_40),
        .I2(gr04[9]),
        .I3(gr4_bus1__0_39),
        .O(\bdatw[9]_INST_0_i_40_n_0 ));
  mcvm_rgf_grn_16 grn00
       (.E(E),
        .Q(gr00),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_5 ),
        .rst_n(rst_n));
  mcvm_rgf_grn_17 grn01
       (.Q(gr01),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_6 ),
        .\grn_reg[15]_1 (\grn_reg[15]_5 ));
  mcvm_rgf_grn_18 grn02
       (.Q(gr02),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_7 ),
        .\grn_reg[15]_1 (\grn_reg[15]_5 ));
  mcvm_rgf_grn_19 grn03
       (.Q(gr03),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_8 ),
        .\grn_reg[15]_1 (\grn_reg[15]_5 ));
  mcvm_rgf_grn_20 grn04
       (.Q(gr04),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_9 ),
        .\grn_reg[15]_1 (\grn_reg[15]_5 ));
  mcvm_rgf_grn_21 grn05
       (.Q(gr05),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_10 ),
        .\grn_reg[15]_1 (\grn_reg[15]_5 ));
  mcvm_rgf_grn_22 grn06
       (.Q(gr06),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_11 ),
        .\grn_reg[15]_1 (\grn_reg[15]_5 ));
  mcvm_rgf_grn_23 grn07
       (.Q(gr07),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_12 ),
        .\grn_reg[15]_1 (\grn_reg[15]_5 ));
  mcvm_rgf_grn_24 grn20
       (.Q(gr20),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_13 ),
        .\grn_reg[15]_1 (\grn_reg[15]_5 ));
  mcvm_rgf_grn_25 grn21
       (.Q(gr21),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_14 ),
        .\grn_reg[15]_1 (\grn_reg[15]_5 ));
  mcvm_rgf_grn_26 grn22
       (.Q(gr22),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_15 ),
        .\grn_reg[15]_1 (\grn_reg[15]_5 ));
  mcvm_rgf_grn_27 grn23
       (.Q(gr23),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_16 ),
        .\grn_reg[15]_1 (\grn_reg[15]_5 ));
  mcvm_rgf_grn_28 grn24
       (.Q(gr24),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_17 ),
        .\grn_reg[15]_1 (\grn_reg[15]_5 ));
  mcvm_rgf_grn_29 grn25
       (.Q(gr25),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_18 ),
        .\grn_reg[15]_1 (\grn_reg[15]_5 ));
  mcvm_rgf_grn_30 grn26
       (.Q(gr26),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_19 ),
        .\grn_reg[15]_1 (\grn_reg[15]_5 ));
  mcvm_rgf_grn_31 grn27
       (.Q(gr27),
        .SR(SR),
        .\badr[0]_INST_0_i_1 (\badr[0]_INST_0_i_1 ),
        .\badr[10]_INST_0_i_1 (\badr[10]_INST_0_i_1 ),
        .\badr[11]_INST_0_i_1 (\badr[11]_INST_0_i_1 ),
        .\badr[12]_INST_0_i_1 (\badr[12]_INST_0_i_1 ),
        .\badr[13]_INST_0_i_1 (\badr[13]_INST_0_i_1 ),
        .\badr[14]_INST_0_i_1 (\badr[14]_INST_0_i_1 ),
        .\badr[15]_INST_0_i_1 (\badr[15]_INST_0_i_1 ),
        .\badr[15]_INST_0_i_4_0 (gr02),
        .\badr[15]_INST_0_i_4_1 (gr07),
        .\badr[15]_INST_0_i_4_2 (gr00),
        .\badr[15]_INST_0_i_4_3 (gr24),
        .\badr[15]_INST_0_i_4_4 (gr25),
        .\badr[15]_INST_0_i_4_5 (gr03),
        .\badr[15]_INST_0_i_4_6 (gr04),
        .\badr[15]_INST_0_i_4_7 (gr05),
        .\badr[15]_INST_0_i_4_8 (gr06),
        .\badr[1]_INST_0_i_1 (\badr[1]_INST_0_i_1 ),
        .\badr[2]_INST_0_i_1 (\badr[2]_INST_0_i_1 ),
        .\badr[3]_INST_0_i_1 (\badr[3]_INST_0_i_1 ),
        .\badr[4]_INST_0_i_1 (\badr[4]_INST_0_i_1 ),
        .\badr[5]_INST_0_i_1 (\badr[5]_INST_0_i_1 ),
        .\badr[6]_INST_0_i_1 (\badr[6]_INST_0_i_1 ),
        .\badr[7]_INST_0_i_1 (\badr[7]_INST_0_i_1 ),
        .\badr[8]_INST_0_i_1 (\badr[8]_INST_0_i_1 ),
        .\badr[9]_INST_0_i_1 (\badr[9]_INST_0_i_1 ),
        .bbus_sel_0(bbus_sel_0),
        .\bdatw[10]_INST_0_i_2 (\bdatw[10]_INST_0_i_2 ),
        .\bdatw[10]_INST_0_i_2_0 (\bdatw[10]_INST_0_i_2_0 ),
        .\bdatw[12]_INST_0_i_2 (\bdatw[12]_INST_0_i_2 ),
        .\bdatw[12]_INST_0_i_25_0 (\bdatw[11]_INST_0_i_24_3 ),
        .\bdatw[12]_INST_0_i_26_0 (\bdatw[11]_INST_0_i_24_0 ),
        .\bdatw[12]_INST_0_i_26_1 (\bdatw[11]_INST_0_i_24_1 ),
        .\bdatw[12]_INST_0_i_26_2 (\bdatw[11]_INST_0_i_24_2 ),
        .\bdatw[12]_INST_0_i_26_3 (\bdatw[11]_INST_0_i_25_0 ),
        .\bdatw[12]_INST_0_i_2_0 (\bdatw[12]_INST_0_i_2_0 ),
        .\bdatw[12]_INST_0_i_8_0 ({gr22[4],gr22[2:0]}),
        .\bdatw[12]_INST_0_i_8_1 ({gr23[4],gr23[2:0]}),
        .\bdatw[12]_INST_0_i_8_2 (\bdatw[11]_INST_0_i_9_0 ),
        .\bdatw[8]_INST_0_i_2 (\bdatw[8]_INST_0_i_2 ),
        .\bdatw[8]_INST_0_i_2_0 (\bdatw[8]_INST_0_i_2_0 ),
        .\bdatw[9]_INST_0_i_2 (\bdatw[9]_INST_0_i_2 ),
        .\bdatw[9]_INST_0_i_2_0 (\bdatw[9]_INST_0_i_2_0 ),
        .clk(clk),
        .gr0_bus1__0_26(gr0_bus1__0_26),
        .gr0_bus1__0_7(gr0_bus1__0_7),
        .gr1_bus1__0_2(gr1_bus1__0_2),
        .gr2_bus1__0_3(gr2_bus1__0_3),
        .gr2_bus1__0_37(gr2_bus1__0_37),
        .gr3_bus1__0_38(gr3_bus1__0_38),
        .gr3_bus1__0_40(gr3_bus1__0_40),
        .gr3_bus1__0_9(gr3_bus1__0_9),
        .gr4_bus1__0_10(gr4_bus1__0_10),
        .gr4_bus1__0_39(gr4_bus1__0_39),
        .gr4_bus1__0_8(gr4_bus1__0_8),
        .gr5_bus1__0(gr5_bus1__0),
        .gr5_bus1__0_14(gr5_bus1__0_14),
        .gr6_bus1__0_15(gr6_bus1__0_15),
        .gr7_bus1__0_27(gr7_bus1__0_27),
        .gr7_bus1__0_6(gr7_bus1__0_6),
        .\grn_reg[0]_0 (\grn_reg[0] ),
        .\grn_reg[10]_0 (\grn_reg[10] ),
        .\grn_reg[11]_0 (\grn_reg[11] ),
        .\grn_reg[12]_0 (\grn_reg[12] ),
        .\grn_reg[13]_0 (\grn_reg[13] ),
        .\grn_reg[14]_0 (\grn_reg[14] ),
        .\grn_reg[15]_0 (\grn_reg[15]_4 ),
        .\grn_reg[15]_1 (\grn_reg[15]_20 ),
        .\grn_reg[15]_2 (\grn_reg[15]_5 ),
        .\grn_reg[1]_0 (\grn_reg[1] ),
        .\grn_reg[2]_0 (\grn_reg[2] ),
        .\grn_reg[3]_0 (\grn_reg[3] ),
        .\grn_reg[4]_0 (\grn_reg[4] ),
        .\grn_reg[4]_1 ({\grn_reg[7]_0 [4],\grn_reg[7]_0 [2:0]}),
        .\grn_reg[5]_0 (\grn_reg[5] ),
        .\grn_reg[6]_0 (\grn_reg[6] ),
        .\grn_reg[7]_0 (\grn_reg[7] ),
        .\grn_reg[8]_0 (\grn_reg[8] ),
        .\grn_reg[9]_0 (\grn_reg[9] ),
        .out(gr01));
endmodule

(* ORIG_REF_NAME = "mcvm_rgf_bank" *) 
module mcvm_rgf_bank_0
   (\grn_reg[0] ,
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
    \sr_reg[0] ,
    \sr_reg[1] ,
    \sr_reg[2] ,
    \sr_reg[3] ,
    \sr_reg[4] ,
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
    \sr_reg[6] ,
    \iv[11]_i_17 ,
    \iv[13]_i_35 ,
    \iv[13]_i_16 ,
    \iv[14]_i_22 ,
    tout__1_carry_i_10,
    \iv[0]_i_17 ,
    \sr_reg[6]_0 ,
    \sr[6]_i_9_0 ,
    \bdatw[8]_INST_0_i_2 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \iv[0]_i_16 ,
    \bdatw[8]_INST_0_i_2_1 ,
    \bdatw[12]_INST_0_i_2 ,
    \iv[13]_i_21 ,
    \sr_reg[6]_1 ,
    \badr[2]_INST_0_i_1 ,
    \badr[4]_INST_0_i_1 ,
    \badr[15]_INST_0_i_1 ,
    \iv[6]_i_18 ,
    \sr_reg[6]_2 ,
    \iv[14]_i_36 ,
    \iv[0]_i_16_0 ,
    \iv[0]_i_16_1 ,
    \iv[0]_i_16_2 ,
    \iv[13]_i_30 ,
    \iv[14]_i_28 ,
    \iv[0]_i_16_3 ,
    \iv[13]_i_20 ,
    \badr[13]_INST_0_i_1 ,
    \sr_reg[6]_3 ,
    abus_o,
    \iv[1]_i_14 ,
    \iv[5]_i_15 ,
    \iv[0]_i_17_0 ,
    \iv[14]_i_28_0 ,
    \iv[5]_i_15_0 ,
    \iv[14]_i_36_0 ,
    \iv[12]_i_15 ,
    \iv[0]_i_16_4 ,
    \iv[0]_i_16_5 ,
    \iv[13]_i_24 ,
    \iv[5]_i_15_1 ,
    \iv[14]_i_22_0 ,
    \sr[7]_i_11 ,
    \bdatw[8]_INST_0_i_2_2 ,
    \bdatw[8]_INST_0_i_2_3 ,
    tout__1_carry_i_9,
    \iv[13]_i_35_0 ,
    \iv[0]_i_16_6 ,
    \iv[14]_i_34 ,
    \bdatw[8]_INST_0_i_2_4 ,
    \iv[13]_i_28 ,
    \iv[8]_i_20_0 ,
    \iv[13]_i_25_0 ,
    \iv[14]_i_22_1 ,
    \sr_reg[6]_4 ,
    \sr_reg[6]_5 ,
    \sr_reg[6]_6 ,
    \iv[11]_i_21 ,
    \bdatw[8]_INST_0_i_2_5 ,
    \bdatw[8]_INST_0_i_2_6 ,
    \bdatw[8]_INST_0_i_2_7 ,
    \iv[0]_i_18 ,
    \bdatw[8]_INST_0_i_2_8 ,
    \bdatw[8]_INST_0_i_2_9 ,
    \bdatw[8]_INST_0_i_2_10 ,
    \iv[13]_i_28_0 ,
    \bdatw[8]_INST_0_i_2_11 ,
    \sr_reg[6]_7 ,
    \sr_reg[6]_8 ,
    \badr[15]_INST_0_i_1_0 ,
    \sr_reg[6]_9 ,
    \bdatw[8]_INST_0_i_2_12 ,
    \iv[10]_i_18 ,
    .abus_o_0_sp_1(abus_o_0_sn_1),
    \abus_o[0]_0 ,
    \abus_o[0]_1 ,
    \abus_o[0]_2 ,
    .abus_o_1_sp_1(abus_o_1_sn_1),
    \abus_o[1]_0 ,
    \abus_o[1]_1 ,
    \abus_o[1]_2 ,
    .abus_o_2_sp_1(abus_o_2_sn_1),
    \abus_o[2]_0 ,
    \abus_o[2]_1 ,
    \abus_o[2]_2 ,
    .abus_o_3_sp_1(abus_o_3_sn_1),
    \abus_o[3]_0 ,
    \abus_o[3]_1 ,
    \abus_o[3]_2 ,
    .abus_o_4_sp_1(abus_o_4_sn_1),
    \abus_o[4]_0 ,
    \abus_o[4]_1 ,
    \abus_o[4]_2 ,
    .abus_o_5_sp_1(abus_o_5_sn_1),
    \abus_o[5]_0 ,
    \abus_o[5]_1 ,
    \abus_o[5]_2 ,
    .abus_o_6_sp_1(abus_o_6_sn_1),
    \abus_o[6]_0 ,
    \abus_o[6]_1 ,
    \abus_o[6]_2 ,
    .abus_o_7_sp_1(abus_o_7_sn_1),
    \abus_o[7]_0 ,
    \abus_o[7]_1 ,
    \abus_o[7]_2 ,
    .abus_o_8_sp_1(abus_o_8_sn_1),
    \abus_o[8]_0 ,
    \abus_o[8]_1 ,
    \abus_o[8]_2 ,
    .abus_o_9_sp_1(abus_o_9_sn_1),
    \abus_o[9]_0 ,
    \abus_o[9]_1 ,
    \abus_o[9]_2 ,
    .abus_o_10_sp_1(abus_o_10_sn_1),
    \abus_o[10]_0 ,
    \abus_o[10]_1 ,
    \abus_o[10]_2 ,
    .abus_o_11_sp_1(abus_o_11_sn_1),
    \abus_o[11]_0 ,
    \abus_o[11]_1 ,
    \abus_o[11]_2 ,
    .abus_o_12_sp_1(abus_o_12_sn_1),
    \abus_o[12]_0 ,
    \abus_o[12]_1 ,
    \abus_o[12]_2 ,
    .abus_o_13_sp_1(abus_o_13_sn_1),
    \abus_o[13]_0 ,
    \abus_o[13]_1 ,
    \abus_o[13]_2 ,
    .abus_o_14_sp_1(abus_o_14_sn_1),
    \abus_o[14]_0 ,
    \abus_o[14]_1 ,
    \abus_o[14]_2 ,
    .abus_o_15_sp_1(abus_o_15_sn_1),
    \abus_o[15]_0 ,
    \abus_o[15]_1 ,
    \abus_o[15]_2 ,
    \badr[0]_INST_0_i_1 ,
    \badr[1]_INST_0_i_1 ,
    \badr[2]_INST_0_i_1_0 ,
    \badr[3]_INST_0_i_1 ,
    \badr[4]_INST_0_i_1_0 ,
    \badr[5]_INST_0_i_1 ,
    \badr[6]_INST_0_i_1 ,
    \badr[7]_INST_0_i_1 ,
    \badr[8]_INST_0_i_1 ,
    \badr[9]_INST_0_i_1 ,
    \badr[10]_INST_0_i_1 ,
    \badr[11]_INST_0_i_1 ,
    \badr[12]_INST_0_i_1 ,
    \badr[13]_INST_0_i_1_0 ,
    \badr[14]_INST_0_i_1 ,
    \badr[15]_INST_0_i_1_1 ,
    gr3_bus1__0_0,
    gr4_bus1__0_1,
    gr1_bus1__0,
    gr2_bus1__0,
    gr1_bus1__0_0,
    gr2_bus1__0_1,
    gr7_bus1__0,
    gr0_bus1__0,
    gr7_bus1__0_4,
    gr0_bus1__0_5,
    gr3_bus1__0,
    gr4_bus1__0,
    gr5_bus1__0_11,
    gr6_bus1__0,
    gr5_bus1__0_12,
    gr6_bus1__0_13,
    out,
    \bdatw[11]_INST_0_i_2 ,
    gr3_bus1__0_16,
    gr4_bus1__0_17,
    \bdatw[11]_INST_0_i_17_0 ,
    \bdatw[11]_INST_0_i_17_1 ,
    \bdatw[11]_INST_0_i_17_2 ,
    \bdatw[11]_INST_0_i_17_3 ,
    gr7_bus1__0_18,
    gr0_bus1__0_19,
    gr5_bus1__0_20,
    gr6_bus1__0_21,
    gr0_bus1__0_22,
    gr7_bus1__0_23,
    \bdatw[11]_INST_0_i_18_0 ,
    gr5_bus1__0_24,
    gr6_bus1__0_25,
    \bdatw[11]_INST_0_i_17_4 ,
    gr1_bus1__0_31,
    gr2_bus1__0_32,
    gr4_bus1__0_33,
    gr3_bus1__0_34,
    gr1_bus1__0_35,
    gr2_bus1__0_36,
    \iv[8]_i_5 ,
    \iv[8]_i_5_0 ,
    \iv[2]_i_2 ,
    \iv[2]_i_2_0 ,
    \iv[2]_i_2_1 ,
    \iv[8]_i_14_0 ,
    \sr[6]_i_3 ,
    \iv[6]_i_2 ,
    acmd,
    \sr[6]_i_6 ,
    \sr[7]_i_16_0 ,
    \sr[7]_i_9 ,
    \sr[7]_i_9_0 ,
    \iv[2]_i_8 ,
    \iv[14]_i_4 ,
    \iv[14]_i_13 ,
    \iv[13]_i_2 ,
    ctl_copro,
    \sr[7]_i_9_1 ,
    \iv[9]_i_7 ,
    \iv[11]_i_9 ,
    \iv[10]_i_5 ,
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
  output \sr_reg[0] ;
  output \sr_reg[1] ;
  output \sr_reg[2] ;
  output \sr_reg[3] ;
  output \sr_reg[4] ;
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
  output \sr_reg[6] ;
  output \iv[11]_i_17 ;
  output \iv[13]_i_35 ;
  output \iv[13]_i_16 ;
  output \iv[14]_i_22 ;
  output tout__1_carry_i_10;
  output \iv[0]_i_17 ;
  output \sr_reg[6]_0 ;
  output \sr[6]_i_9_0 ;
  output \bdatw[8]_INST_0_i_2 ;
  output \bdatw[8]_INST_0_i_2_0 ;
  output \iv[0]_i_16 ;
  output \bdatw[8]_INST_0_i_2_1 ;
  output \bdatw[12]_INST_0_i_2 ;
  output \iv[13]_i_21 ;
  output \sr_reg[6]_1 ;
  output \badr[2]_INST_0_i_1 ;
  output \badr[4]_INST_0_i_1 ;
  output \badr[15]_INST_0_i_1 ;
  output \iv[6]_i_18 ;
  output \sr_reg[6]_2 ;
  output \iv[14]_i_36 ;
  output \iv[0]_i_16_0 ;
  output \iv[0]_i_16_1 ;
  output \iv[0]_i_16_2 ;
  output \iv[13]_i_30 ;
  output \iv[14]_i_28 ;
  output \iv[0]_i_16_3 ;
  output \iv[13]_i_20 ;
  output \badr[13]_INST_0_i_1 ;
  output \sr_reg[6]_3 ;
  output [15:0]abus_o;
  output \iv[1]_i_14 ;
  output \iv[5]_i_15 ;
  output \iv[0]_i_17_0 ;
  output \iv[14]_i_28_0 ;
  output \iv[5]_i_15_0 ;
  output \iv[14]_i_36_0 ;
  output \iv[12]_i_15 ;
  output \iv[0]_i_16_4 ;
  output \iv[0]_i_16_5 ;
  output \iv[13]_i_24 ;
  output \iv[5]_i_15_1 ;
  output \iv[14]_i_22_0 ;
  output \sr[7]_i_11 ;
  output \bdatw[8]_INST_0_i_2_2 ;
  output \bdatw[8]_INST_0_i_2_3 ;
  output tout__1_carry_i_9;
  output \iv[13]_i_35_0 ;
  output \iv[0]_i_16_6 ;
  output \iv[14]_i_34 ;
  output \bdatw[8]_INST_0_i_2_4 ;
  output \iv[13]_i_28 ;
  output \iv[8]_i_20_0 ;
  output \iv[13]_i_25_0 ;
  output \iv[14]_i_22_1 ;
  output \sr_reg[6]_4 ;
  output \sr_reg[6]_5 ;
  output \sr_reg[6]_6 ;
  output \iv[11]_i_21 ;
  output \bdatw[8]_INST_0_i_2_5 ;
  output \bdatw[8]_INST_0_i_2_6 ;
  output \bdatw[8]_INST_0_i_2_7 ;
  output \iv[0]_i_18 ;
  output \bdatw[8]_INST_0_i_2_8 ;
  output \bdatw[8]_INST_0_i_2_9 ;
  output \bdatw[8]_INST_0_i_2_10 ;
  output \iv[13]_i_28_0 ;
  output \bdatw[8]_INST_0_i_2_11 ;
  output \sr_reg[6]_7 ;
  output \sr_reg[6]_8 ;
  output \badr[15]_INST_0_i_1_0 ;
  output \sr_reg[6]_9 ;
  output \bdatw[8]_INST_0_i_2_12 ;
  output \iv[10]_i_18 ;
  input \abus_o[0]_0 ;
  input \abus_o[0]_1 ;
  input \abus_o[0]_2 ;
  input \abus_o[1]_0 ;
  input \abus_o[1]_1 ;
  input \abus_o[1]_2 ;
  input \abus_o[2]_0 ;
  input \abus_o[2]_1 ;
  input \abus_o[2]_2 ;
  input \abus_o[3]_0 ;
  input \abus_o[3]_1 ;
  input \abus_o[3]_2 ;
  input \abus_o[4]_0 ;
  input \abus_o[4]_1 ;
  input \abus_o[4]_2 ;
  input \abus_o[5]_0 ;
  input \abus_o[5]_1 ;
  input \abus_o[5]_2 ;
  input \abus_o[6]_0 ;
  input \abus_o[6]_1 ;
  input \abus_o[6]_2 ;
  input \abus_o[7]_0 ;
  input \abus_o[7]_1 ;
  input \abus_o[7]_2 ;
  input \abus_o[8]_0 ;
  input \abus_o[8]_1 ;
  input \abus_o[8]_2 ;
  input \abus_o[9]_0 ;
  input \abus_o[9]_1 ;
  input \abus_o[9]_2 ;
  input \abus_o[10]_0 ;
  input \abus_o[10]_1 ;
  input \abus_o[10]_2 ;
  input \abus_o[11]_0 ;
  input \abus_o[11]_1 ;
  input \abus_o[11]_2 ;
  input \abus_o[12]_0 ;
  input \abus_o[12]_1 ;
  input \abus_o[12]_2 ;
  input \abus_o[13]_0 ;
  input \abus_o[13]_1 ;
  input \abus_o[13]_2 ;
  input \abus_o[14]_0 ;
  input \abus_o[14]_1 ;
  input \abus_o[14]_2 ;
  input \abus_o[15]_0 ;
  input \abus_o[15]_1 ;
  input \abus_o[15]_2 ;
  input \badr[0]_INST_0_i_1 ;
  input \badr[1]_INST_0_i_1 ;
  input \badr[2]_INST_0_i_1_0 ;
  input \badr[3]_INST_0_i_1 ;
  input \badr[4]_INST_0_i_1_0 ;
  input \badr[5]_INST_0_i_1 ;
  input \badr[6]_INST_0_i_1 ;
  input \badr[7]_INST_0_i_1 ;
  input \badr[8]_INST_0_i_1 ;
  input \badr[9]_INST_0_i_1 ;
  input \badr[10]_INST_0_i_1 ;
  input \badr[11]_INST_0_i_1 ;
  input \badr[12]_INST_0_i_1 ;
  input \badr[13]_INST_0_i_1_0 ;
  input \badr[14]_INST_0_i_1 ;
  input \badr[15]_INST_0_i_1_1 ;
  input gr3_bus1__0_0;
  input gr4_bus1__0_1;
  input gr1_bus1__0;
  input gr2_bus1__0;
  input gr1_bus1__0_0;
  input gr2_bus1__0_1;
  input gr7_bus1__0;
  input gr0_bus1__0;
  input gr7_bus1__0_4;
  input gr0_bus1__0_5;
  input gr3_bus1__0;
  input gr4_bus1__0;
  input gr5_bus1__0_11;
  input gr6_bus1__0;
  input gr5_bus1__0_12;
  input gr6_bus1__0_13;
  input [15:0]out;
  input [0:0]\bdatw[11]_INST_0_i_2 ;
  input gr3_bus1__0_16;
  input gr4_bus1__0_17;
  input \bdatw[11]_INST_0_i_17_0 ;
  input \bdatw[11]_INST_0_i_17_1 ;
  input \bdatw[11]_INST_0_i_17_2 ;
  input \bdatw[11]_INST_0_i_17_3 ;
  input gr7_bus1__0_18;
  input gr0_bus1__0_19;
  input gr5_bus1__0_20;
  input gr6_bus1__0_21;
  input gr0_bus1__0_22;
  input gr7_bus1__0_23;
  input \bdatw[11]_INST_0_i_18_0 ;
  input gr5_bus1__0_24;
  input gr6_bus1__0_25;
  input \bdatw[11]_INST_0_i_17_4 ;
  input gr1_bus1__0_31;
  input gr2_bus1__0_32;
  input gr4_bus1__0_33;
  input gr3_bus1__0_34;
  input gr1_bus1__0_35;
  input gr2_bus1__0_36;
  input \iv[8]_i_5 ;
  input \iv[8]_i_5_0 ;
  input \iv[2]_i_2 ;
  input \iv[2]_i_2_0 ;
  input \iv[2]_i_2_1 ;
  input \iv[8]_i_14_0 ;
  input \sr[6]_i_3 ;
  input \iv[6]_i_2 ;
  input [0:0]acmd;
  input \sr[6]_i_6 ;
  input \sr[7]_i_16_0 ;
  input \sr[7]_i_9 ;
  input \sr[7]_i_9_0 ;
  input \iv[2]_i_8 ;
  input \iv[14]_i_4 ;
  input \iv[14]_i_13 ;
  input \iv[13]_i_2 ;
  input ctl_copro;
  input \sr[7]_i_9_1 ;
  input \iv[9]_i_7 ;
  input \iv[11]_i_9 ;
  input \iv[10]_i_5 ;
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
  input abus_o_0_sn_1;
  input abus_o_1_sn_1;
  input abus_o_2_sn_1;
  input abus_o_3_sn_1;
  input abus_o_4_sn_1;
  input abus_o_5_sn_1;
  input abus_o_6_sn_1;
  input abus_o_7_sn_1;
  input abus_o_8_sn_1;
  input abus_o_9_sn_1;
  input abus_o_10_sn_1;
  input abus_o_11_sn_1;
  input abus_o_12_sn_1;
  input abus_o_13_sn_1;
  input abus_o_14_sn_1;
  input abus_o_15_sn_1;

  wire [0:0]SR;
  wire [15:0]abus_o;
  wire \abus_o[0]_0 ;
  wire \abus_o[0]_1 ;
  wire \abus_o[0]_2 ;
  wire \abus_o[10]_0 ;
  wire \abus_o[10]_1 ;
  wire \abus_o[10]_2 ;
  wire \abus_o[11]_0 ;
  wire \abus_o[11]_1 ;
  wire \abus_o[11]_2 ;
  wire \abus_o[12]_0 ;
  wire \abus_o[12]_1 ;
  wire \abus_o[12]_2 ;
  wire \abus_o[13]_0 ;
  wire \abus_o[13]_1 ;
  wire \abus_o[13]_2 ;
  wire \abus_o[14]_0 ;
  wire \abus_o[14]_1 ;
  wire \abus_o[14]_2 ;
  wire \abus_o[15]_0 ;
  wire \abus_o[15]_1 ;
  wire \abus_o[15]_2 ;
  wire \abus_o[1]_0 ;
  wire \abus_o[1]_1 ;
  wire \abus_o[1]_2 ;
  wire \abus_o[2]_0 ;
  wire \abus_o[2]_1 ;
  wire \abus_o[2]_2 ;
  wire \abus_o[3]_0 ;
  wire \abus_o[3]_1 ;
  wire \abus_o[3]_2 ;
  wire \abus_o[4]_0 ;
  wire \abus_o[4]_1 ;
  wire \abus_o[4]_2 ;
  wire \abus_o[5]_0 ;
  wire \abus_o[5]_1 ;
  wire \abus_o[5]_2 ;
  wire \abus_o[6]_0 ;
  wire \abus_o[6]_1 ;
  wire \abus_o[6]_2 ;
  wire \abus_o[7]_0 ;
  wire \abus_o[7]_1 ;
  wire \abus_o[7]_2 ;
  wire \abus_o[8]_0 ;
  wire \abus_o[8]_1 ;
  wire \abus_o[8]_2 ;
  wire \abus_o[9]_0 ;
  wire \abus_o[9]_1 ;
  wire \abus_o[9]_2 ;
  wire abus_o_0_sn_1;
  wire abus_o_10_sn_1;
  wire abus_o_11_sn_1;
  wire abus_o_12_sn_1;
  wire abus_o_13_sn_1;
  wire abus_o_14_sn_1;
  wire abus_o_15_sn_1;
  wire abus_o_1_sn_1;
  wire abus_o_2_sn_1;
  wire abus_o_3_sn_1;
  wire abus_o_4_sn_1;
  wire abus_o_5_sn_1;
  wire abus_o_6_sn_1;
  wire abus_o_7_sn_1;
  wire abus_o_8_sn_1;
  wire abus_o_9_sn_1;
  wire [0:0]acmd;
  wire \badr[0]_INST_0_i_1 ;
  wire \badr[10]_INST_0_i_1 ;
  wire \badr[11]_INST_0_i_1 ;
  wire \badr[12]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_1_0 ;
  wire \badr[14]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_1_0 ;
  wire \badr[15]_INST_0_i_1_1 ;
  wire \badr[1]_INST_0_i_1 ;
  wire \badr[2]_INST_0_i_1 ;
  wire \badr[2]_INST_0_i_1_0 ;
  wire \badr[3]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_1_0 ;
  wire \badr[5]_INST_0_i_1 ;
  wire \badr[6]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_1 ;
  wire \badr[8]_INST_0_i_1 ;
  wire \badr[9]_INST_0_i_1 ;
  wire \bdatw[10]_INST_0_i_30_n_0 ;
  wire \bdatw[10]_INST_0_i_31_n_0 ;
  wire \bdatw[10]_INST_0_i_43_n_0 ;
  wire \bdatw[10]_INST_0_i_44_n_0 ;
  wire \bdatw[10]_INST_0_i_45_n_0 ;
  wire \bdatw[10]_INST_0_i_46_n_0 ;
  wire \bdatw[10]_INST_0_i_47_n_0 ;
  wire \bdatw[10]_INST_0_i_48_n_0 ;
  wire \bdatw[11]_INST_0_i_17_0 ;
  wire \bdatw[11]_INST_0_i_17_1 ;
  wire \bdatw[11]_INST_0_i_17_2 ;
  wire \bdatw[11]_INST_0_i_17_3 ;
  wire \bdatw[11]_INST_0_i_17_4 ;
  wire \bdatw[11]_INST_0_i_17_n_0 ;
  wire \bdatw[11]_INST_0_i_18_0 ;
  wire \bdatw[11]_INST_0_i_18_n_0 ;
  wire \bdatw[11]_INST_0_i_19_n_0 ;
  wire [0:0]\bdatw[11]_INST_0_i_2 ;
  wire \bdatw[11]_INST_0_i_20_n_0 ;
  wire \bdatw[11]_INST_0_i_29_n_0 ;
  wire \bdatw[11]_INST_0_i_30_n_0 ;
  wire \bdatw[11]_INST_0_i_31_n_0 ;
  wire \bdatw[11]_INST_0_i_32_n_0 ;
  wire \bdatw[11]_INST_0_i_33_n_0 ;
  wire \bdatw[11]_INST_0_i_34_n_0 ;
  wire \bdatw[11]_INST_0_i_42_n_0 ;
  wire \bdatw[11]_INST_0_i_43_n_0 ;
  wire \bdatw[11]_INST_0_i_44_n_0 ;
  wire \bdatw[11]_INST_0_i_45_n_0 ;
  wire \bdatw[11]_INST_0_i_46_n_0 ;
  wire \bdatw[11]_INST_0_i_47_n_0 ;
  wire \bdatw[12]_INST_0_i_2 ;
  wire \bdatw[12]_INST_0_i_30_n_0 ;
  wire \bdatw[12]_INST_0_i_31_n_0 ;
  wire \bdatw[12]_INST_0_i_61_n_0 ;
  wire \bdatw[12]_INST_0_i_62_n_0 ;
  wire \bdatw[12]_INST_0_i_63_n_0 ;
  wire \bdatw[12]_INST_0_i_64_n_0 ;
  wire \bdatw[12]_INST_0_i_65_n_0 ;
  wire \bdatw[12]_INST_0_i_66_n_0 ;
  wire \bdatw[13]_INST_0_i_17_n_0 ;
  wire \bdatw[13]_INST_0_i_18_n_0 ;
  wire \bdatw[13]_INST_0_i_21_n_0 ;
  wire \bdatw[13]_INST_0_i_22_n_0 ;
  wire \bdatw[13]_INST_0_i_29_n_0 ;
  wire \bdatw[13]_INST_0_i_30_n_0 ;
  wire \bdatw[13]_INST_0_i_31_n_0 ;
  wire \bdatw[13]_INST_0_i_32_n_0 ;
  wire \bdatw[13]_INST_0_i_33_n_0 ;
  wire \bdatw[13]_INST_0_i_34_n_0 ;
  wire \bdatw[13]_INST_0_i_40_n_0 ;
  wire \bdatw[13]_INST_0_i_41_n_0 ;
  wire \bdatw[13]_INST_0_i_42_n_0 ;
  wire \bdatw[13]_INST_0_i_43_n_0 ;
  wire \bdatw[13]_INST_0_i_44_n_0 ;
  wire \bdatw[13]_INST_0_i_45_n_0 ;
  wire \bdatw[14]_INST_0_i_17_n_0 ;
  wire \bdatw[14]_INST_0_i_18_n_0 ;
  wire \bdatw[14]_INST_0_i_21_n_0 ;
  wire \bdatw[14]_INST_0_i_22_n_0 ;
  wire \bdatw[14]_INST_0_i_29_n_0 ;
  wire \bdatw[14]_INST_0_i_30_n_0 ;
  wire \bdatw[14]_INST_0_i_31_n_0 ;
  wire \bdatw[14]_INST_0_i_32_n_0 ;
  wire \bdatw[14]_INST_0_i_33_n_0 ;
  wire \bdatw[14]_INST_0_i_34_n_0 ;
  wire \bdatw[14]_INST_0_i_40_n_0 ;
  wire \bdatw[14]_INST_0_i_41_n_0 ;
  wire \bdatw[14]_INST_0_i_42_n_0 ;
  wire \bdatw[14]_INST_0_i_43_n_0 ;
  wire \bdatw[14]_INST_0_i_44_n_0 ;
  wire \bdatw[14]_INST_0_i_45_n_0 ;
  wire \bdatw[15]_INST_0_i_107_n_0 ;
  wire \bdatw[15]_INST_0_i_108_n_0 ;
  wire \bdatw[15]_INST_0_i_109_n_0 ;
  wire \bdatw[15]_INST_0_i_110_n_0 ;
  wire \bdatw[15]_INST_0_i_111_n_0 ;
  wire \bdatw[15]_INST_0_i_112_n_0 ;
  wire \bdatw[15]_INST_0_i_119_n_0 ;
  wire \bdatw[15]_INST_0_i_120_n_0 ;
  wire \bdatw[15]_INST_0_i_121_n_0 ;
  wire \bdatw[15]_INST_0_i_122_n_0 ;
  wire \bdatw[15]_INST_0_i_123_n_0 ;
  wire \bdatw[15]_INST_0_i_124_n_0 ;
  wire \bdatw[15]_INST_0_i_59_n_0 ;
  wire \bdatw[15]_INST_0_i_60_n_0 ;
  wire \bdatw[15]_INST_0_i_65_n_0 ;
  wire \bdatw[15]_INST_0_i_66_n_0 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_29_n_0 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_2_10 ;
  wire \bdatw[8]_INST_0_i_2_11 ;
  wire \bdatw[8]_INST_0_i_2_12 ;
  wire \bdatw[8]_INST_0_i_2_2 ;
  wire \bdatw[8]_INST_0_i_2_3 ;
  wire \bdatw[8]_INST_0_i_2_4 ;
  wire \bdatw[8]_INST_0_i_2_5 ;
  wire \bdatw[8]_INST_0_i_2_6 ;
  wire \bdatw[8]_INST_0_i_2_7 ;
  wire \bdatw[8]_INST_0_i_2_8 ;
  wire \bdatw[8]_INST_0_i_2_9 ;
  wire \bdatw[8]_INST_0_i_30_n_0 ;
  wire \bdatw[8]_INST_0_i_42_n_0 ;
  wire \bdatw[8]_INST_0_i_43_n_0 ;
  wire \bdatw[8]_INST_0_i_44_n_0 ;
  wire \bdatw[8]_INST_0_i_45_n_0 ;
  wire \bdatw[8]_INST_0_i_46_n_0 ;
  wire \bdatw[8]_INST_0_i_47_n_0 ;
  wire \bdatw[9]_INST_0_i_28_n_0 ;
  wire \bdatw[9]_INST_0_i_29_n_0 ;
  wire \bdatw[9]_INST_0_i_41_n_0 ;
  wire \bdatw[9]_INST_0_i_42_n_0 ;
  wire \bdatw[9]_INST_0_i_43_n_0 ;
  wire \bdatw[9]_INST_0_i_44_n_0 ;
  wire \bdatw[9]_INST_0_i_45_n_0 ;
  wire \bdatw[9]_INST_0_i_46_n_0 ;
  wire clk;
  wire ctl_copro;
  (* DONT_TOUCH *) wire [15:0]gr00;
  (* DONT_TOUCH *) wire [15:0]gr01;
  (* DONT_TOUCH *) wire [15:0]gr02;
  (* DONT_TOUCH *) wire [15:0]gr03;
  (* DONT_TOUCH *) wire [15:0]gr04;
  (* DONT_TOUCH *) wire [15:0]gr05;
  (* DONT_TOUCH *) wire [15:0]gr06;
  (* DONT_TOUCH *) wire [15:0]gr07;
  wire gr0_bus1__0;
  wire gr0_bus1__0_19;
  wire gr0_bus1__0_22;
  wire gr0_bus1__0_5;
  wire gr1_bus1__0;
  wire gr1_bus1__0_0;
  wire gr1_bus1__0_31;
  wire gr1_bus1__0_35;
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
  wire gr2_bus1__0_32;
  wire gr2_bus1__0_36;
  wire gr3_bus1__0;
  wire gr3_bus1__0_0;
  wire gr3_bus1__0_16;
  wire gr3_bus1__0_34;
  wire gr4_bus1__0;
  wire gr4_bus1__0_1;
  wire gr4_bus1__0_17;
  wire gr4_bus1__0_33;
  wire gr5_bus1__0_11;
  wire gr5_bus1__0_12;
  wire gr5_bus1__0_20;
  wire gr5_bus1__0_24;
  wire gr6_bus1__0;
  wire gr6_bus1__0_13;
  wire gr6_bus1__0_21;
  wire gr6_bus1__0_25;
  wire gr7_bus1__0;
  wire gr7_bus1__0_18;
  wire gr7_bus1__0_23;
  wire gr7_bus1__0_4;
  wire grn27_n_24;
  wire grn27_n_28;
  wire grn27_n_30;
  wire grn27_n_41;
  wire grn27_n_42;
  wire grn27_n_43;
  wire grn27_n_53;
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
  wire \grn_reg[2] ;
  wire \grn_reg[3] ;
  wire \grn_reg[4] ;
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
  wire \iv[0]_i_16 ;
  wire \iv[0]_i_16_0 ;
  wire \iv[0]_i_16_1 ;
  wire \iv[0]_i_16_2 ;
  wire \iv[0]_i_16_3 ;
  wire \iv[0]_i_16_4 ;
  wire \iv[0]_i_16_5 ;
  wire \iv[0]_i_16_6 ;
  wire \iv[0]_i_17 ;
  wire \iv[0]_i_17_0 ;
  wire \iv[0]_i_18 ;
  wire \iv[10]_i_18 ;
  wire \iv[10]_i_5 ;
  wire \iv[11]_i_17 ;
  wire \iv[11]_i_21 ;
  wire \iv[11]_i_9 ;
  wire \iv[12]_i_15 ;
  wire \iv[13]_i_16 ;
  wire \iv[13]_i_2 ;
  wire \iv[13]_i_20 ;
  wire \iv[13]_i_21 ;
  wire \iv[13]_i_24 ;
  wire \iv[13]_i_25_0 ;
  wire \iv[13]_i_25_n_0 ;
  wire \iv[13]_i_28 ;
  wire \iv[13]_i_28_0 ;
  wire \iv[13]_i_30 ;
  wire \iv[13]_i_33_n_0 ;
  wire \iv[13]_i_35 ;
  wire \iv[13]_i_35_0 ;
  wire \iv[14]_i_13 ;
  wire \iv[14]_i_22 ;
  wire \iv[14]_i_22_0 ;
  wire \iv[14]_i_22_1 ;
  wire \iv[14]_i_28 ;
  wire \iv[14]_i_28_0 ;
  wire \iv[14]_i_34 ;
  wire \iv[14]_i_36 ;
  wire \iv[14]_i_36_0 ;
  wire \iv[14]_i_4 ;
  wire \iv[1]_i_14 ;
  wire \iv[2]_i_12_n_0 ;
  wire \iv[2]_i_13_n_0 ;
  wire \iv[2]_i_2 ;
  wire \iv[2]_i_2_0 ;
  wire \iv[2]_i_2_1 ;
  wire \iv[2]_i_8 ;
  wire \iv[4]_i_12_n_0 ;
  wire \iv[4]_i_13_n_0 ;
  wire \iv[5]_i_15 ;
  wire \iv[5]_i_15_0 ;
  wire \iv[5]_i_15_1 ;
  wire \iv[6]_i_18 ;
  wire \iv[6]_i_2 ;
  wire \iv[8]_i_14_0 ;
  wire \iv[8]_i_20_0 ;
  wire \iv[8]_i_20_n_0 ;
  wire \iv[8]_i_21_n_0 ;
  wire \iv[8]_i_23_n_0 ;
  wire \iv[8]_i_5 ;
  wire \iv[8]_i_5_0 ;
  wire \iv[9]_i_7 ;
  wire [15:0]out;
  wire \sr[6]_i_3 ;
  wire \sr[6]_i_6 ;
  wire \sr[6]_i_9_0 ;
  wire \sr[6]_i_9_n_0 ;
  wire \sr[7]_i_11 ;
  wire \sr[7]_i_16_0 ;
  wire \sr[7]_i_18_n_0 ;
  wire \sr[7]_i_19_n_0 ;
  wire \sr[7]_i_9 ;
  wire \sr[7]_i_9_0 ;
  wire \sr[7]_i_9_1 ;
  wire \sr_reg[0] ;
  wire \sr_reg[1] ;
  wire \sr_reg[2] ;
  wire \sr_reg[3] ;
  wire \sr_reg[4] ;
  wire \sr_reg[6] ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[6]_1 ;
  wire \sr_reg[6]_2 ;
  wire \sr_reg[6]_3 ;
  wire \sr_reg[6]_4 ;
  wire \sr_reg[6]_5 ;
  wire \sr_reg[6]_6 ;
  wire \sr_reg[6]_7 ;
  wire \sr_reg[6]_8 ;
  wire \sr_reg[6]_9 ;
  wire tout__1_carry_i_10;
  wire tout__1_carry_i_9;

  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[0]_INST_0 
       (.I0(\grn_reg[0] ),
        .I1(ctl_copro),
        .O(abus_o[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[10]_INST_0 
       (.I0(\grn_reg[10] ),
        .I1(ctl_copro),
        .O(abus_o[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[11]_INST_0 
       (.I0(\grn_reg[11] ),
        .I1(ctl_copro),
        .O(abus_o[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[12]_INST_0 
       (.I0(\grn_reg[12] ),
        .I1(ctl_copro),
        .O(abus_o[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[13]_INST_0 
       (.I0(\grn_reg[13] ),
        .I1(ctl_copro),
        .O(abus_o[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[14]_INST_0 
       (.I0(\grn_reg[14] ),
        .I1(ctl_copro),
        .O(abus_o[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[15]_INST_0 
       (.I0(\grn_reg[15] ),
        .I1(ctl_copro),
        .O(abus_o[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[1]_INST_0 
       (.I0(\grn_reg[1] ),
        .I1(ctl_copro),
        .O(abus_o[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[2]_INST_0 
       (.I0(\grn_reg[2] ),
        .I1(ctl_copro),
        .O(abus_o[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[3]_INST_0 
       (.I0(\grn_reg[3] ),
        .I1(ctl_copro),
        .O(abus_o[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[4]_INST_0 
       (.I0(\grn_reg[4] ),
        .I1(ctl_copro),
        .O(abus_o[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[5]_INST_0 
       (.I0(\grn_reg[5] ),
        .I1(ctl_copro),
        .O(abus_o[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[6]_INST_0 
       (.I0(\grn_reg[6] ),
        .I1(ctl_copro),
        .O(abus_o[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[7]_INST_0 
       (.I0(\grn_reg[7] ),
        .I1(ctl_copro),
        .O(abus_o[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[8]_INST_0 
       (.I0(\grn_reg[8] ),
        .I1(ctl_copro),
        .O(abus_o[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[9]_INST_0 
       (.I0(\grn_reg[9] ),
        .I1(ctl_copro),
        .O(abus_o[9]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[10]_INST_0_i_15 
       (.I0(\bdatw[10]_INST_0_i_30_n_0 ),
        .I1(\bdatw[10]_INST_0_i_31_n_0 ),
        .I2(gr27[10]),
        .I3(gr7_bus1__0_18),
        .I4(gr20[10]),
        .I5(gr0_bus1__0_19),
        .O(\grn_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[10]_INST_0_i_30 
       (.I0(\bdatw[10]_INST_0_i_43_n_0 ),
        .I1(gr23[10]),
        .I2(gr3_bus1__0_16),
        .I3(gr24[10]),
        .I4(gr4_bus1__0_17),
        .I5(\bdatw[10]_INST_0_i_44_n_0 ),
        .O(\bdatw[10]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[10]_INST_0_i_31 
       (.I0(out[10]),
        .I1(\bdatw[11]_INST_0_i_2 ),
        .I2(\bdatw[10]_INST_0_i_45_n_0 ),
        .I3(\bdatw[10]_INST_0_i_46_n_0 ),
        .I4(\bdatw[10]_INST_0_i_47_n_0 ),
        .I5(\bdatw[10]_INST_0_i_48_n_0 ),
        .O(\bdatw[10]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_43 
       (.I0(gr25[10]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[10]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[10]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_44 
       (.I0(gr21[10]),
        .I1(gr1_bus1__0_31),
        .I2(gr22[10]),
        .I3(gr2_bus1__0_32),
        .O(\bdatw[10]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_45 
       (.I0(gr05[10]),
        .I1(gr5_bus1__0_24),
        .I2(gr06[10]),
        .I3(gr6_bus1__0_25),
        .O(\bdatw[10]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_46 
       (.I0(gr07[10]),
        .I1(gr7_bus1__0_23),
        .I2(gr00[10]),
        .I3(gr0_bus1__0_22),
        .O(\bdatw[10]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_47 
       (.I0(gr01[10]),
        .I1(gr1_bus1__0_35),
        .I2(gr02[10]),
        .I3(gr2_bus1__0_36),
        .O(\bdatw[10]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_48 
       (.I0(gr03[10]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[10]),
        .I3(gr4_bus1__0_33),
        .O(\bdatw[10]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[11]_INST_0_i_14 
       (.I0(\bdatw[11]_INST_0_i_29_n_0 ),
        .I1(\bdatw[11]_INST_0_i_30_n_0 ),
        .I2(gr27[11]),
        .I3(gr7_bus1__0_18),
        .I4(gr20[11]),
        .I5(gr0_bus1__0_19),
        .O(\grn_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[11]_INST_0_i_17 
       (.I0(\bdatw[11]_INST_0_i_31_n_0 ),
        .I1(gr23[3]),
        .I2(gr3_bus1__0_16),
        .I3(gr24[3]),
        .I4(gr4_bus1__0_17),
        .I5(\bdatw[11]_INST_0_i_32_n_0 ),
        .O(\bdatw[11]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[11]_INST_0_i_18 
       (.I0(\bdatw[11]_INST_0_i_33_n_0 ),
        .I1(gr0_bus1__0_22),
        .I2(gr00[3]),
        .I3(gr7_bus1__0_23),
        .I4(gr07[3]),
        .O(\bdatw[11]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[11]_INST_0_i_19 
       (.I0(\bdatw[11]_INST_0_i_34_n_0 ),
        .I1(gr4_bus1__0_33),
        .I2(gr04[3]),
        .I3(gr3_bus1__0_34),
        .I4(gr03[3]),
        .O(\bdatw[11]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_20 
       (.I0(gr27[3]),
        .I1(gr7_bus1__0_18),
        .I2(gr20[3]),
        .I3(gr0_bus1__0_19),
        .O(\bdatw[11]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[11]_INST_0_i_29 
       (.I0(\bdatw[11]_INST_0_i_42_n_0 ),
        .I1(gr23[11]),
        .I2(gr3_bus1__0_16),
        .I3(gr24[11]),
        .I4(gr4_bus1__0_17),
        .I5(\bdatw[11]_INST_0_i_43_n_0 ),
        .O(\bdatw[11]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[11]_INST_0_i_30 
       (.I0(out[11]),
        .I1(\bdatw[11]_INST_0_i_2 ),
        .I2(\bdatw[11]_INST_0_i_44_n_0 ),
        .I3(\bdatw[11]_INST_0_i_45_n_0 ),
        .I4(\bdatw[11]_INST_0_i_46_n_0 ),
        .I5(\bdatw[11]_INST_0_i_47_n_0 ),
        .O(\bdatw[11]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hC00000A000000000)) 
    \bdatw[11]_INST_0_i_31 
       (.I0(gr25[3]),
        .I1(gr26[3]),
        .I2(\bdatw[11]_INST_0_i_17_0 ),
        .I3(\bdatw[11]_INST_0_i_17_1 ),
        .I4(\bdatw[11]_INST_0_i_17_2 ),
        .I5(\bdatw[11]_INST_0_i_17_3 ),
        .O(\bdatw[11]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00C00000000000A0)) 
    \bdatw[11]_INST_0_i_32 
       (.I0(gr21[3]),
        .I1(gr22[3]),
        .I2(\bdatw[11]_INST_0_i_17_0 ),
        .I3(\bdatw[11]_INST_0_i_17_4 ),
        .I4(\bdatw[11]_INST_0_i_17_1 ),
        .I5(\bdatw[11]_INST_0_i_17_2 ),
        .O(\bdatw[11]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hC00000A000000000)) 
    \bdatw[11]_INST_0_i_33 
       (.I0(gr05[3]),
        .I1(gr06[3]),
        .I2(\bdatw[11]_INST_0_i_18_0 ),
        .I3(\bdatw[11]_INST_0_i_17_1 ),
        .I4(\bdatw[11]_INST_0_i_17_2 ),
        .I5(\bdatw[11]_INST_0_i_17_3 ),
        .O(\bdatw[11]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00C00000000000A0)) 
    \bdatw[11]_INST_0_i_34 
       (.I0(gr01[3]),
        .I1(gr02[3]),
        .I2(\bdatw[11]_INST_0_i_18_0 ),
        .I3(\bdatw[11]_INST_0_i_17_4 ),
        .I4(\bdatw[11]_INST_0_i_17_1 ),
        .I5(\bdatw[11]_INST_0_i_17_2 ),
        .O(\bdatw[11]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_42 
       (.I0(gr25[11]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[11]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[11]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_43 
       (.I0(gr21[11]),
        .I1(gr1_bus1__0_31),
        .I2(gr22[11]),
        .I3(gr2_bus1__0_32),
        .O(\bdatw[11]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_44 
       (.I0(gr05[11]),
        .I1(gr5_bus1__0_24),
        .I2(gr06[11]),
        .I3(gr6_bus1__0_25),
        .O(\bdatw[11]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_45 
       (.I0(gr07[11]),
        .I1(gr7_bus1__0_23),
        .I2(gr00[11]),
        .I3(gr0_bus1__0_22),
        .O(\bdatw[11]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_46 
       (.I0(gr01[11]),
        .I1(gr1_bus1__0_35),
        .I2(gr02[11]),
        .I3(gr2_bus1__0_36),
        .O(\bdatw[11]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_47 
       (.I0(gr03[11]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[11]),
        .I3(gr4_bus1__0_33),
        .O(\bdatw[11]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \bdatw[11]_INST_0_i_8 
       (.I0(\bdatw[11]_INST_0_i_17_n_0 ),
        .I1(out[3]),
        .I2(\bdatw[11]_INST_0_i_2 ),
        .I3(\bdatw[11]_INST_0_i_18_n_0 ),
        .I4(\bdatw[11]_INST_0_i_19_n_0 ),
        .I5(\bdatw[11]_INST_0_i_20_n_0 ),
        .O(\sr_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[12]_INST_0_i_14 
       (.I0(\bdatw[12]_INST_0_i_30_n_0 ),
        .I1(\bdatw[12]_INST_0_i_31_n_0 ),
        .I2(gr27[12]),
        .I3(gr7_bus1__0_18),
        .I4(gr20[12]),
        .I5(gr0_bus1__0_19),
        .O(\grn_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[12]_INST_0_i_30 
       (.I0(\bdatw[12]_INST_0_i_61_n_0 ),
        .I1(gr23[12]),
        .I2(gr3_bus1__0_16),
        .I3(gr24[12]),
        .I4(gr4_bus1__0_17),
        .I5(\bdatw[12]_INST_0_i_62_n_0 ),
        .O(\bdatw[12]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[12]_INST_0_i_31 
       (.I0(out[12]),
        .I1(\bdatw[11]_INST_0_i_2 ),
        .I2(\bdatw[12]_INST_0_i_63_n_0 ),
        .I3(\bdatw[12]_INST_0_i_64_n_0 ),
        .I4(\bdatw[12]_INST_0_i_65_n_0 ),
        .I5(\bdatw[12]_INST_0_i_66_n_0 ),
        .O(\bdatw[12]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_61 
       (.I0(gr25[12]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[12]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[12]_INST_0_i_61_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_62 
       (.I0(gr21[12]),
        .I1(gr1_bus1__0_31),
        .I2(gr22[12]),
        .I3(gr2_bus1__0_32),
        .O(\bdatw[12]_INST_0_i_62_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_63 
       (.I0(gr05[12]),
        .I1(gr5_bus1__0_24),
        .I2(gr06[12]),
        .I3(gr6_bus1__0_25),
        .O(\bdatw[12]_INST_0_i_63_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_64 
       (.I0(gr07[12]),
        .I1(gr7_bus1__0_23),
        .I2(gr00[12]),
        .I3(gr0_bus1__0_22),
        .O(\bdatw[12]_INST_0_i_64_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_65 
       (.I0(gr01[12]),
        .I1(gr1_bus1__0_35),
        .I2(gr02[12]),
        .I3(gr2_bus1__0_36),
        .O(\bdatw[12]_INST_0_i_65_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_66 
       (.I0(gr03[12]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[12]),
        .I3(gr4_bus1__0_33),
        .O(\bdatw[12]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_13 
       (.I0(\bdatw[13]_INST_0_i_21_n_0 ),
        .I1(\bdatw[13]_INST_0_i_22_n_0 ),
        .I2(gr27[5]),
        .I3(gr7_bus1__0_18),
        .I4(gr20[5]),
        .I5(gr0_bus1__0_19),
        .O(\grn_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[13]_INST_0_i_17 
       (.I0(\bdatw[13]_INST_0_i_29_n_0 ),
        .I1(gr23[13]),
        .I2(gr3_bus1__0_16),
        .I3(gr24[13]),
        .I4(gr4_bus1__0_17),
        .I5(\bdatw[13]_INST_0_i_30_n_0 ),
        .O(\bdatw[13]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_18 
       (.I0(out[13]),
        .I1(\bdatw[11]_INST_0_i_2 ),
        .I2(\bdatw[13]_INST_0_i_31_n_0 ),
        .I3(\bdatw[13]_INST_0_i_32_n_0 ),
        .I4(\bdatw[13]_INST_0_i_33_n_0 ),
        .I5(\bdatw[13]_INST_0_i_34_n_0 ),
        .O(\bdatw[13]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[13]_INST_0_i_21 
       (.I0(\bdatw[13]_INST_0_i_40_n_0 ),
        .I1(gr23[5]),
        .I2(gr3_bus1__0_16),
        .I3(gr24[5]),
        .I4(gr4_bus1__0_17),
        .I5(\bdatw[13]_INST_0_i_41_n_0 ),
        .O(\bdatw[13]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_22 
       (.I0(out[5]),
        .I1(\bdatw[11]_INST_0_i_2 ),
        .I2(\bdatw[13]_INST_0_i_42_n_0 ),
        .I3(\bdatw[13]_INST_0_i_43_n_0 ),
        .I4(\bdatw[13]_INST_0_i_44_n_0 ),
        .I5(\bdatw[13]_INST_0_i_45_n_0 ),
        .O(\bdatw[13]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_29 
       (.I0(gr25[13]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[13]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[13]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_30 
       (.I0(gr21[13]),
        .I1(gr1_bus1__0_31),
        .I2(gr22[13]),
        .I3(gr2_bus1__0_32),
        .O(\bdatw[13]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_31 
       (.I0(gr05[13]),
        .I1(gr5_bus1__0_24),
        .I2(gr06[13]),
        .I3(gr6_bus1__0_25),
        .O(\bdatw[13]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_32 
       (.I0(gr07[13]),
        .I1(gr7_bus1__0_23),
        .I2(gr00[13]),
        .I3(gr0_bus1__0_22),
        .O(\bdatw[13]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_33 
       (.I0(gr01[13]),
        .I1(gr1_bus1__0_35),
        .I2(gr02[13]),
        .I3(gr2_bus1__0_36),
        .O(\bdatw[13]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_34 
       (.I0(gr03[13]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[13]),
        .I3(gr4_bus1__0_33),
        .O(\bdatw[13]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_40 
       (.I0(gr25[5]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[5]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[13]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_41 
       (.I0(gr21[5]),
        .I1(gr1_bus1__0_31),
        .I2(gr22[5]),
        .I3(gr2_bus1__0_32),
        .O(\bdatw[13]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_42 
       (.I0(gr05[5]),
        .I1(gr5_bus1__0_24),
        .I2(gr06[5]),
        .I3(gr6_bus1__0_25),
        .O(\bdatw[13]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_43 
       (.I0(gr07[5]),
        .I1(gr7_bus1__0_23),
        .I2(gr00[5]),
        .I3(gr0_bus1__0_22),
        .O(\bdatw[13]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_44 
       (.I0(gr01[5]),
        .I1(gr1_bus1__0_35),
        .I2(gr02[5]),
        .I3(gr2_bus1__0_36),
        .O(\bdatw[13]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_45 
       (.I0(gr03[5]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[5]),
        .I3(gr4_bus1__0_33),
        .O(\bdatw[13]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_9 
       (.I0(\bdatw[13]_INST_0_i_17_n_0 ),
        .I1(\bdatw[13]_INST_0_i_18_n_0 ),
        .I2(gr27[13]),
        .I3(gr7_bus1__0_18),
        .I4(gr20[13]),
        .I5(gr0_bus1__0_19),
        .O(\grn_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_13 
       (.I0(\bdatw[14]_INST_0_i_21_n_0 ),
        .I1(\bdatw[14]_INST_0_i_22_n_0 ),
        .I2(gr27[6]),
        .I3(gr7_bus1__0_18),
        .I4(gr20[6]),
        .I5(gr0_bus1__0_19),
        .O(\grn_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[14]_INST_0_i_17 
       (.I0(\bdatw[14]_INST_0_i_29_n_0 ),
        .I1(gr23[14]),
        .I2(gr3_bus1__0_16),
        .I3(gr24[14]),
        .I4(gr4_bus1__0_17),
        .I5(\bdatw[14]_INST_0_i_30_n_0 ),
        .O(\bdatw[14]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_18 
       (.I0(out[14]),
        .I1(\bdatw[11]_INST_0_i_2 ),
        .I2(\bdatw[14]_INST_0_i_31_n_0 ),
        .I3(\bdatw[14]_INST_0_i_32_n_0 ),
        .I4(\bdatw[14]_INST_0_i_33_n_0 ),
        .I5(\bdatw[14]_INST_0_i_34_n_0 ),
        .O(\bdatw[14]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[14]_INST_0_i_21 
       (.I0(\bdatw[14]_INST_0_i_40_n_0 ),
        .I1(gr23[6]),
        .I2(gr3_bus1__0_16),
        .I3(gr24[6]),
        .I4(gr4_bus1__0_17),
        .I5(\bdatw[14]_INST_0_i_41_n_0 ),
        .O(\bdatw[14]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_22 
       (.I0(out[6]),
        .I1(\bdatw[11]_INST_0_i_2 ),
        .I2(\bdatw[14]_INST_0_i_42_n_0 ),
        .I3(\bdatw[14]_INST_0_i_43_n_0 ),
        .I4(\bdatw[14]_INST_0_i_44_n_0 ),
        .I5(\bdatw[14]_INST_0_i_45_n_0 ),
        .O(\bdatw[14]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_29 
       (.I0(gr25[14]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[14]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[14]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_30 
       (.I0(gr21[14]),
        .I1(gr1_bus1__0_31),
        .I2(gr22[14]),
        .I3(gr2_bus1__0_32),
        .O(\bdatw[14]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_31 
       (.I0(gr05[14]),
        .I1(gr5_bus1__0_24),
        .I2(gr06[14]),
        .I3(gr6_bus1__0_25),
        .O(\bdatw[14]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_32 
       (.I0(gr07[14]),
        .I1(gr7_bus1__0_23),
        .I2(gr00[14]),
        .I3(gr0_bus1__0_22),
        .O(\bdatw[14]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_33 
       (.I0(gr01[14]),
        .I1(gr1_bus1__0_35),
        .I2(gr02[14]),
        .I3(gr2_bus1__0_36),
        .O(\bdatw[14]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_34 
       (.I0(gr03[14]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[14]),
        .I3(gr4_bus1__0_33),
        .O(\bdatw[14]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_40 
       (.I0(gr25[6]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[6]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[14]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_41 
       (.I0(gr21[6]),
        .I1(gr1_bus1__0_31),
        .I2(gr22[6]),
        .I3(gr2_bus1__0_32),
        .O(\bdatw[14]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_42 
       (.I0(gr05[6]),
        .I1(gr5_bus1__0_24),
        .I2(gr06[6]),
        .I3(gr6_bus1__0_25),
        .O(\bdatw[14]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_43 
       (.I0(gr07[6]),
        .I1(gr7_bus1__0_23),
        .I2(gr00[6]),
        .I3(gr0_bus1__0_22),
        .O(\bdatw[14]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_44 
       (.I0(gr01[6]),
        .I1(gr1_bus1__0_35),
        .I2(gr02[6]),
        .I3(gr2_bus1__0_36),
        .O(\bdatw[14]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_45 
       (.I0(gr03[6]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[6]),
        .I3(gr4_bus1__0_33),
        .O(\bdatw[14]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_9 
       (.I0(\bdatw[14]_INST_0_i_17_n_0 ),
        .I1(\bdatw[14]_INST_0_i_18_n_0 ),
        .I2(gr27[14]),
        .I3(gr7_bus1__0_18),
        .I4(gr20[14]),
        .I5(gr0_bus1__0_19),
        .O(\grn_reg[14]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_107 
       (.I0(gr25[15]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[15]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[15]_INST_0_i_107_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_108 
       (.I0(gr21[15]),
        .I1(gr1_bus1__0_31),
        .I2(gr22[15]),
        .I3(gr2_bus1__0_32),
        .O(\bdatw[15]_INST_0_i_108_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_109 
       (.I0(gr05[15]),
        .I1(gr5_bus1__0_24),
        .I2(gr06[15]),
        .I3(gr6_bus1__0_25),
        .O(\bdatw[15]_INST_0_i_109_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_110 
       (.I0(gr07[15]),
        .I1(gr7_bus1__0_23),
        .I2(gr00[15]),
        .I3(gr0_bus1__0_22),
        .O(\bdatw[15]_INST_0_i_110_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_111 
       (.I0(gr01[15]),
        .I1(gr1_bus1__0_35),
        .I2(gr02[15]),
        .I3(gr2_bus1__0_36),
        .O(\bdatw[15]_INST_0_i_111_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_112 
       (.I0(gr03[15]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[15]),
        .I3(gr4_bus1__0_33),
        .O(\bdatw[15]_INST_0_i_112_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_119 
       (.I0(gr25[7]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[7]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[15]_INST_0_i_119_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_120 
       (.I0(gr21[7]),
        .I1(gr1_bus1__0_31),
        .I2(gr22[7]),
        .I3(gr2_bus1__0_32),
        .O(\bdatw[15]_INST_0_i_120_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_121 
       (.I0(gr05[7]),
        .I1(gr5_bus1__0_24),
        .I2(gr06[7]),
        .I3(gr6_bus1__0_25),
        .O(\bdatw[15]_INST_0_i_121_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_122 
       (.I0(gr07[7]),
        .I1(gr7_bus1__0_23),
        .I2(gr00[7]),
        .I3(gr0_bus1__0_22),
        .O(\bdatw[15]_INST_0_i_122_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_123 
       (.I0(gr01[7]),
        .I1(gr1_bus1__0_35),
        .I2(gr02[7]),
        .I3(gr2_bus1__0_36),
        .O(\bdatw[15]_INST_0_i_123_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_124 
       (.I0(gr03[7]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[7]),
        .I3(gr4_bus1__0_33),
        .O(\bdatw[15]_INST_0_i_124_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_23 
       (.I0(\bdatw[15]_INST_0_i_59_n_0 ),
        .I1(\bdatw[15]_INST_0_i_60_n_0 ),
        .I2(gr27[15]),
        .I3(gr7_bus1__0_18),
        .I4(gr20[15]),
        .I5(gr0_bus1__0_19),
        .O(\grn_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_30 
       (.I0(\bdatw[15]_INST_0_i_65_n_0 ),
        .I1(\bdatw[15]_INST_0_i_66_n_0 ),
        .I2(gr27[7]),
        .I3(gr7_bus1__0_18),
        .I4(gr20[7]),
        .I5(gr0_bus1__0_19),
        .O(\grn_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[15]_INST_0_i_59 
       (.I0(\bdatw[15]_INST_0_i_107_n_0 ),
        .I1(gr23[15]),
        .I2(gr3_bus1__0_16),
        .I3(gr24[15]),
        .I4(gr4_bus1__0_17),
        .I5(\bdatw[15]_INST_0_i_108_n_0 ),
        .O(\bdatw[15]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_60 
       (.I0(out[15]),
        .I1(\bdatw[11]_INST_0_i_2 ),
        .I2(\bdatw[15]_INST_0_i_109_n_0 ),
        .I3(\bdatw[15]_INST_0_i_110_n_0 ),
        .I4(\bdatw[15]_INST_0_i_111_n_0 ),
        .I5(\bdatw[15]_INST_0_i_112_n_0 ),
        .O(\bdatw[15]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[15]_INST_0_i_65 
       (.I0(\bdatw[15]_INST_0_i_119_n_0 ),
        .I1(gr23[7]),
        .I2(gr3_bus1__0_16),
        .I3(gr24[7]),
        .I4(gr4_bus1__0_17),
        .I5(\bdatw[15]_INST_0_i_120_n_0 ),
        .O(\bdatw[15]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_66 
       (.I0(out[7]),
        .I1(\bdatw[11]_INST_0_i_2 ),
        .I2(\bdatw[15]_INST_0_i_121_n_0 ),
        .I3(\bdatw[15]_INST_0_i_122_n_0 ),
        .I4(\bdatw[15]_INST_0_i_123_n_0 ),
        .I5(\bdatw[15]_INST_0_i_124_n_0 ),
        .O(\bdatw[15]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[8]_INST_0_i_14 
       (.I0(\bdatw[8]_INST_0_i_29_n_0 ),
        .I1(\bdatw[8]_INST_0_i_30_n_0 ),
        .I2(gr27[8]),
        .I3(gr7_bus1__0_18),
        .I4(gr20[8]),
        .I5(gr0_bus1__0_19),
        .O(\grn_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[8]_INST_0_i_29 
       (.I0(\bdatw[8]_INST_0_i_42_n_0 ),
        .I1(gr23[8]),
        .I2(gr3_bus1__0_16),
        .I3(gr24[8]),
        .I4(gr4_bus1__0_17),
        .I5(\bdatw[8]_INST_0_i_43_n_0 ),
        .O(\bdatw[8]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[8]_INST_0_i_30 
       (.I0(out[8]),
        .I1(\bdatw[11]_INST_0_i_2 ),
        .I2(\bdatw[8]_INST_0_i_44_n_0 ),
        .I3(\bdatw[8]_INST_0_i_45_n_0 ),
        .I4(\bdatw[8]_INST_0_i_46_n_0 ),
        .I5(\bdatw[8]_INST_0_i_47_n_0 ),
        .O(\bdatw[8]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_42 
       (.I0(gr25[8]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[8]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[8]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_43 
       (.I0(gr21[8]),
        .I1(gr1_bus1__0_31),
        .I2(gr22[8]),
        .I3(gr2_bus1__0_32),
        .O(\bdatw[8]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_44 
       (.I0(gr05[8]),
        .I1(gr5_bus1__0_24),
        .I2(gr06[8]),
        .I3(gr6_bus1__0_25),
        .O(\bdatw[8]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_45 
       (.I0(gr07[8]),
        .I1(gr7_bus1__0_23),
        .I2(gr00[8]),
        .I3(gr0_bus1__0_22),
        .O(\bdatw[8]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_46 
       (.I0(gr01[8]),
        .I1(gr1_bus1__0_35),
        .I2(gr02[8]),
        .I3(gr2_bus1__0_36),
        .O(\bdatw[8]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_47 
       (.I0(gr03[8]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[8]),
        .I3(gr4_bus1__0_33),
        .O(\bdatw[8]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[9]_INST_0_i_14 
       (.I0(\bdatw[9]_INST_0_i_28_n_0 ),
        .I1(\bdatw[9]_INST_0_i_29_n_0 ),
        .I2(gr27[9]),
        .I3(gr7_bus1__0_18),
        .I4(gr20[9]),
        .I5(gr0_bus1__0_19),
        .O(\grn_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[9]_INST_0_i_28 
       (.I0(\bdatw[9]_INST_0_i_41_n_0 ),
        .I1(gr23[9]),
        .I2(gr3_bus1__0_16),
        .I3(gr24[9]),
        .I4(gr4_bus1__0_17),
        .I5(\bdatw[9]_INST_0_i_42_n_0 ),
        .O(\bdatw[9]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[9]_INST_0_i_29 
       (.I0(out[9]),
        .I1(\bdatw[11]_INST_0_i_2 ),
        .I2(\bdatw[9]_INST_0_i_43_n_0 ),
        .I3(\bdatw[9]_INST_0_i_44_n_0 ),
        .I4(\bdatw[9]_INST_0_i_45_n_0 ),
        .I5(\bdatw[9]_INST_0_i_46_n_0 ),
        .O(\bdatw[9]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_41 
       (.I0(gr25[9]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[9]),
        .I3(gr6_bus1__0_21),
        .O(\bdatw[9]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_42 
       (.I0(gr21[9]),
        .I1(gr1_bus1__0_31),
        .I2(gr22[9]),
        .I3(gr2_bus1__0_32),
        .O(\bdatw[9]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_43 
       (.I0(gr05[9]),
        .I1(gr5_bus1__0_24),
        .I2(gr06[9]),
        .I3(gr6_bus1__0_25),
        .O(\bdatw[9]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_44 
       (.I0(gr07[9]),
        .I1(gr7_bus1__0_23),
        .I2(gr00[9]),
        .I3(gr0_bus1__0_22),
        .O(\bdatw[9]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_45 
       (.I0(gr01[9]),
        .I1(gr1_bus1__0_35),
        .I2(gr02[9]),
        .I3(gr2_bus1__0_36),
        .O(\bdatw[9]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_46 
       (.I0(gr03[9]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[9]),
        .I3(gr4_bus1__0_33),
        .O(\bdatw[9]_INST_0_i_46_n_0 ));
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
        .\abus_o[0] (abus_o_0_sn_1),
        .\abus_o[0]_0 (\abus_o[0]_0 ),
        .\abus_o[0]_1 (\abus_o[0]_1 ),
        .\abus_o[0]_2 (\abus_o[0]_2 ),
        .\abus_o[10] (abus_o_10_sn_1),
        .\abus_o[10]_0 (\abus_o[10]_0 ),
        .\abus_o[10]_1 (\abus_o[10]_1 ),
        .\abus_o[10]_2 (\abus_o[10]_2 ),
        .\abus_o[11] (abus_o_11_sn_1),
        .\abus_o[11]_0 (\abus_o[11]_0 ),
        .\abus_o[11]_1 (\abus_o[11]_1 ),
        .\abus_o[11]_2 (\abus_o[11]_2 ),
        .\abus_o[12] (abus_o_12_sn_1),
        .\abus_o[12]_0 (\abus_o[12]_0 ),
        .\abus_o[12]_1 (\abus_o[12]_1 ),
        .\abus_o[12]_2 (\abus_o[12]_2 ),
        .\abus_o[13] (abus_o_13_sn_1),
        .\abus_o[13]_0 (\abus_o[13]_0 ),
        .\abus_o[13]_1 (\abus_o[13]_1 ),
        .\abus_o[13]_2 (\abus_o[13]_2 ),
        .\abus_o[14] (abus_o_14_sn_1),
        .\abus_o[14]_0 (\abus_o[14]_0 ),
        .\abus_o[14]_1 (\abus_o[14]_1 ),
        .\abus_o[14]_2 (\abus_o[14]_2 ),
        .\abus_o[15] (abus_o_15_sn_1),
        .\abus_o[15]_0 (\abus_o[15]_0 ),
        .\abus_o[15]_1 (\abus_o[15]_1 ),
        .\abus_o[15]_2 (\abus_o[15]_2 ),
        .\abus_o[1] (abus_o_1_sn_1),
        .\abus_o[1]_0 (\abus_o[1]_0 ),
        .\abus_o[1]_1 (\abus_o[1]_1 ),
        .\abus_o[1]_2 (\abus_o[1]_2 ),
        .\abus_o[2] (abus_o_2_sn_1),
        .\abus_o[2]_0 (\abus_o[2]_0 ),
        .\abus_o[2]_1 (\abus_o[2]_1 ),
        .\abus_o[2]_2 (\abus_o[2]_2 ),
        .\abus_o[3] (abus_o_3_sn_1),
        .\abus_o[3]_0 (\abus_o[3]_0 ),
        .\abus_o[3]_1 (\abus_o[3]_1 ),
        .\abus_o[3]_2 (\abus_o[3]_2 ),
        .\abus_o[4] (abus_o_4_sn_1),
        .\abus_o[4]_0 (\abus_o[4]_0 ),
        .\abus_o[4]_1 (\abus_o[4]_1 ),
        .\abus_o[4]_2 (\abus_o[4]_2 ),
        .\abus_o[5] (abus_o_5_sn_1),
        .\abus_o[5]_0 (\abus_o[5]_0 ),
        .\abus_o[5]_1 (\abus_o[5]_1 ),
        .\abus_o[5]_2 (\abus_o[5]_2 ),
        .\abus_o[6] (abus_o_6_sn_1),
        .\abus_o[6]_0 (\abus_o[6]_0 ),
        .\abus_o[6]_1 (\abus_o[6]_1 ),
        .\abus_o[6]_2 (\abus_o[6]_2 ),
        .\abus_o[7] (abus_o_7_sn_1),
        .\abus_o[7]_0 (\abus_o[7]_0 ),
        .\abus_o[7]_1 (\abus_o[7]_1 ),
        .\abus_o[7]_2 (\abus_o[7]_2 ),
        .\abus_o[8] (abus_o_8_sn_1),
        .\abus_o[8]_0 (\abus_o[8]_0 ),
        .\abus_o[8]_1 (\abus_o[8]_1 ),
        .\abus_o[8]_2 (\abus_o[8]_2 ),
        .\abus_o[9] (abus_o_9_sn_1),
        .\abus_o[9]_0 (\abus_o[9]_0 ),
        .\abus_o[9]_1 (\abus_o[9]_1 ),
        .\abus_o[9]_2 (\abus_o[9]_2 ),
        .acmd(acmd),
        .\badr[0]_INST_0_i_1_0 (\badr[0]_INST_0_i_1 ),
        .\badr[10]_INST_0_i_1_0 (\badr[10]_INST_0_i_1 ),
        .\badr[11]_INST_0_i_1_0 (grn27_n_53),
        .\badr[11]_INST_0_i_1_1 (\badr[11]_INST_0_i_1 ),
        .\badr[12]_INST_0_i_1_0 (\badr[12]_INST_0_i_1 ),
        .\badr[13]_INST_0_i_1_0 (\badr[13]_INST_0_i_1 ),
        .\badr[13]_INST_0_i_1_1 (\badr[13]_INST_0_i_1_0 ),
        .\badr[14]_INST_0_i_1_0 (\badr[14]_INST_0_i_1 ),
        .\badr[15]_INST_0_i_1_0 (\badr[15]_INST_0_i_1 ),
        .\badr[15]_INST_0_i_1_1 (\badr[15]_INST_0_i_1_1 ),
        .\badr[15]_INST_0_i_1_2 (gr24),
        .\badr[15]_INST_0_i_2_0 (gr01),
        .\badr[15]_INST_0_i_2_1 (gr02),
        .\badr[15]_INST_0_i_2_2 (gr27),
        .\badr[15]_INST_0_i_2_3 (gr20),
        .\badr[15]_INST_0_i_2_4 (gr07),
        .\badr[15]_INST_0_i_2_5 (gr00),
        .\badr[15]_INST_0_i_2_6 (gr03),
        .\badr[15]_INST_0_i_2_7 (gr04),
        .\badr[15]_INST_0_i_2_8 (gr05),
        .\badr[15]_INST_0_i_2_9 (gr06),
        .\badr[15]_INST_0_i_3_0 (gr21),
        .\badr[15]_INST_0_i_3_1 (gr22),
        .\badr[15]_INST_0_i_3_2 (gr25),
        .\badr[15]_INST_0_i_3_3 (gr26),
        .\badr[1]_INST_0_i_1_0 (grn27_n_41),
        .\badr[1]_INST_0_i_1_1 (\badr[1]_INST_0_i_1 ),
        .\badr[2]_INST_0_i_1_0 (\badr[2]_INST_0_i_1 ),
        .\badr[2]_INST_0_i_1_1 (\badr[2]_INST_0_i_1_0 ),
        .\badr[3]_INST_0_i_1_0 (grn27_n_42),
        .\badr[3]_INST_0_i_1_1 (\badr[3]_INST_0_i_1 ),
        .\badr[4]_INST_0_i_1_0 (\badr[4]_INST_0_i_1 ),
        .\badr[4]_INST_0_i_1_1 (\badr[4]_INST_0_i_1_0 ),
        .\badr[5]_INST_0_i_1_0 (grn27_n_24),
        .\badr[5]_INST_0_i_1_1 (grn27_n_43),
        .\badr[5]_INST_0_i_1_2 (\badr[5]_INST_0_i_1 ),
        .\badr[6]_INST_0_i_1_0 (\badr[6]_INST_0_i_1 ),
        .\badr[7]_INST_0_i_1_0 (grn27_n_28),
        .\badr[7]_INST_0_i_1_1 (\badr[7]_INST_0_i_1 ),
        .\badr[8]_INST_0_i_1_0 (\badr[8]_INST_0_i_1 ),
        .\badr[9]_INST_0_i_1_0 (\badr[9]_INST_0_i_1 ),
        .\bdatw[12]_INST_0_i_17_0 (\bdatw[11]_INST_0_i_17_0 ),
        .\bdatw[12]_INST_0_i_19_0 (\bdatw[11]_INST_0_i_17_3 ),
        .\bdatw[12]_INST_0_i_2 (\bdatw[11]_INST_0_i_2 ),
        .\bdatw[12]_INST_0_i_20_0 (\bdatw[11]_INST_0_i_17_1 ),
        .\bdatw[12]_INST_0_i_20_1 (\bdatw[11]_INST_0_i_17_2 ),
        .\bdatw[12]_INST_0_i_20_2 (\bdatw[11]_INST_0_i_18_0 ),
        .\bdatw[12]_INST_0_i_20_3 (\bdatw[11]_INST_0_i_17_4 ),
        .\bdatw[8]_INST_0_i_2 (\bdatw[8]_INST_0_i_2_1 ),
        .\bdatw[8]_INST_0_i_2_0 (\bdatw[8]_INST_0_i_2 ),
        .\bdatw[8]_INST_0_i_2_1 (\bdatw[8]_INST_0_i_2_4 ),
        .\bdatw[8]_INST_0_i_2_2 (\bdatw[8]_INST_0_i_2_5 ),
        .\bdatw[8]_INST_0_i_2_3 (\bdatw[8]_INST_0_i_2_8 ),
        .\bdatw[8]_INST_0_i_2_4 (\bdatw[8]_INST_0_i_2_10 ),
        .\bdatw[8]_INST_0_i_2_5 (\bdatw[8]_INST_0_i_2_0 ),
        .\bdatw[8]_INST_0_i_2_6 (\bdatw[8]_INST_0_i_2_2 ),
        .\bdatw[8]_INST_0_i_2_7 (\bdatw[8]_INST_0_i_2_12 ),
        .clk(clk),
        .gr0_bus1__0(gr0_bus1__0),
        .gr0_bus1__0_19(gr0_bus1__0_19),
        .gr0_bus1__0_22(gr0_bus1__0_22),
        .gr0_bus1__0_5(gr0_bus1__0_5),
        .gr1_bus1__0(gr1_bus1__0),
        .gr1_bus1__0_0(gr1_bus1__0_0),
        .gr2_bus1__0(gr2_bus1__0),
        .gr2_bus1__0_1(gr2_bus1__0_1),
        .gr3_bus1__0(gr3_bus1__0),
        .gr3_bus1__0_0(gr3_bus1__0_0),
        .gr3_bus1__0_16(gr3_bus1__0_16),
        .gr3_bus1__0_34(gr3_bus1__0_34),
        .gr4_bus1__0(gr4_bus1__0),
        .gr4_bus1__0_1(gr4_bus1__0_1),
        .gr4_bus1__0_17(gr4_bus1__0_17),
        .gr4_bus1__0_33(gr4_bus1__0_33),
        .gr5_bus1__0_11(gr5_bus1__0_11),
        .gr5_bus1__0_12(gr5_bus1__0_12),
        .gr6_bus1__0(gr6_bus1__0),
        .gr6_bus1__0_13(gr6_bus1__0_13),
        .gr7_bus1__0(gr7_bus1__0),
        .gr7_bus1__0_18(gr7_bus1__0_18),
        .gr7_bus1__0_23(gr7_bus1__0_23),
        .gr7_bus1__0_4(gr7_bus1__0_4),
        .\grn_reg[0]_0 (\grn_reg[0] ),
        .\grn_reg[10]_0 (\grn_reg[10] ),
        .\grn_reg[11]_0 (\grn_reg[11] ),
        .\grn_reg[12]_0 (\grn_reg[12] ),
        .\grn_reg[13]_0 (\grn_reg[13] ),
        .\grn_reg[14]_0 (\grn_reg[14] ),
        .\grn_reg[15]_0 (\grn_reg[15] ),
        .\grn_reg[15]_1 (\grn_reg[15]_17 ),
        .\grn_reg[15]_2 (\grn_reg[15]_2 ),
        .\grn_reg[1]_0 (\grn_reg[1] ),
        .\grn_reg[2]_0 (\grn_reg[2] ),
        .\grn_reg[3]_0 (\grn_reg[3] ),
        .\grn_reg[4]_0 (\grn_reg[4] ),
        .\grn_reg[5]_0 (\grn_reg[5] ),
        .\grn_reg[6]_0 (\grn_reg[6] ),
        .\grn_reg[7]_0 (\grn_reg[7] ),
        .\grn_reg[8]_0 (\grn_reg[8] ),
        .\grn_reg[9]_0 (\grn_reg[9] ),
        .\iv[0]_i_16 (\iv[0]_i_16_3 ),
        .\iv[0]_i_16_0 (\iv[0]_i_16_0 ),
        .\iv[0]_i_16_1 (\iv[0]_i_16_2 ),
        .\iv[0]_i_16_2 (\iv[0]_i_16_6 ),
        .\iv[0]_i_16_3 (\iv[0]_i_16 ),
        .\iv[0]_i_16_4 (\iv[0]_i_16_1 ),
        .\iv[0]_i_16_5 (\iv[0]_i_16_5 ),
        .\iv[0]_i_17_0 (\iv[0]_i_17 ),
        .\iv[0]_i_17_1 (\iv[0]_i_17_0 ),
        .\iv[0]_i_18_0 (\iv[0]_i_18 ),
        .\iv[0]_i_2 (\iv[2]_i_2 ),
        .\iv[0]_i_5 (\iv[13]_i_33_n_0 ),
        .\iv[0]_i_5_0 (\iv[8]_i_21_n_0 ),
        .\iv[0]_i_5_1 (\iv[8]_i_20_n_0 ),
        .\iv[10]_i_12 ({out[6],out[4],out[2:0]}),
        .\iv[10]_i_18_0 (\iv[10]_i_18 ),
        .\iv[10]_i_21_0 (grn27_n_30),
        .\iv[10]_i_5 (\iv[8]_i_5 ),
        .\iv[10]_i_5_0 (\iv[8]_i_5_0 ),
        .\iv[10]_i_5_1 (\iv[10]_i_5 ),
        .\iv[11]_i_21_0 (\iv[11]_i_21 ),
        .\iv[11]_i_9 (\iv[11]_i_9 ),
        .\iv[12]_i_7 (\iv[8]_i_14_0 ),
        .\iv[13]_i_16_0 (\iv[13]_i_16 ),
        .\iv[13]_i_2 (\iv[13]_i_2 ),
        .\iv[13]_i_20_0 (\iv[13]_i_20 ),
        .\iv[13]_i_21_0 (\iv[13]_i_21 ),
        .\iv[13]_i_24_0 (\iv[13]_i_24 ),
        .\iv[13]_i_28_0 (\iv[13]_i_28 ),
        .\iv[13]_i_28_1 (\iv[13]_i_28_0 ),
        .\iv[13]_i_30_0 (\iv[13]_i_30 ),
        .\iv[13]_i_35_0 (\iv[13]_i_35 ),
        .\iv[13]_i_35_1 (\iv[13]_i_35_0 ),
        .\iv[13]_i_7 (\sr[7]_i_16_0 ),
        .\iv[14]_i_22 (\iv[14]_i_22 ),
        .\iv[14]_i_22_0 (\iv[14]_i_22_0 ),
        .\iv[14]_i_22_1 (\iv[14]_i_22_1 ),
        .\iv[14]_i_28 (\iv[14]_i_28 ),
        .\iv[14]_i_28_0 (\iv[14]_i_28_0 ),
        .\iv[14]_i_34 (\iv[14]_i_34 ),
        .\iv[14]_i_36_0 (\iv[14]_i_36_0 ),
        .\iv[1]_i_14_0 (\iv[1]_i_14 ),
        .\iv[1]_i_2 (\iv[2]_i_2_1 ),
        .\iv[5]_i_15_0 (\iv[5]_i_15 ),
        .\iv[5]_i_15_1 (\iv[5]_i_15_0 ),
        .\iv[5]_i_15_2 (\iv[5]_i_15_1 ),
        .\iv[6]_i_18_0 (\iv[6]_i_18 ),
        .\iv[6]_i_2 (\iv[6]_i_2 ),
        .\iv[6]_i_8_0 (\iv[2]_i_8 ),
        .\iv[6]_i_8_1 (\iv[14]_i_13 ),
        .\iv[9]_i_2 (\sr[6]_i_3 ),
        .\iv[9]_i_7 (\iv[9]_i_7 ),
        .out(gr23),
        .\sr[6]_i_6 (\sr[6]_i_6 ),
        .\sr[7]_i_16 (\iv[13]_i_25_n_0 ),
        .\sr[7]_i_8 (\iv[2]_i_2_0 ),
        .\sr_reg[0] (\sr_reg[0] ),
        .\sr_reg[1] (\sr_reg[1] ),
        .\sr_reg[2] (\sr_reg[2] ),
        .\sr_reg[4] (\sr_reg[4] ),
        .\sr_reg[6] (\sr_reg[6]_0 ),
        .\sr_reg[6]_0 (\sr_reg[6]_3 ),
        .\sr_reg[6]_1 (\sr_reg[6]_4 ),
        .\sr_reg[6]_2 (\sr_reg[6]_5 ),
        .\sr_reg[6]_3 (\sr_reg[6]_7 ),
        .\sr_reg[6]_4 (\sr_reg[6]_8 ),
        .\sr_reg[6]_5 (\sr_reg[6]_9 ),
        .tout__1_carry_i_10(tout__1_carry_i_10),
        .tout__1_carry_i_9(tout__1_carry_i_9));
  LUT6 #(
    .INIT(64'hAFAFA0A0C0CFC0CF)) 
    \iv[10]_i_19 
       (.I0(\iv[13]_i_25_n_0 ),
        .I1(\badr[15]_INST_0_i_1 ),
        .I2(\iv[8]_i_5 ),
        .I3(\badr[2]_INST_0_i_1 ),
        .I4(\iv[2]_i_8 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\sr_reg[6]_2 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[13]_i_25 
       (.I0(\grn_reg[12] ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[13] ),
        .O(\iv[13]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_33 
       (.I0(\grn_reg[11] ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[10] ),
        .O(\iv[13]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h3F3FAFA03030AFA0)) 
    \iv[14]_i_15 
       (.I0(\iv[0]_i_16_0 ),
        .I1(\iv[14]_i_4 ),
        .I2(\sr[6]_i_3 ),
        .I3(\iv[0]_i_16_1 ),
        .I4(\iv[8]_i_5 ),
        .I5(\iv[0]_i_16_2 ),
        .O(\iv[14]_i_36 ));
  LUT6 #(
    .INIT(64'hF000FFFFCACACACA)) 
    \iv[14]_i_31 
       (.I0(\grn_reg[2] ),
        .I1(\grn_reg[1] ),
        .I2(\iv[8]_i_14_0 ),
        .I3(out[6]),
        .I4(\iv[14]_i_13 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\sr_reg[6]_6 ));
  LUT6 #(
    .INIT(64'h00F0FFF0AACCAACC)) 
    \iv[2]_i_12 
       (.I0(\iv[8]_i_20_n_0 ),
        .I1(\iv[13]_i_33_n_0 ),
        .I2(\iv[8]_i_21_n_0 ),
        .I3(\iv[8]_i_5 ),
        .I4(\grn_reg[15] ),
        .I5(\iv[8]_i_5_0 ),
        .O(\iv[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[2]_i_13 
       (.I0(\iv[8]_i_21_n_0 ),
        .I1(\iv[13]_i_33_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[8]_i_23_n_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_20_n_0 ),
        .O(\iv[2]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFAFCFA0C)) 
    \iv[2]_i_14 
       (.I0(\iv[8]_i_21_n_0 ),
        .I1(\iv[13]_i_33_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[8]_i_5_0 ),
        .I4(\iv[8]_i_20_n_0 ),
        .O(\iv[8]_i_20_0 ));
  LUT6 #(
    .INIT(64'hFFFF1013FFFFDCDF)) 
    \iv[2]_i_5 
       (.I0(\iv[2]_i_12_n_0 ),
        .I1(\iv[2]_i_2 ),
        .I2(\iv[2]_i_2_0 ),
        .I3(\iv[2]_i_13_n_0 ),
        .I4(\iv[2]_i_2_1 ),
        .I5(\iv[13]_i_35 ),
        .O(\iv[11]_i_17 ));
  LUT6 #(
    .INIT(64'hAAAACCCCF0F0FF00)) 
    \iv[4]_i_12 
       (.I0(\grn_reg[11] ),
        .I1(\grn_reg[10] ),
        .I2(\grn_reg[9] ),
        .I3(\grn_reg[8] ),
        .I4(\iv[8]_i_14_0 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\iv[4]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[4]_i_13 
       (.I0(tout__1_carry_i_9),
        .I1(acmd),
        .O(\iv[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF505F3F3F5050303)) 
    \iv[4]_i_14 
       (.I0(\badr[2]_INST_0_i_1 ),
        .I1(\badr[4]_INST_0_i_1 ),
        .I2(\iv[8]_i_5 ),
        .I3(\badr[15]_INST_0_i_1 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[2]_i_8 ),
        .O(\sr_reg[6]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[4]_i_6 
       (.I0(\iv[4]_i_12_n_0 ),
        .I1(\iv[0]_i_16_4 ),
        .I2(\iv[2]_i_2 ),
        .I3(\iv[4]_i_13_n_0 ),
        .I4(\iv[8]_i_5 ),
        .I5(\iv[0]_i_16_5 ),
        .O(\iv[12]_i_15 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[6]_i_13 
       (.I0(\grn_reg[9] ),
        .I1(\grn_reg[8] ),
        .I2(\grn_reg[7] ),
        .I3(\grn_reg[6] ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_3 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[7]_i_13 
       (.I0(\grn_reg[5] ),
        .I1(\grn_reg[4] ),
        .I2(\grn_reg[3] ),
        .I3(\grn_reg[2] ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_7 ));
  LUT6 #(
    .INIT(64'hFA0AFA0AFCFC0C0C)) 
    \iv[8]_i_14 
       (.I0(grn27_n_41),
        .I1(\iv[8]_i_23_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(grn27_n_43),
        .I4(grn27_n_42),
        .I5(\iv[8]_i_5_0 ),
        .O(\sr_reg[6] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[8]_i_17 
       (.I0(grn27_n_53),
        .I1(\iv[8]_i_5_0 ),
        .I2(\iv[13]_i_25_n_0 ),
        .O(\iv[13]_i_25_0 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \iv[8]_i_18 
       (.I0(\grn_reg[4] ),
        .I1(\grn_reg[3] ),
        .I2(\grn_reg[2] ),
        .I3(\grn_reg[1] ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_6 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \iv[8]_i_19 
       (.I0(\grn_reg[8] ),
        .I1(\grn_reg[7] ),
        .I2(\grn_reg[6] ),
        .I3(\grn_reg[5] ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_9 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[8]_i_20 
       (.I0(\grn_reg[15] ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[14] ),
        .O(\iv[8]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[8]_i_21 
       (.I0(\grn_reg[13] ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[12] ),
        .O(\iv[8]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[8]_i_23 
       (.I0(\grn_reg[0] ),
        .I1(\iv[8]_i_14_0 ),
        .I2(out[6]),
        .O(\iv[8]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCCF0F0FF00)) 
    \iv[9]_i_15 
       (.I0(\grn_reg[7] ),
        .I1(\grn_reg[6] ),
        .I2(\grn_reg[5] ),
        .I3(\grn_reg[4] ),
        .I4(\iv[8]_i_14_0 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\iv[0]_i_16_4 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \sr[6]_i_10 
       (.I0(\grn_reg[12] ),
        .I1(\grn_reg[11] ),
        .I2(\grn_reg[10] ),
        .I3(\grn_reg[9] ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_11 ));
  LUT6 #(
    .INIT(64'h30305F503F3F5F5F)) 
    \sr[6]_i_11 
       (.I0(\grn_reg[14] ),
        .I1(\grn_reg[13] ),
        .I2(\iv[8]_i_5_0 ),
        .I3(acmd),
        .I4(\iv[8]_i_14_0 ),
        .I5(\grn_reg[15] ),
        .O(\badr[15]_INST_0_i_1_0 ));
  LUT6 #(
    .INIT(64'h505F3F3F505F3030)) 
    \sr[6]_i_5 
       (.I0(\bdatw[8]_INST_0_i_2 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\sr[6]_i_3 ),
        .I3(\iv[0]_i_16 ),
        .I4(\iv[8]_i_5 ),
        .I5(\sr[6]_i_9_n_0 ),
        .O(\sr[6]_i_9_0 ));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \sr[6]_i_9 
       (.I0(\grn_reg[2] ),
        .I1(\grn_reg[1] ),
        .I2(\iv[8]_i_14_0 ),
        .I3(\bdatw[8]_INST_0_i_2_1 ),
        .I4(\iv[8]_i_5_0 ),
        .O(\sr[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4700)) 
    \sr[7]_i_13 
       (.I0(\bdatw[8]_INST_0_i_2_2 ),
        .I1(\iv[8]_i_5 ),
        .I2(\bdatw[8]_INST_0_i_2_3 ),
        .I3(\sr[7]_i_9_1 ),
        .I4(\iv[2]_i_2_1 ),
        .I5(tout__1_carry_i_9),
        .O(\sr[7]_i_11 ));
  LUT6 #(
    .INIT(64'h0000000000FFD1D1)) 
    \sr[7]_i_16 
       (.I0(\sr[7]_i_18_n_0 ),
        .I1(\iv[8]_i_5 ),
        .I2(\sr[7]_i_19_n_0 ),
        .I3(grn27_n_30),
        .I4(\sr[7]_i_9 ),
        .I5(\sr[7]_i_9_0 ),
        .O(\bdatw[12]_INST_0_i_2 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[7]_i_18 
       (.I0(grn27_n_24),
        .I1(\iv[8]_i_5_0 ),
        .I2(grn27_n_28),
        .O(\sr[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00F0333300F05555)) 
    \sr[7]_i_19 
       (.I0(\grn_reg[3] ),
        .I1(\grn_reg[2] ),
        .I2(\sr[7]_i_16_0 ),
        .I3(\bdatw[8]_INST_0_i_2_1 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\sr[7]_i_19_n_0 ));
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
   (\grn_reg[0]_0 ,
    \grn_reg[1]_0 ,
    \grn_reg[2]_0 ,
    \grn_reg[3]_0 ,
    \grn_reg[4]_0 ,
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
    \sr_reg[0] ,
    \sr_reg[1] ,
    \sr_reg[2] ,
    \sr_reg[4] ,
    \iv[13]_i_16_0 ,
    \iv[14]_i_22 ,
    tout__1_carry_i_10,
    \iv[0]_i_17_0 ,
    \badr[5]_INST_0_i_1_0 ,
    \sr_reg[6] ,
    \bdatw[8]_INST_0_i_2 ,
    \iv[13]_i_21_0 ,
    \badr[7]_INST_0_i_1_0 ,
    \iv[6]_i_18_0 ,
    \iv[10]_i_21_0 ,
    \badr[4]_INST_0_i_1_0 ,
    \badr[2]_INST_0_i_1_0 ,
    \iv[13]_i_30_0 ,
    \iv[14]_i_28 ,
    \iv[0]_i_16 ,
    \iv[13]_i_20_0 ,
    \badr[13]_INST_0_i_1_0 ,
    \sr_reg[6]_0 ,
    \iv[1]_i_14_0 ,
    \iv[5]_i_15_0 ,
    \badr[1]_INST_0_i_1_0 ,
    \badr[3]_INST_0_i_1_0 ,
    \badr[5]_INST_0_i_1_1 ,
    \iv[13]_i_35_0 ,
    \iv[0]_i_17_1 ,
    \iv[14]_i_28_0 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \iv[5]_i_15_1 ,
    \iv[14]_i_36_0 ,
    \iv[0]_i_16_0 ,
    \iv[0]_i_16_1 ,
    \iv[13]_i_24_0 ,
    \badr[11]_INST_0_i_1_0 ,
    \iv[5]_i_15_2 ,
    \iv[14]_i_22_0 ,
    \iv[13]_i_35_1 ,
    \iv[0]_i_16_2 ,
    \badr[15]_INST_0_i_1_0 ,
    \iv[14]_i_34 ,
    \bdatw[8]_INST_0_i_2_1 ,
    \iv[13]_i_28_0 ,
    \iv[14]_i_22_1 ,
    tout__1_carry_i_9,
    \sr_reg[6]_1 ,
    \sr_reg[6]_2 ,
    \iv[11]_i_21_0 ,
    \bdatw[8]_INST_0_i_2_2 ,
    \iv[0]_i_16_3 ,
    \iv[0]_i_18_0 ,
    \bdatw[8]_INST_0_i_2_3 ,
    \bdatw[8]_INST_0_i_2_4 ,
    \bdatw[8]_INST_0_i_2_5 ,
    \iv[13]_i_28_1 ,
    \bdatw[8]_INST_0_i_2_6 ,
    \sr_reg[6]_3 ,
    \sr_reg[6]_4 ,
    \iv[0]_i_16_4 ,
    \sr_reg[6]_5 ,
    \bdatw[8]_INST_0_i_2_7 ,
    \iv[0]_i_16_5 ,
    \iv[10]_i_18_0 ,
    Q,
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
    \badr[0]_INST_0_i_1_0 ,
    \badr[1]_INST_0_i_1_1 ,
    \badr[2]_INST_0_i_1_1 ,
    \badr[3]_INST_0_i_1_1 ,
    \badr[4]_INST_0_i_1_1 ,
    \badr[5]_INST_0_i_1_2 ,
    \badr[6]_INST_0_i_1_0 ,
    \badr[7]_INST_0_i_1_1 ,
    \badr[8]_INST_0_i_1_0 ,
    \badr[9]_INST_0_i_1_0 ,
    \badr[10]_INST_0_i_1_0 ,
    \badr[11]_INST_0_i_1_1 ,
    \badr[12]_INST_0_i_1_0 ,
    \badr[13]_INST_0_i_1_1 ,
    \badr[14]_INST_0_i_1_0 ,
    \badr[15]_INST_0_i_1_1 ,
    out,
    gr3_bus1__0_0,
    \badr[15]_INST_0_i_1_2 ,
    gr4_bus1__0_1,
    \badr[15]_INST_0_i_3_0 ,
    gr1_bus1__0,
    \badr[15]_INST_0_i_3_1 ,
    gr2_bus1__0,
    \badr[15]_INST_0_i_2_0 ,
    gr1_bus1__0_0,
    \badr[15]_INST_0_i_2_1 ,
    gr2_bus1__0_1,
    \badr[15]_INST_0_i_2_2 ,
    gr7_bus1__0,
    \badr[15]_INST_0_i_2_3 ,
    gr0_bus1__0,
    \badr[15]_INST_0_i_2_4 ,
    gr7_bus1__0_4,
    \badr[15]_INST_0_i_2_5 ,
    gr0_bus1__0_5,
    \badr[15]_INST_0_i_2_6 ,
    gr3_bus1__0,
    \badr[15]_INST_0_i_2_7 ,
    gr4_bus1__0,
    \badr[15]_INST_0_i_3_2 ,
    gr5_bus1__0_11,
    \badr[15]_INST_0_i_3_3 ,
    gr6_bus1__0,
    \badr[15]_INST_0_i_2_8 ,
    gr5_bus1__0_12,
    \badr[15]_INST_0_i_2_9 ,
    gr6_bus1__0_13,
    \iv[10]_i_12 ,
    \bdatw[12]_INST_0_i_2 ,
    gr3_bus1__0_16,
    gr4_bus1__0_17,
    \bdatw[12]_INST_0_i_17_0 ,
    \bdatw[12]_INST_0_i_20_0 ,
    \bdatw[12]_INST_0_i_20_1 ,
    \bdatw[12]_INST_0_i_19_0 ,
    gr0_bus1__0_22,
    gr7_bus1__0_23,
    \bdatw[12]_INST_0_i_20_2 ,
    \bdatw[12]_INST_0_i_20_3 ,
    gr4_bus1__0_33,
    gr3_bus1__0_34,
    gr7_bus1__0_18,
    gr0_bus1__0_19,
    \iv[9]_i_2 ,
    \iv[6]_i_2 ,
    \iv[0]_i_2 ,
    \sr[7]_i_8 ,
    acmd,
    \iv[10]_i_5 ,
    \iv[10]_i_5_0 ,
    \sr[6]_i_6 ,
    \iv[12]_i_7 ,
    \iv[13]_i_7 ,
    \iv[6]_i_8_0 ,
    \iv[6]_i_8_1 ,
    \iv[13]_i_2 ,
    \iv[1]_i_2 ,
    \iv[0]_i_5 ,
    \iv[0]_i_5_0 ,
    \sr[7]_i_16 ,
    \iv[0]_i_5_1 ,
    \iv[9]_i_7 ,
    \iv[11]_i_9 ,
    \iv[10]_i_5_1 ,
    SR,
    \grn_reg[15]_1 ,
    \grn_reg[15]_2 ,
    clk);
  output \grn_reg[0]_0 ;
  output \grn_reg[1]_0 ;
  output \grn_reg[2]_0 ;
  output \grn_reg[3]_0 ;
  output \grn_reg[4]_0 ;
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
  output \sr_reg[0] ;
  output \sr_reg[1] ;
  output \sr_reg[2] ;
  output \sr_reg[4] ;
  output \iv[13]_i_16_0 ;
  output \iv[14]_i_22 ;
  output tout__1_carry_i_10;
  output \iv[0]_i_17_0 ;
  output \badr[5]_INST_0_i_1_0 ;
  output \sr_reg[6] ;
  output \bdatw[8]_INST_0_i_2 ;
  output \iv[13]_i_21_0 ;
  output \badr[7]_INST_0_i_1_0 ;
  output \iv[6]_i_18_0 ;
  output \iv[10]_i_21_0 ;
  output \badr[4]_INST_0_i_1_0 ;
  output \badr[2]_INST_0_i_1_0 ;
  output \iv[13]_i_30_0 ;
  output \iv[14]_i_28 ;
  output \iv[0]_i_16 ;
  output \iv[13]_i_20_0 ;
  output \badr[13]_INST_0_i_1_0 ;
  output \sr_reg[6]_0 ;
  output \iv[1]_i_14_0 ;
  output \iv[5]_i_15_0 ;
  output \badr[1]_INST_0_i_1_0 ;
  output \badr[3]_INST_0_i_1_0 ;
  output \badr[5]_INST_0_i_1_1 ;
  output \iv[13]_i_35_0 ;
  output \iv[0]_i_17_1 ;
  output \iv[14]_i_28_0 ;
  output \bdatw[8]_INST_0_i_2_0 ;
  output \iv[5]_i_15_1 ;
  output \iv[14]_i_36_0 ;
  output \iv[0]_i_16_0 ;
  output \iv[0]_i_16_1 ;
  output \iv[13]_i_24_0 ;
  output \badr[11]_INST_0_i_1_0 ;
  output \iv[5]_i_15_2 ;
  output \iv[14]_i_22_0 ;
  output \iv[13]_i_35_1 ;
  output \iv[0]_i_16_2 ;
  output \badr[15]_INST_0_i_1_0 ;
  output \iv[14]_i_34 ;
  output \bdatw[8]_INST_0_i_2_1 ;
  output \iv[13]_i_28_0 ;
  output \iv[14]_i_22_1 ;
  output tout__1_carry_i_9;
  output \sr_reg[6]_1 ;
  output \sr_reg[6]_2 ;
  output \iv[11]_i_21_0 ;
  output \bdatw[8]_INST_0_i_2_2 ;
  output \iv[0]_i_16_3 ;
  output \iv[0]_i_18_0 ;
  output \bdatw[8]_INST_0_i_2_3 ;
  output \bdatw[8]_INST_0_i_2_4 ;
  output \bdatw[8]_INST_0_i_2_5 ;
  output \iv[13]_i_28_1 ;
  output \bdatw[8]_INST_0_i_2_6 ;
  output \sr_reg[6]_3 ;
  output \sr_reg[6]_4 ;
  output \iv[0]_i_16_4 ;
  output \sr_reg[6]_5 ;
  output \bdatw[8]_INST_0_i_2_7 ;
  output \iv[0]_i_16_5 ;
  output \iv[10]_i_18_0 ;
  output [15:0]Q;
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
  input \badr[0]_INST_0_i_1_0 ;
  input \badr[1]_INST_0_i_1_1 ;
  input \badr[2]_INST_0_i_1_1 ;
  input \badr[3]_INST_0_i_1_1 ;
  input \badr[4]_INST_0_i_1_1 ;
  input \badr[5]_INST_0_i_1_2 ;
  input \badr[6]_INST_0_i_1_0 ;
  input \badr[7]_INST_0_i_1_1 ;
  input \badr[8]_INST_0_i_1_0 ;
  input \badr[9]_INST_0_i_1_0 ;
  input \badr[10]_INST_0_i_1_0 ;
  input \badr[11]_INST_0_i_1_1 ;
  input \badr[12]_INST_0_i_1_0 ;
  input \badr[13]_INST_0_i_1_1 ;
  input \badr[14]_INST_0_i_1_0 ;
  input \badr[15]_INST_0_i_1_1 ;
  input [15:0]out;
  input gr3_bus1__0_0;
  input [15:0]\badr[15]_INST_0_i_1_2 ;
  input gr4_bus1__0_1;
  input [15:0]\badr[15]_INST_0_i_3_0 ;
  input gr1_bus1__0;
  input [15:0]\badr[15]_INST_0_i_3_1 ;
  input gr2_bus1__0;
  input [15:0]\badr[15]_INST_0_i_2_0 ;
  input gr1_bus1__0_0;
  input [15:0]\badr[15]_INST_0_i_2_1 ;
  input gr2_bus1__0_1;
  input [15:0]\badr[15]_INST_0_i_2_2 ;
  input gr7_bus1__0;
  input [15:0]\badr[15]_INST_0_i_2_3 ;
  input gr0_bus1__0;
  input [15:0]\badr[15]_INST_0_i_2_4 ;
  input gr7_bus1__0_4;
  input [15:0]\badr[15]_INST_0_i_2_5 ;
  input gr0_bus1__0_5;
  input [15:0]\badr[15]_INST_0_i_2_6 ;
  input gr3_bus1__0;
  input [15:0]\badr[15]_INST_0_i_2_7 ;
  input gr4_bus1__0;
  input [15:0]\badr[15]_INST_0_i_3_2 ;
  input gr5_bus1__0_11;
  input [15:0]\badr[15]_INST_0_i_3_3 ;
  input gr6_bus1__0;
  input [15:0]\badr[15]_INST_0_i_2_8 ;
  input gr5_bus1__0_12;
  input [15:0]\badr[15]_INST_0_i_2_9 ;
  input gr6_bus1__0_13;
  input [4:0]\iv[10]_i_12 ;
  input [0:0]\bdatw[12]_INST_0_i_2 ;
  input gr3_bus1__0_16;
  input gr4_bus1__0_17;
  input \bdatw[12]_INST_0_i_17_0 ;
  input \bdatw[12]_INST_0_i_20_0 ;
  input \bdatw[12]_INST_0_i_20_1 ;
  input \bdatw[12]_INST_0_i_19_0 ;
  input gr0_bus1__0_22;
  input gr7_bus1__0_23;
  input \bdatw[12]_INST_0_i_20_2 ;
  input \bdatw[12]_INST_0_i_20_3 ;
  input gr4_bus1__0_33;
  input gr3_bus1__0_34;
  input gr7_bus1__0_18;
  input gr0_bus1__0_19;
  input \iv[9]_i_2 ;
  input \iv[6]_i_2 ;
  input \iv[0]_i_2 ;
  input \sr[7]_i_8 ;
  input [0:0]acmd;
  input \iv[10]_i_5 ;
  input \iv[10]_i_5_0 ;
  input \sr[6]_i_6 ;
  input \iv[12]_i_7 ;
  input \iv[13]_i_7 ;
  input \iv[6]_i_8_0 ;
  input \iv[6]_i_8_1 ;
  input \iv[13]_i_2 ;
  input \iv[1]_i_2 ;
  input \iv[0]_i_5 ;
  input \iv[0]_i_5_0 ;
  input \sr[7]_i_16 ;
  input \iv[0]_i_5_1 ;
  input \iv[9]_i_7 ;
  input \iv[11]_i_9 ;
  input \iv[10]_i_5_1 ;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_1 ;
  input [15:0]\grn_reg[15]_2 ;
  input clk;

  wire [15:0]Q;
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
  wire [0:0]acmd;
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
  wire \badr[10]_INST_0_i_10_n_0 ;
  wire \badr[10]_INST_0_i_11_n_0 ;
  wire \badr[10]_INST_0_i_12_n_0 ;
  wire \badr[10]_INST_0_i_14_n_0 ;
  wire \badr[10]_INST_0_i_15_n_0 ;
  wire \badr[10]_INST_0_i_1_0 ;
  wire \badr[10]_INST_0_i_2_n_0 ;
  wire \badr[10]_INST_0_i_3_n_0 ;
  wire \badr[10]_INST_0_i_8_n_0 ;
  wire \badr[10]_INST_0_i_9_n_0 ;
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
  wire \badr[14]_INST_0_i_2_n_0 ;
  wire \badr[14]_INST_0_i_3_n_0 ;
  wire \badr[14]_INST_0_i_8_n_0 ;
  wire \badr[14]_INST_0_i_9_n_0 ;
  wire \badr[15]_INST_0_i_10_n_0 ;
  wire \badr[15]_INST_0_i_11_n_0 ;
  wire \badr[15]_INST_0_i_12_n_0 ;
  wire \badr[15]_INST_0_i_14_n_0 ;
  wire \badr[15]_INST_0_i_17_n_0 ;
  wire \badr[15]_INST_0_i_1_0 ;
  wire \badr[15]_INST_0_i_1_1 ;
  wire [15:0]\badr[15]_INST_0_i_1_2 ;
  wire [15:0]\badr[15]_INST_0_i_2_0 ;
  wire [15:0]\badr[15]_INST_0_i_2_1 ;
  wire [15:0]\badr[15]_INST_0_i_2_2 ;
  wire [15:0]\badr[15]_INST_0_i_2_3 ;
  wire [15:0]\badr[15]_INST_0_i_2_4 ;
  wire [15:0]\badr[15]_INST_0_i_2_5 ;
  wire [15:0]\badr[15]_INST_0_i_2_6 ;
  wire [15:0]\badr[15]_INST_0_i_2_7 ;
  wire [15:0]\badr[15]_INST_0_i_2_8 ;
  wire [15:0]\badr[15]_INST_0_i_2_9 ;
  wire \badr[15]_INST_0_i_2_n_0 ;
  wire [15:0]\badr[15]_INST_0_i_3_0 ;
  wire [15:0]\badr[15]_INST_0_i_3_1 ;
  wire [15:0]\badr[15]_INST_0_i_3_2 ;
  wire [15:0]\badr[15]_INST_0_i_3_3 ;
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
  wire \badr[9]_INST_0_i_2_n_0 ;
  wire \badr[9]_INST_0_i_3_n_0 ;
  wire \badr[9]_INST_0_i_8_n_0 ;
  wire \badr[9]_INST_0_i_9_n_0 ;
  wire \bdatw[10]_INST_0_i_18_n_0 ;
  wire \bdatw[10]_INST_0_i_19_n_0 ;
  wire \bdatw[10]_INST_0_i_20_n_0 ;
  wire \bdatw[10]_INST_0_i_21_n_0 ;
  wire \bdatw[10]_INST_0_i_32_n_0 ;
  wire \bdatw[10]_INST_0_i_33_n_0 ;
  wire \bdatw[10]_INST_0_i_34_n_0 ;
  wire \bdatw[10]_INST_0_i_35_n_0 ;
  wire \bdatw[12]_INST_0_i_17_0 ;
  wire \bdatw[12]_INST_0_i_17_n_0 ;
  wire \bdatw[12]_INST_0_i_19_0 ;
  wire \bdatw[12]_INST_0_i_19_n_0 ;
  wire [0:0]\bdatw[12]_INST_0_i_2 ;
  wire \bdatw[12]_INST_0_i_20_0 ;
  wire \bdatw[12]_INST_0_i_20_1 ;
  wire \bdatw[12]_INST_0_i_20_2 ;
  wire \bdatw[12]_INST_0_i_20_3 ;
  wire \bdatw[12]_INST_0_i_20_n_0 ;
  wire \bdatw[12]_INST_0_i_21_n_0 ;
  wire \bdatw[12]_INST_0_i_32_n_0 ;
  wire \bdatw[12]_INST_0_i_35_n_0 ;
  wire \bdatw[12]_INST_0_i_36_n_0 ;
  wire \bdatw[12]_INST_0_i_39_n_0 ;
  wire \bdatw[8]_INST_0_i_17_n_0 ;
  wire \bdatw[8]_INST_0_i_18_n_0 ;
  wire \bdatw[8]_INST_0_i_19_n_0 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_20_n_0 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_2_2 ;
  wire \bdatw[8]_INST_0_i_2_3 ;
  wire \bdatw[8]_INST_0_i_2_4 ;
  wire \bdatw[8]_INST_0_i_2_5 ;
  wire \bdatw[8]_INST_0_i_2_6 ;
  wire \bdatw[8]_INST_0_i_2_7 ;
  wire \bdatw[8]_INST_0_i_31_n_0 ;
  wire \bdatw[8]_INST_0_i_32_n_0 ;
  wire \bdatw[8]_INST_0_i_33_n_0 ;
  wire \bdatw[8]_INST_0_i_34_n_0 ;
  wire \bdatw[9]_INST_0_i_16_n_0 ;
  wire \bdatw[9]_INST_0_i_17_n_0 ;
  wire \bdatw[9]_INST_0_i_18_n_0 ;
  wire \bdatw[9]_INST_0_i_19_n_0 ;
  wire \bdatw[9]_INST_0_i_30_n_0 ;
  wire \bdatw[9]_INST_0_i_31_n_0 ;
  wire \bdatw[9]_INST_0_i_32_n_0 ;
  wire \bdatw[9]_INST_0_i_33_n_0 ;
  wire clk;
  wire gr0_bus1__0;
  wire gr0_bus1__0_19;
  wire gr0_bus1__0_22;
  wire gr0_bus1__0_5;
  wire gr1_bus1__0;
  wire gr1_bus1__0_0;
  wire gr2_bus1__0;
  wire gr2_bus1__0_1;
  wire gr3_bus1__0;
  wire gr3_bus1__0_0;
  wire gr3_bus1__0_16;
  wire gr3_bus1__0_34;
  wire gr4_bus1__0;
  wire gr4_bus1__0_1;
  wire gr4_bus1__0_17;
  wire gr4_bus1__0_33;
  wire gr5_bus1__0_11;
  wire gr5_bus1__0_12;
  wire gr6_bus1__0;
  wire gr6_bus1__0_13;
  wire gr7_bus1__0;
  wire gr7_bus1__0_18;
  wire gr7_bus1__0_23;
  wire gr7_bus1__0_4;
  wire \grn_reg[0]_0 ;
  wire \grn_reg[10]_0 ;
  wire \grn_reg[11]_0 ;
  wire \grn_reg[12]_0 ;
  wire \grn_reg[13]_0 ;
  wire \grn_reg[14]_0 ;
  wire \grn_reg[15]_0 ;
  wire [0:0]\grn_reg[15]_1 ;
  wire [15:0]\grn_reg[15]_2 ;
  wire \grn_reg[1]_0 ;
  wire \grn_reg[2]_0 ;
  wire \grn_reg[3]_0 ;
  wire \grn_reg[4]_0 ;
  wire \grn_reg[5]_0 ;
  wire \grn_reg[6]_0 ;
  wire \grn_reg[7]_0 ;
  wire \grn_reg[8]_0 ;
  wire \grn_reg[9]_0 ;
  wire \iv[0]_i_16 ;
  wire \iv[0]_i_16_0 ;
  wire \iv[0]_i_16_1 ;
  wire \iv[0]_i_16_2 ;
  wire \iv[0]_i_16_3 ;
  wire \iv[0]_i_16_4 ;
  wire \iv[0]_i_16_5 ;
  wire \iv[0]_i_17_0 ;
  wire \iv[0]_i_17_1 ;
  wire \iv[0]_i_17_n_0 ;
  wire \iv[0]_i_18_0 ;
  wire \iv[0]_i_18_n_0 ;
  wire \iv[0]_i_2 ;
  wire \iv[0]_i_5 ;
  wire \iv[0]_i_5_0 ;
  wire \iv[0]_i_5_1 ;
  wire [4:0]\iv[10]_i_12 ;
  wire \iv[10]_i_18_0 ;
  wire \iv[10]_i_21_0 ;
  wire \iv[10]_i_5 ;
  wire \iv[10]_i_5_0 ;
  wire \iv[10]_i_5_1 ;
  wire \iv[11]_i_21_0 ;
  wire \iv[11]_i_21_n_0 ;
  wire \iv[11]_i_22_n_0 ;
  wire \iv[11]_i_9 ;
  wire \iv[12]_i_7 ;
  wire \iv[13]_i_16_0 ;
  wire \iv[13]_i_16_n_0 ;
  wire \iv[13]_i_18_n_0 ;
  wire \iv[13]_i_19_n_0 ;
  wire \iv[13]_i_2 ;
  wire \iv[13]_i_20_0 ;
  wire \iv[13]_i_20_n_0 ;
  wire \iv[13]_i_21_0 ;
  wire \iv[13]_i_21_n_0 ;
  wire \iv[13]_i_24_0 ;
  wire \iv[13]_i_26_n_0 ;
  wire \iv[13]_i_28_0 ;
  wire \iv[13]_i_28_1 ;
  wire \iv[13]_i_30_0 ;
  wire \iv[13]_i_30_n_0 ;
  wire \iv[13]_i_31_n_0 ;
  wire \iv[13]_i_32_n_0 ;
  wire \iv[13]_i_34_n_0 ;
  wire \iv[13]_i_35_0 ;
  wire \iv[13]_i_35_1 ;
  wire \iv[13]_i_35_n_0 ;
  wire \iv[13]_i_36_n_0 ;
  wire \iv[13]_i_7 ;
  wire \iv[14]_i_22 ;
  wire \iv[14]_i_22_0 ;
  wire \iv[14]_i_22_1 ;
  wire \iv[14]_i_28 ;
  wire \iv[14]_i_28_0 ;
  wire \iv[14]_i_34 ;
  wire \iv[14]_i_36_0 ;
  wire \iv[1]_i_12_n_0 ;
  wire \iv[1]_i_13_n_0 ;
  wire \iv[1]_i_14_0 ;
  wire \iv[1]_i_2 ;
  wire \iv[5]_i_14_n_0 ;
  wire \iv[5]_i_15_0 ;
  wire \iv[5]_i_15_1 ;
  wire \iv[5]_i_15_2 ;
  wire \iv[5]_i_15_n_0 ;
  wire \iv[5]_i_16_n_0 ;
  wire \iv[5]_i_17_n_0 ;
  wire \iv[6]_i_16_n_0 ;
  wire \iv[6]_i_18_0 ;
  wire \iv[6]_i_18_n_0 ;
  wire \iv[6]_i_2 ;
  wire \iv[6]_i_20_n_0 ;
  wire \iv[6]_i_8_0 ;
  wire \iv[6]_i_8_1 ;
  wire \iv[9]_i_12_n_0 ;
  wire \iv[9]_i_13_n_0 ;
  wire \iv[9]_i_2 ;
  wire \iv[9]_i_21_n_0 ;
  wire \iv[9]_i_22_n_0 ;
  wire \iv[9]_i_23_n_0 ;
  wire \iv[9]_i_7 ;
  wire [15:0]out;
  wire \sr[6]_i_6 ;
  wire \sr[7]_i_16 ;
  wire \sr[7]_i_8 ;
  wire \sr_reg[0] ;
  wire \sr_reg[1] ;
  wire \sr_reg[2] ;
  wire \sr_reg[4] ;
  wire \sr_reg[6] ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[6]_1 ;
  wire \sr_reg[6]_2 ;
  wire \sr_reg[6]_3 ;
  wire \sr_reg[6]_4 ;
  wire \sr_reg[6]_5 ;
  wire tout__1_carry_i_10;
  wire tout__1_carry_i_9;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[0]_INST_0_i_1 
       (.I0(\badr[0]_INST_0_i_2_n_0 ),
        .I1(\badr[0]_INST_0_i_3_n_0 ),
        .I2(\abus_o[0] ),
        .I3(\abus_o[0]_0 ),
        .I4(\abus_o[0]_1 ),
        .I5(\abus_o[0]_2 ),
        .O(\grn_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_2_0 [0]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_2_1 [0]),
        .I3(gr2_bus1__0_1),
        .O(\badr[0]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_4 [0]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[15]_INST_0_i_2_5 [0]),
        .I3(gr0_bus1__0_5),
        .O(\badr[0]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_8 [0]),
        .I1(gr5_bus1__0_12),
        .I2(\badr[15]_INST_0_i_2_9 [0]),
        .I3(gr6_bus1__0_13),
        .O(\badr[0]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_2 [0]),
        .I1(gr5_bus1__0_11),
        .I2(\badr[15]_INST_0_i_3_3 [0]),
        .I3(gr6_bus1__0),
        .O(\badr[0]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_0 [0]),
        .I1(gr1_bus1__0),
        .I2(\badr[15]_INST_0_i_3_1 [0]),
        .I3(gr2_bus1__0),
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
        .I1(out[0]),
        .I2(gr3_bus1__0_0),
        .I3(\badr[15]_INST_0_i_1_2 [0]),
        .I4(gr4_bus1__0_1),
        .I5(\badr[0]_INST_0_i_15_n_0 ),
        .O(\badr[0]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_2_2 [0]),
        .I1(gr7_bus1__0),
        .I2(\badr[15]_INST_0_i_2_3 [0]),
        .I3(gr0_bus1__0),
        .O(\badr[0]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_6 [0]),
        .I1(gr3_bus1__0),
        .I2(\badr[15]_INST_0_i_2_7 [0]),
        .I3(gr4_bus1__0),
        .O(\badr[0]_INST_0_i_9_n_0 ));
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
       (.I0(\badr[15]_INST_0_i_2_0 [10]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_2_1 [10]),
        .I3(gr2_bus1__0_1),
        .O(\badr[10]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_4 [10]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[15]_INST_0_i_2_5 [10]),
        .I3(gr0_bus1__0_5),
        .O(\badr[10]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_8 [10]),
        .I1(gr5_bus1__0_12),
        .I2(\badr[15]_INST_0_i_2_9 [10]),
        .I3(gr6_bus1__0_13),
        .O(\badr[10]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_2 [10]),
        .I1(gr5_bus1__0_11),
        .I2(\badr[15]_INST_0_i_3_3 [10]),
        .I3(gr6_bus1__0),
        .O(\badr[10]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_0 [10]),
        .I1(gr1_bus1__0),
        .I2(\badr[15]_INST_0_i_3_1 [10]),
        .I3(gr2_bus1__0),
        .O(\badr[10]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[10]_INST_0_i_2 
       (.I0(\badr[10]_INST_0_i_8_n_0 ),
        .I1(\badr[10]_INST_0_i_9_n_0 ),
        .I2(\badr[10]_INST_0_i_10_n_0 ),
        .I3(\badr[10]_INST_0_i_11_n_0 ),
        .I4(\badr[10]_INST_0_i_12_n_0 ),
        .I5(\badr[10]_INST_0_i_1_0 ),
        .O(\badr[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[10]_INST_0_i_3 
       (.I0(\badr[10]_INST_0_i_14_n_0 ),
        .I1(out[10]),
        .I2(gr3_bus1__0_0),
        .I3(\badr[15]_INST_0_i_1_2 [10]),
        .I4(gr4_bus1__0_1),
        .I5(\badr[10]_INST_0_i_15_n_0 ),
        .O(\badr[10]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_2_2 [10]),
        .I1(gr7_bus1__0),
        .I2(\badr[15]_INST_0_i_2_3 [10]),
        .I3(gr0_bus1__0),
        .O(\badr[10]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_6 [10]),
        .I1(gr3_bus1__0),
        .I2(\badr[15]_INST_0_i_2_7 [10]),
        .I3(gr4_bus1__0),
        .O(\badr[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[11]_INST_0_i_1 
       (.I0(\badr[11]_INST_0_i_2_n_0 ),
        .I1(\badr[11]_INST_0_i_3_n_0 ),
        .I2(\abus_o[11] ),
        .I3(\abus_o[11]_0 ),
        .I4(\abus_o[11]_1 ),
        .I5(\abus_o[11]_2 ),
        .O(\grn_reg[11]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_2_0 [11]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_2_1 [11]),
        .I3(gr2_bus1__0_1),
        .O(\badr[11]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_4 [11]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[15]_INST_0_i_2_5 [11]),
        .I3(gr0_bus1__0_5),
        .O(\badr[11]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_8 [11]),
        .I1(gr5_bus1__0_12),
        .I2(\badr[15]_INST_0_i_2_9 [11]),
        .I3(gr6_bus1__0_13),
        .O(\badr[11]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_2 [11]),
        .I1(gr5_bus1__0_11),
        .I2(\badr[15]_INST_0_i_3_3 [11]),
        .I3(gr6_bus1__0),
        .O(\badr[11]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_0 [11]),
        .I1(gr1_bus1__0),
        .I2(\badr[15]_INST_0_i_3_1 [11]),
        .I3(gr2_bus1__0),
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
        .I1(out[11]),
        .I2(gr3_bus1__0_0),
        .I3(\badr[15]_INST_0_i_1_2 [11]),
        .I4(gr4_bus1__0_1),
        .I5(\badr[11]_INST_0_i_15_n_0 ),
        .O(\badr[11]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_2_2 [11]),
        .I1(gr7_bus1__0),
        .I2(\badr[15]_INST_0_i_2_3 [11]),
        .I3(gr0_bus1__0),
        .O(\badr[11]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_6 [11]),
        .I1(gr3_bus1__0),
        .I2(\badr[15]_INST_0_i_2_7 [11]),
        .I3(gr4_bus1__0),
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
        .O(\grn_reg[12]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_2_0 [12]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_2_1 [12]),
        .I3(gr2_bus1__0_1),
        .O(\badr[12]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_4 [12]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[15]_INST_0_i_2_5 [12]),
        .I3(gr0_bus1__0_5),
        .O(\badr[12]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_8 [12]),
        .I1(gr5_bus1__0_12),
        .I2(\badr[15]_INST_0_i_2_9 [12]),
        .I3(gr6_bus1__0_13),
        .O(\badr[12]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_2 [12]),
        .I1(gr5_bus1__0_11),
        .I2(\badr[15]_INST_0_i_3_3 [12]),
        .I3(gr6_bus1__0),
        .O(\badr[12]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_0 [12]),
        .I1(gr1_bus1__0),
        .I2(\badr[15]_INST_0_i_3_1 [12]),
        .I3(gr2_bus1__0),
        .O(\badr[12]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[12]_INST_0_i_2 
       (.I0(\badr[12]_INST_0_i_8_n_0 ),
        .I1(\badr[12]_INST_0_i_9_n_0 ),
        .I2(\badr[12]_INST_0_i_10_n_0 ),
        .I3(\badr[12]_INST_0_i_11_n_0 ),
        .I4(\badr[12]_INST_0_i_12_n_0 ),
        .I5(\badr[12]_INST_0_i_1_0 ),
        .O(\badr[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[12]_INST_0_i_3 
       (.I0(\badr[12]_INST_0_i_14_n_0 ),
        .I1(out[12]),
        .I2(gr3_bus1__0_0),
        .I3(\badr[15]_INST_0_i_1_2 [12]),
        .I4(gr4_bus1__0_1),
        .I5(\badr[12]_INST_0_i_15_n_0 ),
        .O(\badr[12]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_2_2 [12]),
        .I1(gr7_bus1__0),
        .I2(\badr[15]_INST_0_i_2_3 [12]),
        .I3(gr0_bus1__0),
        .O(\badr[12]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_6 [12]),
        .I1(gr3_bus1__0),
        .I2(\badr[15]_INST_0_i_2_7 [12]),
        .I3(gr4_bus1__0),
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
        .O(\grn_reg[13]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_2_0 [13]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_2_1 [13]),
        .I3(gr2_bus1__0_1),
        .O(\badr[13]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_4 [13]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[15]_INST_0_i_2_5 [13]),
        .I3(gr0_bus1__0_5),
        .O(\badr[13]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_8 [13]),
        .I1(gr5_bus1__0_12),
        .I2(\badr[15]_INST_0_i_2_9 [13]),
        .I3(gr6_bus1__0_13),
        .O(\badr[13]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_2 [13]),
        .I1(gr5_bus1__0_11),
        .I2(\badr[15]_INST_0_i_3_3 [13]),
        .I3(gr6_bus1__0),
        .O(\badr[13]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_0 [13]),
        .I1(gr1_bus1__0),
        .I2(\badr[15]_INST_0_i_3_1 [13]),
        .I3(gr2_bus1__0),
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
        .I1(out[13]),
        .I2(gr3_bus1__0_0),
        .I3(\badr[15]_INST_0_i_1_2 [13]),
        .I4(gr4_bus1__0_1),
        .I5(\badr[13]_INST_0_i_15_n_0 ),
        .O(\badr[13]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_2_2 [13]),
        .I1(gr7_bus1__0),
        .I2(\badr[15]_INST_0_i_2_3 [13]),
        .I3(gr0_bus1__0),
        .O(\badr[13]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_6 [13]),
        .I1(gr3_bus1__0),
        .I2(\badr[15]_INST_0_i_2_7 [13]),
        .I3(gr4_bus1__0),
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
        .O(\grn_reg[14]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_2_0 [14]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_2_1 [14]),
        .I3(gr2_bus1__0_1),
        .O(\badr[14]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_4 [14]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[15]_INST_0_i_2_5 [14]),
        .I3(gr0_bus1__0_5),
        .O(\badr[14]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_8 [14]),
        .I1(gr5_bus1__0_12),
        .I2(\badr[15]_INST_0_i_2_9 [14]),
        .I3(gr6_bus1__0_13),
        .O(\badr[14]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_2 [14]),
        .I1(gr5_bus1__0_11),
        .I2(\badr[15]_INST_0_i_3_3 [14]),
        .I3(gr6_bus1__0),
        .O(\badr[14]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_0 [14]),
        .I1(gr1_bus1__0),
        .I2(\badr[15]_INST_0_i_3_1 [14]),
        .I3(gr2_bus1__0),
        .O(\badr[14]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[14]_INST_0_i_2 
       (.I0(\badr[14]_INST_0_i_8_n_0 ),
        .I1(\badr[14]_INST_0_i_9_n_0 ),
        .I2(\badr[14]_INST_0_i_10_n_0 ),
        .I3(\badr[14]_INST_0_i_11_n_0 ),
        .I4(\badr[14]_INST_0_i_12_n_0 ),
        .I5(\badr[14]_INST_0_i_1_0 ),
        .O(\badr[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[14]_INST_0_i_3 
       (.I0(\badr[14]_INST_0_i_14_n_0 ),
        .I1(out[14]),
        .I2(gr3_bus1__0_0),
        .I3(\badr[15]_INST_0_i_1_2 [14]),
        .I4(gr4_bus1__0_1),
        .I5(\badr[14]_INST_0_i_15_n_0 ),
        .O(\badr[14]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_2_2 [14]),
        .I1(gr7_bus1__0),
        .I2(\badr[15]_INST_0_i_2_3 [14]),
        .I3(gr0_bus1__0),
        .O(\badr[14]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_6 [14]),
        .I1(gr3_bus1__0),
        .I2(\badr[15]_INST_0_i_2_7 [14]),
        .I3(gr4_bus1__0),
        .O(\badr[14]_INST_0_i_9_n_0 ));
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
       (.I0(\badr[15]_INST_0_i_2_0 [15]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_2_1 [15]),
        .I3(gr2_bus1__0_1),
        .O(\badr[15]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_4 [15]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[15]_INST_0_i_2_5 [15]),
        .I3(gr0_bus1__0_5),
        .O(\badr[15]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_8 [15]),
        .I1(gr5_bus1__0_12),
        .I2(\badr[15]_INST_0_i_2_9 [15]),
        .I3(gr6_bus1__0_13),
        .O(\badr[15]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_2 [15]),
        .I1(gr5_bus1__0_11),
        .I2(\badr[15]_INST_0_i_3_3 [15]),
        .I3(gr6_bus1__0),
        .O(\badr[15]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_3_0 [15]),
        .I1(gr1_bus1__0),
        .I2(\badr[15]_INST_0_i_3_1 [15]),
        .I3(gr2_bus1__0),
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
        .I1(out[15]),
        .I2(gr3_bus1__0_0),
        .I3(\badr[15]_INST_0_i_1_2 [15]),
        .I4(gr4_bus1__0_1),
        .I5(\badr[15]_INST_0_i_17_n_0 ),
        .O(\badr[15]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_2_2 [15]),
        .I1(gr7_bus1__0),
        .I2(\badr[15]_INST_0_i_2_3 [15]),
        .I3(gr0_bus1__0),
        .O(\badr[15]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_6 [15]),
        .I1(gr3_bus1__0),
        .I2(\badr[15]_INST_0_i_2_7 [15]),
        .I3(gr4_bus1__0),
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
       (.I0(\badr[15]_INST_0_i_2_0 [1]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_2_1 [1]),
        .I3(gr2_bus1__0_1),
        .O(\badr[1]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_4 [1]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[15]_INST_0_i_2_5 [1]),
        .I3(gr0_bus1__0_5),
        .O(\badr[1]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_8 [1]),
        .I1(gr5_bus1__0_12),
        .I2(\badr[15]_INST_0_i_2_9 [1]),
        .I3(gr6_bus1__0_13),
        .O(\badr[1]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_2 [1]),
        .I1(gr5_bus1__0_11),
        .I2(\badr[15]_INST_0_i_3_3 [1]),
        .I3(gr6_bus1__0),
        .O(\badr[1]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_0 [1]),
        .I1(gr1_bus1__0),
        .I2(\badr[15]_INST_0_i_3_1 [1]),
        .I3(gr2_bus1__0),
        .O(\badr[1]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[1]_INST_0_i_2 
       (.I0(\badr[1]_INST_0_i_8_n_0 ),
        .I1(\badr[1]_INST_0_i_9_n_0 ),
        .I2(\badr[1]_INST_0_i_10_n_0 ),
        .I3(\badr[1]_INST_0_i_11_n_0 ),
        .I4(\badr[1]_INST_0_i_12_n_0 ),
        .I5(\badr[1]_INST_0_i_1_1 ),
        .O(\badr[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[1]_INST_0_i_3 
       (.I0(\badr[1]_INST_0_i_14_n_0 ),
        .I1(out[1]),
        .I2(gr3_bus1__0_0),
        .I3(\badr[15]_INST_0_i_1_2 [1]),
        .I4(gr4_bus1__0_1),
        .I5(\badr[1]_INST_0_i_15_n_0 ),
        .O(\badr[1]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_2_2 [1]),
        .I1(gr7_bus1__0),
        .I2(\badr[15]_INST_0_i_2_3 [1]),
        .I3(gr0_bus1__0),
        .O(\badr[1]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_6 [1]),
        .I1(gr3_bus1__0),
        .I2(\badr[15]_INST_0_i_2_7 [1]),
        .I3(gr4_bus1__0),
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
       (.I0(\badr[15]_INST_0_i_2_0 [2]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_2_1 [2]),
        .I3(gr2_bus1__0_1),
        .O(\badr[2]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_4 [2]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[15]_INST_0_i_2_5 [2]),
        .I3(gr0_bus1__0_5),
        .O(\badr[2]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_8 [2]),
        .I1(gr5_bus1__0_12),
        .I2(\badr[15]_INST_0_i_2_9 [2]),
        .I3(gr6_bus1__0_13),
        .O(\badr[2]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_2 [2]),
        .I1(gr5_bus1__0_11),
        .I2(\badr[15]_INST_0_i_3_3 [2]),
        .I3(gr6_bus1__0),
        .O(\badr[2]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_0 [2]),
        .I1(gr1_bus1__0),
        .I2(\badr[15]_INST_0_i_3_1 [2]),
        .I3(gr2_bus1__0),
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
        .I1(out[2]),
        .I2(gr3_bus1__0_0),
        .I3(\badr[15]_INST_0_i_1_2 [2]),
        .I4(gr4_bus1__0_1),
        .I5(\badr[2]_INST_0_i_15_n_0 ),
        .O(\badr[2]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_2_2 [2]),
        .I1(gr7_bus1__0),
        .I2(\badr[15]_INST_0_i_2_3 [2]),
        .I3(gr0_bus1__0),
        .O(\badr[2]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_6 [2]),
        .I1(gr3_bus1__0),
        .I2(\badr[15]_INST_0_i_2_7 [2]),
        .I3(gr4_bus1__0),
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
       (.I0(\badr[15]_INST_0_i_2_0 [3]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_2_1 [3]),
        .I3(gr2_bus1__0_1),
        .O(\badr[3]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_4 [3]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[15]_INST_0_i_2_5 [3]),
        .I3(gr0_bus1__0_5),
        .O(\badr[3]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_8 [3]),
        .I1(gr5_bus1__0_12),
        .I2(\badr[15]_INST_0_i_2_9 [3]),
        .I3(gr6_bus1__0_13),
        .O(\badr[3]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_2 [3]),
        .I1(gr5_bus1__0_11),
        .I2(\badr[15]_INST_0_i_3_3 [3]),
        .I3(gr6_bus1__0),
        .O(\badr[3]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_0 [3]),
        .I1(gr1_bus1__0),
        .I2(\badr[15]_INST_0_i_3_1 [3]),
        .I3(gr2_bus1__0),
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
        .I1(out[3]),
        .I2(gr3_bus1__0_0),
        .I3(\badr[15]_INST_0_i_1_2 [3]),
        .I4(gr4_bus1__0_1),
        .I5(\badr[3]_INST_0_i_15_n_0 ),
        .O(\badr[3]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_2_2 [3]),
        .I1(gr7_bus1__0),
        .I2(\badr[15]_INST_0_i_2_3 [3]),
        .I3(gr0_bus1__0),
        .O(\badr[3]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_6 [3]),
        .I1(gr3_bus1__0),
        .I2(\badr[15]_INST_0_i_2_7 [3]),
        .I3(gr4_bus1__0),
        .O(\badr[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[4]_INST_0_i_1 
       (.I0(\badr[4]_INST_0_i_2_n_0 ),
        .I1(\badr[4]_INST_0_i_3_n_0 ),
        .I2(\abus_o[4] ),
        .I3(\abus_o[4]_0 ),
        .I4(\abus_o[4]_1 ),
        .I5(\abus_o[4]_2 ),
        .O(\grn_reg[4]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_2_0 [4]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_2_1 [4]),
        .I3(gr2_bus1__0_1),
        .O(\badr[4]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_4 [4]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[15]_INST_0_i_2_5 [4]),
        .I3(gr0_bus1__0_5),
        .O(\badr[4]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_8 [4]),
        .I1(gr5_bus1__0_12),
        .I2(\badr[15]_INST_0_i_2_9 [4]),
        .I3(gr6_bus1__0_13),
        .O(\badr[4]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_2 [4]),
        .I1(gr5_bus1__0_11),
        .I2(\badr[15]_INST_0_i_3_3 [4]),
        .I3(gr6_bus1__0),
        .O(\badr[4]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_0 [4]),
        .I1(gr1_bus1__0),
        .I2(\badr[15]_INST_0_i_3_1 [4]),
        .I3(gr2_bus1__0),
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
        .I1(out[4]),
        .I2(gr3_bus1__0_0),
        .I3(\badr[15]_INST_0_i_1_2 [4]),
        .I4(gr4_bus1__0_1),
        .I5(\badr[4]_INST_0_i_15_n_0 ),
        .O(\badr[4]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_2_2 [4]),
        .I1(gr7_bus1__0),
        .I2(\badr[15]_INST_0_i_2_3 [4]),
        .I3(gr0_bus1__0),
        .O(\badr[4]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_6 [4]),
        .I1(gr3_bus1__0),
        .I2(\badr[15]_INST_0_i_2_7 [4]),
        .I3(gr4_bus1__0),
        .O(\badr[4]_INST_0_i_9_n_0 ));
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
       (.I0(\badr[15]_INST_0_i_2_0 [5]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_2_1 [5]),
        .I3(gr2_bus1__0_1),
        .O(\badr[5]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_4 [5]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[15]_INST_0_i_2_5 [5]),
        .I3(gr0_bus1__0_5),
        .O(\badr[5]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_8 [5]),
        .I1(gr5_bus1__0_12),
        .I2(\badr[15]_INST_0_i_2_9 [5]),
        .I3(gr6_bus1__0_13),
        .O(\badr[5]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_2 [5]),
        .I1(gr5_bus1__0_11),
        .I2(\badr[15]_INST_0_i_3_3 [5]),
        .I3(gr6_bus1__0),
        .O(\badr[5]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_0 [5]),
        .I1(gr1_bus1__0),
        .I2(\badr[15]_INST_0_i_3_1 [5]),
        .I3(gr2_bus1__0),
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
        .I1(out[5]),
        .I2(gr3_bus1__0_0),
        .I3(\badr[15]_INST_0_i_1_2 [5]),
        .I4(gr4_bus1__0_1),
        .I5(\badr[5]_INST_0_i_15_n_0 ),
        .O(\badr[5]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_2_2 [5]),
        .I1(gr7_bus1__0),
        .I2(\badr[15]_INST_0_i_2_3 [5]),
        .I3(gr0_bus1__0),
        .O(\badr[5]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_6 [5]),
        .I1(gr3_bus1__0),
        .I2(\badr[15]_INST_0_i_2_7 [5]),
        .I3(gr4_bus1__0),
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
       (.I0(\badr[15]_INST_0_i_2_0 [6]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_2_1 [6]),
        .I3(gr2_bus1__0_1),
        .O(\badr[6]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_4 [6]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[15]_INST_0_i_2_5 [6]),
        .I3(gr0_bus1__0_5),
        .O(\badr[6]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_8 [6]),
        .I1(gr5_bus1__0_12),
        .I2(\badr[15]_INST_0_i_2_9 [6]),
        .I3(gr6_bus1__0_13),
        .O(\badr[6]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_2 [6]),
        .I1(gr5_bus1__0_11),
        .I2(\badr[15]_INST_0_i_3_3 [6]),
        .I3(gr6_bus1__0),
        .O(\badr[6]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_0 [6]),
        .I1(gr1_bus1__0),
        .I2(\badr[15]_INST_0_i_3_1 [6]),
        .I3(gr2_bus1__0),
        .O(\badr[6]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[6]_INST_0_i_2 
       (.I0(\badr[6]_INST_0_i_8_n_0 ),
        .I1(\badr[6]_INST_0_i_9_n_0 ),
        .I2(\badr[6]_INST_0_i_10_n_0 ),
        .I3(\badr[6]_INST_0_i_11_n_0 ),
        .I4(\badr[6]_INST_0_i_12_n_0 ),
        .I5(\badr[6]_INST_0_i_1_0 ),
        .O(\badr[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[6]_INST_0_i_3 
       (.I0(\badr[6]_INST_0_i_14_n_0 ),
        .I1(out[6]),
        .I2(gr3_bus1__0_0),
        .I3(\badr[15]_INST_0_i_1_2 [6]),
        .I4(gr4_bus1__0_1),
        .I5(\badr[6]_INST_0_i_15_n_0 ),
        .O(\badr[6]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_2_2 [6]),
        .I1(gr7_bus1__0),
        .I2(\badr[15]_INST_0_i_2_3 [6]),
        .I3(gr0_bus1__0),
        .O(\badr[6]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_6 [6]),
        .I1(gr3_bus1__0),
        .I2(\badr[15]_INST_0_i_2_7 [6]),
        .I3(gr4_bus1__0),
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
       (.I0(\badr[15]_INST_0_i_2_0 [7]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_2_1 [7]),
        .I3(gr2_bus1__0_1),
        .O(\badr[7]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_4 [7]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[15]_INST_0_i_2_5 [7]),
        .I3(gr0_bus1__0_5),
        .O(\badr[7]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_8 [7]),
        .I1(gr5_bus1__0_12),
        .I2(\badr[15]_INST_0_i_2_9 [7]),
        .I3(gr6_bus1__0_13),
        .O(\badr[7]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_2 [7]),
        .I1(gr5_bus1__0_11),
        .I2(\badr[15]_INST_0_i_3_3 [7]),
        .I3(gr6_bus1__0),
        .O(\badr[7]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_0 [7]),
        .I1(gr1_bus1__0),
        .I2(\badr[15]_INST_0_i_3_1 [7]),
        .I3(gr2_bus1__0),
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
        .I1(out[7]),
        .I2(gr3_bus1__0_0),
        .I3(\badr[15]_INST_0_i_1_2 [7]),
        .I4(gr4_bus1__0_1),
        .I5(\badr[7]_INST_0_i_15_n_0 ),
        .O(\badr[7]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_2_2 [7]),
        .I1(gr7_bus1__0),
        .I2(\badr[15]_INST_0_i_2_3 [7]),
        .I3(gr0_bus1__0),
        .O(\badr[7]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_6 [7]),
        .I1(gr3_bus1__0),
        .I2(\badr[15]_INST_0_i_2_7 [7]),
        .I3(gr4_bus1__0),
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
       (.I0(\badr[15]_INST_0_i_2_0 [8]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_2_1 [8]),
        .I3(gr2_bus1__0_1),
        .O(\badr[8]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_4 [8]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[15]_INST_0_i_2_5 [8]),
        .I3(gr0_bus1__0_5),
        .O(\badr[8]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_8 [8]),
        .I1(gr5_bus1__0_12),
        .I2(\badr[15]_INST_0_i_2_9 [8]),
        .I3(gr6_bus1__0_13),
        .O(\badr[8]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_2 [8]),
        .I1(gr5_bus1__0_11),
        .I2(\badr[15]_INST_0_i_3_3 [8]),
        .I3(gr6_bus1__0),
        .O(\badr[8]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_0 [8]),
        .I1(gr1_bus1__0),
        .I2(\badr[15]_INST_0_i_3_1 [8]),
        .I3(gr2_bus1__0),
        .O(\badr[8]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[8]_INST_0_i_2 
       (.I0(\badr[8]_INST_0_i_8_n_0 ),
        .I1(\badr[8]_INST_0_i_9_n_0 ),
        .I2(\badr[8]_INST_0_i_10_n_0 ),
        .I3(\badr[8]_INST_0_i_11_n_0 ),
        .I4(\badr[8]_INST_0_i_12_n_0 ),
        .I5(\badr[8]_INST_0_i_1_0 ),
        .O(\badr[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[8]_INST_0_i_3 
       (.I0(\badr[8]_INST_0_i_14_n_0 ),
        .I1(out[8]),
        .I2(gr3_bus1__0_0),
        .I3(\badr[15]_INST_0_i_1_2 [8]),
        .I4(gr4_bus1__0_1),
        .I5(\badr[8]_INST_0_i_15_n_0 ),
        .O(\badr[8]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_2_2 [8]),
        .I1(gr7_bus1__0),
        .I2(\badr[15]_INST_0_i_2_3 [8]),
        .I3(gr0_bus1__0),
        .O(\badr[8]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_6 [8]),
        .I1(gr3_bus1__0),
        .I2(\badr[15]_INST_0_i_2_7 [8]),
        .I3(gr4_bus1__0),
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
       (.I0(\badr[15]_INST_0_i_2_0 [9]),
        .I1(gr1_bus1__0_0),
        .I2(\badr[15]_INST_0_i_2_1 [9]),
        .I3(gr2_bus1__0_1),
        .O(\badr[9]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_2_4 [9]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[15]_INST_0_i_2_5 [9]),
        .I3(gr0_bus1__0_5),
        .O(\badr[9]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_2_8 [9]),
        .I1(gr5_bus1__0_12),
        .I2(\badr[15]_INST_0_i_2_9 [9]),
        .I3(gr6_bus1__0_13),
        .O(\badr[9]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_3_2 [9]),
        .I1(gr5_bus1__0_11),
        .I2(\badr[15]_INST_0_i_3_3 [9]),
        .I3(gr6_bus1__0),
        .O(\badr[9]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3_0 [9]),
        .I1(gr1_bus1__0),
        .I2(\badr[15]_INST_0_i_3_1 [9]),
        .I3(gr2_bus1__0),
        .O(\badr[9]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[9]_INST_0_i_2 
       (.I0(\badr[9]_INST_0_i_8_n_0 ),
        .I1(\badr[9]_INST_0_i_9_n_0 ),
        .I2(\badr[9]_INST_0_i_10_n_0 ),
        .I3(\badr[9]_INST_0_i_11_n_0 ),
        .I4(\badr[9]_INST_0_i_12_n_0 ),
        .I5(\badr[9]_INST_0_i_1_0 ),
        .O(\badr[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[9]_INST_0_i_3 
       (.I0(\badr[9]_INST_0_i_14_n_0 ),
        .I1(out[9]),
        .I2(gr3_bus1__0_0),
        .I3(\badr[15]_INST_0_i_1_2 [9]),
        .I4(gr4_bus1__0_1),
        .I5(\badr[9]_INST_0_i_15_n_0 ),
        .O(\badr[9]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_2_2 [9]),
        .I1(gr7_bus1__0),
        .I2(\badr[15]_INST_0_i_2_3 [9]),
        .I3(gr0_bus1__0),
        .O(\badr[9]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_2_6 [9]),
        .I1(gr3_bus1__0),
        .I2(\badr[15]_INST_0_i_2_7 [9]),
        .I3(gr4_bus1__0),
        .O(\badr[9]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[10]_INST_0_i_18 
       (.I0(\bdatw[10]_INST_0_i_32_n_0 ),
        .I1(out[2]),
        .I2(gr3_bus1__0_16),
        .I3(\badr[15]_INST_0_i_1_2 [2]),
        .I4(gr4_bus1__0_17),
        .I5(\bdatw[10]_INST_0_i_33_n_0 ),
        .O(\bdatw[10]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[10]_INST_0_i_19 
       (.I0(\bdatw[10]_INST_0_i_34_n_0 ),
        .I1(gr0_bus1__0_22),
        .I2(\badr[15]_INST_0_i_2_5 [2]),
        .I3(gr7_bus1__0_23),
        .I4(\badr[15]_INST_0_i_2_4 [2]),
        .O(\bdatw[10]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[10]_INST_0_i_20 
       (.I0(\bdatw[10]_INST_0_i_35_n_0 ),
        .I1(gr4_bus1__0_33),
        .I2(\badr[15]_INST_0_i_2_7 [2]),
        .I3(gr3_bus1__0_34),
        .I4(\badr[15]_INST_0_i_2_6 [2]),
        .O(\bdatw[10]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_21 
       (.I0(\badr[15]_INST_0_i_2_2 [2]),
        .I1(gr7_bus1__0_18),
        .I2(\badr[15]_INST_0_i_2_3 [2]),
        .I3(gr0_bus1__0_19),
        .O(\bdatw[10]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hC00000A000000000)) 
    \bdatw[10]_INST_0_i_32 
       (.I0(\badr[15]_INST_0_i_3_2 [2]),
        .I1(\badr[15]_INST_0_i_3_3 [2]),
        .I2(\bdatw[12]_INST_0_i_17_0 ),
        .I3(\bdatw[12]_INST_0_i_20_0 ),
        .I4(\bdatw[12]_INST_0_i_20_1 ),
        .I5(\bdatw[12]_INST_0_i_19_0 ),
        .O(\bdatw[10]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h00C00000000000A0)) 
    \bdatw[10]_INST_0_i_33 
       (.I0(\badr[15]_INST_0_i_3_0 [2]),
        .I1(\badr[15]_INST_0_i_3_1 [2]),
        .I2(\bdatw[12]_INST_0_i_17_0 ),
        .I3(\bdatw[12]_INST_0_i_20_3 ),
        .I4(\bdatw[12]_INST_0_i_20_0 ),
        .I5(\bdatw[12]_INST_0_i_20_1 ),
        .O(\bdatw[10]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hC00000A000000000)) 
    \bdatw[10]_INST_0_i_34 
       (.I0(\badr[15]_INST_0_i_2_8 [2]),
        .I1(\badr[15]_INST_0_i_2_9 [2]),
        .I2(\bdatw[12]_INST_0_i_20_2 ),
        .I3(\bdatw[12]_INST_0_i_20_0 ),
        .I4(\bdatw[12]_INST_0_i_20_1 ),
        .I5(\bdatw[12]_INST_0_i_19_0 ),
        .O(\bdatw[10]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h00C00000000000A0)) 
    \bdatw[10]_INST_0_i_35 
       (.I0(\badr[15]_INST_0_i_2_0 [2]),
        .I1(\badr[15]_INST_0_i_2_1 [2]),
        .I2(\bdatw[12]_INST_0_i_20_2 ),
        .I3(\bdatw[12]_INST_0_i_20_3 ),
        .I4(\bdatw[12]_INST_0_i_20_0 ),
        .I5(\bdatw[12]_INST_0_i_20_1 ),
        .O(\bdatw[10]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \bdatw[10]_INST_0_i_7 
       (.I0(\bdatw[10]_INST_0_i_18_n_0 ),
        .I1(\iv[10]_i_12 [2]),
        .I2(\bdatw[12]_INST_0_i_2 ),
        .I3(\bdatw[10]_INST_0_i_19_n_0 ),
        .I4(\bdatw[10]_INST_0_i_20_n_0 ),
        .I5(\bdatw[10]_INST_0_i_21_n_0 ),
        .O(\sr_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[12]_INST_0_i_17 
       (.I0(\bdatw[12]_INST_0_i_32_n_0 ),
        .I1(out[4]),
        .I2(gr3_bus1__0_16),
        .I3(\badr[15]_INST_0_i_1_2 [4]),
        .I4(gr4_bus1__0_17),
        .I5(\bdatw[12]_INST_0_i_35_n_0 ),
        .O(\bdatw[12]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[12]_INST_0_i_19 
       (.I0(\bdatw[12]_INST_0_i_36_n_0 ),
        .I1(gr0_bus1__0_22),
        .I2(\badr[15]_INST_0_i_2_5 [4]),
        .I3(gr7_bus1__0_23),
        .I4(\badr[15]_INST_0_i_2_4 [4]),
        .O(\bdatw[12]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[12]_INST_0_i_20 
       (.I0(\bdatw[12]_INST_0_i_39_n_0 ),
        .I1(gr4_bus1__0_33),
        .I2(\badr[15]_INST_0_i_2_7 [4]),
        .I3(gr3_bus1__0_34),
        .I4(\badr[15]_INST_0_i_2_6 [4]),
        .O(\bdatw[12]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_21 
       (.I0(\badr[15]_INST_0_i_2_2 [4]),
        .I1(gr7_bus1__0_18),
        .I2(\badr[15]_INST_0_i_2_3 [4]),
        .I3(gr0_bus1__0_19),
        .O(\bdatw[12]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hC00000A000000000)) 
    \bdatw[12]_INST_0_i_32 
       (.I0(\badr[15]_INST_0_i_3_2 [4]),
        .I1(\badr[15]_INST_0_i_3_3 [4]),
        .I2(\bdatw[12]_INST_0_i_17_0 ),
        .I3(\bdatw[12]_INST_0_i_20_0 ),
        .I4(\bdatw[12]_INST_0_i_20_1 ),
        .I5(\bdatw[12]_INST_0_i_19_0 ),
        .O(\bdatw[12]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h00C00000000000A0)) 
    \bdatw[12]_INST_0_i_35 
       (.I0(\badr[15]_INST_0_i_3_0 [4]),
        .I1(\badr[15]_INST_0_i_3_1 [4]),
        .I2(\bdatw[12]_INST_0_i_17_0 ),
        .I3(\bdatw[12]_INST_0_i_20_3 ),
        .I4(\bdatw[12]_INST_0_i_20_0 ),
        .I5(\bdatw[12]_INST_0_i_20_1 ),
        .O(\bdatw[12]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hC00000A000000000)) 
    \bdatw[12]_INST_0_i_36 
       (.I0(\badr[15]_INST_0_i_2_8 [4]),
        .I1(\badr[15]_INST_0_i_2_9 [4]),
        .I2(\bdatw[12]_INST_0_i_20_2 ),
        .I3(\bdatw[12]_INST_0_i_20_0 ),
        .I4(\bdatw[12]_INST_0_i_20_1 ),
        .I5(\bdatw[12]_INST_0_i_19_0 ),
        .O(\bdatw[12]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00C00000000000A0)) 
    \bdatw[12]_INST_0_i_39 
       (.I0(\badr[15]_INST_0_i_2_0 [4]),
        .I1(\badr[15]_INST_0_i_2_1 [4]),
        .I2(\bdatw[12]_INST_0_i_20_2 ),
        .I3(\bdatw[12]_INST_0_i_20_3 ),
        .I4(\bdatw[12]_INST_0_i_20_0 ),
        .I5(\bdatw[12]_INST_0_i_20_1 ),
        .O(\bdatw[12]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \bdatw[12]_INST_0_i_7 
       (.I0(\bdatw[12]_INST_0_i_17_n_0 ),
        .I1(\iv[10]_i_12 [3]),
        .I2(\bdatw[12]_INST_0_i_2 ),
        .I3(\bdatw[12]_INST_0_i_19_n_0 ),
        .I4(\bdatw[12]_INST_0_i_20_n_0 ),
        .I5(\bdatw[12]_INST_0_i_21_n_0 ),
        .O(\sr_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[8]_INST_0_i_17 
       (.I0(\bdatw[8]_INST_0_i_31_n_0 ),
        .I1(out[0]),
        .I2(gr3_bus1__0_16),
        .I3(\badr[15]_INST_0_i_1_2 [0]),
        .I4(gr4_bus1__0_17),
        .I5(\bdatw[8]_INST_0_i_32_n_0 ),
        .O(\bdatw[8]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[8]_INST_0_i_18 
       (.I0(\bdatw[8]_INST_0_i_33_n_0 ),
        .I1(gr0_bus1__0_22),
        .I2(\badr[15]_INST_0_i_2_5 [0]),
        .I3(gr7_bus1__0_23),
        .I4(\badr[15]_INST_0_i_2_4 [0]),
        .O(\bdatw[8]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[8]_INST_0_i_19 
       (.I0(\bdatw[8]_INST_0_i_34_n_0 ),
        .I1(gr4_bus1__0_33),
        .I2(\badr[15]_INST_0_i_2_7 [0]),
        .I3(gr3_bus1__0_34),
        .I4(\badr[15]_INST_0_i_2_6 [0]),
        .O(\bdatw[8]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_2_2 [0]),
        .I1(gr7_bus1__0_18),
        .I2(\badr[15]_INST_0_i_2_3 [0]),
        .I3(gr0_bus1__0_19),
        .O(\bdatw[8]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hC00000A000000000)) 
    \bdatw[8]_INST_0_i_31 
       (.I0(\badr[15]_INST_0_i_3_2 [0]),
        .I1(\badr[15]_INST_0_i_3_3 [0]),
        .I2(\bdatw[12]_INST_0_i_17_0 ),
        .I3(\bdatw[12]_INST_0_i_20_0 ),
        .I4(\bdatw[12]_INST_0_i_20_1 ),
        .I5(\bdatw[12]_INST_0_i_19_0 ),
        .O(\bdatw[8]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00C00000000000A0)) 
    \bdatw[8]_INST_0_i_32 
       (.I0(\badr[15]_INST_0_i_3_0 [0]),
        .I1(\badr[15]_INST_0_i_3_1 [0]),
        .I2(\bdatw[12]_INST_0_i_17_0 ),
        .I3(\bdatw[12]_INST_0_i_20_3 ),
        .I4(\bdatw[12]_INST_0_i_20_0 ),
        .I5(\bdatw[12]_INST_0_i_20_1 ),
        .O(\bdatw[8]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hC00000A000000000)) 
    \bdatw[8]_INST_0_i_33 
       (.I0(\badr[15]_INST_0_i_2_8 [0]),
        .I1(\badr[15]_INST_0_i_2_9 [0]),
        .I2(\bdatw[12]_INST_0_i_20_2 ),
        .I3(\bdatw[12]_INST_0_i_20_0 ),
        .I4(\bdatw[12]_INST_0_i_20_1 ),
        .I5(\bdatw[12]_INST_0_i_19_0 ),
        .O(\bdatw[8]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00C00000000000A0)) 
    \bdatw[8]_INST_0_i_34 
       (.I0(\badr[15]_INST_0_i_2_0 [0]),
        .I1(\badr[15]_INST_0_i_2_1 [0]),
        .I2(\bdatw[12]_INST_0_i_20_2 ),
        .I3(\bdatw[12]_INST_0_i_20_3 ),
        .I4(\bdatw[12]_INST_0_i_20_0 ),
        .I5(\bdatw[12]_INST_0_i_20_1 ),
        .O(\bdatw[8]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \bdatw[8]_INST_0_i_7 
       (.I0(\bdatw[8]_INST_0_i_17_n_0 ),
        .I1(\iv[10]_i_12 [0]),
        .I2(\bdatw[12]_INST_0_i_2 ),
        .I3(\bdatw[8]_INST_0_i_18_n_0 ),
        .I4(\bdatw[8]_INST_0_i_19_n_0 ),
        .I5(\bdatw[8]_INST_0_i_20_n_0 ),
        .O(\sr_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[9]_INST_0_i_16 
       (.I0(\bdatw[9]_INST_0_i_30_n_0 ),
        .I1(out[1]),
        .I2(gr3_bus1__0_16),
        .I3(\badr[15]_INST_0_i_1_2 [1]),
        .I4(gr4_bus1__0_17),
        .I5(\bdatw[9]_INST_0_i_31_n_0 ),
        .O(\bdatw[9]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[9]_INST_0_i_17 
       (.I0(\bdatw[9]_INST_0_i_32_n_0 ),
        .I1(gr0_bus1__0_22),
        .I2(\badr[15]_INST_0_i_2_5 [1]),
        .I3(gr7_bus1__0_23),
        .I4(\badr[15]_INST_0_i_2_4 [1]),
        .O(\bdatw[9]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[9]_INST_0_i_18 
       (.I0(\bdatw[9]_INST_0_i_33_n_0 ),
        .I1(gr4_bus1__0_33),
        .I2(\badr[15]_INST_0_i_2_7 [1]),
        .I3(gr3_bus1__0_34),
        .I4(\badr[15]_INST_0_i_2_6 [1]),
        .O(\bdatw[9]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_2_2 [1]),
        .I1(gr7_bus1__0_18),
        .I2(\badr[15]_INST_0_i_2_3 [1]),
        .I3(gr0_bus1__0_19),
        .O(\bdatw[9]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hC00000A000000000)) 
    \bdatw[9]_INST_0_i_30 
       (.I0(\badr[15]_INST_0_i_3_2 [1]),
        .I1(\badr[15]_INST_0_i_3_3 [1]),
        .I2(\bdatw[12]_INST_0_i_17_0 ),
        .I3(\bdatw[12]_INST_0_i_20_0 ),
        .I4(\bdatw[12]_INST_0_i_20_1 ),
        .I5(\bdatw[12]_INST_0_i_19_0 ),
        .O(\bdatw[9]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00C00000000000A0)) 
    \bdatw[9]_INST_0_i_31 
       (.I0(\badr[15]_INST_0_i_3_0 [1]),
        .I1(\badr[15]_INST_0_i_3_1 [1]),
        .I2(\bdatw[12]_INST_0_i_17_0 ),
        .I3(\bdatw[12]_INST_0_i_20_3 ),
        .I4(\bdatw[12]_INST_0_i_20_0 ),
        .I5(\bdatw[12]_INST_0_i_20_1 ),
        .O(\bdatw[9]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hC00000A000000000)) 
    \bdatw[9]_INST_0_i_32 
       (.I0(\badr[15]_INST_0_i_2_8 [1]),
        .I1(\badr[15]_INST_0_i_2_9 [1]),
        .I2(\bdatw[12]_INST_0_i_20_2 ),
        .I3(\bdatw[12]_INST_0_i_20_0 ),
        .I4(\bdatw[12]_INST_0_i_20_1 ),
        .I5(\bdatw[12]_INST_0_i_19_0 ),
        .O(\bdatw[9]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h00C00000000000A0)) 
    \bdatw[9]_INST_0_i_33 
       (.I0(\badr[15]_INST_0_i_2_0 [1]),
        .I1(\badr[15]_INST_0_i_2_1 [1]),
        .I2(\bdatw[12]_INST_0_i_20_2 ),
        .I3(\bdatw[12]_INST_0_i_20_3 ),
        .I4(\bdatw[12]_INST_0_i_20_0 ),
        .I5(\bdatw[12]_INST_0_i_20_1 ),
        .O(\bdatw[9]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \bdatw[9]_INST_0_i_7 
       (.I0(\bdatw[9]_INST_0_i_16_n_0 ),
        .I1(\iv[10]_i_12 [1]),
        .I2(\bdatw[12]_INST_0_i_2 ),
        .I3(\bdatw[9]_INST_0_i_17_n_0 ),
        .I4(\bdatw[9]_INST_0_i_18_n_0 ),
        .I5(\bdatw[9]_INST_0_i_19_n_0 ),
        .O(\sr_reg[1] ));
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
  LUT6 #(
    .INIT(64'h5030503F5F305F3F)) 
    \iv[0]_i_12 
       (.I0(\iv[13]_i_35_n_0 ),
        .I1(\iv[13]_i_36_n_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\iv[10]_i_5_0 ),
        .I4(\iv[13]_i_31_n_0 ),
        .I5(\iv[13]_i_30_n_0 ),
        .O(\iv[13]_i_30_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[0]_i_15 
       (.I0(\grn_reg[6]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[7]_0 ),
        .O(\badr[7]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[0]_i_17 
       (.I0(\grn_reg[8]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[9]_0 ),
        .O(\iv[0]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \iv[0]_i_18 
       (.I0(\grn_reg[3]_0 ),
        .I1(\grn_reg[2]_0 ),
        .I2(\iv[12]_i_7 ),
        .I3(\iv[10]_i_5_0 ),
        .I4(\badr[5]_INST_0_i_1_0 ),
        .O(\iv[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFB8FF00FFB8)) 
    \iv[0]_i_6 
       (.I0(\badr[7]_INST_0_i_1_0 ),
        .I1(\iv[10]_i_5_0 ),
        .I2(\iv[0]_i_17_n_0 ),
        .I3(\iv[0]_i_2 ),
        .I4(\iv[10]_i_5 ),
        .I5(\iv[0]_i_18_n_0 ),
        .O(\iv[0]_i_18_0 ));
  LUT6 #(
    .INIT(64'h7FFF7F0F0FFF0F0F)) 
    \iv[10]_i_14 
       (.I0(\grn_reg[15]_0 ),
        .I1(\iv[10]_i_5_0 ),
        .I2(\iv[10]_i_5_1 ),
        .I3(\iv[10]_i_5 ),
        .I4(\bdatw[8]_INST_0_i_2_6 ),
        .I5(\bdatw[8]_INST_0_i_2_7 ),
        .O(\iv[10]_i_18_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[10]_i_15 
       (.I0(\iv[0]_i_16_0 ),
        .I1(\iv[10]_i_5 ),
        .I2(\iv[0]_i_16_1 ),
        .O(\iv[14]_i_36_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[10]_i_17 
       (.I0(\grn_reg[13]_0 ),
        .I1(\grn_reg[12]_0 ),
        .I2(\grn_reg[11]_0 ),
        .I3(\grn_reg[10]_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[12]_i_7 ),
        .O(\bdatw[8]_INST_0_i_2_6 ));
  LUT4 #(
    .INIT(16'hF5F3)) 
    \iv[10]_i_18 
       (.I0(\grn_reg[15]_0 ),
        .I1(\grn_reg[14]_0 ),
        .I2(\iv[10]_i_5_0 ),
        .I3(\iv[12]_i_7 ),
        .O(\bdatw[8]_INST_0_i_2_7 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[10]_i_21 
       (.I0(\grn_reg[14]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[15]_0 ),
        .O(\badr[15]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[10]_i_22 
       (.I0(\grn_reg[1]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[2]_0 ),
        .O(\badr[2]_INST_0_i_1_0 ));
  LUT5 #(
    .INIT(32'h350035FF)) 
    \iv[11]_i_13 
       (.I0(\grn_reg[14]_0 ),
        .I1(\grn_reg[13]_0 ),
        .I2(\iv[12]_i_7 ),
        .I3(\iv[10]_i_5_0 ),
        .I4(\sr[6]_i_6 ),
        .O(\sr_reg[6]_4 ));
  LUT6 #(
    .INIT(64'h00000C0A0F0F0C0A)) 
    \iv[11]_i_14 
       (.I0(\grn_reg[3]_0 ),
        .I1(\grn_reg[2]_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\iv[12]_i_7 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[11]_i_21_n_0 ),
        .O(\iv[11]_i_21_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[11]_i_15 
       (.I0(\badr[5]_INST_0_i_1_0 ),
        .I1(\badr[7]_INST_0_i_1_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\iv[0]_i_17_n_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\badr[11]_INST_0_i_1_0 ),
        .O(\iv[13]_i_24_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[11]_i_16 
       (.I0(\iv[13]_i_31_n_0 ),
        .I1(\iv[13]_i_32_n_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\badr[13]_INST_0_i_1_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[11]_i_22_n_0 ),
        .O(\sr_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[11]_i_17 
       (.I0(\iv[13]_i_36_n_0 ),
        .I1(\iv[13]_i_30_n_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\iv[13]_i_34_n_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[13]_i_35_n_0 ),
        .O(\iv[13]_i_35_0 ));
  LUT6 #(
    .INIT(64'hFFFFF5F3F0F0F5F3)) 
    \iv[11]_i_18 
       (.I0(\grn_reg[12]_0 ),
        .I1(\grn_reg[11]_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\iv[12]_i_7 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\badr[13]_INST_0_i_1_0 ),
        .O(\iv[13]_i_28_1 ));
  LUT6 #(
    .INIT(64'hFF00FFFFB8B8B8B8)) 
    \iv[11]_i_19 
       (.I0(\badr[13]_INST_0_i_1_0 ),
        .I1(\iv[10]_i_5_0 ),
        .I2(\iv[11]_i_22_n_0 ),
        .I3(\iv[11]_i_9 ),
        .I4(\grn_reg[15]_0 ),
        .I5(\iv[10]_i_5 ),
        .O(\iv[14]_i_22_1 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \iv[11]_i_21 
       (.I0(\grn_reg[1]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[0]_0 ),
        .O(\iv[11]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[11]_i_22 
       (.I0(\grn_reg[12]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[11]_0 ),
        .O(\iv[11]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCCF0F0FF00)) 
    \iv[12]_i_15 
       (.I0(\grn_reg[15]_0 ),
        .I1(\grn_reg[14]_0 ),
        .I2(\grn_reg[13]_0 ),
        .I3(\grn_reg[12]_0 ),
        .I4(\iv[12]_i_7 ),
        .I5(\iv[10]_i_5_0 ),
        .O(\iv[0]_i_16_5 ));
  LUT6 #(
    .INIT(64'h505F3030505F303F)) 
    \iv[12]_i_17 
       (.I0(\grn_reg[2]_0 ),
        .I1(\grn_reg[1]_0 ),
        .I2(\iv[10]_i_5_0 ),
        .I3(\bdatw[8]_INST_0_i_2 ),
        .I4(\iv[12]_i_7 ),
        .I5(\iv[10]_i_12 [4]),
        .O(\sr_reg[6]_2 ));
  LUT6 #(
    .INIT(64'h0F000F0F5C5C5C5C)) 
    \iv[13]_i_14 
       (.I0(\iv[13]_i_21_n_0 ),
        .I1(\badr[5]_INST_0_i_1_0 ),
        .I2(\iv[10]_i_5_0 ),
        .I3(\bdatw[8]_INST_0_i_2 ),
        .I4(\iv[13]_i_7 ),
        .I5(\iv[10]_i_5 ),
        .O(\iv[14]_i_22 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[13]_i_15 
       (.I0(\badr[11]_INST_0_i_1_0 ),
        .I1(\sr[7]_i_16 ),
        .I2(\iv[10]_i_5 ),
        .I3(\badr[7]_INST_0_i_1_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[0]_i_17_n_0 ),
        .O(\iv[0]_i_17_0 ));
  LUT6 #(
    .INIT(64'hF5F5FC0C0505FC0C)) 
    \iv[13]_i_16 
       (.I0(\iv[13]_i_21_n_0 ),
        .I1(\badr[5]_INST_0_i_1_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\iv[13]_i_26_n_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\sr[6]_i_6 ),
        .O(\iv[13]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[13]_i_18 
       (.I0(\iv[13]_i_30_n_0 ),
        .I1(\iv[13]_i_31_n_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\iv[13]_i_32_n_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\badr[13]_INST_0_i_1_0 ),
        .O(\iv[13]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \iv[13]_i_19 
       (.I0(\iv[0]_i_5 ),
        .I1(\iv[13]_i_34_n_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\iv[13]_i_35_n_0 ),
        .I4(\iv[13]_i_36_n_0 ),
        .I5(\iv[10]_i_5_0 ),
        .O(\iv[13]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h5754)) 
    \iv[13]_i_20 
       (.I0(\grn_reg[15]_0 ),
        .I1(\iv[10]_i_5 ),
        .I2(\iv[10]_i_5_0 ),
        .I3(\badr[13]_INST_0_i_1_0 ),
        .O(\iv[13]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_21 
       (.I0(\grn_reg[2]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[3]_0 ),
        .O(\iv[13]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[13]_i_22 
       (.I0(\grn_reg[4]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[5]_0 ),
        .O(\badr[5]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[13]_i_24 
       (.I0(\grn_reg[10]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[11]_0 ),
        .O(\badr[11]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \iv[13]_i_26 
       (.I0(\grn_reg[1]_0 ),
        .I1(\grn_reg[0]_0 ),
        .I2(\iv[12]_i_7 ),
        .O(\iv[13]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_28 
       (.I0(\grn_reg[14]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[13]_0 ),
        .O(\badr[13]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_30 
       (.I0(\grn_reg[3]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[2]_0 ),
        .O(\iv[13]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_31 
       (.I0(\grn_reg[1]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[0]_0 ),
        .O(\iv[13]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \iv[13]_i_32 
       (.I0(\grn_reg[15]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\iv[10]_i_12 [4]),
        .O(\iv[13]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_34 
       (.I0(\grn_reg[9]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[8]_0 ),
        .O(\iv[13]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_35 
       (.I0(\grn_reg[7]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[6]_0 ),
        .O(\iv[13]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_36 
       (.I0(\grn_reg[5]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[4]_0 ),
        .O(\iv[13]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CACFCAC0)) 
    \iv[13]_i_6 
       (.I0(\iv[14]_i_22 ),
        .I1(\iv[0]_i_17_0 ),
        .I2(\iv[0]_i_2 ),
        .I3(\sr[7]_i_8 ),
        .I4(\iv[13]_i_16_n_0 ),
        .I5(acmd),
        .O(tout__1_carry_i_10));
  LUT6 #(
    .INIT(64'hF0F0A03000F0A030)) 
    \iv[13]_i_8 
       (.I0(\iv[13]_i_18_n_0 ),
        .I1(\iv[13]_i_19_n_0 ),
        .I2(\iv[13]_i_2 ),
        .I3(\iv[0]_i_2 ),
        .I4(\sr[7]_i_8 ),
        .I5(\iv[13]_i_20_n_0 ),
        .O(\iv[13]_i_20_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[14]_i_21 
       (.I0(\grn_reg[4]_0 ),
        .I1(\grn_reg[3]_0 ),
        .I2(\grn_reg[2]_0 ),
        .I3(\grn_reg[1]_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[12]_i_7 ),
        .O(\bdatw[8]_INST_0_i_2_2 ));
  LUT6 #(
    .INIT(64'h0F0F5555000F3333)) 
    \iv[14]_i_23 
       (.I0(\grn_reg[15]_0 ),
        .I1(\grn_reg[14]_0 ),
        .I2(\bdatw[8]_INST_0_i_2 ),
        .I3(\iv[10]_i_12 [4]),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[12]_i_7 ),
        .O(\sr_reg[6]_5 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[14]_i_26 
       (.I0(\grn_reg[12]_0 ),
        .I1(\grn_reg[11]_0 ),
        .I2(\grn_reg[10]_0 ),
        .I3(\grn_reg[9]_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[12]_i_7 ),
        .O(\bdatw[8]_INST_0_i_2_1 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[14]_i_27 
       (.I0(\grn_reg[8]_0 ),
        .I1(\grn_reg[7]_0 ),
        .I2(\grn_reg[6]_0 ),
        .I3(\grn_reg[5]_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[12]_i_7 ),
        .O(\bdatw[8]_INST_0_i_2_3 ));
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \iv[14]_i_32 
       (.I0(\grn_reg[6]_0 ),
        .I1(\grn_reg[5]_0 ),
        .I2(\grn_reg[4]_0 ),
        .I3(\grn_reg[3]_0 ),
        .I4(\iv[12]_i_7 ),
        .I5(\iv[10]_i_5_0 ),
        .O(\iv[0]_i_16_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \iv[14]_i_35 
       (.I0(\grn_reg[14]_0 ),
        .I1(\grn_reg[13]_0 ),
        .I2(\grn_reg[12]_0 ),
        .I3(\grn_reg[11]_0 ),
        .I4(\iv[12]_i_7 ),
        .I5(\iv[10]_i_5_0 ),
        .O(\iv[0]_i_16_4 ));
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \iv[14]_i_36 
       (.I0(\grn_reg[10]_0 ),
        .I1(\grn_reg[9]_0 ),
        .I2(\grn_reg[8]_0 ),
        .I3(\grn_reg[7]_0 ),
        .I4(\iv[12]_i_7 ),
        .I5(\iv[10]_i_5_0 ),
        .O(\iv[0]_i_16_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \iv[14]_i_37 
       (.I0(\grn_reg[0]_0 ),
        .I1(\iv[12]_i_7 ),
        .O(\bdatw[8]_INST_0_i_2 ));
  LUT6 #(
    .INIT(64'hAA00AAFF330F330F)) 
    \iv[1]_i_12 
       (.I0(\grn_reg[15]_0 ),
        .I1(\iv[11]_i_22_n_0 ),
        .I2(\iv[9]_i_21_n_0 ),
        .I3(\iv[10]_i_5_0 ),
        .I4(\badr[13]_INST_0_i_1_0 ),
        .I5(\iv[10]_i_5 ),
        .O(\iv[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[1]_i_13 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(\iv[9]_i_21_n_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\iv[13]_i_32_n_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\badr[13]_INST_0_i_1_0 ),
        .O(\iv[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0A0C0CFA0A)) 
    \iv[1]_i_14 
       (.I0(\badr[1]_INST_0_i_1_0 ),
        .I1(\badr[3]_INST_0_i_1_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\badr[5]_INST_0_i_1_1 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[5]_i_15_n_0 ),
        .O(\iv[5]_i_15_0 ));
  LUT6 #(
    .INIT(64'hCECCCECFFEFCFEFF)) 
    \iv[1]_i_5 
       (.I0(\iv[1]_i_12_n_0 ),
        .I1(\iv[1]_i_2 ),
        .I2(\iv[0]_i_2 ),
        .I3(\sr[7]_i_8 ),
        .I4(\iv[1]_i_13_n_0 ),
        .I5(\iv[5]_i_15_0 ),
        .O(\iv[1]_i_14_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[3]_i_12 
       (.I0(\badr[5]_INST_0_i_1_1 ),
        .I1(\badr[3]_INST_0_i_1_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\iv[9]_i_21_n_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[5]_i_15_n_0 ),
        .O(\iv[5]_i_15_1 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \iv[3]_i_14 
       (.I0(\iv[6]_i_20_n_0 ),
        .I1(\iv[5]_i_16_n_0 ),
        .I2(\iv[5]_i_17_n_0 ),
        .I3(\iv[10]_i_5_0 ),
        .I4(\iv[9]_i_22_n_0 ),
        .I5(\iv[10]_i_5 ),
        .O(\iv[14]_i_22_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFD100D100)) 
    \iv[3]_i_5 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[10]_i_5 ),
        .I2(\grn_reg[15]_0 ),
        .I3(\sr[7]_i_8 ),
        .I4(\iv[5]_i_15_1 ),
        .I5(\iv[0]_i_2 ),
        .O(\iv[14]_i_28_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFC0A0A0CFC0)) 
    \iv[5]_i_13 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(\iv[9]_i_21_n_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\badr[5]_INST_0_i_1_1 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[5]_i_15_n_0 ),
        .O(\iv[5]_i_15_2 ));
  LUT6 #(
    .INIT(64'h05F505F50303F3F3)) 
    \iv[5]_i_14 
       (.I0(\iv[9]_i_22_n_0 ),
        .I1(\iv[9]_i_23_n_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\iv[5]_i_16_n_0 ),
        .I4(\iv[5]_i_17_n_0 ),
        .I5(\iv[10]_i_5_0 ),
        .O(\iv[5]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[5]_i_15 
       (.I0(\grn_reg[8]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[7]_0 ),
        .O(\iv[5]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[5]_i_16 
       (.I0(\grn_reg[7]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[8]_0 ),
        .O(\iv[5]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[5]_i_17 
       (.I0(\grn_reg[9]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[10]_0 ),
        .O(\iv[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FF4747)) 
    \iv[5]_i_5 
       (.I0(\iv[0]_i_16 ),
        .I1(\iv[10]_i_5 ),
        .I2(\iv[9]_i_13_n_0 ),
        .I3(\iv[13]_i_20_n_0 ),
        .I4(\sr[7]_i_8 ),
        .I5(\iv[0]_i_2 ),
        .O(\iv[14]_i_28 ));
  LUT5 #(
    .INIT(32'hF322C022)) 
    \iv[5]_i_8 
       (.I0(\iv[14]_i_22 ),
        .I1(\iv[9]_i_2 ),
        .I2(\iv[5]_i_14_n_0 ),
        .I3(\iv[6]_i_2 ),
        .I4(\iv[13]_i_16_n_0 ),
        .O(\iv[13]_i_16_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[6]_i_15 
       (.I0(\iv[0]_i_5_0 ),
        .I1(\iv[0]_i_5 ),
        .I2(\iv[10]_i_5 ),
        .I3(\iv[13]_i_34_n_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[13]_i_35_n_0 ),
        .O(\iv[13]_i_35_1 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \iv[6]_i_16 
       (.I0(\badr[4]_INST_0_i_1_0 ),
        .I1(\iv[6]_i_20_n_0 ),
        .I2(\iv[6]_i_8_1 ),
        .I3(\iv[10]_i_5_0 ),
        .I4(\badr[2]_INST_0_i_1_0 ),
        .I5(\iv[10]_i_5 ),
        .O(\iv[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[6]_i_17 
       (.I0(\iv[0]_i_17_n_0 ),
        .I1(\badr[11]_INST_0_i_1_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\sr[7]_i_16 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\badr[15]_INST_0_i_1_0 ),
        .O(\iv[10]_i_21_0 ));
  LUT6 #(
    .INIT(64'hF5F5050503F303F3)) 
    \iv[6]_i_18 
       (.I0(\badr[4]_INST_0_i_1_0 ),
        .I1(\iv[6]_i_20_n_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\badr[2]_INST_0_i_1_0 ),
        .I4(\iv[6]_i_8_0 ),
        .I5(\iv[10]_i_5_0 ),
        .O(\iv[6]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[6]_i_19 
       (.I0(\grn_reg[3]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[4]_0 ),
        .O(\badr[4]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[6]_i_20 
       (.I0(\grn_reg[5]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[6]_0 ),
        .O(\iv[6]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hF322C022)) 
    \iv[6]_i_8 
       (.I0(\iv[6]_i_16_n_0 ),
        .I1(\iv[9]_i_2 ),
        .I2(\iv[10]_i_21_0 ),
        .I3(\iv[6]_i_2 ),
        .I4(\iv[6]_i_18_n_0 ),
        .O(\iv[6]_i_18_0 ));
  LUT5 #(
    .INIT(32'h53FF5300)) 
    \iv[7]_i_12 
       (.I0(\grn_reg[1]_0 ),
        .I1(\grn_reg[0]_0 ),
        .I2(\iv[12]_i_7 ),
        .I3(\iv[10]_i_5_0 ),
        .I4(\iv[13]_i_32_n_0 ),
        .O(\sr_reg[6]_1 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[7]_i_15 
       (.I0(\grn_reg[10]_0 ),
        .I1(\grn_reg[9]_0 ),
        .I2(\grn_reg[8]_0 ),
        .I3(\grn_reg[7]_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[12]_i_7 ),
        .O(\bdatw[8]_INST_0_i_2_5 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[7]_i_16 
       (.I0(\grn_reg[14]_0 ),
        .I1(\grn_reg[13]_0 ),
        .I2(\grn_reg[12]_0 ),
        .I3(\grn_reg[11]_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[12]_i_7 ),
        .O(\bdatw[8]_INST_0_i_2_0 ));
  LUT6 #(
    .INIT(64'hF3F3F0FFF5F5F0FF)) 
    \iv[7]_i_18 
       (.I0(\grn_reg[14]_0 ),
        .I1(\grn_reg[13]_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\sr[6]_i_6 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[12]_i_7 ),
        .O(\sr_reg[6]_3 ));
  LUT6 #(
    .INIT(64'hC0C000F0A0A000F0)) 
    \iv[7]_i_19 
       (.I0(\grn_reg[10]_0 ),
        .I1(\grn_reg[9]_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\iv[9]_i_22_n_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[12]_i_7 ),
        .O(\bdatw[8]_INST_0_i_2_4 ));
  LUT6 #(
    .INIT(64'hF505F3F3F5050303)) 
    \iv[7]_i_20 
       (.I0(\badr[5]_INST_0_i_1_0 ),
        .I1(\badr[7]_INST_0_i_1_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\iv[11]_i_21_n_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[13]_i_21_n_0 ),
        .O(\iv[13]_i_21_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \iv[8]_i_13 
       (.I0(\iv[0]_i_5_1 ),
        .I1(\iv[0]_i_5_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\iv[0]_i_5 ),
        .I4(\iv[13]_i_34_n_0 ),
        .I5(\iv[10]_i_5_0 ),
        .O(\iv[0]_i_16_2 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[8]_i_22 
       (.I0(\grn_reg[2]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[1]_0 ),
        .O(\badr[1]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[8]_i_24 
       (.I0(\grn_reg[6]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[5]_0 ),
        .O(\badr[5]_INST_0_i_1_1 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[8]_i_25 
       (.I0(\grn_reg[4]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[3]_0 ),
        .O(\badr[3]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \iv[9]_i_12 
       (.I0(\grn_reg[15]_0 ),
        .I1(\iv[10]_i_5_0 ),
        .I2(\badr[13]_INST_0_i_1_0 ),
        .O(\iv[9]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[9]_i_13 
       (.I0(\iv[13]_i_32_n_0 ),
        .I1(\iv[10]_i_5_0 ),
        .I2(\badr[13]_INST_0_i_1_0 ),
        .O(\iv[9]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h555533330F0F00FF)) 
    \iv[9]_i_16 
       (.I0(\grn_reg[3]_0 ),
        .I1(\grn_reg[2]_0 ),
        .I2(\grn_reg[1]_0 ),
        .I3(\grn_reg[0]_0 ),
        .I4(\iv[12]_i_7 ),
        .I5(\iv[10]_i_5_0 ),
        .O(\iv[0]_i_16 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[9]_i_17 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(\iv[9]_i_21_n_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\iv[9]_i_7 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\badr[13]_INST_0_i_1_0 ),
        .O(\iv[13]_i_28_0 ));
  LUT6 #(
    .INIT(64'h5F50CFCF5F50C0C0)) 
    \iv[9]_i_18 
       (.I0(\iv[13]_i_21_n_0 ),
        .I1(\badr[5]_INST_0_i_1_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\badr[7]_INST_0_i_1_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\iv[0]_i_17_n_0 ),
        .O(\iv[0]_i_17_1 ));
  LUT6 #(
    .INIT(64'h5F5F3F3050503F30)) 
    \iv[9]_i_20 
       (.I0(\iv[9]_i_22_n_0 ),
        .I1(\iv[9]_i_23_n_0 ),
        .I2(\iv[10]_i_5 ),
        .I3(\iv[13]_i_26_n_0 ),
        .I4(\iv[10]_i_5_0 ),
        .I5(\sr[6]_i_6 ),
        .O(\sr_reg[6] ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[9]_i_21 
       (.I0(\grn_reg[10]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[9]_0 ),
        .O(\iv[9]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[9]_i_22 
       (.I0(\grn_reg[11]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[12]_0 ),
        .O(\iv[9]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[9]_i_23 
       (.I0(\grn_reg[13]_0 ),
        .I1(\iv[12]_i_7 ),
        .I2(\grn_reg[14]_0 ),
        .O(\iv[9]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00000000535303F3)) 
    \iv[9]_i_5 
       (.I0(\iv[9]_i_12_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2_1 ),
        .I2(\iv[10]_i_5 ),
        .I3(\iv[9]_i_13_n_0 ),
        .I4(\sr[7]_i_8 ),
        .I5(\iv[9]_i_2 ),
        .O(\iv[14]_i_34 ));
  LUT6 #(
    .INIT(64'h555533330F0F00FF)) 
    \sr[6]_i_8 
       (.I0(\grn_reg[6]_0 ),
        .I1(\grn_reg[5]_0 ),
        .I2(\grn_reg[4]_0 ),
        .I3(\grn_reg[3]_0 ),
        .I4(\iv[12]_i_7 ),
        .I5(\iv[10]_i_5_0 ),
        .O(\iv[0]_i_16_3 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[7]_i_11 
       (.I0(\grn_reg[15]_0 ),
        .I1(\sr[7]_i_8 ),
        .O(tout__1_carry_i_9));
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
    \stat[2]_i_1 
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
   (\grn_reg[0]_0 ,
    \grn_reg[1]_0 ,
    \grn_reg[2]_0 ,
    \grn_reg[3]_0 ,
    \grn_reg[4]_0 ,
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
    \grn_reg[4]_1 ,
    Q,
    \badr[0]_INST_0_i_1 ,
    out,
    gr1_bus1__0_2,
    \badr[15]_INST_0_i_4_0 ,
    gr2_bus1__0_3,
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
    \badr[15]_INST_0_i_4_1 ,
    gr7_bus1__0_6,
    \badr[15]_INST_0_i_4_2 ,
    gr0_bus1__0_7,
    \badr[15]_INST_0_i_4_3 ,
    gr4_bus1__0_8,
    \badr[15]_INST_0_i_4_4 ,
    gr5_bus1__0,
    \badr[15]_INST_0_i_4_5 ,
    gr3_bus1__0_9,
    \badr[15]_INST_0_i_4_6 ,
    gr4_bus1__0_10,
    \badr[15]_INST_0_i_4_7 ,
    gr5_bus1__0_14,
    \badr[15]_INST_0_i_4_8 ,
    gr6_bus1__0_15,
    \bdatw[8]_INST_0_i_2 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \bdatw[9]_INST_0_i_2 ,
    \bdatw[9]_INST_0_i_2_0 ,
    \bdatw[10]_INST_0_i_2 ,
    \bdatw[10]_INST_0_i_2_0 ,
    \bdatw[12]_INST_0_i_2 ,
    \bdatw[12]_INST_0_i_2_0 ,
    gr0_bus1__0_26,
    gr7_bus1__0_27,
    \bdatw[12]_INST_0_i_26_0 ,
    \bdatw[12]_INST_0_i_26_1 ,
    \bdatw[12]_INST_0_i_26_2 ,
    \bdatw[12]_INST_0_i_25_0 ,
    \bdatw[12]_INST_0_i_8_0 ,
    gr2_bus1__0_37,
    \bdatw[12]_INST_0_i_8_1 ,
    gr3_bus1__0_38,
    gr4_bus1__0_39,
    gr3_bus1__0_40,
    \bdatw[12]_INST_0_i_26_3 ,
    bbus_sel_0,
    \bdatw[12]_INST_0_i_8_2 ,
    SR,
    \grn_reg[15]_1 ,
    \grn_reg[15]_2 ,
    clk);
  output \grn_reg[0]_0 ;
  output \grn_reg[1]_0 ;
  output \grn_reg[2]_0 ;
  output \grn_reg[3]_0 ;
  output \grn_reg[4]_0 ;
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
  output [3:0]\grn_reg[4]_1 ;
  output [15:0]Q;
  input \badr[0]_INST_0_i_1 ;
  input [15:0]out;
  input gr1_bus1__0_2;
  input [15:0]\badr[15]_INST_0_i_4_0 ;
  input gr2_bus1__0_3;
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
  input [15:0]\badr[15]_INST_0_i_4_1 ;
  input gr7_bus1__0_6;
  input [15:0]\badr[15]_INST_0_i_4_2 ;
  input gr0_bus1__0_7;
  input [15:0]\badr[15]_INST_0_i_4_3 ;
  input gr4_bus1__0_8;
  input [15:0]\badr[15]_INST_0_i_4_4 ;
  input gr5_bus1__0;
  input [15:0]\badr[15]_INST_0_i_4_5 ;
  input gr3_bus1__0_9;
  input [15:0]\badr[15]_INST_0_i_4_6 ;
  input gr4_bus1__0_10;
  input [15:0]\badr[15]_INST_0_i_4_7 ;
  input gr5_bus1__0_14;
  input [15:0]\badr[15]_INST_0_i_4_8 ;
  input gr6_bus1__0_15;
  input \bdatw[8]_INST_0_i_2 ;
  input \bdatw[8]_INST_0_i_2_0 ;
  input \bdatw[9]_INST_0_i_2 ;
  input \bdatw[9]_INST_0_i_2_0 ;
  input \bdatw[10]_INST_0_i_2 ;
  input \bdatw[10]_INST_0_i_2_0 ;
  input \bdatw[12]_INST_0_i_2 ;
  input \bdatw[12]_INST_0_i_2_0 ;
  input gr0_bus1__0_26;
  input gr7_bus1__0_27;
  input \bdatw[12]_INST_0_i_26_0 ;
  input \bdatw[12]_INST_0_i_26_1 ;
  input \bdatw[12]_INST_0_i_26_2 ;
  input \bdatw[12]_INST_0_i_25_0 ;
  input [3:0]\bdatw[12]_INST_0_i_8_0 ;
  input gr2_bus1__0_37;
  input [3:0]\bdatw[12]_INST_0_i_8_1 ;
  input gr3_bus1__0_38;
  input gr4_bus1__0_39;
  input gr3_bus1__0_40;
  input \bdatw[12]_INST_0_i_26_3 ;
  input [1:0]bbus_sel_0;
  input [1:0]\bdatw[12]_INST_0_i_8_2 ;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_1 ;
  input [15:0]\grn_reg[15]_2 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire \badr[0]_INST_0_i_1 ;
  wire \badr[0]_INST_0_i_16_n_0 ;
  wire \badr[0]_INST_0_i_17_n_0 ;
  wire \badr[0]_INST_0_i_18_n_0 ;
  wire \badr[0]_INST_0_i_19_n_0 ;
  wire \badr[0]_INST_0_i_20_n_0 ;
  wire \badr[10]_INST_0_i_1 ;
  wire \badr[10]_INST_0_i_16_n_0 ;
  wire \badr[10]_INST_0_i_17_n_0 ;
  wire \badr[10]_INST_0_i_18_n_0 ;
  wire \badr[10]_INST_0_i_19_n_0 ;
  wire \badr[10]_INST_0_i_20_n_0 ;
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
  wire \badr[15]_INST_0_i_18_n_0 ;
  wire \badr[15]_INST_0_i_19_n_0 ;
  wire \badr[15]_INST_0_i_20_n_0 ;
  wire \badr[15]_INST_0_i_21_n_0 ;
  wire \badr[15]_INST_0_i_22_n_0 ;
  wire [15:0]\badr[15]_INST_0_i_4_0 ;
  wire [15:0]\badr[15]_INST_0_i_4_1 ;
  wire [15:0]\badr[15]_INST_0_i_4_2 ;
  wire [15:0]\badr[15]_INST_0_i_4_3 ;
  wire [15:0]\badr[15]_INST_0_i_4_4 ;
  wire [15:0]\badr[15]_INST_0_i_4_5 ;
  wire [15:0]\badr[15]_INST_0_i_4_6 ;
  wire [15:0]\badr[15]_INST_0_i_4_7 ;
  wire [15:0]\badr[15]_INST_0_i_4_8 ;
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
  wire \badr[4]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_16_n_0 ;
  wire \badr[4]_INST_0_i_17_n_0 ;
  wire \badr[4]_INST_0_i_18_n_0 ;
  wire \badr[4]_INST_0_i_19_n_0 ;
  wire \badr[4]_INST_0_i_20_n_0 ;
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
  wire [1:0]bbus_sel_0;
  wire \bdatw[10]_INST_0_i_2 ;
  wire \bdatw[10]_INST_0_i_22_n_0 ;
  wire \bdatw[10]_INST_0_i_25_n_0 ;
  wire \bdatw[10]_INST_0_i_26_n_0 ;
  wire \bdatw[10]_INST_0_i_27_n_0 ;
  wire \bdatw[10]_INST_0_i_2_0 ;
  wire \bdatw[10]_INST_0_i_36_n_0 ;
  wire \bdatw[10]_INST_0_i_37_n_0 ;
  wire \bdatw[12]_INST_0_i_2 ;
  wire \bdatw[12]_INST_0_i_22_n_0 ;
  wire \bdatw[12]_INST_0_i_25_0 ;
  wire \bdatw[12]_INST_0_i_25_n_0 ;
  wire \bdatw[12]_INST_0_i_26_0 ;
  wire \bdatw[12]_INST_0_i_26_1 ;
  wire \bdatw[12]_INST_0_i_26_2 ;
  wire \bdatw[12]_INST_0_i_26_3 ;
  wire \bdatw[12]_INST_0_i_26_n_0 ;
  wire \bdatw[12]_INST_0_i_27_n_0 ;
  wire \bdatw[12]_INST_0_i_2_0 ;
  wire \bdatw[12]_INST_0_i_48_n_0 ;
  wire \bdatw[12]_INST_0_i_51_n_0 ;
  wire [3:0]\bdatw[12]_INST_0_i_8_0 ;
  wire [3:0]\bdatw[12]_INST_0_i_8_1 ;
  wire [1:0]\bdatw[12]_INST_0_i_8_2 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_21_n_0 ;
  wire \bdatw[8]_INST_0_i_24_n_0 ;
  wire \bdatw[8]_INST_0_i_25_n_0 ;
  wire \bdatw[8]_INST_0_i_26_n_0 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_35_n_0 ;
  wire \bdatw[8]_INST_0_i_36_n_0 ;
  wire \bdatw[9]_INST_0_i_2 ;
  wire \bdatw[9]_INST_0_i_20_n_0 ;
  wire \bdatw[9]_INST_0_i_23_n_0 ;
  wire \bdatw[9]_INST_0_i_24_n_0 ;
  wire \bdatw[9]_INST_0_i_25_n_0 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_34_n_0 ;
  wire \bdatw[9]_INST_0_i_35_n_0 ;
  wire clk;
  wire gr0_bus1__0_26;
  wire gr0_bus1__0_7;
  wire gr1_bus1__0_2;
  wire gr2_bus1__0_3;
  wire gr2_bus1__0_37;
  wire gr3_bus1__0_38;
  wire gr3_bus1__0_40;
  wire gr3_bus1__0_9;
  wire gr4_bus1__0_10;
  wire gr4_bus1__0_39;
  wire gr4_bus1__0_8;
  wire gr5_bus1__0;
  wire gr5_bus1__0_14;
  wire gr6_bus1__0_15;
  wire gr7_bus1__0_27;
  wire gr7_bus1__0_6;
  wire \grn_reg[0]_0 ;
  wire \grn_reg[10]_0 ;
  wire \grn_reg[11]_0 ;
  wire \grn_reg[12]_0 ;
  wire \grn_reg[13]_0 ;
  wire \grn_reg[14]_0 ;
  wire \grn_reg[15]_0 ;
  wire [0:0]\grn_reg[15]_1 ;
  wire [15:0]\grn_reg[15]_2 ;
  wire \grn_reg[1]_0 ;
  wire \grn_reg[2]_0 ;
  wire \grn_reg[3]_0 ;
  wire \grn_reg[4]_0 ;
  wire [3:0]\grn_reg[4]_1 ;
  wire \grn_reg[5]_0 ;
  wire \grn_reg[6]_0 ;
  wire \grn_reg[7]_0 ;
  wire \grn_reg[8]_0 ;
  wire \grn_reg[9]_0 ;
  wire [15:0]out;

  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_4_3 [0]),
        .I1(gr4_bus1__0_8),
        .I2(\badr[15]_INST_0_i_4_4 [0]),
        .I3(gr5_bus1__0),
        .O(\badr[0]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_5 [0]),
        .I1(gr3_bus1__0_9),
        .I2(\badr[15]_INST_0_i_4_6 [0]),
        .I3(gr4_bus1__0_10),
        .O(\badr[0]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_18 
       (.I0(out[0]),
        .I1(gr1_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_0 [0]),
        .I3(gr2_bus1__0_3),
        .O(\badr[0]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_1 [0]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_2 [0]),
        .I3(gr0_bus1__0_7),
        .O(\badr[0]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_7 [0]),
        .I1(gr5_bus1__0_14),
        .I2(\badr[15]_INST_0_i_4_8 [0]),
        .I3(gr6_bus1__0_15),
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
        .O(\grn_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_4_3 [10]),
        .I1(gr4_bus1__0_8),
        .I2(\badr[15]_INST_0_i_4_4 [10]),
        .I3(gr5_bus1__0),
        .O(\badr[10]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_5 [10]),
        .I1(gr3_bus1__0_9),
        .I2(\badr[15]_INST_0_i_4_6 [10]),
        .I3(gr4_bus1__0_10),
        .O(\badr[10]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_18 
       (.I0(out[10]),
        .I1(gr1_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_0 [10]),
        .I3(gr2_bus1__0_3),
        .O(\badr[10]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_1 [10]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_2 [10]),
        .I3(gr0_bus1__0_7),
        .O(\badr[10]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_7 [10]),
        .I1(gr5_bus1__0_14),
        .I2(\badr[15]_INST_0_i_4_8 [10]),
        .I3(gr6_bus1__0_15),
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
    \badr[11]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_4_3 [11]),
        .I1(gr4_bus1__0_8),
        .I2(\badr[15]_INST_0_i_4_4 [11]),
        .I3(gr5_bus1__0),
        .O(\badr[11]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_5 [11]),
        .I1(gr3_bus1__0_9),
        .I2(\badr[15]_INST_0_i_4_6 [11]),
        .I3(gr4_bus1__0_10),
        .O(\badr[11]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_18 
       (.I0(out[11]),
        .I1(gr1_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_0 [11]),
        .I3(gr2_bus1__0_3),
        .O(\badr[11]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_1 [11]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_2 [11]),
        .I3(gr0_bus1__0_7),
        .O(\badr[11]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_7 [11]),
        .I1(gr5_bus1__0_14),
        .I2(\badr[15]_INST_0_i_4_8 [11]),
        .I3(gr6_bus1__0_15),
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
       (.I0(\badr[15]_INST_0_i_4_3 [12]),
        .I1(gr4_bus1__0_8),
        .I2(\badr[15]_INST_0_i_4_4 [12]),
        .I3(gr5_bus1__0),
        .O(\badr[12]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_5 [12]),
        .I1(gr3_bus1__0_9),
        .I2(\badr[15]_INST_0_i_4_6 [12]),
        .I3(gr4_bus1__0_10),
        .O(\badr[12]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_18 
       (.I0(out[12]),
        .I1(gr1_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_0 [12]),
        .I3(gr2_bus1__0_3),
        .O(\badr[12]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_1 [12]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_2 [12]),
        .I3(gr0_bus1__0_7),
        .O(\badr[12]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_7 [12]),
        .I1(gr5_bus1__0_14),
        .I2(\badr[15]_INST_0_i_4_8 [12]),
        .I3(gr6_bus1__0_15),
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
       (.I0(\badr[15]_INST_0_i_4_3 [13]),
        .I1(gr4_bus1__0_8),
        .I2(\badr[15]_INST_0_i_4_4 [13]),
        .I3(gr5_bus1__0),
        .O(\badr[13]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_5 [13]),
        .I1(gr3_bus1__0_9),
        .I2(\badr[15]_INST_0_i_4_6 [13]),
        .I3(gr4_bus1__0_10),
        .O(\badr[13]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_18 
       (.I0(out[13]),
        .I1(gr1_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_0 [13]),
        .I3(gr2_bus1__0_3),
        .O(\badr[13]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_1 [13]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_2 [13]),
        .I3(gr0_bus1__0_7),
        .O(\badr[13]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_7 [13]),
        .I1(gr5_bus1__0_14),
        .I2(\badr[15]_INST_0_i_4_8 [13]),
        .I3(gr6_bus1__0_15),
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
       (.I0(\badr[15]_INST_0_i_4_3 [14]),
        .I1(gr4_bus1__0_8),
        .I2(\badr[15]_INST_0_i_4_4 [14]),
        .I3(gr5_bus1__0),
        .O(\badr[14]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_5 [14]),
        .I1(gr3_bus1__0_9),
        .I2(\badr[15]_INST_0_i_4_6 [14]),
        .I3(gr4_bus1__0_10),
        .O(\badr[14]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_18 
       (.I0(out[14]),
        .I1(gr1_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_0 [14]),
        .I3(gr2_bus1__0_3),
        .O(\badr[14]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_1 [14]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_2 [14]),
        .I3(gr0_bus1__0_7),
        .O(\badr[14]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_7 [14]),
        .I1(gr5_bus1__0_14),
        .I2(\badr[15]_INST_0_i_4_8 [14]),
        .I3(gr6_bus1__0_15),
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
    \badr[15]_INST_0_i_18 
       (.I0(\badr[15]_INST_0_i_4_3 [15]),
        .I1(gr4_bus1__0_8),
        .I2(\badr[15]_INST_0_i_4_4 [15]),
        .I3(gr5_bus1__0),
        .O(\badr[15]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_5 [15]),
        .I1(gr3_bus1__0_9),
        .I2(\badr[15]_INST_0_i_4_6 [15]),
        .I3(gr4_bus1__0_10),
        .O(\badr[15]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_20 
       (.I0(out[15]),
        .I1(gr1_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_0 [15]),
        .I3(gr2_bus1__0_3),
        .O(\badr[15]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_21 
       (.I0(\badr[15]_INST_0_i_4_1 [15]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_2 [15]),
        .I3(gr0_bus1__0_7),
        .O(\badr[15]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_22 
       (.I0(\badr[15]_INST_0_i_4_7 [15]),
        .I1(gr5_bus1__0_14),
        .I2(\badr[15]_INST_0_i_4_8 [15]),
        .I3(gr6_bus1__0_15),
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
       (.I0(\badr[15]_INST_0_i_4_3 [1]),
        .I1(gr4_bus1__0_8),
        .I2(\badr[15]_INST_0_i_4_4 [1]),
        .I3(gr5_bus1__0),
        .O(\badr[1]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_5 [1]),
        .I1(gr3_bus1__0_9),
        .I2(\badr[15]_INST_0_i_4_6 [1]),
        .I3(gr4_bus1__0_10),
        .O(\badr[1]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_18 
       (.I0(out[1]),
        .I1(gr1_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_0 [1]),
        .I3(gr2_bus1__0_3),
        .O(\badr[1]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_1 [1]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_2 [1]),
        .I3(gr0_bus1__0_7),
        .O(\badr[1]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_7 [1]),
        .I1(gr5_bus1__0_14),
        .I2(\badr[15]_INST_0_i_4_8 [1]),
        .I3(gr6_bus1__0_15),
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
       (.I0(\badr[15]_INST_0_i_4_3 [2]),
        .I1(gr4_bus1__0_8),
        .I2(\badr[15]_INST_0_i_4_4 [2]),
        .I3(gr5_bus1__0),
        .O(\badr[2]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_5 [2]),
        .I1(gr3_bus1__0_9),
        .I2(\badr[15]_INST_0_i_4_6 [2]),
        .I3(gr4_bus1__0_10),
        .O(\badr[2]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_18 
       (.I0(out[2]),
        .I1(gr1_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_0 [2]),
        .I3(gr2_bus1__0_3),
        .O(\badr[2]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_1 [2]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_2 [2]),
        .I3(gr0_bus1__0_7),
        .O(\badr[2]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_7 [2]),
        .I1(gr5_bus1__0_14),
        .I2(\badr[15]_INST_0_i_4_8 [2]),
        .I3(gr6_bus1__0_15),
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
       (.I0(\badr[15]_INST_0_i_4_3 [3]),
        .I1(gr4_bus1__0_8),
        .I2(\badr[15]_INST_0_i_4_4 [3]),
        .I3(gr5_bus1__0),
        .O(\badr[3]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_5 [3]),
        .I1(gr3_bus1__0_9),
        .I2(\badr[15]_INST_0_i_4_6 [3]),
        .I3(gr4_bus1__0_10),
        .O(\badr[3]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_18 
       (.I0(out[3]),
        .I1(gr1_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_0 [3]),
        .I3(gr2_bus1__0_3),
        .O(\badr[3]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_1 [3]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_2 [3]),
        .I3(gr0_bus1__0_7),
        .O(\badr[3]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_7 [3]),
        .I1(gr5_bus1__0_14),
        .I2(\badr[15]_INST_0_i_4_8 [3]),
        .I3(gr6_bus1__0_15),
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
    \badr[4]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_4_3 [4]),
        .I1(gr4_bus1__0_8),
        .I2(\badr[15]_INST_0_i_4_4 [4]),
        .I3(gr5_bus1__0),
        .O(\badr[4]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_5 [4]),
        .I1(gr3_bus1__0_9),
        .I2(\badr[15]_INST_0_i_4_6 [4]),
        .I3(gr4_bus1__0_10),
        .O(\badr[4]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_18 
       (.I0(out[4]),
        .I1(gr1_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_0 [4]),
        .I3(gr2_bus1__0_3),
        .O(\badr[4]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_1 [4]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_2 [4]),
        .I3(gr0_bus1__0_7),
        .O(\badr[4]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_7 [4]),
        .I1(gr5_bus1__0_14),
        .I2(\badr[15]_INST_0_i_4_8 [4]),
        .I3(gr6_bus1__0_15),
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
        .O(\grn_reg[4]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_4_3 [5]),
        .I1(gr4_bus1__0_8),
        .I2(\badr[15]_INST_0_i_4_4 [5]),
        .I3(gr5_bus1__0),
        .O(\badr[5]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_5 [5]),
        .I1(gr3_bus1__0_9),
        .I2(\badr[15]_INST_0_i_4_6 [5]),
        .I3(gr4_bus1__0_10),
        .O(\badr[5]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_18 
       (.I0(out[5]),
        .I1(gr1_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_0 [5]),
        .I3(gr2_bus1__0_3),
        .O(\badr[5]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_1 [5]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_2 [5]),
        .I3(gr0_bus1__0_7),
        .O(\badr[5]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_7 [5]),
        .I1(gr5_bus1__0_14),
        .I2(\badr[15]_INST_0_i_4_8 [5]),
        .I3(gr6_bus1__0_15),
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
        .O(\grn_reg[5]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_4_3 [6]),
        .I1(gr4_bus1__0_8),
        .I2(\badr[15]_INST_0_i_4_4 [6]),
        .I3(gr5_bus1__0),
        .O(\badr[6]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_5 [6]),
        .I1(gr3_bus1__0_9),
        .I2(\badr[15]_INST_0_i_4_6 [6]),
        .I3(gr4_bus1__0_10),
        .O(\badr[6]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_18 
       (.I0(out[6]),
        .I1(gr1_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_0 [6]),
        .I3(gr2_bus1__0_3),
        .O(\badr[6]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_1 [6]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_2 [6]),
        .I3(gr0_bus1__0_7),
        .O(\badr[6]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_7 [6]),
        .I1(gr5_bus1__0_14),
        .I2(\badr[15]_INST_0_i_4_8 [6]),
        .I3(gr6_bus1__0_15),
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
        .O(\grn_reg[6]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_4_3 [7]),
        .I1(gr4_bus1__0_8),
        .I2(\badr[15]_INST_0_i_4_4 [7]),
        .I3(gr5_bus1__0),
        .O(\badr[7]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_5 [7]),
        .I1(gr3_bus1__0_9),
        .I2(\badr[15]_INST_0_i_4_6 [7]),
        .I3(gr4_bus1__0_10),
        .O(\badr[7]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_18 
       (.I0(out[7]),
        .I1(gr1_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_0 [7]),
        .I3(gr2_bus1__0_3),
        .O(\badr[7]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_1 [7]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_2 [7]),
        .I3(gr0_bus1__0_7),
        .O(\badr[7]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_7 [7]),
        .I1(gr5_bus1__0_14),
        .I2(\badr[15]_INST_0_i_4_8 [7]),
        .I3(gr6_bus1__0_15),
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
       (.I0(\badr[15]_INST_0_i_4_3 [8]),
        .I1(gr4_bus1__0_8),
        .I2(\badr[15]_INST_0_i_4_4 [8]),
        .I3(gr5_bus1__0),
        .O(\badr[8]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_5 [8]),
        .I1(gr3_bus1__0_9),
        .I2(\badr[15]_INST_0_i_4_6 [8]),
        .I3(gr4_bus1__0_10),
        .O(\badr[8]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_18 
       (.I0(out[8]),
        .I1(gr1_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_0 [8]),
        .I3(gr2_bus1__0_3),
        .O(\badr[8]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_1 [8]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_2 [8]),
        .I3(gr0_bus1__0_7),
        .O(\badr[8]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_7 [8]),
        .I1(gr5_bus1__0_14),
        .I2(\badr[15]_INST_0_i_4_8 [8]),
        .I3(gr6_bus1__0_15),
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
       (.I0(\badr[15]_INST_0_i_4_3 [9]),
        .I1(gr4_bus1__0_8),
        .I2(\badr[15]_INST_0_i_4_4 [9]),
        .I3(gr5_bus1__0),
        .O(\badr[9]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_4_5 [9]),
        .I1(gr3_bus1__0_9),
        .I2(\badr[15]_INST_0_i_4_6 [9]),
        .I3(gr4_bus1__0_10),
        .O(\badr[9]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_18 
       (.I0(out[9]),
        .I1(gr1_bus1__0_2),
        .I2(\badr[15]_INST_0_i_4_0 [9]),
        .I3(gr2_bus1__0_3),
        .O(\badr[9]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_4_1 [9]),
        .I1(gr7_bus1__0_6),
        .I2(\badr[15]_INST_0_i_4_2 [9]),
        .I3(gr0_bus1__0_7),
        .O(\badr[9]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_4_7 [9]),
        .I1(gr5_bus1__0_14),
        .I2(\badr[15]_INST_0_i_4_8 [9]),
        .I3(gr6_bus1__0_15),
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
    \bdatw[10]_INST_0_i_22 
       (.I0(\bdatw[12]_INST_0_i_8_0 [2]),
        .I1(gr2_bus1__0_37),
        .I2(\bdatw[12]_INST_0_i_8_1 [2]),
        .I3(gr3_bus1__0_38),
        .O(\bdatw[10]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[10]_INST_0_i_25 
       (.I0(\bdatw[10]_INST_0_i_36_n_0 ),
        .I1(gr0_bus1__0_26),
        .I2(\badr[15]_INST_0_i_4_2 [2]),
        .I3(gr7_bus1__0_27),
        .I4(\badr[15]_INST_0_i_4_1 [2]),
        .O(\bdatw[10]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[10]_INST_0_i_26 
       (.I0(\bdatw[10]_INST_0_i_37_n_0 ),
        .I1(gr4_bus1__0_39),
        .I2(\badr[15]_INST_0_i_4_6 [2]),
        .I3(gr3_bus1__0_40),
        .I4(\badr[15]_INST_0_i_4_5 [2]),
        .O(\bdatw[10]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00F8000000880000)) 
    \bdatw[10]_INST_0_i_27 
       (.I0(\badr[15]_INST_0_i_4_3 [2]),
        .I1(bbus_sel_0[0]),
        .I2(\badr[15]_INST_0_i_4_4 [2]),
        .I3(\bdatw[12]_INST_0_i_8_2 [0]),
        .I4(\bdatw[12]_INST_0_i_8_2 [1]),
        .I5(bbus_sel_0[1]),
        .O(\bdatw[10]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hC00000A000000000)) 
    \bdatw[10]_INST_0_i_36 
       (.I0(\badr[15]_INST_0_i_4_7 [2]),
        .I1(\badr[15]_INST_0_i_4_8 [2]),
        .I2(\bdatw[12]_INST_0_i_26_0 ),
        .I3(\bdatw[12]_INST_0_i_26_1 ),
        .I4(\bdatw[12]_INST_0_i_26_2 ),
        .I5(\bdatw[12]_INST_0_i_25_0 ),
        .O(\bdatw[10]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00C00000000000A0)) 
    \bdatw[10]_INST_0_i_37 
       (.I0(out[2]),
        .I1(\badr[15]_INST_0_i_4_0 [2]),
        .I2(\bdatw[12]_INST_0_i_26_0 ),
        .I3(\bdatw[12]_INST_0_i_26_3 ),
        .I4(\bdatw[12]_INST_0_i_26_1 ),
        .I5(\bdatw[12]_INST_0_i_26_2 ),
        .O(\bdatw[10]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[10]_INST_0_i_8 
       (.I0(\bdatw[10]_INST_0_i_22_n_0 ),
        .I1(\bdatw[10]_INST_0_i_2 ),
        .I2(\bdatw[10]_INST_0_i_2_0 ),
        .I3(\bdatw[10]_INST_0_i_25_n_0 ),
        .I4(\bdatw[10]_INST_0_i_26_n_0 ),
        .I5(\bdatw[10]_INST_0_i_27_n_0 ),
        .O(\grn_reg[4]_1 [2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_22 
       (.I0(\bdatw[12]_INST_0_i_8_0 [3]),
        .I1(gr2_bus1__0_37),
        .I2(\bdatw[12]_INST_0_i_8_1 [3]),
        .I3(gr3_bus1__0_38),
        .O(\bdatw[12]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[12]_INST_0_i_25 
       (.I0(\bdatw[12]_INST_0_i_48_n_0 ),
        .I1(gr0_bus1__0_26),
        .I2(\badr[15]_INST_0_i_4_2 [4]),
        .I3(gr7_bus1__0_27),
        .I4(\badr[15]_INST_0_i_4_1 [4]),
        .O(\bdatw[12]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[12]_INST_0_i_26 
       (.I0(\bdatw[12]_INST_0_i_51_n_0 ),
        .I1(gr4_bus1__0_39),
        .I2(\badr[15]_INST_0_i_4_6 [4]),
        .I3(gr3_bus1__0_40),
        .I4(\badr[15]_INST_0_i_4_5 [4]),
        .O(\bdatw[12]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00F8000000880000)) 
    \bdatw[12]_INST_0_i_27 
       (.I0(\badr[15]_INST_0_i_4_3 [4]),
        .I1(bbus_sel_0[0]),
        .I2(\badr[15]_INST_0_i_4_4 [4]),
        .I3(\bdatw[12]_INST_0_i_8_2 [0]),
        .I4(\bdatw[12]_INST_0_i_8_2 [1]),
        .I5(bbus_sel_0[1]),
        .O(\bdatw[12]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hC00000A000000000)) 
    \bdatw[12]_INST_0_i_48 
       (.I0(\badr[15]_INST_0_i_4_7 [4]),
        .I1(\badr[15]_INST_0_i_4_8 [4]),
        .I2(\bdatw[12]_INST_0_i_26_0 ),
        .I3(\bdatw[12]_INST_0_i_26_1 ),
        .I4(\bdatw[12]_INST_0_i_26_2 ),
        .I5(\bdatw[12]_INST_0_i_25_0 ),
        .O(\bdatw[12]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h00C00000000000A0)) 
    \bdatw[12]_INST_0_i_51 
       (.I0(out[4]),
        .I1(\badr[15]_INST_0_i_4_0 [4]),
        .I2(\bdatw[12]_INST_0_i_26_0 ),
        .I3(\bdatw[12]_INST_0_i_26_3 ),
        .I4(\bdatw[12]_INST_0_i_26_1 ),
        .I5(\bdatw[12]_INST_0_i_26_2 ),
        .O(\bdatw[12]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[12]_INST_0_i_8 
       (.I0(\bdatw[12]_INST_0_i_22_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2 ),
        .I2(\bdatw[12]_INST_0_i_2_0 ),
        .I3(\bdatw[12]_INST_0_i_25_n_0 ),
        .I4(\bdatw[12]_INST_0_i_26_n_0 ),
        .I5(\bdatw[12]_INST_0_i_27_n_0 ),
        .O(\grn_reg[4]_1 [3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_21 
       (.I0(\bdatw[12]_INST_0_i_8_0 [0]),
        .I1(gr2_bus1__0_37),
        .I2(\bdatw[12]_INST_0_i_8_1 [0]),
        .I3(gr3_bus1__0_38),
        .O(\bdatw[8]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[8]_INST_0_i_24 
       (.I0(\bdatw[8]_INST_0_i_35_n_0 ),
        .I1(gr0_bus1__0_26),
        .I2(\badr[15]_INST_0_i_4_2 [0]),
        .I3(gr7_bus1__0_27),
        .I4(\badr[15]_INST_0_i_4_1 [0]),
        .O(\bdatw[8]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[8]_INST_0_i_25 
       (.I0(\bdatw[8]_INST_0_i_36_n_0 ),
        .I1(gr4_bus1__0_39),
        .I2(\badr[15]_INST_0_i_4_6 [0]),
        .I3(gr3_bus1__0_40),
        .I4(\badr[15]_INST_0_i_4_5 [0]),
        .O(\bdatw[8]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00F8000000880000)) 
    \bdatw[8]_INST_0_i_26 
       (.I0(\badr[15]_INST_0_i_4_3 [0]),
        .I1(bbus_sel_0[0]),
        .I2(\badr[15]_INST_0_i_4_4 [0]),
        .I3(\bdatw[12]_INST_0_i_8_2 [0]),
        .I4(\bdatw[12]_INST_0_i_8_2 [1]),
        .I5(bbus_sel_0[1]),
        .O(\bdatw[8]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hC00000A000000000)) 
    \bdatw[8]_INST_0_i_35 
       (.I0(\badr[15]_INST_0_i_4_7 [0]),
        .I1(\badr[15]_INST_0_i_4_8 [0]),
        .I2(\bdatw[12]_INST_0_i_26_0 ),
        .I3(\bdatw[12]_INST_0_i_26_1 ),
        .I4(\bdatw[12]_INST_0_i_26_2 ),
        .I5(\bdatw[12]_INST_0_i_25_0 ),
        .O(\bdatw[8]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h00C00000000000A0)) 
    \bdatw[8]_INST_0_i_36 
       (.I0(out[0]),
        .I1(\badr[15]_INST_0_i_4_0 [0]),
        .I2(\bdatw[12]_INST_0_i_26_0 ),
        .I3(\bdatw[12]_INST_0_i_26_3 ),
        .I4(\bdatw[12]_INST_0_i_26_1 ),
        .I5(\bdatw[12]_INST_0_i_26_2 ),
        .O(\bdatw[8]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[8]_INST_0_i_8 
       (.I0(\bdatw[8]_INST_0_i_21_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2 ),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .I3(\bdatw[8]_INST_0_i_24_n_0 ),
        .I4(\bdatw[8]_INST_0_i_25_n_0 ),
        .I5(\bdatw[8]_INST_0_i_26_n_0 ),
        .O(\grn_reg[4]_1 [0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_20 
       (.I0(\bdatw[12]_INST_0_i_8_0 [1]),
        .I1(gr2_bus1__0_37),
        .I2(\bdatw[12]_INST_0_i_8_1 [1]),
        .I3(gr3_bus1__0_38),
        .O(\bdatw[9]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[9]_INST_0_i_23 
       (.I0(\bdatw[9]_INST_0_i_34_n_0 ),
        .I1(gr0_bus1__0_26),
        .I2(\badr[15]_INST_0_i_4_2 [1]),
        .I3(gr7_bus1__0_27),
        .I4(\badr[15]_INST_0_i_4_1 [1]),
        .O(\bdatw[9]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[9]_INST_0_i_24 
       (.I0(\bdatw[9]_INST_0_i_35_n_0 ),
        .I1(gr4_bus1__0_39),
        .I2(\badr[15]_INST_0_i_4_6 [1]),
        .I3(gr3_bus1__0_40),
        .I4(\badr[15]_INST_0_i_4_5 [1]),
        .O(\bdatw[9]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h00F8000000880000)) 
    \bdatw[9]_INST_0_i_25 
       (.I0(\badr[15]_INST_0_i_4_3 [1]),
        .I1(bbus_sel_0[0]),
        .I2(\badr[15]_INST_0_i_4_4 [1]),
        .I3(\bdatw[12]_INST_0_i_8_2 [0]),
        .I4(\bdatw[12]_INST_0_i_8_2 [1]),
        .I5(bbus_sel_0[1]),
        .O(\bdatw[9]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hC00000A000000000)) 
    \bdatw[9]_INST_0_i_34 
       (.I0(\badr[15]_INST_0_i_4_7 [1]),
        .I1(\badr[15]_INST_0_i_4_8 [1]),
        .I2(\bdatw[12]_INST_0_i_26_0 ),
        .I3(\bdatw[12]_INST_0_i_26_1 ),
        .I4(\bdatw[12]_INST_0_i_26_2 ),
        .I5(\bdatw[12]_INST_0_i_25_0 ),
        .O(\bdatw[9]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h00C00000000000A0)) 
    \bdatw[9]_INST_0_i_35 
       (.I0(out[1]),
        .I1(\badr[15]_INST_0_i_4_0 [1]),
        .I2(\bdatw[12]_INST_0_i_26_0 ),
        .I3(\bdatw[12]_INST_0_i_26_3 ),
        .I4(\bdatw[12]_INST_0_i_26_1 ),
        .I5(\bdatw[12]_INST_0_i_26_2 ),
        .O(\bdatw[9]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[9]_INST_0_i_8 
       (.I0(\bdatw[9]_INST_0_i_20_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\bdatw[9]_INST_0_i_23_n_0 ),
        .I4(\bdatw[9]_INST_0_i_24_n_0 ),
        .I5(\bdatw[9]_INST_0_i_25_n_0 ),
        .O(\grn_reg[4]_1 [1]));
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
    cbus_sel_cr,
    \iv_reg[15]_1 ,
    clk);
  input [0:0]SR;
  input [0:0]cbus_sel_cr;
  input [15:0]\iv_reg[15]_1 ;
  input clk;
     output [15:0]iv;

  wire [0:0]SR;
  wire [0:0]cbus_sel_cr;
  wire clk;
  (* DONT_TOUCH *) wire [15:0]iv;
  wire [15:0]\iv_reg[15]_1 ;

  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[0] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_1 [0]),
        .Q(iv[0]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[10] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_1 [10]),
        .Q(iv[10]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[11] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_1 [11]),
        .Q(iv[11]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[12] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_1 [12]),
        .Q(iv[12]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[13] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_1 [13]),
        .Q(iv[13]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[14] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_1 [14]),
        .Q(iv[14]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[15] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_1 [15]),
        .Q(iv[15]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[1] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_1 [1]),
        .Q(iv[1]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[2] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_1 [2]),
        .Q(iv[2]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[3] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_1 [3]),
        .Q(iv[3]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[4] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_1 [4]),
        .Q(iv[4]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[5] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_1 [5]),
        .Q(iv[5]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[6] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_1 [6]),
        .Q(iv[6]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[7] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_1 [7]),
        .Q(iv[7]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[8] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_1 [8]),
        .Q(iv[8]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[9] 
       (.C(clk),
        .CE(cbus_sel_cr),
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
   (.out({sp[15],sp[14],sp[13],sp[12],sp[11],sp[10],sp[9],sp[8],sp[7],sp[6],sp[5],sp[4],sp[3],sp[2],sp[1],sp[0]}),
    sp_dec_0,
    \sp_reg[3]_0 ,
    \sp_reg[8]_0 ,
    \sp_reg[9]_0 ,
    \sp_reg[10]_0 ,
    \sp_reg[11]_0 ,
    \sp_reg[12]_0 ,
    \sp_reg[13]_0 ,
    \sp_reg[14]_0 ,
    \sp_reg[15]_0 ,
    \sp_reg[1]_0 ,
    \sp_reg[2]_0 ,
    \sp_reg[3]_1 ,
    \sp_reg[4]_0 ,
    \sp_reg[5]_0 ,
    \sp_reg[6]_0 ,
    \sp_reg[7]_0 ,
    \sp_reg[15]_1 ,
    \sp_reg[1]_1 ,
    \sp_reg[2]_1 ,
    \sp_reg[3]_2 ,
    \sp_reg[4]_1 ,
    \sp_reg[5]_1 ,
    \sp_reg[6]_1 ,
    \sp_reg[7]_1 ,
    \sp_reg[8]_1 ,
    \sp_reg[9]_1 ,
    \sp_reg[10]_1 ,
    \sp_reg[11]_1 ,
    \sp_reg[12]_1 ,
    \sp_reg[13]_1 ,
    \sp_reg[14]_1 ,
    \bdatw[8]_INST_0_i_1 ,
    bbus_b02,
    \bdatw[8]_INST_0_i_1_0 ,
    \bdatw[9]_INST_0_i_1 ,
    \bdatw[10]_INST_0_i_1 ,
    \bdatw[11]_INST_0_i_1 ,
    \bdatw[12]_INST_0_i_1 ,
    \bdatw[13]_INST_0_i_1 ,
    \bdatw[14]_INST_0_i_1 ,
    \bdatw[15]_INST_0_i_1 ,
    ctl_sp_dec,
    ctl_sp_inc,
    SR,
    \sp_reg[15]_2 ,
    clk);
  output [14:0]sp_dec_0;
  output [0:0]\sp_reg[3]_0 ;
  output \sp_reg[8]_0 ;
  output \sp_reg[9]_0 ;
  output \sp_reg[10]_0 ;
  output \sp_reg[11]_0 ;
  output \sp_reg[12]_0 ;
  output \sp_reg[13]_0 ;
  output \sp_reg[14]_0 ;
  output \sp_reg[15]_0 ;
  output \sp_reg[1]_0 ;
  output \sp_reg[2]_0 ;
  output \sp_reg[3]_1 ;
  output \sp_reg[4]_0 ;
  output \sp_reg[5]_0 ;
  output \sp_reg[6]_0 ;
  output \sp_reg[7]_0 ;
  output \sp_reg[15]_1 ;
  output \sp_reg[1]_1 ;
  output \sp_reg[2]_1 ;
  output \sp_reg[3]_2 ;
  output \sp_reg[4]_1 ;
  output \sp_reg[5]_1 ;
  output \sp_reg[6]_1 ;
  output \sp_reg[7]_1 ;
  output \sp_reg[8]_1 ;
  output \sp_reg[9]_1 ;
  output \sp_reg[10]_1 ;
  output \sp_reg[11]_1 ;
  output \sp_reg[12]_1 ;
  output \sp_reg[13]_1 ;
  output \sp_reg[14]_1 ;
  input [1:0]\bdatw[8]_INST_0_i_1 ;
  input [7:0]bbus_b02;
  input \bdatw[8]_INST_0_i_1_0 ;
  input \bdatw[9]_INST_0_i_1 ;
  input \bdatw[10]_INST_0_i_1 ;
  input \bdatw[11]_INST_0_i_1 ;
  input \bdatw[12]_INST_0_i_1 ;
  input \bdatw[13]_INST_0_i_1 ;
  input \bdatw[14]_INST_0_i_1 ;
  input \bdatw[15]_INST_0_i_1 ;
  input ctl_sp_dec;
  input ctl_sp_inc;
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
  wire \badr[15]_INST_0_i_81_n_0 ;
  wire \badr[15]_INST_0_i_82_n_0 ;
  wire \badr[15]_INST_0_i_83_n_0 ;
  wire \badr[15]_INST_0_i_84_n_0 ;
  wire \badr[7]_INST_0_i_23_n_0 ;
  wire \badr[7]_INST_0_i_23_n_1 ;
  wire \badr[7]_INST_0_i_23_n_2 ;
  wire \badr[7]_INST_0_i_23_n_3 ;
  wire \badr[7]_INST_0_i_24_n_0 ;
  wire \badr[7]_INST_0_i_25_n_0 ;
  wire \badr[7]_INST_0_i_26_n_0 ;
  wire \badr[7]_INST_0_i_27_n_0 ;
  wire [7:0]bbus_b02;
  wire \bdatw[10]_INST_0_i_1 ;
  wire \bdatw[11]_INST_0_i_1 ;
  wire \bdatw[12]_INST_0_i_1 ;
  wire \bdatw[13]_INST_0_i_1 ;
  wire \bdatw[14]_INST_0_i_1 ;
  wire \bdatw[15]_INST_0_i_1 ;
  wire [1:0]\bdatw[8]_INST_0_i_1 ;
  wire \bdatw[8]_INST_0_i_1_0 ;
  wire \bdatw[9]_INST_0_i_1 ;
  wire clk;
  wire ctl_sp_dec;
  wire ctl_sp_inc;
  (* DONT_TOUCH *) wire [15:0]sp;
  wire \sp[0]_i_7_n_0 ;
  wire \sp[0]_i_8_n_0 ;
  wire \sp[0]_i_9_n_0 ;
  wire \sp[3]_i_4_n_0 ;
  wire [14:0]sp_dec_0;
  wire \sp_reg[0]_i_3_n_0 ;
  wire \sp_reg[0]_i_3_n_1 ;
  wire \sp_reg[0]_i_3_n_2 ;
  wire \sp_reg[0]_i_3_n_3 ;
  wire \sp_reg[10]_0 ;
  wire \sp_reg[10]_1 ;
  wire \sp_reg[11]_0 ;
  wire \sp_reg[11]_1 ;
  wire \sp_reg[11]_i_3_n_0 ;
  wire \sp_reg[11]_i_3_n_1 ;
  wire \sp_reg[11]_i_3_n_2 ;
  wire \sp_reg[11]_i_3_n_3 ;
  wire \sp_reg[11]_i_3_n_4 ;
  wire \sp_reg[11]_i_3_n_5 ;
  wire \sp_reg[11]_i_3_n_6 ;
  wire \sp_reg[11]_i_3_n_7 ;
  wire \sp_reg[12]_0 ;
  wire \sp_reg[12]_1 ;
  wire \sp_reg[13]_0 ;
  wire \sp_reg[13]_1 ;
  wire \sp_reg[14]_0 ;
  wire \sp_reg[14]_1 ;
  wire \sp_reg[15]_0 ;
  wire \sp_reg[15]_1 ;
  wire [15:0]\sp_reg[15]_2 ;
  wire \sp_reg[15]_i_5_n_1 ;
  wire \sp_reg[15]_i_5_n_2 ;
  wire \sp_reg[15]_i_5_n_3 ;
  wire \sp_reg[15]_i_5_n_4 ;
  wire \sp_reg[15]_i_5_n_5 ;
  wire \sp_reg[15]_i_5_n_6 ;
  wire \sp_reg[15]_i_5_n_7 ;
  wire \sp_reg[1]_0 ;
  wire \sp_reg[1]_1 ;
  wire \sp_reg[2]_0 ;
  wire \sp_reg[2]_1 ;
  wire [0:0]\sp_reg[3]_0 ;
  wire \sp_reg[3]_1 ;
  wire \sp_reg[3]_2 ;
  wire \sp_reg[3]_i_3_n_0 ;
  wire \sp_reg[3]_i_3_n_1 ;
  wire \sp_reg[3]_i_3_n_2 ;
  wire \sp_reg[3]_i_3_n_3 ;
  wire \sp_reg[3]_i_3_n_4 ;
  wire \sp_reg[3]_i_3_n_5 ;
  wire \sp_reg[3]_i_3_n_6 ;
  wire \sp_reg[4]_0 ;
  wire \sp_reg[4]_1 ;
  wire \sp_reg[5]_0 ;
  wire \sp_reg[5]_1 ;
  wire \sp_reg[6]_0 ;
  wire \sp_reg[6]_1 ;
  wire \sp_reg[7]_0 ;
  wire \sp_reg[7]_1 ;
  wire \sp_reg[7]_i_3_n_0 ;
  wire \sp_reg[7]_i_3_n_1 ;
  wire \sp_reg[7]_i_3_n_2 ;
  wire \sp_reg[7]_i_3_n_3 ;
  wire \sp_reg[7]_i_3_n_4 ;
  wire \sp_reg[7]_i_3_n_5 ;
  wire \sp_reg[7]_i_3_n_6 ;
  wire \sp_reg[7]_i_3_n_7 ;
  wire \sp_reg[8]_0 ;
  wire \sp_reg[8]_1 ;
  wire \sp_reg[9]_0 ;
  wire \sp_reg[9]_1 ;
  wire [3:0]\NLW_sp_reg[3]_i_3_O_UNCONNECTED ;

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
        .S({\badr[15]_INST_0_i_81_n_0 ,\badr[15]_INST_0_i_82_n_0 ,\badr[15]_INST_0_i_83_n_0 ,\badr[15]_INST_0_i_84_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_81 
       (.I0(sp[15]),
        .O(\badr[15]_INST_0_i_81_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_82 
       (.I0(sp[14]),
        .O(\badr[15]_INST_0_i_82_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_83 
       (.I0(sp[13]),
        .O(\badr[15]_INST_0_i_83_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_84 
       (.I0(sp[12]),
        .O(\badr[15]_INST_0_i_84_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[7]_INST_0_i_23 
       (.CI(\sp_reg[0]_i_3_n_0 ),
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
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[10]_INST_0_i_4 
       (.I0(\bdatw[8]_INST_0_i_1 [0]),
        .I1(sp[10]),
        .I2(\bdatw[8]_INST_0_i_1 [1]),
        .I3(sp_dec_0[9]),
        .I4(bbus_b02[2]),
        .I5(\bdatw[10]_INST_0_i_1 ),
        .O(\sp_reg[10]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_9 
       (.I0(sp_dec_0[1]),
        .I1(\bdatw[8]_INST_0_i_1 [1]),
        .I2(sp[2]),
        .I3(\bdatw[8]_INST_0_i_1 [0]),
        .O(\sp_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_10 
       (.I0(sp_dec_0[2]),
        .I1(\bdatw[8]_INST_0_i_1 [1]),
        .I2(sp[3]),
        .I3(\bdatw[8]_INST_0_i_1 [0]),
        .O(\sp_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[11]_INST_0_i_4 
       (.I0(\bdatw[8]_INST_0_i_1 [0]),
        .I1(sp[11]),
        .I2(\bdatw[8]_INST_0_i_1 [1]),
        .I3(sp_dec_0[10]),
        .I4(bbus_b02[3]),
        .I5(\bdatw[11]_INST_0_i_1 ),
        .O(\sp_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[12]_INST_0_i_4 
       (.I0(\bdatw[8]_INST_0_i_1 [0]),
        .I1(sp[12]),
        .I2(\bdatw[8]_INST_0_i_1 [1]),
        .I3(sp_dec_0[11]),
        .I4(bbus_b02[4]),
        .I5(\bdatw[12]_INST_0_i_1 ),
        .O(\sp_reg[12]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_9 
       (.I0(sp_dec_0[3]),
        .I1(\bdatw[8]_INST_0_i_1 [1]),
        .I2(sp[4]),
        .I3(\bdatw[8]_INST_0_i_1 [0]),
        .O(\sp_reg[4]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_11 
       (.I0(sp_dec_0[4]),
        .I1(\bdatw[8]_INST_0_i_1 [1]),
        .I2(sp[5]),
        .I3(\bdatw[8]_INST_0_i_1 [0]),
        .O(\sp_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[13]_INST_0_i_4 
       (.I0(\bdatw[8]_INST_0_i_1 [0]),
        .I1(sp[13]),
        .I2(\bdatw[8]_INST_0_i_1 [1]),
        .I3(sp_dec_0[12]),
        .I4(bbus_b02[5]),
        .I5(\bdatw[13]_INST_0_i_1 ),
        .O(\sp_reg[13]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_11 
       (.I0(sp_dec_0[5]),
        .I1(\bdatw[8]_INST_0_i_1 [1]),
        .I2(sp[6]),
        .I3(\bdatw[8]_INST_0_i_1 [0]),
        .O(\sp_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[14]_INST_0_i_4 
       (.I0(\bdatw[8]_INST_0_i_1 [0]),
        .I1(sp[14]),
        .I2(\bdatw[8]_INST_0_i_1 [1]),
        .I3(sp_dec_0[13]),
        .I4(bbus_b02[6]),
        .I5(\bdatw[14]_INST_0_i_1 ),
        .O(\sp_reg[14]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_28 
       (.I0(sp_dec_0[6]),
        .I1(\bdatw[8]_INST_0_i_1 [1]),
        .I2(sp[7]),
        .I3(\bdatw[8]_INST_0_i_1 [0]),
        .O(\sp_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[15]_INST_0_i_6 
       (.I0(\bdatw[8]_INST_0_i_1 [0]),
        .I1(sp[15]),
        .I2(\bdatw[8]_INST_0_i_1 [1]),
        .I3(sp_dec_0[14]),
        .I4(bbus_b02[7]),
        .I5(\bdatw[15]_INST_0_i_1 ),
        .O(\sp_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[8]_INST_0_i_4 
       (.I0(\bdatw[8]_INST_0_i_1 [0]),
        .I1(sp[8]),
        .I2(\bdatw[8]_INST_0_i_1 [1]),
        .I3(sp_dec_0[7]),
        .I4(bbus_b02[0]),
        .I5(\bdatw[8]_INST_0_i_1_0 ),
        .O(\sp_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[9]_INST_0_i_4 
       (.I0(\bdatw[8]_INST_0_i_1 [0]),
        .I1(sp[9]),
        .I2(\bdatw[8]_INST_0_i_1 [1]),
        .I3(sp_dec_0[8]),
        .I4(bbus_b02[1]),
        .I5(\bdatw[9]_INST_0_i_1 ),
        .O(\sp_reg[9]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_9 
       (.I0(sp_dec_0[0]),
        .I1(\bdatw[8]_INST_0_i_1 [1]),
        .I2(sp[1]),
        .I3(\bdatw[8]_INST_0_i_1 [0]),
        .O(\sp_reg[1]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[0]_i_7 
       (.I0(sp[3]),
        .O(\sp[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[0]_i_8 
       (.I0(sp[2]),
        .O(\sp[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[0]_i_9 
       (.I0(sp[1]),
        .O(\sp[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[10]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[10]),
        .I3(sp_dec_0[9]),
        .I4(\sp_reg[11]_i_3_n_5 ),
        .O(\sp_reg[10]_1 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[11]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[11]),
        .I3(sp_dec_0[10]),
        .I4(\sp_reg[11]_i_3_n_4 ),
        .O(\sp_reg[11]_1 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[12]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[12]),
        .I3(sp_dec_0[11]),
        .I4(\sp_reg[15]_i_5_n_7 ),
        .O(\sp_reg[12]_1 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[13]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[13]),
        .I3(sp_dec_0[12]),
        .I4(\sp_reg[15]_i_5_n_6 ),
        .O(\sp_reg[13]_1 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[14]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[14]),
        .I3(sp_dec_0[13]),
        .I4(\sp_reg[15]_i_5_n_5 ),
        .O(\sp_reg[14]_1 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[15]_i_3 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[15]),
        .I3(sp_dec_0[14]),
        .I4(\sp_reg[15]_i_5_n_4 ),
        .O(\sp_reg[15]_1 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[1]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[1]),
        .I3(sp_dec_0[0]),
        .I4(\sp_reg[3]_i_3_n_6 ),
        .O(\sp_reg[1]_1 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[2]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[2]),
        .I3(sp_dec_0[1]),
        .I4(\sp_reg[3]_i_3_n_5 ),
        .O(\sp_reg[2]_1 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[3]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[3]),
        .I3(sp_dec_0[2]),
        .I4(\sp_reg[3]_i_3_n_4 ),
        .O(\sp_reg[3]_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[3]_i_4 
       (.I0(sp[1]),
        .O(\sp[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[4]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[4]),
        .I3(sp_dec_0[3]),
        .I4(\sp_reg[7]_i_3_n_7 ),
        .O(\sp_reg[4]_1 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[5]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[5]),
        .I3(sp_dec_0[4]),
        .I4(\sp_reg[7]_i_3_n_6 ),
        .O(\sp_reg[5]_1 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[6]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[6]),
        .I3(sp_dec_0[5]),
        .I4(\sp_reg[7]_i_3_n_5 ),
        .O(\sp_reg[6]_1 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[7]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[7]),
        .I3(sp_dec_0[6]),
        .I4(\sp_reg[7]_i_3_n_4 ),
        .O(\sp_reg[7]_1 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[8]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[8]),
        .I3(sp_dec_0[7]),
        .I4(\sp_reg[11]_i_3_n_7 ),
        .O(\sp_reg[8]_1 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[9]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[9]),
        .I3(sp_dec_0[8]),
        .I4(\sp_reg[11]_i_3_n_6 ),
        .O(\sp_reg[9]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_2 [0]),
        .Q(sp[0]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sp_reg[0]_i_3 
       (.CI(\<const0> ),
        .CO({\sp_reg[0]_i_3_n_0 ,\sp_reg[0]_i_3_n_1 ,\sp_reg[0]_i_3_n_2 ,\sp_reg[0]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({sp[3:1],\<const0> }),
        .O({sp_dec_0[2:0],\sp_reg[3]_0 }),
        .S({\sp[0]_i_7_n_0 ,\sp[0]_i_8_n_0 ,\sp[0]_i_9_n_0 ,sp[0]}));
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
  CARRY4 \sp_reg[11]_i_3 
       (.CI(\sp_reg[7]_i_3_n_0 ),
        .CO({\sp_reg[11]_i_3_n_0 ,\sp_reg[11]_i_3_n_1 ,\sp_reg[11]_i_3_n_2 ,\sp_reg[11]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sp_reg[11]_i_3_n_4 ,\sp_reg[11]_i_3_n_5 ,\sp_reg[11]_i_3_n_6 ,\sp_reg[11]_i_3_n_7 }),
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
  CARRY4 \sp_reg[15]_i_5 
       (.CI(\sp_reg[11]_i_3_n_0 ),
        .CO({\sp_reg[15]_i_5_n_1 ,\sp_reg[15]_i_5_n_2 ,\sp_reg[15]_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sp_reg[15]_i_5_n_4 ,\sp_reg[15]_i_5_n_5 ,\sp_reg[15]_i_5_n_6 ,\sp_reg[15]_i_5_n_7 }),
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
  CARRY4 \sp_reg[3]_i_3 
       (.CI(\<const0> ),
        .CO({\sp_reg[3]_i_3_n_0 ,\sp_reg[3]_i_3_n_1 ,\sp_reg[3]_i_3_n_2 ,\sp_reg[3]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,sp[1],\<const0> }),
        .O({\sp_reg[3]_i_3_n_4 ,\sp_reg[3]_i_3_n_5 ,\sp_reg[3]_i_3_n_6 ,\NLW_sp_reg[3]_i_3_O_UNCONNECTED [0]}),
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
  CARRY4 \sp_reg[7]_i_3 
       (.CI(\sp_reg[3]_i_3_n_0 ),
        .CO({\sp_reg[7]_i_3_n_0 ,\sp_reg[7]_i_3_n_1 ,\sp_reg[7]_i_3_n_2 ,\sp_reg[7]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sp_reg[7]_i_3_n_4 ,\sp_reg[7]_i_3_n_5 ,\sp_reg[7]_i_3_n_6 ,\sp_reg[7]_i_3_n_7 }),
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
    \sr_reg[4]_0 ,
    \sr_reg[6]_0 ,
    \sr_reg[6]_1 ,
    \sr_reg[7]_0 ,
    \sr_reg[4]_1 ,
    \sr_reg[7]_1 ,
    \sr_reg[5]_0 ,
    \sr_reg[4]_2 ,
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
    gr4_bus1__0,
    gr3_bus1__0,
    gr4_bus1__0_0,
    gr5_bus1__0,
    bank_sel,
    \sr_reg[6]_2 ,
    \sr_reg[6]_3 ,
    fch_irq_req,
    \sr_reg[4]_3 ,
    \sr_reg[4]_4 ,
    S,
    ctl_fetch_fl_reg,
    ctl_fetch_fl_reg_0,
    ctl_fetch_fl_reg_1,
    \badr[15]_INST_0_i_77 ,
    Q,
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
    abus_sel_0,
    bbus_sel_0,
    abus_0,
    \iv[10]_i_19 ,
    irq_lev,
    irq,
    fadr,
    D,
    clk,
    \sr_reg[15]_1 ,
    SR,
    \sr_reg[11]_0 ,
    \sr_reg[10]_0 ,
    \sr_reg[7]_2 ,
    \sr_reg[6]_4 ,
    \sr_reg[5]_1 ,
    \sr_reg[4]_5 ,
    \sr_reg[3]_0 ,
    \sr_reg[2]_0 ,
    \sr_reg[1]_0 ,
    \sr_reg[0]_0 );
  output \sr_reg[4]_0 ;
  output \sr_reg[6]_0 ;
  output \sr_reg[6]_1 ;
  output \sr_reg[7]_0 ;
  output \sr_reg[4]_1 ;
  output \sr_reg[7]_1 ;
  output \sr_reg[5]_0 ;
  output \sr_reg[4]_2 ;
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
  output gr4_bus1__0;
  output gr3_bus1__0;
  output gr4_bus1__0_0;
  output gr5_bus1__0;
  output [3:0]bank_sel;
  output \sr_reg[6]_2 ;
  output \sr_reg[6]_3 ;
  output fch_irq_req;
  output \sr_reg[4]_3 ;
  output \sr_reg[4]_4 ;
  output [0:0]S;
  input ctl_fetch_fl_reg;
  input ctl_fetch_fl_reg_0;
  input ctl_fetch_fl_reg_1;
  input [4:0]\badr[15]_INST_0_i_77 ;
  input [1:0]Q;
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
  input [2:0]abus_sel_0;
  input [1:0]bbus_sel_0;
  input [1:0]abus_0;
  input \iv[10]_i_19 ;
  input [1:0]irq_lev;
  input irq;
  input [0:0]fadr;
  input [1:0]D;
  input clk;
  input \sr_reg[15]_1 ;
  input [0:0]SR;
  input \sr_reg[11]_0 ;
  input \sr_reg[10]_0 ;
  input \sr_reg[7]_2 ;
  input \sr_reg[6]_4 ;
  input \sr_reg[5]_1 ;
  input \sr_reg[4]_5 ;
  input \sr_reg[3]_0 ;
  input \sr_reg[2]_0 ;
  input \sr_reg[1]_0 ;
  input \sr_reg[0]_0 ;
     output [15:0]sr;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [1:0]abus_0;
  wire [2:0]abus_sel_0;
  wire \badr[0]_INST_0_i_1 ;
  wire \badr[10]_INST_0_i_1 ;
  wire \badr[11]_INST_0_i_1 ;
  wire \badr[12]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_1 ;
  wire \badr[14]_INST_0_i_1 ;
  wire [15:0]\badr[15]_INST_0_i_1 ;
  wire [15:0]\badr[15]_INST_0_i_1_0 ;
  wire \badr[15]_INST_0_i_1_1 ;
  wire [4:0]\badr[15]_INST_0_i_77 ;
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
  wire [1:0]bbus_sel_0;
  wire clk;
  wire ctl_fetch_fl_reg;
  wire ctl_fetch_fl_reg_0;
  wire ctl_fetch_fl_reg_1;
  wire [0:0]fadr;
  wire fch_irq_req;
  wire gr3_bus1__0;
  wire gr4_bus1__0;
  wire gr4_bus1__0_0;
  wire gr5_bus1__0;
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
  wire \iv[10]_i_19 ;
  (* DONT_TOUCH *) wire [15:0]sr;
  wire \sr_reg[0]_0 ;
  wire \sr_reg[10]_0 ;
  wire \sr_reg[11]_0 ;
  wire \sr_reg[15]_1 ;
  wire \sr_reg[1]_0 ;
  wire \sr_reg[2]_0 ;
  wire \sr_reg[3]_0 ;
  wire \sr_reg[4]_0 ;
  wire \sr_reg[4]_1 ;
  wire \sr_reg[4]_2 ;
  wire \sr_reg[4]_3 ;
  wire \sr_reg[4]_4 ;
  wire \sr_reg[4]_5 ;
  wire \sr_reg[5]_0 ;
  wire \sr_reg[5]_1 ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[6]_1 ;
  wire \sr_reg[6]_2 ;
  wire \sr_reg[6]_3 ;
  wire \sr_reg[6]_4 ;
  wire \sr_reg[7]_0 ;
  wire \sr_reg[7]_1 ;
  wire \sr_reg[7]_2 ;

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
  LUT2 #(
    .INIT(4'h6)) 
    \badr[15]_INST_0_i_100 
       (.I0(sr[5]),
        .I1(\badr[15]_INST_0_i_77 [0]),
        .O(\sr_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFCEEFFFFFCEECCFF)) 
    \badr[15]_INST_0_i_119 
       (.I0(sr[4]),
        .I1(\badr[15]_INST_0_i_77 [4]),
        .I2(sr[7]),
        .I3(\badr[15]_INST_0_i_77 [2]),
        .I4(\badr[15]_INST_0_i_77 [1]),
        .I5(sr[6]),
        .O(\sr_reg[4]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5FA0CFCF)) 
    \badr[15]_INST_0_i_122 
       (.I0(sr[7]),
        .I1(sr[4]),
        .I2(\badr[15]_INST_0_i_77 [1]),
        .I3(sr[5]),
        .I4(\badr[15]_INST_0_i_77 [3]),
        .I5(Q[0]),
        .O(\sr_reg[7]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFE2)) 
    \badr[15]_INST_0_i_125 
       (.I0(sr[6]),
        .I1(\badr[15]_INST_0_i_77 [1]),
        .I2(sr[7]),
        .I3(Q[0]),
        .I4(\badr[15]_INST_0_i_77 [3]),
        .O(\sr_reg[6]_1 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[15]_INST_0_i_15 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(abus_sel_0[1]),
        .O(gr3_bus1__0));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[15]_INST_0_i_16 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(abus_sel_0[2]),
        .O(gr4_bus1__0));
  LUT3 #(
    .INIT(8'h40)) 
    \badr[15]_INST_0_i_25 
       (.I0(sr[0]),
        .I1(sr[1]),
        .I2(abus_sel_0[1]),
        .O(\bank02/abuso2l/gr3_bus1__0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \badr[15]_INST_0_i_26 
       (.I0(sr[0]),
        .I1(sr[1]),
        .I2(abus_sel_0[0]),
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
    \badr[15]_INST_0_i_85 
       (.I0(sr[0]),
        .I1(sr[1]),
        .O(bank_sel[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_86 
       (.I0(sr[0]),
        .I1(sr[1]),
        .O(bank_sel[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_96 
       (.I0(sr[1]),
        .I1(sr[0]),
        .O(bank_sel[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_97 
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
  LUT6 #(
    .INIT(64'hCF30C03FAF50AF50)) 
    \bdatw[15]_INST_0_i_40 
       (.I0(sr[6]),
        .I1(sr[7]),
        .I2(\badr[15]_INST_0_i_77 [2]),
        .I3(\badr[15]_INST_0_i_77 [0]),
        .I4(sr[4]),
        .I5(\badr[15]_INST_0_i_77 [1]),
        .O(\sr_reg[6]_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \bdatw[15]_INST_0_i_57 
       (.I0(sr[0]),
        .I1(sr[1]),
        .I2(bbus_sel_0[0]),
        .O(gr4_bus1__0_0));
  LUT3 #(
    .INIT(8'h40)) 
    \bdatw[15]_INST_0_i_58 
       (.I0(sr[0]),
        .I1(sr[1]),
        .I2(bbus_sel_0[1]),
        .O(gr5_bus1__0));
  LUT5 #(
    .INIT(32'h59A9A959)) 
    \ccmd[0]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_77 [0]),
        .I1(sr[4]),
        .I2(\badr[15]_INST_0_i_77 [3]),
        .I3(sr[5]),
        .I4(sr[7]),
        .O(\sr_reg[4]_3 ));
  LUT5 #(
    .INIT(32'h2EE20000)) 
    ctl_fetch_inferred_i_24
       (.I0(sr[4]),
        .I1(\badr[15]_INST_0_i_77 [3]),
        .I2(sr[5]),
        .I3(sr[7]),
        .I4(\badr[15]_INST_0_i_77 [1]),
        .O(\sr_reg[4]_4 ));
  LUT6 #(
    .INIT(64'h000000000FE3EF03)) 
    ctl_fetch_inferred_i_36
       (.I0(sr[4]),
        .I1(\badr[15]_INST_0_i_77 [3]),
        .I2(\badr[15]_INST_0_i_77 [1]),
        .I3(sr[5]),
        .I4(sr[7]),
        .I5(Q[1]),
        .O(\sr_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hBFFFFFBF80000080)) 
    ctl_fetch_inferred_i_6
       (.I0(ctl_fetch_fl_reg),
        .I1(ctl_fetch_fl_reg_0),
        .I2(sr[4]),
        .I3(sr[5]),
        .I4(sr[7]),
        .I5(ctl_fetch_fl_reg_1),
        .O(\sr_reg[4]_0 ));
  LUT5 #(
    .INIT(32'h20F20000)) 
    fch_irq_req_fl_i_1
       (.I0(sr[2]),
        .I1(irq_lev[0]),
        .I2(sr[3]),
        .I3(irq_lev[1]),
        .I4(irq),
        .O(fch_irq_req));
  LUT3 #(
    .INIT(8'hAC)) 
    \iv[10]_i_23 
       (.I0(sr[6]),
        .I1(abus_0[0]),
        .I2(\iv[10]_i_19 ),
        .O(\sr_reg[6]_2 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \iv[13]_i_27 
       (.I0(sr[6]),
        .I1(\iv[10]_i_19 ),
        .I2(abus_0[1]),
        .O(\sr_reg[6]_3 ));
  LUT6 #(
    .INIT(64'h5955995959555955)) 
    \pc[3]_i_3 
       (.I0(fadr),
        .I1(irq),
        .I2(irq_lev[1]),
        .I3(sr[3]),
        .I4(irq_lev[0]),
        .I5(sr[2]),
        .O(S));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[0]_0 ),
        .Q(sr[0]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[10]_0 ),
        .Q(sr[10]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[11]_0 ),
        .Q(sr[11]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(sr[12]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(sr[13]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[14]),
        .Q(sr[14]),
        .R(\sr_reg[15]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[15]),
        .Q(sr[15]),
        .R(\sr_reg[15]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[1]_0 ),
        .Q(sr[1]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[2]_0 ),
        .Q(sr[2]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[3]_0 ),
        .Q(sr[3]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[4]_5 ),
        .Q(sr[4]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[5]_1 ),
        .Q(sr[5]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[6]_4 ),
        .Q(sr[6]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[7]_2 ),
        .Q(sr[7]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[8]),
        .Q(sr[8]),
        .R(\sr_reg[15]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[9]),
        .Q(sr[9]),
        .R(\sr_reg[15]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \stat[2]_i_15 
       (.I0(sr[7]),
        .I1(sr[5]),
        .O(\sr_reg[7]_1 ));
endmodule

module mcvm_rgf_treg
   (.\tr_reg[15]_0 ({tr[15],tr[14],tr[13],tr[12],tr[11],tr[10],tr[9],tr[8],tr[7],tr[6],tr[5],tr[4],tr[3],tr[2],tr[1],tr[0]}),
    SR,
    cbus_sel_cr,
    \tr_reg[15]_1 ,
    clk);
  input [0:0]SR;
  input [0:0]cbus_sel_cr;
  input [15:0]\tr_reg[15]_1 ;
  input clk;
     output [15:0]tr;

  wire [0:0]SR;
  wire [0:0]cbus_sel_cr;
  wire clk;
  (* DONT_TOUCH *) wire [15:0]tr;
  wire [15:0]\tr_reg[15]_1 ;

  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[0] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_1 [0]),
        .Q(tr[0]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[10] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_1 [10]),
        .Q(tr[10]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[11] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_1 [11]),
        .Q(tr[11]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[12] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_1 [12]),
        .Q(tr[12]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[13] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_1 [13]),
        .Q(tr[13]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[14] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_1 [14]),
        .Q(tr[14]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[15] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_1 [15]),
        .Q(tr[15]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[1] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_1 [1]),
        .Q(tr[1]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[2] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_1 [2]),
        .Q(tr[2]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[3] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_1 [3]),
        .Q(tr[3]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[4] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_1 [4]),
        .Q(tr[4]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[5] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_1 [5]),
        .Q(tr[5]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[6] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_1 [6]),
        .Q(tr[6]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[7] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_1 [7]),
        .Q(tr[7]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[8] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_1 [8]),
        .Q(tr[8]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[9] 
       (.C(clk),
        .CE(cbus_sel_cr),
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
//	2026/03/14	ver.1.24
//		instruction: iden
//
//	2024/08/31	ver.1.22
//		instruction: hdown
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
//		sr bit field: cpu id for dual core cpu edition
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
  wire [4:2]abus_sel_0;
  wire [0:0]acmd;
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
  wire [3:3]alu_sr_flag;
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
  wire \bank02/bbuso2l/gr0_bus1__0 ;
  wire \bank02/bbuso2l/gr2_bus1__0 ;
  wire \bank02/bbuso2l/gr3_bus1__0 ;
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
  wire [7:0]bbus_b02;
  wire [15:0]bbus_o;
  wire [5:4]bbus_sel_0;
  wire [5:0]bbus_sel_cr;
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
  wire ctl_copro;
  (* DONT_TOUCH *) wire ctl_fetch;
  wire ctl_n_0;
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
  wire ctl_n_20;
  wire ctl_n_21;
  wire ctl_n_22;
  wire ctl_n_23;
  wire ctl_n_4;
  wire ctl_n_5;
  wire ctl_n_6;
  wire ctl_n_7;
  wire ctl_n_8;
  wire ctl_n_9;
  wire ctl_sp_dec;
  wire ctl_sp_inc;
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
  wire fch_n_131;
  wire fch_n_133;
  wire fch_n_134;
  wire fch_n_135;
  wire fch_n_136;
  wire fch_n_137;
  wire fch_n_138;
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
  wire fch_n_153;
  wire fch_n_17;
  wire fch_n_179;
  wire fch_n_18;
  wire fch_n_180;
  wire fch_n_181;
  wire fch_n_182;
  wire fch_n_183;
  wire fch_n_184;
  wire fch_n_185;
  wire fch_n_186;
  wire fch_n_187;
  wire fch_n_188;
  wire fch_n_189;
  wire fch_n_190;
  wire fch_n_191;
  wire fch_n_192;
  wire fch_n_193;
  wire fch_n_210;
  wire fch_n_243;
  wire fch_n_245;
  wire fch_n_246;
  wire fch_n_247;
  wire fch_n_248;
  wire fch_n_249;
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
  wire fch_n_26;
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
  wire fch_n_28;
  wire fch_n_29;
  wire fch_n_293;
  wire fch_n_294;
  wire fch_n_295;
  wire fch_n_296;
  wire fch_n_297;
  wire fch_n_298;
  wire fch_n_299;
  wire fch_n_300;
  wire fch_n_301;
  wire fch_n_302;
  wire fch_n_303;
  wire fch_n_304;
  wire fch_n_305;
  wire fch_n_306;
  wire fch_n_307;
  wire fch_n_308;
  wire fch_n_309;
  wire fch_n_310;
  wire fch_n_311;
  wire fch_n_312;
  wire fch_n_313;
  wire fch_n_314;
  wire fch_n_315;
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
  wire fch_n_379;
  wire fch_n_380;
  wire fch_n_381;
  wire fch_n_382;
  wire fch_n_383;
  wire fch_n_384;
  wire fch_n_385;
  wire fch_n_386;
  wire fch_n_387;
  wire fch_n_388;
  wire fch_n_389;
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
  wire fch_n_400;
  wire fch_n_401;
  wire fch_n_402;
  wire fch_n_403;
  wire fch_n_45;
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
  wire fch_n_94;
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
  wire mem_n_10;
  wire mem_n_11;
  wire mem_n_12;
  wire mem_n_13;
  wire mem_n_14;
  wire mem_n_15;
  wire mem_n_16;
  wire mem_n_2;
  wire mem_n_3;
  wire mem_n_4;
  wire mem_n_5;
  wire mem_n_6;
  wire mem_n_7;
  wire mem_n_8;
  wire mem_n_9;
  wire \pcnt/p_0_in ;
  wire [15:0]\pcnt/p_1_in ;
  wire [0:0]read_cyc;
  wire rgf_iv_ve;
  wire rgf_n_0;
  wire rgf_n_1;
  wire rgf_n_10;
  wire rgf_n_11;
  wire rgf_n_12;
  wire rgf_n_13;
  wire rgf_n_14;
  wire rgf_n_15;
  wire rgf_n_16;
  wire rgf_n_166;
  wire rgf_n_167;
  wire rgf_n_168;
  wire rgf_n_169;
  wire rgf_n_17;
  wire rgf_n_170;
  wire rgf_n_171;
  wire rgf_n_172;
  wire rgf_n_173;
  wire rgf_n_18;
  wire rgf_n_19;
  wire rgf_n_190;
  wire rgf_n_2;
  wire rgf_n_20;
  wire rgf_n_207;
  wire rgf_n_21;
  wire rgf_n_212;
  wire rgf_n_213;
  wire rgf_n_214;
  wire rgf_n_215;
  wire rgf_n_216;
  wire rgf_n_217;
  wire rgf_n_218;
  wire rgf_n_219;
  wire rgf_n_22;
  wire rgf_n_228;
  wire rgf_n_229;
  wire rgf_n_23;
  wire rgf_n_230;
  wire rgf_n_231;
  wire rgf_n_232;
  wire rgf_n_233;
  wire rgf_n_234;
  wire rgf_n_235;
  wire rgf_n_236;
  wire rgf_n_237;
  wire rgf_n_238;
  wire rgf_n_239;
  wire rgf_n_24;
  wire rgf_n_240;
  wire rgf_n_241;
  wire rgf_n_242;
  wire rgf_n_243;
  wire rgf_n_244;
  wire rgf_n_245;
  wire rgf_n_246;
  wire rgf_n_247;
  wire rgf_n_248;
  wire rgf_n_249;
  wire rgf_n_25;
  wire rgf_n_250;
  wire rgf_n_251;
  wire rgf_n_252;
  wire rgf_n_253;
  wire rgf_n_254;
  wire rgf_n_255;
  wire rgf_n_256;
  wire rgf_n_257;
  wire rgf_n_258;
  wire rgf_n_259;
  wire rgf_n_26;
  wire rgf_n_260;
  wire rgf_n_261;
  wire rgf_n_262;
  wire rgf_n_263;
  wire rgf_n_264;
  wire rgf_n_265;
  wire rgf_n_266;
  wire rgf_n_267;
  wire rgf_n_268;
  wire rgf_n_269;
  wire rgf_n_27;
  wire rgf_n_270;
  wire rgf_n_271;
  wire rgf_n_272;
  wire rgf_n_273;
  wire rgf_n_28;
  wire rgf_n_29;
  wire rgf_n_290;
  wire rgf_n_291;
  wire rgf_n_292;
  wire rgf_n_293;
  wire rgf_n_294;
  wire rgf_n_295;
  wire rgf_n_296;
  wire rgf_n_297;
  wire rgf_n_298;
  wire rgf_n_299;
  wire rgf_n_3;
  wire rgf_n_30;
  wire rgf_n_300;
  wire rgf_n_301;
  wire rgf_n_302;
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
  wire rgf_n_32;
  wire rgf_n_33;
  wire rgf_n_331;
  wire rgf_n_332;
  wire rgf_n_333;
  wire rgf_n_334;
  wire rgf_n_335;
  wire rgf_n_336;
  wire rgf_n_337;
  wire rgf_n_338;
  wire rgf_n_339;
  wire rgf_n_34;
  wire rgf_n_340;
  wire rgf_n_341;
  wire rgf_n_342;
  wire rgf_n_343;
  wire rgf_n_344;
  wire rgf_n_345;
  wire rgf_n_346;
  wire rgf_n_347;
  wire rgf_n_348;
  wire rgf_n_349;
  wire rgf_n_35;
  wire rgf_n_350;
  wire rgf_n_351;
  wire rgf_n_352;
  wire rgf_n_353;
  wire rgf_n_354;
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
  wire rgf_n_9;
  wire rgf_n_94;
  wire rgf_n_96;
  wire rgf_n_97;
  wire rgf_sr_c;
  wire rgf_sr_dr;
  wire [1:0]rgf_sr_ie;
  wire rgf_sr_ml;
  wire [15:0]rgf_tr;
  wire rst_n;
  wire [15:0]\sptr/p_0_in ;
  wire [15:1]\sptr/sp_dec_0 ;
  wire [1:0]sr_bank;
  wire [13:12]\sreg/p_0_in ;
  wire [7:0]\sreg/p_2_in ;
  wire [2:0]stat;
  wire [2:0]stat_nx;

  mcvm_alu alu
       (.DI({fch_n_359,fch_n_360,fch_n_361}),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .S({fch_n_355,fch_n_356,fch_n_357,fch_n_358}),
        .\sr[4]_i_17 (alu_n_17),
        .\sr[6]_i_2 (fch_n_354),
        .\sr[6]_i_2_0 ({fch_n_352,fch_n_353}),
        .tout__1_carry__0_i_8({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .tout__1_carry__1_i_8({alu_n_8,alu_n_9,alu_n_10,alu_n_11}),
        .tout__1_carry__2_i_8({\art/p_0_in ,alu_n_13,alu_n_14,alu_n_15}),
        .tout__1_carry__3_i_3(\art/add/tout ),
        .\tr_reg[11] ({fch_n_396,fch_n_397,fch_n_398,fch_n_399}),
        .\tr_reg[11]_0 ({fch_n_400,fch_n_401,fch_n_402,fch_n_403}),
        .\tr_reg[13] ({fch_n_348,fch_n_349,fch_n_350,fch_n_351}),
        .\tr_reg[13]_0 ({fch_n_344,fch_n_345,fch_n_346,fch_n_347}),
        .\tr_reg[7] ({fch_n_388,fch_n_389,fch_n_390,fch_n_391}),
        .\tr_reg[7]_0 ({fch_n_392,fch_n_393,fch_n_394,fch_n_395}));
  mcvm_fsm ctl
       (.D(stat_nx),
        .Q(stat),
        .brdy(brdy),
        .brdy_0(ctl_n_4),
        .brdy_1(ctl_n_9),
        .clk(clk),
        .crdy(crdy),
        .crdy_0(ctl_n_16),
        .out({fch_ir[15],fch_ir[13:10],fch_ir[3:0]}),
        .p_0_in(\pcnt/p_0_in ),
        .\stat[1]_i_20 (fch_n_26),
        .\stat_reg[0]_0 (ctl_n_6),
        .\stat_reg[0]_1 (ctl_n_12),
        .\stat_reg[0]_2 (ctl_n_13),
        .\stat_reg[0]_3 (ctl_n_14),
        .\stat_reg[0]_4 (ctl_n_15),
        .\stat_reg[0]_5 (ctl_n_20),
        .\stat_reg[0]_6 (ctl_n_21),
        .\stat_reg[0]_7 (ctl_n_22),
        .\stat_reg[1]_0 (ctl_n_5),
        .\stat_reg[1]_1 (ctl_n_7),
        .\stat_reg[1]_2 (ctl_n_10),
        .\stat_reg[1]_3 (ctl_n_18),
        .\stat_reg[1]_4 (ctl_n_19),
        .\stat_reg[1]_5 (ctl_n_23),
        .\stat_reg[2]_0 (ctl_n_0),
        .\stat_reg[2]_1 (ctl_n_8),
        .\stat_reg[2]_2 (ctl_n_11),
        .\stat_reg[2]_3 (ctl_n_17));
  mcvm_fch fch
       (.D(stat_nx),
        .DI({fch_n_359,fch_n_360,fch_n_361}),
        .E(fch_n_309),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .Q(stat),
        .S({fch_n_355,fch_n_356,fch_n_357,fch_n_358}),
        .abus_0(abus_0),
        .abus_sel_0(abus_sel_0),
        .acmd(acmd),
        .badr(badr),
        .\badr[0]_INST_0_i_1 (fch_n_243),
        .\badr[10]_INST_0_i_1 ({fch_n_396,fch_n_397,fch_n_398,fch_n_399}),
        .\badr[14]_INST_0_i_1 ({fch_n_344,fch_n_345,fch_n_346,fch_n_347}),
        .\badr[15]_INST_0_i_1 (fch_n_192),
        .\badr[15]_INST_0_i_1_0 ({fch_n_348,fch_n_349,fch_n_350,fch_n_351}),
        .\badr[15]_INST_0_i_1_1 ({fch_n_352,fch_n_353}),
        .\badr[15]_INST_0_i_1_2 (fch_n_354),
        .\badr[15]_INST_0_i_1_3 (\sptr/p_0_in ),
        .\badr[15]_INST_0_i_2 ({\sreg/p_2_in [7:4],rgf_sr_ml,rgf_sr_dr,\sreg/p_2_in [1:0],rgf_n_94,rgf_sr_c,rgf_n_96,rgf_n_97,rgf_sr_ie,sr_bank}),
        .\badr[15]_INST_0_i_29_0 (rgf_n_169),
        .\badr[15]_INST_0_i_29_1 (rgf_n_173),
        .\badr[15]_INST_0_i_29_2 (rgf_n_168),
        .\badr[15]_INST_0_i_4 ({rgf_n_0,rgf_n_1,rgf_n_2,rgf_n_3,rgf_n_4,rgf_n_5,rgf_n_6,rgf_n_7,rgf_n_8,rgf_n_9,rgf_n_10,rgf_n_11,rgf_n_12,rgf_n_13,rgf_n_14,rgf_n_15}),
        .\badr[15]_INST_0_i_94_0 (rgf_n_167),
        .\badr[1]_INST_0_i_1 (fch_n_186),
        .\badr[6]_INST_0_i_1 ({fch_n_388,fch_n_389,fch_n_390,fch_n_391}),
        .badrx(badrx),
        .\badrx[15] (rgf_tr),
        .bank_sel(bank_sel),
        .bbus_b02(bbus_b02),
        .bbus_o(bbus_o),
        .\bbus_o[3]_0 (rgf_n_237),
        .\bbus_o[4]_0 (rgf_n_238),
        .bbus_o_0_sp_1(rgf_n_207),
        .bbus_o_3_sp_1(rgf_n_214),
        .bbus_o_4_sp_1(rgf_n_215),
        .bbus_sel_0(bbus_sel_0),
        .\bcmd[0] (ctl_n_23),
        .\bcmd[1] (ctl_n_11),
        .bdatr(bdatr[14]),
        .bdatw(bdatw),
        .\bdatw[10]_0 (rgf_n_213),
        .\bdatw[10]_1 (rgf_n_236),
        .\bdatw[11]_INST_0_i_2_0 (fch_n_188),
        .\bdatw[11]_INST_0_i_2_1 (fch_n_191),
        .\bdatw[12]_INST_0_i_2_0 (fch_n_184),
        .\bdatw[13]_INST_0_i_2_0 (rgf_n_239),
        .\bdatw[13]_INST_0_i_2_1 (rgf_n_216),
        .\bdatw[14]_INST_0_i_2_0 (rgf_n_240),
        .\bdatw[14]_INST_0_i_2_1 (rgf_n_217),
        .\bdatw[15]_INST_0_i_10_0 (ctl_n_14),
        .\bdatw[15]_INST_0_i_1_0 ({\ivec/p_0_in ,rgf_iv_ve}),
        .\bdatw[15]_INST_0_i_22 ({rgf_n_43,rgf_n_44,rgf_n_45,rgf_n_46,rgf_n_47,rgf_n_48,rgf_n_49,rgf_n_50,rgf_n_51,rgf_n_52,rgf_n_53}),
        .\bdatw[15]_INST_0_i_22_0 ({rgf_n_32,rgf_n_33,rgf_n_34,rgf_n_35,rgf_n_36,rgf_n_37,rgf_n_38,rgf_n_39,rgf_n_40,rgf_n_41,rgf_n_42}),
        .\bdatw[15]_INST_0_i_2_0 (rgf_n_241),
        .\bdatw[15]_INST_0_i_2_1 (rgf_n_218),
        .\bdatw[15]_INST_0_i_4_0 (ctl_n_13),
        .\bdatw[15]_INST_0_i_55_0 ({rgf_n_70,rgf_n_71,rgf_n_72,rgf_n_73,rgf_n_74,rgf_n_75,rgf_n_76,rgf_n_77,rgf_n_78,rgf_n_79,rgf_n_80,rgf_n_81,rgf_n_82,rgf_n_83,rgf_n_84,rgf_n_85}),
        .\bdatw[15]_INST_0_i_55_1 ({rgf_n_54,rgf_n_55,rgf_n_56,rgf_n_57,rgf_n_58,rgf_n_59,rgf_n_60,rgf_n_61,rgf_n_62,rgf_n_63,rgf_n_64,rgf_n_65,rgf_n_66,rgf_n_67,rgf_n_68,rgf_n_69}),
        .\bdatw[15]_INST_0_i_55_2 ({rgf_n_16,rgf_n_17,rgf_n_18,rgf_n_19,rgf_n_20,rgf_n_21,rgf_n_22,rgf_n_23,rgf_n_24,rgf_n_25,rgf_n_26,rgf_n_27,rgf_n_28,rgf_n_29,rgf_n_30,rgf_n_31}),
        .\bdatw[8]_INST_0_i_2_0 (fch_n_179),
        .\bdatw[8]_INST_0_i_2_1 (fch_n_187),
        .\bdatw[8]_INST_0_i_2_2 (fch_n_343),
        .\bdatw[9]_0 (rgf_n_235),
        .\bdatw[9]_1 (rgf_n_228),
        .\bdatw[9]_INST_0_i_2_0 (fch_n_183),
        .\bdatw[9]_INST_0_i_2_1 (fch_n_210),
        .bdatw_10_sp_1(rgf_n_229),
        .bdatw_11_sp_1(rgf_n_230),
        .bdatw_12_sp_1(rgf_n_231),
        .bdatw_13_sp_1(rgf_n_232),
        .bdatw_14_sp_1(rgf_n_233),
        .bdatw_15_sp_1(rgf_n_234),
        .bdatw_8_sp_1(rgf_n_219),
        .bdatw_9_sp_1(rgf_n_212),
        .brdy(brdy),
        .brdy_0(fch_n_362),
        .cbus(cbus[14:0]),
        .cbus_i(cbus_i[14]),
        .cbus_sel_cr(cbus_sel_cr),
        .ccmd(ccmd),
        .\ccmd[1]_INST_0_i_3_0 (ctl_n_20),
        .\ccmd[1]_INST_0_i_7_0 (ctl_n_15),
        .\ccmd[2]_INST_0_i_16_0 (ctl_n_18),
        .\ccmd[2]_INST_0_i_1_0 (ctl_n_17),
        .\ccmd[4]_INST_0_i_1_0 (ctl_n_7),
        .clk(clk),
        .cpuid(cpuid),
        .crdy(crdy),
        .ctl_copro(ctl_copro),
        .ctl_fetch_ext_fl_reg_0(ctl_n_19),
        .ctl_fetch_fl_reg_0(ctl_fetch),
        .ctl_fetch_fl_reg_1(rgf_n_166),
        .ctl_fetch_fl_reg_2(ctl_n_10),
        .ctl_fetch_inferred_i_3_0(rgf_n_332),
        .ctl_fetch_inferred_i_6(rgf_n_170),
        .ctl_sp_dec(ctl_sp_dec),
        .ctl_sp_inc(ctl_sp_inc),
        .\eir_fl_reg[1]_0 (ctl_n_6),
        .fch_irq_req(fch_irq_req),
        .fch_pc(fch_pc),
        .fdat(fdat),
        .gr0_bus1__0(\bank13/abuso2l/gr0_bus1__0 ),
        .gr0_bus1__0_24(\bank13/bbuso2l/gr0_bus1__0 ),
        .gr0_bus1__0_25(\bank13/bbuso/gr0_bus1__0 ),
        .gr0_bus1__0_26(\bank02/bbuso/gr0_bus1__0 ),
        .gr0_bus1__0_4(\bank13/abuso/gr0_bus1__0 ),
        .gr0_bus1__0_42(\bank02/bbuso2l/gr0_bus1__0 ),
        .gr0_bus1__0_5(\bank02/abuso/gr0_bus1__0 ),
        .gr1_bus1__0(\bank13/abuso2l/gr1_bus1__0 ),
        .gr1_bus1__0_0(\bank13/abuso/gr1_bus1__0 ),
        .gr1_bus1__0_1(\bank02/abuso/gr1_bus1__0 ),
        .gr1_bus1__0_30(\bank13/bbuso2l/gr1_bus1__0 ),
        .gr1_bus1__0_31(\bank13/bbuso/gr1_bus1__0 ),
        .gr1_bus1__0_32(\bank02/bbuso/gr1_bus1__0 ),
        .gr2_bus1__0(\bank13/abuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_19(\bank02/bbuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_2(\bank13/abuso/gr2_bus1__0 ),
        .gr2_bus1__0_21(\bank13/bbuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_22(\bank13/bbuso/gr2_bus1__0 ),
        .gr2_bus1__0_23(\bank02/bbuso/gr2_bus1__0 ),
        .gr2_bus1__0_3(\bank02/abuso/gr2_bus1__0 ),
        .gr3_bus1__0(\bank13/abuso/gr3_bus1__0 ),
        .gr3_bus1__0_15(\bank02/abuso/gr3_bus1__0 ),
        .gr3_bus1__0_18(\bank02/bbuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_39(\bank13/bbuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_40(\bank13/bbuso/gr3_bus1__0 ),
        .gr3_bus1__0_41(\bank02/bbuso/gr3_bus1__0 ),
        .gr4_bus1__0(\bank13/abuso/gr4_bus1__0 ),
        .gr4_bus1__0_27(\bank13/bbuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_28(\bank13/bbuso/gr4_bus1__0 ),
        .gr4_bus1__0_29(\bank02/bbuso/gr4_bus1__0 ),
        .gr4_bus1__0_6(\bank02/abuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_7(\bank02/abuso/gr4_bus1__0 ),
        .gr5_bus1__0(\bank13/abuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_10(\bank02/abuso/gr5_bus1__0 ),
        .gr5_bus1__0_33(\bank13/bbuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_34(\bank13/bbuso/gr5_bus1__0 ),
        .gr5_bus1__0_35(\bank02/bbuso/gr5_bus1__0 ),
        .gr5_bus1__0_8(\bank13/abuso/gr5_bus1__0 ),
        .gr5_bus1__0_9(\bank02/abuso2l/gr5_bus1__0 ),
        .gr6_bus1__0(\bank13/abuso2l/gr6_bus1__0 ),
        .gr6_bus1__0_11(\bank13/abuso/gr6_bus1__0 ),
        .gr6_bus1__0_12(\bank02/abuso/gr6_bus1__0 ),
        .gr6_bus1__0_16(\bank13/bbuso2l/gr6_bus1__0 ),
        .gr6_bus1__0_17(\bank13/bbuso/gr6_bus1__0 ),
        .gr6_bus1__0_20(\bank02/bbuso/gr6_bus1__0 ),
        .gr7_bus1__0(\bank13/abuso2l/gr7_bus1__0 ),
        .gr7_bus1__0_13(\bank13/abuso/gr7_bus1__0 ),
        .gr7_bus1__0_14(\bank02/abuso/gr7_bus1__0 ),
        .gr7_bus1__0_36(\bank13/bbuso2l/gr7_bus1__0 ),
        .gr7_bus1__0_37(\bank13/bbuso/gr7_bus1__0 ),
        .gr7_bus1__0_38(\bank02/bbuso/gr7_bus1__0 ),
        .\grn_reg[0] (fch_n_69),
        .\grn_reg[0]_0 (fch_n_94),
        .\grn_reg[0]_1 (fch_n_133),
        .\grn_reg[10] (fch_n_79),
        .\grn_reg[10]_0 (fch_n_104),
        .\grn_reg[10]_1 (fch_n_145),
        .\grn_reg[11] (fch_n_80),
        .\grn_reg[11]_0 (fch_n_105),
        .\grn_reg[11]_1 (fch_n_146),
        .\grn_reg[12] (fch_n_81),
        .\grn_reg[12]_0 (fch_n_106),
        .\grn_reg[12]_1 (fch_n_147),
        .\grn_reg[13] (fch_n_82),
        .\grn_reg[13]_0 (fch_n_107),
        .\grn_reg[13]_1 (fch_n_148),
        .\grn_reg[14] (fch_n_83),
        .\grn_reg[14]_0 (fch_n_108),
        .\grn_reg[14]_1 (fch_n_149),
        .\grn_reg[15] (fch_n_84),
        .\grn_reg[15]_0 (fch_n_109),
        .\grn_reg[15]_1 (fch_n_150),
        .\grn_reg[1] (fch_n_70),
        .\grn_reg[1]_0 (fch_n_95),
        .\grn_reg[1]_1 (fch_n_134),
        .\grn_reg[2] (fch_n_71),
        .\grn_reg[2]_0 (fch_n_96),
        .\grn_reg[2]_1 (fch_n_135),
        .\grn_reg[3] (fch_n_72),
        .\grn_reg[3]_0 (fch_n_97),
        .\grn_reg[3]_1 (fch_n_136),
        .\grn_reg[4] (fch_n_73),
        .\grn_reg[4]_0 (fch_n_98),
        .\grn_reg[4]_1 (fch_n_137),
        .\grn_reg[5] (fch_n_74),
        .\grn_reg[5]_0 (fch_n_99),
        .\grn_reg[5]_1 (fch_n_138),
        .\grn_reg[6] (fch_n_75),
        .\grn_reg[6]_0 (fch_n_100),
        .\grn_reg[6]_1 (fch_n_141),
        .\grn_reg[7] (fch_n_76),
        .\grn_reg[7]_0 (fch_n_101),
        .\grn_reg[7]_1 (fch_n_142),
        .\grn_reg[8] (fch_n_77),
        .\grn_reg[8]_0 (fch_n_102),
        .\grn_reg[8]_1 (fch_n_143),
        .\grn_reg[9] (fch_n_78),
        .\grn_reg[9]_0 (fch_n_103),
        .\grn_reg[9]_1 (fch_n_144),
        .in0(ctl_fetch),
        .irq(irq),
        .irq_lev(irq_lev),
        .irq_vec(irq_vec),
        .\iv[0]_i_2_0 (rgf_n_307),
        .\iv[0]_i_2_1 (rgf_n_268),
        .\iv[10]_i_2_0 (rgf_n_366),
        .\iv[10]_i_2_1 (rgf_n_303),
        .\iv[10]_i_2_2 (rgf_n_295),
        .\iv[10]_i_2_3 (rgf_n_365),
        .\iv[10]_i_5_0 (rgf_n_352),
        .\iv[10]_i_5_1 (rgf_n_364),
        .\iv[11]_i_2_0 (rgf_n_351),
        .\iv[11]_i_2_1 (rgf_n_299),
        .\iv[11]_i_2_2 (rgf_n_273),
        .\iv[11]_i_2_3 (rgf_n_244),
        .\iv[11]_i_2_4 (rgf_n_313),
        .\iv[11]_i_2_5 (rgf_n_359),
        .\iv[12]_i_13_0 (rgf_n_261),
        .\iv[12]_i_2_0 (rgf_n_349),
        .\iv[12]_i_2_1 (rgf_n_298),
        .\iv[12]_i_7_0 (rgf_n_254),
        .\iv[13]_i_2_0 (rgf_n_246),
        .\iv[13]_i_3_0 (alu_sr_flag),
        .\iv[13]_i_7_0 (rgf_n_272),
        .\iv[14]_i_34_0 (fch_n_193),
        .\iv[14]_i_3_0 (rgf_n_309),
        .\iv[14]_i_3_1 (rgf_n_356),
        .\iv[14]_i_4_0 (rgf_n_265),
        .\iv[14]_i_4_1 (rgf_n_350),
        .\iv[1]_i_2_0 (rgf_n_267),
        .\iv[1]_i_2_1 (rgf_n_291),
        .\iv[1]_i_2_2 (rgf_n_266),
        .\iv[1]_i_7_0 (rgf_n_255),
        .\iv[1]_i_8_0 (rgf_n_249),
        .\iv[2]_i_2_0 (rgf_n_263),
        .\iv[2]_i_2_1 (rgf_n_354),
        .\iv[2]_i_2_2 (rgf_n_311),
        .\iv[3]_i_2_0 (rgf_n_301),
        .\iv[3]_i_2_1 (rgf_n_294),
        .\iv[4]_i_2_0 (rgf_n_248),
        .\iv[4]_i_2_1 (rgf_n_258),
        .\iv[4]_i_8_0 (rgf_n_259),
        .\iv[4]_i_8_1 (rgf_n_260),
        .\iv[5]_i_2_0 (rgf_n_300),
        .\iv[6]_i_2_0 (rgf_n_304),
        .\iv[6]_i_2_1 (rgf_n_306),
        .\iv[7]_i_2_0 (rgf_n_361),
        .\iv[7]_i_2_1 (rgf_n_358),
        .\iv[7]_i_2_2 (rgf_n_257),
        .\iv[7]_i_2_3 (rgf_n_252),
        .\iv[7]_i_2_4 (rgf_n_253),
        .\iv[8]_i_2_0 (rgf_n_242),
        .\iv[8]_i_2_1 (rgf_n_312),
        .\iv[9]_i_2_0 (rgf_n_292),
        .\iv[9]_i_2_1 (rgf_n_250),
        .\iv[9]_i_2_2 (rgf_n_310),
        .\iv[9]_i_2_3 (rgf_n_297),
        .\iv[9]_i_2_4 (rgf_n_270),
        .out({fch_ir[15:10],fch_ir[3:0]}),
        .p_0_in(\pcnt/p_0_in ),
        .\pc_reg[15] (\pcnt/p_1_in ),
        .\pc_reg[15]_0 (fadr),
        .read_cyc(read_cyc),
        .\read_cyc_reg[1] ({fch_n_261,fch_n_262,fch_n_263,fch_n_264,fch_n_265,fch_n_266,fch_n_267,fch_n_268,fch_n_269,fch_n_270,fch_n_271,fch_n_272,fch_n_273,fch_n_274,fch_n_275,fch_n_276}),
        .rst_n(rst_n),
        .rst_n_0(fch_n_379),
        .rst_n_fl_reg_0(fch_n_26),
        .sp_dec_0(\sptr/sp_dec_0 ),
        .\sp_reg[0] (fch_n_260),
        .\sp_reg[0]_0 (rgf_n_190),
        .\sp_reg[10] (fch_n_250),
        .\sp_reg[10]_0 (rgf_n_343),
        .\sp_reg[11] (fch_n_249),
        .\sp_reg[11]_0 (rgf_n_344),
        .\sp_reg[12] (fch_n_248),
        .\sp_reg[12]_0 (rgf_n_345),
        .\sp_reg[13] (fch_n_247),
        .\sp_reg[13]_0 (rgf_n_346),
        .\sp_reg[14] (fch_n_246),
        .\sp_reg[14]_0 (rgf_n_347),
        .\sp_reg[15] (fch_n_245),
        .\sp_reg[15]_0 (cbus[15]),
        .\sp_reg[15]_1 (rgf_n_333),
        .\sp_reg[1] (fch_n_259),
        .\sp_reg[1]_0 (rgf_n_334),
        .\sp_reg[2] (fch_n_258),
        .\sp_reg[2]_0 (rgf_n_335),
        .\sp_reg[3] (fch_n_257),
        .\sp_reg[3]_0 (rgf_n_336),
        .\sp_reg[4] (fch_n_256),
        .\sp_reg[4]_0 (rgf_n_337),
        .\sp_reg[5] (fch_n_255),
        .\sp_reg[5]_0 (rgf_n_338),
        .\sp_reg[6] (fch_n_254),
        .\sp_reg[6]_0 (rgf_n_339),
        .\sp_reg[7] (fch_n_253),
        .\sp_reg[7]_0 (rgf_n_340),
        .\sp_reg[8] (fch_n_252),
        .\sp_reg[8]_0 (rgf_n_341),
        .\sp_reg[9] (fch_n_251),
        .\sp_reg[9]_0 (rgf_n_342),
        .\sr[15]_i_5_0 (ctl_n_12),
        .\sr[4]_i_10_0 (rgf_n_302),
        .\sr[4]_i_10_1 (rgf_n_256),
        .\sr[4]_i_2_0 (alu_n_17),
        .\sr[4]_i_4_0 (rgf_n_305),
        .\sr[5]_i_3_0 (rgf_n_251),
        .\sr[6]_i_3_0 (rgf_n_362),
        .\sr[6]_i_3_1 (rgf_n_353),
        .\sr[6]_i_3_2 (rgf_n_357),
        .\sr[6]_i_3_3 (rgf_n_360),
        .\sr[6]_i_3_4 (rgf_n_363),
        .\sr[7]_i_11 (fch_n_181),
        .\sr[7]_i_9_0 (rgf_n_348),
        .\sr_reg[0] (fch_n_190),
        .\sr_reg[0]_0 (fch_n_293),
        .\sr_reg[0]_1 (fch_n_310),
        .\sr_reg[0]_2 (fch_n_314),
        .\sr_reg[0]_3 (fch_n_318),
        .\sr_reg[0]_4 (fch_n_322),
        .\sr_reg[0]_5 (fch_n_326),
        .\sr_reg[0]_6 (fch_n_330),
        .\sr_reg[0]_7 (fch_n_334),
        .\sr_reg[0]_8 (fch_n_380),
        .\sr_reg[0]_9 (fch_n_386),
        .\sr_reg[10] (fch_n_303),
        .\sr_reg[10]_0 (fch_n_383),
        .\sr_reg[11] (fch_n_304),
        .\sr_reg[11]_0 (fch_n_381),
        .\sr_reg[12] (fch_n_305),
        .\sr_reg[13] (\sreg/p_0_in ),
        .\sr_reg[13]_0 (fch_n_306),
        .\sr_reg[14] (fch_n_307),
        .\sr_reg[15] (fch_n_308),
        .\sr_reg[1] (fch_n_294),
        .\sr_reg[1]_0 (fch_n_311),
        .\sr_reg[1]_1 (fch_n_312),
        .\sr_reg[1]_10 (fch_n_324),
        .\sr_reg[1]_11 (fch_n_325),
        .\sr_reg[1]_12 (fch_n_327),
        .\sr_reg[1]_13 (fch_n_328),
        .\sr_reg[1]_14 (fch_n_329),
        .\sr_reg[1]_15 (fch_n_331),
        .\sr_reg[1]_16 (fch_n_332),
        .\sr_reg[1]_17 (fch_n_333),
        .\sr_reg[1]_18 (fch_n_335),
        .\sr_reg[1]_19 (fch_n_336),
        .\sr_reg[1]_2 (fch_n_313),
        .\sr_reg[1]_20 (fch_n_338),
        .\sr_reg[1]_21 (fch_n_339),
        .\sr_reg[1]_22 (fch_n_340),
        .\sr_reg[1]_23 (fch_n_341),
        .\sr_reg[1]_24 (fch_n_342),
        .\sr_reg[1]_25 (fch_n_382),
        .\sr_reg[1]_26 (fch_n_384),
        .\sr_reg[1]_27 (fch_n_385),
        .\sr_reg[1]_28 (fch_n_387),
        .\sr_reg[1]_3 (fch_n_315),
        .\sr_reg[1]_4 (fch_n_316),
        .\sr_reg[1]_5 (fch_n_317),
        .\sr_reg[1]_6 (fch_n_319),
        .\sr_reg[1]_7 (fch_n_320),
        .\sr_reg[1]_8 (fch_n_321),
        .\sr_reg[1]_9 (fch_n_323),
        .\sr_reg[2] (fch_n_47),
        .\sr_reg[2]_0 (fch_n_295),
        .\sr_reg[3] (fch_n_49),
        .\sr_reg[3]_0 (fch_n_189),
        .\sr_reg[3]_1 (fch_n_296),
        .\sr_reg[4] (fch_n_29),
        .\sr_reg[4]_0 (fch_n_182),
        .\sr_reg[4]_1 (fch_n_297),
        .\sr_reg[5] (fch_n_48),
        .\sr_reg[5]_0 (fch_n_298),
        .\sr_reg[6] (fch_n_45),
        .\sr_reg[6]_0 (fch_n_299),
        .\sr_reg[6]_1 (\art/add/tout ),
        .\sr_reg[7] (fch_n_50),
        .\sr_reg[7]_0 (fch_n_300),
        .\sr_reg[7]_1 ({\art/p_0_in ,alu_n_13,alu_n_14,alu_n_15}),
        .\sr_reg[8] (fch_n_301),
        .\sr_reg[9] (fch_n_302),
        .\stat[1]_i_12_0 (ctl_n_0),
        .\stat[1]_i_2_0 (ctl_n_16),
        .\stat[1]_i_2_1 (rgf_n_171),
        .\stat_reg[0] (bcmd[0]),
        .\stat_reg[0]_0 (fch_n_28),
        .\stat_reg[0]_1 (bcmd[2]),
        .\stat_reg[0]_2 (ctl_n_5),
        .\stat_reg[0]_3 (rgf_n_331),
        .\stat_reg[2] (fch_n_17),
        .\stat_reg[2]_0 (fch_n_18),
        .\stat_reg[2]_1 (bcmd[1]),
        .\stat_reg[2]_2 (fch_n_131),
        .\stat_reg[2]_3 (fch_n_153),
        .\stat_reg[2]_4 ({bbus_sel_cr[5],bbus_sel_cr[2],bbus_sel_cr[0]}),
        .\stat_reg[2]_5 (fch_n_180),
        .\stat_reg[2]_6 (ctl_n_8),
        .\stat_reg[2]_7 (ctl_n_9),
        .tout__1_carry__0_i_1_0({fch_n_392,fch_n_393,fch_n_394,fch_n_395}),
        .tout__1_carry__1_i_1_0({fch_n_400,fch_n_401,fch_n_402,fch_n_403}),
        .tout__1_carry_i_10_0(fch_n_185),
        .\tr[15]_i_29_0 (rgf_n_172),
        .\tr[15]_i_31_0 (ctl_n_22),
        .\tr[15]_i_3_0 (ctl_n_21),
        .\tr[15]_i_9_0 (ctl_n_4),
        .\tr_reg[0] (fch_n_51),
        .\tr_reg[0]_0 (mem_n_15),
        .\tr_reg[0]_1 (rgf_n_355),
        .\tr_reg[10] (fch_n_61),
        .\tr_reg[10]_0 (mem_n_5),
        .\tr_reg[11] (fch_n_62),
        .\tr_reg[11]_0 ({alu_n_8,alu_n_9,alu_n_10,alu_n_11}),
        .\tr_reg[11]_1 (mem_n_4),
        .\tr_reg[12] (fch_n_63),
        .\tr_reg[12]_0 (mem_n_3),
        .\tr_reg[13] (fch_n_64),
        .\tr_reg[13]_0 (mem_n_2),
        .\tr_reg[13]_1 (rgf_n_247),
        .\tr_reg[13]_2 (rgf_n_271),
        .\tr_reg[14] (fch_n_65),
        .\tr_reg[14]_0 (rgf_n_264),
        .\tr_reg[14]_1 (mem_n_16),
        .\tr_reg[15] (fch_n_66),
        .\tr_reg[1] (fch_n_52),
        .\tr_reg[1]_0 (mem_n_14),
        .\tr_reg[1]_1 (rgf_n_290),
        .\tr_reg[2] (fch_n_53),
        .\tr_reg[2]_0 (mem_n_13),
        .\tr_reg[2]_1 (rgf_n_243),
        .\tr_reg[3] (fch_n_54),
        .\tr_reg[3]_0 (mem_n_12),
        .\tr_reg[3]_1 (rgf_n_293),
        .\tr_reg[4] (fch_n_55),
        .\tr_reg[4]_0 (mem_n_11),
        .\tr_reg[4]_1 (rgf_n_296),
        .\tr_reg[5] (fch_n_56),
        .\tr_reg[5]_0 (mem_n_10),
        .\tr_reg[5]_1 (rgf_n_269),
        .\tr_reg[5]_2 (rgf_n_245),
        .\tr_reg[6] (fch_n_57),
        .\tr_reg[6]_0 (mem_n_9),
        .\tr_reg[6]_1 (rgf_n_262),
        .\tr_reg[7] (fch_n_58),
        .\tr_reg[7]_0 ({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .\tr_reg[7]_1 (mem_n_8),
        .\tr_reg[8] (fch_n_59),
        .\tr_reg[8]_0 (mem_n_7),
        .\tr_reg[9] (fch_n_60),
        .\tr_reg[9]_0 (mem_n_6),
        .\tr_reg[9]_1 (rgf_n_308));
  mcvm_mem mem
       (.bcmd({bcmd[2],bcmd[0]}),
        .bdatr(bdatr),
        .brdy(brdy),
        .cbus(cbus[15]),
        .cbus_i({cbus_i[15],cbus_i[13:0]}),
        .cbus_i_0_sp_1(mem_n_15),
        .cbus_i_1_sp_1(mem_n_14),
        .cbus_i_2_sp_1(mem_n_13),
        .cbus_i_3_sp_1(mem_n_12),
        .cbus_i_4_sp_1(mem_n_11),
        .cbus_i_5_sp_1(mem_n_10),
        .cbus_i_6_sp_1(mem_n_9),
        .cbus_i_7_sp_1(mem_n_8),
        .clk(clk),
        .ctl_copro(ctl_copro),
        .p_0_in(\pcnt/p_0_in ),
        .\read_cyc_reg[0] (read_cyc),
        .\read_cyc_reg[0]_0 (fch_n_362),
        .\read_cyc_reg[1] (mem_n_2),
        .\read_cyc_reg[1]_0 (mem_n_3),
        .\read_cyc_reg[1]_1 (mem_n_4),
        .\read_cyc_reg[1]_2 (mem_n_5),
        .\read_cyc_reg[1]_3 (mem_n_6),
        .\read_cyc_reg[1]_4 (mem_n_7),
        .\read_cyc_reg[1]_5 (mem_n_16),
        .\tr_reg[15] (alu_sr_flag));
  mcvm_rgf rgf
       (.D(\sreg/p_0_in ),
        .E(fch_n_333),
        .Q({stat[2],stat[0]}),
        .abus_0(abus_0),
        .abus_o(abus_o),
        .\abus_o[0]_0 (fch_n_51),
        .\abus_o[10]_0 (fch_n_61),
        .\abus_o[11]_0 (fch_n_62),
        .\abus_o[12]_0 (fch_n_63),
        .\abus_o[13]_0 (fch_n_64),
        .\abus_o[14]_0 (fch_n_65),
        .\abus_o[15]_0 (fch_n_66),
        .\abus_o[1]_0 (fch_n_52),
        .\abus_o[2]_0 (fch_n_53),
        .\abus_o[3]_0 (fch_n_54),
        .\abus_o[4]_0 (fch_n_55),
        .\abus_o[5]_0 (fch_n_56),
        .\abus_o[6]_0 (fch_n_57),
        .\abus_o[7]_0 (fch_n_58),
        .\abus_o[8]_0 (fch_n_59),
        .\abus_o[9]_0 (fch_n_60),
        .abus_o_0_sp_1(fch_n_260),
        .abus_o_10_sp_1(fch_n_250),
        .abus_o_11_sp_1(fch_n_249),
        .abus_o_12_sp_1(fch_n_248),
        .abus_o_13_sp_1(fch_n_247),
        .abus_o_14_sp_1(fch_n_246),
        .abus_o_15_sp_1(fch_n_245),
        .abus_o_1_sp_1(fch_n_259),
        .abus_o_2_sp_1(fch_n_258),
        .abus_o_3_sp_1(fch_n_257),
        .abus_o_4_sp_1(fch_n_256),
        .abus_o_5_sp_1(fch_n_255),
        .abus_o_6_sp_1(fch_n_254),
        .abus_o_7_sp_1(fch_n_253),
        .abus_o_8_sp_1(fch_n_252),
        .abus_o_9_sp_1(fch_n_251),
        .abus_sel_0(abus_sel_0),
        .acmd(acmd),
        .\badr[0]_INST_0_i_1 (fch_n_293),
        .\badr[0]_INST_0_i_1_0 (fch_n_69),
        .\badr[0]_INST_0_i_1_1 (fch_n_94),
        .\badr[10]_INST_0_i_1 (fch_n_303),
        .\badr[10]_INST_0_i_1_0 (fch_n_79),
        .\badr[10]_INST_0_i_1_1 (fch_n_104),
        .\badr[11]_INST_0_i_1 (fch_n_304),
        .\badr[11]_INST_0_i_1_0 (fch_n_80),
        .\badr[11]_INST_0_i_1_1 (fch_n_105),
        .\badr[12]_INST_0_i_1 (fch_n_305),
        .\badr[12]_INST_0_i_1_0 (fch_n_81),
        .\badr[12]_INST_0_i_1_1 (fch_n_106),
        .\badr[13]_INST_0_i_1 (rgf_n_272),
        .\badr[13]_INST_0_i_1_0 (fch_n_306),
        .\badr[13]_INST_0_i_1_1 (fch_n_82),
        .\badr[13]_INST_0_i_1_2 (fch_n_107),
        .\badr[14]_INST_0_i_1 (fch_n_307),
        .\badr[14]_INST_0_i_1_0 (fch_n_83),
        .\badr[14]_INST_0_i_1_1 (fch_n_108),
        .\badr[15]_INST_0_i_1 (rgf_n_261),
        .\badr[15]_INST_0_i_1_0 (rgf_n_363),
        .\badr[15]_INST_0_i_1_1 (fch_n_308),
        .\badr[15]_INST_0_i_1_2 (fch_n_84),
        .\badr[15]_INST_0_i_1_3 (fch_n_109),
        .\badr[15]_INST_0_i_77 (fch_ir[15:11]),
        .\badr[1]_INST_0_i_1 (fch_n_294),
        .\badr[1]_INST_0_i_1_0 (fch_n_70),
        .\badr[1]_INST_0_i_1_1 (fch_n_95),
        .\badr[2]_INST_0_i_1 (rgf_n_259),
        .\badr[2]_INST_0_i_1_0 (fch_n_295),
        .\badr[2]_INST_0_i_1_1 (fch_n_71),
        .\badr[2]_INST_0_i_1_2 (fch_n_96),
        .\badr[3]_INST_0_i_1 (fch_n_296),
        .\badr[3]_INST_0_i_1_0 (fch_n_72),
        .\badr[3]_INST_0_i_1_1 (fch_n_97),
        .\badr[4]_INST_0_i_1 (rgf_n_260),
        .\badr[4]_INST_0_i_1_0 (fch_n_297),
        .\badr[4]_INST_0_i_1_1 (fch_n_73),
        .\badr[4]_INST_0_i_1_2 (fch_n_98),
        .\badr[5]_INST_0_i_1 (fch_n_298),
        .\badr[5]_INST_0_i_1_0 (fch_n_74),
        .\badr[5]_INST_0_i_1_1 (fch_n_99),
        .\badr[6]_INST_0_i_1 (fch_n_299),
        .\badr[6]_INST_0_i_1_0 (fch_n_75),
        .\badr[6]_INST_0_i_1_1 (fch_n_100),
        .\badr[7]_INST_0_i_1 (fch_n_300),
        .\badr[7]_INST_0_i_1_0 (fch_n_76),
        .\badr[7]_INST_0_i_1_1 (fch_n_101),
        .\badr[8]_INST_0_i_1 (fch_n_301),
        .\badr[8]_INST_0_i_1_0 (fch_n_77),
        .\badr[8]_INST_0_i_1_1 (fch_n_102),
        .\badr[9]_INST_0_i_1 (fch_n_302),
        .\badr[9]_INST_0_i_1_0 (fch_n_78),
        .\badr[9]_INST_0_i_1_1 (fch_n_103),
        .bank_sel(bank_sel),
        .bbus_sel_0(bbus_sel_0),
        .\bdatw[10]_INST_0_i_2 (fch_n_135),
        .\bdatw[10]_INST_0_i_2_0 (fch_n_340),
        .\bdatw[10]_INST_0_i_4 (fch_n_145),
        .\bdatw[11]_INST_0_i_2 (fch_n_136),
        .\bdatw[11]_INST_0_i_24 (fch_n_18),
        .\bdatw[11]_INST_0_i_24_0 (fch_n_17),
        .\bdatw[11]_INST_0_i_24_1 (fch_n_131),
        .\bdatw[11]_INST_0_i_25 (fch_n_153),
        .\bdatw[11]_INST_0_i_2_0 (fch_n_339),
        .\bdatw[11]_INST_0_i_4 (fch_n_146),
        .\bdatw[12]_INST_0_i_2 (rgf_n_256),
        .\bdatw[12]_INST_0_i_2_0 (fch_n_137),
        .\bdatw[12]_INST_0_i_2_1 (fch_n_338),
        .\bdatw[12]_INST_0_i_4 (fch_n_147),
        .\bdatw[13]_INST_0_i_4 (fch_n_148),
        .\bdatw[13]_INST_0_i_6 (fch_n_138),
        .\bdatw[14]_INST_0_i_4 (fch_n_149),
        .\bdatw[14]_INST_0_i_6 (fch_n_141),
        .\bdatw[15]_INST_0_i_6 (fch_n_150),
        .\bdatw[15]_INST_0_i_8 (fch_n_142),
        .\bdatw[8]_INST_0_i_1 ({bbus_sel_cr[5],bbus_sel_cr[2],bbus_sel_cr[0]}),
        .\bdatw[8]_INST_0_i_2 (rgf_n_252),
        .\bdatw[8]_INST_0_i_2_0 (rgf_n_253),
        .\bdatw[8]_INST_0_i_2_1 (rgf_n_255),
        .\bdatw[8]_INST_0_i_2_10 (rgf_n_358),
        .\bdatw[8]_INST_0_i_2_11 (rgf_n_360),
        .\bdatw[8]_INST_0_i_2_12 (rgf_n_365),
        .\bdatw[8]_INST_0_i_2_13 (fch_n_133),
        .\bdatw[8]_INST_0_i_2_14 (fch_n_342),
        .\bdatw[8]_INST_0_i_2_2 (rgf_n_303),
        .\bdatw[8]_INST_0_i_2_3 (rgf_n_304),
        .\bdatw[8]_INST_0_i_2_4 (rgf_n_309),
        .\bdatw[8]_INST_0_i_2_5 (rgf_n_352),
        .\bdatw[8]_INST_0_i_2_6 (rgf_n_353),
        .\bdatw[8]_INST_0_i_2_7 (rgf_n_354),
        .\bdatw[8]_INST_0_i_2_8 (rgf_n_356),
        .\bdatw[8]_INST_0_i_2_9 (rgf_n_357),
        .\bdatw[8]_INST_0_i_4 (fch_n_143),
        .\bdatw[9]_INST_0_i_2 (fch_n_134),
        .\bdatw[9]_INST_0_i_2_0 (fch_n_341),
        .\bdatw[9]_INST_0_i_4 (fch_n_144),
        .cbus_sel_cr(cbus_sel_cr),
        .clk(clk),
        .ctl_copro(ctl_copro),
        .ctl_fetch_fl_reg(ctl_n_10),
        .ctl_fetch_fl_reg_0(fch_n_26),
        .ctl_fetch_fl_reg_1(fch_n_28),
        .ctl_sp_dec(ctl_sp_dec),
        .ctl_sp_inc(ctl_sp_inc),
        .fadr(fadr),
        .fch_irq_req(fch_irq_req),
        .fch_pc(fch_pc),
        .gr0_bus1__0(\bank13/abuso2l/gr0_bus1__0 ),
        .gr0_bus1__0_19(\bank13/bbuso2l/gr0_bus1__0 ),
        .gr0_bus1__0_22(\bank13/bbuso/gr0_bus1__0 ),
        .gr0_bus1__0_26(\bank02/bbuso/gr0_bus1__0 ),
        .gr0_bus1__0_28(\bank02/bbuso2l/gr0_bus1__0 ),
        .gr0_bus1__0_5(\bank13/abuso/gr0_bus1__0 ),
        .gr0_bus1__0_7(\bank02/abuso/gr0_bus1__0 ),
        .gr1_bus1__0(\bank13/abuso2l/gr1_bus1__0 ),
        .gr1_bus1__0_0(\bank13/abuso/gr1_bus1__0 ),
        .gr1_bus1__0_2(\bank02/abuso/gr1_bus1__0 ),
        .gr1_bus1__0_31(\bank13/bbuso2l/gr1_bus1__0 ),
        .gr1_bus1__0_35(\bank13/bbuso/gr1_bus1__0 ),
        .gr1_bus1__0_41(\bank02/bbuso/gr1_bus1__0 ),
        .gr2_bus1__0(\bank13/abuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_1(\bank13/abuso/gr2_bus1__0 ),
        .gr2_bus1__0_3(\bank02/abuso/gr2_bus1__0 ),
        .gr2_bus1__0_32(\bank13/bbuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_36(\bank13/bbuso/gr2_bus1__0 ),
        .gr2_bus1__0_37(\bank02/bbuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_42(\bank02/bbuso/gr2_bus1__0 ),
        .gr3_bus1__0(\bank13/abuso/gr3_bus1__0 ),
        .gr3_bus1__0_16(\bank13/bbuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_34(\bank13/bbuso/gr3_bus1__0 ),
        .gr3_bus1__0_38(\bank02/bbuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_40(\bank02/bbuso/gr3_bus1__0 ),
        .gr3_bus1__0_9(\bank02/abuso/gr3_bus1__0 ),
        .gr4_bus1__0(\bank13/abuso/gr4_bus1__0 ),
        .gr4_bus1__0_10(\bank02/abuso/gr4_bus1__0 ),
        .gr4_bus1__0_17(\bank13/bbuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_33(\bank13/bbuso/gr4_bus1__0 ),
        .gr4_bus1__0_39(\bank02/bbuso/gr4_bus1__0 ),
        .gr4_bus1__0_8(\bank02/abuso2l/gr4_bus1__0 ),
        .gr5_bus1__0(\bank02/abuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_11(\bank13/abuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_12(\bank13/abuso/gr5_bus1__0 ),
        .gr5_bus1__0_14(\bank02/abuso/gr5_bus1__0 ),
        .gr5_bus1__0_20(\bank13/bbuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_24(\bank13/bbuso/gr5_bus1__0 ),
        .gr5_bus1__0_29(\bank02/bbuso/gr5_bus1__0 ),
        .gr6_bus1__0(\bank13/abuso2l/gr6_bus1__0 ),
        .gr6_bus1__0_13(\bank13/abuso/gr6_bus1__0 ),
        .gr6_bus1__0_15(\bank02/abuso/gr6_bus1__0 ),
        .gr6_bus1__0_21(\bank13/bbuso2l/gr6_bus1__0 ),
        .gr6_bus1__0_25(\bank13/bbuso/gr6_bus1__0 ),
        .gr6_bus1__0_30(\bank02/bbuso/gr6_bus1__0 ),
        .gr7_bus1__0(\bank13/abuso2l/gr7_bus1__0 ),
        .gr7_bus1__0_18(\bank13/bbuso2l/gr7_bus1__0 ),
        .gr7_bus1__0_23(\bank13/bbuso/gr7_bus1__0 ),
        .gr7_bus1__0_27(\bank02/bbuso/gr7_bus1__0 ),
        .gr7_bus1__0_4(\bank13/abuso/gr7_bus1__0 ),
        .gr7_bus1__0_6(\bank02/abuso/gr7_bus1__0 ),
        .\grn_reg[15] ({rgf_n_16,rgf_n_17,rgf_n_18,rgf_n_19,rgf_n_20,rgf_n_21,rgf_n_22,rgf_n_23,rgf_n_24,rgf_n_25,rgf_n_26,rgf_n_27,rgf_n_28,rgf_n_29,rgf_n_30,rgf_n_31}),
        .\grn_reg[15]_0 ({rgf_n_32,rgf_n_33,rgf_n_34,rgf_n_35,rgf_n_36,rgf_n_37,rgf_n_38,rgf_n_39,rgf_n_40,rgf_n_41,rgf_n_42}),
        .\grn_reg[15]_1 ({rgf_n_43,rgf_n_44,rgf_n_45,rgf_n_46,rgf_n_47,rgf_n_48,rgf_n_49,rgf_n_50,rgf_n_51,rgf_n_52,rgf_n_53}),
        .\grn_reg[15]_10 (fch_n_309),
        .\grn_reg[15]_11 (fch_n_334),
        .\grn_reg[15]_12 (fch_n_330),
        .\grn_reg[15]_13 (fch_n_326),
        .\grn_reg[15]_14 (fch_n_386),
        .\grn_reg[15]_15 (fch_n_322),
        .\grn_reg[15]_16 (fch_n_318),
        .\grn_reg[15]_17 (fch_n_314),
        .\grn_reg[15]_18 (fch_n_310),
        .\grn_reg[15]_19 (fch_n_335),
        .\grn_reg[15]_2 ({rgf_n_54,rgf_n_55,rgf_n_56,rgf_n_57,rgf_n_58,rgf_n_59,rgf_n_60,rgf_n_61,rgf_n_62,rgf_n_63,rgf_n_64,rgf_n_65,rgf_n_66,rgf_n_67,rgf_n_68,rgf_n_69}),
        .\grn_reg[15]_20 (fch_n_331),
        .\grn_reg[15]_21 (fch_n_327),
        .\grn_reg[15]_22 (fch_n_385),
        .\grn_reg[15]_23 (fch_n_323),
        .\grn_reg[15]_24 (fch_n_319),
        .\grn_reg[15]_25 (fch_n_315),
        .\grn_reg[15]_26 (fch_n_311),
        .\grn_reg[15]_27 (fch_n_336),
        .\grn_reg[15]_28 (fch_n_332),
        .\grn_reg[15]_29 (fch_n_328),
        .\grn_reg[15]_3 ({rgf_n_70,rgf_n_71,rgf_n_72,rgf_n_73,rgf_n_74,rgf_n_75,rgf_n_76,rgf_n_77,rgf_n_78,rgf_n_79,rgf_n_80,rgf_n_81,rgf_n_82,rgf_n_83,rgf_n_84,rgf_n_85}),
        .\grn_reg[15]_30 (fch_n_384),
        .\grn_reg[15]_31 (fch_n_324),
        .\grn_reg[15]_32 (fch_n_320),
        .\grn_reg[15]_33 (fch_n_316),
        .\grn_reg[15]_34 (fch_n_312),
        .\grn_reg[15]_4 (fch_n_329),
        .\grn_reg[15]_5 (fch_n_325),
        .\grn_reg[15]_6 (fch_n_387),
        .\grn_reg[15]_7 (fch_n_321),
        .\grn_reg[15]_8 (fch_n_317),
        .\grn_reg[15]_9 (fch_n_313),
        .\grn_reg[5] (rgf_n_216),
        .\grn_reg[6] (rgf_n_217),
        .\grn_reg[7] (rgf_n_218),
        .\grn_reg[7]_0 (bbus_b02),
        .irq(irq),
        .irq_lev(irq_lev),
        .\iv[0]_i_16 (rgf_n_254),
        .\iv[0]_i_16_0 (rgf_n_265),
        .\iv[0]_i_16_1 (rgf_n_266),
        .\iv[0]_i_16_2 (rgf_n_267),
        .\iv[0]_i_16_3 (rgf_n_270),
        .\iv[0]_i_16_4 (rgf_n_297),
        .\iv[0]_i_16_5 (rgf_n_298),
        .\iv[0]_i_16_6 (rgf_n_307),
        .\iv[0]_i_17 (rgf_n_248),
        .\iv[0]_i_17_0 (rgf_n_292),
        .\iv[0]_i_18 (rgf_n_355),
        .\iv[10]_i_18 (rgf_n_366),
        .\iv[10]_i_5 (fch_n_193),
        .\iv[11]_i_17 (rgf_n_243),
        .\iv[11]_i_21 (rgf_n_351),
        .\iv[11]_i_9 (fch_n_210),
        .\iv[12]_i_15 (rgf_n_296),
        .\iv[13]_i_16 (rgf_n_245),
        .\iv[13]_i_2 (fch_n_181),
        .\iv[13]_i_20 (rgf_n_271),
        .\iv[13]_i_21 (rgf_n_257),
        .\iv[13]_i_24 (rgf_n_299),
        .\iv[13]_i_25 (rgf_n_312),
        .\iv[13]_i_28 (rgf_n_310),
        .\iv[13]_i_28_0 (rgf_n_359),
        .\iv[13]_i_30 (rgf_n_268),
        .\iv[13]_i_35 (rgf_n_244),
        .\iv[13]_i_35_0 (rgf_n_306),
        .\iv[14]_i_13 (fch_n_243),
        .\iv[14]_i_22 (rgf_n_246),
        .\iv[14]_i_22_0 (rgf_n_301),
        .\iv[14]_i_22_1 (rgf_n_313),
        .\iv[14]_i_28 (rgf_n_269),
        .\iv[14]_i_28_0 (rgf_n_293),
        .\iv[14]_i_34 (rgf_n_308),
        .\iv[14]_i_36 (rgf_n_264),
        .\iv[14]_i_36_0 (rgf_n_295),
        .\iv[14]_i_4 (fch_n_343),
        .\iv[1]_i_14 (rgf_n_290),
        .\iv[2]_i_2 (fch_n_179),
        .\iv[2]_i_2_0 (fch_n_180),
        .\iv[2]_i_2_1 (fch_n_184),
        .\iv[5]_i_15 (rgf_n_291),
        .\iv[5]_i_15_0 (rgf_n_294),
        .\iv[5]_i_15_1 (rgf_n_300),
        .\iv[6]_i_18 (rgf_n_262),
        .\iv[6]_i_2 (fch_n_185),
        .\iv[8]_i_14 (fch_n_190),
        .\iv[8]_i_20 (rgf_n_311),
        .\iv[8]_i_5 (fch_n_183),
        .\iv[8]_i_5_0 (fch_n_187),
        .\iv[9]_i_7 (fch_n_192),
        .\iv_reg[15] ({\ivec/p_0_in ,rgf_iv_ve}),
        .out({rgf_n_0,rgf_n_1,rgf_n_2,rgf_n_3,rgf_n_4,rgf_n_5,rgf_n_6,rgf_n_7,rgf_n_8,rgf_n_9,rgf_n_10,rgf_n_11,rgf_n_12,rgf_n_13,rgf_n_14,rgf_n_15}),
        .p_0_in(\pcnt/p_0_in ),
        .\pc_reg[15] (\pcnt/p_1_in ),
        .rst_n(rst_n),
        .sp_dec_0(\sptr/sp_dec_0 ),
        .\sp_reg[10] (rgf_n_229),
        .\sp_reg[10]_0 (rgf_n_343),
        .\sp_reg[11] (rgf_n_230),
        .\sp_reg[11]_0 (rgf_n_344),
        .\sp_reg[12] (rgf_n_231),
        .\sp_reg[12]_0 (rgf_n_345),
        .\sp_reg[13] (rgf_n_232),
        .\sp_reg[13]_0 (rgf_n_346),
        .\sp_reg[14] (rgf_n_233),
        .\sp_reg[14]_0 (rgf_n_347),
        .\sp_reg[15] (\sptr/p_0_in ),
        .\sp_reg[15]_0 (rgf_n_234),
        .\sp_reg[15]_1 (rgf_n_333),
        .\sp_reg[15]_2 ({fch_n_261,fch_n_262,fch_n_263,fch_n_264,fch_n_265,fch_n_266,fch_n_267,fch_n_268,fch_n_269,fch_n_270,fch_n_271,fch_n_272,fch_n_273,fch_n_274,fch_n_275,fch_n_276}),
        .\sp_reg[1] (rgf_n_235),
        .\sp_reg[1]_0 (rgf_n_334),
        .\sp_reg[2] (rgf_n_236),
        .\sp_reg[2]_0 (rgf_n_335),
        .\sp_reg[3] (rgf_n_190),
        .\sp_reg[3]_0 (rgf_n_237),
        .\sp_reg[3]_1 (rgf_n_336),
        .\sp_reg[4] (rgf_n_238),
        .\sp_reg[4]_0 (rgf_n_337),
        .\sp_reg[5] (rgf_n_239),
        .\sp_reg[5]_0 (rgf_n_338),
        .\sp_reg[6] (rgf_n_240),
        .\sp_reg[6]_0 (rgf_n_339),
        .\sp_reg[7] (rgf_n_241),
        .\sp_reg[7]_0 (rgf_n_340),
        .\sp_reg[8] (rgf_n_219),
        .\sp_reg[8]_0 (rgf_n_341),
        .\sp_reg[9] (rgf_n_228),
        .\sp_reg[9]_0 (rgf_n_342),
        .\sr[6]_i_3 (fch_n_188),
        .\sr[6]_i_9 (rgf_n_251),
        .\sr[7]_i_11 (rgf_n_302),
        .\sr[7]_i_16 (fch_n_186),
        .\sr[7]_i_9 (fch_n_189),
        .\sr[7]_i_9_0 (fch_n_182),
        .\sr[7]_i_9_1 (fch_n_191),
        .\sr_reg[0] (rgf_n_207),
        .\sr_reg[0]_0 (fch_n_380),
        .\sr_reg[10] (fch_n_383),
        .\sr_reg[11] (fch_n_381),
        .\sr_reg[15] ({\sreg/p_2_in [7:4],rgf_sr_ml,rgf_sr_dr,\sreg/p_2_in [1:0],rgf_n_94,rgf_sr_c,rgf_n_96,rgf_n_97,rgf_sr_ie,sr_bank}),
        .\sr_reg[15]_0 (fch_n_379),
        .\sr_reg[1] (rgf_n_212),
        .\sr_reg[1]_0 (fch_n_382),
        .\sr_reg[2] (rgf_n_213),
        .\sr_reg[2]_0 (fch_n_47),
        .\sr_reg[3] (rgf_n_214),
        .\sr_reg[3]_0 (fch_n_49),
        .\sr_reg[4] (rgf_n_166),
        .\sr_reg[4]_0 (rgf_n_170),
        .\sr_reg[4]_1 (rgf_n_173),
        .\sr_reg[4]_2 (rgf_n_215),
        .\sr_reg[4]_3 (rgf_n_331),
        .\sr_reg[4]_4 (rgf_n_332),
        .\sr_reg[4]_5 (fch_n_29),
        .\sr_reg[5] (rgf_n_172),
        .\sr_reg[5]_0 (fch_n_48),
        .\sr_reg[6] (rgf_n_167),
        .\sr_reg[6]_0 (rgf_n_168),
        .\sr_reg[6]_1 (rgf_n_242),
        .\sr_reg[6]_10 (rgf_n_361),
        .\sr_reg[6]_11 (rgf_n_362),
        .\sr_reg[6]_12 (rgf_n_364),
        .\sr_reg[6]_13 (fch_n_45),
        .\sr_reg[6]_2 (rgf_n_249),
        .\sr_reg[6]_3 (rgf_n_250),
        .\sr_reg[6]_4 (rgf_n_258),
        .\sr_reg[6]_5 (rgf_n_263),
        .\sr_reg[6]_6 (rgf_n_273),
        .\sr_reg[6]_7 (rgf_n_348),
        .\sr_reg[6]_8 (rgf_n_349),
        .\sr_reg[6]_9 (rgf_n_350),
        .\sr_reg[7] (rgf_n_169),
        .\sr_reg[7]_0 (rgf_n_171),
        .\sr_reg[7]_1 (fch_n_50),
        .tout__1_carry_i_10(rgf_n_247),
        .tout__1_carry_i_9(rgf_n_305),
        .\tr_reg[15] (rgf_tr),
        .\tr_reg[15]_0 (cbus));
endmodule
